package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class View_ActionGroup extends GeneratedActionGroup {
  private static Logger LOG = LogManager.getLogger(View_ActionGroup.class);
  public static final String ID = "jetbrains.mps.ide.actions.View_ActionGroup";
  public View_ActionGroup() {
    super("View", ID);
    this.setIsInternal(false);
    this.setPopup(false);
    try {
      View_ActionGroup.this.addAction("jetbrains.mps.ide.actions.ShowParameters_Action");
      View_ActionGroup.this.addAction("jetbrains.mps.ide.actions.ShowNodeInfo_Action");
    } catch (Throwable t) {
      LOG.error("User group error", t);
    }
  }
}
