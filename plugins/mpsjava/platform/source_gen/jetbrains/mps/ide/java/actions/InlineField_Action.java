package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import java.awt.Frame;
import com.intellij.featureStatistics.FeatureUsageTracker;
import org.jetbrains.mps.openapi.module.ModelAccess;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.InlineFieldRefactoring;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.InlineFieldAssignmentRefactoring;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.InlineFieldReferenceOperationRefactoring;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.InlineFieldReferenceRefactoring;
import com.intellij.openapi.ui.Messages;

public class InlineField_Action extends BaseAction {
  private static final Icon ICON = null;
  public InlineField_Action() {
    super("Inline Field", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    if (ReadOnlyUtil.isCellsReadOnlyInEditor(((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")), Sequence.<EditorCell>singleton(((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")).findNodeCell(((SNode) MapSequence.fromMap(_params).get("node")))))) {
      return false;
    }
    boolean isFieldDeclaration = (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) && SPropertyOperations.getBoolean(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal")) && (SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null)) || (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) && SPropertyOperations.getBoolean(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal")) && (SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null)) || (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, 0x116b484a653L, "fieldDeclaration")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) && SPropertyOperations.getBoolean(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, 0x116b484a653L, "fieldDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal")) && (SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, 0x116b484a653L, "fieldDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null));
    boolean isStaticFieldDeclaration = (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration")) && SPropertyOperations.getBoolean(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal")) && (SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null)) || (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration")) && SPropertyOperations.getBoolean(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal")) && (SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null));
    return (isFieldDeclaration || isStaticFieldDeclaration);
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
      EditorContext p = event.getData(MPSEditorDataKeys.EDITOR_CONTEXT);
      MapSequence.fromMap(_params).put("editorContext", p);
      if (p == null) {
        return false;
      }
    }
    {
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      MapSequence.fromMap(_params).put("node", node);
      if (node == null) {
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
    {
      EditorComponent editorComponent = event.getData(MPSEditorDataKeys.EDITOR_COMPONENT);
      if (editorComponent != null && editorComponent.isInvalid()) {
        editorComponent = null;
      }
      MapSequence.fromMap(_params).put("editorComponent", editorComponent);
      if (editorComponent == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    FeatureUsageTracker.getInstance().triggerFeatureUsed("refactoring.inline");
    ModelAccess modelAccess = ((EditorContext) MapSequence.fromMap(_params).get("editorContext")).getRepository().getModelAccess();
    final Wrappers._T<InlineFieldRefactoring> ref = new Wrappers._T<InlineFieldRefactoring>();

    final Wrappers._boolean isAvailable = new Wrappers._boolean(true);
    String messageDialogTitle = "Inline Field";
    final Wrappers._T<String> infoMessage = new Wrappers._T<String>(null);
    final Wrappers._T<String> yesNoMessage = new Wrappers._T<String>(null);
    modelAccess.runReadAction(new Runnable() {
      public void run() {
        if (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) || SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"))) {
          SNode fieldDeclaration = SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration"));
          InlineFieldAssignmentRefactoring inlineVARef = new InlineFieldAssignmentRefactoring(fieldDeclaration);

          if ((SLinkOperations.getTarget(fieldDeclaration, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) == null)) {
            isAvailable.value = false;
          }

          String fieldName = SPropertyOperations.getString(fieldDeclaration, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
          int nodesCount = Sequence.fromIterable(inlineVARef.findAllReferences(fieldDeclaration)).count() + Sequence.fromIterable(inlineVARef.findAllReferenceOperations(fieldDeclaration)).count();
          if (nodesCount == 0) {
            infoMessage.value = "Field " + fieldName + " is never used";
          } else {
            yesNoMessage.value = "Inline field '" + fieldName + "'? (" + NameUtil.formatNumericalString(nodesCount, "occurence") + ")";
          }

          ref.value = inlineVARef;
        } else if (SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation"))) {
          ref.value = new InlineFieldReferenceOperationRefactoring(SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, "jetbrains.mps.baseLanguage.structure.FieldReferenceOperation")));
        } else {
          SNode localVariableReference = SNodeOperations.cast(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"));
          ref.value = new InlineFieldReferenceRefactoring(localVariableReference);
        }
      }
    });
    if (!(isAvailable.value)) {
      return;
    }

    if (infoMessage.value != null) {
      Messages.showInfoMessage(((Frame) MapSequence.fromMap(_params).get("frame")), infoMessage.value, messageDialogTitle);
      return;
    }
    if (yesNoMessage.value != null) {
      int code = Messages.showYesNoDialog(((Frame) MapSequence.fromMap(_params).get("frame")), yesNoMessage.value, messageDialogTitle, null);
      if (code != 0) {
        return;
      }
    }

    modelAccess.executeCommand(new Runnable() {
      public void run() {
        SNode result = ref.value.doRefactoring();
        ((EditorContext) MapSequence.fromMap(_params).get("editorContext")).select(result);
      }
    });
  }
}
