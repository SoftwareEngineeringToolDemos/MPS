package jetbrains.mps.lang.editor.figures.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.baseLanguage.behavior.IMemberContainer_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class ExternalViewFigureParameter_Behavior {
  public static SNode call_getParameterMethod_5422656561935120433(SNode __thisNode__) {
    final String methodName = ExternalViewFigureParameter_BehaviorDescriptor.getGetterName_id3g73hQq7brf.invoke(__thisNode__);
    return ListSequence.fromList(IMemberContainer_BehaviorDescriptor.getMembers_idhEwJjl2.invoke(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0xd7722d504b934c3aL, 0xae061903d05f95a7L, 0x1e3b9cbb9f7493c2L, "jetbrains.mps.lang.editor.figures.structure.ExternalViewFigure")), MetaAdapterFactory.getReferenceLink(0xd7722d504b934c3aL, 0xae061903d05f95a7L, 0x1e3b9cbb9f7493c2L, 0x1e3b9cbb9f7493f7L, "classifier")))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"));
      }
    }).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return eq_g8zu1a_a0a0a0a0a0b0a(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), methodName);
      }
    });
  }
  public static String call_getGetterName_3748979635600013007(SNode __thisNode__) {
    return "get" + ExternalViewFigureParameter_BehaviorDescriptor.getSuffix_id3g73hQq82yQ.invoke(__thisNode__);
  }
  public static String call_getSuffix_3748979635600238774(SNode __thisNode__) {
    String prefix = "my";
    return (SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).startsWith(prefix) ? SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).substring(prefix.length()) : SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
  }
  private static boolean eq_g8zu1a_a0a0a0a0a0b0a(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
