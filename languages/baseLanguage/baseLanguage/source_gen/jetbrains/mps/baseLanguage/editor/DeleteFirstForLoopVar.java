package jetbrains.mps.baseLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class DeleteFirstForLoopVar {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new DeleteFirstForLoopVar.DeleteFirstForLoopVar_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new DeleteFirstForLoopVar.DeleteFirstForLoopVar_BACKSPACE(node));
  }
  public static class DeleteFirstForLoopVar_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public DeleteFirstForLoopVar_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      if (ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, 0xe5318742b9d1411L, "additionalVar"))).isEmpty()) {
        SNodeOperations.deleteNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a697996feL, 0x10a6979f36bL, "variable")));
      } else {
        SNode var = ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, 0xe5318742b9d1411L, "additionalVar"))).removeElementAt(0);
        SNodeOperations.replaceWithAnother(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a697996feL, 0x10a6979f36bL, "variable")), var);
      }
    }
  }
  public static class DeleteFirstForLoopVar_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public DeleteFirstForLoopVar_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      if (ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, 0xe5318742b9d1411L, "additionalVar"))).isEmpty()) {
        SNodeOperations.deleteNode(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a697996feL, 0x10a6979f36bL, "variable")));
      } else {
        SNode var = ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a698082feL, 0xe5318742b9d1411L, "additionalVar"))).removeElementAt(0);
        SNodeOperations.replaceWithAnother(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10a697996feL, 0x10a6979f36bL, "variable")), var);
      }
    }
  }
}
