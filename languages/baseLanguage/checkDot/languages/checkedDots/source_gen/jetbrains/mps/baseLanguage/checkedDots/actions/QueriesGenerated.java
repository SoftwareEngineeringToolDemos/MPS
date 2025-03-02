package jetbrains.mps.baseLanguage.checkedDots.actions;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.action.NodeSubstituteActionsFactoryContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.action.DefaultSimpleSubstituteAction;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.action.SideTransformActionsBuilderContext;
import jetbrains.mps.smodel.action.AbstractSideTransformHintSubstituteAction;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.smodel.constraints.ModelConstraints;
import jetbrains.mps.smodel.action.SideTransformPreconditionContext;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.baseLanguage.behavior.IOperation_BehaviorDescriptor;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_IOperation_2248628811136262598(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      SNode outputConcept = MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46ac030L, "jetbrains.mps.baseLanguage.structure.IOperation").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (outputConcept == null || SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        ListSequence.fromList(result).addElement(new DefaultSimpleSubstituteAction(outputConcept, _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter()) {
          public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
            SNode dot = SNodeOperations.cast(_context.getParentNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"));
            SNode checkedDot = SNodeFactoryOperations.replaceWithNewChild(dot, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression")));
            SLinkOperations.setTarget(checkedDot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), SLinkOperations.getTarget(dot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand")));
            SLinkOperations.setTarget(checkedDot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), SLinkOperations.getTarget(dot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation")));
            return null;
          }
          public String getDescriptionText(String pattern) {
            return "checked dot";
          }
          public String getMatchingText(String pattern) {
            return "?";
          }
          public String getVisibleMatchingText(String pattern) {
            return getMatchingText(pattern);
          }
        });
      }
    }
    return result;
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_Expression_4079382982702692313(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SNode operationExpression = SNodeFactoryOperations.replaceWithNewChild(_context.getSourceNode(), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression")));
        SLinkOperations.setTarget(operationExpression, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), _context.getSourceNode());
        SNodeFactoryOperations.setNewChild(operationExpression, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1196792d150L, "jetbrains.mps.baseLanguage.structure.AbstractOperation")));
        return operationExpression;
      }
      public String getMatchingText(String pattern) {
        return ":checked dot:";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_Expression_4079382982702692314(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return (TypeChecker.getInstance().getTypeOf(_context.getSourceNode()) != null);
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_IOperation_7404423900570111860(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SNode dot = IOperation_BehaviorDescriptor.getDotExpression_idhO_4GYO.invoke(_context.getSourceNode());
        SNode checkedDot = SNodeFactoryOperations.replaceWithNewChild(dot, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression")));
        SLinkOperations.setTarget(checkedDot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), SLinkOperations.getTarget(dot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand")));
        SLinkOperations.setTarget(checkedDot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), SLinkOperations.getTarget(dot, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation")));
        return checkedDot;
      }
      public String getMatchingText(String pattern) {
        return "?";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0x774bf8a062e541e1L, 0xaf63f4812e60e48bL, 0x389ce13592c3023bL, "jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression").getDeclarationNode(), null));
      }
    });
    return result;
  }
}
