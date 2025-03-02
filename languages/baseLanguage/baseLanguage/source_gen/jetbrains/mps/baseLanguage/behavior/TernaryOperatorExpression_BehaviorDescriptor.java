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
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class TernaryOperatorExpression_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, "jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Void> setSyntacticallyLeftSideExpression_id1wHCnsn58ZK = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("setSyntacticallyLeftSideExpression").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1wHCnsn58ZK").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));
  public static final SMethod<Void> setSyntacticallyRightSideExpression_id1wHCnsn58ZY = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("setSyntacticallyRightSideExpression").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1wHCnsn58ZY").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));
  public static final SMethod<SNode> getSyntacticallyLeftSideExpression_id1wHCnsn590c = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getSyntacticallyLeftSideExpression").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1wHCnsn590c").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<SNode> getSyntacticallyRightSideExpression_id1wHCnsn590i = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getSyntacticallyRightSideExpression").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1wHCnsn590i").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<NextProgramPoint> getNextProgramPoint_id3F8BxGibk8h = new SMethodBuilder<NextProgramPoint>(new SJavaCompoundTypeImpl(NextProgramPoint.class)).name("getNextProgramPoint").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3F8BxGibk8h").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class), Boolean.TYPE)));
  public static final SMethod<Boolean> isCompileTimeConstant_idi1LOPRp = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isCompileTimeConstant").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("i1LOPRp").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Object> getCompileTimeConstantValue_idi1LP2xI = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("getCompileTimeConstantValue").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("i1LP2xI").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(SModule.class)));
  public static final SMethod<Object> eval_idhEwJgmp = new SMethodBuilder<Object>(new SJavaCompoundTypeImpl(Object.class)).name("eval").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwJgmp").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(SModule.class)));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(setSyntacticallyLeftSideExpression_id1wHCnsn58ZK, setSyntacticallyRightSideExpression_id1wHCnsn58ZY, getSyntacticallyLeftSideExpression_id1wHCnsn590c, getSyntacticallyRightSideExpression_id1wHCnsn590i, getNextProgramPoint_id3F8BxGibk8h, isCompileTimeConstant_idi1LOPRp, getCompileTimeConstantValue_idi1LP2xI, eval_idhEwJgmp);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static void setSyntacticallyLeftSideExpression_id1wHCnsn58ZK(@NotNull SNode __thisNode__, SNode expr) {
    SLinkOperations.setTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition"), expr);
  }
  private static void setSyntacticallyRightSideExpression_id1wHCnsn58ZY(@NotNull SNode __thisNode__, SNode expr) {
    SLinkOperations.setTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse"), expr);
  }
  private static SNode getSyntacticallyLeftSideExpression_id1wHCnsn590c(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition"));
  }
  private static SNode getSyntacticallyRightSideExpression_id1wHCnsn590i(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse"));
  }
  private static NextProgramPoint getNextProgramPoint_id3F8BxGibk8h(@NotNull SNode __thisNode__, @NotNull SNode child, boolean value) {
    if (child != SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition"))) {
      return null;
    }
    if (value) {
      if (SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012a1c0L, "ifTrue")) != null) {
        return NextProgramPoint.continueAt(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012a1c0L, "ifTrue")), false);
      } else {
        return NextProgramPoint.continueAfter(__thisNode__);
      }
    } else {
      if (SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse")) != null) {
        return NextProgramPoint.continueAt(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse")), true);
      } else {
        return NextProgramPoint.continueAfter(__thisNode__);
      }
    }
  }
  private static Boolean isCompileTimeConstant_idi1LOPRp(@NotNull SNode __thisNode__) {
    boolean b = Expression_BehaviorDescriptor.isCompileTimeConstant_idi1LOPRp.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition")));
    if (b) {
      Object value = Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition")), SNodeOperations.getModel(__thisNode__).getModule());
      if (value != null && value instanceof Boolean) {
        if (((Boolean) value).booleanValue()) {
          return Expression_BehaviorDescriptor.isCompileTimeConstant_idi1LOPRp.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012a1c0L, "ifTrue")));
        } else {
          return Expression_BehaviorDescriptor.isCompileTimeConstant_idi1LOPRp.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse")));
        }
      }
    }
    return false;
  }
  private static Object getCompileTimeConstantValue_idi1LP2xI(@NotNull SNode __thisNode__, SModule module) {
    Object value = Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012826fL, "condition")), SNodeOperations.getModel(__thisNode__).getModule());
    if (value != null && value instanceof Boolean) {
      if (((Boolean) value).booleanValue()) {
        return Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012a1c0L, "ifTrue")), module);
      } else {
        return Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10ef01239c9L, 0x10ef012cedcL, "ifFalse")), module);
      }
    }
    return null;
  }
  private static Object eval_idhEwJgmp(@NotNull SNode __thisNode__, SModule module) {
    return Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(__thisNode__, module);
  }

  /*package*/ TernaryOperatorExpression_BehaviorDescriptor() {
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
        setSyntacticallyLeftSideExpression_id1wHCnsn58ZK(node, (SNode) parameters[0]);
        return null;
      case 1:
        setSyntacticallyRightSideExpression_id1wHCnsn58ZY(node, (SNode) parameters[0]);
        return null;
      case 2:
        return (T) getSyntacticallyLeftSideExpression_id1wHCnsn590c(node);
      case 3:
        return (T) getSyntacticallyRightSideExpression_id1wHCnsn590i(node);
      case 4:
        return (T) getNextProgramPoint_id3F8BxGibk8h(node, (SNode) parameters[0], (Boolean) parameters[1]);
      case 5:
        return (T) isCompileTimeConstant_idi1LOPRp(node);
      case 6:
        return (T) getCompileTimeConstantValue_idi1LP2xI(node, (SModule) parameters[0]);
      case 7:
        return (T) eval_idhEwJgmp(node, (SModule) parameters[0]);
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
