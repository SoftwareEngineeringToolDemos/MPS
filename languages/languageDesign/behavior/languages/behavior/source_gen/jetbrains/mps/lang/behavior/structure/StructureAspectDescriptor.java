package jetbrains.mps.lang.behavior.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.runtime.StaticScope;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptConceptBehavior = new ConceptDescriptorBuilder("jetbrains.mps.lang.behavior.structure.ConceptBehavior", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43447b1aL)).super_("jetbrains.mps.lang.core.structure.BaseConcept").super_(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL)).parents("jetbrains.mps.lang.core.structure.BaseConcept", "jetbrains.mps.lang.core.structure.INamedConcept", "jetbrains.mps.baseLanguage.structure.IMemberContainer", "jetbrains.mps.baseLanguage.structure.IExtractMethodAvailable", "jetbrains.mps.lang.structure.structure.IConceptAspect").parentIds(MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL), MetaIdFactory.conceptId(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L), MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11638b31955L), MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11c60bb0a14L), MetaIdFactory.conceptId(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x24614259e94f0c84L)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(1225194240799L, "concept", MetaIdFactory.conceptId(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL), true)).references("concept").childDescriptors(new ConceptDescriptorBuilder.Link(1225194240801L, "constructor", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43471eedL), false, false, false), new ConceptDescriptorBuilder.Link(1225194240805L, "method", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL), true, true, false)).children(new String[]{"constructor", "method"}, new boolean[]{false, true}).alias("Concept Behavior", "").create();
  /*package*/ final ConceptDescriptor myConceptConceptConstructorDeclaration = new ConceptDescriptorBuilder("jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d43471eedL)).super_("jetbrains.mps.baseLanguage.structure.ConceptFunction").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L)).parents("jetbrains.mps.baseLanguage.structure.ConceptFunction").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x108bbca0f48L)).staticScope(StaticScope.NONE).create();
  /*package*/ final ConceptDescriptor myConceptConceptMethodDeclaration = new ConceptDescriptorBuilder("jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL)).super_("jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL)).parents("jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration", "jetbrains.mps.baseLanguage.structure.IVisible").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL), MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112670d273fL)).propertyDescriptors(new ConceptDescriptorBuilder.Prop(1225194472832L, "isVirtual"), new ConceptDescriptorBuilder.Prop(1225194472833L, "isPrivate"), new ConceptDescriptorBuilder.Prop(1225194472834L, "isAbstract"), new ConceptDescriptorBuilder.Prop(5864038008284099149L, "isStatic")).properties("isVirtual", "isPrivate", "isAbstract", "isStatic").referenceDescriptors(new ConceptDescriptorBuilder.Ref(1225194472831L, "overriddenMethod", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL), true)).references("overriddenMethod").create();
  /*package*/ final ConceptDescriptor myConceptLocalBehaviorMethodCall = new ConceptDescriptorBuilder("jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x5a277db47d54d7e1L)).super_("jetbrains.mps.baseLanguage.structure.BaseMethodCall").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c78301acL)).parents("jetbrains.mps.baseLanguage.structure.BaseMethodCall").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c78301acL)).staticScope(StaticScope.NONE).create();
  /*package*/ final ConceptDescriptor myConceptSuperNodeExpression = new ConceptDescriptorBuilder("jetbrains.mps.lang.behavior.structure.SuperNodeExpression", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434a6558L)).super_("jetbrains.mps.baseLanguage.structure.Expression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).parents("jetbrains.mps.baseLanguage.structure.Expression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).referenceDescriptors(new ConceptDescriptorBuilder.Ref(5299096511375896640L, "superConcept", MetaIdFactory.conceptId(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL), true)).references("superConcept").alias("super", "super node").staticScope(StaticScope.NONE).create();
  /*package*/ final ConceptDescriptor myConceptThisNodeExpression = new ConceptDescriptorBuilder("jetbrains.mps.lang.behavior.structure.ThisNodeExpression", MetaIdFactory.conceptId(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d434b5be1L)).super_("jetbrains.mps.baseLanguage.structure.Expression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).parents("jetbrains.mps.baseLanguage.structure.Expression", "jetbrains.mps.baseLanguage.structure.IThisExpression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d206f8d91L)).alias("this", "this node").staticScope(StaticScope.NONE).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptConceptBehavior, myConceptConceptConstructorDeclaration, myConceptConceptMethodDeclaration, myConceptLocalBehaviorMethodCall, myConceptSuperNodeExpression, myConceptThisNodeExpression);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0k, conceptFqName)) {
      case 0:
        return myConceptConceptBehavior;
      case 1:
        return myConceptConceptConstructorDeclaration;
      case 2:
        return myConceptConceptMethodDeclaration;
      case 3:
        return myConceptLocalBehaviorMethodCall;
      case 4:
        return myConceptSuperNodeExpression;
      case 5:
        return myConceptThisNodeExpression;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0k = new String[]{"jetbrains.mps.lang.behavior.structure.ConceptBehavior", "jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration", "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration", "jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall", "jetbrains.mps.lang.behavior.structure.SuperNodeExpression", "jetbrains.mps.lang.behavior.structure.ThisNodeExpression"};
}
