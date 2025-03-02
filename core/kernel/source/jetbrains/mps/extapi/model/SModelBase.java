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
package jetbrains.mps.extapi.model;

import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.smodel.IllegalModelAccessException;
import jetbrains.mps.smodel.InvalidSModel;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.event.ModelEventDispatch;
import jetbrains.mps.smodel.legacy.ConceptMetaInfoConverter;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelAccessListener;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelListener;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessListener;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Base implementation of {@link org.jetbrains.mps.openapi.model.SModel}, with actual
 * {@link jetbrains.mps.extapi.model.SModelData model data} kept separately, ready for e.g. re-load.
 *
 * This implementation tracks load state of the model data ({@link #getLoadingState()}) and expects
 * subclasses to {@link #setLoadingState(ModelLoadingState) update} this state appropriately.
 *
 * {@link #getModelData()} provides access to actual node storage.
 *
 * TODO relocate to [smodel]
 */
public abstract class SModelBase extends SModelDescriptorStub implements SModel {
  private static Logger LOG = LogManager.getLogger(SModelBase.class);

  private final ModelEventDispatch myEventDispatch;
  private final List<SModelListener> myModelListeners = new CopyOnWriteArrayList<SModelListener>();

  @NotNull
  private final DataSource mySource;
  @NotNull
  private SModelReference myModelReference;

  private ModelRoot myModelRoot;

  private SModule myModule;
  private volatile SRepository myRepository = null;

  /**
   * model is treated {@link #isLoaded() loaded} when the state == FULLY_LOADED.
   * There are model implementations with simple NOT_LOADED -- FULLY_LOADED cycle,
   * and more complext with NOT_LOADED -- INTERFACE_LOADED -- FULLY_LOADED.
   */
  private ModelLoadingState myModelLoadState = ModelLoadingState.NOT_LOADED;

  protected SModelBase(@NotNull SModelReference modelReference, @NotNull DataSource source) {
    myModelReference = modelReference;
    mySource = source;
    myEventDispatch = new ModelEventDispatch(this);
  }

  @Override
  public SRepository getRepository() {
//    assertCanRead(); we don't require write lock when myRepo is assigned, why would require read to get?
    return myRepository;
  }

  @Override
  public SNode createNode(SConcept concept) {
    // nodeId should be model's responsibility, not SNode's as we shall migrate towards model-local node ids, preferably int instead of long,
    // and at least not random
    return new jetbrains.mps.smodel.SNode(concept, jetbrains.mps.smodel.SModel.generateUniqueId());
  }

  @Override
  public SNode createNode(@NotNull SConcept concept, @Nullable SNodeId nodeId) {
    if (nodeId == null) {
      nodeId = jetbrains.mps.smodel.SModel.generateUniqueId();
    }
    return new jetbrains.mps.smodel.SNode(concept, nodeId);
  }

  public void attach(@NotNull SRepository repo) {
    if (myRepository == repo) {
      // warn? why it's ok to attach model several times, isn't it an error?
      return;
    }
    if (myRepository != null) {
      throw new IllegalModelAccessException("Model is already attached to a repository, can't attach to another one");
    }
    repo.getModelAccess().checkReadAccess();
    myRepository = repo;
  }

  public void detach() {
    assertCanChange();
    myRepository = null;
    fireBeforeModelDisposed(this);
    jetbrains.mps.smodel.SModel model = getCurrentModelInternal();
    if (model != null) {
      model.dispose();
    }
    clearListeners();
  }

  @Override
  public Iterable<SNode> getRootNodes() {
    assertCanRead();
    return getModelData().getRootNodes();
  }

  @Override
  public SNode getNode(SNodeId id) {
    assertCanRead();
    return getModelData().getNode(id);
  }


  @Override
  @NotNull
  public SModelReference getReference() {
//    assertCanRead(); model reference is read-only attribute, why care about read lock?
    return myModelReference;
  }

  @NotNull
  @Override
  public SModelId getModelId() {
//    assertCanRead(); model reference is read-only attribute, why care about read lock?
    return myModelReference.getModelId();
  }

  @Override
  public String getModelName() {
//    assertCanRead(); model reference is read-only attribute, why care about read lock?
    return myModelReference.getModelName();
  }

  @Override
  @NotNull
  public DataSource getSource() {
//    assertCanRead(); Is source access truly read operation over model?
    return mySource;
  }

  public void setModule(SModule module) {
    assertCanRead(); // FIXME why not write?
    myModule = module;
  }

  /**
   * TODO make final
   */
  @Override
  @Nullable
  public SModule getModule() {
    // FIXME provided setModule() requires read lock, another read lock here doesn't prevent from
    // myModule being modified in a parallel read, and the reason to have read check here eludes from me.
    // Code like SModuleOperations.getOutputRoot(SModel) fails with assert enabled, and
    // it's not obvious whether it's the client code to fix (to obtain read lock) or
    // this method shall not check for read access at all.
//    assertCanRead();
    return myModule;
  }

  public void setModelRoot(ModelRoot modelRoot) {
    assertCanChange();
//    if (myModelRoot != null && modelRoot != null) {
//      LOG.error("Duplicate model roots for model " + getLongName() + " in module " + modelRoot.getModule() + ": \n" +
//        "1. " + myModelRoot.getPresentation() + "\n" +
//        "2. " + modelRoot.getPresentation()
//      );
//    }
    myModelRoot = modelRoot;
  }

  @Override
  public ModelRoot getModelRoot() {
    assertCanRead();
    return myModelRoot;
  }

  @Override
  public void addRootNode(@NotNull SNode node) {
    throw new UnsupportedOperationException();
  }

  @Override
  public void removeRootNode(@NotNull SNode node) {
    throw new UnsupportedOperationException();
  }

  @Override
  public boolean isReadOnly() {
//    assertCanRead(); no apparent reason why we shall demand read lock here. Few subclasses, that override the method, do not check access at all.
    return true;
  }

  public boolean isRegistered() {
    SModule copy = myModule;
    return copy != null && copy.getRepository() != null;
  }

  /**
   * Access actual node storage. Might trigger model load if model is not yet loaded.
   * XXX perhaps, this method shall live in SModelDescriptorStub?
   * @return node storage. Generally, shall not return <code>null</code> (FIXME revisit contract, enforce)
   */
  public SModelData getModelData() {
    return getSModelInternal();
  }

  @NotNull
  @Override
  public Iterable<Problem> getProblems() {
    assertCanRead();
    jetbrains.mps.smodel.SModel sModelInternal = getSModelInternal();
    if (sModelInternal instanceof InvalidSModel) {
      return ((InvalidSModel) sModelInternal).getProblems();
    }
    return Collections.emptySet();
  }

  @Override
  public void load() {
    // perhaps, both load() and unload() shall be left to implementors?
    getSModelInternal();
  }

  @Override
  public boolean isLoaded() {
    return getLoadingState() == ModelLoadingState.FULLY_LOADED;
  }

  @Override
  public void addModelListener(SModelListener l) {
    myModelListeners.add(l);
  }

  @Override
  public void removeModelListener(SModelListener l) {
    myModelListeners.remove(l);
  }

  @Override
  public void addAccessListener(SModelAccessListener l) {
    myEventDispatch.addAccessListener(l);
  }

  @Override
  public void removeAccessListener(SModelAccessListener l) {
    myEventDispatch.removeAccessListener(l);
  }

  @Override
  public void addAccessListener(SNodeAccessListener l) {
    myEventDispatch.addAccessListener(l);
  }

  @Override
  public void removeAccessListener(SNodeAccessListener l) {
    myEventDispatch.removeAccessListener(l);
  }

  /**
   * This class doesn't dispatch change events, no listeners are tracked.
   */
  @Override
  public void addChangeListener(SNodeChangeListener l) {
    // intentionally no-op
  }

  /**
   * This class doesn't dispatch change events, no listeners are tracked.
   */
  @Override
  public void removeChangeListener(SNodeChangeListener l) {
    // intentionally no-op
  }

  /**
   * It's unlikely subclasses or clients of the class shall forcefully fire events.
   * @deprecated event firing, with smodel.SNode as argument, shall not be part of extapi.SModelBase contract
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public void fireNodeRead(jetbrains.mps.smodel.SNode node) {
    myEventDispatch.fireNodeRead(node);
  }

  /**
   * It's unlikely subclasses or clients of the class shall forcefully fire events.
   * @deprecated event firing, with smodel.SNode as argument, shall not be part of extapi.SModelBase contract
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public void fireReferenceRead(jetbrains.mps.smodel.SNode node, String role) {
    SReferenceLink ref = ((ConceptMetaInfoConverter) node.getConcept()).convertAssociation(role);
    myEventDispatch.fireReferenceRead(node, ref);
  }

  /**
   * It's unlikely subclasses or clients of the class shall forcefully fire events.
   * @deprecated event firing, with smodel.SNode as argument, shall not be part of extapi.SModelBase contract
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public void firePropertyRead(jetbrains.mps.smodel.SNode node, String propertyName) {
    SProperty prop = ((ConceptMetaInfoConverter) node.getConcept()).convertProperty(propertyName);
    myEventDispatch.firePropertyRead(node, prop);
  }

  protected final void fireBeforeModelRenamed(SModelReference newName) {
    SModule module = getModule();
    if (module instanceof SModuleBase) {
      ((SModuleBase) module).fireBeforeModelRenamed(this, newName);
    }
  }

  protected final void fireModelRenamed(SModelReference oldName) {
    SModule module = getModule();
    if (module instanceof SModuleBase) {
      ((SModuleBase) module).fireModelRenamed(this, oldName);
    }
  }

  /**
   * @deprecated this method used to change state AND to send notifications, now we split these into
   * independent operations, {@link #setLoadingState(ModelLoadingState)} and {@link #fireModelStateChanged(ModelLoadingState, ModelLoadingState)}
   */
  @Override
  @Deprecated
  @ToRemove(version = 3.3)
  protected void fireModelStateChanged(ModelLoadingState newState) {
    ModelLoadingState oldState = getLoadingState();
    if (oldState != newState) {
      // mimic pre-MPS 3.3 behavior, change state on fire
      setLoadingState(newState);
    }
    fireModelStateChanged(oldState, newState);
  }

  /**
   * This method sends out proper notifications unless old and new state values are the same.
   * Note, it's not this method's responsibility to do actual change of the state, do it with {@link #setLoadingState(ModelLoadingState)}
   */
  protected void fireModelStateChanged(ModelLoadingState oldState, ModelLoadingState newState) {
    if (oldState == newState) {
      return;
    }
    super.fireModelStateChanged(newState);
    for (SModelListener l : myModelListeners) {
      try {
        if (newState == ModelLoadingState.NOT_LOADED) {
          l.modelUnloaded(this);
        } else {
          l.modelLoaded(this, newState == ModelLoadingState.INTERFACE_LOADED);
        }
      } catch (Throwable t) {
        LOG.error("listener failure", t);
      }
    }
  }

  @Override
  protected void fireModelSaved() {
    super.fireModelSaved();
    for (SModelListener l : myModelListeners) {
      try {
        l.modelSaved(this);
      } catch (Throwable t) {
        LOG.error("listener failure", t);
      }
    }
  }

  protected void fireConflictDetected() {
    for (SModelListener l : myModelListeners) {
      try {
        l.conflictDetected(this);
      } catch (Throwable t) {
        LOG.error("listener failure", t);
      }
    }
  }

  protected void fireProblemsDetected(Iterable<Problem> problems) {
    for (SModelListener l : myModelListeners) {
      try {
        l.problemsDetected(this, problems);
      } catch (Throwable t) {
        LOG.error("listener failure", t);
      }
    }
  }

  protected void fireModelReplaced() {
    for (SModelListener l : myModelListeners) {
      try {
        l.modelReplaced(this);
      } catch (Throwable t) {
        LOG.error("listener failure", t);
      }
    }
  }

  @Override
  public void changeModelReference(SModelReference newModelReference) {
    super.changeModelReference(newModelReference);
    myModelReference = newModelReference;
  }

  /**
   * This method does nothing about model load state, it updates model descriptor of the models passed and dispatches a notification.
   * Seems reasonable to dispatch proper modelUnloaded/modelLoaded events in addition to modelReplaced as there are listeners that
   * expect either, not both. Especially, in case if load level is changed due to replacement (i.e. was FULL, became INTERFACE)
   * FIXME it's synchronized, do we still need that (with RegularModelDescriptor using distinct lock object)
   */
  protected synchronized void replaceModelAndFireEvent(jetbrains.mps.smodel.SModel oldModel, jetbrains.mps.smodel.SModel newModel) {
    if (oldModel != null) {
      oldModel.setModelDescriptor(null);
    }
    if (newModel != null) {
      newModel.setModelDescriptor(this);
    }
    if (oldModel != null) {
      notifyModelReplaced(oldModel);
      // ONCE notifyModelReplaced gone, don't forget to dispose oldModel here (SModelRepository does this in addition to notification dispatch)
    }

    fireModelReplaced();

    if (getRepository() != null) { // for a model not yet visible to anyone, no reason to drop a cache
      // FIXME cache invalidation shall be a repository listener, and not done forcefully on model change
      MPSModuleRepository.getInstance().invalidateCaches();
    }
  }

  protected void assertCanRead() {
    final SRepository repo = myRepository;
    if (repo != null) {
      repo.getModelAccess().checkReadAccess();
    }
  }

  protected void assertCanChange() {
    final SRepository repo = myRepository;
    if (repo != null) {
      repo.getModelAccess().checkWriteAccess();
    }
//      if (!UndoHelper.getInstance().isInsideUndoableCommand()) {
//        throw new IllegalModelChangeError("registered model can only be modified inside undoable command");
//      }
  }

  // FIXME likely, shall become final. It's LazyEditableSModelBase which prevents me from doing that now.
  @NotNull
  protected ModelLoadingState getLoadingState() {
    return myModelLoadState;
  }

  protected final void setLoadingState(@NotNull ModelLoadingState modelLoadState) {
    myModelLoadState = modelLoadState;
  }


  /**
   * CLIENTS SHALL NOT USE THIS METHOD. It's public merely to overcome java package boundaries.
   * FIXME This is a hack. We shall pass myEventDispatch the moment internal model is initialized.
   * However, it's tricky to find out exact moment with present approach (getSModelInternal() either
   * returns existing or creates new), fireModeStateChanged is feasible option, but misguiding as well.
   * Refactoring required to split access to SModel internal from initialization.
   * To put event dispatch into smodel.SModel doesn't seem to be an option as we need to add listeners without
   * loading whole model.
   */
  @NotNull
  public final ModelEventDispatch getEventDispatch() {
    return myEventDispatch;
  }
}
