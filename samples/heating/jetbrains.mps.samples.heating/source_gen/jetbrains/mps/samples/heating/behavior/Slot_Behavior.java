package jetbrains.mps.samples.heating.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class Slot_Behavior {
  public static SNode call_getCustomizedSlot_935069066463578518(final SNode __thisNode__) {
    SNode dailyPlan = SNodeOperations.as(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aec4fL, "jetbrains.mps.samples.heating.structure.DailyPlan"));
    if (dailyPlan == null) {
      return null;
    }

    SNode found = null;
    List<SNode> visitedPlans = new ArrayList<SNode>();
    while (found == null && (SLinkOperations.getTarget(dailyPlan, MetaAdapterFactory.getContainmentLink(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aec4fL, 0xcfa085c9af881f8L, "customizes")) != null)) {
      ListSequence.fromList(visitedPlans).addElement(dailyPlan);
      dailyPlan = SLinkOperations.getTarget(SLinkOperations.getTarget(dailyPlan, MetaAdapterFactory.getContainmentLink(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aec4fL, 0xcfa085c9af881f8L, "customizes")), MetaAdapterFactory.getReferenceLink(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0xcfa085c9af5e830L, 0xcfa085c9af5e831L, "target"));
      if (ListSequence.fromList(visitedPlans).contains(dailyPlan)) {
        return null;
      }
      found = ListSequence.fromList(SLinkOperations.getChildren(dailyPlan, MetaAdapterFactory.getContainmentLink(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4644aa4ce08aec4fL, 0x4644aa4ce08aec57L, "items"))).findFirst(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SPropertyOperations.getInteger(it, MetaAdapterFactory.getProperty(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4f786d85fe288176L, 0x4f786d85fe28827cL, "start")) == SPropertyOperations.getInteger(__thisNode__, MetaAdapterFactory.getProperty(0xa7d67633e8d9473bL, 0x98ce995a7aa66941L, 0x4f786d85fe288176L, 0x4f786d85fe28827cL, "start"));
        }
      });
    }
    return found;
  }
  public static boolean call_isCustomizing_935069066463662362(SNode __thisNode__) {
    return (Slot_BehaviorDescriptor.getCustomizedSlot_idNU25Mr18Am.invoke(__thisNode__) != null);
  }
}
