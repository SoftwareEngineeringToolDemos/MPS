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

package jetbrains.mps.idea.logging;

import com.intellij.openapi.diagnostic.Logger;
import org.apache.log4j.Level;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class DelegatingLoggerFactory implements Logger.Factory {
  @Override
  public Logger getLoggerInstance(String category) {
    final org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(category);

    return new DelegatingLogger(logger);
  }

  private static class DelegatingLogger extends Logger {
    private final org.apache.log4j.Logger myLogger;

    public DelegatingLogger(org.apache.log4j.Logger logger) {
      myLogger = logger;
    }

    @Override
    public boolean isDebugEnabled() {
      return myLogger.isDebugEnabled();
    }

    @Override
    public void debug(@NonNls String message) {
      myLogger.debug(message);
    }

    @Override
    public void debug(@Nullable Throwable t) {
      myLogger.debug("", t);
    }

    @Override
    public void debug(@NonNls String message, @Nullable Throwable t) {
      myLogger.debug(message, t);
    }

    @Override
    public void error(@NonNls String message, @Nullable Throwable t, @NotNull @NonNls String... details) {
      myLogger.error(message, t);
    }

    @Override
    public void info(@NonNls String message) {
      myLogger.info(message);
    }

    @Override
    public void info(@NonNls String message, @Nullable Throwable t) {
      myLogger.info(message, t);
    }

    @Override
    public void warn(@NonNls String message, @Nullable Throwable t) {
      myLogger.warn(message, t);
    }

    @Override
    public void setLevel(Level level) {
      myLogger.setLevel(level);
    }
  }
}
