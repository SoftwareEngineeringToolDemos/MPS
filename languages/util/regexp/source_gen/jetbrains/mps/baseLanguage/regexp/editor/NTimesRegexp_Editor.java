package jetbrains.mps.baseLanguage.regexp.editor;

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
import jetbrains.mps.baseLanguage.regexp.behavior.UnaryRegexp_BehaviorDescriptor;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.editor.runtime.style.FocusPolicy;

public class NTimesRegexp_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_yzyesl_a(editorContext, node);
  }
  private EditorCell createCollection_yzyesl_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_yzyesl_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    RegexpSequenceByEnter.setCellActions(editorCell, node, editorContext);
    if (renderingCondition_yzyesl_a0a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_yzyesl_a0(editorContext, node));
    }
    editorCell.addEditorCell(this.createRefNode_yzyesl_b0(editorContext, node));
    if (renderingCondition_yzyesl_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_yzyesl_c0(editorContext, node));
    }
    editorCell.addEditorCell(this.createConstant_yzyesl_d0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_yzyesl_e0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_yzyesl_f0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_yzyesl_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "(");
    editorCell.setCellId("Constant_yzyesl_a0");
    Style style = new StyleImpl();
    RegexpStylesheet_StyleSheet.apply_LeftRegexpBrace(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_yzyesl_a0a(SNode node, EditorContext editorContext) {
    return UnaryRegexp_BehaviorDescriptor.inParentheses_id1b8uQvZyDW8.invoke(node);
  }
  private EditorCell createRefNode_yzyesl_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new NTimesRegexp_Editor.regexpSingleRoleHandler_yzyesl_b0(node, MetaAdapterFactory.getContainmentLink(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174c678adL, 0x11174c6961aL, "regexp"), editorContext);
    return provider.createCell();
  }
  private class regexpSingleRoleHandler_yzyesl_b0 extends SingleRoleCellProvider {
    public regexpSingleRoleHandler_yzyesl_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("regexp");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_regexp");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no regexp>";
    }

  }
  private EditorCell createConstant_yzyesl_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ")");
    editorCell.setCellId("Constant_yzyesl_c0");
    Style style = new StyleImpl();
    RegexpStylesheet_StyleSheet.apply_RightRegexpBrace(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_yzyesl_a2a(SNode node, EditorContext editorContext) {
    return UnaryRegexp_BehaviorDescriptor.inParentheses_id1b8uQvZyDW8.invoke(node);
  }
  private EditorCell createConstant_yzyesl_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "{");
    editorCell.setCellId("Constant_yzyesl_d0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Matching(style, editorCell);
    style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.DARK_MAGENTA));
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    style.set(StyleAttributes.PUNCTUATION_RIGHT, 0, true);
    editorCell.getStyle().putAll(style);
    UnaryRegexp_Regexp_actions.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_yzyesl_e0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("n");
    provider.setNoTargetText("<no n>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_n");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_yzyesl_f0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "}");
    editorCell.setCellId("Constant_yzyesl_f0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_Matching(style, editorCell);
    style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.DARK_MAGENTA));
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    editorCell.getStyle().putAll(style);
    if (true) {
      editorCell.getStyle().set(StyleAttributes.FOCUS_POLICY, FocusPolicy.ATTRACTS_FOCUS);
    }
    UnaryRegexp_Regexp_actions.setCellActions(editorCell, node, editorContext);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
