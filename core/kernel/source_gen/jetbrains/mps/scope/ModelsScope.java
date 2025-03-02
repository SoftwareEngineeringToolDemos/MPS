package jetbrains.mps.scope;

/*Generated by MPS */

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.Set;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.language.ConceptRegistryUtil;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactoryByName;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.smodel.SModelOperations;
import org.jetbrains.annotations.Nullable;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class ModelsScope extends Scope {
  private final boolean myRootsOnly;
  private final SAbstractConcept myTargetConcept;
  private final Set<SModel> myModels;
  /**
   * 
   * @deprecated use concept/../ variant, remove after 3.3
   */
  @Deprecated
  public ModelsScope(Iterable<SModel> models, boolean rootsOnly, String targetConcept) {
    myModels = SetSequence.fromSetWithValues(new HashSet<SModel>(), models);
    myRootsOnly = rootsOnly;
    ConceptDescriptor cd = ConceptRegistryUtil.getConceptDescriptor(targetConcept);
    if (cd == null) {
      myTargetConcept = MetaAdapterFactoryByName.getConcept(targetConcept);
    } else {
      myTargetConcept = (cd.isInterfaceConcept() ? MetaAdapterFactoryByName.getInterfaceConcept(targetConcept) : MetaAdapterFactoryByName.getConcept(targetConcept));
    }
  }
  public ModelsScope(Iterable<SModel> models, boolean rootsOnly, SAbstractConcept targetConcept) {
    myModels = SetSequence.fromSetWithValues(new HashSet<SModel>(), models);
    myRootsOnly = rootsOnly;
    myTargetConcept = targetConcept;
  }
  @Override
  public boolean contains(SNode node) {
    if (myTargetConcept == null) {
      return false;
    }
    return SNodeUtil.isInstanceOf(node, myTargetConcept) && (!(myRootsOnly) || SNodeOperations.isRoot(node)) && SetSequence.fromSet(myModels).contains(node.getModel());
  }
  @Override
  public SNode resolve(SNode contextNode, String refText) {
    SNode result = null;
    for (SModel model : myModels) {
      if (model == null) {
        continue;
      }
      Iterable<SNode> nodes;
      SAbstractConcept conceptToCheck;

      if (myRootsOnly) {
        nodes = model.getRootNodes();
        conceptToCheck = myTargetConcept;
      } else if (myTargetConcept != null) {
        nodes = SModelOperations.getNodes(model, myTargetConcept);
        conceptToCheck = null;
      } else {
        nodes = SNodeUtil.getDescendants(model);
        conceptToCheck = null;
      }

      for (SNode node : nodes) {
        if (conceptToCheck != null && !(node.isInstanceOfConcept(conceptToCheck))) {
          continue;
        }
        String nodeRefText = getReferenceText(null, node);
        if (nodeRefText == null || !(nodeRefText.equals(refText))) {
          continue;
        }

        if (result == null) {
          result = node;
        } else {
          // ambiguity 
          return null;
        }
      }
    }
    return result;
  }
  @Override
  public Iterable<SNode> getAvailableElements(@Nullable String prefix) {
    List<SNode> result = new ArrayList<SNode>();
    for (SModel model : myModels) {
      if (model == null) {
        continue;
      }
      Iterable<SNode> nodes;
      SAbstractConcept conceptToCheck;

      if (myRootsOnly) {
        nodes = model.getRootNodes();
        conceptToCheck = myTargetConcept;
      } else if (myTargetConcept != null) {
        nodes = SModelOperations.getNodes(model, myTargetConcept);
        conceptToCheck = null;
      } else {
        nodes = SNodeUtil.getDescendants(model);
        conceptToCheck = null;
      }

      for (SNode node : nodes) {
        if (conceptToCheck != null && !(node.isInstanceOfConcept(conceptToCheck))) {
          continue;
        }
        if ((prefix != null && prefix.length() > 0)) {
          String refText = getReferenceText(null, node);
          if (refText == null || !(refText.startsWith(prefix))) {
            continue;
          }
        }
        ListSequence.fromList(result).addElement(node);
      }
    }
    return result;
  }
  @Override
  public String getReferenceText(SNode contextNode, SNode node) {
    String resolveInfo = SNodeOperations.getResolveInfo(node);
    if ((resolveInfo != null && resolveInfo.length() > 0)) {
      return resolveInfo;
    }
    return node.getPresentation();
  }
  public Iterable<SModel> getModels() {
    return myModels;
  }
}
