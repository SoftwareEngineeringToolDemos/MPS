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
package jetbrains.mps.ide.java;

import com.intellij.openapi.fileTypes.LanguageFileType;
import jetbrains.mps.ide.projectPane.fileSystem.FileIcons;
import org.jetbrains.annotations.NotNull;

import javax.swing.Icon;

public class JavaFileType extends LanguageFileType {

  public JavaFileType() {
    super(new JavaLanguage());
  }

  @Override
  @NotNull
  public String getName() {
    return "JAVA";
  }

  @Override
  @NotNull
  public String getDescription() {
    return "Java Programming Language";
  }

  @Override
  @NotNull
  public String getDefaultExtension() {
    return "java";
  }

  @Override
  public Icon getIcon() {
    return FileIcons.JAVA_ICON;
  }
}
