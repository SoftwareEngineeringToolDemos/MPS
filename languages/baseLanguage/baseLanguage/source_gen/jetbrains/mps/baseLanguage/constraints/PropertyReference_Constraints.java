package jetbrains.mps.baseLanguage.constraints;

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
import jetbrains.mps.smodel.runtime.base.BaseScopeProvider;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.scope.EmptyScope;
import jetbrains.mps.lang.scopes.runtime.NamedElementsScope;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.IClassifierType_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.smodel.SNodePointer;

public class PropertyReference_Constraints extends BaseConstraintsDescriptor {
  public PropertyReference_Constraints() {
    super(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b821eaaeL));
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
    references.put(MetaIdFactory.refId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b821eaaeL, 0x117b823ed57L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b821eaaeL, 0x117b823ed57L), this) {
      @Override
      public boolean hasOwnScopeProvider() {
        return true;
      }
      @Nullable
      @Override
      public ReferenceScopeProvider getScopeProvider() {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_57atcm_a0a0a0a0a1a0b0a1a3;
          }
          @Override
          public Scope createScope(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
            {
              if (!(SNodeOperations.isInstanceOf(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")))) {
                return null;
              }
              SNode instance = SLinkOperations.getTarget(SNodeOperations.cast(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"));
              SNode classifierType = TypeChecker.getInstance().getRuntimeSupport().coerce_(TypeChecker.getInstance().getTypeOf(instance), HUtil.createMatchingPatternByConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), false);
              if ((SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")) == null)) {
                return new EmptyScope();
              }
              final SNode enclosingProperty = SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, "jetbrains.mps.baseLanguage.structure.Property"), false, false);
              return new NamedElementsScope(Sequence.fromIterable(IClassifierType_BehaviorDescriptor.getVisibleMembers_id5laDzmpBPtZ.invoke(classifierType, _context.getContextNode())).where(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, "jetbrains.mps.baseLanguage.structure.Property"));
                }
              }).select(new ISelector<SNode, SNode>() {
                public SNode select(SNode it) {
                  return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, "jetbrains.mps.baseLanguage.structure.Property"));
                }
              }).where(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return enclosingProperty == null || neq_57atcm_a0a0a0a0a0a0a5a0a1a0a0a1a0b0a1a3(it, enclosingProperty);
                }
              }));
            }
          }
        };
      }
    });
    return references;
  }
  public static boolean static_canBeAChild(SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    SNode ancestor = SNodeOperations.getNodeAncestor(parentNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, "jetbrains.mps.baseLanguage.structure.Property"), false, false);
    if (ancestor != null) {
      if (eq_57atcm_a0a0b0e(SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b821eaaeL, 0x117b823ed57L, "property")), ancestor)) {
        return false;
      }
    }
    return true;
  }
  private static boolean neq_57atcm_a0a0a0a0a0a0a5a0a1a0a0a1a0b0a1a3(Object a, Object b) {
    return !(((a != null ? a.equals(b) : a == b)));
  }
  private static boolean eq_57atcm_a0a0b0e(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)", "8045725502516138878");
  private static SNodePointer breakingNode_57atcm_a0a0a0a0a1a0b0a1a3 = new SNodePointer("r:00000000-0000-4000-0000-011c895902c1(jetbrains.mps.baseLanguage.constraints)", "7898359107948137292");
}
