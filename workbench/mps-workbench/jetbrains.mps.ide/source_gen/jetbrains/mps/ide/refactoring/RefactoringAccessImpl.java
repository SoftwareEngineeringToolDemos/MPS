package jetbrains.mps.ide.refactoring;

/*Generated by MPS */

import jetbrains.mps.ide.platform.refactoring.RefactoringAccessEx;
import com.intellij.openapi.components.ApplicationComponent;
import jetbrains.mps.ide.MPSCoreComponents;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.platform.refactoring.ModelElementTargetChooser;
import com.intellij.openapi.project.Project;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.ide.platform.refactoring.RefactoringViewAction;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.refactoring.framework.RefactoringContext;

public class RefactoringAccessImpl extends RefactoringAccessEx implements ApplicationComponent {
  public RefactoringAccessImpl(MPSCoreComponents coreComponents) {
  }
  @Override
  public void initComponent() {
    RefactoringAccessEx.setInstance(this);
  }
  @Override
  public void disposeComponent() {
    RefactoringAccessEx.setInstance(null);
  }
  @NonNls
  @NotNull
  @Override
  public String getComponentName() {
    return "MPS Workbench-specific Refactoring Access implementation";
  }
  @Override
  public ModelElementTargetChooser createTargetChooser(Project project, SModel model) {
    ModelOrNodeChooser rv = new ModelOrNodeChooser(project);
    rv.select(model);
    return rv;
  }
  @Override
  public ModelElementTargetChooser createTargetChooser(Project project, SNode node) {
    ModelOrNodeChooser rv = new ModelOrNodeChooser(project);
    rv.select(node);
    return rv;
  }
  @Override
  public void showRefactoringView(Project project, RefactoringViewAction callback, SearchResults searchResults, boolean hasModelsToGenerate, String name) {
    RefactoringView refactoringView = project.getComponent(RefactoringView.class);
    refactoringView.showRefactoringView(project, callback, searchResults, hasModelsToGenerate, name);
  }
  @Override
  public void showRefactoringView(RefactoringContext refactoringContext, RefactoringViewAction callback, SearchResults searchResults, boolean hasModelsToGenerate, String name) {
    RefactoringView refactoringView = refactoringContext.getCurrentOperationContext().getComponent(RefactoringView.class);
    refactoringView.showRefactoringView(refactoringContext, callback, searchResults, hasModelsToGenerate);
  }
}
