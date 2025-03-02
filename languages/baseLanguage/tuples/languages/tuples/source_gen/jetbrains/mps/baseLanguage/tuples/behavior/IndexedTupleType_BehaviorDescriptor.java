package jetbrains.mps.baseLanguage.tuples.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.BehaviorRegistry;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.SModifiersImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import jetbrains.mps.core.aspects.behaviour.SParameterImpl;
import java.util.List;
import java.util.Map;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.baseLanguage.behavior.IGenericType_BehaviorDescriptor;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class IndexedTupleType_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, "jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<String> getPresentation_idhEwIMiw = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPresentation").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwIMiw").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<List<String>> getVariableSuffixes_idhEwIzNo = new SMethodBuilder<List<String>>(new SJavaCompoundTypeImpl((Class<List<String>>) ((Class) Object.class))).name("getVariableSuffixes").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwIzNo").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Void> collectGenericSubstitutions_id3zZky3wF74h = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("collectGenericSubstitutions").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3zZky3wF74h").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<Map<SNode, SNode>>) ((Class) Object.class))));
  public static final SMethod<String> getLeftBracket_id1653mnvAgpU = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getLeftBracket").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgpU").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getRightBracket_id1653mnvAgqW = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getRightBracket").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgqW").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getPresentation_idhEwIMiw, getVariableSuffixes_idhEwIzNo, collectGenericSubstitutions_id3zZky3wF74h, getLeftBracket_id1653mnvAgpU, getRightBracket_id1653mnvAgqW);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static String getPresentation_idhEwIMiw(@NotNull SNode __thisNode__) {
    StringBuilder sb = new StringBuilder();
    sb.append(IndexedTupleType_BehaviorDescriptor.getLeftBracket_id1653mnvAgpU.invoke(SNodeOperations.asSConcept(SNodeOperations.getConceptDeclaration(__thisNode__))));
    String sep = "";
    for (SNode mt : SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType"))) {
      sb.append(sep).append(BaseConcept_BehaviorDescriptor.getPresentation_idhEwIMiw.invoke(mt));
      sep = ", ";
    }
    sb.append(IndexedTupleType_BehaviorDescriptor.getRightBracket_id1653mnvAgqW.invoke(SNodeOperations.asSConcept(SNodeOperations.getConceptDeclaration(__thisNode__))));
    return sb.toString();
  }
  private static List<String> getVariableSuffixes_idhEwIzNo(@NotNull SNode __thisNode__) {
    List<String> suffixes = ListSequence.fromList(new ArrayList<String>());
    switch (ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType"))).count()) {
      case 0:
        ListSequence.fromList(suffixes).addElement("unit");
        break;
      case 1:
        ListSequence.fromList(suffixes).addElement("single");
        break;
      case 2:
        ListSequence.fromList(suffixes).addElement("pair");
        break;
      case 3:
        ListSequence.fromList(suffixes).addElement("triple");
        break;
      case 4:
        ListSequence.fromList(suffixes).addElement("quadruple");
        break;
      default:
        ListSequence.fromList(suffixes).addElement("_" + Integer.valueOf(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType"))).count()) + "tuple");
    }
    return suffixes;
  }
  private static void collectGenericSubstitutions_id3zZky3wF74h(@NotNull SNode __thisNode__, Map<SNode, SNode> substitutions) {
    for (SNode ct : ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType")))) {
      if (SNodeOperations.isInstanceOf(ct, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
        IGenericType_BehaviorDescriptor.collectGenericSubstitutions_id3zZky3wF74h.invoke(SNodeOperations.cast(ct, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), substitutions);
      }
    }
  }
  private static String getLeftBracket_id1653mnvAgpU(@NotNull SAbstractConcept __thisConcept__) {
    return "[";
  }
  private static String getRightBracket_id1653mnvAgqW(@NotNull SAbstractConcept __thisConcept__) {
    return "]";
  }

  /*package*/ IndexedTupleType_BehaviorDescriptor() {
    super(REGISTRY);
  }

  @Override
  protected void initNode(@NotNull SNode node, @NotNull SConstructor constructor, @NotNull Object[] array) {
    ___init___(node);
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SNode node, @NotNull SMethod<T> method, @NotNull Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 0:
        return (T) getPresentation_idhEwIMiw(node);
      case 1:
        return (T) getVariableSuffixes_idhEwIzNo(node);
      case 2:
        collectGenericSubstitutions_id3zZky3wF74h(node, (Map<SNode, SNode>) parameters[0]);
        return null;
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SAbstractConcept concept, @NotNull SMethod<T> method, @NotNull Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 3:
        return (T) getLeftBracket_id1653mnvAgpU(concept);
      case 4:
        return (T) getRightBracket_id1653mnvAgqW(concept);
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @NotNull
  @Override
  public List<SMethod<?>> getDeclaredMethods() {
    return BH_METHODS;
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return CONCEPT;
  }
}
