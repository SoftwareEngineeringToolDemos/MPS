package jetbrains.mps.console.actions.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.console.tool.ConsoleTool;
import jetbrains.mps.console.tool.ConsoleTab;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

public class FindInstancesByCondition_Action extends BaseAction {
  private static final Icon ICON = null;
  public FindInstancesByCondition_Action() {
    super("Find Instances by Condition", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return false;
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      Project p = event.getData(CommonDataKeys.PROJECT);
      MapSequence.fromMap(_params).put("project", p);
      if (p == null) {
        return false;
      }
    }
    {
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      if (node != null && !(SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, "jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration")))) {
        node = null;
      }
      MapSequence.fromMap(_params).put("node", node);
      if (node == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    ConsoleTool tool = ((Project) MapSequence.fromMap(_params).get("project")).getComponent(ConsoleTool.class);
    ConsoleTab tab = tool.getCurrentEditableTab();
    SNode command = _quotation_createNode_flklsf_a0c0a(((SNode) MapSequence.fromMap(_params).get("node")));
    tab.insertCommand(command);
    tab.selectNode(SLinkOperations.getTarget(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(tab.getRoot(), MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x15fb34051f725a2cL, 0x15fb34051f725bb1L, "commandHolder")), MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), false, new SAbstractConcept[]{})).first(), MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf0522fL, "body")));
  }
  private static SNode _quotation_createNode_flklsf_a0c0a(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    SNode quotedNode_6 = null;
    SNode quotedNode_7 = null;
    SNode quotedNode_8 = null;
    SNode quotedNode_9 = null;
    SNode quotedNode_10 = null;
    SNode quotedNode_11 = null;
    SNode quotedNode_12 = null;
    SNode quotedNode_13 = null;
    SNode quotedNode_14 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x6a40a3596560a9d9L, "jetbrains.mps.console.base.structure.BLExpression"), null, null, false);
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x75bb0160f191d79fL, "jetbrains.mps.console.ideCommands.structure.ShowExpression"), null, null, false);
    quotedNode_4 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"), null, null, false);
    quotedNode_5 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x6b643f33718aa10dL, "jetbrains.mps.lang.smodel.query.structure.InstancesExpression"), null, null, false);
    quotedNode_7 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x1120c45902cL, "jetbrains.mps.lang.smodel.structure.RefConcept_Reference"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_7, MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x1120c45902cL, 0x1120c45d024L, "conceptDeclaration"), (SNode) parameter_1);
    quotedNode_5.addChild(MetaAdapterFactory.getContainmentLink(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x6b643f33718aa10dL, 0x6b643f33718aa10eL, "conceptArg"), quotedNode_7);
    quotedNode_8 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x3bc644217616ddf9L, "jetbrains.mps.lang.smodel.query.structure.QueryParameterList"), null, null, false);
    quotedNode_10 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x3bc644217618ed2fL, "jetbrains.mps.lang.smodel.query.structure.QueryParameterScope"), null, null, false);
    quotedNode_13 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x3bc64421763adda2L, "jetbrains.mps.console.base.structure.ProjectScope"), null, null, false);
    quotedNode_10.addChild(MetaAdapterFactory.getContainmentLink(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x3bc644217618ed2fL, 0x3bc64421763bef89L, "value"), quotedNode_13);
    quotedNode_8.addChild(MetaAdapterFactory.getContainmentLink(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x3bc644217616ddf9L, 0x3bc6442176a262a6L, "parameter"), quotedNode_10);
    quotedNode_5.addChild(MetaAdapterFactory.getContainmentLink(0x1a8554c4eb8443baL, 0x8c346f0d90c6e75aL, 0x3bc64421760bacfdL, 0x3bc644217616e548L, "parameter"), quotedNode_8);
    quotedNode_4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), quotedNode_5);
    quotedNode_6 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x117e3fd45c4L, "jetbrains.mps.baseLanguage.collections.structure.WhereOperation"), null, null, false);
    quotedNode_9 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, "jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_9, MetaAdapterFactory.getProperty(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0xc5cbfc0eeac457bL, "forceMultiLine"), "true");
    quotedNode_11 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"), null, null, false);
    quotedNode_9.addChild(MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf0522fL, "body"), quotedNode_11);
    quotedNode_12 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x118374464e4L, "jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_12, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "node");
    quotedNode_14 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x431d52a5d09a4ea9L, "jetbrains.mps.baseLanguage.structure.UndefinedType"), null, null, false);
    quotedNode_12.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), quotedNode_14);
    quotedNode_9.addChild(MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174bed3125L, 0x1174bf02c34L, "parameter"), quotedNode_12);
    quotedNode_6.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x1188372895aL, 0x11883748452L, "closure"), quotedNode_9);
    quotedNode_4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), quotedNode_6);
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x75bb0160f191d79fL, 0x6979f0787b81e875L, "object"), quotedNode_4);
    quotedNode_2.addChild(MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x6a40a3596560a9d9L, 0x6a40a3596560aa42L, "expression"), quotedNode_3);
    return quotedNode_2;
  }
}
