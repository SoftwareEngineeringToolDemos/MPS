package jetbrains.mps.samples.formulaLanguage.editor;

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
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;

public class AndOperation_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_1vjwda_a(editorContext, node);
  }
  private EditorCell createCollection_1vjwda_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_1vjwda_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createRefNode_1vjwda_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_1vjwda_b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_1vjwda_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createRefNode_1vjwda_a0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new AndOperation_Editor.leftOperandSingleRoleHandler_1vjwda_a0(node, MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8620dbL, 0x102db86e5b3L, "leftOperand"), editorContext);
    return provider.createCell();
  }
  private class leftOperandSingleRoleHandler_1vjwda_a0 extends SingleRoleCellProvider {
    public leftOperandSingleRoleHandler_1vjwda_a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("leftOperand");
      }
      Operation_leftOperand_Actions.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_leftOperand");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no leftOperand>";
    }

  }
  private EditorCell createConstant_1vjwda_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "&&");
    editorCell.setCellId("Constant_1vjwda_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.EDITABLE, 0, true);
    editorCell.getStyle().putAll(style);
    Operation_symbol_Actions.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new AndOperation_Editor.ReplaceWith_Operation_cellMenu_1vjwda_a0b0()}));
    return editorCell;
  }
  public static class ReplaceWith_Operation_cellMenu_1vjwda_a0b0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_Operation_cellMenu_1vjwda_a0b0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.samples.formulaLanguage.structure.Operation";
    }
  }
  private EditorCell createRefNode_1vjwda_c0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new AndOperation_Editor.rightOperandSingleRoleHandler_1vjwda_c0(node, MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8620dbL, 0x102db87696bL, "rightOperand"), editorContext);
    return provider.createCell();
  }
  private class rightOperandSingleRoleHandler_1vjwda_c0 extends SingleRoleCellProvider {
    public rightOperandSingleRoleHandler_1vjwda_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("rightOperand");
      }
      Operation_rightOperand_Actions.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_rightOperand");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no rightOperand>";
    }

  }
}
