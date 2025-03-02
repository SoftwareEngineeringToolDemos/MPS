package jetbrains.mps.lang.editor.diagram.testLanguage.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.jetpad.BlockCell;
import jetbrains.mps.nodeEditor.cells.jetpad.PropertyMapperCell;
import jetbrains.jetpad.model.collections.list.ObservableList;
import jetbrains.jetpad.model.collections.list.ObservableArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;
import java.util.HashSet;
import jetbrains.jetpad.mapper.Mapper;
import jetbrains.jetpad.projectional.diagram.view.DiagramNodeView;
import jetbrains.jetpad.mapper.Synchronizers;
import jetbrains.jetpad.mapper.MapperFactory;
import jetbrains.jetpad.projectional.view.View;
import jetbrains.jetpad.projectional.view.RectView;
import jetbrains.jetpad.values.Color;
import jetbrains.jetpad.geometry.Vector;
import jetbrains.mps.nodeEditor.cells.jetpad.JetpadUtils;
import jetbrains.jetpad.model.property.WritableProperty;
import jetbrains.mps.editor.runtime.selection.SelectionUtil;
import jetbrains.mps.lang.editor.figures.sandbox.BoxFigureExt;
import jetbrains.mps.lang.editor.diagram.runtime.jetpad.views.MovableContentView;
import jetbrains.jetpad.geometry.Rectangle;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.nodeEditor.cells.jetpad.DiagramCell;
import jetbrains.mps.lang.editor.diagram.runtime.jetpad.views.NodeDecoratorView;
import jetbrains.jetpad.model.property.Properties;
import jetbrains.mps.lang.editor.diagram.runtime.jetpad.views.ResizableContentView;
import jetbrains.mps.lang.editor.diagram.runtime.jetpad.views.PortDecoratorView;
import java.util.Set;
import jetbrains.jetpad.model.property.ReadableProperty;

public class NodeWithPortQueries_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createDiagramNode_tny8cn_a(editorContext, node);
  }
  private EditorCell createDiagramNode_tny8cn_a(final EditorContext editorContext, final SNode node) {
    BlockCell editorCell = new NodeWithPortQueries_Editor.BlockCellImpl_tny8cn_a(editorContext, node);
    editorCell.setCellId("DiagramNode_tny8cn_a");
    editorCell.setBig(true);
    DefaultDiagramElementActionMap_0.setCellActions(editorCell, node, editorContext);
    return editorCell;
  }
  private class BlockCellImpl_tny8cn_a extends BlockCell {
    private final PropertyMapperCell<Integer> myPropertyCell_tny8cn_a0a;
    private final PropertyMapperCell<Integer> myPropertyCell_tny8cn_a1a;
    private final PropertyMapperCell<Integer> myPropertyCell_tny8cn_a2a;
    private final PropertyMapperCell<Integer> myPropertyCell_tny8cn_a3a;
    private final PropertyMapperCell<Integer> myPropertyCell_tny8cn_a4a;
    private final ObservableList<String> myInputPorts = new ObservableArrayList<String>();
    private final ObservableList<String> myOutputPorts = new ObservableArrayList<String>();
    private BlockCellImpl_tny8cn_a(EditorContext editorContext, final SNode node) {
      super(editorContext, node);
      myPropertyCell_tny8cn_a0a = new PropertyMapperCell<Integer>(editorContext, node) {
        protected Integer getModelPropertyValueImpl() {
          return SPropertyOperations.getInteger(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e1de05L, 0x7a0afda102e2029cL, "x"));
        }
        protected void setModelPropertyValueImpl(Integer value) {
          SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e1de05L, 0x7a0afda102e2029cL, "x"), "" + (value));
        }
      };
      addEditorCell(myPropertyCell_tny8cn_a0a);
      myPropertyCell_tny8cn_a0a.getEditorComponent().getUpdater().getCurrentUpdateSession().registerCleanDependency(myPropertyCell_tny8cn_a0a, new Pair<SNodeReference, String>(new SNodePointer(node), "x"));
      myPropertyCell_tny8cn_a1a = new PropertyMapperCell<Integer>(editorContext, node) {
        protected Integer getModelPropertyValueImpl() {
          return SPropertyOperations.getInteger(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e1de05L, 0x7a0afda102e2029eL, "y"));
        }
        protected void setModelPropertyValueImpl(Integer value) {
          SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e1de05L, 0x7a0afda102e2029eL, "y"), "" + (value));
        }
      };
      addEditorCell(myPropertyCell_tny8cn_a1a);
      myPropertyCell_tny8cn_a1a.getEditorComponent().getUpdater().getCurrentUpdateSession().registerCleanDependency(myPropertyCell_tny8cn_a1a, new Pair<SNodeReference, String>(new SNodePointer(node), "y"));
      myPropertyCell_tny8cn_a2a = new PropertyMapperCell<Integer>(editorContext, node) {
        protected Integer getModelPropertyValueImpl() {
          return SPropertyOperations.getInteger(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e202aaL, 0x7a0afda10316dc02L, "width"));
        }
        protected void setModelPropertyValueImpl(Integer value) {
          SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e202aaL, 0x7a0afda10316dc02L, "width"), "" + (value));
        }
      };
      addEditorCell(myPropertyCell_tny8cn_a2a);
      myPropertyCell_tny8cn_a2a.getEditorComponent().getUpdater().getCurrentUpdateSession().registerCleanDependency(myPropertyCell_tny8cn_a2a, new Pair<SNodeReference, String>(new SNodePointer(node), "width"));
      myPropertyCell_tny8cn_a3a = new PropertyMapperCell<Integer>(editorContext, node) {
        protected Integer getModelPropertyValueImpl() {
          return SPropertyOperations.getInteger(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e202aaL, 0x7a0afda10316dc04L, "height"));
        }
        protected void setModelPropertyValueImpl(Integer value) {
          SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x7a0afda102e202aaL, 0x7a0afda10316dc04L, "height"), "" + (value));
        }
      };
      addEditorCell(myPropertyCell_tny8cn_a3a);
      myPropertyCell_tny8cn_a3a.getEditorComponent().getUpdater().getCurrentUpdateSession().registerCleanDependency(myPropertyCell_tny8cn_a3a, new Pair<SNodeReference, String>(new SNodePointer(node), "height"));
      myPropertyCell_tny8cn_a4a = new PropertyMapperCell<Integer>(editorContext, node) {
        protected Integer getModelPropertyValueImpl() {
          return SPropertyOperations.getInteger(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x4ce40ecaf41f71d1L, 0x4ce40ecaf41ff260L, "lineWidth"));
        }
        protected void setModelPropertyValueImpl(Integer value) {
          SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x4ce40ecaf41f71d1L, 0x4ce40ecaf41ff260L, "lineWidth"), "" + (value));
        }
      };
      addEditorCell(myPropertyCell_tny8cn_a4a);
      myPropertyCell_tny8cn_a4a.getEditorComponent().getUpdater().getCurrentUpdateSession().registerCleanDependency(myPropertyCell_tny8cn_a4a, new Pair<SNodeReference, String>(new SNodePointer(node), "lineWidth"));
      synchronize();
    }
    public void synchronize() {
      super.synchronizeViewWithModel();
      myPropertyCell_tny8cn_a0a.synchronize();
      myPropertyCell_tny8cn_a1a.synchronize();
      myPropertyCell_tny8cn_a2a.synchronize();
      myPropertyCell_tny8cn_a3a.synchronize();
      myPropertyCell_tny8cn_a4a.synchronize();
      syncPortObjects(ListSequence.fromList(SLinkOperations.getChildren(getSNode(), MetaAdapterFactory.getContainmentLink(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x4ce40ecaf41f71d1L, 0x4ce40ecaf41f723dL, "inputs"))).select(new ISelector<SNode, String>() {
        public String select(SNode it) {
          return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
        }
      }), myInputPorts.listIterator(), new HashSet<String>(myInputPorts));
      syncPortObjects(ListSequence.fromList(SLinkOperations.getChildren(getSNode(), MetaAdapterFactory.getContainmentLink(0x50560c9658e49c5L, 0xb8e79e4db4c7e97fL, 0x4ce40ecaf41f71d1L, 0x4ce40ecaf41f7252L, "outputs"))).select(new ISelector<SNode, String>() {
        public String select(SNode it) {
          return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
        }
      }), myOutputPorts.listIterator(), new HashSet<String>(myOutputPorts));
    }
    public Mapper<SNode, DiagramNodeView> createMapper() {
      return new Mapper<SNode, DiagramNodeView>(getSNode(), createDiagramNodeView()) {
        @Override
        protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
          super.registerSynchronizers(configuration);
          configuration.add(Synchronizers.forObservableRole(this, myInputPorts, getTarget().inputs.children(), new MapperFactory<String, View>() {
            public Mapper<? extends String, ? extends View> createMapper(String id) {
              return new Mapper<String, RectView>(id, createPortView(id)) {
                @Override
                protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
                  super.registerSynchronizers(configuration);
                  getTarget().background().set(Color.LIGHT_GRAY);
                  getTarget().dimension().set(new Vector(10, 10));
                  getTarget().prop(JetpadUtils.CONNECTABLE).set(Boolean.TRUE);
                  configuration.add(Synchronizers.forProperty(getTarget().focused(), new WritableProperty<Boolean>() {
                    public void set(Boolean isFocused) {
                      if (isFocused && !(isSelected())) {
                        SelectionUtil.selectCell(getContext(), getSNode(), getCellId());
                      }
                    }
                  }));

                }
              };
            }
            private RectView createPortView(String id) {
              RectView view = new RectView();
              view.prop(JetpadUtils.SOURCE).set(getSNode());
              view.prop(JetpadUtils.ID).set(id);
              view.focusable().set(true);
              return view;
            }
          }));
          configuration.add(Synchronizers.forObservableRole(this, myOutputPorts, getTarget().outputs.children(), new MapperFactory<String, View>() {
            public Mapper<? extends String, ? extends View> createMapper(String id) {
              return new Mapper<String, RectView>(id, createPortView(id)) {
                @Override
                protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
                  super.registerSynchronizers(configuration);
                  getTarget().background().set(Color.GRAY);
                  getTarget().dimension().set(new Vector(10, 10));
                  getTarget().prop(JetpadUtils.CONNECTION_SOURCE).set(Boolean.TRUE);
                  getTarget().prop(JetpadUtils.CONNECTABLE).set(Boolean.TRUE);
                  configuration.add(Synchronizers.forProperty(getTarget().focused(), new WritableProperty<Boolean>() {
                    public void set(Boolean isFocused) {
                      if (isFocused && !(isSelected())) {
                        SelectionUtil.selectCell(getContext(), getSNode(), getCellId());
                      }
                    }
                  }));

                }
              };
            }
            private RectView createPortView(String id) {
              RectView view = new RectView();
              view.prop(JetpadUtils.SOURCE).set(getSNode());
              view.prop(JetpadUtils.ID).set(id);
              view.focusable().set(true);
              return view;
            }
          }));
          final DiagramNodeView diagramNodeView = getTarget();
          configuration.add(Synchronizers.forConstantRole(this, getContentViewMapperSource(), getTarget().contentView.children(), new MapperFactory<String, BoxFigureExt>() {
            public Mapper<? extends String, ? extends BoxFigureExt> createMapper(String block) {
              return new Mapper<String, BoxFigureExt>(block, new BoxFigureExt()) {
                @Override
                protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
                  super.registerSynchronizers(configuration);
                  configuration.add(Synchronizers.forProperty(getTarget().prop(MovableContentView.POSITION_X), new Runnable() {
                    public void run() {
                      updatePositionsFromModel(getTarget(), diagramNodeView);
                    }
                  }));
                  configuration.add(Synchronizers.forProperty(getTarget().prop(MovableContentView.POSITION_Y), new Runnable() {
                    public void run() {
                      updatePositionsFromModel(getTarget(), diagramNodeView);
                    }
                  }));
                  configuration.add(Synchronizers.forProperty(getTarget().bounds(), new WritableProperty<Rectangle>() {
                    public void set(Rectangle bounds) {
                      getTarget().prop(MovableContentView.POSITION_X).set(bounds.origin.x);
                      getTarget().prop(MovableContentView.POSITION_Y).set(bounds.origin.y);
                    }
                  }));
                  myPropertyCell_tny8cn_a0a.registerSynchronizers(configuration, getTarget().prop(MovableContentView.POSITION_X));
                  myPropertyCell_tny8cn_a1a.registerSynchronizers(configuration, getTarget().prop(MovableContentView.POSITION_Y));
                  myPropertyCell_tny8cn_a2a.registerSynchronizers(configuration, getTarget().figureWidth);
                  myPropertyCell_tny8cn_a3a.registerSynchronizers(configuration, getTarget().figureHeight);
                  myPropertyCell_tny8cn_a4a.registerSynchronizers(configuration, getTarget().lineWidth);
                }
              };
            }
          }));
          final View targetView = this.getTarget();
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
    public Mapper<SNode, NodeDecoratorView> createDecorationMapper() {
      return new Mapper<SNode, NodeDecoratorView>(getSNode(), new NodeDecoratorView()) {
        @Override
        protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
          super.registerSynchronizers(configuration);
          DiagramCell diagramCell = getDiagramCell();
          if (diagramCell == null) {
            return;
          }
          final Mapper<SNode, DiagramNodeView> blockMapper = getBlockMapper();
          if (blockMapper == null) {
            return;
          }
          configuration.add(Synchronizers.forProperty(myErrorItem, getTarget().hasError));
          configuration.add(Synchronizers.forProperty(blockMapper.getTarget().focused(), getTarget().isSelected));
          final BoxFigureExt contentView = (BoxFigureExt) getContentView();
          configuration.add(Synchronizers.forProperty(contentView.bounds(), getTarget().bounds));
          configuration.add(Synchronizers.forProperty(Properties.constant(Boolean.TRUE), getTarget().resizable));
          configuration.add(Synchronizers.forProperty(getTarget().boundsDelta, new WritableProperty<Rectangle>() {
            public void set(Rectangle delta) {
              if (delta == null) {
                return;
              }
              Vector positionDelta = delta.origin;
              Vector sizeDelta = delta.dimension;
              blockMapper.getTarget().move(positionDelta);
              contentView.prop(ResizableContentView.PREFERRED_SIZE).set(contentView.prop(ResizableContentView.PREFERRED_SIZE).get().add(sizeDelta));
            }
          }));
          configuration.add(Synchronizers.forObservableRole(this, myInputPorts, getTarget().inputPortDecotatorView.children(), new MapperFactory<String, PortDecoratorView>() {
            public Mapper<? extends String, ? extends PortDecoratorView> createMapper(final String id) {
              return new Mapper<String, PortDecoratorView>(id, new PortDecoratorView()) {
                @Override
                protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
                  DiagramCell diagramCell = getDiagramCell();
                  if (diagramCell == null) {
                    return;
                  }
                  Mapper<? super SNode, ?> blockDescendantMapper = getDiagramCell().getRootMapper().getDescendantMapper(getSNode());
                  if (blockDescendantMapper == null) {
                    return;
                  }
                  Set<Mapper<? super String, ?>> mappers = blockDescendantMapper.getMappingContext().getMappers(blockDescendantMapper, id);
                  if (mappers.isEmpty()) {
                    return;
                  }
                  final Mapper<String, View> descendantMapper = ((Mapper<String, View>) mappers.iterator().next());
                  configuration.add(Synchronizers.forProperty(((View) descendantMapper.getTarget()).focused(), getTarget().isSelected));
                  ReadableProperty<Rectangle> bounds = ((View) descendantMapper.getTarget()).bounds();
                  configuration.add(Synchronizers.forProperty(bounds, getTarget().bounds));

                }
              };
            }
          }));
          configuration.add(Synchronizers.forObservableRole(this, myOutputPorts, getTarget().outputPortDecotatorView.children(), new MapperFactory<String, PortDecoratorView>() {
            public Mapper<? extends String, ? extends PortDecoratorView> createMapper(final String id) {
              return new Mapper<String, PortDecoratorView>(id, new PortDecoratorView()) {
                @Override
                protected void registerSynchronizers(Mapper.SynchronizersConfiguration configuration) {
                  DiagramCell diagramCell = getDiagramCell();
                  if (diagramCell == null) {
                    return;
                  }
                  Mapper<? super SNode, ?> blockDescendantMapper = getDiagramCell().getRootMapper().getDescendantMapper(getSNode());
                  if (blockDescendantMapper == null) {
                    return;
                  }
                  Set<Mapper<? super String, ?>> mappers = blockDescendantMapper.getMappingContext().getMappers(blockDescendantMapper, id);
                  if (mappers.isEmpty()) {
                    return;
                  }
                  final Mapper<String, View> descendantMapper = ((Mapper<String, View>) mappers.iterator().next());
                  configuration.add(Synchronizers.forProperty(((View) descendantMapper.getTarget()).focused(), getTarget().isSelected));
                  ReadableProperty<Rectangle> bounds = ((View) descendantMapper.getTarget()).bounds();
                  configuration.add(Synchronizers.forProperty(bounds, getTarget().bounds));

                }
              };
            }
          }));

        }
      };
    }
  }
}
