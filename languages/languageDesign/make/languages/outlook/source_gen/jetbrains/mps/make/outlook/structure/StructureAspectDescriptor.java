package jetbrains.mps.make.outlook.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptOutlook = new ConceptDescriptorBuilder("jetbrains.mps.make.outlook.structure.Outlook", MetaIdFactory.conceptId(0xdc54e1b286b349d2L, 0x9014a76af17af22aL, 0x4dd42fcf00ba54d2L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).childDescriptors(new ConceptDescriptorBuilder.Link(5608160002100058529L, "facet", MetaIdFactory.conceptId(0x696c11654a59463bL, 0xbc5d902caab85dd0L, 0x5979ed6d2b21b2f2L), true, true, false)).children(new String[]{"facet"}, new boolean[]{true}).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptOutlook);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0f, conceptFqName)) {
      case 0:
        return myConceptOutlook;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0f = new String[]{"jetbrains.mps.make.outlook.structure.Outlook"};
}
