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
package org.jetbrains.mps.openapi.repository;

/**
 * It can be used for listening to commandStarted and commandFinished events of
 * {@link org.jetbrains.mps.openapi.module.ModelAccess#executeCommand(Runnable)} and
 * {@link org.jetbrains.mps.openapi.module.ModelAccess#executeCommandInEDT(Runnable)}
 *
 * The clients are still in write action while handling both events
 */
public interface CommandListener {
  void commandStarted();
  void commandFinished();
}
