/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.smodel;

import jetbrains.mps.cleanup.CleanupManager;
import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.persistence.DataSourceBase;
import jetbrains.mps.extapi.persistence.FileDataSource;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.SModelId.ForeignSModelId;
import jetbrains.mps.smodel.SModelId.ModelNameSModelId;
import jetbrains.mps.smodel.SModelRepositoryListener.SModelRepositoryListenerPriority;
import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelRenamedEvent;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.annotation.Hack;
import jetbrains.mps.util.annotation.ToRemove;
import jetbrains.mps.util.containers.MultiMap;
import jetbrains.mps.vfs.IFile;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// not deprecated yet, despite access and methods are, as it might be reasonable to
// keep a facility that gives access to all models of an SRepository (alternative to SRepository.getAllModels method). Or do it with SearchScope?
public class SModelRepository implements CoreComponent {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(SModelRepository.class));

  private final Object myModelsLock = new Object();
  private final List<SModel> myAllModels = new ArrayList<SModel>();
  private final Map<SModelId, SModel> myIdToModelDescriptorMap = new ConcurrentHashMap<SModelId, SModel>();
  private final Map<String, SModel> myFqNameToModelDescriptorMap = new ConcurrentHashMap<String, SModel>();


  private final Object myListenersLock = new Object();
  private final List<SModelRepositoryListener> mySModelRepositoryListeners = new ArrayList<SModelRepositoryListener>();

  private final MultiMap<SModel, jetbrains.mps.smodel.SModel> myReloadingDescriptorMap = new MultiMap<SModel, jetbrains.mps.smodel.SModel>();

  /*
   * SModelRepository used to be global repo listener. With ProjectRepository exposing all modules visible from a project?
   * however, closing a project (and repository disposal) lead to all models from all modules visible in other projects
   * to be unregistered from this SModelRepository, and subsequent resolve() of uuid model references (that end up here)
   * fail, leading to unresolved references. For now, as we still keep single MPSModuleRepository instance, just listen to it
   * and ignore project repositories, and once we switch to multiple repositories, there would be no SModelRepository.
   */
  private final GlobalRepositoriesListener myRepositoriesListener = new GlobalRepositoriesListener();
  private final SModelListener myModelsListener = new ModelChangeListener();

  private static SModelRepository INSTANCE;
  private final MPSModuleRepository myRepository;

  /**
   * @deprecated global collection of SModels doesn't allow us to move forward. Do not use.
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public static SModelRepository getInstance() {
    return INSTANCE;
  }

  public SModelRepository(@NotNull MPSModuleRepository moduleRepository) {
    myRepository = moduleRepository;
  }

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }

    INSTANCE = this;
    myRepository.addRepositoryListener(myRepositoriesListener);
  }

  @Override
  public void dispose() {
    myRepository.removeRepositoryListener(myRepositoriesListener);
    INSTANCE = null;
  }

  @Deprecated
  public void registerModelDescriptor(SModel model, SModule container) {
    ((SModuleBase) container).registerModel((SModelBase) model);
  }

  @Deprecated
  public void unRegisterModelDescriptor(SModel md, SModule forModule) {
    synchronized (myModelsLock) {
      SModule owner = md.getModule();
      if (owner != forModule) throw new IllegalStateException();
      ((SModuleBase) forModule).unregisterModel((SModelBase) md);
    }
  }

  public void removeModelDescriptor(SModel model) {
    SModule module = model.getModule();
    if (module == null) return;
    ((SModuleBase) module).unregisterModel((SModelBase) model);
  }

  public void deleteModel(SModel d) {
    ModelAccess.assertLegalWrite();

    removeModelDescriptor(d);

    DataSource source = d.getSource();
    if (source instanceof FileDataSource) {
      IFile modelFile = ((FileDataSource) source).getFile();

      if (modelFile != null && modelFile.exists()) {
        modelFile.delete();
      }
    }
  }

  //----------------------------get-----------------------------


  public List<SModel> getModelDescriptors() {
    synchronized (myModelsLock) {
      return new ArrayList<SModel>(myAllModels);
    }
  }

  /**
   * @deprecated this method makes sense for {@link SModelId#isGloballyUnique() globally unique} model id only, but doesn't manifest this contract.
   *             Use {@link SModelReference#resolve(SRepository)} instead
   */
  @Deprecated
  @Nullable
  public SModel getModelDescriptor(@NotNull SModelReference modelReference) {
    return getModelDescriptor(modelReference.getModelId());
  }

  /**
   * @deprecated this method makes sense for {@link SModelId#isGloballyUnique() globally unique} model id only, but doesn't manifest this contract.
   *             Use {@link SModelReference#resolve(SRepository)} instead
   */
  @Deprecated
  public SModel getModelDescriptor(SModelId id) {
    SModel value = myIdToModelDescriptorMap.get(id);
    if (value == null && isVerboseJavaStubModelId(id) ) {
      // basically, we've changed stub references to new on reference read/parse, and I don't see how we could
      // get here, but doesn't hurt to be extra cautious here.
      // The reason why we don't try new modelId here is that new ids are not global and never get into myIdToModelDescriptorMap
      SModelId newStubModelId = stripModuleIdFromVerboseJavaStubModelId(id);
      value = myIdToModelDescriptorMap.get(newStubModelId);
    }
    if (value == null && id instanceof ModelNameSModelId) {
      // inexact search...
      value = SModelRepository.getInstance().getModelDescriptor(id.getModelName());
    }
    return value;
  }

  /**
   * Compatibility code to migrate stub model id with module id to an 'honest' model id without module id.
   * @return <code>true</code> if it's model id of java stub and it includes module id as it used to do in MPS 3.2 and earlier
   */
  @Deprecated
  @ToRemove(version = 3.3)
  /*package*/ static boolean isVerboseJavaStubModelId(SModelId id) {
    if (ForeignSModelId.TYPE.equals(id.getType()) && id instanceof ForeignSModelId) {
      String idValue = ((ForeignSModelId) id).getId();
      String stereo = SModelStereotype.getStubStereotypeForId(LanguageID.JAVA);
      if (idValue.length() > stereo.length() + 2 && idValue.startsWith(stereo) && idValue.charAt(stereo.length()) == '#') {
        // legacy stub model id: f:java_stub#module id#package name
        //    new stub model id: f:java_stub#package name
        int secondHashIndex = idValue.indexOf('#', stereo.length() + 1);
        // there are two hash chars and non-empty package name
        return secondHashIndex != -1 && idValue.length() > secondHashIndex;
      }
    }
    return false;
  }

  /**
   * @return <code>true</code> if it's model id of java stub in its legacy form (i.e. foreign, f:java_stub#...), either with or without module id part.
   */
  @Deprecated
  @ToRemove(version = 3.3)
  /*package*/ static boolean isLegacyJavaStubModelId(SModelId id) {
    if (ForeignSModelId.TYPE.equals(id.getType()) && id instanceof ForeignSModelId) {
      String idValue = ((ForeignSModelId) id).getId();
      String stereo = SModelStereotype.getStubStereotypeForId(LanguageID.JAVA);
      return (idValue.length() > stereo.length() + 2 && idValue.startsWith(stereo) && idValue.charAt(stereo.length()) == '#');
    }
    return false;
  }

  /**
   * Here we duplicate code if JavaPackageNameStub, not to introduce dependency to [java-stub] module
   */
  @ToRemove(version = 3.3)
  @Hack
  /*package*/ static SModelId newJavaPackageStubFromLegacy(SModelId id) {
    // pre: isLegacyJavaStubModel()
    String idValue = ((ForeignSModelId) id).getId();
    int lastHash = idValue.lastIndexOf('#');
    return PersistenceFacade.getInstance().createModelId(LanguageID.JAVA + ':' + idValue.substring(lastHash+1));
  }


  // here we rely on internals otherwise hidden in JavaPackageNameStub. Since it's for transition period of 1 release only, deemed tolerable.
  @ToRemove(version = 3.3)
  private static SModelId stripModuleIdFromVerboseJavaStubModelId(SModelId verboseJavaStubId) {
    // pre: isVerboseJavaStubModelId()
    String idValue = ((ForeignSModelId) verboseJavaStubId).getId();
    int firstHash = idValue.indexOf('#');
    int lastHash = idValue.lastIndexOf('#');
    assert firstHash != lastHash;
    return jetbrains.mps.smodel.SModelId.foreign(idValue.substring(0, firstHash) + idValue.substring(lastHash));
  }


  @Deprecated
  public List<SModel> getModelDescriptorsByModelName(String modelName) {
    List<SModel> result = new ArrayList<SModel>();
    for (SModel d : getModelDescriptors()) {
      if (modelName.equals(jetbrains.mps.util.SNodeOperations.getModelLongName(d))) {
        result.add(d);
      }
    }
    return result;
  }

  public List<SModel> getModelDescriptors(SModule module) {
    Iterable<SModel> models = module.getModels();
    if (models instanceof List) return (List) models;
    return IterableUtil.copyToList(models);
  }

  /**
   * @deprecated use {@link SModel#getModule()} instead
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public SModule getOwner(SModel modelDescriptor) {
    return modelDescriptor.getModule();
  }

  //----------------------------stuff-----------------------------


  private List<EditableSModel> getModelsToSave() {
    List<EditableSModel> modelsToSave = new ArrayList<EditableSModel>();
    for (SModel md : getModelDescriptors()) {
      if (!(md instanceof EditableSModel)) continue;

      EditableSModel emd = ((EditableSModel) md);
      // HOTFIX MPS-13326
      if (emd.isChanged() && !emd.isReadOnly()) {
        modelsToSave.add(emd);
      }
    }
    return modelsToSave;
  }

  /**
   * Requires write access to model
   */
  public void saveAll() {
    ModelAccess.assertLegalWrite();

    List<EditableSModel> modelsToRefresh;
    synchronized (myModelsLock) {
      modelsToRefresh = getModelsToSave();
    }

    for (EditableSModel emd : modelsToRefresh) {
      DataSource source = emd.getSource();
      if (!(source instanceof DataSourceBase)) continue;
      ((DataSourceBase) source).refresh();
    }

    synchronized (myModelsLock) {
      for (EditableSModel emd : getModelsToSave()) {
        try {
          emd.save();
        } catch (Throwable t) {
          LOG.error(t);
        }
      }
    }
  }

  public void refreshModels() {
  }

  public void notifyModelReplaced(SModel modelDescriptor, jetbrains.mps.smodel.SModel oldSModel) {
    ModelAccess.assertLegalWrite();

    if (mySModelRepositoryListeners.isEmpty()) {
      oldSModel.dispose();
      return;
    }

    boolean needToNotify = false;
    synchronized (myReloadingDescriptorMap) {
      needToNotify = myReloadingDescriptorMap.isEmpty();
      myReloadingDescriptorMap.putValue(modelDescriptor, oldSModel);
    }

    if (needToNotify) {
      notifyAfterReload();
    }
  }

  private void notifyAfterReload() {
    ModelAccess.instance().runWriteInEDT(new Runnable() {
      @Override
      public void run() {
        synchronized (myReloadingDescriptorMap) {

          assert !myReloadingDescriptorMap.isEmpty();

          fireModelsReplaced(myReloadingDescriptorMap.keySet());
          disposeOldModels();
          myReloadingDescriptorMap.clear();
        }
      }
    });
  }

  private void disposeOldModels() {
    for (jetbrains.mps.smodel.SModel oldModel : myReloadingDescriptorMap.values()) {
      if (oldModel != null) {
        oldModel.dispose();
      }
    }
  }

  //---------------------------events----------------------------

  public void addModelRepositoryListener(@NotNull SModelRepositoryListener l) {
    synchronized (myListenersLock) {
      if (l.getPriority().equals(SModelRepositoryListenerPriority.PLATFORM)) {
        mySModelRepositoryListeners.add(0, l);
      } else {
        mySModelRepositoryListeners.add(l);
      }
    }
  }

  public void removeModelRepositoryListener(@NotNull SModelRepositoryListener l) {
    synchronized (myListenersLock) {
      mySModelRepositoryListeners.remove(l);
    }
  }

  private List<SModelRepositoryListener> listeners() {
    synchronized (myListenersLock) {
      return new ArrayList<SModelRepositoryListener>(mySModelRepositoryListeners);
    }
  }

  private void fireBeforeModelRemoved(SModel modelDescriptor) {
    for (SModelRepositoryListener l : listeners()) {
      try {
        l.beforeModelRemoved(modelDescriptor);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private void fireModelRemoved(SModel modelDescriptor) {
    for (SModelRepositoryListener l : listeners()) {
      try {
        l.modelRemoved(modelDescriptor);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private void fireModelAdded(SModel modelDescriptor) {
    for (SModelRepositoryListener l : listeners()) {
      try {
        l.modelAdded(modelDescriptor);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private void fireModelRenamed(SModel modelDescriptor) {
    for (SModelRepositoryListener l : listeners()) {
      try {
        l.modelRenamed(modelDescriptor);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  private void fireModelsReplaced(Set<SModel> modelDescriptors) {
    Set<SModel> unmodifiableModelDescriptorsSet = Collections.unmodifiableSet(modelDescriptors);
    for (SModelRepositoryListener listener : listeners()) {
      try {
        listener.modelsReplaced(unmodifiableModelDescriptorsSet);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
  }

  //-------todo: changed functionality - is better to be moved to SModel fully

  @Deprecated
  public void markChanged(SModel model) {
    if (model instanceof EditableSModel) {
      ((EditableSModel) model).setChanged(true);
    }
  }

  // FIXME Why this method is different in implementation from #getModelDescriptorsByModelName(String modelName)?
  public SModel getModelDescriptor(String modelName) {
    if (modelName == null) return null;
    return myFqNameToModelDescriptorMap.get(modelName);
  }

  private class ModelChangeListener extends SModelAdapter {
    public ModelChangeListener() {
      super(SModelListenerPriority.PLATFORM);
    }

    @Override
    public void modelRenamed(SModelRenamedEvent event) {
      synchronized (myModelsLock) {
        myFqNameToModelDescriptorMap.remove(event.getOldName());
        myFqNameToModelDescriptorMap.put(event.getNewName(), event.getModelDescriptor());
      }

      fireModelRenamed(event.getModelDescriptor());

      CleanupManager.getInstance().cleanup();
      MPSModuleRepository.getInstance().invalidateCaches();
    }
  }

  private class GlobalRepositoriesListener extends SRepositoryContentAdapter {

    @Override
    protected void startListening(SModel model) {
      String modelName = model.getModelName();
      if (modelName != null) {
        myFqNameToModelDescriptorMap.put(modelName, model);
      }
      SModelId modelId = model.getModelId();
      if (modelId.isGloballyUnique()) {
        myIdToModelDescriptorMap.put(modelId, model);
      }
      ((SModelInternal) model).addModelListener(myModelsListener);
      synchronized (myModelsLock) {
        myAllModels.add(model);
      }
      fireModelAdded(model);
    }

    @Override
    protected void stopListening(SModel model) {
      fireBeforeModelRemoved(model);
      synchronized (myModelsLock) {
        myAllModels.remove(model);
      }
      ((SModelInternal) model).removeModelListener(myModelsListener);
      myIdToModelDescriptorMap.remove(model.getModelId());
      String modelName = model.getModelName();
      if (modelName != null) {
        myFqNameToModelDescriptorMap.remove(modelName);
      }
      fireModelRemoved(model);
    }
  }
}
