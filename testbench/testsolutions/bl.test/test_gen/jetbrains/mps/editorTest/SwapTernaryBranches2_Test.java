package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class SwapTernaryBranches2_Test extends BaseTransformationTest {
  public SwapTernaryBranches2_Test() {
  }
  @Test
  public void test_SwapTernaryBranches2() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.SwapTernaryBranches2_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("6866160649815062187", "6866160649815062197");
      invokeIntention("jetbrains.mps.baseLanguage.intentions.SwapTernaryBranches_Intention", myStart.getNode());
    }
  }
}
