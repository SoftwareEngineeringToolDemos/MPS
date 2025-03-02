package org.jetbrains.mps.samples.ParallelFor.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.attribute.AttributeKind;

public class ThreadSafe_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_ly4xkq_a(editorContext, node);
  }
  private EditorCell createCollection_ly4xkq_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_ly4xkq_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_ly4xkq_a0(editorContext, node));
    editorCell.addEditorCell(this.createAttributedNodeCell_ly4xkq_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_ly4xkq_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "@thread safe");
    editorCell.setCellId("Constant_ly4xkq_a0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Comment(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createAttributedNodeCell_ly4xkq_b0(EditorContext editorContext, SNode node) {
    EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
    EditorCell editorCell = manager.getCurrentAttributedCellWithRole(AttributeKind.Node.class, node);
    return editorCell;
  }
}
