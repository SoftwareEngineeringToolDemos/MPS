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
package jetbrains.mps.project.validation;

import org.jetbrains.mps.openapi.language.SConceptFeature;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * Both {@link ConceptFeatureMissingError} and {@link ConceptFeatureCardinalityError} are {@link ConceptFeatureError},
 * however, there's code (MigrationCheckUtil) which is interested in this particular error only, hence we keep distinct classes
 */
public class ConceptFeatureMissingError extends ConceptFeatureError {
  public ConceptFeatureMissingError(SNode node, SConceptFeature feature, String message) {
    super(node, feature, message);
  }
}
