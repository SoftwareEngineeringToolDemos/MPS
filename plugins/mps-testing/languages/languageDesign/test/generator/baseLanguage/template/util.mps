<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3d2b27a7-4374-41aa-af31-19e1e430d9f5(jetbrains.mps.lang.test.generator.baseLanguage.template.util)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="-1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="tp5o" ref="r:00000000-0000-4000-0000-011c89590380(jetbrains.mps.lang.test.behavior)" />
    <import index="tpe5" ref="r:00000000-0000-4000-0000-011c895902d1(jetbrains.mps.baseLanguage.unitTest.behavior)" />
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="tpe3" ref="r:00000000-0000-4000-0000-011c895902d7(jetbrains.mps.baseLanguage.unitTest.structure)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1172424058054" name="jetbrains.mps.lang.smodel.structure.ConceptRefExpression" flags="nn" index="3TUQnm">
        <reference id="1172424100906" name="conceptDeclaration" index="3TV0OU" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="L0xQjiTXbn">
    <property role="TrG5h" value="TestsUtil" />
    <node concept="3Tm1VV" id="L0xQjiTXbo" role="1B3o_S" />
    <node concept="3clFbW" id="L0xQjiTXbp" role="jymVt">
      <node concept="3cqZAl" id="L0xQjiTXbq" role="3clF45" />
      <node concept="3Tm1VV" id="L0xQjiTXbr" role="1B3o_S" />
      <node concept="3clFbS" id="L0xQjiTXbs" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="L0xQjiTXbx" role="jymVt">
      <property role="TrG5h" value="getProjectPath" />
      <node concept="17QB3L" id="L0xQjiTXb_" role="3clF45" />
      <node concept="3Tm1VV" id="L0xQjiTXbz" role="1B3o_S" />
      <node concept="3clFbS" id="L0xQjiTXb$" role="3clF47">
        <node concept="3cpWs8" id="L0xQjiTXbD" role="3cqZAp">
          <node concept="3cpWsn" id="L0xQjiTXbE" role="3cpWs9">
            <property role="TrG5h" value="projectPath" />
            <node concept="17QB3L" id="L0xQjiTXbF" role="1tU5fm" />
            <node concept="2OqwBi" id="L_Hr3kEs0z" role="33vP2m">
              <node concept="2qgKlT" id="L_Hr3kEs0$" role="2OqNvi">
                <ref role="37wK5l" to="tp5o:4qWC2JVrBcn" resolve="getProjectPath" />
                <node concept="37vLTw" id="L_Hr3kEs0_" role="37wK5m">
                  <ref role="3cqZAo" node="L0xQjiTXck" resolve="model" />
                </node>
              </node>
              <node concept="3TUQnm" id="L_Hr3kEs0A" role="2Oq$k0">
                <ref role="3TV0OU" to="tp5g:4qWC2JVrBca" resolve="TestInfo" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="L0xQjiTXbK" role="3cqZAp">
          <node concept="3clFbS" id="L0xQjiTXbL" role="3clFbx">
            <node concept="3cpWs6" id="L0xQjiTXbM" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagT$TT" role="3cqZAk">
                <ref role="3cqZAo" node="L0xQjiTXbE" resolve="projectPath" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="L0xQjiTXbO" role="3clFbw">
            <node concept="10Nm6u" id="L0xQjiTXbP" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTvuJ" role="3uHU7B">
              <ref role="3cqZAo" node="L0xQjiTXbE" resolve="projectPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="L0xQjiTXbX" role="3cqZAp">
          <node concept="3cpWsn" id="L0xQjiTXbY" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <node concept="17QB3L" id="L0xQjiTXbZ" role="1tU5fm" />
            <node concept="2EnYce" id="1HTSAFIvreA" role="33vP2m">
              <node concept="2EnYce" id="1HTSAFIvreu" role="2Oq$k0">
                <node concept="2OqwBi" id="L0xQjiTXc1" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgmxna" role="2Oq$k0">
                    <ref role="3cqZAo" node="L0xQjiTXcm" resolve="operationContext" />
                  </node>
                  <node concept="liA8E" id="L0xQjiTXc3" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                  </node>
                </node>
                <node concept="liA8E" id="NZresA9fk0" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getProjectFile():java.io.File" resolve="getProjectFile" />
                </node>
              </node>
              <node concept="liA8E" id="H3LclcScvU" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="L0xQjiTXc5" role="3cqZAp">
          <node concept="3clFbS" id="L0xQjiTXc6" role="3clFbx">
            <node concept="3cpWs6" id="L0xQjiTXc7" role="3cqZAp">
              <node concept="2OqwBi" id="L0xQjiTXc8" role="3cqZAk">
                <node concept="2YIFZM" id="5vviDNw73t3" role="2Oq$k0">
                  <ref role="37wK5l" to="18ew:~MacrosFactory.getGlobal():jetbrains.mps.util.MacroHelper" resolve="getGlobal" />
                  <ref role="1Pybhc" to="18ew:~MacrosFactory" resolve="MacrosFactory" />
                </node>
                <node concept="liA8E" id="L0xQjiTXca" role="2OqNvi">
                  <ref role="37wK5l" to="18ew:~MacroHelper.shrinkPath(java.lang.String):java.lang.String" resolve="shrinkPath" />
                  <node concept="37vLTw" id="3GM_nagTyr1" role="37wK5m">
                    <ref role="3cqZAo" node="L0xQjiTXbY" resolve="url" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="L0xQjiTXcf" role="3clFbw">
            <node concept="10Nm6u" id="L0xQjiTXcg" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTvHN" role="3uHU7B">
              <ref role="3cqZAo" node="L0xQjiTXbY" resolve="url" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="L0xQjiTXci" role="3cqZAp">
          <node concept="Xl_RD" id="L0xQjiTXcj" role="3cqZAk">
            <property role="Xl_RC" value="" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="L0xQjiTXck" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="L0xQjiTXcl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="L0xQjiTXcm" role="3clF46">
        <property role="TrG5h" value="operationContext" />
        <node concept="3uibUv" id="L0xQjiTXcp" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~IOperationContext" resolve="IOperationContext" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="L0xQjiUFHd" role="jymVt">
      <property role="TrG5h" value="getTestBodyClassName" />
      <node concept="17QB3L" id="L0xQjiUFHh" role="3clF45" />
      <node concept="3Tm1VV" id="L0xQjiUFHf" role="1B3o_S" />
      <node concept="3clFbS" id="L0xQjiUFHg" role="3clF47">
        <node concept="3cpWs6" id="L0xQjiUFHk" role="3cqZAp">
          <node concept="3cpWs3" id="L0xQjiUFHt" role="3cqZAk">
            <node concept="3cpWs3" id="L0xQjiUFHq" role="3uHU7B">
              <node concept="2OqwBi" id="4DN08aZ_E28" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxgm6XM" role="2Oq$k0">
                  <ref role="3cqZAo" node="L0xQjiUFHi" resolve="testCase" />
                </node>
                <node concept="2qgKlT" id="4DN08aZ_E2c" role="2OqNvi">
                  <ref role="37wK5l" to="tpe5:hGBnqtL" resolve="getClassName" />
                </node>
              </node>
              <node concept="Xl_RD" id="L0xQjiUFHu" role="3uHU7w">
                <property role="Xl_RC" value="$" />
              </node>
            </node>
            <node concept="2OqwBi" id="L_Hr3kEs0d" role="3uHU7w">
              <node concept="2qgKlT" id="L_Hr3kEs0e" role="2OqNvi">
                <ref role="37wK5l" to="tp5o:hOw0ICJ" resolve="getTestBodyName" />
              </node>
              <node concept="3TUQnm" id="L_Hr3kEs0f" role="2Oq$k0">
                <ref role="3TV0OU" to="tp5g:hHlH9T6" resolve="NodesTestCase" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="L0xQjiUFHi" role="3clF46">
        <property role="TrG5h" value="testCase" />
        <node concept="3Tqbb2" id="L0xQjiUFHj" role="1tU5fm">
          <ref role="ehGHo" to="tpe3:hGB2rPm" resolve="ITestCase" />
        </node>
      </node>
    </node>
  </node>
</model>

