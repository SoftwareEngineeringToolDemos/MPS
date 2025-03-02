package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.extapi.persistence.FileDataSource;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.project.MPSProject;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.ModelFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.persistence.PersistenceUtil;
import org.apache.log4j.Level;
import jetbrains.mps.util.FileUtil;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.extapi.module.SModuleBase;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.project.AbstractModule;
import java.io.IOException;
import org.jetbrains.mps.openapi.persistence.ModelSaveException;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ConvertToBinaryPersistence_Action extends BaseAction {
  private static final Icon ICON = null;
  public ConvertToBinaryPersistence_Action() {
    super("Convert to binary format", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    List<SModel> m = ((List<SModel>) MapSequence.fromMap(_params).get("models"));
    return ListSequence.fromList(m).any(new IWhereFilter<SModel>() {
      public boolean accept(SModel it) {
        return !(it.isReadOnly()) && it.getSource() instanceof FileDataSource;
      }
    });
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
      List<SModel> p = event.getData(MPSCommonDataKeys.MODELS);
      MapSequence.fromMap(_params).put("models", p);
      if (p == null) {
        return false;
      }
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      MapSequence.fromMap(_params).put("project", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) {
    List<SModel> m = ((List<SModel>) MapSequence.fromMap(_params).get("models"));
    final Iterable<SModel> seq = ListSequence.fromList(m).where(new IWhereFilter<SModel>() {
      public boolean accept(SModel it) {
        return !(it.isReadOnly()) && it.getSource() instanceof FileDataSource;
      }
    });
    final SRepository repo = ((MPSProject) MapSequence.fromMap(_params).get("project")).getRepository();

    final ModelFactory binaryFactory = PersistenceFacade.getInstance().getModelFactory(MPSExtentions.MODEL_BINARY);

    repo.getModelAccess().runWriteAction(new Runnable() {
      public void run() {
        // see MPS-18743 
        repo.saveAll();

        for (SModel smodel : Sequence.fromIterable(seq)) {
          IFile oldFile = ((FileDataSource) smodel.getSource()).getFile();
          SModel newModel = PersistenceUtil.loadModel(oldFile);
          if (newModel == null) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("cannot read " + smodel);
            }
            continue;
          }

          Iterable<SModel.Problem> problems = Sequence.fromIterable(((Iterable<SModel.Problem>) newModel.getProblems())).where(new IWhereFilter<SModel.Problem>() {
            public boolean accept(SModel.Problem it) {
              return it.isError();
            }
          });
          if (Sequence.fromIterable(problems).isNotEmpty()) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("cannot read " + smodel + ": " + Sequence.fromIterable(problems).first().getText());
            }
            continue;
          }

          IFile newFile = oldFile.getParent().getDescendant(FileUtil.getNameWithoutExtension(oldFile.getName()) + "." + MPSExtentions.MODEL_BINARY);
          SModule module = smodel.getModule();
          try {
            binaryFactory.save(newModel, new FileDataSource(newFile));
            if (module != null) {
              ((SModuleBase) module).unregisterModel((SModelBase) smodel);
            }
            oldFile.delete();
            ((AbstractModule) module).updateModelsSet();
          } catch (IOException ex) {
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("cannot write " + smodel, ex);
            }
          } catch (ModelSaveException ex) {
            // shouldn't happen 
            if (LOG.isEnabledFor(Level.ERROR)) {
              LOG.error("cannot write " + smodel, ex);
            }
          }
        }
      }
    });
  }
  protected static Logger LOG = LogManager.getLogger(ConvertToBinaryPersistence_Action.class);
}
