package jetbrains.mps.closures.test;

/*Generated by MPS */

import junit.framework.TestCase;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import junit.framework.Assert;

public class MPS14653_Test extends TestCase {
  public void test_getFunction() throws Exception {
    _FunctionTypes._void_P0_E1<? extends Exception> function = new MPS14653_helper.Context<Exception>().getFunction();
    try {
      function.invoke();
      Assert.fail();
    } catch (Exception e) {
      // expected exception 
    }
  }
  public void test_acceptFunction() throws Exception {
    _FunctionTypes._void_P0_E1<? extends Exception> fun = new _FunctionTypes._void_P0_E1<Exception>() {
      public void invoke() throws Exception {
        throw new Exception();
      }
    };
    try {
      new MPS14653_helper.Context().acceptFunction(fun);
      Assert.fail();
    } catch (Exception e) {
      // expected exception 
    }
  }
  public MPS14653_Test() {
  }
}
