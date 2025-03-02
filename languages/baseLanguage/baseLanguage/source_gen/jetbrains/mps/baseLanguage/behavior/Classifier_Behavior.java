package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import java.util.Set;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.ArrayList;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.LanguageID;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.typesystem.inference.TypeChecker;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.baseLanguage.search.IClassifiersSearchScopeAdapter;
import jetbrains.mps.baseLanguage.search.IClassifiersSearchScope;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class Classifier_Behavior {
  public static Set<SNode> call_getAllExtendedClassifiers_2907982978864985482(SNode __thisNode__) {
    // should be cached // based on extended classifiers 
    // without cyclic dependencies checking 
    Set<SNode> result = SetSequence.fromSet(new HashSet<SNode>());
    Classifier_BehaviorDescriptor.getAllExtendedClassifiers_id2xreLMO8jm_.invoke(__thisNode__, result);
    return result;
  }
  public static void call_getAllExtendedClassifiers_2907982978864985509(SNode __thisNode__, Set<SNode> nodes) {
    if (SetSequence.fromSet(nodes).contains(__thisNode__)) {
      return;
    }
    SetSequence.fromSet(nodes).addElement(__thisNode__);
    for (SNode extended : Classifier_BehaviorDescriptor.getExtendedClassifierTypes_id1UeCwxlWKny.invoke(__thisNode__)) {
      Classifier_BehaviorDescriptor.getAllExtendedClassifiers_id2xreLMO8jm_.invoke(SLinkOperations.getTarget(extended, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), nodes);
    }
  }
  public static String call_getNestedNameInContext_8540045600162183880(SNode __thisNode__, SNode context) {
    List<SNode> containers = ListSequence.fromList(SNodeOperations.getNodeAncestors(__thisNode__, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), true)).reversedList();
    List<SNode> contextContainers = SNodeOperations.getNodeAncestors(context, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), true);

    List<SNode> ancestors = SNodeOperations.getNodeAncestors(context, null, true);
    if (ListSequence.fromList(ancestors).contains(SNodeOperations.getParent(__thisNode__)) || ListSequence.fromList(ancestors).contains(__thisNode__)) {
      return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    }

    int index = -1;
    for (SNode ctxCls : contextContainers) {
      index = ListSequence.fromList(containers).indexOf(ctxCls);
      if (index != -1) {
        break;
      }
    }
    if (index != -1) {
      List<SNode> newContainers = new ArrayList<SNode>();
      for (int i = index + 1; i < ListSequence.fromList(containers).count(); i++) {
        ListSequence.fromList(newContainers).addElement(ListSequence.fromList(containers).getElement(i));
      }
      containers = newContainers;
    }

    if (ListSequence.fromList(containers).count() == 1) {
      return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    }

    StringBuilder result = new StringBuilder();
    boolean first = true;
    for (SNode c : containers) {
      if (first) {
        first = false;
      } else {
        result.append(".");
      }
      result.append(SPropertyOperations.getString(c, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
    }
    return result.toString();
  }
  @Deprecated
  public static boolean call_isStatic_521412098689998668(SNode __thisNode__) {
    // use virtual method instead 
    return IClassifierMember_BehaviorDescriptor.isStatic_id6r77ob2USS8.invoke(__thisNode__);
  }
  public static boolean call_isInner_521412098689998677(SNode __thisNode__) {
    return SNodeOperations.isInstanceOf(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"));
  }
  public static boolean call_isSame_4855996797771684010(SNode __thisNode__, SNode that) {
    if (SNodeOperations.getConceptDeclaration(__thisNode__) != SNodeOperations.getConceptDeclaration(that)) {
      return false;
    }
    // ignore model defferences for java_stub models 
    String javastub = SModelStereotype.getStubStereotypeForId(LanguageID.JAVA);
    if (javastub.equals(jetbrains.mps.util.SNodeOperations.getModelStereotype(SNodeOperations.getModel(__thisNode__))) && javastub.equals(jetbrains.mps.util.SNodeOperations.getModelStereotype(SNodeOperations.getModel(that)))) {
      return INamedConcept_BehaviorDescriptor.getFqName_idhEwIO9y.invoke(__thisNode__).equals(INamedConcept_BehaviorDescriptor.getFqName_idhEwIO9y.invoke(that));
    }
    return __thisNode__ == that;
  }
  public static boolean call_canInstantiateIn_6935810692634457550(SNode __thisNode__, SNode context) {
    List<SNode> contextClassifiers = Classifier_BehaviorDescriptor.getNonStaticContextClassifiers_id5S7J9l$QYtM.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")), context);
    List<SNode> required = Classifier_BehaviorDescriptor.getNonStaticContextClassifiers_id5S7J9l$QYtM.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")), __thisNode__);
    ListSequence.fromList(required).removeElement(__thisNode__);
    for (final SNode req : required) {
      if (!(ListSequence.fromList(contextClassifiers).any(new IWhereFilter<SNode>() {
        public boolean accept(SNode cl) {
          return Classifier_BehaviorDescriptor.isDescendant_id6dL7A1DpKo1.invoke(cl, req);
        }
      }))) {
        return false;
      }
    }
    return true;
  }
  public static SNode call_getWithResolvedTypevars_3305065273710852527(SNode __thisNode__, SNode t, SNode ancestor, SNode method, SNode baseMethod) {
    SNode coercedType = TypeChecker.getInstance().getRuntimeSupport().coerce_(Classifier_BehaviorDescriptor.getThisType_id2RtWPFZ12w7.invoke(__thisNode__), new Classifier_Behavior.Pattern_qw8l7c_a1a0a0a7(ancestor), true);
    if (SNodeOperations.isInstanceOf(t, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"))) {
      return Classifier_BehaviorDescriptor.getResolvedVar_id2RtWPFZ12Bt.invoke(__thisNode__, SNodeOperations.cast(t, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference")), ancestor, coercedType, method, baseMethod);
    } else {
      SNode result = SNodeOperations.copyNode(t);
      for (SNode reference : SNodeOperations.getNodeDescendants(result, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"), false, new SAbstractConcept[]{})) {
        SNode resolvedVar = Classifier_BehaviorDescriptor.getResolvedVar_id2RtWPFZ12Bt.invoke(__thisNode__, reference, ancestor, coercedType, method, baseMethod);
        if (reference != resolvedVar) {
          SNodeOperations.replaceWithAnother(reference, resolvedVar);
        }
      }
      return result;
    }
  }
  public static SNode call_getResolvedVar_3305065273710881245(SNode __thisNode__, SNode reference, SNode ancestor, SNode coercedType, SNode method, SNode baseMethod) {
    SNode decl = SLinkOperations.getTarget(reference, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"));
    int i = ListSequence.fromList(SLinkOperations.getChildren(ancestor, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).indexOf(decl);
    SNode resolvedVar;
    if (i < 0) {
      SNode var = Classifier_BehaviorDescriptor.getResolvedMethodVar_idIqmIRMsvlW.invoke(__thisNode__, reference, method, baseMethod);
      if (var != null) {
        return var;
      }
      resolvedVar = reference;
    } else if (i < ListSequence.fromList(SLinkOperations.getChildren(coercedType, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).count()) {
      resolvedVar = SNodeOperations.copyNode(ListSequence.fromList(SLinkOperations.getChildren(coercedType, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).getElement(i));
    } else {
      resolvedVar = TypeVariableDeclaration_BehaviorDescriptor.getConcreteUpperBound_id3LgQEacCviw.invoke(decl);
    }
    return resolvedVar;
  }
  public static SNode call_getResolvedMethodVar_836080658851951996(SNode __thisNode__, SNode reference, SNode method, SNode baseMethod) {
    int i = ListSequence.fromList(SLinkOperations.getChildren(baseMethod, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).indexOf(SLinkOperations.getTarget(reference, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration")));
    if (i >= 0 && i <= ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).count()) {
      SNode varRef = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference")), null);
      SLinkOperations.setTarget(varRef, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"), ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).getElement(i));
      return varRef;
    }
    return null;
  }
  public static Iterable<SNode> call_members_1465982738252129704(SNode __thisNode__) {
    // todo: change on .members 
    List<SNode> members = ListSequence.fromList(new ArrayList<SNode>());

    SNode asClass = SNodeOperations.as(__thisNode__, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"));

    if ((SLinkOperations.getTarget(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x118f0bb6f38L, "instanceInitializer")) != null)) {
      ListSequence.fromList(members).addElement(SLinkOperations.getTarget(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x118f0bb6f38L, "instanceInitializer")));
    }
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x106c32c4395L, "staticField"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xf8c108ca67L, "field"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x117b77c3991L, "property"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xf8c108ca69L, "constructor"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x101f2cc410bL, "method"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xf93c860970L, "staticMethod"))));
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x1126b0986b7L, "staticInnerClassifiers"))));
    if ((SLinkOperations.getTarget(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x11c7540b43aL, "classInitializer")) != null)) {
      ListSequence.fromList(members).addElement(SLinkOperations.getTarget(asClass, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x11c7540b43aL, "classInitializer")));
    }

    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))));

    return members;
  }
  public static Iterable<SNode> call_nestedClassifiers_5292274854859193142(SNode __thisNode__) {
    return Sequence.fromIterable(Classifier_BehaviorDescriptor.members_id1hodSy8nQmC.invoke(__thisNode__)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"));
      }
    });
  }
  public static Iterable<SNode> call_staticFields_5292274854859223538(SNode __thisNode__) {
    return Sequence.fromIterable(Classifier_BehaviorDescriptor.members_id1hodSy8nQmC.invoke(__thisNode__)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"));
      }
    });
  }
  public static Iterable<SNode> call_staticMethods_8353022880012524412(SNode __thisNode__) {
    return Sequence.fromIterable(Classifier_BehaviorDescriptor.members_id1hodSy8nQmC.invoke(__thisNode__)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration"));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration"));
      }
    });
  }
  public static Iterable<SNode> call_methods_5292274854859311639(SNode __thisNode__) {
    return Sequence.fromIterable(Classifier_BehaviorDescriptor.members_id1hodSy8nQmC.invoke(__thisNode__)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    });
  }
  public static List<SNode> call_getNonStaticContextClassifiers_6775591514230482802(SAbstractConcept __thisConcept__, SNode context) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode current : ListSequence.fromList(SNodeOperations.getNodeAncestors(context, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), true))) {
      if (SNodeOperations.isInstanceOf(current, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass"))) {
        SNode classifier = SLinkOperations.getTarget(SNodeOperations.cast(current, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x1107e0fd2a0L, "classifier"));
        if ((classifier == null)) {
          continue;
        }
        ListSequence.fromList(result).addElement(classifier);
      } else {
        ListSequence.fromList(result).addElement(current);
        if (IClassifierMember_BehaviorDescriptor.isStatic_id6r77ob2USS8.invoke(current)) {
          // according to Java rules static inner classifiers can be only on the second level so we can 
          // safely break here 
          break;
        }
      }
    }
    return result;
  }
  public static SNode call_getContextClassifier_6172562527426750080(SAbstractConcept __thisConcept__, SNode expr) {
    SNode concept = ClassConcept_BehaviorDescriptor.getContextClass_id6WzWPTX2$6q.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")), expr);
    if (concept != null) {
      return concept;
    }
    return SNodeOperations.getNodeAncestor(expr, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), false, false);
  }
  @Deprecated
  public static List<SNode> call_getAccessibleMembers_669019847198843527(SAbstractConcept __thisConcept__, SNode contextNode, int constraint) {
    SNode classifier = ClassConcept_BehaviorDescriptor.getContextClass_id6WzWPTX2$6q.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")), contextNode);
    List<SNode> result = new ArrayList<SNode>();
    while (classifier != null) {
      ListSequence.fromList(result).addSequence(Sequence.fromIterable(IClassifiersSearchScopeAdapter.filterMembers(IClassifierType_BehaviorDescriptor.getVisibleMembers_id5laDzmpBPtZ.invoke(IClassifier_BehaviorDescriptor.getThisType_id6r77ob2UWbY.invoke(classifier), contextNode), constraint)).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return SNodeOperations.as(it, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x112574373bdL, "jetbrains.mps.baseLanguage.structure.ClassifierMember"));
        }
      }));
      if (!(IClassifierMember_BehaviorDescriptor.isStatic_id6r77ob2USS8.invoke(classifier)) || (constraint & IClassifiersSearchScope.STATIC_MEMBER) != 0) {
        classifier = SNodeOperations.getNodeAncestor(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), false, false);
      } else {
        break;
      }
    }
    return result;
  }
  public static class Pattern_qw8l7c_a1a0a0a7 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ List<SNode> patternVar_l;
    /*package*/ SNode patternVar_foo;
    /*package*/ Object AntiquotationField_qw8l7c_a0a0a0a0a42;
    public Pattern_qw8l7c_a1a0a0a7(Object parameter_qw8l7c_a0a0a0a0a42) {
      this.AntiquotationField_qw8l7c_a0a0a0a0a42 = parameter_qw8l7c_a0a0a0a0a42;
    }
    public SConcept getConcept() {
      return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType");
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_qw8l7c_a0a0a0a42 = nodeToMatch;
        if (!(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType").equals(nodeToMatch_qw8l7c_a0a0a0a42.getConcept()))) {
          return false;
        }
        {
          SNode referent;
          referent = (SNode) this.AntiquotationField_qw8l7c_a0a0a0a0a42;
          if (nodeToMatch_qw8l7c_a0a0a0a42.getReferenceTarget(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")) != referent) {
            return false;
          }
        }
        {
          SContainmentLink childRole_qw8l7c_ = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter");
          this.patternVar_l = ListSequence.fromList(new ArrayList<SNode>());
          patternVar_foo = null;
          for (SNode childVar : nodeToMatch_qw8l7c_a0a0a0a42.getChildren(childRole_qw8l7c_)) {
            patternVar_foo = childVar;
            ListSequence.fromList(this.patternVar_l).addElement(childVar);
          }
        }
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return true;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_l = (List<SNode>) pattern.getFieldValue("patternVar_l");
        patternVar_foo = (SNode) pattern.getFieldValue("patternVar_foo");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_l".equals(fieldName)) {
        return patternVar_l;
      }
      if ("patternVar_foo".equals(fieldName)) {
        return patternVar_foo;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
}
