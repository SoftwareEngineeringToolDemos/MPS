package jetbrains.mps.idea.java.psiStubs;

/*Generated by MPS */

import org.jetbrains.mps.openapi.persistence.DataSourceListener;
import org.jetbrains.mps.openapi.persistence.DataSource;

public interface PsiJavaStubListener extends DataSourceListener {
  public void changed(DataSource source, PsiJavaStubEvent event);
}
