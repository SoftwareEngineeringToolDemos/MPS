package jetbrains.mps.baseLanguage.unitTest.intentions;

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
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.Classifier_BehaviorDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.intentions.IntentionDescriptor;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public final class convert_test_case_to_unittest_case_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public convert_test_case_to_unittest_case_Intention() {
    super(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), IntentionType.NORMAL, false, new SNodePointer("r:ae5a3427-e70c-4b57-99b6-7ec8fc28a394(jetbrains.mps.baseLanguage.unitTest.intentions)", "2230548360390192818"));
  }
  @Override
  public String getPresentation() {
    return "convert_test_case_to_unittest_case";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return SNodeOperations.getConceptDeclaration(node) == MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept").getDeclarationNode() && TypeChecker.getInstance().getSubtypingManager().isSubtype(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")), _quotation_createNode_g240td_b0a0a0a());
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new convert_test_case_to_unittest_case_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Convert to UnitTest Case";
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode testCase = SNodeFactoryOperations.replaceWithNewChild(node, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x110dc94e923L, "jetbrains.mps.baseLanguage.unitTest.structure.BTestCase")));
      SPropertyOperations.set(testCase, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      SPropertyOperations.set(testCase, MetaAdapterFactory.getProperty(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x110dc94e923L, 0x110dc94e925L, "testCaseName"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      if ((SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")) != null) && SLinkOperations.getTarget(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")) != SLinkOperations.getTarget(_quotation_createNode_g240td_a0a0d0a(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"))) {
        SLinkOperations.setTarget(SLinkOperations.getTarget(testCase, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SLinkOperations.getTarget(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")));
      }
      for (SNode m : Sequence.fromIterable(Classifier_BehaviorDescriptor.methods_id4_LVZ3pBKCn.invoke(node))) {
        if (SPropertyOperations.getString(m, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).startsWith("test")) {
          ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(testCase, MetaAdapterFactory.getContainmentLink(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x110dc94e923L, 0x110dc94e924L, "testMethodList")), MetaAdapterFactory.getContainmentLink(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x110dc95061dL, 0x110dc95061eL, "testMethod"))).addElement(_quotation_createNode_g240td_a0a0a0a4a0(SNodeOperations.detachNode(SLinkOperations.getTarget(m, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body"))), SPropertyOperations.getString(m, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).substring("test".length())));
        } else {
          ListSequence.fromList(SLinkOperations.getChildren(testCase, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).addElement(SNodeOperations.detachNode(m));
        }
      }
      for (SNode f : Sequence.fromIterable(Classifier_BehaviorDescriptor.staticFields_id4_LVZ3pBr7M.invoke(node))) {
        ListSequence.fromList(SLinkOperations.getChildren(testCase, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).addElement(SNodeOperations.detachNode(f));
      }
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return convert_test_case_to_unittest_case_Intention.this;
    }
  }
  private static SNode _quotation_createNode_g240td_b0a0a0a() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("83f155ff-422c-4b5a-a2f2-b459302dd215/java:junit.framework(jetbrains.mps.baseLanguage.unitTest.libs/)"), facade.createNodeId("~TestCase")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_g240td_a0a0d0a() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("83f155ff-422c-4b5a-a2f2-b459302dd215/java:junit.framework(jetbrains.mps.baseLanguage.unitTest.libs/)"), facade.createNodeId("~TestCase")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_g240td_a0a0a0a4a0(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x110dc92748eL, "jetbrains.mps.baseLanguage.unitTest.structure.TestMethod"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_3, MetaAdapterFactory.getProperty(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x110dc92748eL, 0x110dc927490L, "methodName"), (String) parameter_2);
    quotedNode_4 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"), null, null, false);
    quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1fdL, "returnType"), quotedNode_4);
    quotedNode_5 = (SNode) parameter_1;
    if (quotedNode_5 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body"), HUtil.copyIfNecessary(quotedNode_5));
    }
    return quotedNode_3;
  }
}
