package jetbrains.mps.build.behavior;

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
import jetbrains.mps.build.util.Context;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.build.util.UnpackHelper;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class BuildExternalLayout_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x63a87b9320d0bfc9L, "jetbrains.mps.build.structure.BuildExternalLayout");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<String> getChildrenOutputDir_WithMacro_id450ejGzh8bb = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getChildrenOutputDir_WithMacro").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("450ejGzh8bb").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Context.class)));
  public static final SMethod<String> getPrepareSubTaskId_id450ejGzh8bD = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPrepareSubTaskId").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("450ejGzh8bD").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getAssembleSubTaskId_id450ejGzh8bO = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getAssembleSubTaskId").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("450ejGzh8bO").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Void> appendName_id1bWeed$ownT = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("appendName").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1bWeed$ownT").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class), StringBuilder.class)));
  public static final SMethod<String> getPresentation_idhEwIMiw = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPresentation").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwIMiw").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Void> unpack_id6bGbH3Svq6g = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("unpack").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("6bGbH3Svq6g").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(UnpackHelper.class, Iterable.class)));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getChildrenOutputDir_WithMacro_id450ejGzh8bb, getPrepareSubTaskId_id450ejGzh8bD, getAssembleSubTaskId_id450ejGzh8bO, appendName_id1bWeed$ownT, getPresentation_idhEwIMiw, unpack_id6bGbH3Svq6g);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static String getChildrenOutputDir_WithMacro_id450ejGzh8bb(@NotNull SNode __thisNode__, Context context) {
    return "${build.layout}";
  }
  private static String getPrepareSubTaskId_id450ejGzh8bD(@NotNull SNode __thisNode__) {
    return null;
  }
  private static String getAssembleSubTaskId_id450ejGzh8bO(@NotNull SNode __thisNode__) {
    return null;
  }
  private static void appendName_id1bWeed$ownT(@NotNull SNode __thisNode__, SNode parent, StringBuilder sb) {
    sb.append("/");
  }
  private static String getPresentation_idhEwIMiw(@NotNull SNode __thisNode__) {
    return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  private static void unpack_id6bGbH3Svq6g(@NotNull SNode __thisNode__, UnpackHelper helper, Iterable<Object> artifacts) {
    SNode parent = helper.parent(__thisNode__);
    String parentLocation = helper.contentLocations().get(parent);
    helper.contentLocations().put(__thisNode__, parentLocation);
  }

  /*package*/ BuildExternalLayout_BehaviorDescriptor() {
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
        return (T) getChildrenOutputDir_WithMacro_id450ejGzh8bb(node, (Context) parameters[0]);
      case 1:
        return (T) getPrepareSubTaskId_id450ejGzh8bD(node);
      case 2:
        return (T) getAssembleSubTaskId_id450ejGzh8bO(node);
      case 3:
        appendName_id1bWeed$ownT(node, (SNode) parameters[0], (StringBuilder) parameters[1]);
        return null;
      case 4:
        return (T) getPresentation_idhEwIMiw(node);
      case 5:
        unpack_id6bGbH3Svq6g(node, (UnpackHelper) parameters[0], (Iterable<Object>) parameters[1]);
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
