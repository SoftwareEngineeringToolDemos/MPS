package jetbrains.mps.debugger.api.ui.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.icons.AllIcons;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.debug.api.AbstractDebugSession;
import jetbrains.mps.debugger.api.ui.DebugActionsUtil;

public class StepInto_Action extends BaseAction {
  private static final Icon ICON = AllIcons.Actions.TraceInto;
  public StepInto_Action() {
    super("Step Into", "", ICON);
    this.setIsAlwaysVisible(true);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    AbstractDebugSession debugSession = DebugActionsUtil.getDebugSession(event);
    event.getPresentation().setEnabled(debugSession != null && debugSession.isStepEnabled());
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    DebugActionsUtil.getDebugSession(event).stepInto();
  }
}
