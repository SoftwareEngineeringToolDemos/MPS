package jetbrains.mps.lang.quotation.editor;

/*Generated by MPS */

import jetbrains.mps.editor.runtime.cells.KeyMapImpl;
import jetbrains.mps.openapi.editor.cells.KeyMapAction;
import jetbrains.mps.editor.runtime.cells.KeyMapActionImpl;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.nodeEditor.cells.EditorCell_Property;
import jetbrains.mps.nodeEditor.cells.PropertyAccessor;

public class _CreateAntiquotationKeyMap extends KeyMapImpl {
  public _CreateAntiquotationKeyMap() {
    this.setApplicableToEveryModel(false);
    KeyMapAction action;
    action = new _CreateAntiquotationKeyMap._CreateAntiquotationKeyMap_Action0();
    this.putAction("any", "%", action);
    action = new _CreateAntiquotationKeyMap._CreateAntiquotationKeyMap_Action1();
    this.putAction("any", "*", action);
    action = new _CreateAntiquotationKeyMap._CreateAntiquotationKeyMap_Action2();
    this.putAction("any", "^", action);
    action = new _CreateAntiquotationKeyMap._CreateAntiquotationKeyMap_Action3();
    this.putAction("any", "$", action);
  }
  public static class _CreateAntiquotationKeyMap_Action0 extends KeyMapActionImpl {
    public _CreateAntiquotationKeyMap_Action0() {
      this.setShownInPopupMenu(false);
    }
    public String getDescriptionText() {
      return "antiquotation";
    }
    public boolean isMenuAlwaysShown() {
      return false;
    }
    public boolean canExecute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      if ((contextCell == null)) {
        return false;
      }
      SNode contextNode = contextCell.getSNode();
      if (contextNode == null) {
        return false;
      }
      if (!(SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104659L, "jetbrains.mps.lang.quotation.structure.Quotation")))) {
        return false;
      }
      return this.canExecute_internal(editorContext, contextNode, this.getSelectedNodes(editorContext));
    }
    public void execute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      this.execute_internal(editorContext, contextCell.getSNode(), this.getSelectedNodes(editorContext));
    }
    private boolean canExecute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      return true;
    }
    private void execute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      SNode contextNode = editorContext.getSelectedCell().getSNode();
      if (contextNode == null) {
        return;
      }
      if (SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation"))) {
        AttributeOperations.setAttribute(SNodeOperations.getParent(contextNode), new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation")), null);
        return;
      }
      if (AttributeOperations.getAttribute(contextNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation"))) != null) {
        AttributeOperations.setAttribute(contextNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation")), null);
      } else
      SNodeFactoryOperations.setNewAttribute(contextNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation")));
    }
    public String getKeyStroke() {
      return " %";
    }
  }
  public static class _CreateAntiquotationKeyMap_Action1 extends KeyMapActionImpl {
    public _CreateAntiquotationKeyMap_Action1() {
      this.setShownInPopupMenu(false);
    }
    public String getDescriptionText() {
      return "list antiquotation";
    }
    public boolean isMenuAlwaysShown() {
      return false;
    }
    public boolean canExecute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      if ((contextCell == null)) {
        return false;
      }
      SNode contextNode = contextCell.getSNode();
      if (contextNode == null) {
        return false;
      }
      if (!(SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104659L, "jetbrains.mps.lang.quotation.structure.Quotation")))) {
        return false;
      }
      return this.canExecute_internal(editorContext, contextNode, this.getSelectedNodes(editorContext));
    }
    public void execute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      this.execute_internal(editorContext, contextCell.getSNode(), this.getSelectedNodes(editorContext));
    }
    private boolean canExecute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      return true;
    }
    private void execute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      SNode contextNode = editorContext.getSelectedCell().getSNode();
      if (contextNode == null) {
        return;
      }
      if (SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation"))) {
        SNode attributedNode = SNodeOperations.getParent(contextNode);
        assert attributedNode != null;
        AttributeOperations.setAttribute(attributedNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation")), null);
        return;
      }
      if ((AttributeOperations.getAttribute(contextNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation"))) != null)) {
        AttributeOperations.setAttribute(contextNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation")), null);
      } else
      SNodeFactoryOperations.setNewAttribute(contextNode, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465eL, "jetbrains.mps.lang.quotation.structure.ListAntiquotation")));
    }
    public String getKeyStroke() {
      return " *";
    }
  }
  public static class _CreateAntiquotationKeyMap_Action2 extends KeyMapActionImpl {
    public _CreateAntiquotationKeyMap_Action2() {
      this.setShownInPopupMenu(false);
    }
    public String getDescriptionText() {
      return "reference antiquotation";
    }
    public boolean isMenuAlwaysShown() {
      return false;
    }
    public boolean canExecute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      if ((contextCell == null)) {
        return false;
      }
      SNode contextNode = contextCell.getSNode();
      if (contextNode == null) {
        return false;
      }
      if (!(SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104659L, "jetbrains.mps.lang.quotation.structure.Quotation")))) {
        return false;
      }
      return this.canExecute_internal(editorContext, contextNode, this.getSelectedNodes(editorContext));
    }
    public void execute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      this.execute_internal(editorContext, contextCell.getSNode(), this.getSelectedNodes(editorContext));
    }
    private boolean canExecute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      return true;
    }
    private void execute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      EditorCell selectedCell = editorContext.getSelectedCell();
      SNode contextNode = SNodeOperations.cast(selectedCell.getSNode(), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
      if (contextNode == null) {
        return;
      }
      if (!(selectedCell.isReferenceCell())) {
        return;
      }
      String role = selectedCell.getRole();
      if (SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"))) {
        SNode attributedNode = SNodeOperations.cast(SNodeOperations.getParent(contextNode), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
        assert attributedNode != null;
        AttributeOperations.setAttribute(attributedNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role), null);
        return;
      }
      if (AttributeOperations.getAttribute(contextNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role)) != null) {
        AttributeOperations.setAttribute(contextNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role), null);
      } else {
        SNode referenceAntiquotation = SNodeFactoryOperations.setNewAttribute(contextNode, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), role), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation")));
        if (selectedCell.isSingleNodeCell()) {
          SPropertyOperations.set(referenceAntiquotation, MetaAdapterFactory.getProperty(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x5a0ec74a8bd5aeb2L, "label"), SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(contextNode), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
        }
      }
    }
    public String getKeyStroke() {
      return " ^";
    }
  }
  public static class _CreateAntiquotationKeyMap_Action3 extends KeyMapActionImpl {
    public _CreateAntiquotationKeyMap_Action3() {
      this.setShownInPopupMenu(false);
    }
    public String getDescriptionText() {
      return "property antiquotation";
    }
    public boolean isMenuAlwaysShown() {
      return false;
    }
    public boolean canExecute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      if ((contextCell == null)) {
        return false;
      }
      SNode contextNode = contextCell.getSNode();
      if (contextNode == null) {
        return false;
      }
      if (!(SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104659L, "jetbrains.mps.lang.quotation.structure.Quotation")))) {
        return false;
      }
      return this.canExecute_internal(editorContext, contextNode, this.getSelectedNodes(editorContext));
    }
    public void execute(final EditorContext editorContext) {
      EditorCell contextCell = editorContext.getContextCell();
      this.execute_internal(editorContext, contextCell.getSNode(), this.getSelectedNodes(editorContext));
    }
    private boolean canExecute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      return true;
    }
    private void execute_internal(final EditorContext editorContext, final SNode node, final List<SNode> selectedNodes) {
      EditorCell selectedCell = editorContext.getSelectedCell();
      SNode contextNode = SNodeOperations.cast(selectedCell.getSNode(), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
      if (contextNode == null) {
        return;
      }
      if (!(selectedCell instanceof EditorCell_Property)) {
        return;
      }
      EditorCell_Property editorCell_Property = (EditorCell_Property) selectedCell;
      String propertyName = ((PropertyAccessor) editorCell_Property.getModelAccessor()).getPropertyName();
      if (SNodeOperations.isInstanceOf(contextNode, MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation"))) {
        SNode attributedNode = SNodeOperations.cast(SNodeOperations.getParent(contextNode), MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"));
        assert attributedNode != null;
        AttributeOperations.setAttribute(attributedNode, new IAttributeDescriptor.PropertyAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation"), propertyName), null);
        return;
      }
      if (AttributeOperations.getAttribute(contextNode, new IAttributeDescriptor.PropertyAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation"), propertyName)) != null) {
        AttributeOperations.setAttribute(contextNode, new IAttributeDescriptor.PropertyAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation"), propertyName), null);
      } else {
        SNode propertyAntiquotation = SNodeFactoryOperations.setNewAttribute(contextNode, new IAttributeDescriptor.PropertyAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation"), propertyName), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x116aac96587L, "jetbrains.mps.lang.quotation.structure.PropertyAntiquotation")));
        if (selectedCell.isSingleNodeCell()) {
          SPropertyOperations.set(propertyAntiquotation, MetaAdapterFactory.getProperty(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x5a0ec74a8bd5aeb2L, "label"), SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(contextNode), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
        }
      }
    }
    public String getKeyStroke() {
      return " $";
    }
  }
}
