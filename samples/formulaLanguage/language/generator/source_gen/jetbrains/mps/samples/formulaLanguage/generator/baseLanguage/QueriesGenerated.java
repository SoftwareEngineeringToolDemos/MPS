package jetbrains.mps.samples.formulaLanguage.generator.baseLanguage;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

@Generated
public class QueriesGenerated {
  public static Object propertyMacro_GetPropertyValue_1200430777976(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8bab3cL, 0x1033349beb2L, "value"));
  }
  public static Object propertyMacro_GetPropertyValue_1200430828672(final PropertyMacroContext _context) {
    return SPropertyOperations.getInteger(_context.getNode(), MetaAdapterFactory.getProperty(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8aa3f9L, 0x102db8ae25bL, "value")) + ".0";
  }
  public static SNode sourceNodeQuery_1200430494834(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8620dbL, 0x102db86e5b3L, "leftOperand"));
  }
  public static SNode sourceNodeQuery_1200430529811(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8620dbL, 0x102db87696bL, "rightOperand"));
  }
  public static SNode sourceNodeQuery_1200430591959(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8d4298L, 0x102db8d7b0eL, "logicalTest"));
  }
  public static SNode sourceNodeQuery_1200430618421(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8d4298L, 0x102db8e3288L, "valueIfTrue"));
  }
  public static SNode sourceNodeQuery_1200430632007(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8d4298L, 0x102db8eb12fL, "valueIfFalse"));
  }
  public static SNode sourceNodeQuery_1200430664124(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8d4298L, 0x102db8d7b0eL, "logicalTest"));
  }
  public static SNode sourceNodeQuery_1200430674101(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8d4298L, 0x102db8e3288L, "valueIfTrue"));
  }
  public static SNode sourceNodeQuery_1200430685109(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb1a9bc478a264792L, 0x8b684660c531090aL, 0x102db8d4298L, 0x102db8eb12fL, "valueIfFalse"));
  }
}
