package jetbrains.mps.testbench.junit.runners;

/*Generated by MPS */

import org.junit.runner.Runner;
import jetbrains.mps.project.Project;
import org.junit.runners.model.RunnerBuilder;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.junit.runner.notification.RunNotifier;
import org.junit.runner.Description;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SRepository;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.util.Computable;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.module.ReloadableModule;

public class DelegatingRunner extends Runner {
  private final Project myProject;
  private final RunnerBuilder myBuilder;
  private final String myClassName;
  private final SModuleReference myModuleReference;

  public DelegatingRunner(Project project, RunnerBuilder builder, SModuleReference moduleRef, String className) {
    myProject = project;
    myBuilder = builder;
    myClassName = className;
    myModuleReference = moduleRef;
  }

  @Override
  public void run(RunNotifier notifier) {
    // todo: runner should be created only twice: in #run and #getDescription 
    myBuilder.safeRunnerForClass(getTestClass()).run(notifier);
  }

  @Override
  public Description getDescription() {
    return myBuilder.safeRunnerForClass(getTestClass()).getDescription();
  }

  @NotNull
  private Class<?> getTestClass() {
    // todo: execute only MPS tests here. move all unit tests to ant task 
    final SRepository repository = myProject.getRepository();
    return new ModelAccessHelper(repository).runReadAction(new Computable<Class<?>>() {
      public Class<?> compute() {
        SModule resolved = myModuleReference.resolve(repository);
        if (resolved instanceof ReloadableModule) {
          ReloadableModule module = ((ReloadableModule) resolved);
          try {
            return module.getClass(myClassName);
          } catch (ClassNotFoundException e) {
            return null;
          }
        } else {
          return null;
        }
      }
    });
  }

}
