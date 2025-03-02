package jetbrains.mps.baseLanguage.collections.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class MultiForEachVariableReference_DataFlow extends DataFlowBuilder {
  public MultiForEachVariableReference_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    _context.getBuilder().emitRead(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x731a0dad81895f16L, 0x731a0dad818984f5L, "variable")), "r:00000000-0000-4000-0000-011c89590329(jetbrains.mps.baseLanguage.collections.dataFlow)/5684597377559860369");
  }
}
