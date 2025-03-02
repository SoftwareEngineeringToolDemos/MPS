package jetbrains.mps.lang.typesystem.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class SubstituteTypeRule_DataFlow extends DataFlowBuilder {
  public SubstituteTypeRule_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    _context.getBuilder().build((SNode) SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x1117e7b5c73L, 0x1117e7b9c40L, "applicableNode")));
    _context.getBuilder().build((SNode) SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x58e32a0782bca52aL, 0x65a1a729b445aec0L, "body")));
  }
}
