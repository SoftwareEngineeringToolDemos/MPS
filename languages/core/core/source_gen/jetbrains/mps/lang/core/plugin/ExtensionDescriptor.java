package jetbrains.mps.lang.core.plugin;

/*Generated by MPS */

import jetbrains.mps.smodel.structure.DefaultExtensionDescriptor;
import jetbrains.mps.smodel.structure.ExtensionPoint;
import java.util.Arrays;

public class ExtensionDescriptor extends DefaultExtensionDescriptor {
  private ExtensionPoint[] extensionPoints = new ExtensionPoint[]{new ExtensionPoint("jetbrains.mps.lang.core.GeneratorCache")};
  public ExtensionDescriptor() {
  }
  @Override
  public Iterable<? extends ExtensionPoint> getExtensionPoints() {
    return Arrays.asList(extensionPoints);
  }
}
