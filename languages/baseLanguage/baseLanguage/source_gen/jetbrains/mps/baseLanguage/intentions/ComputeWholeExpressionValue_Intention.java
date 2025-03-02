package jetbrains.mps.baseLanguage.intentions;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.baseLanguage.behavior.Expression_BehaviorDescriptor;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.baseLanguage.typesystem.ExpressionPresentationUtil;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class ComputeWholeExpressionValue_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public ComputeWholeExpressionValue_Intention() {
    super(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"), IntentionType.NORMAL, true, new SNodePointer("r:00000000-0000-4000-0000-011c895902c6(jetbrains.mps.baseLanguage.intentions)", "8245314650930918171"));
  }
  @Override
  public String getPresentation() {
    return "ComputeWholeExpressionValue";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    SNode parent = SNodeOperations.getParent(node);
    if (((parent == null) || !(SNodeOperations.isInstanceOf(parent, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"))) || !(Expression_BehaviorDescriptor.isCompileTimeConstant_idi1LOPRp.invoke(SNodeOperations.cast(parent, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")))) || Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(SNodeOperations.cast(parent, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeOperations.getModel(parent).getModule()) == null) && Expression_BehaviorDescriptor.isCompileTimeConstant_idi1LOPRp.invoke(node) && !(Expression_BehaviorDescriptor.constant_id1653mnvAgr2.invoke(SNodeOperations.asSConcept(SNodeOperations.getConceptDeclaration(node))))) {

      Object v = Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(node, SNodeOperations.getModel(node).getModule());
      return v != null && (v instanceof Number || v instanceof Boolean || v instanceof String || v instanceof Character);
    }
    return false;
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ComputeWholeExpressionValue_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      Object v = Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(node, SNodeOperations.getModel(node).getModule());
      return "Replace expression " + ExpressionPresentationUtil.getExpressionPresentation(node) + " with compile-time value \"" + v.toString() + "\"";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      Object value = Expression_BehaviorDescriptor.getCompileTimeConstantValue_idi1LP2xI.invoke(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeOperations.getModel(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression"))).getModule());
      if (value instanceof Boolean) {
        SNode v = SNodeFactoryOperations.replaceWithNewChild(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, "jetbrains.mps.baseLanguage.structure.BooleanConstant")));
        SPropertyOperations.set(v, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, 0xf8cc56b202L, "value"), "" + (((Boolean) value).booleanValue()));
      }
      if (value instanceof String) {
        SNode v = SNodeFactoryOperations.replaceWithNewChild(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, "jetbrains.mps.baseLanguage.structure.StringLiteral")));
        SPropertyOperations.set(v, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93d565d10L, 0xf93d565d11L, "value"), ((String) value));
      }
      if (value instanceof Integer || value instanceof Short || value instanceof Byte) {
        SNode v = SNodeFactoryOperations.replaceWithNewChild(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant")));
        SPropertyOperations.set(v, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, 0xf8cc59b315L, "value"), "" + (((Number) value).intValue()));
      }
      if (value instanceof Float) {
        SNode v = SNodeFactoryOperations.replaceWithNewChild(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x494547eeedc219b9L, "jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant")));
        SPropertyOperations.set(v, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x494547eeedc219b9L, 0x494547eeedc219bbL, "value"), "" + ((Number) value).floatValue());
      }
      if (value instanceof Double) {
        SNode v = SNodeFactoryOperations.replaceWithNewChild(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL, "jetbrains.mps.baseLanguage.structure.Expression")), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102cb19a434L, "jetbrains.mps.baseLanguage.structure.FloatingPointConstant")));
        SPropertyOperations.set(v, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x102cb19a434L, 0x103245d193fL, "value"), "" + ((Number) value).doubleValue());
      }
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return ComputeWholeExpressionValue_Intention.this;
    }
  }
}
