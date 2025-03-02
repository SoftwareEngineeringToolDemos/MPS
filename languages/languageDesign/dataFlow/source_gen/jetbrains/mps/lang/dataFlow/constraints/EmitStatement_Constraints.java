package jetbrains.mps.lang.dataFlow.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.SNodePointer;

public class EmitStatement_Constraints extends BaseConstraintsDescriptor {
  public EmitStatement_Constraints() {
    super(MetaIdFactory.conceptId(0x7fa12e9cb9494976L, 0xb4fa19accbc320b4L, 0x118e5a42658L));
  }
  @Override
  public boolean hasOwnCanBeChildMethod() {
    return true;
  }
  @Override
  public boolean canBeChild(@Nullable SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext, @Nullable final CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAChild(node, parentNode, link, childConcept, operationContext);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeChildBreakingPoint);
    }

    return result;
  }
  public static boolean static_canBeAChild(SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    return SNodeOperations.getNodeAncestor(parentNode, MetaAdapterFactory.getConcept(0x7fa12e9cb9494976L, 0xb4fa19accbc320b4L, 0x118e5960f51L, "jetbrains.mps.lang.dataFlow.structure.BuilderBlock"), true, false) != null;
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:00000000-0000-4000-0000-011c89590377(jetbrains.mps.lang.dataFlow.constraints)", "1213107437882");
}
