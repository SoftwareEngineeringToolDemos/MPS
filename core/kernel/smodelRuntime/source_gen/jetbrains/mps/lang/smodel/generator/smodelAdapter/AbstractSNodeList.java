package jetbrains.mps.lang.smodel.generator.smodelAdapter;

/*Generated by MPS */

import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.Collection;
import java.util.Iterator;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.util.IterableUtil;

/*package*/ abstract class AbstractSNodeList<LinkType> extends ArrayList<SNode> {
  protected final SNode myReferenceContainer;
  protected final LinkType myRole;
  private AbstractSNodeList(SNode referenceContainer, LinkType role, int initialSize) {
    super(initialSize);
    assert referenceContainer != null;
    myReferenceContainer = referenceContainer;
    assert role != null;
    myRole = role;
  }
  protected AbstractSNodeList(SNode referenceContainer, LinkType role, List<? extends SNode> referents) {
    this(referenceContainer, role, referents.size());
    super.addAll(referents);
  }
  protected AbstractSNodeList(SNode referenceContainer, LinkType role, SNode referent) {
    this(referenceContainer, role, 1);
    super.add(referent);
  }
  protected void removeReference(SNode node) {
    if (node != null) {
      doRemoveReference(node);
    }
  }
  protected void addReference(SNode node) {
    if (node != null) {
      doAddReference(node);
    }
  }
  private void addReference(int index, SNode node) {
    if (node != null) {
      SNode anchorNode = (index > 0 ? get(index - 1) : null);
      insertAfter(node, anchorNode);
    }
  }
  protected abstract void doRemoveReference(SNode node);
  protected abstract void doAddReference(SNode node);
  protected abstract void insertAfter(SNode node, SNode anchorNode);
  @Override
  protected void removeRange(int fromIndex, int toIndex) {
    List<SNode> sublist = subList(fromIndex, toIndex);
    SNode[] nodesToRemove = sublist.toArray(new SNode[sublist.size()]);
    super.removeRange(fromIndex, toIndex);
    for (SNode nextNode : nodesToRemove) {
      removeReference(nextNode);
    }
  }
  @Override
  public boolean addAll(Collection<? extends SNode> c) {
    for (SNode nextNode : c) {
      addReference(nextNode);
    }
    return super.addAll(c);
  }
  @Override
  public boolean addAll(int index, Collection<? extends SNode> c) {
    SNode anchorNode = (index > 0 ? get(index - 1) : null);
    for (SNode nextNode : c) {
      if (nextNode == null) {
        continue;
      }
      insertAfter(nextNode, anchorNode);
      anchorNode = nextNode;
    }
    return super.addAll(index, c);
  }
  @Override
  public void clear() {
    for (SNode nextNode : this) {
      removeReference(nextNode);
    }
    super.clear();
  }
  @Override
  public boolean remove(Object o) {
    if (o instanceof SNode) {
      removeReference((SNode) o);
    }
    return super.remove(o);
  }
  @Override
  public SNode remove(int index) {
    SNode result = super.remove(index);
    removeReference(result);
    return result;
  }
  @Override
  public boolean removeAll(Collection<?> collection) {
    // we have to keep this methods to make sure that our remove method is used which actually modifies the node 
    boolean modified = false;
    Iterator<SNode> e = iterator();
    while (e.hasNext()) {
      if (collection.contains(e.next())) {
        e.remove();
        modified = true;
      }
    }
    return modified;
  }
  @Override
  public boolean retainAll(Collection<?> collection) {
    // we have to keep this methods to make sure that our remove method is used which actually modifies the node 
    boolean modified = false;
    Iterator<SNode> it = iterator();
    while (it.hasNext()) {
      if (!(collection.contains(it.next()))) {
        it.remove();
        modified = true;
      }
    }
    return modified;
  }
  @Override
  public void add(int index, SNode element) {
    super.add(index, element);
    addReference(index, element);
  }
  @Override
  public boolean add(SNode sNode) {
    addReference(sNode);
    return super.add(sNode);
  }
  @Override
  public SNode set(int index, SNode element) {
    SNode result = super.set(index, element);
    removeReference(result);
    addReference(index, element);
    return result;
  }
  public static class ChildrenSNodesList extends AbstractSNodeList<SContainmentLink> {
    public ChildrenSNodesList(SNode parent, SContainmentLink role) {
      super(parent, role, IterableUtil.asList(parent.getChildren(role)));
    }
    @Override
    protected void doRemoveReference(SNode node) {
      myReferenceContainer.removeChild(node);
    }
    @Override
    protected void doAddReference(SNode node) {
      if (node.getParent() != null) {
        node.getParent().removeChild(node);
      }
      myReferenceContainer.addChild(myRole, node);
    }
    @Override
    protected void insertAfter(SNode node, SNode anchorNode) {
      if (node.getParent() != null) {
        node.getParent().removeChild(node);
      }
      myReferenceContainer.insertChildBefore(myRole, node, (anchorNode == null ? myReferenceContainer.getFirstChild() : anchorNode.getNextSibling()));
    }
  }

}
