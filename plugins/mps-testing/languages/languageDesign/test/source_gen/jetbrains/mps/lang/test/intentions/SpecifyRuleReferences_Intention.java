package jetbrains.mps.lang.test.intentions;

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
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.test.scripts.SpecifyUtil;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class SpecifyRuleReferences_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public SpecifyRuleReferences_Intention() {
    super(MetaAdapterFactory.getConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, "jetbrains.mps.lang.core.structure.BaseConcept"), IntentionType.NORMAL, false, new SNodePointer("r:00000000-0000-4000-0000-011c89590386(jetbrains.mps.lang.test.intentions)", "7796829026680792390"));
  }
  @Override
  public String getPresentation() {
    return "SpecifyRuleReferences";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return Sequence.fromIterable(SpecifyUtil.getErrorReporters(node)).isNotEmpty();
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new SpecifyRuleReferences_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Specify Rule References";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SpecifyUtil.attachNewContainer(node);
      SpecifyUtil.fillContainerWithRuleMessages(node);
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return SpecifyRuleReferences_Intention.this;
    }
  }
}
