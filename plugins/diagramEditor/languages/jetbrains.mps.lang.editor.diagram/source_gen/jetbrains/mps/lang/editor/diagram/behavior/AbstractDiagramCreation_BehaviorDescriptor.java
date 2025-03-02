package jetbrains.mps.lang.editor.diagram.behavior;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class AbstractDiagramCreation_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x120f760a04397296L, "jetbrains.mps.lang.editor.diagram.structure.AbstractDiagramCreation");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<SNode> getConceptForCreation_id1R$Mpy$x3Yh = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getConceptForCreation").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1R$Mpy$x3Yh").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<SNode> getContainmentLinkDeclaration_id1R$Mpy$x_vA = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getContainmentLinkDeclaration").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1R$Mpy$x_vA").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<SNode> getContainerExpression_id1R$Mpy$x_JA = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getContainerExpression").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1R$Mpy$x_JA").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  /*package*/ static final SMethod<SNode> getQueryDotExpression_id1R$Mpy$xe1l = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getQueryDotExpression").modifiers(SModifiersImpl.create(0, AccessPrivileges.PRIVATE)).concept(CONCEPT).id("1R$Mpy$xe1l").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getConceptForCreation_id1R$Mpy$x3Yh, getContainmentLinkDeclaration_id1R$Mpy$x_vA, getContainerExpression_id1R$Mpy$x_JA, getQueryDotExpression_id1R$Mpy$xe1l);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static SNode getConceptForCreation_id1R$Mpy$x3Yh(@NotNull SNode __thisNode__) {
    return ((SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x120f760a04397296L, 0x120f760a0439bb31L, "concept")) != null) ? SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x120f760a04397296L, 0x120f760a0439bb31L, "concept")) : SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.as(SLinkOperations.getTarget(AbstractDiagramCreation_BehaviorDescriptor.getQueryDotExpression_id1R$Mpy$xe1l.invoke(__thisNode__), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation")), MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f970c119L, "jetbrains.mps.lang.smodel.structure.SLinkListAccess")), MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f970c119L, 0x108f974c962L, "link")), MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98055fef0L, "target")));
  }
  private static SNode getContainmentLinkDeclaration_id1R$Mpy$x_vA(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(SNodeOperations.as(SLinkOperations.getTarget(AbstractDiagramCreation_BehaviorDescriptor.getQueryDotExpression_id1R$Mpy$xe1l.invoke(__thisNode__), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation")), MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f970c119L, "jetbrains.mps.lang.smodel.structure.SLinkListAccess")), MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f970c119L, 0x108f974c962L, "link"));
  }
  private static SNode getContainerExpression_id1R$Mpy$x_JA(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(AbstractDiagramCreation_BehaviorDescriptor.getQueryDotExpression_id1R$Mpy$xe1l.invoke(__thisNode__), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"));
  }
  private static SNode getQueryDotExpression_id1R$Mpy$xe1l(@NotNull SNode __thisNode__) {
    return SNodeOperations.as(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0x6106f6117a7442d1L, 0x80deedc5c602bfd1L, 0x120f760a04397296L, 0x120f760a0439bb2bL, "query")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"));
  }

  /*package*/ AbstractDiagramCreation_BehaviorDescriptor() {
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
        return (T) getConceptForCreation_id1R$Mpy$x3Yh(node);
      case 1:
        return (T) getContainmentLinkDeclaration_id1R$Mpy$x_vA(node);
      case 2:
        return (T) getContainerExpression_id1R$Mpy$x_JA(node);
      case 3:
        return (T) getQueryDotExpression_id1R$Mpy$xe1l(node);
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
