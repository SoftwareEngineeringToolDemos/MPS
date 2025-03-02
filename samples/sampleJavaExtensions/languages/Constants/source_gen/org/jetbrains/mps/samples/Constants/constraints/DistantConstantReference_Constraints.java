package org.jetbrains.mps.samples.Constants.constraints;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.scope.SimpleRoleScope;
import jetbrains.mps.smodel.SNodePointer;

public class DistantConstantReference_Constraints extends BaseConstraintsDescriptor {
  public DistantConstantReference_Constraints() {
    super(MetaIdFactory.conceptId(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x254b015f7d06d11fL));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x37600150f5294665L, 0x37600150f5294666L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x37600150f5294665L, 0x37600150f5294666L), this) {
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
            return breakingNode_3o2gse_a0a0a0a0a1a0b0a1a1;
          }
          @Override
          public Scope createScope(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
            if (_context.getContextNode() == null || !(SNodeOperations.isInstanceOf(_context.getContextNode(), MetaAdapterFactory.getConcept(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x254b015f7d06d11fL, "org.jetbrains.mps.samples.Constants.structure.DistantConstantReference"))) || SLinkOperations.getTarget(SNodeOperations.cast(_context.getContextNode(), MetaAdapterFactory.getConcept(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x254b015f7d06d11fL, "org.jetbrains.mps.samples.Constants.structure.DistantConstantReference")), MetaAdapterFactory.getReferenceLink(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x254b015f7d06d11fL, 0x254b015f7d06d217L, "targetSetOfConstants")) == null) {
              return null;
            }
            return SimpleRoleScope.forNamedElements(SLinkOperations.getTarget(SNodeOperations.cast(_context.getContextNode(), MetaAdapterFactory.getConcept(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x254b015f7d06d11fL, "org.jetbrains.mps.samples.Constants.structure.DistantConstantReference")), MetaAdapterFactory.getReferenceLink(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x254b015f7d06d11fL, 0x254b015f7d06d217L, "targetSetOfConstants")), MetaAdapterFactory.getContainmentLink(0xd40d465dded40d0L, 0x8d4c2c6d177f60d7L, 0x14be6cdec1861417L, 0x14be6cdec1861428L, "constants"));
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_3o2gse_a0a0a0a0a1a0b0a1a1 = new SNodePointer("r:af985d7a-c914-498c-96e5-c3fe0f4471b1(org.jetbrains.mps.samples.Constants.constraints)", "2687243112287755566");
}
