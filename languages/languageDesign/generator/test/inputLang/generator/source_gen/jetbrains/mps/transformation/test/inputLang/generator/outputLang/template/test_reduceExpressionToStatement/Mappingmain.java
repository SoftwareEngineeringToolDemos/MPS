package jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceExpressionToStatement;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.MapConfigBase;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateReductionRule;
import jetbrains.mps.generator.runtime.TemplateRootMappingRule;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.runtime.ReductionRuleBase;
import jetbrains.mps.generator.runtime.TemplateRuleWithCondition;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.generator.template.ReductionRuleQueryContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.generator.runtime.MapRootRuleBase;
import jetbrains.mps.generator.template.MapRootRuleContext;

@Generated
public class Mappingmain extends MapConfigBase implements TemplateMappingConfiguration {
  private final Collection<TemplateReductionRule> rules;
  private final Collection<TemplateRootMappingRule> rootRules;
  public Mappingmain(@NotNull TemplateModel model) {
    super(new SNodePointer("r:00000000-0000-4000-0000-011c895905f8(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceExpressionToStatement@generator)", "1209150022679"), "main", model, false);
    rules = TemplateUtil.<TemplateReductionRule>asCollection(new Mappingmain.ReductionRule0());
    rootRules = TemplateUtil.<TemplateRootMappingRule>asCollection(new Mappingmain.RootMappingRule0());
  }
  @Override
  public Collection<TemplateReductionRule> getReductionRules() {
    return rules;
  }
  @Override
  public Collection<TemplateRootMappingRule> getRootRules() {
    return rootRules;
  }
  public final class ReductionRule0 extends ReductionRuleBase implements TemplateRuleWithCondition {
    public ReductionRule0() {
      super(new SNodePointer("r:00000000-0000-4000-0000-011c895905f8(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceExpressionToStatement@generator)", "1209150610748"), MetaAdapterFactory.getConcept(0xab0ae915e3b54f35L, 0xb55ac655d649a03cL, 0x11986c01fc7L, "jetbrains.mps.transformation.test.inputLang.structure.ExpressionToReduceToStatement"), false);
    }
    @Override
    public boolean isApplicable(@NotNull TemplateContext context) throws GenerationException {
      return QueriesGenerated.baseMappingRule_Condition_1209150617830(new ReductionRuleQueryContext(context, getRuleNode()));
    }
    @Override
    public Collection<SNode> apply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
      try {
        environment.nodeCopied(context, tnode1, "tpl/r:00000000-0000-4000-0000-011c895905f8/1209150725887");
        {
          final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral"));
          try {
            environment.nodeCopied(context, tnode2, "tpl/r:00000000-0000-4000-0000-011c895905f8/1209150737045");
            SNodeAccessUtil.setProperty(tnode2, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), "my expression");
          } finally {
          }
          if (tnode2 != null) {
            tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode2);
          }
          // TODO validate child 
        }
      } finally {
      }
      return TemplateUtil.singletonList(tnode1);
    }
  }
  public class RootMappingRule0 extends MapRootRuleBase implements TemplateRootMappingRule {
    public RootMappingRule0() {
      super(new SNodePointer("r:00000000-0000-4000-0000-011c895905f8(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_reduceExpressionToStatement@generator)", "1209150078117"), MetaAdapterFactory.getConcept(0xab0ae915e3b54f35L, 0xb55ac655d649a03cL, 0x11986ebf992L, "jetbrains.mps.transformation.test.inputLang.structure.InputRootWithStatementList"), false, false);
    }
    @Override
    public boolean isApplicable(@NotNull TemplateContext context) throws GenerationException {
      return QueriesGenerated.baseMappingRule_Condition_1209150502311(new MapRootRuleContext(context, getRuleNode()));
    }
    @Override
    public Collection<SNode> apply(@NotNull final TemplateContext context) throws GenerationException {
      final TemplateExecutionEnvironment environment = context.getEnvironment();
      Collection<SNode> result = new Templateout__class().apply(environment, context);
      return result;
    }
  }
}
