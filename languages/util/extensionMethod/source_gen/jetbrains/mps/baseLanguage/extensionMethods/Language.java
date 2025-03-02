package jetbrains.mps.baseLanguage.extensionMethods;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.openapi.actions.descriptor.ActionAspectDescriptor;
import jetbrains.mps.baseLanguage.extensionMethods.actions.ActionAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.BehaviorAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConstraintsAspectDescriptor;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.baseLanguage.extensionMethods.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.lang.script.runtime.ScriptAspectDescriptor;
import jetbrains.mps.baseLanguage.extensionMethods.scripts.ScriptsDescriptor;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;
import jetbrains.mps.lang.typesystem.runtime.IHelginsDescriptor;
import jetbrains.mps.baseLanguage.extensionMethods.typesystem.TypesystemDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "5dc5fc0d-37ef-4782-8192-8b5ce1f69f80(jetbrains.mps.baseLanguage.extensionMethods)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.baseLanguage.extensionMethods";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("5dc5fc0d-37ef-4782-8192-8b5ce1f69f80"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{"jetbrains.mps.baseLanguage"};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return TemplateUtil.<TemplateModule>asCollection(TemplateUtil.createInterpretedGenerator(this, "6a08004c-a528-4d33-89a4-9cd55361f38d(jetbrains.mps.baseLanguage.extensionMethods#6225815798156427146)"));
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == ActionAspectDescriptor.class) {
      return (T) new ActionAspectDescriptorImpl();
    }
    if (aspectClass == BehaviorAspectDescriptor.class) {
      return (T) new jetbrains.mps.baseLanguage.extensionMethods.behavior.BehaviorAspectDescriptor();
    }
    if (aspectClass == ConstraintsAspectDescriptor.class) {
      return (T) new jetbrains.mps.baseLanguage.extensionMethods.constraints.ConstraintsAspectDescriptor();
    }
    if (aspectClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (aspectClass == ScriptAspectDescriptor.class) {
      return (T) new ScriptsDescriptor();
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.baseLanguage.extensionMethods.structure.StructureAspectDescriptor();
    }
    if (aspectClass == IHelginsDescriptor.class) {
      return (T) new TypesystemDescriptor();
    }
    return super.createAspect(aspectClass);
  }
}
