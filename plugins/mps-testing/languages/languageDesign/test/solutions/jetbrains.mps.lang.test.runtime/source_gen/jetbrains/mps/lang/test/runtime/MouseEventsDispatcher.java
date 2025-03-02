package jetbrains.mps.lang.test.runtime;

/*Generated by MPS */

import java.awt.event.MouseEvent;
import java.awt.Component;
import java.lang.reflect.InvocationTargetException;
import jetbrains.mps.nodeEditor.cells.EditorCell;
import java.util.Queue;
import jetbrains.mps.internal.collections.runtime.QueueSequence;
import java.util.LinkedList;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;

public class MouseEventsDispatcher {
  private final BaseEditorTestBody myEditorTest;

  public MouseEventsDispatcher(BaseEditorTestBody editorTest) {
    myEditorTest = editorTest;
  }

  private static MouseEvent createMouseEvent(Component targetComponent, int id, int x, int y) {
    return new MouseEvent(targetComponent, id, System.currentTimeMillis(), 0, x, y, x, y, 1, false, MouseEvent.BUTTON1);
  }

  public void processSecondaryMouseEvent(final Component targetComponent, int x, int y, int eventType) throws InvocationTargetException, InterruptedException {
    final MouseEvent e = MouseEventsDispatcher.createMouseEvent(targetComponent, eventType, x, y);
    myEditorTest.runUndoableInEDTAndWait(new Runnable() {
      public void run() {
        targetComponent.dispatchEvent(e);
      }
    });
  }

  public Component processMouseEvent(int x, int y, int eventType) throws InvocationTargetException, InterruptedException {
    EditorCell rootCell = myEditorTest.getEditorComponent().getRootCell();
    assert rootCell != null;
    Queue<jetbrains.mps.openapi.editor.cells.EditorCell> cellCandidates = QueueSequence.fromQueue(new LinkedList<jetbrains.mps.openapi.editor.cells.EditorCell>());
    QueueSequence.fromQueue(cellCandidates).addLastElement(rootCell);
    int absoluteX = x + rootCell.getX();
    int absoluteY = y + rootCell.getY();
    jetbrains.mps.openapi.editor.cells.EditorCell eventTargetCell = null;
    while (QueueSequence.fromQueue(cellCandidates).isNotEmpty()) {
      jetbrains.mps.openapi.editor.cells.EditorCell nextCell = QueueSequence.fromQueue(cellCandidates).removeFirstElement();
      if (nextCell.getX() <= absoluteX && nextCell.getY() <= absoluteY && nextCell.getX() + nextCell.getWidth() > absoluteX && nextCell.getY() + nextCell.getHeight() > absoluteY) {
        eventTargetCell = nextCell;
        if (nextCell instanceof EditorCell_Collection) {
          QueueSequence.fromQueue(cellCandidates).addSequence(Sequence.fromIterable((EditorCell_Collection) nextCell));
        }
      }
    }
    assert eventTargetCell != null;

    final Wrappers._T<Component> targetComponent = new Wrappers._T<Component>(EditorUtil.getEventTargetComponent(eventTargetCell, myEditorTest.getEditorComponent()));
    targetComponent.value = targetComponent.value.getComponentAt(x, y);
    assert targetComponent.value != null;

    final MouseEvent e = MouseEventsDispatcher.createMouseEvent(targetComponent.value, eventType, x, y);
    myEditorTest.runUndoableInEDTAndWait(new Runnable() {
      public void run() {
        targetComponent.value.dispatchEvent(e);
      }
    });
    return targetComponent.value;
  }

}
