package jetbrains.mps.baseLanguage.math.constraints;

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
import jetbrains.mps.smodel.runtime.base.BaseReferenceScopeProvider;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.baseLanguage.math.behavior.MathSymbol_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

public class MathSymbolIndexReference_Constraints extends BaseConstraintsDescriptor {
  public MathSymbolIndexReference_Constraints() {
    super(MetaIdFactory.conceptId(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x11fe0d91491L));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x11fe0d91491L, 0x11fe0d95bdfL), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x11fe0d91491L, 0x11fe0d95bdfL), this) {
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
            SNode ms = SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x11fe0ca1899L, "jetbrains.mps.baseLanguage.math.structure.MathSymbol"), true, false);
            List<SNode> msi = MathSymbol_BehaviorDescriptor.getEmptyIndexList_idi0Okz4g.invoke(ms);
            MathSymbol_BehaviorDescriptor.getVisibleIndices_idhZx_LLY.invoke(ms, _context.getEnclosingNode(), msi);
            return msi;
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_cdbkmw_a0a1a0a0a1a0b0a1a1;
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_cdbkmw_a0a1a0a0a1a0b0a1a1 = new SNodePointer("r:d37b3f1e-89c7-4936-a6de-207bf5ae7643(jetbrains.mps.baseLanguage.math.constraints)", "1237825752099");
}
