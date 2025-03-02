package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.traceable.behavior.TraceableConcept_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class IfStatement_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.createPositionInfo();
    tgs.newLine();
    tgs.indent();
    tgs.append("if (");
    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b218L, "condition")));
    tgs.append(") {");
    ctx.getBuffer().area().increaseIndent();
    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xf8cc56b219L, "ifTrue")));
    ctx.getBuffer().area().decreaseIndent();
    tgs.newLine();
    tgs.indent();
    tgs.append("}");
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0x118cecf1287L, "elsifClauses"))) {
      tgs.appendNode(item);
    }
    if ((SLinkOperations.getTarget(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")) != null)) {
      tgs.append(" else");
      tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b217L, 0xfc092b6b76L, "ifFalseStatement")));
    }
    if (tgs.needPositions()) {
      tgs.fillPositionInfo(TraceableConcept_BehaviorDescriptor.getTraceableProperty_id4pl5GY7LKmH.invoke(SNodeOperations.cast(ctx.getPrimaryInput(), MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a3L, "jetbrains.mps.lang.traceable.structure.TraceableConcept"))));
    }
  }
}
