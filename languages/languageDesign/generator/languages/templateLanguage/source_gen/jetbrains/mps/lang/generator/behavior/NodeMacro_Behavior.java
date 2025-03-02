package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class NodeMacro_Behavior {
  public static SNode call_getPreviousNodeMacro_1213877290823(SNode __thisNode__) {
    return NodeMacro_BehaviorDescriptor.getEnclosingMacro_idhEwIoti.invoke(__thisNode__, __thisNode__, SNodeOperations.getParent(__thisNode__));
  }
  public static SNode call_getEnclosingMacro_1213877290834(SNode __thisNode__, SNode currentMacro, SNode currentNode) {
    if (currentNode == null) {
      return null;
    }
    SNode result = null;
    for (SNode currentAttribute : AttributeOperations.getAttributeList(currentNode, new IAttributeDescriptor.AllAttributes())) {
      if (SNodeOperations.isInstanceOf(currentAttribute, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfd47ed6742L, "jetbrains.mps.lang.generator.structure.NodeMacro"))) {
        if (currentAttribute == currentMacro) {
          break;
        }
        result = SNodeOperations.cast(currentAttribute, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfd47ed6742L, "jetbrains.mps.lang.generator.structure.NodeMacro"));
      }
    }
    if (result != null) {
      return result;
    }
    return NodeMacro_BehaviorDescriptor.getEnclosingMacro_idhEwIoti.invoke(__thisNode__, null, SNodeOperations.getParent(currentNode));
  }
  public static SNode call_getInputNodeTypeFromEnvironment_1213877290892(SNode __thisNode__) {
    SNode ancestor = SNodeOperations.getNodeAncestorWhereConceptInList(__thisNode__, new SAbstractConcept[]{MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration"), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, "jetbrains.mps.lang.generator.structure.BaseMappingRule")}, false, false);
    if (SNodeOperations.isInstanceOf(ancestor, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration"))) {
      return SLinkOperations.getTarget(SNodeOperations.cast(ancestor, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, "jetbrains.mps.lang.generator.structure.TemplateDeclaration")), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfe43cb41d0L, 0x1100343ad9eL, "applicableConcept"));
    }
    if (SNodeOperations.isInstanceOf(ancestor, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, "jetbrains.mps.lang.generator.structure.BaseMappingRule"))) {
      return SLinkOperations.getTarget(SNodeOperations.cast(ancestor, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, "jetbrains.mps.lang.generator.structure.BaseMappingRule")), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x10fc0b64647L, 0x10fc0b6e730L, "applicableConcept"));
    }
    SNode rootAnnotation = AttributeOperations.getAttribute(SNodeOperations.getContainingRoot(__thisNode__), new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, "jetbrains.mps.lang.generator.structure.RootTemplateAnnotation")));
    return SLinkOperations.getTarget(SNodeOperations.cast(rootAnnotation, MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, "jetbrains.mps.lang.generator.structure.RootTemplateAnnotation")), MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11017244494L, 0x11017255ccfL, "applicableConcept"));
  }
  public static boolean call_hasMappingLabel_6635545314667344478(SNode __thisNode__) {
    // to avoid coding same code that check non-empty mapping label 
    return (SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfd47ed6742L, 0x1179bf24befL, "mappingLabel")) != null) && isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0xfd47ed6742L, 0x1179bf24befL, "mappingLabel")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
  }
  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
