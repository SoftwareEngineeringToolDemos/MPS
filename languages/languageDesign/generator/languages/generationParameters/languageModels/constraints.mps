<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:6ac9dcee-e5c4-42f1-9aa2-41caa61ece8e(jetbrains.mps.lang.generator.generationParameters.constraints)">
  <persistence version="9" />
  <languages>
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="q5cj" ref="r:41fb14d2-a085-41df-8256-2db786d90029(jetbrains.mps.lang.generator.generationParameters.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1163200647017" name="jetbrains.mps.lang.constraints.structure.ConstraintFunctionParameter_referenceNode" flags="nn" index="3kakTB" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213100494875" name="referent" index="1Mr941" />
      </concept>
      <concept id="1148684180339" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory" flags="in" index="1MUpDS" />
      <concept id="1148687176410" name="jetbrains.mps.lang.constraints.structure.NodeReferentConstraint" flags="ng" index="1N5Pfh">
        <reference id="1148687202698" name="applicableLink" index="1N5Vy1" />
        <child id="1148687345559" name="searchScopeFactory" index="1N6uqs" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1224414427926" name="jetbrains.mps.baseLanguage.collections.structure.SequenceCreator" flags="nn" index="kMnCb">
        <child id="1224414456414" name="elementType" index="kMuH3" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="2E6akI4$sbH">
    <property role="3GE5qa" value="parameter" />
    <ref role="1M2myG" to="q5cj:2E6akI4$s1W" resolve="DefaultGenerationParameterId" />
    <node concept="1N5Pfh" id="2E6akI4$sbI" role="1Mr941">
      <ref role="1N5Vy1" to="q5cj:2E6akI4$s33" />
      <node concept="1MUpDS" id="2E6akI4$sbJ" role="1N6uqs">
        <node concept="3clFbS" id="2E6akI4$sbK" role="2VODD2">
          <node concept="3clFbJ" id="2E6akI4$sbO" role="3cqZAp">
            <node concept="3clFbS" id="2E6akI4$sbQ" role="3clFbx">
              <node concept="3cpWs6" id="2E6akI4$sbX" role="3cqZAp">
                <node concept="2OqwBi" id="2E6akI4$sc8" role="3cqZAk">
                  <node concept="2OqwBi" id="2E6akI4$sc0" role="2Oq$k0">
                    <node concept="3TrEf2" id="2E6akI4$sc7" role="2OqNvi">
                      <ref role="3Tt5mk" to="q5cj:2E6akI4$s32" />
                    </node>
                    <node concept="3kakTB" id="2E6akI4$sc5" role="2Oq$k0" />
                  </node>
                  <node concept="3Tsc0h" id="2E6akI4$scc" role="2OqNvi">
                    <ref role="3TtcxE" to="q5cj:7mYJ4gC7JET" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2E6akI4$sbS" role="3clFbw">
              <node concept="3kakTB" id="2E6akI4$sc6" role="2Oq$k0" />
              <node concept="3x8VRR" id="2E6akI4$sbW" role="2OqNvi" />
            </node>
          </node>
          <node concept="3cpWs6" id="2E6akI4$sce" role="3cqZAp">
            <node concept="2ShNRf" id="2E6akI4$scg" role="3cqZAk">
              <node concept="kMnCb" id="2E6akI4$sci" role="2ShVmc">
                <node concept="3Tqbb2" id="2E6akI4$scj" role="kMuH3">
                  <ref role="ehGHo" to="q5cj:7mYJ4gC7JEO" resolve="DefaultGeneratorParameter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

