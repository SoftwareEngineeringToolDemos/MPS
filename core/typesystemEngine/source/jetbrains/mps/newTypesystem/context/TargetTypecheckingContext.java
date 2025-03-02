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
package jetbrains.mps.newTypesystem.context;

import jetbrains.mps.newTypesystem.context.typechecking.TargetTypechecking;
import jetbrains.mps.newTypesystem.state.TargetState;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeChecker;

/**
 * User: fyodor
 * Date: 12/3/12
 */
public class TargetTypecheckingContext extends SimpleTypecheckingContext<TargetState, TargetTypechecking> {

  public TargetTypecheckingContext(SNode node, TypeChecker typeChecker) {
    super(node, typeChecker);
  }

  @Override
  protected TargetState createState() {
    return new TargetState(this);
  }

  @Override
  protected TargetTypechecking createTypechecking() {
    return new TargetTypechecking (getNode(), getState());
  }
}
