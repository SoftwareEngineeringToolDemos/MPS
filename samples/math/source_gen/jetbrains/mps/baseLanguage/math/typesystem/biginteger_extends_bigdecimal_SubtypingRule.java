package jetbrains.mps.baseLanguage.math.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.SubtypingRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.ISubtypingRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class biginteger_extends_bigdecimal_SubtypingRule extends SubtypingRule_Runtime implements ISubtypingRule_Runtime {
  public biginteger_extends_bigdecimal_SubtypingRule() {
  }
  public SNode getSubOrSuperType(SNode bigIntegerType, TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    return SNodeOperations.copyNode(MathTypeUtil.qBigDecimal);
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x1200944b8b7L, "jetbrains.mps.baseLanguage.math.structure.BigIntegerType");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean isWeak() {
    return false;
  }
}
