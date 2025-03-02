/*
 * Copyright 2003-2013 JetBrains s.r.o.
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

import jetbrains.mps.CoreMpsTest;
import jetbrains.mps.core.tool.environment.util.SetLibraryContributor;
import jetbrains.mps.library.LibraryInitializer;
import jetbrains.mps.library.contributor.LibraryContributor;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.PathManager;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.MpsEnvironment;
import org.apache.log4j.LogManager;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

import jetbrains.mps.library.contributor.LibDescriptor;

/**
 * Internal consistency check of module dependencies between different layers of MPS hierarchy:
 * core, workbench and plugin
 */
public class ProjectMPSDependenciesTest extends CoreMpsTest {
  private static final org.apache.log4j.Logger LOG = LogManager.getLogger(ProjectMPSDependenciesTest.class);
  private boolean myFailed = false;

  @BeforeClass
  public static void beforeTest() {
    MpsEnvironment.getOrCreate(EnvironmentConfig.emptyEnvironment());
  }

  @Test
  public void depsAreValid() {
    LOG.info("ADDING CORE CONTRIBUTORS : currently " + getModulesCount() + " modules");
    addContributorWithPaths(getCorePaths());
    checkDeps();
    LOG.info("ADDING WORKBENCH CONTRIBUTORS : currently " + getModulesCount() + " modules");
    addContributorWithPaths(Collections.singletonList(PathManager.getWorkbenchPath()));
    checkDeps();
    LOG.info("ADDING PLUGINS CONTRIBUTORS : currently " + getModulesCount() + " modules");
    addContributorWithPaths(Collections.singletonList(PathManager.getPreInstalledPluginsPath()));
    LOG.info("FINISHED : currently " + getModulesCount() + " modules");
    checkDeps();
    Assert.assertFalse("Some dependencies are invalid", myFailed);
  }

  private int getModulesCount() {
    final SRepository repository = getRepository();
    return new ModelAccessHelper(repository).runReadAction(new Computable<Integer>() {
      @Override
      public Integer compute() {
        return IterableUtil.asCollection(repository.getModules()).size();
      }
    });
  }

  private Collection<String> getCorePaths() {
    Collection<String> bootstrapPaths = new ArrayList<String>(PathManager.getBootstrapPaths());
    bootstrapPaths.add(PathManager.getLanguagesPath());
    return Collections.unmodifiableCollection(bootstrapPaths);
  }

  private void addContributorWithPaths(Iterable<? extends String> paths) {
    Set<LibDescriptor> libraryPaths = new LinkedHashSet<LibDescriptor>();
    for (String path : paths) {
      libraryPaths.add(new LibDescriptor(path));
    }
    addContributor(SetLibraryContributor.fromSet(libraryPaths));
  }

  private void addContributor(LibraryContributor contributor) {
    LibraryInitializer.getInstance().load(Collections.singletonList(contributor));
  }

  private void checkDeps() {
    final ModulesWatcher modulesWatcher = getModulesWatcher();
    final SRepository repository = getRepository();
    repository.getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        for (SModuleReference module : modulesWatcher.getAllModules()) {
          if (modulesWatcher.isModuleInvalid(module, true)) {
            myFailed = true;
          }
        }
      }
    });
  }

  private ModulesWatcher getModulesWatcher() {
    return ClassLoaderManager.getInstance().getModulesWatcher();
  }

  private SRepository getRepository() {
    return MPSModuleRepository.getInstance();
  }
}
