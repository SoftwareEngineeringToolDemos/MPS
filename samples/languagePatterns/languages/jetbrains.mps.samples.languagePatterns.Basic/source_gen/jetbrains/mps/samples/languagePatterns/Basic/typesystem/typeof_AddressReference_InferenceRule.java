package jetbrains.mps.samples.languagePatterns.Basic.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.typesystem.inference.EquationInfo;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

public class typeof_AddressReference_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_AddressReference_InferenceRule() {
  }
  public void applyRule(final SNode addressReference, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    {
      SNode _nodeToCheck_1029348928467 = addressReference;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:57b97f02-ce1d-4dd3-9cf3-3248a9233d2c(jetbrains.mps.samples.languagePatterns.Basic.typesystem)", "5235060235298134193", 0, null);
      typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:57b97f02-ce1d-4dd3-9cf3-3248a9233d2c(jetbrains.mps.samples.languagePatterns.Basic.typesystem)", "5235060235298133827", true), (SNode) _quotation_createNode_qswn2l_a0a0b(), _info_12389875345);
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x7a6f7ef73988464bL, 0x8cc51182671c136eL, 0x48a6ab8c26b53535L, "jetbrains.mps.samples.languagePatterns.Basic.structure.AddressReference");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static SNode _quotation_createNode_qswn2l_a0a0b() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"), null, null, false);
    return quotedNode_1;
  }
}
