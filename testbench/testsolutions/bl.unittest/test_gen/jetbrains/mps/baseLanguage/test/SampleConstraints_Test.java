package jetbrains.mps.baseLanguage.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.test.behavior.NodeCheckOperation_BehaviorDescriptor;

@MPSLaunch
public class SampleConstraints_Test extends BaseTransformationTest {
  @Test
  public void test_NodeUnknownRuleCheck7638302724810915733() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.SampleConstraints_Test$TestBody", "test_NodeUnknownRuleCheck7638302724810915733", true);
  }
  @Test
  public void test_ErrorMessagesCheck7638302724810894630() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.SampleConstraints_Test$TestBody", "test_ErrorMessagesCheck7638302724810894630", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_NodeUnknownRuleCheck7638302724810915733() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("7638302724810915733"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      NodeCheckOperation_BehaviorDescriptor.perform_iddCRb6FLnvk.invoke(operation, this.getRealNodeById("7638302724810915512"));
    }
    public void test_ErrorMessagesCheck7638302724810894630() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("7638302724810894630"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      NodeCheckOperation_BehaviorDescriptor.perform_iddCRb6FLnvk.invoke(operation, this.getRealNodeById("7638302724810894536"));
    }
  }
}
