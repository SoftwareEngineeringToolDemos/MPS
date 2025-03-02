package jetbrains.mps.ide.java.sourceStubs;

/*Generated by MPS */

import jetbrains.mps.smodel.RegularModelDescriptor;
import org.jetbrains.mps.openapi.persistence.MultiStreamDataSourceListener;
import jetbrains.mps.logging.Logger;
import org.apache.log4j.LogManager;
import java.util.Map;
import java.util.Set;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.MultiStreamDataSource;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.ModelLoadResult;
import jetbrains.mps.smodel.SModel;
import org.jetbrains.mps.openapi.language.SLanguage;
import jetbrains.mps.internal.collections.runtime.CollectionSequence;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.DataSource;
import jetbrains.mps.extapi.model.SModelData;
import jetbrains.mps.ide.java.newparser.JavaParser;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import java.io.InputStream;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.io.IOException;
import jetbrains.mps.ide.java.newparser.FeatureKind;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.ide.java.newparser.JavaParseException;
import java.util.List;
import java.util.LinkedList;
import java.util.Collection;
import java.util.Collections;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.mps.openapi.module.SModuleReference;

public class JavaSourceStubModelDescriptor extends RegularModelDescriptor implements MultiStreamDataSourceListener {

  private static Logger LOG = Logger.wrap(LogManager.getLogger(JavaSourceStubModelDescriptor.class));

  private Map<String, Set<SNode>> myRootsPerFile = MapSequence.fromMap(new HashMap<String, Set<SNode>>());
  private Map<SNodeId, SNode> myRootsById = MapSequence.fromMap(new HashMap<SNodeId, SNode>());


  public JavaSourceStubModelDescriptor(SModelReference modelRef, MultiStreamDataSource dataSource) {
    super(modelRef, dataSource);
  }

  @Override
  @NotNull
  protected ModelLoadResult<SModel> createModel() {
    SModel model = new SModel(getReference());
    processStreams(getSource().getAvailableStreams(), model);
    for (SLanguage l : CollectionSequence.fromCollection(importedLanguageIds())) {
      model.addLanguage(l);
    }
    return new ModelLoadResult<SModel>(model, ModelLoadingState.FULLY_LOADED);
  }

  @Override
  public void attach(SRepository repository) {
    getSource().addListener(this);
    super.attach(repository);
  }

  @Override
  public void detach() {
    super.detach();
    getSource().removeListener(this);
  }

  @Override
  @NotNull
  public MultiStreamDataSource getSource() {
    return (MultiStreamDataSource) super.getSource();
  }

  @Override
  public void changed(DataSource source, Iterable<String> changedItems) {
    // FIXME it works, but is not incremental and is ugly 

    assertCanChange();

    SModel oldModel = getCurrentModelInternal();
    // already attached but not createModel'd yet 
    if (oldModel == null) {
      return;
    }
    MapSequence.fromMap(myRootsPerFile).clear();
    MapSequence.fromMap(myRootsById).clear();
    unload();
    SModel newModel = getSModelInternal();
    replaceModelAndFireEvent(oldModel, newModel);
  }

  @Override
  public void changed(DataSource source) {
    // ignore 
  }

  public void processStreams(Iterable<String> names, SModelData into) {
    JavaParser parser = new JavaParser();

    for (String fileName : names) {
      try {
        Set<SNode> oldNodes = SetSequence.fromSetWithValues(new HashSet<SNode>(), MapSequence.fromMap(myRootsPerFile).get(fileName));

        InputStream is = getSource().openInputStream(fileName);
        // we've come from event and file has been deleted 
        if (is == null) {
          SetSequence.fromSet(oldNodes).visitAll(new IVisitor<SNode>() {
            public void visit(SNode it) {
              SNodeOperations.deleteNode(it);
            }
          });
          MapSequence.fromMap(myRootsPerFile).removeKey(fileName);
          continue;
        }
        String code = readInputStream(is);
        try {
          is.close();
        } catch (IOException e) {
          LOG.warning("failed to close file " + fileName, e);
        }

        JavaParser.JavaParseResult parseResult = parser.parse(code, FeatureKind.CLASS_STUB, null, true);
        if (ListSequence.fromList(parseResult.getNodes()).isNotEmpty()) {
          for (SNode newNode : ListSequence.fromList(parseResult.getNodes())) {
            final SNodeId newNodeId = newNode.getNodeId();
            // oldNodes is usually very very small (number of root classes in java file) 
            SNode oldNode = SetSequence.fromSet(oldNodes).where(new IWhereFilter<SNode>() {
              public boolean accept(SNode it) {
                return it.getNodeId().equals(newNodeId);
              }
            }).first();
            if (oldNode == null) {
              into.addRootNode(newNode);
              SetSequence.fromSet(oldNodes).removeElement(oldNode);
            } else {
              SNodeOperations.replaceWithAnother(oldNode, newNode);
            }
            MapSequence.fromMap(myRootsById).put(newNode.getNodeId(), newNode);
          }
        }

        SetSequence.fromSet(oldNodes).visitAll(new IVisitor<SNode>() {
          public void visit(SNode it) {
            SNodeOperations.deleteNode(it);
          }
        });
        MapSequence.fromMap(myRootsPerFile).put(fileName, SetSequence.fromSetWithValues(new HashSet<SNode>(), parseResult.getNodes()));

      } catch (IOException e) {
        LOG.error("Failed to read java file. " + e.getMessage(), e);
      } catch (JavaParseException e) {
        LOG.error("Failed to parse java file. " + e.getMessage());
      }
    }
  }

  private static final int BUFSIZE = 65536;
  private String readInputStream(InputStream is) throws IOException {

    List<byte[]> blocks = ListSequence.fromList(new LinkedList<byte[]>());

    byte[] buffer = new byte[BUFSIZE];
    int lastRead = -1;
    int read = is.read(buffer);

    while (read > 0) {
      lastRead = read;
      ListSequence.fromList(blocks).addElement(buffer);

      buffer = new byte[BUFSIZE];
      read = is.read(buffer);
    }

    if (lastRead > 0) {
      int blks = ListSequence.fromList(blocks).count();
      byte[] wholeBuffer;

      if (blks == 1) {
        wholeBuffer = ListSequence.fromList(blocks).getElement(0);
      } else {
        int size = (blks - 1) * BUFSIZE + lastRead;
        wholeBuffer = new byte[size];
        int c = 0;
        int p = 0;
        for (byte[] buf : blocks) {
          int n = (c == blks - 1 ? lastRead : BUFSIZE);
          System.arraycopy(buf, 0, wholeBuffer, p, n);
          p = p + BUFSIZE;
          c++;
        }
      }

      // Attention: default platform charset used. 
      return new String(wholeBuffer);

    } else {
      return "";
    }
  }

  @Override
  public Collection<SLanguage> importedLanguageIds() {
    return Collections.singleton(MetaAdapterFactory.getLanguage(MetaIdFactory.langId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L), "jetbrains.mps.baseLanguage"));
  }

  @Override
  public List<SModuleReference> importedDevkits() {
    return Collections.emptyList();
  }
}
