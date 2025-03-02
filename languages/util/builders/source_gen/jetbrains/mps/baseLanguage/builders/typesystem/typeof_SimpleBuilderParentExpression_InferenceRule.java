package jetbrains.mps.baseLanguage.builders.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.baseLanguage.builders.behavior.BaseSimpleBuilderDeclaration_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class typeof_SimpleBuilderParentExpression_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_SimpleBuilderParentExpression_InferenceRule() {
  }
  public void applyRule(final SNode expression, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode builder = BaseSimpleBuilderDeclaration_BehaviorDescriptor.getContextDeclaration_id5rdgdYBzN9n.invoke(SNodeOperations.getNodeAncestor(expression, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78d35b1L, "jetbrains.mps.baseLanguage.builders.structure.BaseSimpleBuilderDeclaration"), false, false));
    {
      SNode _nodeToCheck_1029348928467 = expression;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:35ef73a5-9726-4c66-9d79-f51c95cc08d6(jetbrains.mps.baseLanguage.builders.typesystem)", "7288041816792806060", 0, null);
      typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:35ef73a5-9726-4c66-9d79-f51c95cc08d6(jetbrains.mps.baseLanguage.builders.typesystem)", "7288041816792806057", true), (SNode) SLinkOperations.getTarget(builder, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463dbda0bL, "type")), _info_12389875345);
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1d353cL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderParentExpression");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
