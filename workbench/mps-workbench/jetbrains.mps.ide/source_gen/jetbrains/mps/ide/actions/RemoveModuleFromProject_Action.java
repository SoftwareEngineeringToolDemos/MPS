package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.annotations.NotNull;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import com.intellij.openapi.ui.DialogWrapper;
import org.jetbrains.annotations.Nullable;
import javax.swing.JComponent;
import javax.swing.JPanel;
import java.awt.GridBagLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import javax.swing.JLabel;
import jetbrains.mps.project.StandaloneMPSProject;

public class RemoveModuleFromProject_Action extends BaseAction {
  private static final Icon ICON = null;
  public RemoveModuleFromProject_Action() {
    super("Remove from Project", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    SModule module = ((IOperationContext) MapSequence.fromMap(_params).get("context")).getModule();
    if (module == null) {
      return false;
    }
    return ((MPSProject) MapSequence.fromMap(_params).get("mpsproject")).isProjectModule(module);
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
      IOperationContext p = event.getData(MPSCommonDataKeys.OPERATION_CONTEXT);
      MapSequence.fromMap(_params).put("context", p);
      if (p == null) {
        return false;
      }
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      MapSequence.fromMap(_params).put("mpsproject", p);
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
    SModule module = ((IOperationContext) MapSequence.fromMap(_params).get("context")).getModule();
    final String message = "Are you sure you want to remove selected module from a project? This operation is not undoable.";
    DialogWrapper dialogWrapper = new DialogWrapper(((Project) MapSequence.fromMap(_params).get("project")), true) {
      {
        setTitle("Remove Module From Project");
        init();
      }
      @Nullable
      @Override
      protected JComponent createCenterPanel() {
        JPanel panel = new JPanel(new GridBagLayout());
        GridBagConstraints gbc = new GridBagConstraints();
        gbc.insets = new Insets(4, 8, 40, 4);
        JLabel label = new JLabel(message);
        panel.add(label, gbc);
        return panel;
      }
    };
    dialogWrapper.show();
    if (!(dialogWrapper.isOK())) {
      return;
    }
    ((MPSProject) MapSequence.fromMap(_params).get("mpsproject")).removeModule(module.getModuleReference());
    ((StandaloneMPSProject) ((MPSProject) MapSequence.fromMap(_params).get("mpsproject"))).update();
  }
}
