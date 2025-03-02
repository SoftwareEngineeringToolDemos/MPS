package jetbrains.mps.lang.structure.pluginSolution.plugin;

/*Generated by MPS */

import jetbrains.mps.smodel.structure.Extension;
import jetbrains.mps.ide.platform.actions.core.MoveNodesRefactoring;
import jetbrains.mps.project.MPSProject;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.Set;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.MetaAdapterByDeclaration;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.lang.structure.plugin.RefactoringRuntime;
import jetbrains.mps.lang.structure.behavior.LinkDeclaration_BehaviorDescriptor;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.smodel.SReference;

public class MoveContainmentLinkUp extends MoveFeatureUp {

  public static class MoveContainmentLinkUp_extension extends Extension.Default<MoveNodesRefactoring> {
    public MoveContainmentLinkUp_extension() {
      super("jetbrains.mps.ide.platform.MoveNodes");
    }
    public MoveNodesRefactoring get() {
      return new MoveContainmentLinkUp();
    }
  }

  public String getName() {
    return "Move Link Up";
  }
  public boolean isApplicable(MPSProject project, final List<SNode> target) {
    final Wrappers._boolean result = new Wrappers._boolean();
    project.getRepository().getModelAccess().runReadAction(new Runnable() {
      public void run() {
        result.value = SNodeOperations.hasRole(ListSequence.fromList(target).first(), MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0xf979c3ba6bL, "linkDeclaration")) && SPropertyOperations.hasValue(SNodeOperations.cast(ListSequence.fromList(target).first(), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf980556927L, "metaClass"), "aggregation", "reference");
      }
    });
    return result.value;
  }

  public String getKind() {
    return "link";
  }
  public MoveFeatureUp.FeatureAccess getFeatureAccess(final SNode link, final SNode targetConcept) {
    return new MoveFeatureUp.FeatureAccess() {
      public String getName() {
        return SPropertyOperations.getString(SNodeOperations.cast(link, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
      }
      public List<SNode> placeToMove() {
        return SLinkOperations.getChildren(targetConcept, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0xf979c3ba6bL, "linkDeclaration"));
      }
      public void doMoveAndRefactorInstances(Set<SNode> instances) {
        SContainmentLink oldLink = MetaAdapterByDeclaration.getContainmentLink(link);
        ListSequence.fromList(SLinkOperations.getChildren(targetConcept, MetaAdapterFactory.getContainmentLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0xf979c3ba6bL, "linkDeclaration"))).addElement(SNodeOperations.cast(link, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")));
        SContainmentLink newLink = MetaAdapterByDeclaration.getContainmentLink(link);
        for (SNode node : SetSequence.fromSet(instances)) {
          RefactoringRuntime.changeContainmentLinkInstance(node, oldLink, newLink);
        }
      }
    };
  }
  public void markOldFeature(SNode oldLink) {
    SPropertyOperations.set(SNodeOperations.cast(oldLink, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"), SPropertyOperations.getString_def(SNodeOperations.cast(oldLink, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"), "") + "_old");
    if (LinkDeclaration_BehaviorDescriptor.isAtLeastOneCardinality_id2VYdUfnkjmB.invoke(SNodeOperations.cast(oldLink, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")))) {
      SPropertyOperations.set(SNodeOperations.cast(oldLink, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98054bb04L, "sourceCardinality"), (LinkDeclaration_BehaviorDescriptor.isSingular_idhEwIfAt.invoke(SNodeOperations.cast(oldLink, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration"))) ? "0..1" : "0..n"));
    }
  }
  public MoveFeatureUp.FeatureSpecificMigrations migrations(SNode oldLink, SNode newLink) {
    SNode oldLinkVariable = _quotation_createNode_lavczv_a0a0j(SNodeOperations.cast(SNodeOperations.getParent(oldLink), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration")), oldLink);
    SNode newLinkVariable = _quotation_createNode_lavczv_a0b0j(SNodeOperations.cast(SNodeOperations.getParent(newLink), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration")), newLink);
    SNode refactorClosure = _quotation_createNode_lavczv_a0c0j(oldLinkVariable, newLinkVariable);
    return new MoveFeatureUp.FeatureSpecificMigrations(oldLinkVariable, newLinkVariable, refactorClosure);
  }

  private static SNode _quotation_createNode_lavczv_a0a0j(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7efL, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_3, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "oldLink");
    quotedNode_4 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_4.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_4, facade.createModelReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)"), facade.createNodeId("~SContainmentLink")));
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), quotedNode_4);
    quotedNode_5 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x24b2bf7ce1957615L, "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_5, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x24b2bf7ce1957615L, 0x24b2bf7ce1957616L, "conceptDeclaration"), (SNode) parameter_1);
    SNodeAccessUtil.setReferenceTarget(quotedNode_5, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x24b2bf7ce1957615L, 0x24b2bf7ce1957617L, "linkDeclaration"), (SNode) parameter_2);
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer"), quotedNode_5);
    return quotedNode_3;
  }
  private static SNode _quotation_createNode_lavczv_a0b0j(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7efL, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_3, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "newLink");
    quotedNode_4 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_4.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_4, facade.createModelReference("8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)"), facade.createNodeId("~SContainmentLink")));
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), quotedNode_4);
    quotedNode_5 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x24b2bf7ce1957615L, "jetbrains.mps.lang.smodel.structure.LinkIdRefExpression"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_5, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x24b2bf7ce1957615L, 0x24b2bf7ce1957616L, "conceptDeclaration"), (SNode) parameter_1);
    SNodeAccessUtil.setReferenceTarget(quotedNode_5, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x24b2bf7ce1957615L, 0x24b2bf7ce1957617L, "linkDeclaration"), (SNode) parameter_2);
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer"), quotedNode_5);
    return quotedNode_3;
  }
  private static SNode _quotation_createNode_lavczv_a0c0j(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    SNode quotedNode_6 = null;
    SNode quotedNode_7 = null;
    SNode quotedNode_8 = null;
    SNode quotedNode_9 = null;
    SNode quotedNode_10 = null;
    SNode quotedNode_11 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), null, null, false);
    quotedNode_4 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"), null, null, false);
    quotedNode_6 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"), null, null, false);
    quotedNode_8 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf09L, "jetbrains.mps.baseLanguage.structure.StaticMethodCall"), null, null, false);
    quotedNode_8.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), quotedNode_8, facade.createModelReference("r:00000000-0000-4000-0000-011c89590290(jetbrains.mps.lang.structure.plugin)"), facade.createNodeId("4853505765035305509")));
    quotedNode_8.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf09L, 0x10a7588b546L, "classConcept"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf09L, 0x10a7588b546L, "classConcept"), quotedNode_8, facade.createModelReference("r:00000000-0000-4000-0000-011c89590290(jetbrains.mps.lang.structure.plugin)"), facade.createNodeId("4853505765036703346")));
    quotedNode_9 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"), null, null, false);
    quotedNode_8.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), quotedNode_9);
    quotedNode_10 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_10, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), (SNode) parameter_1);
    quotedNode_8.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), quotedNode_10);
    quotedNode_11 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_11, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), (SNode) parameter_2);
    quotedNode_8.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), quotedNode_11);
    quotedNode_6.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), quotedNode_8);
    quotedNode_4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), quotedNode_6);
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf0522fL, "body"), quotedNode_4);
    quotedNode_5 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e94L, "jetbrains.mps.baseLanguage.structure.ParameterDeclaration"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_5, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "node");
    quotedNode_7 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType"), null, null, false);
    quotedNode_5.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), quotedNode_7);
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf02c34L, "parameter"), quotedNode_5);
    quotedNode_9.setReferenceTarget(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), quotedNode_5);
    return quotedNode_3;
  }
}
