package jetbrains.mps.debugger.java.customViewers.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class HighLevelWatchableCreator_DataFlow extends DataFlowBuilder {
  public HighLevelWatchableCreator_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    _context.getBuilder().build((SNode) SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xfa8aeae94df94e13L, 0xbfb19b04c67ddb77L, 0x9a1514044030ceL, 0x9a15140440937bL, "value")));
  }
}
