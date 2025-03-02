package jetbrains.mps.lang.quotation.behavior;

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
import jetbrains.mps.scope.Scope;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.core.behavior.IMetaLevelChanger_BehaviorDescriptor;
import jetbrains.mps.scope.EmptyScope;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class AbstractAntiquotation_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getInterfaceConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, "jetbrains.mps.lang.quotation.structure.AbstractAntiquotation");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Integer> getMetaLevelChange_idbc0iGlxcsE = new SMethodBuilder<Integer>(new SJavaCompoundTypeImpl(Integer.TYPE)).name("getMetaLevelChange").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("bc0iGlxcsE").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Scope> getScope_id3fifI_xCJOQ = new SMethodBuilder<Scope>(new SJavaCompoundTypeImpl(Scope.class)).name("getScope").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3fifI_xCJOQ").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class), (Class<SNode>) ((Class) Object.class))));
  public static final SMethod<Scope> getScope_id6GEzh_Hz_wK = new SMethodBuilder<Scope>(new SJavaCompoundTypeImpl(Scope.class)).name("getScope").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("6GEzh_Hz_wK").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class), String.class, Integer.TYPE)));
  /*package*/ static final SMethod<Scope> getScope_id6SHIBw3Z40z = new SMethodBuilder<Scope>(new SJavaCompoundTypeImpl(Scope.class)).name("getScope").modifiers(SModifiersImpl.create(0, AccessPrivileges.PRIVATE)).concept(CONCEPT).id("6SHIBw3Z40z").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getMetaLevelChange_idbc0iGlxcsE, getScope_id3fifI_xCJOQ, getScope_id6GEzh_Hz_wK, getScope_id6SHIBw3Z40z);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static Integer getMetaLevelChange_idbc0iGlxcsE(@NotNull SNode __thisNode__) {
    return 1;
  }
  private static Scope getScope_id3fifI_xCJOQ(@NotNull SNode __thisNode__, SNode kind, SNode child) {
    return AbstractAntiquotation_BehaviorDescriptor.getScope_id6SHIBw3Z40z.invoke(__thisNode__, kind);
  }
  private static Scope getScope_id6GEzh_Hz_wK(@NotNull SNode __thisNode__, SNode kind, String role, int index) {
    return AbstractAntiquotation_BehaviorDescriptor.getScope_id6SHIBw3Z40z.invoke(__thisNode__, kind);
  }
  private static Scope getScope_id6SHIBw3Z40z(@NotNull SNode __thisNode__, SNode kind) {
    SNode node = __thisNode__;
    int metaLevelChange = 0;
    while ((node != null)) {
      if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2cc012b1584bd3aL, "jetbrains.mps.lang.core.structure.IMetaLevelChanger"))) {
        metaLevelChange += IMetaLevelChanger_BehaviorDescriptor.getMetaLevelChange_idbc0iGlxcsE.invoke(SNodeOperations.cast(node, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2cc012b1584bd3aL, "jetbrains.mps.lang.core.structure.IMetaLevelChanger")));
      }
      if (metaLevelChange == 0) {
        break;
      }
      node = Scope.parent(node);
    }
    if ((node == null)) {
      return new EmptyScope();
    }
    return Scope.getScope(Scope.parent(node), node, kind);
  }

  /*package*/ AbstractAntiquotation_BehaviorDescriptor() {
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
        return (T) getMetaLevelChange_idbc0iGlxcsE(node);
      case 1:
        return (T) getScope_id3fifI_xCJOQ(node, (SNode) parameters[0], (SNode) parameters[1]);
      case 2:
        return (T) getScope_id6GEzh_Hz_wK(node, (SNode) parameters[0], (String) parameters[1], (Integer) parameters[2]);
      case 3:
        return (T) getScope_id6SHIBw3Z40z(node, (SNode) parameters[0]);
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
