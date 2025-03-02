package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.GeneratedActionGroup;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.plugins.actions.LabelledAnchor;
import com.intellij.openapi.actionSystem.ex.ActionManagerEx;
import com.intellij.openapi.extensions.PluginId;

public class Edit_ActionGroup extends GeneratedActionGroup {
  private static Logger LOG = LogManager.getLogger(Edit_ActionGroup.class);
  public static final String ID = "jetbrains.mps.ide.actions.Edit_ActionGroup";
  public static final String LABEL_ID_custom = ID + "custom";
  public Edit_ActionGroup() {
    super("Edit", ID);
    this.setIsInternal(false);
    this.setPopup(false);
    try {
      Edit_ActionGroup.this.addSeparator();
      Edit_ActionGroup.this.addAction("jetbrains.mps.ide.actions.CopyNodeReference_Action");
      Edit_ActionGroup.this.addSeparator();
      {
        LabelledAnchor action = new LabelledAnchor(Edit_ActionGroup.LABEL_ID_custom);
        ActionManagerEx manager = ActionManagerEx.getInstanceEx();
        manager.registerAction(action.getId(), action, PluginId.getId("jetbrains.mps.ide"));
        Edit_ActionGroup.this.addAction(action);
      }
    } catch (Throwable t) {
      LOG.error("User group error", t);
    }
  }
}
