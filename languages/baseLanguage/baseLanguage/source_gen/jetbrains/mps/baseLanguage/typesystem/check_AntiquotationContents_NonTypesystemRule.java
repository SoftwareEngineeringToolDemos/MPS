package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.structure.behavior.AbstractConceptDeclaration_BehaviorDescriptor;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_AntiquotationContents_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_AntiquotationContents_NonTypesystemRule() {
  }
  public void applyRule(final SNode antiquotation, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode contentsType = TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(antiquotation, MetaAdapterFactory.getContainmentLink(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x1168c104657L, "expression")));
    if (SNodeOperations.isInstanceOf(contentsType, MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType"))) {
      if (AbstractConceptDeclaration_BehaviorDescriptor.isSubconceptOf_id73yVtVlWOga.invoke(SLinkOperations.getTarget(SNodeOperations.cast(contentsType, MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType")), MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, 0x1090e46ca51L, "concept")), SNodeOperations.getNode("r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)", "1107461130800"))) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(SLinkOperations.getTarget(antiquotation, MetaAdapterFactory.getContainmentLink(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x1168c104657L, "expression")), "Substitution of a classifier here is probably an error", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "1228301999219", null, errorTarget);
          {
            BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.baseLanguage.typesystem.ReplaceClassAntiquotationWithClassifierType_QuickFix", false);
            intentionProvider.putArgument("antiquotation", antiquotation);
            _reporter_2309309498.addIntentionProvider(intentionProvider);
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104658L, "jetbrains.mps.lang.quotation.structure.Antiquotation");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
