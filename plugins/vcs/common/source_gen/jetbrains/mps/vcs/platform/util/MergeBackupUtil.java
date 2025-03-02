package jetbrains.mps.vcs.platform.util;

/*Generated by MPS */

import java.io.File;
import com.intellij.openapi.diff.DiffContent;
import com.intellij.openapi.vfs.VirtualFile;
import java.io.IOException;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.vcs.util.MergeDriverBackupUtil;
import jetbrains.mps.vcs.util.MergeConstants;
import jetbrains.mps.vcs.util.MergeVersion;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import com.intellij.util.io.ZipUtil;
import com.intellij.openapi.application.PathManager;
import java.io.FilenameFilter;
import org.apache.log4j.Level;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.vcs.util.ModelVersion;
import jetbrains.mps.util.UnzipUtil;
import jetbrains.mps.project.MPSExtentions;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.persistence.def.ModelReadException;
import jetbrains.mps.vcspersistence.VCSPersistenceSupport;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.smodel.SModelFileTracker;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class MergeBackupUtil {
  public MergeBackupUtil() {
  }
  public static File zipModel(DiffContent[] contents, VirtualFile file) throws IOException {
    File tmpDir = FileUtil.createTmpDir();
    MergeDriverBackupUtil.writeContentsToFile(contents[MergeConstants.ORIGINAL].getDocument().getText().getBytes(FileUtil.DEFAULT_CHARSET), file.getName(), tmpDir, MergeVersion.BASE.getSuffix());
    MergeBackupUtil.writeContentsToFile(contents[MergeConstants.CURRENT], file, tmpDir, MergeVersion.MINE.getSuffix());
    MergeBackupUtil.writeContentsToFile(contents[MergeConstants.LAST_REVISION], file, tmpDir, MergeVersion.REPOSITORY.getSuffix());
    File zipfile = chooseZipFileForModelFile(VirtualFileUtils.toIFile(file));
    zipfile.getParentFile().mkdirs();
    FileUtil.zip(tmpDir, zipfile);
    FileUtil.delete(tmpDir);
    return zipfile;
  }
  public static void packMergeResult(File file, String fileName, String resultContent) {
    try {
      File tmp = FileUtil.createTmpDir();
      ZipUtil.extract(file, tmp, null);
      //  copy merge result 
      FileUtil.writeFile(new File(tmp + File.separator + fileName + ".result"), resultContent);
      //  copy logfiles 
      File logsDir = new File(PathManager.getLogPath());
      File[] logfiles = logsDir.listFiles(new FilenameFilter() {
        @Override
        public boolean accept(File dir, String name) {
          return name.matches("mpsvcs\\.log(\\.1)?") || name.matches("mps\\.log(\\.1)?");
        }
      });
      File tmpLogDir = new File(tmp + File.separator + "logs");
      tmpLogDir.mkdir();
      for (File logfile : logfiles) {
        FileUtil.copyFile(logfile, new File(tmpLogDir + File.separator + logfile.getName()));
      }
      FileUtil.zip(tmp, file);
      FileUtil.delete(tmp);
    } catch (IOException e) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("", e);
      }
    }
  }
  public static String getMergeBackupDirPath() {
    return PathManager.getSystemPath() + File.separator + "merge-backup";
  }
  private static void writeContentsToFile(DiffContent contents, VirtualFile file, File tmpDir, String suffix) throws IOException {
    MergeDriverBackupUtil.writeContentsToFile(contents.getBytes(), file.getName(), tmpDir, suffix);
  }
  @Nullable
  public static String[] loadZippedModelsAsText(File zipfile, ModelVersion[] versions) throws IOException {
    File tmpdir = FileUtil.createTmpDir();
    UnzipUtil.unzip(zipfile, tmpdir);
    String[] models = new String[versions.length];
    int index = 0;
    for (final ModelVersion v : versions) {
      File file;
      File[] files = tmpdir.listFiles(new FilenameFilter() {
        public boolean accept(File dir, String name) {
          return name.endsWith(MPSExtentions.DOT_MODEL + "." + v.getSuffix());
        }
      });
      if (files == null || files.length != 1) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("Wrong zip contents");
        }
      }
      file = files[0];
      char[] fileText = com.intellij.openapi.util.io.FileUtil.loadFileText(file);
      models[index] = new String(fileText);
      index++;
    }
    FileUtil.delete(tmpdir);
    return models;
  }
  @Nullable
  public static SModel[] loadZippedModels(File zipfile, ModelVersion[] versions) throws IOException, ModelReadException {
    String[] modelsAsText = MergeBackupUtil.loadZippedModelsAsText(zipfile, versions);
    if (modelsAsText == null) {
      return null;
    }
    SModel[] models = new SModel[modelsAsText.length];
    for (int i = 0; i < models.length; i++) {
      models[i] = VCSPersistenceSupport.readModel(modelsAsText[i], false);
    }
    return models;
  }
  public static File chooseZipFileForModelFile(IFile file) {
    MergeDriverBackupUtil.setMergeBackupDirPath(getMergeBackupDirPath());
    org.jetbrains.mps.openapi.model.SModel model = SModelFileTracker.getInstance().findModel(file);
    return MergeDriverBackupUtil.chooseZipFileForModelLongName(file.getName(), (model != null ? SModelStereotype.withoutStereotype(model.getModelName()) : null));
  }
  public static Iterable<File> findZipFilesForModelFile(final String modelFileName) {
    File[] files = new File(MergeBackupUtil.getMergeBackupDirPath()).listFiles(new FilenameFilter() {
      public boolean accept(File dir, String name) {
        return name.contains(modelFileName) && name.endsWith(".zip");
      }
    });
    return Sequence.fromIterable(Sequence.fromArray(files)).sort(new ISelector<File, String>() {
      public String select(File f) {
        return f.getName();
      }
    }, false);
  }
  protected static Logger LOG = LogManager.getLogger(MergeBackupUtil.class);
}
