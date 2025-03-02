package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.ide.util.GroupedNodesChooser;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BHReflection;
import jetbrains.mps.core.aspects.behaviour.SMethodTrimmedId;

public class SelectFieldsDialog extends GroupedNodesChooser {
  public SelectFieldsDialog(SNodeReference[] fields, boolean allowEmpty, MPSProject mpsProject) {
    super(fields, allowEmpty, true, mpsProject.getProject());
  }
  @Override
  protected String getText(SNode node) {
    if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier"))) {
      return ((String) BHReflection.invoke(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, "jetbrains.mps.baseLanguage.structure.Classifier")), SMethodTrimmedId.create("getFqName", null, "hEwIO9y")));
    }
    return super.getText(node);
  }
}
