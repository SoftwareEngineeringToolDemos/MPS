package jetbrains.mps.lang.editor.multiple.tests;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class ConditionalPresentation_addQuery_RefNode_switch_Test extends BaseTransformationTest {
  public ConditionalPresentation_addQuery_RefNode_switch_Test() {
  }
  @Test
  public void test_ConditionalPresentation_addQuery_RefNode_switch() throws Throwable {
    this.initTest("${mps_home}", "r:dbab6746-af91-4594-857e-d38a36667e17(jetbrains.mps.lang.editor.multiple.tests)");
    this.runTest("jetbrains.mps.lang.editor.multiple.tests.ConditionalPresentation_addQuery_RefNode_switch_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("1947450138886994197", "1947450138886994215");
      this.typeString("rich");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveDown_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveDown_Action");
      this.typeString("richPropertyValue");
    }
  }
}
