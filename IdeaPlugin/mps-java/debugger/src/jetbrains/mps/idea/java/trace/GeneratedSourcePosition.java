/*
 * Copyright 2003-2012 JetBrains s.r.o.
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

package jetbrains.mps.idea.java.trace;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiFile;
import com.intellij.psi.PsiManager;
import jetbrains.mps.generator.fileGenerator.FileGenerationUtil;
import jetbrains.mps.generator.traceInfo.TraceInfoUtil;
import jetbrains.mps.project.AbstractModule;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import jetbrains.mps.smodel.*;
import jetbrains.mps.textgen.trace.DebugInfo;
import jetbrains.mps.textgen.trace.TraceInfoCache;
import jetbrains.mps.textgen.trace.TraceablePositionInfo;
import jetbrains.mps.util.Computable;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.vfs.IFile;
import org.jetbrains.annotations.Nullable;

/**
 * Use this class for mapping debugger position (type, file, line number) to
 * some stuff as: node, psi file.
 */
public class GeneratedSourcePosition {
  private final String myTypeName;
  private final String myFileName;
  private final int myLineNumber;

  public GeneratedSourcePosition(String typeName, String fileName, int lineNumber) {
    myLineNumber = lineNumber;
    myFileName = fileName;
    myTypeName = typeName;
  }

  public String getTypeName() {
    return myTypeName;
  }

  public String getFileName() {
    return myFileName;
  }

  public int getLineNumber() {
    return myLineNumber;
  }

  @Nullable
  public SNode getNode() {
    return TraceInfoUtil.getJavaNode(myTypeName, myFileName, myLineNumber);
  }

  @Nullable
  public SNodeReference getNodePointer() {
    return ModelAccess.instance().runReadAction(new Computable<SNodeReference>() {
      @Override
      public SNodeReference compute() {
        SNode node = getNode();
        if (node == null) {
          return null;
        }
        return new jetbrains.mps.smodel.SNodePointer(node);
      }
    });
  }

  @Nullable
  public PsiFile getPsiFile(final Project project) {
    SModelReference reference = ModelAccess.instance().runReadAction(new Computable<SModelReference>() {
      @Override
      public SModelReference compute() {
        SNode node = getNode();
        if (node == null) return null;
        SModel modelDescriptor = node.getModel();
        return modelDescriptor.getReference();
      }
    });
    if (reference == null) {
      return null;
    }
    return getPsiFile(project, reference, myFileName);
  }

  @Nullable
  public static GeneratedSourcePosition fromNode(final SNode node) {
    SModel model = node.getModel();
    DebugInfo debugInfo = TraceInfoCache.getInstance().get(model);
    if (debugInfo == null) {
      return null;
    }
    TraceablePositionInfo position = debugInfo.getPositionForNode(node);
    if (position == null) return null;

    return new GeneratedSourcePosition(TraceInfoUtil.getUnitName(position.getFileName(), position.getStartLine(), model), position.getFileName(), position.getStartLine());
  }


  @Nullable
  public static PsiFile getPsiFile(final Project project, final SModelReference modelReference, final String generatedFileName) {
    final String fullPath = ModelAccess.instance().runReadAction(new Computable<String>() {
      @Override
      public String compute() {
        SModel modelDescriptor = SModelRepository.getInstance().getModelDescriptor(modelReference);
        SModule module = modelDescriptor.getModule();
        IFile defaultOutputDir = FileGenerationUtil.getDefaultOutputDir(modelDescriptor, ((AbstractModule) module).getOutputPath());
        IFile file = defaultOutputDir.getDescendant(generatedFileName);
        if (!file.exists()) {
          return null;
        }
        return file.getPath();
      }
    });

    if (fullPath == null) {
      return null;
    }

    return ApplicationManager.getApplication().runReadAction(new com.intellij.openapi.util.Computable<PsiFile>() {
      @Override
      public PsiFile compute() {
        VirtualFile file = LocalFileSystem.getInstance().findFileByPath(fullPath);
        if (file == null) {
          return null;
        }
        return PsiManager.getInstance(project).findFile(file);
      }
    });
  }
}
