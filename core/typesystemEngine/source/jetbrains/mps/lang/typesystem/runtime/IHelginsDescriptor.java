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
package jetbrains.mps.lang.typesystem.runtime;

import jetbrains.mps.smodel.runtime.LanguageAspectDescriptor;
import jetbrains.mps.typesystem.inference.IVariableConverter_Runtime;

import java.util.Set;

public interface IHelginsDescriptor extends LanguageAspectDescriptor {
  Set<InferenceRule_Runtime> getInferenceRules();

  Set<NonTypesystemRule_Runtime> getNonTypesystemRules();

  Set<SubtypingRule_Runtime> getSubtypingRules();

  Set<SubstituteType_Runtime> getSubstituteTypeRules();

  Set<ComparisonRule_Runtime> getComparisonRules();

  Set<InequationReplacementRule_Runtime> getEliminationRules();

  Set<IVariableConverter_Runtime> getVariableConverters();

  Set<IOverloadedOpsTypesProvider> getOverloadedOperationsTypesProviders();
}
