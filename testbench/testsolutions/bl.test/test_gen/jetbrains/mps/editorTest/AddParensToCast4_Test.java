package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class AddParensToCast4_Test extends BaseTransformationTest {
  public AddParensToCast4_Test() {
  }
  @Test
  public void test_AddParensToCast4() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.AddParensToCast4_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("3313213291230683801", "3313213291230683815");
      this.typeString(")");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveLeft_Action");
    }
  }
}
