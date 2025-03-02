package jetbrains.mps.baseLanguage.collections.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.baseLanguage.behavior.IOperation_BehaviorDescriptor;
import jetbrains.mps.typesystem.inference.EquationInfo;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public class typeof_AsUnmodifiableOperation_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_AsUnmodifiableOperation_InferenceRule() {
  }
  public void applyRule(final SNode auo, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    final SNode ELEMENT_typevar_2526372162255517322 = typeCheckingContext.createNewRuntimeTypesVariable();
    {
      SNode _nodeToCheck_1029348928467 = IOperation_BehaviorDescriptor.getOperand_idhEwIP$m.invoke(auo);
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)", "7668447476859018469", 0, null);
      typeCheckingContext.createGreaterThanInequality((SNode) _quotation_createNode_jqf8bk_a0b0b(typeCheckingContext.getRepresentative(ELEMENT_typevar_2526372162255517322)), (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)", "7668447476859120404", true), false, true, _info_12389875345);
    }
    {
      SNode _nodeToCheck_1029348928467 = auo;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)", "2526372162255517331", 0, null);
      typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)", "2526372162255517328", true), (SNode) typeCheckingContext.typeOf(IOperation_BehaviorDescriptor.getOperand_idhEwIP$m.invoke(auo), "r:00000000-0000-4000-0000-011c8959032b(jetbrains.mps.baseLanguage.collections.typesystem)", "2526372162255517336", true), _info_12389875345);
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x230f7a18a5abce80L, "jetbrains.mps.baseLanguage.collections.structure.AsUnmodifiableOperation");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static SNode _quotation_createNode_jqf8bk_a0b0b(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, "jetbrains.mps.baseLanguage.collections.structure.SequenceType"), null, null, false);
    quotedNode_3 = (SNode) parameter_1;
    if (quotedNode_3 != null) {
      quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x10c260e9444L, 0x10c260ee40eL, "elementType"), HUtil.copyIfNecessary(quotedNode_3));
    }
    return quotedNode_2;
  }
}
