package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.baseLanguage.behavior.StatementList_BehaviorDescriptor;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.MPSFonts;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;

public class StatementList_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_u338ov_a(editorContext, node);
  }
  private EditorCell createCollection_u338ov_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_u338ov_a");
    editorCell.setBig(true);
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE, 0, StatementList_Editor._StyleParameter_QueryFunction_u338ov_a1a((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    editorCell.getStyle().putAll(style);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createRefNodeList_u338ov_a0(editorContext, node));
    return editorCell;
  }
  private static boolean _StyleParameter_QueryFunction_u338ov_a1a(EditorContext editorContext, SNode node) {
    return !(StatementList_BehaviorDescriptor.isCompact_idi0zxBt8.invoke(node));
  }
  private EditorCell createRefNodeList_u338ov_a0(EditorContext editorContext, SNode node) {
    AbstractCellListHandler handler = new StatementList_Editor.statementListHandler_u338ov_a0(node, "statement", editorContext);
    EditorCell_Collection editorCell = handler.createCells(editorContext, new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_statement");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE, 0, StatementList_Editor._StyleParameter_QueryFunction_u338ov_a1a0((editorCell == null ? null : editorCell.getContext()), (editorCell == null ? null : editorCell.getSNode())));
    editorCell.getStyle().putAll(style);
    editorCell.setRole(handler.getElementRole());
    return editorCell;
  }
  private static class statementListHandler_u338ov_a0 extends RefNodeListHandler {
    public statementListHandler_u338ov_a0(SNode ownerNode, String childRole, EditorContext context) {
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
      emptyCell = this.createEmptyCell_internal(editorContext, this.getOwner());
      this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
      return emptyCell;
    }
    public EditorCell createEmptyCell_internal(EditorContext editorContext, SNode node) {
      return this.createConstant_u338ov_a0a(editorContext, node);
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
    private EditorCell createConstant_u338ov_a0a(EditorContext editorContext, SNode node) {
      EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
      editorCell.setCellId("Constant_u338ov_a0a");
      Style style = new StyleImpl();
      style.set(StyleAttributes.SELECTABLE, 0, true);
      style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.ITALIC);
      style.set(StyleAttributes.EDITABLE, 0, true);
      style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.darkGray));
      editorCell.getStyle().putAll(style);
      editorCell.setDefaultText("<no statements>");
      return editorCell;
    }
  }
  private static boolean _StyleParameter_QueryFunction_u338ov_a1a0(EditorContext editorContext, SNode node) {
    return !(StatementList_BehaviorDescriptor.isCompact_idi0zxBt8.invoke(node));
  }
}
