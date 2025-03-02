package jetbrains.mps.baseLanguage.regexp.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.openapi.editor.cells.CellTraversalUtil;
import jetbrains.mps.openapi.editor.cells.CellConditions;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class InlineRegexpExpression_removeS {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new InlineRegexpExpression_removeS.InlineRegexpExpression_removeS_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new InlineRegexpExpression_removeS.InlineRegexpExpression_removeS_BACKSPACE(node));
  }
  public static class InlineRegexpExpression_removeS_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public InlineRegexpExpression_removeS_DELETE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      EditorCell current = editorContext.getSelectedCell();
      EditorCell toSelect = CellTraversalUtil.getPrevLeaf(current, CellConditions.SELECTABLE);
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x1117648961dL, 0x1119cedcf38L, "dotAll"), "" + (false));
      editorContext.getEditorComponent().changeSelection(toSelect);
    }
  }
  public static class InlineRegexpExpression_removeS_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public InlineRegexpExpression_removeS_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      EditorCell current = editorContext.getSelectedCell();
      EditorCell toSelect = CellTraversalUtil.getPrevLeaf(current, CellConditions.SELECTABLE);
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x1117648961dL, 0x1119cedcf38L, "dotAll"), "" + (false));
      editorContext.getEditorComponent().changeSelection(toSelect);
    }
  }
}
