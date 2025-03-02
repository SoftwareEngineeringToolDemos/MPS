package jetbrains.mps.console.ideCommands.behavior;

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
import jetbrains.mps.console.tool.ConsoleContext;
import jetbrains.mps.console.tool.ConsoleStream;
import java.util.List;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.console.ideCommands.util.PartitioningHelper;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.core.aspects.behaviour.api.SConstructor;
import jetbrains.mps.core.aspects.behaviour.api.BHMethodNotFoundException;

public final class ShowGenPlan_BehaviorDescriptor extends BaseBHDescriptor {
  private static final SAbstractConcept CONCEPT = MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, "jetbrains.mps.console.ideCommands.structure.ShowGenPlan");
  private static final BehaviorRegistry REGISTRY = ConceptRegistry.getInstance().getBehaviorRegistry();

  public static final SMethod<Void> doExecute_id2SpVAIqougW = new SMethodBuilder<Void>(new SJavaCompoundTypeImpl(Void.class)).name("doExecute").modifiers(SModifiersImpl.create(8, AccessPrivileges.PUBLIC)).concept(CONCEPT).id("2SpVAIqougW").registry(REGISTRY).build(SParameterImpl.fromList(SJavaCompoundTypeImpl.fromClasses(ConsoleContext.class, ConsoleStream.class)));

  private static final List<SMethod<?>> BH_METHODS = Arrays.<SMethod<?>>asList(doExecute_id2SpVAIqougW);

  private static void ___init___(@NotNull SNode __thisNode__) {
  }

  private static void doExecute_id2SpVAIqougW(@NotNull SNode __thisNode__, ConsoleContext context, ConsoleStream console) {
    SModel model = ModelReference_BehaviorDescriptor.getModel_id67MRmR$z8Z2.invoke(SLinkOperations.getTarget(__thisNode__, MetaAdapterFactory.getContainmentLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x61f2dd6de47f85e4L, 0x61f2dd6de47f867aL, "targetModel")), context.getProject().getRepository());
    if (model == null) {
      return;
    }
    PartitioningHelper.showMappingPartitioning(ProjectHelper.toIdeaProject(context.getProject()), Sequence.fromIterable(Sequence.<SModel>singleton(model)).toListSequence(), console);
  }

  /*package*/ ShowGenPlan_BehaviorDescriptor() {
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
        doExecute_id2SpVAIqougW(node, (ConsoleContext) parameters[0], (ConsoleStream) parameters[1]);
        return null;
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
