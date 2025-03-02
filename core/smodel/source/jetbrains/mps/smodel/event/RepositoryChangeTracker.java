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
package jetbrains.mps.smodel.event;

import jetbrains.mps.extapi.model.SNodeBatchChangeListener;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.event.AbstractModelChangeEvent;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;
import org.jetbrains.mps.openapi.repository.CommandListener;

import java.util.List;

/**
 * XXX PERHAPS, NAME OF THE CLASS SHALL REFLECT WE TRACK CHANGES WITHIN COMMANDS ONLY?
 * IS THERE CASE WHEN WE NEED TO TRACK CHANGES WITHOUT RESPECT TO COMMAND?
 *
 * Tracks changes in a repository within boundaries of a command, and dispatch them further to listeners.
 * Replacement for <code>jetbrains.mps.smodel.GlobalSModelEventsManager</code>, in particular <code>#addGlobalCommandListener</code> and {@link SModelCommandListener}
 *
 * XXX
 *
 * @author Artem Tikhomirov
 */
public class RepositoryChangeTracker extends SRepositoryContentAdapter implements CommandListener {
  private final NodeChangeCollector myChangeCollector = new NodeChangeCollector();
  private final BatchChangeEventDispatch myListeners = new BatchChangeEventDispatch();

  @Override
  public void startListening(@NotNull SRepository repository) {
    super.startListening(repository);
    repository.getModelAccess().addCommandListener(this);
  }

  @Override
  public void stopListening(SRepository repository) {
    repository.getModelAccess().removeCommandListener(this);
    super.stopListening(repository);
  }

  @Override
  protected boolean isIncluded(SModule module) {
    return !module.isReadOnly();
  }

  @Override
  protected void startListening(SModel model) {
    if (!model.isReadOnly()) {
      model.addChangeListener(myChangeCollector);
    }
  }

  @Override
  protected void stopListening(SModel model) {
    model.removeChangeListener(myChangeCollector);
  }

  @Override
  public void commandStarted() {
    myChangeCollector.start();
  }

  @Override
  public void commandFinished() {
    myChangeCollector.stop();
    final List<AbstractModelChangeEvent> events = myChangeCollector.purge();
    myListeners.dispatch(events);
  }

  public void addListener(@Nullable SNodeBatchChangeListener l) {
    myListeners.add(l);
  }

  public void removeListener(@Nullable SNodeBatchChangeListener l) {
    myListeners.remove(l);
  }
}
