package decl.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptDeclMigrationData_Component = new ConceptDescriptorBuilder("decl.structure.DeclMigrationData_Component", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x1b931c975a732860L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(1986963296983658349L, "oldId"), new ConceptDescriptorBuilder.Prop(1986963296983658363L, "newId")).properties("oldId", "newId").create();
  /*package*/ final ConceptDescriptor myConceptDeclMigrationData_WholeModule = new ConceptDescriptorBuilder("decl.structure.DeclMigrationData_WholeModule", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x1b931c975a732f8bL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).childDescriptors(new ConceptDescriptorBuilder.Link(1986963296983658394L, "entry", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x1b931c975a732860L), true, true, false)).children(new String[]{"entry"}, new boolean[]{true}).create();
  /*package*/ final ConceptDescriptor myConceptNewComponent = new ConceptDescriptorBuilder("decl.structure.NewComponent", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x6aff2c1049329d71L)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).childDescriptors(new ConceptDescriptorBuilder.Link(7709929535540731252L, "member", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x6aff2c104932a602L), true, true, false)).children(new String[]{"member"}, new boolean[]{true}).alias("new component", "").create();
  /*package*/ final ConceptDescriptor myConceptNewComponentMember = new ConceptDescriptorBuilder("decl.structure.NewComponentMember", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x6aff2c104932a602L)).interface_().create();
  /*package*/ final ConceptDescriptor myConceptOldComponent = new ConceptDescriptorBuilder("decl.structure.OldComponent", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x6aff2c1049316cdaL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L)).childDescriptors(new ConceptDescriptorBuilder.Link(7709929535540673319L, "member", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x6aff2c104931bb26L), true, true, false)).children(new String[]{"member"}, new boolean[]{true}).alias("old component", "").create();
  /*package*/ final ConceptDescriptor myConceptOldComponentMember = new ConceptDescriptorBuilder("decl.structure.OldComponentMember", MetaIdFactory.conceptId(0x9de7c5ceea6f4fb4L, 0xa7ba45e62b53cbadL, 0x6aff2c104931bb26L)).interface_().create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptDeclMigrationData_Component, myConceptDeclMigrationData_WholeModule, myConceptNewComponent, myConceptNewComponentMember, myConceptOldComponent, myConceptOldComponentMember);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0k, conceptFqName)) {
      case 0:
        return myConceptDeclMigrationData_Component;
      case 1:
        return myConceptDeclMigrationData_WholeModule;
      case 2:
        return myConceptNewComponent;
      case 3:
        return myConceptNewComponentMember;
      case 4:
        return myConceptOldComponent;
      case 5:
        return myConceptOldComponentMember;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0k = new String[]{"decl.structure.DeclMigrationData_Component", "decl.structure.DeclMigrationData_WholeModule", "decl.structure.NewComponent", "decl.structure.NewComponentMember", "decl.structure.OldComponent", "decl.structure.OldComponentMember"};
}
