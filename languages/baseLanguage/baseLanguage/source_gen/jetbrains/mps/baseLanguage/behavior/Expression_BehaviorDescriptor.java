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
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class Expression_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Object> eval_idhEwJgmp = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("eval").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwJgmp").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(SModule.class)));
  public static final SMethod<String> getVariableExpectedName_idhEwJgm_ = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getVariableExpectedName").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwJgm_").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> isLValue_idhEwJgmE = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isLValue").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwJgmE").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> isCompileTimeConstant_idi1LOPRp = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isCompileTimeConstant").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("i1LOPRp").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Object> getCompileTimeConstantValue_idi1LP2xI = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("getCompileTimeConstantValue").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("i1LP2xI").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(SModule.class)));
  public static final SMethod<Boolean> isLegalAsStatement_idi26MfYG = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isLegalAsStatement").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("i26MfYG").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> lvalue_id1653mnvAgpj = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("lvalue").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgpj").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> legalAsStatement_id1653mnvAgqK = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("legalAsStatement").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgqK").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> constant_id1653mnvAgr2 = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("constant").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1653mnvAgr2").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> singleValue_id1o8Ht9sES3u = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("singleValue").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1o8Ht9sES3u").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(eval_idhEwJgmp, getVariableExpectedName_idhEwJgm_, isLValue_idhEwJgmE, isCompileTimeConstant_idi1LOPRp, getCompileTimeConstantValue_idi1LP2xI, isLegalAsStatement_idi26MfYG, lvalue_id1653mnvAgpj, legalAsStatement_id1653mnvAgqK, constant_id1653mnvAgr2, singleValue_id1o8Ht9sES3u);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static Object eval_idhEwJgmp(@NotNull SNode __thisNode__, SModule module) {
    throw new UnsupportedOperationException(SNodeOperations.getDebugText(__thisNode__));
  }
  private static String getVariableExpectedName_idhEwJgm_(@NotNull SNode __thisNode__) {
    return null;
  }
  private static Boolean isLValue_idhEwJgmE(@NotNull SNode __thisNode__) {
    return Expression_BehaviorDescriptor.lvalue_id1653mnvAgpj.invoke(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.asSConcept(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.getConceptDeclaration(__thisNode__)));
  }
  private static Boolean isCompileTimeConstant_idi1LOPRp(@NotNull SNode __thisNode__) {
    return Expression_BehaviorDescriptor.constant_id1653mnvAgr2.invoke(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.asSConcept(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.getConceptDeclaration(__thisNode__)));
  }
  private static Object getCompileTimeConstantValue_idi1LP2xI(@NotNull SNode __thisNode__, SModule module) {
    throw new UnsupportedOperationException();
  }
  private static Boolean isLegalAsStatement_idi26MfYG(@NotNull SNode __thisNode__) {
    if (jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.isInstanceOf(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3bL, "jetbrains.mps.baseLanguage.structure.CommentPart"))) {
      return true;
    }
    return Expression_BehaviorDescriptor.legalAsStatement_id1653mnvAgqK.invoke(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.asSConcept(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.getConceptDeclaration(__thisNode__)));
  }
  private static Boolean lvalue_id1653mnvAgpj(@NotNull SAbstractConcept __thisConcept__) {
    return false;
  }
  private static Boolean legalAsStatement_id1653mnvAgqK(@NotNull SAbstractConcept __thisConcept__) {
    return false;
  }
  private static Boolean constant_id1653mnvAgr2(@NotNull SAbstractConcept __thisConcept__) {
    return false;
  }
  private static Boolean singleValue_id1o8Ht9sES3u(@NotNull SAbstractConcept __thisConcept__) {
    return Expression_BehaviorDescriptor.constant_id1653mnvAgr2.invoke(__thisConcept__);
  }

  /*package*/ Expression_BehaviorDescriptor() {
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
        return (T) eval_idhEwJgmp(node, (SModule) parameters[0]);
      case 1:
        return (T) getVariableExpectedName_idhEwJgm_(node);
      case 2:
        return (T) isLValue_idhEwJgmE(node);
      case 3:
        return (T) isCompileTimeConstant_idi1LOPRp(node);
      case 4:
        return (T) getCompileTimeConstantValue_idi1LP2xI(node, (SModule) parameters[0]);
      case 5:
        return (T) isLegalAsStatement_idi26MfYG(node);
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
      case 6:
        return (T) lvalue_id1653mnvAgpj(concept);
      case 7:
        return (T) legalAsStatement_id1653mnvAgqK(concept);
      case 8:
        return (T) constant_id1653mnvAgr2(concept);
      case 9:
        return (T) singleValue_id1o8Ht9sES3u(concept);
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
