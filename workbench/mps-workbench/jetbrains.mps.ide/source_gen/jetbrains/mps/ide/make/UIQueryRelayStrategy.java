package jetbrains.mps.ide.make;

/*Generated by MPS */

import jetbrains.mps.make.script.IOption;
import jetbrains.mps.make.script.IQuery;
import jetbrains.mps.project.Project;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.ide.ThreadUtils;
import com.intellij.openapi.ui.Messages;
import jetbrains.mps.ide.project.ProjectHelper;

public class UIQueryRelayStrategy {
  public UIQueryRelayStrategy() {
  }
  public <T extends IOption> T relayQuery(final IQuery<T> query, final Project mpsProject) {
    List<T> optList = Sequence.fromIterable(query.options()).toListSequence();
    final String[] options = ListSequence.fromList(optList).select(new ISelector<T, String>() {
      public String select(T o) {
        return o.getText();
      }
    }).toGenericArray(String.class);
    final int defopt = ListSequence.fromList(optList).indexOf(query.defaultOption());
    final Wrappers._int res = new Wrappers._int(-1);
    ThreadUtils.runInUIThreadAndWait(new Runnable() {
      public void run() {
        res.value = Messages.showDialog(ProjectHelper.toIdeaProject(mpsProject), query.getText(), query.getTitle(), options, defopt, Messages.getQuestionIcon());
      }
    });
    if (res.value < 0) {
      return query.voidOption();
    }
    return ListSequence.fromList(optList).getElement(res.value);
  }
  public static interface DialogListener {
    public void beforeDialogShown();
  }
}
