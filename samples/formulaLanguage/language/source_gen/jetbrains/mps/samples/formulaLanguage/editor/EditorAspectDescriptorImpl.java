package jetbrains.mps.samples.formulaLanguage.editor;

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
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new AndOperation_Editor()));
      case 1:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Constant_Editor()));
      case 2:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new EqualsOperation_Editor()));
      case 3:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Expression_Editor()));
      case 4:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new FloatingPointConstant_Editor()));
      case 5:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Formula_Editor()));
      case 6:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Function_Editor()));
      case 7:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new GreaterThanOperation_Editor()));
      case 8:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new IfFunction_Editor()));
      case 9:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new IntegerConstant_Editor()));
      case 10:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new IsNullOperation_Editor()));
      case 11:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new LessThanOperation_Editor()));
      case 12:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new MinusOperation_Editor()));
      case 13:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new MultOperation_Editor()));
      case 14:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new NotOperation_Editor()));
      case 15:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new NullConstant_Editor()));
      case 16:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Operation_Editor()));
      case 17:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new OrOperation_Editor()));
      case 18:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new ParenthisizedExpression_Editor()));
      case 19:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new PlusOperation_Editor()));
      case 20:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new Reference_Editor()));
      case 21:
        return collectEditors(descriptor, Collections.<ConceptEditor>singletonList(new StringConstant_Editor()));
      default:
    }
    return Collections.<ConceptEditor>emptyList();
  }

  public Collection<ConceptEditorComponent> getEditorComponents(ConceptDescriptor descriptor, String editorComponentId) {
    return Collections.<ConceptEditorComponent>emptyList();
  }


  private static String[] stringSwitchCases_xbvbvu_a0a0a = new String[]{"jetbrains.mps.samples.formulaLanguage.structure.AndOperation", "jetbrains.mps.samples.formulaLanguage.structure.Constant", "jetbrains.mps.samples.formulaLanguage.structure.EqualsOperation", "jetbrains.mps.samples.formulaLanguage.structure.Expression", "jetbrains.mps.samples.formulaLanguage.structure.FloatingPointConstant", "jetbrains.mps.samples.formulaLanguage.structure.Formula", "jetbrains.mps.samples.formulaLanguage.structure.Function", "jetbrains.mps.samples.formulaLanguage.structure.GreaterThanOperation", "jetbrains.mps.samples.formulaLanguage.structure.IfFunction", "jetbrains.mps.samples.formulaLanguage.structure.IntegerConstant", "jetbrains.mps.samples.formulaLanguage.structure.IsNullOperation", "jetbrains.mps.samples.formulaLanguage.structure.LessThanOperation", "jetbrains.mps.samples.formulaLanguage.structure.MinusOperation", "jetbrains.mps.samples.formulaLanguage.structure.MultOperation", "jetbrains.mps.samples.formulaLanguage.structure.NotOperation", "jetbrains.mps.samples.formulaLanguage.structure.NullConstant", "jetbrains.mps.samples.formulaLanguage.structure.Operation", "jetbrains.mps.samples.formulaLanguage.structure.OrOperation", "jetbrains.mps.samples.formulaLanguage.structure.ParenthisizedExpression", "jetbrains.mps.samples.formulaLanguage.structure.PlusOperation", "jetbrains.mps.samples.formulaLanguage.structure.Reference", "jetbrains.mps.samples.formulaLanguage.structure.StringConstant"};
}
