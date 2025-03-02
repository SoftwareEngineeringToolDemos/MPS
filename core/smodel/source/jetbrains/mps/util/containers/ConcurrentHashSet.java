/*
 * Copyright 2000-2011 JetBrains s.r.o.
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
package jetbrains.mps.util.containers;

import org.jetbrains.annotations.NotNull;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class ConcurrentHashSet<K> implements Set<K> {
  private final ConcurrentMap<K, Boolean> map;

  public ConcurrentHashSet(int initialCapacity) {
    map = new ConcurrentHashMap<K, Boolean>(initialCapacity);
  }

  public ConcurrentHashSet() {
    map = new ConcurrentHashMap<K, Boolean>();
  }

  @Override
  public int size() {
    return map.size();
  }

  @Override
  public boolean isEmpty() {
    return map.isEmpty();
  }

  @Override
  public boolean contains(Object o) {
    return map.containsKey(o);
  }

  @NotNull
  @Override
  public Iterator<K> iterator() {
    return map.keySet().iterator();
  }

  @NotNull
  @Override
  public Object[] toArray() {
    return map.keySet().toArray();
  }

  @NotNull
  @Override
  public <T> T[] toArray(@NotNull T[] a) {
    return map.keySet().toArray(a);
  }

  @Override
  public boolean add(K o) {
    return map.putIfAbsent(o, Boolean.TRUE) == null;
  }

  @Override
  public boolean remove(Object o) {
    return map.keySet().remove(o);
  }

  @Override
  public boolean containsAll(Collection<?> c) {
    return map.keySet().containsAll(c);
  }

  @Override
  public boolean addAll(Collection<? extends K> c) {
    boolean ret = false;
    for (K o : c) {
      ret |= add(o);
    }

    return ret;
  }

  @Override
  public boolean retainAll(Collection<?> c) {
    return map.keySet().retainAll(c);
  }

  @Override
  public boolean removeAll(Collection<?> c) {
    return map.keySet().removeAll(c);
  }

  @Override
  public void clear() {
    map.clear();
  }
}
