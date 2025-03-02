package jetbrains.mps.baseLanguage.builders.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.baseLanguage.builders.behavior.Builder_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.editor.runtime.style.StyleAttributes;

public class BuilderStatement_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_idzzzw_a(editorContext, node);
  }
  private EditorCell createCollection_idzzzw_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_idzzzw_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createRefNode_idzzzw_a0(editorContext, node));
    if (renderingCondition_idzzzw_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_idzzzw_b0(editorContext, node));
    }
    if (renderingCondition_idzzzw_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_idzzzw_c0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createRefNode_idzzzw_a0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new BuilderStatement_Editor.builderSingleRoleHandler_idzzzw_a0(node, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6c473c8a081aa9e4L, 0x429426276e2ee2f8L, "builder"), editorContext);
    return provider.createCell();
  }
  private class builderSingleRoleHandler_idzzzw_a0 extends SingleRoleCellProvider {
    public builderSingleRoleHandler_idzzzw_a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("builder");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_builder");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no builder>";
    }

  }
  private EditorCell createConstant_idzzzw_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ";");
    editorCell.setCellId("Constant_idzzzw_b0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Semicolon(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_idzzzw_a1a(SNode node, EditorContext editorContext) {
    return Builder_BehaviorDescriptor.isLeaf_id67LR$5LQnln.invoke(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6c473c8a081aa9e4L, 0x429426276e2ee2f8L, "builder")));
  }
  private EditorCell createCollection_idzzzw_c0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_idzzzw_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_idzzzw_a2a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_idzzzw_b2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_idzzzw_c2a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_idzzzw_a2a(SNode node, EditorContext editorContext) {
    return !(Builder_BehaviorDescriptor.isLeaf_id67LR$5LQnln.invoke(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6c473c8a081aa9e4L, 0x429426276e2ee2f8L, "builder"))));
  }
  private EditorCell createConstant_idzzzw_a2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "{");
    editorCell.setCellId("Constant_idzzzw_a2a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_LeftParen(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_idzzzw_b2a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new BuilderStatement_Editor.bodySingleRoleHandler_idzzzw_b2a(node, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6c473c8a081aa9e4L, 0x429426276e25129cL, "body"), editorContext);
    return provider.createCell();
  }
  private class bodySingleRoleHandler_idzzzw_b2a extends SingleRoleCellProvider {
    public bodySingleRoleHandler_idzzzw_b2a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("body");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_body");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no body>";
    }

  }
  private EditorCell createConstant_idzzzw_c2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "}");
    editorCell.setCellId("Constant_idzzzw_c2a");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_RightParen(style, editorCell);
    style.set(StyleAttributes.INDENT_LAYOUT_ON_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
