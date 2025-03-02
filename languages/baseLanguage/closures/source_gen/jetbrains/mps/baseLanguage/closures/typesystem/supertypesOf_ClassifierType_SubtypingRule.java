package jetbrains.mps.baseLanguage.closures.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.SubtypingRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.ISubtypingRule_Runtime;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.baseLanguage.scopes.RepositoryStateCacheUtils;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import java.util.Iterator;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.baseLanguage.behavior.IGenericType_BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public class supertypesOf_ClassifierType_SubtypingRule extends SubtypingRule_Runtime implements ISubtypingRule_Runtime {
  public supertypesOf_ClassifierType_SubtypingRule() {
  }
  public List<SNode> getSubOrSuperTypes(SNode ct, TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    List<SNode> supertypes = ListSequence.fromList(new ArrayList<SNode>());
    final SNode classifier = SLinkOperations.getTarget(ct, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));
    if (SNodeOperations.isInstanceOf(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")) || SPropertyOperations.getBoolean(SNodeOperations.as(classifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xfa5cee6dfaL, "abstractClass"))) {

      Tuples._2<Boolean, SNode> fromCache = RepositoryStateCacheUtils.getFromCache("supertypesOf_ClassifierType", classifier, new _FunctionTypes._return_P0_E0<Tuples._2<Boolean, SNode>>() {
        public Tuples._2<Boolean, SNode> invoke() {
          Iterable<SNode> methods = Classifier_BehaviorDescriptor.methods_id4_LVZ3pBKCn.invoke(classifier);
          Iterable<SNode> cands = Sequence.fromIterable(methods).where(new IWhereFilter<SNode>() {
            public boolean accept(SNode m) {
              return !("equals".equals(SPropertyOperations.getString(m, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")))) && SPropertyOperations.getBoolean(m, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, 0x1126a8d157dL, "isAbstract"));
            }
          });
          Iterator<SNode> it = Sequence.fromIterable(cands).iterator();
          SNode mtd = (it.hasNext() ? it.next() : null);
          return MultiTuple.<Boolean,SNode>from(!(it.hasNext()) && (mtd != null), mtd);
        }
      });

      boolean aFunctionInterface = (boolean) fromCache._0();
      SNode mtd = fromCache._1();

      if (aFunctionInterface) {
        List<SNode> paramTypes = new ArrayList<SNode>();

        Map<SNode, SNode> subs = MapSequence.fromMap(new HashMap<SNode, SNode>());
        IGenericType_BehaviorDescriptor.collectGenericSubstitutions_id3zZky3wF74h.invoke(ct, subs);

        for (SNode p : SLinkOperations.getChildren(mtd, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))) {
          SNode pt = SLinkOperations.getTarget(p, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"));
          if (SNodeOperations.isInstanceOf(pt, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
            pt = IGenericType_BehaviorDescriptor.expandGenerics_id3zZky3wFPhu.invoke(SNodeOperations.cast(pt, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
          }
          ListSequence.fromList(paramTypes).addElement(pt);
        }

        SNode rt = SLinkOperations.getTarget(mtd, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType"));
        if (SNodeOperations.isInstanceOf(rt, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
          rt = IGenericType_BehaviorDescriptor.expandGenerics_id3zZky3wFPhu.invoke(SNodeOperations.cast(rt, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), subs);
        }
        supertypes = ListSequence.fromListAndArray(new ArrayList<SNode>(), _quotation_createNode_qen718_a0a0j0g0c0b(paramTypes, rt));
      }
    }
    return supertypes;
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean isWeak() {
    return true;
  }
  private static SNode _quotation_createNode_qen718_a0a0j0g0c0b(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174a4d19ffL, "jetbrains.mps.baseLanguage.closures.structure.FunctionType"), null, null, false);
    {
      List<SNode> nodes = (List<SNode>) parameter_1;
      for (SNode child : nodes) {
        quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174a4d19ffL, 0x1174a4e013cL, "parameterType"), HUtil.copyIfNecessary(child));
      }
    }
    quotedNode_5 = (SNode) parameter_2;
    if (quotedNode_5 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174a4d19ffL, 0x1174a4d5371L, "resultType"), HUtil.copyIfNecessary(quotedNode_5));
    }
    return quotedNode_3;
  }
}
