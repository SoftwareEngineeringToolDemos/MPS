package jetbrains.mps.lang.core.typesystem;

/*Generated by MPS */

import jetbrains.mps.errors.QuickFix_Runtime;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.core.behavior.LinkAttribute_BehaviorDescriptor;

public class add_LinkAttribute_id_QuickFix extends QuickFix_Runtime {
  public add_LinkAttribute_id_QuickFix() {
    super(new SNodePointer("r:cec599e3-51d2-48a7-af31-989e3cbd593c(jetbrains.mps.lang.core.typesystem)", "8689990658168040097"));
  }
  public String getDescription(SNode node) {
    return "Add id to link attribute";
  }
  public void execute(SNode node) {
    SNode linkAttribute = SNodeOperations.as(node, MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2eb1ad060897da51L, "jetbrains.mps.lang.core.structure.LinkAttribute"));
    LinkAttribute_BehaviorDescriptor.setLink_id6Gg5KlvuxxF.invoke(linkAttribute, LinkAttribute_BehaviorDescriptor.getLink_id1avfQ4BEFo6.invoke(linkAttribute));
  }
}
