package jetbrains.mps.baseLanguage.collections.trove.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.baseLanguage.behavior.Type_BehaviorDescriptor;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

@Generated
public class QueriesGenerated {
  public static Object propertyMacro_GetPropertyValue_5499565529811346601(final PropertyMacroContext _context) {
    String p = BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(_context.getNode());
    return "T" + Character.toUpperCase(p.charAt(0)) + StringUtils.substring(p, 1) + "ArrayListDecorator";
  }
  public static Object propertyMacro_GetPropertyValue_5499565529811713156(final PropertyMacroContext _context) {
    return "T" + SPropertyOperations.getString(SLinkOperations.getTarget(SNodeOperations.as(Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "ListIterator";
  }
  public static Object referenceMacro_GetReferent_5499565529811371608(final ReferenceMacroContext _context) {
    String p = BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(_context.getNode());
    return "[gnu.trove]T" + Character.toUpperCase(p.charAt(0)) + StringUtils.substring(p, 1) + "ArrayList";
  }
  public static Object referenceMacro_GetReferent_5499565529811382100(final ReferenceMacroContext _context) {
    String p = BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(_context.getNode());
    return "[gnu.trove]T" + Character.toUpperCase(p.charAt(0)) + StringUtils.substring(p, 1) + "ArrayList";
  }
  public static Object referenceMacro_GetReferent_5499565529811760474(final ReferenceMacroContext _context) {
    String p = BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(_context.getNode());
    return "T" + Character.toUpperCase(p.charAt(0)) + StringUtils.substring(p, 1) + "ArrayListDecorator";
  }
  public static Object referenceMacro_GetReferent_5499565529811760433(final ReferenceMacroContext _context) {
    String p = BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(_context.getNode());
    return "T" + Character.toUpperCase(p.charAt(0)) + StringUtils.substring(p, 1) + "ArrayListDecorator";
  }
  public static Object referenceMacro_GetReferent_5499565529811346969(final ReferenceMacroContext _context) {
    return SNodeOperations.as(SLinkOperations.getTarget(SNodeOperations.cast(Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"));
  }
  public static Object referenceMacro_GetReferent_5499565529811382399(final ReferenceMacroContext _context) {
    return BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(_context.getNode()) + "Value";
  }
  public static SNode sourceNodeQuery_5499565529811356535(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356518(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356589(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356603(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356612(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356623(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356632(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356641(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356649(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356665(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356657(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356673(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356681(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811382416(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811382365(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811356693(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_4737294400113015493(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811382391(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811713176(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811713189(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811713202(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811713225(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static SNode sourceNodeQuery_5499565529811713240(final SourceSubstituteMacroNodeContext _context) {
    return Type_BehaviorDescriptor.getBoxedType_idhEwIzNC.invoke(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_5499565529811382514(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromListAndArray(new ArrayList<SNode>(), _quotation_createNode_x583g4_a0a0a13(), _quotation_createNode_x583g4_b0a0a13(), _quotation_createNode_x583g4_c0a0a13(), _quotation_createNode_x583g4_d0a0a13(), _quotation_createNode_x583g4_e0a0a13(), _quotation_createNode_x583g4_f0a0a13());
  }
  private static SNode _quotation_createNode_x583g4_a0a0a13() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d5b617L, "jetbrains.mps.baseLanguage.structure.ByteType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_b0a0a13() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d451a6L, "jetbrains.mps.baseLanguage.structure.DoubleType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_c0a0a13() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d327fdL, "jetbrains.mps.baseLanguage.structure.FloatType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_d0a0a13() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d22479L, "jetbrains.mps.baseLanguage.structure.IntegerType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_e0a0a13() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7f3L, "jetbrains.mps.baseLanguage.structure.LongType"), null, null, false);
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_x583g4_f0a0a13() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940cc380dL, "jetbrains.mps.baseLanguage.structure.ShortType"), null, null, false);
    return quotedNode_1;
  }
}
