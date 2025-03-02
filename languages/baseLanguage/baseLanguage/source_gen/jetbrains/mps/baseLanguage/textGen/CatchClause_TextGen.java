package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.traceable.behavior.ScopeConcept_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class CatchClause_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.createScopeInfo();
    tgs.indent();
    tgs.append("} catch (");
    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10f39a56e2fL, 0x10f39a6a2f1L, "throwable")));
    tgs.append(") {");
    ctx.getBuffer().area().increaseIndent();
    tgs.appendNode(SLinkOperations.getTarget(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10f39a56e2fL, 0x10f39a6a2f2L, "catchBody")));
    ctx.getBuffer().area().decreaseIndent();
    if (tgs.needPositions()) {
      tgs.fillScopeInfo(ScopeConcept_BehaviorDescriptor.getScopeVariables_id4pl5GY7LKmA.invoke(SNodeOperations.cast(ctx.getPrimaryInput(), MetaAdapterFactory.getInterfaceConcept(0x9ded098bad6a4657L, 0xbfd948636cfe8bc3L, 0x465516cf87c705a2L, "jetbrains.mps.lang.traceable.structure.ScopeConcept"))));
    }
  }
}
