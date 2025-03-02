package jetbrains.mps.baseLanguage.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.baseLanguage.behavior.StatementList_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.baseLanguage.behavior.ClassConcept_BehaviorDescriptor;

public class AnonymousClassCreator_DataFlow extends DataFlowBuilder {
  public AnonymousClassCreator_DataFlow() {
  }
  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    List<SNode> methods = SNodeOperations.getNodeDescendants(_context.getNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"), false, new SAbstractConcept[]{});
    Set<SNode> vars = SetSequence.fromSet(new HashSet<SNode>());
    for (SNode method : methods) {
      SetSequence.fromSet(vars).addSequence(SetSequence.fromSet(StatementList_BehaviorDescriptor.getExternalVariablesDeclarations_idhF5UhAC.invoke(SLinkOperations.getTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")))));
    }
    for (SNode var : vars) {
      _context.getBuilder().emitRead(var, "r:00000000-0000-4000-0000-011c895902c2(jetbrains.mps.baseLanguage.dataFlow)/1214502357422");
    }
    for (SNode expr : SLinkOperations.getChildren(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1133e3b449aL, 0x1133e3b8b49L, "cls")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x1107e104a89L, "parameter"))) {
      _context.getBuilder().build((SNode) expr);
    }
    for (SNode expr : SLinkOperations.getChildren(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1133e3b449aL, 0x1133e3b8b49L, "cls")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))) {
      _context.getBuilder().build((SNode) expr);
    }
    for (SNode fieldDeclaration : ClassConcept_BehaviorDescriptor.fields_id4_LVZ3pC27C.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1133e3b449aL, 0x1133e3b8b49L, "cls")))) {
      _context.getBuilder().build((SNode) fieldDeclaration);
    }
  }
}
