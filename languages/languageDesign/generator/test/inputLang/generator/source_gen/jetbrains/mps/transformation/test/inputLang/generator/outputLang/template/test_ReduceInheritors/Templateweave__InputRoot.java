package jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_ReduceInheritors;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import jetbrains.mps.generator.runtime.TemplateDeclarationWeavingAware;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class Templateweave__InputRoot extends TemplateDeclarationBase implements TemplateDeclarationWeavingAware {
  public Templateweave__InputRoot() {
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c895905f9(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_ReduceInheritors@generator)", "8417539822878724212");
  }
  protected SNode applyPart0(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, "jetbrains.mps.transformation.test.outputLang.structure.OutputNode"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:00000000-0000-4000-0000-011c895905f9/8417539822878724216");
      SNodeAccessUtil.setProperty(tnode1, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, 0x11645b5a797L, "text"), "weaved N1");
    } finally {
    }
    return tnode1;
  }
  protected SNode applyPart1(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, "jetbrains.mps.transformation.test.outputLang.structure.OutputNode"));
    try {
      environment.nodeCopied(context, tnode2, "tpl/r:00000000-0000-4000-0000-011c895905f9/8417539822878724215");
      SNodeAccessUtil.setProperty(tnode2, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, 0x11645b5a797L, "text"), "weaved N2");
    } finally {
    }
    return tnode2;
  }
  public Collection<SNode> apply(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context) throws GenerationException {
    return TemplateUtil.asList(applyPart0(environment, context), applyPart1(environment, context));
  }
  public Collection<SNode> weave(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context, @NotNull SNode outputContextNode) throws GenerationException {
    SNode tnodepart0 = applyPart0(environment, context);
    SNodeReference weaveTf0 = new SNodePointer("r:00000000-0000-4000-0000-011c895905f9(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_ReduceInheritors@generator)", "8417539822878724217");
    NodeWeaveFacility weaveSupport0 = environment.weaveNode(context, weaveTf0);
    weaveSupport0.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, 0x117f047d47fL, "outputChild"), tnodepart0);
    SNode tnodepart1 = applyPart1(environment, context);
    SNodeReference weaveTf1 = new SNodePointer("r:00000000-0000-4000-0000-011c895905f9(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_ReduceInheritors@generator)", "8417539822878724218");
    NodeWeaveFacility weaveSupport1 = environment.weaveNode(context, weaveTf1);
    weaveSupport1.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x1164564a526L, 0x117f047d47fL, "outputChild"), tnodepart1);
    return TemplateUtil.asList(tnodepart0, tnodepart1);
  }
}
