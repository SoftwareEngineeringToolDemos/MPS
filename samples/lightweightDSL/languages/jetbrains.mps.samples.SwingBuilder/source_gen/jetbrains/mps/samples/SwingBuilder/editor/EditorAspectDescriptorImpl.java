package jetbrains.mps.samples.SwingBuilder.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.EditorAspectDescriptorBase;
import java.util.Collection;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import java.util.Collections;
import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;

public class EditorAspectDescriptorImpl extends EditorAspectDescriptorBase {
  public Collection<ConceptEditor> getEditors(ConceptDescriptor descriptor) {
    switch (Arrays.binarySearch(stringSwitchCases_xbvbvu_a0a0a, descriptor.getConceptFqName())) {
      case 0:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Button_Editor()));
      case 1:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new ElementReference_Editor()));
      case 2:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new EmptyComponent_Editor()));
      case 3:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Filter_Editor()));
      case 4:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Frame_Editor()));
      case 5:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Label_Editor()));
      case 6:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Map_Editor()));
      case 7:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Panel_Editor()));
      case 8:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new SourceDataType_Editor()));
      case 9:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new SwingBuilderMember_Editor()));
      case 10:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new TargetDataType_Editor()));
      case 11:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new TextField_Editor()));
      case 12:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Transformers_Editor()));
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    return Collections.<ConceptEditorComponent>emptyList();
  }


  private static String[] stringSwitchCases_xbvbvu_a0a0a = new String[]{"jetbrains.mps.samples.SwingBuilder.structure.Button", "jetbrains.mps.samples.SwingBuilder.structure.ElementReference", "jetbrains.mps.samples.SwingBuilder.structure.EmptyComponent", "jetbrains.mps.samples.SwingBuilder.structure.Filter", "jetbrains.mps.samples.SwingBuilder.structure.Frame", "jetbrains.mps.samples.SwingBuilder.structure.Label", "jetbrains.mps.samples.SwingBuilder.structure.Map", "jetbrains.mps.samples.SwingBuilder.structure.Panel", "jetbrains.mps.samples.SwingBuilder.structure.SourceDataType", "jetbrains.mps.samples.SwingBuilder.structure.SwingBuilderMember", "jetbrains.mps.samples.SwingBuilder.structure.TargetDataType", "jetbrains.mps.samples.SwingBuilder.structure.TextField", "jetbrains.mps.samples.SwingBuilder.structure.Transformers"};
}
