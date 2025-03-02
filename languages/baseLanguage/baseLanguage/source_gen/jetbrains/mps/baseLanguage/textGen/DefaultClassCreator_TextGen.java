package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class DefaultClassCreator_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    BaseLanguageTextGen.blClassifierRef(SNodeOperations.getReference(ctx.getPrimaryInput(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, 0x2724644c0ac833a6L, "classifier")), ctx);
    BaseLanguageTextGen.typeParameters(SLinkOperations.getChildren(ctx.getPrimaryInput(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, 0x2724644c0accfdb3L, "typeParameter")), ctx);
    tgs.append("()");
  }
}
