package jetbrains.mps.baseLanguage.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ArrayCreator_DataFlow extends DataFlowBuilder {
  public ArrayCreator_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    for (SNode expression : ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x113e4952f12L, 0x113e4b36742L, "dimensionExpression")))) {
      _context.getBuilder().build((SNode) expression);
    }
  }
}
