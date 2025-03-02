package jetbrains.mps.baseLanguage.regexp.behavior;

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
import org.jetbrains.mps.openapi.model.SNode;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class UnaryRegexp_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174c678adL, "jetbrains.mps.baseLanguage.regexp.structure.UnaryRegexp");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<String> getString_idhMuDF1A = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getString").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hMuDF1A").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<List<SNode>>) ((Class) Object.class))));
  public static final SMethod<Boolean> inParentheses_id1b8uQvZyDW8 = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("inParentheses").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1b8uQvZyDW8").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getString_idhMuDF1A, inParentheses_id1b8uQvZyDW8);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static String getString_idhMuDF1A(@NotNull SNode __thisNode__, List<SNode> vars) {
    String s = Regexp_BehaviorDescriptor.getString_idhMuDF1A.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174c678adL, 0x11174c6961aL, "regexp")), vars);
    return ((UnaryRegexp_BehaviorDescriptor.inParentheses_id1b8uQvZyDW8.invoke(__thisNode__) ? Regexp_BehaviorDescriptor.par_idhMuIPHY.invoke(__thisNode__, s) : s)) + SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(__thisNode__), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"));
  }
  private static Boolean inParentheses_id1b8uQvZyDW8(@NotNull SNode __thisNode__) {
    return (SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174c678adL, 0x11174c6961aL, "regexp")) != null ? Regexp_BehaviorDescriptor.needParentheses_id1b8uQvZynii.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174c678adL, 0x11174c6961aL, "regexp"))) : true);
  }

  /*package*/ UnaryRegexp_BehaviorDescriptor() {
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
        return (T) getString_idhMuDF1A(node, (List<SNode>) parameters[0]);
      case 1:
        return (T) inParentheses_id1b8uQvZyDW8(node);
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
