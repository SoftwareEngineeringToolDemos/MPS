package jetbrains.mps.internal.collections.runtime;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;

public abstract class ITranslator2<T, S> implements _FunctionTypes._return_P1_E0<Iterable<S>, T> {
  public ITranslator2() {
  }
  public abstract Iterable<S> translate(T t);
  public Iterable<S> invoke(T t) {
    return translate(t);
  }
}
