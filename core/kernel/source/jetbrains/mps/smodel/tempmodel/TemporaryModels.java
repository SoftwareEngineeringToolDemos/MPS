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
package jetbrains.mps.smodel.tempmodel;

import gnu.trove.THashMap;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.kernel.model.MissingDependenciesFixer;
import jetbrains.mps.smodel.SModelOperations;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;

import java.util.Map;

/**
 * This class is for creating temporary models.
 * This is useful when one wants to write some code for further passing it to IDE instead of storing as source code.
 * Temporary models should not be shown in project tree, find usages dialog, hierarchy view and all other views
 * <p/>
 * Temporary model is {@link org.jetbrains.mps.openapi.model.EditableSModel}, could be modified, and dispatches change
 * notifications. It's not possible to save temporary model as its data source is void.
 * For the time being, there's a hack that the model doesn't report its changed state {@link EditableSModel#isChanged()}.
 */
public class TemporaryModels {
  private static TemporaryModels ourInstance = new TemporaryModels();

  public static TemporaryModels getInstance() {
    return ourInstance;
  }

  private TemporaryModels() {

  }

  //singleton part end

  private Map<TempModel, TempModuleOptions> myCreatedModels = new THashMap<TempModel, TempModuleOptions>();

  //todo convert possible parameter sets to "sensivity" enum: read-only (no read-events), read-only (with events), editable, editable with events, editable with undo tracked
  public SModel create(boolean readOnly, @NotNull TempModuleOptions mp) {
    return create(readOnly, true, mp);
  }

  public SModel create(boolean readOnly, boolean trackUndo, @NotNull TempModuleOptions mp) {
    SModuleBase module = (SModuleBase) mp.createModule();

    TempModel model = new TempModel(readOnly, trackUndo, module.getModuleReference());
    myCreatedModels.put(model, mp);
    module.registerModel(model);
    return model;
  }

  //todo: this must be removed as soon as we have module API and can create a module that shows its model dependencies as its dependencies ("auto fixes" imports)
  public void addMissingImports(SModel model) {
    assert model instanceof TempModel : "TemporaryModels is asked to handle non-temporary model " + model.getModelName();

    SModelOperations.validateLanguagesAndImports(model, false, true);
    new MissingDependenciesFixer(model).fixModuleDependencies();
  }

  public void dispose(SModel model) {
    assert model instanceof TempModel : "TemporaryModels is asked to handle non-temporary model " + model.getModelName();
    TempModuleOptions module = myCreatedModels.remove(model);

    SModuleBase modelModule = (SModuleBase) model.getModule();
    if (modelModule != null) {
      modelModule.unregisterModel((SModelBase) model);
    }
    module.disposeModule();
  }

  public static boolean isTemporary(SModel model) {
    return model instanceof TempModel;
  }
}
