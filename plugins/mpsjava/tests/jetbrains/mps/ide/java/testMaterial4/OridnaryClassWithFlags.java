package jetbrains.mps.ide.java.testMaterial4;

/*Generated by MPS */


public class OridnaryClassWithFlags {
  public static final boolean FLAG = false;

  public OridnaryClassWithFlags() {
  }

  public static void foo() {
    int count = (FLAG ? 1 : 0);
    for (int i = count; i < 5; i++) {
      System.err.println("");
    }
    if (FLAG) {
      System.err.println("hi");
    } else {
      System.err.println("wow");
    }
    if (!(FLAG)) {
      System.err.println("");
    } else {
      System.err.println("");
    }
  }
}
