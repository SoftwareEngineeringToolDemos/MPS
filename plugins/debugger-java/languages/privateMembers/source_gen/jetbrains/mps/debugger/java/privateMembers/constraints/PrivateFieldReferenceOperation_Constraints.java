package jetbrains.mps.debugger.java.privateMembers.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseScopeProvider;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.scope.EmptyScope;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.IClassifierType_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.baseLanguage.behavior.IClassifierMember_BehaviorDescriptor;
import jetbrains.mps.lang.scopes.runtime.NamedElementsScope;
import jetbrains.mps.smodel.SNodePointer;

public class PrivateFieldReferenceOperation_Constraints extends BaseConstraintsDescriptor {
  public PrivateFieldReferenceOperation_Constraints() {
    super(MetaIdFactory.conceptId(0x802088974572437dL, 0xb50e8f050cba9566L, 0x5eb820f649bb5379L));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, 0x116b484a653L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b483d77aL, 0x116b484a653L), this) {
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
            return breakingNode_cgwyr9_a0a0a0a0a1a0b0a1a1;
          }
          @Override
          public Scope createScope(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
            {
              // fields declared in hierarhy of class specified by left expression. only applicable to expressions of classifier-type 
              if (!(SNodeOperations.isInstanceOf(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")))) {
                return new EmptyScope();
              }
              SNode instance = SLinkOperations.getTarget(SNodeOperations.as(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"));

              final SNode classifierType = TypeChecker.getInstance().getRuntimeSupport().coerce_(TypeChecker.getInstance().getTypeOf(instance), HUtil.createMatchingPatternByConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), false);
              if ((SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")) == null)) {
                return new EmptyScope();
              }

              Iterable<SNode> privateFields = (Iterable<SNode>) Sequence.fromIterable(IClassifierType_BehaviorDescriptor.getMembers_id6r77ob2V1Fr.invoke(classifierType)).where(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration"));
                }
              }).where(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return !(IClassifierMember_BehaviorDescriptor.isVisible_id5laDzmpBPv8.invoke(it, classifierType, _context.getContextNode()));
                }
              });
              return new NamedElementsScope(privateFields);
            }
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_cgwyr9_a0a0a0a0a1a0b0a1a1 = new SNodePointer("r:c8ec5cc5-f63f-40c3-ab3e-3fbb9a638ceb(jetbrains.mps.debugger.java.privateMembers.constraints)", "6405552206789337616");
}
