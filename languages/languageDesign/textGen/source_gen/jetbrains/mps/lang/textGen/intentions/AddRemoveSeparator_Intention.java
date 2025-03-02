package jetbrains.mps.lang.textGen.intentions;

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
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class AddRemoveSeparator_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public AddRemoveSeparator_Intention() {
    super(MetaAdapterFactory.getConcept(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, "jetbrains.mps.lang.textGen.structure.CollectionAppendPart"), IntentionType.NORMAL, true, new SNodePointer("r:7651b6e0-753b-4bcf-af83-d3dfc31e29e7(jetbrains.mps.lang.textGen.intentions)", "1237984182824"));
  }
  @Override
  public String getPresentation() {
    return "AddRemoveSeparator";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    return true;
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new AddRemoveSeparator_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, 0x1203d98429fL, "withSeparator")) ? "Remove Separator" : "Add Separator");
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      if (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, 0x1203d98429fL, "withSeparator"))) {
        SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, 0x120152f5107L, "separator"), "");
      }
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, 0x1203d98429fL, "withSeparator"), "" + (!(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x1201527819cL, 0x1203d98429fL, "withSeparator")))));
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return AddRemoveSeparator_Intention.this;
    }
  }
}
