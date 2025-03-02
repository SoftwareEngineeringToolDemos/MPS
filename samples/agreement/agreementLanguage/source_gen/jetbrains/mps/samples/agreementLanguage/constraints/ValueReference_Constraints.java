package jetbrains.mps.samples.agreementLanguage.constraints;

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
import jetbrains.mps.smodel.search.SubnodesSearchScope;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

public class ValueReference_Constraints extends BaseConstraintsDescriptor {
  public ValueReference_Constraints() {
    super(MetaIdFactory.conceptId(0x144f7012c2d543beL, 0xbe2b4bfb7dff6503L, 0x102eaa8102cL));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0x144f7012c2d543beL, 0xbe2b4bfb7dff6503L, 0x102eaa8102cL, 0x102eaa8542bL), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0x144f7012c2d543beL, 0xbe2b4bfb7dff6503L, 0x102eaa8102cL, 0x102eaa8542bL), this) {
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
            SNode plan = SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0x144f7012c2d543beL, 0xbe2b4bfb7dff6503L, 0x102dbe79bfeL, "jetbrains.mps.samples.agreementLanguage.structure.Plan"), true, false);
            return new SubnodesSearchScope(plan);
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_r7tp2g_a0a1a0a0a1a0b0a1a1;
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_r7tp2g_a0a1a0a0a1a0b0a1a1 = new SNodePointer("r:00000000-0000-4000-0000-011c89590408(jetbrains.mps.samples.agreementLanguage.constraints)", "1214253543334");
}
