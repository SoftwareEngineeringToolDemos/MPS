package jetbrains.mps.lang.smodel.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;

public class ModelReferenceDelete {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new ModelReferenceDelete.ModelReferenceDelete_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new ModelReferenceDelete.ModelReferenceDelete_BACKSPACE(node));
  }
  public static class ModelReferenceDelete_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public ModelReferenceDelete_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7c3f2da20e92b62L, 0x7c3f2da20e92b66L, "name"), null);
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7c3f2da20e92b62L, 0x7c3f2da20e93b6fL, "stereotype"), null);
      SelectionUtil.selectCell(editorContext, node, "NoFQName");
    }
  }
  public static class ModelReferenceDelete_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public ModelReferenceDelete_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7c3f2da20e92b62L, 0x7c3f2da20e92b66L, "name"), null);
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x7c3f2da20e92b62L, 0x7c3f2da20e93b6fL, "stereotype"), null);
      SelectionUtil.selectCell(editorContext, node, "NoFQName");
    }
  }
}
