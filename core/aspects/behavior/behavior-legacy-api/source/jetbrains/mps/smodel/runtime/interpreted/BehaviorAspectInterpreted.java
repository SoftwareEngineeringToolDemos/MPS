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
package jetbrains.mps.smodel.runtime.interpreted;

import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.BehaviorDescriptor;
import jetbrains.mps.smodel.runtime.illegal.NullSafeIllegalBehaviorDescriptor;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.Nullable;

@ToRemove(version = 3.3)
@Deprecated
public class BehaviorAspectInterpreted implements BehaviorAspectDescriptor {
  private static BehaviorAspectInterpreted INSTANCE = new BehaviorAspectInterpreted();

  public static BehaviorAspectInterpreted getInstance() {
    return INSTANCE;
  }

  @Override
  public BehaviorDescriptor getDescriptor(@Nullable String fqName) {
    return fqName != null ? new InterpretedBehaviorDescriptor(fqName) : NullSafeIllegalBehaviorDescriptor.INSTANCE;
  }
}
