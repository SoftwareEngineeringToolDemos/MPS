/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.library;

import jetbrains.mps.components.CoreComponent;
import jetbrains.mps.library.contributor.LibDescriptor;
import jetbrains.mps.library.contributor.LibraryContributor;
import jetbrains.mps.library.contributor.RepositoryContributor;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/**
 * An implementation of RepositoryReader, which is lazy (in a way that it tries not load the same module twice)
 * At the same time it creates SLibrary for each path {@link RepositoryContributor#getPaths()} returns.
 * FIXME need to separate up these two.
 */
public final class LibraryInitializer implements CoreComponent, RepositoryReader<LibraryContributor> {
  private static final Logger LOG = LogManager.getLogger(LibraryInitializer.class);
  private static LibraryInitializer INSTANCE;

  public static LibraryInitializer getInstance() {
    return INSTANCE;
  }

  private final ModelAccess myModelAccess;
  private final List<LibraryContributor> myContributors = new CopyOnWriteArrayList<LibraryContributor>();
  private final Set<SLibrary> myLibraries = new LinkedHashSet<SLibrary>();

  @Override
  public void init() {
    if (INSTANCE != null) {
      throw new IllegalStateException("double initialization");
    }
    INSTANCE = this;
  }

  @Override
  public void dispose() {
    for (SLibrary lib : myLibraries) {
      lib.dispose();
    }
    myLibraries.clear();
    myContributors.clear();
    INSTANCE = null;
  }

  public LibraryInitializer(@NotNull SRepository repository) {
    myModelAccess = repository.getModelAccess();
  }

  /**
   * EDT is required
   */
  @Override
  public void loadRefreshed(List<LibraryContributor> contributors) {
    for (LibraryContributor contributor : contributors) {
      addContributor(contributor);
    }
    update(true);
  }

  @Override
  public void load(List<LibraryContributor> contributors) {
    for (LibraryContributor contributor : contributors) {
      addContributor(contributor);
    }
    update(false);
  }

  @Override
  public void unload(List<LibraryContributor> contributors) {
    for (LibraryContributor contributor : contributors) {
      removeContributor(contributor);
    }
    update(false);
  }

  /**
   * @deprecated please use one-step loading methods: {@link #loadRefreshed} or {@link #load}
   */
  @Deprecated
  public void update() {
    update(false);
  }

  /**
   * not intended to be called explicitly anymore.
   * @see #update()
   * @param refreshFiles if true, then the caller needs to handle EDT lock, because deeper the synchronous recursive file system refresh would be called.
   *                     FIXME need to get rid of that synchronous refresh
   *
   */
  @Deprecated
  public void update(final boolean refreshFiles) {
    final Set<SLibrary> currentLibs = new HashSet<SLibrary>();
    List<LibraryContributor> contributors = myContributors;
    for (LibraryContributor contributor : contributors) {
      boolean hidden = contributor.hiddenLanguages();
      for (LibDescriptor pathDescriptor : contributor.getPaths()) {
        SLibrary lib = new SLibrary(pathDescriptor, hidden);
        currentLibs.add(lib);
      }
    }

    final Delta<SLibrary> libraryDelta = Delta.construct(myLibraries, currentLibs);

    if (libraryDelta.isEmpty()) return;

    updateState(refreshFiles, libraryDelta);

    libraryDelta.apply(myLibraries);
  }

  // performed in write action
  // actual reading from disk happens here
  private void updateState(final boolean refreshFiles, Delta<SLibrary> libraryDelta) {
    final List<SLibrary> toUnload = libraryDelta.getRemoved();
    final List<SLibrary> toLoad = libraryDelta.getAdded();

    myModelAccess.runWriteAction(new Runnable() {
      @Override
      public void run() {
        LOG.info("Loading " + toLoad.size() + " libraries; Unloading " + toUnload.size() + " libraries.");
        for (SLibrary unloadLib : toUnload) {
          unloadLib.dispose();
        }

        for (SLibrary loadLib : toLoad) {
          loadLib.attach(refreshFiles);
        }
      }
    });
  }

  //----------bootstrap modules

  // used in plugin; TODO remove
  @Deprecated
  public List<ModulesMiner.ModuleHandle> getModuleHandles() {
    myModelAccess.checkReadAccess();

    List<ModulesMiner.ModuleHandle> result = new ArrayList<ModulesMiner.ModuleHandle>();
    for (SLibrary lib : myLibraries) {
      result.addAll(lib.getHandles());
    }
    return result;
  }

  /**
   * Please use one-step version to load modules from disk to MPS {@link #load(List)} or {@link #loadRefreshed(List)}
   */
  @Deprecated
  public void addContributor(@NotNull LibraryContributor c) {
    LOG.info("Adding libraries from " + c.getClass().getName());
    myContributors.add(c);
  }

  /**
   * Please use one-step version to unload modules from MPS {@link #unload(List)}
   */
  @Deprecated
  public void removeContributor(@NotNull LibraryContributor c) {
    LOG.info("Removing libraries from " + c.getClass().getName());
    myContributors.remove(c);
  }

  private static class Delta<T extends Comparable<T>> {
    private final Set<T> myAdded;
    private final Set<T> myRemoved;

    public static <T extends Comparable<T>> Delta<T> construct(Collection<T> initial, Collection<T> updated) {
      Set<T> added = subtractSets(updated, initial);
      Set<T> removed = subtractSets(initial, updated);
      return new Delta<T>(added, removed);
    }

    private static <T> Set<T> subtractSets(Collection<T> s1, Collection<T> s2) {
      Set<T> set1 = new HashSet<T>(s1);
      set1.removeAll(s2);
      return set1;
    }

    private Delta(Collection<T> added, Collection<T> removed) {
      myAdded = new HashSet<T>(added);
      myRemoved = new HashSet<T>(removed);
    }

    public List<T> getAdded() {
      return createSortedList(myAdded);
    }

    public List<T> getRemoved() {
      return createSortedList(myRemoved);
    }

    private static <T extends Comparable<T>> List<T> createSortedList(Set<T> added) {
      List<T> list = new ArrayList<T>(added);
      Collections.sort(list);
      return list;
    }

    public boolean isEmpty() {
      return myAdded.isEmpty() && myRemoved.isEmpty();
    }

    public void apply(Collection<T> toChange) {
      toChange.removeAll(myRemoved);
      toChange.addAll(myAdded);
    }
  }
}
