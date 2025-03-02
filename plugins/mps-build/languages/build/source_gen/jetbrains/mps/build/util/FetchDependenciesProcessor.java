package jetbrains.mps.build.util;

/*Generated by MPS */

import jetbrains.mps.generator.template.TemplateQueryContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.build.behavior.BuildExternalDependency_BehaviorDescriptor;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.generator.TransientModelsModule;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class FetchDependenciesProcessor {
  private TemplateQueryContext genContext;
  private SNode project;
  public FetchDependenciesProcessor(SNode project, TemplateQueryContext genContext) {
    this.genContext = genContext;
    this.project = project;
  }
  public void process() {
    VisibleArtifacts artifacts = new VisibleArtifacts(project, genContext);
    artifacts.collect();
    UnpackHelper helper = new UnpackHelper(artifacts, genContext);
    for (SNode dep : SNodeOperations.getNodeDescendants(project, MetaAdapterFactory.getInterfaceConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0xbabdfbeee1a36a3L, "jetbrains.mps.build.structure.BuildExternalDependency"), false, new SAbstractConcept[]{})) {
      BuildExternalDependency_BehaviorDescriptor.fetchDependencies_id57YmpYyL8F1.invoke(dep, artifacts, new FetchDependenciesProcessor.RequiredDependenciesBuilderImpl(artifacts, dep, helper));
    }
    helper.eval();

    List<SNode> statements = helper.getStatements();
    if (!(ListSequence.fromList(statements).isEmpty())) {
      SNode wf = SModelOperations.createNewNode(SNodeOperations.getModel(project), null, SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4140393b23438dabL, "jetbrains.mps.build.structure.BuildCustomWorkflow")));
      SNode taskpart = SModelOperations.createNewNode(SNodeOperations.getModel(project), null, SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x36fb0dc9fd32c1b8L, "jetbrains.mps.build.workflow.structure.BwfTaskPart")));
      SLinkOperations.setTarget(taskpart, MetaAdapterFactory.getReferenceLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x36fb0dc9fd32c1b8L, 0x36fb0dc9fd32c1b9L, "task"), SLinkOperations.getTarget(_quotation_createNode_t02zqv_a0a2a7a3(), MetaAdapterFactory.getReferenceLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x2670d5989d5ace56L, 0x2670d5989d5ace57L, "target")));
      ListSequence.fromList(SLinkOperations.getChildren(wf, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4140393b23438dabL, 0x4140393b23438dacL, "parts"))).addElement(taskpart);
      SNode stask = SModelOperations.createNewNode(SNodeOperations.getModel(project), null, SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x2670d5989d5a6275L, "jetbrains.mps.build.workflow.structure.BwfSubTask")));
      SPropertyOperations.set(stask, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "fetch");
      ListSequence.fromList(SLinkOperations.getChildren(taskpart, MetaAdapterFactory.getContainmentLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x36fb0dc9fd32c1b8L, 0x36fb0dc9fd32c1baL, "subTasks"))).addElement(stask);
      ListSequence.fromList(SLinkOperations.getChildren(stask, MetaAdapterFactory.getContainmentLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x2670d5989d5a6275L, 0x2670d5989d5b4a62L, "statements"))).addSequence(ListSequence.fromList(statements));
      ListSequence.fromList(SLinkOperations.getChildren(project, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, 0x31292e1a60db57afL, "aspects"))).addElement(wf);
    }
  }
  private class RequiredDependenciesBuilderImpl implements RequiredDependenciesBuilder {
    protected final VisibleArtifacts artifacts;
    protected final SNode dep;
    private final UnpackHelper helper;
    public RequiredDependenciesBuilderImpl(VisibleArtifacts artifacts, SNode dep, UnpackHelper helper) {
      this.artifacts = artifacts;
      this.dep = dep;
      this.helper = helper;
    }
    @Override
    public void add(SNode node) {
      if (!(check(node))) {
        return;
      }
      helper.add(node, false, null);
    }
    @Override
    public void add(SNode node, Object artifactId) {
      if (!(check(node))) {
        return;
      }
      if (!(checkArtifactId(artifactId))) {
        // false is possible only when artifactId is SNode from transient model 
        artifactId = artifacts.toOriginalNode((SNode) artifactId);
      }
      helper.add(node, false, artifactId);
    }
    @Override
    public void addWithContent(SNode node) {
      if (!(check(node))) {
        return;
      }
      helper.add(node, true, null);
    }
    private boolean check(SNode node) {
      if (SNodeOperations.getModel(node).getModule() instanceof TransientModelsModule) {
        genContext.showErrorMessage(dep, "returned dependency in transient model: " + jetbrains.mps.util.SNodeOperations.getDebugText(node));
        return false;
      }
      if (!(artifacts.contains(node))) {
        genContext.showErrorMessage(dep, "returned node which is not available in dependencies: " + jetbrains.mps.util.SNodeOperations.getDebugText(node));
        return false;
      }
      return true;
    }
    private boolean checkArtifactId(Object artifactId) {
      if (artifactId instanceof SNode && ((SNode) artifactId).getModel().getModule() instanceof TransientModelsModule) {
        genContext.showWarningMessage(dep, "FIXME registering artifact from transient model");
        return false;
      }
      return true;
    }
  }
  private static SNode _quotation_createNode_t02zqv_a0a2a7a3() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x2670d5989d5ace56L, "jetbrains.mps.build.workflow.structure.BwfTaskDependency"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x2670d5989d5ace56L, 0x2670d5989d5ace57L, "target"), SReference.create(MetaAdapterFactory.getReferenceLink(0x698a8d22a10447a0L, 0xba8d10e3ec237f13L, 0x2670d5989d5ace56L, 0x2670d5989d5ace57L, "target"), quotedNode_1, facade.createModelReference("r:0d66e868-9778-4307-b6f9-4795c00f662f(jetbrains.mps.build.workflow.preset.general)"), facade.createNodeId("7128123785277844790")));
    return quotedNode_1;
  }
}
