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

import jetbrains.mps.WorkbenchMpsTest;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.EnvironmentContainer;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import jetbrains.mps.util.PathManager;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.File;

import static org.junit.Assert.assertTrue;

public class ClassLoadingDescriptorChangedTest extends WorkbenchMpsTest {

  private Project myProject;

  @Before
  public void beforeTest() {
    IdeaEnvironment.getOrCreate(EnvironmentConfig.emptyEnvironment());
    String homePath = PathManager.getHomePath();
    assert homePath != null;
    myProject = openProject(new File(homePath));
  }

  @After
  public void afterTest() {
    closeProject(myProject);
  }

  /**
   * We have languages L1 and L2. They have generators G1 and G2, correspondingly. G1 has a dependency on L2 and G2.
   * The test asserts, that after reloading file descriptor of the language L2 we are still able to get the QueriesGenerated
   * class from the generators G1 and G2.
   */
  @Test
  public void testClassLoadingDescriptorChanged() {
    final Language language1 = getLanguage("L1");
    assert language1 != null;
    final Language language2 = getLanguage("L2");
    assert language2 != null;
    Generator generator1 = language1.getGenerators().iterator().next();
    performCheck(generator1);
    reloadAfterDescriptorChange(language2);
    generator1 = language1.getGenerators().iterator().next();
    performCheck(generator1);
  }

  private void reloadAfterDescriptorChange(final Language language2) {
    myProject.getModelAccess().runWriteAction(new Runnable() {
      @Override
      public void run() {
        language2.reloadAfterDescriptorChange();
      }
    });
  }

  private void performCheck(Generator generator1) {
    Class aClass = ClassLoaderManager.getInstance().getClass(generator1, "L1.generator.template.main.QueriesGenerated");
    Class aClass2 = ClassLoaderManager.getInstance().getClass(generator1, "L2.generator.template.main.QueriesGenerated");
    assertTrue(aClass != null);
    assertTrue(aClass2 != null);
  }
}
