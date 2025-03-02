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
package jetbrains.mps.workbench.structureview.adds;

import com.intellij.ide.util.treeView.smartTree.ActionPresentation;
import com.intellij.ide.util.treeView.smartTree.ActionPresentationData;
import com.intellij.ide.util.treeView.smartTree.Sorter;
import jetbrains.mps.plugins.relations.RelationDescriptor;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.ModelAccessHelper;
import jetbrains.mps.util.Computable;
import jetbrains.mps.workbench.structureview.nodes.AspectTreeElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SRepository;

import java.util.Comparator;

public class AspectNodeSorter implements Sorter {

  private final MPSProject myProject;

  public AspectNodeSorter(MPSProject project) {
    myProject = project;
  }

  @Override
  public Comparator getComparator() {
    return new EditorTabComparator(myProject.getRepository());
  }

  @Override
  public boolean isVisible() {
    return false;
  }

  @Override
  @NotNull
  public ActionPresentation getPresentation() {
    return new ActionPresentationData("Sort Nodes by Aspect", "", jetbrains.mps.workbench.structureview.adds.icons.Icons.SORT_NODES_BY_ASPECT_ICON);
  }

  @Override
  @NotNull
  public String getName() {
    return "AspectNodesSorter";
  }

  private static class EditorTabComparator implements Comparator {
    private final SRepository myRepo;

    public EditorTabComparator(SRepository repository) {
      myRepo = repository;
    }

    @Override
    public int compare(Object o1, Object o2) {
      if (!(o1 instanceof AspectTreeElement || o2 instanceof AspectTreeElement)) return 0;

      if (!(o1 instanceof AspectTreeElement)) return 1;
      if (!(o2 instanceof AspectTreeElement)) return -1;

      final AspectTreeElement ate1 = (AspectTreeElement) o1;
      RelationDescriptor d1 = ate1.getAspectDescriptor();
      final AspectTreeElement ate2 = (AspectTreeElement) o2;
      RelationDescriptor d2 = ate2.getAspectDescriptor();

      int r1 = d1.compareTo(d2);
      int r2 = d2.compareTo(d1);

      if ((r1 == 0) ^ (r2 == 0)) return r1 - r2;

      assert r1 * r2 <= 0 : "can't determine order";

      if (r1 != 0) return r1;

      return new ModelAccessHelper(myRepo).runReadAction(new Computable<Integer>() {
        @Override
        public Integer compute() {
          SNode n1 = ate1.getValue().resolve(myRepo);
          SNode n2 = ate2.getValue().resolve(myRepo);

          if (n1 == null || n2 == null) return 0;

          return n1.getConcept().getQualifiedName().compareTo(n2.getConcept().getQualifiedName());
        }
      });
    }
  }
}
