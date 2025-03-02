package jetbrains.mps.baseLanguage.pluginSolution.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.lang.dataFlow.framework.AnalyzerRunner;
import jetbrains.mps.baseLanguage.dataFlow.NullableState;
import jetbrains.mps.ide.dataFlow.presentation.ControlFlowGraph;
import jetbrains.mps.ide.dataFlow.presentation.InstructionWrapper;
import jetbrains.mps.baseLanguage.dataFlow.NullableAnalyzerRunner;
import jetbrains.mps.ide.dataFlow.presentation.ProgramWrapper;
import jetbrains.mps.ide.dataFlow.presentation.GraphCreator;
import jetbrains.mps.ide.dataFlow.presentation.ShowCFGDialog;

public class ShowNullDFA_Action extends BaseAction {
  private static final Icon ICON = null;
  public ShowNullDFA_Action() {
    super("Show Nullable DFA", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
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
      if (node == null) {
        return false;
      }
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    final Wrappers._T<AnalyzerRunner<Map<SNode, NullableState>>> runner = new Wrappers._T<AnalyzerRunner<Map<SNode, NullableState>>>();
    final Wrappers._T<ControlFlowGraph<InstructionWrapper>> graph = new Wrappers._T<ControlFlowGraph<InstructionWrapper>>();
    event.getData(MPSCommonDataKeys.MPS_PROJECT).getRepository().getModelAccess().runReadAction(new Runnable() {
      public void run() {
        runner.value = new NullableAnalyzerRunner(event.getData(MPSCommonDataKeys.NODE));
        graph.value = new ControlFlowGraph<InstructionWrapper>(new ProgramWrapper(runner.value.getProgramCopy()), new GraphCreator());
      }
    });
    new ShowCFGDialog(graph.value, event.getData(MPSCommonDataKeys.MPS_PROJECT), "Nullable DFA").show();
  }
}
