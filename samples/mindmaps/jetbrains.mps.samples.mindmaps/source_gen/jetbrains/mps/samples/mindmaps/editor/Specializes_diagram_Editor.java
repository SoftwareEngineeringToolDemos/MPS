package jetbrains.mps.samples.mindmaps.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import java.util.Collection;
import java.util.Arrays;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.jetpad.ConnectorCell;
import jetbrains.jetpad.model.property.Property;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.jetpad.model.property.ValueProperty;
import jetbrains.jetpad.mapper.Mapper;
import jetbrains.jetpad.projectional.diagram.view.PolyLineConnection;
import jetbrains.jetpad.mapper.Synchronizers;
import jetbrains.jetpad.model.property.WritableProperty;
import jetbrains.jetpad.projectional.view.View;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.nodeEditor.cells.jetpad.JetpadUtils;
import jetbrains.jetpad.geometry.Rectangle;
import jetbrains.mps.nodeEditor.cells.jetpad.DiagramCell;
import jetbrains.mps.lang.editor.diagram.runtime.jetpad.views.ConnectorDecoratorView;
import jetbrains.jetpad.model.property.ReadableProperty;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;

public class Specializes_diagram_Editor extends DefaultNodeEditor {
  private Collection<String> myContextHints = Arrays.asList(new String[]{"jetbrains.mps.samples.mindmaps.editor.mindmaps.diagram"});
  @Override
  public Collection<String> getContextHints() {
    return myContextHints;
  }
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createDiagramConnector_x5bto0_a(editorContext, node);
  }
  private EditorCell createDiagramConnector_x5bto0_a(final EditorContext editorContext, final SNode node) {
    final ConnectorCell editorCell = new Specializes_diagram_Editor.ConnectorCellImpl_x5bto0_a(editorContext, node);
    editorCell.setCellId("DiagramConnector_x5bto0_a");
    editorCell.setBig(true);
    DeleteRelationship.setCellActions(editorCell, node, editorContext);
    return editorCell;
  }
  public class ConnectorCellImpl_x5bto0_a extends ConnectorCell {
    protected Property<Tuples._1<SNode>> myInputPort = new ValueProperty<Tuples._1<SNode>>();
    protected Property<Tuples._1<SNode>> myOutputPort = new ValueProperty<Tuples._1<SNode>>();
    private ConnectorCellImpl_x5bto0_a(EditorContext editorContext, SNode node) {
      super(editorContext, node);
      synchronize();
    }
    public Mapper<SNode, PolyLineConnection> createMapper() {
      return new Mapper<SNode, PolyLineConnection>(getSNode(), createConnection()) {
        @Override
        protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
          super.registerSynchronizers(configuration);

          configuration.add(Synchronizers.forProperty(myInputPort, new WritableProperty<Tuples._1<SNode>>() {
            public void set(Tuples._1<SNode> port) {
              getTarget().toView().set(getTargetView(port));
            }
            private View getTargetView(Tuples._1<SNode> port) {
              Mapper<? super SNode, ?> descendantMapper = getParent().getDescendantMapper(port._0());
              if (descendantMapper == null) {
                return null;
              }
              return (View) descendantMapper.getTarget();
            }
          }));
          configuration.add(Synchronizers.forProperty(myOutputPort, new WritableProperty<Tuples._1<SNode>>() {
            public void set(Tuples._1<SNode> port) {
              getTarget().fromView().set(getTargetView(port));
              if (getTarget().fromView().get() == null || getTarget().toView().get() == null) {
                getTarget().fromView().set(null);
                getTarget().toView().set(null);
              }
            }
            private View getTargetView(Tuples._1<SNode> port) {
              Mapper<? super SNode, ?> descendantMapper = getParent().getDescendantMapper(port._0());
              if (descendantMapper == null) {
                return null;
              }
              return (View) descendantMapper.getTarget();
            }
          }));
          final View targetView = this.getTarget().view();
          configuration.add(Synchronizers.forProperty(targetView.focused(), new WritableProperty<Boolean>() {
            public void set(Boolean isFocused) {
              if (isFocused && !(isSelected())) {
                SelectionUtil.selectCell(getContext(), getSNode(), getCellId());
              }
            }
          }));
          configuration.add(Synchronizers.forProperty(mySelectedItem, new WritableProperty<Boolean>() {
            public void set(Boolean isSelected) {
              if (isSelected) {
                for (View view : Sequence.fromIterable(JetpadUtils.getAllChildren(targetView))) {
                  if (view.focused().get()) {
                    return;
                  }
                }
                targetView.container().focusedView().set(targetView);
              } else if (!(isSelected) && targetView.focused().get()) {
                targetView.container().focusedView().set(null);
              }
            }
          }));
          configuration.add(Synchronizers.forProperty(targetView.bounds(), new WritableProperty<Rectangle>() {
            public void set(Rectangle rect) {
              DiagramCell diagramCell = getDiagramCell();
              if (diagramCell == null) {
                return;
              }
              setX(rect.origin.x + diagramCell.getX());
              setY(rect.origin.y + diagramCell.getY());
              setWidth(rect.dimension.x);
              setHeight(rect.dimension.y);
            }
          }));
        }
      };
    }

    public Mapper<SNode, ConnectorDecoratorView> createDecorationMapper() {
      return new Mapper<SNode, ConnectorDecoratorView>(getSNode(), createConnectorDecoratorView()) {
        @Override
        protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
          super.registerSynchronizers(configuration);
          DiagramCell diagramCell = getDiagramCell();
          if (diagramCell == null) {
            return;
          }
          final Mapper<? super SNode, ?> descendantMapper = getDiagramCell().getRootMapper().getDescendantMapper(getSNode());
          if (descendantMapper == null) {
            return;
          }
          configuration.add(Synchronizers.forProperty(myErrorItem, getTarget().hasError));
          configuration.add(Synchronizers.forProperty(((PolyLineConnection) descendantMapper.getTarget()).view().focused(), getTarget().isSelected));
          ReadableProperty<Boolean> valid = ((PolyLineConnection) descendantMapper.getTarget()).view().valid();
          configuration.add(Synchronizers.forProperty(valid, getTarget().isValid()));

        }
      };
    }
    private ConnectorDecoratorView createConnectorDecoratorView() {
      ConnectorDecoratorView connectorDecoratorView = new ConnectorDecoratorView();
      DiagramCell diagramCell = getDiagramCell();
      if (diagramCell == null) {
        return connectorDecoratorView;
      }
      Mapper<? super SNode, ?> descendantMapper = getDiagramCell().getRootMapper().getDescendantMapper(getSNode());
      if (descendantMapper == null) {
        return connectorDecoratorView;
      }
      connectorDecoratorView.setSegments(((PolyLineConnection) descendantMapper.getTarget()).getSegments());
      return connectorDecoratorView;
    }


    public void synchronize() {
      myInputPort.set(MultiTuple.<SNode>from(SLinkOperations.getTarget(getSNode(), MetaAdapterFactory.getReferenceLink(0x33f294fd370a4a40L, 0x999b43f382910018L, 0x1198689ff14bad3L, 0x517b79625769ba9eL, "source"))));
      myOutputPort.set(MultiTuple.<SNode>from(SLinkOperations.getTarget(getSNode(), MetaAdapterFactory.getReferenceLink(0x33f294fd370a4a40L, 0x999b43f382910018L, 0x1198689ff14bad3L, 0x1198689ff14c5dfL, "target"))));
    }
    private PolyLineConnection createConnection() {
      PolyLineConnection connection = new PolyLineConnection();
      configureView(connection.view(), new _FunctionTypes._return_P0_E0<Boolean>() {
        public Boolean invoke() {
          return true;
        }
      });

      return connection;
    }


  }
}
