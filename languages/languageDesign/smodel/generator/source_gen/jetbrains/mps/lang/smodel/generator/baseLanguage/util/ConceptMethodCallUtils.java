package jetbrains.mps.lang.smodel.generator.baseLanguage.util;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.behavior.Node_ConceptMethodCall_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import jetbrains.mps.core.aspects.behaviour.C3StarMethodResolutionOrder;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.structure.behavior.AbstractConceptDeclaration_BehaviorDescriptor;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.baseLanguage.behavior.BaseMethodDeclaration_BehaviorDescriptor;

public class ConceptMethodCallUtils {
  private ConceptMethodCallUtils() {
  }

  public static SNode getNearestOverridenMethod(SNode methodCall) {
    if (!(Node_ConceptMethodCall_BehaviorDescriptor.isVirtualMethodCall_idhEwIWlZ.invoke(methodCall))) {
      return SLinkOperations.getTarget(methodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
    }
    SNode behavior = SNodeOperations.getNodeAncestor(methodCall, MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, "jetbrains.mps.lang.behavior.structure.ConceptBehavior"), false, false);
    SAbstractConcept concept = SNodeOperations.asSConcept(SLinkOperations.getTarget(behavior, MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, 0x11d43447b1fL, "concept")));
    List<SAbstractConcept> ancestors = new C3StarMethodResolutionOrder().linearize(concept);
    for (SAbstractConcept ancestor : ListSequence.fromList(ancestors)) {
      if (ancestor == concept) {
        continue;
      }
      SNode method = findOverridingMethodInConcept(SNodeOperations.cast(ancestor.getDeclarationNode(), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration")), SLinkOperations.getTarget(methodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")));
      if (method != null) {
        return method;
      }
    }
    throw new IllegalArgumentException("Method " + SLinkOperations.getTarget(methodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")) + " could not be found");
  }

  private static SNode findOverridingMethodInConcept(SNode concept, SNode methodDecl) {
    SNode behavior = SNodeOperations.cast(AbstractConceptDeclaration_BehaviorDescriptor.findConceptAspect_id7g4OXB0ykew.invoke(concept, LanguageAspect.BEHAVIOR), MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, "jetbrains.mps.lang.behavior.structure.ConceptBehavior"));
    for (SNode method : ListSequence.fromList(SLinkOperations.getChildren(behavior, MetaAdapterFactory.getContainmentLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL, 0x11d43447b25L, "method")))) {
      if (!(SPropertyOperations.getBoolean(method, MetaAdapterFactory.getProperty(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x11d43480580L, "isVirtual"))) && SLinkOperations.getTarget(method, MetaAdapterFactory.getReferenceLink(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x11d4348057fL, "overriddenMethod")) == null) {
        continue;
      }
      SNode baseMethod = BaseMethodDeclaration_BehaviorDescriptor.getBaseMethod_id4mmymf_0z7l.invoke(method);
      if (baseMethod == null) {
        baseMethod = method;
      }
      if (baseMethod.getNodeId() == methodDecl.getNodeId()) {
        return method;
      }
    }
    return null;
  }
}
