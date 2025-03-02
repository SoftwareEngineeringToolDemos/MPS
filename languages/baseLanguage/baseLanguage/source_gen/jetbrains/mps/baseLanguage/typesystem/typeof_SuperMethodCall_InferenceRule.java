package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.baseLanguage.behavior.IMethodCall_BehaviorDescriptor;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import java.util.Iterator;
import jetbrains.mps.baseLanguage.behavior.IGenericType_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.behavior.ITypeApplicable_BehaviorDescriptor;
import jetbrains.mps.typesystem.inference.EquationInfo;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class typeof_SuperMethodCall_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_SuperMethodCall_InferenceRule() {
  }
  public void applyRule(final SNode methodCall, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    final SNode mdecl = SLinkOperations.getTarget(methodCall, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
    if (mdecl == null) {
      return;
    }

    SNode contextClassifier = Classifier_BehaviorDescriptor.getContextClassifier_id5mDmeD1aaq0.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier").getDeclarationNode()), methodCall);
    if (contextClassifier == null) {
      return;
    }

    SNode thisType = Classifier_BehaviorDescriptor.getThisType_id2RtWPFZ12w7.invoke(contextClassifier);

    final Map<SNode, SNode> subs = MapSequence.fromMap(new HashMap<SNode, SNode>());
    // check the inference context 
    if (!(IMethodCall_BehaviorDescriptor.isInTypeInferenceContext_id4cxv$9$kw67.invoke(methodCall))) {
      List<SNode> inferrableTypeVars = ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(mdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"), false, new SAbstractConcept[]{})).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"));
        }
      }).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SNodeOperations.getParent(it) == mdecl;
        }
      }).toListSequence();
      List<SNode> boundTypeVars = ListSequence.fromList(SLinkOperations.getChildren(mdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).translate(new ITranslator2<SNode, SNode>() {
        public Iterable<SNode> translate(SNode p) {
          return SNodeOperations.getNodeDescendants(p, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, "jetbrains.mps.baseLanguage.structure.TypeVariableReference"), false, new SAbstractConcept[]{});
        }
      }).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102467229d8L, 0x1024673a581L, "typeVariableDeclaration"));
        }
      }).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return SNodeOperations.getParent(it) == mdecl;
        }
      }).toListSequence();
      for (SNode tvd : ListSequence.fromList(inferrableTypeVars).subtract(ListSequence.fromList(boundTypeVars))) {
        // assume all unbound type vars outside an inference context are Object 
        MapSequence.fromMap(subs).put(tvd, _quotation_createNode_okooqp_a0b0c0k0b());
      }
    }
    if (ListSequence.fromList(SLinkOperations.getChildren(methodCall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0x4500f31eb02a7788L, "typeArgument"))).isEmpty() && ListSequence.fromList(SLinkOperations.getChildren(mdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).isNotEmpty()) {
      for (SNode tvd : ListSequence.fromList(SLinkOperations.getChildren(mdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration")))) {
        if (!(MapSequence.fromMap(subs).containsKey(tvd))) {
          final SNode T_typevar_4837286298389139314 = typeCheckingContext.createNewRuntimeTypesVariable();
          MapSequence.fromMap(subs).put(tvd, typeCheckingContext.getRepresentative(T_typevar_4837286298389139314));
        }
      }
    } else {
      {
        Iterator<SNode> tvd_it = ListSequence.fromList(SLinkOperations.getChildren(mdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).iterator();
        Iterator<SNode> targ_it = ListSequence.fromList(SLinkOperations.getChildren(methodCall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0x4500f31eb02a7788L, "typeArgument"))).iterator();
        SNode tvd_var;
        SNode targ_var;
        while (tvd_it.hasNext() && targ_it.hasNext()) {
          tvd_var = tvd_it.next();
          targ_var = targ_it.next();
          MapSequence.fromMap(subs).put(tvd_var, targ_var);
          if (SNodeOperations.isInstanceOf(targ_var, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
            IGenericType_BehaviorDescriptor.collectGenericSubstitutions_id3zZky3wF74h.invoke(SNodeOperations.cast(targ_var, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
          }
        }
      }
    }

    if (SNodeOperations.isInstanceOf(thisType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
      IGenericType_BehaviorDescriptor.collectGenericSubstitutions_id3zZky3wF74h.invoke(SNodeOperations.cast(thisType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
    }

    List<SNode> argl = SLinkOperations.getChildren(methodCall, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"));
    List<SNode> typel = ITypeApplicable_BehaviorDescriptor.getTypeApplicationParameters_id7bu6bIyR2DR.invoke(mdecl, ListSequence.fromList(argl).count());
    for (SNode type : ListSequence.fromList(typel)) {
      if (SNodeOperations.isInstanceOf(type, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
        IGenericType_BehaviorDescriptor.collectGenericSubstitutions_id3zZky3wF74h.invoke(SNodeOperations.cast(type, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
      }
    }

    SNode retType = SLinkOperations.getTarget(mdecl, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType"));
    if (SNodeOperations.isInstanceOf(retType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
      IGenericType_BehaviorDescriptor.collectGenericSubstitutions_id3zZky3wF74h.invoke(SNodeOperations.cast(retType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
      retType = IGenericType_BehaviorDescriptor.expandGenerics_id3zZky3wFPhu.invoke(SNodeOperations.cast(retType, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
    }
    {
      SNode _nodeToCheck_1029348928467 = methodCall;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "4837286298389139430", 0, null);
      typeCheckingContext.createLessThanInequality((SNode) retType, (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "4837286298389139432", true), false, true, _info_12389875345);
    }

    {
      Iterator<SNode> type_it = ListSequence.fromList(typel).iterator();
      Iterator<SNode> arg_it = ListSequence.fromList(argl).iterator();
      SNode type_var;
      SNode arg_var;
      while (type_it.hasNext() && arg_it.hasNext()) {
        type_var = type_it.next();
        arg_var = arg_it.next();
        if (SNodeOperations.isInstanceOf(type_var, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
          {
            SNode _nodeToCheck_1029348928467 = arg_var;
            EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "4837286298389139447", 0, null);
            typeCheckingContext.createGreaterThanInequality((SNode) IGenericType_BehaviorDescriptor.expandGenerics_id3zZky3wFPhu.invoke(SNodeOperations.cast(type_var, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs), (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "4837286298389139449", true), false, true, _info_12389875345);
          }
        } else {
          if (!(typeCheckingContext.isSingleTypeComputation())) {
            {
              SNode _nodeToCheck_1029348928467 = arg_var;
              EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "4837286298389139463", 0, null);
              typeCheckingContext.createGreaterThanInequality((SNode) type_var, (SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "4837286298389139465", true), true, true, _info_12389875345);
            }
          }
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf9d78b55aaL, "jetbrains.mps.baseLanguage.structure.SuperMethodCall");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return true;
  }
  private static SNode _quotation_createNode_okooqp_a0b0c0k0b() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)"), facade.createNodeId("~Object")));
    return quotedNode_1;
  }
}
