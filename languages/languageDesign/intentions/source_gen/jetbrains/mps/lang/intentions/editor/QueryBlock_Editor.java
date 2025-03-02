package jetbrains.mps.lang.intentions.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.MPSFonts;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.editor.runtime.style.FocusPolicy;
import jetbrains.mps.nodeEditor.AbstractCellProvider;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.baseLanguage.behavior.ConceptFunction_BehaviorDescriptor;
import jetbrains.mps.editor.runtime.cells.BigCellUtil;

public class QueryBlock_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_yfw6cj_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCustom_yfw6cj_a(editorContext, node);
  }
  private EditorCell createCollection_yfw6cj_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_yfw6cj_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createCollection_yfw6cj_a0(editorContext, node));
    editorCell.addEditorCell(this.createComponent_yfw6cj_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createCollection_yfw6cj_a0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_yfw6cj_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_yfw6cj_a0a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_yfw6cj_b0a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_yfw6cj_c0a(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_yfw6cj_a0a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "type");
    editorCell.setCellId("Constant_yfw6cj_a0a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.PLAIN);
    style.set(StyleAttributes.SELECTABLE, 0, true);
    style.set(StyleAttributes.EDITABLE, 0, false);
    style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.DARK_BLUE));
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_yfw6cj_b0a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_yfw6cj_b0a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, true);
    style.set(StyleAttributes.EDITABLE, 0, false);
    style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.DARK_BLUE));
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_yfw6cj_c0a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new QueryBlock_Editor.paramTypeSingleRoleHandler_yfw6cj_c0a(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x120c89cc719L, 0x120cd3676eeL, "paramType"), editorContext);
    return provider.createCell();
  }
  private class paramTypeSingleRoleHandler_yfw6cj_c0a extends SingleRoleCellProvider {
    public paramTypeSingleRoleHandler_yfw6cj_c0a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("paramType");
      }
      if (true) {
        editorCell.getStyle().set(StyleAttributes.FOCUS_POLICY, FocusPolicy.ATTRACTS_FOCUS);
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_paramType");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no paramType>";
    }

  }
  private EditorCell createComponent_yfw6cj_b0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.baseLanguage.editor.ConceptFunction_Component");
    return editorCell;
  }
  private EditorCell createCustom_yfw6cj_a(final EditorContext editorContext, final SNode node) {
    AbstractCellProvider provider = new _FunctionTypes._return_P0_E0<AbstractCellProvider>() {
      public AbstractCellProvider invoke() {
        return new AbstractCellProvider() {
          @Override
          public EditorCell createEditorCell(EditorContext editorContext) {
            jetbrains.mps.openapi.editor.cells.EditorCell_Collection collection = EditorCell_Collection.createVertical(editorContext, node);
            collection.addEditorCell(new EditorCell_Constant(editorContext, node, "Concept function help:"));
            if (SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(node), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L, "shortDescription")) != null) {
              collection.addEditorCell(new EditorCell_Constant(editorContext, node, SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(node), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L, "shortDescription"))));
            }
            collection.addEditorCell(new EditorCell_Constant(editorContext, node, ""));
            collection.addEditorCell(new EditorCell_Constant(editorContext, node, "Parameter help:"));
            for (SNode cfp : ConceptFunction_BehaviorDescriptor.getParameters_idhEwIGRM.invoke(node)) {
              String alias = SPropertyOperations.getString(cfp, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"));
              String description = SPropertyOperations.getString(cfp, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L, "shortDescription"));
              if (description == null) {
                description = "<no help. use short_description concept function property to create one>";
              }
              EditorCell_Constant message = new EditorCell_Constant(editorContext, node, alias + " : " + description);
              collection.addEditorCell(message);
            }
            return collection;
          }
        };
      }
    }.invoke();
    EditorCell editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("Custom_yfw6cj_a");
    EditorCell bigCell = BigCellUtil.findBigCell(editorCell, node);
    if (bigCell != null) {
      bigCell.setBig(true);
    }
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    return editorCell;
  }
}
