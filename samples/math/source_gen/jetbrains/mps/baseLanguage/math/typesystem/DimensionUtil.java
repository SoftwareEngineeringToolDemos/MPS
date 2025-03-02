package jetbrains.mps.baseLanguage.math.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.dependencies.InferenceMethod;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.ArrayList;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.lang.typesystem.runtime.HUtil;

public class DimensionUtil {
  @InferenceMethod
  public static void checkDim(final TypeCheckingContext typeCheckingContext, final List<SNode> components, final int n, final List<SNode> types, final boolean row, final SNode node) {
    if (n == ListSequence.fromList(components).count()) {
      final SNode T_typevar_757772128652074250 = typeCheckingContext.createNewRuntimeTypesVariable();
      int s = 0;
      int f = 0;
      boolean cbd = true;
      boolean cbc = true;
      for (SNode type : ListSequence.fromList(types)) {
        {
          SNode matchedNode_48zlf8_a0f0a0a = type;
          {
            boolean matches_48zlf8_a0a5a0a0 = false;
            {
              SNode matchingNode_48zlf8_a0a5a0a0 = type;
              if (matchingNode_48zlf8_a0a5a0a0 != null) {
                matches_48zlf8_a0a5a0a0 = matchingNode_48zlf8_a0a5a0a0.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, "jetbrains.mps.baseLanguage.math.structure.MatrixType"));
              }
            }
            if (matches_48zlf8_a0a5a0a0) {
              if (row) {
                if (SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows")) == 0) {
                  cbd = false;
                }
                if (SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns")) == 0) {
                  cbc = false;
                }
                if (cbd && f != 0 && f != SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"))) {
                  reportError(typeCheckingContext, node);
                }
                if (f == 0) {
                  f = SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"));
                }
                if (s == 0) {
                  s = SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"));
                } else {
                  s += SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"));
                }
              } else {
                if (SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns")) == 0) {
                  cbd = false;
                }
                if (SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows")) == 0) {
                  cbc = false;
                }
                if (cbd && f != 0 && f != SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"))) {
                  reportError(typeCheckingContext, node);
                }
                if (f == 0) {
                  f = SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"));
                }
                if (s == 0) {
                  s = SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"));
                } else {
                  s += SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"));
                }
              }
              {
                SNode _nodeToCheck_1029348928467 = null;
                EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "757772128652074322", 0, null);
                typeCheckingContext.createLessThanInequality((SNode) SLinkOperations.getTarget(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62684653L, "elementType")), (SNode) typeCheckingContext.getRepresentative(T_typevar_757772128652074250), false, true, _info_12389875345);
              }
            } else {
              boolean matches_48zlf8_b0a5a0a0 = false;
              {
                SNode matchingNode_48zlf8_b0a5a0a0 = type;
                if (matchingNode_48zlf8_b0a5a0a0 != null) {
                  matches_48zlf8_b0a5a0a0 = matchingNode_48zlf8_b0a5a0a0.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, "jetbrains.mps.baseLanguage.math.structure.VectorType"));
                }
              }
              if (matches_48zlf8_b0a5a0a0) {
                if (row) {
                  if (SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height")) == 0) {
                    cbd = false;
                  }
                  if (cbd && f != 0 && f != SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height"))) {
                    reportError(typeCheckingContext, node);
                  }
                  if (f == 0) {
                    f = SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height"));
                  }
                  if (s == 0) {
                    s = 1;
                  } else {
                    s += 1;
                  }
                } else {
                  if (SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height")) == 0) {
                    cbc = false;
                  }
                  if (cbd && f != 0 && f != 1) {
                    reportError(typeCheckingContext, node);
                  }
                  if (f == 0) {
                    f = 1;
                  }
                  if (s == 0) {
                    s = SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height"));
                  } else {
                    s += SPropertyOperations.getInteger(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height"));
                  }
                }
                {
                  SNode _nodeToCheck_1029348928467 = null;
                  EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "757772128652075446", 0, null);
                  typeCheckingContext.createLessThanInequality((SNode) SLinkOperations.getTarget(matchedNode_48zlf8_a0f0a0a, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466fL, "elementType")), (SNode) typeCheckingContext.getRepresentative(T_typevar_757772128652074250), false, true, _info_12389875345);
                }
              } else {
                {
                  SNode _nodeToCheck_1029348928467 = null;
                  EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "757772128652104638", 0, null);
                  typeCheckingContext.createLessThanInequality((SNode) type, (SNode) typeCheckingContext.getRepresentative(T_typevar_757772128652074250), false, true, _info_12389875345);
                }
                if (row) {
                  if (cbd && f != 0 && f != 1) {
                    reportError(typeCheckingContext, node);
                  }
                  if (f == 0) {
                    f = 1;
                  }
                  if (s == 0) {
                    s = 1;
                  } else {
                    s += 1;
                  }
                } else {
                  if (cbd && f != 0 && f != 1) {
                    reportError(typeCheckingContext, node);
                  }
                  if (f == 0) {
                    f = 1;
                  }
                  if (s == 0) {
                    s = 1;
                  } else {
                    s += 1;
                  }
                }
              }
            }
          }
        }
      }
      SNode result = MathTypeUtil.qMatrix(typeCheckingContext.getRepresentative(T_typevar_757772128652074250));
      if (row) {
        if (cbc) {
          SPropertyOperations.set(result, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"), "" + (s));
        }
        if (cbd) {
          SPropertyOperations.set(result, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"), "" + (f));
        }
      } else {
        if (cbc) {
          SPropertyOperations.set(result, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"), "" + (s));
        }
        if (cbd) {
          SPropertyOperations.set(result, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"), "" + (f));
        }
      }
      if (SPropertyOperations.getInteger(result, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns")) == 1) {
        {
          SNode _nodeToCheck_1029348928467 = node;
          EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "6389121991274973498", 0, null);
          typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "6389121991274973494", true), (SNode) _quotation_createNode_48zlf8_a0a0i0a0a(typeCheckingContext.getRepresentative(T_typevar_757772128652074250), "" + SPropertyOperations.getInteger(result, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"))), _info_12389875345);
        }
      } else {
        {
          SNode _nodeToCheck_1029348928467 = node;
          EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "6389121991274973487", 0, null);
          typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "6389121991274973491", true), (SNode) result, _info_12389875345);
        }
      }
    } else {
      {
        final SNode t1 = typeCheckingContext.typeOf(ListSequence.fromList(components).getElement(n), "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "757772128652013457", true);
        typeCheckingContext.whenConcrete(t1, new Runnable() {
          public void run() {
            List<SNode> types2 = new ArrayList<SNode>();
            ListSequence.fromList(types2).addSequence(ListSequence.fromList(types));
            ListSequence.fromList(types2).addElement(typeCheckingContext.getExpandedNode(t1));
            checkDim(typeCheckingContext, components, n + 1, types2, row, node);
          }
        }, "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "757772128651891776", false, false);
      }
    }
  }
  @InferenceMethod
  public static void reportError(final TypeCheckingContext typeCheckingContext, SNode n) {
    {
      MessageTarget errorTarget = new NodeMessageTarget();
      IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(n, "Invalid matrix dimensions", "r:47d0f24b-df34-4ea0-aa7e-7c2eb0f88f31(jetbrains.mps.baseLanguage.math.typesystem)", "7676695779583019339", null, errorTarget);
    }
  }
  public static int dimr(SNode t) {
    {
      SNode matchedNode_48zlf8_a0c = t;
      {
        boolean matches_48zlf8_a0a2 = false;
        {
          SNode matchingNode_48zlf8_a0a2 = t;
          if (matchingNode_48zlf8_a0a2 != null) {
            matches_48zlf8_a0a2 = matchingNode_48zlf8_a0a2.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, "jetbrains.mps.baseLanguage.math.structure.MatrixType"));
          }
        }
        if (matches_48zlf8_a0a2) {
          return SPropertyOperations.getInteger(matchedNode_48zlf8_a0c, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dacL, "rows"));
        } else {
          boolean matches_48zlf8_b0a2 = false;
          {
            SNode matchingNode_48zlf8_b0a2 = t;
            if (matchingNode_48zlf8_b0a2 != null) {
              matches_48zlf8_b0a2 = matchingNode_48zlf8_b0a2.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, "jetbrains.mps.baseLanguage.math.structure.VectorType"));
            }
          }
          if (matches_48zlf8_b0a2) {
            return SPropertyOperations.getInteger(matchedNode_48zlf8_a0c, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height"));
          } else
          return 0;
        }
      }
    }
  }
  public static int dimc(SNode t) {
    {
      SNode matchedNode_48zlf8_a0d = t;
      {
        boolean matches_48zlf8_a0a3 = false;
        {
          SNode matchingNode_48zlf8_a0a3 = t;
          if (matchingNode_48zlf8_a0a3 != null) {
            matches_48zlf8_a0a3 = matchingNode_48zlf8_a0a3.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, "jetbrains.mps.baseLanguage.math.structure.MatrixType"));
          }
        }
        if (matches_48zlf8_a0a3) {
          return SPropertyOperations.getInteger(matchedNode_48zlf8_a0d, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f776L, 0x42d5783a62683dadL, "columns"));
        } else {
          boolean matches_48zlf8_b0a3 = false;
          {
            SNode matchingNode_48zlf8_b0a3 = t;
            if (matchingNode_48zlf8_b0a3 != null) {
              matches_48zlf8_b0a3 = matchingNode_48zlf8_b0a3.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, "jetbrains.mps.baseLanguage.math.structure.VectorType"));
            }
          }
          if (matches_48zlf8_b0a3) {
            return 1;
          } else
          return 0;
        }
      }
    }
  }
  private static SNode _quotation_createNode_48zlf8_a0a0i0a0a(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, "jetbrains.mps.baseLanguage.math.structure.VectorType"), null, null, false);
    SNodeAccessUtil.setProperty(quotedNode_3, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466eL, "height"), (String) parameter_2);
    quotedNode_4 = (SNode) parameter_1;
    if (quotedNode_4 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x42d5783a6267f775L, 0x42d5783a6268466fL, "elementType"), HUtil.copyIfNecessary(quotedNode_4));
    }
    return quotedNode_3;
  }
}
