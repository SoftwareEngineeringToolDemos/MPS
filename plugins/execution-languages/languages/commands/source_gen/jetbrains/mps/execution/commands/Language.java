package jetbrains.mps.execution.commands;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import jetbrains.mps.actions.descriptor.AbstractActionAspectDescriptor;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor;
import jetbrains.mps.lang.dataFlow.framework.DataFlowAspectDescriptor;
import jetbrains.mps.lang.dataFlow.framework.AbstractDataFlowAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.execution.commands.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.intentions.IntentionAspectDescriptor;
import jetbrains.mps.execution.commands.intentions.IntentionsDescriptor;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.lang.typesystem.runtime.IHelginsDescriptor;
import jetbrains.mps.execution.commands.typesystem.TypesystemDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "f3347d8a-0e79-4f35-8ac9-1574f25c986f(jetbrains.mps.execution.commands)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.execution.commands";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("f3347d8a-0e79-4f35-8ac9-1574f25c986f"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{"jetbrains.mps.debugger.api.lang", "jetbrains.mps.lang.structure", "jetbrains.mps.lang.core", "jetbrains.mps.execution.common", "jetbrains.mps.baseLanguage"};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return TemplateUtil.<TemplateModule>asCollection(TemplateUtil.createInterpretedGenerator(this, "c31fc437-4bfb-4447-bafe-2aa77860610e(jetbrains.mps.execution.commands#856705193941426438)"));
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == ActionAspectDescriptor.class) {
      return (T) new AbstractActionAspectDescriptor() {};
    }
    if (aspectClass == BehaviorAspectDescriptor.class) {
      return (T) new jetbrains.mps.execution.commands.behavior.BehaviorAspectDescriptor();
    }
    if (aspectClass == ConstraintsAspectDescriptor.class) {
      return (T) new jetbrains.mps.execution.commands.constraints.ConstraintsAspectDescriptor();
    }
    if (aspectClass == DataFlowAspectDescriptor.class) {
      return (T) new AbstractDataFlowAspectDescriptor() {};
    }
    if (aspectClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (aspectClass == IntentionAspectDescriptor.class) {
      return (T) new IntentionsDescriptor();
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.execution.commands.structure.StructureAspectDescriptor();
    }
    if (aspectClass == IHelginsDescriptor.class) {
      return (T) new TypesystemDescriptor();
    }
    return super.createAspect(aspectClass);
  }
}
