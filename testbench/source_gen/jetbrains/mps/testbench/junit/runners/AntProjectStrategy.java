package jetbrains.mps.testbench.junit.runners;

/*Generated by MPS */

import jetbrains.mps.tool.environment.CompositeProjectStrategy;
import jetbrains.mps.tool.environment.ProjectStrategy;

public final class AntProjectStrategy extends CompositeProjectStrategy {
  private static final ProjectStrategy[] PROJECT_STRATEGIES = {new FromProjectPathProjectStrategy(), new FromModulesListProjectStrategy(), new FromDirWithModulesProjectStrategy()};


  public AntProjectStrategy() {
    super(PROJECT_STRATEGIES);
  }
}
