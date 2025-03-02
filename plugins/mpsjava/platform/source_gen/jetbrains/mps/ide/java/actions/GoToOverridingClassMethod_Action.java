package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.ide.editor.util.GoToHelper;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.featureStatistics.FeatureUsageTracker;
import java.awt.event.InputEvent;
import jetbrains.mps.ide.editor.util.GoToContextMenuUtil;

public class GoToOverridingClassMethod_Action extends BaseAction {
  private static final Icon ICON = null;
  public GoToOverridingClassMethod_Action() {
    super("Go to Overriding Methods", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    return GoToHelper.hasApplicableFinder(((SNode) MapSequence.fromMap(_params).get("methodNode")), GoToOverridingClassMethod_Action.this.getFinderName(_params));
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
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      if (node != null && !(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration")))) {
        node = null;
      }
      MapSequence.fromMap(_params).put("methodNode", node);
      if (node == null) {
        return false;
      }
    }
    {
      EditorCell p = event.getData(MPSEditorDataKeys.EDITOR_CELL);
      MapSequence.fromMap(_params).put("selectedCell", p);
      if (p == null) {
        return false;
      }
    }
    {
      Project p = event.getData(CommonDataKeys.PROJECT);
      MapSequence.fromMap(_params).put("project", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    FeatureUsageTracker.getInstance().triggerFeatureUsed("navigation.gotoImplementation");
    EditorCell selectedCell = ((EditorCell) MapSequence.fromMap(_params).get("selectedCell"));
    InputEvent inputEvent = event.getInputEvent();
    GoToHelper.executeFinders(((SNode) MapSequence.fromMap(_params).get("methodNode")), ((Project) MapSequence.fromMap(_params).get("project")), GoToOverridingClassMethod_Action.this.getFinderName(_params), GoToContextMenuUtil.getRelativePoint(selectedCell, inputEvent));
  }
  private String getFinderName(final Map<String, Object> _params) {
    return "jetbrains.mps.baseLanguage.findUsages.DerivedMethods_Finder";
  }
}
