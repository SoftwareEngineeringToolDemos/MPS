<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff98d12f-bc65-4639-94c3-dee022b33791(jetbrains.mps.execution.impl.configurations.tests.inprocess@tests)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="0" />
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="sfqd" ref="r:63a75970-913d-4a7b-99e2-8ca72ff6f509(jetbrains.mps.baseLanguage.unitTest.execution.client)" />
    <import index="ic9i" ref="r:8aafee6a-4721-443e-8020-e8986ed3f25a(jetbrains.mps.execution.configurations.implementation.plugin.plugin)" />
    <import index="uu3z" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.process(MPS.IDEA/)" />
    <import index="7fn4" ref="r:e2bad6d6-3029-4bc3-b44d-49863f32d863(jetbrains.mps.execution.impl.configurations.tests.commands@tests)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lk2n" ref="r:da044acc-81a4-4fd8-b89a-91df4cfe6214(jetbrains.mps.execution.api.commands)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="fnd7" ref="r:5217bde7-686e-45b2-a47f-62b7d63f0fe9(jetbrains.mps.lang.test.util)" />
    <import index="v3va" ref="r:32667737-240a-422b-b048-8918d4b92152(jetbrains.mps.execution.impl.configurations.util@tests)" />
    <import index="n8jl" ref="r:bbc844ac-dcda-4460-9717-8eb5d64b4778(jetbrains.mps.execution.impl.configurations.tests.commands.sandbox2@tests)" />
    <import index="tp5g" ref="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="ryl9" ref="r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <property id="6339244025081158986" name="needsNoWriteAction" index="3OwPAg" />
        <child id="1216993439383" name="methods" index="1qtyYc" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="1216130694486" name="jetbrains.mps.baseLanguage.unitTest.structure.ITestCase" flags="ng" index="B2rLd">
        <property id="6427619394892729757" name="canNotRunInProcess" index="26Nn1l" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1172017222794" name="jetbrains.mps.baseLanguage.unitTest.structure.Fail" flags="nn" index="3xETmq" />
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ng" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393041554" name="fqName" index="BaBD8" />
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="1lH9Xt" id="5vTxdEzyTYm">
    <property role="TrG5h" value="JUnitInProcess" />
    <property role="3OwPAg" value="true" />
    <property role="26Nn1l" value="true" />
    <node concept="2XrIbr" id="3AAOMCHbqs1" role="1qtyYc">
      <property role="TrG5h" value="getMyModel" />
      <node concept="H_c77" id="3AAOMCHbrhY" role="3clF45" />
      <node concept="3clFbS" id="3AAOMCHbqs3" role="3clF47">
        <node concept="3cpWs6" id="3AAOMCHbrR7" role="3cqZAp">
          <node concept="BaHAS" id="3AAOMCHbv3X" role="3cqZAk">
            <property role="BaGAP" value="tests" />
            <property role="BaHAW" value="jetbrains.mps.execution.impl.configurations.tests.commands.sandbox2" />
            <property role="BaBD8" value="jetbrains.mps.execution.impl.configurations.tests.commands.sandbox@tests" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3AAOMCHbreN" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5vTxdEzyTYn" role="1qtyYc">
      <property role="TrG5h" value="checkTests" />
      <node concept="3cqZAl" id="5vTxdEzyTYo" role="3clF45" />
      <node concept="3clFbS" id="5vTxdEzyTYp" role="3clF47">
        <node concept="SfApY" id="5vTxdEzyTYq" role="3cqZAp">
          <node concept="3clFbS" id="5vTxdEzyTYr" role="SfCbr">
            <node concept="3cpWs8" id="5vTxdEzyTYs" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTYt" role="3cpWs9">
                <property role="TrG5h" value="testNodes" />
                <node concept="_YKpA" id="5vTxdEzyTYu" role="1tU5fm">
                  <node concept="3uibUv" id="5vTxdEzyTYv" role="_ZDj9">
                    <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5vTxdEzyTYw" role="33vP2m">
                  <node concept="2OqwBi" id="5vTxdEzyTYx" role="2Oq$k0">
                    <node concept="37vLTw" id="5vTxdEzyTYy" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vTxdEzyU0p" resolve="success" />
                    </node>
                    <node concept="4Tj9Z" id="5vTxdEzyTYz" role="2OqNvi">
                      <node concept="37vLTw" id="5vTxdEzyTY$" role="576Qk">
                        <ref role="3cqZAo" node="5vTxdEzyU0s" resolve="failure" />
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="5vTxdEzyTY_" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzyTYA" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTYB" role="3cpWs9">
                <property role="TrG5h" value="runState" />
                <node concept="3uibUv" id="5vTxdEzyTYC" role="1tU5fm">
                  <ref role="3uigEE" to="sfqd:56tRMpP_f5M" resolve="TestRunState" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzyTYD" role="33vP2m">
                  <node concept="1pGfFk" id="5vTxdEzyTYE" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpP_fiW" resolve="TestRunState" />
                    <node concept="37vLTw" id="5vTxdEzyTYF" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzyTYt" resolve="testNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzyTYG" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTYH" role="3cpWs9">
                <property role="TrG5h" value="eventsDispatcher" />
                <node concept="3uibUv" id="5vTxdEzyTYI" role="1tU5fm">
                  <ref role="3uigEE" to="sfqd:56tRMpPBy7G" resolve="TestEventsDispatcher" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzyTYJ" role="33vP2m">
                  <node concept="1pGfFk" id="5vTxdEzyTYK" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpPByaK" resolve="TestEventsDispatcher" />
                    <node concept="37vLTw" id="5vTxdEzyTYL" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzyTYB" resolve="runState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5vTxdEzyTYM" role="3cqZAp" />
            <node concept="3cpWs8" id="5vTxdEzyTYN" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTYO" role="3cpWs9">
                <property role="TrG5h" value="processExecutor" />
                <node concept="3uibUv" id="5vTxdEzyTYP" role="1tU5fm">
                  <ref role="3uigEE" to="ic9i:1b7CZFPOU09" resolve="Executor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzyTYQ" role="3cqZAp">
              <node concept="37vLTI" id="5vTxdEzyTYR" role="3clFbG">
                <node concept="37vLTw" id="5vTxdEzyTYS" role="37vLTJ">
                  <ref role="3cqZAo" node="5vTxdEzyTYO" resolve="processExecutor" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzyTYT" role="37vLTx">
                  <node concept="1pGfFk" id="5vTxdEzyTYU" role="2ShVmc">
                    <ref role="37wK5l" to="ic9i:5iYlssmVFgA" resolve="JUnitLightExecutor" />
                    <node concept="37vLTw" id="5vTxdEzyTYV" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzyTYt" resolve="testNodes" />
                    </node>
                    <node concept="37vLTw" id="5vTxdEzyTYW" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzyTYH" resolve="eventsDispatcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="34ab3g" id="5vTxdEzyTYX" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="Xl_RD" id="5vTxdEzyTYY" role="34bqiv">
                <property role="Xl_RC" value="Starting in-process-execution" />
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzyTYZ" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTZ0" role="3cpWs9">
                <property role="TrG5h" value="process" />
                <node concept="3uibUv" id="5vTxdEzyTZ1" role="1tU5fm">
                  <ref role="3uigEE" to="uu3z:~ProcessHandler" resolve="ProcessHandler" />
                </node>
                <node concept="2OqwBi" id="5vTxdEzyTZ2" role="33vP2m">
                  <node concept="37vLTw" id="5vTxdEzyTZ3" role="2Oq$k0">
                    <ref role="3cqZAo" node="5vTxdEzyTYO" resolve="processExecutor" />
                  </node>
                  <node concept="liA8E" id="5vTxdEzyTZ4" role="2OqNvi">
                    <ref role="37wK5l" to="ic9i:1b7CZFPOU0w" resolve="execute" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzyTZ5" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTZ6" role="3cpWs9">
                <property role="TrG5h" value="checkListener" />
                <node concept="3uibUv" id="5vTxdEzyTZ7" role="1tU5fm">
                  <ref role="3uigEE" to="7fn4:73dkH4Pmk_n" resolve="CheckTestStateListener" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzyTZ8" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEzyTZ9" role="3clFbG">
                <node concept="2YIFZM" id="5vTxdEzyTZa" role="2Oq$k0">
                  <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                  <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
                </node>
                <node concept="liA8E" id="5vTxdEzyTZb" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                  <node concept="1bVj0M" id="5vTxdEzyTZc" role="37wK5m">
                    <node concept="3clFbS" id="5vTxdEzyTZd" role="1bW5cS">
                      <node concept="3clFbF" id="5vTxdEzyTZe" role="3cqZAp">
                        <node concept="37vLTI" id="5vTxdEzyTZf" role="3clFbG">
                          <node concept="2ShNRf" id="5vTxdEzyTZg" role="37vLTx">
                            <node concept="1pGfFk" id="5vTxdEzyTZh" role="2ShVmc">
                              <ref role="37wK5l" to="7fn4:73dkH4Pmk_p" resolve="CheckTestStateListener" />
                              <node concept="37vLTw" id="5vTxdEzyTZi" role="37wK5m">
                                <ref role="3cqZAo" node="5vTxdEzyU0p" resolve="success" />
                              </node>
                              <node concept="37vLTw" id="5vTxdEzyTZj" role="37wK5m">
                                <ref role="3cqZAo" node="5vTxdEzyU0s" resolve="failure" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5vTxdEzyTZk" role="37vLTJ">
                            <ref role="3cqZAo" node="5vTxdEzyTZ6" resolve="checkListener" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5vTxdEzyTZl" role="3cqZAp">
                        <node concept="2OqwBi" id="5vTxdEzyTZm" role="3clFbG">
                          <node concept="37vLTw" id="5vTxdEzyTZn" role="2Oq$k0">
                            <ref role="3cqZAo" node="5vTxdEzyTYB" resolve="runState" />
                          </node>
                          <node concept="liA8E" id="5vTxdEzyTZo" role="2OqNvi">
                            <ref role="37wK5l" to="sfqd:56tRMpP_fgY" resolve="addListener" />
                            <node concept="37vLTw" id="5vTxdEzyTZp" role="37wK5m">
                              <ref role="3cqZAo" node="5vTxdEzyTZ6" resolve="checkListener" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzyTZq" role="3cqZAp">
              <node concept="2YIFZM" id="5vTxdEzyTZr" role="3clFbG">
                <ref role="37wK5l" to="lk2n:3oW7HLfqDla" resolve="redirect" />
                <ref role="1Pybhc" to="lk2n:3oW7HLfqDl9" resolve="OutputRedirector" />
                <node concept="37vLTw" id="5vTxdEzyTZs" role="37wK5m">
                  <ref role="3cqZAo" node="5vTxdEzyTZ0" resolve="process" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzyTZt" role="37wK5m">
                  <node concept="1pGfFk" id="5vTxdEzyTZu" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpP_fmK" resolve="UnitTestProcessListener" />
                    <node concept="37vLTw" id="5vTxdEzyTZv" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzyTYH" resolve="eventsDispatcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzyTZw" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzyTZx" role="3cpWs9">
                <property role="TrG5h" value="exitcode" />
                <node concept="10Oyi0" id="5vTxdEzyTZy" role="1tU5fm" />
                <node concept="2YIFZM" id="5vTxdEzyTZz" role="33vP2m">
                  <ref role="1Pybhc" to="lk2n:3oW7HLfqDlu" resolve="ProcessHandlerBuilder" />
                  <ref role="37wK5l" to="lk2n:pdcevhyp45" resolve="startAndWait" />
                  <node concept="37vLTw" id="5vTxdEzyTZ$" role="37wK5m">
                    <ref role="3cqZAo" node="5vTxdEzyTZ0" resolve="process" />
                  </node>
                  <node concept="17qRlL" id="5vTxdEzyTZ_" role="37wK5m">
                    <node concept="3cmrfG" id="5vTxdEzyTZA" role="3uHU7w">
                      <property role="3cmrfH" value="1000" />
                    </node>
                    <node concept="3cmrfG" id="5vTxdEzyTZB" role="3uHU7B">
                      <property role="3cmrfH" value="30" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5vTxdEzyTZC" role="3cqZAp">
              <node concept="3clFbS" id="5vTxdEzyTZD" role="3clFbx">
                <node concept="3xETmq" id="5vTxdEzyTZE" role="3cqZAp">
                  <node concept="3_1$Yv" id="5vTxdEzyTZF" role="3_9lra">
                    <node concept="3cpWs3" id="5vTxdEzyTZG" role="3_1BAH">
                      <node concept="37vLTw" id="5vTxdEzyTZH" role="3uHU7w">
                        <ref role="3cqZAo" node="5vTxdEzyTZx" resolve="exitcode" />
                      </node>
                      <node concept="3cpWs3" id="5vTxdEzyTZI" role="3uHU7B">
                        <node concept="3cpWs3" id="5vTxdEzyTZJ" role="3uHU7B">
                          <node concept="Xl_RD" id="5vTxdEzyTZK" role="3uHU7B">
                            <property role="Xl_RC" value="Exit code must be equal to " />
                          </node>
                          <node concept="2OqwBi" id="5vTxdEzyTZL" role="3uHU7w">
                            <node concept="37vLTw" id="5vTxdEzyTZM" role="2Oq$k0">
                              <ref role="3cqZAo" node="5vTxdEzyU0s" resolve="failure" />
                            </node>
                            <node concept="34oBXx" id="5vTxdEzyTZN" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5vTxdEzyTZO" role="3uHU7w">
                          <property role="Xl_RC" value=", but " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5vTxdEzyTZP" role="3clFbw">
                <node concept="37vLTw" id="5vTxdEzyTZQ" role="3uHU7B">
                  <ref role="3cqZAo" node="5vTxdEzyTZx" resolve="exitcode" />
                </node>
                <node concept="2OqwBi" id="5vTxdEzyTZR" role="3uHU7w">
                  <node concept="37vLTw" id="5vTxdEzyTZS" role="2Oq$k0">
                    <ref role="3cqZAo" node="5vTxdEzyU0s" resolve="failure" />
                  </node>
                  <node concept="34oBXx" id="5vTxdEzyTZT" role="2OqNvi" />
                </node>
              </node>
              <node concept="3eNFk2" id="5vTxdEzyTZU" role="3eNLev">
                <node concept="3eOVzh" id="5vTxdEzyTZV" role="3eO9$A">
                  <node concept="3cmrfG" id="5vTxdEzyTZW" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5vTxdEzyTZX" role="3uHU7B">
                    <ref role="3cqZAo" node="5vTxdEzyTZx" resolve="exitcode" />
                  </node>
                </node>
                <node concept="3clFbS" id="5vTxdEzyTZY" role="3eOfB_">
                  <node concept="3xETmq" id="5vTxdEzyTZZ" role="3cqZAp">
                    <node concept="3_1$Yv" id="5vTxdEzyU00" role="3_9lra">
                      <node concept="Xl_RD" id="5vTxdEzyU01" role="3_1BAH">
                        <property role="Xl_RC" value="Process is running for too long" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5vTxdEzyU02" role="3cqZAp">
              <node concept="3clFbS" id="5vTxdEzyU03" role="3clFbx">
                <node concept="3xETmq" id="5vTxdEzyU04" role="3cqZAp">
                  <node concept="3_1$Yv" id="5vTxdEzyU05" role="3_9lra">
                    <node concept="2OqwBi" id="5vTxdEzyU06" role="3_1BAH">
                      <node concept="37vLTw" id="5vTxdEzyU07" role="2Oq$k0">
                        <ref role="3cqZAo" node="5vTxdEzyTZ6" resolve="checkListener" />
                      </node>
                      <node concept="liA8E" id="5vTxdEzyU08" role="2OqNvi">
                        <ref role="37wK5l" to="7fn4:73dkH4PmkFg" resolve="getMessages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5vTxdEzyU09" role="3clFbw">
                <node concept="2OqwBi" id="5vTxdEzyU0a" role="3fr31v">
                  <node concept="2OqwBi" id="5vTxdEzyU0b" role="2Oq$k0">
                    <node concept="37vLTw" id="5vTxdEzyU0c" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vTxdEzyTZ6" resolve="checkListener" />
                    </node>
                    <node concept="liA8E" id="5vTxdEzyU0d" role="2OqNvi">
                      <ref role="37wK5l" to="7fn4:73dkH4PmkFg" resolve="getMessages" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5vTxdEzyU0e" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="Xl_RD" id="5vTxdEzyU0f" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5vTxdEzyU0g" role="TEbGg">
            <node concept="3cpWsn" id="5vTxdEzyU0h" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5vTxdEzyU0i" role="1tU5fm">
                <ref role="3uigEE" to="3v5a:~ExecutionException" resolve="ExecutionException" />
              </node>
            </node>
            <node concept="3clFbS" id="5vTxdEzyU0j" role="TDEfX">
              <node concept="3xETmq" id="5vTxdEzyU0k" role="3cqZAp">
                <node concept="3_1$Yv" id="5vTxdEzyU0l" role="3_9lra">
                  <node concept="2OqwBi" id="5vTxdEzyU0m" role="3_1BAH">
                    <node concept="37vLTw" id="5vTxdEzyU0n" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vTxdEzyU0h" resolve="e" />
                    </node>
                    <node concept="liA8E" id="5vTxdEzyU0o" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vTxdEzyU0p" role="3clF46">
        <property role="TrG5h" value="success" />
        <node concept="_YKpA" id="5vTxdEzyU0q" role="1tU5fm">
          <node concept="3uibUv" id="5vTxdEzyU0r" role="_ZDj9">
            <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vTxdEzyU0s" role="3clF46">
        <property role="TrG5h" value="failure" />
        <node concept="_YKpA" id="5vTxdEzyU0t" role="1tU5fm">
          <node concept="3uibUv" id="5vTxdEzyU0u" role="_ZDj9">
            <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5vTxdEzyU0v" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="5vTxdEzyU1r" role="1SL9yI">
      <property role="TrG5h" value="startSimpleTestCase" />
      <node concept="3cqZAl" id="5vTxdEzyU1s" role="3clF45" />
      <node concept="3clFbS" id="5vTxdEzyU1t" role="3clF47">
        <node concept="3cpWs8" id="5sLbmmiYSDq" role="3cqZAp">
          <node concept="3cpWsn" id="5sLbmmiYSDr" role="3cpWs9">
            <property role="TrG5h" value="testName" />
            <node concept="17QB3L" id="5sLbmmiYSDp" role="1tU5fm" />
            <node concept="2OqwBi" id="5sLbmmj15Y7" role="33vP2m">
              <node concept="2YIFZM" id="5sLbmmj15Uh" role="2Oq$k0">
                <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
                <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
              </node>
              <node concept="liA8E" id="5sLbmmj16pG" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
                <node concept="1bVj0M" id="5sLbmmj16zu" role="37wK5m">
                  <node concept="3clFbS" id="5sLbmmj16zv" role="1bW5cS">
                    <node concept="3cpWs6" id="5sLbmmj16X8" role="3cqZAp">
                      <node concept="2OqwBi" id="5sLbmmj0F7H" role="3cqZAk">
                        <node concept="2JrnkZ" id="5sLbmmj0F3q" role="2Oq$k0">
                          <node concept="3B5_sB" id="5sLbmmiYTm9" role="2JrQYb">
                            <ref role="3B5MYn" to="n8jl:617g7o6hhfk" resolve="SimpleTestCase_Test" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5sLbmmj0FnM" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5vTxdEzyU1u" role="3cqZAp">
          <node concept="2OqwBi" id="5vTxdEzyU1v" role="3clFbG">
            <node concept="2WthIp" id="5vTxdEzyU1w" role="2Oq$k0" />
            <node concept="2XshWL" id="5vTxdEzyU1x" role="2OqNvi">
              <ref role="2WH_rO" node="5vTxdEzyTYn" resolve="checkTests" />
              <node concept="2YIFZM" id="3AAOMCHbdCF" role="2XxRq1">
                <ref role="37wK5l" to="v3va:3AAOMCH9U61" resolve="wrapTests" />
                <ref role="1Pybhc" to="v3va:7iQDiGjjGYW" resolve="JUnitUtil" />
                <node concept="2OqwBi" id="3AAOMCHbxuj" role="37wK5m">
                  <node concept="2WthIp" id="3AAOMCHbxum" role="2Oq$k0" />
                  <node concept="2XshWL" id="3AAOMCHbxuo" role="2OqNvi">
                    <ref role="2WH_rO" node="3AAOMCHbqs1" resolve="getMyModel" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5vTxdEzyU1_" role="37wK5m">
                  <node concept="2HTt$P" id="5vTxdEzyU1A" role="2ShVmc">
                    <node concept="17QB3L" id="5vTxdEzyU1B" role="2HTBi0" />
                    <node concept="37vLTw" id="5sLbmmiYSDt" role="2HTEbv">
                      <ref role="3cqZAo" node="5sLbmmiYSDr" resolve="testName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="5vTxdEzyU1D" role="2XxRq1">
                <node concept="Tc6Ow" id="5vTxdEzyU1E" role="2ShVmc">
                  <node concept="3uibUv" id="5vTxdEzyU1F" role="HW$YZ">
                    <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5vTxdEzyU1G" role="1SL9yI">
      <property role="TrG5h" value="startFailedTestCase" />
      <node concept="3cqZAl" id="5vTxdEzyU1H" role="3clF45" />
      <node concept="3clFbS" id="5vTxdEzyU1I" role="3clF47">
        <node concept="3cpWs8" id="5sLbmmj1bWs" role="3cqZAp">
          <node concept="3cpWsn" id="5sLbmmj1bWt" role="3cpWs9">
            <property role="TrG5h" value="testName" />
            <node concept="17QB3L" id="5sLbmmj1bWu" role="1tU5fm" />
            <node concept="2OqwBi" id="5sLbmmj1bWv" role="33vP2m">
              <node concept="2YIFZM" id="5sLbmmj1bWw" role="2Oq$k0">
                <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
              </node>
              <node concept="liA8E" id="5sLbmmj1bWx" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
                <node concept="1bVj0M" id="5sLbmmj1bWy" role="37wK5m">
                  <node concept="3clFbS" id="5sLbmmj1bWz" role="1bW5cS">
                    <node concept="3cpWs6" id="5sLbmmj1bW$" role="3cqZAp">
                      <node concept="2OqwBi" id="5sLbmmj1bW_" role="3cqZAk">
                        <node concept="2JrnkZ" id="5sLbmmj1bWA" role="2Oq$k0">
                          <node concept="3B5_sB" id="5sLbmmj1bWB" role="2JrQYb">
                            <ref role="3B5MYn" to="n8jl:5vTxdEzy3vs" resolve="FailedTestCase_Test" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5sLbmmj1bWC" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5vTxdEzyU1J" role="3cqZAp">
          <node concept="2OqwBi" id="5vTxdEzyU1K" role="3clFbG">
            <node concept="2WthIp" id="5vTxdEzyU1L" role="2Oq$k0" />
            <node concept="2XshWL" id="5vTxdEzyU1M" role="2OqNvi">
              <ref role="2WH_rO" node="5vTxdEzyTYn" resolve="checkTests" />
              <node concept="2ShNRf" id="5vTxdEzyU1N" role="2XxRq1">
                <node concept="Tc6Ow" id="5vTxdEzyU1O" role="2ShVmc">
                  <node concept="3uibUv" id="5vTxdEzyU1P" role="HW$YZ">
                    <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="3AAOMCHbfzw" role="2XxRq1">
                <ref role="37wK5l" to="v3va:3AAOMCH9U61" resolve="wrapTests" />
                <ref role="1Pybhc" to="v3va:7iQDiGjjGYW" resolve="JUnitUtil" />
                <node concept="2OqwBi" id="3AAOMCHbxns" role="37wK5m">
                  <node concept="2WthIp" id="3AAOMCHbxnv" role="2Oq$k0" />
                  <node concept="2XshWL" id="3AAOMCHbxnx" role="2OqNvi">
                    <ref role="2WH_rO" node="3AAOMCHbqs1" resolve="getMyModel" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5vTxdEzyU1T" role="37wK5m">
                  <node concept="2HTt$P" id="5vTxdEzyU1U" role="2ShVmc">
                    <node concept="17QB3L" id="5vTxdEzyU1V" role="2HTBi0" />
                    <node concept="37vLTw" id="5sLbmmj1d4b" role="2HTEbv">
                      <ref role="3cqZAo" node="5sLbmmj1bWt" resolve="testName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="5vTxdEzyUNe">
    <property role="2XOHcw" value="${mps_home}" />
  </node>
  <node concept="1lH9Xt" id="5vTxdEzz0ZZ">
    <property role="TrG5h" value="JUnitInProcessTermination" />
    <property role="3OwPAg" value="true" />
    <property role="26Nn1l" value="true" />
    <node concept="2XrIbr" id="5vTxdEzz100" role="1qtyYc">
      <property role="TrG5h" value="startAndTerminate" />
      <node concept="3cqZAl" id="5vTxdEzz101" role="3clF45" />
      <node concept="3clFbS" id="5vTxdEzz102" role="3clF47">
        <node concept="SfApY" id="5vTxdEzz103" role="3cqZAp">
          <node concept="3clFbS" id="5vTxdEzz104" role="SfCbr">
            <node concept="3cpWs8" id="5vTxdEzz10f" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzz10g" role="3cpWs9">
                <property role="TrG5h" value="runState" />
                <node concept="3uibUv" id="5vTxdEzz10h" role="1tU5fm">
                  <ref role="3uigEE" to="sfqd:56tRMpP_f5M" resolve="TestRunState" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzz10i" role="33vP2m">
                  <node concept="1pGfFk" id="5vTxdEzz10j" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpP_fiW" resolve="TestRunState" />
                    <node concept="37vLTw" id="5vTxdEzz10k" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzz122" resolve="testNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzz10l" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzz10m" role="3cpWs9">
                <property role="TrG5h" value="eventsDispatcher" />
                <node concept="3uibUv" id="5vTxdEzz10n" role="1tU5fm">
                  <ref role="3uigEE" to="sfqd:56tRMpPBy7G" resolve="TestEventsDispatcher" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzz10o" role="33vP2m">
                  <node concept="1pGfFk" id="5vTxdEzz10p" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpPByaK" resolve="TestEventsDispatcher" />
                    <node concept="37vLTw" id="5vTxdEzz10q" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzz10g" resolve="runState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5vTxdEzz10r" role="3cqZAp" />
            <node concept="3cpWs8" id="5vTxdEzz10s" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzz10t" role="3cpWs9">
                <property role="TrG5h" value="processExecutor" />
                <node concept="3uibUv" id="5vTxdEzz10u" role="1tU5fm">
                  <ref role="3uigEE" to="ic9i:1b7CZFPOU09" resolve="Executor" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzz10y" role="33vP2m">
                  <node concept="1pGfFk" id="5vTxdEzz10z" role="2ShVmc">
                    <ref role="37wK5l" to="ic9i:5iYlssmVFgA" resolve="JUnitLightExecutor" />
                    <node concept="37vLTw" id="5vTxdEzz10$" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzz122" resolve="testNodes" />
                    </node>
                    <node concept="37vLTw" id="5vTxdEzz10_" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzz10m" resolve="eventsDispatcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzF5UC" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzF5UD" role="3cpWs9">
                <property role="TrG5h" value="lightState" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="5vTxdEzFcdk" role="1tU5fm">
                  <ref role="3uigEE" to="fnd7:1$FrpHy4ud$" resolve="TestLightRunState" />
                </node>
                <node concept="2YIFZM" id="5vTxdEzF5UE" role="33vP2m">
                  <ref role="37wK5l" to="ic9i:5vTxdEzDDpO" resolve="getRunState" />
                  <ref role="1Pybhc" to="ic9i:5iYlssmVvC7" resolve="JUnitLightExecutor" />
                </node>
              </node>
            </node>
            <node concept="34ab3g" id="5vTxdEzz10A" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="Xl_RD" id="5vTxdEzz10B" role="34bqiv">
                <property role="Xl_RC" value="Starting in-process-execution" />
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzz10C" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzz10D" role="3cpWs9">
                <property role="TrG5h" value="process" />
                <node concept="3uibUv" id="5vTxdEzz10E" role="1tU5fm">
                  <ref role="3uigEE" to="uu3z:~ProcessHandler" resolve="ProcessHandler" />
                </node>
                <node concept="2OqwBi" id="5vTxdEzz10F" role="33vP2m">
                  <node concept="37vLTw" id="5vTxdEzz10G" role="2Oq$k0">
                    <ref role="3cqZAo" node="5vTxdEzz10t" resolve="processExecutor" />
                  </node>
                  <node concept="liA8E" id="5vTxdEzz10H" role="2OqNvi">
                    <ref role="37wK5l" to="ic9i:1b7CZFPOU0w" resolve="execute" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzz10I" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzz10J" role="3cpWs9">
                <property role="TrG5h" value="checkListener" />
                <node concept="3uibUv" id="5vTxdEzz10K" role="1tU5fm">
                  <ref role="3uigEE" to="7fn4:73dkH4Pmk_n" resolve="CheckTestStateListener" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzz10L" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEzz10M" role="3clFbG">
                <node concept="2YIFZM" id="5vTxdEzz10N" role="2Oq$k0">
                  <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                  <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
                </node>
                <node concept="liA8E" id="5vTxdEzz10O" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                  <node concept="1bVj0M" id="5vTxdEzz10P" role="37wK5m">
                    <node concept="3clFbS" id="5vTxdEzz10Q" role="1bW5cS">
                      <node concept="3clFbF" id="5vTxdEzz10R" role="3cqZAp">
                        <node concept="37vLTI" id="5vTxdEzz10S" role="3clFbG">
                          <node concept="2ShNRf" id="5vTxdEzz10T" role="37vLTx">
                            <node concept="1pGfFk" id="5vTxdEzz10U" role="2ShVmc">
                              <ref role="37wK5l" to="7fn4:73dkH4Pmk_p" resolve="CheckTestStateListener" />
                              <node concept="37vLTw" id="5vTxdEzz10V" role="37wK5m">
                                <ref role="3cqZAo" node="5vTxdEzz122" resolve="testNodes" />
                              </node>
                              <node concept="2ShNRf" id="5vTxdEzz8Gr" role="37wK5m">
                                <node concept="Tc6Ow" id="5vTxdEzzbd1" role="2ShVmc">
                                  <node concept="3uibUv" id="5vTxdEzzbPR" role="HW$YZ">
                                    <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5vTxdEzz10X" role="37vLTJ">
                            <ref role="3cqZAo" node="5vTxdEzz10J" resolve="checkListener" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5vTxdEzz10Y" role="3cqZAp">
                        <node concept="2OqwBi" id="5vTxdEzz10Z" role="3clFbG">
                          <node concept="37vLTw" id="5vTxdEzz110" role="2Oq$k0">
                            <ref role="3cqZAo" node="5vTxdEzz10g" resolve="runState" />
                          </node>
                          <node concept="liA8E" id="5vTxdEzz111" role="2OqNvi">
                            <ref role="37wK5l" to="sfqd:56tRMpP_fgY" resolve="addListener" />
                            <node concept="37vLTw" id="5vTxdEzz112" role="37wK5m">
                              <ref role="3cqZAo" node="5vTxdEzz10J" resolve="checkListener" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzz113" role="3cqZAp">
              <node concept="2YIFZM" id="5vTxdEzz114" role="3clFbG">
                <ref role="37wK5l" to="lk2n:3oW7HLfqDla" resolve="redirect" />
                <ref role="1Pybhc" to="lk2n:3oW7HLfqDl9" resolve="OutputRedirector" />
                <node concept="37vLTw" id="5vTxdEzz115" role="37wK5m">
                  <ref role="3cqZAo" node="5vTxdEzz10D" resolve="process" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzz116" role="37wK5m">
                  <node concept="1pGfFk" id="5vTxdEzz117" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpP_fmK" resolve="UnitTestProcessListener" />
                    <node concept="37vLTw" id="5vTxdEzz118" role="37wK5m">
                      <ref role="3cqZAo" node="5vTxdEzz10m" resolve="eventsDispatcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5vTxdEzA9Dp" role="3cqZAp" />
            <node concept="3cpWs8" id="5vTxdEzAqV5" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzAqV3" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="exitCode" />
                <node concept="10Q1$e" id="5vTxdEzArE4" role="1tU5fm">
                  <node concept="10Oyi0" id="5vTxdEzAry4" role="10Q1$1" />
                </node>
                <node concept="2BsdOp" id="5vTxdEzAC8w" role="33vP2m">
                  <node concept="3cmrfG" id="5vTxdEzACmk" role="2BsfMF">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzAiSx" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzAiSy" role="3cpWs9">
                <property role="TrG5h" value="latch" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="5vTxdEzAiSv" role="1tU5fm">
                  <ref role="3uigEE" to="5zyv:~CountDownLatch" resolve="CountDownLatch" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzAiSz" role="33vP2m">
                  <node concept="1pGfFk" id="5vTxdEzAiS$" role="2ShVmc">
                    <ref role="37wK5l" to="5zyv:~CountDownLatch.&lt;init&gt;(int)" resolve="CountDownLatch" />
                    <node concept="3cmrfG" id="5vTxdEzAiS_" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzAk5d" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEzAkk8" role="3clFbG">
                <node concept="37vLTw" id="5vTxdEzAk5c" role="2Oq$k0">
                  <ref role="3cqZAo" node="5vTxdEzz10D" resolve="process" />
                </node>
                <node concept="liA8E" id="5vTxdEzAkRc" role="2OqNvi">
                  <ref role="37wK5l" to="uu3z:~ProcessHandler.addProcessListener(com.intellij.execution.process.ProcessListener):void" resolve="addProcessListener" />
                  <node concept="2ShNRf" id="5vTxdEzAkZq" role="37wK5m">
                    <node concept="YeOm9" id="5vTxdEzAln3" role="2ShVmc">
                      <node concept="1Y3b0j" id="5vTxdEzAln6" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" to="uu3z:~ProcessAdapter" resolve="ProcessAdapter" />
                        <ref role="37wK5l" to="uu3z:~ProcessAdapter.&lt;init&gt;()" resolve="ProcessAdapter" />
                        <node concept="3Tm1VV" id="5vTxdEzAln7" role="1B3o_S" />
                        <node concept="3clFb_" id="5vTxdEzAlxM" role="jymVt">
                          <property role="1EzhhJ" value="false" />
                          <property role="TrG5h" value="processTerminated" />
                          <property role="DiZV1" value="false" />
                          <property role="IEkAT" value="false" />
                          <node concept="3Tm1VV" id="5vTxdEzAlxN" role="1B3o_S" />
                          <node concept="3cqZAl" id="5vTxdEzAlxP" role="3clF45" />
                          <node concept="37vLTG" id="5vTxdEzAlxQ" role="3clF46">
                            <property role="TrG5h" value="event" />
                            <node concept="3uibUv" id="5vTxdEzAlxR" role="1tU5fm">
                              <ref role="3uigEE" to="uu3z:~ProcessEvent" resolve="ProcessEvent" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="5vTxdEzAlxT" role="3clF47">
                            <node concept="3clFbF" id="5vTxdEzArUD" role="3cqZAp">
                              <node concept="37vLTI" id="5vTxdEzAsHj" role="3clFbG">
                                <node concept="2OqwBi" id="5vTxdEzAsKj" role="37vLTx">
                                  <node concept="37vLTw" id="5vTxdEzAsIQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5vTxdEzAlxQ" resolve="event" />
                                  </node>
                                  <node concept="liA8E" id="5vTxdEzAsTb" role="2OqNvi">
                                    <ref role="37wK5l" to="uu3z:~ProcessEvent.getExitCode():int" resolve="getExitCode" />
                                  </node>
                                </node>
                                <node concept="AH0OO" id="5vTxdEzArVo" role="37vLTJ">
                                  <node concept="3cmrfG" id="5vTxdEzArWI" role="AHEQo">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                  <node concept="37vLTw" id="5vTxdEzArUC" role="AHHXb">
                                    <ref role="3cqZAo" node="5vTxdEzAqV3" resolve="exitCode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5vTxdEzAlYi" role="3cqZAp">
                              <node concept="2OqwBi" id="5vTxdEzAlYY" role="3clFbG">
                                <node concept="37vLTw" id="5vTxdEzAlYh" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5vTxdEzAiSy" resolve="latch" />
                                </node>
                                <node concept="liA8E" id="5vTxdEzAmi5" role="2OqNvi">
                                  <ref role="37wK5l" to="5zyv:~CountDownLatch.countDown():void" resolve="countDown" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="5vTxdEzAlxU" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzAttK" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEzAtIe" role="3clFbG">
                <node concept="37vLTw" id="5vTxdEzAttJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="5vTxdEzz10D" resolve="process" />
                </node>
                <node concept="liA8E" id="5vTxdEzAurW" role="2OqNvi">
                  <ref role="37wK5l" to="uu3z:~ProcessHandler.startNotify():void" resolve="startNotify" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7iQDiGjjSJI" role="3cqZAp">
              <node concept="2OqwBi" id="7iQDiGjjSJG" role="3clFbG">
                <node concept="2WthIp" id="7iQDiGjjSJH" role="2Oq$k0" />
                <node concept="2XshWL" id="7iQDiGjjSJF" role="2OqNvi">
                  <ref role="2WH_rO" node="7iQDiGjjSJB" resolve="waitForRunToStart" />
                  <node concept="37vLTw" id="7iQDiGjjSJE" role="2XxRq1">
                    <ref role="3cqZAo" node="5vTxdEzF5UD" resolve="lightState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vwNmj" id="5vTxdEzFiad" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEzFj5A" role="3vwVQn">
                <node concept="37vLTw" id="5vTxdEzFj0n" role="2Oq$k0">
                  <ref role="3cqZAo" node="5vTxdEzF5UD" resolve="lightState" />
                </node>
                <node concept="liA8E" id="5vTxdEzFjwc" role="2OqNvi">
                  <ref role="37wK5l" to="fnd7:1$FrpHy4ufc" resolve="isRunning" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEz$SIm" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEz$WDW" role="3clFbG">
                <node concept="37vLTw" id="5vTxdEz$WCG" role="2Oq$k0">
                  <ref role="3cqZAo" node="5vTxdEzz10D" resolve="process" />
                </node>
                <node concept="liA8E" id="5vTxdEz$X6j" role="2OqNvi">
                  <ref role="37wK5l" to="uu3z:~ProcessHandler.destroyProcess():void" resolve="destroyProcess" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5vTxdEzAvdi" role="3cqZAp">
              <node concept="2OqwBi" id="5vTxdEzAvvu" role="3clFbG">
                <node concept="37vLTw" id="5vTxdEzAvdh" role="2Oq$k0">
                  <ref role="3cqZAo" node="5vTxdEzAiSy" resolve="latch" />
                </node>
                <node concept="liA8E" id="5vTxdEzAzNk" role="2OqNvi">
                  <ref role="37wK5l" to="5zyv:~CountDownLatch.await(long,java.util.concurrent.TimeUnit):boolean" resolve="await" />
                  <node concept="17qRlL" id="5vTxdEzA_0o" role="37wK5m">
                    <node concept="3cmrfG" id="5vTxdEzA_0r" role="3uHU7w">
                      <property role="3cmrfH" value="1000" />
                    </node>
                    <node concept="3cmrfG" id="5vTxdEzA$0w" role="3uHU7B">
                      <property role="3cmrfH" value="30" />
                    </node>
                  </node>
                  <node concept="Rm8GO" id="5vTxdEzAA7i" role="37wK5m">
                    <ref role="Rm8GQ" to="5zyv:~TimeUnit.MILLISECONDS" resolve="MILLISECONDS" />
                    <ref role="1Px2BO" to="5zyv:~TimeUnit" resolve="TimeUnit" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5vTxdEzAGtL" role="3cqZAp">
              <node concept="3cpWsn" id="5vTxdEzAGtO" role="3cpWs9">
                <property role="TrG5h" value="exitcode" />
                <node concept="10Oyi0" id="5vTxdEzAGtJ" role="1tU5fm" />
                <node concept="AH0OO" id="5vTxdEzAHhN" role="33vP2m">
                  <node concept="3cmrfG" id="5vTxdEzAHhU" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5vTxdEzAHha" role="AHHXb">
                    <ref role="3cqZAo" node="5vTxdEzAqV3" resolve="exitCode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5vTxdEzz11h" role="3cqZAp">
              <node concept="3clFbS" id="5vTxdEzz11i" role="3clFbx">
                <node concept="3xETmq" id="5vTxdEzz11j" role="3cqZAp">
                  <node concept="3_1$Yv" id="5vTxdEzz11k" role="3_9lra">
                    <node concept="3cpWs3" id="5vTxdEzz11l" role="3_1BAH">
                      <node concept="37vLTw" id="5vTxdEzz11m" role="3uHU7w">
                        <ref role="3cqZAo" node="5vTxdEzAGtO" resolve="exitcode" />
                      </node>
                      <node concept="3cpWs3" id="5vTxdEzz11n" role="3uHU7B">
                        <node concept="3cpWs3" id="5vTxdEzz11o" role="3uHU7B">
                          <node concept="Xl_RD" id="5vTxdEzz11p" role="3uHU7B">
                            <property role="Xl_RC" value="Exit code must be equal to " />
                          </node>
                          <node concept="10M0yZ" id="5vTxdEzAFcS" role="3uHU7w">
                            <ref role="1PxDUh" to="ic9i:5vt46J2P0fS" resolve="FakeProcess" />
                            <ref role="3cqZAo" to="ic9i:5vTxdEz_7L3" resolve="TERMINATION_CODE" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5vTxdEzz11t" role="3uHU7w">
                          <property role="Xl_RC" value=", but " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5vTxdEzz11u" role="3clFbw">
                <node concept="37vLTw" id="5vTxdEzAHXm" role="3uHU7B">
                  <ref role="3cqZAo" node="5vTxdEzAGtO" resolve="exitcode" />
                </node>
                <node concept="10M0yZ" id="5vTxdEzAB2K" role="3uHU7w">
                  <ref role="1PxDUh" to="ic9i:5vt46J2P0fS" resolve="FakeProcess" />
                  <ref role="3cqZAo" to="ic9i:5vTxdEz_7L3" resolve="TERMINATION_CODE" />
                </node>
              </node>
              <node concept="3eNFk2" id="5vTxdEzz11z" role="3eNLev">
                <node concept="3eOVzh" id="5vTxdEzz11$" role="3eO9$A">
                  <node concept="3cmrfG" id="5vTxdEzz11_" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5vTxdEzAJsi" role="3uHU7B">
                    <ref role="3cqZAo" node="5vTxdEzAGtO" resolve="exitcode" />
                  </node>
                </node>
                <node concept="3clFbS" id="5vTxdEzz11B" role="3eOfB_">
                  <node concept="3xETmq" id="5vTxdEzz11C" role="3cqZAp">
                    <node concept="3_1$Yv" id="5vTxdEzz11D" role="3_9lra">
                      <node concept="Xl_RD" id="5vTxdEzz11E" role="3_1BAH">
                        <property role="Xl_RC" value="Process is running for too long" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5vTxdEzz11F" role="3cqZAp">
              <node concept="3clFbS" id="5vTxdEzz11G" role="3clFbx">
                <node concept="3xETmq" id="5vTxdEzz11H" role="3cqZAp">
                  <node concept="3_1$Yv" id="5vTxdEzz11I" role="3_9lra">
                    <node concept="2OqwBi" id="5vTxdEzz11J" role="3_1BAH">
                      <node concept="37vLTw" id="5vTxdEzz11K" role="2Oq$k0">
                        <ref role="3cqZAo" node="5vTxdEzz10J" resolve="checkListener" />
                      </node>
                      <node concept="liA8E" id="5vTxdEzz11L" role="2OqNvi">
                        <ref role="37wK5l" to="7fn4:73dkH4PmkFg" resolve="getMessages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5vTxdEzz11M" role="3clFbw">
                <node concept="2OqwBi" id="5vTxdEzz11N" role="3fr31v">
                  <node concept="2OqwBi" id="5vTxdEzz11O" role="2Oq$k0">
                    <node concept="37vLTw" id="5vTxdEzz11P" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vTxdEzz10J" resolve="checkListener" />
                    </node>
                    <node concept="liA8E" id="5vTxdEzz11Q" role="2OqNvi">
                      <ref role="37wK5l" to="7fn4:73dkH4PmkFg" resolve="getMessages" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5vTxdEzz11R" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="Xl_RD" id="5vTxdEzz11S" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5vTxdEzz11T" role="TEbGg">
            <node concept="3cpWsn" id="5vTxdEzz11U" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5vTxdEzz11V" role="1tU5fm">
                <ref role="3uigEE" to="3v5a:~ExecutionException" resolve="ExecutionException" />
              </node>
            </node>
            <node concept="3clFbS" id="5vTxdEzz11W" role="TDEfX">
              <node concept="3xETmq" id="5vTxdEzz11X" role="3cqZAp">
                <node concept="3_1$Yv" id="5vTxdEzz11Y" role="3_9lra">
                  <node concept="2OqwBi" id="5vTxdEzz11Z" role="3_1BAH">
                    <node concept="37vLTw" id="5vTxdEzz120" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vTxdEzz11U" resolve="e" />
                    </node>
                    <node concept="liA8E" id="5vTxdEzz121" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5vTxdEzACAH" role="TEbGg">
            <node concept="3clFbS" id="5vTxdEzACAI" role="TDEfX">
              <node concept="3xETmq" id="5vTxdEzADpI" role="3cqZAp">
                <node concept="3_1$Yv" id="5vTxdEzADpJ" role="3_9lra">
                  <node concept="2OqwBi" id="5vTxdEzADpK" role="3_1BAH">
                    <node concept="37vLTw" id="5vTxdEzADpL" role="2Oq$k0">
                      <ref role="3cqZAo" node="5vTxdEzACAJ" resolve="e" />
                    </node>
                    <node concept="liA8E" id="5vTxdEzADpM" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="5vTxdEzACAJ" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5vTxdEzACAK" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5vTxdEzz122" role="3clF46">
        <property role="TrG5h" value="testNodes" />
        <node concept="_YKpA" id="5vTxdEzz123" role="1tU5fm">
          <node concept="3uibUv" id="5vTxdEzz124" role="_ZDj9">
            <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5vTxdEzz128" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="7iQDiGjjSJB" role="1qtyYc">
      <property role="TrG5h" value="waitForRunToStart" />
      <node concept="3Tm6S6" id="7iQDiGjjSJC" role="1B3o_S" />
      <node concept="3cqZAl" id="7iQDiGjjSJD" role="3clF45" />
      <node concept="37vLTG" id="7iQDiGjjSJy" role="3clF46">
        <property role="TrG5h" value="lightState" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7iQDiGjjSJz" role="1tU5fm">
          <ref role="3uigEE" to="fnd7:1$FrpHy4ud$" resolve="TestLightRunState" />
        </node>
      </node>
      <node concept="3clFbS" id="7iQDiGjjSJh" role="3clF47">
        <node concept="3clFbF" id="7iQDiGjjSJi" role="3cqZAp">
          <node concept="2ShNRf" id="7iQDiGjjSJj" role="3clFbG">
            <node concept="YeOm9" id="7iQDiGjjSJk" role="2ShVmc">
              <node concept="1Y3b0j" id="7iQDiGjjSJl" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="9w4s:~WaitFor" resolve="WaitFor" />
                <ref role="37wK5l" to="9w4s:~WaitFor.&lt;init&gt;(int)" resolve="WaitFor" />
                <node concept="3Tm1VV" id="7iQDiGjjSJm" role="1B3o_S" />
                <node concept="3clFb_" id="7iQDiGjjSJn" role="jymVt">
                  <property role="1EzhhJ" value="false" />
                  <property role="TrG5h" value="condition" />
                  <property role="DiZV1" value="false" />
                  <property role="IEkAT" value="false" />
                  <node concept="3Tmbuc" id="7iQDiGjjSJo" role="1B3o_S" />
                  <node concept="10P_77" id="7iQDiGjjSJp" role="3clF45" />
                  <node concept="3clFbS" id="7iQDiGjjSJq" role="3clF47">
                    <node concept="3clFbF" id="7iQDiGjjSJr" role="3cqZAp">
                      <node concept="2OqwBi" id="7iQDiGjjSJs" role="3clFbG">
                        <node concept="37vLTw" id="7iQDiGjjSJ$" role="2Oq$k0">
                          <ref role="3cqZAo" node="7iQDiGjjSJy" resolve="lightState" />
                        </node>
                        <node concept="liA8E" id="7iQDiGjjSJu" role="2OqNvi">
                          <ref role="37wK5l" to="fnd7:1$FrpHy4ufc" resolve="isRunning" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="17qRlL" id="7iQDiGjjSJv" role="37wK5m">
                  <node concept="3cmrfG" id="7iQDiGjjSJw" role="3uHU7w">
                    <property role="3cmrfH" value="1000" />
                  </node>
                  <node concept="3cmrfG" id="7iQDiGjjSJx" role="3uHU7B">
                    <property role="3cmrfH" value="5" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1LZb2c" id="5vTxdEzz134" role="1SL9yI">
      <property role="TrG5h" value="terminate" />
      <node concept="3cqZAl" id="5vTxdEzz135" role="3clF45" />
      <node concept="3clFbS" id="5vTxdEzz136" role="3clF47">
        <node concept="3cpWs8" id="3AAOMCHbonD" role="3cqZAp">
          <node concept="3cpWsn" id="3AAOMCHbonE" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="H_c77" id="3AAOMCHbonC" role="1tU5fm" />
            <node concept="BaHAS" id="3AAOMCHbonF" role="33vP2m">
              <property role="BaGAP" value="tests" />
              <property role="BaHAW" value="jetbrains.mps.execution.impl.configurations.tests.commands.sandbox2" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sLbmmj1f6q" role="3cqZAp">
          <node concept="3cpWsn" id="5sLbmmj1f6t" role="3cpWs9">
            <property role="TrG5h" value="testName" />
            <node concept="17QB3L" id="5sLbmmj1f6u" role="1tU5fm" />
            <node concept="2OqwBi" id="5sLbmmj1f6v" role="33vP2m">
              <node concept="2YIFZM" id="5sLbmmj1f6w" role="2Oq$k0">
                <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
              </node>
              <node concept="liA8E" id="5sLbmmj1f6x" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
                <node concept="1bVj0M" id="5sLbmmj1f6y" role="37wK5m">
                  <node concept="3clFbS" id="5sLbmmj1f6z" role="1bW5cS">
                    <node concept="3cpWs6" id="5sLbmmj1f6$" role="3cqZAp">
                      <node concept="2OqwBi" id="5sLbmmj1f6_" role="3cqZAk">
                        <node concept="2JrnkZ" id="5sLbmmj1f6A" role="2Oq$k0">
                          <node concept="3B5_sB" id="5sLbmmj1f6B" role="2JrQYb">
                            <ref role="3B5MYn" to="n8jl:5vTxdEz_CuU" resolve="WaitingTestCase_Test" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5sLbmmj1f6C" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5vTxdEzz137" role="3cqZAp">
          <node concept="2OqwBi" id="5vTxdEzz138" role="3clFbG">
            <node concept="2WthIp" id="5vTxdEzz139" role="2Oq$k0" />
            <node concept="2XshWL" id="5vTxdEzz13a" role="2OqNvi">
              <ref role="2WH_rO" node="5vTxdEzz100" resolve="startAndTerminate" />
              <node concept="2YIFZM" id="3AAOMCHayob" role="2XxRq1">
                <ref role="37wK5l" to="v3va:3AAOMCH9U61" resolve="wrapTests" />
                <ref role="1Pybhc" to="v3va:7iQDiGjjGYW" resolve="JUnitUtil" />
                <node concept="37vLTw" id="3AAOMCHboQM" role="37wK5m">
                  <ref role="3cqZAo" node="3AAOMCHbonE" resolve="model" />
                </node>
                <node concept="2ShNRf" id="5vTxdEzz13e" role="37wK5m">
                  <node concept="2HTt$P" id="5vTxdEzz13f" role="2ShVmc">
                    <node concept="17QB3L" id="5vTxdEzz13g" role="2HTBi0" />
                    <node concept="37vLTw" id="5sLbmmj1hLX" role="2HTEbv">
                      <ref role="3cqZAo" node="5sLbmmj1f6t" resolve="testName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1lH9Xt" id="5XEoQWrnKY">
    <property role="TrG5h" value="JUnitInProcessUndo" />
    <property role="3OwPAg" value="true" />
    <property role="26Nn1l" value="true" />
    <node concept="2XrIbr" id="5XEoQWrnKZ" role="1qtyYc">
      <property role="TrG5h" value="getMyModel" />
      <node concept="H_c77" id="5XEoQWrnL0" role="3clF45" />
      <node concept="3clFbS" id="5XEoQWrnL1" role="3clF47">
        <node concept="3cpWs6" id="5XEoQWrnL2" role="3cqZAp">
          <node concept="BaHAS" id="5XEoQWrnL3" role="3cqZAk">
            <property role="BaGAP" value="tests" />
            <property role="BaHAW" value="jetbrains.mps.editorTest" />
            <property role="BaBD8" value="editorTest" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5XEoQWrnL4" role="1B3o_S" />
    </node>
    <node concept="2XrIbr" id="5XEoQWrnL5" role="1qtyYc">
      <property role="TrG5h" value="checkTests" />
      <node concept="3cqZAl" id="5XEoQWrnL6" role="3clF45" />
      <node concept="3clFbS" id="5XEoQWrnL7" role="3clF47">
        <node concept="SfApY" id="5XEoQWrnL8" role="3cqZAp">
          <node concept="3clFbS" id="5XEoQWrnL9" role="SfCbr">
            <node concept="3cpWs8" id="5XEoQWrnLa" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnLb" role="3cpWs9">
                <property role="TrG5h" value="testNodes" />
                <node concept="_YKpA" id="5XEoQWrnLc" role="1tU5fm">
                  <node concept="3uibUv" id="5XEoQWrnLd" role="_ZDj9">
                    <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5XEoQWrnLe" role="33vP2m">
                  <node concept="2OqwBi" id="5XEoQWrnLf" role="2Oq$k0">
                    <node concept="37vLTw" id="5XEoQWrnLg" role="2Oq$k0">
                      <ref role="3cqZAo" node="5XEoQWrnN7" resolve="success" />
                    </node>
                    <node concept="4Tj9Z" id="5XEoQWrnLh" role="2OqNvi">
                      <node concept="37vLTw" id="5XEoQWrnLi" role="576Qk">
                        <ref role="3cqZAo" node="5XEoQWrnNa" resolve="failure" />
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="5XEoQWrnLj" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XEoQWrnLk" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnLl" role="3cpWs9">
                <property role="TrG5h" value="runState" />
                <node concept="3uibUv" id="5XEoQWrnLm" role="1tU5fm">
                  <ref role="3uigEE" to="sfqd:56tRMpP_f5M" resolve="TestRunState" />
                </node>
                <node concept="2ShNRf" id="5XEoQWrnLn" role="33vP2m">
                  <node concept="1pGfFk" id="5XEoQWrnLo" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpP_fiW" resolve="TestRunState" />
                    <node concept="37vLTw" id="5XEoQWrnLp" role="37wK5m">
                      <ref role="3cqZAo" node="5XEoQWrnLb" resolve="testNodes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XEoQWrnLq" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnLr" role="3cpWs9">
                <property role="TrG5h" value="eventsDispatcher" />
                <node concept="3uibUv" id="5XEoQWrnLs" role="1tU5fm">
                  <ref role="3uigEE" to="sfqd:56tRMpPBy7G" resolve="TestEventsDispatcher" />
                </node>
                <node concept="2ShNRf" id="5XEoQWrnLt" role="33vP2m">
                  <node concept="1pGfFk" id="5XEoQWrnLu" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpPByaK" resolve="TestEventsDispatcher" />
                    <node concept="37vLTw" id="5XEoQWrnLv" role="37wK5m">
                      <ref role="3cqZAo" node="5XEoQWrnLl" resolve="runState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5XEoQWrnLw" role="3cqZAp" />
            <node concept="3cpWs8" id="5XEoQWrnLx" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnLy" role="3cpWs9">
                <property role="TrG5h" value="processExecutor" />
                <node concept="3uibUv" id="5XEoQWrnLz" role="1tU5fm">
                  <ref role="3uigEE" to="ic9i:1b7CZFPOU09" resolve="Executor" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5XEoQWrnL$" role="3cqZAp">
              <node concept="37vLTI" id="5XEoQWrnL_" role="3clFbG">
                <node concept="37vLTw" id="5XEoQWrnLA" role="37vLTJ">
                  <ref role="3cqZAo" node="5XEoQWrnLy" resolve="processExecutor" />
                </node>
                <node concept="2ShNRf" id="5XEoQWrnLB" role="37vLTx">
                  <node concept="1pGfFk" id="5XEoQWrnLC" role="2ShVmc">
                    <ref role="37wK5l" to="ic9i:5iYlssmVFgA" resolve="JUnitLightExecutor" />
                    <node concept="37vLTw" id="5XEoQWrnLD" role="37wK5m">
                      <ref role="3cqZAo" node="5XEoQWrnLb" resolve="testNodes" />
                    </node>
                    <node concept="37vLTw" id="5XEoQWrnLE" role="37wK5m">
                      <ref role="3cqZAo" node="5XEoQWrnLr" resolve="eventsDispatcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="34ab3g" id="5XEoQWrnLF" role="3cqZAp">
              <property role="35gtTG" value="info" />
              <node concept="Xl_RD" id="5XEoQWrnLG" role="34bqiv">
                <property role="Xl_RC" value="Starting in-process-execution" />
              </node>
            </node>
            <node concept="3cpWs8" id="5XEoQWrnLH" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnLI" role="3cpWs9">
                <property role="TrG5h" value="process" />
                <node concept="3uibUv" id="5XEoQWrnLJ" role="1tU5fm">
                  <ref role="3uigEE" to="uu3z:~ProcessHandler" resolve="ProcessHandler" />
                </node>
                <node concept="2OqwBi" id="5XEoQWrnLK" role="33vP2m">
                  <node concept="37vLTw" id="5XEoQWrnLL" role="2Oq$k0">
                    <ref role="3cqZAo" node="5XEoQWrnLy" resolve="processExecutor" />
                  </node>
                  <node concept="liA8E" id="5XEoQWrnLM" role="2OqNvi">
                    <ref role="37wK5l" to="ic9i:1b7CZFPOU0w" resolve="execute" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XEoQWrnLN" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnLO" role="3cpWs9">
                <property role="TrG5h" value="checkListener" />
                <node concept="3uibUv" id="5XEoQWrnLP" role="1tU5fm">
                  <ref role="3uigEE" to="7fn4:73dkH4Pmk_n" resolve="CheckTestStateListener" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5XEoQWrnLQ" role="3cqZAp">
              <node concept="2OqwBi" id="5XEoQWrnLR" role="3clFbG">
                <node concept="2YIFZM" id="5XEoQWrnLS" role="2Oq$k0">
                  <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                  <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
                </node>
                <node concept="liA8E" id="5XEoQWrnLT" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
                  <node concept="1bVj0M" id="5XEoQWrnLU" role="37wK5m">
                    <node concept="3clFbS" id="5XEoQWrnLV" role="1bW5cS">
                      <node concept="3clFbF" id="5XEoQWrnLW" role="3cqZAp">
                        <node concept="37vLTI" id="5XEoQWrnLX" role="3clFbG">
                          <node concept="2ShNRf" id="5XEoQWrnLY" role="37vLTx">
                            <node concept="1pGfFk" id="5XEoQWrnLZ" role="2ShVmc">
                              <ref role="37wK5l" to="7fn4:73dkH4Pmk_p" resolve="CheckTestStateListener" />
                              <node concept="37vLTw" id="5XEoQWrnM0" role="37wK5m">
                                <ref role="3cqZAo" node="5XEoQWrnN7" resolve="success" />
                              </node>
                              <node concept="37vLTw" id="5XEoQWrnM1" role="37wK5m">
                                <ref role="3cqZAo" node="5XEoQWrnNa" resolve="failure" />
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTw" id="5XEoQWrnM2" role="37vLTJ">
                            <ref role="3cqZAo" node="5XEoQWrnLO" resolve="checkListener" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5XEoQWrnM3" role="3cqZAp">
                        <node concept="2OqwBi" id="5XEoQWrnM4" role="3clFbG">
                          <node concept="37vLTw" id="5XEoQWrnM5" role="2Oq$k0">
                            <ref role="3cqZAo" node="5XEoQWrnLl" resolve="runState" />
                          </node>
                          <node concept="liA8E" id="5XEoQWrnM6" role="2OqNvi">
                            <ref role="37wK5l" to="sfqd:56tRMpP_fgY" resolve="addListener" />
                            <node concept="37vLTw" id="5XEoQWrnM7" role="37wK5m">
                              <ref role="3cqZAo" node="5XEoQWrnLO" resolve="checkListener" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5XEoQWrnM8" role="3cqZAp">
              <node concept="2YIFZM" id="5XEoQWrnM9" role="3clFbG">
                <ref role="37wK5l" to="lk2n:3oW7HLfqDla" resolve="redirect" />
                <ref role="1Pybhc" to="lk2n:3oW7HLfqDl9" resolve="OutputRedirector" />
                <node concept="37vLTw" id="5XEoQWrnMa" role="37wK5m">
                  <ref role="3cqZAo" node="5XEoQWrnLI" resolve="process" />
                </node>
                <node concept="2ShNRf" id="5XEoQWrnMb" role="37wK5m">
                  <node concept="1pGfFk" id="5XEoQWrnMc" role="2ShVmc">
                    <ref role="37wK5l" to="sfqd:56tRMpP_fmK" resolve="UnitTestProcessListener" />
                    <node concept="37vLTw" id="5XEoQWrnMd" role="37wK5m">
                      <ref role="3cqZAo" node="5XEoQWrnLr" resolve="eventsDispatcher" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5XEoQWrnMe" role="3cqZAp">
              <node concept="3cpWsn" id="5XEoQWrnMf" role="3cpWs9">
                <property role="TrG5h" value="exitcode" />
                <node concept="10Oyi0" id="5XEoQWrnMg" role="1tU5fm" />
                <node concept="2YIFZM" id="5XEoQWrnMh" role="33vP2m">
                  <ref role="1Pybhc" to="lk2n:3oW7HLfqDlu" resolve="ProcessHandlerBuilder" />
                  <ref role="37wK5l" to="lk2n:pdcevhyp45" resolve="startAndWait" />
                  <node concept="37vLTw" id="5XEoQWrnMi" role="37wK5m">
                    <ref role="3cqZAo" node="5XEoQWrnLI" resolve="process" />
                  </node>
                  <node concept="17qRlL" id="5XEoQWrnMj" role="37wK5m">
                    <node concept="3cmrfG" id="5XEoQWrnMk" role="3uHU7w">
                      <property role="3cmrfH" value="1000" />
                    </node>
                    <node concept="3cmrfG" id="5XEoQWrnMl" role="3uHU7B">
                      <property role="3cmrfH" value="30" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5XEoQWrnMm" role="3cqZAp">
              <node concept="3clFbS" id="5XEoQWrnMn" role="3clFbx">
                <node concept="3xETmq" id="5XEoQWrnMo" role="3cqZAp">
                  <node concept="3_1$Yv" id="5XEoQWrnMp" role="3_9lra">
                    <node concept="3cpWs3" id="5XEoQWrnMq" role="3_1BAH">
                      <node concept="37vLTw" id="5XEoQWrnMr" role="3uHU7w">
                        <ref role="3cqZAo" node="5XEoQWrnMf" resolve="exitcode" />
                      </node>
                      <node concept="3cpWs3" id="5XEoQWrnMs" role="3uHU7B">
                        <node concept="3cpWs3" id="5XEoQWrnMt" role="3uHU7B">
                          <node concept="Xl_RD" id="5XEoQWrnMu" role="3uHU7B">
                            <property role="Xl_RC" value="Exit code must be equal to " />
                          </node>
                          <node concept="2OqwBi" id="5XEoQWrnMv" role="3uHU7w">
                            <node concept="37vLTw" id="5XEoQWrnMw" role="2Oq$k0">
                              <ref role="3cqZAo" node="5XEoQWrnNa" resolve="failure" />
                            </node>
                            <node concept="34oBXx" id="5XEoQWrnMx" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="5XEoQWrnMy" role="3uHU7w">
                          <property role="Xl_RC" value=", but " />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="5XEoQWrnMz" role="3clFbw">
                <node concept="37vLTw" id="5XEoQWrnM$" role="3uHU7B">
                  <ref role="3cqZAo" node="5XEoQWrnMf" resolve="exitcode" />
                </node>
                <node concept="2OqwBi" id="5XEoQWrnM_" role="3uHU7w">
                  <node concept="37vLTw" id="5XEoQWrnMA" role="2Oq$k0">
                    <ref role="3cqZAo" node="5XEoQWrnNa" resolve="failure" />
                  </node>
                  <node concept="34oBXx" id="5XEoQWrnMB" role="2OqNvi" />
                </node>
              </node>
              <node concept="3eNFk2" id="5XEoQWrnMC" role="3eNLev">
                <node concept="3eOVzh" id="5XEoQWrnMD" role="3eO9$A">
                  <node concept="3cmrfG" id="5XEoQWrnME" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="5XEoQWrnMF" role="3uHU7B">
                    <ref role="3cqZAo" node="5XEoQWrnMf" resolve="exitcode" />
                  </node>
                </node>
                <node concept="3clFbS" id="5XEoQWrnMG" role="3eOfB_">
                  <node concept="3xETmq" id="5XEoQWrnMH" role="3cqZAp">
                    <node concept="3_1$Yv" id="5XEoQWrnMI" role="3_9lra">
                      <node concept="Xl_RD" id="5XEoQWrnMJ" role="3_1BAH">
                        <property role="Xl_RC" value="Process is running for too long" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5XEoQWrnMK" role="3cqZAp">
              <node concept="3clFbS" id="5XEoQWrnML" role="3clFbx">
                <node concept="3xETmq" id="5XEoQWrnMM" role="3cqZAp">
                  <node concept="3_1$Yv" id="5XEoQWrnMN" role="3_9lra">
                    <node concept="2OqwBi" id="5XEoQWrnMO" role="3_1BAH">
                      <node concept="37vLTw" id="5XEoQWrnMP" role="2Oq$k0">
                        <ref role="3cqZAo" node="5XEoQWrnLO" resolve="checkListener" />
                      </node>
                      <node concept="liA8E" id="5XEoQWrnMQ" role="2OqNvi">
                        <ref role="37wK5l" to="7fn4:73dkH4PmkFg" resolve="getMessages" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5XEoQWrnMR" role="3clFbw">
                <node concept="2OqwBi" id="5XEoQWrnMS" role="3fr31v">
                  <node concept="2OqwBi" id="5XEoQWrnMT" role="2Oq$k0">
                    <node concept="37vLTw" id="5XEoQWrnMU" role="2Oq$k0">
                      <ref role="3cqZAo" node="5XEoQWrnLO" resolve="checkListener" />
                    </node>
                    <node concept="liA8E" id="5XEoQWrnMV" role="2OqNvi">
                      <ref role="37wK5l" to="7fn4:73dkH4PmkFg" resolve="getMessages" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5XEoQWrnMW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                    <node concept="Xl_RD" id="5XEoQWrnMX" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5XEoQWrnMY" role="TEbGg">
            <node concept="3cpWsn" id="5XEoQWrnMZ" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5XEoQWrnN0" role="1tU5fm">
                <ref role="3uigEE" to="3v5a:~ExecutionException" resolve="ExecutionException" />
              </node>
            </node>
            <node concept="3clFbS" id="5XEoQWrnN1" role="TDEfX">
              <node concept="3xETmq" id="5XEoQWrnN2" role="3cqZAp">
                <node concept="3_1$Yv" id="5XEoQWrnN3" role="3_9lra">
                  <node concept="2OqwBi" id="5XEoQWrnN4" role="3_1BAH">
                    <node concept="37vLTw" id="5XEoQWrnN5" role="2Oq$k0">
                      <ref role="3cqZAo" node="5XEoQWrnMZ" resolve="e" />
                    </node>
                    <node concept="liA8E" id="5XEoQWrnN6" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5XEoQWrnN7" role="3clF46">
        <property role="TrG5h" value="success" />
        <node concept="_YKpA" id="5XEoQWrnN8" role="1tU5fm">
          <node concept="3uibUv" id="5XEoQWrnN9" role="_ZDj9">
            <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5XEoQWrnNa" role="3clF46">
        <property role="TrG5h" value="failure" />
        <node concept="_YKpA" id="5XEoQWrnNb" role="1tU5fm">
          <node concept="3uibUv" id="5XEoQWrnNc" role="_ZDj9">
            <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5XEoQWrnNd" role="1B3o_S" />
    </node>
    <node concept="1LZb2c" id="5XEoQWrnNe" role="1SL9yI">
      <property role="TrG5h" value="startTrickyTestCase" />
      <node concept="3cqZAl" id="5XEoQWrnNf" role="3clF45" />
      <node concept="3clFbS" id="5XEoQWrnNg" role="3clF47">
        <node concept="3cpWs8" id="5sLbmmj1jg5" role="3cqZAp">
          <node concept="3cpWsn" id="5sLbmmj1jg8" role="3cpWs9">
            <property role="TrG5h" value="testName" />
            <node concept="17QB3L" id="5sLbmmj1jg9" role="1tU5fm" />
            <node concept="2OqwBi" id="5sLbmmj1jga" role="33vP2m">
              <node concept="2YIFZM" id="5sLbmmj1jgb" role="2Oq$k0">
                <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
                <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
              </node>
              <node concept="liA8E" id="5sLbmmj1jgc" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
                <node concept="1bVj0M" id="5sLbmmj1jgd" role="37wK5m">
                  <node concept="3clFbS" id="5sLbmmj1jge" role="1bW5cS">
                    <node concept="3cpWs6" id="5sLbmmj1jgf" role="3cqZAp">
                      <node concept="2OqwBi" id="5sLbmmj1jgg" role="3cqZAk">
                        <node concept="2JrnkZ" id="5sLbmmj1jgh" role="2Oq$k0">
                          <node concept="3B5_sB" id="5sLbmmj1jgi" role="2JrQYb">
                            <ref role="3B5MYn" to="ryl9:3BRJPwFQ4xK" resolve="TrickyUndoTest" />
                          </node>
                        </node>
                        <node concept="liA8E" id="5sLbmmj1jgj" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5XEoQWrnNh" role="3cqZAp">
          <node concept="2OqwBi" id="5XEoQWrnNi" role="3clFbG">
            <node concept="2WthIp" id="5XEoQWrnNj" role="2Oq$k0" />
            <node concept="2XshWL" id="5XEoQWrnNk" role="2OqNvi">
              <ref role="2WH_rO" node="5XEoQWrnL5" resolve="checkTests" />
              <node concept="2YIFZM" id="5XEoQWrnNl" role="2XxRq1">
                <ref role="37wK5l" to="v3va:3AAOMCH9U61" resolve="wrapTests" />
                <ref role="1Pybhc" to="v3va:7iQDiGjjGYW" resolve="JUnitUtil" />
                <node concept="2OqwBi" id="5XEoQWrnNm" role="37wK5m">
                  <node concept="2WthIp" id="5XEoQWrnNn" role="2Oq$k0" />
                  <node concept="2XshWL" id="5XEoQWrnNo" role="2OqNvi">
                    <ref role="2WH_rO" node="5XEoQWrnKZ" resolve="getMyModel" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5XEoQWrnNp" role="37wK5m">
                  <node concept="2HTt$P" id="5XEoQWrnNq" role="2ShVmc">
                    <node concept="17QB3L" id="5XEoQWrnNr" role="2HTBi0" />
                    <node concept="37vLTw" id="5sLbmmj1nsZ" role="2HTEbv">
                      <ref role="3cqZAo" node="5sLbmmj1jg8" resolve="testName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ShNRf" id="5XEoQWrnNt" role="2XxRq1">
                <node concept="Tc6Ow" id="5XEoQWrnNu" role="2ShVmc">
                  <node concept="3uibUv" id="5XEoQWrnNv" role="HW$YZ">
                    <ref role="3uigEE" to="sfqd:56tRMpP_ej7" resolve="ITestNodeWrapper" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

