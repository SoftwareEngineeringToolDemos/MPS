package jetbrains.mps.lang.core.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.core.behavior.LinkAttribute_BehaviorDescriptor;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.errors.BaseQuickFixProvider;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_LinkAttribute_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_LinkAttribute_NonTypesystemRule() {
  }
  public void applyRule(final SNode linkAttribute, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Iterable<SReferenceLink> links = SNodeOperations.getConcept(SNodeOperations.getParent(linkAttribute)).getReferenceLinks();
    SReferenceLink existingLink = Sequence.fromIterable(links).findFirst(new IWhereFilter<SReferenceLink>() {
      public boolean accept(SReferenceLink it) {
        return eq_efy873_a0a0a0a0a0a1a1(it, LinkAttribute_BehaviorDescriptor.getLink_id1avfQ4BEFo6.invoke(linkAttribute));
      }
    });
    if (existingLink == null) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(linkAttribute, "Reference Attribute is attached to not existing reference link: " + ((SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x129f3f612792fc5cL, "linkId")) == null ? SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x18649a5c82123514L, "linkRole")) : SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x129f3f612792fc5cL, "linkId")) + "(" + SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x18649a5c82123514L, "linkRole")) + ")")), "r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "5394253938404265823", null, errorTarget);
        {
          BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.core.typesystem.RemoveUndeclaredLinkAttribute_QuickFix", false);
          _reporter_2309309498.addIntentionProvider(intentionProvider);
        }
      }
    } else if (neq_efy873_a0a2a1(existingLink.getRoleName(), SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x18649a5c82123514L, "linkRole")))) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(linkAttribute, "Incorrect reference link name: " + SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x18649a5c82123514L, "linkRole")), "r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "5394253938404289649", null, errorTarget);
        {
          BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.core.typesystem.fix_LinkAttribute_name_QuickFix", false);
          _reporter_2309309498.addIntentionProvider(intentionProvider);
        }
      }
    } else if (SPropertyOperations.getString(linkAttribute, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, 0x129f3f612792fc5cL, "linkId")) == null) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportWarning(linkAttribute, "Link attribute should have link id", "r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "8689990658168031744", null, errorTarget);
        {
          BaseQuickFixProvider intentionProvider = new BaseQuickFixProvider("jetbrains.mps.lang.core.typesystem.add_LinkAttribute_id_QuickFix", false);
          _reporter_2309309498.addIntentionProvider(intentionProvider);
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, "jetbrains.mps.lang.core.structure.LinkAttribute");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static boolean eq_efy873_a0a0a0a0a0a1a1(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
  private static boolean neq_efy873_a0a2a1(Object a, Object b) {
    return !(((a != null ? a.equals(b) : a == b)));
  }
}
