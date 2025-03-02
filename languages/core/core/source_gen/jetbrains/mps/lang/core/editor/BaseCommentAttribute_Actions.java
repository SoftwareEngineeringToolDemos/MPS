package jetbrains.mps.lang.core.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.editor.runtime.impl.cellActions.Cell_Action_Uncomment;

public class BaseCommentAttribute_Actions {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new BaseCommentAttribute_Actions.BaseCommentAttribute_Actions_DELETE(node));
    editorCell.setAction(CellActionType.COMMENT, new BaseCommentAttribute_Actions.BaseCommentAttribute_Actions_COMMENT(node));
    editorCell.setAction(CellActionType.BACKSPACE, new BaseCommentAttribute_Actions.BaseCommentAttribute_Actions_BACKSPACE(node));
  }
  public static class BaseCommentAttribute_Actions_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public BaseCommentAttribute_Actions_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNodeOperations.deleteNode(node);
    }
  }
  public static class BaseCommentAttribute_Actions_COMMENT extends AbstractCellAction {
    /*package*/ SNode myNode;
    public BaseCommentAttribute_Actions_COMMENT(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      new Cell_Action_Uncomment(node).execute(editorContext);
    }
  }
  public static class BaseCommentAttribute_Actions_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public BaseCommentAttribute_Actions_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNodeOperations.deleteNode(node);
    }
  }
}
