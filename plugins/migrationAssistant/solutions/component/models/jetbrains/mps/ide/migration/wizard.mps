<?xml version="1.0" encoding="UTF-8"?>
<model ref="a5b1c28d-abeb-49a6-a58c-559039616d64/r:49062720-8530-4489-916a-fdd3a02a7b82(jetbrains.mps.migration.component/jetbrains.mps.ide.migration.wizard)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="-1" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="uxeh" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.wizard(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="bim2" ref="a5b1c28d-abeb-49a6-a58c-559039616d64/r:a9597bdf-0806-4a79-8ace-88240c6b9878(jetbrains.mps.migration.component/jetbrains.mps.ide.migration)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="ewej" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.font(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="l7us" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.icons(MPS.Platform/)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="nd9s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.wm.impl.status(MPS.IDEA/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="bdll" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.migration.global(MPS.Core/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="ot7" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress.util(MPS.IDEA/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="t99v" ref="r:5c426f30-a9c9-463b-90a5-2fae21a10696(jetbrains.mps.ide.migration.check)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="umn7" ref="r:c66fc409-a644-4946-bb27-007f5d00a613(jetbrains.mps.lang.migration.runtime.util)" />
    <import index="dwmc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.uiDesigner.core(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1224500790866" name="jetbrains.mps.baseLanguage.structure.BitwiseOrExpression" flags="nn" index="pVOtf" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
      </concept>
      <concept id="1224848483129" name="jetbrains.mps.baseLanguage.structure.IBLDeprecatable" flags="ng" index="IEa8$">
        <property id="1224848525476" name="isDeprecated" index="IEkAT" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5858074156537516430" name="jetbrains.mps.baseLanguage.javadoc.structure.ReturnBlockDocTag" flags="ng" index="x79VA">
        <property id="5858074156537516431" name="text" index="x79VB" />
      </concept>
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
        <child id="5383422241790532083" name="tags" index="3nqlJM" />
      </concept>
      <concept id="5349172909345532724" name="jetbrains.mps.baseLanguage.javadoc.structure.MethodDocComment" flags="ng" index="P$JXv" />
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167228628751" name="hasException" index="34fQS0" />
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
        <child id="1167227561449" name="exception" index="34bMjA" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172664342967" name="jetbrains.mps.baseLanguage.collections.structure.TakeOperation" flags="nn" index="8ftyA">
        <child id="1172664372046" name="elementsToTake" index="8f$Dv" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1201792049884" name="jetbrains.mps.baseLanguage.collections.structure.TranslateOperation" flags="nn" index="3goQfb" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="312cEu" id="5SsFeroaapp">
    <property role="TrG5h" value="MigrationsListRenderer" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="5SsFeroaapr" role="1B3o_S" />
    <node concept="3uibUv" id="5SsFeroaaps" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~DefaultListCellRenderer" resolve="DefaultListCellRenderer" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaapt" role="jymVt">
      <property role="TrG5h" value="CHECK_ICON" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaapu" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="10M0yZ" id="5SsFerobSNT" role="33vP2m">
        <ref role="1PxDUh" to="z2i8:~AllIcons$Actions" resolve="AllIcons.Actions" />
        <ref role="3cqZAo" to="z2i8:~AllIcons$Actions.Checked" resolve="Checked" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaapw" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaapx" role="jymVt">
      <property role="TrG5h" value="ERROR_ICON" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaapy" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="10M0yZ" id="5SsFerobStG" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$Small" resolve="MPSIcons.Small" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$Small.Error" resolve="Error" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaap$" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaap_" role="jymVt">
      <property role="TrG5h" value="EMPTY_ICON" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaapA" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="2ShNRf" id="5SsFeroaapB" role="33vP2m">
        <node concept="YeOm9" id="5SsFeroaapC" role="2ShVmc">
          <node concept="1Y3b0j" id="5SsFeroaapD" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <property role="1sVAO0" value="false" />
            <property role="1EXbeo" value="false" />
            <ref role="1Y3XeK" to="dxuu:~Icon" resolve="Icon" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="5SsFeroaapE" role="1B3o_S" />
            <node concept="3clFb_" id="5SsFeroaapF" role="jymVt">
              <property role="TrG5h" value="paintIcon" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="2AHcQZ" id="5SsFeroaapG" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="37vLTG" id="5SsFeroaapH" role="3clF46">
                <property role="TrG5h" value="component" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="5SsFeroaapI" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
                </node>
              </node>
              <node concept="37vLTG" id="5SsFeroaapJ" role="3clF46">
                <property role="TrG5h" value="graphics" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="5SsFeroaapK" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
                </node>
              </node>
              <node concept="37vLTG" id="5SsFeroaapL" role="3clF46">
                <property role="TrG5h" value="i" />
                <property role="3TUv4t" value="false" />
                <node concept="10Oyi0" id="5SsFeroaapM" role="1tU5fm" />
              </node>
              <node concept="37vLTG" id="5SsFeroaapN" role="3clF46">
                <property role="TrG5h" value="i1" />
                <property role="3TUv4t" value="false" />
                <node concept="10Oyi0" id="5SsFeroaapO" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="5SsFeroaapP" role="3clF47" />
              <node concept="3Tm1VV" id="5SsFeroaapQ" role="1B3o_S" />
              <node concept="3cqZAl" id="5SsFeroaapR" role="3clF45" />
            </node>
            <node concept="3clFb_" id="5SsFeroaapS" role="jymVt">
              <property role="TrG5h" value="getIconWidth" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="2AHcQZ" id="5SsFeroaapT" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="3clFbS" id="5SsFeroaapU" role="3clF47">
                <node concept="3cpWs6" id="5SsFeroaapV" role="3cqZAp">
                  <node concept="3cmrfG" id="5SsFeroaapW" role="3cqZAk">
                    <property role="3cmrfH" value="12" />
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="5SsFeroaapX" role="1B3o_S" />
              <node concept="10Oyi0" id="5SsFeroaapY" role="3clF45" />
            </node>
            <node concept="3clFb_" id="5SsFeroaapZ" role="jymVt">
              <property role="TrG5h" value="getIconHeight" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="2AHcQZ" id="5SsFeroaaq0" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="3clFbS" id="5SsFeroaaq1" role="3clF47">
                <node concept="3cpWs6" id="5SsFeroaaq2" role="3cqZAp">
                  <node concept="3cmrfG" id="5SsFeroaaq3" role="3cqZAk">
                    <property role="3cmrfH" value="12" />
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="5SsFeroaaq4" role="1B3o_S" />
              <node concept="10Oyi0" id="5SsFeroaaq5" role="3clF45" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaq6" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaaq7" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myErrorFont" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaaq9" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaqa" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaaqb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myOriginalFont" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaaqd" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaqe" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaaqf" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myMarked" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5SsFeroaaqh" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3qTvmN" id="5SsFeroaaqi" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaqj" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaaqk" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myFailed" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5SsFeroaaqm" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3qTvmN" id="5SsFeroaaqn" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaqo" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaaqp" role="jymVt">
      <property role="TrG5h" value="ACTION_PRESENTATION" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5SsFeroaaqq" role="1tU5fm">
        <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
      </node>
      <node concept="2YIFZM" id="5SsFerobSgN" role="33vP2m">
        <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
        <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String):java.util.regex.Pattern" resolve="compile" />
        <node concept="Xl_RD" id="5SsFerobSgO" role="37wK5m">
          <property role="Xl_RC" value="(.*).*\\(.*\\)" />
        </node>
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaqt" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5SsFeroaaqu" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5SsFeroaaqv" role="3clF45" />
      <node concept="37vLTG" id="5SsFeroaaqw" role="3clF46">
        <property role="TrG5h" value="marked" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaaqx" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3qTvmN" id="5SsFeroaaqy" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="5SsFeroaaqz" role="3clF46">
        <property role="TrG5h" value="failed" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaaq$" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="3qTvmN" id="5SsFeroaaq_" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="5SsFeroaaqA" role="3clF47">
        <node concept="3clFbF" id="5SsFeroaaqB" role="3cqZAp">
          <node concept="37vLTI" id="5SsFeroaaqC" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroaaqD" role="37vLTJ">
              <ref role="3cqZAo" node="5SsFeroaaqf" resolve="myMarked" />
            </node>
            <node concept="37vLTw" id="5SsFeroaaqE" role="37vLTx">
              <ref role="3cqZAo" node="5SsFeroaaqw" resolve="marked" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaaqF" role="3cqZAp">
          <node concept="37vLTI" id="5SsFeroaaqG" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroaaqH" role="37vLTJ">
              <ref role="3cqZAo" node="5SsFeroaaqk" resolve="myFailed" />
            </node>
            <node concept="37vLTw" id="5SsFeroaaqI" role="37vLTx">
              <ref role="3cqZAo" node="5SsFeroaaqz" resolve="failed" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaaqJ" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="5SsFeroaaqK" role="jymVt">
      <property role="TrG5h" value="setText" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaaqL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="5SsFeroaaqM" role="3clF46">
        <property role="TrG5h" value="text" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaaqN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5SsFeroaaqO" role="3clF47">
        <node concept="3cpWs8" id="5SsFeroaaqQ" role="3cqZAp">
          <node concept="3cpWsn" id="5SsFeroaaqP" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="matcher" />
            <node concept="3uibUv" id="5SsFeroaaqR" role="1tU5fm">
              <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
            </node>
            <node concept="2OqwBi" id="5SsFerobR$h" role="33vP2m">
              <node concept="37vLTw" id="5SsFerobR$g" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaaqp" resolve="ACTION_PRESENTATION" />
              </node>
              <node concept="liA8E" id="5SsFerobR$i" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence):java.util.regex.Matcher" resolve="matcher" />
                <node concept="37vLTw" id="5SsFerobR$j" role="37wK5m">
                  <ref role="3cqZAo" node="5SsFeroaaqM" resolve="text" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5SsFeroaaqU" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFerobSZq" role="3clFbw">
            <node concept="37vLTw" id="5SsFerobSZp" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaaqP" resolve="matcher" />
            </node>
            <node concept="liA8E" id="5SsFerobSZr" role="2OqNvi">
              <ref role="37wK5l" to="ni5j:~Matcher.matches():boolean" resolve="matches" />
            </node>
          </node>
          <node concept="3clFbS" id="5SsFeroaaqX" role="3clFbx">
            <node concept="3clFbF" id="5SsFeroaaqY" role="3cqZAp">
              <node concept="37vLTI" id="5SsFeroaaqZ" role="3clFbG">
                <node concept="37vLTw" id="5SsFeroaar0" role="37vLTJ">
                  <ref role="3cqZAo" node="5SsFeroaaqM" resolve="text" />
                </node>
                <node concept="2OqwBi" id="5SsFerobSMN" role="37vLTx">
                  <node concept="37vLTw" id="5SsFerobSMM" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SsFeroaaqP" resolve="matcher" />
                  </node>
                  <node concept="liA8E" id="5SsFerobSMO" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                    <node concept="3cmrfG" id="5SsFerobSMP" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaar3" role="3cqZAp">
          <node concept="3nyPlj" id="5SsFeroaar4" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String):void" resolve="setText" />
            <node concept="37vLTw" id="5SsFeroaar5" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaaqM" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaar6" role="1B3o_S" />
      <node concept="3cqZAl" id="5SsFeroaar7" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5SsFeroaar8" role="jymVt">
      <property role="TrG5h" value="getListCellRendererComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaar9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="5SsFeroaara" role="3clF46">
        <property role="TrG5h" value="list" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaarb" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JList" resolve="JList" />
        </node>
      </node>
      <node concept="37vLTG" id="5SsFeroaarc" role="3clF46">
        <property role="TrG5h" value="value" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaard" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="5SsFeroaare" role="3clF46">
        <property role="TrG5h" value="index" />
        <property role="3TUv4t" value="false" />
        <node concept="10Oyi0" id="5SsFeroaarf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5SsFeroaarg" role="3clF46">
        <property role="TrG5h" value="iss" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="5SsFeroaarh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5SsFeroaari" role="3clF46">
        <property role="TrG5h" value="chf" />
        <property role="3TUv4t" value="false" />
        <node concept="10P_77" id="5SsFeroaarj" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5SsFeroaark" role="3clF47">
        <node concept="3clFbF" id="5SsFeroaarl" role="3cqZAp">
          <node concept="3nyPlj" id="5SsFeroaarm" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~DefaultListCellRenderer.getListCellRendererComponent(javax.swing.JList,java.lang.Object,int,boolean,boolean):java.awt.Component" resolve="getListCellRendererComponent" />
            <node concept="37vLTw" id="5SsFeroaarn" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaara" resolve="list" />
            </node>
            <node concept="37vLTw" id="5SsFeroaaro" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaarc" resolve="value" />
            </node>
            <node concept="37vLTw" id="5SsFeroaarp" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaare" resolve="index" />
            </node>
            <node concept="37vLTw" id="5SsFeroaarq" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaarg" resolve="iss" />
            </node>
            <node concept="37vLTw" id="5SsFeroaarr" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaari" resolve="chf" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5SsFeroaars" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFerobRBs" role="3clFbw">
            <node concept="37vLTw" id="5SsFerobRBr" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaaqf" resolve="myMarked" />
            </node>
            <node concept="liA8E" id="5SsFerobRBt" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
              <node concept="37vLTw" id="5SsFerobRBu" role="37wK5m">
                <ref role="3cqZAo" node="5SsFeroaarc" resolve="value" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="5SsFeroaarE" role="9aQIa">
            <node concept="2OqwBi" id="5SsFerobSnd" role="3clFbw">
              <node concept="37vLTw" id="5SsFerobSnc" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaaqk" resolve="myFailed" />
              </node>
              <node concept="liA8E" id="5SsFerobSne" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
                <node concept="37vLTw" id="5SsFerobSnf" role="37wK5m">
                  <ref role="3cqZAo" node="5SsFeroaarc" resolve="value" />
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="5SsFeroaarS" role="9aQIa">
              <node concept="3clFbS" id="5SsFeroaarT" role="9aQI4">
                <node concept="3clFbF" id="5SsFeroaarU" role="3cqZAp">
                  <node concept="1rXfSq" id="5SsFeroaarV" role="3clFbG">
                    <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon):void" resolve="setIcon" />
                    <node concept="37vLTw" id="5SsFeroaarW" role="37wK5m">
                      <ref role="3cqZAo" node="5SsFeroaap_" resolve="EMPTY_ICON" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5SsFeroaarX" role="3cqZAp">
                  <node concept="1rXfSq" id="5SsFeroaarY" role="3clFbG">
                    <ref role="37wK5l" to="dxuu:~JComponent.setEnabled(boolean):void" resolve="setEnabled" />
                    <node concept="3clFbT" id="5SsFeroaarZ" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5SsFeroaas0" role="3cqZAp">
                  <node concept="1rXfSq" id="5SsFeroaas1" role="3clFbG">
                    <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font):void" resolve="setFont" />
                    <node concept="1rXfSq" id="5SsFeroaas2" role="37wK5m">
                      <ref role="37wK5l" node="5SsFeroaasD" resolve="getOriginalFont" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5SsFeroaarI" role="3clFbx">
              <node concept="3clFbF" id="5SsFeroaarJ" role="3cqZAp">
                <node concept="1rXfSq" id="5SsFeroaarK" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon):void" resolve="setIcon" />
                  <node concept="37vLTw" id="5SsFeroaarL" role="37wK5m">
                    <ref role="3cqZAo" node="5SsFeroaapx" resolve="ERROR_ICON" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5SsFeroaarM" role="3cqZAp">
                <node concept="1rXfSq" id="5SsFeroaarN" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~JComponent.setEnabled(boolean):void" resolve="setEnabled" />
                  <node concept="3clFbT" id="5SsFeroaarO" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5SsFeroaarP" role="3cqZAp">
                <node concept="1rXfSq" id="5SsFeroaarQ" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font):void" resolve="setFont" />
                  <node concept="1rXfSq" id="5SsFeroaarR" role="37wK5m">
                    <ref role="37wK5l" node="5SsFeroaas7" resolve="getErrorFont" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5SsFeroaarw" role="3clFbx">
            <node concept="3clFbF" id="5SsFeroaarx" role="3cqZAp">
              <node concept="1rXfSq" id="5SsFeroaary" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~JLabel.setIcon(javax.swing.Icon):void" resolve="setIcon" />
                <node concept="37vLTw" id="5SsFeroaarz" role="37wK5m">
                  <ref role="3cqZAo" node="5SsFeroaapt" resolve="CHECK_ICON" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SsFeroaar$" role="3cqZAp">
              <node concept="1rXfSq" id="5SsFeroaar_" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~JComponent.setEnabled(boolean):void" resolve="setEnabled" />
                <node concept="3clFbT" id="5SsFeroaarA" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SsFeroaarB" role="3cqZAp">
              <node concept="1rXfSq" id="5SsFeroaarC" role="3clFbG">
                <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font):void" resolve="setFont" />
                <node concept="1rXfSq" id="5SsFeroaarD" role="37wK5m">
                  <ref role="37wK5l" node="5SsFeroaasD" resolve="getOriginalFont" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5SsFeroaas3" role="3cqZAp">
          <node concept="Xjq3P" id="5SsFeroaas4" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaas5" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaas6" role="3clF45">
        <ref role="3uigEE" to="z60i:~Component" resolve="Component" />
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaas7" role="jymVt">
      <property role="TrG5h" value="getErrorFont" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5SsFeroaas8" role="3clF47">
        <node concept="3clFbJ" id="5SsFeroaas9" role="3cqZAp">
          <node concept="3clFbC" id="5SsFeroaasa" role="3clFbw">
            <node concept="37vLTw" id="5SsFeroaasb" role="3uHU7B">
              <ref role="3cqZAo" node="5SsFeroaaq7" resolve="myErrorFont" />
            </node>
            <node concept="10Nm6u" id="5SsFeroaasc" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5SsFeroaase" role="3clFbx">
            <node concept="3cpWs8" id="5SsFeroaasg" role="3cqZAp">
              <node concept="3cpWsn" id="5SsFeroaasf" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="attributes" />
                <node concept="3uibUv" id="5SsFeroaash" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
                  <node concept="3uibUv" id="5SsFeroaasi" role="11_B2D">
                    <ref role="3uigEE" to="ewej:~TextAttribute" resolve="TextAttribute" />
                  </node>
                  <node concept="3uibUv" id="5SsFeroaasj" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5SsFerobSDb" role="33vP2m">
                  <node concept="1pGfFk" id="5SsFerobSMA" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;(java.util.Map)" resolve="HashMap" />
                    <node concept="2OqwBi" id="5SsFerobSMB" role="37wK5m">
                      <node concept="1rXfSq" id="5SsFerobSMC" role="2Oq$k0">
                        <ref role="37wK5l" to="z60i:~Component.getFont():java.awt.Font" resolve="getFont" />
                      </node>
                      <node concept="liA8E" id="5SsFerobSMD" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Font.getAttributes():java.util.Map" resolve="getAttributes" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5SsFeroaaso" role="1pMfVU">
                      <ref role="3uigEE" to="ewej:~TextAttribute" resolve="TextAttribute" />
                    </node>
                    <node concept="3uibUv" id="5SsFeroaasp" role="1pMfVU">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SsFeroaasq" role="3cqZAp">
              <node concept="2OqwBi" id="5SsFerobT2n" role="3clFbG">
                <node concept="37vLTw" id="5SsFerobT2m" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SsFeroaasf" resolve="attributes" />
                </node>
                <node concept="liA8E" id="5SsFerobT2o" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="10M0yZ" id="5SsFerobT2p" role="37wK5m">
                    <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
                    <ref role="3cqZAo" to="ewej:~TextAttribute.FOREGROUND" resolve="FOREGROUND" />
                  </node>
                  <node concept="10M0yZ" id="5SsFerobT2y" role="37wK5m">
                    <ref role="1PxDUh" to="z60i:~Color" resolve="Color" />
                    <ref role="3cqZAo" to="z60i:~Color.RED" resolve="RED" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5SsFeroaasu" role="3cqZAp">
              <node concept="37vLTI" id="5SsFeroaasv" role="3clFbG">
                <node concept="37vLTw" id="5SsFeroaasw" role="37vLTJ">
                  <ref role="3cqZAo" node="5SsFeroaaq7" resolve="myErrorFont" />
                </node>
                <node concept="2OqwBi" id="5SsFeroaasx" role="37vLTx">
                  <node concept="1rXfSq" id="5SsFeroaasy" role="2Oq$k0">
                    <ref role="37wK5l" node="5SsFeroaasD" resolve="getOriginalFont" />
                  </node>
                  <node concept="liA8E" id="5SsFeroaasz" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Font.deriveFont(java.util.Map):java.awt.Font" resolve="deriveFont" />
                    <node concept="37vLTw" id="5SsFeroaas$" role="37wK5m">
                      <ref role="3cqZAo" node="5SsFeroaasf" resolve="attributes" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5SsFeroaas_" role="3cqZAp">
          <node concept="37vLTw" id="5SsFeroaasA" role="3cqZAk">
            <ref role="3cqZAo" node="5SsFeroaaq7" resolve="myErrorFont" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SsFeroaasB" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaasC" role="3clF45">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaasD" role="jymVt">
      <property role="TrG5h" value="getOriginalFont" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5SsFeroaasE" role="3clF47">
        <node concept="3clFbJ" id="5SsFeroaasF" role="3cqZAp">
          <node concept="3clFbC" id="5SsFeroaasG" role="3clFbw">
            <node concept="37vLTw" id="5SsFeroaasH" role="3uHU7B">
              <ref role="3cqZAo" node="5SsFeroaaqb" resolve="myOriginalFont" />
            </node>
            <node concept="10Nm6u" id="5SsFeroaasI" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="5SsFeroaasK" role="3clFbx">
            <node concept="3clFbF" id="5SsFeroaasL" role="3cqZAp">
              <node concept="37vLTI" id="5SsFeroaasM" role="3clFbG">
                <node concept="2OqwBi" id="5SsFeroaasN" role="37vLTJ">
                  <node concept="Xjq3P" id="5SsFeroaasO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5SsFeroaasP" role="2OqNvi">
                    <ref role="2Oxat5" node="5SsFeroaaqb" resolve="myOriginalFont" />
                  </node>
                </node>
                <node concept="1rXfSq" id="5SsFeroaasQ" role="37vLTx">
                  <ref role="37wK5l" to="z60i:~Component.getFont():java.awt.Font" resolve="getFont" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5SsFeroaasR" role="3cqZAp">
          <node concept="37vLTw" id="5SsFeroaasS" role="3cqZAk">
            <ref role="3cqZAo" node="5SsFeroaaqb" resolve="myOriginalFont" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SsFeroaasT" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaasU" role="3clF45">
        <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5SsFeroaavG">
    <property role="TrG5h" value="MigrationsProgressWizardStep" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="5SsFeroaavI" role="1B3o_S" />
    <node concept="3uibUv" id="5SsFeroaavJ" role="1zkMxy">
      <ref role="3uigEE" node="5SsFeroaacg" resolve="MigrationWizardStep" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaavK" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5SsFeroaavL" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="5SsFeroaavM" role="33vP2m">
        <property role="Xl_RC" value="progress" />
      </node>
      <node concept="3Tm1VV" id="5SsFeroaavN" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaavX" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myManager" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaavZ" role="1tU5fm">
        <ref role="3uigEE" to="bim2:5SsFeroaabl" resolve="MigrationManager" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaw0" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaaw1" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myList" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaaw3" role="1tU5fm">
        <ref role="3uigEE" to="qqrq:~JBList" resolve="JBList" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaaw4" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7rK8qWGEHl$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myTask" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7rK8qWGEFq9" role="1B3o_S" />
      <node concept="3uibUv" id="7rK8qWGEHfe" role="1tU5fm">
        <ref role="3uigEE" to="xygl:~Task" resolve="Task" />
      </node>
    </node>
    <node concept="312cEg" id="7rK8qWGDnm$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProgress" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="7rK8qWGDlUB" role="1B3o_S" />
      <node concept="3uibUv" id="7rK8qWGDK7a" role="1tU5fm">
        <ref role="3uigEE" to="nd9s:~InlineProgressIndicator" resolve="InlineProgressIndicator" />
      </node>
    </node>
    <node concept="312cEg" id="5SsFeroaaw5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myExecuted" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaaw7" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5SsFeroaaw8" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2ShNRf" id="5SsFerobps8" role="33vP2m">
        <node concept="1pGfFk" id="5SsFerobps9" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="5SsFeroaawa" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SsFeroaawb" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2htE_P_MyAB" role="jymVt">
      <property role="TrG5h" value="myErrorContainer" />
      <node concept="3Tm6S6" id="2htE_P_MyAC" role="1B3o_S" />
      <node concept="3uibUv" id="2htE_P_PFkt" role="1tU5fm">
        <ref role="3uigEE" node="2htE_P_Pzio" resolve="MigrationErrorContainer" />
      </node>
    </node>
    <node concept="312cEg" id="2htE_P_OuKG" role="jymVt">
      <property role="34CwA1" value="true" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myIsComplete" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2htE_P_OtsY" role="1B3o_S" />
      <node concept="10P_77" id="2htE_P_OuFb" role="1tU5fm" />
      <node concept="3clFbT" id="2htE_P_Ow4q" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="25gV4LsymX6" role="jymVt" />
    <node concept="3clFbW" id="5SsFeroaawc" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5SsFeroaawd" role="3clF45" />
      <node concept="37vLTG" id="5SsFeroaawe" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaawf" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5SsFeroaawg" role="3clF46">
        <property role="TrG5h" value="manager" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaawh" role="1tU5fm">
          <ref role="3uigEE" to="bim2:5SsFeroaabl" resolve="MigrationManager" />
        </node>
      </node>
      <node concept="37vLTG" id="2htE_P_Mysn" role="3clF46">
        <property role="TrG5h" value="errorContainer" />
        <node concept="3uibUv" id="2htE_P_PCfJ" role="1tU5fm">
          <ref role="3uigEE" node="2htE_P_Pzio" resolve="MigrationErrorContainer" />
        </node>
      </node>
      <node concept="3clFbS" id="5SsFeroaawl" role="3clF47">
        <node concept="XkiVB" id="5SsFeroblQD" role="3cqZAp">
          <ref role="37wK5l" node="5SsFeroaac$" resolve="MigrationWizardStep" />
          <node concept="37vLTw" id="5SsFeroblQE" role="37wK5m">
            <ref role="3cqZAo" node="5SsFeroaawe" resolve="project" />
          </node>
          <node concept="Xl_RD" id="5SsFeroblQF" role="37wK5m">
            <property role="Xl_RC" value="Migration In Progress" />
          </node>
          <node concept="37vLTw" id="5SsFeroblQG" role="37wK5m">
            <ref role="3cqZAo" node="5SsFeroaavK" resolve="ID" />
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaawm" role="3cqZAp">
          <node concept="37vLTI" id="5SsFeroaawn" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroaawo" role="37vLTJ">
              <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
            </node>
            <node concept="37vLTw" id="5SsFeroaawp" role="37vLTx">
              <ref role="3cqZAo" node="5SsFeroaawg" resolve="manager" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2htE_P_MyAF" role="3cqZAp">
          <node concept="37vLTI" id="2htE_P_MyAH" role="3clFbG">
            <node concept="37vLTw" id="2htE_P_MyAP" role="37vLTx">
              <ref role="3cqZAo" node="2htE_P_Mysn" resolve="errorContainer" />
            </node>
            <node concept="37vLTw" id="2htE_P_MAIq" role="37vLTJ">
              <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rK8qWGEVf8" role="3cqZAp">
          <node concept="37vLTI" id="7rK8qWGEVf9" role="3clFbG">
            <node concept="2ShNRf" id="7rK8qWGEVfa" role="37vLTx">
              <node concept="YeOm9" id="7rK8qWGEVfb" role="2ShVmc">
                <node concept="1Y3b0j" id="7rK8qWGEVfc" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="xygl:~Task$Modal" resolve="Task.Modal" />
                  <ref role="37wK5l" to="xygl:~Task$Modal.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String,boolean)" resolve="Task.Modal" />
                  <node concept="3Tm1VV" id="7rK8qWGEVfd" role="1B3o_S" />
                  <node concept="3clFb_" id="7rK8qWGEVfe" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="run" />
                    <property role="DiZV1" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="3Tm1VV" id="7rK8qWGEVff" role="1B3o_S" />
                    <node concept="3cqZAl" id="7rK8qWGEVfg" role="3clF45" />
                    <node concept="37vLTG" id="7rK8qWGEVfh" role="3clF46">
                      <property role="TrG5h" value="progress" />
                      <node concept="3uibUv" id="7rK8qWGEVfi" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                      <node concept="2AHcQZ" id="7rK8qWGEVfj" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7rK8qWGEVfk" role="3clF47">
                      <node concept="3clFbF" id="5SsFeroaaxD" role="3cqZAp">
                        <node concept="2OqwBi" id="5SsFeroaaxE" role="3clFbG">
                          <node concept="2YIFZM" id="5SsFeroblPL" role="2Oq$k0">
                            <ref role="1Pybhc" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                            <ref role="37wK5l" to="pa15:~PersistenceRegistry.getInstance():jetbrains.mps.persistence.PersistenceRegistry" resolve="getInstance" />
                          </node>
                          <node concept="liA8E" id="5SsFeroaaxG" role="2OqNvi">
                            <ref role="37wK5l" to="pa15:~PersistenceRegistry.disableFastFindUsages():void" resolve="disableFastFindUsages" />
                          </node>
                        </node>
                      </node>
                      <node concept="2GUZhq" id="2htE_P_NHLz" role="3cqZAp">
                        <node concept="TDmWw" id="4pYGyBVuTXl" role="TEXxN">
                          <node concept="3clFbS" id="4pYGyBVuTXm" role="TDEfX">
                            <node concept="3clFbF" id="6urLm480k$l" role="3cqZAp">
                              <node concept="1rXfSq" id="6urLm480k$m" role="3clFbG">
                                <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                                <node concept="Xl_RD" id="6urLm480k$n" role="37wK5m">
                                  <property role="Xl_RC" value="Finished with exception" />
                                </node>
                              </node>
                            </node>
                            <node concept="34ab3g" id="4pYGyBVuU58" role="3cqZAp">
                              <property role="35gtTG" value="error" />
                              <property role="34fQS0" value="true" />
                              <node concept="Xl_RD" id="4pYGyBVuU5a" role="34bqiv">
                                <property role="Xl_RC" value="exception occured on migration" />
                              </node>
                              <node concept="37vLTw" id="4pYGyBVuU5c" role="34bMjA">
                                <ref role="3cqZAo" node="4pYGyBVuTXn" resolve="t" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWsn" id="4pYGyBVuTXn" role="TDEfY">
                            <property role="TrG5h" value="t" />
                            <node concept="3uibUv" id="4pYGyBVuU0A" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="2htE_P_NHL_" role="2GV8ay">
                          <node concept="3clFbF" id="7rK8qWGEWRo" role="3cqZAp">
                            <node concept="1rXfSq" id="7rK8qWGEWRn" role="3clFbG">
                              <ref role="37wK5l" node="5SsFeroaax$" resolve="doRun" />
                              <node concept="37vLTw" id="7rK8qWGEWZT" role="37wK5m">
                                <ref role="3cqZAo" node="7rK8qWGEVfh" resolve="progress" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="2htE_P_NHLA" role="2GVbov">
                          <node concept="3clFbF" id="2htE_P_OyCV" role="3cqZAp">
                            <node concept="37vLTI" id="2htE_P_OyWS" role="3clFbG">
                              <node concept="3clFbT" id="2htE_P_Ozb_" role="37vLTx">
                                <property role="3clFbU" value="true" />
                              </node>
                              <node concept="37vLTw" id="2htE_P_OyCT" role="37vLTJ">
                                <ref role="3cqZAo" node="2htE_P_OuKG" resolve="myIsComplete" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6JtYk_H6vsG" role="3cqZAp">
                            <node concept="1rXfSq" id="6JtYk_H6vsH" role="3clFbG">
                              <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
                              <node concept="37vLTw" id="6JtYk_H6vsI" role="37wK5m">
                                <ref role="3cqZAo" node="7rK8qWGEVfh" resolve="progress" />
                              </node>
                              <node concept="3b6qkQ" id="6JtYk_H6v_s" role="37wK5m">
                                <property role="$nhwW" value="1.0" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6JvwUsisPK1" role="3cqZAp">
                            <node concept="2OqwBi" id="6JvwUsisPRX" role="3clFbG">
                              <node concept="37vLTw" id="6JvwUsisPJZ" role="2Oq$k0">
                                <ref role="3cqZAo" node="7rK8qWGDnm$" resolve="myProgress" />
                              </node>
                              <node concept="liA8E" id="6JvwUsisR2k" role="2OqNvi">
                                <ref role="37wK5l" to="ot7:~AbstractProgressIndicatorExBase.setText(java.lang.String):void" resolve="setText" />
                                <node concept="Xl_RD" id="6JvwUsisR4n" role="37wK5m">
                                  <property role="Xl_RC" value="Finished" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5SsFeroaazp" role="3cqZAp">
                            <node concept="2OqwBi" id="5SsFeroaazq" role="3clFbG">
                              <node concept="2YIFZM" id="5SsFerobmJQ" role="2Oq$k0">
                                <ref role="37wK5l" to="pa15:~PersistenceRegistry.getInstance():jetbrains.mps.persistence.PersistenceRegistry" resolve="getInstance" />
                                <ref role="1Pybhc" to="pa15:~PersistenceRegistry" resolve="PersistenceRegistry" />
                              </node>
                              <node concept="liA8E" id="5SsFeroaazs" role="2OqNvi">
                                <ref role="37wK5l" to="pa15:~PersistenceRegistry.enableFastFindUsages():void" resolve="enableFastFindUsages" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7rK8qWGEW5h" role="37wK5m">
                    <ref role="3cqZAo" node="5SsFeroaawe" resolve="project" />
                  </node>
                  <node concept="Xl_RD" id="7rK8qWGEWiw" role="37wK5m">
                    <property role="Xl_RC" value="Migration progress" />
                  </node>
                  <node concept="3clFbT" id="7rK8qWGEWKG" role="37wK5m">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7rK8qWGEVfl" role="37vLTJ">
              <node concept="Xjq3P" id="7rK8qWGEVfm" role="2Oq$k0" />
              <node concept="2OwXpG" id="7rK8qWGEVfn" role="2OqNvi">
                <ref role="2Oxat5" node="7rK8qWGEHl$" resolve="myTask" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaaw$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="25gV4LsyloB" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaaw_" role="jymVt">
      <property role="TrG5h" value="doCreateComponent" />
      <property role="DiZV1" value="true" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaawA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaawB" role="3clF47">
        <node concept="3clFbF" id="5SsFeroaawJ" role="3cqZAp">
          <node concept="37vLTI" id="5SsFeroaawK" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroaawL" role="37vLTJ">
              <ref role="3cqZAo" node="5SsFeroaaw1" resolve="myList" />
            </node>
            <node concept="2ShNRf" id="5SsFeroblCJ" role="37vLTx">
              <node concept="1pGfFk" id="5SsFeroblD4" role="2ShVmc">
                <ref role="37wK5l" to="qqrq:~JBList.&lt;init&gt;(javax.swing.ListModel)" resolve="JBList" />
                <node concept="2ShNRf" id="5SsFerobrVl" role="37wK5m">
                  <node concept="1pGfFk" id="5SsFerobrVm" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~DefaultListModel.&lt;init&gt;()" resolve="DefaultListModel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaawO" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFerobpgf" role="3clFbG">
            <node concept="37vLTw" id="5SsFerobpge" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaaw1" resolve="myList" />
            </node>
            <node concept="liA8E" id="5SsFerobpgg" role="2OqNvi">
              <ref role="37wK5l" to="qqrq:~JBList.setCellRenderer(javax.swing.ListCellRenderer):void" resolve="setCellRenderer" />
              <node concept="2ShNRf" id="5SsFerobpgh" role="37wK5m">
                <node concept="1pGfFk" id="5SsFerobpgi" role="2ShVmc">
                  <ref role="37wK5l" node="5SsFeroaaqu" resolve="MigrationsListRenderer" />
                  <node concept="37vLTw" id="5SsFerobpgj" role="37wK5m">
                    <ref role="3cqZAo" node="5SsFeroaaw5" resolve="myExecuted" />
                  </node>
                  <node concept="2YIFZM" id="5SsFerobpgk" role="37wK5m">
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <ref role="37wK5l" to="33ny:~Collections.emptySet():java.util.Set" resolve="emptySet" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5SsFeroaawU" role="3cqZAp">
          <node concept="3cpWsn" id="5SsFeroaawT" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="listPanel" />
            <node concept="3uibUv" id="5SsFeroaawV" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="5SsFeroblAT" role="33vP2m">
              <node concept="1pGfFk" id="5SsFeroblB6" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="5SsFerobrTl" role="37wK5m">
                  <node concept="1pGfFk" id="5SsFerobrTm" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;(int,int)" resolve="BorderLayout" />
                    <node concept="3cmrfG" id="5SsFerobrTn" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                    <node concept="3cmrfG" id="5SsFerobrTo" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaax0" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFeroblXX" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroblXW" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaawT" resolve="listPanel" />
            </node>
            <node concept="liA8E" id="5SsFeroblXY" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border):void" resolve="setBorder" />
              <node concept="2YIFZM" id="5SsFeroblXZ" role="37wK5m">
                <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                <ref role="37wK5l" to="dxuu:~BorderFactory.createCompoundBorder(javax.swing.border.Border,javax.swing.border.Border):javax.swing.border.CompoundBorder" resolve="createCompoundBorder" />
                <node concept="2YIFZM" id="5SsFerobrT2" role="37wK5m">
                  <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                  <ref role="37wK5l" to="dxuu:~BorderFactory.createEmptyBorder(int,int,int,int):javax.swing.border.Border" resolve="createEmptyBorder" />
                  <node concept="3cmrfG" id="5SsFerobrT3" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="5SsFerobrT4" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="5SsFerobrT5" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                  <node concept="3cmrfG" id="5SsFerobrT6" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5SsFerobrVq" role="37wK5m">
                  <ref role="1Pybhc" to="dxuu:~BorderFactory" resolve="BorderFactory" />
                  <ref role="37wK5l" to="dxuu:~BorderFactory.createEtchedBorder():javax.swing.border.Border" resolve="createEtchedBorder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaax9" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFeroblO9" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroblO8" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaawT" resolve="listPanel" />
            </node>
            <node concept="liA8E" id="5SsFeroblOa" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="5SsFerobrAM" role="37wK5m">
                <node concept="1pGfFk" id="5SsFerobrDq" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBScrollPane.&lt;init&gt;(java.awt.Component)" resolve="JBScrollPane" />
                  <node concept="37vLTw" id="5SsFerobrDr" role="37wK5m">
                    <ref role="3cqZAo" node="5SsFeroaaw1" resolve="myList" />
                  </node>
                </node>
              </node>
              <node concept="10M0yZ" id="5SsFerobrUY" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rK8qWGDpGz" role="3cqZAp">
          <node concept="37vLTI" id="7rK8qWGDq$r" role="3clFbG">
            <node concept="37vLTw" id="7rK8qWGDpGx" role="37vLTJ">
              <ref role="3cqZAo" node="7rK8qWGDnm$" resolve="myProgress" />
            </node>
            <node concept="2ShNRf" id="7rK8qWGDMP$" role="37vLTx">
              <node concept="YeOm9" id="4oHxNYJ3L9E" role="2ShVmc">
                <node concept="1Y3b0j" id="4oHxNYJ3L9H" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="nd9s:~InlineProgressIndicator" resolve="InlineProgressIndicator" />
                  <ref role="37wK5l" to="nd9s:~InlineProgressIndicator.&lt;init&gt;(boolean,com.intellij.openapi.progress.TaskInfo)" resolve="InlineProgressIndicator" />
                  <node concept="3Tm1VV" id="4oHxNYJ3L9I" role="1B3o_S" />
                  <node concept="3clFbT" id="7rK8qWGDMRU" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="7rK8qWGEX6Q" role="37wK5m">
                    <ref role="3cqZAo" node="7rK8qWGEHl$" resolve="myTask" />
                  </node>
                  <node concept="3clFb_" id="4oHxNYJ3Rca" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="isFinished" />
                    <property role="DiZV1" value="false" />
                    <property role="IEkAT" value="false" />
                    <node concept="3Tmbuc" id="4oHxNYJ3Rcb" role="1B3o_S" />
                    <node concept="10P_77" id="4oHxNYJ3Rcd" role="3clF45" />
                    <node concept="3clFbS" id="4oHxNYJ3Rcf" role="3clF47">
                      <node concept="3clFbF" id="4oHxNYJ42n1" role="3cqZAp">
                        <node concept="37vLTw" id="4oHxNYJ42mZ" role="3clFbG">
                          <ref role="3cqZAo" node="2htE_P_OuKG" resolve="myIsComplete" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4oHxNYJ3Rcg" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rK8qWGI3iO" role="3cqZAp">
          <node concept="2OqwBi" id="7rK8qWGI3MQ" role="3clFbG">
            <node concept="37vLTw" id="7rK8qWGI3iM" role="2Oq$k0">
              <ref role="3cqZAo" node="7rK8qWGDnm$" resolve="myProgress" />
            </node>
            <node concept="liA8E" id="7rK8qWGI50d" role="2OqNvi">
              <ref role="37wK5l" to="ot7:~AbstractProgressIndicatorExBase.setIndeterminate(boolean):void" resolve="setIndeterminate" />
              <node concept="3clFbT" id="7rK8qWGI54R" role="37wK5m">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaaxe" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFerobmkz" role="3clFbG">
            <node concept="37vLTw" id="5SsFerobmky" role="2Oq$k0">
              <ref role="3cqZAo" node="59PMlsVObHR" resolve="mainPanel" />
            </node>
            <node concept="liA8E" id="5SsFerobmk$" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="5SsFerobmk_" role="37wK5m">
                <ref role="3cqZAo" node="5SsFeroaawT" resolve="listPanel" />
              </node>
              <node concept="10M0yZ" id="5SsFerobmkA" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7rK8qWGDDwa" role="3cqZAp">
          <node concept="2OqwBi" id="7rK8qWGDDwb" role="3clFbG">
            <node concept="37vLTw" id="7rK8qWGDDwc" role="2Oq$k0">
              <ref role="3cqZAo" node="59PMlsVObHR" resolve="mainPanel" />
            </node>
            <node concept="liA8E" id="7rK8qWGDDwd" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="7rK8qWGEXir" role="37wK5m">
                <node concept="37vLTw" id="7rK8qWGDEAW" role="2Oq$k0">
                  <ref role="3cqZAo" node="7rK8qWGDnm$" resolve="myProgress" />
                </node>
                <node concept="liA8E" id="7rK8qWGF3hf" role="2OqNvi">
                  <ref role="37wK5l" to="nd9s:~InlineProgressIndicator.getComponent():javax.swing.JComponent" resolve="getComponent" />
                </node>
              </node>
              <node concept="10M0yZ" id="7rK8qWGDDwf" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.SOUTH" resolve="SOUTH" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5SsFeroaaxi" role="1B3o_S" />
      <node concept="3cqZAl" id="5SsFeroaaxj" role="3clF45" />
      <node concept="37vLTG" id="59PMlsVObHR" role="3clF46">
        <property role="TrG5h" value="mainPanel" />
        <node concept="3uibUv" id="59PMlsVObHQ" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="25gV4LsyjPM" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaaxk" role="jymVt">
      <property role="TrG5h" value="autostart" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaaxl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaaxm" role="3clF47">
        <node concept="3SKdUt" id="7rK8qWGEvrQ" role="3cqZAp">
          <node concept="3SKdUq" id="7rK8qWGEx0v" role="3SKWNk">
            <property role="3SKdUp" value="this is needed to fully show the step before first migration is started" />
          </node>
        </node>
        <node concept="3clFbF" id="7rK8qWGEqU7" role="3cqZAp">
          <node concept="2OqwBi" id="7rK8qWGEtrC" role="3clFbG">
            <node concept="2YIFZM" id="7rK8qWGEtpi" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication():com.intellij.openapi.application.Application" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="7rK8qWGEtGF" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
              <node concept="1bVj0M" id="7rK8qWGEtKY" role="37wK5m">
                <node concept="3clFbS" id="7rK8qWGEtKZ" role="1bW5cS">
                  <node concept="3clFbF" id="7rK8qWGEx3Y" role="3cqZAp">
                    <node concept="2OqwBi" id="7rK8qWGEx8V" role="3clFbG">
                      <node concept="2YIFZM" id="7rK8qWGEx40" role="2Oq$k0">
                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication():com.intellij.openapi.application.Application" resolve="getApplication" />
                      </node>
                      <node concept="liA8E" id="7rK8qWGExf5" role="2OqNvi">
                        <ref role="37wK5l" to="bd8o:~Application.executeOnPooledThread(java.lang.Runnable):java.util.concurrent.Future" resolve="executeOnPooledThread" />
                        <node concept="1bVj0M" id="7rK8qWGExmu" role="37wK5m">
                          <node concept="3clFbS" id="7rK8qWGExmv" role="1bW5cS">
                            <node concept="3clFbF" id="7rK8qWGEy5z" role="3cqZAp">
                              <node concept="2OqwBi" id="7rK8qWGEymB" role="3clFbG">
                                <node concept="2YIFZM" id="7rK8qWGEycK" role="2Oq$k0">
                                  <ref role="37wK5l" to="xygl:~ProgressManager.getInstance():com.intellij.openapi.progress.ProgressManager" resolve="getInstance" />
                                  <ref role="1Pybhc" to="xygl:~ProgressManager" resolve="ProgressManager" />
                                </node>
                                <node concept="liA8E" id="7rK8qWGEyz3" role="2OqNvi">
                                  <ref role="37wK5l" to="xygl:~ProgressManager.runProcess(java.lang.Runnable,com.intellij.openapi.progress.ProgressIndicator):void" resolve="runProcess" />
                                  <node concept="1bVj0M" id="7rK8qWGEyF_" role="37wK5m">
                                    <node concept="3clFbS" id="7rK8qWGEyFA" role="1bW5cS">
                                      <node concept="3clFbF" id="7rK8qWGF3q1" role="3cqZAp">
                                        <node concept="2OqwBi" id="7rK8qWGF3LA" role="3clFbG">
                                          <node concept="37vLTw" id="7rK8qWGF3q0" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7rK8qWGEHl$" resolve="myTask" />
                                          </node>
                                          <node concept="liA8E" id="7rK8qWGF462" role="2OqNvi">
                                            <ref role="37wK5l" to="xygl:~Progressive.run(com.intellij.openapi.progress.ProgressIndicator):void" resolve="run" />
                                            <node concept="37vLTw" id="7rK8qWGF4m7" role="37wK5m">
                                              <ref role="3cqZAo" node="7rK8qWGDnm$" resolve="myProgress" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="7rK8qWGFprG" role="3cqZAp">
                                        <node concept="2OqwBi" id="7rK8qWGFpXc" role="3clFbG">
                                          <node concept="37vLTw" id="7rK8qWGFprE" role="2Oq$k0">
                                            <ref role="3cqZAo" node="7rK8qWGFmUf" resolve="later" />
                                          </node>
                                          <node concept="1Bd96e" id="7rK8qWGFqsa" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="7rK8qWGF5ig" role="37wK5m">
                                    <ref role="3cqZAo" node="7rK8qWGDnm$" resolve="myProgress" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="7rK8qWGFr5s" role="3cqZAp" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="7rK8qWGEtOC" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaaxy" role="1B3o_S" />
      <node concept="3cqZAl" id="7rK8qWGE8p4" role="3clF45" />
      <node concept="37vLTG" id="7rK8qWGFmUf" role="3clF46">
        <property role="TrG5h" value="later" />
        <node concept="1ajhzC" id="7rK8qWGFmUd" role="1tU5fm">
          <node concept="3cqZAl" id="7rK8qWGFoMX" role="1ajl9A" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7rK8qWGE$gQ" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaax$" role="jymVt">
      <property role="TrG5h" value="doRun" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5SsFeroaax_" role="3clF47">
        <node concept="3cpWs8" id="6vz$DjuiXSb" role="3cqZAp">
          <node concept="3cpWsn" id="6vz$DjuiXSc" role="3cpWs9">
            <property role="TrG5h" value="options" />
            <node concept="3uibUv" id="6vz$DjuiXS4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
              <node concept="3uibUv" id="6vz$DjuiXSa" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3uibUv" id="6vz$DjuiXS9" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2YIFZM" id="6vz$DjuiXSd" role="33vP2m">
              <ref role="37wK5l" node="1u4Xg2YDFA6" resolve="getOptions" />
              <ref role="1Pybhc" node="5SsFeroaa9e" resolve="InitialStep" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fy1Xi0j8Nu" role="3cqZAp">
          <node concept="1rXfSq" id="5fy1Xi0j8Ns" role="3clFbG">
            <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
            <node concept="37vLTw" id="5fy1Xi0jbPJ" role="37wK5m">
              <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
            </node>
            <node concept="2YIFZM" id="6JtYk_H67mD" role="37wK5m">
              <ref role="37wK5l" to="bim2:6JtYk_H3TH2" resolve="initial" />
              <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2pwkv5pk0l3" role="3cqZAp" />
        <node concept="3cpWs8" id="5DhNxihhZol" role="3cqZAp">
          <node concept="3cpWsn" id="5DhNxihhZoo" role="3cpWs9">
            <property role="TrG5h" value="cleanNotification" />
            <node concept="10P_77" id="5DhNxihhZoj" role="1tU5fm" />
            <node concept="3clFbT" id="5DhNxihi0gj" role="33vP2m">
              <property role="3clFbU" value="false" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6EjSNQP6eWf" role="3cqZAp">
          <node concept="3cpWsn" id="6EjSNQP6eWi" role="3cpWs9">
            <property role="TrG5h" value="cleanupMigrations" />
            <node concept="_YKpA" id="6EjSNQP6eWb" role="1tU5fm">
              <node concept="3uibUv" id="6EjSNQP6hka" role="_ZDj9">
                <ref role="3uigEE" to="bim2:5SsFeroaabr" resolve="MigrationManager.MigrationStep" />
              </node>
            </node>
            <node concept="2ShNRf" id="6EjSNQP6hpi" role="33vP2m">
              <node concept="Tc6Ow" id="6EjSNQP6hpe" role="2ShVmc">
                <node concept="3uibUv" id="6EjSNQP6hpf" role="HW$YZ">
                  <ref role="3uigEE" to="bim2:5SsFeroaabr" resolve="MigrationManager.MigrationStep" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7rK8qWGI6gW" role="3cqZAp">
          <node concept="3cpWsn" id="7rK8qWGI6gX" role="3cpWs9">
            <property role="TrG5h" value="cleanupStepsCount" />
            <node concept="10Oyi0" id="7rK8qWGI6gV" role="1tU5fm" />
            <node concept="2OqwBi" id="7rK8qWGI6gY" role="33vP2m">
              <node concept="37vLTw" id="7rK8qWGI6gZ" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
              </node>
              <node concept="liA8E" id="7rK8qWGI6h0" role="2OqNvi">
                <ref role="37wK5l" to="bim2:7rK8qWGGnEQ" resolve="projectStepsCount" />
                <node concept="3clFbT" id="6JtYk_H6urR" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6JtYk_H6uW0" role="3cqZAp">
          <node concept="3cpWsn" id="6JtYk_H6uW3" role="3cpWs9">
            <property role="TrG5h" value="stepNum" />
            <node concept="10Oyi0" id="6JtYk_H6uVY" role="1tU5fm" />
            <node concept="3cmrfG" id="6JtYk_H6vqM" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="2pwkv5pjIUn" role="3cqZAp">
          <node concept="3clFbS" id="2pwkv5pjIUo" role="2LFqv$">
            <node concept="3cpWs8" id="6EjSNQP6ita" role="3cqZAp">
              <node concept="3cpWsn" id="6EjSNQP6itb" role="3cpWs9">
                <property role="TrG5h" value="step" />
                <node concept="3uibUv" id="6EjSNQP6isU" role="1tU5fm">
                  <ref role="3uigEE" to="bim2:5SsFeroaabr" resolve="MigrationManager.MigrationStep" />
                </node>
                <node concept="2OqwBi" id="6EjSNQP6itc" role="33vP2m">
                  <node concept="37vLTw" id="6EjSNQP6itd" role="2Oq$k0">
                    <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
                  </node>
                  <node concept="liA8E" id="6EjSNQP6ite" role="2OqNvi">
                    <ref role="37wK5l" to="bim2:25gV4LspSM9" resolve="nextProjectStep" />
                    <node concept="37vLTw" id="6EjSNQP6itf" role="37wK5m">
                      <ref role="3cqZAo" node="6vz$DjuiXSc" resolve="options" />
                    </node>
                    <node concept="3clFbT" id="6EjSNQP6itg" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5_TW4Q3_SnH" role="3cqZAp">
              <node concept="3clFbS" id="5_TW4Q3_SnJ" role="3clFbx">
                <node concept="3zACq4" id="5_TW4Q3_SSV" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="5_TW4Q3_SQf" role="3clFbw">
                <node concept="10Nm6u" id="5_TW4Q3_SRb" role="3uHU7w" />
                <node concept="37vLTw" id="5_TW4Q3_Swy" role="3uHU7B">
                  <ref role="3cqZAo" node="6EjSNQP6itb" resolve="step" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5_TW4Q3_SSY" role="3cqZAp" />
            <node concept="3clFbF" id="6EjSNQP6iVU" role="3cqZAp">
              <node concept="2OqwBi" id="6EjSNQP6jhd" role="3clFbG">
                <node concept="37vLTw" id="6EjSNQP6iVS" role="2Oq$k0">
                  <ref role="3cqZAo" node="6EjSNQP6eWi" resolve="cleanupMigrations" />
                </node>
                <node concept="TSZUe" id="6EjSNQP6kK6" role="2OqNvi">
                  <node concept="37vLTw" id="6EjSNQP6kLS" role="25WWJ7">
                    <ref role="3cqZAo" node="6EjSNQP6itb" resolve="step" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6EjSNQP6ida" role="3cqZAp">
              <node concept="3clFbS" id="6EjSNQP6idc" role="3clFbx">
                <node concept="3zACq4" id="6EjSNQP6irj" role="3cqZAp" />
              </node>
              <node concept="3fqX7Q" id="6EjSNQP6ijM" role="3clFbw">
                <node concept="1rXfSq" id="2pwkv5pjIU$" role="3fr31v">
                  <ref role="37wK5l" node="25gV4LszgYY" resolve="executeSingleStep" />
                  <node concept="37vLTw" id="6EjSNQP6ith" role="37wK5m">
                    <ref role="3cqZAo" node="6EjSNQP6itb" resolve="step" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6EjSNQP6iGP" role="3cqZAp" />
            <node concept="3clFbJ" id="5DhNxihi0r3" role="3cqZAp">
              <node concept="3clFbS" id="5DhNxihi0r6" role="3clFbx">
                <node concept="3clFbF" id="5DhNxihi0Dw" role="3cqZAp">
                  <node concept="37vLTI" id="5DhNxihi15p" role="3clFbG">
                    <node concept="3clFbT" id="5DhNxihi16m" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                    <node concept="37vLTw" id="5DhNxihi0Du" role="37vLTJ">
                      <ref role="3cqZAo" node="5DhNxihhZoo" resolve="cleanNotification" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2pwkv5pjOdn" role="3cqZAp">
                  <node concept="1rXfSq" id="2pwkv5pjOdo" role="3clFbG">
                    <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                    <node concept="Xl_RD" id="2pwkv5pjOdp" role="37wK5m">
                      <property role="Xl_RC" value="Cleaning project... Please wait." />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="5DhNxihi0_u" role="3clFbw">
                <node concept="37vLTw" id="5DhNxihi0Bi" role="3fr31v">
                  <ref role="3cqZAo" node="5DhNxihhZoo" resolve="cleanNotification" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6JtYk_H6wtS" role="3cqZAp" />
            <node concept="3clFbF" id="6JtYk_H6xLm" role="3cqZAp">
              <node concept="3uNrnE" id="6JtYk_H6x1n" role="3clFbG">
                <node concept="37vLTw" id="6JtYk_H6x1p" role="2$L3a6">
                  <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fy1Xi0jcWp" role="3cqZAp">
              <node concept="1rXfSq" id="5fy1Xi0jcWn" role="3clFbG">
                <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
                <node concept="37vLTw" id="5fy1Xi0jdfN" role="37wK5m">
                  <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
                </node>
                <node concept="2YIFZM" id="6JtYk_H67oV" role="37wK5m">
                  <ref role="37wK5l" to="bim2:6JtYk_H3TKi" resolve="cleanupMigrations" />
                  <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
                  <node concept="FJ1c_" id="6JtYk_H6xCh" role="37wK5m">
                    <node concept="37vLTw" id="6JtYk_H6xYP" role="3uHU7w">
                      <ref role="3cqZAo" node="7rK8qWGI6gX" resolve="cleanupStepsCount" />
                    </node>
                    <node concept="17qRlL" id="6JtYk_H6$0l" role="3uHU7B">
                      <node concept="3b6qkQ" id="6JtYk_H6$2B" role="3uHU7B">
                        <property role="$nhwW" value="1.0" />
                      </node>
                      <node concept="37vLTw" id="6JtYk_H6xWI" role="3uHU7w">
                        <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbT" id="6EjSNQP6hSr" role="2$JKZa">
            <property role="3clFbU" value="true" />
          </node>
        </node>
        <node concept="3clFbH" id="2pwkv5pjI1l" role="3cqZAp" />
        <node concept="3clFbF" id="3OvHNCMju4m" role="3cqZAp">
          <node concept="1rXfSq" id="3OvHNCMju4n" role="3clFbG">
            <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
            <node concept="Xl_RD" id="3OvHNCMju4o" role="37wK5m">
              <property role="Xl_RC" value="Checking migrations consistency... Please wait." />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3OvHNCMjzBR" role="3cqZAp">
          <node concept="3cpWsn" id="3OvHNCMjzBS" role="3cpWs9">
            <property role="TrG5h" value="missingMigrations" />
            <node concept="2OqwBi" id="3OvHNCMjzBT" role="33vP2m">
              <node concept="37vLTw" id="3OvHNCMjzBU" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
              </node>
              <node concept="liA8E" id="3OvHNCMjzBV" role="2OqNvi">
                <ref role="37wK5l" to="bim2:3OvHNCMjyBz" resolve="getMissingMigrations" />
              </node>
            </node>
            <node concept="_YKpA" id="3OvHNCMjAOI" role="1tU5fm">
              <node concept="1LlUBW" id="3OvHNCMjAP1" role="_ZDj9">
                <node concept="3uibUv" id="3OvHNCMjAP2" role="1Lm7xW">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
                <node concept="3uibUv" id="3OvHNCMjAP3" role="1Lm7xW">
                  <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                </node>
                <node concept="10Oyi0" id="6dYNaa8m6DJ" role="1Lm7xW" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JtYk_H6zj$" role="3cqZAp">
          <node concept="1rXfSq" id="6JtYk_H6zjy" role="3clFbG">
            <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
            <node concept="37vLTw" id="6JtYk_H6zTe" role="37wK5m">
              <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
            </node>
            <node concept="2YIFZM" id="6JtYk_H6zWM" role="37wK5m">
              <ref role="37wK5l" to="bim2:6JtYk_H3TDS" resolve="migrationsCheck" />
              <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
              <node concept="3b6qkQ" id="6JtYk_H6zYO" role="37wK5m">
                <property role="$nhwW" value="1.0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2htE_P_OGgt" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_OGgv" role="3clFbx">
            <node concept="3clFbF" id="2htE_P_OHyM" role="3cqZAp">
              <node concept="2OqwBi" id="2htE_P_OHFZ" role="3clFbG">
                <node concept="37vLTw" id="2htE_P_OHyK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
                </node>
                <node concept="liA8E" id="2htE_P_OJ$X" role="2OqNvi">
                  <ref role="37wK5l" node="2htE_P_Mtok" resolve="setErrorDescriptor" />
                  <node concept="2ShNRf" id="2htE_P_OJEP" role="37wK5m">
                    <node concept="1pGfFk" id="2htE_P_OSFe" role="2ShVmc">
                      <ref role="37wK5l" node="2htE_P_OSFa" resolve="MigrationsProgressWizardStep.MigrationsMissingError" />
                      <node concept="37vLTw" id="3OvHNCMj$Fw" role="37wK5m">
                        <ref role="3cqZAo" node="3OvHNCMjzBS" resolve="missingMigrations" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2htE_P_OHkO" role="3cqZAp">
              <node concept="1rXfSq" id="2htE_P_OHkP" role="3clFbG">
                <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                <node concept="Xl_RD" id="2htE_P_OHkQ" role="37wK5m">
                  <property role="Xl_RC" value="Some migrations are missing. Press 'Next' to continue." />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2htE_P_OHkR" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="3OvHNCMjBr4" role="3clFbw">
            <node concept="37vLTw" id="3OvHNCMjzBW" role="2Oq$k0">
              <ref role="3cqZAo" node="3OvHNCMjzBS" resolve="missingMigrations" />
            </node>
            <node concept="3GX2aA" id="3OvHNCMjECF" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="3OvHNCMjt_7" role="3cqZAp" />
        <node concept="3clFbF" id="6Sxc5MiBsne" role="3cqZAp">
          <node concept="1rXfSq" id="6Sxc5MiBsnf" role="3clFbG">
            <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
            <node concept="Xl_RD" id="6Sxc5MiBsng" role="37wK5m">
              <property role="Xl_RC" value="Checking models... Please wait." />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="6Sxc5MiBujG" role="3cqZAp">
          <node concept="1QHqEC" id="6Sxc5MiBujH" role="1QHqEI">
            <node concept="3clFbS" id="6Sxc5MiBujI" role="1bW5cS">
              <node concept="3cpWs8" id="6Sxc5MiBujJ" role="3cqZAp">
                <node concept="3cpWsn" id="6Sxc5MiBujK" role="3cpWs9">
                  <property role="TrG5h" value="modules" />
                  <node concept="A3Dl8" id="6Sxc5MiBujL" role="1tU5fm">
                    <node concept="3uibUv" id="6Sxc5MiBujM" role="A3Ik2">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2hu8fhm432V" role="33vP2m">
                    <ref role="37wK5l" to="umn7:3UfGsecu96H" resolve="getMigrateableModulesFromProject" />
                    <ref role="1Pybhc" to="umn7:3UfGsecu96G" resolve="MigrationsUtil" />
                    <node concept="2YIFZM" id="6Sxc5MiBujQ" role="37wK5m">
                      <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                      <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                      <node concept="37vLTw" id="6Sxc5MiBujR" role="37wK5m">
                        <ref role="3cqZAo" node="5SsFeroaaco" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2htE_P_N8wu" role="3cqZAp">
                <node concept="3clFbS" id="2htE_P_N8ww" role="3clFbx">
                  <node concept="3clFbF" id="2htE_P_N96F" role="3cqZAp">
                    <node concept="2OqwBi" id="2htE_P_N9id" role="3clFbG">
                      <node concept="37vLTw" id="2htE_P_N96D" role="2Oq$k0">
                        <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
                      </node>
                      <node concept="liA8E" id="2htE_P_Naln" role="2OqNvi">
                        <ref role="37wK5l" node="2htE_P_Mtok" resolve="setErrorDescriptor" />
                        <node concept="2ShNRf" id="2htE_P_Naqn" role="37wK5m">
                          <node concept="1pGfFk" id="2htE_P_NdE2" role="2ShVmc">
                            <ref role="37wK5l" node="2htE_P_NdDY" resolve="MigrationsProgressWizardStep.PreCheckError" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="3n7MNzOJZrb" role="3clFbw">
                  <ref role="37wK5l" to="t99v:3n7MNzOJVMu" resolve="haveProblems" />
                  <ref role="1Pybhc" to="t99v:3n7MNzO_xDq" resolve="MigrationCheckUtil" />
                  <node concept="37vLTw" id="3n7MNzOJZrc" role="37wK5m">
                    <ref role="3cqZAo" node="6Sxc5MiBujK" resolve="modules" />
                  </node>
                  <node concept="1bVj0M" id="6JtYk_H6EcX" role="37wK5m">
                    <node concept="3clFbS" id="6JtYk_H6EcZ" role="1bW5cS">
                      <node concept="3clFbF" id="6JtYk_H6FZs" role="3cqZAp">
                        <node concept="1rXfSq" id="6JtYk_H6FZq" role="3clFbG">
                          <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
                          <node concept="37vLTw" id="6JtYk_H6X67" role="37wK5m">
                            <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
                          </node>
                          <node concept="2YIFZM" id="6JtYk_H6XqE" role="37wK5m">
                            <ref role="37wK5l" to="bim2:6JtYk_H3THY" resolve="preCheck" />
                            <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
                            <node concept="37vLTw" id="6JtYk_H7SVB" role="37wK5m">
                              <ref role="3cqZAo" node="6JtYk_H6Ehe" resolve="fraction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="6JtYk_H6Ehe" role="1bW2Oz">
                      <property role="TrG5h" value="fraction" />
                      <node concept="10P55v" id="6JtYk_H7SlD" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2htE_P_NQK4" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_NQK6" role="3clFbx">
            <node concept="3SKdUt" id="6EjSNQP4pLM" role="3cqZAp">
              <node concept="3SKdUq" id="6EjSNQP4pLP" role="3SKWNk">
                <property role="3SKdUp" value="start cleanup migrations next time migration is started" />
              </node>
            </node>
            <node concept="2Gpval" id="6EjSNQP5Y3c" role="3cqZAp">
              <node concept="2GrKxI" id="6EjSNQP5Y3e" role="2Gsz3X">
                <property role="TrG5h" value="cleanupMigration" />
              </node>
              <node concept="3clFbS" id="6EjSNQP5Y3g" role="2LFqv$">
                <node concept="3clFbF" id="6EjSNQP5Y6z" role="3cqZAp">
                  <node concept="2OqwBi" id="6EjSNQP5Y7o" role="3clFbG">
                    <node concept="2GrUjf" id="6EjSNQP5Y6y" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6EjSNQP5Y3e" resolve="cleanupMigration" />
                    </node>
                    <node concept="liA8E" id="6EjSNQP6l0F" role="2OqNvi">
                      <ref role="37wK5l" to="bim2:6EjSNQP61Iw" resolve="forceExecutionNextTime" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6EjSNQP6kO4" role="2GsD0m">
                <ref role="3cqZAo" node="6EjSNQP6eWi" resolve="cleanupMigrations" />
              </node>
            </node>
            <node concept="3clFbF" id="2htE_P_NKrf" role="3cqZAp">
              <node concept="1rXfSq" id="2htE_P_NKrg" role="3clFbG">
                <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                <node concept="Xl_RD" id="2htE_P_NKrk" role="37wK5m">
                  <property role="Xl_RC" value="Can't start migration: errors detected. Press 'Next' to continue." />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2htE_P_NRHD" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2htE_P_NWIh" role="3clFbw">
            <node concept="10Nm6u" id="2htE_P_NWZF" role="3uHU7w" />
            <node concept="2OqwBi" id="2htE_P_NUyU" role="3uHU7B">
              <node concept="37vLTw" id="2htE_P_NUcQ" role="2Oq$k0">
                <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
              </node>
              <node concept="liA8E" id="2htE_P_NWFA" role="2OqNvi">
                <ref role="37wK5l" node="2htE_P_Mtoe" resolve="getErrorDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2htE_P_NQ4K" role="3cqZAp" />
        <node concept="3cpWs8" id="6JtYk_H6Jfh" role="3cqZAp">
          <node concept="3cpWsn" id="6JtYk_H6Jfk" role="3cpWs9">
            <property role="TrG5h" value="projectStepsCount" />
            <node concept="10Oyi0" id="6JtYk_H6Jff" role="1tU5fm" />
            <node concept="2OqwBi" id="6JtYk_H6JTl" role="33vP2m">
              <node concept="37vLTw" id="6JtYk_H6JOV" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
              </node>
              <node concept="liA8E" id="6JtYk_H6K7f" role="2OqNvi">
                <ref role="37wK5l" to="bim2:7rK8qWGGnEQ" resolve="projectStepsCount" />
                <node concept="3clFbT" id="6JtYk_H6L7H" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JtYk_H6LIh" role="3cqZAp">
          <node concept="37vLTI" id="6JtYk_H6MIt" role="3clFbG">
            <node concept="3cmrfG" id="6JtYk_H6MVU" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6JtYk_H6LIf" role="37vLTJ">
              <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="25gV4LszN$p" role="3cqZAp">
          <node concept="3clFbS" id="25gV4LszN$q" role="2LFqv$">
            <node concept="3clFbF" id="6JtYk_H6N5B" role="3cqZAp">
              <node concept="3uNrnE" id="6JtYk_H6Ns7" role="3clFbG">
                <node concept="37vLTw" id="6JtYk_H6Ns9" role="2$L3a6">
                  <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fy1Xi0je1b" role="3cqZAp">
              <node concept="1rXfSq" id="5fy1Xi0je1c" role="3clFbG">
                <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
                <node concept="37vLTw" id="5fy1Xi0je1d" role="37wK5m">
                  <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
                </node>
                <node concept="2YIFZM" id="6JtYk_H6NCa" role="37wK5m">
                  <ref role="37wK5l" to="bim2:6JtYk_H3TLZ" resolve="projectMigrations" />
                  <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
                  <node concept="FJ1c_" id="6JtYk_H6Oh7" role="37wK5m">
                    <node concept="37vLTw" id="6JtYk_H6OlG" role="3uHU7w">
                      <ref role="3cqZAo" node="6JtYk_H6Jfk" resolve="projectStepsCount" />
                    </node>
                    <node concept="17qRlL" id="6JtYk_H6NQq" role="3uHU7B">
                      <node concept="3b6qkQ" id="6JtYk_H6NEc" role="3uHU7B">
                        <property role="$nhwW" value="1.0" />
                      </node>
                      <node concept="37vLTw" id="6JtYk_H6NS_" role="3uHU7w">
                        <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="25gV4LszN$t" role="2$JKZa">
            <ref role="37wK5l" node="25gV4LszgYY" resolve="executeSingleStep" />
            <node concept="2OqwBi" id="25gV4LszN$u" role="37wK5m">
              <node concept="37vLTw" id="25gV4LszN$v" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
              </node>
              <node concept="liA8E" id="25gV4LszN$w" role="2OqNvi">
                <ref role="37wK5l" to="bim2:25gV4LspSM9" resolve="nextProjectStep" />
                <node concept="37vLTw" id="2pwkv5pjNph" role="37wK5m">
                  <ref role="3cqZAo" node="6vz$DjuiXSc" resolve="options" />
                </node>
                <node concept="3clFbT" id="2pwkv5pjQ3I" role="37wK5m">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2htE_P_NXEY" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_NXEZ" role="3clFbx">
            <node concept="3clFbF" id="2htE_P_NZZT" role="3cqZAp">
              <node concept="1rXfSq" id="2htE_P_NZZU" role="3clFbG">
                <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                <node concept="Xl_RD" id="2htE_P_NZZV" role="37wK5m">
                  <property role="Xl_RC" value="Exception while running migration. Press 'Next' to continue." />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2htE_P_NXF0" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2htE_P_NXF1" role="3clFbw">
            <node concept="10Nm6u" id="2htE_P_NXF2" role="3uHU7w" />
            <node concept="2OqwBi" id="2htE_P_NXF3" role="3uHU7B">
              <node concept="37vLTw" id="2htE_P_NXF4" role="2Oq$k0">
                <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
              </node>
              <node concept="liA8E" id="2htE_P_NXF5" role="2OqNvi">
                <ref role="37wK5l" node="2htE_P_Mtoe" resolve="getErrorDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2htE_P_NX0M" role="3cqZAp" />
        <node concept="3cpWs8" id="7rK8qWGIaEu" role="3cqZAp">
          <node concept="3cpWsn" id="7rK8qWGIaEv" role="3cpWs9">
            <property role="TrG5h" value="languageStepsCount" />
            <node concept="10Oyi0" id="7rK8qWGIaEt" role="1tU5fm" />
            <node concept="2OqwBi" id="7rK8qWGIaEw" role="33vP2m">
              <node concept="37vLTw" id="7rK8qWGIaEx" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
              </node>
              <node concept="liA8E" id="7rK8qWGIaEy" role="2OqNvi">
                <ref role="37wK5l" to="bim2:7rK8qWGGnJl" resolve="languageStepsCount" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JtYk_H6Pzg" role="3cqZAp">
          <node concept="37vLTI" id="6JtYk_H6Qt0" role="3clFbG">
            <node concept="3cmrfG" id="6JtYk_H6QEK" role="37vLTx">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="37vLTw" id="6JtYk_H6Pze" role="37vLTJ">
              <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="25gV4LsznDS" role="3cqZAp">
          <node concept="3clFbS" id="25gV4LsznDU" role="2LFqv$">
            <node concept="3clFbF" id="6JtYk_H6RhN" role="3cqZAp">
              <node concept="3uNrnE" id="6JtYk_H6RE5" role="3clFbG">
                <node concept="37vLTw" id="6JtYk_H6RE7" role="2$L3a6">
                  <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5fy1Xi0jgrO" role="3cqZAp">
              <node concept="1rXfSq" id="5fy1Xi0jgrP" role="3clFbG">
                <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
                <node concept="37vLTw" id="5fy1Xi0jgrQ" role="37wK5m">
                  <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
                </node>
                <node concept="2YIFZM" id="6JtYk_H6YSJ" role="37wK5m">
                  <ref role="37wK5l" to="bim2:6JtYk_H3TND" resolve="languageMigrations" />
                  <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
                  <node concept="FJ1c_" id="6JtYk_H6Smu" role="37wK5m">
                    <node concept="37vLTw" id="6JtYk_H6Sqj" role="3uHU7w">
                      <ref role="3cqZAo" node="7rK8qWGIaEv" resolve="languageStepsCount" />
                    </node>
                    <node concept="17qRlL" id="6JtYk_H6R8N" role="3uHU7B">
                      <node concept="3b6qkQ" id="6JtYk_H6QKs" role="3uHU7B">
                        <property role="$nhwW" value="1.0" />
                      </node>
                      <node concept="37vLTw" id="6JtYk_H6RaS" role="3uHU7w">
                        <ref role="3cqZAo" node="6JtYk_H6uW3" resolve="stepNum" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="25gV4Lszk4C" role="2$JKZa">
            <ref role="37wK5l" node="25gV4LszgYY" resolve="executeSingleStep" />
            <node concept="2OqwBi" id="25gV4Lszl1n" role="37wK5m">
              <node concept="37vLTw" id="25gV4Lszl1o" role="2Oq$k0">
                <ref role="3cqZAo" node="5SsFeroaavX" resolve="myManager" />
              </node>
              <node concept="liA8E" id="25gV4Lszl1p" role="2OqNvi">
                <ref role="37wK5l" to="bim2:5SsFeroaaca" resolve="nextLanguageStep" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2htE_P_ODfN" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_ODfO" role="3clFbx">
            <node concept="3clFbF" id="2htE_P_OESV" role="3cqZAp">
              <node concept="1rXfSq" id="2htE_P_OESW" role="3clFbG">
                <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                <node concept="Xl_RD" id="2htE_P_OESX" role="37wK5m">
                  <property role="Xl_RC" value="Exception while running migration. Press 'Next' to continue." />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2htE_P_ODfW" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2htE_P_ODfX" role="3clFbw">
            <node concept="10Nm6u" id="2htE_P_ODfY" role="3uHU7w" />
            <node concept="2OqwBi" id="2htE_P_ODfZ" role="3uHU7B">
              <node concept="37vLTw" id="2htE_P_ODg0" role="2Oq$k0">
                <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
              </node>
              <node concept="liA8E" id="2htE_P_ODg1" role="2OqNvi">
                <ref role="37wK5l" node="2htE_P_Mtoe" resolve="getErrorDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="513ZrA4wHpg" role="3cqZAp" />
        <node concept="3clFbF" id="513ZrA4x9$$" role="3cqZAp">
          <node concept="1rXfSq" id="513ZrA4x4$c" role="3clFbG">
            <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
            <node concept="Xl_RD" id="513ZrA4x8oV" role="37wK5m">
              <property role="Xl_RC" value="Saving changed models... Please wait." />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2Bgy8Ewlxdw" role="3cqZAp">
          <node concept="2OqwBi" id="2Bgy8Ewlxun" role="3clFbG">
            <node concept="2YIFZM" id="2Bgy8EwlxmR" role="2Oq$k0">
              <ref role="1Pybhc" to="w1kc:~ModelAccess" resolve="ModelAccess" />
              <ref role="37wK5l" to="w1kc:~ModelAccess.instance():jetbrains.mps.smodel.ModelAccess" resolve="instance" />
            </node>
            <node concept="liA8E" id="2Bgy8EwlxCg" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelCommandExecutor.runWriteInEDT(java.lang.Runnable):void" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="2Bgy8EwlxEh" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2Bgy8EwlxEi" role="1bW5cS">
                  <node concept="3clFbF" id="513ZrA4wOEC" role="3cqZAp">
                    <node concept="2OqwBi" id="513ZrA4wPTR" role="3clFbG">
                      <node concept="2YIFZM" id="513ZrA4wPwq" role="2Oq$k0">
                        <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                        <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                      </node>
                      <node concept="liA8E" id="513ZrA4wQkQ" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~MPSModuleRepository.saveAll():void" resolve="saveAll" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6JtYk_H6TD2" role="3cqZAp">
          <node concept="1rXfSq" id="6JtYk_H6TD0" role="3clFbG">
            <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
            <node concept="37vLTw" id="6JtYk_H6Uhm" role="37wK5m">
              <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
            </node>
            <node concept="2YIFZM" id="6JtYk_H6UkF" role="37wK5m">
              <ref role="37wK5l" to="bim2:6JtYk_H3TRx" resolve="saving" />
              <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
              <node concept="3b6qkQ" id="6JtYk_H6UmG" role="37wK5m">
                <property role="$nhwW" value="1.0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="513ZrA4x2JV" role="3cqZAp" />
        <node concept="3clFbF" id="6Sxc5MisG_v" role="3cqZAp">
          <node concept="1rXfSq" id="6Sxc5MisG_w" role="3clFbG">
            <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
            <node concept="Xl_RD" id="6Sxc5MisG_x" role="37wK5m">
              <property role="Xl_RC" value="Checking models... Please wait." />
            </node>
          </node>
        </node>
        <node concept="1QHqEK" id="6Sxc5MisLpx" role="3cqZAp">
          <node concept="1QHqEC" id="6Sxc5MisLpz" role="1QHqEI">
            <node concept="3clFbS" id="6Sxc5MisLp_" role="1bW5cS">
              <node concept="3cpWs8" id="6Sxc5MitX7i" role="3cqZAp">
                <node concept="3cpWsn" id="6Sxc5MitX7j" role="3cpWs9">
                  <property role="TrG5h" value="modules" />
                  <node concept="A3Dl8" id="6Sxc5MitXLl" role="1tU5fm">
                    <node concept="3uibUv" id="6Sxc5MizJUC" role="A3Ik2">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="2hu8fhm43d_" role="33vP2m">
                    <ref role="1Pybhc" to="umn7:3UfGsecu96G" resolve="MigrationsUtil" />
                    <ref role="37wK5l" to="umn7:3UfGsecu96H" resolve="getMigrateableModulesFromProject" />
                    <node concept="2YIFZM" id="2hu8fhm43dA" role="37wK5m">
                      <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                      <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                      <node concept="37vLTw" id="2hu8fhm43dB" role="37wK5m">
                        <ref role="3cqZAo" node="5SsFeroaaco" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="6JtYk_H6W7l" role="3cqZAp">
                <node concept="3cpWsn" id="6JtYk_H6W7m" role="3cpWs9">
                  <property role="TrG5h" value="moduleNum" />
                  <node concept="10Oyi0" id="6JtYk_H6W7n" role="1tU5fm" />
                  <node concept="3cmrfG" id="6JtYk_H6W7o" role="33vP2m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2htE_P_Nte5" role="3cqZAp">
                <node concept="3clFbS" id="2htE_P_Nte7" role="3clFbx">
                  <node concept="3clFbF" id="2htE_P_NjU5" role="3cqZAp">
                    <node concept="2OqwBi" id="2htE_P_Nk6j" role="3clFbG">
                      <node concept="37vLTw" id="2htE_P_NjU3" role="2Oq$k0">
                        <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
                      </node>
                      <node concept="liA8E" id="2htE_P_Nm5$" role="2OqNvi">
                        <ref role="37wK5l" node="2htE_P_Mtok" resolve="setErrorDescriptor" />
                        <node concept="2ShNRf" id="2htE_P_NnTv" role="37wK5m">
                          <node concept="1pGfFk" id="2htE_P_Nqy7" role="2ShVmc">
                            <ref role="37wK5l" node="2htE_P_Nqy3" resolve="MigrationsProgressWizardStep.PostCheckError" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="3n7MNzOJZQY" role="3clFbw">
                  <ref role="37wK5l" to="t99v:3n7MNzOJVMu" resolve="haveProblems" />
                  <ref role="1Pybhc" to="t99v:3n7MNzO_xDq" resolve="MigrationCheckUtil" />
                  <node concept="37vLTw" id="3n7MNzOJZQZ" role="37wK5m">
                    <ref role="3cqZAo" node="6Sxc5MitX7j" resolve="modules" />
                  </node>
                  <node concept="1bVj0M" id="6JtYk_H6Wl9" role="37wK5m">
                    <node concept="3clFbS" id="6JtYk_H6Wla" role="1bW5cS">
                      <node concept="3clFbF" id="6JtYk_H6Wlb" role="3cqZAp">
                        <node concept="3uNrnE" id="6JtYk_H6Wlc" role="3clFbG">
                          <node concept="37vLTw" id="6JtYk_H6Wld" role="2$L3a6">
                            <ref role="3cqZAo" node="6JtYk_H6W7m" resolve="moduleNum" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="6JtYk_H6Wle" role="3cqZAp">
                        <node concept="1rXfSq" id="6JtYk_H6Wlf" role="3clFbG">
                          <ref role="37wK5l" node="5fy1Xi0iCHE" resolve="setFraction" />
                          <node concept="37vLTw" id="6JtYk_H6Wlg" role="37wK5m">
                            <ref role="3cqZAo" node="7rK8qWGFcdK" resolve="progress" />
                          </node>
                          <node concept="2YIFZM" id="6JtYk_H6YWP" role="37wK5m">
                            <ref role="37wK5l" to="bim2:6JtYk_H3TPv" resolve="postCheck" />
                            <ref role="1Pybhc" to="bim2:6JtYk_H3TjG" resolve="ProgressEstimation" />
                            <node concept="37vLTw" id="6JtYk_H7TEU" role="37wK5m">
                              <ref role="3cqZAo" node="6JtYk_H6Wlo" resolve="fraction" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="6JtYk_H6Wlo" role="1bW2Oz">
                      <property role="TrG5h" value="fraction" />
                      <node concept="10P55v" id="6JtYk_H7T0g" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2htE_P_OEb1" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_OEb2" role="3clFbx">
            <node concept="3clFbF" id="2htE_P_OEb3" role="3cqZAp">
              <node concept="1rXfSq" id="2htE_P_OEb4" role="3clFbG">
                <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
                <node concept="Xl_RD" id="2htE_P_OEb5" role="37wK5m">
                  <property role="Xl_RC" value="Errors are detected in project after executing migrations. Press 'Next' to continue." />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2htE_P_OEba" role="3cqZAp" />
          </node>
          <node concept="3y3z36" id="2htE_P_OEbb" role="3clFbw">
            <node concept="10Nm6u" id="2htE_P_OEbc" role="3uHU7w" />
            <node concept="2OqwBi" id="2htE_P_OEbd" role="3uHU7B">
              <node concept="37vLTw" id="2htE_P_OEbe" role="2Oq$k0">
                <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
              </node>
              <node concept="liA8E" id="2htE_P_OEbf" role="2OqNvi">
                <ref role="37wK5l" node="2htE_P_Mtoe" resolve="getErrorDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2htE_P_NOF2" role="3cqZAp" />
        <node concept="3clFbF" id="513ZrA4xbm7" role="3cqZAp">
          <node concept="1rXfSq" id="513ZrA4xbm8" role="3clFbG">
            <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
            <node concept="Xl_RD" id="513ZrA4xbm9" role="37wK5m">
              <property role="Xl_RC" value="Done!" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5SsFeroaazx" role="1B3o_S" />
      <node concept="3cqZAl" id="5SsFeroaazy" role="3clF45" />
      <node concept="37vLTG" id="7rK8qWGFcdK" role="3clF46">
        <property role="TrG5h" value="progress" />
        <node concept="3uibUv" id="7rK8qWGFcdJ" role="1tU5fm">
          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5fy1Xi0itAx" role="jymVt" />
    <node concept="3clFb_" id="5fy1Xi0iCHE" role="jymVt">
      <property role="TrG5h" value="setFraction" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5fy1Xi0i_Xf" role="3clF47">
        <node concept="3clFbF" id="5fy1Xi0iTr3" role="3cqZAp">
          <node concept="2OqwBi" id="5fy1Xi0iUlZ" role="3clFbG">
            <node concept="2YIFZM" id="5fy1Xi0iUkr" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication():com.intellij.openapi.application.Application" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="5fy1Xi0iUGp" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable,com.intellij.openapi.application.ModalityState):void" resolve="invokeLater" />
              <node concept="1bVj0M" id="5fy1Xi0iUIS" role="37wK5m">
                <node concept="3clFbS" id="5fy1Xi0iUIT" role="1bW5cS">
                  <node concept="3clFbF" id="5fy1Xi0iXbG" role="3cqZAp">
                    <node concept="2OqwBi" id="5fy1Xi0iXdO" role="3clFbG">
                      <node concept="37vLTw" id="5fy1Xi0iXbF" role="2Oq$k0">
                        <ref role="3cqZAo" node="5fy1Xi0iUL4" resolve="p" />
                      </node>
                      <node concept="liA8E" id="5fy1Xi0iXra" role="2OqNvi">
                        <ref role="37wK5l" to="xygl:~ProgressIndicator.setFraction(double):void" resolve="setFraction" />
                        <node concept="37vLTw" id="5fy1Xi0iXvc" role="37wK5m">
                          <ref role="3cqZAo" node="5fy1Xi0iOeN" resolve="fraction" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="5n1niCby_p5" role="37wK5m">
                <ref role="37wK5l" to="bd8o:~ModalityState.any():com.intellij.openapi.application.ModalityState" resolve="any" />
                <ref role="1Pybhc" to="bd8o:~ModalityState" resolve="ModalityState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5fy1Xi0i_Xd" role="3clF45" />
      <node concept="3Tm1VV" id="5fy1Xi0i_Xe" role="1B3o_S" />
      <node concept="37vLTG" id="5fy1Xi0iUL4" role="3clF46">
        <property role="TrG5h" value="p" />
        <node concept="3uibUv" id="5fy1Xi0iX6J" role="1tU5fm">
          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
        </node>
      </node>
      <node concept="37vLTG" id="5fy1Xi0iOeN" role="3clF46">
        <property role="TrG5h" value="fraction" />
        <node concept="10P55v" id="5fy1Xi0iOeM" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5fy1Xi0iQ_v" role="jymVt" />
    <node concept="3clFb_" id="513ZrA4x4$8" role="jymVt">
      <property role="TrG5h" value="addElementToMigrationList" />
      <node concept="3Tm6S6" id="513ZrA4x4$9" role="1B3o_S" />
      <node concept="3cqZAl" id="513ZrA4xc9p" role="3clF45" />
      <node concept="37vLTG" id="513ZrA4x4$2" role="3clF46">
        <property role="TrG5h" value="step" />
        <node concept="17QB3L" id="513ZrA4x4$3" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="513ZrA4x4zw" role="3clF47">
        <node concept="3cpWs8" id="513ZrA4x4zz" role="3cqZAp">
          <node concept="3cpWsn" id="513ZrA4x4z$" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="513ZrA4x4z_" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~DefaultListModel" resolve="DefaultListModel" />
            </node>
            <node concept="10QFUN" id="513ZrA4x4zA" role="33vP2m">
              <node concept="2OqwBi" id="513ZrA4x4zB" role="10QFUP">
                <node concept="37vLTw" id="513ZrA4x4zC" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SsFeroaaw1" resolve="myList" />
                </node>
                <node concept="liA8E" id="513ZrA4x4zD" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JList.getModel():javax.swing.ListModel" resolve="getModel" />
                </node>
              </node>
              <node concept="3uibUv" id="513ZrA4x4zE" role="10QFUM">
                <ref role="3uigEE" to="dxuu:~DefaultListModel" resolve="DefaultListModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="513ZrA4x4zF" role="3cqZAp">
          <node concept="2YIFZM" id="513ZrA4x4zG" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable):boolean" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="513ZrA4x4zH" role="37wK5m">
              <node concept="3clFbS" id="513ZrA4x4zI" role="1bW5cS">
                <node concept="3clFbF" id="513ZrA4x4zJ" role="3cqZAp">
                  <node concept="2OqwBi" id="513ZrA4x4zK" role="3clFbG">
                    <node concept="37vLTw" id="513ZrA4x4zL" role="2Oq$k0">
                      <ref role="3cqZAo" node="513ZrA4x4z$" resolve="model" />
                    </node>
                    <node concept="liA8E" id="513ZrA4x4zM" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~DefaultListModel.addElement(java.lang.Object):void" resolve="addElement" />
                      <node concept="37vLTw" id="513ZrA4x4$4" role="37wK5m">
                        <ref role="3cqZAo" node="513ZrA4x4$2" resolve="step" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="513ZrA4x4zO" role="3cqZAp">
                  <node concept="2OqwBi" id="513ZrA4x4zP" role="3clFbG">
                    <node concept="37vLTw" id="513ZrA4x4zQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="5SsFeroaaw1" resolve="myList" />
                    </node>
                    <node concept="liA8E" id="513ZrA4x4zR" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JList.ensureIndexIsVisible(int):void" resolve="ensureIndexIsVisible" />
                      <node concept="2OqwBi" id="513ZrA4x4zS" role="37wK5m">
                        <node concept="37vLTw" id="513ZrA4x4zT" role="2Oq$k0">
                          <ref role="3cqZAo" node="513ZrA4x4z$" resolve="model" />
                        </node>
                        <node concept="liA8E" id="513ZrA4x4zU" role="2OqNvi">
                          <ref role="37wK5l" to="dxuu:~DefaultListModel.lastIndexOf(java.lang.Object):int" resolve="lastIndexOf" />
                          <node concept="37vLTw" id="513ZrA4x4$5" role="37wK5m">
                            <ref role="3cqZAo" node="513ZrA4x4$2" resolve="step" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="513ZrA4x4zW" role="3cqZAp">
                  <node concept="2OqwBi" id="513ZrA4x4zX" role="3clFbG">
                    <node concept="37vLTw" id="513ZrA4x4zY" role="2Oq$k0">
                      <ref role="3cqZAo" node="5SsFeroaaw1" resolve="myList" />
                    </node>
                    <node concept="liA8E" id="513ZrA4x4zZ" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.repaint():void" resolve="repaint" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="25gV4LszciQ" role="jymVt" />
    <node concept="3clFb_" id="25gV4LszgYY" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="executeSingleStep" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="25gV4LszgZ1" role="3clF47">
        <node concept="3clFbJ" id="5SsFeroaaxW" role="3cqZAp">
          <node concept="3clFbC" id="7MqBKG8Z4SP" role="3clFbw">
            <node concept="10Nm6u" id="7MqBKG8Z745" role="3uHU7w" />
            <node concept="37vLTw" id="7MqBKG8Z2is" role="3uHU7B">
              <ref role="3cqZAo" node="25gV4Lszlrg" resolve="result" />
            </node>
          </node>
          <node concept="3clFbS" id="25gV4LsyW4P" role="3clFbx">
            <node concept="3cpWs6" id="1HyHl70YRkk" role="3cqZAp">
              <node concept="3clFbT" id="1HyHl70YStx" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1u4Xg2Y$If0" role="3cqZAp" />
        <node concept="3cpWs8" id="5SsFeroaay3" role="3cqZAp">
          <node concept="3cpWsn" id="5SsFeroaay2" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="step" />
            <node concept="3uibUv" id="5SsFeroaay4" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="5SsFeroaay5" role="33vP2m">
              <node concept="1eOMI4" id="5SsFeroaay9" role="2Oq$k0">
                <node concept="10QFUN" id="5SsFeroaay6" role="1eOMHV">
                  <node concept="37vLTw" id="25gV4LszwgK" role="10QFUP">
                    <ref role="3cqZAo" node="25gV4Lszlrg" resolve="result" />
                  </node>
                  <node concept="3uibUv" id="5SsFeroaay8" role="10QFUM">
                    <ref role="3uigEE" to="bim2:5SsFeroaabr" resolve="MigrationManager.MigrationStep" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5SsFeroaaya" role="2OqNvi">
                <ref role="37wK5l" to="bim2:5SsFeroaabv" resolve="getDescription" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="513ZrA4xgPo" role="3cqZAp">
          <node concept="1rXfSq" id="513ZrA4xgPm" role="3clFbG">
            <ref role="37wK5l" node="513ZrA4x4$8" resolve="addElementToMigrationList" />
            <node concept="37vLTw" id="513ZrA4xinP" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaay2" resolve="step" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2htE_P_NuLs" role="3cqZAp" />
        <node concept="3cpWs8" id="2htE_P_NuBf" role="3cqZAp">
          <node concept="3cpWsn" id="2htE_P_NuBg" role="3cpWs9">
            <property role="TrG5h" value="noException" />
            <node concept="10P_77" id="2htE_P_NuB9" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaay_" role="3cqZAp">
          <node concept="2YIFZM" id="5SsFeroblQW" role="3clFbG">
            <ref role="37wK5l" to="3a50:~ThreadUtils.runInUIThreadAndWait(java.lang.Runnable):boolean" resolve="runInUIThreadAndWait" />
            <ref role="1Pybhc" to="3a50:~ThreadUtils" resolve="ThreadUtils" />
            <node concept="1bVj0M" id="513ZrA4wEkb" role="37wK5m">
              <property role="3yWfEV" value="true" />
              <node concept="3clFbS" id="513ZrA4wEkl" role="1bW5cS">
                <node concept="3clFbF" id="2htE_P_NuHV" role="3cqZAp">
                  <node concept="37vLTI" id="2htE_P_NuHX" role="3clFbG">
                    <node concept="2OqwBi" id="2htE_P_NuBh" role="37vLTx">
                      <node concept="1eOMI4" id="2htE_P_NuBi" role="2Oq$k0">
                        <node concept="10QFUN" id="2htE_P_NuBj" role="1eOMHV">
                          <node concept="37vLTw" id="2htE_P_NuBk" role="10QFUP">
                            <ref role="3cqZAo" node="25gV4Lszlrg" resolve="result" />
                          </node>
                          <node concept="3uibUv" id="2htE_P_NuBl" role="10QFUM">
                            <ref role="3uigEE" to="bim2:5SsFeroaabr" resolve="MigrationManager.MigrationStep" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="2htE_P_NuBm" role="2OqNvi">
                        <ref role="37wK5l" to="bim2:5SsFeroaabz" resolve="execute" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="2htE_P_NuI1" role="37vLTJ">
                      <ref role="3cqZAo" node="2htE_P_NuBg" resolve="noException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2htE_P_NBsp" role="3cqZAp" />
        <node concept="3clFbJ" id="2htE_P_NDaU" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_NDaW" role="3clFbx">
            <node concept="3clFbF" id="2htE_P_OkFK" role="3cqZAp">
              <node concept="2OqwBi" id="2htE_P_OkOG" role="3clFbG">
                <node concept="37vLTw" id="2htE_P_OkFJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
                </node>
                <node concept="liA8E" id="2htE_P_OmLg" role="2OqNvi">
                  <ref role="37wK5l" node="2htE_P_Mtok" resolve="setErrorDescriptor" />
                  <node concept="2ShNRf" id="2htE_P_OmNE" role="37wK5m">
                    <node concept="1pGfFk" id="2htE_P_OBzI" role="2ShVmc">
                      <ref role="37wK5l" node="2htE_P_OBzE" resolve="MigrationsProgressWizardStep.MigrationExceptionError" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2htE_P_NE7Q" role="3clFbw">
            <node concept="37vLTw" id="2htE_P_NEb1" role="3fr31v">
              <ref role="3cqZAo" node="2htE_P_NuBg" resolve="noException" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="25gV4Lsz_uC" role="3cqZAp" />
        <node concept="3cpWs6" id="25gV4LszC_8" role="3cqZAp">
          <node concept="37vLTw" id="2htE_P_Nyyz" role="3cqZAk">
            <ref role="3cqZAo" node="2htE_P_NuBg" resolve="noException" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="25gV4LszfgN" role="1B3o_S" />
      <node concept="10P_77" id="25gV4LszgSu" role="3clF45" />
      <node concept="37vLTG" id="25gV4Lszlrg" role="3clF46">
        <property role="TrG5h" value="result" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1u4Xg2Y_HYu" role="1tU5fm">
          <ref role="3uigEE" to="bim2:5SsFeroaabr" resolve="MigrationManager.MigrationStep" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="25gV4LsyovX" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaazB" role="jymVt">
      <property role="TrG5h" value="getNextStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaazC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaazD" role="3clF47">
        <node concept="3clFbJ" id="2djq$Jf_DwK" role="3cqZAp">
          <node concept="3clFbS" id="2djq$Jf_DwN" role="3clFbx">
            <node concept="3cpWs6" id="2djq$Jf_IGc" role="3cqZAp">
              <node concept="10Nm6u" id="2djq$Jf_KLP" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="2htE_P_MMHc" role="3clFbw">
            <node concept="1rXfSq" id="2htE_P_MNsm" role="3fr31v">
              <ref role="37wK5l" node="5SsFeroaazP" resolve="isComplete" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2htE_P_P5Bf" role="3cqZAp">
          <node concept="3clFbS" id="2htE_P_P5Bg" role="3clFbx">
            <node concept="3cpWs6" id="2htE_P_P5Bh" role="3cqZAp">
              <node concept="10Nm6u" id="2htE_P_P5Bi" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="lJt$_Urfmf" role="3clFbw">
            <node concept="2OqwBi" id="2htE_P_P5Bl" role="3uHU7B">
              <node concept="37vLTw" id="2htE_P_P5Bm" role="2Oq$k0">
                <ref role="3cqZAo" node="2htE_P_MyAB" resolve="myErrorContainer" />
              </node>
              <node concept="liA8E" id="2htE_P_P5Bn" role="2OqNvi">
                <ref role="37wK5l" node="2htE_P_Mtoe" resolve="getErrorDescriptor" />
              </node>
            </node>
            <node concept="10Nm6u" id="2htE_P_P5Bk" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="2htE_P_N1Va" role="3cqZAp" />
        <node concept="3cpWs6" id="6Sxc5MixASc" role="3cqZAp">
          <node concept="10M0yZ" id="6Sxc5MixASd" role="3cqZAk">
            <ref role="1PxDUh" node="12JIgXNwLaS" resolve="MigrationErrorWizardStep" />
            <ref role="3cqZAo" node="2htE_P_MPZD" resolve="ID" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaazG" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaazH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="25gV4Lsyq4u" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaazI" role="jymVt">
      <property role="TrG5h" value="getPreviousStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaazJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaazK" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaazL" role="3cqZAp">
          <node concept="10Nm6u" id="5SsFeroaazM" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaazN" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaazO" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="25gV4LsyrCS" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaazP" role="jymVt">
      <property role="TrG5h" value="isComplete" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaazQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaazR" role="3clF47">
        <node concept="3clFbF" id="2htE_P_Ox7a" role="3cqZAp">
          <node concept="37vLTw" id="2htE_P_Ox78" role="3clFbG">
            <ref role="3cqZAo" node="2htE_P_OuKG" resolve="myIsComplete" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaazU" role="1B3o_S" />
      <node concept="10P_77" id="5SsFeroaazV" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="25gV4Ls$8QX" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaazW" role="jymVt">
      <property role="TrG5h" value="canBeCancelled" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaazX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaazY" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaazZ" role="3cqZAp">
          <node concept="3clFbT" id="5SsFeroaa$0" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaa$1" role="1B3o_S" />
      <node concept="10P_77" id="5SsFeroaa$2" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="25gV4Ls$dGO" role="jymVt" />
    <node concept="312cEu" id="2htE_P_NdDU" role="jymVt">
      <property role="TrG5h" value="PreCheckError" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFbW" id="2htE_P_NdDY" role="jymVt">
        <node concept="3clFbS" id="2htE_P_NdDZ" role="3clF47" />
        <node concept="3Tm1VV" id="2htE_P_NdE0" role="1B3o_S" />
        <node concept="3cqZAl" id="2htE_P_NdE1" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="2htE_P_NdDW" role="1B3o_S" />
      <node concept="3clFb_" id="2htE_P_NbBj" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getMessage" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_NbBl" role="1B3o_S" />
        <node concept="3uibUv" id="2htE_P_NbBm" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="2htE_P_NbBn" role="3clF47">
          <node concept="3clFbF" id="6Sxc5Miy2fD" role="3cqZAp">
            <node concept="3cpWs3" id="6Sxc5MiyXpR" role="3clFbG">
              <node concept="3cpWs3" id="6Sxc5MiyJPY" role="3uHU7B">
                <node concept="3cpWs3" id="6Sxc5MiyEuf" role="3uHU7B">
                  <node concept="3cpWs3" id="6Sxc5MiyCRh" role="3uHU7B">
                    <node concept="Xl_RD" id="6Sxc5MiyCRn" role="3uHU7B">
                      <property role="Xl_RC" value="Migration Assistant found that some problems that prevent this project from being migrated.&lt;br&gt;&lt;br&gt;" />
                    </node>
                    <node concept="Xl_RD" id="6Sxc5MiyEul" role="3uHU7w">
                      <property role="Xl_RC" value="Try running migrations after correcting your project and/or adding necessary libraries.&lt;br&gt;" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6Sxc5MiyJQ4" role="3uHU7w">
                    <property role="Xl_RC" value="Migration Assistant will be started again on next project opening or it can be started " />
                  </node>
                </node>
                <node concept="Xl_RD" id="6Sxc5MiyXpX" role="3uHU7w">
                  <property role="Xl_RC" value="manually by choosing Tools-&gt;Run Migration Assistant from the main menu.&lt;br&gt;&lt;br&gt;" />
                </node>
              </node>
              <node concept="Xl_RD" id="6Sxc5MiyXpZ" role="3uHU7w">
                <property role="Xl_RC" value="Problems will be shown in Model Checker tool when the project is loaded." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2htE_P_NbBp" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getProblems" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_NbBr" role="1B3o_S" />
        <node concept="A3Dl8" id="2htE_P_NbBs" role="3clF45">
          <node concept="3uibUv" id="2htE_P_NbBt" role="A3Ik2">
            <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
          </node>
        </node>
        <node concept="3clFbS" id="2htE_P_NbBu" role="3clF47">
          <node concept="3cpWs8" id="2htE_P_LHc2" role="3cqZAp">
            <node concept="3cpWsn" id="2htE_P_LHc3" role="3cpWs9">
              <property role="TrG5h" value="mpsProject" />
              <node concept="3uibUv" id="2htE_P_LHc4" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
              <node concept="2YIFZM" id="2htE_P_LHc5" role="33vP2m">
                <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="37vLTw" id="2htE_P_LHc6" role="37wK5m">
                  <ref role="3cqZAo" node="5SsFeroaaco" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2hu8fhm1z2P" role="3cqZAp">
            <node concept="3cpWsn" id="2hu8fhm1z2Q" role="3cpWs9">
              <property role="TrG5h" value="modules" />
              <node concept="A3Dl8" id="2hu8fhm1z2J" role="1tU5fm">
                <node concept="3uibUv" id="2hu8fhm1z2M" role="A3Ik2">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="2YIFZM" id="2hu8fhm1z2R" role="33vP2m">
                <ref role="1Pybhc" to="umn7:3UfGsecu96G" resolve="MigrationsUtil" />
                <ref role="37wK5l" to="umn7:3UfGsecu96H" resolve="getMigrateableModulesFromProject" />
                <node concept="37vLTw" id="2hu8fhm1z2S" role="37wK5m">
                  <ref role="3cqZAo" node="2htE_P_LHc3" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2htE_P_LHci" role="3cqZAp">
            <node concept="2YIFZM" id="2htE_P_LHcj" role="3cqZAk">
              <ref role="37wK5l" to="t99v:3n7MNzO_xEA" resolve="getProblems" />
              <ref role="1Pybhc" to="t99v:3n7MNzO_xDq" resolve="MigrationCheckUtil" />
              <node concept="37vLTw" id="2hu8fhm1z2T" role="37wK5m">
                <ref role="3cqZAo" node="2hu8fhm1z2Q" resolve="modules" />
              </node>
              <node concept="10Nm6u" id="6JtYk_H7HDW" role="37wK5m" />
              <node concept="3cmrfG" id="2htE_P_LHcl" role="37wK5m">
                <property role="3cmrfH" value="100" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2htE_P_NdDX" role="1zkMxy">
        <ref role="3uigEE" node="2htE_P_MmBs" resolve="MigrationErrorDescriptor" />
      </node>
    </node>
    <node concept="2tJIrI" id="2htE_P_NrO5" role="jymVt" />
    <node concept="312cEu" id="2htE_P_NqxZ" role="jymVt">
      <property role="TrG5h" value="PostCheckError" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFbW" id="2htE_P_Nqy3" role="jymVt">
        <node concept="3clFbS" id="2htE_P_Nqy4" role="3clF47" />
        <node concept="3Tm1VV" id="2htE_P_Nqy5" role="1B3o_S" />
        <node concept="3cqZAl" id="2htE_P_Nqy6" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="2htE_P_Nqy1" role="1B3o_S" />
      <node concept="3clFb_" id="2htE_P_Np6r" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getMessage" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_Np6t" role="1B3o_S" />
        <node concept="3uibUv" id="2htE_P_Np6u" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="2htE_P_Np6v" role="3clF47">
          <node concept="3clFbF" id="6Sxc5Miy2g1" role="3cqZAp">
            <node concept="3cpWs3" id="6Sxc5MiyOgV" role="3clFbG">
              <node concept="3cpWs3" id="6Sxc5MiyOgW" role="3uHU7B">
                <node concept="Xl_RD" id="6Sxc5MiyOgX" role="3uHU7B">
                  <property role="Xl_RC" value="Migration Assistant was unable to migrate some nodes in this project.&lt;br&gt;&lt;br&gt;" />
                </node>
                <node concept="Xl_RD" id="6Sxc5Miz3zQ" role="3uHU7w">
                  <property role="Xl_RC" value="Problem nodes will be shown in Model Checker tool after the project is loaded.&lt;br&gt;" />
                </node>
              </node>
              <node concept="Xl_RD" id="6Sxc5MiyOgZ" role="3uHU7w">
                <property role="Xl_RC" value="Please correct them manually." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2htE_P_Np6x" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getProblems" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_Np6z" role="1B3o_S" />
        <node concept="A3Dl8" id="2htE_P_Np6$" role="3clF45">
          <node concept="3uibUv" id="2htE_P_Np6_" role="A3Ik2">
            <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
          </node>
        </node>
        <node concept="3clFbS" id="2htE_P_Np6A" role="3clF47">
          <node concept="3cpWs8" id="2htE_P_LEqh" role="3cqZAp">
            <node concept="3cpWsn" id="2htE_P_LEqi" role="3cpWs9">
              <property role="TrG5h" value="mpsProject" />
              <node concept="3uibUv" id="2htE_P_LEqj" role="1tU5fm">
                <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
              </node>
              <node concept="2YIFZM" id="2htE_P_LEqk" role="33vP2m">
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                <node concept="37vLTw" id="2htE_P_LEW0" role="37wK5m">
                  <ref role="3cqZAo" node="5SsFeroaaco" resolve="myProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2hu8fhm1zyX" role="3cqZAp">
            <node concept="3cpWsn" id="2hu8fhm1zyY" role="3cpWs9">
              <property role="TrG5h" value="modules" />
              <node concept="A3Dl8" id="2hu8fhm1zyT" role="1tU5fm">
                <node concept="3uibUv" id="2hu8fhm1zyW" role="A3Ik2">
                  <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                </node>
              </node>
              <node concept="2YIFZM" id="2hu8fhm1zyZ" role="33vP2m">
                <ref role="37wK5l" to="umn7:3UfGsecu96H" resolve="getMigrateableModulesFromProject" />
                <ref role="1Pybhc" to="umn7:3UfGsecu96G" resolve="MigrationsUtil" />
                <node concept="37vLTw" id="2hu8fhm1zz0" role="37wK5m">
                  <ref role="3cqZAo" node="2htE_P_LEqi" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="2htE_P_LEJ1" role="3cqZAp">
            <node concept="2YIFZM" id="2htE_P_LEJ2" role="3cqZAk">
              <ref role="1Pybhc" to="t99v:3n7MNzO_xDq" resolve="MigrationCheckUtil" />
              <ref role="37wK5l" to="t99v:3n7MNzO_xEA" resolve="getProblems" />
              <node concept="37vLTw" id="2hu8fhm1zz1" role="37wK5m">
                <ref role="3cqZAo" node="2hu8fhm1zyY" resolve="modules" />
              </node>
              <node concept="10Nm6u" id="6JtYk_H7G74" role="37wK5m" />
              <node concept="3cmrfG" id="2htE_P_LEJ6" role="37wK5m">
                <property role="3cmrfH" value="100" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2htE_P_Nqy2" role="1zkMxy">
        <ref role="3uigEE" node="2htE_P_MmBs" resolve="MigrationErrorDescriptor" />
      </node>
    </node>
    <node concept="312cEu" id="2htE_P_OBzA" role="jymVt">
      <property role="TrG5h" value="MigrationExceptionError" />
      <property role="2bfB8j" value="true" />
      <node concept="3clFbW" id="2htE_P_OBzE" role="jymVt">
        <node concept="3clFbS" id="2htE_P_OBzF" role="3clF47" />
        <node concept="3Tm1VV" id="2htE_P_OBzG" role="1B3o_S" />
        <node concept="3cqZAl" id="2htE_P_OBzH" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="2htE_P_OBzC" role="1B3o_S" />
      <node concept="3clFb_" id="2htE_P_OnpC" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getMessage" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_OnpE" role="1B3o_S" />
        <node concept="3uibUv" id="2htE_P_OnpF" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="2htE_P_OnpG" role="3clF47">
          <node concept="3clFbF" id="2htE_P_On$N" role="3cqZAp">
            <node concept="Xl_RD" id="2htE_P_On$M" role="3clFbG">
              <property role="Xl_RC" value="Exception while running migration. See error log for details." />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2htE_P_OnpI" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getProblems" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_OnpK" role="1B3o_S" />
        <node concept="A3Dl8" id="2htE_P_OnpL" role="3clF45">
          <node concept="3uibUv" id="2htE_P_OnpM" role="A3Ik2">
            <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
          </node>
        </node>
        <node concept="3clFbS" id="2htE_P_OnpN" role="3clF47">
          <node concept="3cpWs6" id="2htE_P_OnD$" role="3cqZAp">
            <node concept="2YIFZM" id="2htE_P_OnLn" role="3cqZAk">
              <ref role="37wK5l" to="33ny:~Collections.emptyList():java.util.List" resolve="emptyList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="3uibUv" id="2htE_P_Orqw" role="3PaCim">
                <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2htE_P_OBzD" role="1zkMxy">
        <ref role="3uigEE" node="2htE_P_MmBs" resolve="MigrationErrorDescriptor" />
      </node>
    </node>
    <node concept="312cEu" id="2htE_P_OSF6" role="jymVt">
      <property role="TrG5h" value="MigrationsMissingError" />
      <property role="2bfB8j" value="true" />
      <node concept="312cEg" id="3OvHNCMjF7p" role="jymVt">
        <property role="TrG5h" value="errors" />
        <node concept="3Tm6S6" id="3OvHNCMjF7q" role="1B3o_S" />
        <node concept="_YKpA" id="3OvHNCMjF7s" role="1tU5fm">
          <node concept="1LlUBW" id="3OvHNCMjF7t" role="_ZDj9">
            <node concept="3uibUv" id="3OvHNCMjF7u" role="1Lm7xW">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="3uibUv" id="3OvHNCMjF7v" role="1Lm7xW">
              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
            </node>
            <node concept="10Oyi0" id="6dYNaa8mBun" role="1Lm7xW" />
          </node>
        </node>
      </node>
      <node concept="3clFbW" id="2htE_P_OSFa" role="jymVt">
        <node concept="37vLTG" id="3OvHNCMjEDl" role="3clF46">
          <property role="TrG5h" value="errors" />
          <node concept="_YKpA" id="3OvHNCMjEO2" role="1tU5fm">
            <node concept="1LlUBW" id="3OvHNCMjEO3" role="_ZDj9">
              <node concept="3uibUv" id="3OvHNCMjEO4" role="1Lm7xW">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="3uibUv" id="3OvHNCMjEO5" role="1Lm7xW">
                <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
              </node>
              <node concept="10Oyi0" id="6dYNaa8mAUX" role="1Lm7xW" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="2htE_P_OSFb" role="3clF47">
          <node concept="3clFbF" id="3OvHNCMjF7y" role="3cqZAp">
            <node concept="37vLTI" id="3OvHNCMjF7$" role="3clFbG">
              <node concept="2OqwBi" id="3OvHNCMjF7C" role="37vLTJ">
                <node concept="Xjq3P" id="3OvHNCMjF7F" role="2Oq$k0" />
                <node concept="2OwXpG" id="3OvHNCMjF7B" role="2OqNvi">
                  <ref role="2Oxat5" node="3OvHNCMjF7p" resolve="errors" />
                </node>
              </node>
              <node concept="37vLTw" id="3OvHNCMjF7G" role="37vLTx">
                <ref role="3cqZAo" node="3OvHNCMjEDl" resolve="errors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="2htE_P_OSFc" role="1B3o_S" />
        <node concept="3cqZAl" id="2htE_P_OSFd" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="2htE_P_OSF8" role="1B3o_S" />
      <node concept="3clFb_" id="2htE_P_OKgK" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getMessage" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_OKgM" role="1B3o_S" />
        <node concept="3uibUv" id="2htE_P_OKgN" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="2htE_P_OKgO" role="3clF47">
          <node concept="3clFbF" id="6Sxc5MixVtZ" role="3cqZAp">
            <node concept="3cpWs3" id="7u9mkj2dzmi" role="3clFbG">
              <node concept="3cpWs3" id="7u9mkj2dz6R" role="3uHU7B">
                <node concept="3cpWs3" id="7u9mkj2dxpm" role="3uHU7B">
                  <node concept="Xl_RD" id="7u9mkj2dxps" role="3uHU7B">
                    <property role="Xl_RC" value="Migration was not completed.&lt;br&gt;" />
                  </node>
                  <node concept="Xl_RD" id="7u9mkj2dySe" role="3uHU7w">
                    <property role="Xl_RC" value="Some migration scripts are missing or finished with errors.&lt;br&gt;&lt;br&gt;" />
                  </node>
                </node>
                <node concept="Xl_RD" id="7u9mkj2dzmo" role="3uHU7w">
                  <property role="Xl_RC" value="Problems will be shown in Model Checker tool after the project is loaded.&lt;br&gt;" />
                </node>
              </node>
              <node concept="Xl_RD" id="7u9mkj2dzmq" role="3uHU7w">
                <property role="Xl_RC" value="You can try to continue migrations manually or execute Migration Assistant later by selecting Tools-&gt;Run Migration Assistant from the main menu." />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2htE_P_OKgQ" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getProblems" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3Tm1VV" id="2htE_P_OKgS" role="1B3o_S" />
        <node concept="A3Dl8" id="2htE_P_OKgT" role="3clF45">
          <node concept="3uibUv" id="2htE_P_OKgU" role="A3Ik2">
            <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
          </node>
        </node>
        <node concept="3clFbS" id="2htE_P_OKgV" role="3clF47">
          <node concept="3clFbF" id="3OvHNCMjGfp" role="3cqZAp">
            <node concept="2OqwBi" id="3OvHNCMjJ3_" role="3clFbG">
              <node concept="2OqwBi" id="3OvHNCMjH1v" role="2Oq$k0">
                <node concept="37vLTw" id="3OvHNCMjGfn" role="2Oq$k0">
                  <ref role="3cqZAo" node="3OvHNCMjF7p" resolve="errors" />
                </node>
                <node concept="8ftyA" id="3OvHNCMjIC5" role="2OqNvi">
                  <node concept="3cmrfG" id="3OvHNCMjIJo" role="8f$Dv">
                    <property role="3cmrfH" value="100" />
                  </node>
                </node>
              </node>
              <node concept="3$u5V9" id="3OvHNCMjL8T" role="2OqNvi">
                <node concept="1bVj0M" id="3OvHNCMjL8V" role="23t8la">
                  <node concept="3clFbS" id="3OvHNCMjL8W" role="1bW5cS">
                    <node concept="3clFbF" id="3OvHNCMjQXu" role="3cqZAp">
                      <node concept="1eOMI4" id="7k0ZD$h8l1B" role="3clFbG">
                        <node concept="10QFUN" id="7k0ZD$h8l1C" role="1eOMHV">
                          <node concept="2ShNRf" id="7k0ZD$h8l1v" role="10QFUP">
                            <node concept="1pGfFk" id="7k0ZD$h8l1w" role="2ShVmc">
                              <ref role="37wK5l" to="t99v:2htE_P_SIXr" resolve="MissingMigrationProblem" />
                              <node concept="37vLTw" id="6dYNaa8mC1k" role="37wK5m">
                                <ref role="3cqZAo" node="3OvHNCMjL8X" resolve="it" />
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="7k0ZD$h8mQH" role="10QFUM">
                            <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3OvHNCMjL8X" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3OvHNCMjL8Y" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="2htE_P_OSF9" role="1zkMxy">
        <ref role="3uigEE" node="2htE_P_MmBs" resolve="MigrationErrorDescriptor" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5SsFeroaa9e">
    <property role="TrG5h" value="InitialStep" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="5SsFeroaa9g" role="1B3o_S" />
    <node concept="3uibUv" id="5SsFeroaa9h" role="1zkMxy">
      <ref role="3uigEE" node="5SsFeroaacg" resolve="MigrationWizardStep" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaa9i" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5SsFeroaa9j" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="5SsFeroaa9k" role="33vP2m">
        <property role="Xl_RC" value="initial" />
      </node>
      <node concept="3Tm1VV" id="5SsFeroaa9l" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="45bCy0j0PmH" role="jymVt" />
    <node concept="Wx3nA" id="45bCy0j0NWk" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TEXT" />
      <node concept="3Tm6S6" id="45bCy0j0NWb" role="1B3o_S" />
      <node concept="17QB3L" id="45bCy0j0NWc" role="1tU5fm" />
      <node concept="3cpWs3" id="45bCy0j0NWd" role="33vP2m">
        <node concept="3cpWs3" id="45bCy0j0NWe" role="3uHU7B">
          <node concept="3cpWs3" id="45bCy0j0NWf" role="3uHU7B">
            <node concept="Xl_RD" id="45bCy0j0NWg" role="3uHU7B">
              <property role="Xl_RC" value="Welcome to Migration Assistant!&lt;br&gt;&lt;br&gt;" />
            </node>
            <node concept="Xl_RD" id="45bCy0j0NWh" role="3uHU7w">
              <property role="Xl_RC" value="MPS has detected that your project requires migration before it can be used with this version of the product.&lt;br&gt;&lt;br&gt;" />
            </node>
          </node>
          <node concept="Xl_RD" id="45bCy0j0NWi" role="3uHU7w">
            <property role="Xl_RC" value="This wizard will guide you through the migration process. It's going to take a while.&lt;br&gt;&lt;br&gt;" />
          </node>
        </node>
        <node concept="Xl_RD" id="45bCy0j0NWj" role="3uHU7w">
          <property role="Xl_RC" value="Select Next to proceed with migration or Cancel if you wish to postpone it." />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YDwes" role="jymVt" />
    <node concept="Wx3nA" id="1u4Xg2YDrtB" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ourOptions" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1u4Xg2YDq0F" role="1B3o_S" />
      <node concept="2ShNRf" id="1u4Xg2YDsJz" role="33vP2m">
        <node concept="1pGfFk" id="1u4Xg2YDtFg" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="1u4Xg2YDu6R" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
          <node concept="3uibUv" id="1u4Xg2YDumg" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1u4Xg2YDtbm" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="1u4Xg2YDtbn" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3uibUv" id="1u4Xg2YDtbo" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="z59LJ" id="1u4Xg2YDxSU" role="lGtFl">
        <node concept="TZ5HA" id="1u4Xg2YDxSV" role="TZ5H$">
          <node concept="1dT_AC" id="1u4Xg2YDxSW" role="1dT_Ay">
            <property role="1dT_AB" value="due to wizard architecture we need this hacky way of passing data from one step to another" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBAkv" role="jymVt" />
    <node concept="312cEg" id="1u4Xg2YBHFP" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myComponents" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="1u4Xg2YBGL7" role="1B3o_S" />
      <node concept="3uibUv" id="1u4Xg2YBHzj" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="1u4Xg2YBHCN" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3uibUv" id="1u4Xg2YBHEf" role="11_B2D">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="2ShNRf" id="1u4Xg2YBIxl" role="33vP2m">
        <node concept="1pGfFk" id="1u4Xg2YBVvX" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="1u4Xg2YBVSi" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
          <node concept="3uibUv" id="1u4Xg2YBWkB" role="1pMfVU">
            <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBAnW" role="jymVt" />
    <node concept="3clFbW" id="5SsFeroaa9m" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5SsFeroaa9n" role="3clF45" />
      <node concept="37vLTG" id="5SsFeroaa9o" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaa9p" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="5SsFeroaa9q" role="3clF47">
        <node concept="XkiVB" id="5SsFeroaZgs" role="3cqZAp">
          <ref role="37wK5l" node="5SsFeroaac$" resolve="MigrationWizardStep" />
          <node concept="37vLTw" id="5SsFeroaZgt" role="37wK5m">
            <ref role="3cqZAo" node="5SsFeroaa9o" resolve="project" />
          </node>
          <node concept="Xl_RD" id="5SsFeroaZgu" role="37wK5m">
            <property role="Xl_RC" value="Migration Required" />
          </node>
          <node concept="37vLTw" id="5SsFeroaZgv" role="37wK5m">
            <ref role="3cqZAo" node="5SsFeroaa9i" resolve="ID" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaa9x" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBCdJ" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaa9y" role="jymVt">
      <property role="TrG5h" value="doCreateComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaa9z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaa9$" role="3clF47">
        <node concept="3cpWs8" id="5SsFeroaa9G" role="3cqZAp">
          <node concept="3cpWsn" id="5SsFeroaa9F" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="pagePanel" />
            <node concept="3uibUv" id="5SsFeroaa9H" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="5SsFerob4Vj" role="33vP2m">
              <node concept="1pGfFk" id="5SsFerob4W2" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="6PeyMxxal2C" role="37wK5m">
                  <node concept="1pGfFk" id="6PeyMxxal2D" role="2ShVmc">
                    <ref role="37wK5l" to="dwmc:~GridLayoutManager.&lt;init&gt;(int,int,java.awt.Insets,int,int)" resolve="GridLayoutManager" />
                    <node concept="3cmrfG" id="6PeyMxxal2u" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                    <node concept="3cmrfG" id="6PeyMxxava4" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                    <node concept="2ShNRf" id="6PeyMxxannI" role="37wK5m">
                      <node concept="1pGfFk" id="6PeyMxxannJ" role="2ShVmc">
                        <ref role="37wK5l" to="g1qu:~JBInsets.&lt;init&gt;(int,int,int,int)" resolve="JBInsets" />
                        <node concept="3cmrfG" id="6PeyMxxal2w" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="6PeyMxxal2x" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="6PeyMxxal2y" role="37wK5m">
                          <property role="3cmrfH" value="5" />
                        </node>
                        <node concept="3cmrfG" id="6PeyMxxal2z" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="6PeyMxxal2$" role="37wK5m">
                      <node concept="3cmrfG" id="6PeyMxxal2_" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                    <node concept="1ZRNhn" id="6PeyMxxal2A" role="37wK5m">
                      <node concept="3cmrfG" id="6PeyMxxal2B" role="2$L3a6">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaaaQ" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFerob2JG" role="3clFbG">
            <node concept="37vLTw" id="5SsFerob2JF" role="2Oq$k0">
              <ref role="3cqZAo" node="59PMlsVO2Zi" resolve="mainPanel" />
            </node>
            <node concept="liA8E" id="5SsFerob2JH" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="5SsFerob2JI" role="37wK5m">
                <ref role="3cqZAo" node="5SsFeroaa9F" resolve="pagePanel" />
              </node>
              <node concept="10M0yZ" id="5SsFerob2JJ" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1u4Xg2YAogj" role="3cqZAp" />
        <node concept="3cpWs8" id="5SsFeroaaa8" role="3cqZAp">
          <node concept="3cpWsn" id="5SsFeroaaa7" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="infoHolder" />
            <node concept="3uibUv" id="5SsFeroaaa9" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="5SsFeroaZ$z" role="33vP2m">
              <node concept="1pGfFk" id="5SsFeroaZ$K" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="5SsFerob9M3" role="37wK5m">
                  <node concept="1pGfFk" id="5SsFerob9M4" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5SsFeroaaak" role="3cqZAp">
          <node concept="3cpWsn" id="5SsFeroaaaj" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="info" />
            <node concept="3uibUv" id="5SsFeroaaal" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JTextPane" resolve="JTextPane" />
            </node>
            <node concept="2ShNRf" id="5SsFerob78s" role="33vP2m">
              <node concept="1pGfFk" id="5SsFerob78t" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextPane.&lt;init&gt;()" resolve="JTextPane" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PeyMxx7BaN" role="3cqZAp">
          <node concept="2YIFZM" id="6PeyMxx7LCp" role="3clFbG">
            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
            <ref role="37wK5l" to="jkm4:~Messages.installHyperlinkSupport(javax.swing.JTextPane):void" resolve="installHyperlinkSupport" />
            <node concept="37vLTw" id="6PeyMxx7BaP" role="37wK5m">
              <ref role="3cqZAo" node="5SsFeroaaaj" resolve="info" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="45bCy0j0Mp8" role="3cqZAp" />
        <node concept="3cpWs8" id="45bCy0j0iWe" role="3cqZAp">
          <node concept="3cpWsn" id="45bCy0j0iWd" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="45bCy0j0iWf" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="45bCy0j0iW_" role="33vP2m">
              <node concept="1pGfFk" id="45bCy0j0iXV" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                <node concept="Xl_RD" id="45bCy0j0iWh" role="37wK5m">
                  <property role="Xl_RC" value="&lt;html&gt;&lt;body&gt;&lt;font face=\&quot;Verdana\&quot; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="45bCy0j0iWi" role="3cqZAp">
          <node concept="2OqwBi" id="45bCy0j0iWj" role="3clFbG">
            <node concept="2OqwBi" id="45bCy0j0iY2" role="2Oq$k0">
              <node concept="37vLTw" id="45bCy0j0iY1" role="2Oq$k0">
                <ref role="3cqZAo" node="45bCy0j0iWd" resolve="sb" />
              </node>
              <node concept="liA8E" id="45bCy0j0iY3" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="3K4zz7" id="45bCy0j0iWo" role="37wK5m">
                  <node concept="10M0yZ" id="45bCy0j0GRF" role="3K4Cdx">
                    <ref role="3cqZAo" to="zn9m:~SystemInfo.isMac" resolve="isMac" />
                    <ref role="1PxDUh" to="zn9m:~SystemInfo" resolve="SystemInfo" />
                  </node>
                  <node concept="Xl_RD" id="45bCy0j0iWm" role="3K4E3e">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="45bCy0j0iWn" role="3K4GZi">
                    <property role="Xl_RC" value="size=\&quot;-1\&quot;" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="45bCy0j0iWp" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(char):java.lang.StringBuilder" resolve="append" />
              <node concept="1Xhbcc" id="45bCy0j0iWq" role="37wK5m">
                <property role="1XhdNS" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="45bCy0j0iWr" role="3cqZAp">
          <node concept="2OqwBi" id="45bCy0j0iWs" role="3clFbG">
            <node concept="2OqwBi" id="45bCy0j0iYf" role="2Oq$k0">
              <node concept="37vLTw" id="45bCy0j0iYe" role="2Oq$k0">
                <ref role="3cqZAo" node="45bCy0j0iWd" resolve="sb" />
              </node>
              <node concept="liA8E" id="45bCy0j0iYg" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="37vLTw" id="45bCy0j0Qx6" role="37wK5m">
                  <ref role="3cqZAo" node="45bCy0j0NWk" resolve="TEXT" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="45bCy0j0iWv" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="45bCy0j0iWw" role="37wK5m">
                <property role="Xl_RC" value="&lt;/font&gt;&lt;/body&gt;&lt;/html&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PeyMxx7BaQ" role="3cqZAp">
          <node concept="2OqwBi" id="6PeyMxx7GV9" role="3clFbG">
            <node concept="37vLTw" id="6PeyMxx7GV8" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaaaj" resolve="info" />
            </node>
            <node concept="liA8E" id="6PeyMxx7GVa" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JEditorPane.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="45bCy0j0SxC" role="37wK5m">
                <node concept="37vLTw" id="45bCy0j0SkI" role="2Oq$k0">
                  <ref role="3cqZAo" node="45bCy0j0iWd" resolve="sb" />
                </node>
                <node concept="liA8E" id="45bCy0j0Tb7" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="45bCy0j0hi1" role="3cqZAp" />
        <node concept="3clFbF" id="6PeyMxx7RsN" role="3cqZAp">
          <node concept="2OqwBi" id="6PeyMxx7RsY" role="3clFbG">
            <node concept="37vLTw" id="6PeyMxx7RsX" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaaaj" resolve="info" />
            </node>
            <node concept="liA8E" id="6PeyMxx7RsZ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension):void" resolve="setPreferredSize" />
              <node concept="2ShNRf" id="6PeyMxx7Rt0" role="37wK5m">
                <node concept="1pGfFk" id="6PeyMxx7Rt1" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="6PeyMxx7RsQ" role="37wK5m">
                    <property role="3cmrfH" value="300" />
                  </node>
                  <node concept="3cmrfG" id="6PeyMxx7RsR" role="37wK5m">
                    <property role="3cmrfH" value="220" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PeyMxx7BaT" role="3cqZAp">
          <node concept="2OqwBi" id="6PeyMxx7GVh" role="3clFbG">
            <node concept="37vLTw" id="6PeyMxx7GVg" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaaa7" resolve="infoHolder" />
            </node>
            <node concept="liA8E" id="6PeyMxx7GVi" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="6PeyMxx7BaV" role="37wK5m">
                <ref role="3cqZAo" node="5SsFeroaaaj" resolve="info" />
              </node>
              <node concept="10M0yZ" id="6PeyMxx7H6l" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaaaJ" role="3cqZAp">
          <node concept="2OqwBi" id="5SsFerob14A" role="3clFbG">
            <node concept="37vLTw" id="5SsFerob14_" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaa9F" resolve="pagePanel" />
            </node>
            <node concept="liA8E" id="5SsFerob14B" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="5SsFerob14C" role="37wK5m">
                <ref role="3cqZAo" node="5SsFeroaaa7" resolve="infoHolder" />
              </node>
              <node concept="2ShNRf" id="6PeyMxxa_Db" role="37wK5m">
                <node concept="1pGfFk" id="6PeyMxxa_Dc" role="2ShVmc">
                  <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension)" resolve="GridConstraints" />
                  <node concept="3cmrfG" id="6PeyMxxa_Dd" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6PeyMxxa_De" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6PeyMxxa_Df" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="6PeyMxxa_Dg" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="10M0yZ" id="6PeyMxxa_Dh" role="37wK5m">
                    <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_NORTHWEST" resolve="ANCHOR_NORTHWEST" />
                    <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                  </node>
                  <node concept="10M0yZ" id="6PeyMxxa_Di" role="37wK5m">
                    <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                    <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                  </node>
                  <node concept="pVOtf" id="6PeyMxxa_Dj" role="37wK5m">
                    <node concept="10M0yZ" id="6PeyMxxa_Dk" role="3uHU7B">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                    <node concept="10M0yZ" id="6PeyMxxa_Dl" role="3uHU7w">
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                    </node>
                  </node>
                  <node concept="pVOtf" id="6PeyMxxa_Dm" role="37wK5m">
                    <node concept="10M0yZ" id="6PeyMxxa_Dn" role="3uHU7B">
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                    </node>
                    <node concept="10M0yZ" id="6PeyMxxa_Do" role="3uHU7w">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6PeyMxxa_Dp" role="37wK5m" />
                  <node concept="10Nm6u" id="6PeyMxxa_Dq" role="37wK5m" />
                  <node concept="10Nm6u" id="6PeyMxxa_Dr" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1u4Xg2YAri6" role="3cqZAp" />
        <node concept="3cpWs8" id="6PeyMxxb0yW" role="3cqZAp">
          <node concept="3cpWsn" id="6PeyMxxb0yX" role="3cpWs9">
            <property role="TrG5h" value="settingsPanel" />
            <node concept="3uibUv" id="6PeyMxxb0yV" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
            </node>
            <node concept="2ShNRf" id="6PeyMxxb0yY" role="33vP2m">
              <node concept="1pGfFk" id="6PeyMxxb0yZ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PeyMxxbEHI" role="3cqZAp">
          <node concept="2OqwBi" id="6PeyMxxbFGN" role="3clFbG">
            <node concept="37vLTw" id="6PeyMxxbEHG" role="2Oq$k0">
              <ref role="3cqZAo" node="6PeyMxxb0yX" resolve="settingsPanel" />
            </node>
            <node concept="liA8E" id="6PeyMxxbJ5O" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager):void" resolve="setLayout" />
              <node concept="2ShNRf" id="6PeyMxxb0z0" role="37wK5m">
                <node concept="1pGfFk" id="6PeyMxxbC1Z" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~BoxLayout.&lt;init&gt;(java.awt.Container,int)" resolve="BoxLayout" />
                  <node concept="37vLTw" id="6PeyMxxbJd6" role="37wK5m">
                    <ref role="3cqZAo" node="6PeyMxxb0yX" resolve="settingsPanel" />
                  </node>
                  <node concept="10M0yZ" id="6PeyMxxbJmc" role="37wK5m">
                    <ref role="1PxDUh" to="dxuu:~BoxLayout" resolve="BoxLayout" />
                    <ref role="3cqZAo" to="dxuu:~BoxLayout.Y_AXIS" resolve="Y_AXIS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2DL82jGzGL1" role="3cqZAp">
          <node concept="2OqwBi" id="2DL82jGzGL2" role="3clFbG">
            <node concept="37vLTw" id="2DL82jGzLAb" role="2Oq$k0">
              <ref role="3cqZAo" node="6PeyMxxb0yX" resolve="settingsPanel" />
            </node>
            <node concept="liA8E" id="2DL82jGzGL4" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border):void" resolve="setBorder" />
              <node concept="2YIFZM" id="2DL82jGzGL5" role="37wK5m">
                <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createTitledBorder(java.lang.String,boolean):com.intellij.ui.border.IdeaTitledBorder" resolve="createTitledBorder" />
                <node concept="Xl_RD" id="2DL82jGzGL6" role="37wK5m">
                  <property role="Xl_RC" value="Settings" />
                </node>
                <node concept="3clFbT" id="2DL82jGzGL7" role="37wK5m">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6PeyMxxbpjo" role="3cqZAp">
          <node concept="2OqwBi" id="6PeyMxxbpjp" role="3clFbG">
            <node concept="37vLTw" id="6PeyMxxbpjq" role="2Oq$k0">
              <ref role="3cqZAo" node="5SsFeroaa9F" resolve="pagePanel" />
            </node>
            <node concept="liA8E" id="6PeyMxxbpjr" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="2DL82jGzQWz" role="37wK5m">
                <ref role="3cqZAo" node="6PeyMxxb0yX" resolve="settingsPanel" />
              </node>
              <node concept="2ShNRf" id="6PeyMxxbpjt" role="37wK5m">
                <node concept="1pGfFk" id="6PeyMxxbpju" role="2ShVmc">
                  <ref role="37wK5l" to="dwmc:~GridConstraints.&lt;init&gt;(int,int,int,int,int,int,int,int,java.awt.Dimension,java.awt.Dimension,java.awt.Dimension)" resolve="GridConstraints" />
                  <node concept="3cmrfG" id="6PeyMxxbt5q" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="boyHybpBdE" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3cmrfG" id="6PeyMxxbpjy" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="3cmrfG" id="6PeyMxxbpjz" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="10M0yZ" id="6PeyMxxbpj$" role="37wK5m">
                    <ref role="3cqZAo" to="dwmc:~GridConstraints.ANCHOR_NORTHWEST" resolve="ANCHOR_NORTHWEST" />
                    <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                  </node>
                  <node concept="10M0yZ" id="6PeyMxxbpj_" role="37wK5m">
                    <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    <ref role="3cqZAo" to="dwmc:~GridConstraints.FILL_BOTH" resolve="FILL_BOTH" />
                  </node>
                  <node concept="pVOtf" id="6PeyMxxbpjA" role="37wK5m">
                    <node concept="10M0yZ" id="6PeyMxxbpjB" role="3uHU7B">
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_SHRINK" resolve="SIZEPOLICY_CAN_SHRINK" />
                    </node>
                    <node concept="10M0yZ" id="6PeyMxxbpjC" role="3uHU7w">
                      <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_CAN_GROW" resolve="SIZEPOLICY_CAN_GROW" />
                      <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    </node>
                  </node>
                  <node concept="10M0yZ" id="6PeyMxxbpjD" role="37wK5m">
                    <ref role="1PxDUh" to="dwmc:~GridConstraints" resolve="GridConstraints" />
                    <ref role="3cqZAo" to="dwmc:~GridConstraints.SIZEPOLICY_FIXED" resolve="SIZEPOLICY_FIXED" />
                  </node>
                  <node concept="10Nm6u" id="6PeyMxxbpjE" role="37wK5m" />
                  <node concept="10Nm6u" id="6PeyMxxbpjF" role="37wK5m" />
                  <node concept="10Nm6u" id="6PeyMxxbpjG" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5fy1Xi0hVxF" role="3cqZAp" />
        <node concept="3cpWs8" id="25gV4LspuWF" role="3cqZAp">
          <node concept="3cpWsn" id="25gV4LspuWG" role="3cpWs9">
            <property role="TrG5h" value="pMig" />
            <node concept="_YKpA" id="25gV4Lspx4d" role="1tU5fm">
              <node concept="3uibUv" id="25gV4Lspx4f" role="_ZDj9">
                <ref role="3uigEE" to="bdll:~ProjectMigration" resolve="ProjectMigration" />
              </node>
            </node>
            <node concept="2OqwBi" id="25gV4LspuWH" role="33vP2m">
              <node concept="2YIFZM" id="25gV4Lsxw$6" role="2Oq$k0">
                <ref role="37wK5l" to="bdll:~ProjectMigrationsRegistry.getInstance():jetbrains.mps.migration.global.ProjectMigrationsRegistry" resolve="getInstance" />
                <ref role="1Pybhc" to="bdll:~ProjectMigrationsRegistry" resolve="ProjectMigrationsRegistry" />
              </node>
              <node concept="liA8E" id="25gV4LspuWJ" role="2OqNvi">
                <ref role="37wK5l" to="bdll:~ProjectMigrationsRegistry.getMigrations():java.util.List" resolve="getMigrations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1u4Xg2YAG6k" role="3cqZAp">
          <node concept="2OqwBi" id="1u4Xg2YALex" role="3clFbG">
            <node concept="2OqwBi" id="1u4Xg2YAHBy" role="2Oq$k0">
              <node concept="2OqwBi" id="25gV4LspBhR" role="2Oq$k0">
                <node concept="2OqwBi" id="6vz$Djul$$m" role="2Oq$k0">
                  <node concept="37vLTw" id="25gV4LspBhS" role="2Oq$k0">
                    <ref role="3cqZAo" node="25gV4LspuWG" resolve="pMig" />
                  </node>
                  <node concept="UnYns" id="6vz$DjulAOg" role="2OqNvi">
                    <node concept="3uibUv" id="6vz$DjulIYf" role="UnYnz">
                      <ref role="3uigEE" to="bdll:~ProjectMigrationWithOptions" resolve="ProjectMigrationWithOptions" />
                    </node>
                  </node>
                </node>
                <node concept="3zZkjj" id="1u4Xg2YAFcX" role="2OqNvi">
                  <node concept="1bVj0M" id="1u4Xg2YAFcZ" role="23t8la">
                    <node concept="3clFbS" id="1u4Xg2YAFd0" role="1bW5cS">
                      <node concept="3clFbF" id="1u4Xg2YAFd1" role="3cqZAp">
                        <node concept="2OqwBi" id="1u4Xg2YAFd2" role="3clFbG">
                          <node concept="37vLTw" id="1u4Xg2YAFd3" role="2Oq$k0">
                            <ref role="3cqZAo" node="1u4Xg2YAFd7" resolve="it" />
                          </node>
                          <node concept="liA8E" id="1u4Xg2YAFd4" role="2OqNvi">
                            <ref role="37wK5l" to="bdll:~ProjectMigration.shouldBeExecuted(jetbrains.mps.project.Project):boolean" resolve="shouldBeExecuted" />
                            <node concept="2YIFZM" id="1u4Xg2YAFd5" role="37wK5m">
                              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                              <ref role="37wK5l" to="alof:~ProjectHelper.toMPSProject(com.intellij.openapi.project.Project):jetbrains.mps.project.Project" resolve="toMPSProject" />
                              <node concept="37vLTw" id="1u4Xg2YAFd6" role="37wK5m">
                                <ref role="3cqZAo" node="5SsFeroaaco" resolve="myProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1u4Xg2YAFd7" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1u4Xg2YAFd8" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3goQfb" id="1u4Xg2YAJ3z" role="2OqNvi">
                <node concept="1bVj0M" id="1u4Xg2YAJ3_" role="23t8la">
                  <node concept="3clFbS" id="1u4Xg2YAJ3A" role="1bW5cS">
                    <node concept="3clFbF" id="1u4Xg2YAKk4" role="3cqZAp">
                      <node concept="2OqwBi" id="1u4Xg2YAKuC" role="3clFbG">
                        <node concept="37vLTw" id="1u4Xg2YAKk3" role="2Oq$k0">
                          <ref role="3cqZAo" node="1u4Xg2YAJ3B" resolve="it" />
                        </node>
                        <node concept="liA8E" id="1u4Xg2YAKS6" role="2OqNvi">
                          <ref role="37wK5l" to="bdll:~ProjectMigrationWithOptions.getOptionIds():java.util.Collection" resolve="getOptionIds" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1u4Xg2YAJ3B" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1u4Xg2YAJ3C" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="1u4Xg2YANuX" role="2OqNvi">
              <node concept="1bVj0M" id="1u4Xg2YANuZ" role="23t8la">
                <node concept="3clFbS" id="1u4Xg2YANv0" role="1bW5cS">
                  <node concept="3cpWs8" id="1u4Xg2YBWCk" role="3cqZAp">
                    <node concept="3cpWsn" id="1u4Xg2YBWCl" role="3cpWs9">
                      <property role="TrG5h" value="c" />
                      <node concept="3uibUv" id="1u4Xg2YBWBc" role="1tU5fm">
                        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                      </node>
                      <node concept="2OqwBi" id="1u4Xg2YBWCm" role="33vP2m">
                        <node concept="2YIFZM" id="1u4Xg2YBWCn" role="2Oq$k0">
                          <ref role="37wK5l" to="bdll:~ProjectOptionsRegistry.getInstance():jetbrains.mps.migration.global.ProjectOptionsRegistry" resolve="getInstance" />
                          <ref role="1Pybhc" to="bdll:~ProjectOptionsRegistry" resolve="ProjectOptionsRegistry" />
                        </node>
                        <node concept="liA8E" id="1u4Xg2YBWCo" role="2OqNvi">
                          <ref role="37wK5l" to="bdll:~ProjectOptionsRegistry.createComponentForOption(java.lang.String):javax.swing.JComponent" resolve="createComponentForOption" />
                          <node concept="37vLTw" id="1u4Xg2YBWCp" role="37wK5m">
                            <ref role="3cqZAo" node="1u4Xg2YANv1" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="1u4Xg2YBXXn" role="3cqZAp">
                    <node concept="2OqwBi" id="1u4Xg2YBY_Q" role="3clFbG">
                      <node concept="37vLTw" id="1u4Xg2YBXXl" role="2Oq$k0">
                        <ref role="3cqZAo" node="1u4Xg2YBHFP" resolve="myComponents" />
                      </node>
                      <node concept="liA8E" id="1u4Xg2YBZEE" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                        <node concept="37vLTw" id="1u4Xg2YC09b" role="37wK5m">
                          <ref role="3cqZAo" node="1u4Xg2YANv1" resolve="it" />
                        </node>
                        <node concept="37vLTw" id="1u4Xg2YC18A" role="37wK5m">
                          <ref role="3cqZAo" node="1u4Xg2YBWCl" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6PeyMxxbwYE" role="3cqZAp">
                    <node concept="2OqwBi" id="6PeyMxxbxW2" role="3clFbG">
                      <node concept="37vLTw" id="6PeyMxxbwYC" role="2Oq$k0">
                        <ref role="3cqZAo" node="6PeyMxxb0yX" resolve="settingsPanel" />
                      </node>
                      <node concept="liA8E" id="6PeyMxxb$Md" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component):java.awt.Component" resolve="add" />
                        <node concept="37vLTw" id="6PeyMxxb_tM" role="37wK5m">
                          <ref role="3cqZAo" node="1u4Xg2YBWCl" resolve="c" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1u4Xg2YANv1" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1u4Xg2YANv2" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fy1Xi0ifx8" role="3cqZAp">
          <node concept="2OqwBi" id="5fy1Xi0ihpX" role="3clFbG">
            <node concept="37vLTw" id="5fy1Xi0ifx6" role="2Oq$k0">
              <ref role="3cqZAo" node="6PeyMxxb0yX" resolve="settingsPanel" />
            </node>
            <node concept="liA8E" id="5fy1Xi0ikoQ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setVisible(boolean):void" resolve="setVisible" />
              <node concept="3fqX7Q" id="5fy1Xi0imoL" role="37wK5m">
                <node concept="2OqwBi" id="5fy1Xi0imoM" role="3fr31v">
                  <node concept="37vLTw" id="5fy1Xi0imoN" role="2Oq$k0">
                    <ref role="3cqZAo" node="1u4Xg2YBHFP" resolve="myComponents" />
                  </node>
                  <node concept="liA8E" id="5fy1Xi0imoO" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.isEmpty():boolean" resolve="isEmpty" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="5SsFeroaaaU" role="1B3o_S" />
      <node concept="3cqZAl" id="5SsFeroaaaV" role="3clF45" />
      <node concept="37vLTG" id="59PMlsVO2Zi" role="3clF46">
        <property role="TrG5h" value="mainPanel" />
        <node concept="3uibUv" id="59PMlsVO2Zh" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBCZN" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaaaW" role="jymVt">
      <property role="TrG5h" value="getNextStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaaaX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaaaY" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaaaZ" role="3cqZAp">
          <node concept="10M0yZ" id="5SsFerob3Wh" role="3cqZAk">
            <ref role="1PxDUh" node="5SsFeroaavG" resolve="MigrationsProgressWizardStep" />
            <ref role="3cqZAo" node="5SsFeroaavK" resolve="ID" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaab1" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaab2" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBDLS" role="jymVt" />
    <node concept="3clFb_" id="5SsFeroaab3" role="jymVt">
      <property role="TrG5h" value="getPreviousStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaab4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaab5" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaab6" role="3cqZAp">
          <node concept="10Nm6u" id="5SsFeroaab7" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaab8" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaab9" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBEzY" role="jymVt" />
    <node concept="2YIFZL" id="1u4Xg2YDFA6" role="jymVt">
      <property role="TrG5h" value="getOptions" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1u4Xg2YDFA9" role="3clF47">
        <node concept="3cpWs6" id="1u4Xg2YDGTB" role="3cqZAp">
          <node concept="37vLTw" id="1u4Xg2YDH05" role="3cqZAk">
            <ref role="3cqZAo" node="1u4Xg2YDrtB" resolve="ourOptions" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1u4Xg2YDEhS" role="1B3o_S" />
      <node concept="3uibUv" id="1u4Xg2YDGJF" role="3clF45">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="1u4Xg2YDGJG" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3uibUv" id="1u4Xg2YDGJH" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1u4Xg2YBFdT" role="jymVt" />
    <node concept="3clFb_" id="1u4Xg2YC2$7" role="jymVt">
      <property role="TrG5h" value="commit" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="2AHcQZ" id="1u4Xg2YC2$8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="1u4Xg2YC2$9" role="3clF46">
        <property role="TrG5h" value="commitType" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1u4Xg2YC2$a" role="1tU5fm">
          <ref role="3uigEE" to="uxeh:~AbstractWizardStepEx$CommitType" resolve="AbstractWizardStepEx.CommitType" />
        </node>
      </node>
      <node concept="3uibUv" id="1u4Xg2YC2$b" role="Sfmx6">
        <ref role="3uigEE" to="uxeh:~CommitStepException" resolve="CommitStepException" />
      </node>
      <node concept="3Tm1VV" id="1u4Xg2YC2$d" role="1B3o_S" />
      <node concept="3cqZAl" id="1u4Xg2YC2$e" role="3clF45" />
      <node concept="3clFbS" id="1u4Xg2YC2$f" role="3clF47">
        <node concept="3clFbF" id="1u4Xg2YC2$i" role="3cqZAp">
          <node concept="3nyPlj" id="1u4Xg2YC2$h" role="3clFbG">
            <ref role="37wK5l" node="5SsFeroaadl" resolve="commit" />
            <node concept="37vLTw" id="1u4Xg2YC2$g" role="37wK5m">
              <ref role="3cqZAo" node="1u4Xg2YC2$9" resolve="commitType" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1u4Xg2YC86r" role="3cqZAp" />
        <node concept="3clFbF" id="1u4Xg2YDzPN" role="3cqZAp">
          <node concept="2OqwBi" id="1u4Xg2YD$nE" role="3clFbG">
            <node concept="37vLTw" id="1u4Xg2YDzPL" role="2Oq$k0">
              <ref role="3cqZAo" node="1u4Xg2YDrtB" resolve="ourOptions" />
            </node>
            <node concept="liA8E" id="1u4Xg2YD_LV" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.clear():void" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1u4Xg2YC8hw" role="3cqZAp">
          <node concept="2GrKxI" id="1u4Xg2YC8hy" role="2Gsz3X">
            <property role="TrG5h" value="id" />
          </node>
          <node concept="3clFbS" id="1u4Xg2YC8h$" role="2LFqv$">
            <node concept="3cpWs8" id="1u4Xg2YCho4" role="3cqZAp">
              <node concept="3cpWsn" id="1u4Xg2YCho5" role="3cpWs9">
                <property role="TrG5h" value="c" />
                <node concept="3uibUv" id="1u4Xg2YChnr" role="1tU5fm">
                  <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                </node>
                <node concept="2OqwBi" id="1u4Xg2YCho6" role="33vP2m">
                  <node concept="37vLTw" id="1u4Xg2YCho7" role="2Oq$k0">
                    <ref role="3cqZAo" node="1u4Xg2YBHFP" resolve="myComponents" />
                  </node>
                  <node concept="liA8E" id="1u4Xg2YCho8" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object):java.lang.Object" resolve="get" />
                    <node concept="2GrUjf" id="1u4Xg2YCho9" role="37wK5m">
                      <ref role="2Gs0qQ" node="1u4Xg2YC8hy" resolve="id" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1u4Xg2YCdyD" role="3cqZAp">
              <node concept="3cpWsn" id="1u4Xg2YCdyE" role="3cpWs9">
                <property role="TrG5h" value="val" />
                <node concept="3uibUv" id="1u4Xg2YCdyB" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
                <node concept="2OqwBi" id="1u4Xg2YCdyF" role="33vP2m">
                  <node concept="2YIFZM" id="1u4Xg2YCdyG" role="2Oq$k0">
                    <ref role="37wK5l" to="bdll:~ProjectOptionsRegistry.getInstance():jetbrains.mps.migration.global.ProjectOptionsRegistry" resolve="getInstance" />
                    <ref role="1Pybhc" to="bdll:~ProjectOptionsRegistry" resolve="ProjectOptionsRegistry" />
                  </node>
                  <node concept="liA8E" id="1u4Xg2YCdyH" role="2OqNvi">
                    <ref role="37wK5l" to="bdll:~ProjectOptionsRegistry.getValueFromComponent(javax.swing.JComponent):java.lang.Object" resolve="getValueFromComponent" />
                    <node concept="37vLTw" id="1u4Xg2YChoa" role="37wK5m">
                      <ref role="3cqZAo" node="1u4Xg2YCho5" resolve="c" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1u4Xg2YC74g" role="3cqZAp">
              <node concept="2OqwBi" id="1u4Xg2YC7mX" role="3clFbG">
                <node concept="37vLTw" id="1u4Xg2YDC93" role="2Oq$k0">
                  <ref role="3cqZAo" node="1u4Xg2YDrtB" resolve="ourOptions" />
                </node>
                <node concept="liA8E" id="1u4Xg2YCbtV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object):java.lang.Object" resolve="put" />
                  <node concept="2GrUjf" id="1u4Xg2YCb$6" role="37wK5m">
                    <ref role="2Gs0qQ" node="1u4Xg2YC8hy" resolve="id" />
                  </node>
                  <node concept="37vLTw" id="1u4Xg2YCdyJ" role="37wK5m">
                    <ref role="3cqZAo" node="1u4Xg2YCdyE" resolve="val" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1u4Xg2YC91v" role="2GsD0m">
            <node concept="37vLTw" id="1u4Xg2YC8OC" role="2Oq$k0">
              <ref role="3cqZAo" node="1u4Xg2YBHFP" resolve="myComponents" />
            </node>
            <node concept="liA8E" id="1u4Xg2YCaoz" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.keySet():java.util.Set" resolve="keySet" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5SsFeroaacg">
    <property role="TrG5h" value="MigrationWizardStep" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="5SsFeroaaci" role="1B3o_S" />
    <node concept="3uibUv" id="5SsFeroaacj" role="1zkMxy">
      <ref role="3uigEE" to="uxeh:~AbstractWizardStepEx" resolve="AbstractWizardStepEx" />
    </node>
    <node concept="Wx3nA" id="5SsFeroaack" role="jymVt">
      <property role="TrG5h" value="WIZARD_ICON" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="5SsFeroaacl" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="10M0yZ" id="5SsFerobFUj" role="33vP2m">
        <ref role="1PxDUh" to="l7us:~MPSIcons$General" resolve="MPSIcons.General" />
        <ref role="3cqZAo" to="l7us:~MPSIcons$General.NewProject" resolve="NewProject" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaacn" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaaco" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaacq" role="1tU5fm">
        <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
      </node>
      <node concept="3Tmbuc" id="5SsFeroaacr" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaacs" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myComponent" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaacu" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm6S6" id="59PMlsVO3Tt" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5SsFeroaacw" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myId" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5SsFeroaacy" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tm6S6" id="5SsFeroaacz" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5SsFeroaac$" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5SsFeroaac_" role="3clF45" />
      <node concept="37vLTG" id="5SsFeroaacA" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaacB" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5SsFeroaacC" role="3clF46">
        <property role="TrG5h" value="title" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaacD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="5SsFeroaacE" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaacF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="5SsFeroaacG" role="3clF47">
        <node concept="XkiVB" id="5SsFerobFS6" role="3cqZAp">
          <ref role="37wK5l" to="uxeh:~AbstractWizardStepEx.&lt;init&gt;(java.lang.String)" resolve="AbstractWizardStepEx" />
          <node concept="37vLTw" id="5SsFerobFS7" role="37wK5m">
            <ref role="3cqZAo" node="5SsFeroaacC" resolve="title" />
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaacH" role="3cqZAp">
          <node concept="37vLTI" id="5SsFeroaacI" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroaacJ" role="37vLTJ">
              <ref role="3cqZAo" node="5SsFeroaaco" resolve="myProject" />
            </node>
            <node concept="37vLTw" id="5SsFeroaacK" role="37vLTx">
              <ref role="3cqZAo" node="5SsFeroaacA" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5SsFeroaacL" role="3cqZAp">
          <node concept="37vLTI" id="5SsFeroaacM" role="3clFbG">
            <node concept="37vLTw" id="5SsFeroaacN" role="37vLTJ">
              <ref role="3cqZAo" node="5SsFeroaacw" resolve="myId" />
            </node>
            <node concept="37vLTw" id="5SsFeroaacO" role="37vLTx">
              <ref role="3cqZAo" node="5SsFeroaacE" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaacR" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="5SsFeroaacS" role="jymVt">
      <property role="TrG5h" value="getStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaacT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="5SsFeroaacU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaacV" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaacW" role="3cqZAp">
          <node concept="37vLTw" id="5SsFeroaacX" role="3cqZAk">
            <ref role="3cqZAo" node="5SsFeroaacw" resolve="myId" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaacY" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaacZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaad0" role="jymVt">
      <property role="TrG5h" value="getIcon" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaad1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaad2" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaad3" role="3cqZAp">
          <node concept="37vLTw" id="5SsFeroaad4" role="3cqZAk">
            <ref role="3cqZAo" node="5SsFeroaack" resolve="WIZARD_ICON" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaad5" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaad6" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaad7" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaad8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaad9" role="3clF47">
        <node concept="3clFbJ" id="59PMlsVNSTw" role="3cqZAp">
          <node concept="3clFbS" id="59PMlsVNSTy" role="3clFbx">
            <node concept="3clFbF" id="5SsFeroaadM" role="3cqZAp">
              <node concept="37vLTI" id="5SsFeroaadN" role="3clFbG">
                <node concept="2OqwBi" id="5SsFeroaadO" role="37vLTJ">
                  <node concept="Xjq3P" id="5SsFeroaadP" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5SsFeroaadQ" role="2OqNvi">
                    <ref role="2Oxat5" node="5SsFeroaacs" resolve="myComponent" />
                  </node>
                </node>
                <node concept="2ShNRf" id="5SsFerobFVn" role="37vLTx">
                  <node concept="1pGfFk" id="5SsFerobFW6" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                    <node concept="2ShNRf" id="5SsFerobFW7" role="37wK5m">
                      <node concept="1pGfFk" id="5SsFerobFW8" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="45bCy0iZAcl" role="3cqZAp">
              <node concept="2OqwBi" id="45bCy0iZAJv" role="3clFbG">
                <node concept="37vLTw" id="45bCy0iZAcj" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SsFeroaacs" resolve="myComponent" />
                </node>
                <node concept="liA8E" id="45bCy0iZC9C" role="2OqNvi">
                  <ref role="37wK5l" to="dxuu:~JComponent.setBorder(javax.swing.border.Border):void" resolve="setBorder" />
                  <node concept="2YIFZM" id="Ns7_LDWkIu" role="37wK5m">
                    <ref role="1Pybhc" to="lzb2:~IdeBorderFactory" resolve="IdeBorderFactory" />
                    <ref role="37wK5l" to="lzb2:~IdeBorderFactory.createEmptyBorder(int,int,int,int):javax.swing.border.Border" resolve="createEmptyBorder" />
                    <node concept="3cmrfG" id="45bCy0j06mS" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="45bCy0j07js" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                    </node>
                    <node concept="3cmrfG" id="45bCy0j07qJ" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="3cmrfG" id="45bCy0j07uG" role="37wK5m">
                      <property role="3cmrfH" value="10" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="59PMlsVNUV2" role="3cqZAp">
              <node concept="1rXfSq" id="59PMlsVNUV0" role="3clFbG">
                <ref role="37wK5l" node="5SsFeroaadK" resolve="doCreateComponent" />
                <node concept="37vLTw" id="59PMlsVNV0z" role="37wK5m">
                  <ref role="3cqZAo" node="5SsFeroaacs" resolve="myComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="59PMlsVNUhc" role="3clFbw">
            <node concept="37vLTw" id="59PMlsVNT8P" role="3uHU7B">
              <ref role="3cqZAo" node="5SsFeroaacs" resolve="myComponent" />
            </node>
            <node concept="10Nm6u" id="59PMlsVNUe6" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbH" id="59PMlsVNNcZ" role="3cqZAp" />
        <node concept="3cpWs6" id="5SsFeroaada" role="3cqZAp">
          <node concept="37vLTw" id="5SsFeroaadb" role="3cqZAk">
            <ref role="3cqZAo" node="5SsFeroaacs" resolve="myComponent" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaadc" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaadd" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaade" role="jymVt">
      <property role="TrG5h" value="getPreferredFocusedComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaadf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaadg" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaadh" role="3cqZAp">
          <node concept="10Nm6u" id="5SsFeroaadi" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaadj" role="1B3o_S" />
      <node concept="3uibUv" id="5SsFeroaadk" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaadl" role="jymVt">
      <property role="TrG5h" value="commit" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaadm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="5SsFeroaadn" role="3clF46">
        <property role="TrG5h" value="commitType" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5SsFeroaado" role="1tU5fm">
          <ref role="3uigEE" to="uxeh:~AbstractWizardStepEx$CommitType" resolve="AbstractWizardStepEx.CommitType" />
        </node>
      </node>
      <node concept="3uibUv" id="5SsFeroaadp" role="Sfmx6">
        <ref role="3uigEE" to="uxeh:~CommitStepException" resolve="CommitStepException" />
      </node>
      <node concept="3clFbS" id="5SsFeroaadq" role="3clF47" />
      <node concept="3Tm1VV" id="5SsFeroaadr" role="1B3o_S" />
      <node concept="3cqZAl" id="5SsFeroaads" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5SsFeroaadt" role="jymVt">
      <property role="TrG5h" value="isComplete" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="5SsFeroaadu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="5SsFeroaadv" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaadw" role="3cqZAp">
          <node concept="3clFbT" id="5SsFeroaadx" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaady" role="1B3o_S" />
      <node concept="10P_77" id="5SsFeroaadz" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5SsFeroaad$" role="jymVt">
      <property role="TrG5h" value="canBeCancelled" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5SsFeroaad_" role="3clF47">
        <node concept="3cpWs6" id="5SsFeroaadA" role="3cqZAp">
          <node concept="3clFbT" id="5SsFeroaadB" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaadC" role="1B3o_S" />
      <node concept="10P_77" id="5SsFeroaadD" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5SsFeroaadE" role="jymVt">
      <property role="TrG5h" value="autostart" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5SsFeroaadF" role="3clF47">
        <node concept="3clFbF" id="7rK8qWGFkMu" role="3cqZAp">
          <node concept="2OqwBi" id="7rK8qWGFkUe" role="3clFbG">
            <node concept="37vLTw" id="7rK8qWGFkMt" role="2Oq$k0">
              <ref role="3cqZAo" node="7rK8qWGFkpa" resolve="later" />
            </node>
            <node concept="1Bd96e" id="7rK8qWGFl4a" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5SsFeroaadI" role="1B3o_S" />
      <node concept="3cqZAl" id="7rK8qWGE16A" role="3clF45" />
      <node concept="37vLTG" id="7rK8qWGFkpa" role="3clF46">
        <property role="TrG5h" value="later" />
        <node concept="1ajhzC" id="7rK8qWGFkp8" role="1tU5fm">
          <node concept="3cqZAl" id="7rK8qWGFkJv" role="1ajl9A" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5SsFeroaadK" role="jymVt">
      <property role="TrG5h" value="doCreateComponent" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="5SsFeroaadL" role="3clF47" />
      <node concept="3Tmbuc" id="5SsFeroaae4" role="1B3o_S" />
      <node concept="3cqZAl" id="5SsFeroaae5" role="3clF45" />
      <node concept="37vLTG" id="59PMlsVNV3k" role="3clF46">
        <property role="TrG5h" value="mainPanel" />
        <node concept="3uibUv" id="59PMlsVNV3j" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="12JIgXNwLaS">
    <property role="TrG5h" value="MigrationErrorWizardStep" />
    <property role="2bfB8j" value="true" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="" />
    <node concept="Wx3nA" id="2htE_P_MPZD" role="jymVt">
      <property role="TrG5h" value="ID" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2htE_P_MPZE" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="2htE_P_MPZF" role="33vP2m">
        <property role="Xl_RC" value="Problem" />
      </node>
      <node concept="3Tm1VV" id="2htE_P_MPZG" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="3$mAZJg3DKR" role="jymVt">
      <property role="TrG5h" value="myInfoLabel" />
      <node concept="3Tm6S6" id="3$mAZJg3DKP" role="1B3o_S" />
      <node concept="3uibUv" id="3$mAZJg3DKQ" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextPane" resolve="JTextPane" />
      </node>
    </node>
    <node concept="2tJIrI" id="2htE_P_MPNu" role="jymVt" />
    <node concept="312cEg" id="2htE_P_MQoX" role="jymVt">
      <property role="TrG5h" value="myErrorContainer" />
      <node concept="3Tm6S6" id="2htE_P_MQoY" role="1B3o_S" />
      <node concept="3uibUv" id="2htE_P_PKN1" role="1tU5fm">
        <ref role="3uigEE" node="2htE_P_Pzio" resolve="MigrationErrorContainer" />
      </node>
    </node>
    <node concept="2tJIrI" id="2htE_P_MQW_" role="jymVt" />
    <node concept="3Tm1VV" id="12JIgXNwLaU" role="1B3o_S" />
    <node concept="3uibUv" id="12JIgXNwLaV" role="1zkMxy">
      <ref role="3uigEE" node="5SsFeroaacg" resolve="MigrationWizardStep" />
    </node>
    <node concept="3clFbW" id="12JIgXNwLb0" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="12JIgXNwLb1" role="3clF45" />
      <node concept="37vLTG" id="12JIgXNwLb2" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="12JIgXNwLb3" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2htE_P_MQjg" role="3clF46">
        <property role="TrG5h" value="stateHolder" />
        <node concept="3uibUv" id="2htE_P_PKLn" role="1tU5fm">
          <ref role="3uigEE" node="2htE_P_Pzio" resolve="MigrationErrorContainer" />
        </node>
      </node>
      <node concept="3clFbS" id="12JIgXNwLb4" role="3clF47">
        <node concept="XkiVB" id="12JIgXNwLcQ" role="3cqZAp">
          <ref role="37wK5l" node="5SsFeroaac$" resolve="MigrationWizardStep" />
          <node concept="37vLTw" id="12JIgXNwLcR" role="37wK5m">
            <ref role="3cqZAo" node="12JIgXNwLb2" resolve="project" />
          </node>
          <node concept="Xl_RD" id="12JIgXNwLcS" role="37wK5m">
            <property role="Xl_RC" value="Could not Apply All Migrations" />
          </node>
          <node concept="37vLTw" id="2htE_P_MRsc" role="37wK5m">
            <ref role="3cqZAo" node="2htE_P_MPZD" resolve="ID" />
          </node>
        </node>
        <node concept="3clFbF" id="2htE_P_MQp1" role="3cqZAp">
          <node concept="37vLTI" id="2htE_P_MQp3" role="3clFbG">
            <node concept="37vLTw" id="2htE_P_MRpc" role="37vLTJ">
              <ref role="3cqZAo" node="2htE_P_MQoX" resolve="myErrorContainer" />
            </node>
            <node concept="37vLTw" id="2htE_P_MQpb" role="37vLTx">
              <ref role="3cqZAo" node="2htE_P_MQjg" resolve="stateHolder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="12JIgXNwLbb" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="12JIgXNwLbc" role="jymVt">
      <property role="TrG5h" value="doCreateComponent" />
      <property role="DiZV1" value="true" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="12JIgXNwLbd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="12JIgXNwLbe" role="3clF47">
        <node concept="3clFbF" id="3$mAZJg3DKZ" role="3cqZAp">
          <node concept="37vLTI" id="3$mAZJg3DL0" role="3clFbG">
            <node concept="2OqwBi" id="3$mAZJg3DL1" role="37vLTJ">
              <node concept="Xjq3P" id="3$mAZJg3DL2" role="2Oq$k0" />
              <node concept="2OwXpG" id="3$mAZJg3DL3" role="2OqNvi">
                <ref role="2Oxat5" node="3$mAZJg3DKR" resolve="myInfoLabel" />
              </node>
            </node>
            <node concept="2ShNRf" id="3$mAZJg3DL4" role="37vLTx">
              <node concept="1pGfFk" id="3$mAZJg3DL5" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextPane.&lt;init&gt;()" resolve="JTextPane" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3F1hOdyB$SH" role="3cqZAp">
          <node concept="2YIFZM" id="3F1hOdyB$SI" role="3clFbG">
            <ref role="1Pybhc" to="jkm4:~Messages" resolve="Messages" />
            <ref role="37wK5l" to="jkm4:~Messages.installHyperlinkSupport(javax.swing.JTextPane):void" resolve="installHyperlinkSupport" />
            <node concept="2OqwBi" id="3$mAZJg3E0X" role="37wK5m">
              <node concept="Xjq3P" id="3$mAZJg3E0Y" role="2Oq$k0" />
              <node concept="2OwXpG" id="3$mAZJg3E0Z" role="2OqNvi">
                <ref role="2Oxat5" node="3$mAZJg3DKR" resolve="myInfoLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3F1hOdyB$SK" role="3cqZAp" />
        <node concept="3clFbF" id="12JIgXNwLbE" role="3cqZAp">
          <node concept="2OqwBi" id="12JIgXNwOHm" role="3clFbG">
            <node concept="2OqwBi" id="3$mAZJg3E0U" role="2Oq$k0">
              <node concept="Xjq3P" id="3$mAZJg3E0V" role="2Oq$k0" />
              <node concept="2OwXpG" id="3$mAZJg3E0W" role="2OqNvi">
                <ref role="2Oxat5" node="3$mAZJg3DKR" resolve="myInfoLabel" />
              </node>
            </node>
            <node concept="liA8E" id="12JIgXNwOHn" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JEditorPane.addHyperlinkListener(javax.swing.event.HyperlinkListener):void" resolve="addHyperlinkListener" />
              <node concept="2ShNRf" id="12JIgXNwOHo" role="37wK5m">
                <node concept="YeOm9" id="12JIgXNwOHp" role="2ShVmc">
                  <node concept="1Y3b0j" id="12JIgXNwOHq" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="1sVAO0" value="false" />
                    <property role="1EXbeo" value="false" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="gsia:~HyperlinkListener" resolve="HyperlinkListener" />
                    <node concept="3Tm1VV" id="12JIgXNwOHr" role="1B3o_S" />
                    <node concept="3clFb_" id="12JIgXNwOHs" role="jymVt">
                      <property role="TrG5h" value="hyperlinkUpdate" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="37vLTG" id="12JIgXNwOHt" role="3clF46">
                        <property role="TrG5h" value="e" />
                        <property role="3TUv4t" value="false" />
                        <node concept="3uibUv" id="12JIgXNwOHu" role="1tU5fm">
                          <ref role="3uigEE" to="gsia:~HyperlinkEvent" resolve="HyperlinkEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="12JIgXNwOHv" role="3clF47">
                        <node concept="3clFbJ" id="12JIgXNwOHw" role="3cqZAp">
                          <node concept="3clFbC" id="12JIgXNwOHx" role="3clFbw">
                            <node concept="2OqwBi" id="12JIgXNwOHy" role="3uHU7B">
                              <node concept="37vLTw" id="12JIgXNwOHz" role="2Oq$k0">
                                <ref role="3cqZAo" node="12JIgXNwOHt" resolve="e" />
                              </node>
                              <node concept="liA8E" id="12JIgXNwOH$" role="2OqNvi">
                                <ref role="37wK5l" to="gsia:~HyperlinkEvent.getEventType():javax.swing.event.HyperlinkEvent$EventType" resolve="getEventType" />
                              </node>
                            </node>
                            <node concept="10M0yZ" id="12JIgXNwOH_" role="3uHU7w">
                              <ref role="1PxDUh" to="gsia:~HyperlinkEvent$EventType" resolve="HyperlinkEvent.EventType" />
                              <ref role="3cqZAo" to="gsia:~HyperlinkEvent$EventType.ACTIVATED" resolve="ACTIVATED" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="12JIgXNwOHA" role="3clFbx">
                            <node concept="3clFbF" id="12JIgXNwOHB" role="3cqZAp">
                              <node concept="2YIFZM" id="12JIgXNwOHC" role="3clFbG">
                                <ref role="1Pybhc" to="ddhc:~BrowserUtil" resolve="BrowserUtil" />
                                <ref role="37wK5l" to="ddhc:~BrowserUtil.launchBrowser(java.lang.String):void" resolve="launchBrowser" />
                                <node concept="2OqwBi" id="12JIgXNwOHD" role="37wK5m">
                                  <node concept="2OqwBi" id="12JIgXNwOHE" role="2Oq$k0">
                                    <node concept="37vLTw" id="12JIgXNwOHF" role="2Oq$k0">
                                      <ref role="3cqZAo" node="12JIgXNwOHt" resolve="e" />
                                    </node>
                                    <node concept="liA8E" id="12JIgXNwOHG" role="2OqNvi">
                                      <ref role="37wK5l" to="gsia:~HyperlinkEvent.getURL():java.net.URL" resolve="getURL" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="12JIgXNwOHH" role="2OqNvi">
                                    <ref role="37wK5l" to="zf81:~URL.toString():java.lang.String" resolve="toString" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="12JIgXNwOHI" role="1B3o_S" />
                      <node concept="3cqZAl" id="12JIgXNwOHJ" role="3clF45" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12JIgXNwLc7" role="3cqZAp">
          <node concept="2OqwBi" id="12JIgXNwM9y" role="3clFbG">
            <node concept="2OqwBi" id="3$mAZJg3E0R" role="2Oq$k0">
              <node concept="Xjq3P" id="3$mAZJg3E0S" role="2Oq$k0" />
              <node concept="2OwXpG" id="3$mAZJg3E0T" role="2OqNvi">
                <ref role="2Oxat5" node="3$mAZJg3DKR" resolve="myInfoLabel" />
              </node>
            </node>
            <node concept="liA8E" id="12JIgXNwM9z" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension):void" resolve="setPreferredSize" />
              <node concept="2ShNRf" id="12JIgXNwSpf" role="37wK5m">
                <node concept="1pGfFk" id="12JIgXNwSpg" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                  <node concept="3cmrfG" id="12JIgXNwSph" role="37wK5m">
                    <property role="3cmrfH" value="300" />
                  </node>
                  <node concept="3cmrfG" id="12JIgXNwSpi" role="37wK5m">
                    <property role="3cmrfH" value="220" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="12JIgXNwLcg" role="3cqZAp">
          <node concept="2OqwBi" id="12JIgXNwMzU" role="3clFbG">
            <node concept="37vLTw" id="12JIgXNwMzT" role="2Oq$k0">
              <ref role="3cqZAo" node="59PMlsVOk1I" resolve="mainPanel" />
            </node>
            <node concept="liA8E" id="12JIgXNwMzV" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="3$mAZJg3E0O" role="37wK5m">
                <node concept="Xjq3P" id="3$mAZJg3E0P" role="2Oq$k0" />
                <node concept="2OwXpG" id="3$mAZJg3E0Q" role="2OqNvi">
                  <ref role="2Oxat5" node="3$mAZJg3DKR" resolve="myInfoLabel" />
                </node>
              </node>
              <node concept="10M0yZ" id="12JIgXNwMzX" role="37wK5m">
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                <ref role="3cqZAo" to="z60i:~BorderLayout.CENTER" resolve="CENTER" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="12JIgXNwLck" role="1B3o_S" />
      <node concept="3cqZAl" id="12JIgXNwLcl" role="3clF45" />
      <node concept="37vLTG" id="59PMlsVOk1I" role="3clF46">
        <property role="TrG5h" value="mainPanel" />
        <node concept="3uibUv" id="59PMlsVOk1H" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6Sxc5MixXax" role="jymVt" />
    <node concept="3clFb_" id="3$mAZJg3yv3" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="_init" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tm1VV" id="3$mAZJg3yv4" role="1B3o_S" />
      <node concept="3cqZAl" id="3$mAZJg3yv6" role="3clF45" />
      <node concept="3clFbS" id="3$mAZJg3yv8" role="3clF47">
        <node concept="3clFbF" id="3$mAZJg3yvb" role="3cqZAp">
          <node concept="3nyPlj" id="3$mAZJg3yva" role="3clFbG">
            <ref role="37wK5l" to="uxeh:~AbstractWizardStepEx._init():void" resolve="_init" />
          </node>
        </node>
        <node concept="3clFbH" id="3$mAZJg3DA1" role="3cqZAp" />
        <node concept="3cpWs8" id="3F1hOdyB$SL" role="3cqZAp">
          <node concept="3cpWsn" id="3F1hOdyB$SM" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="sb" />
            <node concept="3uibUv" id="3F1hOdyB$SN" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="3F1hOdyB$SO" role="33vP2m">
              <node concept="1pGfFk" id="3F1hOdyB$SP" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;(java.lang.String)" resolve="StringBuilder" />
                <node concept="Xl_RD" id="3F1hOdyB$SQ" role="37wK5m">
                  <property role="Xl_RC" value="&lt;html&gt;&lt;body&gt;&lt;font face=\&quot;Verdana\&quot; " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3F1hOdyB$SR" role="3cqZAp">
          <node concept="2OqwBi" id="3F1hOdyB$SS" role="3clFbG">
            <node concept="2OqwBi" id="3F1hOdyB$ST" role="2Oq$k0">
              <node concept="37vLTw" id="3F1hOdyB$SU" role="2Oq$k0">
                <ref role="3cqZAo" node="3F1hOdyB$SM" resolve="sb" />
              </node>
              <node concept="liA8E" id="3F1hOdyB$SV" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="3K4zz7" id="3F1hOdyB$SW" role="37wK5m">
                  <node concept="10M0yZ" id="3F1hOdyB$SX" role="3K4Cdx">
                    <ref role="1PxDUh" to="zn9m:~SystemInfo" resolve="SystemInfo" />
                    <ref role="3cqZAo" to="zn9m:~SystemInfo.isMac" resolve="isMac" />
                  </node>
                  <node concept="Xl_RD" id="3F1hOdyB$SY" role="3K4E3e">
                    <property role="Xl_RC" value="" />
                  </node>
                  <node concept="Xl_RD" id="3F1hOdyB$SZ" role="3K4GZi">
                    <property role="Xl_RC" value="size=\&quot;-1\&quot;" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3F1hOdyB$T0" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(char):java.lang.StringBuilder" resolve="append" />
              <node concept="1Xhbcc" id="3F1hOdyB$T1" role="37wK5m">
                <property role="1XhdNS" value="&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3F1hOdyB$T7" role="3cqZAp">
          <node concept="2OqwBi" id="3F1hOdyB$T8" role="3clFbG">
            <node concept="2OqwBi" id="3F1hOdyB$T9" role="2Oq$k0">
              <node concept="37vLTw" id="3F1hOdyB$Ta" role="2Oq$k0">
                <ref role="3cqZAo" node="3F1hOdyB$SM" resolve="sb" />
              </node>
              <node concept="liA8E" id="3F1hOdyB$Tb" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="2OqwBi" id="2htE_P_OWiJ" role="37wK5m">
                  <node concept="2OqwBi" id="2htE_P_OVev" role="2Oq$k0">
                    <node concept="37vLTw" id="2htE_P_OV3l" role="2Oq$k0">
                      <ref role="3cqZAo" node="2htE_P_MQoX" resolve="myErrorContainer" />
                    </node>
                    <node concept="liA8E" id="2htE_P_OWgh" role="2OqNvi">
                      <ref role="37wK5l" node="2htE_P_Mtoe" resolve="getErrorDescriptor" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2htE_P_OWAa" role="2OqNvi">
                    <ref role="37wK5l" node="2htE_P_MrC7" resolve="getMessage" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3F1hOdyB$Tc" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="Xl_RD" id="3F1hOdyB$Td" role="37wK5m">
                <property role="Xl_RC" value="&lt;/font&gt;&lt;/body&gt;&lt;/html&gt;" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3F1hOdyB$Tj" role="3cqZAp">
          <node concept="2OqwBi" id="3F1hOdyB$Tk" role="3clFbG">
            <node concept="37vLTw" id="3$mAZJg3Fbh" role="2Oq$k0">
              <ref role="3cqZAo" node="3$mAZJg3DKR" resolve="myInfoLabel" />
            </node>
            <node concept="liA8E" id="3F1hOdyB$Tm" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JEditorPane.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="3F1hOdyB$Tn" role="37wK5m">
                <node concept="37vLTw" id="3F1hOdyB$To" role="2Oq$k0">
                  <ref role="3cqZAo" node="3F1hOdyB$SM" resolve="sb" />
                </node>
                <node concept="liA8E" id="3F1hOdyB$Tp" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3$mAZJg3yv9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="12JIgXNwLcm" role="jymVt">
      <property role="TrG5h" value="getPreviousStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="12JIgXNwLcn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="12JIgXNwLco" role="3clF47">
        <node concept="3cpWs6" id="12JIgXNwLcp" role="3cqZAp">
          <node concept="10Nm6u" id="12JIgXNwLcq" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="12JIgXNwLcr" role="1B3o_S" />
      <node concept="3uibUv" id="12JIgXNwLcs" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="3clFb_" id="12JIgXNwLct" role="jymVt">
      <property role="TrG5h" value="getNextStepId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="12JIgXNwLcu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="12JIgXNwLcv" role="3clF47">
        <node concept="3cpWs6" id="12JIgXNwLcw" role="3cqZAp">
          <node concept="10Nm6u" id="12JIgXNwLcx" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="12JIgXNwLcy" role="1B3o_S" />
      <node concept="3uibUv" id="12JIgXNwLcz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="3clFb_" id="12JIgXNwLc$" role="jymVt">
      <property role="TrG5h" value="canBeCancelled" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="2AHcQZ" id="12JIgXNwLc_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="12JIgXNwLcA" role="3clF47">
        <node concept="3cpWs6" id="12JIgXNwLcB" role="3cqZAp">
          <node concept="3clFbT" id="12JIgXNwLcC" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="12JIgXNwLcD" role="1B3o_S" />
      <node concept="10P_77" id="12JIgXNwLcE" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="2htE_P_MmBs">
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <property role="TrG5h" value="MigrationErrorDescriptor" />
    <node concept="3clFbW" id="2htE_P_MmBB" role="jymVt">
      <node concept="3cqZAl" id="2htE_P_MmBC" role="3clF45" />
      <node concept="3Tm1VV" id="2htE_P_MmBD" role="1B3o_S" />
      <node concept="3clFbS" id="2htE_P_MmBE" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="2htE_P_MmBX" role="jymVt" />
    <node concept="3clFb_" id="2htE_P_MrC7" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getMessage" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2htE_P_MrCa" role="3clF47" />
      <node concept="3Tm1VV" id="2htE_P_MrBH" role="1B3o_S" />
      <node concept="3uibUv" id="2htE_P_MrDt" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="P$JXv" id="2htE_P_PJ_k" role="lGtFl">
        <node concept="x79VA" id="2htE_P_PJ_n" role="3nqlJM">
          <property role="x79VB" value="text to display on next step" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2htE_P_MrCZ" role="jymVt" />
    <node concept="3clFb_" id="2htE_P_MrCw" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getProblems" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2htE_P_MrCx" role="3clF47" />
      <node concept="3Tm1VV" id="2htE_P_MrCy" role="1B3o_S" />
      <node concept="A3Dl8" id="2htE_P_MrCz" role="3clF45">
        <node concept="3uibUv" id="2htE_P_MrC$" role="A3Ik2">
          <ref role="3uigEE" to="t99v:3n7MNzO_IjP" resolve="Problem" />
        </node>
      </node>
      <node concept="P$JXv" id="2htE_P_PJ_z" role="lGtFl">
        <node concept="x79VA" id="2htE_P_PJ_A" role="3nqlJM">
          <property role="x79VB" value="problems to show in model checker tool" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2htE_P_MmCv" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2htE_P_Pzio">
    <property role="TrG5h" value="MigrationErrorContainer" />
    <node concept="3clFb_" id="2htE_P_Mtoe" role="jymVt">
      <property role="TrG5h" value="getErrorDescriptor" />
      <property role="1EzhhJ" value="true" />
      <node concept="3uibUv" id="2htE_P_Mtof" role="3clF45">
        <ref role="3uigEE" node="2htE_P_MmBs" resolve="MigrationErrorDescriptor" />
      </node>
      <node concept="3Tm1VV" id="2htE_P_Mtog" role="1B3o_S" />
      <node concept="3clFbS" id="2htE_P_Mtoh" role="3clF47" />
      <node concept="P$JXv" id="2htE_P_PM28" role="lGtFl">
        <node concept="x79VA" id="2htE_P_PM2b" role="3nqlJM">
          <property role="x79VB" value="null means success" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2htE_P_PQO8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2htE_P_MusO" role="jymVt" />
    <node concept="3clFb_" id="2htE_P_Mtok" role="jymVt">
      <property role="TrG5h" value="setErrorDescriptor" />
      <property role="1EzhhJ" value="true" />
      <node concept="3cqZAl" id="2htE_P_Mtol" role="3clF45" />
      <node concept="3Tm1VV" id="2htE_P_Mtom" role="1B3o_S" />
      <node concept="3clFbS" id="2htE_P_Mton" role="3clF47" />
      <node concept="37vLTG" id="2htE_P_Mtor" role="3clF46">
        <property role="TrG5h" value="errors" />
        <node concept="3uibUv" id="2htE_P_Mtos" role="1tU5fm">
          <ref role="3uigEE" node="2htE_P_MmBs" resolve="MigrationErrorDescriptor" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2htE_P_Pzip" role="1B3o_S" />
  </node>
</model>

