package jetbrains.mps.build.workflow.util;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.build.workflow.behavior.BwfPathDeclaration_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.core.xml.behavior.XmlValuePart_BehaviorDescriptor;

/**
 * Process only default xml elements (XmlElement) and attributes.
 */
public class XmlSignature {
  private final StringBuilder sb = new StringBuilder();
  private boolean hasErrors;
  public XmlSignature() {
    hasErrors = false;
  }
  public XmlSignature add(SNode element) {
    if (element == null || hasErrors) {
      return this;
    }

    if (SNodeOperations.isInstanceOf(element, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, "jetbrains.mps.core.xml.structure.XmlElement"))) {
      addElement(SNodeOperations.cast(element, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, "jetbrains.mps.core.xml.structure.XmlElement")));
    } else if (SNodeOperations.isInstanceOf(element, MetaAdapterFactory.getConcept(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x5c3f3e2c1cef4c1fL, "jetbrains.mps.build.workflow.structure.BwfPathReference"))) {
      sb.append("<pathref ");
      sb.append(BwfPathDeclaration_BehaviorDescriptor.getPathId_id5KZfyKsWnkn.invoke(SLinkOperations.getTarget(SNodeOperations.cast(element, MetaAdapterFactory.getConcept(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x5c3f3e2c1cef4c1fL, "jetbrains.mps.build.workflow.structure.BwfPathReference")), MetaAdapterFactory.getReferenceLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x5c3f3e2c1cef4c1fL, 0x5c3f3e2c1cef4c20L, "target"))));
      sb.append("/>");
    } else {
      hasErrors = true;
    }
    return this;
  }
  private XmlSignature addElement(SNode element) {
    sb.append("<");
    sb.append(SPropertyOperations.getString(element, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, 0x5c842a42c54b10b6L, "tagName")));
    if (ListSequence.fromList(SLinkOperations.getChildren(element, MetaAdapterFactory.getContainmentLink(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, 0x5c842a42c54b10b5L, "attributes"))).isNotEmpty()) {
      for (SNode attr : SLinkOperations.getChildren(element, MetaAdapterFactory.getContainmentLink(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, 0x5c842a42c54b10b5L, "attributes"))) {
        if (SNodeOperations.isInstanceOf(attr, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b8df3L, "jetbrains.mps.core.xml.structure.XmlAttribute"))) {
          sb.append(" ");
          addAttribute(SNodeOperations.cast(attr, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b8df3L, "jetbrains.mps.core.xml.structure.XmlAttribute")));
        } else {
          hasErrors = true;
        }
      }
    }
    if (ListSequence.fromList(SLinkOperations.getChildren(element, MetaAdapterFactory.getContainmentLink(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, 0x16838b3fce9a4922L, "content"))).isEmpty()) {
      sb.append("/>");
      return this;
    }
    sb.append(">");
    for (SNode content : SLinkOperations.getChildren(element, MetaAdapterFactory.getContainmentLink(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, 0x16838b3fce9a4922L, "content"))) {
      if (SNodeOperations.isInstanceOf(content, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c549486dL, "jetbrains.mps.core.xml.structure.XmlBaseElement"))) {
        add(SNodeOperations.cast(content, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, "jetbrains.mps.core.xml.structure.XmlElement")));
      } else if (SNodeOperations.isInstanceOf(content, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L, "jetbrains.mps.core.xml.structure.XmlText")) && isEmptyString(SPropertyOperations.getString(SNodeOperations.cast(content, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L, "jetbrains.mps.core.xml.structure.XmlText")), MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x16838b3fce9aa513L, 0x16838b3fce9aaa68L, "value")))) {
        // ignore 
      } else {
        hasErrors = true;
      }
    }
    sb.append("</");
    sb.append(SPropertyOperations.getString(element, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b10b2L, 0x5c842a42c54b10b6L, "tagName")));
    sb.append(">");
    return this;
  }
  private void addAttribute(SNode attr) {
    sb.append(SPropertyOperations.getString(attr, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b8df3L, 0x5c842a42c54b8df6L, "attrName")));
    sb.append("=");
    sb.append('"');
    for (SNode val : SLinkOperations.getChildren(attr, MetaAdapterFactory.getContainmentLink(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54b8df3L, 0x5c842a42c54cfd1eL, "value"))) {
      if (SNodeOperations.isInstanceOf(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x2abf08504ffed7feL, "jetbrains.mps.core.xml.structure.XmlCharRefValue"))) {
        sb.append("&#");
        sb.append(SPropertyOperations.getString(SNodeOperations.cast(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x2abf08504ffed7feL, "jetbrains.mps.core.xml.structure.XmlCharRefValue")), MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x2abf08504ffed7feL, 0x2abf08504ffed806L, "charCode")));
        sb.append(";");
      } else if (SNodeOperations.isInstanceOf(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd21L, "jetbrains.mps.core.xml.structure.XmlEntityRefValue"))) {
        sb.append("&");
        sb.append(SPropertyOperations.getString(SNodeOperations.cast(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd21L, "jetbrains.mps.core.xml.structure.XmlEntityRefValue")), MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd21L, 0x5c842a42c54d0258L, "entityName")));
        sb.append(";");
      } else if (SNodeOperations.isInstanceOf(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x2abf085050020e3cL, "jetbrains.mps.core.xml.structure.XmlNoSpaceValue"))) {
        // ignore 
      } else if (SNodeOperations.isInstanceOf(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd1fL, "jetbrains.mps.core.xml.structure.XmlTextValue"))) {
        SNode tv = SNodeOperations.cast(val, MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd1fL, "jetbrains.mps.core.xml.structure.XmlTextValue"));
        if (XmlValuePart_BehaviorDescriptor.onNewLine_id2EZ251g0bS6.invoke(tv)) {
          sb.append("\n");
        }
        sb.append(SPropertyOperations.getString(tv, MetaAdapterFactory.getProperty(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd1fL, 0x5c842a42c54cfd20L, "text")));
        if (XmlValuePart_BehaviorDescriptor.hasNewLineAfter_id2EZ251g0bSd.invoke(tv)) {
          if (SNodeOperations.isInstanceOf(SNodeOperations.getNextSibling(tv), MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd1cL, "jetbrains.mps.core.xml.structure.XmlValuePart")) && XmlValuePart_BehaviorDescriptor.onNewLine_id2EZ251g0bS6.invoke(SNodeOperations.cast(SNodeOperations.getNextSibling(tv), MetaAdapterFactory.getConcept(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x5c842a42c54cfd1cL, "jetbrains.mps.core.xml.structure.XmlValuePart")))) {
            return;
          }
          sb.append("\n");
        }
      } else {
        hasErrors = true;
      }
    }
    sb.append('"');
  }
  public String getResult() {
    return sb.toString();
  }
  public boolean hasErrors() {
    return hasErrors;
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
