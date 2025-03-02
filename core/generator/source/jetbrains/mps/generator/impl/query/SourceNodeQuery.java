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
package jetbrains.mps.generator.impl.query;

import jetbrains.mps.generator.impl.GenerationFailureException;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Executes a query producing a single node to use as a new input node.
 * @author Artem Tikhomirov
 */
public interface SourceNodeQuery extends Query {
  @Nullable
  SNode evaluate(@NotNull SourceSubstituteMacroNodeContext context) throws GenerationFailureException;
}
