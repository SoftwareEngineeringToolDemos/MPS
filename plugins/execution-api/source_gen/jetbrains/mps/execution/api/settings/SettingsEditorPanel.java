package jetbrains.mps.execution.api.settings;

/*Generated by MPS */

import com.intellij.openapi.options.SettingsEditorListener;
import javax.swing.JPanel;
import javax.swing.JLabel;
import javax.swing.AbstractAction;
import java.awt.event.ActionEvent;
import com.intellij.openapi.options.SettingsEditor;
import java.awt.BorderLayout;
import java.awt.Color;
import javax.swing.JComponent;
import com.intellij.openapi.options.ConfigurationException;
import javax.swing.Action;
import com.intellij.openapi.util.Disposer;
import com.intellij.execution.configurations.RuntimeConfigurationException;

public class SettingsEditorPanel {
  private final ITemplatePersistentConfiguration myConfiguration;
  private final SettingsEditorEx<ITemplatePersistentConfiguration> myEditor;
  private final SettingsEditorListener myListener;
  private boolean myIsModified;
  private final JPanel myMainPanel;
  private final JLabel myErrorLabel;
  private final AbstractAction myOkAction = new AbstractAction("Ok") {
    @Override
    public void actionPerformed(ActionEvent p0) {
      apply();
    }
  };
  private final AbstractAction myApplyAction = new AbstractAction("Apply") {
    @Override
    public void actionPerformed(ActionEvent p0) {
      apply();
    }
  };
  private final AbstractAction myResetAction = new AbstractAction("Reset") {
    @Override
    public void actionPerformed(ActionEvent p0) {
      reset();
    }
  };
  private final AbstractAction myCancelAction = new AbstractAction("Cancel") {
    @Override
    public void actionPerformed(ActionEvent p0) {
      reset();
    }
  };
  public SettingsEditorPanel(ITemplatePersistentConfiguration configuration) {
    myConfiguration = configuration;
    myEditor = (SettingsEditorEx<ITemplatePersistentConfiguration>) myConfiguration.getEditorEx();
    myListener = new SettingsEditorListener() {
      @Override
      public void stateChanged(SettingsEditor editor) {
        setModified(true);
      }
    };
    myEditor.addSettingsEditorListener(myListener);
    myMainPanel = new JPanel(new BorderLayout());
    myErrorLabel = new JLabel();
    myErrorLabel.setForeground(Color.red);
    myMainPanel.add(myEditor.getComponent(), BorderLayout.NORTH);
    myMainPanel.add(myErrorLabel, BorderLayout.SOUTH);
    updateUi();
  }
  public JComponent getComponent() {
    return myMainPanel;
  }
  private void setModified(boolean modified) {
    myIsModified = modified;
    updateUi();
  }
  private void apply() {
    myEditor.apply(myConfiguration);
    setModified(false);
  }
  private void reset() {
    myEditor.resetFrom(myConfiguration);
    setModified(false);
  }
  private void updateUi() {
    try {
      check_gxk3ze_a0a0a51(myEditor.getSnapshot());
      myErrorLabel.setText("");
      myApplyAction.setEnabled(myIsModified);
      myResetAction.setEnabled(myIsModified);
    } catch (ConfigurationException e) {
      myErrorLabel.setText(e.getMessage());
    }
  }
  public Action getOkAction() {
    return myOkAction;
  }
  public Action getApplyAction() {
    return myApplyAction;
  }
  public Action getResetAction() {
    return myResetAction;
  }
  public Action getCancelAction() {
    return myCancelAction;
  }
  public void dispose() {
    myEditor.removeSettingsEditorListener(myListener);
    Disposer.dispose(myEditor);
  }
  private static void check_gxk3ze_a0a0a51(ITemplatePersistentConfiguration checkedDotOperand) throws RuntimeConfigurationException {
    if (null != checkedDotOperand) {
      checkedDotOperand.checkConfiguration();
    }

  }
}
