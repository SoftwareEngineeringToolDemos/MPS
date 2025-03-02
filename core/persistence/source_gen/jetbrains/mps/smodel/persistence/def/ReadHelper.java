package jetbrains.mps.smodel.persistence.def;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SModelReference;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import jetbrains.mps.smodel.SModel;
import org.apache.log4j.Level;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SNodeId;
import jetbrains.mps.smodel.SNodePointer;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.smodel.runtime.ConceptKind;
import jetbrains.mps.smodel.runtime.StaticScope;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;
import jetbrains.mps.smodel.SModelStereotype;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.persistence.LightModelEnvironmentInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.legacy.ConceptMetaInfoConverter;
import org.jetbrains.mps.openapi.model.SReference;
import jetbrains.mps.persistence.PersistenceRegistry;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ReadHelper {
  private SModelReference myModelRef;
  private Map<String, SModelReference> myModelByIx;
  private int myMaxImportIndex = 0;
  public ReadHelper(SModelReference modelRef) {
    myModelByIx = MapSequence.fromMap(new HashMap<String, SModelReference>());
    myModelRef = modelRef;
  }
  public void addModelRef(String index, SModelReference modelRef) {
    MapSequence.fromMap(myModelByIx).put(index, modelRef);
  }
  public void addImportToModel(SModel model, String index, String modelUID, int version, boolean implicit) {
    if (modelUID == null) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("Error loading import element for index " + index + " in " + myModelRef);
      }
      return;
    }
    SModelReference modelRef = PersistenceFacade.getInstance().createModelReference(modelUID);
    SModel.ImportElement elem = new SModel.ImportElement(modelRef, ++myMaxImportIndex, version);
    if (implicit) {
      model.getImplicitImportsSupport().addAdditionalModelVersion(elem);
    } else {
      model.addModelImport(elem);
    }
    addModelRef(index, modelRef);
  }
  public SModelReference getSModelReference(@NotNull String ix) {
    return ((ix == null || ix.length() == 0) ? myModelRef : MapSequence.fromMap(myModelByIx).get(ix));
  }
  @NotNull
  public Pair<Boolean, SNodeReference> readLink_internal(String src) {
    // returns <true, xxx> - if src is Dynamic Reference 
    // [modelID.]nodeID | [modelID.]^ 
    Pair<Boolean, SNodeReference> result = new Pair<Boolean, SNodeReference>(false, null);
    if (src == null) {
      return result;
    }
    int dotIndex = src.indexOf(WriteHelper.MODEL_SEPARATOR_CHAR);
    String text = WriteHelper.decode(src.substring(dotIndex + 1, src.length()));
    result.o1 = WriteHelper.DYNAMIC_REFERENCE_ID.equals(text);
    SModelReference modelRef = getSModelReference((dotIndex < 0 ? "" : src.substring(0, dotIndex)));
    SNodeId nodeId = (result.o1 ? null : jetbrains.mps.smodel.SNodeId.fromString(text));
    result.o2 = new SNodePointer(modelRef, nodeId);
    return result;
  }
  public SNodeReference readLinkId(String src) {
    // [modelID.]nodeID[:version] | [modelID.]^[:version] 
    return readLink_internal(src).o2;
  }
  public boolean isInterfaceNode(String nodeInfo) {
    return nodeInfo.startsWith("i");
  }
  public boolean isImplementationNode(String nodeInfo) {
    return nodeInfo != null && (nodeInfo.startsWith("l") || nodeInfo.startsWith("s"));
  }
  public boolean isImplementationWithStubNode(String nodeInfo) {
    return nodeInfo != null && nodeInfo.startsWith("s");
  }
  public String getStubConceptQualifiedName(String type) {
    String originalConcept = readType(type);
    int lastDot = originalConcept.lastIndexOf('.');
    if (lastDot == -1) {
      return null;
    }
    return originalConcept.substring(0, lastDot + 1) + "Stub" + originalConcept.substring(lastDot + 1);
  }
  public Tuples._3<ConceptKind, StaticScope, Boolean> readNodeInfo(String s) {
    ConceptKind kind;
    StaticScope scope;
    if (s.length() != 3 && s.length() != 2) {
      return null;
    }
    switch (s.charAt(0)) {
      case 'n':
        kind = ConceptKind.NORMAL;
        break;
      case 'i':
        kind = ConceptKind.INTERFACE;
        break;
      case 'l':
        kind = ConceptKind.IMPLEMENTATION;
        break;
      case 's':
        kind = ConceptKind.IMPLEMENTATION_WITH_STUB;
        break;
      default:
        return null;
    }
    switch (s.charAt(1)) {
      case 'g':
        scope = StaticScope.GLOBAL;
        break;
      case 'r':
        scope = StaticScope.ROOT;
        break;
      case 'n':
        scope = StaticScope.NONE;
        break;
      default:
        return null;
    }
    boolean unordered = false;
    if (s.length() == 3) {
      if (s.charAt(2) == 'u') {
        unordered = true;
      } else {
        return null;
      }
    }
    return MultiTuple.<ConceptKind,StaticScope,Boolean>from(kind, scope, unordered);
  }
  public String readType(String s) {
    int ix = s.indexOf(WriteHelper.MODEL_SEPARATOR_CHAR);
    if (ix <= 0) {
      // no model ID - fqName is here 
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("Broken reference to type=" + s + " in model " + myModelRef);
      }
      return s.substring(ix + 1);
    }
    SModelReference modelRef = getSModelReference(s.substring(0, ix));
    if (modelRef == null) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error("couldn't create node '" + s.substring(ix + 1) + "' : import for index [" + s.substring(0, ix) + "] not found");
      }
      return s.substring(ix + 1);
    } else {
      return SModelStereotype.withoutStereotype(modelRef.getModelName()) + "." + s.substring(ix + 1);
    }
  }
  public String readRole(String s) {
    return s;
  }
  public String readName(String s) {
    return s;
  }
  public static void conceptRead(SNode node) {
    LightModelEnvironmentInfo info = getInfo();
    if (info == null) {
      return;
    }
    info.conceptRead(node, check_9mlqpu_b0a2a71(SNodeOperations.getConcept(node).getDeclarationNode()), StaticScope.GLOBAL, ConceptKind.NORMAL);
  }
  public static void roleRead(SNode node, String role) {
    LightModelEnvironmentInfo info = getInfo();
    if (info == null) {
      return;
    }
    if (SNodeOperations.getParent(node) == null) {
      return;
    }
    info.nodeRoleRead(node, check_9mlqpu_b0a3a81(((ConceptMetaInfoConverter) SNodeOperations.getConcept(SNodeOperations.getParent(node))).convertAggregation(role).getDeclarationNode()), false);
  }
  public static void propertyRead(SNode node, String propName) {
    LightModelEnvironmentInfo info = getInfo();
    if (info == null) {
      return;
    }
    info.propertyNameRead(node, propName, check_9mlqpu_c0a2a91(((ConceptMetaInfoConverter) SNodeOperations.getConcept(node)).convertProperty(propName).getDeclarationNode()));
  }
  public static void referenceRead(SReference ref) {
    LightModelEnvironmentInfo info = getInfo();
    if (info == null) {
      return;
    }
    info.referenceRoleRead(ref, check_9mlqpu_b0a2a02(((ConceptMetaInfoConverter) ref.getSourceNode().getConcept()).convertAssociation(ref.getRole()).getDeclarationNode()));
  }
  private static LightModelEnvironmentInfo getInfo() {
    return as_9mlqpu_a0a0v(PersistenceRegistry.getInstance().getModelEnvironmentInfo(), LightModelEnvironmentInfo.class);
  }
  protected static Logger LOG = LogManager.getLogger(ReadHelper.class);
  private static SNodeReference check_9mlqpu_b0a2a71(SNode checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getReference();
    }
    return null;
  }
  private static SNodeReference check_9mlqpu_b0a3a81(SNode checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getReference();
    }
    return null;
  }
  private static SNodeReference check_9mlqpu_c0a2a91(SNode checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getReference();
    }
    return null;
  }
  private static SNodeReference check_9mlqpu_b0a2a02(SNode checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getReference();
    }
    return null;
  }
  private static <T> T as_9mlqpu_a0a0v(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }
}
