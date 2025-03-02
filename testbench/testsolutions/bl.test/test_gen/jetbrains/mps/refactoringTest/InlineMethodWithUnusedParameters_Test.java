package jetbrains.mps.refactoringTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.InlineMethodRefactoring;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import junit.framework.Assert;
import jetbrains.mps.lang.test.matcher.NodesMatcher;

@MPSLaunch
public class InlineMethodWithUnusedParameters_Test extends BaseTransformationTest {
  @Test
  public void test_InlineMethodWithUnusedParameters() throws Throwable {
    this.initTest("${mps_home}", "r:4dc6ffb5-4bbb-4773-b0b7-e52989ceb56f(jetbrains.mps.refactoringTest@tests)", false);
    this.runTest("jetbrains.mps.refactoringTest.InlineMethodWithUnusedParameters_Test$TestBody", "test_InlineMethodWithUnusedParameters", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_InlineMethodWithUnusedParameters() throws Exception {
      this.addNodeById("4412735672778826495");
      this.addNodeById("4412735672778826537");
      InlineMethodRefactoring ref = new InlineMethodRefactoring(SNodeOperations.cast(this.getNodeById("4412735672778826530"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall")));
      ref.doRefactor();
      {
        List<SNode> nodesBefore = ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.cast(this.getNodeById("4412735672778826503"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")));
        List<SNode> nodesAfter = ListSequence.fromListAndArray(new ArrayList<SNode>(), SNodeOperations.cast(this.getNodeById("4412735672778826549"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")));
        Assert.assertNull("nodes '" + nodesBefore + "' and '" + nodesAfter + "' do not match!", NodesMatcher.matchNodes(nodesBefore, nodesAfter));
      }
    }
  }
}
