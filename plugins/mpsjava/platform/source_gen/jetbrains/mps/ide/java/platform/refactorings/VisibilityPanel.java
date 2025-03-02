package jetbrains.mps.ide.java.platform.refactorings;

/*Generated by MPS */

import javax.swing.JPanel;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.VisibilityLevel;
import java.util.List;
import javax.swing.event.ChangeListener;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import java.awt.GridBagLayout;
import javax.swing.border.CompoundBorder;
import javax.swing.border.TitledBorder;
import javax.swing.border.EmptyBorder;
import javax.swing.ButtonGroup;
import javax.swing.JRadioButton;
import java.awt.GridBagConstraints;
import javax.swing.event.ChangeEvent;
import javax.swing.AbstractAction;
import java.awt.event.ActionEvent;

public class VisibilityPanel extends JPanel {
  private VisibilityLevel myResult = VisibilityLevel.PRIVATE;
  private List<ChangeListener> myChangeListeners = ListSequence.fromList(new ArrayList<ChangeListener>());
  public VisibilityPanel() {
    this.setLayout(new GridBagLayout());
    this.setBorder(new CompoundBorder(new TitledBorder("Visibility"), new EmptyBorder(5, 5, 5, 5)));
    ButtonGroup group = new ButtonGroup();
    JRadioButton button = this.createVisibilityButton(0, VisibilityLevel.PRIVATE, group, this);
    this.createVisibilityButton(1, VisibilityLevel.PACKAGE_LOCAL, group, this);
    this.createVisibilityButton(2, VisibilityLevel.PROTECTED, group, this);
    this.createVisibilityButton(3, VisibilityLevel.PUBLIC, group, this);
    GridBagConstraints c = new GridBagConstraints();
    c.gridx = 0;
    c.gridy = 4;
    c.weightx = 1;
    c.weighty = 1;
    this.add(new JPanel(), c);
    button.setSelected(true);
  }
  public VisibilityLevel getResult() {
    return this.myResult;
  }
  private void fireUpdate() {
    for (ChangeListener listener : ListSequence.fromList(this.myChangeListeners)) {
      listener.stateChanged(new ChangeEvent(this));
    }
  }
  public void setResult(VisibilityLevel levelToSet) {
    this.myResult = levelToSet;
    fireUpdate();
  }
  public void addChangeListener(ChangeListener changeListener) {
    ListSequence.fromList(this.myChangeListeners).addElement(changeListener);
  }
  private JRadioButton createVisibilityButton(int y, final VisibilityLevel levelToSet, ButtonGroup group, JPanel visbilityPanel) {
    GridBagConstraints c = new GridBagConstraints();
    c.fill = GridBagConstraints.NONE;
    c.gridx = 0;
    c.gridy = y;
    c.weightx = 1;
    c.weighty = 0;
    c.anchor = GridBagConstraints.FIRST_LINE_START;
    JRadioButton button = new JRadioButton(new AbstractAction(levelToSet.getButtonText()) {
      @Override
      public void actionPerformed(ActionEvent e) {
        VisibilityPanel.this.setResult(levelToSet);
      }
    });
    group.add(button);
    visbilityPanel.add(button, c);
    return button;
  }
}
