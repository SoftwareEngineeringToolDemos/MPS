package jetbrains.mps.baseLanguage.collections.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

public final class MigrationFromMapsToCollections_MigrationScript extends BaseMigrationScript {
  public MigrationFromMapsToCollections_MigrationScript() {
    super("Migration from Map to Collections");
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "MapMigration";
      }
      @Override
      public String getAdditionalInfo() {
        return "MapMigration";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return ListMigrationUtil.isApplicableForType(node, 2, ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)", "~Map"), SNodeOperations.getNode("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)", "~HashMap")));
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode result = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116db7e6bcbL, "jetbrains.mps.baseLanguage.collections.structure.MapType")));
        SLinkOperations.setTarget(result, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116db7e6bcbL, 0x116db7f62a8L, "keyType"), SNodeOperations.copyNode(ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).first()));
        SLinkOperations.setTarget(result, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116db7e6bcbL, 0x116db7f8516L, "valueType"), SNodeOperations.copyNode(ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).last()));
        SNodeOperations.replaceWithAnother(node, result);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Get ";
      }
      @Override
      public String getAdditionalInfo() {
        return "Get ";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return ListMigrationUtil.isApplicableForMap(node, "get", ListSequence.fromListAndArray(new ArrayList<ParameterType>(), ParameterType.NOT_INT));
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode operation = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116ea555a25L, "jetbrains.mps.baseLanguage.collections.structure.MapElement")));
        SLinkOperations.setTarget(operation, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116ea555a25L, 0x116ea57b648L, "key"), SNodeOperations.copyNode(ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))).first()));
        SLinkOperations.setTarget(operation, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116ea555a25L, 0x116ea576ac7L, "map"), SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand")));
        SNodeOperations.replaceWithAnother(SNodeOperations.getParent(node), operation);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Put ";
      }
      @Override
      public String getAdditionalInfo() {
        return "Put ";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return ListMigrationUtil.isApplicableForMap(node, "put", ListSequence.fromListAndArray(new ArrayList<ParameterType>(), ParameterType.NOT_INT, ParameterType.NOT_INT));
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode assignment = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e96L, "jetbrains.mps.baseLanguage.structure.AssignmentExpression")));
        SNode operation = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116ea555a25L, "jetbrains.mps.baseLanguage.collections.structure.MapElement")));
        SLinkOperations.setTarget(operation, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116ea555a25L, 0x116ea57b648L, "key"), SNodeOperations.copyNode(ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))).first()));
        SLinkOperations.setTarget(operation, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116ea555a25L, 0x116ea576ac7L, "map"), SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand")));
        SLinkOperations.setTarget(assignment, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e97L, "lValue"), operation);
        SLinkOperations.setTarget(assignment, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e99L, "rValue"), SNodeOperations.copyNode(ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))).last()));
        SNodeOperations.replaceWithAnother(SNodeOperations.getParent(node), assignment);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "values ";
      }
      @Override
      public String getAdditionalInfo() {
        return "values ";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return ListMigrationUtil.isApplicableForMap(node, "values", ListSequence.fromList(new ArrayList<ParameterType>()));
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode values = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x12039220e97L, "jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation")));
        SNodeOperations.replaceWithAnother(node, values);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "keys ";
      }
      @Override
      public String getAdditionalInfo() {
        return "keys ";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return ListMigrationUtil.isApplicableForMap(node, "keySet", ListSequence.fromList(new ArrayList<ParameterType>()));
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode values = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x117d52db67cL, "jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation")));
        SNodeOperations.replaceWithAnother(node, values);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "clear";
      }
      @Override
      public String getAdditionalInfo() {
        return "clear";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return ListMigrationUtil.isApplicableForMap(node, "clear", ListSequence.fromList(new ArrayList<ParameterType>()));
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode values = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x11962b7f964L, "jetbrains.mps.baseLanguage.collections.structure.MapClearOperation")));
        SNodeOperations.replaceWithAnother(node, values);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "HashMap";
      }
      @Override
      public String getAdditionalInfo() {
        return "HashMap";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11a59b0fbceL, "jetbrains.mps.baseLanguage.structure.ClassCreator");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return eq_ds6c8y_a0a0a0d0a0a0a0h0a(SPropertyOperations.getString(SNodeOperations.cast(SNodeOperations.getParent(SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"))), MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), "HashMap") && ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11a59b0fbceL, 0x11a59c8ffe0L, "typeParameter"))).count() == 2 && ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"))).isEmpty();
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode result = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116dbb34f2dL, "jetbrains.mps.baseLanguage.collections.structure.HashMapCreator")));
        SLinkOperations.setTarget(result, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116dbb34f2dL, 0x116dbb5b4d0L, "keyType"), ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11a59b0fbceL, 0x11a59c8ffe0L, "typeParameter"))).first());
        SLinkOperations.setTarget(result, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116dbb34f2dL, 0x116dbb5d76dL, "valueType"), ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11a59b0fbceL, 0x11a59c8ffe0L, "typeParameter"))).last());
        SNodeOperations.replaceWithAnother(node, result);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
  }

  @Nullable
  @Override
  public SNodeReference getScriptNode() {
    return PersistenceFacade.getInstance().createNodeReference("r:00000000-0000-4000-0000-011c8959032d(jetbrains.mps.baseLanguage.collections.scripts)/1238516564139");
  }
  private static boolean eq_ds6c8y_a0a0a0d0a0a0a0h0a(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
