package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.BehaviorRegistry;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.SModifiersImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import jetbrains.mps.core.aspects.behaviour.SParameterImpl;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.scopes.runtime.SimpleScope;
import jetbrains.mps.lang.structure.behavior.AbstractConceptDeclaration_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.core.behavior.ScopeProvider_BehaviorDescriptor;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class BaseEditorComponent_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfba0eb7c50L, "jetbrains.mps.lang.editor.structure.BaseEditorComponent");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Scope> getScope_id3fifI_xCJOQ = new SMethodBuilder<Scope>(new SJavaCompoundTypeImpl(Scope.class)).name("getScope").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3fifI_xCJOQ").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class), (Class<SNode>) ((Class) Object.class))));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getScope_id3fifI_xCJOQ);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static Scope getScope_id3fifI_xCJOQ(@NotNull SNode __thisNode__, SNode kind, SNode child) {
    if (SConceptOperations.isExactly(SNodeOperations.asSConcept(kind), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration"))) {
      return new SimpleScope(AbstractConceptDeclaration_BehaviorDescriptor.getPropertyDeclarations_idhEwILLM.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration")))) {
        @Nullable
        public String getReferenceText(@NotNull SNode target) {
          return SPropertyOperations.getString(SNodeOperations.cast(target, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086bL, "jetbrains.mps.lang.structure.structure.PropertyDeclaration")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
        }
      };
    }
    if (SConceptOperations.isExactly(SNodeOperations.asSConcept(kind), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration"))) {
      return new SimpleScope(AbstractConceptDeclaration_BehaviorDescriptor.getLinkDeclarations_idhEwILKK.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration")))) {
        @Nullable
        public String getReferenceText(@NotNull SNode target) {
          return SPropertyOperations.getString(SNodeOperations.cast(target, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
        }
      };
    }
    if (SConceptOperations.isExactly(SNodeOperations.asSConcept(kind), MetaAdapterFactory.getInterfaceConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x4f57884e07c08838L, "jetbrains.mps.lang.structure.structure.ReferenceLinkDeclartionScopeKind"))) {
      return new SimpleScope(AbstractConceptDeclaration_BehaviorDescriptor.getReferenceLinkDeclarations_idhEwILL0.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration")))) {
        @Nullable
        public String getReferenceText(@NotNull SNode target) {
          return SPropertyOperations.getString(SNodeOperations.cast(target, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
        }
      };
    }
    if (SConceptOperations.isExactly(SNodeOperations.asSConcept(kind), MetaAdapterFactory.getInterfaceConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x4f57884e07c08a31L, "jetbrains.mps.lang.structure.structure.AggregationLinkDeclarationScopeKind"))) {
      return new SimpleScope(AbstractConceptDeclaration_BehaviorDescriptor.getAggregationLinkDeclarations_idhEwILLp.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration")))) {
        @Nullable
        public String getReferenceText(@NotNull SNode target) {
          return SPropertyOperations.getString(SNodeOperations.cast(target, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, "jetbrains.mps.lang.structure.structure.LinkDeclaration")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"));
        }
      };
    }
    if (SConceptOperations.isExactly(SNodeOperations.asSConcept(kind), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfb35c2bb47L, "jetbrains.mps.lang.editor.structure.EditorComponentDeclaration"))) {
      return new EditorComponentDeclarationScope(__thisNode__);
    }
    return ScopeProvider_BehaviorDescriptor.getScope_id3fifI_xCJOQ.invokeSpecial(__thisNode__, kind, child);
  }

  /*package*/ BaseEditorComponent_BehaviorDescriptor() {
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
        return (T) getScope_id3fifI_xCJOQ(node, (SNode) parameters[0], (SNode) parameters[1]);
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
