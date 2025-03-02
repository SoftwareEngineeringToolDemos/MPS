package jetbrains.mps.lang.editor.figures.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.BehaviorRegistry;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.SModifiersImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import jetbrains.mps.core.aspects.behaviour.SParameterImpl;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.baseLanguage.behavior.IMemberContainer_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class ExternalViewFigureParameter_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xd7722d504b934c3aL, 0xae061903d05f95a7L, 0x1e3b9cbb9f749406L, "jetbrains.mps.lang.editor.figures.structure.ExternalViewFigureParameter");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<SNode> getParameterMethod_id4H19mAx5nwL = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getParameterMethod").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("4H19mAx5nwL").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getGetterName_id3g73hQq7brf = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getGetterName").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3g73hQq7brf").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  /*package*/ static final SMethod<String> getSuffix_id3g73hQq82yQ = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getSuffix").modifiers(SModifiersImpl.create(0, AccessPrivileges.PRIVATE)).concept(CONCEPT).id("3g73hQq82yQ").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<SNode> getParameterType_idiZqVFYvBew = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getParameterType").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("iZqVFYvBew").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getParameterMethod_id4H19mAx5nwL, getGetterName_id3g73hQq7brf, getSuffix_id3g73hQq82yQ, getParameterType_idiZqVFYvBew);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static SNode getParameterMethod_id4H19mAx5nwL(@NotNull SNode __thisNode__) {
    final String methodName = ExternalViewFigureParameter_BehaviorDescriptor.getGetterName_id3g73hQq7brf.invoke(__thisNode__);
    return ListSequence.fromList(IMemberContainer_BehaviorDescriptor.getMembers_idhEwJjl2.invoke(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0xd7722d504b934c3aL, 0xae061903d05f95a7L, 0x1e3b9cbb9f7493c2L, "jetbrains.mps.lang.editor.figures.structure.ExternalViewFigure")), MetaAdapterFactory.getReferenceLink(0xd7722d504b934c3aL, 0xae061903d05f95a7L, 0x1e3b9cbb9f7493c2L, 0x1e3b9cbb9f7493f7L, "classifier")))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    }).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return eq_dixgr9_a0a0a0a0a0b0m(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), methodName);
      }
    });
  }
  private static String getGetterName_id3g73hQq7brf(@NotNull SNode __thisNode__) {
    return "get" + ExternalViewFigureParameter_BehaviorDescriptor.getSuffix_id3g73hQq82yQ.invoke(__thisNode__);
  }
  private static String getSuffix_id3g73hQq82yQ(@NotNull SNode __thisNode__) {
    String prefix = "my";
    return (SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).startsWith(prefix) ? SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).substring(prefix.length()) : SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
  }
  private static SNode getParameterType_idiZqVFYvBew(@NotNull SNode __thisNode__) {
    return SNodeOperations.as(SLinkOperations.getTarget(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0xd7722d504b934c3aL, 0xae061903d05f95a7L, 0x1e3b9cbb9f749406L, 0x1e3b9cbb9f749431L, "fieldDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"));
  }

  /*package*/ ExternalViewFigureParameter_BehaviorDescriptor() {
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
        return (T) getParameterMethod_id4H19mAx5nwL(node);
      case 1:
        return (T) getGetterName_id3g73hQq7brf(node);
      case 2:
        return (T) getSuffix_id3g73hQq82yQ(node);
      case 3:
        return (T) getParameterType_idiZqVFYvBew(node);
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
  private static boolean eq_dixgr9_a0a0a0a0a0b0m(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
