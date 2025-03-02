package jetbrains.mps.ide.make.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.make.IMakeService;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.project.MPSProject;
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

public class MakeSelection_Action extends BaseAction {
  private static final Icon ICON = null;
  private boolean cleanMake;
  public MakeSelection_Action(boolean cleanMake_par) {
    super("Make", "", ICON);
    this.cleanMake = cleanMake_par;
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    if (IMakeService.INSTANCE.get().isSessionActive()) {
      return false;
    }
    String text = new MakeActionParameters(event.getData(MPSCommonDataKeys.MPS_PROJECT)).modules(MakeSelection_Action.this.getModules(event)).models(MakeSelection_Action.this.getModels(event)).cleanMake(MakeSelection_Action.this.cleanMake).actionText();
    if (text != null) {
      event.getPresentation().setText(text);
      return true;
    }
    return false;
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
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      if (p == null) {
        return false;
      }
    }
    {
      List<SModel> p = event.getData(MPSCommonDataKeys.MODELS);
    }
    {
      SModel p = event.getData(MPSCommonDataKeys.CONTEXT_MODEL);
    }
    {
      List<SModule> p = event.getData(MPSCommonDataKeys.MODULES);
    }
    {
      SModule p = event.getData(MPSCommonDataKeys.CONTEXT_MODULE);
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    new MakeActionImpl(new MakeActionParameters(event.getData(MPSCommonDataKeys.MPS_PROJECT)).modules(MakeSelection_Action.this.getModules(event)).models(MakeSelection_Action.this.getModels(event)).cleanMake(MakeSelection_Action.this.cleanMake)).executeAction();
  }
  @NotNull
  public String getActionId() {
    StringBuilder res = new StringBuilder();
    res.append(super.getActionId());
    res.append("#");
    res.append(((Object) this.cleanMake).toString());
    res.append("!");
    return res.toString();
  }
  private List<SModule> getModules(final AnActionEvent event) {
    SModule cmd = event.getData(MPSCommonDataKeys.CONTEXT_MODULE);
    if (cmd instanceof Generator) {
      cmd = ((Generator) cmd).getSourceLanguage();
    }
    List<SModule> rv = ListSequence.fromList(new ArrayList<SModule>());
    if (event.getData(MPSCommonDataKeys.MODULES) != null) {
      ListSequence.fromList(rv).addSequence(ListSequence.fromList(event.getData(MPSCommonDataKeys.MODULES)));
    }
    if (cmd != null && !(ListSequence.fromList(rv).contains(cmd))) {
      ListSequence.fromList(rv).addElement(cmd);
    }
    return rv;
  }
  private List<SModel> getModels(final AnActionEvent event) {
    List<SModel> rv = ListSequence.fromList(new ArrayList<SModel>());
    if (event.getData(MPSCommonDataKeys.MODELS) != null) {
      ListSequence.fromList(rv).addSequence(ListSequence.fromList(event.getData(MPSCommonDataKeys.MODELS)));
    }
    if (event.getData(MPSCommonDataKeys.CONTEXT_MODEL) != null && !(ListSequence.fromList(rv).contains(event.getData(MPSCommonDataKeys.CONTEXT_MODEL)))) {
      ListSequence.fromList(rv).addElement(event.getData(MPSCommonDataKeys.CONTEXT_MODEL));
    }
    return rv;
  }
}
