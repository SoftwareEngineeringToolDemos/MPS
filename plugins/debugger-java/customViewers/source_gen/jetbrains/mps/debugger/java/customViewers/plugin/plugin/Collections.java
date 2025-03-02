package jetbrains.mps.debugger.java.customViewers.plugin.plugin;

/*Generated by MPS */

import jetbrains.mps.debugger.java.api.state.watchables.CustomJavaWatchable;
import jetbrains.mps.debug.api.programState.WatchablesCategory;
import jetbrains.mps.debugger.java.api.state.proxy.JavaValue;

public class Collections {
  public Collections() {
  }
  public static class MyWatchable_element extends CustomJavaWatchable {
    private static WatchablesCategory ourCategory = new WatchablesCategory("element");
    public MyWatchable_element(JavaValue value, String name) {
      super(value, name);
    }
    public WatchablesCategory getCategory() {
      return ourCategory;
    }
  }
  public static class MyWatchable_entry extends CustomJavaWatchable {
    private static WatchablesCategory ourCategory = new WatchablesCategory("entry");
    public MyWatchable_entry(JavaValue value, String name) {
      super(value, name);
    }
    public WatchablesCategory getCategory() {
      return ourCategory;
    }
  }
  public static class MyWatchable_key extends CustomJavaWatchable {
    private static WatchablesCategory ourCategory = new WatchablesCategory("key");
    public MyWatchable_key(JavaValue value, String name) {
      super(value, name);
    }
    public WatchablesCategory getCategory() {
      return ourCategory;
    }
  }
  public static class MyWatchable_value extends CustomJavaWatchable {
    private static WatchablesCategory ourCategory = new WatchablesCategory("value");
    public MyWatchable_value(JavaValue value, String name) {
      super(value, name);
    }
    public WatchablesCategory getCategory() {
      return ourCategory;
    }
  }
  public static class MyWatchable_size extends CustomJavaWatchable {
    private static WatchablesCategory ourCategory = new WatchablesCategory("size");
    public MyWatchable_size(JavaValue value, String name) {
      super(value, name);
    }
    public WatchablesCategory getCategory() {
      return ourCategory;
    }
  }
}
