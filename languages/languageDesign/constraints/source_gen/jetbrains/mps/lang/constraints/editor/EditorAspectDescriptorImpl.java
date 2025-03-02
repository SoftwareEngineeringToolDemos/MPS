package jetbrains.mps.lang.constraints.editor;

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
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new ConceptConstraints_Editor()));
      case 1:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new ConstraintFunction_ReferentSearchScope_AbstractBase_Editor()));
      case 2:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new InheritedNodeScopeFactory_Editor()));
      case 3:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new NodeDefaultSearchScope_Editor()));
      case 4:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new NodePropertyConstraint_Editor()));
      case 5:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new NodeReferentConstraint_Editor()));
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    return Collections.<ConceptEditorComponent>emptyList();
  }


  private static String[] stringSwitchCases_xbvbvu_a0a0a = new String[]{"jetbrains.mps.lang.constraints.structure.ConceptConstraints", "jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_AbstractBase", "jetbrains.mps.lang.constraints.structure.InheritedNodeScopeFactory", "jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope", "jetbrains.mps.lang.constraints.structure.NodePropertyConstraint", "jetbrains.mps.lang.constraints.structure.NodeReferentConstraint"};
}
