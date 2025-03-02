package jetbrains.mps.baseLanguage.lightweightdsl.actions;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.Collections;
import jetbrains.mps.baseLanguage.lightweightdsl.util.DSLDescriptorUtil;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.lightweightdsl.behavior.DSLDescriptor_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.baseLanguage.lightweightdsl.behavior.DSLClassMember_BehaviorDescriptor;

public class SubstituteUtil {
  public static Iterable<SNode> getMembers2Substitute(SAbstractConcept memberConcept, SNode node) {
    if (!(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")))) {
      return Collections.emptyList();
    }

    final SNode classNode = SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"));
    SNode descr = DSLDescriptorUtil.getDescriptor(classNode);
    if (descr == null) {
      return Collections.emptyList();
    }

    return Sequence.fromIterable(SNodeOperations.ofConcept(DSLDescriptor_BehaviorDescriptor.getClassLikeMembers_id2iCqkkxuhoj.invoke(descr), SNodeOperations.asSConcept(memberConcept))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode md) {
        if (DSLClassMember_BehaviorDescriptor.isMultiple_id1QReUKIGS9B.invoke(md)) {
          return true;
        }
        return Sequence.fromIterable(DSLClassMember_BehaviorDescriptor.find_id2gzehMfi1$l.invoke(md, classNode)).isEmpty();
      }
    });
  }

  public static Iterable<SNode> getAllMembers(SAbstractConcept memberConcept, SNode node) {
    if (!(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")))) {
      return Collections.emptyList();
    }

    SNode classNode = SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"));
    SNode descr = DSLDescriptorUtil.getDescriptor(classNode);
    if (descr == null) {
      return Collections.emptyList();
    }

    return SNodeOperations.ofConcept(DSLDescriptor_BehaviorDescriptor.getClassLikeMembers_id2iCqkkxuhoj.invoke(descr), SNodeOperations.asSConcept(memberConcept));
  }
}
