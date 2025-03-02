package jetbrains.mps.lang.generator.actions;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.action.NodeSubstituteActionsFactoryContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.smodel.action.ChildSubstituteActionsHelper;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.action.NodeSubstitutePreconditionContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_RuleConsequence_1169570930693(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addSequence(ListSequence.fromList(ChildSubstituteActionsHelper.createDefaultSubstituteActions(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x1104fcac3b1L, "jetbrains.mps.lang.generator.structure.WeaveEach_RuleConsequence").getDeclarationNode(), _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter())));
    return result;
  }
  public static boolean nodeSubstituteActionsBuilder_Precondition_RuleConsequence_1169582381136(final IOperationContext operationContext, final NodeSubstitutePreconditionContext _context) {
    return SNodeOperations.isInstanceOf(_context.getParentNode(), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0d8c573L, "jetbrains.mps.lang.generator.structure.Weaving_MappingRule"));
  }
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_RuleConsequence_1195244607537(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addSequence(ListSequence.fromList(ChildSubstituteActionsHelper.createDefaultSubstituteActions(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11644fa2edeL, "jetbrains.mps.lang.generator.structure.InlineSwitch_RuleConsequence").getDeclarationNode(), _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter())));
    return result;
  }
  public static boolean nodeSubstituteActionsBuilder_Precondition_RuleConsequence_1195244660444(final IOperationContext operationContext, final NodeSubstitutePreconditionContext _context) {
    return SNodeOperations.isInstanceOf(_context.getParentNode(), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fca296532L, "jetbrains.mps.lang.generator.structure.Reduction_MappingRule"));
  }
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_Expression_8421689336187916451(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addSequence(ListSequence.fromList(ChildSubstituteActionsHelper.createDefaultSubstituteActions(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b471fcL, "jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode").getDeclarationNode(), _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter())));
    return result;
  }
  public static boolean nodeSubstituteActionsBuilder_Precondition_Expression_8421689336187916452(final IOperationContext operationContext, final NodeSubstitutePreconditionContext _context) {
    return (SNodeOperations.getNodeAncestor(_context.getParentNode(), MetaAdapterFactory.getInterfaceConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x17e941d108ce3120L, "jetbrains.mps.lang.generator.structure.ITemplateCall"), true, false) != null);
  }
}
