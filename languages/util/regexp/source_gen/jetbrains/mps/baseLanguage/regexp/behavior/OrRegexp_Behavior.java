package jetbrains.mps.baseLanguage.regexp.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class OrRegexp_Behavior {
  public static boolean call_inParentheses_1353467374623956858(SNode __thisNode__) {
    return SNodeOperations.isInstanceOf(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x11174bc30e7L, "jetbrains.mps.baseLanguage.regexp.structure.SeqRegexp"));
  }
}
