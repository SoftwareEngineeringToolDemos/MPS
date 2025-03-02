package jetbrains.mps.make.script.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.BaseMappingRuleContext;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.baseLanguage.behavior.IWillBeClassifier_BehaviorDescriptor;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.ClassConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

@Generated
public class QueriesGenerated {
  public static boolean baseMappingRule_Condition_4629164904928210736(final BaseMappingRuleContext _context) {
    return TypeChecker.getInstance().getSubtypingManager().isSubtype(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972068L, 0x20c069f80a972071L, "resource"))), _quotation_createNode_x583g4_b0a0a0());
  }
  public static boolean baseMappingRule_Condition_1977954644795436751(final BaseMappingRuleContext _context) {
    return SEnumOperations.getEnumMemberValue(SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)", "Result"), "success")).equals(SPropertyOperations.getString_def(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x6237d5bb8b2a942dL, 0x6237d5bb8b2a942eL, "result"), "SUCCESS"));
  }
  public static boolean baseMappingRule_Condition_1977954644795436813(final BaseMappingRuleContext _context) {
    return (SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false) != null);
  }
  public static boolean baseMappingRule_Condition_4629164904928188304(final BaseMappingRuleContext _context) {
    return SEnumOperations.getEnumMemberValue(SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)", "Result"), "success")).equals(SPropertyOperations.getString_def(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x6237d5bb8b2a942dL, 0x6237d5bb8b2a942eL, "result"), "SUCCESS"));
  }
  public static boolean baseMappingRule_Condition_1977954644795436728(final BaseMappingRuleContext _context) {
    return (SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x1b731b4510dcbee4L, "jetbrains.mps.make.script.structure.ConfigDefinition"), false, false) != null);
  }
  public static boolean baseMappingRule_Condition_4902420589245648932(final BaseMappingRuleContext _context) {
    return (SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a947282L, 0x2dead7037d3bef52L, "classifierType")) != null);
  }
  public static boolean baseMappingRule_Condition_1906791586424022719(final BaseMappingRuleContext _context) {
    return (SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6984L, 0x1a7648d86181bc00L, "comment")) != null);
  }
  public static boolean baseMappingRule_Condition_3668957831723397506(final BaseMappingRuleContext _context) {
    return SEnumOperations.getEnumMemberValue(SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)", "Feedback"), "info")).equals(SPropertyOperations.getString_def(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1b82eL, "feedback"), "INFO"));
  }
  public static boolean baseMappingRule_Condition_3668957831723418661(final BaseMappingRuleContext _context) {
    return SEnumOperations.getEnumMemberValue(SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)", "Feedback"), "warning")).equals(SPropertyOperations.getString_def(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1b82eL, "feedback"), "INFO"));
  }
  public static boolean baseMappingRule_Condition_3668957831723418687(final BaseMappingRuleContext _context) {
    return SEnumOperations.getEnumMemberValue(SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)", "Feedback"), "error")).equals(SPropertyOperations.getString_def(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1b82eL, "feedback"), "INFO"));
  }
  public static boolean baseMappingRule_Condition_6320856973181134900(final BaseMappingRuleContext _context) {
    return SEnumOperations.getEnumMemberValue(SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:308041c6-80bc-4e26-b4b1-473fd45c9339(jetbrains.mps.make.script.structure)", "Feedback"), "message")).equals(SPropertyOperations.getString_def(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1b82eL, "feedback"), "INFO"));
  }
  public static Object propertyMacro_GetPropertyValue_3297237684108617667(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6982L, 0x97a1ce11865e911L, "workName"));
  }
  public static Object propertyMacro_GetPropertyValue_1906791586424054318(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6984L, 0x97a1ce11862bf5aL, "workStatement")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6982L, 0x97a1ce11865e911L, "workName"));
  }
  public static Object propertyMacro_GetPropertyValue_1906791586424011833(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6984L, 0x97a1ce11862bf5aL, "workStatement")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6982L, 0x97a1ce11865e911L, "workName"));
  }
  public static Object propertyMacro_GetPropertyValue_3297237684108617635(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6987L, 0x97a1ce11862c6ddL, "workStatement")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6982L, 0x97a1ce11865e911L, "workName"));
  }
  public static Object propertyMacro_GetPropertyValue_7877690107352956507(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49ec9L, 0x70276038dc49ecbL, "presentation")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49ecaL, 0x70276038dc5a5feL, "text"));
  }
  public static Object propertyMacro_GetPropertyValue_7877690107352956468(final PropertyMacroContext _context) {
    return _context.createUniqueName(SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), SNodeOperations.getParent(_context.getNode()));
  }
  public static Object propertyMacro_GetPropertyValue_7877690107352906539(final PropertyMacroContext _context) {
    return IWillBeClassifier_BehaviorDescriptor.classifierName_id3ZSHU3pg$b_.invoke(_context.getNode());
  }
  public static Object propertyMacro_GetPropertyValue_8486446835277382806(final PropertyMacroContext _context) {
    return IWillBeClassifier_BehaviorDescriptor.classifierName_id3ZSHU3pg$b_.invoke(_context.getNode());
  }
  public static Object propertyMacro_GetPropertyValue_2551169102353009752(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_1048225073237450825(final PropertyMacroContext _context) {
    return SPropertyOperations.getInteger(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, 0x3318e2a89ff0296cL, "defaultOption"));
  }
  public static Object propertyMacro_GetPropertyValue_3958190066764257030(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x3354875940086e32L, "title")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49ecaL, 0x70276038dc5a5feL, "text"));
  }
  public static Object propertyMacro_GetPropertyValue_2551169102353050546(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc589f7L, "presentation")), MetaAdapterFactory.getProperty(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49ecaL, 0x70276038dc5a5feL, "text"));
  }
  public static Object referenceMacro_GetReferent_4629164904928210751(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_output");
  }
  public static Object referenceMacro_GetReferent_4629164904928210765(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_output");
  }
  public static Object referenceMacro_GetReferent_4629164904928210800(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_output");
  }
  public static Object referenceMacro_GetReferent_4629164904928210814(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_output");
  }
  public static Object referenceMacro_GetReferent_1977954644795436776(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_output");
  }
  public static Object referenceMacro_GetReferent_1977954644795436801(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_output");
  }
  public static Object referenceMacro_GetReferent_8853708281362198780(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SNodeOperations.getParent(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7b2L, 0x70276038dc4d7b3L, "option"))), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_8853708281362199681(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7b2L, 0x70276038dc4d7b3L, "option")), "Option_enum_const");
  }
  public static Object referenceMacro_GetReferent_1977954644795311577(final ReferenceMacroContext _context) {
    return Sequence.fromIterable(ClassConcept_BehaviorDescriptor.constructors_id4_LVZ3pCvsd.invoke(_context.getOutputNodeByInputNodeAndMappingLabel(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x1b731b4510dbc59fL, 0x1b731b4510dbc5a2L, "query")), "QueryDefinition_class"))).first();
  }
  public static Object referenceMacro_GetReferent_1977954644795311593(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x1b731b4510dbc59fL, 0x1b731b4510dbc5a2L, "query")), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_3668957831723418734(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_jobMonitor");
  }
  public static Object referenceMacro_GetReferent_3297237684108623912(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_jobMonitor");
  }
  public static Object referenceMacro_GetReferent_1906791586424054337(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_jobMonitor");
  }
  public static Object referenceMacro_GetReferent_1906791586424011852(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_jobMonitor");
  }
  public static Object referenceMacro_GetReferent_3297237684108624012(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_jobMonitor");
  }
  public static Object referenceMacro_GetReferent_3297237684108627713(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_jobMonitor");
  }
  public static Object referenceMacro_GetReferent_4902420589290124768(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.getNodeAncestor(_context.getNode(), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972dabL, "jetbrains.mps.make.script.structure.JobDefinition"), false, false), "JobDefinition_input");
  }
  public static Object referenceMacro_GetReferent_8170824575195233650(final ReferenceMacroContext _context) {
    final SNode ipacls = SLinkOperations.getTarget(_quotation_createNode_x583g4_a0a0a04(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
    final SNode jobcls = SLinkOperations.getTarget(_quotation_createNode_x583g4_a0a1a04(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
    final SNode cfgcls = SLinkOperations.getTarget(_quotation_createNode_x583g4_a0a2a04(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
    SNode imd = ListSequence.fromList(SNodeOperations.getNodeAncestors(_context.getNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"), false)).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode imd) {
        return Classifier_BehaviorDescriptor.isDescendant_id6dL7A1DpKo1.invoke(SLinkOperations.getTarget(SNodeOperations.as(SNodeOperations.getParent(imd), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x1107e0fd2a0L, "classifier")), jobcls) || Classifier_BehaviorDescriptor.isDescendant_id6dL7A1DpKo1.invoke(SLinkOperations.getTarget(SNodeOperations.as(SNodeOperations.getParent(imd), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x1107e0fd2a0L, "classifier")), cfgcls);
      }
    });
    return (imd != null ? ListSequence.fromList(SLinkOperations.getChildren(imd, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode p) {
        return ipacls == SLinkOperations.getTarget(SNodeOperations.as(SLinkOperations.getTarget(p, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
      }
    }) : null);
  }
  public static Object referenceMacro_GetReferent_8486446835277407047(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_2551169102353050563(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_2551169102353058061(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_3294363946766303652(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_3868725017587293269(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_1048225073237482565(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static Object referenceMacro_GetReferent_1048225073237482478(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption")), "ExpectedOption_enum");
  }
  public static boolean ifMacro_Condition_1977954644795311606(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x1b731b4510dbc59fL, 0x1b731b4510dbc5a2L, "query")), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_8486446835277407067(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_1048225073237482414(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_2551169102353050574(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_2551169102353058074(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_3294363946766303667(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_3868725017587293280(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_1048225073237482550(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static boolean ifMacro_Condition_1048225073237482489(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc49b2bL, 0x70276038dc4d7c4L, "expected")), MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, "jetbrains.mps.make.script.structure.ExpectedOption"));
  }
  public static SNode sourceNodeQuery_4629164904928210894(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972068L, 0x20c069f80a972071L, "resource"));
  }
  public static SNode sourceNodeQuery_4629164904928210828(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a972068L, 0x20c069f80a972071L, "resource"));
  }
  public static SNode sourceNodeQuery_4902420589245672839(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a947282L, 0x2dead7037d3bef52L, "classifierType"));
  }
  public static SNode sourceNodeQuery_3297237684108617681(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6982L, 0x29929a95c9f45e6L, "expected"));
  }
  public static SNode sourceNodeQuery_3297237684108617693(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6982L, 0x29929a95c9f45e7L, "ofTotal"));
  }
  public static SNode sourceNodeQuery_1906791586424054328(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6984L, 0x29929a95c9f34d4L, "amount"));
  }
  public static SNode sourceNodeQuery_1906791586424054369(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6984L, 0x1a7648d86181bc00L, "comment"));
  }
  public static SNode sourceNodeQuery_1906791586424011843(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x29929a95c9e6984L, 0x29929a95c9f34d4L, "amount"));
  }
  public static SNode sourceNodeQuery_4824283731826016788(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1c3e8L, "message"));
  }
  public static SNode sourceNodeQuery_4824283731826016797(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1c3e8L, "message"));
  }
  public static SNode sourceNodeQuery_4824283731826016806(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1c3e8L, "message"));
  }
  public static SNode sourceNodeQuery_6320856973181136203(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x32eac1b57fc1b828L, 0x32eac1b57fc1c3e8L, "message"));
  }
  public static Iterable<SNode> sourceNodesQuery_7877690107352923852(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x70276038dc4d7bbL, 0x70276038dc4d7c5L, "option"));
  }
  public static Iterable<SNode> sourceNodesQuery_5537134633111724471(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L, 0x108bbd29b4aL, "body")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"));
  }
  private static SNode _quotation_createNode_x583g4_b0a0a0() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x95f8a3e6f9944ca0L, 0xa65e763c9bae2d3bL, 0x20c069f80a947282L, "jetbrains.mps.make.script.structure.ResourceType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a0a04() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("r:4ea5a78b-cb8a-4831-b227-f7860a22491d(jetbrains.mps.make.resources)"), facade.createNodeId("3353120829256410483")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a1a04() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)"), facade.createNodeId("3353120829256410614")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_a0a2a04() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("r:9e5578e0-37f0-4c9b-a301-771bcb453678(jetbrains.mps.make.script)"), facade.createNodeId("5537134633111714176")));
    return quotedNode_1;
  }
}
