package jetbrains.mps.lang.smodel.behavior;

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
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class AsSConcept_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x4a4d7215f163131L, "jetbrains.mps.lang.smodel.structure.AsSConcept");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Boolean> applicableToSConcept_id7E3Sw0HhwkZ = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("applicableToSConcept").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7E3Sw0HhwkZ").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> applicableToConcept_id1653mnvAgvQ = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("applicableToConcept").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgvQ").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> applicableToNode_id1653mnvAgrs = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("applicableToNode").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgrs").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> applicableToLink_id1653mnvAgvK = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("applicableToLink").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgvK").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(applicableToSConcept_id7E3Sw0HhwkZ, applicableToConcept_id1653mnvAgvQ, applicableToNode_id1653mnvAgrs, applicableToLink_id1653mnvAgvK);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static Boolean applicableToSConcept_id7E3Sw0HhwkZ(@NotNull SAbstractConcept __thisConcept__) {
    return true;
  }
  private static Boolean applicableToConcept_id1653mnvAgvQ(@NotNull SAbstractConcept __thisConcept__) {
    return true;
  }
  private static Boolean applicableToNode_id1653mnvAgrs(@NotNull SAbstractConcept __thisConcept__) {
    return true;
  }
  private static Boolean applicableToLink_id1653mnvAgvK(@NotNull SAbstractConcept __thisConcept__) {
    return true;
  }

  /*package*/ AsSConcept_BehaviorDescriptor() {
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
      case 0:
        return (T) applicableToSConcept_id7E3Sw0HhwkZ(concept);
      case 1:
        return (T) applicableToConcept_id1653mnvAgvQ(concept);
      case 2:
        return (T) applicableToNode_id1653mnvAgrs(concept);
      case 3:
        return (T) applicableToLink_id1653mnvAgvK(concept);
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
