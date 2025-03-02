package jetbrains.mps.samples.formulaLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.cells.AbstractCellAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class Operation_leftOperand_Actions {
  public static void setCellActions(EditorCell editorCell, SNode node, EditorContext context) {
    editorCell.setAction(CellActionType.DELETE, new Operation_leftOperand_Actions.Operation_leftOperand_Actions_DELETE(node));
    editorCell.setAction(CellActionType.BACKSPACE, new Operation_leftOperand_Actions.Operation_leftOperand_Actions_BACKSPACE(node));
  }
  public static class Operation_leftOperand_Actions_DELETE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public Operation_leftOperand_Actions_DELETE(SNode node) {
      this.myNode = node;
    }
    public String getDescriptionText() {
      return "replace operation with right operand";
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNodeOperations.replaceWithAnother(node, SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8620dbL, 0x102db87696bL, "rightOperand")));
    }
  }
  public static class Operation_leftOperand_Actions_BACKSPACE extends AbstractCellAction {
    /*package*/ SNode myNode;
    public Operation_leftOperand_Actions_BACKSPACE(SNode node) {
      this.myNode = node;
    }
    public String getDescriptionText() {
      return "replace operation with right operand";
    }
    public void execute(EditorContext editorContext) {
      this.execute_internal(editorContext, this.myNode);
    }
    public void execute_internal(EditorContext editorContext, SNode node) {
      SNodeOperations.replaceWithAnother(node, SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8620dbL, 0x102db87696bL, "rightOperand")));
    }
  }
}
