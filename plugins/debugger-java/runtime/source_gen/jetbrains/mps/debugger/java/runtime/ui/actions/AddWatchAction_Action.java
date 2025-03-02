package jetbrains.mps.debugger.java.runtime.ui.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.icons.AllIcons;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.debugger.api.ui.DebugActionsUtil;
import jetbrains.mps.debug.api.evaluation.IEvaluationProvider;
import jetbrains.mps.debugger.java.runtime.evaluation.EvaluationProvider;

public class AddWatchAction_Action extends BaseAction {
  private static final Icon ICON = AllIcons.General.Add;
  public AddWatchAction_Action() {
    super("New Watch...", "New Watch...", ICON);
    this.setIsAlwaysVisible(true);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    event.getPresentation().setEnabled(DebugActionsUtil.getEvaluationProvider(event) != null);
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    IEvaluationProvider evaluationProvider = DebugActionsUtil.getEvaluationProvider(event);
    if (evaluationProvider != null) {
      ((EvaluationProvider) evaluationProvider).createWatch();
    }
  }
}
