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
public class UnusedMethodTypeVariableDeclaration_Test extends BaseTransformationTest {
  @Test
  public void test_NodeVariableInitializerIsRedundantWarningCheck6923385624929723209() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.UnusedMethodTypeVariableDeclaration_Test$TestBody", "test_NodeVariableInitializerIsRedundantWarningCheck6923385624929723209", true);
  }
  @Test
  public void test_NodeTypeVariableIsNotNeededCheck6923385624928495830() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.UnusedMethodTypeVariableDeclaration_Test$TestBody", "test_NodeTypeVariableIsNotNeededCheck6923385624928495830", true);
  }
  @Test
  public void test_ErrorMessagesCheck7430872850884076184() throws Throwable {
    this.initTest("${mps_home}", "r:00000000-0000-4000-0000-011c895902c7(jetbrains.mps.baseLanguage.test@tests)", false);
    this.runTest("jetbrains.mps.baseLanguage.test.UnusedMethodTypeVariableDeclaration_Test$TestBody", "test_ErrorMessagesCheck7430872850884076184", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_NodeVariableInitializerIsRedundantWarningCheck6923385624929723209() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624929723209"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      NodeCheckOperation_BehaviorDescriptor.perform_iddCRb6FLnvk.invoke(operation, this.getRealNodeById("3951985765451229489"));
    }
    public void test_NodeTypeVariableIsNotNeededCheck6923385624928495830() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("6923385624928495830"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      NodeCheckOperation_BehaviorDescriptor.perform_iddCRb6FLnvk.invoke(operation, this.getRealNodeById("3951985765451222404"));
    }
    public void test_ErrorMessagesCheck7430872850884076184() throws Exception {
      SNode operation = SNodeOperations.cast(this.getRealNodeById("7430872850884076184"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07797e20L, "jetbrains.mps.lang.test.structure.NodeCheckOperation"));
      NodeCheckOperation_BehaviorDescriptor.perform_iddCRb6FLnvk.invoke(operation, this.getRealNodeById("7430872850884076107"));
    }
  }
}
