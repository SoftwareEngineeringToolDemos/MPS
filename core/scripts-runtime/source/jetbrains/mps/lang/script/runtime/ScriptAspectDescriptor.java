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
package jetbrains.mps.lang.script.runtime;

import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;
import org.jetbrains.annotations.NotNull;

import java.util.Collection;

/**
 * @author Artem Tikhomirov
 * @since 3.3
 */
public interface ScriptAspectDescriptor extends LanguageAspectDescriptor {
  @NotNull
  Collection<RefactoringScript> getRefactoringScripts();
}
