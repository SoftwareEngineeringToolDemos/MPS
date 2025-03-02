package jetbrains.mps.lang.editor.behavior;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class ConceptEditorHintDeclaration_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x527faacef50d095eL, "jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<SNode> getHintsContainer_id59ZEGVRaGvE = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getHintsContainer").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("59ZEGVRaGvE").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getQualifiedName_id59ZEGVRaGvv = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getQualifiedName").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("59ZEGVRaGvv").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getHintsContainer_id59ZEGVRaGvE, getQualifiedName_id59ZEGVRaGvv);

  private static void ___init___(@NotNull SNode __thisNode__) {
    SPropertyOperations.set(__thisNode__, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x527faacef50d095eL, 0x256260d9230ff77L, "showInUI"), "" + (true));
  }

  private static SNode getHintsContainer_id59ZEGVRaGvE(@NotNull SNode __thisNode__) {
    return SNodeOperations.cast(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x527faacef4e35767L, "jetbrains.mps.lang.editor.structure.ConceptEditorContextHints"));
  }
  private static String getQualifiedName_id59ZEGVRaGvv(@NotNull SNode __thisNode__) {
    return INamedConcept_BehaviorDescriptor.getFqName_idhEwIO9y.invoke(ConceptEditorHintDeclaration_BehaviorDescriptor.getHintsContainer_id59ZEGVRaGvE.invoke(__thisNode__)) + "." + SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }

  /*package*/ ConceptEditorHintDeclaration_BehaviorDescriptor() {
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
        return (T) getHintsContainer_id59ZEGVRaGvE(node);
      case 1:
        return (T) getQualifiedName_id59ZEGVRaGvv(node);
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
