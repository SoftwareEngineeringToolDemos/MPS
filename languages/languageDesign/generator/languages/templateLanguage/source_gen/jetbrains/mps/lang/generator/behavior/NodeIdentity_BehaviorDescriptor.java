package jetbrains.mps.lang.generator.behavior;

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
import org.jetbrains.mps.openapi.model.SModel;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class NodeIdentity_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getInterfaceConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x7d58bd9fd9b5e358L, "jetbrains.mps.lang.generator.structure.NodeIdentity");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<SNode> instantiate_id7PoJpZpHuTR = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("instantiate").modifiers(SModifiersImpl.create(12, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7PoJpZpHuTR").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SModel>) ((Class) Object.class))));
  public static final SMethod<SNode> create_id7PoJpZpIp9n = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("create").modifiers(SModifiersImpl.create(1, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7PoJpZpIp9n").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SModel>) ((Class) Object.class), (Class<SNode>) ((Class) Object.class))));
  public static final SMethod<Boolean> match_id1si_nSrb46O = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("match").modifiers(SModifiersImpl.create(12, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1si_nSrb46O").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(instantiate_id7PoJpZpHuTR, create_id7PoJpZpIp9n, match_id1si_nSrb46O);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static SNode create_id7PoJpZpIp9n(@NotNull SAbstractConcept __thisConcept__, SModel where, SNode n) {
    SNode rv = SModelOperations.createNewNode(where, null, SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x7d58bd9fd9b64463L, "jetbrains.mps.lang.generator.structure.TrivialNodeId")));
    SPropertyOperations.set(rv, MetaAdapterFactory.getProperty(0xb401a68083254110L, 0x8fd384331ff25befL, 0x7d58bd9fd9b64463L, 0x7d58bd9fd9b64466L, "conceptId"), n.getConcept().getQualifiedName());
    SPropertyOperations.set(rv, MetaAdapterFactory.getProperty(0xb401a68083254110L, 0x8fd384331ff25befL, 0x7d58bd9fd9b64463L, 0x7d58bd9fd9b64468L, "nodeId"), n.getNodeId().toString());
    return rv;
  }

  /*package*/ NodeIdentity_BehaviorDescriptor() {
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
      case 1:
        return (T) create_id7PoJpZpIp9n(concept, (SModel) parameters[0], (SNode) parameters[1]);
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
