package jetbrains.mps.lang.dataFlow.analyzers.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.CreateRootRuleContext;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.template.DropRootRuleContext;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.smodel.Language;
import java.util.Set;
import jetbrains.mps.project.dependency.modules.LanguageDependenciesManager;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.generator.template.BaseMappingRuleContext;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.dataFlow.analyzers.behavior.Analyzer_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.ClassConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.baseLanguage.behavior.Type_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.internal.collections.runtime.ISelector;

@Generated
public class QueriesGenerated {
  public static boolean createRootRule_Condition_1832482093173674464(final CreateRootRuleContext _context) {
    return LanguageAspect.DATA_FLOW.is(_context.getOriginalInputModel()) && ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"))).isNotEmpty();
  }
  public static boolean dropRootRule_Condition_8337746954995362584(final DropRootRuleContext _context) {
    SModule module = _context.getOriginalInputModel().getModule();
    if (!(module instanceof Language)) {
      return true;
    }
    Language ruleLanguage = ((Language) module);
    Set<Language> extendedLanguages = LanguageDependenciesManager.getAllExtendedLanguages(ruleLanguage);
    SNode analyzer = SLinkOperations.getTarget(SNodeOperations.cast(_context.getNode(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule")), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x3952cf7bd76e6440L, "analyzer"));
    SModule analyzerModule = SNodeOperations.getModel(analyzer).getModule();
    if (!(analyzerModule instanceof Language)) {
      return true;
    }
    Language analyzerLanguage = ((Language) analyzerModule);
    if (analyzerLanguage != ruleLanguage && !(SetSequence.fromSet(extendedLanguages).contains(analyzerLanguage))) {
      return true;
    }
    return false;
  }
  public static boolean baseMappingRule_Condition_4943044633102120866(final BaseMappingRuleContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, "jetbrains.mps.lang.dataFlow.analyzers.structure.ConceptCondition"));
  }
  public static boolean baseMappingRule_Condition_7986066585199098223(final BaseMappingRuleContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x2e25b6b7919e0b63L, "jetbrains.mps.lang.dataFlow.analyzers.structure.PatternCondition"));
  }
  public static boolean baseMappingRule_Condition_4943044633102130531(final BaseMappingRuleContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x2e25b6b7919e0b63L, "jetbrains.mps.lang.dataFlow.analyzers.structure.PatternCondition"));
  }
  public static boolean baseMappingRule_Condition_4943044633102130536(final BaseMappingRuleContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, "jetbrains.mps.lang.dataFlow.analyzers.structure.ConceptCondition"));
  }
  public static Object propertyMacro_GetPropertyValue_9177062368042364010(final PropertyMacroContext _context) {
    return Analyzer_BehaviorDescriptor.getAnalyzerRunnerName_id9V7Nft_oXD.invoke(_context.getNode());
  }
  public static Object propertyMacro_GetPropertyValue_9177062368042363996(final PropertyMacroContext _context) {
    return Analyzer_BehaviorDescriptor.getAnalyzerName_id9V7Nft_oXY.invoke(_context.getNode());
  }
  public static Object propertyMacro_GetPropertyValue_6319461651763908498(final PropertyMacroContext _context) {
    return Analyzer_BehaviorDescriptor.getAnalyzerRunnerFqName_id9V7Nft_vlj.invoke(_context.getNode()) + "." + Analyzer_BehaviorDescriptor.getAnalyzerName_id9V7Nft_oXY.invoke(_context.getNode());
  }
  public static Object propertyMacro_GetPropertyValue_2156297836851612469(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_8656002014371075963(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "Instruction";
  }
  public static Object propertyMacro_GetPropertyValue_8656002014371078210(final PropertyMacroContext _context) {
    return "my" + SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6776100086565973154(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_7985661997283748696(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_8656002014371078289(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6776100086565965466(final PropertyMacroContext _context) {
    return "get" + SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_7962250936070468062(final PropertyMacroContext _context) {
    return "patternVar_" + SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(_context.getOriginalCopiedInputNode(_context.getNode())), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, "jetbrains.mps.lang.pattern.structure.ActionAsPattern")), MetaAdapterFactory.getProperty(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4793L, 0x108a9cb4794L, "varName"));
  }
  public static Object propertyMacro_GetPropertyValue_1815980786158776239(final PropertyMacroContext _context) {
    return _context.getOriginalCopiedInputNode(_context.getNode()).getReference().toString();
  }
  public static Object propertyMacro_GetPropertyValue_1420906503568751825(final PropertyMacroContext _context) {
    return "patternVar_" + SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(_context.getOriginalCopiedInputNode(_context.getNode())), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, "jetbrains.mps.lang.pattern.structure.ActionAsPattern")), MetaAdapterFactory.getProperty(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4793L, 0x108a9cb4794L, "varName"));
  }
  public static Object propertyMacro_GetPropertyValue_178770917832661922(final PropertyMacroContext _context) {
    return "jetbrains.mps.analyzers.runtime.framework.CustomAnalyzerRunner";
  }
  public static Object propertyMacro_GetPropertyValue_5195954419991159423(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_802679297401943030(final PropertyMacroContext _context) {
    return _context.getOriginalCopiedInputNode(_context.getNode()).getReference().toString();
  }
  public static Object referenceMacro_GetReferent_8656002014371081884(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "param");
  }
  public static Object referenceMacro_GetReferent_7985661997283748687(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "param");
  }
  public static Object referenceMacro_GetReferent_7801926404027365343(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "param");
  }
  public static Object referenceMacro_GetReferent_6776100086565956027(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "param");
  }
  public static Object referenceMacro_GetReferent_6776100086565965496(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "field");
  }
  public static Object referenceMacro_GetReferent_1420906503568700591(final ReferenceMacroContext _context) {
    return Sequence.fromIterable(ClassConcept_BehaviorDescriptor.constructors_id4_LVZ3pCvsd.invoke(_context.getOutputNodeProxy(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x3a887e9da0b4fd5bL, "instructionRef")), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b4cedcL, 0x3a887e9da0b4cee5L, "instruction")), "exportedInstructionClass"))).first();
  }
  public static Object referenceMacro_GetReferent_1417601170171230765(final ReferenceMacroContext _context) {
    return Sequence.fromIterable(ClassConcept_BehaviorDescriptor.constructors_id4_LVZ3pCvsd.invoke(_context.getOutputNodeProxy(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x151c4f99e489a16L, 0x151c4f99e489a17L, "analyzer")), "exportedAnalyzerClass"))).first();
  }
  public static Object referenceMacro_GetReferent_7985661997283753105(final ReferenceMacroContext _context) {
    return _context.getOutputNodeProxy(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x6ed2c546d46ea462L, 0x6ed2c546d46ea463L, "instruction")), "exportedInstructionClass");
  }
  public static Object referenceMacro_GetReferent_1417601170172142333(final ReferenceMacroContext _context) {
    return SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, "jetbrains.mps.lang.dataFlow.analyzers.structure.ConceptCondition")), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, 0x449938e788ee2395L, "concept"));
  }
  public static Object referenceMacro_GetReferent_7962250936070467999(final ReferenceMacroContext _context) {
    return Sequence.fromIterable(ClassConcept_BehaviorDescriptor.constructors_id4_LVZ3pCvsd.invoke(_context.getOutputNodeProxy(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x3a887e9da0b4fd5bL, "instructionRef")), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b4cedcL, 0x3a887e9da0b4cee5L, "instruction")), "exportedInstructionClass"))).first();
  }
  public static Object referenceMacro_GetReferent_4943044633102141062(final ReferenceMacroContext _context) {
    SNode rule = SNodeOperations.cast(SNodeOperations.getParent(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, 0x449938e788f30111L, "applicableNode"))), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"));
    SNode method = _context.getOutputNodeByInputNodeAndMappingLabel(rule, "perform");
    return ListSequence.fromList(ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).toListSequence()).getElement(1);
  }
  public static Object referenceMacro_GetReferent_4444769741952754168(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "funcParam");
  }
  public static Object referenceMacro_GetReferent_6319461651763986958(final ReferenceMacroContext _context) {
    return Sequence.fromIterable(Classifier_BehaviorDescriptor.nestedClassifiers_id4_LVZ3pBjGQ.invoke(_context.getOutputNodeProxy(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x3952cf7bd76e6440L, "analyzer")), "exportedAnalyzerClass"))).first();
  }
  public static Object referenceMacro_GetReferent_1832482093174062796(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "ruleConstructor");
  }
  public static boolean ifMacro_Condition_8656002014371080657(final IfMacroContext _context) {
    return true;
  }
  public static boolean ifMacro_Condition_3712979728669095238(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, "jetbrains.mps.lang.pattern.structure.ActionAsPattern"), false, false), MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x7cc3195fc1d254beL, "position")), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x16e4c142caf2bd3aL, "jetbrains.mps.lang.pattern.structure.InsertBeforePosition"));
  }
  public static boolean ifMacro_Condition_3712979728669095359(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x5594ff2e14ba2cL, "position")), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x16e4c142caf2bd3aL, "jetbrains.mps.lang.pattern.structure.InsertBeforePosition"));
  }
  public static boolean ifMacro_Condition_7962250936070467960(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x5594ff2e14ba2cL, "position")), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x16e4c142caf2bd3aL, "jetbrains.mps.lang.pattern.structure.InsertBeforePosition"));
  }
  public static SNode sourceNodeQuery_7685333756920161551(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_7685333756920161578(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_430844094082167075(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x41dd50940e1dd4ddL, "initialFunction")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body"));
  }
  public static SNode sourceNodeQuery_430844094082167065(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_9177062368042363930(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_430844094082167086(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x41dd50940e1dcaccL, "mergeFunction")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body"));
  }
  public static SNode sourceNodeQuery_430844094082167097(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_9177062368042363961(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_430844094082167117(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x41dd50940e1dd4deL, "funFunction")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body"));
  }
  public static SNode sourceNodeQuery_430844094082167107(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType")));
  }
  public static SNode sourceNodeQuery_9177062368042363988(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c2fb98L, "direction"));
  }
  public static SNode sourceNodeQuery_8656002014371045594(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x2e25b6b7919e0b63L, "jetbrains.mps.lang.dataFlow.analyzers.structure.PatternCondition")), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x2e25b6b7919e0b63L, 0x2e25b6b7919e1042L, "pattern"));
  }
  public static SNode sourceNodeQuery_5837229161628332393(final SourceSubstituteMacroNodeContext _context) {
    return SNodeOperations.asNode(SNodeOperations.getConcept(SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x2e25b6b7919e0b63L, "jetbrains.mps.lang.dataFlow.analyzers.structure.PatternCondition")), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x2e25b6b7919e0b63L, 0x2e25b6b7919e1042L, "pattern")), MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4791L, 0x108a9cb4792L, "patternNode"))));
  }
  public static SNode sourceNodeQuery_8656002014371078227(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd583aa0L, 0x5faaa6bbd583aa2L, "type"));
  }
  public static SNode sourceNodeQuery_8656002014371078273(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd583aa0L, 0x5faaa6bbd583aa2L, "type"));
  }
  public static SNode sourceNodeQuery_6776100086565965446(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd583aa0L, 0x5faaa6bbd583aa2L, "type"));
  }
  public static SNode sourceNodeQuery_1417601170171185136(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x151c4f99e489a16L, 0x27b1f33dd958ca0L, "nodeToCheck"));
  }
  public static SNode sourceNodeQuery_7985661997283753112(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x6ed2c546d46ea462L, 0x6ed2c546d46efef1L, "left"));
  }
  public static SNode sourceNodeQuery_4943044633102120858(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x449938e788ee338aL, "actions"));
  }
  public static SNode sourceNodeQuery_7962250936070467861(final SourceSubstituteMacroNodeContext _context) {
    if (SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x47cfbf00eaa5802L, "target")) != null) {
      return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x47cfbf00eaa5802L, "target"));
    }
    SNode reference = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, "jetbrains.mps.lang.dataFlow.analyzers.structure.ApplicableNodeReference")));
    SLinkOperations.setTarget(reference, MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, 0x449938e788f30111L, "applicableNode"), SNodeOperations.cast(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, "jetbrains.mps.lang.dataFlow.analyzers.structure.ConceptCondition")));
    return reference;
  }
  public static SNode sourceNodeQuery_7962250936070467925(final SourceSubstituteMacroNodeContext _context) {
    if (SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x47cfbf00eaa5802L, "target")) != null) {
      return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x47cfbf00eaa5802L, "target"));
    }
    SNode reference = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, "jetbrains.mps.lang.dataFlow.analyzers.structure.ApplicableNodeReference")));
    SLinkOperations.setTarget(reference, MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, 0x449938e788f30111L, "applicableNode"), SNodeOperations.cast(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, "jetbrains.mps.lang.dataFlow.analyzers.structure.ConceptCondition")));
    return reference;
  }
  public static SNode sourceNodeQuery_7962250936070468016(final SourceSubstituteMacroNodeContext _context) {
    SNode reference = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, "jetbrains.mps.lang.dataFlow.analyzers.structure.ApplicableNodeReference")));
    SLinkOperations.setTarget(reference, MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788f30110L, 0x449938e788f30111L, "applicableNode"), SNodeOperations.cast(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, 0x2e25b6b7919dd956L, "condition")), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x449938e788e9b9deL, "jetbrains.mps.lang.dataFlow.analyzers.structure.ConceptCondition")));
    return reference;
  }
  public static Iterable<SNode> sourceNodesQuery_8656002014371078217(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_8656002014371081874(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_7985661997283748672(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_7801926404027365331(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_6776100086565956005(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_8656002014371078262(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_6776100086565965431(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f4678aL, 0x2e25b6b7919ac144L, "parameter"));
  }
  public static Iterable<SNode> sourceNodesQuery_1420906503568700577(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x3a887e9da0b4fd5bL, "instructionRef")), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b4cedcL, 0x3a887e9da0b4ceddL, "argument"));
  }
  public static Iterable<SNode> sourceNodesQuery_7962250936070467985(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b3e894L, 0x3a887e9da0b4fd5bL, "instructionRef")), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b4cedcL, 0x3a887e9da0b4ceddL, "argument"));
  }
  public static Iterable<SNode> sourceNodesQuery_1417545764634664046(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SModelOperations.roots(_context.getInputModel(), MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5faaa6bbd57b6c8L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Rule"))).distinct().sort(new ISelector<SNode, String>() {
      public String select(SNode it) {
        return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      }
    }, true);
  }
}
