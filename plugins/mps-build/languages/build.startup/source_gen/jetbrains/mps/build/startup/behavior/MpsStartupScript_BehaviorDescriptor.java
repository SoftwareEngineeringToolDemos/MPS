package jetbrains.mps.build.startup.behavior;

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
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.IRightCombinator;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

public final class MpsStartupScript_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b3437508L, "jetbrains.mps.build.startup.structure.MpsStartupScript");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<String> getDefaultVmoptions_id54lRqzvuHDj = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getDefaultVmoptions").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("54lRqzvuHDj").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Boolean.TYPE)));
  public static final SMethod<Iterable<SNode>> getCommentedOptions_id54lRqzvvwVL = new SMethodBuilder<Iterable<SNode>>(new SJavaCompoundTypeImpl((Class<Iterable<SNode>>) ((Class) Object.class))).name("getCommentedOptions").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("54lRqzvvwVL").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Boolean.TYPE)));
  public static final SMethod<Iterable<SNode>> getVmOptions_id2lwFGYOX$qJ = new SMethodBuilder<Iterable<SNode>>(new SJavaCompoundTypeImpl((Class<Iterable<SNode>>) ((Class) Object.class))).name("getVmOptions").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("2lwFGYOX$qJ").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Boolean.TYPE)));
  public static final SMethod<Iterable<SNode>> getDefaultVmOptionsLines_id2lwFGYOXBOk = new SMethodBuilder<Iterable<SNode>>(new SJavaCompoundTypeImpl((Class<Iterable<SNode>>) ((Class) Object.class))).name("getDefaultVmOptionsLines").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("2lwFGYOXBOk").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Boolean.TYPE)));
  public static final SMethod<String> getPathToVmOptionsFile_id54lRqzvvwXi = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPathToVmOptionsFile").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("54lRqzvvwXi").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Boolean.TYPE)));
  public static final SMethod<String> getVmOptionsFileName_id2lwFGYOYlNP = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getVmOptionsFileName").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("2lwFGYOYlNP").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Boolean.TYPE)));
  public static final SMethod<String> getVmOptionsExtension_id54lRqzvvwXR = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getVmOptionsExtension").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("54lRqzvvwXR").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getDefaultVmoptions_id54lRqzvuHDj, getCommentedOptions_id54lRqzvvwVL, getVmOptions_id2lwFGYOX$qJ, getDefaultVmOptionsLines_id2lwFGYOXBOk, getPathToVmOptionsFile_id54lRqzvvwXi, getVmOptionsFileName_id2lwFGYOYlNP, getVmOptionsExtension_id54lRqzvvwXR);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static String getDefaultVmoptions_id54lRqzvuHDj(@NotNull SNode __thisNode__, boolean is64bit) {
    return trim_z28c44_a0a0p(Sequence.fromIterable(MpsStartupScript_BehaviorDescriptor.getVmOptions_id2lwFGYOX$qJ.invoke(__thisNode__, is64bit)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return !(SPropertyOperations.getBoolean(it, MetaAdapterFactory.getProperty(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b343774cL, 0x5115dda8df7dfca2L, "commented")));
      }
    }).foldRight("", new IRightCombinator<SNode, String>() {
      public String combine(SNode it, String s) {
        return s + " " + SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b343774cL, 0x35ebd6e5b343774dL, "options"));
      }
    }));
  }
  private static Iterable<SNode> getCommentedOptions_id54lRqzvvwVL(@NotNull SNode __thisNode__, boolean is64bit) {
    return Sequence.fromIterable(MpsStartupScript_BehaviorDescriptor.getVmOptions_id2lwFGYOX$qJ.invoke(__thisNode__, is64bit)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SPropertyOperations.getBoolean(it, MetaAdapterFactory.getProperty(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b343774cL, 0x5115dda8df7dfca2L, "commented"));
      }
    });
  }
  private static Iterable<SNode> getVmOptions_id2lwFGYOX$qJ(@NotNull SNode __thisNode__, boolean is64bit) {
    return SNodeOperations.ofConcept(((is64bit ? SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b3437508L, 0x2560aecfb4da3f5bL, "vmOptions64")) : SLinkOperations.getChildren(__thisNode__, MetaAdapterFactory.getContainmentLink(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b3437508L, 0x35ebd6e5b3442664L, "vmOptions")))), MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b343774cL, "jetbrains.mps.build.startup.structure.SimpleVmOptions"));
  }
  private static Iterable<SNode> getDefaultVmOptionsLines_id2lwFGYOXBOk(@NotNull SNode __thisNode__, boolean is64bit) {
    return Sequence.fromIterable(Sequence.fromArray(MpsStartupScript_BehaviorDescriptor.getDefaultVmoptions_id54lRqzvuHDj.invoke(__thisNode__, is64bit).split("\\s"))).where(new IWhereFilter<String>() {
      public boolean accept(String it) {
        return (it != null && it.length() > 0);
      }
    }).select(new ISelector<String, SNode>() {
      public SNode select(String it) {
        return _quotation_createNode_p7akvg_a0a0a0a0d(it);
      }
    });
  }
  private static String getPathToVmOptionsFile_id54lRqzvvwXi(@NotNull SNode __thisNode__, boolean is64bit) {
    return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x35ebd6e5b3437508L, 0x35ebd6e5b343750bL, "startupFolder")) + "/" + MpsStartupScript_BehaviorDescriptor.getVmOptionsFileName_id2lwFGYOYlNP.invoke(__thisNode__, is64bit);
  }
  private static String getVmOptionsFileName_id2lwFGYOYlNP(@NotNull SNode __thisNode__, boolean is64bit) {
    return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + ((is64bit ? "64" : "")) + "." + MpsStartupScript_BehaviorDescriptor.getVmOptionsExtension_id54lRqzvvwXR.invoke(__thisNode__);
  }
  private static String getVmOptionsExtension_id54lRqzvvwXR(@NotNull SNode __thisNode__) {
    return "vmoptions";
  }

  /*package*/ MpsStartupScript_BehaviorDescriptor() {
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
        return (T) getDefaultVmoptions_id54lRqzvuHDj(node, (Boolean) parameters[0]);
      case 1:
        return (T) getCommentedOptions_id54lRqzvvwVL(node, (Boolean) parameters[0]);
      case 2:
        return (T) getVmOptions_id2lwFGYOX$qJ(node, (Boolean) parameters[0]);
      case 3:
        return (T) getDefaultVmOptionsLines_id2lwFGYOXBOk(node, (Boolean) parameters[0]);
      case 4:
        return (T) getPathToVmOptionsFile_id54lRqzvvwXi(node, (Boolean) parameters[0]);
      case 5:
        return (T) getVmOptionsFileName_id2lwFGYOYlNP(node, (Boolean) parameters[0]);
      case 6:
        return (T) getVmOptionsExtension_id54lRqzvvwXR(node);
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
  public static String trim_z28c44_a0a0p(String str) {
    return (str == null ? null : str.trim());
  }
  private static SNode _quotation_createNode_p7akvg_a0a0a0a0d(Object parameter_1) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_2 = null;
    quotedNode_2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x180805c7b1d668a2L, "jetbrains.mps.build.startup.structure.TextLine"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_2, MetaAdapterFactory.getProperty(0xd5033ceef63244b6L, 0xb30889d4fbde34ffL, 0x180805c7b1d668a2L, 0x180805c7b1df77d9L, "text"), (String) parameter_1);
    return quotedNode_2;
  }
}
