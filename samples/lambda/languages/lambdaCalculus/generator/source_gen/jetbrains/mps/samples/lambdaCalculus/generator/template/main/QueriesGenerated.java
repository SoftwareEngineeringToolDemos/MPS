package jetbrains.mps.samples.lambdaCalculus.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.BaseMappingRuleContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.samples.lambdaCalculus.behavior.LambdaExpression_BehaviorDescriptor;
import jetbrains.mps.samples.lambdaCalculus.behavior.LambdaApplication_BehaviorDescriptor;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.samples.lambdaCalculus.behavior.LambdaAbstraction_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

@Generated
public class QueriesGenerated {
  public static boolean baseMappingRule_Condition_391739495267627132(final BaseMappingRuleContext _context) {
    return (SNodeOperations.getParent(_context.getNode()) == null);
  }
  public static boolean baseMappingRule_Condition_3851847705188473146(final BaseMappingRuleContext _context) {
    return LambdaExpression_BehaviorDescriptor.hasParameterRefs_id6qD99pUaonP.invoke(_context.getNode());
  }
  public static boolean baseMappingRule_Condition_3851847705188496572(final BaseMappingRuleContext _context) {
    return !(LambdaExpression_BehaviorDescriptor.hasParameterRefs_id6qD99pUaonP.invoke(_context.getNode()));
  }
  public static boolean baseMappingRule_Condition_5066394162984555366(final BaseMappingRuleContext _context) {
    return (LambdaApplication_BehaviorDescriptor.isFullApplication_id18EhrW3IFXQ.invoke(_context.getNode()));
  }
  public static boolean baseMappingRule_Condition_1823182225212631178(final BaseMappingRuleContext _context) {
    return !(LambdaApplication_BehaviorDescriptor.isFullApplication_id18EhrW3IFXQ.invoke(_context.getNode()));
  }
  public static boolean baseMappingRule_Condition_1308935328408191088(final BaseMappingRuleContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterApplication_id18EhrW3IG0h.invoke(_context.getNode()) == null || !(LambdaApplication_BehaviorDescriptor.isFullApplication_id18EhrW3IFXQ.invoke(LambdaExpression_BehaviorDescriptor.getOuterApplication_id18EhrW3IG0h.invoke(_context.getNode())));
  }
  public static boolean baseMappingRule_Condition_1745225562807772209(final BaseMappingRuleContext _context) {
    return SNodeOperations.isInstanceOf(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x48db75d5dc496b08L, 0x48db75d5dc497af4L, "variable"))), MetaAdapterFactory.getConcept(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x3ee0e3dd7c1afae8L, "jetbrains.mps.samples.lambdaCalculus.structure.FunctionType"));
  }
  public static boolean baseMappingRule_Condition_1745225562807772232(final BaseMappingRuleContext _context) {
    return !(SNodeOperations.isInstanceOf(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x48db75d5dc496b08L, 0x48db75d5dc497af4L, "variable"))), MetaAdapterFactory.getConcept(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x3ee0e3dd7c1afae8L, "jetbrains.mps.samples.lambdaCalculus.structure.FunctionType")));
  }
  public static Object propertyMacro_GetPropertyValue_391739495267627152(final PropertyMacroContext _context) {
    return SPropertyOperations.getInteger(_context.getNode(), MetaAdapterFactory.getProperty(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x37d11ba7d7ee2dd5L, 0x37d11ba7d7ee2dd6L, "value"));
  }
  public static Object propertyMacro_GetPropertyValue_1888188276221892626(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x37d11ba7d7ee2dc8L, 0x37d11ba7d7ee2dc9L, "value"));
  }
  public static Object propertyMacro_GetPropertyValue_7391442976966625678(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6139750523307920886(final PropertyMacroContext _context) {
    return ("let_" + _context.getNode().getNodeId().toString());
  }
  public static Object propertyMacro_GetPropertyValue_466391367986582294(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x448ba254edbfc79fL, 0x74076973acb5af30L, "variable")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6139750523307920922(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_2985097847315884645(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_2985097847315908604(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_2985097847315916692(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_2167053794906731150(final PropertyMacroContext _context) {
    return ListSequence.fromList(LambdaAbstraction_BehaviorDescriptor.getAllVariables_id4pfsEnSNEj7.invoke(_context.getNode())).count();
  }
  public static Object propertyMacro_GetPropertyValue_2985097847315916808(final PropertyMacroContext _context) {
    return BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept")));
  }
  public static Object propertyMacro_GetPropertyValue_2167053794906731221(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_199058371937604760(final PropertyMacroContext _context) {
    return BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept")));
  }
  public static Object propertyMacro_GetPropertyValue_2167053794906731228(final PropertyMacroContext _context) {
    return "Function_" + _context.getNode().getNodeId().toString();
  }
  public static Object propertyMacro_GetPropertyValue_2985097847315884744(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_816130369292752594(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_816130369292752615(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_816130369292752659(final PropertyMacroContext _context) {
    return "lambdaAbstr_" + SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x37d11ba7d7ee2dddL, 0x37d11ba7d7ee2de0L, "function")).getNodeId().toString();
  }
  public static Object propertyMacro_GetPropertyValue_2985097847315884705(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object referenceMacro_GetReferent_2584857295430340569(final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x48db75d5dc496b08L, 0x48db75d5dc497af4L, "variable")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object referenceMacro_GetReferent_2584857295430340546(final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x48db75d5dc496b08L, 0x48db75d5dc497af4L, "variable")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object referenceMacro_GetReferent_2584857295430340722(final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x48db75d5dc496b08L, 0x48db75d5dc497af4L, "variable")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object referenceMacro_GetReferent_5142899583592522507(final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x48db75d5dc496b08L, 0x48db75d5dc497af4L, "variable")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object referenceMacro_GetReferent_2167053794906731184(final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static SNode sourceNodeQuery_391739495267927128(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095dL, "right"));
  }
  public static SNode sourceNodeQuery_391739495267927117(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095cL, "left"));
  }
  public static SNode sourceNodeQuery_1752280634427337342(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095dL, "right"));
  }
  public static SNode sourceNodeQuery_1752280634427358713(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095cL, "left"));
  }
  public static SNode sourceNodeQuery_1752280634427358729(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095dL, "right"));
  }
  public static SNode sourceNodeQuery_1752280634427365227(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095cL, "left"));
  }
  public static SNode sourceNodeQuery_1752280634427365219(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095dL, "right"));
  }
  public static SNode sourceNodeQuery_1752280634427365235(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095cL, "left"));
  }
  public static SNode sourceNodeQuery_14027134441518111(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x3735fdad52687b59L, 0x3735fdad52687b5aL, "expression"));
  }
  public static SNode sourceNodeQuery_3777111214477850524(final SourceSubstituteMacroNodeContext _context) {
    return ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x15b75b54f176d1a3L, 0x15b75b54f176d1a4L, "expressions"))).last();
  }
  public static SNode sourceNodeQuery_1888188276221892656(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095dL, "right"));
  }
  public static SNode sourceNodeQuery_1888188276221892667(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x1ad829a6925a095bL, 0x1ad829a6925a095cL, "left"));
  }
  public static SNode sourceNodeQuery_391739495267627127(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x37d11ba7d7fc0389L, 0x37d11ba7d7fc038aL, "expression"));
  }
  public static SNode sourceNodeQuery_199058371937626084(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x37d11ba7d7ee2dddL, 0x37d11ba7d7ee2de0L, "function"));
  }
  public static SNode sourceNodeQuery_199058371937625985(final SourceSubstituteMacroNodeContext _context) {
    SNode type = TypeChecker.getInstance().getTypeOf(_context.getNode());
    if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x113f84956fbL, "jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable"))) {
      return _quotation_createNode_x583g4_a0a1a64();
    } else {
      return type;
    }
  }
  public static SNode sourceNodeQuery_6139750523307920879(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x448ba254edbfc79fL, 0x448ba254edbfc7a1L, "expression"));
  }
  public static SNode sourceNodeQuery_6139750523307920899(final SourceSubstituteMacroNodeContext _context) {
    return TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x448ba254edbfc79fL, 0x448ba254edbfc7a0L, "value")));
  }
  public static SNode sourceNodeQuery_6139750523307920915(final SourceSubstituteMacroNodeContext _context) {
    return TypeChecker.getInstance().getTypeOf(_context.getNode());
  }
  public static SNode sourceNodeQuery_7347119454575546785(final SourceSubstituteMacroNodeContext _context) {
    SNode type = TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x448ba254edbfc79fL, 0x448ba254edbfc7a1L, "expression")));
    if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x113f84956fbL, "jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable"))) {
      return _quotation_createNode_x583g4_a0a1a05();
    } else {
      return type;
    }
  }
  public static SNode sourceNodeQuery_6139750523307920943(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x448ba254edbfc79fL, 0x448ba254edbfc7a0L, "value"));
  }
  public static SNode sourceNodeQuery_2985097847315908623(final SourceSubstituteMacroNodeContext _context) {
    SNode type = TypeChecker.getInstance().getTypeOf(_context.getNode());
    if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x113f84956fbL, "jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable"))) {
      return _quotation_createNode_x583g4_a0a1a25();
    } else {
      return type;
    }
  }
  public static SNode sourceNodeQuery_2985097847315908664(final SourceSubstituteMacroNodeContext _context) {
    SNode type = TypeChecker.getInstance().getTypeOf(_context.getNode());
    if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x113f84956fbL, "jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable"))) {
      return _quotation_createNode_x583g4_a0a1a35();
    } else {
      return type;
    }
  }
  public static SNode sourceNodeQuery_2985097847315916634(final SourceSubstituteMacroNodeContext _context) {
    SNode type = TypeChecker.getInstance().getTypeOf(_context.getNode());
    if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x113f84956fbL, "jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable"))) {
      return _quotation_createNode_x583g4_a0a1a45();
    } else {
      return type;
    }
  }
  public static SNode sourceNodeQuery_2985097847315916658(final SourceSubstituteMacroNodeContext _context) {
    SNode type = TypeChecker.getInstance().getTypeOf(_context.getNode());
    if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x113f84956fbL, "jetbrains.mps.lang.typesystem.structure.RuntimeTypeVariable"))) {
      return _quotation_createNode_x583g4_a0a1a55();
    } else {
      return type;
    }
  }
  public static SNode sourceNodeQuery_199058371937620120(final SourceSubstituteMacroNodeContext _context) {
    return LambdaAbstraction_BehaviorDescriptor.getInnerBody_id4pfsEnSN_z2.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_2167053794906731202(final SourceSubstituteMacroNodeContext _context) {
    return TypeChecker.getInstance().getTypeOf(_context.getNode());
  }
  public static SNode sourceNodeQuery_199058371937626325(final SourceSubstituteMacroNodeContext _context) {
    return TypeChecker.getInstance().getTypeOf(LambdaAbstraction_BehaviorDescriptor.getInnerBody_id4pfsEnSN_z2.invoke(LambdaApplication_BehaviorDescriptor.getLambdaAbstraction_id4khEFTQ$3U7.invoke(_context.getNode())));
  }
  public static SNode sourceNodeQuery_816130369292752578(final SourceSubstituteMacroNodeContext _context) {
    return TypeChecker.getInstance().getTypeOf(_context.getNode());
  }
  public static SNode sourceNodeQuery_816130369292752608(final SourceSubstituteMacroNodeContext _context) {
    return TypeChecker.getInstance().getTypeOf(_context.getNode());
  }
  public static SNode sourceNodeQuery_816130369292752650(final SourceSubstituteMacroNodeContext _context) {
    return LambdaAbstraction_BehaviorDescriptor.getInnerBody_id4pfsEnSN_z2.invoke(LambdaApplication_BehaviorDescriptor.getLambdaAbstraction_id4khEFTQ$3U7.invoke(_context.getNode()));
  }
  public static Iterable<SNode> sourceNodesQuery_199058371937626104(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x37d11ba7d7ee2dddL, 0x37d11ba7d7ee2de1L, "argument"));
  }
  public static Iterable<SNode> sourceNodesQuery_6139750523307920929(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2985097847315884660(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2985097847315908583(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2985097847315916699(final SourceSubstituteMacroNodesContext _context) {
    return LambdaAbstraction_BehaviorDescriptor.getAllVariables_id4pfsEnSNEj7.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2167053794906731193(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2167053794906731209(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2985097847315884751(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_816130369292752585(final SourceSubstituteMacroNodesContext _context) {
    return LambdaAbstraction_BehaviorDescriptor.getAllVariables_id4pfsEnSNEj7.invoke(LambdaApplication_BehaviorDescriptor.getLambdaAbstraction_id4khEFTQ$3U7.invoke(_context.getNode()));
  }
  public static Iterable<SNode> sourceNodesQuery_816130369292752622(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_816130369292752673(final SourceSubstituteMacroNodesContext _context) {
    return LambdaApplication_BehaviorDescriptor.getArguments_id4pfsEnSNDeV.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_2985097847315884712(final SourceSubstituteMacroNodesContext _context) {
    return LambdaExpression_BehaviorDescriptor.getOuterVariables_id4zrttnsimEk.invoke(_context.getNode());
  }
  private static SNode _quotation_createNode_x583g4_a0a1a64() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a1a05() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a1a25() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a1a35() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a1a45() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a1a55() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
}
