package jetbrains.mps.baseLanguage.classifiers.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class SuperClassifierExpresson_Behavior {
  public static SNode call_getClassifier_1217434044387(SNode __thisNode__) {
    return IClassifier_BehaviorDescriptor.getContextClassifier_idhEwJim4.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getInterfaceConcept(0x443f4c36fcf54eb6L, 0x95008d06ed259e3eL, 0x118bc6b2af5L, "jetbrains.mps.baseLanguage.classifiers.structure.IClassifier").getDeclarationNode()), __thisNode__);
  }
}
