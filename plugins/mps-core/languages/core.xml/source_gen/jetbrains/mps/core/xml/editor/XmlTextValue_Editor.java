package jetbrains.mps.core.xml.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.core.xml.behavior.XmlValuePart_BehaviorDescriptor;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;

public class XmlTextValue_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_qyzwn3_a(editorContext, node);
  }
  private EditorCell createCollection_qyzwn3_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_qyzwn3_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createAlternation_qyzwn3_a0(editorContext, node));
    if (renderingCondition_qyzwn3_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_qyzwn3_b0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createAlternation_qyzwn3_a0(EditorContext editorContext, SNode node) {
    boolean alternationCondition = true;
    alternationCondition = XmlTextValue_Editor.renderingCondition_qyzwn3_a0a(node, editorContext);
    EditorCell editorCell = null;
    if (alternationCondition) {
      editorCell = this.createProperty_qyzwn3_a0a(editorContext, node);
    } else {
      editorCell = this.createProperty_qyzwn3_a0a_0(editorContext, node);
    }
    return editorCell;
  }
  private static boolean renderingCondition_qyzwn3_a0a(SNode node, EditorContext editorContext) {
    return XmlValuePart_BehaviorDescriptor.onNewLine_id2EZ251g0bS6.invoke(node);
  }
  private EditorCell createProperty_qyzwn3_a0a(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("text");
    provider.setNoTargetText("");
    provider.setAllowsEmptyTarget(true);
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_text");
    Style style = new StyleImpl();
    XmlSS_StyleSheet.apply_xmlAttributeValue(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_ON_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.addKeyMap(new XmlTextValue_text());
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, provider.getCellContext(), new SubstituteInfoPartExt[]{new XmlTextValue_Editor.ReplaceWith_XmlValuePart_cellMenu_qyzwn3_a0a0a()}));
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  public static class ReplaceWith_XmlValuePart_cellMenu_qyzwn3_a0a0a extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_XmlValuePart_cellMenu_qyzwn3_a0a0a() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.core.xml.structure.XmlValuePart";
    }
  }
  private EditorCell createProperty_qyzwn3_a0a_0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("text");
    provider.setNoTargetText("");
    provider.setAllowsEmptyTarget(true);
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_text_1");
    Style style = new StyleImpl();
    XmlSS_StyleSheet.apply_xmlAttributeValue(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.addKeyMap(new XmlTextValue_text());
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, provider.getCellContext(), new SubstituteInfoPartExt[]{new XmlTextValue_Editor.ReplaceWith_XmlValuePart_cellMenu_qyzwn3_a0a0a_0()}));
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  public static class ReplaceWith_XmlValuePart_cellMenu_qyzwn3_a0a0a_0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_XmlValuePart_cellMenu_qyzwn3_a0a0a_0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.core.xml.structure.XmlValuePart";
    }
  }
  private EditorCell createConstant_qyzwn3_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_qyzwn3_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_qyzwn3_a1a(SNode node, EditorContext editorContext) {
    return XmlValuePart_BehaviorDescriptor.hasNewLineAfter_id2EZ251g0bSd.invoke(node);
  }
}
