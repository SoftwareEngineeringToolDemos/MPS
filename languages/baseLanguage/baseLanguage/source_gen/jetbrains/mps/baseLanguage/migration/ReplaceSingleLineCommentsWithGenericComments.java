package jetbrains.mps.baseLanguage.migration;

/*Generated by MPS */

import jetbrains.mps.lang.migration.runtime.base.MigrationScriptBase;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.editor.runtime.impl.cellActions.CommentUtil;
import jetbrains.mps.baseLanguage.actions.ModuleDependencyUtils;
import jetbrains.mps.lang.migration.runtime.base.MigrationScriptReference;

public class ReplaceSingleLineCommentsWithGenericComments extends MigrationScriptBase {
  public String getCaption() {
    return "Replace all non-textual nodes of SingleLineComment with the new generic way of commenting out code";
  }
  public SNode execute(SModule m) {
    Iterable<SModel> models = ((Iterable<SModel>) m.getModels());
    Sequence.fromIterable(models).visitAll(new IVisitor<SModel>() {
      public void visit(SModel model) {

        // Remove meaningless empty text comment parts 
        ListSequence.fromList(SModelOperations.nodes(model, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3dL, "jetbrains.mps.baseLanguage.structure.TextCommentPart"))).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return SNodeOperations.isInstanceOf(SNodeOperations.getParent(it), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, "jetbrains.mps.baseLanguage.structure.SingleLineComment")) && isEmptyString(trim_o7ozeo_a0a0a0a0a0a0a0c0a0a0a0b0b(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3dL, 0x57d533a7af15ed3eL, "text")))) && ListSequence.fromList(SNodeOperations.getAllSiblings(it, false)).isNotEmpty();
          }
        }).visitAll(new IVisitor<SNode>() {
          public void visit(SNode it) {
            SNodeOperations.deleteNode(it);
          }
        });

        final Wrappers._boolean moduleModified = new Wrappers._boolean(false);
        ListSequence.fromList(SModelOperations.nodes(model, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, "jetbrains.mps.baseLanguage.structure.SingleLineComment"))).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return ListSequence.fromList(SLinkOperations.getChildren(it, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, 0x57d533a7af16ff73L, "commentPart"))).count() == 1 && SNodeOperations.isInstanceOf(ListSequence.fromList(SLinkOperations.getChildren(it, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, 0x57d533a7af16ff73L, "commentPart"))).first(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af16ff67L, "jetbrains.mps.baseLanguage.structure.StatementCommentPart"));
          }
        }).visitAll(new IVisitor<SNode>() {
          public void visit(SNode oldComment) {
            SNode stmt = SNodeOperations.replaceWithAnother(oldComment, SLinkOperations.getTarget(SNodeOperations.cast(ListSequence.fromList(SLinkOperations.getChildren(oldComment, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, 0x57d533a7af16ff73L, "commentPart"))).first(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af16ff67L, "jetbrains.mps.baseLanguage.structure.StatementCommentPart")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af16ff67L, 0x57d533a7af16ff68L, "commentedStatement")));
            CommentUtil.commentOut(stmt);
            moduleModified.value = true;
          }
        });
        if (moduleModified.value) {
          ModuleDependencyUtils.addDependencyOnCoreIfMissing(model);
        }
      }
    });
    return null;
  }
  public MigrationScriptReference getDescriptor() {
    return new MigrationScriptReference(MetaAdapterFactory.getLanguage(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, "jetbrains.mps.baseLanguage"), 1);
  }

  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
  public static String trim_o7ozeo_a0a0a0a0a0a0a0c0a0a0a0b0b(String str) {
    return (str == null ? null : str.trim());
  }
}
