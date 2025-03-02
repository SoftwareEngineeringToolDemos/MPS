package jetbrains.mps.testbench.junit.runners;

/*Generated by MPS */

import jetbrains.mps.tool.environment.ProjectStrategyBase;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.project.Project;
import jetbrains.mps.tool.environment.Environment;
import java.io.File;

public class FromProjectPathProjectStrategy extends ProjectStrategyBase {
  private static final String PROJECT_PATH_PROPERTY = "mps.junit.project";

  private final String myProjectPath;

  public FromProjectPathProjectStrategy(@Nullable String projectPath) {
    myProjectPath = projectPath;
  }

  public FromProjectPathProjectStrategy() {
    this(System.getProperty(PROJECT_PATH_PROPERTY));
  }

  @NotNull
  @Override
  public Project create(@NotNull Environment env) {
    if (isApplicable()) {
      Project newProject = openProjectIfNotAlreadyOpened(env);
      return construct(newProject);
    }
    throw new IllegalStateException("Strategy is not applicable -- cannot create project");
  }

  @NotNull
  private Project openProjectIfNotAlreadyOpened(Environment env) {
    File projectFile = new File(myProjectPath);
    Project openedProject = env.getOpenedProject(projectFile);
    if (openedProject == null) {
      openedProject = env.openProject(projectFile);
      makeOnFirstTimeOpened(openedProject);
    }
    return openedProject;
  }

  @NotNull
  @Override
  public Project construct(@NotNull Project project) {
    // do nothing 
    return project;
  }

  @Override
  public boolean isApplicable() {
    return myProjectPath != null;
  }
}
