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
import java.util.Map;
import jetbrains.mps.generator.template.TemplateQueryContext;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.concurrent.ConcurrentMap;
import jetbrains.mps.build.util.GenerationUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.build.util.Context;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class BuildLayout_CopyProcessor_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x127671bd5d12a2c2L, "jetbrains.mps.build.structure.BuildLayout_CopyProcessor");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<String> getTaskName_id19QsrPtc4wK = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getTaskName").modifiers(SModifiersImpl.create(12, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("19QsrPtc4wK").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<Map<String, String>> getTaskArguments_id6R_3WZ31H2E = new SMethodBuilder<Map<String, String>>(new SJavaCompoundTypeImpl(Map.class)).name("getTaskArguments").modifiers(SModifiersImpl.create(12, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("6R_3WZ31H2E").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses()));
  public static final SMethod<String> getTempFolder_id19QsrPvjYS$ = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("getTempFolder").modifiers(SModifiersImpl.create(0, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("19QsrPvjYS$").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(TemplateQueryContext.class)));
  /*package*/ static final SMethod<String> representativeName_id19QsrPvAva7 = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("representativeName").modifiers(SModifiersImpl.create(1, AccessPrivileges.PRIVATE)).concept(CONCEPT).id("19QsrPvAva7").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));
  /*package*/ static final SMethod<String> filesetName_id19QsrPvClqt = new SMethodBuilder<String>(new SJavaCompoundTypeImpl(String.class)).name("filesetName").modifiers(SModifiersImpl.create(1, AccessPrivileges.PRIVATE)).concept(CONCEPT).id("19QsrPvClqt").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses((Class<SNode>) ((Class) Object.class))));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(getTaskName_id19QsrPtc4wK, getTaskArguments_id6R_3WZ31H2E, getTempFolder_id19QsrPvjYS$, representativeName_id19QsrPvAva7, filesetName_id19QsrPvClqt);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static String getTempFolder_id19QsrPvjYS$(@NotNull SNode __thisNode__, TemplateQueryContext genContext) {
    SNode project = SNodeOperations.getNodeAncestor(__thisNode__, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject"), false, false);
    ConcurrentMap<SNode, String> map = GenerationUtil.<SNode,String>getTransientMap(project, genContext, "handlerOutputPath");
    String outpath = map.get(__thisNode__);
    if (outpath != null) {
      return outpath;
    }

    String name = "default";
    SNode copyNode = SNodeOperations.as(SNodeOperations.getParent(__thisNode__), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x7f76698a394d9ab2L, "jetbrains.mps.build.structure.BuildLayout_CustomCopy"));
    if ((copyNode != null)) {
      name = BuildLayout_CopyProcessor_BehaviorDescriptor.filesetName_id19QsrPvClqt.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x127671bd5d12a2c2L, "jetbrains.mps.build.structure.BuildLayout_CopyProcessor").getDeclarationNode()), SLinkOperations.getTarget(copyNode, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x7f76698a394d9b91L, 0x48d5d03db92339baL, "fileset")));
    }
    outpath = Context.defaultContext(genContext).getTempPath(__thisNode__, name, "customProcessors", BuildLayout_CopyProcessor_BehaviorDescriptor.getTaskName_id19QsrPtc4wK.invoke(__thisNode__));
    map.put(__thisNode__, outpath);
    return outpath;
  }
  private static String representativeName_id19QsrPvAva7(@NotNull SAbstractConcept __thisConcept__, SNode path) {
    StringBuilder res = new StringBuilder();
    if (SNodeOperations.isInstanceOf(path, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x65997a657729f6fbL, "jetbrains.mps.build.structure.BuildRelativePath"))) {
      SNode compositePart = SLinkOperations.getTarget(SNodeOperations.cast(path, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x65997a657729f6fbL, "jetbrains.mps.build.structure.BuildRelativePath")), MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x65997a657729f6fbL, 0x65997a65772aebcbL, "compositePart"));
      while (compositePart != null) {
        String name = SPropertyOperations.getString(compositePart, MetaAdapterFactory.getProperty(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x779c6e65c01467f1L, 0x779c6e65c01467f3L, "head"));
        if (name.indexOf("{") == -1 && name.indexOf("}") == -1 && name.indexOf("$") == -1) {
          if (res.length() > 0) {
            res.append("-");
          }
          res.append(name);
        }
        compositePart = BuildRelativePath_BehaviorDescriptor.next_id7wpYgMyU0gZ.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x65997a657729f6fbL, "jetbrains.mps.build.structure.BuildRelativePath").getDeclarationNode()), compositePart);
      }
    } else {
      res.append(BuildSourcePath_BehaviorDescriptor.getLastSegment_id1bWeed$oUb5.invoke(path, null));
    }
    if (res.length() == 0) {
      res.append("container");
    }
    return res.toString();
  }
  private static String filesetName_id19QsrPvClqt(@NotNull SAbstractConcept __thisConcept__, SNode fileset) {
    if (SNodeOperations.isInstanceOf(fileset, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db9224596L, "jetbrains.mps.build.structure.BuildInputSingleFile"))) {
      return BuildLayout_CopyProcessor_BehaviorDescriptor.representativeName_id19QsrPvAva7.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x127671bd5d12a2c2L, "jetbrains.mps.build.structure.BuildLayout_CopyProcessor").getDeclarationNode()), SLinkOperations.getTarget(SNodeOperations.cast(fileset, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db9224596L, "jetbrains.mps.build.structure.BuildInputSingleFile")), MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db9224596L, 0x48d5d03db922459aL, "path")));
    } else if (SNodeOperations.isInstanceOf(fileset, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db92245a4L, "jetbrains.mps.build.structure.BuildInputFiles"))) {
      return BuildLayout_CopyProcessor_BehaviorDescriptor.representativeName_id19QsrPvAva7.invoke(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x127671bd5d12a2c2L, "jetbrains.mps.build.structure.BuildLayout_CopyProcessor").getDeclarationNode()), SLinkOperations.getTarget(SNodeOperations.cast(fileset, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db92245a4L, "jetbrains.mps.build.structure.BuildInputFiles")), MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db92245a4L, 0x48d5d03db92245a6L, "dir")));
    }
    return "copy";
  }

  /*package*/ BuildLayout_CopyProcessor_BehaviorDescriptor() {
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
      case 2:
        return (T) getTempFolder_id19QsrPvjYS$(node, (TemplateQueryContext) parameters[0]);
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
      case 3:
        return (T) representativeName_id19QsrPvAva7(concept, (SNode) parameters[0]);
      case 4:
        return (T) filesetName_id19QsrPvClqt(concept, (SNode) parameters[0]);
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
