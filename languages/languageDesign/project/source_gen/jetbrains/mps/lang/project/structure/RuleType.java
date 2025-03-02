package jetbrains.mps.lang.project.structure;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.LinkedList;

public enum RuleType {
  strictly_before("before (<)", "strictly_before"),
  strictly_together("together with (=)", "strictly_together"),
  before_or_together("before or together (<=)", "before_or_together"),
  after_or_together("after or together (>=)", "after_or_together"),
  strictly_after("after (>)", "strictly_after");

  private String myName;
  public String getName() {
    return this.myName;
  }
  public String getValueAsString() {
    return this.myValue;
  }
  public static List<RuleType> getConstants() {
    List<RuleType> list = ListSequence.fromList(new LinkedList<RuleType>());
    ListSequence.fromList(list).addElement(RuleType.strictly_before);
    ListSequence.fromList(list).addElement(RuleType.strictly_together);
    ListSequence.fromList(list).addElement(RuleType.before_or_together);
    ListSequence.fromList(list).addElement(RuleType.after_or_together);
    ListSequence.fromList(list).addElement(RuleType.strictly_after);
    return list;
  }
  public static RuleType getDefault() {
    return RuleType.strictly_before;
  }
  public static RuleType parseValue(String value) {
    if (value == null) {
      return RuleType.getDefault();
    }
    if (value.equals(RuleType.strictly_before.getValueAsString())) {
      return RuleType.strictly_before;
    }
    if (value.equals(RuleType.strictly_together.getValueAsString())) {
      return RuleType.strictly_together;
    }
    if (value.equals(RuleType.before_or_together.getValueAsString())) {
      return RuleType.before_or_together;
    }
    if (value.equals(RuleType.after_or_together.getValueAsString())) {
      return RuleType.after_or_together;
    }
    if (value.equals(RuleType.strictly_after.getValueAsString())) {
      return RuleType.strictly_after;
    }
    return RuleType.getDefault();
  }
  private String myValue;
  RuleType(String name, String value) {
    this.myName = name;
    this.myValue = value;
  }
  public String getValue() {
    return this.myValue;
  }
}
