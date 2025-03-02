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
package jetbrains.mps.smodel;

import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SNode;

class InsertChildAtUndoableAction extends SNodeUndoableAction {
  private final SNode myAnchor;
  private final SContainmentLink myRole;
  private final SNode myChild;

  public InsertChildAtUndoableAction(SNode node, SNode anchor, SContainmentLink role, SNode child) {
    super(node);
    myAnchor = anchor;
    myRole = role;
    myChild = child;
  }

  @Override
  protected void doUndo() {
    getAffectedNode().removeChild(myChild);
  }

  @Override
  protected void doRedo() {
    getAffectedNode().insertChildBefore(myRole, myChild, myAnchor);
  }
}
