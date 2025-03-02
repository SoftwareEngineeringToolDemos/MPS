package jetbrains.mps.lang.behavior.actions;

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
import jetbrains.mps.util.Computable;
import jetbrains.mps.lang.structure.behavior.AbstractConceptDeclaration_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.action.DefaultChildNodeSubstituteAction;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.smodel.action.NodeSubstitutePreconditionContext;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.action.SideTransformActionsBuilderContext;
import jetbrains.mps.smodel.action.AbstractSideTransformHintSubstituteAction;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.behavior.behavior.SuperNodeExpression_BehaviorDescriptor;
import jetbrains.mps.smodel.constraints.ModelConstraints;
import jetbrains.mps.smodel.action.SideTransformPreconditionContext;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_Expression_1238617792506(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        Iterable<SNode> queryResult = new Computable<Iterable<SNode>>() {
          public Iterable<SNode> compute() {
            SNode behavior = SNodeOperations.getNodeAncestor(_context.getParentNode(), MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, "jetbrains.mps.lang.behavior.structure.ConceptBehavior"), true, false);
            return AbstractConceptDeclaration_BehaviorDescriptor.getAvailableConceptMethods_idhEwILGo.invoke(SLinkOperations.getTarget(behavior, MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, 0x11d43447b1fL, "concept")), _context.getParentNode());
          }
        }.compute();
        if (queryResult != null) {
          for (final SNode item : queryResult) {
            ListSequence.fromList(result).addElement(new DefaultChildNodeSubstituteAction(outputConcept, item, _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter()) {
              public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
                SNode expr = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), null);
                SNodeFactoryOperations.setNewChild(expr, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434b5be1L, "jetbrains.mps.lang.behavior.structure.ThisNodeExpression")));
                SNode call = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x1129a43046bL, "jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall")), null);
                SLinkOperations.setTarget(call, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), (item));
                SLinkOperations.setTarget(expr, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), call);
                return expr;
              }
            });
          }
        }
      }
    }
    return result;
  }
  public static boolean nodeSubstituteActionsBuilder_Precondition_Expression_1238617792565(final IOperationContext operationContext, final NodeSubstitutePreconditionContext _context) {
    return false && SNodeOperations.getNodeAncestorWhereConceptInList(_context.getParentNode(), new SAbstractConcept[]{MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration"), MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43471eedL, "jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration")}, true, false) != null;
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_SuperNodeExpression_7448026190102456640(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, "jetbrains.mps.lang.behavior.structure.SuperNodeExpression").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SNode result = SuperNodeExpression_BehaviorDescriptor.getSuperConcept_id6tsH5JaReJu.invoke(_context.getSourceNode());
        if (result == null) {
          result = SNodeOperations.getNode("r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)", "1133920641626");
        }
        return SLinkOperations.setTarget(_context.getSourceNode(), MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, 0x498a2c3387127040L, "superConcept"), result);
      }
      public String getMatchingText(String pattern) {
        return "<";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      public String getDescriptionText(String pattern) {
        return "add qualifier for super expression";
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, "jetbrains.mps.lang.behavior.structure.SuperNodeExpression").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, "jetbrains.mps.lang.behavior.structure.SuperNodeExpression").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_SuperNodeExpression_7448026190102456641(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return (SLinkOperations.getTarget(_context.getSourceNode(), MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L, 0x498a2c3387127040L, "superConcept")) == null);
  }
}
