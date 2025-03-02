package jetbrains.mps.debugger.api.ui.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.plugins.actions.LabelledAnchor;
import com.intellij.openapi.actionSystem.ex.ActionManagerEx;
import com.intellij.openapi.extensions.PluginId;

public class DebugRunMenu_ActionGroup extends GeneratedActionGroup {
  private static Logger LOG = LogManager.getLogger(DebugRunMenu_ActionGroup.class);
  public static final String ID = "jetbrains.mps.debugger.api.ui.actions.DebugRunMenu_ActionGroup";
  public static final String LABEL_ID_steps = ID + "steps";
  public DebugRunMenu_ActionGroup() {
    super("DebugRunMenu", ID);
    this.setIsInternal(false);
    this.setPopup(false);
    try {
      DebugRunMenu_ActionGroup.this.addSeparator();
      {
        LabelledAnchor action = new LabelledAnchor(DebugRunMenu_ActionGroup.LABEL_ID_steps);
        ActionManagerEx manager = ActionManagerEx.getInstanceEx();
        manager.registerAction(action.getId(), action, PluginId.getId("jetbrains.mps.debugger.api.runtime"));
        DebugRunMenu_ActionGroup.this.addAction(action);
      }
      DebugRunMenu_ActionGroup.this.addAction("jetbrains.mps.debugger.api.ui.actions.Resume_Action");
      DebugRunMenu_ActionGroup.this.addAction("jetbrains.mps.debugger.api.ui.actions.Pause_Action");
      DebugRunMenu_ActionGroup.this.addAction("jetbrains.mps.debugger.api.ui.actions.EvaluateExpression_Action");
      DebugRunMenu_ActionGroup.this.addAction("jetbrains.mps.debugger.api.ui.actions.ExportThreads_Action");
      DebugRunMenu_ActionGroup.this.addSeparator();
      DebugRunMenu_ActionGroup.this.addAction("jetbrains.mps.debugger.api.ui.actions.ToggleBreakpoint_Action");
      DebugRunMenu_ActionGroup.this.addAction("jetbrains.mps.debugger.api.ui.actions.ViewBreakpoints_Action");
    } catch (Throwable t) {
      LOG.error("User group error", t);
    }
  }
}
