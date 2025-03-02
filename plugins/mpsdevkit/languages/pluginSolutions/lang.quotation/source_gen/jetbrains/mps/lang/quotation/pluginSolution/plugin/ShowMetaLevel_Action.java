package jetbrains.mps.lang.quotation.pluginSolution.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.awt.Component;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import javax.swing.JOptionPane;

public class ShowMetaLevel_Action extends BaseAction {
  private static final Icon ICON = null;
  public ShowMetaLevel_Action() {
    super("Show Quotation Metalevel", "", ICON);
    this.setIsAlwaysVisible(false);
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
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      if (node != null && !(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept")))) {
        node = null;
      }
      if (node == null) {
        return false;
      }
    }
    {
      Component p = event.getData(PlatformDataKeys.CONTEXT_COMPONENT);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    int metaLevel = BaseConcept_BehaviorDescriptor.getMetaLevel_id3t0v3yFOD1A.invoke(event.getData(MPSCommonDataKeys.NODE));
    JOptionPane.showMessageDialog(event.getData(PlatformDataKeys.CONTEXT_COMPONENT), metaLevel);
  }
}
