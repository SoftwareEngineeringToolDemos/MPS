package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.lang.editor.editor.Styles_StyleSheet;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ApplySideTransforms;
import jetbrains.mps.nodeEditor.CellSide;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.editor.runtime.style.FocusPolicy;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;

public class StaticFieldDeclaration_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_t6d1qn_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCollection_t6d1qn_a_0(editorContext, node);
  }
  private EditorCell createCollection_t6d1qn_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_t6d1qn_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_t6d1qn_a0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_t6d1qn_b0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_t6d1qn_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_t6d1qn_d0(editorContext, node));
    if (renderingCondition_t6d1qn_a4a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_t6d1qn_e0(editorContext, node));
    }
    if (renderingCondition_t6d1qn_a5a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_t6d1qn_f0(editorContext, node));
    }
    if (renderingCondition_t6d1qn_a6a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_t6d1qn_g0(editorContext, node));
    }
    editorCell.addEditorCell(this.createRefNode_t6d1qn_h0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_t6d1qn_i0(editorContext, node));
    if (renderingCondition_t6d1qn_a9a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_t6d1qn_j0(editorContext, node));
    }
    editorCell.addEditorCell(this.createConstant_t6d1qn_k0(editorContext, node));
    return editorCell;
  }
  private EditorCell createComponent_t6d1qn_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.baseLanguage.editor._DeprecatedPart");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
  private EditorCell createComponent_t6d1qn_b0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.baseLanguage.editor.HasAnnotation_AnnotationComponent");
    return editorCell;
  }
  private EditorCell createComponent_t6d1qn_c0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.baseLanguage.editor._Component_Visibility");
    return editorCell;
  }
  private EditorCell createConstant_t6d1qn_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "static");
    editorCell.setCellId("staticModifier");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, StaticFieldDeclaration_Editor._StyleParameter_QueryFunction_t6d1qn_a0d0((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    editorCell.getStyle().putAll(style);
    DeleteStaticInField.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new StaticFieldDeclaration_Editor.ApplySideTransforms_null_cellMenu_t6d1qn_a0d0()}));
    return editorCell;
  }
  private static boolean _StyleParameter_QueryFunction_t6d1qn_a0d0(EditorContext editorContext, SNode node) {
    return !(SNodeOperations.isInstanceOf(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")));
  }
  public static class ApplySideTransforms_null_cellMenu_t6d1qn_a0d0 extends AbstractCellMenuPart_ApplySideTransforms {
    public ApplySideTransforms_null_cellMenu_t6d1qn_a0d0() {
      super(CellSide.RIGHT, "");
    }
  }
  private EditorCell createConstant_t6d1qn_e0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "final");
    editorCell.setCellId("finalModifier");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, StaticFieldDeclaration_Editor._StyleParameter_QueryFunction_t6d1qn_a0e0((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    editorCell.getStyle().putAll(style);
    DeleteFinalInStaticField.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new StaticFieldDeclaration_Editor.ApplySideTransforms_null_cellMenu_t6d1qn_a0e0()}));
    return editorCell;
  }
  private static boolean _StyleParameter_QueryFunction_t6d1qn_a0e0(EditorContext editorContext, SNode node) {
    return !(SNodeOperations.isInstanceOf(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")));
  }
  private static boolean renderingCondition_t6d1qn_a4a(SNode node, EditorContext editorContext) {
    return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal"));
  }
  public static class ApplySideTransforms_null_cellMenu_t6d1qn_a0e0 extends AbstractCellMenuPart_ApplySideTransforms {
    public ApplySideTransforms_null_cellMenu_t6d1qn_a0e0() {
      super(CellSide.RIGHT, "");
    }
  }
  private EditorCell createConstant_t6d1qn_f0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "transient");
    editorCell.setCellId("transientModifier");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, true);
    editorCell.getStyle().putAll(style);
    DeleteStaticTransient.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new StaticFieldDeclaration_Editor.ApplySideTransforms_null_cellMenu_t6d1qn_a0f0()}));
    return editorCell;
  }
  private static boolean renderingCondition_t6d1qn_a5a(SNode node, EditorContext editorContext) {
    return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, 0x59c57f2ed491ae1aL, "isTransient"));
  }
  public static class ApplySideTransforms_null_cellMenu_t6d1qn_a0f0 extends AbstractCellMenuPart_ApplySideTransforms {
    public ApplySideTransforms_null_cellMenu_t6d1qn_a0f0() {
      super(CellSide.RIGHT, "");
    }
  }
  private EditorCell createConstant_t6d1qn_g0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "volatile");
    editorCell.setCellId("volatileModifier");
    Style style = new StyleImpl();
    Styles_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.EDITABLE, 0, true);
    editorCell.getStyle().putAll(style);
    DeleteStaticVolatile.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new StaticFieldDeclaration_Editor.ApplySideTransforms_null_cellMenu_t6d1qn_a0g0()}));
    return editorCell;
  }
  private static boolean renderingCondition_t6d1qn_a6a(SNode node, EditorContext editorContext) {
    return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, 0x59c57f2ed491b12fL, "isVolatile"));
  }
  public static class ApplySideTransforms_null_cellMenu_t6d1qn_a0g0 extends AbstractCellMenuPart_ApplySideTransforms {
    public ApplySideTransforms_null_cellMenu_t6d1qn_a0g0() {
      super(CellSide.RIGHT, "");
    }
  }
  private EditorCell createRefNode_t6d1qn_h0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new StaticFieldDeclaration_Editor.typeSingleRoleHandler_t6d1qn_h0(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), editorContext);
    return provider.createCell();
  }
  private class typeSingleRoleHandler_t6d1qn_h0 extends SingleRoleCellProvider {
    public typeSingleRoleHandler_t6d1qn_h0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("type");
      }
      if (renderingCondition_t6d1qn_a7a(myOwnerNode, myEditorContext)) {
        editorCell.getStyle().set(StyleAttributes.FOCUS_POLICY, FocusPolicy.ATTRACTS_FOCUS);
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_type");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no type>";
    }

  }
  private static boolean renderingCondition_t6d1qn_a7a(SNode node, EditorContext editorContext) {
    return SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")) == null;
  }
  private EditorCell createComponent_t6d1qn_i0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.baseLanguage.editor.VariableDeclaration_NameCellComponent");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_StaticField(style, editorCell);
    editorCell.getStyle().putAll(style);
    StaticFieldDeclaration_Name_Actions.setCellActions(editorCell, node, editorContext);
    return editorCell;
  }
  private EditorCell createCollection_t6d1qn_j0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_t6d1qn_j0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_t6d1qn_a9a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_t6d1qn_b9a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_t6d1qn_a9a(SNode node, EditorContext editorContext) {
    return SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null;
  }
  private EditorCell createConstant_t6d1qn_a9a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "=");
    editorCell.setCellId("Constant_t6d1qn_a9a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Operator(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_t6d1qn_b9a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new StaticFieldDeclaration_Editor.initializerSingleRoleHandler_t6d1qn_b9a(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer"), editorContext);
    return provider.createCell();
  }
  private class initializerSingleRoleHandler_t6d1qn_b9a extends SingleRoleCellProvider {
    public initializerSingleRoleHandler_t6d1qn_b9a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("initializer");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.AUTO_DELETABLE, 0, false);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_initializer");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no initializer>";
    }

  }
  private EditorCell createConstant_t6d1qn_k0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ";");
    editorCell.setCellId("Constant_t6d1qn_k0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Semicolon(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    DeleteClassifierMember.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_t6d1qn_a_0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_t6d1qn_a_0");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_t6d1qn_a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_t6d1qn_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_t6d1qn_c0(editorContext, node));
    editorCell.addEditorCell(this.createRefNodeList_t6d1qn_d0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_t6d1qn_e0_0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_t6d1qn_f0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_t6d1qn_g0_0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_t6d1qn_h0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_t6d1qn_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "isFinal");
    editorCell.setCellId("Constant_t6d1qn_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_t6d1qn_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("isFinal");
    provider.setNoTargetText("<no isFinal>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_isFinal");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_t6d1qn_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "annotations:");
    editorCell.setCellId("Constant_t6d1qn_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNodeList_t6d1qn_d0(EditorContext editorContext, SNode node) {
    AbstractCellListHandler handler = new StaticFieldDeclaration_Editor.annotationListHandler_t6d1qn_d0(node, "annotation", editorContext);
    EditorCell_Collection editorCell = handler.createCells(editorContext, new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_annotation");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setRole(handler.getElementRole());
    return editorCell;
  }
  private static class annotationListHandler_t6d1qn_d0 extends RefNodeListHandler {
    public annotationListHandler_t6d1qn_d0(SNode ownerNode, String childRole, EditorContext context) {
      super(ownerNode, childRole, context, false);
    }
    public SNode createNodeToInsert(EditorContext editorContext) {
      SNode listOwner = super.getOwner();
      return NodeFactoryManager.createNode(listOwner, editorContext, super.getElementRole());
    }
    public EditorCell createNodeCell(EditorContext editorContext, SNode elementNode) {
      EditorCell elementCell = super.createNodeCell(editorContext, elementNode);
      this.installElementCellActions(this.getOwner(), elementNode, elementCell, editorContext);
      return elementCell;
    }
    public EditorCell createEmptyCell(EditorContext editorContext) {
      EditorCell emptyCell = null;
      emptyCell = super.createEmptyCell(editorContext);
      this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
      return emptyCell;
    }
    public void installElementCellActions(SNode listOwner, SNode elementNode, EditorCell elementCell, EditorContext editorContext) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.setSubstituteInfo(new DefaultChildSubstituteInfo(listOwner, elementNode, super.getLinkDeclaration(), editorContext));
        }
      }
    }
  }
  private EditorCell createConstant_t6d1qn_e0_0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "volatile:");
    editorCell.setCellId("Constant_t6d1qn_e0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_t6d1qn_f0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("isVolatile");
    provider.setNoTargetText("<no isVolatile>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_isVolatile");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_t6d1qn_g0_0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "transient:");
    editorCell.setCellId("Constant_t6d1qn_g0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_t6d1qn_h0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("isTransient");
    provider.setNoTargetText("<no isTransient>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_isTransient");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
}
