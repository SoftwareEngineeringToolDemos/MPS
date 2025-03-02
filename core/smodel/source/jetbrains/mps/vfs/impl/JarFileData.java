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
package jetbrains.mps.vfs.impl;

import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * This class represents a jar file abstraction
 * It stores cache with all subdirectories and all entries
 */
class JarFileData extends AbstractJarFileData {
  private static Logger LOG = LogManager.getLogger(JarFileData.class);

  private final Object myLock = new Object();
  private boolean isInitialized = false;
  private Map<String, Set<String>> myFiles = new HashMap<String, Set<String>>();
  private Map<String, Set<String>> mySubDirectories = new HashMap<String, Set<String>>();
  private Map<String, ZipEntry> myEntries = new HashMap<String, ZipEntry>();

  JarFileData(File file) {
    super(file);
  }

  @Override
  Set<String> getFiles(String dir) {
    ensureInitialized();

    return Collections.unmodifiableSet(myFiles.get(dir));
  }

  @Override
  Set<String> getSubdirectories(String dir) {
    ensureInitialized();

    return Collections.unmodifiableSet(mySubDirectories.get(dir));
  }

  @Override
  boolean exists(String path) {
    ensureInitialized();

    return (myEntries.get(path) != null) || (mySubDirectories.get(path) != null);
  }

  @Override
  boolean isDirectory(String path) {
    ensureInitialized();

    if (myEntries.get(path) != null) {
      return myEntries.get(path).isDirectory();
    }

    return myFiles.get(path) != null || mySubDirectories.get(path) != null;
  }

  @Override
  String getParentDirectory(String dir) {
    int lastSlash = dir.lastIndexOf("/");
    if (lastSlash == -1) return "";
    return dir.substring(0, lastSlash);
  }

  private Set<String> getDirectoriesFor(String dir) {
    if (mySubDirectories.get(dir) == null) {
      mySubDirectories.put(dir, new HashSet<String>());
    }
    return mySubDirectories.get(dir);
  }

  private Set<String> getFilesFor(String dir) {
    if (myFiles.get(dir) == null) {
      myFiles.put(dir, new HashSet<String>());
    }
    return myFiles.get(dir);
  }

  @Override
  InputStream openStream(String path) throws IOException {
    ensureInitialized();

    ZipFile zipFile = new ZipFile(myFile);
    ZipEntry entry = myEntries.get(path);
    return new MyInputStream(zipFile, entry);
  }

  @Override
  long getLength(String path) {
    ensureInitialized();

    return myEntries.get(path).getSize();
  }

  private void ensureInitialized() {
    synchronized (myLock) {
      if (isInitialized) return;

      isInitialized = true;
      ZipFile zipFile = null;
      try {
        zipFile = new ZipFile(myFile);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();

        while (entries.hasMoreElements()) {
          ZipEntry entry = entries.nextElement();
          if (entry.isDirectory()) {
            String name = entry.getName();
            while (name.endsWith("/")) {
              name = name.substring(0, name.length() - 1);
            }

            buildDirectoryCaches(name);
          } else {
            String name = entry.getName();

            int packEnd = name.lastIndexOf('/');
            String dir;
            String fileName;
            if (packEnd == -1) {
              dir = "";
              fileName = name;
            } else {
              dir = packEnd > 0 ? name.substring(0, packEnd) : name;
              fileName = name.substring(packEnd + 1);
            }

            buildDirectoryCaches(dir);
            getFilesFor(dir).add(fileName);

            if (dir.length() > 0) {
              myEntries.put(dir + "/" + fileName, entry);
            } else {
              myEntries.put(fileName, entry);
            }
          }
        }
      } catch (IOException e) {
        LOG.error(null, e);
      } finally {
        if (zipFile != null) {
          try {
            zipFile.close();
          } catch (IOException ignored) {
          }
        }
      }
    }
  }

  private void buildDirectoryCaches(String dir) {
    String parent = getParentDirectory(dir);

    getDirectoriesFor(dir);
    getFilesFor(dir);

    if (parent.equals(dir)) return;
    getDirectoriesFor(parent).add(dir);
    buildDirectoryCaches(parent);
  }

  private class MyInputStream extends InputStream {
    private InputStream stream;
    private ZipFile myZipFile;

    public MyInputStream(ZipFile zipFile, ZipEntry entry) throws IOException {
      myZipFile = zipFile;
      stream = zipFile.getInputStream(entry);
    }

    @Override
    public int read() throws IOException {
      return stream.read();
    }

    @Override
    public int read(@NotNull byte[] b) throws IOException {
      return stream.read(b);
    }

    @Override
    public int read(@NotNull byte[] b, int off, int len) throws IOException {
      return stream.read(b, off, len);
    }

    @Override
    public long skip(long n) throws IOException {
      return stream.skip(n);
    }

    @Override
    public int available() throws IOException {
      return stream.available();
    }

    @Override
    public void close() throws IOException {
      try {
        super.close();
      } finally {
        try {
          stream.close();
        } finally {
          myZipFile.close();
        }
      }
    }

    @Override
    public void mark(int readLimit) {
      stream.mark(readLimit);
    }

    @Override
    public void reset() throws IOException {
      stream.reset();
    }

    @Override
    public boolean markSupported() {
      return stream.markSupported();
    }
  }
}
