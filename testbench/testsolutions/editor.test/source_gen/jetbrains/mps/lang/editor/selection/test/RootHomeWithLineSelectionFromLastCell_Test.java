package jetbrains.mps.lang.editor.selection.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class RootHomeWithLineSelectionFromLastCell_Test extends BaseTransformationTest {
  public RootHomeWithLineSelectionFromLastCell_Test() {
  }
  @Test
  public void test_RootHomeWithLineSelectionFromLastCell() throws Throwable {
    this.initTest("${mps_home}", "r:f429894b-858b-4e34-87ae-2cfe2a061928(jetbrains.mps.lang.editor.selection.test)");
    this.runTest("jetbrains.mps.lang.editor.selection.test.RootHomeWithLineSelectionFromLastCell_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("5097407566121771938", "5097407566121771945");
      this.invokeAction("jetbrains.mps.ide.editor.actions.SelectPrevious_Action");
      this.invokeAction("jetbrains.mps.ide.editor.actions.RootHome_Action");
    }
  }
}
