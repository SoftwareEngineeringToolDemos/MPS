package jetbrains.mps.traceInfo.testWeavingGenerated.data.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.generator.template.WeavingMappingRuleContext;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateModule;

@Generated
public class QueriesGenerated {
  public static Object propertyMacro_GetPropertyValue_6186432342008490331(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008526320(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008522555(final PropertyMacroContext _context) {
    return _context.createUniqueName(SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(_context.getNode()), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), null);
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008533408(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008533417(final PropertyMacroContext _context) {
    return _context.createUniqueName(SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(_context.getNode()), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), null);
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008533449(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008533458(final PropertyMacroContext _context) {
    return _context.createUniqueName(SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(_context.getNode()), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), null);
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008533482(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_6186432342008533491(final PropertyMacroContext _context) {
    return _context.createUniqueName(SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(_context.getNode()), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), null);
  }
  public static Iterable<SNode> sourceNodesQuery_6186432342008490342(final SourceSubstituteMacroNodesContext _context) {
    return Sequence.<SNode>singleton(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_6186432342008522532(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xce517356fc9a4e78L, 0x86066e7a36ff0671L, 0x55da9f701c64caccL, 0x55da9f701c64f39fL, "weaveEach"));
  }
  public static Iterable<SNode> sourceNodesQuery_6186432342008533377(final SourceSubstituteMacroNodesContext _context) {
    return Sequence.<SNode>singleton(_context.getNode());
  }
  public static Iterable<SNode> sourceNodesQuery_6186432342008533362(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xce517356fc9a4e78L, 0x86066e7a36ff0671L, 0x55da9f701c64caccL, 0x55da9f701c68116fL, "weaveEachMany"));
  }
  public static SNode weaving_MappingRule_ContextNodeQuery_6186432342008490339(final WeavingMappingRuleContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SNodeOperations.getContainingRoot(_context.getNode()), MetaAdapterFactory.getConcept(0xce517356fc9a4e78L, 0x86066e7a36ff0671L, 0x55da9f701c64caccL, "jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.RootConcept")), "map_RootConcept");
  }
  public static SNode weaving_MappingRule_ContextNodeQuery_6186432342008522529(final WeavingMappingRuleContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "map_RootConcept");
  }
  public static SNode weaving_MappingRule_ContextNodeQuery_6186432342008533384(final WeavingMappingRuleContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.cast(SNodeOperations.getContainingRoot(_context.getNode()), MetaAdapterFactory.getConcept(0xce517356fc9a4e78L, 0x86066e7a36ff0671L, 0x55da9f701c64caccL, "jetbrains.mps.traceInfo.testWeavingGenerated.data.structure.RootConcept")), "map_RootConcept");
  }
  public static SNode weaving_MappingRule_ContextNodeQuery_6186432342008533368(final WeavingMappingRuleContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "map_RootConcept");
  }
  public static TemplateModel getDescriptor(TemplateModule module) {
    return new TemplateModelImpl(module);
  }
}
