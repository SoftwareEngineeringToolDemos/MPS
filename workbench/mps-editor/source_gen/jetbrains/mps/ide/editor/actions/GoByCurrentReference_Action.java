package jetbrains.mps.ide.editor.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.APICellAdapter;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import com.intellij.featureStatistics.FeatureUsageTracker;
import jetbrains.mps.openapi.navigation.EditorNavigator;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class GoByCurrentReference_Action extends BaseAction {
  private static final Icon ICON = null;
  public GoByCurrentReference_Action() {
    super("Declaration", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    SNode targetNode = APICellAdapter.getSNodeWRTReference(((EditorCell) MapSequence.fromMap(_params).get("cell")));
    if (targetNode == null) {
      return false;
    }
    if (targetNode == ((EditorCell) MapSequence.fromMap(_params).get("cell")).getSNode()) {
      return false;
    }
    return true;
  }
  @Override
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    this.setEnabledState(event.getPresentation(), this.isApplicable(event, _params));
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      EditorCell p = event.getData(MPSEditorDataKeys.EDITOR_CELL);
      MapSequence.fromMap(_params).put("cell", p);
      if (p == null) {
        return false;
      }
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      MapSequence.fromMap(_params).put("mpsProject", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    FeatureUsageTracker.getInstance().triggerFeatureUsed("navigation.goto.definition");
    final SNode targetNode = APICellAdapter.getSNodeWRTReference(((EditorCell) MapSequence.fromMap(_params).get("cell")));
    new EditorNavigator(((MPSProject) MapSequence.fromMap(_params).get("mpsProject"))).shallFocus(true).selectIfChild().open(SNodeOperations.getPointer(targetNode));
  }
}
