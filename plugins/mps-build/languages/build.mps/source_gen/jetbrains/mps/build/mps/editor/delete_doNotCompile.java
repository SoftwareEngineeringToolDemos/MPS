package jetbrains.mps.build.mps.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class delete_doNotCompile {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new delete_doNotCompile.delete_doNotCompile_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new delete_doNotCompile.delete_doNotCompile_BACKSPACE(node));
  }
  public static class delete_doNotCompile_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public delete_doNotCompile_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x14d3fb6fb84ac614L, "doNotCompile"), "" + (false));
    }
  }
  public static class delete_doNotCompile_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public delete_doNotCompile_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x14d3fb6fb84ac614L, "doNotCompile"), "" + (false));
    }
  }
}
