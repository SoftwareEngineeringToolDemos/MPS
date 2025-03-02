package jetbrains.mps.lang.typesystem.behavior;

/*Generated by MPS */

import jetbrains.mps.core.aspects.behaviour.BaseBHDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.core.aspects.behaviour.api.BehaviorRegistry;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.core.aspects.behaviour.api.SMethod;
import jetbrains.mps.core.aspects.behaviour.SMethodBuilder;
import jetbrains.mps.core.aspects.behaviour.SJavaCompoundTypeImpl;
import jetbrains.mps.core.aspects.behaviour.SModifiersImpl;
import jetbrains.mps.core.aspects.behaviour.AccessPrivileges;
import jetbrains.mps.core.aspects.behaviour.SParameterImpl;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class ReportErrorStatement_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x111b251a62aL, "jetbrains.mps.lang.typesystem.structure.ReportErrorStatement");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Void> attachNewMessageAnnotation_id7nf9pEwlup1 = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("attachNewMessageAnnotation").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7nf9pEwlup1").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getName_id1oFBbRehoLP = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getName").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1oFBbRehoLP").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(attachNewMessageAnnotation_id7nf9pEwlup1, getName_id1oFBbRehoLP);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static void attachNewMessageAnnotation_id7nf9pEwlup1(@NotNull SNode __thisNode__) {
    SNode newAnnotation = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x6ee9803e48223f2eL, "jetbrains.mps.lang.typesystem.structure.ReportErrorStatementAnnotation")), null);
    AttributeOperations.setAttribute(__thisNode__, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x2bb0fe622a9eb078L, "jetbrains.mps.lang.typesystem.structure.MessageStatementAnnotation")), newAnnotation);
  }
  private static String getName_id1oFBbRehoLP(@NotNull SNode __thisNode__) {
    if ((AttributeOperations.getAttribute(__thisNode__, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x2bb0fe622a9eb078L, "jetbrains.mps.lang.typesystem.structure.MessageStatementAnnotation"))) != null)) {
      return SPropertyOperations.getString(AttributeOperations.getAttribute(__thisNode__, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x2bb0fe622a9eb078L, "jetbrains.mps.lang.typesystem.structure.MessageStatementAnnotation"))), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
    } else {
      String nameGenerated = MessageStatementUtil.generateNameFromExpression(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x111b251a62aL, 0x111b252f0c9L, "errorString")));
      if (nameGenerated != null && nameGenerated.length() > MessageStatementUtil.MIN_LENGTH) {
        return nameGenerated;
      }
      return "UnnamedError";
    }
  }

  /*package*/ ReportErrorStatement_BehaviorDescriptor() {
    super(REGISTRY);
  }

  @Override
  protected void initNode(@NotNull SNode node, @NotNull SConstructor constructor, @NotNull Object[] array) {
    ___init___(node);
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SNode node, @NotNull SMethod<T> method, @NotNull Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      case 0:
        attachNewMessageAnnotation_id7nf9pEwlup1(node);
        return null;
      case 1:
        return (T) getName_id1oFBbRehoLP(node);
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @Override
  protected <T> T invokeSpecial0(@NotNull SAbstractConcept concept, @NotNull SMethod<T> method, @NotNull Object[] parameters) {
    int methodIndex = BH_METHODS.indexOf(method);
    if (methodIndex < 0) {
      throw new BHMethodNotFoundException(this, method);
    }
    switch (methodIndex) {
      default:
        throw new BHMethodNotFoundException(this, method);
    }
  }

  @NotNull
  @Override
  public List<SMethod<?>> getDeclaredMethods() {
    return BH_METHODS;
  }

  @NotNull
  @Override
  public SAbstractConcept getConcept() {
    return CONCEPT;
  }
}
