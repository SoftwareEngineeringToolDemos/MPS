package jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateSwitchBase;
import jetbrains.mps.generator.runtime.TemplateSwitchMapping;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import java.util.Collections;
import java.util.Collection;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.runtime.TemplateUtil;

@Generated
public class Switchbetter__switch2 extends TemplateSwitchBase implements TemplateSwitchMapping {
  public Switchbetter__switch2() {
  }
  public SNodeReference getSwitchNode() {
    return new SNodePointer("r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany@generator)", "8371596541809075900");
  }
  public SNodeReference getModifiesSwitch() {
    return new SNodePointer("r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceOneToMany@generator)", "8371596541809066874");
  }
  public Iterable<TemplateReductionRule> getReductionRules() {
    return Collections.emptySet();
  }
  public Collection<SNode> applyDefault(final TemplateExecutionEnvironment environment, SNodeReference templateSwitch, String mappingLabel, final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940cd6167L, "jetbrains.mps.baseLanguage.structure.NullLiteral"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:eca8e1c7-93fd-4ddf-9db6-91f9c2320691/8371596541809075903");
    } finally {
    }
    return TemplateUtil.singletonList(tnode1);
  }
  public void processNull(TemplateExecutionEnvironment environment, SNodeReference templateSwitch, TemplateContext context) {
  }
}
