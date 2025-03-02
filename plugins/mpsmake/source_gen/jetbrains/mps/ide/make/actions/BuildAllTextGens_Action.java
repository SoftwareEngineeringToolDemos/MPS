package jetbrains.mps.ide.make.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.generator.GenerationFacade;

public class BuildAllTextGens_Action extends BaseAction {
  private static final Icon ICON = null;
  public BuildAllTextGens_Action() {
    super("Rebuild All TextGen models", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    final Wrappers._T<List<SModel>> models = new Wrappers._T<List<SModel>>();
    event.getData(MPSCommonDataKeys.MPS_PROJECT).getModelAccess().runReadAction(new Runnable() {
      public void run() {
        Iterable<? extends SModule> projectModules = event.getData(MPSCommonDataKeys.MPS_PROJECT).getModules();
        models.value = ListSequence.fromListWithValues(new ArrayList<SModel>(), Sequence.fromIterable(projectModules).ofType(Language.class).select(new ISelector<Language, SModel>() {
          public SModel select(Language it) {
            return LanguageAspect.TEXT_GEN.get(it);
          }
        }).where(new IWhereFilter<SModel>() {
          public boolean accept(SModel it) {
            return it != null && GenerationFacade.canGenerate(it);
          }
        }));
      }
    });
    new MakeActionImpl(new MakeActionParameters(event.getData(MPSCommonDataKeys.MPS_PROJECT)).models(models.value).cleanMake(true)).executeAction();
  }
}
