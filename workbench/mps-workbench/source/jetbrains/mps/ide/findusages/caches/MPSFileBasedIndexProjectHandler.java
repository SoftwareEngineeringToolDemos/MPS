/*
 * Copyright 2003-2011 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.findusages.caches;

import com.intellij.ide.caches.CacheUpdater;
import com.intellij.ide.startup.StartupManagerEx;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.AbstractProjectComponent;
import com.intellij.openapi.project.DumbServiceImpl;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.project.ProjectManager;
import com.intellij.openapi.project.ProjectManagerAdapter;
import com.intellij.openapi.roots.ContentIterator;
import com.intellij.openapi.roots.ex.ProjectRootManagerEx;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.vfs.VfsUtil;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.util.indexing.FileBasedIndexImpl;
import com.intellij.util.indexing.IndexableFileSet;
import jetbrains.mps.classloading.MPSClassesListener;
import jetbrains.mps.classloading.MPSClassesListenerAdapter;
import jetbrains.mps.ide.make.StartupModuleMaker;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.module.ReloadableModuleBase;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.util.Computable;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.util.Collections;
import java.util.Set;

public class MPSFileBasedIndexProjectHandler extends AbstractProjectComponent implements IndexableFileSet {
  private static final Logger LOG = LogManager.getLogger(MPSFileBasedIndexProjectHandler.class);
  private ProjectRootManagerEx myRootManager;
  private ProjectManager myProjectManager;
  private final FileBasedIndexImpl myIndex;
  private Set<VirtualFile> myRootFiles = null;
  private MPSClassesListener myClassesListener = new MPSClassesListenerAdapter() {
    @Override
    public void beforeClassesUnloaded(Set<? extends ReloadableModuleBase> modules) {
      myRootFiles = null;
    }
  };
  private ProjectManagerAdapter myProjectListener = new ProjectManagerAdapter() {
    @Override
    public void projectClosing(Project project) {
      myIndex.removeIndexableSet(MPSFileBasedIndexProjectHandler.this);
    }
  };

  public MPSFileBasedIndexProjectHandler(final Project project, final ProjectRootManagerEx rootManager, ProjectManager projectManager, FileBasedIndexImpl index, StartupModuleMaker maker) {
    super(project);
    myRootManager = rootManager;
    myProjectManager = projectManager;
    myIndex = index;

    final MPSUnIndexedFilesUpdater updater = new MPSUnIndexedFilesUpdater(myIndex, myRootManager, project);

    final StartupManagerEx startupManager = (StartupManagerEx) StartupManager.getInstance(myProject);
    if (startupManager == null) return;

    startupManager.registerPreStartupActivity(new Runnable() {
      @Override
      public void run() {
        startupManager.registerCacheUpdater(updater);
        myIndex.registerIndexableSet(MPSFileBasedIndexProjectHandler.this, myProject);
        LOG.debug("Queueing cache update");
        ApplicationManager.getApplication().invokeLater(new Runnable() {
          @Override
          public void run() {
            DumbServiceImpl.getInstance(myProject).queueCacheUpdate(Collections.<CacheUpdater>singletonList(updater));
          }
        });
      }
    });
  }

  @Override
  public void initComponent() {
    ClassLoaderManager.getInstance().addClassesHandler(myClassesListener);
    myProjectManager.addProjectManagerListener(myProject, myProjectListener);
  }

  @Override
  public void disposeComponent() {
    myProjectManager.addProjectManagerListener(myProject, myProjectListener);
    ClassLoaderManager.getInstance().removeClassesHandler(myClassesListener);
  }

  @Override
  public boolean isInSet(VirtualFile file) {
    if (IndexableRootCalculator.isIgnored(file, myRootManager)) return false;

    for (VirtualFile vf : getRootFiles()) {
      if (VfsUtil.isAncestor(vf, file, true)) return true;
    }
    return false;
  }

  @Override
  public void iterateIndexableFilesIn(VirtualFile file, ContentIterator iterator) {
    if (!isInSet(file)) return;
    iterateIndexableFilesIn_internal(file, iterator);
  }

  private void iterateIndexableFilesIn_internal(VirtualFile file, ContentIterator iterator) {
    if (IndexableRootCalculator.isIgnored(file, myRootManager)) return;

    if (file.isDirectory()) {
      for (VirtualFile child : file.getChildren()) {
        iterateIndexableFilesIn_internal(child, iterator);
      }
    } else {
      iterator.processFile(file);
    }
  }

  private Set<VirtualFile> getRootFiles() {
    if (myRootFiles == null) {
      myRootFiles = new IndexableRootCalculator(myProject).getIndexableRoots();
    }
    return myRootFiles;
  }
}
