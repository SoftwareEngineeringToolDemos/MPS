package jetbrains.mps.execution.settings.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.execution.settings.behavior.PersistentConfiguration_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SNodePointer;

public class EditorExpression_Constraints extends BaseConstraintsDescriptor {
  public EditorExpression_Constraints() {
    super(MetaIdFactory.conceptId(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91011cL));
  }
  @Override
  public boolean hasOwnCanBeChildMethod() {
    return true;
  }
  @Override
  public boolean canBeChild(@Nullable SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext, @Nullable final CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAChild(node, parentNode, link, childConcept, operationContext);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeChildBreakingPoint);
    }

    return result;
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91011cL, 0xd244b712f91011dL), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91011cL, 0xd244b712f91011dL), this) {
      @Override
      public boolean hasOwnScopeProvider() {
        return true;
      }
      @Nullable
      @Override
      public ReferenceScopeProvider getScopeProvider() {
        return new BaseReferenceScopeProvider() {
          @Override
          public Object createSearchScopeOrListOfNodes(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
            return ListSequence.fromList(PersistentConfiguration_BehaviorDescriptor.getContextPersistentProperties_idO$iR4J$g22.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910020L, "jetbrains.mps.execution.settings.structure.PersistentConfiguration").getDeclarationNode()), _context.getEnclosingNode())).where(new IWhereFilter<SNode>() {
              public boolean accept(SNode it) {
                return TypeChecker.getInstance().getSubtypingManager().isSubtype(SLinkOperations.getTarget(it, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), createTemplatePersistentConfigurationType_lq9qwe_b0a0a0a0a0a0());
              }
            });
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_lq9qwe_a0a1a0a0a1a0b0a1a3;
          }
        };
      }
    });
    return references;
  }
  public static boolean static_canBeAChild(SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    return (SNodeOperations.getNodeAncestor(parentNode, MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91012dL, "jetbrains.mps.execution.settings.structure.EditorOperationDeclaration"), true, false) != null);
  }
  private static SNode createTemplatePersistentConfigurationType_lq9qwe_b0a0a0a0a0a0() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f9100fdL, "jetbrains.mps.execution.settings.structure.TemplatePersistentConfigurationType"), null, null, false);
    return n1;
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:26cd452e-c5c2-4d47-ad13-dda4362e8616(jetbrains.mps.execution.settings.constraints)", "5365453833390602832");
  private static SNodePointer breakingNode_lq9qwe_a0a1a0a0a1a0b0a1a3 = new SNodePointer("r:26cd452e-c5c2-4d47-ad13-dda4362e8616(jetbrains.mps.execution.settings.constraints)", "946964771156067130");
}
