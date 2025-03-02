package jetbrains.mps.baseLanguage.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class IfStatement_DataFlow extends DataFlowBuilder {
  public IfStatement_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    _context.getBuilder().build((SNode) SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition")));
    if (!((SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, "jetbrains.mps.baseLanguage.structure.BooleanConstant")) && SPropertyOperations.getBoolean(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, "jetbrains.mps.baseLanguage.structure.BooleanConstant")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, 0xf8cc56b202L, "value"))))) {
      _context.getBuilder().emitIfJump(_context.getBuilder().label(_context.getNode(), "endOfTrue"), "r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/1235407894378");
    }
    _context.getBuilder().build((SNode) SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b219L, "ifTrue")));
    if ((SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")) != null) || SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0x118cecf1287L, "elsifClauses")) != null && ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0x118cecf1287L, "elsifClauses"))).isNotEmpty()) {
      _context.getBuilder().emitMayBeUnreachable(new Runnable() {
        public void run() {
          _context.getBuilder().emitJump(_context.getBuilder().after(_context.getNode()), "r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/1217868921099");
        }
      });
    }
    _context.getBuilder().emitLabel("endOfTrue");
    for (SNode elseIf : SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0x118cecf1287L, "elsifClauses"))) {
      _context.getBuilder().build((SNode) elseIf);
    }
    if ((SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")) != null)) {
      _context.getBuilder().build((SNode) SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")));
    }
  }
}
