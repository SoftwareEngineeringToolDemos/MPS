package jetbrains.mps.build.mps.runner.test;

/*Generated by MPS */

import junit.framework.TestCase;
import jetbrains.mps.tool.environment.EnvironmentConfig;
import jetbrains.mps.tool.environment.Environment;
import jetbrains.mps.tool.environment.IdeaEnvironment;
import java.io.File;
import junit.framework.Assert;
import com.intellij.execution.process.ProcessHandler;
import jetbrains.mps.ant.execution.Ant_Command;
import jetbrains.mps.execution.api.commands.OutputRedirector;
import com.intellij.execution.process.ProcessAdapter;
import com.intellij.execution.process.ProcessEvent;
import com.intellij.openapi.util.Key;
import com.intellij.execution.process.ProcessOutputTypes;
import jetbrains.mps.execution.api.commands.ProcessHandlerBuilder;

public class RunCodeFromSolution_Test extends TestCase {
  private static final String PROJECT_PATH = "testbench/modules/build.mps.runner.test";
  public void test_runBuildSimpleCode() throws Exception {
    runAndCheck(PROJECT_PATH, "test1.xml");
  }
  public void test_callOtherSolution() throws Exception {
    runAndCheck(PROJECT_PATH, "test2.xml");
  }
  public void test_useIFile() throws Exception {
    runAndCheck(PROJECT_PATH, "test3.xml");
  }
  public void test_useModelRepository() throws Exception {
    runAndCheck(PROJECT_PATH, "test4.xml");
  }
  public void setUp() {
    EnvironmentConfig environmentConfig = EnvironmentConfig.emptyEnvironment();
    Environment env = IdeaEnvironment.getOrCreate(environmentConfig);
    env.openProject(new File(PROJECT_PATH));
  }

  private void runAndCheck(String scriptPath, String scriptFilename) {
    File scriptFile = new File(scriptPath, scriptFilename);
    File okFile = new File(scriptPath, "ok.log");

    // remove ok.log file if any 
    if (okFile.exists() && !(okFile.delete())) {
      Assert.fail("Cannot delete " + okFile.getAbsolutePath());
    }

    ProcessHandler process = null;
    try {
      process = new Ant_Command().createProcess(scriptFile.getPath());
    } catch (Throwable ex) {
      ex.printStackTrace();
      Assert.fail("Exception during execution.");
    }
    OutputRedirector.redirect(process, new ProcessAdapter() {
      @Override
      public void onTextAvailable(ProcessEvent event, Key key) {
        if (ProcessOutputTypes.STDERR.equals(key)) {
          // print errors 
          System.err.print(event.getText());
        } else {
          System.out.print(event.getText());
        }
      }
    });
    int exitCode = ProcessHandlerBuilder.startAndWait(process);
    if (exitCode != 0) {
      Assert.fail("Exited with code " + exitCode);
    }

    // check and delete ok.log file 
    if (!(okFile.exists())) {
      Assert.fail("Test failed.");
    }
    okFile.delete();
  }

}
