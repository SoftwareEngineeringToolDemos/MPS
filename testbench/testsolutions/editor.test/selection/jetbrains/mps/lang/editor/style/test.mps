<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e796bc79-24a8-4433-8903-c71c59526bf7(jetbrains.mps.lang.editor.style.test)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <use id="a936c42c-cb2c-4d64-a1dc-12986579a998" name="jetbrains.mps.lang.editor.styleTests" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="eaoh" ref="r:716dc35d-6443-4b45-a1e5-08b46978f63d(jetbrains.mps.lang.editor.styleTests.editor)" />
    <import index="dekf" ref="r:710d1207-58b1-4fe3-ba47-f417dc16c10c(jetbrains.mps.lang.editor.styleTests.structure)" implicit="true" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="1229187653856" name="jetbrains.mps.lang.test.structure.EditorTestCase" flags="lg" index="LiM7Y">
        <child id="1229187676388" name="nodeToEdit" index="LiRBU" />
        <child id="1229187755283" name="code" index="LjaKd" />
      </concept>
      <concept id="1229194968594" name="jetbrains.mps.lang.test.structure.AnonymousCellAnnotation" flags="ng" index="LIFWc">
        <property id="1229194968596" name="caretPosition" index="LIFWa" />
        <property id="1229194968595" name="cellId" index="LIFWd" />
      </concept>
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="5773579205429866751" name="jetbrains.mps.lang.test.structure.EditorComponentExpression" flags="nn" index="369mXd" />
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="6029276237631252951" name="jetbrains.mps.lang.editor.structure.StyleAttributeReferenceExpression" flags="ng" index="1Z6Ecs">
        <reference id="6029276237631253682" name="attributeDeclaration" index="1Z6EpT" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="a936c42c-cb2c-4d64-a1dc-12986579a998" name="jetbrains.mps.lang.editor.styleTests">
      <concept id="8422442021223268684" name="jetbrains.mps.lang.editor.styleTests.structure.NodeContainer" flags="ng" index="24H8sC">
        <child id="8422442021223269806" name="node" index="24H8fa" />
      </concept>
      <concept id="8917170296719632906" name="jetbrains.mps.lang.editor.styleTests.structure.HugePriorityStyle" flags="ng" index="2UoOOD" />
      <concept id="8917170296719632911" name="jetbrains.mps.lang.editor.styleTests.structure.UnapplyPriorityStyleCopy" flags="ng" index="2UoOOG" />
      <concept id="8917170296719632542" name="jetbrains.mps.lang.editor.styleTests.structure.PriorityStyleCopy" flags="ng" index="2UoOYX" />
      <concept id="8917170296719625334" name="jetbrains.mps.lang.editor.styleTests.structure.PriorityStyle" flags="ng" index="2UoQHl" />
      <concept id="8917170296719630045" name="jetbrains.mps.lang.editor.styleTests.structure.TestInheritedAttribute" flags="ng" index="2UoRBY">
        <property id="8917170296719630046" name="value" index="2UoRBX" />
      </concept>
      <concept id="8917170296719628637" name="jetbrains.mps.lang.editor.styleTests.structure.TestSimpleAttribute" flags="ng" index="2UoRTY">
        <property id="8917170296719630035" name="value" index="2UoRBK" />
      </concept>
      <concept id="4078300376848435002" name="jetbrains.mps.lang.editor.styleTests.structure.LeafNode" flags="ng" index="3TZoYJ" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="8427750732757990717" name="jetbrains.mps.baseLanguage.unitTest.structure.BinaryAssert" flags="nn" index="3tpDYu">
        <child id="8427750732757990725" name="actual" index="3tpDZA" />
        <child id="8427750732757990724" name="expected" index="3tpDZB" />
      </concept>
      <concept id="1171978097730" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertEquals" flags="nn" index="3vlDli" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
    </language>
  </registry>
  <node concept="LiM7Y" id="5ISglsesLcf">
    <property role="TrG5h" value="StyleAttributeInheritanceTest" />
    <node concept="3clFbS" id="5ISglset9xx" role="LjaKd">
      <node concept="1QHqEK" id="1iKgLyhBkG" role="3cqZAp">
        <node concept="1QHqEC" id="1iKgLyhBkI" role="1QHqEI">
          <node concept="3clFbS" id="1iKgLyhBkK" role="1bW5cS">
            <node concept="3cpWs8" id="3yp29n1qRTU" role="3cqZAp">
              <node concept="3cpWsn" id="3yp29n1qRTV" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="3yp29n1qYxu" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
                <node concept="1PxgMI" id="3yp29n1r0pO" role="33vP2m">
                  <ref role="1PxNhF" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                  <node concept="2OqwBi" id="3yp29n1qRTW" role="1PxMeX">
                    <node concept="369mXd" id="3yp29n1qRTX" role="2Oq$k0" />
                    <node concept="liA8E" id="3yp29n1qRTY" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3yp29n1r3Pt" role="3cqZAp">
              <node concept="3cpWsn" id="3yp29n1r3Pu" role="3cpWs9">
                <property role="TrG5h" value="leaf" />
                <node concept="1y4W85" id="3yp29n1r3Pw" role="33vP2m">
                  <node concept="3cmrfG" id="3yp29n1r3Px" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="3yp29n1r3Py" role="1y566C">
                    <node concept="37vLTw" id="3yp29n1r3Pz" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yp29n1qRTV" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="3yp29n1r3P$" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="3yp29n1r9NR" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3yp29n1r6mV" role="3cqZAp">
              <node concept="3cpWsn" id="3yp29n1r6mW" role="3cpWs9">
                <property role="TrG5h" value="inner" />
                <node concept="1y4W85" id="3yp29n1r6mY" role="33vP2m">
                  <node concept="3cmrfG" id="3yp29n1r6mZ" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="3yp29n1r6n0" role="1y566C">
                    <node concept="37vLTw" id="3yp29n1r6n1" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yp29n1qRTV" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="3yp29n1r6n2" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="3yp29n1r9O4" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3yp29n1qX_U" role="3cqZAp">
              <node concept="3cpWsn" id="3yp29n1qX_V" role="3cpWs9">
                <property role="TrG5h" value="innerLeaf" />
                <node concept="1y4W85" id="3yp29n1r9dZ" role="33vP2m">
                  <node concept="3cmrfG" id="3yp29n1r9fP" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="3yp29n1r0A1" role="1y566C">
                    <node concept="37vLTw" id="3yp29n1r9ip" role="2Oq$k0">
                      <ref role="3cqZAo" node="3yp29n1r6mW" resolve="inner" />
                    </node>
                    <node concept="3Tsc0h" id="3yp29n1ra2F" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="3yp29n1r9Pd" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="3yp29n1qV6W" role="3cqZAp">
              <node concept="Xl_RD" id="3yp29n1qWuB" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
              <node concept="2OqwBi" id="3yp29n1qUcY" role="3tpDZB">
                <node concept="2OqwBi" id="3yp29n1qS7R" role="2Oq$k0">
                  <node concept="2OqwBi" id="3yp29n1qKWN" role="2Oq$k0">
                    <node concept="369mXd" id="3yp29n1qKFD" role="2Oq$k0" />
                    <node concept="liA8E" id="3yp29n1qNkM" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="3yp29n1qS6e" role="37wK5m">
                        <ref role="3cqZAo" node="3yp29n1qRTV" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3yp29n1qSyq" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="3yp29n1qUyE" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="3yp29n1qUAQ" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="3yp29n1ra7C" role="3cqZAp">
              <node concept="Xl_RD" id="3yp29n1ra7D" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
              <node concept="2OqwBi" id="3yp29n1ra7E" role="3tpDZB">
                <node concept="2OqwBi" id="3yp29n1ra7F" role="2Oq$k0">
                  <node concept="2OqwBi" id="3yp29n1ra7G" role="2Oq$k0">
                    <node concept="369mXd" id="3yp29n1ra7H" role="2Oq$k0" />
                    <node concept="liA8E" id="3yp29n1ra7I" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="3yp29n1ra7J" role="37wK5m">
                        <ref role="3cqZAo" node="3yp29n1r3Pu" resolve="leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3yp29n1ra7K" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="3yp29n1ra7L" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="3yp29n1ra7M" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="3yp29n1qWAw" role="3cqZAp">
              <node concept="Xl_RD" id="3yp29n1qWAx" role="3tpDZA">
                <property role="Xl_RC" value="inner" />
              </node>
              <node concept="2OqwBi" id="3yp29n1qWAy" role="3tpDZB">
                <node concept="2OqwBi" id="3yp29n1qWAz" role="2Oq$k0">
                  <node concept="2OqwBi" id="3yp29n1qWA$" role="2Oq$k0">
                    <node concept="369mXd" id="3yp29n1qWA_" role="2Oq$k0" />
                    <node concept="liA8E" id="3yp29n1qWAA" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="3yp29n1raUb" role="37wK5m">
                        <ref role="3cqZAo" node="3yp29n1r6mW" resolve="inner" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3yp29n1qWAC" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="3yp29n1qWAD" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="3yp29n1qWAE" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="3yp29n1raEw" role="3cqZAp">
              <node concept="Xl_RD" id="3yp29n1raEx" role="3tpDZA">
                <property role="Xl_RC" value="inner" />
              </node>
              <node concept="2OqwBi" id="3yp29n1raEy" role="3tpDZB">
                <node concept="2OqwBi" id="3yp29n1raEz" role="2Oq$k0">
                  <node concept="2OqwBi" id="3yp29n1raE$" role="2Oq$k0">
                    <node concept="369mXd" id="3yp29n1raE_" role="2Oq$k0" />
                    <node concept="liA8E" id="3yp29n1raEA" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="3yp29n1raWu" role="37wK5m">
                        <ref role="3cqZAo" node="3yp29n1qX_V" resolve="innerLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3yp29n1raEC" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="3yp29n1raED" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="3yp29n1raEE" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2UoRBY" id="3yp29n1p86h" role="LiRBU">
      <property role="2UoRBX" value="top" />
      <node concept="3TZoYJ" id="3yp29n1pllv" role="24H8fa" />
      <node concept="2UoRBY" id="3yp29n1q4JT" role="24H8fa">
        <property role="2UoRBX" value="inner" />
        <node concept="3TZoYJ" id="3yp29n1q4JX" role="24H8fa" />
      </node>
      <node concept="LIFWc" id="1iKgLyhxud" role="lGtFl">
        <property role="LIFWa" value="0" />
        <property role="LIFWd" value="Collection_s2xmey_a" />
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="5ISglseuas7">
    <property role="2XOHcw" value="${mps_home}" />
  </node>
  <node concept="LiM7Y" id="1iKgLyhIPF">
    <property role="TrG5h" value="StyleAttributeNonInheritanceTest" />
    <node concept="3clFbS" id="1iKgLyhIPG" role="LjaKd">
      <node concept="1QHqEK" id="1iKgLyhIPH" role="3cqZAp">
        <node concept="1QHqEC" id="1iKgLyhIPI" role="1QHqEI">
          <node concept="3clFbS" id="1iKgLyhIPJ" role="1bW5cS">
            <node concept="3cpWs8" id="1iKgLyhIPK" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyhIPL" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="1iKgLyhIPM" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
                <node concept="1PxgMI" id="1iKgLyhIPN" role="33vP2m">
                  <ref role="1PxNhF" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                  <node concept="2OqwBi" id="1iKgLyhIPO" role="1PxMeX">
                    <node concept="369mXd" id="1iKgLyhIPP" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhIPQ" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyhIPR" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyhIPS" role="3cpWs9">
                <property role="TrG5h" value="leaf" />
                <node concept="1y4W85" id="1iKgLyhIPT" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyhIPU" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyhIPV" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyhIPW" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyhIPL" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyhIPX" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyhIPY" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyhKKO" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyhKKP" role="3cpWs9">
                <property role="TrG5h" value="inner1" />
                <node concept="1y4W85" id="1iKgLyhKKQ" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyhKKR" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyhKKS" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyhKKT" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyhIPL" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyhKKU" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyhKKV" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyhIQ7" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyhIQ8" role="3cpWs9">
                <property role="TrG5h" value="inner1Leaf" />
                <node concept="1y4W85" id="1iKgLyhIQ9" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyhIQa" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyhIQb" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyhP9g" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyhKKP" resolve="inner1" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyhIQd" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyhIQe" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyhIPZ" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyhIQ0" role="3cpWs9">
                <property role="TrG5h" value="inner2" />
                <node concept="1y4W85" id="1iKgLyhNHy" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyhNPy" role="1y58nS">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyhIQ3" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyhIQ4" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyhIPL" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyhIQ5" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyhIQ6" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyhPrP" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyhPrQ" role="3cpWs9">
                <property role="TrG5h" value="inner2Leaf" />
                <node concept="1y4W85" id="1iKgLyhPrR" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyhPrS" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyhPrT" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyhPMU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyhIQ0" resolve="inner2" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyhPrV" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyhPrW" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1iKgLyhKWP" role="3cqZAp" />
            <node concept="3vlDli" id="1iKgLyhIQf" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyhIQh" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyhIQi" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyhIQj" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyhIQk" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhIQl" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyhIQm" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyhIPL" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyhIQn" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyhIQo" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyhIQp" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="1iKgLyi3aF" role="3tpDZA">
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyhUXr" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyhUXs" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyhUXt" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyhUXu" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyhUXv" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhUXw" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyhUXx" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyhIPS" resolve="leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyhUXy" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyhUXz" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyhUX$" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1iKgLyhUX_" role="3tpDZA">
                <node concept="1Z6Ecs" id="1iKgLyhUXA" role="2Oq$k0">
                  <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                </node>
                <node concept="liA8E" id="1iKgLyhUXB" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~StyleAttribute.combine(java.lang.Object,java.lang.Object):java.lang.Object" resolve="combine" />
                  <node concept="10Nm6u" id="1iKgLyhUXC" role="37wK5m" />
                  <node concept="10Nm6u" id="1iKgLyhUXD" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyhXr4" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyhXr5" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyhXr6" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyhXr7" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyhXr8" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhXr9" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyhXra" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyhKKP" resolve="inner1" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyhXrb" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyhXrc" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyhXrd" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="1iKgLyi3Z2" role="3tpDZA">
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="3cqZAo" to="wyt6:~Boolean.TRUE" resolve="TRUE" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyhXrf" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyhXrg" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyhXrh" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyhXri" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyhXrj" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhXrk" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyhXrl" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyhIQ8" resolve="inner1Leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyhXrm" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyhXrn" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyhXro" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1iKgLyhXrp" role="3tpDZA">
                <node concept="1Z6Ecs" id="1iKgLyhXrq" role="2Oq$k0">
                  <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                </node>
                <node concept="liA8E" id="1iKgLyhXrr" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~StyleAttribute.combine(java.lang.Object,java.lang.Object):java.lang.Object" resolve="combine" />
                  <node concept="10Nm6u" id="1iKgLyhXrs" role="37wK5m" />
                  <node concept="10Nm6u" id="1iKgLyhXrt" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyhWjQ" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyhWjR" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyhWjS" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyhWjT" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyhWjU" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhWjV" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyhYzm" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyhIQ0" resolve="inner2" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyhWjX" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyhWjY" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyhWjZ" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="1iKgLyi4eN" role="3tpDZA">
                <ref role="1PxDUh" to="wyt6:~Boolean" resolve="Boolean" />
                <ref role="3cqZAo" to="wyt6:~Boolean.FALSE" resolve="FALSE" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyhIQq" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyhIQs" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyhIQt" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyhIQu" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyhIQv" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyhIQw" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyhYM3" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyhPrQ" resolve="inner2Leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyhIQy" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyhIQz" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyhIQ$" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1iKgLyhXc6" role="3tpDZA">
                <node concept="1Z6Ecs" id="1iKgLyhXc7" role="2Oq$k0">
                  <ref role="1Z6EpT" to="eaoh:5ISglset19V" resolve="test-simple-attribute" />
                </node>
                <node concept="liA8E" id="1iKgLyhXc8" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~StyleAttribute.combine(java.lang.Object,java.lang.Object):java.lang.Object" resolve="combine" />
                  <node concept="10Nm6u" id="1iKgLyhXc9" role="37wK5m" />
                  <node concept="10Nm6u" id="1iKgLyhXca" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2UoRTY" id="1iKgLyhKm8" role="LiRBU">
      <property role="2UoRBK" value="true" />
      <node concept="3TZoYJ" id="1iKgLyhKp$" role="24H8fa" />
      <node concept="2UoRTY" id="1iKgLyhKpD" role="24H8fa">
        <property role="2UoRBK" value="true" />
        <node concept="3TZoYJ" id="1iKgLyhKpH" role="24H8fa" />
      </node>
      <node concept="2UoRTY" id="1iKgLyhKpO" role="24H8fa">
        <node concept="3TZoYJ" id="1iKgLyhKpU" role="24H8fa" />
      </node>
      <node concept="LIFWc" id="1iKgLyhKCm" role="lGtFl">
        <property role="LIFWa" value="0" />
        <property role="LIFWd" value="Collection_s2xmey_a" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1iKgLyicTp">
    <property role="TrG5h" value="StyleAttributePriorityTest" />
    <node concept="3clFbS" id="1iKgLyicTq" role="LjaKd">
      <node concept="1QHqEK" id="1iKgLyicTr" role="3cqZAp">
        <node concept="1QHqEC" id="1iKgLyicTs" role="1QHqEI">
          <node concept="3clFbS" id="1iKgLyicTt" role="1bW5cS">
            <node concept="3cpWs8" id="1iKgLyicTu" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyicTv" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="1iKgLyicTw" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
                <node concept="1PxgMI" id="1iKgLyicTx" role="33vP2m">
                  <ref role="1PxNhF" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                  <node concept="2OqwBi" id="1iKgLyicTy" role="1PxMeX">
                    <node concept="369mXd" id="1iKgLyicTz" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyicT$" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyicT_" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyicTA" role="3cpWs9">
                <property role="TrG5h" value="leaf" />
                <node concept="1y4W85" id="1iKgLyicTB" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyicTC" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyicTD" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyicTE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyicTv" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyicTF" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyicTG" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyicTH" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyicTI" role="3cpWs9">
                <property role="TrG5h" value="priority" />
                <node concept="1y4W85" id="1iKgLyicTJ" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyicTK" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyicTL" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyicTM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyicTv" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyicTN" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyicTO" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyicTP" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyicTQ" role="3cpWs9">
                <property role="TrG5h" value="innerLeaf" />
                <node concept="1y4W85" id="1iKgLyicTR" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyicTS" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyicTT" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyicTU" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyicTI" resolve="priority" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyicTV" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyicTW" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyimH$" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyimH_" role="3cpWs9">
                <property role="TrG5h" value="ignore" />
                <node concept="1y4W85" id="1iKgLyimHA" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyimHB" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyimHC" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyimHD" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyicTI" resolve="priority" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyimHE" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyimHF" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyicU5" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyicU6" role="3cpWs9">
                <property role="TrG5h" value="ignoreLeaf" />
                <node concept="1y4W85" id="1iKgLyilgg" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiltw" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyicU9" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyinZ4" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyimH_" resolve="ignore" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyicUb" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyicUc" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1iKgLyin2c" role="3cqZAp" />
            <node concept="3vlDli" id="1iKgLyipEx" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyipEy" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyipEz" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyipE$" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyipE_" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyipEA" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyipEB" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyicTv" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyipEC" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyipED" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyipEE" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyipEF" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyicUe" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyicUf" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyicUg" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyicUh" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyicUi" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyicUj" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiqNL" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyicTA" resolve="leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyicUl" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyicUm" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyicUn" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyips4" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiq41" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiq42" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiq43" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiq44" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiq45" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiq46" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiqW7" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyicTI" resolve="priority" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiq48" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiq49" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiq4a" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiq4b" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiuce" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiucf" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiucg" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiuch" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiuci" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiucj" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiuck" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyicTQ" resolve="innerLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiucl" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiucm" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiucn" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiuco" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiqig" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiqih" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiqii" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiqij" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiqik" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiqil" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiuXy" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyimH_" resolve="ignore" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiqin" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiqio" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiqip" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiqiq" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiuFh" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiuFi" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiuFj" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiuFk" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiuFl" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiuFm" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiv71" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyicU6" resolve="ignoreLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiuFo" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiuFp" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiuFq" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiuFr" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2UoRBY" id="1iKgLyif65" role="LiRBU">
      <property role="2UoRBX" value="top" />
      <node concept="3TZoYJ" id="1iKgLyifcz" role="24H8fa" />
      <node concept="2UoQHl" id="1iKgLyifcu" role="24H8fa">
        <node concept="3TZoYJ" id="1iKgLyifcB" role="24H8fa" />
        <node concept="2UoRBY" id="1iKgLyifcG" role="24H8fa">
          <property role="2UoRBX" value="ignore" />
          <node concept="3TZoYJ" id="1iKgLyimGU" role="24H8fa" />
        </node>
      </node>
      <node concept="LIFWc" id="1iKgLyi$Wx" role="lGtFl">
        <property role="LIFWa" value="0" />
        <property role="LIFWd" value="Collection_s2xmey_a" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1iKgLyiEbq">
    <property role="TrG5h" value="StyleAttributeUnapplyTest" />
    <node concept="3clFbS" id="1iKgLyiEbr" role="LjaKd">
      <node concept="1QHqEK" id="1iKgLyiEbs" role="3cqZAp">
        <node concept="1QHqEC" id="1iKgLyiEbt" role="1QHqEI">
          <node concept="3clFbS" id="1iKgLyiEbu" role="1bW5cS">
            <node concept="3cpWs8" id="1iKgLyiEbv" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiEbw" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="1iKgLyiEbx" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
                <node concept="1PxgMI" id="1iKgLyiEby" role="33vP2m">
                  <ref role="1PxNhF" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                  <node concept="2OqwBi" id="1iKgLyiEbz" role="1PxMeX">
                    <node concept="369mXd" id="1iKgLyiEb$" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEb_" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiEbA" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiEbB" role="3cpWs9">
                <property role="TrG5h" value="leaf" />
                <node concept="1y4W85" id="1iKgLyiEbC" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiEbD" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiEbE" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiEbF" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiEbw" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiEbG" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiEbH" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiEbI" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiEbJ" role="3cpWs9">
                <property role="TrG5h" value="priority" />
                <node concept="1y4W85" id="1iKgLyiEbK" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiEbL" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiEbM" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiEbN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiEbw" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiEbO" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiEbP" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiEbQ" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiEbR" role="3cpWs9">
                <property role="TrG5h" value="innerLeaf" />
                <node concept="1y4W85" id="1iKgLyiEbS" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiEbT" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiEbU" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiEbV" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiEbJ" resolve="priority" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiEbW" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiEbX" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiEbY" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiEbZ" role="3cpWs9">
                <property role="TrG5h" value="unapply" />
                <node concept="1y4W85" id="1iKgLyiEc0" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiEc1" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiEc2" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiEc3" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiEbJ" resolve="priority" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiEc4" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiEc5" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiEc6" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiEc7" role="3cpWs9">
                <property role="TrG5h" value="unapplyLeaf" />
                <node concept="1y4W85" id="1iKgLyiEc8" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiEc9" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiEca" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiEcb" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiEbZ" resolve="unapply" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiEcc" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiEcd" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1iKgLyiEce" role="3cqZAp" />
            <node concept="3vlDli" id="1iKgLyiEcf" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiEcg" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiEch" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiEci" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiEcj" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEck" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiEcl" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiEbw" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiEcm" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiEcn" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiEco" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiEcp" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiEcq" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiEcr" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiEcs" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiEct" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiEcu" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEcv" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiEcw" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiEbB" resolve="leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiEcx" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiEcy" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiEcz" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiEc$" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiEc_" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiEcA" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiEcB" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiEcC" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiEcD" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEcE" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiEcF" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiEbJ" resolve="priority" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiEcG" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiEcH" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiEcI" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiEcJ" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiEcK" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiEcL" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiEcM" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiEcN" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiEcO" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEcP" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiEcQ" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiEbR" resolve="innerLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiEcR" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiEcS" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiEcT" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiEcU" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiEcV" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiEcW" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiEcX" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiEcY" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiEcZ" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEd0" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiEd1" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiEbZ" resolve="unapply" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiEd2" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiEd3" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiEd4" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiEd5" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiEd6" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiEd7" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiEd8" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiEd9" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiEda" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiEdb" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiEdc" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiEc7" resolve="unapplyLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiEdd" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiEde" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiEdf" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiEdg" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2UoRBY" id="1iKgLyiEdh" role="LiRBU">
      <property role="2UoRBX" value="top" />
      <node concept="3TZoYJ" id="1iKgLyiEdi" role="24H8fa" />
      <node concept="2UoQHl" id="1iKgLyiEdj" role="24H8fa">
        <node concept="3TZoYJ" id="1iKgLyiEdk" role="24H8fa" />
        <node concept="2UoOOG" id="1iKgLyiGnw" role="24H8fa">
          <node concept="3TZoYJ" id="1iKgLyiGn$" role="24H8fa" />
        </node>
      </node>
      <node concept="LIFWc" id="1iKgLyiEdn" role="lGtFl">
        <property role="LIFWa" value="0" />
        <property role="LIFWd" value="Collection_s2xmey_a" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1iKgLyiPnT">
    <property role="TrG5h" value="StyleAttributeSetHiddenThenUnhideTest" />
    <node concept="3clFbS" id="1iKgLyiPnU" role="LjaKd">
      <node concept="1QHqEK" id="1iKgLyiPnV" role="3cqZAp">
        <node concept="1QHqEC" id="1iKgLyiPnW" role="1QHqEI">
          <node concept="3clFbS" id="1iKgLyiPnX" role="1bW5cS">
            <node concept="3cpWs8" id="1iKgLyiPnY" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiPnZ" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="1iKgLyiPo0" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
                <node concept="1PxgMI" id="1iKgLyiPo1" role="33vP2m">
                  <ref role="1PxNhF" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                  <node concept="2OqwBi" id="1iKgLyiPo2" role="1PxMeX">
                    <node concept="369mXd" id="1iKgLyiPo3" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPo4" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiPo5" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiPo6" role="3cpWs9">
                <property role="TrG5h" value="leaf" />
                <node concept="1y4W85" id="1iKgLyiPo7" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiPo8" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiPo9" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiPoa" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiPnZ" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiPob" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiPoc" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiPod" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiPoe" role="3cpWs9">
                <property role="TrG5h" value="hidden" />
                <node concept="1y4W85" id="1iKgLyiPof" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiPog" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiPoh" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiPoi" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiPnZ" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiPoj" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiPok" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiPol" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiPom" role="3cpWs9">
                <property role="TrG5h" value="hiddenLeaf" />
                <node concept="1y4W85" id="1iKgLyiPon" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiPoo" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiPop" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiPoq" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiPoe" resolve="hidden" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiPor" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiPos" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiPot" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiPou" role="3cpWs9">
                <property role="TrG5h" value="unapply" />
                <node concept="1y4W85" id="1iKgLyiPov" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiPow" role="1y58nS">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiPox" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiPoy" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiPoe" resolve="hidden" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiPoz" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiPo$" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyiPo_" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyiPoA" role="3cpWs9">
                <property role="TrG5h" value="unapplyLeaf" />
                <node concept="1y4W85" id="1iKgLyiPoB" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyiPoC" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyiPoD" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyiPoE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyiPou" resolve="unapply" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyiPoF" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyiPoG" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1iKgLyiPoH" role="3cqZAp" />
            <node concept="3vlDli" id="1iKgLyiPoI" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiPoJ" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiPoK" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiPoL" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiPoM" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPoN" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiPoO" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiPnZ" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiPoP" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiPoQ" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiPoR" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiPoS" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiPoT" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiPoU" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiPoV" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiPoW" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiPoX" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPoY" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiPoZ" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiPo6" resolve="leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiPp0" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiPp1" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiPp2" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiPp3" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiPp4" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiPp5" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiPp6" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiPp7" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiPp8" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPp9" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiPpa" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiPoe" resolve="hidden" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiPpb" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiPpc" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiPpd" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiPpe" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiPpf" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiPpg" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiPph" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiPpi" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiPpj" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPpk" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiPpl" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiPom" resolve="hiddenLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiPpm" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiPpn" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiPpo" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiPpp" role="3tpDZA">
                <property role="Xl_RC" value="Priority" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiPpq" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiPpr" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiPps" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiPpt" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiPpu" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPpv" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiPpw" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiPou" resolve="unapply" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiPpx" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiPpy" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiPpz" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiPp$" role="3tpDZA">
                <property role="Xl_RC" value="hidden" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyiPp_" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyiPpA" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyiPpB" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyiPpC" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyiPpD" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyiPpE" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyiPpF" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyiPoA" resolve="unapplyLeaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyiPpG" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyiPpH" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyiPpI" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyiPpJ" role="3tpDZA">
                <property role="Xl_RC" value="hidden" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2UoQHl" id="1iKgLyiPpM" role="LiRBU">
      <node concept="3TZoYJ" id="1iKgLyiPpN" role="24H8fa" />
      <node concept="2UoRBY" id="1iKgLyiSeL" role="24H8fa">
        <property role="2UoRBX" value="hidden" />
        <node concept="3TZoYJ" id="1iKgLyiTV9" role="24H8fa" />
        <node concept="2UoOOG" id="1iKgLyiPpO" role="24H8fa">
          <node concept="3TZoYJ" id="1iKgLyiPpP" role="24H8fa" />
        </node>
      </node>
      <node concept="LIFWc" id="1iKgLyiUqm" role="lGtFl">
        <property role="LIFWa" value="0" />
        <property role="LIFWd" value="Collection_s2xmey_a" />
      </node>
    </node>
  </node>
  <node concept="LiM7Y" id="1iKgLyjoN2">
    <property role="TrG5h" value="StyleAttributeThreeLayerTest" />
    <node concept="3clFbS" id="1iKgLyjoN3" role="LjaKd">
      <node concept="1QHqEK" id="1iKgLyjoN4" role="3cqZAp">
        <node concept="1QHqEC" id="1iKgLyjoN5" role="1QHqEI">
          <node concept="3clFbS" id="1iKgLyjoN6" role="1bW5cS">
            <node concept="3cpWs8" id="1iKgLyjoN7" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyjoN8" role="3cpWs9">
                <property role="TrG5h" value="root" />
                <node concept="3Tqbb2" id="1iKgLyjoN9" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
                <node concept="1PxgMI" id="1iKgLyjoNa" role="33vP2m">
                  <ref role="1PxNhF" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                  <node concept="2OqwBi" id="1iKgLyjoNb" role="1PxMeX">
                    <node concept="369mXd" id="1iKgLyjoNc" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyjoNd" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyjoNm" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyjoNn" role="3cpWs9">
                <property role="TrG5h" value="huge" />
                <node concept="1y4W85" id="1iKgLyjoNo" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyjoNp" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyjoNq" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyjoNr" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyjoN8" resolve="root" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyjoNs" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyjoNt" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyjoNu" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyjoNv" role="3cpWs9">
                <property role="TrG5h" value="priority" />
                <node concept="1y4W85" id="1iKgLyjoNw" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyjoNx" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyjoNy" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyjoNz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyjoNn" resolve="huge" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyjoN$" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyjoN_" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyjtLO" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyjtLP" role="3cpWs9">
                <property role="TrG5h" value="unapplyPriority" />
                <node concept="1y4W85" id="1iKgLyjtLQ" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyjtLR" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyjtLS" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyjtLT" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyjoNv" resolve="priority" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyjtLU" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyjtLV" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1iKgLyjoNI" role="3cqZAp">
              <node concept="3cpWsn" id="1iKgLyjoNJ" role="3cpWs9">
                <property role="TrG5h" value="leaf" />
                <node concept="1y4W85" id="1iKgLyjoNK" role="33vP2m">
                  <node concept="3cmrfG" id="1iKgLyjoNL" role="1y58nS">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="2OqwBi" id="1iKgLyjoNM" role="1y566C">
                    <node concept="37vLTw" id="1iKgLyjuCW" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iKgLyjtLP" resolve="unapplyPriority" />
                    </node>
                    <node concept="3Tsc0h" id="1iKgLyjoNO" role="2OqNvi">
                      <ref role="3TtcxE" to="dekf:7jyxAjKlwmI" />
                    </node>
                  </node>
                </node>
                <node concept="3Tqbb2" id="1iKgLyjoNP" role="1tU5fm">
                  <ref role="ehGHo" to="dekf:7jyxAjKlw5c" resolve="NodeContainer" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1iKgLyju12" role="3cqZAp" />
            <node concept="3clFbH" id="1iKgLyjoNQ" role="3cqZAp" />
            <node concept="3vlDli" id="1iKgLyjv6_" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyjv6A" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyjv6B" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyjv6C" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyjv6D" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyjv6E" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyjv6F" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyjoN8" resolve="root" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyjv6G" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyjv6H" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyjv6I" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyjv6J" role="3tpDZA">
                <property role="Xl_RC" value="top" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyjoNR" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyjoNS" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyjoNT" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyjoNU" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyjoNV" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyjoNW" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyjw$b" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyjoNn" resolve="huge" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyjoNY" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyjoNZ" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyjoO0" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyjoO1" role="3tpDZA">
                <property role="Xl_RC" value="Huge" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyjvzP" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyjvzQ" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyjvzR" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyjvzS" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyjvzT" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyjvzU" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyjwTF" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyjoNv" resolve="priority" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyjvzW" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyjvzX" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyjvzY" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyjvzZ" role="3tpDZA">
                <property role="Xl_RC" value="Huge" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyjvLO" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyjvLP" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyjvLQ" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyjvLR" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyjvLS" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyjvLT" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyjx0Q" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyjtLP" resolve="unapplyPriority" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyjvLV" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyjvLW" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyjvLX" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyjvLY" role="3tpDZA">
                <property role="Xl_RC" value="Huge" />
              </node>
            </node>
            <node concept="3vlDli" id="1iKgLyjxk7" role="3cqZAp">
              <node concept="2OqwBi" id="1iKgLyjxk8" role="3tpDZB">
                <node concept="2OqwBi" id="1iKgLyjxk9" role="2Oq$k0">
                  <node concept="2OqwBi" id="1iKgLyjxka" role="2Oq$k0">
                    <node concept="369mXd" id="1iKgLyjxkb" role="2Oq$k0" />
                    <node concept="liA8E" id="1iKgLyjxkc" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCell(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.nodeEditor.cells.EditorCell" resolve="findNodeCell" />
                      <node concept="37vLTw" id="1iKgLyjxMc" role="37wK5m">
                        <ref role="3cqZAo" node="1iKgLyjoNJ" resolve="leaf" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1iKgLyjxkd" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getStyle():jetbrains.mps.openapi.editor.style.Style" resolve="getStyle" />
                  </node>
                </node>
                <node concept="liA8E" id="1iKgLyjxke" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute):java.lang.Object" resolve="get" />
                  <node concept="1Z6Ecs" id="1iKgLyjxkf" role="37wK5m">
                    <ref role="1Z6EpT" to="eaoh:5ISglset19s" resolve="test-inherited-attribute" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="1iKgLyjxkg" role="3tpDZA">
                <property role="Xl_RC" value="Huge" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2UoRBY" id="1iKgLyjoOT" role="LiRBU">
      <property role="2UoRBX" value="top" />
      <node concept="2UoOOD" id="1iKgLyjq7t" role="24H8fa">
        <node concept="2UoOYX" id="1iKgLyjq7A" role="24H8fa">
          <node concept="2UoOOG" id="1iKgLyjqQU" role="24H8fa">
            <node concept="3TZoYJ" id="1iKgLyjqQY" role="24H8fa" />
          </node>
        </node>
      </node>
      <node concept="LIFWc" id="1iKgLyjoOZ" role="lGtFl">
        <property role="LIFWa" value="0" />
        <property role="LIFWd" value="Collection_s2xmey_a" />
      </node>
    </node>
  </node>
</model>

