package jetbrains.mps.lang.smodel.query.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.SNodePointer;

public class InstancesExpression_Constraints extends BaseConstraintsDescriptor {
  public InstancesExpression_Constraints() {
    super(MetaIdFactory.conceptId(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x6b643f33718aa10dL));
  }
  @Override
  public boolean hasOwnCanBeAncestorMethod() {
    return true;
  }
  @Override
  public boolean canBeAncestor(SNode node, @Nullable SNode childNode, SNode childConcept, IOperationContext context, @Nullable CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAnAncestor(node, childNode, childConcept, context);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeAncesctorBreakingPoint);
    }

    return result;
  }
  public static boolean static_canBeAnAncestor(SNode node, SNode childNode, SNode childConcept, final IOperationContext operationContext) {
    return !(SConceptOperations.isExactly(SNodeOperations.asSConcept(childConcept), MetaAdapterFactory.getConcept(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x3bc64421763add42L, "jetbrains.mps.lang.smodel.query.structure.GlobalScope")));
  }
  private static SNodePointer canBeAncesctorBreakingPoint = new SNodePointer("r:aef526b1-5019-472a-a761-72ac88ef58a4(jetbrains.mps.lang.smodel.query.constraints)", "3470161847493603670");
}
