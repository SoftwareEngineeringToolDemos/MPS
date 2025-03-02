package jetbrains.mps.baseLanguage.util.plugin.refactorings;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BHReflection;
import jetbrains.mps.core.aspects.behaviour.SMethodTrimmedId;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.lang.dataFlow.framework.Program;
import jetbrains.mps.lang.dataFlow.DataFlowManager;
import jetbrains.mps.lang.dataFlow.framework.instructions.Instruction;
import jetbrains.mps.lang.dataFlow.framework.instructions.RetInstruction;
import jetbrains.mps.lang.dataFlow.framework.instructions.NopInstruction;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;

public class InlineMethodModel {
  private SNode myMethod;
  private MethodCallAdapter myCall;
  private boolean myIsContainsSelfCalls;
  private String myMethodPresentation;
  public InlineMethodModel(final SNode node) {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"))) {
          myMethod = SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"));
        } else {
          myCall = new MethodCallAdapter(node);
          myMethod = myCall.getMethodDeclaration();
        }
        myMethodPresentation = ((String) BHReflection.invoke(myMethod, SMethodTrimmedId.create("getPresentation", null, "hEwIMiw")));
        myIsContainsSelfCalls = isContainsSelfCalls();
      }
    });
  }
  public boolean isRecusive() {
    return myIsContainsSelfCalls;
  }
  public String getMethodPresentation() {
    return myMethodPresentation;
  }
  public MethodCallAdapter getMethodCall() {
    return myCall;
  }
  public SNode getMethod() {
    return myMethod;
  }
  public String getErrors() {
    if ((SLinkOperations.getTarget(getMethod(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")) == null) || SNodeOperations.isInstanceOf(SLinkOperations.getTarget(getMethod(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x4975dc2bdcfa0c49L, "jetbrains.mps.baseLanguage.structure.StubStatementList"))) {
      return "No sources attached";
    }
    if (myCall == null && isRecusive()) {
      return "Method is recursive";
    }
    if (isReturnBreaksExecitionFlow()) {
      return "Return breaks execution flow";
    }
    return null;
  }
  private boolean isContainsSelfCalls() {
    for (SNode call : ListSequence.fromList(SNodeOperations.getNodeDescendants(getMethod(), null, false, new SAbstractConcept[]{}))) {
      if (MethodCallAdapter.isMethodCall(call)) {
        if (new MethodCallAdapter(call).getMethodDeclaration() == getMethod()) {
          return true;
        }
      }
    }
    return false;
  }
  private boolean isReturnBreaksExecitionFlow() {
    Program program = DataFlowManager.getInstance().buildProgramFor(SLinkOperations.getTarget(getMethod(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1ffL, "body")));
    for (Instruction instruction : ListSequence.fromList(program.getInstructions())) {
      if (instruction instanceof RetInstruction) {
        Instruction next = program.get(instruction.getIndex() + 1);
        while (!(next.equals(program.getEnd()))) {
          if (next instanceof NopInstruction) {
            return true;
          }
          Set<Instruction> succ = next.succ();
          if (SetSequence.fromSet(succ).count() != 1) {
            return true;
          }
          next = SetSequence.fromSet(succ).first();
        }
      }
    }
    return false;
  }
}
