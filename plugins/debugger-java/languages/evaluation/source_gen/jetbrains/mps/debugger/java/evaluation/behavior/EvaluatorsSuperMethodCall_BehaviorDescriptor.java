package jetbrains.mps.debugger.java.evaluation.behavior;

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

public final class EvaluatorsSuperMethodCall_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x7da4580f9d754603L, 0x816251a896d78375L, 0x53c5060c6b1ae1feL, "jetbrains.mps.debugger.java.evaluation.structure.EvaluatorsSuperMethodCall");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<SNode> getInstanceType_id6WzWPTX2vuB = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getInstanceType").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("6WzWPTX2vuB").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getInstanceType_id6WzWPTX2vuB);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static SNode getInstanceType_id6WzWPTX2vuB(@NotNull SNode __thisNode__) {
    return DebuggedType_BehaviorDescriptor.getHighClassifierType_id3WhGjgvCHCA.invoke(SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x7da4580f9d754603L, 0x816251a896d78375L, 0x53c5060c6b18d925L, "jetbrains.mps.debugger.java.evaluation.structure.EvaluatorConcept"), false, false), MetaAdapterFactory.getContainmentLink(0x7da4580f9d754603L, 0x816251a896d78375L, 0x53c5060c6b18d925L, 0x3f11b1341fa23613L, "thisNode")), MetaAdapterFactory.getContainmentLink(0x7da4580f9d754603L, 0x816251a896d78375L, 0x3c2f40ee0bb3cbf5L, 0x3f11b1341fa2c39cL, "debuggedType")));
  }

  /*package*/ EvaluatorsSuperMethodCall_BehaviorDescriptor() {
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
        return (T) getInstanceType_id6WzWPTX2vuB(node);
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
