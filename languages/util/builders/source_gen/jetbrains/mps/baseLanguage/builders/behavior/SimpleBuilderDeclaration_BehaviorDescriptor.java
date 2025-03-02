package jetbrains.mps.baseLanguage.builders.behavior;

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
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class SimpleBuilderDeclaration_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderDeclaration");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Boolean> isRoot_id7LSrDTXbxm6 = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isRoot").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7LSrDTXbxm6").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Boolean> isDescendant_id3jPK7hzRvLl = new SMethodBuilder<Boolean>(new SJavaCompoundTypeImpl(Boolean.TYPE)).name("isDescendant").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3jPK7hzRvLl").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));
  public static final SMethod<List<SNode>> getDescendants_id3jPK7hzRzcY = new SMethodBuilder<List<SNode>>(new SJavaCompoundTypeImpl((Class<List<SNode>>) ((Class) Object.class))).name("getDescendants").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3jPK7hzRzcY").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SModel>) ((Class) Object.class))));
  public static final SMethod<List<SNode>> getAncestors_id6K2Bohp6U4S = new SMethodBuilder<List<SNode>>(new SJavaCompoundTypeImpl((Class<List<SNode>>) ((Class) Object.class))).name("getAncestors").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("6K2Bohp6U4S").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<List<SNode>> getExtensions_id6K2Bohp73wF = new SMethodBuilder<List<SNode>>(new SJavaCompoundTypeImpl((Class<List<SNode>>) ((Class) Object.class))).name("getExtensions").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("6K2Bohp73wF").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SModel>) ((Class) Object.class))));
  public static final SMethod<List<SNode>> getChildren_id3jPK7hzSvxE = new SMethodBuilder<List<SNode>>(new SJavaCompoundTypeImpl((Class<List<SNode>>) ((Class) Object.class))).name("getChildren").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3jPK7hzSvxE").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SModel>) ((Class) Object.class))));
  public static final SMethod<List<SNode>> getProperties_id4Fc1sznat8t = new SMethodBuilder<List<SNode>>(new SJavaCompoundTypeImpl((Class<List<SNode>>) ((Class) Object.class))).name("getProperties").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("4Fc1sznat8t").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SModel>) ((Class) Object.class))));
  public static final SMethod<SNode> getContextDeclaration_id5rdgdYBzN9n = new SMethodBuilder<SNode>(new SJavaCompoundTypeImpl((Class<SNode>) ((Class) Object.class))).name("getContextDeclaration").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("5rdgdYBzN9n").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(isRoot_id7LSrDTXbxm6, isDescendant_id3jPK7hzRvLl, getDescendants_id3jPK7hzRzcY, getAncestors_id6K2Bohp6U4S, getExtensions_id6K2Bohp73wF, getChildren_id3jPK7hzSvxE, getProperties_id4Fc1sznat8t, getContextDeclaration_id5rdgdYBzN9n);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static Boolean isRoot_id7LSrDTXbxm6(@NotNull SNode __thisNode__) {
    return SPropertyOperations.getBoolean(__thisNode__, MetaAdapterFactory.getProperty(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x6524536b2e1bddd7L, "root")) || (SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463da7435L, "extends")) != null) && SimpleBuilderDeclaration_BehaviorDescriptor.isRoot_id7LSrDTXbxm6.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463da7435L, "extends")));
  }
  private static Boolean isDescendant_id3jPK7hzRvLl(@NotNull SNode __thisNode__, SNode b) {
    return __thisNode__ == b || (SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463da7435L, "extends")) != null) && SimpleBuilderDeclaration_BehaviorDescriptor.isDescendant_id3jPK7hzRvLl.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463da7435L, "extends")), b);
  }
  private static List<SNode> getDescendants_id3jPK7hzRzcY(@NotNull SNode __thisNode__, SModel model) {
    List<SNode> result = new ArrayList<SNode>();
    SNode container = SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e3bL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilders"), false, false);
    for (SNode builder : SimpleBuilders_BehaviorDescriptor.getDescendands_id4wDZIZrG$7X.invoke(container, model)) {
      for (SNode dcl : SLinkOperations.getChildren(builder, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e3bL, 0x6524536b2e1a1e3dL, "builder"))) {
        if (SNodeOperations.isInstanceOf(dcl, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderDeclaration")) && SimpleBuilderDeclaration_BehaviorDescriptor.isDescendant_id3jPK7hzRvLl.invoke(SNodeOperations.cast(dcl, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderDeclaration")), __thisNode__)) {
          ListSequence.fromList(result).addElement(SNodeOperations.cast(dcl, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderDeclaration")));
        }
      }
    }
    return result;
  }
  private static List<SNode> getAncestors_id6K2Bohp6U4S(@NotNull SNode __thisNode__) {
    List<SNode> result = new ArrayList<SNode>();
    SNode current = __thisNode__;
    while (current != null) {
      ListSequence.fromList(result).addElement(current);
      current = SLinkOperations.getTarget(current, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463da7435L, "extends"));
    }
    return result;
  }
  private static List<SNode> getExtensions_id6K2Bohp73wF(@NotNull SNode __thisNode__, SModel model) {
    List<SNode> result = new ArrayList<SNode>();
    List<SNode> ancestors = SimpleBuilderDeclaration_BehaviorDescriptor.getAncestors_id6K2Bohp6U4S.invoke(__thisNode__);
    SNode container = SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e3bL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilders"), true, false);
    for (SNode sb : SimpleBuilders_BehaviorDescriptor.getDescendands_id4wDZIZrG$7X.invoke(container, model)) {
      for (SNode dcl : SLinkOperations.getChildren(sb, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e3bL, 0x6524536b2e1a1e3dL, "builder"))) {
        if (SNodeOperations.isInstanceOf(dcl, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78dcaf3L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderExtensionDeclaration")) && ListSequence.fromList(ancestors).contains(SLinkOperations.getTarget(SNodeOperations.cast(dcl, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78dcaf3L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderExtensionDeclaration")), MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78dcaf3L, 0x56cd40dfa78dcaf6L, "extended")))) {
          ListSequence.fromList(result).addElement(SNodeOperations.cast(dcl, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78dcaf3L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderExtensionDeclaration")));
        }
      }
    }
    return result;
  }
  private static List<SNode> getChildren_id3jPK7hzSvxE(@NotNull SNode __thisNode__, SModel model) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode a : SimpleBuilderDeclaration_BehaviorDescriptor.getAncestors_id6K2Bohp6U4S.invoke(__thisNode__)) {
      ListSequence.fromList(result).addSequence(ListSequence.fromList(SLinkOperations.getChildren(a, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x6524536b2e1f95c4L, "child"))));
    }
    for (SNode ext : SimpleBuilderDeclaration_BehaviorDescriptor.getExtensions_id6K2Bohp73wF.invoke(__thisNode__, model)) {
      ListSequence.fromList(result).addSequence(ListSequence.fromList(SLinkOperations.getChildren(ext, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78dcaf3L, 0x56cd40dfa78dcaf4L, "child"))));
    }
    return result;
  }
  private static List<SNode> getProperties_id4Fc1sznat8t(@NotNull SNode __thisNode__, SModel model) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode a : SimpleBuilderDeclaration_BehaviorDescriptor.getAncestors_id6K2Bohp6U4S.invoke(__thisNode__)) {
      ListSequence.fromList(result).addSequence(ListSequence.fromList(SLinkOperations.getChildren(a, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x4acc05c8d729d207L, "property"))));
    }
    for (SNode ext : SimpleBuilderDeclaration_BehaviorDescriptor.getExtensions_id6K2Bohp73wF.invoke(__thisNode__, model)) {
      ListSequence.fromList(result).addSequence(ListSequence.fromList(SLinkOperations.getChildren(ext, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x56cd40dfa78dcaf3L, 0x56cd40dfa78dcaf5L, "property"))));
    }
    return result;
  }
  private static SNode getContextDeclaration_id5rdgdYBzN9n(@NotNull SNode __thisNode__) {
    return __thisNode__;
  }

  /*package*/ SimpleBuilderDeclaration_BehaviorDescriptor() {
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
        return (T) isRoot_id7LSrDTXbxm6(node);
      case 1:
        return (T) isDescendant_id3jPK7hzRvLl(node, (SNode) parameters[0]);
      case 2:
        return (T) getDescendants_id3jPK7hzRzcY(node, (SModel) parameters[0]);
      case 3:
        return (T) getAncestors_id6K2Bohp6U4S(node);
      case 4:
        return (T) getExtensions_id6K2Bohp73wF(node, (SModel) parameters[0]);
      case 5:
        return (T) getChildren_id3jPK7hzSvxE(node, (SModel) parameters[0]);
      case 6:
        return (T) getProperties_id4Fc1sznat8t(node, (SModel) parameters[0]);
      case 7:
        return (T) getContextDeclaration_id5rdgdYBzN9n(node);
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
