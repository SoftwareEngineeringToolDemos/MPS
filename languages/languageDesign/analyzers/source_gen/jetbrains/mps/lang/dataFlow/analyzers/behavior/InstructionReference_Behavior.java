package jetbrains.mps.lang.dataFlow.analyzers.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class InstructionReference_Behavior {
  public static String call_getPresentation_8656002014371076042(SNode __thisNode__) {
    String result = SPropertyOperations.getString(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getReferenceLink(0x97a52717898f4598L, 0x8150573d9fd03868L, 0x3a887e9da0b4cedcL, 0x3a887e9da0b4cee5L, "instruction")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    return result;
  }
}
