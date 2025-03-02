/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.classloading;

import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.module.ReloadableModuleBase;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Broadcasting class loading load/unload events.
 * Guarantees that the listeners are invoked in write action
 */
public class ClassLoadingBroadCaster {
  private static final Logger LOG = LogManager.getLogger(ClassLoadingBroadCaster.class);
  private final LinkedHashSet<ReloadableModule> myLoadedModules = new LinkedHashSet<ReloadableModule>();
  private final ModelAccess myModelAccess;

  // reload handlers
  private final List<MPSClassesListener> myClassesHandlers = new CopyOnWriteArrayList<MPSClassesListener>();
  private final List<ModuleReloadListener> myReloadListeners = new CopyOnWriteArrayList<ModuleReloadListener>();

  public ClassLoadingBroadCaster(ModelAccess modelAccess) {
    myModelAccess = modelAccess;
  }

  public void addClassesHandler(MPSClassesListener handler) {
    myClassesHandlers.add(handler);
  }

  public void removeClassesHandler(MPSClassesListener handler) {
    myClassesHandlers.remove(handler);
  }

  public void addReloadListener(ModuleReloadListener listener) {
    myReloadListeners.add(listener);
  }

  public void removeReloadListener(ModuleReloadListener listener) {
    myReloadListeners.remove(listener);
  }

  public Set<ReloadableModule> onUnload(Collection<? extends SModuleReference> refsToUnload) {
    if (refsToUnload.isEmpty()) return Collections.emptySet();

    myModelAccess.checkWriteAccess();
    final Set<ReloadableModuleBase> modulesToUnload = new LinkedHashSet<ReloadableModuleBase>();
    for (ReloadableModule loadedModule : myLoadedModules) {
      SModuleReference mRef = loadedModule.getModuleReference();
      if (refsToUnload.contains(mRef)) {
        modulesToUnload.add((ReloadableModuleBase) loadedModule);
      }
    }
    if (modulesToUnload.size() < refsToUnload.size()) {
      LOG.error("", new IllegalArgumentException("Broken contract : some of the passed module references have not been loaded"));
    }

    myLoadedModules.removeAll(modulesToUnload);

    for (MPSClassesListener listener : myClassesHandlers) {
      listener.beforeClassesUnloaded(modulesToUnload);
    }

    final Set<ReloadableModule> resultingUnload = new LinkedHashSet<ReloadableModule>();
    for (ReloadableModule module : modulesToUnload) resultingUnload.add(module);
    return resultingUnload;
  }

  public void onLoad(Collection<? extends ReloadableModule> toLoad) {
    if (toLoad.isEmpty()) return;

    myModelAccess.checkWriteAccess();
    final Set<ReloadableModuleBase> modulesToLoad = new LinkedHashSet<ReloadableModuleBase>(toLoad.size());
    for (ReloadableModule module : toLoad) modulesToLoad.add((ReloadableModuleBase) module);
    myLoadedModules.addAll(modulesToLoad);

    for (MPSClassesListener listener : myClassesHandlers) {
      listener.afterClassesLoaded(modulesToLoad);
    }
  }

  public void onReload(Collection<ReloadableModule> reloadedModules) {
    if (reloadedModules.isEmpty()) return;

    myModelAccess.checkWriteAccess();
    final Set<ReloadableModule> modulesToReload = new LinkedHashSet<ReloadableModule>(reloadedModules.size());
    for (ReloadableModule module : reloadedModules) modulesToReload.add(module);

    for (ModuleReloadListener listener : myReloadListeners) {
      listener.modulesReloaded(modulesToReload);
    }
  }
}
