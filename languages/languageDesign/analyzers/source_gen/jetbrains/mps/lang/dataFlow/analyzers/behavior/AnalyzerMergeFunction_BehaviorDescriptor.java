package jetbrains.mps.lang.dataFlow.analyzers.behavior;

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
import jetbrains.mps.baseLanguage.behavior.ConceptFunction_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class AnalyzerMergeFunction_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x58ba0a6689e9c309L, "jetbrains.mps.lang.dataFlow.analyzers.structure.AnalyzerMergeFunction");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<SNode> getExpectedReturnType_idhEwIGRD = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getExpectedReturnType").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("hEwIGRD").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<List<SNode>> getApplicableConceptFunctionParameter_id2D1PBM_bxJg = new SMethodBuilder<List<SNode>>(new SJavaCompoundTypeImpl((Class<List<SNode>>) ((Class) Object.class))).name("getApplicableConceptFunctionParameter").modifiers(SModifiersImpl.create(9, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("2D1PBM_bxJg").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getExpectedReturnType_idhEwIGRD, getApplicableConceptFunctionParameter_id2D1PBM_bxJg);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static SNode getExpectedReturnType_idhEwIGRD(@NotNull SNode __thisNode__) {
    return SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, "jetbrains.mps.lang.dataFlow.analyzers.structure.Analyzer"), false, false), MetaAdapterFactory.getContainmentLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x5bd9e43c93f46789L, 0x7f5b799a00c51bbbL, "latticeElementType"));
  }
  private static List<SNode> getApplicableConceptFunctionParameter_id2D1PBM_bxJg(@NotNull SAbstractConcept __thisConcept__) {
    List<SNode> result = ConceptFunction_BehaviorDescriptor.getApplicableConceptFunctionParameter_id2D1PBM_bxJg.invokeSpecial(__thisConcept__);
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)", "4746038179140566716"));
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:8b09f5e2-b403-4747-aaa3-eac5acb1f753(jetbrains.mps.lang.dataFlow.analyzers.structure)", "4746038179140566725"));
    return result;
  }

  /*package*/ AnalyzerMergeFunction_BehaviorDescriptor() {
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
        return (T) getExpectedReturnType_idhEwIGRD(node);
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
        return (T) getApplicableConceptFunctionParameter_id2D1PBM_bxJg(concept);
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
