/*
 * Copyright 2003-2014 JetBrains s.r.o.
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
package jetbrains.mps.workbench.dialogs.project.newproject;

import com.intellij.openapi.extensions.ExtensionPointName;

/**
 * Implementation of this interface extends list of project templates in 'DSL' group in 'New project dialog'
 */
public interface LanguageProjectTemplate extends MPSProjectTemplate {
  public static final ExtensionPointName<LanguageProjectTemplate> EP_NAME = ExtensionPointName.create("com.intellij.mps.languageProjectTemplateEP");
}
