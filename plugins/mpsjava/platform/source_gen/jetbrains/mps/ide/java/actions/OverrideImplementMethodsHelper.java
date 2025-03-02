package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.project.Project;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.ArrayList;
import jetbrains.mps.smodel.behaviour.BHReflection;
import jetbrains.mps.core.aspects.behaviour.SMethodTrimmedId;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.Sequence;
import java.util.Map;
import jetbrains.mps.baseLanguage.util.IdentifierConstraintsUtil;
import jetbrains.mps.util.NameUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public class OverrideImplementMethodsHelper {
  private Project myProject;
  /*package*/ SNode myClassConcept;
  /*package*/ SNode myContextMember;
  private boolean myRemoveAttributes;
  private boolean myInsertOverride;
  private boolean myNeedReturnKW;
  public OverrideImplementMethodsHelper(Project project, SNode target, SNode contextMember, boolean removeAttributes, boolean insertOverride, boolean needReturnKW) {
    this.myProject = project;
    this.myClassConcept = target;
    this.myContextMember = contextMember;
    this.myRemoveAttributes = removeAttributes;
    this.myInsertOverride = insertOverride;
    this.myNeedReturnKW = needReturnKW;
  }
  public List<SNode> insertMethods(List<SNode> baseMethods) {
    int index = (myContextMember != null && SNodeOperations.getParent(myContextMember) == myClassConcept ? ListSequence.fromList(SLinkOperations.getChildren(myClassConcept, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).indexOf(myContextMember) + 1 : -1);
    List<SNode> result = new ArrayList<SNode>();
    for (SNode baseMethod : baseMethods) {
      SNode method = ((SNode) BHReflection.invoke(baseMethod, SMethodTrimmedId.create("getMethodToImplement", MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"), "3RE744JWbF"), myClassConcept));
      SLinkOperations.setTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body"), SNodeFactoryOperations.createNewNode(SNodeOperations.getModel(myClassConcept), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList")), null));
      if (SNodeOperations.isInstanceOf(method, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))) {
        SPropertyOperations.set(SNodeOperations.cast(method, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, 0x1126a8d157dL, "isAbstract"), "" + (false));
      }
      if (index != -1) {
        ListSequence.fromList(SLinkOperations.getChildren(myClassConcept, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).insertElement(index++, SNodeOperations.cast(method, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112574373bdL, "jetbrains.mps.baseLanguage.structure.ClassifierMember")));
      } else {
        ListSequence.fromList(SLinkOperations.getChildren(myClassConcept, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).addElement(SNodeOperations.cast(method, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112574373bdL, "jetbrains.mps.baseLanguage.structure.ClassifierMember")));
      }
      update(method, baseMethod);
      ListSequence.fromList(result).addElement(method);
    }
    return result;
  }
  /*package*/ void update(SNode method, SNode baseMethod) {
    if (SModelStereotype.isStubModelStereotype(jetbrains.mps.util.SNodeOperations.getModelStereotype(SNodeOperations.getModel(baseMethod)))) {
      // we only need to find good names for parameters, if they are cryptic e.g. java_sourcestubs deliver proper names 
      final SNode startNode = (ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).all(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).matches("p[0-9]+");
        }
      }) ? method : SLinkOperations.getTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")));
      setVariableNames(startNode, MapSequence.fromMap(new HashMap<String, Integer>()));
    }
    if (myRemoveAttributes) {
      for (SNode child : SNodeOperations.getChildren(method)) {
        removeAttributes(child);
      }
    }
    boolean isInterfaceMethod = SNodeOperations.isInstanceOf(SNodeOperations.getParent(baseMethod), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")) || SPropertyOperations.getBoolean(SNodeOperations.as(baseMethod, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, 0x1126a8d157dL, "isAbstract"));
    if (myInsertOverride && !(isInterfaceMethod) && SNodeOperations.isInstanceOf(baseMethod, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))) {
      boolean isNeedAddAnnotation = true;
      for (SNode annotation : SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"))) {
        if (SLinkOperations.getTarget(annotation, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation")) == SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)", "~Override")) {
          isNeedAddAnnotation = false;
          break;
        }
      }
      if (isNeedAddAnnotation) {
        ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"))).addElement(_quotation_createNode_tfz3o4_a0a0a2a3a8());
      }
    }

    Iterable<SNode> paramList = ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return _quotation_createNode_tfz3o4_a0a0a0a5a8(it);
      }
    });
    if (SNodeOperations.isInstanceOf(baseMethod, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))) {
      SNode defaultExpr;
      if (isInterfaceMethod) {
        defaultExpr = ((SNode) BHReflection.invoke(SLinkOperations.getTarget(baseMethod, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType")), SMethodTrimmedId.create("createDefaultTypeExpression", null, "2UvJdVpqUA4")));
      } else {
        defaultExpr = _quotation_createNode_tfz3o4_a0a0a1a6a8(baseMethod, Sequence.fromIterable(paramList).toListSequence());
      }
      if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"))) {
        if (!(isInterfaceMethod)) {
          ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).addElement(_quotation_createNode_tfz3o4_a0a0a0a2a6a8(defaultExpr));
        }
      } else {
        ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).addElement(getReturnStatement(defaultExpr));
      }
    } else {
      if (SNodeOperations.isInstanceOf(baseMethod, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b204L, "jetbrains.mps.baseLanguage.structure.ConstructorDeclaration"))) {
        SNode superConstructor = _quotation_createNode_tfz3o4_a0a0a0a6a8(Sequence.fromIterable(paramList).toListSequence());
        SLinkOperations.setTarget(superConstructor, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), baseMethod);
        ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"))).addElement(superConstructor);
      }
    }
  }

  private SNode getReturnStatement(SNode returnExpr) {
    if ((returnExpr == null)) {
      return null;
    }

    if (myNeedReturnKW) {
      return _quotation_createNode_tfz3o4_a0a2a01(returnExpr);
    } else {
      return _quotation_createNode_tfz3o4_a0a0c0k(returnExpr);
    }
  }
  private void removeAttributes(SNode node) {
    if (SNodeOperations.isAttribute(node)) {
      SNodeOperations.deleteNode(node);
    } else {
      for (SNode child : SNodeOperations.getChildren(node)) {
        removeAttributes(child);
      }
    }
  }
  private void setVariableNames(SNode node, Map<String, Integer> usedNames) {
    if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration"))) {
      SNode variable = SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration"));
      SNode nodeType = SLinkOperations.getTarget(variable, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"));
      if (nodeType != null) {
        String name = ListSequence.fromList(((List<String>) BHReflection.invoke(nodeType, SMethodTrimmedId.create("getVariableSuffixes", null, "hEwIzNo")))).first();
        if (IdentifierConstraintsUtil.isJavaReserved(name)) {
          name = "a" + NameUtil.capitalize(NameUtil.toValidIdentifier(name));
        }
        if (MapSequence.fromMap(usedNames).containsKey(name)) {
          int i = MapSequence.fromMap(usedNames).get(name);
          i = i + 1;
          MapSequence.fromMap(usedNames).put(name, i);
          name = name + i;
        } else {
          MapSequence.fromMap(usedNames).put(name, 0);
        }
        String prefix = ((String) BHReflection.invoke(variable, SMethodTrimmedId.create("getPrefix", null, "2Bet8mWh2lw"), myProject));
        String suffix = ((String) BHReflection.invoke(variable, SMethodTrimmedId.create("getSuffix", null, "2Bet8mWh3pg"), myProject));
        String mainName = ((prefix == null || prefix.length() == 0) ? name : NameUtil.capitalize(name));
        SPropertyOperations.set(variable, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), prefix + mainName + suffix);
      }
    }
    for (SNode child : SNodeOperations.getChildren(node)) {
      setVariableNames(child, usedNames);
    }
  }
  private static SNode _quotation_createNode_tfz3o4_a0a0a2a3a8() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, "jetbrains.mps.baseLanguage.structure.AnnotationInstance"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Override")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_tfz3o4_a0a0a0a5a8(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_2, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), (SNode) parameter_1);
    return quotedNode_2;
  }
  private static SNode _quotation_createNode_tfz3o4_a0a0a1a6a8(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf9d78b55aaL, "jetbrains.mps.baseLanguage.structure.SuperMethodCall"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_3, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), (SNode) parameter_1);
    {
      List<SNode> nodes = (List<SNode>) parameter_2;
      for (SNode child : nodes) {
        quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), HUtil.copyIfNecessary(child));
      }
    }
    return quotedNode_3;
  }
  private static SNode _quotation_createNode_tfz3o4_a0a0a0a2a6a8(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"), null, null, false);
    quotedNode_3 = (SNode) parameter_1;
    if (quotedNode_3 != null) {
      quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), HUtil.copyIfNecessary(quotedNode_3));
    }
    return quotedNode_2;
  }
  private static SNode _quotation_createNode_tfz3o4_a0a0a0a6a8(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d512e1eL, "jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation"), null, null, false);
    quotedNode_2.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), quotedNode_2, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()"), facade.createNodeId("~Object.<init>()")));
    {
      List<SNode> nodes = (List<SNode>) parameter_1;
      for (SNode child : nodes) {
        quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), HUtil.copyIfNecessary(child));
      }
    }
    return quotedNode_2;
  }
  private static SNode _quotation_createNode_tfz3o4_a0a2a01(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7feL, "jetbrains.mps.baseLanguage.structure.ReturnStatement"), null, null, false);
    quotedNode_3 = (SNode) parameter_1;
    if (quotedNode_3 != null) {
      quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7feL, 0xf8cc6bf96cL, "expression"), HUtil.copyIfNecessary(quotedNode_3));
    }
    return quotedNode_2;
  }
  private static SNode _quotation_createNode_tfz3o4_a0a0c0k(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"), null, null, false);
    quotedNode_3 = (SNode) parameter_1;
    if (quotedNode_3 != null) {
      quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), HUtil.copyIfNecessary(quotedNode_3));
    }
    return quotedNode_2;
  }
}
