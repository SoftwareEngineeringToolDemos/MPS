package jetbrains.mps.baseLanguage.closures.helper;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.closures.behavior.FunctionType_BehaviorDescriptor;
import java.util.Iterator;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;

public class ClosureLiteralUtil {
  public static boolean hasYieldStatement(SNode cl) {
    for (SNode desc : SNodeOperations.getNodeDescendants(cl, MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x11797183e82L, "jetbrains.mps.baseLanguage.closures.structure.YieldStatement"), false, new SAbstractConcept[]{})) {
      if (cl == SNodeOperations.getNodeAncestorWhereConceptInList(desc, new SAbstractConcept[]{MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11750ef8265L, "jetbrains.mps.baseLanguage.structure.IStatementListContainer"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x1121e2102fdL, "jetbrains.mps.baseLanguage.structure.CommentedStatementsBlock")}, false, false)) {
        return true;
      }
    }
    return false;
  }
  public static List<SNode> collectNonFinalVariableDeclarations(SNode cl) {
    List<SNode> vrefs = ListSequence.fromList(new ArrayList<SNode>());
    for (SNode desc : SNodeOperations.getNodeDescendants(cl, null, false, new SAbstractConcept[]{})) {
      if (SNodeOperations.isInstanceOf(desc, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")) && cl == SNodeOperations.getNodeAncestor(desc, MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), false, false)) {
        SNode vd = SLinkOperations.getTarget(SNodeOperations.cast(desc, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"));
        if (cl != SNodeOperations.getNodeAncestor(vd, MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), false, false)) {
          if (!(SPropertyOperations.getBoolean(vd, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal"))) && (SNodeOperations.isInstanceOf(vd, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7efL, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration")) || SNodeOperations.isInstanceOf(vd, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e94L, "jetbrains.mps.baseLanguage.structure.ParameterDeclaration")))) {
            ListSequence.fromList(vrefs).addElement(SLinkOperations.getTarget(SNodeOperations.cast(desc, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")));
          }
        }
      }
    }
    return vrefs;
  }
  public static SNode fillParams(SNode targetIfaceErase, SNode funType) {
    TypeMatcher matcher = new TypeMatcher();
    SNode meth = Sequence.fromIterable(Classifier_BehaviorDescriptor.methods_id4_LVZ3pBKCn.invoke(SLinkOperations.getTarget(targetIfaceErase, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")))).first();
    if ((meth == null)) {
      return null;
    }
    if ((SLinkOperations.getTarget(meth, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType")) != null) && !(SNodeOperations.isInstanceOf(SLinkOperations.getTarget(meth, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType")))) {
      matcher.matchReturnType(SLinkOperations.getTarget(meth, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType")), FunctionType_BehaviorDescriptor.getNormalizedReturnType_idhEwIOp4.invoke(funType));
    }
    {
      Iterator<SNode> funParamIt = ListSequence.fromList(FunctionType_BehaviorDescriptor.getNormalizedParameterTypes_idhEwIOps.invoke(funType)).iterator();
      Iterator<SNode> methParamIt = ListSequence.fromList(SLinkOperations.getChildren(meth, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).iterator();
      while (funParamIt.hasNext() && methParamIt.hasNext()) {
        matcher.matchType(SLinkOperations.getTarget(methParamIt.next(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), funParamIt.next());
      }
    }

    Map<SNode, SNode> map = matcher.getMap();
    SNode result = SNodeOperations.copyNode(targetIfaceErase);
    if (map != null) {
      Iterator<SNode> targetTypeVarIt = ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(targetIfaceErase, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102463b447aL, 0x102463bb98eL, "typeVariableDeclaration"))).iterator();
      while (targetTypeVarIt.hasNext()) {
        ListSequence.fromList(SLinkOperations.getChildren(result, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).addElement(SNodeOperations.cast(MapSequence.fromMap(map).get(targetTypeVarIt.next()), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL, "jetbrains.mps.baseLanguage.structure.Type")));
      }
    }
    return result;
  }
}
