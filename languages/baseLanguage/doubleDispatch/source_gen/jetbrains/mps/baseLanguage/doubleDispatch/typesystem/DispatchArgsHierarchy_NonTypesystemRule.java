package jetbrains.mps.baseLanguage.doubleDispatch.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class DispatchArgsHierarchy_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public DispatchArgsHierarchy_NonTypesystemRule() {
  }
  public void applyRule(final SNode classConcept, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Iterable<SNode> instMethods = Sequence.fromIterable(Classifier_BehaviorDescriptor.methods_id4_LVZ3pBKCn.invoke(classConcept)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return DispatchUtil.isReadyMethod(it);
      }
    });
    Iterable<SNode> statMethods = Sequence.fromIterable(Classifier_BehaviorDescriptor.methods_id4_LVZ3pBKCn.invoke(classConcept)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return DispatchUtil.isReadyMethod(it);
      }
    });


    if (Sequence.fromIterable(instMethods).isEmpty() && Sequence.fromIterable(statMethods).isEmpty()) {
      return;
    }

    DispatchMethodCollector collector = new DispatchMethodCollector(classConcept);
    Iterable<DispatchGroup> groups = collector.getGroups();

    for (DispatchGroup g : Sequence.fromIterable(groups)) {
      DispatchGroup.Error err = g.check();

      if (err != null) {
        String msg = err.getMessage();
        for (SNode m : Sequence.fromIterable(err.getMethods())) {
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(ListSequence.fromList(SLinkOperations.getChildren(m, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).first(), msg, "r:7a94bb66-9653-4830-af67-903eb2cfbd29(jetbrains.mps.baseLanguage.doubleDispatch.typesystem)", "7139749370073616981", null, errorTarget);
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
