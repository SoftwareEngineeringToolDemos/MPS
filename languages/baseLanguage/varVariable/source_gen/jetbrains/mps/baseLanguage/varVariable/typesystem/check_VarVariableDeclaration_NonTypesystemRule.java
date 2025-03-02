package jetbrains.mps.baseLanguage.varVariable.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_VarVariableDeclaration_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_VarVariableDeclaration_NonTypesystemRule() {
  }
  public void applyRule(final SNode declaration, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    if (!((SLinkOperations.getTarget(declaration, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")) != null))) {
      MessageTarget errorTarget = new NodeMessageTarget();
      IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(declaration, "Initializer should not be empty", "r:376aaabb-efff-403a-9afa-fc63fa67c6b3(jetbrains.mps.baseLanguage.varVariable.typesystem)", "8067700594454596069", null, errorTarget);
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x515552c7fcc04ab4L, 0x97892f3c49344e85L, 0x11ff0aa3699L, "jetbrains.mps.baseLanguage.varVariable.structure.VarVariableDeclaration");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
