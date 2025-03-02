package jetbrains.mps.build.mps.actions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.action.ModelActions;
import jetbrains.mps.smodel.action.SideTransformActionsBuilderContext;
import jetbrains.mps.smodel.action.AbstractSideTransformHintSubstituteAction;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.constraints.ModelConstraints;
import jetbrains.mps.smodel.action.SideTransformPreconditionContext;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.util.Computable;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SEnumOperations;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_BuildMps_ModuleSource_3189788309731979156(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      SNode outputConcept = MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334bdeaL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleJavaSource").getDeclarationNode();
      SNode childConcept = (SNode) _context.getChildConcept();
      if (SConceptOperations.isSuperConceptOf(SNodeOperations.asSConcept(childConcept), SNodeOperations.asSConcept(outputConcept))) {
        SNode wrappedConcept = MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x1ff930b22643b0ffL, "jetbrains.mps.build.structure.BuildInputSingleFolder").getDeclarationNode();
        IChildNodeSetter setter = new AbstractChildNodeSetter() {
          private SNode wrapNode(SNode nodeToWrap, SModel model, @Nullable EditorContext editorContext) {
            SNode res = SModelOperations.createNewNode(model, null, SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334bdeaL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleJavaSource")));
            SLinkOperations.setTarget(res, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334bdeaL, 0x48e82d508334bdecL, "folder"), nodeToWrap);
            return res;
          }
          public boolean returnSmallPart(SNode nodeToWrap) {
            return false;
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
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_ModuleDependencyOnModule_5253498789149547745(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SPropertyOperations.set(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cc1L, "reexport"), "" + (true));
        return _context.getSourceNode();
      }
      public String getMatchingText(String pattern) {
        return "(reexport)";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_ModuleDependencyOnModule_5253498789149547751(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return !(SPropertyOperations.getBoolean(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508334b11aL, 0x48e82d5083341cc1L, "reexport")));
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_ModuleDependencyOnJavaModule_3189788309731933926(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SPropertyOperations.set(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, 0x2c4467914643e8fcL, "reexport"), "" + (true));
        return _context.getSourceNode();
      }
      public String getMatchingText(String pattern) {
        return "(reexport)";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_ModuleDependencyOnJavaModule_3189788309731933940(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return !(SPropertyOperations.getBoolean(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c4467914643e8fbL, 0x2c4467914643e8fcL, "reexport")));
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_Module_3189788309731994246(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, "jetbrains.mps.build.mps.structure.BuildMps_Module").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SPropertyOperations.set(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x14d3fb6fb84ac614L, "doNotCompile"), "" + (true));
        return _context.getSourceNode();
      }
      public String getMatchingText(String pattern) {
        return "(do not compile)";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, "jetbrains.mps.build.mps.structure.BuildMps_Module").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, "jetbrains.mps.build.mps.structure.BuildMps_Module").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_Module_3189788309731994251(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return !(SPropertyOperations.getBoolean(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x14d3fb6fb84ac614L, "doNotCompile")));
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_AbstractModule_1500819558096400258(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, "jetbrains.mps.build.mps.structure.BuildMps_AbstractModule").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SNodeFactoryOperations.setNewChild(_context.getSourceNode(), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x4780308f5d47f25L, "path"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafacdc3eL, "jetbrains.mps.build.structure.BuildSourcePath")));
        return _context.getSourceNode();
      }
      public String getMatchingText(String pattern) {
        return "load from";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, "jetbrains.mps.build.mps.structure.BuildMps_AbstractModule").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, "jetbrains.mps.build.mps.structure.BuildMps_AbstractModule").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_AbstractModule_1500819558096400259(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return (SLinkOperations.getTarget(_context.getSourceNode(), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x4780308f5d47f25L, "path")) == null);
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_Solution_269707337718167391(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    {
      Iterable<SNode> parameterObjects = new Computable<Iterable<SNode>>() {
        public Iterable<SNode> compute() {
          return Sequence.fromArray(new SNode[]{SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)", "BuildMps_ModuleSourcesKind"), "tests"), SEnumOperations.getEnumMember(SEnumOperations.getEnum("r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)", "BuildMps_ModuleSourcesKind"), "sources and tests")});
        }
      }.compute();
      if (parameterObjects != null) {
        for (final SNode item : parameterObjects) {
          ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, "jetbrains.mps.build.mps.structure.BuildMps_Solution").getDeclarationNode(), item, _context.getSourceNode()) {
            public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
              SPropertyOperations.set(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, 0x3be316509dccb82L, "sourcesKind"), "" + ((item)));
              return _context.getSourceNode();
            }
            public String getMatchingText(String pattern) {
              return "(with " + SEnumOperations.getEnumMemberName((item)) + ")";
            }
            public String getVisibleMatchingText(String pattern) {
              return getMatchingText(pattern);
            }
            @Override
            protected boolean isEnabled() {
              SNode sourceNode = getSourceNode();
              SNode parent = SNodeOperations.getParent(sourceNode);
              SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
              return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, "jetbrains.mps.build.mps.structure.BuildMps_Solution").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, "jetbrains.mps.build.mps.structure.BuildMps_Solution").getDeclarationNode(), null));
            }
          });
        }
      }
    }
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_Solution_269707337717102164(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    String sourcesKind = SPropertyOperations.getString_def(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, 0x3be316509dccb82L, "sourcesKind"), null);
    return (sourcesKind == null || sourcesKind.length() == 0) || sourcesKind.equals("sources");
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_IdeaPlugin_1238980147630030569(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bb74L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        return SNodeFactoryOperations.setNewChild(_context.getSourceNode(), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bb74L, 0x1131bde13f3dbe2aL, "pluginXml"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafacdc3eL, "jetbrains.mps.build.structure.BuildSourcePath")));
      }
      public String getMatchingText(String pattern) {
        return "from file";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bb74L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bb74L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_IdeaPlugin_1238980147630030570(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return (SLinkOperations.getTarget(_context.getSourceNode(), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bb74L, 0x1131bde13f3dbe2aL, "pluginXml")) == null);
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_IdeaPluginModule_4034578608468849422(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bbdcL, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SPropertyOperations.set(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bbdcL, 0x37fdb3de482cf2dfL, "customPackaging"), "" + (true));
        return _context.getSourceNode();
      }
      public String getMatchingText(String pattern) {
        return "(custom packaging)";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bbdcL, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bbdcL, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_IdeaPluginModule_4034578608468849423(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return !(SPropertyOperations.getBoolean(_context.getSourceNode(), MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4de9bbdcL, 0x37fdb3de482cf2dfL, "customPackaging")));
  }
  public static List<SubstituteAction> sideTransform_ActionsFactory_BuildMps_IdeaPluginGroup_4034578608469015649(final IOperationContext operationContext, final SideTransformActionsBuilderContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addElement(new AbstractSideTransformHintSubstituteAction(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup").getDeclarationNode(), _context.getSourceNode()) {
      public SNode doSubstitute(@Nullable final EditorContext editorContext, String pattern) {
        SLinkOperations.addNewChild(_context.getSourceNode(), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, 0x37fdb3de482e2b2fL, "customPackaging"), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x37fdb3de482e2b27L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroupCustomModule")));
        return _context.getSourceNode();
      }
      public String getMatchingText(String pattern) {
        return "(custom packaging)";
      }
      public String getVisibleMatchingText(String pattern) {
        return getMatchingText(pattern);
      }
      @Override
      protected boolean isEnabled() {
        SNode sourceNode = getSourceNode();
        SNode parent = SNodeOperations.getParent(sourceNode);
        SNode containingLink = SNodeOperations.getContainingLinkDeclaration(sourceNode);
        return parent == null || containingLink == null || (ModelConstraints.canBeParent(parent, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup").getDeclarationNode(), containingLink, null, null) && ModelConstraints.canBeAncestor(parent, null, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup").getDeclarationNode(), null));
      }
    });
    return result;
  }
  public static boolean sideTransformHintSubstituteActionsBuilder_Precondition_BuildMps_IdeaPluginGroup_4034578608469015663(final IOperationContext operationContext, final SideTransformPreconditionContext _context) {
    return ListSequence.fromList(SLinkOperations.getChildren(_context.getSourceNode(), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, 0x37fdb3de482e2b2fL, "customPackaging"))).isEmpty();
  }
}
