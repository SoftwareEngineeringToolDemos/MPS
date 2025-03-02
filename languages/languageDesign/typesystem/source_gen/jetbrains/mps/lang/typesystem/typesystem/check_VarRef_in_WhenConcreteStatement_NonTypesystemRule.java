package jetbrains.mps.lang.typesystem.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_VarRef_in_WhenConcreteStatement_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_VarRef_in_WhenConcreteStatement_NonTypesystemRule() {
  }
  public void applyRule(final SNode variableReference, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode ancestor = SNodeOperations.getNodeAncestor(variableReference, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114177ce6cdL, "jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement"), false, false);
    if (ancestor != null) {
      SNode argument = SLinkOperations.getTarget(ancestor, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114177ce6cdL, 0x114177d39c2L, "argument"));
      SNode parent = variableReference;
      while (parent != null && parent != ancestor) {
        if (parent == argument) {
          return;
        } else {
          parent = SNodeOperations.getParent(parent);
        }
      }
      SNode variableDeclaration = SLinkOperations.getTarget(variableReference, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"));
      if (SNodeOperations.isInstanceOf(variableDeclaration, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) || SNodeOperations.isInstanceOf(variableDeclaration, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"))) {
        return;
      }
      if (variableDeclaration != null && !(ListSequence.fromList(SNodeOperations.getNodeAncestors(variableDeclaration, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114177ce6cdL, "jetbrains.mps.lang.typesystem.structure.WhenConcreteStatement"), false)).contains(ancestor))) {
        if (!(SPropertyOperations.getBoolean(variableDeclaration, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal")))) {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(variableReference, "variable is used inside WHEN CONCRETE block. should be declared final", "r:00000000-0000-4000-0000-011c895902b1(jetbrains.mps.lang.typesystem.typesystem)", "9215127012916007489", null, errorTarget);
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
