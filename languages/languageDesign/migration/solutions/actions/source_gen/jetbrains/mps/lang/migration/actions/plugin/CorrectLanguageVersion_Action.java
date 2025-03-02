package jetbrains.mps.lang.migration.actions.plugin;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import jetbrains.mps.smodel.adapter.ids.MetaIdByDeclaration;
import org.jetbrains.mps.openapi.language.SLanguage;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.LanguageAspect;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import javax.swing.SwingUtilities;
import com.intellij.openapi.ui.InputValidator;
import com.intellij.openapi.ui.Messages;
import jetbrains.mps.smodel.ModelAccess;

public class CorrectLanguageVersion_Action extends BaseAction {
  private static final Icon ICON = null;
  public CorrectLanguageVersion_Action() {
    super("Correct Language Version", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(false);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    if (!(((SModule) MapSequence.fromMap(_params).get("module")) instanceof Language)) {
      return false;
    }

    Language lang = ((Language) ((SModule) MapSequence.fromMap(_params).get("module")));
    SLanguageId langId = MetaIdByDeclaration.getLanguageId(lang);
    SLanguage slang = MetaAdapterFactory.getLanguage(langId, lang.getModuleName());

    SModel mig = LanguageAspect.MIGRATION.get(lang);
    if (mig == null) {
      return slang.getLanguageVersion() != 0;
    }

    List<SNode> migrations = SModelOperations.roots(((SModel) mig), MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x73e8a2c68b62c6a3L, "jetbrains.mps.lang.migration.structure.MigrationScript"));
    if (lang.getLanguageVersion() == 0) {
      return false;
    }
    if (ListSequence.fromList(migrations).isEmpty() && lang.getLanguageVersion() != 0) {
      return true;
    }

    int maxFrom = SPropertyOperations.getInteger(ListSequence.fromList(migrations).sort(new ISelector<SNode, Integer>() {
      public Integer select(SNode it) {
        return SPropertyOperations.getInteger(it, MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x73e8a2c68b62c6a3L, 0x50c63f9f4a0dac17L, "fromVersion"));
      }
    }, false).first(), MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x73e8a2c68b62c6a3L, 0x50c63f9f4a0dac17L, "fromVersion"));

    if (lang.getModuleDescriptor().getLanguageVersions().containsKey(slang)) {
      if (lang.getModuleDescriptor().getLanguageVersions().get(slang) != lang.getLanguageVersion()) {
        return true;
      }
    }
    return lang.getLanguageVersion() != maxFrom + 1;
  }
  @Override
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) {
    this.setEnabledState(event.getPresentation(), this.isApplicable(event, _params));
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      SModule p = event.getData(MPSCommonDataKeys.MODULE);
      MapSequence.fromMap(_params).put("module", p);
      if (p == null) {
        return false;
      }
    }
    {
      Project p = event.getData(CommonDataKeys.PROJECT);
      MapSequence.fromMap(_params).put("project", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    final Language lang = ((Language) ((SModule) MapSequence.fromMap(_params).get("module")));
    SModel mig = LanguageAspect.MIGRATION.get(lang);
    List<SNode> scripts = check_wnyb8b_a0c0a(((SModel) mig));
    if (ListSequence.fromList(scripts).isNotEmpty()) {
      int maxFrom = SPropertyOperations.getInteger(ListSequence.fromList(scripts).sort(new ISelector<SNode, Integer>() {
        public Integer select(SNode it) {
          return SPropertyOperations.getInteger(it, MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x73e8a2c68b62c6a3L, 0x50c63f9f4a0dac17L, "fromVersion"));
        }
      }, false).first(), MetaAdapterFactory.getProperty(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x73e8a2c68b62c6a3L, 0x50c63f9f4a0dac17L, "fromVersion"));
      lang.setLanguageVersion(maxFrom + 1);
    } else {
      final int v = lang.getLanguageVersion();
      SwingUtilities.invokeLater(new Runnable() {
        public void run() {
          InputValidator validator = new InputValidator() {
            public boolean checkInput(String s) {
              try {
                return Integer.parseInt(s) >= 0;
              } catch (NumberFormatException e) {
                return false;
              }
            }
            public boolean canClose(String s) {
              return checkInput(s);
            }
          };
          final String result = Messages.showInputDialog(((Project) MapSequence.fromMap(_params).get("project")), "No scripts found\n" + "Current language version is " + v + "\n" + "Please enter new version", "Set Language Version", null, "0", validator);
          if (result == null) {
            return;
          }

          ModelAccess.instance().runWriteActionInCommand(new Runnable() {
            public void run() {
              lang.setLanguageVersion(Integer.parseInt(result));
            }
          });
        }
      });
    }
  }
  private static List<SNode> check_wnyb8b_a0c0a(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return SModelOperations.roots(checkedDotOperand, MetaAdapterFactory.getConcept(0x9074634404fd4286L, 0x97d5b46ae6a81709L, 0x73e8a2c68b62c6a3L, "jetbrains.mps.lang.migration.structure.MigrationScript"));
    }
    return null;
  }
}
