package jetbrains.mps.build.behavior;

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
import jetbrains.mps.build.util.MacroHelper;
import java.util.List;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.build.util.Context;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.vfs.FileSystem;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class BuildCompositePath_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, "jetbrains.mps.build.structure.BuildCompositePath");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<String> getPath_id7usrAn05okK = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPath").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("7usrAn05okK").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getLastSegment_id1bWeed$oUbg = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getLastSegment").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("1bWeed$oUbg").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(MacroHelper.class)));
  public static final SMethod<String> getPathToHead_id3skBIrUiCOV = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getPathToHead").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("3skBIrUiCOV").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<List<String>> getHeadSuggestions_id4jjtc7X04td = new SMethodBuilder<List<String>>(new SJavaCompoundTypeImpl((Class<List<String>>) ((Class) Object.class))).name("getHeadSuggestions").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("4jjtc7X04td").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(String.class)));
  public static final SMethod<IFile> getFile_idIG8oXsODon = new SMethodBuilder<IFile>(new SJavaCompoundTypeImpl(IFile.class)).name("getFile").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("IG8oXsODon").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(Context.class)));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getPath_id7usrAn05okK, getLastSegment_id1bWeed$oUbg, getPathToHead_id3skBIrUiCOV, getHeadSuggestions_id4jjtc7X04td, getFile_idIG8oXsODon);

  private static void ___init___(@NotNull SNode __thisNode__) {
    SPropertyOperations.set(__thisNode__, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head"), "");
  }

  private static String getPath_id7usrAn05okK(@NotNull SNode __thisNode__) {
    if ((SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f2L, "tail")) != null)) {
      return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head")) + "/" + BuildCompositePath_BehaviorDescriptor.getPath_id7usrAn05okK.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f2L, "tail")));
    }
    return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head"));
  }
  private static String getLastSegment_id1bWeed$oUbg(@NotNull SNode __thisNode__, MacroHelper helper) {
    SNode last = __thisNode__;
    while ((SLinkOperations.getTarget(last, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f2L, "tail")) != null)) {
      last = SLinkOperations.getTarget(last, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f2L, "tail"));
    }
    return SPropertyOperations.getString(last, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head"));
  }
  private static String getPathToHead_id3skBIrUiCOV(@NotNull SNode __thisNode__) {
    if (SNodeOperations.isInstanceOf(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, "jetbrains.mps.build.structure.BuildCompositePath"))) {
      return BuildCompositePath_BehaviorDescriptor.getPathToHead_id3skBIrUiCOV.invoke(SNodeOperations.cast(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, "jetbrains.mps.build.structure.BuildCompositePath"))) + "/" + SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head"));
    }
    return SPropertyOperations.getString(__thisNode__, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head"));
  }
  private static List<String> getHeadSuggestions_id4jjtc7X04td(@NotNull SNode __thisNode__, String basePath) {
    String relativePath = basePath;
    if (relativePath == null) {
      return ListSequence.fromList(new ArrayList<String>());
    }

    if (SNodeOperations.isInstanceOf(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, "jetbrains.mps.build.structure.BuildCompositePath"))) {
      relativePath += "/" + BuildCompositePath_BehaviorDescriptor.getPathToHead_id3skBIrUiCOV.invoke(SNodeOperations.cast(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, "jetbrains.mps.build.structure.BuildCompositePath")));
    }

    IFile file = FileSystem.getInstance().getFileByPath(relativePath);
    if (!(file.exists())) {
      return ListSequence.fromList(new ArrayList<String>());
    }
    List<IFile> children = file.getChildren();
    Iterable<String> names = ListSequence.fromList(children).select(new ISelector<IFile, String>() {
      public String select(IFile it) {
        return it.getName();
      }
    });
    if (file.getParent() != null) {
      names = Sequence.fromIterable(names).union(Sequence.fromIterable(Sequence.<String>singleton("..")));
    }
    return Sequence.fromIterable(names).sort(new ISelector<String, String>() {
      public String select(String it) {
        return it;
      }
    }, true).toListSequence();
  }
  private static IFile getFile_idIG8oXsODon(@NotNull SNode __thisNode__, Context context) {
    String basePath = BuildRelativePath_BehaviorDescriptor.getBasePath_id4jjtc7WZMYz.invoke(SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x65997a657729f6fbL, "jetbrains.mps.build.structure.BuildRelativePath"), false, false), context);
    if ((basePath == null || basePath.length() == 0)) {
      return null;
    }

    basePath += "/" + BuildCompositePath_BehaviorDescriptor.getPathToHead_id3skBIrUiCOV.invoke(__thisNode__);
    return FileSystem.getInstance().getFileByPath(basePath);
  }

  /*package*/ BuildCompositePath_BehaviorDescriptor() {
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
        return (T) getPath_id7usrAn05okK(node);
      case 1:
        return (T) getLastSegment_id1bWeed$oUbg(node, (MacroHelper) parameters[0]);
      case 2:
        return (T) getPathToHead_id3skBIrUiCOV(node);
      case 3:
        return (T) getHeadSuggestions_id4jjtc7X04td(node, (String) parameters[0]);
      case 4:
        return (T) getFile_idIG8oXsODon(node, (Context) parameters[0]);
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
