package jetbrains.mps.baseLanguage.behavior;

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
import org.jetbrains.mps.openapi.module.SModule;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class NPENotEqualsExpression_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d47db1c91L, "jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Integer> getPriority_id1653mnvAgo2 = new SMethodBuilder<Integer>(new SJavaCompoundTypeImpl(Integer.TYPE)).name("getPriority").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgo2").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Object> calculateCompileTimeConstantValue_id1o8Ht9sN5Hn = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("calculateCompileTimeConstantValue").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1o8Ht9sN5Hn").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Object.class, Object.class)));
  public static final SMethod<Object> getCompileTimeConstantValue_idi1LP2xI = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("getCompileTimeConstantValue").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("i1LP2xI").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(SModule.class)));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getPriority_id1653mnvAgo2, calculateCompileTimeConstantValue_id1o8Ht9sN5Hn, getCompileTimeConstantValue_idi1LP2xI);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static Integer getPriority_id1653mnvAgo2(@NotNull SAbstractConcept __thisConcept__) {
    return 7;
  }
  private static Object calculateCompileTimeConstantValue_id1o8Ht9sN5Hn(@NotNull SNode __thisNode__, Object leftValue, Object rightValue) {
    if (leftValue instanceof Number && rightValue instanceof Number) {
      Number a = (Number) leftValue;
      Number b = (Number) rightValue;
      if (BinaryOperation_BehaviorDescriptor.bothShouldBeWidenedTo_id5otPu$gIcHo.invoke(__thisNode__.getConcept(), Double.class, a, b)) {
        return a.doubleValue() != b.doubleValue();
      }
      if (BinaryOperation_BehaviorDescriptor.bothShouldBeWidenedTo_id5otPu$gIcHo.invoke(__thisNode__.getConcept(), Float.class, a, b)) {
        return a.floatValue() != b.floatValue();
      }
      if (BinaryOperation_BehaviorDescriptor.bothShouldBeWidenedTo_id5otPu$gIcHo.invoke(__thisNode__.getConcept(), Long.class, a, b)) {
        return a.longValue() != b.longValue();
      }
      if (BinaryOperation_BehaviorDescriptor.bothShouldBeWidenedTo_id5otPu$gIcHo.invoke(__thisNode__.getConcept(), Integer.class, a, b)) {
        return a.intValue() != b.intValue();
      }
    } else if (leftValue instanceof Character && rightValue instanceof Character) {
      return ((Character) leftValue).charValue() != ((Character) rightValue).charValue();
    } else if (leftValue instanceof Boolean && rightValue instanceof Boolean) {
      return ((Boolean) leftValue).booleanValue() != ((Boolean) rightValue).booleanValue();
    }
    return (leftValue != null && rightValue != null ? leftValue != rightValue : null);
  }
  private static Object getCompileTimeConstantValue_idi1LP2xI(@NotNull SNode __thisNode__, SModule module) {
    if (VariableReferenceUtil.referencesPointToSameVariableDeclaration(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11cL, "leftExpression")), SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbdeb6fecfL, 0xfbdeb7a11bL, "rightExpression")))) {
      return false;
    }
    return BinaryOperation_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invokeSpecial(__thisNode__, module);
  }

  /*package*/ NPENotEqualsExpression_BehaviorDescriptor() {
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
      case 1:
        return (T) calculateCompileTimeConstantValue_id1o8Ht9sN5Hn(node, (Object) parameters[0], (Object) parameters[1]);
      case 2:
        return (T) getCompileTimeConstantValue_idi1LP2xI(node, (SModule) parameters[0]);
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
        return (T) getPriority_id1653mnvAgo2(concept);
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
