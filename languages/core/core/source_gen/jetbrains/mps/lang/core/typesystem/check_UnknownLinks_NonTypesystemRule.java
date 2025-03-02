package jetbrains.mps.lang.core.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.link.SContainmentLinkAdapter;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.errors.BaseQuickFixProvider;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.internal.collections.runtime.Sequence;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.smodel.adapter.structure.ref.SReferenceLinkAdapter;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.property.SPropertyAdapter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class check_UnknownLinks_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_UnknownLinks_NonTypesystemRule() {
  }
  public void applyRule(final SNode node, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {

    for (SNode child : ListSequence.fromList(SNodeOperations.getChildren(node)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return !(SNodeOperations.isAttribute(it));
      }
    })) {
      SContainmentLink link = child.getContainmentLink();
      if (((SContainmentLinkAdapter) link).getLinkDescriptor() == null) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(node, "Child in undeclared role \"" + link.getRoleName() + "\"", "r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "1556973682253868925", null, errorTarget);
          {
            BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.core.typesystem.RemoveUnknownChildren_QuickFix", false);
            intentionProvider.putArgument("role", link);
            _reporter_2309309498.addIntentionProvider(intentionProvider);
          }
        }
      }
    }

    for (SReference reference : Sequence.fromIterable(SNodeOperations.getReferences(node))) {
      SReferenceLink link = reference.getLink();
      if (((SReferenceLinkAdapter) link).getReferenceDescriptor() == null) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(node, "Reference in undeclared role \"" + link.getRoleName() + "\"", "r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "1556973682253870183", null, errorTarget);
          {
            BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.core.typesystem.RemoveUnknownReference_QuickFix", false);
            intentionProvider.putArgument("role", link);
            _reporter_2309309498.addIntentionProvider(intentionProvider);
          }
        }
      }
    }

    for (SProperty prop : Sequence.fromIterable(node.getProperties())) {
      if (((SPropertyAdapter) prop).getPropertyDescriptor() == null) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(node, "Undeclared property \"" + prop.getName() + "\"", "r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "2889243336884177777", null, errorTarget);
          {
            BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.core.typesystem.RemoveUndeclaredProperty_QuickFix", false);
            intentionProvider.putArgument("property", prop);
            _reporter_2309309498.addIntentionProvider(intentionProvider);
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
