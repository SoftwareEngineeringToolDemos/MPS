package jetbrains.mps.lang.structure.actions;

/*Generated by MPS */

import jetbrains.mps.openapi.actions.descriptor.NodeFactory;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SModel;
import org.apache.log4j.Level;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.structure.util.ConceptIdUtil;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ConceptIdSetter {
  public static class NodeFactory_1587916991970085434 implements NodeFactory {
    public void setup(SNode newNode, SNode sampleNode, SNode enclosingNode, SModel model) {
      if (model == null) {
        if (LOG.isEnabledFor(Level.WARN)) {
          LOG.warn("Creating concept not in model. Concept id not set. Please set manually.");
        }
        return;
      }
      SPropertyOperations.set(newNode, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x16096a174f259419L, "conceptId"), "" + (ConceptIdUtil.generate(newNode, model)));
    }
  }
  protected static Logger LOG = LogManager.getLogger(ConceptIdSetter.class);
}
