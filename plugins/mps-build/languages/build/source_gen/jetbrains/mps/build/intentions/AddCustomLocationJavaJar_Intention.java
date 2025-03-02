package jetbrains.mps.build.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionDescriptorBase;
import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.IntentionType;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class AddCustomLocationJavaJar_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public AddCustomLocationJavaJar_Intention() {
    super(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x11779a1dbcff551aL, "jetbrains.mps.build.structure.BuildSource_JavaJar"), IntentionType.NORMAL, true, new SNodePointer("r:9e44d7c5-70f5-4986-acea-57d3ad3ce28f(jetbrains.mps.build.intentions)", "8706695667516275787"));
  }
  @Override
  public String getPresentation() {
    return "AddCustomLocationJavaJar";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return (SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x11779a1dbcff551aL, 0x78d465945dbd7c46L, "customLocation")) == null);
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new AddCustomLocationJavaJar_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Override jar location";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SLinkOperations.setNewChild(node, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x11779a1dbcff551aL, 0x78d465945dbd7c46L, "customLocation"), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4ddcec86afb2f64cL, "jetbrains.mps.build.structure.BuildSource_JavaExternalJarRef")));
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return AddCustomLocationJavaJar_Intention.this;
    }
  }
}
