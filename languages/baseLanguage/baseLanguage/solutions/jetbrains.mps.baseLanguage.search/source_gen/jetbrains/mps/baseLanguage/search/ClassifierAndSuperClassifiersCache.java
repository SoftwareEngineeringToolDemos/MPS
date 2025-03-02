package jetbrains.mps.baseLanguage.search;

/*Generated by MPS */

import jetbrains.mps.cache.AbstractCache;
import jetbrains.mps.cache.KeyProducer;
import jetbrains.mps.cache.DataSet;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.Set;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.HashSet;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.cache.CachesManager;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.event.SModelChildEvent;
import jetbrains.mps.smodel.event.SModelPropertyEvent;
import java.util.LinkedHashSet;
import java.util.Iterator;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.smodel.behaviour.BHReflection;
import jetbrains.mps.core.aspects.behaviour.SMethodTrimmedId;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

@Deprecated
/*package*/ final class ClassifierAndSuperClassifiersCache extends AbstractCache {
  private static final KeyProducer keyProducer = new KeyProducer();
  private static final AbstractCache.DataSetCreator<ClassifierAndSuperClassifiersCache> CLASSIFIERS_CACHE_CREATOR = new AbstractCache.DataSetCreator<ClassifierAndSuperClassifiersCache>() {
    @Override
    public DataSet create(ClassifierAndSuperClassifiersCache ownerCache) {
      return new ClassifierAndSuperClassifiersCache.ClassifiersDataSet(ownerCache.myTopClassifier, ownerCache);
    }
  };
  private static final AbstractCache.DataSetCreator<ClassifierAndSuperClassifiersCache> METHODS_CACHE_CREATOR = new AbstractCache.DataSetCreator<ClassifierAndSuperClassifiersCache>() {
    @Override
    public DataSet create(ClassifierAndSuperClassifiersCache ownerCache) {
      return new ClassifierAndSuperClassifiersCache.MethodsDataSet(ownerCache);
    }
  };
  private static final AbstractCache.DataSetCreator<ClassifierAndSuperClassifiersCache> FIELDS_CACHE_CREATOR = new AbstractCache.DataSetCreator<ClassifierAndSuperClassifiersCache>() {
    @Override
    public DataSet create(ClassifierAndSuperClassifiersCache ownerCache) {
      return new ClassifierAndSuperClassifiersCache.FieldsDataSet(ownerCache);
    }
  };
  private final SNode myTopClassifier;
  @Deprecated
  private ClassifierAndSuperClassifiersCache(Object key, SNode topClassifier) {
    super(key);
    this.myTopClassifier = topClassifier;
  }
  @Override
  public Set<SModel> getDependsOnModels(Object element) {
    Set<SModel> dependsOnModel = new HashSet<SModel>();
    for (SNode classifier : this.getClassifiers()) {
      SModel descriptor = SNodeOperations.getModel(classifier);
      assert descriptor != null : "Model descriptor is null for classifier: " + classifier;
      dependsOnModel.add(descriptor);
    }
    return dependsOnModel;
  }
  /*package*/ List<SNode> getClassifiers() {
    ClassifierAndSuperClassifiersCache.ClassifiersDataSet dataSet = (ClassifierAndSuperClassifiersCache.ClassifiersDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.ClassifiersDataSet.ID, CLASSIFIERS_CACHE_CREATOR);
    return dataSet.getClassifiers();
  }
  /*package*/ List<SNode> getMethods() {
    ClassifierAndSuperClassifiersCache.MethodsDataSet dataSet = (ClassifierAndSuperClassifiersCache.MethodsDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.MethodsDataSet.ID, METHODS_CACHE_CREATOR);
    return dataSet.getMethods();
  }
  /*package*/ List<SNode> getOverriddenMethods(SNode method) {
    ClassifierAndSuperClassifiersCache.MethodsDataSet dataSet = (ClassifierAndSuperClassifiersCache.MethodsDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.MethodsDataSet.ID, METHODS_CACHE_CREATOR);
    return dataSet.getOverriddenMethods(method);
  }
  /*package*/ List<SNode> getMethodsByName(String methodName) {
    ClassifierAndSuperClassifiersCache.MethodsDataSet dataSet = (ClassifierAndSuperClassifiersCache.MethodsDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.MethodsDataSet.ID, METHODS_CACHE_CREATOR);
    List<SNode> methods = dataSet.getMethodsByName(methodName);
    if (methods == null) {
      return new ArrayList<SNode>();
    }
    return methods;
  }
  /*package*/ List<SNode> getFields() {
    ClassifierAndSuperClassifiersCache.FieldsDataSet dataSet = (ClassifierAndSuperClassifiersCache.FieldsDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.FieldsDataSet.ID, FIELDS_CACHE_CREATOR);
    return dataSet.getFields();
  }
  /*package*/ SNode getFieldByName(String name) {
    ClassifierAndSuperClassifiersCache.FieldsDataSet dataSet = (ClassifierAndSuperClassifiersCache.FieldsDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.FieldsDataSet.ID, FIELDS_CACHE_CREATOR);
    return dataSet.getFieldByName(name);
  }
  /*package*/ SNode getStaticFieldByName(String name) {
    ClassifierAndSuperClassifiersCache.FieldsDataSet dataSet = (ClassifierAndSuperClassifiersCache.FieldsDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.FieldsDataSet.ID, FIELDS_CACHE_CREATOR);
    return dataSet.getStaticFieldByName(name);
  }
  /*package*/ Map<SNode, SNode> getTypeByTypeVariableMap() {
    ClassifierAndSuperClassifiersCache.ClassifiersDataSet dataSet = (ClassifierAndSuperClassifiersCache.ClassifiersDataSet) this.getDataSet(ClassifierAndSuperClassifiersCache.ClassifiersDataSet.ID, CLASSIFIERS_CACHE_CREATOR);
    return dataSet.getTypeByTypeVariableMap();
  }
  public static ClassifierAndSuperClassifiersCache getInstance(@NotNull SNode topClassifierNode) {
    Object key = keyProducer.createKey(topClassifierNode);
    if (SNodeOperations.getModel(topClassifierNode) == null) {
      return new ClassifierAndSuperClassifiersCache(key, topClassifierNode);
    }

    return (ClassifierAndSuperClassifiersCache) CachesManager.getInstance().getCache(key, topClassifierNode, new CachesManager.CacheCreator<SNode>() {
      @Override
      public AbstractCache create(Object key, SNode element) {
        return new ClassifierAndSuperClassifiersCache(key, element);
      }
    });
  }
  private static final class ClassifiersDataSet extends DataSet {
    public static final String ID = "CLASSIFIERS_DATASET";
    private SNode myTopClassifier;
    private List<SNode> myClassifiers;
    private Map<SNode, SNode> myTypeByTypeVariable;
    private Set<SNode> myDependsOnNodes;
    public ClassifiersDataSet(SNode topClassifier, AbstractCache ownerCache) {
      super(ID, ownerCache, DataSet.DefaultNodeChangedProcessing.DROP_OWNER_CACHE);
      this.myTopClassifier = topClassifier;
    }
    public List<SNode> getClassifiers() {
      return this.myClassifiers;
    }
    @Override
    public Set<SNode> getDependsOnNodes() {
      return this.myDependsOnNodes;
    }
    /*package*/ Map<SNode, SNode> getTypeByTypeVariableMap() {
      return this.myTypeByTypeVariable;
    }
    @Override
    protected void init() {
      this.myTypeByTypeVariable = MapSequence.fromMap(new HashMap<SNode, SNode>());
      this.myClassifiers = ClassifierAndSuperClassifiersCache.ClassifiersDataSet.getImplementedAndExtended(this.myTopClassifier, this.myTypeByTypeVariable);
      this.myDependsOnNodes = SetSequence.fromSet(new HashSet<SNode>());
      for (SNode classifier : this.myClassifiers) {
        SetSequence.fromSet(this.myDependsOnNodes).addElement(classifier);
        if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass"))) {
          for (SNode type : SLinkOperations.getChildren((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x117ac45a693L, "typeParameter"))) {
            SetSequence.fromSet(this.myDependsOnNodes).addElement(type);
            SetSequence.fromSet(this.myDependsOnNodes).addSequence(ListSequence.fromList(SNodeOperations.getNodeDescendants(type, null, false, new SAbstractConcept[]{})));
          }
        } else {
          for (SNode typeVariableDecl : SLinkOperations.getChildren(classifier, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))) {
            SetSequence.fromSet(this.myDependsOnNodes).addElement(typeVariableDecl);
          }
        }
        if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")) && !(SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass")))) {
          SNode classifierType0 = SLinkOperations.getTarget((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass"));
          if (classifierType0 != null) {
            SetSequence.fromSet(this.myDependsOnNodes).addElement(classifierType0);
            SetSequence.fromSet(this.myDependsOnNodes).addSequence(ListSequence.fromList(SNodeOperations.getNodeDescendants(classifierType0, null, false, new SAbstractConcept[]{})));
          }
          for (SNode classifierType1 : SLinkOperations.getChildren((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xff2ac0b419L, "implementedInterface"))) {
            SetSequence.fromSet(this.myDependsOnNodes).addElement(classifierType1);
            SetSequence.fromSet(this.myDependsOnNodes).addSequence(ListSequence.fromList(SNodeOperations.getNodeDescendants(classifierType1, null, false, new SAbstractConcept[]{})));
          }
        } else
        if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))) {
          for (SNode classifierType : SLinkOperations.getChildren((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, 0x101eddadad7L, "extendedInterface"))) {
            SetSequence.fromSet(this.myDependsOnNodes).addElement(classifierType);
            SetSequence.fromSet(this.myDependsOnNodes).addSequence(ListSequence.fromList(SNodeOperations.getNodeDescendants(classifierType, null, false, new SAbstractConcept[]{})));
          }
        }
      }
    }
    @Override
    public void childAdded(SModelChildEvent event) {
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
        String role = event.getChildRole();
        if (!(("typeVariableDeclaration".equals(role) || "superclass".equals(role) || "implementedInterface".equals(role) || "extendedInterface".equals(role) || "typeParameter".equals(role)))) {
          return;
        }
      }
      super.childAdded(event);
    }
    @Override
    public void childRemoved(SModelChildEvent event) {
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
        String role = event.getChildRole();
        if (!(("typeVariableDeclaration".equals(role) || "superclass".equals(role) || "implementedInterface".equals(role) || "extendedInterface".equals(role) || "typeParameter".equals(role)))) {
          return;
        }
      }
      super.childRemoved(event);
    }
    @Override
    public void propertyChanged(SModelPropertyEvent event) {
    }
    private static List<SNode> getImplementedAndExtended(SNode classifier, Map<SNode, SNode> typeByTypeVar) {
      Set<SNode> set = SetSequence.fromSet(new LinkedHashSet<SNode>());
      ClassifierAndSuperClassifiersCache.ClassifiersDataSet.collectImplementedAndExtended(classifier, set, null, typeByTypeVar);
      List<SNode> result = new ArrayList<SNode>();
      ListSequence.fromList(result).addSequence(SetSequence.fromSet(set));
      SNode objectClass = SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)", "~Object");
      if (objectClass != null && !(SetSequence.fromSet(set).contains(objectClass))) {
        int indexOfFirstInterface = 0;
        for (SNode classifierInResult : set) {
          if (SNodeOperations.isInstanceOf(classifierInResult, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))) {
            break;
          }
          indexOfFirstInterface++;
        }
        if (indexOfFirstInterface == 0) {
          result.add(objectClass);
        } else {
          result.add(indexOfFirstInterface, objectClass);
        }
      }
      return result;
    }
    private static void collectImplementedAndExtended(SNode classifier, Set<SNode> result, List<SNode> typeParms, Map<SNode, SNode> typeByTypeVar) {
      if ((classifier == null)) {
        return;
      }
      if (SetSequence.fromSet(result).contains(classifier)) {
        return;
      }
      SetSequence.fromSet(result).addElement(classifier);
      if (typeParms != null && ListSequence.fromList(typeParms).isNotEmpty()) {
        Iterator<SNode> typeVars = ListSequence.fromList(SLinkOperations.getChildren(classifier, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).iterator();
        for (SNode typeParm : typeParms) {
          if (!(typeVars.hasNext())) {
            break;
          }
          SNode typeVar = typeVars.next();
          MapSequence.fromMap(typeByTypeVar).put(typeVar, typeParm);
        }
      }
      if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass"))) {
        SNode cls = SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, "jetbrains.mps.baseLanguage.structure.AnonymousClass"));
        ClassifierAndSuperClassifiersCache.ClassifiersDataSet.collectImplementedAndExtended(SLinkOperations.getTarget(cls, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x1107e0fd2a0L, "classifier")), result, SLinkOperations.getChildren(cls, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1107e0cb103L, 0x117ac45a693L, "typeParameter")), typeByTypeVar);
      } else
      if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))) {
        SNode classifierType0 = SLinkOperations.getTarget((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass"));
        if (classifierType0 != null) {
          ClassifierAndSuperClassifiersCache.ClassifiersDataSet.collectImplementedAndExtended(SLinkOperations.getTarget(classifierType0, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), result, SLinkOperations.getChildren(classifierType0, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter")), typeByTypeVar);
        }
        for (SNode classifierType1 : SLinkOperations.getChildren((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xff2ac0b419L, "implementedInterface"))) {
          ClassifierAndSuperClassifiersCache.ClassifiersDataSet.collectImplementedAndExtended(SLinkOperations.getTarget(classifierType1, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), result, SLinkOperations.getChildren(classifierType1, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter")), typeByTypeVar);
        }
        if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc367070a5L, "jetbrains.mps.baseLanguage.structure.EnumClass"))) {
          ClassifierAndSuperClassifiersCache.ClassifiersDataSet.collectImplementedAndExtended(SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)", "~Enum"), result, null, typeByTypeVar);
        }
      } else
      if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))) {
        for (SNode classifierType : SLinkOperations.getChildren((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface"))), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, 0x101eddadad7L, "extendedInterface"))) {
          ClassifierAndSuperClassifiersCache.ClassifiersDataSet.collectImplementedAndExtended(SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), result, SLinkOperations.getChildren(classifierType, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter")), typeByTypeVar);
        }
      }
    }
  }
  private static final class MethodsDataSet extends DataSet {
    public static final String ID = "METHODS_DATASET";
    private Map<String, List<SNode>> myMethodsByName;
    private Map<SNode, List<SNode>> myOverriddenMethods;
    private Set<SNode> myDependsOnNodes;
    public MethodsDataSet(AbstractCache ownerCache) {
      super(ID, ownerCache, DataSet.DefaultNodeChangedProcessing.DROP_DATA_SET);
    }
    public List<SNode> getMethods() {
      List<SNode> result = new ArrayList<SNode>();
      for (List<SNode> list : MapSequence.fromMap(this.myMethodsByName).values()) {
        ListSequence.fromList(result).addSequence(ListSequence.fromList(list));

      }
      return result;
    }
    public List<SNode> getOverriddenMethods(SNode method) {
      List<SNode> list = MapSequence.fromMap(this.myOverriddenMethods).get(method);
      if (list != null) {
        return list;
      }
      return new ArrayList<SNode>();
    }
    @Nullable
    public List<SNode> getMethodsByName(String methodName) {
      return MapSequence.fromMap(myMethodsByName).get((methodName == null ? "" : methodName));
    }
    @Override
    public Set<SNode> getDependsOnNodes() {
      return this.myDependsOnNodes;
    }
    @Override
    protected void init() {
      List<SNode> allMethods = new ArrayList<SNode>();
      List<SNode> classifiers = ((ClassifierAndSuperClassifiersCache) this.getOwnerCache()).getClassifiers();
      for (SNode classifier : classifiers) {
        ListSequence.fromList(allMethods).addSequence(Sequence.fromIterable(((Iterable<SNode>) BHReflection.invoke(classifier, SMethodTrimmedId.create("methods", MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), "4_LVZ3pBKCn")))));
        ListSequence.fromList(allMethods).addSequence(Sequence.fromIterable(((Iterable<SNode>) BHReflection.invoke(classifier, SMethodTrimmedId.create("staticMethods", MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), "7fFTwQrQPHW")))));
      }
      this.myMethodsByName = MapSequence.fromMap(new HashMap<String, List<SNode>>());
      this.myOverriddenMethods = MapSequence.fromMap(new HashMap<SNode, List<SNode>>());
forEachInAllMethods:
      for (SNode currMethod : allMethods) {
        String name = SPropertyOperations.getString(currMethod, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
        if (name == null) {
          name = "";
        }
        if (!(MapSequence.fromMap(this.myMethodsByName).containsKey(name))) {
          List<SNode> methods = new ArrayList<SNode>();
          methods.add(currMethod);
          MapSequence.fromMap(myMethodsByName).put(name, methods);
          MapSequence.fromMap(myOverriddenMethods).put(currMethod, new ArrayList<SNode>());
        } else {
          int currMethodParmCount = ListSequence.fromList(SLinkOperations.getChildren(currMethod, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).count();
          List<SNode> equalParmCountMethods = new ArrayList<SNode>();
          List<SNode> methods = MapSequence.fromMap(this.myMethodsByName).get(name);
          for (SNode method : methods) {
            if ((SNodeOperations.getParent(currMethod) != SNodeOperations.getParent(method)) && ListSequence.fromList(SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).count() == currMethodParmCount) {
              equalParmCountMethods.add(method);
            }
          }
          if (equalParmCountMethods.size() > 0) {
            if (currMethodParmCount == 0) {
              ListSequence.fromList(MapSequence.fromMap(myOverriddenMethods).get(ListSequence.fromList(equalParmCountMethods).first())).addElement(currMethod);
              continue forEachInAllMethods;
            }
            Map<SNode, SNode> typeByTypeVar = ((ClassifierAndSuperClassifiersCache) this.getOwnerCache()).getTypeByTypeVariableMap();
            String currentParms = this.createMethodParameterTypesString(currMethod, typeByTypeVar);
            for (SNode otherMethod : equalParmCountMethods) {
              String otherParms = this.createMethodParameterTypesString(otherMethod, typeByTypeVar);
              if (otherParms.equals(currentParms)) {
                MapSequence.fromMap(this.myOverriddenMethods).get(otherMethod).add(currMethod);
                continue forEachInAllMethods;
              }
            }
          }
          ListSequence.fromList(MapSequence.fromMap(myMethodsByName).get(name)).addElement(currMethod);
          MapSequence.fromMap(myOverriddenMethods).put(currMethod, new ArrayList<SNode>());
        }
      }
      this.myDependsOnNodes = SetSequence.fromSet(new HashSet<SNode>());
      for (SNode classifier : classifiers) {
        SetSequence.fromSet(this.myDependsOnNodes).addElement(classifier);
      }
      for (SNode method : allMethods) {
        SetSequence.fromSet(this.myDependsOnNodes).addElement(method);
        for (SNode parm : SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))) {
          SNode type = SLinkOperations.getTarget(parm, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"));
          if (type == null) {
            continue;
          }
          SetSequence.fromSet(myDependsOnNodes).addElement(type);
          SetSequence.fromSet(myDependsOnNodes).addSequence(ListSequence.fromList(SNodeOperations.getNodeDescendants(type, null, false, new SAbstractConcept[]{})));
        }
      }
    }
    private String createMethodParameterTypesString(SNode method, Map<SNode, SNode> typeByTypeVar) {
      StringBuilder result = new StringBuilder();
      for (SNode parm : SLinkOperations.getChildren(method, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))) {
        SNode type = SLinkOperations.getTarget(parm, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"));
        type = GenericTypesUtil.getTypeWithResolvedTypeVars(type, typeByTypeVar);
        if (result.length() > 0) {
          result.append(',');
        }
        if (type != null) {
          result.append(((String) BHReflection.invoke(type, SMethodTrimmedId.create("getErasureSignature", null, "hEwIzNx"))));
        } else {
          result.append("");
        }
      }
      return result.toString();
    }
    @Override
    public void childAdded(SModelChildEvent event) {
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
        if (!(SNodeOperations.isInstanceOf(((SNode) event.getChild()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration")))) {
          return;
        }
      }
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"))) {
        String role = event.getChildRole();

        if (!("parameter".equals(role))) {
          return;
        }
      }
      super.childAdded(event);
    }
    @Override
    public void childRemoved(SModelChildEvent event) {
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
        if (!(SNodeOperations.isInstanceOf(((SNode) event.getChild()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration")))) {
          return;
        }
      }
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"))) {
        String role = event.getChildRole();
        if (!("parameter".equals(role))) {
          return;
        }
      }
      super.childRemoved(event);
    }
    @Override
    public void propertyChanged(SModelPropertyEvent event) {
      if ("name".equals(event.getPropertyName()) && SNodeOperations.isInstanceOf(((SNode) event.getNode()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"))) {
        super.propertyChanged(event);
      }
    }
  }
  private static class FieldsDataSet extends DataSet {
    public static final String ID = "FIELDS_DATASET";
    private Map<String, SNode> myFieldsByName;
    private Map<String, SNode> myStaticFieldsByName;
    private Set<SNode> myDependsOnNodes;
    public FieldsDataSet(AbstractCache ownerCache) {
      super(ID, ownerCache, DataSet.DefaultNodeChangedProcessing.DROP_DATA_SET);
    }
    public List<SNode> getFields() {
      List<SNode> result = new ArrayList<SNode>();
      ListSequence.fromList(result).addSequence(Sequence.fromIterable(MapSequence.fromMap(myFieldsByName).values()));
      ListSequence.fromList(result).addSequence(Sequence.fromIterable(MapSequence.fromMap(myStaticFieldsByName).values()));
      return result;
    }
    public SNode getFieldByName(String name) {
      return MapSequence.fromMap(myFieldsByName).get((name == null ? "" : name));
    }
    public SNode getStaticFieldByName(String name) {
      return MapSequence.fromMap(myStaticFieldsByName).get((name == null ? "" : name));
    }
    @Override
    public Set<SNode> getDependsOnNodes() {
      return this.myDependsOnNodes;
    }
    @Override
    protected void init() {
      this.myFieldsByName = MapSequence.fromMap(new HashMap<String, SNode>());
      this.myStaticFieldsByName = MapSequence.fromMap(new HashMap<String, SNode>());
      List<SNode> allFields = ListSequence.fromList(new ArrayList<SNode>());
      List<SNode> classifiers = ((ClassifierAndSuperClassifiersCache) this.getOwnerCache()).getClassifiers();
      for (SNode classifier : classifiers) {
        Iterable<SNode> staticFields = ((Iterable<SNode>) BHReflection.invoke(classifier, SMethodTrimmedId.create("staticFields", MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"), "4_LVZ3pBr7M")));
        ListSequence.fromList(allFields).addSequence(Sequence.fromIterable(staticFields));
        for (SNode staticField : staticFields) {
          String name = SPropertyOperations.getString(staticField, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
          if (name == null) {
            name = "";
          }
          if (!(MapSequence.fromMap(myStaticFieldsByName).containsKey(name))) {
            MapSequence.fromMap(myStaticFieldsByName).put(name, staticField);
          }
        }
        if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))) {
          Iterable<SNode> fields = ((Iterable<SNode>) BHReflection.invoke((SNodeOperations.cast(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))), SMethodTrimmedId.create("fields", MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), "4_LVZ3pC27C")));
          ListSequence.fromList(allFields).addSequence(Sequence.fromIterable(fields));
          for (SNode field : fields) {
            String name = SPropertyOperations.getString(field, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
            if (name == null) {
              name = "";
            }
            if (!(MapSequence.fromMap(myFieldsByName).containsKey(name))) {
              MapSequence.fromMap(myFieldsByName).put(name, field);
            }
          }
        }
      }
      myDependsOnNodes = SetSequence.fromSet(new HashSet<SNode>());
      SetSequence.fromSet(myDependsOnNodes).addSequence(ListSequence.fromList(classifiers));
      SetSequence.fromSet(myDependsOnNodes).addSequence(ListSequence.fromList(allFields));
    }
    @Override
    public void childAdded(SModelChildEvent event) {
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
        SNode child = event.getChild();
        if (!((SNodeOperations.isInstanceOf(child, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) || SNodeOperations.isInstanceOf(child, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"))))) {
          return;
        }
      }
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration"))) {
        return;
      }
      super.childAdded(event);
    }
    @Override
    public void childRemoved(SModelChildEvent event) {
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
        SNode child = event.getChild();
        if (!((SNodeOperations.isInstanceOf(child, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) || SNodeOperations.isInstanceOf(child, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"))))) {
          return;
        }
      }
      if (SNodeOperations.isInstanceOf(((SNode) event.getParent()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration"))) {
        return;
      }
      super.childRemoved(event);
    }
    @Override
    public void propertyChanged(SModelPropertyEvent event) {
      SNode node = event.getNode();
      if ("name".equals(event.getPropertyName()) && (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca68L, "jetbrains.mps.baseLanguage.structure.FieldDeclaration")) || SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration")))) {
        super.propertyChanged(event);
      }
    }
  }
}
