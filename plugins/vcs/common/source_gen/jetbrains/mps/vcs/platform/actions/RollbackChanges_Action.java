package jetbrains.mps.vcs.platform.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.icons.AllIcons;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.vcs.changesmanager.editor.ChangesStripActionsHelper;

public class RollbackChanges_Action extends BaseAction {
  private static final Icon ICON = AllIcons.General.Reset;
  public RollbackChanges_Action() {
    super("Rollback", "", ICON);
    this.setIsAlwaysVisible(true);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      EditorContext p = event.getData(MPSEditorDataKeys.EDITOR_CONTEXT);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    ChangesStripActionsHelper.rollbackChanges(event.getData(MPSEditorDataKeys.EDITOR_CONTEXT));
  }
}
