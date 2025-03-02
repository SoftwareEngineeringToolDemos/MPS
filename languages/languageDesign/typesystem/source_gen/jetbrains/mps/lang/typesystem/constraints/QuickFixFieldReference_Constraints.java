package jetbrains.mps.lang.typesystem.constraints;

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
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

public class QuickFixFieldReference_Constraints extends BaseConstraintsDescriptor {
  public QuickFixFieldReference_Constraints() {
    super(MetaIdFactory.conceptId(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x70489eee8479b55dL));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x70489eee8479b55dL, 0x70489eee8479b55eL), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x70489eee8479b55dL, 0x70489eee8479b55eL), this) {
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
            List<SNode> nodes = new ArrayList<SNode>();
            SNode quickFix = SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x11b36163865L, "jetbrains.mps.lang.typesystem.structure.TypesystemQuickFix"), false, false);
            if ((quickFix != null)) {
              ListSequence.fromList(nodes).addSequence(ListSequence.fromList(SLinkOperations.getChildren(quickFix, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x11b36163865L, 0x70489eee847aabdfL, "quickFixField"))));
            }
            return nodes;
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_rgybaw_a0a1a0a0a1a0b0a1a1;
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_rgybaw_a0a1a0a0a1a0b0a1a1 = new SNodePointer("r:00000000-0000-4000-0000-011c895902ae(jetbrains.mps.lang.typesystem.constraints)", "8090891477833132964");
}
