package jetbrains.mps.lang.editor.diagram.tests;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import java.awt.Component;
import java.awt.event.MouseEvent;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

@MPSLaunch
public class StopShowCompletionOnTheDiagram_Test extends BaseTransformationTest {
  public StopShowCompletionOnTheDiagram_Test() {
  }
  @Test
  public void test_StopShowCompletionOnTheDiagram() throws Throwable {
    this.initTest("${mps_home}", "r:e41d7e03-7ef3-4161-a48a-e48d8152e422(jetbrains.mps.lang.editor.diagram.tests@tests)");
    this.runTest("jetbrains.mps.lang.editor.diagram.tests.StopShowCompletionOnTheDiagram_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("2278461409094282964", "2278461409094282966");
      {
        int x_hpnf0e_a0 = 10;
        int y_hpnf0e_a0 = 10;
        Component eventTargetComponent_hpnf0e_a0 = this.processMouseEvent(x_hpnf0e_a0, y_hpnf0e_a0, MouseEvent.MOUSE_PRESSED);
        this.processSecondaryMouseEvent(eventTargetComponent_hpnf0e_a0, x_hpnf0e_a0, y_hpnf0e_a0, MouseEvent.MOUSE_RELEASED);
        this.processSecondaryMouseEvent(eventTargetComponent_hpnf0e_a0, x_hpnf0e_a0, y_hpnf0e_a0, MouseEvent.MOUSE_CLICKED);
      }
      assert this.getEditorComponent().getNodeSubstituteChooser().isVisible();
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), " ESCAPE"));
      assert !(this.getEditorComponent().getNodeSubstituteChooser().isVisible());

    }
  }
}
