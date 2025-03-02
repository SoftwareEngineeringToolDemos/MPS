package jetbrains.mps.lang.editor.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import java.util.List;
import jetbrains.mps.lang.editor.behavior.IStyleContainer_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

public final class HorizontalGapMigration_MigrationScript extends BaseMigrationScript {
  public HorizontalGapMigration_MigrationScript() {
    super("Horizontal Gap Migration");
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Padding right delete";
      }
      @Override
      public String getAdditionalInfo() {
        return "Padding right delete";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41d378fL, "jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41b27e5L, 0x11ae41bc2afL, "value")).equals("1.0") || SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41b27e5L, 0x11ae41bc2afL, "value")).equals("1.");
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNodeOperations.deleteNode(node);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Padding left delete";
      }
      @Override
      public String getAdditionalInfo() {
        return "Padding left delete";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41cffc4L, "jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41b27e5L, 0x11ae41bc2afL, "value")).equals("1.0") || SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41b27e5L, 0x11ae41bc2afL, "value")).equals("1.");
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNodeOperations.deleteNode(node);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "First posiotion allowed repacement";
      }
      @Override
      public String getAdditionalInfo() {
        return "First posiotion allowed repacement";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae8b76d40L, "jetbrains.mps.lang.editor.structure.FirstPositionAllowedStyleClassItem");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag")) == false;
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode newNode = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11f41c44bf7L, "jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem")));
        SPropertyOperations.set(newNode, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag"), "" + (true));
        SNodeOperations.replaceWithAnother(node, newNode);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Last position allowed replacement";
      }
      @Override
      public String getAdditionalInfo() {
        return "Last position allowed replacement";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae8b8b7d7L, "jetbrains.mps.lang.editor.structure.LastPositionAllowedStyleClassItem");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        List<SNode> paddingRight = IStyleContainer_BehaviorDescriptor.getClassItems_idhJF5KPu.invoke(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getInterfaceConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11beb039542L, "jetbrains.mps.lang.editor.structure.IStyleContainer")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41d378fL, "jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem").getDeclarationNode());
        return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag")) == false && ListSequence.fromList(paddingRight).isNotEmpty();
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode newNode = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11f41c727e1L, "jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem")));
        SPropertyOperations.set(newNode, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag"), "" + (true));
        SNodeOperations.replaceWithAnother(node, newNode);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Selectable false";
      }
      @Override
      public String getAdditionalInfo() {
        return "Selectable false";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd721ebL, "jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag")) == false;
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        List<SNode> paddingRigth = IStyleContainer_BehaviorDescriptor.getClassItems_idhJF5KPu.invoke(SNodeOperations.cast(SNodeOperations.getParent(node), MetaAdapterFactory.getInterfaceConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11beb039542L, "jetbrains.mps.lang.editor.structure.IStyleContainer")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41d378fL, "jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem").getDeclarationNode());
        if (ListSequence.fromList(paddingRigth).isNotEmpty()) {
          SNode newNode = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11f41c727e1L, "jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem")));
          SPropertyOperations.set(newNode, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag"), "" + (true));
          SNodeOperations.insertNextSiblingChild(node, newNode);
        }
        SNode newNode2 = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11f41c44bf7L, "jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem")));
        SPropertyOperations.set(newNode2, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag"), "" + (true));
        SNodeOperations.insertNextSiblingChild(node, newNode2);
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Add punctuation left to constant cell";
      }
      @Override
      public String getAdditionalInfo() {
        return "Add punctuation left to constant cell";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eb01232eL, "jetbrains.mps.lang.editor.structure.CellModel_Constant");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        if (SNodeOperations.isInstanceOf(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, "jetbrains.mps.lang.editor.structure.CellModel_Collection"))) {
          SNode prev = SNodeOperations.getPrevSibling(node);
          if (ListSequence.fromList(IStyleContainer_BehaviorDescriptor.getClassItems_idhJF5KPu.invoke(SNodeOperations.cast(prev, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eafb9a39L, "jetbrains.mps.lang.editor.structure.EditorCellModel")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41d378fL, "jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem").getDeclarationNode())).isNotEmpty()) {
            return true;
          }
          if (SNodeOperations.isInstanceOf(prev, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfd52a2c922L, "jetbrains.mps.lang.editor.structure.CellModel_RefCell"))) {
            if (ListSequence.fromList(IStyleContainer_BehaviorDescriptor.getClassItems_idhJF5KPu.invoke(SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.cast(prev, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfd52a2c922L, "jetbrains.mps.lang.editor.structure.CellModel_RefCell")), MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfd52a2c922L, 0xfd5cf2df2aL, "editorComponent")), MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfba0eb7c50L, 0xfba0ec5415L, "cellModel")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11ae41d378fL, "jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem").getDeclarationNode())).isNotEmpty()) {
              return true;
            }
          }
        }
        return false;
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNode newNode = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11f41c44bf7L, "jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem")));
        SPropertyOperations.set(newNode, MetaAdapterFactory.getProperty(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1143bd1283bL, 0x1143bd161dbL, "flag"), "" + (true));
        ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x11beb039542L, 0x11beb040d06L, "styleItem"))).addElement(newNode);
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
    return PersistenceFacade.getInstance().createNodeReference("r:00000000-0000-4000-0000-011c8959029d(jetbrains.mps.lang.editor.scripts)/1234198385755");
  }
}
