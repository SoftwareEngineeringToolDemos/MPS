<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:eea68efb-2953-43f4-848f-9829ac5c7101(jetbrains.mps.testbench.junit.runners)">
  <persistence version="9" />
  <languages>
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="3ebz" ref="r:c7fd1483-2eda-4417-bb41-aecb48302c10(jetbrains.mps.testbench)" />
    <import index="homv" ref="r:7eb6d2ae-f266-42d4-885f-016951b158e4(jetbrains.mps.testbench.junit)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util()" />
    <import index="ouhv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.annotation()" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect()" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io()" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel()" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project()" />
    <import index="bbnd" ref="83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit.runners()" />
    <import index="cvlm" ref="83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit.runner()" />
    <import index="k76n" ref="83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit.runner.notification()" />
    <import index="nztd" ref="83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit.runner.manipulation()" />
    <import index="7cms" ref="83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit.runners.model()" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module()" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs()" />
    <import index="32g5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.library()" />
    <import index="79ha" ref="r:2876f1ee-0b45-4db5-8c09-0682cdee5c67(jetbrains.mps.tool.environment)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations()" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence()" />
    <import index="cky9" ref="r:1d4e7c57-c144-4228-9dec-8180ddf9f0ee(jetbrains.mps.tool.environment)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
  </imports>
  <registry>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188206331916" name="jetbrains.mps.baseLanguage.structure.Annotation" flags="ig" index="2ABs$o" />
      <concept id="1188206574119" name="jetbrains.mps.baseLanguage.structure.AnnotationMethodDeclaration" flags="ig" index="2ACnGN" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
        <child id="1188214630783" name="value" index="2B76xF" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1188214545140" name="jetbrains.mps.baseLanguage.structure.AnnotationInstanceValue" flags="ng" index="2B6LJw">
        <reference id="1188214555875" name="key" index="2B6OnR" />
        <child id="1188214607812" name="value" index="2B70Vg" />
      </concept>
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
        <child id="1107880067339" name="method" index="3MN40a" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1208890769693" name="jetbrains.mps.baseLanguage.structure.ArrayLengthOperation" flags="nn" index="1Rwk04" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="2580416627845338977" name="jetbrains.mps.baseLanguage.structure.ImplicitAnnotationInstanceValue" flags="ng" index="1SXeKx" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681515200" name="jetbrains.mps.core.xml.structure.XmlFile" flags="ng" index="2pMbU2">
        <child id="6666499814681515201" name="document" index="2pMbU3" />
      </concept>
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681299064" name="jetbrains.mps.core.xml.structure.XmlComment" flags="nn" index="2pNm8U">
        <child id="1622293396949036151" name="lines" index="3o66t8" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <property id="6999033275467544021" name="shortEmptyNotation" index="qg3DV" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396949036126" name="jetbrains.mps.core.xml.structure.XmlCommentLine" flags="nn" index="3o66tx">
        <property id="1622293396949036127" name="text" index="3o66tw" />
      </concept>
      <concept id="6786756355279841993" name="jetbrains.mps.core.xml.structure.XmlDocument" flags="ng" index="3rIKKV">
        <child id="6666499814681299055" name="rootElement" index="2pNm8H" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="312cEu" id="NTQuym1o0F">
    <property role="TrG5h" value="TeamCityParameterizedRunner" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <property role="3GE5qa" value="" />
    <node concept="3Tm1VV" id="NTQuym1o0G" role="1B3o_S" />
    <node concept="312cEg" id="6pV9atHwwh" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="children" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6pV9atHwrn" role="1B3o_S" />
      <node concept="3uibUv" id="6pV9atHww5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6pV9atHwwf" role="11_B2D">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsJfn" role="jymVt" />
    <node concept="3clFbW" id="NTQuym1o1_" role="jymVt">
      <node concept="3Tm1VV" id="NTQuym1o1A" role="1B3o_S" />
      <node concept="3cqZAl" id="NTQuym1o1B" role="3clF45" />
      <node concept="37vLTG" id="NTQuym1o1C" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="NTQuym1o1D" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="NTQuym1o1E" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1OSjOxq0OBx" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="1OSjOxq0OBI" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="NTQuym1o1F" role="3clF47">
        <node concept="XkiVB" id="NTQuym1o1G" role="3cqZAp">
          <ref role="37wK5l" node="61uE6zXm4nj" resolve="BaseMpsRunner" />
          <node concept="37vLTw" id="2BHiRxgm6vG" role="37wK5m">
            <ref role="3cqZAo" node="NTQuym1o1C" resolve="klass" />
          </node>
        </node>
        <node concept="3clFbF" id="6pV9atHD_3" role="3cqZAp">
          <node concept="37vLTI" id="6pV9atHEhr" role="3clFbG">
            <node concept="1rXfSq" id="6pV9atHEnK" role="37vLTx">
              <ref role="37wK5l" node="1OSjOxq0Yvx" resolve="createChildRunners" />
              <node concept="37vLTw" id="6pV9atHEu8" role="37wK5m">
                <ref role="3cqZAo" node="NTQuym1o1C" resolve="klass" />
              </node>
              <node concept="37vLTw" id="6pV9atHEuG" role="37wK5m">
                <ref role="3cqZAo" node="1OSjOxq0OBx" resolve="builder" />
              </node>
            </node>
            <node concept="37vLTw" id="6pV9atHD_2" role="37vLTJ">
              <ref role="3cqZAo" node="6pV9atHwwh" resolve="children" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="NTQuym1o2i" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsIyf" role="jymVt" />
    <node concept="3clFb_" id="1OSjOxq0Yvx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createChildRunners" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1OSjOxq0Yvz" role="3clF46">
        <property role="TrG5h" value="klass" />
        <node concept="3uibUv" id="1OSjOxq0Yv$" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="1OSjOxq0Yv_" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6pV9atHMb7" role="1B3o_S" />
      <node concept="3uibUv" id="1OSjOxq0YvC" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1OSjOxq0YvD" role="11_B2D">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="37vLTG" id="1OSjOxq0YvE" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="1OSjOxq0YvF" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="1OSjOxq0YvG" role="3clF47">
        <node concept="3cpWs8" id="1OSjOxpVuvk" role="3cqZAp">
          <node concept="3cpWsn" id="1OSjOxpVuvl" role="3cpWs9">
            <property role="TrG5h" value="runners" />
            <node concept="2ShNRf" id="1OSjOxpVuwy" role="33vP2m">
              <node concept="1pGfFk" id="1OSjOxpVvnw" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1OSjOxpVvnE" role="1pMfVU">
                  <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1OSjOxpVuvi" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="1OSjOxpVuvZ" role="11_B2D">
                <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="NTQuym1o1K" role="3cqZAp">
          <node concept="3cpWsn" id="NTQuym1o1L" role="3cpWs9">
            <property role="TrG5h" value="parametersList" />
            <property role="3TUv4t" value="false" />
            <node concept="1rXfSq" id="1OSjOxpUoI5" role="33vP2m">
              <ref role="37wK5l" node="1OSjOxpUbYo" resolve="getParametersList" />
              <node concept="1rXfSq" id="1OSjOxq1vel" role="37wK5m">
                <ref role="37wK5l" to="bbnd:~ParentRunner.getTestClass():org.junit.runners.model.TestClass" resolve="getTestClass" />
              </node>
            </node>
            <node concept="3uibUv" id="NTQuym1o1M" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="10Q1$e" id="NTQuym1o1N" role="11_B2D">
                <node concept="3uibUv" id="NTQuym1o1O" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="NTQuym1o1R" role="3cqZAp">
          <node concept="3eOVzh" id="NTQuym1o1S" role="1Dwp0S">
            <node concept="37vLTw" id="3GM_nagTwPl" role="3uHU7B">
              <ref role="3cqZAo" node="NTQuym1o1X" resolve="i" />
            </node>
            <node concept="2OqwBi" id="NTQuym1o1U" role="3uHU7w">
              <node concept="37vLTw" id="3GM_nagTu$s" role="2Oq$k0">
                <ref role="3cqZAo" node="NTQuym1o1L" resolve="parametersList" />
              </node>
              <node concept="liA8E" id="NTQuym1o1W" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size():int" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="NTQuym1o1X" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <property role="3TUv4t" value="false" />
            <node concept="10Oyi0" id="NTQuym1o1Y" role="1tU5fm" />
            <node concept="3cmrfG" id="NTQuym1o1Z" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3uNrnE" id="NTQuym1o20" role="1Dwrff">
            <node concept="37vLTw" id="3GM_nagTrhP" role="2$L3a6">
              <ref role="3cqZAo" node="NTQuym1o1X" resolve="i" />
            </node>
          </node>
          <node concept="3clFbS" id="NTQuym1o22" role="2LFqv$">
            <node concept="3cpWs8" id="NTQuym1o23" role="3cqZAp">
              <node concept="3cpWsn" id="NTQuym1o24" role="3cpWs9">
                <property role="TrG5h" value="runner" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="NTQuym1o25" role="1tU5fm">
                  <ref role="3uigEE" node="NTQuym1o0I" resolve="TeamCityParameterizedRunner.TestClassRunnerForParameters" />
                </node>
                <node concept="2ShNRf" id="NTQuym1o26" role="33vP2m">
                  <node concept="1pGfFk" id="NTQuym1o27" role="2ShVmc">
                    <ref role="37wK5l" node="NTQuym1o0T" resolve="TeamCityParameterizedRunner.TestClassRunnerForParameters" />
                    <node concept="2OqwBi" id="NTQuym1o28" role="37wK5m">
                      <node concept="1rXfSq" id="1OSjOxq1wAq" role="2Oq$k0">
                        <ref role="37wK5l" to="bbnd:~ParentRunner.getTestClass():org.junit.runners.model.TestClass" resolve="getTestClass" />
                      </node>
                      <node concept="liA8E" id="NTQuym1o2a" role="2OqNvi">
                        <ref role="37wK5l" to="7cms:~TestClass.getJavaClass():java.lang.Class" resolve="getJavaClass" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3GM_nagT$AP" role="37wK5m">
                      <ref role="3cqZAo" node="NTQuym1o1L" resolve="parametersList" />
                    </node>
                    <node concept="37vLTw" id="3GM_nagTsjn" role="37wK5m">
                      <ref role="3cqZAo" node="NTQuym1o1X" resolve="i" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="NTQuym1o2d" role="3cqZAp">
              <node concept="2OqwBi" id="NTQuym1o2e" role="3clFbG">
                <node concept="37vLTw" id="1OSjOxpVvo9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1OSjOxpVuvl" resolve="runners" />
                </node>
                <node concept="liA8E" id="NTQuym1o2g" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="37vLTw" id="3GM_nagTuW1" role="37wK5m">
                    <ref role="3cqZAo" node="NTQuym1o24" resolve="runner" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1OSjOxpVvpk" role="3cqZAp">
          <node concept="37vLTw" id="1OSjOxpVvpj" role="3clFbG">
            <ref role="3cqZAo" node="1OSjOxpVuvl" resolve="runners" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1OSjOxq1B8g" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsJWw" role="jymVt" />
    <node concept="3clFb_" id="6pV9atHuJr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="6pV9atHuJs" role="1B3o_S" />
      <node concept="3uibUv" id="6pV9atHuJu" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6pV9atHuJw" role="11_B2D">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="3clFbS" id="6pV9atHuJx" role="3clF47">
        <node concept="3clFbF" id="6pV9atHuJz" role="3cqZAp">
          <node concept="37vLTw" id="6pV9atHXDV" role="3clFbG">
            <ref role="3cqZAo" node="6pV9atHwwh" resolve="children" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsKDE" role="jymVt" />
    <node concept="3clFb_" id="6pV9atHuJ$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="describeChild" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="6pV9atHuJ_" role="1B3o_S" />
      <node concept="3uibUv" id="6pV9atHuJB" role="3clF45">
        <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
      </node>
      <node concept="37vLTG" id="6pV9atHuJC" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3uibUv" id="6pV9atHuJE" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="3clFbS" id="6pV9atHuJF" role="3clF47">
        <node concept="3clFbF" id="6pV9atHZ20" role="3cqZAp">
          <node concept="2OqwBi" id="6pV9atHZdG" role="3clFbG">
            <node concept="37vLTw" id="6pV9atHZ1Z" role="2Oq$k0">
              <ref role="3cqZAo" node="6pV9atHuJC" resolve="child" />
            </node>
            <node concept="liA8E" id="6pV9atI02t" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.getDescription():org.junit.runner.Description" resolve="getDescription" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsLnr" role="jymVt" />
    <node concept="3clFb_" id="6pV9atHuJI" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runChild" />
      <property role="DiZV1" value="false" />
      <property role="IEkAT" value="false" />
      <node concept="3Tmbuc" id="6pV9atHuJJ" role="1B3o_S" />
      <node concept="3cqZAl" id="6pV9atHuJL" role="3clF45" />
      <node concept="37vLTG" id="6pV9atHuJM" role="3clF46">
        <property role="TrG5h" value="runner" />
        <node concept="3uibUv" id="6pV9atHuJQ" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="37vLTG" id="6pV9atHuJO" role="3clF46">
        <property role="TrG5h" value="notifier" />
        <node concept="3uibUv" id="6pV9atHuJP" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
        </node>
      </node>
      <node concept="3clFbS" id="6pV9atHuJR" role="3clF47">
        <node concept="3cpWs8" id="6pV9atI0J7" role="3cqZAp">
          <node concept="3cpWsn" id="6pV9atI0J8" role="3cpWs9">
            <property role="TrG5h" value="runNotifier" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="6pV9atI0J9" role="1tU5fm">
              <ref role="3uigEE" to="homv:4_TMdeLkPpH" resolve="WatchingRunNotifier" />
            </node>
            <node concept="2ShNRf" id="6pV9atI0Ja" role="33vP2m">
              <node concept="1pGfFk" id="6pV9atI0Jb" role="2ShVmc">
                <ref role="37wK5l" to="homv:4_TMdeLkPqD" resolve="WatchingRunNotifier" />
                <node concept="37vLTw" id="6pV9atI0Jc" role="37wK5m">
                  <ref role="3cqZAo" node="6pV9atHuJO" resolve="notifier" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="6pV9atI0Jd" role="3cqZAp">
          <node concept="3clFbS" id="6pV9atI0Je" role="2GVbov">
            <node concept="3clFbF" id="6pV9atI0Jf" role="3cqZAp">
              <node concept="2OqwBi" id="6pV9atI0Jg" role="3clFbG">
                <node concept="2YIFZM" id="6pV9atI0Jh" role="2Oq$k0">
                  <ref role="37wK5l" to="3ebz:4_TMdeLkPOl" resolve="getInstance" />
                  <ref role="1Pybhc" to="3ebz:4_TMdeLkPNQ" resolve="PerformanceMessenger" />
                </node>
                <node concept="liA8E" id="6pV9atI0Ji" role="2OqNvi">
                  <ref role="37wK5l" to="3ebz:4_TMdeLkPPM" resolve="generateReport" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6pV9atI0Jj" role="3cqZAp">
              <node concept="2OqwBi" id="6pV9atI0Jk" role="3clFbG">
                <node concept="37vLTw" id="6pV9atI0Jl" role="2Oq$k0">
                  <ref role="3cqZAo" node="6pV9atI0J8" resolve="runNotifier" />
                </node>
                <node concept="liA8E" id="6pV9atI0Jm" role="2OqNvi">
                  <ref role="37wK5l" to="homv:4_TMdeLkPqJ" resolve="dispose" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6pV9atI0Jn" role="2GV8ay">
            <node concept="3clFbF" id="6im5gTfBade" role="3cqZAp">
              <node concept="2OqwBi" id="6im5gTfBLGq" role="3clFbG">
                <node concept="2ShNRf" id="6im5gTfBada" role="2Oq$k0">
                  <node concept="1pGfFk" id="6im5gTfBKAK" role="2ShVmc">
                    <ref role="37wK5l" to="nztd:~Sorter.&lt;init&gt;(java.util.Comparator)" resolve="Sorter" />
                    <node concept="2ShNRf" id="6im5gTfBKBv" role="37wK5m">
                      <node concept="1pGfFk" id="6im5gTfBLs9" role="2ShVmc">
                        <ref role="37wK5l" to="homv:4_TMdeLkPnc" resolve="OrderComparator" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6im5gTfBMTQ" role="2OqNvi">
                  <ref role="37wK5l" to="nztd:~Sorter.apply(java.lang.Object):void" resolve="apply" />
                  <node concept="37vLTw" id="6im5gTfBMV4" role="37wK5m">
                    <ref role="3cqZAo" node="6pV9atHuJM" resolve="runner" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6pV9atI0Jo" role="3cqZAp">
              <node concept="2OqwBi" id="6pV9atI0Jp" role="3clFbG">
                <node concept="liA8E" id="6pV9atI0Jq" role="2OqNvi">
                  <ref role="37wK5l" to="cvlm:~Runner.run(org.junit.runner.notification.RunNotifier):void" resolve="run" />
                  <node concept="37vLTw" id="6pV9atI0Jr" role="37wK5m">
                    <ref role="3cqZAo" node="6pV9atI0J8" resolve="runNotifier" />
                  </node>
                </node>
                <node concept="37vLTw" id="6pV9atI0Js" role="2Oq$k0">
                  <ref role="3cqZAo" node="6pV9atHuJM" resolve="runner" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsM4B" role="jymVt" />
    <node concept="2YIFZL" id="1OSjOxpUbYo" role="jymVt">
      <property role="TrG5h" value="getParametersList" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="1OSjOxpUdT6" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
      </node>
      <node concept="37vLTG" id="1OSjOxpUcRA" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="1OSjOxpUcRB" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~TestClass" resolve="TestClass" />
        </node>
      </node>
      <node concept="3clFbS" id="1OSjOxpUbYr" role="3clF47">
        <node concept="3cpWs6" id="NTQuym1o2z" role="3cqZAp">
          <node concept="10QFUN" id="NTQuym1o2$" role="3cqZAk">
            <node concept="3uibUv" id="NTQuym1o2E" role="10QFUM">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="10Q1$e" id="NTQuym1o2F" role="11_B2D">
                <node concept="3uibUv" id="NTQuym1o2G" role="10Q1$1">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1OSjOxpTCI7" role="10QFUP">
              <node concept="liA8E" id="1OSjOxpTF8I" role="2OqNvi">
                <ref role="37wK5l" to="7cms:~FrameworkMethod.invokeExplosively(java.lang.Object,java.lang.Object...):java.lang.Object" resolve="invokeExplosively" />
                <node concept="10Nm6u" id="1OSjOxpTF9e" role="37wK5m" />
              </node>
              <node concept="1rXfSq" id="1OSjOxpTBKA" role="2Oq$k0">
                <ref role="37wK5l" node="1OSjOxpSFNM" resolve="getParametersMethod" />
                <node concept="37vLTw" id="1OSjOxpTC_v" role="37wK5m">
                  <ref role="3cqZAo" node="1OSjOxpUcRA" resolve="klass" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1OSjOxpUbT2" role="1B3o_S" />
      <node concept="3uibUv" id="1OSjOxpUbXT" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="10Q1$e" id="1OSjOxpUbYj" role="11_B2D">
          <node concept="3uibUv" id="1OSjOxpUbYh" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1OSjOxpUeRW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~SuppressWarnings" resolve="SuppressWarnings" />
        <node concept="1SXeKx" id="1OSjOxpUeRX" role="2B76xF">
          <ref role="2B6OnR" to="wyt6:~SuppressWarnings.value()" resolve="value" />
          <node concept="Xl_RD" id="1OSjOxpUeRY" role="2B70Vg">
            <property role="Xl_RC" value="unchecked" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsMEj" role="jymVt" />
    <node concept="2YIFZL" id="1OSjOxpSFNM" role="jymVt">
      <property role="TrG5h" value="getParametersMethod" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3uibUv" id="1OSjOxpTukD" role="Sfmx6">
        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
      </node>
      <node concept="3clFbS" id="1OSjOxpSFNP" role="3clF47">
        <node concept="3cpWs8" id="NTQuym1o2R" role="3cqZAp">
          <node concept="3cpWsn" id="NTQuym1o2S" role="3cpWs9">
            <property role="TrG5h" value="methods" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="NTQuym1o2T" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="NTQuym1o2U" role="11_B2D">
                <ref role="3uigEE" to="7cms:~FrameworkMethod" resolve="FrameworkMethod" />
              </node>
            </node>
            <node concept="2OqwBi" id="NTQuym1o2V" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmxaX" role="2Oq$k0">
                <ref role="3cqZAo" node="1OSjOxpSFSE" resolve="testClass" />
              </node>
              <node concept="liA8E" id="NTQuym1o2X" role="2OqNvi">
                <ref role="37wK5l" to="7cms:~TestClass.getAnnotatedMethods(java.lang.Class):java.util.List" resolve="getAnnotatedMethods" />
                <node concept="3VsKOn" id="11lFf4JHyDG" role="37wK5m">
                  <ref role="3VsUkX" to="bbnd:~Parameterized$Parameters" resolve="Parameterized.Parameters" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="NTQuym1o2Z" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTAN4" role="1DdaDG">
            <ref role="3cqZAo" node="NTQuym1o2S" resolve="methods" />
          </node>
          <node concept="3cpWsn" id="NTQuym1o31" role="1Duv9x">
            <property role="TrG5h" value="each" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="NTQuym1o32" role="1tU5fm">
              <ref role="3uigEE" to="7cms:~FrameworkMethod" resolve="FrameworkMethod" />
            </node>
          </node>
          <node concept="3clFbS" id="NTQuym1o33" role="2LFqv$">
            <node concept="3cpWs8" id="NTQuym1o34" role="3cqZAp">
              <node concept="3cpWsn" id="NTQuym1o35" role="3cpWs9">
                <property role="TrG5h" value="modifiers" />
                <property role="3TUv4t" value="false" />
                <node concept="10Oyi0" id="NTQuym1o36" role="1tU5fm" />
                <node concept="2OqwBi" id="NTQuym1o37" role="33vP2m">
                  <node concept="2OqwBi" id="NTQuym1o38" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTvOc" role="2Oq$k0">
                      <ref role="3cqZAo" node="NTQuym1o31" resolve="each" />
                    </node>
                    <node concept="liA8E" id="NTQuym1o3a" role="2OqNvi">
                      <ref role="37wK5l" to="7cms:~FrameworkMethod.getMethod():java.lang.reflect.Method" resolve="getMethod" />
                    </node>
                  </node>
                  <node concept="liA8E" id="NTQuym1o3b" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Method.getModifiers():int" resolve="getModifiers" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="NTQuym1o3c" role="3cqZAp">
              <node concept="1Wc70l" id="NTQuym1o3d" role="3clFbw">
                <node concept="2YIFZM" id="NTQuym1o3e" role="3uHU7B">
                  <ref role="37wK5l" to="t6h5:~Modifier.isStatic(int):boolean" resolve="isStatic" />
                  <ref role="1Pybhc" to="t6h5:~Modifier" resolve="Modifier" />
                  <node concept="37vLTw" id="3GM_nagTuFw" role="37wK5m">
                    <ref role="3cqZAo" node="NTQuym1o35" resolve="modifiers" />
                  </node>
                </node>
                <node concept="2YIFZM" id="NTQuym1o3g" role="3uHU7w">
                  <ref role="37wK5l" to="t6h5:~Modifier.isPublic(int):boolean" resolve="isPublic" />
                  <ref role="1Pybhc" to="t6h5:~Modifier" resolve="Modifier" />
                  <node concept="37vLTw" id="3GM_nagTz8w" role="37wK5m">
                    <ref role="3cqZAo" node="NTQuym1o35" resolve="modifiers" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="NTQuym1o3i" role="3clFbx">
                <node concept="3cpWs6" id="NTQuym1o3j" role="3cqZAp">
                  <node concept="37vLTw" id="3GM_nagTAyY" role="3cqZAk">
                    <ref role="3cqZAo" node="NTQuym1o31" resolve="each" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="YS8fn" id="NTQuym1o3l" role="3cqZAp">
          <node concept="2ShNRf" id="NTQuym1o3m" role="YScLw">
            <node concept="1pGfFk" id="NTQuym1o3n" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String)" resolve="Exception" />
              <node concept="3cpWs3" id="NTQuym1o3o" role="37wK5m">
                <node concept="Xl_RD" id="NTQuym1o3p" role="3uHU7B">
                  <property role="Xl_RC" value="No public static parameters method on class " />
                </node>
                <node concept="2OqwBi" id="NTQuym1o3q" role="3uHU7w">
                  <node concept="37vLTw" id="2BHiRxglyGQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1OSjOxpSFSE" resolve="testClass" />
                  </node>
                  <node concept="liA8E" id="NTQuym1o3s" role="2OqNvi">
                    <ref role="37wK5l" to="7cms:~TestClass.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1OSjOxpSFIQ" role="1B3o_S" />
      <node concept="3uibUv" id="1OSjOxpSFNK" role="3clF45">
        <ref role="3uigEE" to="7cms:~FrameworkMethod" resolve="FrameworkMethod" />
      </node>
      <node concept="37vLTG" id="1OSjOxpSFSE" role="3clF46">
        <property role="TrG5h" value="testClass" />
        <node concept="3uibUv" id="1OSjOxpSFSD" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~TestClass" resolve="TestClass" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsNnx" role="jymVt" />
    <node concept="312cEu" id="NTQuym1o0I" role="jymVt">
      <property role="TrG5h" value="TestClassRunnerForParameters" />
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <node concept="3Tm6S6" id="NTQuym1o0J" role="1B3o_S" />
      <node concept="3uibUv" id="NTQuym1o0K" role="1zkMxy">
        <ref role="3uigEE" to="bbnd:~BlockJUnit4ClassRunner" resolve="BlockJUnit4ClassRunner" />
      </node>
      <node concept="312cEg" id="NTQuym1o0L" role="jymVt">
        <property role="TrG5h" value="fParameterSetNumber" />
        <property role="34CwA1" value="false" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="NTQuym1o0M" role="1tU5fm" />
        <node concept="3Tm6S6" id="NTQuym1o0N" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="NTQuym1o0O" role="jymVt">
        <property role="TrG5h" value="fParameterList" />
        <property role="34CwA1" value="false" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="NTQuym1o0P" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="10Q1$e" id="NTQuym1o0Q" role="11_B2D">
            <node concept="3uibUv" id="NTQuym1o0R" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="NTQuym1o0S" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="5uM03AdsQP3" role="jymVt" />
      <node concept="3clFbW" id="NTQuym1o0T" role="jymVt">
        <node concept="3cqZAl" id="NTQuym1o0U" role="3clF45" />
        <node concept="37vLTG" id="NTQuym1o0V" role="3clF46">
          <property role="TrG5h" value="type" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="NTQuym1o0W" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
            <node concept="3qTvmN" id="NTQuym1o0X" role="11_B2D" />
          </node>
        </node>
        <node concept="37vLTG" id="NTQuym1o0Y" role="3clF46">
          <property role="TrG5h" value="parameterList" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="NTQuym1o0Z" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="10Q1$e" id="NTQuym1o10" role="11_B2D">
              <node concept="3uibUv" id="NTQuym1o11" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="NTQuym1o12" role="3clF46">
          <property role="TrG5h" value="i" />
          <property role="3TUv4t" value="false" />
          <node concept="10Oyi0" id="NTQuym1o13" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="NTQuym1o3u" role="3clF47">
          <node concept="XkiVB" id="NTQuym1o3v" role="3cqZAp">
            <ref role="37wK5l" to="bbnd:~BlockJUnit4ClassRunner.&lt;init&gt;(java.lang.Class)" resolve="BlockJUnit4ClassRunner" />
            <node concept="37vLTw" id="2BHiRxgm92B" role="37wK5m">
              <ref role="3cqZAo" node="NTQuym1o0V" resolve="type" />
            </node>
          </node>
          <node concept="3clFbF" id="NTQuym1o3x" role="3cqZAp">
            <node concept="37vLTI" id="NTQuym1o3y" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuW3g" role="37vLTJ">
                <ref role="3cqZAo" node="NTQuym1o0O" resolve="fParameterList" />
              </node>
              <node concept="37vLTw" id="2BHiRxgmJhA" role="37vLTx">
                <ref role="3cqZAo" node="NTQuym1o0Y" resolve="parameterList" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="NTQuym1o3_" role="3cqZAp">
            <node concept="37vLTI" id="NTQuym1o3A" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeufSR" role="37vLTJ">
                <ref role="3cqZAo" node="NTQuym1o0L" resolve="fParameterSetNumber" />
              </node>
              <node concept="37vLTw" id="2BHiRxglaZK" role="37vLTx">
                <ref role="3cqZAo" node="NTQuym1o12" resolve="i" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="NTQuym1o3D" role="Sfmx6">
          <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
        </node>
      </node>
      <node concept="2tJIrI" id="5uM03AdsQnC" role="jymVt" />
      <node concept="3clFb_" id="NTQuym1o14" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="createTest" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="NTQuym1o15" role="1B3o_S" />
        <node concept="3uibUv" id="NTQuym1o16" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="3clFbS" id="NTQuym1o3E" role="3clF47">
          <node concept="3cpWs6" id="NTQuym1o3F" role="3cqZAp">
            <node concept="2OqwBi" id="NTQuym1o3G" role="3cqZAk">
              <node concept="2OqwBi" id="NTQuym1o3H" role="2Oq$k0">
                <node concept="1rXfSq" id="4hiugqyzf0j" role="2Oq$k0">
                  <ref role="37wK5l" to="bbnd:~ParentRunner.getTestClass():org.junit.runners.model.TestClass" resolve="getTestClass" />
                </node>
                <node concept="liA8E" id="NTQuym1o3J" role="2OqNvi">
                  <ref role="37wK5l" to="7cms:~TestClass.getOnlyConstructor():java.lang.reflect.Constructor" resolve="getOnlyConstructor" />
                </node>
              </node>
              <node concept="liA8E" id="NTQuym1o3K" role="2OqNvi">
                <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...):java.lang.Object" resolve="newInstance" />
                <node concept="1rXfSq" id="4hiugqyyMTD" role="37wK5m">
                  <ref role="37wK5l" node="NTQuym1o17" resolve="computeParams" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTQuym1o3M" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3uibUv" id="NTQuym1o3N" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
      <node concept="2tJIrI" id="5uM03AdsPUe" role="jymVt" />
      <node concept="3clFb_" id="NTQuym1o17" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="computeParams" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm6S6" id="NTQuym1o18" role="1B3o_S" />
        <node concept="10Q1$e" id="NTQuym1o19" role="3clF45">
          <node concept="3uibUv" id="NTQuym1o1a" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="3clFbS" id="NTQuym1o3O" role="3clF47">
          <node concept="SfApY" id="NTQuym1o3P" role="3cqZAp">
            <node concept="TDmWw" id="NTQuym1o3Q" role="TEbGg">
              <node concept="3clFbS" id="NTQuym1o3R" role="TDEfX">
                <node concept="YS8fn" id="NTQuym1o3S" role="3cqZAp">
                  <node concept="2ShNRf" id="NTQuym1o3T" role="YScLw">
                    <node concept="1pGfFk" id="NTQuym1o3U" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~Exception.&lt;init&gt;(java.lang.String)" resolve="Exception" />
                      <node concept="2YIFZM" id="NTQuym1o3V" role="37wK5m">
                        <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                        <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                        <node concept="Xl_RD" id="NTQuym1o3W" role="37wK5m">
                          <property role="Xl_RC" value="%s.%s() must return a Collection of arrays." />
                        </node>
                        <node concept="2OqwBi" id="NTQuym1o3X" role="37wK5m">
                          <node concept="1rXfSq" id="4hiugqyzc6f" role="2Oq$k0">
                            <ref role="37wK5l" to="bbnd:~ParentRunner.getTestClass():org.junit.runners.model.TestClass" resolve="getTestClass" />
                          </node>
                          <node concept="liA8E" id="NTQuym1o3Z" role="2OqNvi">
                            <ref role="37wK5l" to="7cms:~TestClass.getName():java.lang.String" resolve="getName" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1OSjOxpTYug" role="37wK5m">
                          <node concept="liA8E" id="1OSjOxpU0Tb" role="2OqNvi">
                            <ref role="37wK5l" to="7cms:~FrameworkMethod.getName():java.lang.String" resolve="getName" />
                          </node>
                          <node concept="2YIFZM" id="6pV9atHi8w" role="2Oq$k0">
                            <ref role="1Pybhc" node="NTQuym1o0F" resolve="TeamCityParameterizedRunner" />
                            <ref role="37wK5l" node="1OSjOxpSFNM" resolve="getParametersMethod" />
                            <node concept="1rXfSq" id="6pV9atHi8x" role="37wK5m">
                              <ref role="37wK5l" to="bbnd:~ParentRunner.getTestClass():org.junit.runners.model.TestClass" resolve="getTestClass" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="NTQuym1o44" role="TDEfY">
                <property role="TrG5h" value="e" />
                <property role="3TUv4t" value="false" />
                <node concept="3uibUv" id="NTQuym1o45" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~ClassCastException" resolve="ClassCastException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="NTQuym1o46" role="SfCbr">
              <node concept="3cpWs6" id="NTQuym1o47" role="3cqZAp">
                <node concept="2OqwBi" id="NTQuym1o48" role="3cqZAk">
                  <node concept="37vLTw" id="2BHiRxeut54" role="2Oq$k0">
                    <ref role="3cqZAo" node="NTQuym1o0O" resolve="fParameterList" />
                  </node>
                  <node concept="liA8E" id="NTQuym1o4a" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="2BHiRxeuHqs" role="37wK5m">
                      <ref role="3cqZAo" node="NTQuym1o0L" resolve="fParameterSetNumber" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="NTQuym1o4c" role="Sfmx6">
          <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
        </node>
      </node>
      <node concept="2tJIrI" id="5uM03AdsPsP" role="jymVt" />
      <node concept="3clFb_" id="NTQuym1o1b" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getName" />
        <property role="DiZV1" value="false" />
        <node concept="17QB3L" id="3SJmozgBGgo" role="3clF45" />
        <node concept="3Tmbuc" id="NTQuym1o1c" role="1B3o_S" />
        <node concept="3clFbS" id="NTQuym1o4d" role="3clF47">
          <node concept="3cpWs8" id="NTQuym1o4e" role="3cqZAp">
            <node concept="3cpWsn" id="NTQuym1o4f" role="3cpWs9">
              <property role="TrG5h" value="firstArg" />
              <property role="3TUv4t" value="false" />
              <node concept="3uibUv" id="NTQuym1o4g" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
              <node concept="AH0OO" id="NTQuym1o4h" role="33vP2m">
                <node concept="2OqwBi" id="NTQuym1o4i" role="AHHXb">
                  <node concept="37vLTw" id="2BHiRxeuE0T" role="2Oq$k0">
                    <ref role="3cqZAo" node="NTQuym1o0O" resolve="fParameterList" />
                  </node>
                  <node concept="liA8E" id="NTQuym1o4k" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="2BHiRxeuxSe" role="37wK5m">
                      <ref role="3cqZAo" node="NTQuym1o0L" resolve="fParameterSetNumber" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="NTQuym1o4m" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="NTQuym1o4X" role="3cqZAp">
            <node concept="2YIFZM" id="NTQuym1o4Y" role="3cqZAk">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
              <node concept="Xl_RD" id="NTQuym1o4Z" role="37wK5m">
                <property role="Xl_RC" value="%s" />
              </node>
              <node concept="2YIFZM" id="3KPi4JlvALl" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object):java.lang.String" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="37vLTw" id="3KPi4JlvAMk" role="37wK5m">
                  <ref role="3cqZAo" node="NTQuym1o4f" resolve="firstArg" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTQuym1o51" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5uM03AdsOZt" role="jymVt" />
      <node concept="3clFb_" id="NTQuym1o1e" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="testName" />
        <property role="DiZV1" value="false" />
        <node concept="17QB3L" id="3SJmozgBGgr" role="3clF45" />
        <node concept="3Tmbuc" id="NTQuym1o1f" role="1B3o_S" />
        <node concept="37vLTG" id="NTQuym1o1h" role="3clF46">
          <property role="TrG5h" value="method" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="NTQuym1o1i" role="1tU5fm">
            <ref role="3uigEE" to="7cms:~FrameworkMethod" resolve="FrameworkMethod" />
          </node>
        </node>
        <node concept="3clFbS" id="NTQuym1o52" role="3clF47">
          <node concept="3cpWs6" id="NTQuym1o53" role="3cqZAp">
            <node concept="2YIFZM" id="NTQuym1o54" role="3cqZAk">
              <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
              <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
              <node concept="Xl_RD" id="NTQuym1o55" role="37wK5m">
                <property role="Xl_RC" value="%s (%s)" />
              </node>
              <node concept="2OqwBi" id="NTQuym1o56" role="37wK5m">
                <node concept="37vLTw" id="2BHiRxghejZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="NTQuym1o1h" resolve="method" />
                </node>
                <node concept="liA8E" id="NTQuym1o58" role="2OqNvi">
                  <ref role="37wK5l" to="7cms:~FrameworkMethod.getName():java.lang.String" resolve="getName" />
                </node>
              </node>
              <node concept="AH0OO" id="NTQuym1o59" role="37wK5m">
                <node concept="2OqwBi" id="NTQuym1o5a" role="AHHXb">
                  <node concept="37vLTw" id="2BHiRxeumvv" role="2Oq$k0">
                    <ref role="3cqZAo" node="NTQuym1o0O" resolve="fParameterList" />
                  </node>
                  <node concept="liA8E" id="NTQuym1o5c" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                    <node concept="37vLTw" id="2BHiRxeuxJj" role="37wK5m">
                      <ref role="3cqZAo" node="NTQuym1o0L" resolve="fParameterSetNumber" />
                    </node>
                  </node>
                </node>
                <node concept="3cmrfG" id="NTQuym1o5e" role="AHEQo">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTQuym1o5f" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5uM03AdsOy6" role="jymVt" />
      <node concept="3clFb_" id="NTQuym1o1j" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="validateConstructor" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="NTQuym1o1k" role="1B3o_S" />
        <node concept="3cqZAl" id="NTQuym1o1l" role="3clF45" />
        <node concept="37vLTG" id="NTQuym1o1m" role="3clF46">
          <property role="TrG5h" value="errors" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="NTQuym1o1n" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="NTQuym1o1o" role="11_B2D">
              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="NTQuym1o5g" role="3clF47">
          <node concept="3clFbF" id="NTQuym1o5h" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyU9C" role="3clFbG">
              <ref role="37wK5l" to="bbnd:~BlockJUnit4ClassRunner.validateOnlyOneConstructor(java.util.List):void" resolve="validateOnlyOneConstructor" />
              <node concept="37vLTw" id="2BHiRxglnn9" role="37wK5m">
                <ref role="3cqZAo" node="NTQuym1o1m" resolve="errors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTQuym1o5k" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="5uM03AdsO4K" role="jymVt" />
      <node concept="3clFb_" id="NTQuym1o1p" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="classBlock" />
        <property role="DiZV1" value="false" />
        <node concept="3Tmbuc" id="NTQuym1o1q" role="1B3o_S" />
        <node concept="3uibUv" id="NTQuym1o1r" role="3clF45">
          <ref role="3uigEE" to="7cms:~Statement" resolve="Statement" />
        </node>
        <node concept="37vLTG" id="NTQuym1o1s" role="3clF46">
          <property role="TrG5h" value="notifier" />
          <property role="3TUv4t" value="false" />
          <node concept="3uibUv" id="NTQuym1o1t" role="1tU5fm">
            <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
          </node>
        </node>
        <node concept="3clFbS" id="NTQuym1o5l" role="3clF47">
          <node concept="3cpWs6" id="NTQuym1o5m" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyzkuM" role="3cqZAk">
              <ref role="37wK5l" to="bbnd:~ParentRunner.childrenInvoker(org.junit.runner.notification.RunNotifier):org.junit.runners.model.Statement" resolve="childrenInvoker" />
              <node concept="37vLTw" id="2BHiRxgmP6L" role="37wK5m">
                <ref role="3cqZAo" node="NTQuym1o1s" resolve="notifier" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="NTQuym1o5p" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3UR2Jj" id="6pV9atIl7z" role="lGtFl">
      <node concept="TZ5HA" id="6pV9atIl7$" role="TZ5H$">
        <node concept="1dT_AC" id="6pV9atIl7_" role="1dT_Ay">
          <property role="1dT_AB" value="+ watching" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="61uE6zXm7Ba" role="1zkMxy">
      <ref role="3uigEE" node="61uE6zXlWPC" resolve="BaseMpsRunner" />
    </node>
  </node>
  <node concept="2pMbU2" id="7Sl4agR2Im3">
    <property role="TrG5h" value="misc" />
    <node concept="3rIKKV" id="7Sl4agR2Imp" role="2pMbU3">
      <node concept="2pNNFK" id="7Sl4agR3gPY" role="2pNm8H">
        <property role="2pNNFO" value="project" />
        <node concept="2pNm8U" id="7Sl4agR3gPZ" role="3o6s8t">
          <node concept="3o66tx" id="7Sl4agR3gQ0" role="3o66t8">
            <property role="3o66tw" value="Dummy project for testing" />
          </node>
        </node>
        <node concept="2pNNFK" id="7Sl4agR3gQ1" role="3o6s8t">
          <property role="2pNNFO" value="component" />
          <node concept="2pNNFK" id="7Sl4agR3gQ2" role="3o6s8t">
            <property role="2pNNFO" value="projectModules" />
            <property role="qg3DV" value="true" />
          </node>
          <node concept="2pNNFK" id="7Sl4agR3gQ3" role="3o6s8t">
            <property role="2pNNFO" value="genConfs" />
            <property role="qg3DV" value="true" />
          </node>
          <node concept="2pNUuL" id="7Sl4agR3gQ4" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="7Sl4agR3gQ5" role="2pMdts">
              <property role="2pMdty" value="MPSProject" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="7Sl4agR3gQ6" role="3o6s8t">
          <property role="2pNNFO" value="component" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="7Sl4agR3gQ7" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="7Sl4agR3gQ8" role="2pMdts">
              <property role="2pMdty" value="ProjectRootManager" />
            </node>
          </node>
          <node concept="2pNUuL" id="7Sl4agR3gQ9" role="2pNNFR">
            <property role="2pNUuO" value="version" />
            <node concept="2pMdtt" id="7Sl4agR3gQa" role="2pMdts">
              <property role="2pMdty" value="2" />
            </node>
          </node>
        </node>
        <node concept="2pNNFK" id="7Sl4agR3gQb" role="3o6s8t">
          <property role="2pNNFO" value="component" />
          <property role="qg3DV" value="false" />
          <node concept="2pNNFK" id="7Sl4agR3gQc" role="3o6s8t">
            <property role="2pNNFO" value="option" />
            <property role="qg3DV" value="true" />
            <node concept="2pNUuL" id="7Sl4agR3gQd" role="2pNNFR">
              <property role="2pNUuO" value="name" />
              <node concept="2pMdtt" id="7Sl4agR3gQe" role="2pMdts">
                <property role="2pMdty" value="version" />
              </node>
            </node>
            <node concept="2pNUuL" id="7Sl4agR3gQf" role="2pNNFR">
              <property role="2pNUuO" value="value" />
              <node concept="2pMdtt" id="7Sl4agR3gQg" role="2pMdts">
                <property role="2pMdty" value="2.5" />
              </node>
            </node>
          </node>
          <node concept="2pNUuL" id="7Sl4agR3gQh" role="2pNNFR">
            <property role="2pNUuO" value="name" />
            <node concept="2pMdtt" id="7Sl4agR3gQi" role="2pMdts">
              <property role="2pMdty" value="ProjectVersion" />
            </node>
          </node>
        </node>
        <node concept="2pNUuL" id="7Sl4agR3gQj" role="2pNNFR">
          <property role="2pNUuO" value="version" />
          <node concept="2pMdtt" id="7Sl4agR3gQk" role="2pMdts">
            <property role="2pMdty" value="4" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5ICuv4IMclT">
    <property role="TrG5h" value="DelegatingRunner" />
    <property role="2bfB8j" value="false" />
    <node concept="312cEg" id="5uM03AdsTLb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5uM03AdsTCm" role="1B3o_S" />
      <node concept="3uibUv" id="5uM03AdsTKx" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="5ICuv4IMclU" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myBuilder" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5ICuv4IMclV" role="1B3o_S" />
      <node concept="3uibUv" id="5ICuv4IMclW" role="1tU5fm">
        <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5ICuv4IMclX" role="1B3o_S" />
    <node concept="3uibUv" id="5ICuv4IMclY" role="1zkMxy">
      <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
    </node>
    <node concept="312cEg" id="5ICuv4IMclZ" role="jymVt">
      <property role="TrG5h" value="myClassName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5ICuv4IMcm0" role="1B3o_S" />
      <node concept="17QB3L" id="5ICuv4IMcm1" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="5ICuv4IMcm2" role="jymVt">
      <property role="TrG5h" value="myModuleReference" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5ICuv4IMcm3" role="1B3o_S" />
      <node concept="3uibUv" id="5ICuv4IMcm4" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsSn6" role="jymVt" />
    <node concept="3clFbW" id="5ICuv4IMcm5" role="jymVt">
      <node concept="3cqZAl" id="5ICuv4IMcm6" role="3clF45" />
      <node concept="3Tm1VV" id="5ICuv4IMcm7" role="1B3o_S" />
      <node concept="3clFbS" id="5ICuv4IMcm8" role="3clF47">
        <node concept="3clFbF" id="5uM03AdsU3n" role="3cqZAp">
          <node concept="37vLTI" id="5uM03AdsU7p" role="3clFbG">
            <node concept="37vLTw" id="5uM03AdsU7W" role="37vLTx">
              <ref role="3cqZAo" node="5uM03AdsTvB" resolve="project" />
            </node>
            <node concept="37vLTw" id="5uM03AdsU3l" role="37vLTJ">
              <ref role="3cqZAo" node="5uM03AdsTLb" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ICuv4IMcm9" role="3cqZAp">
          <node concept="37vLTI" id="5ICuv4IMcma" role="3clFbG">
            <node concept="37vLTw" id="5ICuv4IMcmb" role="37vLTx">
              <ref role="3cqZAo" node="5ICuv4IMcml" resolve="builder" />
            </node>
            <node concept="37vLTw" id="5ICuv4IMcmc" role="37vLTJ">
              <ref role="3cqZAo" node="5ICuv4IMclU" resolve="myBuilder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ICuv4IMcmh" role="3cqZAp">
          <node concept="37vLTI" id="5ICuv4IMcmi" role="3clFbG">
            <node concept="37vLTw" id="5ICuv4IMcmj" role="37vLTx">
              <ref role="3cqZAo" node="5ICuv4IMcmp" resolve="className" />
            </node>
            <node concept="37vLTw" id="5ICuv4IMcmk" role="37vLTJ">
              <ref role="3cqZAo" node="5ICuv4IMclZ" resolve="myClassName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5ICuv4IMcmd" role="3cqZAp">
          <node concept="37vLTI" id="5ICuv4IMcme" role="3clFbG">
            <node concept="37vLTw" id="5ICuv4IMcmf" role="37vLTx">
              <ref role="3cqZAo" node="5ICuv4IMcmn" resolve="moduleRef" />
            </node>
            <node concept="37vLTw" id="5ICuv4IMcmg" role="37vLTJ">
              <ref role="3cqZAo" node="5ICuv4IMcm2" resolve="myModuleReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5uM03AdsTvB" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="5uM03AdsTxx" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="5ICuv4IMcml" role="3clF46">
        <property role="TrG5h" value="builder" />
        <node concept="3uibUv" id="5ICuv4IMcmm" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="5ICuv4IMcmn" role="3clF46">
        <property role="TrG5h" value="moduleRef" />
        <node concept="3uibUv" id="5ICuv4IMcmo" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SModuleReference" resolve="SModuleReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5ICuv4IMcmp" role="3clF46">
        <property role="TrG5h" value="className" />
        <node concept="17QB3L" id="5ICuv4IMcmq" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsSfc" role="jymVt" />
    <node concept="3clFb_" id="5ICuv4IMcmr" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="run" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5ICuv4IMcms" role="1B3o_S" />
      <node concept="3cqZAl" id="5ICuv4IMcmt" role="3clF45" />
      <node concept="37vLTG" id="5ICuv4IMcmu" role="3clF46">
        <property role="TrG5h" value="notifier" />
        <node concept="3uibUv" id="5ICuv4IMcmv" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
        </node>
      </node>
      <node concept="3clFbS" id="5ICuv4IMcmw" role="3clF47">
        <node concept="3SKdUt" id="5ICuv4IMcmx" role="3cqZAp">
          <node concept="3SKdUq" id="5ICuv4IMcmy" role="3SKWNk">
            <property role="3SKdUp" value="todo: runner should be created only twice: in #run and #getDescription" />
          </node>
        </node>
        <node concept="3clFbF" id="5ICuv4IMcmz" role="3cqZAp">
          <node concept="2OqwBi" id="5ICuv4IMcm$" role="3clFbG">
            <node concept="2OqwBi" id="5ICuv4IMcm_" role="2Oq$k0">
              <node concept="37vLTw" id="5ICuv4IMcmA" role="2Oq$k0">
                <ref role="3cqZAo" node="5ICuv4IMclU" resolve="myBuilder" />
              </node>
              <node concept="liA8E" id="5ICuv4IMcmB" role="2OqNvi">
                <ref role="37wK5l" to="7cms:~RunnerBuilder.safeRunnerForClass(java.lang.Class):org.junit.runner.Runner" resolve="safeRunnerForClass" />
                <node concept="1rXfSq" id="5ICuv4IMcmC" role="37wK5m">
                  <ref role="37wK5l" node="5ICuv4IMcmS" resolve="getTestClass" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5ICuv4IMcmD" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.run(org.junit.runner.notification.RunNotifier):void" resolve="run" />
              <node concept="37vLTw" id="5ICuv4IMcmE" role="37wK5m">
                <ref role="3cqZAo" node="5ICuv4IMcmu" resolve="notifier" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5ICuv4IMcmF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsSv8" role="jymVt" />
    <node concept="3clFb_" id="5ICuv4IMcmG" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDescription" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5ICuv4IMcmH" role="1B3o_S" />
      <node concept="3uibUv" id="5ICuv4IMcmI" role="3clF45">
        <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
      </node>
      <node concept="3clFbS" id="5ICuv4IMcmJ" role="3clF47">
        <node concept="3clFbF" id="5ICuv4IMcmK" role="3cqZAp">
          <node concept="2OqwBi" id="5ICuv4IMcmL" role="3clFbG">
            <node concept="2OqwBi" id="5ICuv4IMcmM" role="2Oq$k0">
              <node concept="37vLTw" id="5ICuv4IMcmN" role="2Oq$k0">
                <ref role="3cqZAo" node="5ICuv4IMclU" resolve="myBuilder" />
              </node>
              <node concept="liA8E" id="5ICuv4IMcmO" role="2OqNvi">
                <ref role="37wK5l" to="7cms:~RunnerBuilder.safeRunnerForClass(java.lang.Class):org.junit.runner.Runner" resolve="safeRunnerForClass" />
                <node concept="1rXfSq" id="5ICuv4IMcmP" role="37wK5m">
                  <ref role="37wK5l" node="5ICuv4IMcmS" resolve="getTestClass" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5ICuv4IMcmQ" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.getDescription():org.junit.runner.Description" resolve="getDescription" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5ICuv4IMcmR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsSD5" role="jymVt" />
    <node concept="3clFb_" id="5ICuv4IMcmS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getTestClass" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="5ICuv4IMcmT" role="3clF47">
        <node concept="3SKdUt" id="5ICuv4IMcnf" role="3cqZAp">
          <node concept="3SKdUq" id="5ICuv4IMcng" role="3SKWNk">
            <property role="3SKdUp" value="todo: execute only MPS tests here. move all unit tests to ant task" />
          </node>
        </node>
        <node concept="3cpWs8" id="5uM03AdsWsA" role="3cqZAp">
          <node concept="3cpWsn" id="5uM03AdsWsB" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="5uM03AdsWsy" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="5uM03AdsWsC" role="33vP2m">
              <node concept="37vLTw" id="5uM03AdsWsD" role="2Oq$k0">
                <ref role="3cqZAo" node="5uM03AdsTLb" resolve="myProject" />
              </node>
              <node concept="liA8E" id="5uM03AdsWsE" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5uM03AdsWIM" role="3cqZAp">
          <node concept="2OqwBi" id="5uM03AdsWIN" role="3cqZAk">
            <node concept="2ShNRf" id="5uM03AdsWIO" role="2Oq$k0">
              <node concept="1pGfFk" id="5uM03AdsWIP" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                <node concept="37vLTw" id="5uM03AdsWIQ" role="37wK5m">
                  <ref role="3cqZAo" node="5uM03AdsWsB" resolve="repository" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="5uM03AdsWIR" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable):java.lang.Object" resolve="runReadAction" />
              <node concept="1bVj0M" id="5uM03AdsWIS" role="37wK5m">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="5uM03AdsWIT" role="1bW5cS">
                  <node concept="3cpWs8" id="5uM03AdsXev" role="3cqZAp">
                    <node concept="3cpWsn" id="5uM03AdsXew" role="3cpWs9">
                      <property role="TrG5h" value="resolved" />
                      <node concept="3uibUv" id="5uM03AdsXer" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="5uM03AdsXex" role="33vP2m">
                        <node concept="37vLTw" id="5uM03AdsXey" role="2Oq$k0">
                          <ref role="3cqZAo" node="5ICuv4IMcm2" resolve="myModuleReference" />
                        </node>
                        <node concept="liA8E" id="5uM03AdsXez" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.module.SModule" resolve="resolve" />
                          <node concept="37vLTw" id="5uM03AdsXe$" role="37wK5m">
                            <ref role="3cqZAo" node="5uM03AdsWsB" resolve="repository" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="5uM03AdsXDr" role="3cqZAp">
                    <node concept="3clFbS" id="5uM03AdsXDt" role="3clFbx">
                      <node concept="3cpWs8" id="5uM03Adt3gT" role="3cqZAp">
                        <node concept="3cpWsn" id="5uM03Adt3gR" role="3cpWs9">
                          <property role="TrG5h" value="module" />
                          <node concept="3uibUv" id="5uM03Adt3gS" role="1tU5fm">
                            <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                          </node>
                          <node concept="1eOMI4" id="5uM03Adt2pC" role="33vP2m">
                            <node concept="10QFUN" id="5uM03Adt2p_" role="1eOMHV">
                              <node concept="3uibUv" id="5uM03Adt2wE" role="10QFUM">
                                <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                              </node>
                              <node concept="37vLTw" id="5uM03AdsZmI" role="10QFUP">
                                <ref role="3cqZAo" node="5uM03AdsXew" resolve="resolved" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="SfApY" id="5uM03Adt3gE" role="3cqZAp">
                        <node concept="TDmWw" id="5uM03Adt3gF" role="TEbGg">
                          <node concept="3clFbS" id="5uM03Adt3gG" role="TDEfX">
                            <node concept="3cpWs6" id="5uM03Adt4bf" role="3cqZAp">
                              <node concept="10Nm6u" id="5uM03Adt4hQ" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="3cpWsn" id="5uM03Adt3gJ" role="TDEfY">
                            <property role="3TUv4t" value="false" />
                            <property role="TrG5h" value="e" />
                            <node concept="3uibUv" id="5uM03Adt3gK" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5uM03Adt3gL" role="SfCbr">
                          <node concept="3cpWs6" id="5uM03Adt4$2" role="3cqZAp">
                            <node concept="2OqwBi" id="5uM03Adt3h6" role="3cqZAk">
                              <node concept="37vLTw" id="5uM03Adt3h7" role="2Oq$k0">
                                <ref role="3cqZAo" node="5uM03Adt3gR" resolve="module" />
                              </node>
                              <node concept="liA8E" id="5uM03Adt3h8" role="2OqNvi">
                                <ref role="37wK5l" to="j8aq:~ReloadableModule.getClass(java.lang.String):java.lang.Class" resolve="getClass" />
                                <node concept="37vLTw" id="5uM03Adt3h9" role="37wK5m">
                                  <ref role="3cqZAo" node="5ICuv4IMclZ" resolve="myClassName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="5uM03AdsXZw" role="3clFbw">
                      <node concept="3uibUv" id="5uM03AdsY8z" role="2ZW6by">
                        <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                      </node>
                      <node concept="37vLTw" id="5uM03AdsXMH" role="2ZW6bz">
                        <ref role="3cqZAo" node="5uM03AdsXew" resolve="resolved" />
                      </node>
                    </node>
                    <node concept="9aQIb" id="5uM03AdsYPm" role="9aQIa">
                      <node concept="3clFbS" id="5uM03AdsYPn" role="9aQI4">
                        <node concept="3cpWs6" id="5uM03AdsYYm" role="3cqZAp">
                          <node concept="10Nm6u" id="5uM03AdsZbW" role="3cqZAk" />
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
      <node concept="3Tm6S6" id="5ICuv4IMcn7" role="1B3o_S" />
      <node concept="3uibUv" id="5ICuv4IMcn8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="3qTvmN" id="7WTijIAQMBK" role="11_B2D" />
      </node>
      <node concept="2AHcQZ" id="5uM03Adt1uK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uM03AdsSL9" role="jymVt" />
  </node>
  <node concept="312cEu" id="5A5jZrz4rxb">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="FromModulesListProjectStrategy" />
    <node concept="Wx3nA" id="6yiPRtqjGE9" role="jymVt">
      <property role="TrG5h" value="MODULES_PATHS_PROPERTY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5A5jZrz0dDo" role="1B3o_S" />
      <node concept="Xl_RD" id="6yiPRtqjGEa" role="33vP2m">
        <property role="Xl_RC" value="mps.test.modules" />
      </node>
      <node concept="17QB3L" id="6yiPRtqjGEc" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2BGPXkEvhcu" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModulesPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2BGPXkEvhcv" role="1B3o_S" />
      <node concept="17QB3L" id="2BGPXkEvhcw" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEvhcx" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEvhcy" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEvhcz" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEvhc$" role="3clF47">
        <node concept="3clFbF" id="2BGPXkEvhc_" role="3cqZAp">
          <node concept="37vLTI" id="2BGPXkEvhcA" role="3clFbG">
            <node concept="37vLTw" id="2BGPXkEvhcB" role="37vLTx">
              <ref role="3cqZAo" node="2BGPXkEvhcE" resolve="modulesPath" />
            </node>
            <node concept="37vLTw" id="2BGPXkEvhcC" role="37vLTJ">
              <ref role="3cqZAo" node="2BGPXkEvhcu" resolve="myModulesPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEvhcD" role="1B3o_S" />
      <node concept="37vLTG" id="2BGPXkEvhcE" role="3clF46">
        <property role="TrG5h" value="modulesPath" />
        <node concept="17QB3L" id="2BGPXkEvhcF" role="1tU5fm" />
        <node concept="2AHcQZ" id="2BGPXkEvhcG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEvhcH" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEvhcI" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEvhcJ" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEvhcK" role="3clF47">
        <node concept="1VxSAg" id="2BGPXkEvhcL" role="3cqZAp">
          <ref role="37wK5l" node="2BGPXkEvhcy" resolve="FromModulesListProjectStrategy" />
          <node concept="2YIFZM" id="2BGPXkEvhcM" role="37wK5m">
            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="37vLTw" id="2BGPXkEvht0" role="37wK5m">
              <ref role="3cqZAo" node="6yiPRtqjGE9" resolve="MODULES_PATHS_PROPERTY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEvhcN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEvgUn" role="jymVt" />
    <node concept="3Tm1VV" id="5A5jZrz4rxc" role="1B3o_S" />
    <node concept="3uibUv" id="2BGPXkEvgQQ" role="1zkMxy">
      <ref role="3uigEE" to="79ha:5A5jZrz799S" resolve="ProjectStrategyBase" />
    </node>
    <node concept="3clFb_" id="5A5jZrz7gyH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="construct" />
      <node concept="3Tm1VV" id="5A5jZrz7gyJ" role="1B3o_S" />
      <node concept="3uibUv" id="5A5jZrz7gyK" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="5A5jZrz7gyL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5A5jZrz7gyN" role="3clF47">
        <node concept="3cpWs8" id="7fR23Zqm3E0" role="3cqZAp">
          <node concept="3cpWsn" id="7fR23Zqm3E1" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <property role="3TUv4t" value="true" />
            <node concept="10Q1$e" id="7fR23Zqm3E2" role="1tU5fm">
              <node concept="17QB3L" id="7fR23Zqm3E3" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="7fR23Zqm3E4" role="33vP2m">
              <node concept="liA8E" id="7fR23Zqm3E5" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                <node concept="10M0yZ" id="7fR23Zqm3E6" role="37wK5m">
                  <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                  <ref role="3cqZAo" to="guwi:~File.pathSeparator" resolve="pathSeparator" />
                </node>
              </node>
              <node concept="37vLTw" id="2BGPXkEvjrL" role="2Oq$k0">
                <ref role="3cqZAo" node="2BGPXkEvhcu" resolve="myModulesPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7LkutxgThrq" role="3cqZAp">
          <node concept="3cpWsn" id="7LkutxgThrr" role="3cpWs9">
            <property role="TrG5h" value="mm" />
            <node concept="3uibUv" id="7LkutxgThrs" role="1tU5fm">
              <ref role="3uigEE" to="32g5:~ModulesMiner" resolve="ModulesMiner" />
            </node>
            <node concept="2ShNRf" id="7LkutxgTh_b" role="33vP2m">
              <node concept="1pGfFk" id="7LkutxgThU4" role="2ShVmc">
                <ref role="37wK5l" to="32g5:~ModulesMiner.&lt;init&gt;()" resolve="ModulesMiner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7fR23Zqm3Ei" role="3cqZAp">
          <node concept="37vLTw" id="7fR23Zqm3Ej" role="2GsD0m">
            <ref role="3cqZAo" node="7fR23Zqm3E1" resolve="modules" />
          </node>
          <node concept="2GrKxI" id="7fR23Zqm3Ek" role="2Gsz3X">
            <property role="TrG5h" value="modulePath" />
          </node>
          <node concept="3clFbS" id="7fR23Zqm3El" role="2LFqv$">
            <node concept="3cpWs8" id="5ICuv4ILaTB" role="3cqZAp">
              <node concept="3cpWsn" id="5ICuv4ILaTC" role="3cpWs9">
                <property role="TrG5h" value="fileByPath" />
                <node concept="3uibUv" id="5ICuv4ILaTh" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="5ICuv4ILaTD" role="33vP2m">
                  <node concept="liA8E" id="5ICuv4ILaTE" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                    <node concept="2GrUjf" id="5ICuv4ILaTF" role="37wK5m">
                      <ref role="2Gs0qQ" node="7fR23Zqm3Ek" resolve="modulePath" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="5ICuv4ILaTG" role="2Oq$k0">
                    <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                    <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7LkutxgTkAE" role="3cqZAp">
              <node concept="2OqwBi" id="7LkutxgTkEA" role="3clFbG">
                <node concept="37vLTw" id="7LkutxgTkAC" role="2Oq$k0">
                  <ref role="3cqZAo" node="7LkutxgThrr" resolve="mm" />
                </node>
                <node concept="liA8E" id="7LkutxgTkKE" role="2OqNvi">
                  <ref role="37wK5l" to="32g5:~ModulesMiner.collectModules(jetbrains.mps.vfs.IFile):jetbrains.mps.library.ModulesMiner" resolve="collectModules" />
                  <node concept="37vLTw" id="7LkutxgTkLB" role="37wK5m">
                    <ref role="3cqZAo" node="5ICuv4ILaTC" resolve="fileByPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEvjS5" role="3cqZAp">
          <node concept="1rXfSq" id="2BGPXkEwJvF" role="3cqZAk">
            <ref role="37wK5l" to="79ha:2BGPXkEwDKI" resolve="loadProjectFromModuleHandles" />
            <node concept="37vLTw" id="2BGPXkEwQIi" role="37wK5m">
              <ref role="3cqZAo" node="2BGPXkEwQiK" resolve="emptyProject" />
            </node>
            <node concept="2OqwBi" id="7LkutxgTkRB" role="37wK5m">
              <node concept="37vLTw" id="7LkutxgTkNq" role="2Oq$k0">
                <ref role="3cqZAo" node="7LkutxgThrr" resolve="mm" />
              </node>
              <node concept="liA8E" id="7LkutxgTl2J" role="2OqNvi">
                <ref role="37wK5l" to="32g5:~ModulesMiner.getCollectedModules():java.util.Collection" resolve="getCollectedModules" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZrz7gO6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="2BGPXkEwQiK" role="3clF46">
        <property role="TrG5h" value="emptyProject" />
        <node concept="3uibUv" id="2BGPXkEwQiJ" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwQzI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEw4a0" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEw4rA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkEw4rD" role="3clF47">
        <node concept="3cpWs6" id="2BGPXkEw4I4" role="3cqZAp">
          <node concept="3y3z36" id="2BGPXkEw56l" role="3cqZAk">
            <node concept="10Nm6u" id="2BGPXkEw5dg" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkEw4Qy" role="3uHU7B">
              <ref role="3cqZAo" node="2BGPXkEvhcu" resolve="myModulesPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEw4iY" role="1B3o_S" />
      <node concept="10P_77" id="2BGPXkEw4kc" role="3clF45" />
      <node concept="2AHcQZ" id="2BGPXkEw4Ac" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3UR2Jj" id="2BGPXkEvhD8" role="lGtFl">
      <node concept="TZ5HA" id="2BGPXkEvhD9" role="TZ5H$">
        <node concept="1dT_AC" id="2BGPXkEvhDa" role="1dT_Ay">
          <property role="1dT_AB" value="todo: merge with &quot;modules collected from dir&quot;, or specify here paths to msd/mpl files" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5A5jZrz4rEw">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="FromProjectPathProjectStrategy" />
    <node concept="Wx3nA" id="7X3$CtvY4JR" role="jymVt">
      <property role="TrG5h" value="PROJECT_PATH_PROPERTY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2BGPXkEv7o1" role="1B3o_S" />
      <node concept="17QB3L" id="7X3$CtvY4JP" role="1tU5fm" />
      <node concept="Xl_RD" id="7X3$CtvY4Mw" role="33vP2m">
        <property role="Xl_RC" value="mps.junit.project" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEv7fb" role="jymVt" />
    <node concept="312cEg" id="5A5jZrz76OD" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myProjectPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5A5jZrz76Np" role="1B3o_S" />
      <node concept="17QB3L" id="5A5jZrz76OB" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="5A5jZrz770x" role="jymVt" />
    <node concept="3Tm1VV" id="5A5jZrz4rEx" role="1B3o_S" />
    <node concept="3clFbW" id="5A5jZrz76JI" role="jymVt">
      <node concept="3cqZAl" id="5A5jZrz76JJ" role="3clF45" />
      <node concept="3clFbS" id="5A5jZrz76JL" role="3clF47">
        <node concept="3clFbF" id="5A5jZrz76QS" role="3cqZAp">
          <node concept="37vLTI" id="5A5jZrz76X1" role="3clFbG">
            <node concept="37vLTw" id="5A5jZrz76Yj" role="37vLTx">
              <ref role="3cqZAo" node="5A5jZrz76Lm" resolve="projectPath" />
            </node>
            <node concept="37vLTw" id="5A5jZrz76QR" role="37vLTJ">
              <ref role="3cqZAo" node="5A5jZrz76OD" resolve="myProjectPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5A5jZrz76H4" role="1B3o_S" />
      <node concept="37vLTG" id="5A5jZrz76Lm" role="3clF46">
        <property role="TrG5h" value="projectPath" />
        <node concept="17QB3L" id="5A5jZrz76Ll" role="1tU5fm" />
        <node concept="2AHcQZ" id="5A5jZrz76Z_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEv5Ox" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEv60R" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEv60S" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEv60U" role="3clF47">
        <node concept="1VxSAg" id="2BGPXkEv66d" role="3cqZAp">
          <ref role="37wK5l" node="5A5jZrz76JI" resolve="FromProjectPathProjectStrategy" />
          <node concept="2YIFZM" id="2BGPXkEv5Dm" role="37wK5m">
            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <node concept="37vLTw" id="2BGPXkEv7qB" role="37wK5m">
              <ref role="3cqZAo" node="7X3$CtvY4JR" resolve="PROJECT_PATH_PROPERTY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEv5Wu" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEx9An" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEw6UA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="2BGPXkEw6UC" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkEw6UD" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="2BGPXkEw6UE" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2BGPXkEw6UF" role="3clF47">
        <node concept="3clFbJ" id="2BGPXkEw7cy" role="3cqZAp">
          <node concept="3clFbS" id="2BGPXkEw7c$" role="3clFbx">
            <node concept="3cpWs8" id="2BGPXkEwKmB" role="3cqZAp">
              <node concept="3cpWsn" id="2BGPXkEwKmC" role="3cpWs9">
                <property role="TrG5h" value="newProject" />
                <node concept="3uibUv" id="2BGPXkEwKmy" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="1rXfSq" id="2BGPXkExet2" role="33vP2m">
                  <ref role="37wK5l" node="2BGPXkExbae" resolve="openProjectIfNotAlreadyOpened" />
                  <node concept="37vLTw" id="2BGPXkExg72" role="37wK5m">
                    <ref role="3cqZAo" node="2BGPXkEwEdb" resolve="env" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2BGPXkEw7fy" role="3cqZAp">
              <node concept="1rXfSq" id="2BGPXkEw8mf" role="3cqZAk">
                <ref role="37wK5l" node="5A5jZrz7gt7" resolve="construct" />
                <node concept="37vLTw" id="2BGPXkEwK_d" role="37wK5m">
                  <ref role="3cqZAo" node="2BGPXkEwKmC" resolve="newProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1rXfSq" id="2BGPXkEw7dR" role="3clFbw">
            <ref role="37wK5l" node="2BGPXkEwcbv" resolve="isApplicable" />
          </node>
        </node>
        <node concept="YS8fn" id="2BGPXkEw8zK" role="3cqZAp">
          <node concept="2ShNRf" id="2BGPXkEw8Dk" role="YScLw">
            <node concept="1pGfFk" id="2BGPXkEw9eH" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="2BGPXkEw9fN" role="37wK5m">
                <property role="Xl_RC" value="Strategy is not applicable -- cannot create project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2BGPXkEwEdb" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="2BGPXkEwEda" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwEiN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEx9WF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExaKm" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkExbae" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="openProjectIfNotAlreadyOpened" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkExbah" role="3clF47">
        <node concept="3cpWs8" id="2BGPXkExbjQ" role="3cqZAp">
          <node concept="3cpWsn" id="2BGPXkExbjR" role="3cpWs9">
            <property role="TrG5h" value="projectFile" />
            <node concept="3uibUv" id="2BGPXkExbjS" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2ShNRf" id="2BGPXkExbjT" role="33vP2m">
              <node concept="1pGfFk" id="2BGPXkExbjU" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                <node concept="37vLTw" id="2BGPXkExbjV" role="37wK5m">
                  <ref role="3cqZAo" node="5A5jZrz76OD" resolve="myProjectPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2BGPXkExbjW" role="3cqZAp">
          <node concept="3cpWsn" id="2BGPXkExbjX" role="3cpWs9">
            <property role="TrG5h" value="openedProject" />
            <node concept="3uibUv" id="2BGPXkExbjY" role="1tU5fm">
              <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="2BGPXkExbjZ" role="33vP2m">
              <node concept="37vLTw" id="2BGPXkExgK8" role="2Oq$k0">
                <ref role="3cqZAo" node="2BGPXkExge2" resolve="env" />
              </node>
              <node concept="liA8E" id="2BGPXkExbk1" role="2OqNvi">
                <ref role="37wK5l" to="79ha:yBZlauN1vW" resolve="getOpenedProject" />
                <node concept="37vLTw" id="2BGPXkExbk2" role="37wK5m">
                  <ref role="3cqZAo" node="2BGPXkExbjR" resolve="projectFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2BGPXkExcNt" role="3cqZAp">
          <node concept="3clFbS" id="2BGPXkExcNv" role="3clFbx">
            <node concept="3clFbF" id="2BGPXkExd3E" role="3cqZAp">
              <node concept="37vLTI" id="2BGPXkExd8o" role="3clFbG">
                <node concept="2OqwBi" id="2BGPXkExdcT" role="37vLTx">
                  <node concept="37vLTw" id="2BGPXkExgQI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2BGPXkExge2" resolve="env" />
                  </node>
                  <node concept="liA8E" id="2BGPXkExdki" role="2OqNvi">
                    <ref role="37wK5l" to="79ha:6rx4kZDjWg4" resolve="openProject" />
                    <node concept="37vLTw" id="2BGPXkExdmq" role="37wK5m">
                      <ref role="3cqZAo" node="2BGPXkExbjR" resolve="projectFile" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2BGPXkExd3C" role="37vLTJ">
                  <ref role="3cqZAo" node="2BGPXkExbjX" resolve="openedProject" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2BGPXkExe0J" role="3cqZAp">
              <node concept="1rXfSq" id="2BGPXkExe0H" role="3clFbG">
                <ref role="37wK5l" to="79ha:2BGPXkEwSeK" resolve="makeOnFirstTimeOpened" />
                <node concept="37vLTw" id="2BGPXkExe6J" role="37wK5m">
                  <ref role="3cqZAo" node="2BGPXkExbjX" resolve="openedProject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2BGPXkExd08" role="3clFbw">
            <node concept="10Nm6u" id="2BGPXkExd11" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkExcV_" role="3uHU7B">
              <ref role="3cqZAo" node="2BGPXkExbjX" resolve="openedProject" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkExbsd" role="3cqZAp">
          <node concept="37vLTw" id="2BGPXkExbvM" role="3cqZAk">
            <ref role="3cqZAo" node="2BGPXkExbjX" resolve="openedProject" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2BGPXkExaYr" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkExb75" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="2BGPXkExbBI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="2BGPXkExge2" role="3clF46">
        <property role="TrG5h" value="env" />
        <node concept="3uibUv" id="2BGPXkExge1" role="1tU5fm">
          <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5A5jZrz76Fx" role="jymVt" />
    <node concept="3uibUv" id="2BGPXkEv1$n" role="1zkMxy">
      <ref role="3uigEE" to="79ha:5A5jZrz799S" resolve="ProjectStrategyBase" />
    </node>
    <node concept="3clFb_" id="5A5jZrz7gt7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="construct" />
      <node concept="3Tm1VV" id="5A5jZrz7gt9" role="1B3o_S" />
      <node concept="3uibUv" id="5A5jZrz7gta" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="5A5jZrz7gtb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5A5jZrz7gtd" role="3clF47">
        <node concept="3SKdUt" id="2BGPXkExgZZ" role="3cqZAp">
          <node concept="3SKdUq" id="2BGPXkExh31" role="3SKWNk">
            <property role="3SKdUp" value="do nothing" />
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkExeei" role="3cqZAp">
          <node concept="37vLTw" id="2BGPXkExelr" role="3cqZAk">
            <ref role="3cqZAo" node="2BGPXkEwRPZ" resolve="project" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2BGPXkEwRPZ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2BGPXkEwRPY" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwRWu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2BGPXkEwRZT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEwcbu" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwcbv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkEwcbw" role="3clF47">
        <node concept="3cpWs6" id="2BGPXkEwcbx" role="3cqZAp">
          <node concept="3y3z36" id="2BGPXkEwcby" role="3cqZAk">
            <node concept="10Nm6u" id="2BGPXkEwcbz" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkEwcit" role="3uHU7B">
              <ref role="3cqZAo" node="5A5jZrz76OD" resolve="myProjectPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEwcb_" role="1B3o_S" />
      <node concept="10P_77" id="2BGPXkEwcbA" role="3clF45" />
      <node concept="2AHcQZ" id="2BGPXkEwcbB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5A5jZrz4rFi">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="FromDirWithModulesProjectStrategy" />
    <node concept="Wx3nA" id="43Ra3NMzH25" role="jymVt">
      <property role="TrG5h" value="MODULES_ROOT_PROPERTY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5A5jZrz0dGa" role="1B3o_S" />
      <node concept="17QB3L" id="43Ra3NMzH23" role="1tU5fm" />
      <node concept="Xl_RD" id="43Ra3NMzH2L" role="33vP2m">
        <property role="Xl_RC" value="mps.junit.modules.root" />
      </node>
    </node>
    <node concept="Wx3nA" id="3Pdq2ILxdvK" role="jymVt">
      <property role="TrG5h" value="EXCLUDES" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="3Pdq2ILxdvM" role="1tU5fm">
        <node concept="17QB3L" id="2f56j2P8TCn" role="10Q1$1" />
      </node>
      <node concept="2ShNRf" id="3Pdq2ILxdvQ" role="33vP2m">
        <node concept="3g6Rrh" id="3Pdq2ILxdvP" role="2ShVmc">
          <node concept="17QB3L" id="2f56j2P8Rbt" role="3g7fb8" />
          <node concept="Xl_RD" id="3Pdq2ILxdvO" role="3g7hyw">
            <property role="Xl_RC" value="IdeaPlugin" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3Pdq2ILxdvR" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="3Pdq2ILxdvS" role="jymVt">
      <property role="TrG5h" value="EXCLUDE_SET" />
      <property role="3TUv4t" value="true" />
      <node concept="1rXfSq" id="2HmhDwzk5CJ" role="33vP2m">
        <ref role="37wK5l" node="2HmhDwzk4SD" resolve="createExcludesSet" />
      </node>
      <node concept="3uibUv" id="3Pdq2ILxdvT" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="3Pdq2ILxdvU" role="11_B2D">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3Pdq2ILxdvX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEvgmt" role="jymVt" />
    <node concept="2YIFZL" id="2HmhDwzk4SD" role="jymVt">
      <property role="TrG5h" value="createExcludesSet" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="2HmhDwzk4SG" role="3clF47">
        <node concept="3cpWs8" id="2HmhDwzk6XH" role="3cqZAp">
          <node concept="3cpWsn" id="2HmhDwzk6XI" role="3cpWs9">
            <property role="TrG5h" value="excludesSet" />
            <node concept="3uibUv" id="2HmhDwzk6XF" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="2HmhDwzk79T" role="11_B2D">
                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
              </node>
            </node>
            <node concept="2ShNRf" id="2HmhDwzk7cX" role="33vP2m">
              <node concept="1pGfFk" id="2HmhDwzkpry" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="2HmhDwzkp_G" role="1pMfVU">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Pdq2ILxfoC" role="3cqZAp">
          <node concept="3cpWsn" id="3Pdq2ILxfoB" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="userDir" />
            <node concept="2YIFZM" id="3Pdq2ILxfpq" role="33vP2m">
              <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
              <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
              <node concept="Xl_RD" id="3Pdq2ILxfoG" role="37wK5m">
                <property role="Xl_RC" value="user.dir" />
              </node>
            </node>
            <node concept="17QB3L" id="2f56j2P8Uj8" role="1tU5fm" />
          </node>
        </node>
        <node concept="1DcWWT" id="3Pdq2ILxfoH" role="3cqZAp">
          <node concept="37vLTw" id="2BGPXkEvaEm" role="1DdaDG">
            <ref role="3cqZAo" node="3Pdq2ILxdvK" resolve="EXCLUDES" />
          </node>
          <node concept="3cpWsn" id="3Pdq2ILxfoY" role="1Duv9x">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="exclude" />
            <node concept="17QB3L" id="2f56j2P8ZGa" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="3Pdq2ILxfoJ" role="2LFqv$">
            <node concept="3clFbF" id="3Pdq2ILxfoK" role="3cqZAp">
              <node concept="2OqwBi" id="3Pdq2ILxfpt" role="3clFbG">
                <node concept="liA8E" id="3Pdq2ILxfpu" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2OqwBi" id="3Pdq2ILxfoN" role="37wK5m">
                    <node concept="2YIFZM" id="3Pdq2ILxfpw" role="2Oq$k0">
                      <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                      <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="3Pdq2ILxfoQ" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                      <node concept="3cpWs3" id="3Pdq2ILxfoR" role="37wK5m">
                        <node concept="3cpWs3" id="3Pdq2ILxfoS" role="3uHU7B">
                          <node concept="10M0yZ" id="3Pdq2ILxfpy" role="3uHU7w">
                            <ref role="1PxDUh" to="guwi:~File" resolve="File" />
                            <ref role="3cqZAo" to="guwi:~File.separator" resolve="separator" />
                          </node>
                          <node concept="37vLTw" id="3Pdq2ILxfoT" role="3uHU7B">
                            <ref role="3cqZAo" node="3Pdq2ILxfoB" resolve="userDir" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3Pdq2ILxfoX" role="3uHU7w">
                          <ref role="3cqZAo" node="3Pdq2ILxfoY" resolve="exclude" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2HmhDwzkpHR" role="2Oq$k0">
                  <ref role="3cqZAo" node="2HmhDwzk6XI" resolve="excludesSet" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2HmhDwzk6wF" role="3cqZAp">
          <node concept="37vLTw" id="2HmhDwzkqlq" role="3cqZAk">
            <ref role="3cqZAo" node="2HmhDwzk6XI" resolve="excludesSet" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2HmhDwzk48a" role="1B3o_S" />
      <node concept="3uibUv" id="2HmhDwzk4FW" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2HmhDwzk4Sl" role="11_B2D">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEvdiv" role="jymVt" />
    <node concept="312cEg" id="2BGPXkEvd6V" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModulesRootPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2BGPXkEvd6W" role="1B3o_S" />
      <node concept="17QB3L" id="2BGPXkEvd6X" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEvcKf" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEvcy4" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEvcy5" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEvcy6" role="3clF47">
        <node concept="3clFbF" id="2BGPXkEvcy7" role="3cqZAp">
          <node concept="37vLTI" id="2BGPXkEvcy8" role="3clFbG">
            <node concept="37vLTw" id="2BGPXkEvcy9" role="37vLTx">
              <ref role="3cqZAo" node="2BGPXkEvcyc" resolve="modulesRootPath" />
            </node>
            <node concept="37vLTw" id="2BGPXkEvcya" role="37vLTJ">
              <ref role="3cqZAo" node="2BGPXkEvd6V" resolve="myModulesRootPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEvcyb" role="1B3o_S" />
      <node concept="37vLTG" id="2BGPXkEvcyc" role="3clF46">
        <property role="TrG5h" value="modulesRootPath" />
        <node concept="17QB3L" id="2BGPXkEvcyd" role="1tU5fm" />
        <node concept="2AHcQZ" id="2BGPXkEvcye" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEvcyf" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEvcyg" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEvcyh" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEvcyi" role="3clF47">
        <node concept="1VxSAg" id="2BGPXkEvcyj" role="3cqZAp">
          <ref role="37wK5l" node="2BGPXkEvcy4" resolve="FromDirWithModulesProjectStrategy" />
          <node concept="2YIFZM" id="2BGPXkEvcyk" role="37wK5m">
            <ref role="1Pybhc" to="wyt6:~System" resolve="System" />
            <ref role="37wK5l" to="wyt6:~System.getProperty(java.lang.String):java.lang.String" resolve="getProperty" />
            <node concept="37vLTw" id="2BGPXkEvfR2" role="37wK5m">
              <ref role="3cqZAo" node="43Ra3NMzH25" resolve="MODULES_ROOT_PROPERTY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEvcyl" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEv9Tb" role="jymVt" />
    <node concept="3Tm1VV" id="5A5jZrz4rFj" role="1B3o_S" />
    <node concept="3clFb_" id="5A5jZrz794W" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="construct" />
      <node concept="3Tm1VV" id="5A5jZrz794Y" role="1B3o_S" />
      <node concept="3uibUv" id="5A5jZrz794Z" role="3clF45">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="2AHcQZ" id="5A5jZrz7950" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="5A5jZrz7951" role="3clF47">
        <node concept="3cpWs8" id="43Ra3NM$rm8" role="3cqZAp">
          <node concept="3cpWsn" id="43Ra3NM$rmb" role="3cpWs9">
            <property role="TrG5h" value="moduleHandles" />
            <node concept="_YKpA" id="43Ra3NM$rm4" role="1tU5fm">
              <node concept="3uibUv" id="43Ra3NM$rms" role="_ZDj9">
                <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
              </node>
            </node>
            <node concept="1rXfSq" id="2BGPXkEwFHZ" role="33vP2m">
              <ref role="37wK5l" node="2BGPXkEwFdG" resolve="collectHandles" />
              <node concept="2ShNRf" id="43Ra3NM$rog" role="37wK5m">
                <node concept="1pGfFk" id="43Ra3NM$s7K" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                  <node concept="37vLTw" id="2BGPXkEvg8X" role="37wK5m">
                    <ref role="3cqZAo" node="2BGPXkEvd6V" resolve="myModulesRootPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEv9tA" role="3cqZAp">
          <node concept="1rXfSq" id="2BGPXkEwETg" role="3cqZAk">
            <ref role="37wK5l" to="79ha:2BGPXkEwDKI" resolve="loadProjectFromModuleHandles" />
            <node concept="37vLTw" id="2BGPXkEwNNH" role="37wK5m">
              <ref role="3cqZAo" node="2BGPXkEwEzK" resolve="emptyProject" />
            </node>
            <node concept="37vLTw" id="2BGPXkEwF4a" role="37wK5m">
              <ref role="3cqZAo" node="43Ra3NM$rmb" resolve="moduleHandles" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5A5jZrz7gRx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="2BGPXkEwEzK" role="3clF46">
        <property role="TrG5h" value="emptyProject" />
        <node concept="3uibUv" id="2BGPXkEwNqr" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="2BGPXkEwEFU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkEvb6o" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwFdG" role="jymVt">
      <property role="TrG5h" value="collectHandles" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="43Ra3NM$rkU" role="3clF47">
        <node concept="3cpWs8" id="2BGPXkEwCpU" role="3cqZAp">
          <node concept="3cpWsn" id="2BGPXkEwCpV" role="3cpWs9">
            <property role="TrG5h" value="fileByPath" />
            <node concept="3uibUv" id="2BGPXkEwCpS" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="2BGPXkEwCpW" role="33vP2m">
              <node concept="2YIFZM" id="2BGPXkEwCpX" role="2Oq$k0">
                <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
              </node>
              <node concept="liA8E" id="2BGPXkEwCpY" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                <node concept="2OqwBi" id="2BGPXkEwCpZ" role="37wK5m">
                  <node concept="37vLTw" id="2BGPXkEwCq0" role="2Oq$k0">
                    <ref role="3cqZAo" node="43Ra3NM$rlF" resolve="rootFolder" />
                  </node>
                  <node concept="liA8E" id="2BGPXkEwCq1" role="2OqNvi">
                    <ref role="37wK5l" to="guwi:~File.getAbsolutePath():java.lang.String" resolve="getAbsolutePath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="43Ra3NM$EEV" role="3cqZAp">
          <node concept="3cpWsn" id="43Ra3NM$EEY" role="3cpWs9">
            <property role="TrG5h" value="minedHandles" />
            <node concept="A3Dl8" id="7LkutxgRHml" role="1tU5fm">
              <node concept="3uibUv" id="7LkutxgRHmn" role="A3Ik2">
                <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
              </node>
            </node>
            <node concept="2OqwBi" id="7LkutxgRGc2" role="33vP2m">
              <node concept="2OqwBi" id="43Ra3NM$F4M" role="2Oq$k0">
                <node concept="2ShNRf" id="7LkutxgRCH_" role="2Oq$k0">
                  <node concept="1pGfFk" id="7LkutxgRENz" role="2ShVmc">
                    <ref role="37wK5l" to="32g5:~ModulesMiner.&lt;init&gt;(java.util.Collection)" resolve="ModulesMiner" />
                    <node concept="37vLTw" id="7LkutxgREYI" role="37wK5m">
                      <ref role="3cqZAo" node="3Pdq2ILxdvS" resolve="EXCLUDE_SET" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="43Ra3NM$FK$" role="2OqNvi">
                  <ref role="37wK5l" to="32g5:~ModulesMiner.collectModules(jetbrains.mps.vfs.IFile):jetbrains.mps.library.ModulesMiner" resolve="collectModules" />
                  <node concept="37vLTw" id="2BGPXkEwCq2" role="37wK5m">
                    <ref role="3cqZAo" node="2BGPXkEwCpV" resolve="fileByPath" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="7LkutxgRGpm" role="2OqNvi">
                <ref role="37wK5l" to="32g5:~ModulesMiner.getCollectedModules():java.util.Collection" resolve="getCollectedModules" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2BGPXkEv9wF" role="3cqZAp">
          <node concept="2OqwBi" id="2BGPXkEv9wG" role="3cqZAk">
            <node concept="2OqwBi" id="2BGPXkEv9wH" role="2Oq$k0">
              <node concept="37vLTw" id="2BGPXkEv9wI" role="2Oq$k0">
                <ref role="3cqZAo" node="43Ra3NM$EEY" resolve="minedHandles" />
              </node>
              <node concept="3zZkjj" id="2BGPXkEv9wJ" role="2OqNvi">
                <node concept="1bVj0M" id="2BGPXkEv9wK" role="23t8la">
                  <node concept="3clFbS" id="2BGPXkEv9wL" role="1bW5cS">
                    <node concept="3SKdUt" id="2BGPXkEv9wM" role="3cqZAp">
                      <node concept="3SKdUq" id="2BGPXkEv9wN" role="3SKWNk">
                        <property role="3SKdUp" value="temporary ignore .iml files" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="2BGPXkEv9wO" role="3cqZAp">
                      <node concept="3fqX7Q" id="2BGPXkEv9wP" role="3clFbG">
                        <node concept="2OqwBi" id="2BGPXkEv9wQ" role="3fr31v">
                          <node concept="2OqwBi" id="2BGPXkEv9wR" role="2Oq$k0">
                            <node concept="2OqwBi" id="2BGPXkEv9wS" role="2Oq$k0">
                              <node concept="37vLTw" id="2BGPXkEv9wT" role="2Oq$k0">
                                <ref role="3cqZAo" node="2BGPXkEv9wY" resolve="it" />
                              </node>
                              <node concept="liA8E" id="2BGPXkEv9wU" role="2OqNvi">
                                <ref role="37wK5l" to="32g5:~ModulesMiner$ModuleHandle.getFile():jetbrains.mps.vfs.IFile" resolve="getFile" />
                              </node>
                            </node>
                            <node concept="liA8E" id="2BGPXkEv9wV" role="2OqNvi">
                              <ref role="37wK5l" to="3ju5:~IFile.getName():java.lang.String" resolve="getName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2BGPXkEv9wW" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String):boolean" resolve="endsWith" />
                            <node concept="Xl_RD" id="2BGPXkEv9wX" role="37wK5m">
                              <property role="Xl_RC" value=".iml" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="2BGPXkEv9wY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="2BGPXkEv9wZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="2BGPXkEv9x0" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="43Ra3NM$rlF" role="3clF46">
        <property role="TrG5h" value="rootFolder" />
        <node concept="3uibUv" id="43Ra3NM$rlE" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="_YKpA" id="43Ra3NM$ri8" role="3clF45">
        <node concept="3uibUv" id="43Ra3NM$rkP" role="_ZDj9">
          <ref role="3uigEE" to="32g5:~ModulesMiner$ModuleHandle" resolve="ModulesMiner.ModuleHandle" />
        </node>
      </node>
      <node concept="3Tm6S6" id="43Ra3NM$rhn" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEwbt7" role="jymVt" />
    <node concept="3clFb_" id="2BGPXkEwbEn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="isApplicable" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2BGPXkEwbEo" role="3clF47">
        <node concept="3cpWs6" id="2BGPXkEwbEp" role="3cqZAp">
          <node concept="3y3z36" id="2BGPXkEwbEq" role="3cqZAk">
            <node concept="10Nm6u" id="2BGPXkEwbEr" role="3uHU7w" />
            <node concept="37vLTw" id="2BGPXkEwbSb" role="3uHU7B">
              <ref role="3cqZAo" node="2BGPXkEvd6V" resolve="myModulesRootPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEwbEt" role="1B3o_S" />
      <node concept="10P_77" id="2BGPXkEwbEu" role="3clF45" />
      <node concept="2AHcQZ" id="2BGPXkEwbEv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="2BGPXkEv58A" role="1zkMxy">
      <ref role="3uigEE" to="79ha:5A5jZrz799S" resolve="ProjectStrategyBase" />
    </node>
  </node>
  <node concept="312cEu" id="2BGPXkEwfCS">
    <property role="3GE5qa" value="strategy" />
    <property role="TrG5h" value="AntProjectStrategy" />
    <property role="1EXbeo" value="true" />
    <node concept="Wx3nA" id="2BGPXkEw018" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="PROJECT_STRATEGIES" />
      <property role="3TUv4t" value="true" />
      <node concept="10Q1$e" id="2BGPXkEw14v" role="1tU5fm">
        <node concept="3uibUv" id="2BGPXkEw14f" role="10Q1$1">
          <ref role="3uigEE" to="79ha:5A5jZrz4rws" resolve="ProjectStrategy" />
        </node>
      </node>
      <node concept="2BsdOp" id="2BGPXkEw1aS" role="33vP2m">
        <node concept="2ShNRf" id="2BGPXkEw1bt" role="2BsfMF">
          <node concept="1pGfFk" id="2BGPXkEw1KD" role="2ShVmc">
            <ref role="37wK5l" node="2BGPXkEv60R" resolve="FromProjectPathProjectStrategy" />
          </node>
        </node>
        <node concept="2ShNRf" id="2BGPXkEw1Ma" role="2BsfMF">
          <node concept="1pGfFk" id="2BGPXkEw2nA" role="2ShVmc">
            <ref role="37wK5l" node="2BGPXkEvhcI" resolve="FromModulesListProjectStrategy" />
          </node>
        </node>
        <node concept="2ShNRf" id="2BGPXkEw2pv" role="2BsfMF">
          <node concept="1pGfFk" id="2BGPXkEw2Za" role="2ShVmc">
            <ref role="37wK5l" node="2BGPXkEvcyg" resolve="FromDirWithModulesProjectStrategy" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2BGPXkEw30d" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2BGPXkEw3He" role="jymVt" />
    <node concept="2tJIrI" id="2BGPXkEwfFB" role="jymVt" />
    <node concept="3clFbW" id="2BGPXkEwfDD" role="jymVt">
      <node concept="3cqZAl" id="2BGPXkEwfDE" role="3clF45" />
      <node concept="3clFbS" id="2BGPXkEwfDG" role="3clF47">
        <node concept="XkiVB" id="2BGPXkEwfEd" role="3cqZAp">
          <ref role="37wK5l" to="79ha:2BGPXkEwcqJ" resolve="CompositeProjectStrategy" />
          <node concept="37vLTw" id="2BGPXkEwfHE" role="37wK5m">
            <ref role="3cqZAo" node="2BGPXkEw018" resolve="PROJECT_STRATEGIES" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2BGPXkEwfDy" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2BGPXkEwfCT" role="1B3o_S" />
    <node concept="3uibUv" id="2BGPXkEwfD9" role="1zkMxy">
      <ref role="3uigEE" to="79ha:2BGPXkEwcpT" resolve="CompositeProjectStrategy" />
    </node>
  </node>
  <node concept="312cEu" id="TwRk$DMAa5">
    <property role="TrG5h" value="ModuleSymbolicSuite" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="TwRk$DMAa6" role="1B3o_S" />
    <node concept="Wx3nA" id="11r0PW4UtCY" role="jymVt">
      <property role="TrG5h" value="NO_TESTS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="11r0PW4UtCZ" role="1B3o_S" />
      <node concept="17QB3L" id="11r0PW4UtD0" role="1tU5fm" />
      <node concept="Xl_RD" id="11r0PW4UtD1" role="33vP2m">
        <property role="Xl_RC" value="EMPTY TEST CASE" />
      </node>
    </node>
    <node concept="312cEg" id="TwRk$DMAag" role="jymVt">
      <property role="TrG5h" value="myRunners" />
      <property role="34CwA1" value="false" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="TwRk$DMAah" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="TwRk$DMAai" role="11_B2D">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="3Tm6S6" id="TwRk$DMAaj" role="1B3o_S" />
      <node concept="2ShNRf" id="TwRk$DMGAI" role="33vP2m">
        <node concept="1pGfFk" id="TwRk$DMGAJ" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="TwRk$DMGAK" role="1pMfVU">
            <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="TwRk$DMGBN" role="jymVt">
      <property role="TrG5h" value="myModuleRef" />
      <node concept="17QB3L" id="3SJmozgBGgx" role="1tU5fm" />
      <node concept="3Tm6S6" id="TwRk$DMGBO" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="TwRk$DMDMN" role="jymVt">
      <property role="TrG5h" value="myBuilder" />
      <node concept="3Tm6S6" id="TwRk$DMDMO" role="1B3o_S" />
      <node concept="3uibUv" id="TwRk$DMDMP" role="1tU5fm">
        <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
      </node>
    </node>
    <node concept="312cEg" id="TwRk$DMGCh" role="jymVt">
      <property role="TrG5h" value="initialized" />
      <node concept="3Tm6S6" id="TwRk$DMGCi" role="1B3o_S" />
      <node concept="10P_77" id="TwRk$DMGCk" role="1tU5fm" />
      <node concept="3clFbT" id="TwRk$DMGCm" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExn0I" role="jymVt" />
    <node concept="3clFbW" id="TwRk$DMAak" role="jymVt">
      <node concept="3Tm1VV" id="TwRk$DMDMu" role="1B3o_S" />
      <node concept="3cqZAl" id="TwRk$DMAam" role="3clF45" />
      <node concept="37vLTG" id="TwRk$DMAan" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAao" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="TwRk$DMAap" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="TwRk$DMAaq" role="3clF46">
        <property role="TrG5h" value="builder" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAar" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAas" role="3clF47">
        <node concept="1VxSAg" id="TwRk$DMAat" role="3cqZAp">
          <ref role="37wK5l" node="TwRk$DMAb7" resolve="ModuleSymbolicSuite" />
          <node concept="37vLTw" id="2BHiRxghftD" role="37wK5m">
            <ref role="3cqZAo" node="TwRk$DMAaq" resolve="builder" />
          </node>
          <node concept="37vLTw" id="2BHiRxghfl3" role="37wK5m">
            <ref role="3cqZAo" node="TwRk$DMAan" resolve="klass" />
          </node>
        </node>
        <node concept="3cpWs8" id="3z1mdFUFMLN" role="3cqZAp">
          <node concept="3cpWsn" id="3z1mdFUFMLO" role="3cpWs9">
            <property role="TrG5h" value="tests" />
            <node concept="10Q1$e" id="3z1mdFUFMLP" role="1tU5fm">
              <node concept="17QB3L" id="3SJmozgBGgy" role="10Q1$1" />
            </node>
            <node concept="1rXfSq" id="4hiugqyss4C" role="33vP2m">
              <ref role="37wK5l" node="3z1mdFUFMLe" resolve="getAnnotatedTests" />
              <node concept="37vLTw" id="2BHiRxgkWqZ" role="37wK5m">
                <ref role="3cqZAo" node="TwRk$DMAan" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3z1mdFUFMLT" role="3cqZAp">
          <node concept="3cpWsn" id="3z1mdFUFMLU" role="3cpWs9">
            <property role="TrG5h" value="classes" />
            <node concept="10Q1$e" id="3z1mdFUFMLV" role="1tU5fm">
              <node concept="17QB3L" id="3SJmozgBGgD" role="10Q1$1" />
            </node>
            <node concept="1rXfSq" id="4hiugqyswMi" role="33vP2m">
              <ref role="37wK5l" node="TwRk$DMDQM" resolve="getAnnotatedClassNames" />
              <node concept="37vLTw" id="2BHiRxgm80U" role="37wK5m">
                <ref role="3cqZAo" node="TwRk$DMAan" resolve="klass" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3z1mdFUFMM1" role="3cqZAp">
          <node concept="3clFbS" id="3z1mdFUFMM2" role="2LFqv$">
            <node concept="3clFbF" id="TwRk$DMGAL" role="3cqZAp">
              <node concept="2OqwBi" id="TwRk$DMGAN" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuGzm" role="2Oq$k0">
                  <ref role="3cqZAo" node="TwRk$DMAag" resolve="myRunners" />
                </node>
                <node concept="liA8E" id="TwRk$DMGAR" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
                  <node concept="2ShNRf" id="TwRk$DMGAS" role="37wK5m">
                    <node concept="1pGfFk" id="TwRk$DMGAU" role="2ShVmc">
                      <ref role="37wK5l" node="TwRk$DMDOj" resolve="ModuleSymbolicSuite.DelegatingRunner" />
                      <node concept="AH0OO" id="3z1mdFUFMMC" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagTvFT" role="AHEQo">
                          <ref role="3cqZAo" node="3z1mdFUFMM4" resolve="i" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTvIt" role="AHHXb">
                          <ref role="3cqZAo" node="3z1mdFUFMLU" resolve="classes" />
                        </node>
                      </node>
                      <node concept="3K4zz7" id="11r0PW4Uvr5" role="37wK5m">
                        <node concept="3eOSWO" id="11r0PW4Uvr1" role="3K4Cdx">
                          <node concept="3cmrfG" id="11r0PW4Uvr4" role="3uHU7w">
                            <property role="3cmrfH" value="0" />
                          </node>
                          <node concept="2OqwBi" id="11r0PW4UvqW" role="3uHU7B">
                            <node concept="AH0OO" id="11r0PW4UvqS" role="2Oq$k0">
                              <node concept="37vLTw" id="3GM_nagTBmQ" role="AHEQo">
                                <ref role="3cqZAo" node="3z1mdFUFMM4" resolve="i" />
                              </node>
                              <node concept="37vLTw" id="3GM_nagTy1M" role="AHHXb">
                                <ref role="3cqZAo" node="3z1mdFUFMLO" resolve="tests" />
                              </node>
                            </node>
                            <node concept="liA8E" id="11r0PW4Uvr0" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="11r0PW4Uvr9" role="3K4E3e">
                          <node concept="AH0OO" id="11r0PW4Uvra" role="2Oq$k0">
                            <node concept="37vLTw" id="3GM_nagTzPm" role="AHHXb">
                              <ref role="3cqZAo" node="3z1mdFUFMLO" resolve="tests" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTw8c" role="AHEQo">
                              <ref role="3cqZAo" node="3z1mdFUFMM4" resolve="i" />
                            </node>
                          </node>
                          <node concept="liA8E" id="11r0PW4Uvrd" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                            <node concept="Xl_RD" id="11r0PW4Uvre" role="37wK5m">
                              <property role="Xl_RC" value="," />
                            </node>
                          </node>
                        </node>
                        <node concept="10Nm6u" id="11r0PW4Uvrg" role="3K4GZi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3z1mdFUFMM4" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3z1mdFUFMM5" role="1tU5fm" />
            <node concept="3cmrfG" id="3z1mdFUFMM7" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="1Wc70l" id="3z1mdFUFMMm" role="1Dwp0S">
            <node concept="3eOVzh" id="3z1mdFUFMMq" role="3uHU7w">
              <node concept="2OqwBi" id="3z1mdFUFMMu" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTz_6" role="2Oq$k0">
                  <ref role="3cqZAo" node="3z1mdFUFMLU" resolve="classes" />
                </node>
                <node concept="1Rwk04" id="3z1mdFUFMMy" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="3GM_nagTxet" role="3uHU7B">
                <ref role="3cqZAo" node="3z1mdFUFMM4" resolve="i" />
              </node>
            </node>
            <node concept="3eOVzh" id="3z1mdFUFMM9" role="3uHU7B">
              <node concept="37vLTw" id="3GM_nagTBBY" role="3uHU7B">
                <ref role="3cqZAo" node="3z1mdFUFMM4" resolve="i" />
              </node>
              <node concept="2OqwBi" id="3z1mdFUFMMe" role="3uHU7w">
                <node concept="37vLTw" id="3GM_nagTsbJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3z1mdFUFMLO" resolve="tests" />
                </node>
                <node concept="1Rwk04" id="3z1mdFUFMMi" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3uNrnE" id="3z1mdFUFMMk" role="1Dwrff">
            <node concept="37vLTw" id="3GM_nagT$W9" role="2$L3a6">
              <ref role="3cqZAo" node="3z1mdFUFMM4" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="TwRk$DMGBS" role="3cqZAp">
          <node concept="37vLTI" id="TwRk$DMGBZ" role="3clFbG">
            <node concept="1rXfSq" id="4hiugqyswKm" role="37vLTx">
              <ref role="37wK5l" node="TwRk$DMAce" resolve="getAnnotatedModule" />
              <node concept="37vLTw" id="2BHiRxglURm" role="37wK5m">
                <ref role="3cqZAo" node="TwRk$DMAan" resolve="klass" />
              </node>
            </node>
            <node concept="2OqwBi" id="TwRk$DMGBU" role="37vLTJ">
              <node concept="Xjq3P" id="TwRk$DMGBT" role="2Oq$k0" />
              <node concept="2OwXpG" id="TwRk$DMGBY" role="2OqNvi">
                <ref role="2Oxat5" node="TwRk$DMGBN" resolve="myModuleRef" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TwRk$DMAay" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExnHF" role="jymVt" />
    <node concept="3clFbW" id="TwRk$DMAb7" role="jymVt">
      <node concept="3Tmbuc" id="TwRk$DMAb8" role="1B3o_S" />
      <node concept="3cqZAl" id="TwRk$DMAb9" role="3clF45" />
      <node concept="37vLTG" id="TwRk$DMAba" role="3clF46">
        <property role="TrG5h" value="builder" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="4kXw2YQyFVK" role="1tU5fm">
          <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
        </node>
      </node>
      <node concept="37vLTG" id="TwRk$DMAbc" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAbd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="TwRk$DMAbe" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAbj" role="3clF47">
        <node concept="1VxSAg" id="TwRk$DMAbk" role="3cqZAp">
          <ref role="37wK5l" node="TwRk$DMAbs" resolve="ModuleSymbolicSuite" />
          <node concept="37vLTw" id="2BHiRxgm8Ao" role="37wK5m">
            <ref role="3cqZAo" node="TwRk$DMAbc" resolve="klass" />
          </node>
        </node>
        <node concept="3clFbF" id="TwRk$DMDMQ" role="3cqZAp">
          <node concept="37vLTI" id="TwRk$DMDMR" role="3clFbG">
            <node concept="2OqwBi" id="TwRk$DMDMS" role="37vLTJ">
              <node concept="Xjq3P" id="TwRk$DMDMT" role="2Oq$k0" />
              <node concept="2OwXpG" id="TwRk$DMDMU" role="2OqNvi">
                <ref role="2Oxat5" node="TwRk$DMDMN" resolve="myBuilder" />
              </node>
            </node>
            <node concept="37vLTw" id="2BHiRxgm5Eb" role="37vLTx">
              <ref role="3cqZAo" node="TwRk$DMAba" resolve="builder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TwRk$DMAbr" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExoqO" role="jymVt" />
    <node concept="3clFbW" id="TwRk$DMAbs" role="jymVt">
      <node concept="3Tmbuc" id="TwRk$DMAbt" role="1B3o_S" />
      <node concept="3cqZAl" id="TwRk$DMAbu" role="3clF45" />
      <node concept="37vLTG" id="TwRk$DMAbv" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAbw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="TwRk$DMAbx" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAb_" role="3clF47">
        <node concept="XkiVB" id="TwRk$DMAbA" role="3cqZAp">
          <ref role="37wK5l" node="61uE6zXm4nj" resolve="BaseMpsRunner" />
          <node concept="37vLTw" id="2BHiRxghfiW" role="37wK5m">
            <ref role="3cqZAo" node="TwRk$DMAbv" resolve="klass" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TwRk$DMAbG" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExp7Y" role="jymVt" />
    <node concept="3clFb_" id="TwRk$DMAbH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getChildren" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="TwRk$DMAbI" role="1B3o_S" />
      <node concept="3uibUv" id="TwRk$DMAbJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="TwRk$DMAbK" role="11_B2D">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAbL" role="3clF47">
        <node concept="3cpWs6" id="TwRk$DMAbM" role="3cqZAp">
          <node concept="37vLTw" id="2BHiRxeuwy2" role="3cqZAk">
            <ref role="3cqZAo" node="TwRk$DMAag" resolve="myRunners" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="TwRk$DMAbO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExpP9" role="jymVt" />
    <node concept="3clFb_" id="TwRk$DMAbP" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="describeChild" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="TwRk$DMAbQ" role="1B3o_S" />
      <node concept="3uibUv" id="TwRk$DMAbR" role="3clF45">
        <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
      </node>
      <node concept="37vLTG" id="TwRk$DMAbS" role="3clF46">
        <property role="TrG5h" value="child" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAbT" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAbU" role="3clF47">
        <node concept="3cpWs6" id="TwRk$DMAbV" role="3cqZAp">
          <node concept="2OqwBi" id="TwRk$DMAbW" role="3cqZAk">
            <node concept="37vLTw" id="2BHiRxglEu3" role="2Oq$k0">
              <ref role="3cqZAo" node="TwRk$DMAbS" resolve="child" />
            </node>
            <node concept="liA8E" id="TwRk$DMAbY" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.getDescription():org.junit.runner.Description" resolve="getDescription" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="TwRk$DMAbZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExqyl" role="jymVt" />
    <node concept="3clFb_" id="TwRk$DMAc0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="runChild" />
      <property role="DiZV1" value="false" />
      <node concept="3Tmbuc" id="TwRk$DMAc1" role="1B3o_S" />
      <node concept="3cqZAl" id="TwRk$DMAc2" role="3clF45" />
      <node concept="37vLTG" id="TwRk$DMAc3" role="3clF46">
        <property role="TrG5h" value="child" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAc4" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="37vLTG" id="TwRk$DMAc5" role="3clF46">
        <property role="TrG5h" value="notifier" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAc6" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAc7" role="3clF47">
        <node concept="3clFbJ" id="TwRk$DMGCo" role="3cqZAp">
          <node concept="3clFbS" id="TwRk$DMGCp" role="3clFbx">
            <node concept="3clFbF" id="TwRk$DMGCx" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyyJuh" role="3clFbG">
                <ref role="37wK5l" node="TwRk$DMDME" resolve="initialize" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="TwRk$DMGCs" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeuB0q" role="3fr31v">
              <ref role="3cqZAo" node="TwRk$DMGCh" resolve="initialized" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="TwRk$DMAc8" role="3cqZAp">
          <node concept="2OqwBi" id="TwRk$DMAc9" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgmFyC" role="2Oq$k0">
              <ref role="3cqZAo" node="TwRk$DMAc3" resolve="child" />
            </node>
            <node concept="liA8E" id="TwRk$DMAcb" role="2OqNvi">
              <ref role="37wK5l" to="cvlm:~Runner.run(org.junit.runner.notification.RunNotifier):void" resolve="run" />
              <node concept="37vLTw" id="2BHiRxgm7sd" role="37wK5m">
                <ref role="3cqZAo" node="TwRk$DMAc5" resolve="notifier" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="TwRk$DMAcd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExrfy" role="jymVt" />
    <node concept="3clFb_" id="TwRk$DMDME" role="jymVt">
      <property role="TrG5h" value="initialize" />
      <node concept="3cqZAl" id="TwRk$DMDMF" role="3clF45" />
      <node concept="3Tm6S6" id="TwRk$DMDMI" role="1B3o_S" />
      <node concept="3clFbS" id="TwRk$DMDMH" role="3clF47">
        <node concept="3cpWs8" id="2BGPXkExl8G" role="3cqZAp">
          <node concept="3cpWsn" id="2BGPXkExl8H" role="3cpWs9">
            <property role="TrG5h" value="env" />
            <node concept="3uibUv" id="4YCIFw5bHbr" role="1tU5fm">
              <ref role="3uigEE" to="79ha:HKKzfMjqRV" resolve="Environment" />
            </node>
            <node concept="2YIFZM" id="6LlhC3WLmqJ" role="33vP2m">
              <ref role="1Pybhc" to="cky9:6rx4kZDk5Br" resolve="IdeaEnvironment" />
              <ref role="37wK5l" to="cky9:6LlhC3WJZzD" resolve="getOrCreate" />
              <node concept="2YIFZM" id="6LlhC3WLmqK" role="37wK5m">
                <ref role="37wK5l" node="2BGPXkExlHe" resolve="createConfig" />
                <ref role="1Pybhc" node="TwRk$DMAa5" resolve="ModuleSymbolicSuite" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2BGPXkExmH1" role="3cqZAp">
          <node concept="2OqwBi" id="2BGPXkExmQR" role="3clFbG">
            <node concept="37vLTw" id="2BGPXkExmGZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2BGPXkExl8H" resolve="env" />
            </node>
            <node concept="liA8E" id="2BGPXkExn0q" role="2OqNvi">
              <ref role="37wK5l" to="79ha:6rx4kZDk5oX" resolve="createProject" />
              <node concept="2ShNRf" id="2BGPXkEx$Cv" role="37wK5m">
                <node concept="1pGfFk" id="2BGPXkEx_eQ" role="2ShVmc">
                  <ref role="37wK5l" node="2BGPXkEv60R" resolve="FromProjectPathProjectStrategy" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6jVPebMQGbQ" role="3cqZAp" />
        <node concept="3cpWs8" id="TwRk$DMGC6" role="3cqZAp">
          <node concept="3cpWsn" id="TwRk$DMGC7" role="3cpWs9">
            <property role="TrG5h" value="mod" />
            <node concept="3uibUv" id="6q_XF7LdEZW" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="TwRk$DMGC9" role="33vP2m">
              <node concept="2YIFZM" id="3Zg7qv1qOv1" role="2Oq$k0">
                <ref role="1Pybhc" to="w1kc:~ModuleRepositoryFacade" resolve="ModuleRepositoryFacade" />
                <ref role="37wK5l" to="w1kc:~ModuleRepositoryFacade.getInstance():jetbrains.mps.smodel.ModuleRepositoryFacade" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="TwRk$DMGCb" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModuleRepositoryFacade.getModule(org.jetbrains.mps.openapi.module.SModuleReference):org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                <node concept="2OqwBi" id="625yo8RO1nd" role="37wK5m">
                  <node concept="2YIFZM" id="625yo8RO1ne" role="2Oq$k0">
                    <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                    <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance():org.jetbrains.mps.openapi.persistence.PersistenceFacade" resolve="getInstance" />
                  </node>
                  <node concept="liA8E" id="625yo8RO1nf" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~PersistenceFacade.createModuleReference(java.lang.String):org.jetbrains.mps.openapi.module.SModuleReference" resolve="createModuleReference" />
                    <node concept="37vLTw" id="2BHiRxeuwzj" role="37wK5m">
                      <ref role="3cqZAo" node="TwRk$DMGBN" resolve="myModuleRef" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="TwRk$DMGAY" role="3cqZAp">
          <node concept="3clFbS" id="TwRk$DMGAZ" role="2LFqv$">
            <node concept="3clFbF" id="TwRk$DMGB8" role="3cqZAp">
              <node concept="2OqwBi" id="TwRk$DMGBf" role="3clFbG">
                <node concept="1eOMI4" id="TwRk$DMGB9" role="2Oq$k0">
                  <node concept="10QFUN" id="TwRk$DMGBb" role="1eOMHV">
                    <node concept="37vLTw" id="3GM_nagTB4l" role="10QFUP">
                      <ref role="3cqZAo" node="TwRk$DMGB1" resolve="child" />
                    </node>
                    <node concept="3uibUv" id="TwRk$DMGBd" role="10QFUM">
                      <ref role="3uigEE" node="TwRk$DMDOh" resolve="ModuleSymbolicSuite.DelegatingRunner" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="TwRk$DMGBj" role="2OqNvi">
                  <ref role="37wK5l" node="TwRk$DMDPh" resolve="init" />
                  <node concept="37vLTw" id="3GM_nagTADi" role="37wK5m">
                    <ref role="3cqZAo" node="TwRk$DMGC7" resolve="mod" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuM_u" role="37wK5m">
                    <ref role="3cqZAo" node="TwRk$DMDMN" resolve="myBuilder" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="TwRk$DMGB1" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3uibUv" id="TwRk$DMGB7" role="1tU5fm">
              <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeu_8T" role="1DdaDG">
            <ref role="3cqZAo" node="TwRk$DMAag" resolve="myRunners" />
          </node>
        </node>
        <node concept="3clFbF" id="1E6uM_qV35g" role="3cqZAp">
          <node concept="37vLTI" id="1E6uM_qV35o" role="3clFbG">
            <node concept="3clFbT" id="1E6uM_qV35r" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="1E6uM_qV35i" role="37vLTJ">
              <node concept="Xjq3P" id="1E6uM_qV35h" role="2Oq$k0" />
              <node concept="2OwXpG" id="1E6uM_qV35n" role="2OqNvi">
                <ref role="2Oxat5" node="TwRk$DMGCh" resolve="initialized" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExrWK" role="jymVt" />
    <node concept="2YIFZL" id="TwRk$DMAce" role="jymVt">
      <property role="TrG5h" value="getAnnotatedModule" />
      <property role="DiZV1" value="false" />
      <node concept="17QB3L" id="3SJmozgBGgC" role="3clF45" />
      <node concept="3Tm6S6" id="TwRk$DMAcf" role="1B3o_S" />
      <node concept="37vLTG" id="TwRk$DMAcj" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMAck" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="TwRk$DMAcl" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMAcm" role="3clF47">
        <node concept="3cpWs8" id="TwRk$DMAdZ" role="3cqZAp">
          <node concept="3cpWsn" id="TwRk$DMAe0" role="3cpWs9">
            <property role="TrG5h" value="mrefAnn" />
            <node concept="3uibUv" id="TwRk$DMAe1" role="1tU5fm">
              <ref role="3uigEE" node="TwRk$DMAdI" resolve="ModuleSymbolicSuite.ModuleReference" />
            </node>
            <node concept="2OqwBi" id="TwRk$DMAe2" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxglGVJ" role="2Oq$k0">
                <ref role="3cqZAo" node="TwRk$DMAcj" resolve="klass" />
              </node>
              <node concept="liA8E" id="TwRk$DMAe4" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getAnnotation(java.lang.Class):java.lang.annotation.Annotation" resolve="getAnnotation" />
                <node concept="3VsKOn" id="TwRk$DMAe5" role="37wK5m">
                  <ref role="3VsUkX" node="TwRk$DMAdI" resolve="ModuleSymbolicSuite.ModuleReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="TwRk$DMAe6" role="3cqZAp">
          <node concept="3clFbC" id="TwRk$DMAe7" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTvfU" role="3uHU7B">
              <ref role="3cqZAo" node="TwRk$DMAe0" resolve="mrefAnn" />
            </node>
            <node concept="10Nm6u" id="TwRk$DMAe9" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="TwRk$DMAea" role="3clFbx">
            <node concept="YS8fn" id="TwRk$DMAeb" role="3cqZAp">
              <node concept="2ShNRf" id="TwRk$DMAec" role="YScLw">
                <node concept="1pGfFk" id="TwRk$DMAed" role="2ShVmc">
                  <ref role="37wK5l" to="7cms:~InitializationError.&lt;init&gt;(java.lang.String)" resolve="InitializationError" />
                  <node concept="2YIFZM" id="TwRk$DMAee" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="TwRk$DMAef" role="37wK5m">
                      <property role="Xl_RC" value="class '%s' must have a ModuleReference annotation" />
                    </node>
                    <node concept="2OqwBi" id="TwRk$DMAeg" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxgm70G" role="2Oq$k0">
                        <ref role="3cqZAo" node="TwRk$DMAcj" resolve="klass" />
                      </node>
                      <node concept="liA8E" id="TwRk$DMAei" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="TwRk$DMGBw" role="3cqZAp">
          <node concept="2OqwBi" id="TwRk$DMGBy" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTtoh" role="2Oq$k0">
              <ref role="3cqZAo" node="TwRk$DMAe0" resolve="mrefAnn" />
            </node>
            <node concept="liA8E" id="TwRk$DMGBA" role="2OqNvi">
              <ref role="37wK5l" node="TwRk$DMAdL" resolve="value" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TwRk$DMAdF" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExsDZ" role="jymVt" />
    <node concept="2YIFZL" id="TwRk$DMDQM" role="jymVt">
      <property role="TrG5h" value="getAnnotatedClassNames" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="TwRk$DMDQN" role="1B3o_S" />
      <node concept="10Q1$e" id="TwRk$DMDQO" role="3clF45">
        <node concept="17QB3L" id="3SJmozgBGgw" role="10Q1$1" />
      </node>
      <node concept="37vLTG" id="TwRk$DMDQR" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="TwRk$DMDQS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="TwRk$DMDQT" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="TwRk$DMDQU" role="3clF47">
        <node concept="3cpWs8" id="TwRk$DMDQV" role="3cqZAp">
          <node concept="3cpWsn" id="TwRk$DMDQW" role="3cpWs9">
            <property role="TrG5h" value="symAnn" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="TwRk$DMDQX" role="1tU5fm">
              <ref role="3uigEE" node="TwRk$DMAa9" resolve="ModuleSymbolicSuite.ModuleClassSymbols" />
            </node>
            <node concept="2OqwBi" id="TwRk$DMDQY" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmNI0" role="2Oq$k0">
                <ref role="3cqZAo" node="TwRk$DMDQR" resolve="klass" />
              </node>
              <node concept="liA8E" id="TwRk$DMDR0" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getAnnotation(java.lang.Class):java.lang.annotation.Annotation" resolve="getAnnotation" />
                <node concept="3VsKOn" id="TwRk$DMDR1" role="37wK5m">
                  <ref role="3VsUkX" node="TwRk$DMAa9" resolve="ModuleSymbolicSuite.ModuleClassSymbols" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="TwRk$DMDR2" role="3cqZAp">
          <node concept="3clFbC" id="TwRk$DMDR3" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTuZT" role="3uHU7B">
              <ref role="3cqZAo" node="TwRk$DMDQW" resolve="symAnn" />
            </node>
            <node concept="10Nm6u" id="TwRk$DMDR5" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="TwRk$DMDR6" role="3clFbx">
            <node concept="YS8fn" id="TwRk$DMDR7" role="3cqZAp">
              <node concept="2ShNRf" id="TwRk$DMDR8" role="YScLw">
                <node concept="1pGfFk" id="TwRk$DMDR9" role="2ShVmc">
                  <ref role="37wK5l" to="7cms:~InitializationError.&lt;init&gt;(java.lang.String)" resolve="InitializationError" />
                  <node concept="2YIFZM" id="TwRk$DMDRa" role="37wK5m">
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <node concept="Xl_RD" id="TwRk$DMDRb" role="37wK5m">
                      <property role="Xl_RC" value="class '%s' must have a ModuleClassSymbols annotation" />
                    </node>
                    <node concept="2OqwBi" id="TwRk$DMDRc" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxghiTQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="TwRk$DMDQR" resolve="klass" />
                      </node>
                      <node concept="liA8E" id="TwRk$DMDRe" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="TwRk$DMDTd" role="3cqZAp">
          <node concept="2OqwBi" id="TwRk$DMDTf" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTsbs" role="2Oq$k0">
              <ref role="3cqZAo" node="TwRk$DMDQW" resolve="symAnn" />
            </node>
            <node concept="liA8E" id="TwRk$DMDTj" role="2OqNvi">
              <ref role="37wK5l" node="TwRk$DMAac" resolve="classes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="TwRk$DMDSY" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExtnf" role="jymVt" />
    <node concept="2YIFZL" id="3z1mdFUFMLe" role="jymVt">
      <property role="TrG5h" value="getAnnotatedTests" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm6S6" id="3z1mdFUFMLf" role="1B3o_S" />
      <node concept="10Q1$e" id="3z1mdFUFMLg" role="3clF45">
        <node concept="17QB3L" id="3SJmozgBGgA" role="10Q1$1" />
      </node>
      <node concept="37vLTG" id="3z1mdFUFMLi" role="3clF46">
        <property role="TrG5h" value="klass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="3z1mdFUFMLj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="3z1mdFUFMLk" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="3z1mdFUFMLl" role="3clF47">
        <node concept="3cpWs8" id="3z1mdFUFMLm" role="3cqZAp">
          <node concept="3cpWsn" id="3z1mdFUFMLn" role="3cpWs9">
            <property role="TrG5h" value="symAnn" />
            <property role="3TUv4t" value="false" />
            <node concept="3uibUv" id="3z1mdFUFMLo" role="1tU5fm">
              <ref role="3uigEE" node="TwRk$DMAa9" resolve="ModuleSymbolicSuite.ModuleClassSymbols" />
            </node>
            <node concept="2OqwBi" id="3z1mdFUFMLp" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmIyi" role="2Oq$k0">
                <ref role="3cqZAo" node="3z1mdFUFMLi" resolve="klass" />
              </node>
              <node concept="liA8E" id="3z1mdFUFMLr" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Class.getAnnotation(java.lang.Class):java.lang.annotation.Annotation" resolve="getAnnotation" />
                <node concept="3VsKOn" id="3z1mdFUFMLs" role="37wK5m">
                  <ref role="3VsUkX" node="TwRk$DMAa9" resolve="ModuleSymbolicSuite.ModuleClassSymbols" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3z1mdFUFMLt" role="3cqZAp">
          <node concept="3clFbC" id="3z1mdFUFMLu" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTtdK" role="3uHU7B">
              <ref role="3cqZAo" node="3z1mdFUFMLn" resolve="symAnn" />
            </node>
            <node concept="10Nm6u" id="3z1mdFUFMLw" role="3uHU7w" />
          </node>
          <node concept="3clFbS" id="3z1mdFUFMLx" role="3clFbx">
            <node concept="YS8fn" id="3z1mdFUFMLy" role="3cqZAp">
              <node concept="2ShNRf" id="3z1mdFUFMLz" role="YScLw">
                <node concept="1pGfFk" id="3z1mdFUFML$" role="2ShVmc">
                  <ref role="37wK5l" to="7cms:~InitializationError.&lt;init&gt;(java.lang.String)" resolve="InitializationError" />
                  <node concept="2YIFZM" id="3z1mdFUFML_" role="37wK5m">
                    <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                    <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                    <node concept="Xl_RD" id="3z1mdFUFMLA" role="37wK5m">
                      <property role="Xl_RC" value="class '%s' must have a ModuleClassSymbols annotation" />
                    </node>
                    <node concept="2OqwBi" id="3z1mdFUFMLB" role="37wK5m">
                      <node concept="37vLTw" id="2BHiRxglwxY" role="2Oq$k0">
                        <ref role="3cqZAo" node="3z1mdFUFMLi" resolve="klass" />
                      </node>
                      <node concept="liA8E" id="3z1mdFUFMLD" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Class.getName():java.lang.String" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3z1mdFUFMLE" role="3cqZAp">
          <node concept="2OqwBi" id="3z1mdFUFMLF" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTzET" role="2Oq$k0">
              <ref role="3cqZAo" node="3z1mdFUFMLn" resolve="symAnn" />
            </node>
            <node concept="liA8E" id="3z1mdFUFMLH" role="2OqNvi">
              <ref role="37wK5l" node="3z1mdFUFMmy" resolve="tests" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3z1mdFUFMLI" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExu4w" role="jymVt" />
    <node concept="2YIFZL" id="2BGPXkExlHe" role="jymVt">
      <property role="TrG5h" value="createConfig" />
      <node concept="3Tm6S6" id="2BGPXkExlHf" role="1B3o_S" />
      <node concept="3uibUv" id="2BGPXkExlHg" role="3clF45">
        <ref role="3uigEE" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
      </node>
      <node concept="3clFbS" id="2BGPXkExlGr" role="3clF47">
        <node concept="3cpWs6" id="2BGPXkExlGM" role="3cqZAp">
          <node concept="2YIFZM" id="2BGPXkExlGO" role="3cqZAk">
            <ref role="1Pybhc" to="79ha:6rx4kZDk5A9" resolve="EnvironmentConfig" />
            <ref role="37wK5l" to="79ha:6rx4kZDkZ7z" resolve="defaultConfig" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExuLM" role="jymVt" />
    <node concept="312cEu" id="TwRk$DMDOh" role="jymVt">
      <property role="TrG5h" value="DelegatingRunner" />
      <property role="2bfB8j" value="false" />
      <node concept="3Tm1VV" id="TwRk$DMDOi" role="1B3o_S" />
      <node concept="3uibUv" id="TwRk$DMDOn" role="1zkMxy">
        <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
      </node>
      <node concept="312cEg" id="TwRk$DMDO$" role="jymVt">
        <property role="TrG5h" value="myDelegate" />
        <node concept="3Tm6S6" id="TwRk$DMDO_" role="1B3o_S" />
        <node concept="3uibUv" id="TwRk$DMDOB" role="1tU5fm">
          <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
        </node>
      </node>
      <node concept="312cEg" id="TwRk$DMDOZ" role="jymVt">
        <property role="TrG5h" value="myClassName" />
        <node concept="3Tm6S6" id="TwRk$DMDP0" role="1B3o_S" />
        <node concept="17QB3L" id="TwRk$DMDP1" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="3z1mdFUFMMZ" role="jymVt">
        <property role="TrG5h" value="myTests" />
        <node concept="3Tm6S6" id="3z1mdFUFMN0" role="1B3o_S" />
        <node concept="10Q1$e" id="3z1mdFUFN5r" role="1tU5fm">
          <node concept="17QB3L" id="3z1mdFUFMN1" role="10Q1$1" />
        </node>
      </node>
      <node concept="2tJIrI" id="2BGPXkEx$bq" role="jymVt" />
      <node concept="3clFbW" id="TwRk$DMDOj" role="jymVt">
        <node concept="3cqZAl" id="TwRk$DMDOk" role="3clF45" />
        <node concept="3Tm1VV" id="TwRk$DMDOl" role="1B3o_S" />
        <node concept="3clFbS" id="TwRk$DMDOm" role="3clF47">
          <node concept="3clFbF" id="TwRk$DMDP2" role="3cqZAp">
            <node concept="37vLTI" id="TwRk$DMDP3" role="3clFbG">
              <node concept="2OqwBi" id="TwRk$DMDP4" role="37vLTJ">
                <node concept="Xjq3P" id="TwRk$DMDP5" role="2Oq$k0" />
                <node concept="2OwXpG" id="TwRk$DMDP6" role="2OqNvi">
                  <ref role="2Oxat5" node="TwRk$DMDOZ" resolve="myClassName" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxghf6F" role="37vLTx">
                <ref role="3cqZAo" node="TwRk$DMDOX" resolve="klassName" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3z1mdFUFMN2" role="3cqZAp">
            <node concept="37vLTI" id="3z1mdFUFMN3" role="3clFbG">
              <node concept="2OqwBi" id="3z1mdFUFMN4" role="37vLTJ">
                <node concept="Xjq3P" id="3z1mdFUFMN5" role="2Oq$k0" />
                <node concept="2OwXpG" id="3z1mdFUFMN6" role="2OqNvi">
                  <ref role="2Oxat5" node="3z1mdFUFMMZ" resolve="myTests" />
                </node>
              </node>
              <node concept="37vLTw" id="2BHiRxgm7aT" role="37vLTx">
                <ref role="3cqZAo" node="3z1mdFUFMMW" resolve="tests" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="TwRk$DMDOX" role="3clF46">
          <property role="TrG5h" value="klassName" />
          <node concept="17QB3L" id="TwRk$DMDOY" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3z1mdFUFMMW" role="3clF46">
          <property role="TrG5h" value="tests" />
          <node concept="10Q1$e" id="3z1mdFUFN5p" role="1tU5fm">
            <node concept="17QB3L" id="3z1mdFUFMMY" role="10Q1$1" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2BGPXkExzKi" role="jymVt" />
      <node concept="3clFb_" id="TwRk$DMDOo" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="run" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="TwRk$DMDOp" role="1B3o_S" />
        <node concept="3cqZAl" id="TwRk$DMDOq" role="3clF45" />
        <node concept="37vLTG" id="TwRk$DMDOr" role="3clF46">
          <property role="TrG5h" value="notifier" />
          <node concept="3uibUv" id="TwRk$DMDOs" role="1tU5fm">
            <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
          </node>
        </node>
        <node concept="3clFbS" id="TwRk$DMDOt" role="3clF47">
          <node concept="3clFbJ" id="TwRk$DMDP9" role="3cqZAp">
            <node concept="9aQIb" id="TwRk$DMDQv" role="9aQIa">
              <node concept="3clFbS" id="TwRk$DMDQw" role="9aQI4">
                <node concept="3clFbF" id="TwRk$DMDQx" role="3cqZAp">
                  <node concept="2OqwBi" id="TwRk$DMDQz" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeukmS" role="2Oq$k0">
                      <ref role="3cqZAo" node="TwRk$DMDO$" resolve="myDelegate" />
                    </node>
                    <node concept="liA8E" id="TwRk$DMDQB" role="2OqNvi">
                      <ref role="37wK5l" to="cvlm:~Runner.run(org.junit.runner.notification.RunNotifier):void" resolve="run" />
                      <node concept="37vLTw" id="2BHiRxgmLqz" role="37wK5m">
                        <ref role="3cqZAo" node="TwRk$DMDOr" resolve="notifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="11r0PW4UskN" role="3eNLev">
              <node concept="3clFbC" id="TwRk$DMDPd" role="3eO9$A">
                <node concept="10Nm6u" id="TwRk$DMDPg" role="3uHU7w" />
                <node concept="37vLTw" id="2BHiRxeukjJ" role="3uHU7B">
                  <ref role="3cqZAo" node="TwRk$DMDO$" resolve="myDelegate" />
                </node>
              </node>
              <node concept="3clFbS" id="TwRk$DMDPb" role="3eOfB_">
                <node concept="1DcWWT" id="11r0PW4UDz2" role="3cqZAp">
                  <node concept="3clFbS" id="11r0PW4UDz3" role="2LFqv$">
                    <node concept="3clFbF" id="11r0PW4Uv$z" role="3cqZAp">
                      <node concept="1rXfSq" id="4hiugqyzi9E" role="3clFbG">
                        <ref role="37wK5l" node="11r0PW4UvzT" resolve="runFailure" />
                        <node concept="1rXfSq" id="4hiugqyzePg" role="37wK5m">
                          <ref role="37wK5l" node="11r0PW4Uvzh" resolve="createTestDescription" />
                          <node concept="37vLTw" id="3GM_nagTs5r" role="37wK5m">
                            <ref role="3cqZAo" node="11r0PW4UDza" resolve="test" />
                          </node>
                        </node>
                        <node concept="2ShNRf" id="11r0PW4Uv$B" role="37wK5m">
                          <node concept="1pGfFk" id="11r0PW4Uv$C" role="2ShVmc">
                            <ref role="37wK5l" to="wyt6:~ClassNotFoundException.&lt;init&gt;(java.lang.String)" resolve="ClassNotFoundException" />
                            <node concept="37vLTw" id="2BHiRxeurHP" role="37wK5m">
                              <ref role="3cqZAo" node="TwRk$DMDOZ" resolve="myClassName" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="2BHiRxghiF6" role="37wK5m">
                          <ref role="3cqZAo" node="TwRk$DMDOr" resolve="notifier" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="11r0PW4UDza" role="1Duv9x">
                    <property role="TrG5h" value="test" />
                    <node concept="17QB3L" id="11r0PW4UDzb" role="1tU5fm" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeuMBt" role="1DdaDG">
                    <ref role="3cqZAo" node="3z1mdFUFMMZ" resolve="myTests" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="11r0PW4UtCt" role="3clFbw">
              <node concept="10Nm6u" id="11r0PW4Uvrh" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeuL4Y" role="3uHU7B">
                <ref role="3cqZAo" node="3z1mdFUFMMZ" resolve="myTests" />
              </node>
            </node>
            <node concept="3clFbS" id="11r0PW4UskP" role="3clFbx">
              <node concept="3clFbF" id="11r0PW4Uv$L" role="3cqZAp">
                <node concept="1rXfSq" id="4hiugqyz3wu" role="3clFbG">
                  <ref role="37wK5l" node="11r0PW4UvzT" resolve="runFailure" />
                  <node concept="1rXfSq" id="4hiugqyAR1K" role="37wK5m">
                    <ref role="37wK5l" node="11r0PW4Uvzh" resolve="createTestDescription" />
                    <node concept="10M0yZ" id="11r0PW4Uv_3" role="37wK5m">
                      <ref role="1PxDUh" node="TwRk$DMAa5" resolve="ModuleSymbolicSuite" />
                      <ref role="3cqZAo" node="11r0PW4UtCY" resolve="NO_TESTS" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="11r0PW4Uv$V" role="37wK5m">
                    <node concept="1pGfFk" id="11r0PW4Uv$W" role="2ShVmc">
                      <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                      <node concept="3cpWs3" id="11r0PW4Uv$X" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxeuM_k" role="3uHU7w">
                          <ref role="3cqZAo" node="TwRk$DMDOZ" resolve="myClassName" />
                        </node>
                        <node concept="Xl_RD" id="11r0PW4Uv$Z" role="3uHU7B">
                          <property role="Xl_RC" value="no tests found in " />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2BHiRxgm7Bt" role="37wK5m">
                    <ref role="3cqZAo" node="TwRk$DMDOr" resolve="notifier" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SfZl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2BGPXkExzlb" role="jymVt" />
      <node concept="3clFb_" id="TwRk$DMDOu" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getDescription" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="TwRk$DMDOv" role="1B3o_S" />
        <node concept="3uibUv" id="TwRk$DMDOw" role="3clF45">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
        <node concept="3clFbS" id="TwRk$DMDOx" role="3clF47">
          <node concept="3cpWs8" id="3z1mdFUFMNc" role="3cqZAp">
            <node concept="3cpWsn" id="3z1mdFUFMNd" role="3cpWs9">
              <property role="TrG5h" value="desc" />
              <node concept="3uibUv" id="3z1mdFUFMNe" role="1tU5fm">
                <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
              </node>
              <node concept="2YIFZM" id="3z1mdFUFMNf" role="33vP2m">
                <ref role="1Pybhc" to="cvlm:~Description" resolve="Description" />
                <ref role="37wK5l" to="cvlm:~Description.createSuiteDescription(java.lang.String,java.lang.annotation.Annotation...):org.junit.runner.Description" resolve="createSuiteDescription" />
                <node concept="37vLTw" id="2BHiRxeuXwY" role="37wK5m">
                  <ref role="3cqZAo" node="TwRk$DMDOZ" resolve="myClassName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="11r0PW4UtCy" role="3cqZAp">
            <node concept="3clFbS" id="11r0PW4UtCz" role="3clFbx">
              <node concept="3clFbF" id="11r0PW4UtCO" role="3cqZAp">
                <node concept="2OqwBi" id="11r0PW4UtCP" role="3clFbG">
                  <node concept="37vLTw" id="3GM_nagTA_X" role="2Oq$k0">
                    <ref role="3cqZAo" node="3z1mdFUFMNd" resolve="desc" />
                  </node>
                  <node concept="liA8E" id="11r0PW4UtCR" role="2OqNvi">
                    <ref role="37wK5l" to="cvlm:~Description.addChild(org.junit.runner.Description):void" resolve="addChild" />
                    <node concept="1rXfSq" id="4hiugqyyU81" role="37wK5m">
                      <ref role="37wK5l" node="11r0PW4Uvzh" resolve="createTestDescription" />
                      <node concept="10M0yZ" id="11r0PW4UvzM" role="37wK5m">
                        <ref role="1PxDUh" node="TwRk$DMAa5" resolve="ModuleSymbolicSuite" />
                        <ref role="3cqZAo" node="11r0PW4UtCY" resolve="NO_TESTS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="11r0PW4UtCG" role="3clFbw">
              <node concept="10Nm6u" id="11r0PW4Uvri" role="3uHU7w" />
              <node concept="37vLTw" id="2BHiRxeucTB" role="3uHU7B">
                <ref role="3cqZAo" node="3z1mdFUFMMZ" resolve="myTests" />
              </node>
            </node>
            <node concept="9aQIb" id="11r0PW4UtCK" role="9aQIa">
              <node concept="3clFbS" id="11r0PW4UtCL" role="9aQI4">
                <node concept="1DcWWT" id="3z1mdFUFN5h" role="3cqZAp">
                  <node concept="3clFbS" id="3z1mdFUFN5i" role="2LFqv$">
                    <node concept="3clFbF" id="3z1mdFUFN5t" role="3cqZAp">
                      <node concept="2OqwBi" id="3z1mdFUFN5v" role="3clFbG">
                        <node concept="37vLTw" id="3GM_nagTtf$" role="2Oq$k0">
                          <ref role="3cqZAo" node="3z1mdFUFMNd" resolve="desc" />
                        </node>
                        <node concept="liA8E" id="3z1mdFUFN5z" role="2OqNvi">
                          <ref role="37wK5l" to="cvlm:~Description.addChild(org.junit.runner.Description):void" resolve="addChild" />
                          <node concept="1rXfSq" id="4hiugqyzbRR" role="37wK5m">
                            <ref role="37wK5l" node="11r0PW4Uvzh" resolve="createTestDescription" />
                            <node concept="37vLTw" id="3GM_nagT_F$" role="37wK5m">
                              <ref role="3cqZAo" node="3z1mdFUFN5k" resolve="test" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="3z1mdFUFN5k" role="1Duv9x">
                    <property role="TrG5h" value="test" />
                    <node concept="17QB3L" id="3z1mdFUFN5m" role="1tU5fm" />
                  </node>
                  <node concept="37vLTw" id="2BHiRxeujn5" role="1DdaDG">
                    <ref role="3cqZAo" node="3z1mdFUFMMZ" resolve="myTests" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3z1mdFUFN5L" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTsoe" role="3clFbG">
              <ref role="3cqZAo" node="3z1mdFUFMNd" resolve="desc" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_SfZm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2BGPXkExyU5" role="jymVt" />
      <node concept="3clFb_" id="TwRk$DMDPh" role="jymVt">
        <property role="TrG5h" value="init" />
        <node concept="37vLTG" id="TwRk$DMDPo" role="3clF46">
          <property role="TrG5h" value="mod" />
          <node concept="3uibUv" id="6q_XF7Le9yV" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
        <node concept="37vLTG" id="TwRk$DMDPY" role="3clF46">
          <property role="TrG5h" value="builder" />
          <node concept="3uibUv" id="TwRk$DMDQ0" role="1tU5fm">
            <ref role="3uigEE" to="7cms:~RunnerBuilder" resolve="RunnerBuilder" />
          </node>
        </node>
        <node concept="3cqZAl" id="TwRk$DMDPi" role="3clF45" />
        <node concept="3Tm6S6" id="TwRk$DMDPl" role="1B3o_S" />
        <node concept="3clFbS" id="TwRk$DMDPk" role="3clF47">
          <node concept="3clFbJ" id="5uM03Adt6oV" role="3cqZAp">
            <node concept="3clFbS" id="5uM03Adt6oX" role="3clFbx">
              <node concept="SfApY" id="5uM03Adt7PG" role="3cqZAp">
                <node concept="3clFbS" id="5uM03Adt7PH" role="SfCbr">
                  <node concept="3cpWs8" id="TwRk$DMDPz" role="3cqZAp">
                    <node concept="3cpWsn" id="TwRk$DMDP$" role="3cpWs9">
                      <property role="TrG5h" value="klass" />
                      <node concept="3uibUv" id="TwRk$DMDP_" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                      </node>
                      <node concept="2OqwBi" id="5uM03Adt6Oq" role="33vP2m">
                        <node concept="liA8E" id="5uM03Adt79M" role="2OqNvi">
                          <ref role="37wK5l" to="j8aq:~ReloadableModule.getClass(java.lang.String):java.lang.Class" resolve="getClass" />
                          <node concept="37vLTw" id="5uM03Adt7Jz" role="37wK5m">
                            <ref role="3cqZAo" node="TwRk$DMDOZ" resolve="myClassName" />
                          </node>
                        </node>
                        <node concept="1eOMI4" id="5uM03Adt73X" role="2Oq$k0">
                          <node concept="10QFUN" id="5uM03Adt6JH" role="1eOMHV">
                            <node concept="3uibUv" id="5uM03Adt6Lo" role="10QFUM">
                              <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                            </node>
                            <node concept="37vLTw" id="5uM03Adt6H8" role="10QFUP">
                              <ref role="3cqZAo" node="TwRk$DMDPo" resolve="mod" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="TwRk$DMDPF" role="3cqZAp">
                    <node concept="3clFbS" id="TwRk$DMDPG" role="3clFbx">
                      <node concept="3clFbF" id="TwRk$DMDPO" role="3cqZAp">
                        <node concept="37vLTI" id="TwRk$DMDPV" role="3clFbG">
                          <node concept="2OqwBi" id="TwRk$DMDQ2" role="37vLTx">
                            <node concept="37vLTw" id="2BHiRxgm96q" role="2Oq$k0">
                              <ref role="3cqZAo" node="TwRk$DMDPY" resolve="builder" />
                            </node>
                            <node concept="liA8E" id="TwRk$DMDQ6" role="2OqNvi">
                              <ref role="37wK5l" to="7cms:~RunnerBuilder.safeRunnerForClass(java.lang.Class):org.junit.runner.Runner" resolve="safeRunnerForClass" />
                              <node concept="37vLTw" id="3GM_nagTB_J" role="37wK5m">
                                <ref role="3cqZAo" node="TwRk$DMDP$" resolve="klass" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="TwRk$DMDPQ" role="37vLTJ">
                            <node concept="Xjq3P" id="TwRk$DMDPP" role="2Oq$k0" />
                            <node concept="2OwXpG" id="TwRk$DMDPU" role="2OqNvi">
                              <ref role="2Oxat5" node="TwRk$DMDO$" resolve="myDelegate" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="TwRk$DMDPK" role="3clFbw">
                      <node concept="10Nm6u" id="TwRk$DMDPN" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagTu86" role="3uHU7B">
                        <ref role="3cqZAo" node="TwRk$DMDP$" resolve="klass" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="TDmWw" id="5uM03Adt7Pw" role="TEbGg">
                  <node concept="3clFbS" id="5uM03Adt7Px" role="TDEfX" />
                  <node concept="3cpWsn" id="5uM03Adt7Py" role="TDEfY">
                    <property role="TrG5h" value="ignored" />
                    <node concept="3uibUv" id="5uM03Adt7Pz" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~ClassNotFoundException" resolve="ClassNotFoundException" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="5uM03Adt6tA" role="3clFbw">
              <node concept="3uibUv" id="5uM03Adt6uq" role="2ZW6by">
                <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
              </node>
              <node concept="37vLTw" id="5uM03Adt6s3" role="2ZW6bz">
                <ref role="3cqZAo" node="TwRk$DMDPo" resolve="mod" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2BGPXkExyv0" role="jymVt" />
      <node concept="3clFb_" id="11r0PW4UvzT" role="jymVt">
        <property role="TrG5h" value="runFailure" />
        <node concept="37vLTG" id="11r0PW4Uv$1" role="3clF46">
          <property role="TrG5h" value="failDesc" />
          <node concept="3uibUv" id="11r0PW4Uv$3" role="1tU5fm">
            <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
          </node>
        </node>
        <node concept="37vLTG" id="11r0PW4Uv$t" role="3clF46">
          <property role="TrG5h" value="cause" />
          <node concept="3uibUv" id="11r0PW4Uv$v" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
          </node>
        </node>
        <node concept="37vLTG" id="11r0PW4UvzY" role="3clF46">
          <property role="TrG5h" value="notifier" />
          <node concept="3uibUv" id="11r0PW4Uv$0" role="1tU5fm">
            <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
          </node>
        </node>
        <node concept="3cqZAl" id="11r0PW4UvzU" role="3clF45" />
        <node concept="3Tm6S6" id="11r0PW4UvzX" role="1B3o_S" />
        <node concept="3clFbS" id="11r0PW4UvzW" role="3clF47">
          <node concept="3clFbF" id="11r0PW4Uv$4" role="3cqZAp">
            <node concept="2OqwBi" id="11r0PW4Uv$5" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglf8i" role="2Oq$k0">
                <ref role="3cqZAo" node="11r0PW4UvzY" resolve="notifier" />
              </node>
              <node concept="liA8E" id="11r0PW4Uv$7" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~RunNotifier.fireTestStarted(org.junit.runner.Description):void" resolve="fireTestStarted" />
                <node concept="37vLTw" id="2BHiRxgll1M" role="37wK5m">
                  <ref role="3cqZAo" node="11r0PW4Uv$1" resolve="failDesc" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="11r0PW4Uv$9" role="3cqZAp">
            <node concept="2OqwBi" id="11r0PW4Uv$a" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxghiYl" role="2Oq$k0">
                <ref role="3cqZAo" node="11r0PW4UvzY" resolve="notifier" />
              </node>
              <node concept="liA8E" id="11r0PW4Uv$c" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~RunNotifier.fireTestFailure(org.junit.runner.notification.Failure):void" resolve="fireTestFailure" />
                <node concept="2ShNRf" id="11r0PW4Uv$d" role="37wK5m">
                  <node concept="1pGfFk" id="11r0PW4Uv$e" role="2ShVmc">
                    <ref role="37wK5l" to="k76n:~Failure.&lt;init&gt;(org.junit.runner.Description,java.lang.Throwable)" resolve="Failure" />
                    <node concept="37vLTw" id="2BHiRxgm8iS" role="37wK5m">
                      <ref role="3cqZAo" node="11r0PW4Uv$1" resolve="failDesc" />
                    </node>
                    <node concept="37vLTw" id="2BHiRxglJRi" role="37wK5m">
                      <ref role="3cqZAo" node="11r0PW4Uv$t" resolve="cause" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="11r0PW4Uv$l" role="3cqZAp">
            <node concept="2OqwBi" id="11r0PW4Uv$m" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgm7Xs" role="2Oq$k0">
                <ref role="3cqZAo" node="11r0PW4UvzY" resolve="notifier" />
              </node>
              <node concept="liA8E" id="11r0PW4Uv$o" role="2OqNvi">
                <ref role="37wK5l" to="k76n:~RunNotifier.fireTestFinished(org.junit.runner.Description):void" resolve="fireTestFinished" />
                <node concept="37vLTw" id="2BHiRxgmyXf" role="37wK5m">
                  <ref role="3cqZAo" node="11r0PW4Uv$1" resolve="failDesc" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2BGPXkExxCT" role="jymVt" />
      <node concept="3clFb_" id="11r0PW4Uvzh" role="jymVt">
        <property role="TrG5h" value="createTestDescription" />
        <node concept="37vLTG" id="11r0PW4Uvzp" role="3clF46">
          <property role="TrG5h" value="text" />
          <node concept="17QB3L" id="3SJmozgBGgB" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="11r0PW4Uvzo" role="3clF45">
          <ref role="3uigEE" to="cvlm:~Description" resolve="Description" />
        </node>
        <node concept="3Tm6S6" id="11r0PW4Uvzl" role="1B3o_S" />
        <node concept="3clFbS" id="11r0PW4Uvzk" role="3clF47">
          <node concept="3SKdUt" id="11r0PW4Uvzs" role="3cqZAp">
            <node concept="3SKdUq" id="11r0PW4Uvzt" role="3SKWNk">
              <property role="3SKdUp" value="this is the only way to construct Description from string" />
            </node>
          </node>
          <node concept="3clFbF" id="11r0PW4UvzC" role="3cqZAp">
            <node concept="2YIFZM" id="11r0PW4UvzD" role="3clFbG">
              <ref role="1Pybhc" to="cvlm:~Description" resolve="Description" />
              <ref role="37wK5l" to="cvlm:~Description.createSuiteDescription(java.lang.String,java.lang.annotation.Annotation...):org.junit.runner.Description" resolve="createSuiteDescription" />
              <node concept="2YIFZM" id="11r0PW4UvzE" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...):java.lang.String" resolve="format" />
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <node concept="Xl_RD" id="11r0PW4UvzF" role="37wK5m">
                  <property role="Xl_RC" value="%s(%s)" />
                </node>
                <node concept="37vLTw" id="2BHiRxgmCKM" role="37wK5m">
                  <ref role="3cqZAo" node="11r0PW4Uvzp" resolve="text" />
                </node>
                <node concept="37vLTw" id="2BHiRxeuVYS" role="37wK5m">
                  <ref role="3cqZAo" node="TwRk$DMDOZ" resolve="myClassName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExwV$" role="jymVt" />
    <node concept="2ABs$o" id="TwRk$DMAa9" role="jymVt">
      <property role="TrG5h" value="ModuleClassSymbols" />
      <property role="2bfB8j" value="false" />
      <node concept="2ACnGN" id="TwRk$DMAac" role="3MN40a">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="classes" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="TwRk$DMAad" role="1B3o_S" />
        <node concept="10Q1$e" id="TwRk$DMAae" role="3clF45">
          <node concept="17QB3L" id="3SJmozgBGgz" role="10Q1$1" />
        </node>
        <node concept="3clFbS" id="7kUVw$OgxIC" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="TwRk$DMAaa" role="1B3o_S" />
      <node concept="3uibUv" id="TwRk$DMAab" role="3HQHJm">
        <ref role="3uigEE" to="ouhv:~Annotation" resolve="Annotation" />
      </node>
      <node concept="2ACnGN" id="3z1mdFUFMmy" role="3MN40a">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="tests" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="3z1mdFUFMmz" role="1B3o_S" />
        <node concept="10Q1$e" id="3z1mdFUFMm$" role="3clF45">
          <node concept="17QB3L" id="3SJmozgBGg$" role="10Q1$1" />
        </node>
        <node concept="3clFbS" id="7kUVw$OgxID" role="3clF47" />
      </node>
      <node concept="2AHcQZ" id="TwRk$DMDLs" role="2AJF6D">
        <ref role="2AI5Lk" to="ouhv:~Retention" resolve="Retention" />
        <node concept="1SXeKx" id="TwRk$DMDLt" role="2B76xF">
          <ref role="2B6OnR" to="ouhv:~Retention.value()" resolve="value" />
          <node concept="Rm8GO" id="TwRk$DMDLv" role="2B70Vg">
            <ref role="Rm8GQ" to="ouhv:~RetentionPolicy.RUNTIME" resolve="RUNTIME" />
            <ref role="1Px2BO" to="ouhv:~RetentionPolicy" resolve="RetentionPolicy" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="TwRk$DMDLw" role="2AJF6D">
        <ref role="2AI5Lk" to="ouhv:~Target" resolve="Target" />
        <node concept="2B6LJw" id="TwRk$DMDLU" role="2B76xF">
          <ref role="2B6OnR" to="ouhv:~Target.value()" resolve="value" />
          <node concept="2BsdOp" id="TwRk$DMDM8" role="2B70Vg">
            <node concept="Rm8GO" id="TwRk$DMDM9" role="2BsfMF">
              <ref role="Rm8GQ" to="ouhv:~ElementType.TYPE" resolve="TYPE" />
              <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2BGPXkExweg" role="jymVt" />
    <node concept="2ABs$o" id="TwRk$DMAdI" role="jymVt">
      <property role="TrG5h" value="ModuleReference" />
      <property role="2bfB8j" value="false" />
      <node concept="2ACnGN" id="TwRk$DMAdL" role="3MN40a">
        <property role="1EzhhJ" value="true" />
        <property role="TrG5h" value="value" />
        <property role="DiZV1" value="false" />
        <node concept="17QB3L" id="3SJmozgBGg_" role="3clF45" />
        <node concept="3Tm1VV" id="TwRk$DMAdM" role="1B3o_S" />
        <node concept="3clFbS" id="7kUVw$OgxIE" role="3clF47" />
      </node>
      <node concept="3Tm1VV" id="TwRk$DMAdJ" role="1B3o_S" />
      <node concept="3uibUv" id="TwRk$DMAdK" role="3HQHJm">
        <ref role="3uigEE" to="ouhv:~Annotation" resolve="Annotation" />
      </node>
      <node concept="2AHcQZ" id="TwRk$DMDMf" role="2AJF6D">
        <ref role="2AI5Lk" to="ouhv:~Retention" resolve="Retention" />
        <node concept="1SXeKx" id="TwRk$DMDMg" role="2B76xF">
          <ref role="2B6OnR" to="ouhv:~Retention.value()" resolve="value" />
          <node concept="Rm8GO" id="TwRk$DMDMh" role="2B70Vg">
            <ref role="Rm8GQ" to="ouhv:~RetentionPolicy.RUNTIME" resolve="RUNTIME" />
            <ref role="1Px2BO" to="ouhv:~RetentionPolicy" resolve="RetentionPolicy" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="TwRk$DMDMi" role="2AJF6D">
        <ref role="2AI5Lk" to="ouhv:~Target" resolve="Target" />
        <node concept="2B6LJw" id="TwRk$DMDMj" role="2B76xF">
          <ref role="2B6OnR" to="ouhv:~Target.value()" resolve="value" />
          <node concept="2BsdOp" id="TwRk$DMDMk" role="2B70Vg">
            <node concept="Rm8GO" id="TwRk$DMDMl" role="2BsfMF">
              <ref role="1Px2BO" to="ouhv:~ElementType" resolve="ElementType" />
              <ref role="Rm8GQ" to="ouhv:~ElementType.TYPE" resolve="TYPE" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="61uE6zXma61" role="1zkMxy">
      <ref role="3uigEE" node="61uE6zXlWPC" resolve="BaseMpsRunner" />
    </node>
  </node>
  <node concept="312cEu" id="61uE6zXlWPC">
    <property role="TrG5h" value="BaseMpsRunner" />
    <property role="2bfB8j" value="false" />
    <property role="1sVAO0" value="true" />
    <node concept="3clFbW" id="61uE6zXm4nj" role="jymVt">
      <node concept="3Tm1VV" id="61uE6zXm4nk" role="1B3o_S" />
      <node concept="3cqZAl" id="61uE6zXm4nl" role="3clF45" />
      <node concept="37vLTG" id="61uE6zXm4nm" role="3clF46">
        <property role="TrG5h" value="aClass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="61uE6zXm4nn" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="3qTvmN" id="61uE6zXm4no" role="11_B2D" />
        </node>
      </node>
      <node concept="3clFbS" id="61uE6zXm4nr" role="3clF47">
        <node concept="XkiVB" id="61uE6zXm4ns" role="3cqZAp">
          <ref role="37wK5l" to="bbnd:~ParentRunner.&lt;init&gt;(java.lang.Class)" resolve="ParentRunner" />
          <node concept="37vLTw" id="61uE6zXm4nt" role="37wK5m">
            <ref role="3cqZAo" node="61uE6zXm4nm" resolve="aClass" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="61uE6zXmwPi" role="Sfmx6">
        <ref role="3uigEE" to="7cms:~InitializationError" resolve="InitializationError" />
      </node>
    </node>
    <node concept="2tJIrI" id="61uE6zXm4zh" role="jymVt" />
    <node concept="3Tm1VV" id="61uE6zXlWPJ" role="1B3o_S" />
    <node concept="3uibUv" id="61uE6zXm1YA" role="1zkMxy">
      <ref role="3uigEE" to="bbnd:~ParentRunner" resolve="ParentRunner" />
      <node concept="3uibUv" id="61uE6zXm2zV" role="11_B2D">
        <ref role="3uigEE" to="cvlm:~Runner" resolve="Runner" />
      </node>
    </node>
    <node concept="3clFb_" id="61uE6zXlWQl" role="jymVt">
      <property role="IEkAT" value="false" />
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="run" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="61uE6zXlWQm" role="1B3o_S" />
      <node concept="3cqZAl" id="61uE6zXlWQn" role="3clF45" />
      <node concept="37vLTG" id="61uE6zXlWQo" role="3clF46">
        <property role="TrG5h" value="notifier" />
        <node concept="3uibUv" id="61uE6zXlWQp" role="1tU5fm">
          <ref role="3uigEE" to="k76n:~RunNotifier" resolve="RunNotifier" />
        </node>
      </node>
      <node concept="3clFbS" id="61uE6zXlWQq" role="3clF47">
        <node concept="3clFbF" id="61uE6zXm4Rx" role="3cqZAp">
          <node concept="2YIFZM" id="61uE6zXm5Vb" role="3clFbG">
            <ref role="37wK5l" to="fyhk:~RuntimeFlags.setTestMode(jetbrains.mps.TestMode):void" resolve="setTestMode" />
            <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
            <node concept="Rm8GO" id="61uE6zXm64Y" role="37wK5m">
              <ref role="Rm8GQ" to="fyhk:~TestMode.SUITE" resolve="SUITE" />
              <ref role="1Px2BO" to="fyhk:~TestMode" resolve="TestMode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61uE6zXm4EH" role="3cqZAp">
          <node concept="3nyPlj" id="61uE6zXm4EG" role="3clFbG">
            <ref role="37wK5l" to="bbnd:~ParentRunner.run(org.junit.runner.notification.RunNotifier):void" resolve="run" />
            <node concept="37vLTw" id="61uE6zXm4N7" role="37wK5m">
              <ref role="3cqZAo" node="61uE6zXlWQo" resolve="notifier" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="61uE6zXm65w" role="3cqZAp">
          <node concept="2YIFZM" id="61uE6zXm65x" role="3clFbG">
            <ref role="37wK5l" to="fyhk:~RuntimeFlags.setTestMode(jetbrains.mps.TestMode):void" resolve="setTestMode" />
            <ref role="1Pybhc" to="fyhk:~RuntimeFlags" resolve="RuntimeFlags" />
            <node concept="Rm8GO" id="61uE6zXm68M" role="37wK5m">
              <ref role="Rm8GQ" to="fyhk:~TestMode.NONE" resolve="NONE" />
              <ref role="1Px2BO" to="fyhk:~TestMode" resolve="TestMode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="61uE6zXlWQ_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

