package jetbrains.mps.lang.editor.diagram.actions;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.action.NodeSubstituteActionsFactoryContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.action.IChildNodeSetter;
import jetbrains.mps.smodel.action.AbstractChildNodeSetter;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.action.ModelActions;
import jetbrains.mps.util.Computable;
import jetbrains.mps.scope.Scope;
import java.util.Collections;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.smodel.action.DefaultChildNodeSubstituteAction;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.openapi.editor.selection.SelectionManager;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.action.DefaultSimpleSubstituteAction;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_EditorCellModel_4088443785018002411(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0xf301bf106a326e1L, "jetbrains.mps.lang.editor.diagram.structure.CellModel_DiagramNode").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        SNode wrappedConcept = MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0xf301bf106a329d6L, "jetbrains.mps.lang.editor.diagram.structure.AbstractFigureReference").getDeclarationNode();
        IChildNodeSetter setter = new AbstractChildNodeSetter() {
          private SNode wrapNode(SNode nodeToWrap, SModel model, @Nullable EditorContext editorContext) {
            SNode diagramNodeCell = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0xf301bf106a326e1L, "jetbrains.mps.lang.editor.diagram.structure.CellModel_DiagramNode")));
            SLinkOperations.setTarget(diagramNodeCell, MetaAdapterFactory.getContainmentLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0xf301bf106a326e1L, 0xf301bf106a329d9L, "figure"), nodeToWrap);
            return diagramNodeCell;
          }
          public boolean returnSmallPart(SNode nodeToWrap) {
            return true;
          }
          @Override
          public SNode doExecute(SNode pn, SNode oc, SNode nc, @Nullable EditorContext editorContext) {
            SNode wrappedNode = wrapNode(nc, nc.getModel(), editorContext);
            _context.getChildSetter().execute(_context.getParentNode(), _context.getCurrentTargetNode(), wrappedNode, editorContext);
            return (returnSmallPart(nc) ? nc : wrappedNode);
          }
        };
        ListSequence.fromList(result).addSequence(ListSequence.fromList(ModelActions.createChildNodeSubstituteActions(_context.getParentNode(), _context.getCurrentTargetNode(), wrappedConcept, setter, operationContext)));
      }
    }
    return result;
  }
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_AbstractArgument_285670992217709792(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fd86f9b7L, "jetbrains.mps.lang.editor.diagram.structure.LinkArgument").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        Iterable<SNode> queryResult = new Computable<Iterable<SNode>>() {
          public Iterable<SNode> compute() {
            Scope linkDeclarationScope = Scope.getScope(_context.getParentNode(), _context.getCurrentTargetNode(), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration").getDeclarationNode());
            if (linkDeclarationScope == null) {
              return Collections.emptyList();
            }
            return Sequence.fromIterable(linkDeclarationScope.getAvailableElements("")).select(new ISelector<SNode, SNode>() {
              public SNode select(SNode it) {
                return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration"));
              }
            });
          }
        }.compute();
        if (queryResult != null) {
          for (final SNode item : queryResult) {
            ListSequence.fromList(result).addElement(new DefaultChildNodeSubstituteAction(outputConcept, item, _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter()) {
              public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
                SNode parameter = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fd86f9b7L, "jetbrains.mps.lang.editor.diagram.structure.LinkArgument")), _context.getCurrentTargetNode());
                SLinkOperations.setTarget(parameter, MetaAdapterFactory.getReferenceLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fd86f9b7L, 0x3f6e840fdc4a7a7L, "link"), (item));
                return parameter;
              }
              @Override
              protected SNode selectChildNode(SNode createdNode, SModel model, String pattern, EditorContext editorContext) {
                SelectionUtil.selectLabelCellAnSetCaret(editorContext, createdNode, SelectionManager.LAST_EDITABLE_CELL, -1);
                return null;
              }
              public String getMatchingText(String pattern) {
                return SPropertyOperations.getString((item), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
              }
              public String getVisibleMatchingText(String pattern) {
                return getMatchingText(pattern);
              }
            });
          }
        }
      }
    }
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fdc48c85L, "jetbrains.mps.lang.editor.diagram.structure.PropertyArgument").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        Iterable<SNode> queryResult = new Computable<Iterable<SNode>>() {
          public Iterable<SNode> compute() {
            Scope propertyDeclarationScope = Scope.getScope(_context.getParentNode(), _context.getCurrentTargetNode(), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration").getDeclarationNode());
            if (propertyDeclarationScope == null) {
              return Collections.emptyList();
            }
            return Sequence.fromIterable(propertyDeclarationScope.getAvailableElements("")).select(new ISelector<SNode, SNode>() {
              public SNode select(SNode it) {
                return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration"));
              }
            });
          }
        }.compute();
        if (queryResult != null) {
          for (final SNode item : queryResult) {
            ListSequence.fromList(result).addElement(new DefaultChildNodeSubstituteAction(outputConcept, item, _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter()) {
              public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
                SNode parameter = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fdc48c85L, "jetbrains.mps.lang.editor.diagram.structure.PropertyArgument")), _context.getCurrentTargetNode());
                SLinkOperations.setTarget(parameter, MetaAdapterFactory.getReferenceLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fdc48c85L, 0x3f6e840fdc4ce94L, "property"), (item));
                return parameter;
              }
              @Override
              protected SNode selectChildNode(SNode createdNode, SModel model, String pattern, EditorContext editorContext) {
                SelectionUtil.selectLabelCellAnSetCaret(editorContext, createdNode, SelectionManager.LAST_EDITABLE_CELL, -1);
                return null;
              }
              public String getMatchingText(String pattern) {
                return SPropertyOperations.getString((item), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
              }
              public String getVisibleMatchingText(String pattern) {
                return getMatchingText(pattern);
              }
            });
          }
        }
      }
    }
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fd86f8f7L, "jetbrains.mps.lang.editor.diagram.structure.BLQueryArgument").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (outputConcept == null || SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        ListSequence.fromList(result).addElement(new DefaultSimpleSubstituteAction(outputConcept, _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter()) {
          public SNode createChildNode(Object parameterObject, SModel model, String pattern) {
            return SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x3f6e840fd86f8f7L, "jetbrains.mps.lang.editor.diagram.structure.BLQueryArgument")), _context.getCurrentTargetNode());
          }
          @Override
          protected SNode selectChildNode(SNode createdNode, SModel model, String pattern, EditorContext editorContext) {
            SelectionUtil.selectLabelCellAnSetCaret(editorContext, createdNode, SelectionManager.LAST_EDITABLE_CELL, -1);
            return null;
          }
          public String getMatchingText(String pattern) {
            return "#<expression>";
          }
          public String getVisibleMatchingText(String pattern) {
            return getMatchingText(pattern);
          }
        });
      }
    }
    return result;
  }
}
