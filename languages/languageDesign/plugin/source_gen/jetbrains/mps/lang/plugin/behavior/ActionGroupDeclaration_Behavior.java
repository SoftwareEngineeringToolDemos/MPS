package jetbrains.mps.lang.plugin.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.util.NameUtil;

/**
 * will be removed after 3.3
 * need to support the legacy static direct method calls
 */
@Deprecated
public class ActionGroupDeclaration_Behavior {
  public static String call_getGroupPrefix_1213877494242(SNode __thisNode__) {
    String prefix = "";
    SNode parentGroup = SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x1181da058d2L, "jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration"), false, false);
    if (parentGroup != null) {
      prefix = ActionGroupDeclaration_BehaviorDescriptor.getGroupPrefix_idhEwJa7y.invoke(parentGroup) + SPropertyOperations.getString(parentGroup, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    }
    return prefix;
  }
  public static String call_getGeneratedName_1213877494274(SNode __thisNode__) {
    return ActionGroupDeclaration_BehaviorDescriptor.getGroupPrefix_idhEwJa7y.invoke(__thisNode__) + NameUtil.toValidIdentifier(SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"))) + "_ActionGroup";
  }
  public static String call_getGeneratedClassFQName_1213877494288(SNode __thisNode__) {
    return jetbrains.mps.util.SNodeOperations.getModelLongName(SNodeOperations.getModel(__thisNode__)) + "." + ActionGroupDeclaration_BehaviorDescriptor.getGeneratedName_idhEwJa82.invoke(__thisNode__);
  }
}
