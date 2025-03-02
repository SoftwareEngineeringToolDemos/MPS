package jetbrains.mps.lang.editor.structure;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.LinkedList;

public enum UnderlineStyle {
  as_is("as_is", 0),
  not_underlined("not_underlined", 1),
  underlined("underlined", 2);

  private String myName;
  public String getName() {
    return this.myName;
  }
  public String getValueAsString() {
    return "" + this.myValue;
  }
  public static List<UnderlineStyle> getConstants() {
    List<UnderlineStyle> list = ListSequence.fromList(new LinkedList<UnderlineStyle>());
    ListSequence.fromList(list).addElement(UnderlineStyle.as_is);
    ListSequence.fromList(list).addElement(UnderlineStyle.not_underlined);
    ListSequence.fromList(list).addElement(UnderlineStyle.underlined);
    return list;
  }
  public static UnderlineStyle getDefault() {
    return UnderlineStyle.as_is;
  }
  public static UnderlineStyle parseValue(String value) {
    if (value == null) {
      return UnderlineStyle.getDefault();
    }
    if (value.equals(UnderlineStyle.as_is.getValueAsString())) {
      return UnderlineStyle.as_is;
    }
    if (value.equals(UnderlineStyle.not_underlined.getValueAsString())) {
      return UnderlineStyle.not_underlined;
    }
    if (value.equals(UnderlineStyle.underlined.getValueAsString())) {
      return UnderlineStyle.underlined;
    }
    return UnderlineStyle.getDefault();
  }
  private int myValue;
  UnderlineStyle(String name, int value) {
    this.myName = name;
    this.myValue = value;
  }
  public int getValue() {
    return this.myValue;
  }
}
