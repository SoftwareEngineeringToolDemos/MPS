package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.util.ModelComputeRunnable;
import jetbrains.mps.util.Computable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.IntroduceLocalVariableRefactoring;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import java.awt.Frame;
import com.intellij.featureStatistics.FeatureUsageTracker;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.ide.java.platform.refactorings.LocalVariableIntroducer;
import javax.swing.JOptionPane;

public class IntroduceVariable_Action extends BaseAction {
  private static final Icon ICON = null;
  public IntroduceVariable_Action() {
    super("Introduce Variable...", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    SNode nodeToRefactor = new ModelComputeRunnable<SNode>(new Computable<SNode>() {
      public SNode compute() {
        return SNodeOperations.getNodeAncestor(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"), true, false);
      }
    }).runRead(((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess());
    if (ReadOnlyUtil.isCellsReadOnlyInEditor(((EditorComponent) MapSequence.fromMap(_params).get("component")), Sequence.<EditorCell>singleton(((EditorComponent) MapSequence.fromMap(_params).get("component")).findNodeCell(nodeToRefactor)))) {
      return false;
    }
    return IntroduceLocalVariableRefactoring.isApplicable(nodeToRefactor);
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
      MapSequence.fromMap(_params).put("node", node);
      if (node == null) {
        return false;
      }
    }
    {
      EditorContext p = event.getData(MPSEditorDataKeys.EDITOR_CONTEXT);
      MapSequence.fromMap(_params).put("editorContext", p);
      if (p == null) {
        return false;
      }
    }
    {
      EditorComponent editorComponent = event.getData(MPSEditorDataKeys.EDITOR_COMPONENT);
      if (editorComponent != null && editorComponent.isInvalid()) {
        editorComponent = null;
      }
      MapSequence.fromMap(_params).put("component", editorComponent);
      if (editorComponent == null) {
        return false;
      }
    }
    {
      Frame p = event.getData(MPSCommonDataKeys.FRAME);
      MapSequence.fromMap(_params).put("frame", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    FeatureUsageTracker.getInstance().triggerFeatureUsed("refactoring.introduceVariable");

    final IntroduceLocalVariableRefactoring refactoring = new IntroduceLocalVariableRefactoring();
    final SNode nodeToRefactor = new ModelComputeRunnable<SNode>(new Computable<SNode>() {
      public SNode compute() {
        return SNodeOperations.getNodeAncestor(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"), true, false);
      }
    }).runRead(((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess());
    final Wrappers._T<String> error = new Wrappers._T<String>();
    ((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess().runReadAction(new Runnable() {
      public void run() {
        error.value = refactoring.init(nodeToRefactor, ((EditorComponent) MapSequence.fromMap(_params).get("component")));
      }
    });
    if (error.value == null) {
      final LocalVariableIntroducer introducer = new LocalVariableIntroducer(((Frame) MapSequence.fromMap(_params).get("frame")), refactoring, ((EditorComponent) MapSequence.fromMap(_params).get("component")), ((EditorContext) MapSequence.fromMap(_params).get("editorContext")));
      introducer.invoke(event.getDataContext());
    } else {
      JOptionPane.showMessageDialog(((EditorComponent) MapSequence.fromMap(_params).get("component")), error.value, "Error", JOptionPane.ERROR_MESSAGE);
    }
  }
}
