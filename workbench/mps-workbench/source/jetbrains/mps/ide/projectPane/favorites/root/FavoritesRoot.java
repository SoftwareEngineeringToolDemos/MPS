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
package jetbrains.mps.ide.projectPane.favorites.root;

import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.module.ProjectModuleTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.IOperationContext;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.List;

public abstract class FavoritesRoot<T> {
  protected final Project myProject;
  private T myValue;

  public static FavoritesRoot createForValue(Project project, Object value) {
    if (value instanceof SNodeReference) return new NodeFavoritesRoot(project, (SNodeReference) value);
    if (value instanceof SModelReference) return new ModelFavoritesRoot(project, (SModelReference) value);
    if (value instanceof SModuleReference) return new ModuleFavoritesRoot(project, (SModuleReference) value);
    return null;
  }

  /**
   * Extract an input object suitable for favorites view,
   * @return null if can't create favorites entry from a given tree element
   */
  public static Object extractValue(MPSTreeNode treeNode) {
    if (treeNode instanceof SNodeTreeNode) {
      return ((SNodeTreeNode) treeNode).getSNode().getReference();
    } else if (treeNode instanceof SModelTreeNode) {
      return ((SModelTreeNode) treeNode).getModel().getReference();
    } else if (treeNode instanceof ProjectModuleTreeNode) {
      return ((ProjectModuleTreeNode) treeNode).getModule().getModuleReference();
    }
    return null;
  }

  public FavoritesRoot(Project project, T value) {
    myProject = project;
    myValue = value;
  }

  public T getValue() {
    return myValue;
  }

  public abstract MPSTreeNode createTreeNode();

  public abstract List<SNode> getAvailableNodes();
}
