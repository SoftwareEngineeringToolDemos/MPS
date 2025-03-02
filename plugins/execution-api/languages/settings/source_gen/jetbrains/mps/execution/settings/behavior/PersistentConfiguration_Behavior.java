package jetbrains.mps.execution.settings.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.execution.common.behavior.IGeneratedToClass_BehaviorDescriptor;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class PersistentConfiguration_Behavior {
  public static String call_getGeneratedEditorName_946964771156066479(SNode __thisNode__) {
    return IGeneratedToClass_BehaviorDescriptor.getGeneratedClassName_idO$iR4JBsSg.invoke(__thisNode__) + "_" + PersistentConfiguration_BehaviorDescriptor.getEditorSuffix_idO$iR4J$g3R.invoke(__thisNode__);
  }
  public static String call_getFullEditorName_946964771156066491(SNode __thisNode__) {
    return IGeneratedToClass_BehaviorDescriptor.getFullName_idO$iR4JBsSv.invoke(__thisNode__) + "_" + PersistentConfiguration_BehaviorDescriptor.getEditorSuffix_idO$iR4J$g3R.invoke(__thisNode__);
  }
  public static List<SNode> call_getTemplateProperties_946964771156066510(SNode __thisNode__) {
    return ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910122L, 0xd244b712f910123L, "persistentProperty"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return PersistentPropertyDeclaration_BehaviorDescriptor.isTemplate_idO$iR4J$g8G.invoke(it);
      }
    }).toListSequence();
  }
  public static List<SNode> call_getNonTemplateProperties_946964771156066530(SNode __thisNode__) {
    return ListSequence.fromList(SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910122L, 0xd244b712f910123L, "persistentProperty"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return !(PersistentPropertyDeclaration_BehaviorDescriptor.isTemplate_idO$iR4J$g8G.invoke(it));
      }
    }).toListSequence();
  }
  public static String call_getEditorSuffix_946964771156066551(SNode __thisNode__) {
    return "Editor";
  }
  public static SNode call_getContextPersistentConfigurationType_946964771156066389(SAbstractConcept __thisConcept__, SNode node) {
    SNode configuration = SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910020L, "jetbrains.mps.execution.settings.structure.PersistentConfiguration"), false, false);
    if (configuration == null) {
      SNode executor = SNodeOperations.getNodeAncestor(node, MetaAdapterFactory.getInterfaceConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f9dce91L, "jetbrains.mps.execution.settings.structure.PersistentConfigurationAssistent"), false, false);
      if (executor != null) {
        configuration = SLinkOperations.getTarget(executor, MetaAdapterFactory.getReferenceLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f9dce91L, 0xd244b712f9dce92L, "configuration"));
      }
    }
    return createPersistentConfigurationType_4ves9l_a2a8(configuration);
  }
  public static List<SNode> call_getContextPersistentProperties_946964771156066434(SAbstractConcept __thisConcept__, SNode node) {
    SNode configurationType = PersistentConfiguration_BehaviorDescriptor.getContextPersistentConfigurationType_idO$iR4J$g1l.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910020L, "jetbrains.mps.execution.settings.structure.PersistentConfiguration").getDeclarationNode()), node);
    if ((configurationType == null) || (SLinkOperations.getTarget(configurationType, MetaAdapterFactory.getReferenceLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, 0xd244b712f91001dL, "persistentConfiguration")) == null)) {
      return new ArrayList<SNode>();
    }
    return SLinkOperations.getChildren(SLinkOperations.getTarget(configurationType, MetaAdapterFactory.getReferenceLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, 0xd244b712f91001dL, "persistentConfiguration")), MetaAdapterFactory.getContainmentLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910122L, 0xd244b712f910123L, "persistentProperty"));
  }
  public static String call_getCheckMethodName_946964771156066466(SAbstractConcept __thisConcept__) {
    return "checkConfiguration";
  }
  private static SNode createPersistentConfigurationType_4ves9l_a2a8(Object p0) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, "jetbrains.mps.execution.settings.structure.PersistentConfigurationType"), null, null, false);
    n1.setReferenceTarget(MetaAdapterFactory.getReferenceLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91001cL, 0xd244b712f91001dL, "persistentConfiguration"), (SNode) p0);
    return n1;
  }
}
