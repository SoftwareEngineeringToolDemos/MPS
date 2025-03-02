<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ba41e9c6-15ca-4a47-95f2-6a81c2318547(jetbrains.mps.checkers)">
  <persistence version="9" />
  <languages>
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="iwwu" ref="r:2c4d9270-b6d6-44af-aecd-e01a223680db(jetbrains.mps.kernel.model)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tp1t" ref="r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="2gg1" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors(MPS.Core/)" />
    <import index="zavc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.errors.messageTargets(MPS.Core/)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="k6ay" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.search(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="bzg8" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime.impl(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="5ijk" ref="r:f77c2bf1-6f5c-4cb2-b314-a84dd502542e(jetbrains.mps.resolve)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="u78q" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.typesystem.inference(MPS.Core/)" />
    <import index="unno" ref="r:61e3d524-8c49-4491-b5e3-f6d6e9364527(jetbrains.mps.util)" />
    <import index="wyuk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.components(MPS.Core/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="h9bu" ref="r:7e7e32d8-af70-42df-8993-b4832d5a25fe(jetbrains.mps.project.validation)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
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
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
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
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1960721196051541146" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingRoleOperation" flags="nn" index="13GOg" />
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="5820409030208923287" name="jetbrains.mps.lang.smodel.structure.Node_GetContainingLinkOperation" flags="nn" index="25OxAV" />
      <concept id="5692182839349412519" name="jetbrains.mps.lang.smodel.structure.Reference_GetRoleOperation" flags="nn" index="90r25" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="1173122760281" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorsOperation" flags="nn" index="z$bX8" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1180028149140" name="jetbrains.mps.lang.smodel.structure.Concept_IsSuperConceptOfOperation" flags="nn" index="2Za9M6">
        <child id="1180028346304" name="conceptArgument" index="2ZaTVi" />
      </concept>
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1205861725686" name="jetbrains.mps.lang.smodel.structure.Node_IsAttributeOperation" flags="nn" index="32XrjI" />
      <concept id="1547759872598425067" name="jetbrains.mps.lang.smodel.structure.Reference_GetLinkDeclarationOperation" flags="nn" index="1eFSac" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="6407023681583040688" name="jetbrains.mps.lang.smodel.structure.AllAttributeQualifier" flags="ng" index="3CFTEB" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1172323065820" name="jetbrains.mps.lang.smodel.structure.Node_GetConceptOperation" flags="nn" index="3NT_Vc" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.ConceptNodeType" flags="in" index="3THzug" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176903168877" name="jetbrains.mps.baseLanguage.collections.structure.UnionOperation" flags="nn" index="4Tj9Z" />
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1226934395923" name="jetbrains.mps.baseLanguage.collections.structure.ClearSetOperation" flags="nn" index="2EZike" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1235573135402" name="jetbrains.mps.baseLanguage.collections.structure.SingletonSequenceCreator" flags="nn" index="2HTt$P">
        <child id="1235573175711" name="elementType" index="2HTBi0" />
        <child id="1235573187520" name="singletonValue" index="2HTEbv" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1227022179634" name="jetbrains.mps.baseLanguage.collections.structure.AddLastElementOperation" flags="nn" index="2Ke9KJ" />
      <concept id="1227026082377" name="jetbrains.mps.baseLanguage.collections.structure.RemoveFirstElementOperation" flags="nn" index="2Kt2Hk" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1237909114519" name="jetbrains.mps.baseLanguage.collections.structure.GetValuesOperation" flags="nn" index="T8wYR" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
      <concept id="5686963296372573083" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerType" flags="in" index="3O5elB">
        <child id="5686963296372573084" name="elementType" index="3O5elw" />
      </concept>
      <concept id="5686963296372475025" name="jetbrains.mps.baseLanguage.collections.structure.QueueType" flags="in" index="3O6Q9H" />
    </language>
  </registry>
  <node concept="3HP615" id="7z7Xs6Zeka">
    <property role="TrG5h" value="INodeChecker" />
    <node concept="3Tm1VV" id="7z7Xs6Zekb" role="1B3o_S" />
    <node concept="3clFb_" id="7z7Xs6Zeki" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getErrors" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="7z7Xs6Zekj" role="1B3o_S" />
      <node concept="3uibUv" id="7z7Xs6Zekk" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="7z7Xs6Zekl" role="11_B2D">
          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
        </node>
      </node>
      <node concept="37vLTG" id="7z7Xs6Zekm" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="7z7Xs6Zekn" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="50Q$OHe3IrA" role="3clF46">
        <property role="TrG5h" value="repoitory" />
        <node concept="3uibUv" id="50Q$OHe3IrB" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="7z7Xs6Zekq" role="3clF47" />
    </node>
  </node>
  <node concept="312cEu" id="6qi2OtU3u$c">
    <property role="TrG5h" value="AbstractConstraintsChecker" />
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="6qi2OtU3u$n" role="1B3o_S" />
    <node concept="3clFbW" id="6qi2OtU3u$o" role="jymVt">
      <node concept="3cqZAl" id="6qi2OtU3u$p" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u$q" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u$r" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6qi2OtU3u$d" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="checkNode" />
      <node concept="3cqZAl" id="6qi2OtU3u$e" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u$f" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u$g" role="3clF47" />
      <node concept="37vLTG" id="6qi2OtU3u$h" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6qi2OtU3u$i" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3u$j" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="6qi2OtU3u$k" role="1tU5fm">
          <ref role="3uigEE" node="6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3VcCO4cNdN1" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VcCO4cNdN2" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6qi2OtU3upZ">
    <property role="TrG5h" value="ConstraintsChecker" />
    <node concept="3Tm1VV" id="6qi2OtU3uwR" role="1B3o_S" />
    <node concept="3uibUv" id="6qi2OtU3uwW" role="1zkMxy">
      <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
    </node>
    <node concept="3clFbW" id="6qi2OtU3uwS" role="jymVt">
      <node concept="3cqZAl" id="6qi2OtU3uwT" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3uwU" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uwV" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="5O9MfN8iLVH" role="jymVt" />
    <node concept="3clFb_" id="7HmjS2NOgBk" role="jymVt">
      <property role="TrG5h" value="getBreakingNodeAndClearContext" />
      <node concept="P$JXv" id="5O9MfN8iMdT" role="lGtFl">
        <node concept="TZ5HA" id="5O9MfN8iMdU" role="TZ5H$">
          <node concept="1dT_AC" id="5O9MfN8iMdV" role="1dT_Ay">
            <property role="1dT_AB" value="XXX does anyone understand what's going on here? 'breaking node' suggests it's the place" />
          </node>
        </node>
        <node concept="TZ5HA" id="5O9MfN8iMDX" role="TZ5H$">
          <node concept="1dT_AC" id="5O9MfN8iMDY" role="1dT_Ay">
            <property role="1dT_AB" value="in user model (the one we check), while use of this pointer, as 'ruleNode' in LanguageErrorsComponent.addError" />
          </node>
        </node>
        <node concept="TZ5HA" id="5O9MfN8iME9" role="TZ5H$">
          <node concept="1dT_AC" id="5O9MfN8iMEa" role="1dT_Ay">
            <property role="1dT_AB" value="makes me think it shall point to 'meta' object, rule/intention/constraint which caused the error." />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5O9MfN8ixhK" role="1B3o_S" />
      <node concept="3uibUv" id="5O9MfN8iyYS" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3clFbS" id="7HmjS2NOgBn" role="3clF47">
        <node concept="3cpWs8" id="72lwi3FGr_K" role="3cqZAp">
          <node concept="3cpWsn" id="72lwi3FGr_L" role="3cpWs9">
            <property role="TrG5h" value="breakingNodePointer" />
            <node concept="3uibUv" id="72lwi3FGr_P" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="7HmjS2NO_S4" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgm7dL" role="2Oq$k0">
                <ref role="3cqZAo" node="7HmjS2NOukZ" resolve="checkingNodeContext" />
              </node>
              <node concept="liA8E" id="7HmjS2NO_S8" role="2OqNvi">
                <ref role="37wK5l" to="ze1i:~CheckingNodeContext.getBreakingNode():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getBreakingNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5O9MfN8ixDt" role="3cqZAp">
          <node concept="2OqwBi" id="5O9MfN8ixPL" role="3clFbG">
            <node concept="37vLTw" id="5O9MfN8ixDr" role="2Oq$k0">
              <ref role="3cqZAo" node="7HmjS2NOukZ" resolve="checkingNodeContext" />
            </node>
            <node concept="liA8E" id="5O9MfN8iy7G" role="2OqNvi">
              <ref role="37wK5l" to="ze1i:~CheckingNodeContext.setBreakingNode(org.jetbrains.mps.openapi.model.SNodeReference):void" resolve="setBreakingNode" />
              <node concept="10Nm6u" id="5O9MfN8iy8k" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5O9MfN8iyiX" role="3cqZAp">
          <node concept="37vLTw" id="5O9MfN8iyCT" role="3cqZAk">
            <ref role="3cqZAo" node="72lwi3FGr_L" resolve="breakingNodePointer" />
          </node>
        </node>
        <node concept="3clFbH" id="5O9MfN8iLLO" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="7HmjS2NOukZ" role="3clF46">
        <property role="TrG5h" value="checkingNodeContext" />
        <node concept="3uibUv" id="7HmjS2NOul0" role="1tU5fm">
          <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uq0" role="jymVt">
      <property role="TrG5h" value="checkNode" />
      <node concept="3cqZAl" id="6qi2OtU3uq1" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3uq2" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uq3" role="3clF47">
        <node concept="3cpWs8" id="2RmIorjm6ve" role="3cqZAp">
          <node concept="3cpWsn" id="2RmIorjm6vf" role="3cpWs9">
            <property role="TrG5h" value="newDescriptor" />
            <node concept="3uibUv" id="2RmIorjm6vg" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~ConstraintsDescriptor" resolve="ConstraintsDescriptor" />
            </node>
            <node concept="2OqwBi" id="2RmIorjm6vk" role="33vP2m">
              <node concept="2YIFZM" id="5IugoYMNrer" role="2Oq$k0">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getInstance():jetbrains.mps.smodel.language.ConceptRegistry" resolve="getInstance" />
                <ref role="1Pybhc" to="vndm:~ConceptRegistry" resolve="ConceptRegistry" />
              </node>
              <node concept="liA8E" id="2RmIorjm6vo" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~ConceptRegistry.getConstraintsDescriptor(org.jetbrains.mps.openapi.language.SAbstractConcept):jetbrains.mps.smodel.runtime.ConstraintsDescriptor" resolve="getConstraintsDescriptor" />
                <node concept="2OqwBi" id="5sNl3sI_9_6" role="37wK5m">
                  <node concept="2JrnkZ" id="5sNl3sI_9_7" role="2Oq$k0">
                    <node concept="37vLTw" id="2BHiRxgm85R" role="2JrQYb">
                      <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5sNl3sI_9_9" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2RmIorjm6vx" role="3cqZAp" />
        <node concept="3cpWs8" id="7HmjS2NO_SO" role="3cqZAp">
          <node concept="3cpWsn" id="7HmjS2NO_SP" role="3cpWs9">
            <property role="TrG5h" value="checkingNodeContext" />
            <node concept="3uibUv" id="7HmjS2NO_SQ" role="1tU5fm">
              <ref role="3uigEE" to="ze1i:~CheckingNodeContext" resolve="CheckingNodeContext" />
            </node>
            <node concept="2ShNRf" id="7HmjS2NOXZR" role="33vP2m">
              <node concept="1pGfFk" id="7HmjS2NOXZT" role="2ShVmc">
                <ref role="37wK5l" to="bzg8:~CheckingNodeContext.&lt;init&gt;()" resolve="CheckingNodeContext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6qi2OtU3uqj" role="3cqZAp" />
        <node concept="3clFbJ" id="6qi2OtU3uqk" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3uql" role="3clFbx">
            <node concept="3clFbF" id="6qi2OtU3uqm" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3uqn" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgll6W" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                </node>
                <node concept="liA8E" id="6qi2OtU3uqp" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="2OqwBi" id="6qi2OtU3uqq" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgmaM4" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                    </node>
                    <node concept="1mfA1w" id="6qi2OtU3uqs" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6qi2OtU3uqt" role="3clFbw">
            <node concept="10Nm6u" id="6qi2OtU3uqu" role="3uHU7w" />
            <node concept="2OqwBi" id="6qi2OtU3uqv" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm82U" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
              </node>
              <node concept="1mfA1w" id="6qi2OtU3uqx" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6qi2OtU3uqy" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3uqz" role="3clFbx">
            <node concept="3cpWs8" id="6qi2OtU3uq$" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3uq_" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3Tqbb2" id="6qi2OtU3uqA" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
                <node concept="2OqwBi" id="6qi2OtU3uqB" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxglldi" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                  </node>
                  <node concept="25OxAV" id="6qi2OtU3uqD" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3uqE" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3uqF" role="3clFbx">
                <node concept="3clFbF" id="4PIVP4GTGpe" role="3cqZAp">
                  <node concept="2OqwBi" id="4PIVP4GTGpf" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgm6Pj" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="4PIVP4GTGph" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                      <node concept="37vLTw" id="2BHiRxgmJii" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                      </node>
                      <node concept="3cpWs3" id="4PIVP4GTGpv" role="37wK5m">
                        <node concept="2OqwBi" id="1$sIUMYazzH" role="3uHU7w">
                          <node concept="2OqwBi" id="1$sIUMYazzC" role="2Oq$k0">
                            <node concept="2OqwBi" id="1$sIUMYazzD" role="2Oq$k0">
                              <node concept="37vLTw" id="2BHiRxglCYv" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                              </node>
                              <node concept="1mfA1w" id="1$sIUMYazzF" role="2OqNvi" />
                            </node>
                            <node concept="2yIwOk" id="4k9eBecuOxh" role="2OqNvi" />
                          </node>
                          <node concept="liA8E" id="4k9eBecuOQB" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SAbstractConcept.getQualifiedName():java.lang.String" resolve="getQualifiedName" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="4PIVP4GTGoc" role="3uHU7B">
                          <node concept="3cpWs3" id="4PIVP4GTGoH" role="3uHU7B">
                            <node concept="2OqwBi" id="4PIVP4GTGp5" role="3uHU7w">
                              <node concept="37vLTw" id="2BHiRxglavT" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                              </node>
                              <node concept="13GOg" id="4PIVP4GTGpb" role="2OqNvi" />
                            </node>
                            <node concept="Xl_RD" id="4PIVP4GTGpj" role="3uHU7B">
                              <property role="Xl_RC" value="Incorrect child role used: LinkDeclaration with role \&quot;" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="4PIVP4GTGof" role="3uHU7w">
                            <property role="Xl_RC" value="\&quot; was not found in parent node's concept: " />
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="4PIVP4GTGpk" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6qi2OtU3uqN" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6qi2OtU3uqO" role="3clFbw">
                <node concept="10Nm6u" id="6qi2OtU3uqP" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTyX4" role="3uHU7B">
                  <ref role="3cqZAo" node="6qi2OtU3uq_" resolve="link" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3uqS" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3uqT" role="3cpWs9">
                <property role="TrG5h" value="canBeChild" />
                <node concept="10P_77" id="6qi2OtU3uqU" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3uqV" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgm85p" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                  </node>
                  <node concept="liA8E" id="6qi2OtU3uqX" role="2OqNvi">
                    <ref role="37wK5l" node="6qi2OtU3uc0" resolve="runCheckingAction" />
                    <node concept="1bVj0M" id="6qi2OtU3uqY" role="37wK5m">
                      <node concept="3clFbS" id="6qi2OtU3uqZ" role="1bW5cS">
                        <node concept="3clFbF" id="7jSyeQ9iIVV" role="3cqZAp">
                          <node concept="2YIFZM" id="7jSyeQ9iJ4o" role="3clFbG">
                            <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                            <ref role="37wK5l" to="ykok:~ModelConstraints.canBeChild(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeChild" />
                            <node concept="2OqwBi" id="5sNl3sI_9_G" role="37wK5m">
                              <node concept="2JrnkZ" id="5sNl3sI_9_H" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxgmGpE" role="2JrQYb">
                                  <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5sNl3sI_9_J" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7jSyeQ9iJSR" role="37wK5m">
                              <node concept="37vLTw" id="7jSyeQ9iJND" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                              </node>
                              <node concept="1mfA1w" id="7jSyeQ9iK9b" role="2OqNvi" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iK$d" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3uq_" resolve="link" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iL3n" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iLw7" role="37wK5m">
                              <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3urd" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3ure" role="3clFbx">
                <node concept="3cpWs8" id="6qi2OtU3urf" role="3cqZAp">
                  <node concept="3cpWsn" id="6qi2OtU3urg" role="3cpWs9">
                    <property role="TrG5h" value="rule" />
                    <node concept="3uibUv" id="5O9MfN8iz9m" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="1rXfSq" id="4hiugqyyYvG" role="33vP2m">
                      <ref role="37wK5l" node="7HmjS2NOgBk" resolve="getBreakingNodeAndClearContext" />
                      <node concept="37vLTw" id="3GM_nagTwG6" role="37wK5m">
                        <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6qi2OtU3url" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3urm" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglMJ5" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3uro" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                      <node concept="37vLTw" id="2BHiRxglkWa" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                      </node>
                      <node concept="3cpWs3" id="6qi2OtU3urq" role="37wK5m">
                        <node concept="2OqwBi" id="6qi2OtU3urr" role="3uHU7w">
                          <node concept="37vLTw" id="2BHiRxgm8wr" role="2Oq$k0">
                            <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                          </node>
                          <node concept="1mfA1w" id="6qi2OtU3urt" role="2OqNvi" />
                        </node>
                        <node concept="3cpWs3" id="6qi2OtU3uru" role="3uHU7B">
                          <node concept="3cpWs3" id="6qi2OtU3urv" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxgmOew" role="3uHU7w">
                              <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                            </node>
                            <node concept="Xl_RD" id="6qi2OtU3urx" role="3uHU7B">
                              <property role="Xl_RC" value="Node " />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6qi2OtU3ury" role="3uHU7w">
                            <property role="Xl_RC" value=" cannot be child of node " />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagT$uK" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3urg" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6qi2OtU3ur$" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTxgi" role="3fr31v">
                  <ref role="3cqZAo" node="6qi2OtU3uqT" resolve="canBeChild" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6qi2OtU3urA" role="3clFbw">
            <node concept="3y3z36" id="6qi2OtU3urH" role="3uHU7B">
              <node concept="2OqwBi" id="6qi2OtU3urI" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxglB5G" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                </node>
                <node concept="1mfA1w" id="6qi2OtU3urK" role="2OqNvi" />
              </node>
              <node concept="10Nm6u" id="6qi2OtU3urL" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="3UghWjDZQQr" role="3uHU7w">
              <node concept="2OqwBi" id="3UghWjDZPPZ" role="2Oq$k0">
                <node concept="2JrnkZ" id="5w9tMTnq8XW" role="2Oq$k0">
                  <node concept="2OqwBi" id="5w9tMTnq8XX" role="2JrQYb">
                    <node concept="37vLTw" id="5w9tMTnq8XY" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                    </node>
                    <node concept="1mfA1w" id="5w9tMTnq8XZ" role="2OqNvi" />
                  </node>
                </node>
                <node concept="liA8E" id="3UghWjDZQN0" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                </node>
              </node>
              <node concept="liA8E" id="3UghWjDZR3U" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isValid():boolean" resolve="isValid" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6qi2OtU3urM" role="3cqZAp" />
        <node concept="3clFbJ" id="6qi2OtU3urN" role="3cqZAp">
          <node concept="2YIFZM" id="2k9fL4dT0$b" role="3clFbw">
            <ref role="37wK5l" to="unno:2k9fL4dNTIq" resolve="isRoot" />
            <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
            <node concept="2JrnkZ" id="2k9fL4dT0$c" role="37wK5m">
              <node concept="37vLTw" id="2BHiRxgm$Cy" role="2JrQYb">
                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6qi2OtU3urO" role="3clFbx">
            <node concept="3cpWs8" id="6qi2OtU3urP" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3urQ" role="3cpWs9">
                <property role="TrG5h" value="canBeRoot" />
                <node concept="10P_77" id="6qi2OtU3urR" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3urS" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmaeg" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                  </node>
                  <node concept="liA8E" id="6qi2OtU3urU" role="2OqNvi">
                    <ref role="37wK5l" node="6qi2OtU3uc0" resolve="runCheckingAction" />
                    <node concept="1bVj0M" id="6qi2OtU3urV" role="37wK5m">
                      <node concept="3clFbS" id="6qi2OtU3urW" role="1bW5cS">
                        <node concept="3clFbF" id="6qi2OtU3urX" role="3cqZAp">
                          <node concept="2YIFZM" id="7jSyeQ9iMiE" role="3clFbG">
                            <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                            <ref role="37wK5l" to="ykok:~ModelConstraints.canBeRoot(org.jetbrains.mps.openapi.language.SAbstractConcept,org.jetbrains.mps.openapi.model.SModel):boolean" resolve="canBeRoot" />
                            <node concept="2OqwBi" id="7jSyeQ9iMiJ" role="37wK5m">
                              <node concept="2JrnkZ" id="7jSyeQ9iMiK" role="2Oq$k0">
                                <node concept="37vLTw" id="7jSyeQ9iMiL" role="2JrQYb">
                                  <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7jSyeQ9iMiM" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7jSyeQ9iMiN" role="37wK5m">
                              <node concept="37vLTw" id="7jSyeQ9iMiO" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                              </node>
                              <node concept="I4A8Y" id="7jSyeQ9iMiP" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3us9" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3usa" role="3clFbx">
                <node concept="3cpWs8" id="6qi2OtU3usb" role="3cqZAp">
                  <node concept="3cpWsn" id="6qi2OtU3usc" role="3cpWs9">
                    <property role="TrG5h" value="rule" />
                    <node concept="3uibUv" id="5O9MfN8izeh" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="1rXfSq" id="4hiugqyzc9R" role="33vP2m">
                      <ref role="37wK5l" node="7HmjS2NOgBk" resolve="getBreakingNodeAndClearContext" />
                      <node concept="37vLTw" id="3GM_nagTrNN" role="37wK5m">
                        <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6qi2OtU3ush" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3usi" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmCnd" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3usk" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                      <node concept="37vLTw" id="2BHiRxghiVn" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="6qi2OtU3usm" role="37wK5m">
                        <property role="Xl_RC" value="Not rootable concept added as root" />
                      </node>
                      <node concept="37vLTw" id="3GM_nagT_h3" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3usc" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6qi2OtU3uso" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTAVa" role="3fr31v">
                  <ref role="3cqZAo" node="6qi2OtU3urQ" resolve="canBeRoot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4jSklMIU$QN" role="3cqZAp">
          <node concept="3clFbS" id="4jSklMIU$QO" role="3clFbx">
            <node concept="3clFbF" id="4jSklMIU$S8" role="3cqZAp">
              <node concept="2OqwBi" id="4jSklMIU$S9" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm7WT" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                </node>
                <node concept="liA8E" id="4jSklMIU$Sb" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                  <node concept="37vLTw" id="2BHiRxglrft" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                  </node>
                  <node concept="Xl_RD" id="4jSklMIU$Sd" role="37wK5m">
                    <property role="Xl_RC" value="Concept of a node was not found" />
                  </node>
                  <node concept="10Nm6u" id="4jSklMIU$Sh" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="4k9eBecuNPo" role="3clFbw">
            <node concept="2OqwBi" id="4k9eBecuNPq" role="3fr31v">
              <node concept="2OqwBi" id="4k9eBecuNPr" role="2Oq$k0">
                <node concept="37vLTw" id="4k9eBecuNPs" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                </node>
                <node concept="2yIwOk" id="4k9eBecuNPt" role="2OqNvi" />
              </node>
              <node concept="liA8E" id="4k9eBecuNPu" role="2OqNvi">
                <ref role="37wK5l" to="c17a:~SAbstractConcept.isValid():boolean" resolve="isValid" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6qi2OtU3usu" role="3cqZAp" />
        <node concept="1DcWWT" id="6qi2OtU3usv" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3usw" role="2LFqv$">
            <node concept="3clFbF" id="6qi2OtU3usx" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3usy" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxghiDr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                </node>
                <node concept="liA8E" id="6qi2OtU3us$" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="37vLTw" id="3GM_nagTtUY" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3usA" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3usB" role="3cpWs9">
                <property role="TrG5h" value="childConcept" />
                <node concept="3THzug" id="6qi2OtU3usC" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3usD" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTuhj" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                  </node>
                  <node concept="3NT_Vc" id="6qi2OtU3usF" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3usG" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3usH" role="3cpWs9">
                <property role="TrG5h" value="childLink" />
                <node concept="3Tqbb2" id="6qi2OtU3usI" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
                <node concept="2OqwBi" id="6qi2OtU3usJ" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTusZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                  </node>
                  <node concept="25OxAV" id="6qi2OtU3usL" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3usM" role="3cqZAp">
              <node concept="22lmx$" id="CWgWtOa89N" role="3clFbw">
                <node concept="3clFbC" id="CWgWtOabO_" role="3uHU7B">
                  <node concept="10Nm6u" id="CWgWtOabOO" role="3uHU7w" />
                  <node concept="37vLTw" id="CWgWtOaaai" role="3uHU7B">
                    <ref role="3cqZAo" node="6qi2OtU3usB" resolve="childConcept" />
                  </node>
                </node>
                <node concept="3clFbC" id="6qi2OtU3usP" role="3uHU7w">
                  <node concept="10Nm6u" id="6qi2OtU3usQ" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTudd" role="3uHU7B">
                    <ref role="3cqZAo" node="6qi2OtU3usH" resolve="childLink" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6qi2OtU3usN" role="3clFbx">
                <node concept="3N13vt" id="6qi2OtU3usO" role="3cqZAp" />
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3usS" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3usT" role="3cpWs9">
                <property role="TrG5h" value="canBeParent" />
                <node concept="10P_77" id="6qi2OtU3usU" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3usV" role="33vP2m">
                  <node concept="37vLTw" id="2BHiRxgmDzW" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                  </node>
                  <node concept="liA8E" id="6qi2OtU3usX" role="2OqNvi">
                    <ref role="37wK5l" node="6qi2OtU3uc0" resolve="runCheckingAction" />
                    <node concept="1bVj0M" id="6qi2OtU3usY" role="37wK5m">
                      <node concept="3clFbS" id="6qi2OtU3usZ" role="1bW5cS">
                        <node concept="3clFbF" id="6qi2OtU3ut0" role="3cqZAp">
                          <node concept="2YIFZM" id="7jSyeQ9iNns" role="3clFbG">
                            <ref role="37wK5l" to="ykok:~ModelConstraints.canBeParent(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeParent" />
                            <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                            <node concept="37vLTw" id="7jSyeQ9iNnu" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iNnv" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3usB" resolve="childConcept" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iNnw" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3usH" resolve="childLink" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iNny" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iNnz" role="37wK5m">
                              <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3ut8" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3ut9" role="3clFbx">
                <node concept="3cpWs8" id="6qi2OtU3uta" role="3cqZAp">
                  <node concept="3cpWsn" id="6qi2OtU3utb" role="3cpWs9">
                    <property role="TrG5h" value="rule" />
                    <node concept="3uibUv" id="5O9MfN8izgm" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                    <node concept="1rXfSq" id="4hiugqyyKp9" role="33vP2m">
                      <ref role="37wK5l" node="7HmjS2NOgBk" resolve="getBreakingNodeAndClearContext" />
                      <node concept="37vLTw" id="3GM_nagTsPO" role="37wK5m">
                        <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6qi2OtU3utg" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3uth" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglp6e" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3utj" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                      <node concept="37vLTw" id="2BHiRxgm5Re" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                      </node>
                      <node concept="3cpWs3" id="6qi2OtU3utl" role="37wK5m">
                        <node concept="37vLTw" id="3GM_nagT$3m" role="3uHU7w">
                          <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                        </node>
                        <node concept="3cpWs3" id="6qi2OtU3utn" role="3uHU7B">
                          <node concept="3cpWs3" id="6qi2OtU3uto" role="3uHU7B">
                            <node concept="37vLTw" id="2BHiRxglyFP" role="3uHU7w">
                              <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                            </node>
                            <node concept="Xl_RD" id="6qi2OtU3utq" role="3uHU7B">
                              <property role="Xl_RC" value="Node " />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6qi2OtU3utr" role="3uHU7w">
                            <property role="Xl_RC" value=" cannot be parent of node " />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTypP" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3utb" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6qi2OtU3utt" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTvD8" role="3fr31v">
                  <ref role="3cqZAo" node="6qi2OtU3usT" resolve="canBeParent" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6qi2OtU3utv" role="3cqZAp" />
            <node concept="3cpWs8" id="7jSyeQ9iO9Y" role="3cqZAp">
              <node concept="3cpWsn" id="7jSyeQ9iO9Z" role="3cpWs9">
                <property role="TrG5h" value="canBeAncestor" />
                <node concept="10P_77" id="7jSyeQ9iO9M" role="1tU5fm" />
                <node concept="2OqwBi" id="7jSyeQ9iPu$" role="33vP2m">
                  <node concept="37vLTw" id="7jSyeQ9iPth" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                  </node>
                  <node concept="liA8E" id="7jSyeQ9iP_f" role="2OqNvi">
                    <ref role="37wK5l" node="6qi2OtU3uc0" resolve="runCheckingAction" />
                    <node concept="1bVj0M" id="7jSyeQ9iPEk" role="37wK5m">
                      <node concept="3clFbS" id="7jSyeQ9iPEl" role="1bW5cS">
                        <node concept="3clFbF" id="7jSyeQ9iPJx" role="3cqZAp">
                          <node concept="2YIFZM" id="7jSyeQ9iOa0" role="3clFbG">
                            <ref role="37wK5l" to="ykok:~ModelConstraints.canBeAncestor(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.smodel.runtime.CheckingNodeContext):boolean" resolve="canBeAncestor" />
                            <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                            <node concept="37vLTw" id="7jSyeQ9iOa1" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iOa2" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iOa3" role="37wK5m">
                              <ref role="3cqZAo" node="6qi2OtU3usB" resolve="childConcept" />
                            </node>
                            <node concept="37vLTw" id="7jSyeQ9iOa4" role="37wK5m">
                              <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3uty" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3utz" role="3clFbx">
                <node concept="3cpWs8" id="6qi2OtU3ut$" role="3cqZAp">
                  <node concept="3cpWsn" id="6qi2OtU3ut_" role="3cpWs9">
                    <property role="TrG5h" value="rule" />
                    <node concept="1rXfSq" id="4hiugqyz9m$" role="33vP2m">
                      <ref role="37wK5l" node="7HmjS2NOgBk" resolve="getBreakingNodeAndClearContext" />
                      <node concept="37vLTw" id="3GM_nagTy88" role="37wK5m">
                        <ref role="3cqZAo" node="7HmjS2NO_SP" resolve="checkingNodeContext" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="5O9MfN8izrT" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6qi2OtU3utF" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3utG" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgm8AN" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3utI" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                      <node concept="37vLTw" id="3GM_nagTrXl" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                      </node>
                      <node concept="3cpWs3" id="6qi2OtU3utK" role="37wK5m">
                        <node concept="Xl_RD" id="6qi2OtU3utU" role="3uHU7B">
                          <property role="Xl_RC" value="Bad ancestor for node " />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTBv8" role="3uHU7w">
                          <ref role="3cqZAo" node="6qi2OtU3uu6" resolve="child" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagT_4Y" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3ut_" resolve="rule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6qi2OtU3utX" role="3clFbw">
                <node concept="37vLTw" id="7jSyeQ9iOa5" role="3fr31v">
                  <ref role="3cqZAo" node="7jSyeQ9iO9Z" resolve="canBeAncestor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6qi2OtU3uu3" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxglMK1" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
            </node>
            <node concept="32TBzR" id="6qi2OtU3uu5" role="2OqNvi" />
          </node>
          <node concept="3cpWsn" id="6qi2OtU3uu6" role="1Duv9x">
            <property role="TrG5h" value="child" />
            <node concept="3Tqbb2" id="6qi2OtU3uu7" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbH" id="6qi2OtU3uu8" role="3cqZAp" />
        <node concept="3SKdUt" id="6qi2OtU3uu9" role="3cqZAp">
          <node concept="3SKdUq" id="6qi2OtU3uua" role="3SKWNk">
            <property role="3SKdUp" value="Properties validation" />
          </node>
        </node>
        <node concept="3cpWs8" id="6qi2OtU3uub" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3uuc" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3THzug" id="6qi2OtU3uud" role="1tU5fm" />
            <node concept="2OqwBi" id="6qi2OtU3uue" role="33vP2m">
              <node concept="37vLTw" id="2BHiRxgmH44" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
              </node>
              <node concept="3NT_Vc" id="6qi2OtU3uug" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3uuh" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3uui" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxglmj9" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
            </node>
            <node concept="liA8E" id="6qi2OtU3uuk" role="2OqNvi">
              <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
              <node concept="37vLTw" id="3GM_nagTsgo" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3uuc" resolve="concept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6qi2OtU3uum" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3uun" role="3cpWs9">
            <property role="TrG5h" value="chs" />
            <node concept="3uibUv" id="6qi2OtU3uuo" role="1tU5fm">
              <ref role="3uigEE" to="k6ay:~ConceptAndSuperConceptsScope" resolve="ConceptAndSuperConceptsScope" />
            </node>
            <node concept="2ShNRf" id="6qi2OtU3uup" role="33vP2m">
              <node concept="1pGfFk" id="6qi2OtU3uuq" role="2ShVmc">
                <ref role="37wK5l" to="k6ay:~ConceptAndSuperConceptsScope.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="ConceptAndSuperConceptsScope" />
                <node concept="37vLTw" id="3GM_nagTx2Z" role="37wK5m">
                  <ref role="3cqZAo" node="6qi2OtU3uuc" resolve="concept" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6qi2OtU3uus" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3uut" role="2LFqv$">
            <node concept="3clFbF" id="6qi2OtU3uuu" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3uuv" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm8wj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                </node>
                <node concept="liA8E" id="6qi2OtU3uux" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="37vLTw" id="3GM_nagTr2A" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3uuz" resolve="parentConcept" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6qi2OtU3uuz" role="1Duv9x">
            <property role="TrG5h" value="parentConcept" />
            <node concept="3uibUv" id="6qi2OtU3uu$" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
          </node>
          <node concept="2OqwBi" id="6qi2OtU3uu_" role="1DdaDG">
            <node concept="37vLTw" id="3GM_nagT_1e" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uun" resolve="chs" />
            </node>
            <node concept="liA8E" id="6qi2OtU3uuB" role="2OqNvi">
              <ref role="37wK5l" to="k6ay:~ConceptAndSuperConceptsScope.getConcepts():java.util.List" resolve="getConcepts" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6qi2OtU3uuC" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3uuD" role="3cpWs9">
            <property role="TrG5h" value="props" />
            <node concept="_YKpA" id="6qi2OtU3uuE" role="1tU5fm">
              <node concept="3Tqbb2" id="6qi2OtU3uuF" role="_ZDj9">
                <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
              </node>
            </node>
            <node concept="1eOMI4" id="6qi2OtU3uuG" role="33vP2m">
              <node concept="10QFUN" id="6qi2OtU3uuH" role="1eOMHV">
                <node concept="2OqwBi" id="6qi2OtU3uuI" role="10QFUP">
                  <node concept="37vLTw" id="3GM_nagTv9W" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uun" resolve="chs" />
                  </node>
                  <node concept="liA8E" id="6qi2OtU3uuK" role="2OqNvi">
                    <ref role="37wK5l" to="k6ay:~ConceptAndSuperConceptsScope.getNodes(org.jetbrains.mps.util.Condition):java.util.List" resolve="getNodes" />
                    <node concept="1bVj0M" id="6qi2OtU3uuL" role="37wK5m">
                      <node concept="3clFbS" id="6qi2OtU3uuM" role="1bW5cS">
                        <node concept="3clFbF" id="6qi2OtU3uuN" role="3cqZAp">
                          <node concept="2OqwBi" id="6qi2OtU3uuO" role="3clFbG">
                            <node concept="37vLTw" id="2BHiRxghejR" role="2Oq$k0">
                              <ref role="3cqZAo" node="6qi2OtU3uuS" resolve="n" />
                            </node>
                            <node concept="1mIQ4w" id="6qi2OtU3uuQ" role="2OqNvi">
                              <node concept="chp4Y" id="6qi2OtU3uuR" role="cj9EA">
                                <ref role="cht4Q" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="6qi2OtU3uuS" role="1bW2Oz">
                        <property role="TrG5h" value="n" />
                        <node concept="3Tqbb2" id="6qi2OtU3uuT" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="_YKpA" id="6qi2OtU3uuU" role="10QFUM">
                  <node concept="3Tqbb2" id="6qi2OtU3uuV" role="_ZDj9">
                    <ref role="ehGHo" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6qi2OtU3uuW" role="3cqZAp">
          <node concept="2GrKxI" id="6qi2OtU3uuX" role="2Gsz3X">
            <property role="TrG5h" value="p" />
          </node>
          <node concept="37vLTw" id="3GM_nagTuoy" role="2GsD0m">
            <ref role="3cqZAo" node="6qi2OtU3uuD" resolve="props" />
          </node>
          <node concept="3clFbS" id="6qi2OtU3uuZ" role="2LFqv$">
            <node concept="3cpWs8" id="6qi2OtU3uv0" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3uv1" role="3cpWs9">
                <property role="TrG5h" value="ps" />
                <node concept="3uibUv" id="6qi2OtU3uv2" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~PropertySupport" resolve="PropertySupport" />
                </node>
                <node concept="2YIFZM" id="6qi2OtU3uv3" role="33vP2m">
                  <ref role="1Pybhc" to="w1kc:~PropertySupport" resolve="PropertySupport" />
                  <ref role="37wK5l" to="w1kc:~PropertySupport.getPropertySupport(org.jetbrains.mps.openapi.model.SNode):jetbrains.mps.smodel.PropertySupport" resolve="getPropertySupport" />
                  <node concept="2GrUjf" id="6qi2OtU3uv4" role="37wK5m">
                    <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3uv5" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3uv6" role="3cpWs9">
                <property role="TrG5h" value="propertyName" />
                <node concept="17QB3L" id="6qi2OtU3uv7" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3uv8" role="33vP2m">
                  <node concept="2GrUjf" id="6qi2OtU3uv9" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                  </node>
                  <node concept="3TrcHB" id="6qi2OtU3uva" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3uvb" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3uvc" role="3clFbx">
                <node concept="34ab3g" id="6qi2OtU3uvd" role="3cqZAp">
                  <property role="35gtTG" value="error" />
                  <node concept="3cpWs3" id="6qi2OtU3uve" role="34bqiv">
                    <node concept="2OqwBi" id="2ZDBRmk5iVc" role="3uHU7w">
                      <node concept="liA8E" id="2ZDBRmk5iVd" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelReference.getModelName():java.lang.String" resolve="getModelName" />
                      </node>
                      <node concept="2OqwBi" id="2ZDBRmk5iVe" role="2Oq$k0">
                        <node concept="liA8E" id="2ZDBRmk5iVf" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getReference():org.jetbrains.mps.openapi.model.SModelReference" resolve="getReference" />
                        </node>
                        <node concept="2JrnkZ" id="2ZDBRmk5iVg" role="2Oq$k0">
                          <node concept="2OqwBi" id="2ZDBRmk5iVh" role="2JrQYb">
                            <node concept="2GrUjf" id="2ZDBRmk5iVi" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                            </node>
                            <node concept="I4A8Y" id="2ZDBRmk5iVj" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs3" id="6qi2OtU3uvl" role="3uHU7B">
                      <node concept="3cpWs3" id="6qi2OtU3uvm" role="3uHU7B">
                        <node concept="Xl_RD" id="6qi2OtU3uvn" role="3uHU7B">
                          <property role="Xl_RC" value="Property declaration has a null name, declaration id: " />
                        </node>
                        <node concept="2OqwBi" id="6qi2OtU3uvo" role="3uHU7w">
                          <node concept="liA8E" id="24cAaiUz$l9" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                          </node>
                          <node concept="2JrnkZ" id="6qi2OtU3uvp" role="2Oq$k0">
                            <node concept="2GrUjf" id="6qi2OtU3uvq" role="2JrQYb">
                              <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="6qi2OtU3uvs" role="3uHU7w">
                        <property role="Xl_RC" value=", model: " />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="6qi2OtU3uvt" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="6qi2OtU3uvu" role="3clFbw">
                <node concept="10Nm6u" id="6qi2OtU3uvv" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTAM2" role="3uHU7B">
                  <ref role="3cqZAo" node="6qi2OtU3uv6" resolve="propertyName" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3uvx" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3uvy" role="3cpWs9">
                <property role="TrG5h" value="value" />
                <node concept="17QB3L" id="6qi2OtU3uvz" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3uv$" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTyRi" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uv1" resolve="ps" />
                  </node>
                  <node concept="liA8E" id="6qi2OtU3uvA" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~PropertySupport.fromInternalValue(java.lang.String):java.lang.String" resolve="fromInternalValue" />
                    <node concept="2YIFZM" id="5CFnob0Pb9Z" role="37wK5m">
                      <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
                      <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.getProperty(org.jetbrains.mps.openapi.model.SNode,java.lang.String):java.lang.String" resolve="getProperty" />
                      <node concept="2JrnkZ" id="5CFnob0Pba0" role="37wK5m">
                        <node concept="37vLTw" id="2BHiRxglEs4" role="2JrQYb">
                          <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTzkj" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uv6" resolve="propertyName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RmIorjm6v_" role="3cqZAp">
              <node concept="3cpWsn" id="2RmIorjm6vA" role="3cpWs9">
                <property role="TrG5h" value="propertyDescriptor" />
                <node concept="3uibUv" id="2RmIorjm6vB" role="1tU5fm">
                  <ref role="3uigEE" to="ze1i:~PropertyConstraintsDescriptor" resolve="PropertyConstraintsDescriptor" />
                </node>
                <node concept="2OqwBi" id="2RmIorjm6vE" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTA0Y" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RmIorjm6vf" resolve="newDescriptor" />
                  </node>
                  <node concept="liA8E" id="2RmIorjm6vI" role="2OqNvi">
                    <ref role="37wK5l" to="ze1i:~ConstraintsDescriptor.getProperty(java.lang.String):jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor" resolve="getProperty" />
                    <node concept="37vLTw" id="3GM_nagT$TW" role="37wK5m">
                      <ref role="3cqZAo" node="6qi2OtU3uv6" resolve="propertyName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3uvO" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3uvP" role="3cpWs9">
                <property role="TrG5h" value="canSetValue" />
                <node concept="10P_77" id="6qi2OtU3uvQ" role="1tU5fm" />
                <node concept="3K4zz7" id="LaLafJW_n0" role="33vP2m">
                  <node concept="3clFbT" id="LaLafJW_oz" role="3K4E3e">
                    <property role="3clFbU" value="false" />
                  </node>
                  <node concept="3clFbC" id="LaLafJW_kR" role="3K4Cdx">
                    <node concept="10Nm6u" id="LaLafJW_m1" role="3uHU7w" />
                    <node concept="37vLTw" id="LaLafJW$ZP" role="3uHU7B">
                      <ref role="3cqZAo" node="2RmIorjm6vA" resolve="propertyDescriptor" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6qi2OtU3uvR" role="3K4GZi">
                    <node concept="37vLTw" id="2BHiRxghfDJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3uvT" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3uc0" resolve="runCheckingAction" />
                      <node concept="1bVj0M" id="6qi2OtU3uvU" role="37wK5m">
                        <node concept="3clFbS" id="6qi2OtU3uvV" role="1bW5cS">
                          <node concept="3clFbF" id="6qi2OtU3uvW" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3uvX" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTxZT" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uv1" resolve="ps" />
                              </node>
                              <node concept="liA8E" id="6qi2OtU3uvZ" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~PropertySupport.canSetValue(jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String):boolean" resolve="canSetValue" />
                                <node concept="37vLTw" id="3GM_nagTuNa" role="37wK5m">
                                  <ref role="3cqZAo" node="2RmIorjm6vA" resolve="propertyDescriptor" />
                                </node>
                                <node concept="37vLTw" id="2BHiRxgl1_u" role="37wK5m">
                                  <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTBNH" role="37wK5m">
                                  <ref role="3cqZAo" node="6qi2OtU3uv6" resolve="propertyName" />
                                </node>
                                <node concept="37vLTw" id="3GM_nagTv3b" role="37wK5m">
                                  <ref role="3cqZAo" node="6qi2OtU3uvy" resolve="value" />
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
            </node>
            <node concept="3clFbJ" id="6qi2OtU3uw7" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3uw8" role="3clFbx">
                <node concept="3SKdUt" id="6qi2OtU3uw9" role="3cqZAp">
                  <node concept="3SKdUq" id="6qi2OtU3uwa" role="3SKWNk">
                    <property role="3SKdUp" value="TODO this is a hack for anonymous classes" />
                  </node>
                </node>
                <node concept="3clFbJ" id="6qi2OtU3uwb" role="3cqZAp">
                  <node concept="3clFbS" id="6qi2OtU3uwc" role="3clFbx">
                    <node concept="3N13vt" id="6qi2OtU3uwd" role="3cqZAp" />
                  </node>
                  <node concept="1Wc70l" id="6qi2OtU3uwe" role="3clFbw">
                    <node concept="2OqwBi" id="6qi2OtU3uwf" role="3uHU7B">
                      <node concept="Xl_RD" id="6qi2OtU3uwg" role="2Oq$k0">
                        <property role="Xl_RC" value="name" />
                      </node>
                      <node concept="liA8E" id="6qi2OtU3uwh" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                        <node concept="2OqwBi" id="6qi2OtU3uwi" role="37wK5m">
                          <node concept="2GrUjf" id="6qi2OtU3uwj" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                          </node>
                          <node concept="3TrcHB" id="6qi2OtU3uwk" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1eOMI4" id="lZWoU11wJm" role="3uHU7w">
                      <node concept="22lmx$" id="lZWoU11wJt" role="1eOMHV">
                        <node concept="2OqwBi" id="lZWoU11wJn" role="3uHU7B">
                          <node concept="Xl_RD" id="lZWoU11wJo" role="2Oq$k0">
                            <property role="Xl_RC" value="AnonymousClass" />
                          </node>
                          <node concept="liA8E" id="lZWoU11wJp" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="lZWoU11wJq" role="37wK5m">
                              <node concept="37vLTw" id="3GM_nagTByA" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uuc" resolve="concept" />
                              </node>
                              <node concept="3TrcHB" id="lZWoU11wJs" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="lZWoU11wJw" role="3uHU7w">
                          <node concept="Xl_RD" id="lZWoU11wJx" role="2Oq$k0">
                            <property role="Xl_RC" value="InternalAnonymousClass" />
                          </node>
                          <node concept="liA8E" id="lZWoU11wJy" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="lZWoU11wJz" role="37wK5m">
                              <node concept="37vLTw" id="3GM_nagTAe2" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uuc" resolve="concept" />
                              </node>
                              <node concept="3TrcHB" id="lZWoU11wJ_" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="6qi2OtU3uwr" role="3cqZAp">
                  <node concept="3SKdUq" id="6qi2OtU3uws" role="3SKWNk">
                    <property role="3SKdUp" value="todo find a rule" />
                  </node>
                </node>
                <node concept="3clFbF" id="6qi2OtU3uwt" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3uwu" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglJVT" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uwN" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3uww" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3Y" resolve="addError" />
                      <node concept="37vLTw" id="2BHiRxglnm0" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3uwL" resolve="node" />
                      </node>
                      <node concept="3cpWs3" id="6qi2OtU3uwy" role="37wK5m">
                        <node concept="Xl_RD" id="6qi2OtU3uwz" role="3uHU7w">
                          <property role="Xl_RC" value="\&quot;" />
                        </node>
                        <node concept="3cpWs3" id="6qi2OtU3uw$" role="3uHU7B">
                          <node concept="Xl_RD" id="6qi2OtU3uw_" role="3uHU7B">
                            <property role="Xl_RC" value="Property constraint violation for property \&quot;" />
                          </node>
                          <node concept="2OqwBi" id="6qi2OtU3uwA" role="3uHU7w">
                            <node concept="2GrUjf" id="6qi2OtU3uwB" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                            </node>
                            <node concept="3TrcHB" id="6qi2OtU3uwC" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="6qi2OtU3uwD" role="37wK5m" />
                      <node concept="2ShNRf" id="6qi2OtU3uwE" role="37wK5m">
                        <node concept="1pGfFk" id="6qi2OtU3uwF" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~PropertyMessageTarget.&lt;init&gt;(java.lang.String)" resolve="PropertyMessageTarget" />
                          <node concept="2OqwBi" id="6qi2OtU3uwG" role="37wK5m">
                            <node concept="2GrUjf" id="6qi2OtU3uwH" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6qi2OtU3uuX" resolve="p" />
                            </node>
                            <node concept="3TrcHB" id="6qi2OtU3uwI" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6qi2OtU3uwJ" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagTsKI" role="3fr31v">
                  <ref role="3cqZAo" node="6qi2OtU3uvP" resolve="canSetValue" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uwL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6qi2OtU3uwM" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3uwN" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="6qi2OtU3uwO" role="1tU5fm">
          <ref role="3uigEE" node="6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3VcCO4cN9tB" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VcCO4cN9tC" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sRvq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6qi2OtU3u0m">
    <property role="TrG5h" value="LanguageErrorsComponent" />
    <node concept="3Tm1VV" id="6qi2OtU3ufa" role="1B3o_S" />
    <node concept="312cEg" id="6qi2OtU3udZ" role="jymVt">
      <property role="TrG5h" value="myNodesToErrors" />
      <node concept="3Tm6S6" id="6qi2OtU3ue0" role="1B3o_S" />
      <node concept="3rvAFt" id="6qi2OtU3ue1" role="1tU5fm">
        <node concept="3Tqbb2" id="6qi2OtU3ue2" role="3rvQeY" />
        <node concept="2hMVRd" id="6qi2OtU3ue3" role="3rvSg0">
          <node concept="3uibUv" id="6qi2OtU3ue4" role="2hN53Y">
            <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ue5" role="33vP2m">
        <node concept="1pGfFk" id="6qi2OtU3ue6" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3Tqbb2" id="6qi2OtU3ue7" role="1pMfVU" />
          <node concept="2hMVRd" id="6qi2OtU3ue8" role="1pMfVU">
            <node concept="3uibUv" id="6qi2OtU3ue9" role="2hN53Y">
              <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3uea" role="jymVt">
      <property role="TrG5h" value="myDependenciesToNodes" />
      <node concept="3Tm6S6" id="6qi2OtU3ueb" role="1B3o_S" />
      <node concept="3rvAFt" id="6qi2OtU3uec" role="1tU5fm">
        <node concept="3Tqbb2" id="6qi2OtU3ued" role="3rvQeY" />
        <node concept="2hMVRd" id="6qi2OtU3uee" role="3rvSg0">
          <node concept="3Tqbb2" id="6qi2OtU3uef" role="2hN53Y" />
        </node>
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ueg" role="33vP2m">
        <node concept="1pGfFk" id="6qi2OtU3ueh" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3Tqbb2" id="6qi2OtU3uei" role="1pMfVU" />
          <node concept="2hMVRd" id="6qi2OtU3uej" role="1pMfVU">
            <node concept="3Tqbb2" id="6qi2OtU3uek" role="2hN53Y" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3uel" role="jymVt">
      <property role="TrG5h" value="myNodesToDependecies" />
      <node concept="3Tm6S6" id="6qi2OtU3uem" role="1B3o_S" />
      <node concept="3rvAFt" id="6qi2OtU3uen" role="1tU5fm">
        <node concept="3Tqbb2" id="6qi2OtU3ueo" role="3rvQeY" />
        <node concept="2hMVRd" id="6qi2OtU3uep" role="3rvSg0">
          <node concept="3Tqbb2" id="6qi2OtU3ueq" role="2hN53Y" />
        </node>
      </node>
      <node concept="2ShNRf" id="6qi2OtU3uer" role="33vP2m">
        <node concept="1pGfFk" id="6qi2OtU3ues" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3Tqbb2" id="6qi2OtU3uet" role="1pMfVU" />
          <node concept="2hMVRd" id="6qi2OtU3ueu" role="1pMfVU">
            <node concept="3Tqbb2" id="6qi2OtU3uev" role="2hN53Y" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3uew" role="jymVt">
      <property role="TrG5h" value="myInvalidNodes" />
      <node concept="3Tm6S6" id="6qi2OtU3uex" role="1B3o_S" />
      <node concept="2hMVRd" id="6qi2OtU3uey" role="1tU5fm">
        <node concept="3Tqbb2" id="6qi2OtU3uez" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ue$" role="33vP2m">
        <node concept="1pGfFk" id="6qi2OtU3ue_" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3Tqbb2" id="6qi2OtU3ueA" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3ueB" role="jymVt">
      <property role="TrG5h" value="myDependenciesToInvalidate" />
      <node concept="3Tm6S6" id="6qi2OtU3ueC" role="1B3o_S" />
      <node concept="2hMVRd" id="6qi2OtU3ueD" role="1tU5fm">
        <node concept="3Tqbb2" id="6qi2OtU3ueE" role="2hN53Y" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ueF" role="33vP2m">
        <node concept="1pGfFk" id="6qi2OtU3ueG" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3Tqbb2" id="6qi2OtU3ueH" role="1pMfVU" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3ueI" role="jymVt">
      <property role="TrG5h" value="myModelListener" />
      <node concept="3Tm6S6" id="6qi2OtU3ueJ" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3ueK" role="1tU5fm">
        <ref role="3uigEE" node="6qi2OtU3u0n" resolve="LanguageErrorsComponent.MyModelListener" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ueL" role="33vP2m">
        <node concept="HV5vD" id="1QnJaNXF_ue" role="2ShVmc">
          <ref role="HV5vE" node="6qi2OtU3u0n" resolve="LanguageErrorsComponent.MyModelListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3ueN" role="jymVt">
      <property role="TrG5h" value="myModelRepositoryListener" />
      <node concept="3Tm6S6" id="6qi2OtU3ueO" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3ueP" role="1tU5fm">
        <ref role="3uigEE" node="6qi2OtU3u1k" resolve="LanguageErrorsComponent.MyModelRepositoryListener" />
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ueQ" role="33vP2m">
        <node concept="HV5vD" id="1QnJaNXFBq_" role="2ShVmc">
          <ref role="HV5vE" node="6qi2OtU3u1k" resolve="LanguageErrorsComponent.MyModelRepositoryListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3ueS" role="jymVt">
      <property role="TrG5h" value="myListenedModels" />
      <node concept="3Tm6S6" id="6qi2OtU3ueT" role="1B3o_S" />
      <node concept="2hMVRd" id="6qi2OtU3ueU" role="1tU5fm">
        <node concept="3uibUv" id="6qi2OtU3ueV" role="2hN53Y">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="2ShNRf" id="6qi2OtU3ueW" role="33vP2m">
        <node concept="1pGfFk" id="6qi2OtU3ueX" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="6qi2OtU3ueY" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3ueZ" role="jymVt">
      <property role="TrG5h" value="myCheckedRoot" />
      <node concept="3Tm6S6" id="6qi2OtU3uf0" role="1B3o_S" />
      <node concept="10P_77" id="6qi2OtU3uf1" role="1tU5fm" />
      <node concept="3clFbT" id="6qi2OtU3uf2" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="312cEg" id="6qi2OtU3uf3" role="jymVt">
      <property role="TrG5h" value="myCurrentNode" />
      <node concept="3Tm6S6" id="6qi2OtU3uf4" role="1B3o_S" />
      <node concept="3Tqbb2" id="6qi2OtU3uf5" role="1tU5fm" />
      <node concept="10Nm6u" id="6qi2OtU3uf6" role="33vP2m" />
    </node>
    <node concept="312cEg" id="6se4BTTGkph" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myModel" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6se4BTTGccD" role="1B3o_S" />
      <node concept="3uibUv" id="6se4BTTGkj9" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="312cEg" id="6se4BTU3AR5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="myUpdateInspector" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="6se4BTU3vM3" role="1B3o_S" />
      <node concept="10P_77" id="6se4BTU3AR3" role="1tU5fm" />
      <node concept="3clFbT" id="6se4BTU3JWK" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="48BjLD9XXvo" role="jymVt" />
    <node concept="2YIFZL" id="48BjLD9XaLm" role="jymVt">
      <property role="TrG5h" value="addToMappedSet" />
      <property role="IEkAT" value="false" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="48BjLD9VOMZ" role="3clF47">
        <node concept="3cpWs8" id="48BjLD9WT1n" role="3cqZAp">
          <node concept="3cpWsn" id="48BjLD9WT1o" role="3cpWs9">
            <property role="TrG5h" value="setOfNodes" />
            <node concept="2hMVRd" id="48BjLD9WT1p" role="1tU5fm">
              <node concept="16syzq" id="1QnJaNXpxYI" role="2hN53Y">
                <ref role="16sUi3" node="1QnJaNXptdD" resolve="T" />
              </node>
            </node>
            <node concept="3EllGN" id="48BjLD9WT1r" role="33vP2m">
              <node concept="37vLTw" id="48BjLD9WX24" role="3ElVtu">
                <ref role="3cqZAo" node="48BjLD9W9Ys" resolve="key" />
              </node>
              <node concept="37vLTw" id="48BjLD9WVwF" role="3ElQJh">
                <ref role="3cqZAo" node="48BjLD9VZfs" resolve="map" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="48BjLD9WT1u" role="3cqZAp">
          <node concept="3clFbS" id="48BjLD9WT1v" role="3clFbx">
            <node concept="3clFbF" id="48BjLD9WT1w" role="3cqZAp">
              <node concept="37vLTI" id="48BjLD9WT1x" role="3clFbG">
                <node concept="2ShNRf" id="48BjLD9WT1y" role="37vLTx">
                  <node concept="1pGfFk" id="48BjLD9WT1z" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(int)" resolve="HashSet" />
                    <node concept="16syzq" id="1QnJaNXpyMo" role="1pMfVU">
                      <ref role="16sUi3" node="1QnJaNXptdD" resolve="T" />
                    </node>
                    <node concept="3cmrfG" id="48BjLD9WT1_" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="48BjLD9WT1A" role="37vLTJ">
                  <ref role="3cqZAo" node="48BjLD9WT1o" resolve="setOfNodes" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="48BjLD9WT1B" role="3cqZAp">
              <node concept="37vLTI" id="48BjLD9WT1C" role="3clFbG">
                <node concept="37vLTw" id="48BjLD9WT1D" role="37vLTx">
                  <ref role="3cqZAo" node="48BjLD9WT1o" resolve="setOfNodes" />
                </node>
                <node concept="3EllGN" id="48BjLD9WT1E" role="37vLTJ">
                  <node concept="37vLTw" id="48BjLD9X7ol" role="3ElVtu">
                    <ref role="3cqZAo" node="48BjLD9W9Ys" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="48BjLD9X62M" role="3ElQJh">
                    <ref role="3cqZAo" node="48BjLD9VZfs" resolve="map" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="48BjLD9WT1H" role="3clFbw">
            <node concept="10Nm6u" id="48BjLD9WT1I" role="3uHU7w" />
            <node concept="37vLTw" id="48BjLD9WT1J" role="3uHU7B">
              <ref role="3cqZAo" node="48BjLD9WT1o" resolve="setOfNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48BjLD9WT1K" role="3cqZAp">
          <node concept="2OqwBi" id="48BjLD9WT1L" role="3clFbG">
            <node concept="37vLTw" id="48BjLD9WT1M" role="2Oq$k0">
              <ref role="3cqZAo" node="48BjLD9WT1o" resolve="setOfNodes" />
            </node>
            <node concept="TSZUe" id="48BjLD9WT1N" role="2OqNvi">
              <node concept="37vLTw" id="48BjLD9X9Gx" role="25WWJ7">
                <ref role="3cqZAo" node="48BjLD9WjHt" resolve="value" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="48BjLD9VZfs" role="3clF46">
        <property role="TrG5h" value="map" />
        <node concept="3rvAFt" id="48BjLD9VZfp" role="1tU5fm">
          <node concept="3Tqbb2" id="48BjLD9W9G3" role="3rvQeY" />
          <node concept="2hMVRd" id="48BjLD9W9Uu" role="3rvSg0">
            <node concept="16syzq" id="1QnJaNXpv3h" role="2hN53Y">
              <ref role="16sUi3" node="1QnJaNXptdD" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="48BjLD9W9Ys" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3Tqbb2" id="48BjLD9WjFO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="48BjLD9WjHt" role="3clF46">
        <property role="TrG5h" value="value" />
        <node concept="16syzq" id="1QnJaNXpwkU" role="1tU5fm">
          <ref role="16sUi3" node="1QnJaNXptdD" resolve="T" />
        </node>
      </node>
      <node concept="3cqZAl" id="48BjLD9VOvg" role="3clF45" />
      <node concept="3Tm6S6" id="48BjLD9VEh2" role="1B3o_S" />
      <node concept="16euLQ" id="1QnJaNXptdD" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="48BjLD9XXJS" role="jymVt" />
    <node concept="3clFbW" id="6qi2OtU3ufb" role="jymVt">
      <node concept="3cqZAl" id="6qi2OtU3ufc" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3ufd" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3ufe" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3uff" role="3cqZAp">
          <node concept="37vLTI" id="6qi2OtU3ufg" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxgm6Xc" role="37vLTx">
              <ref role="3cqZAo" node="6qi2OtU3ufo" resolve="model" />
            </node>
            <node concept="37vLTw" id="6se4BTTGs5d" role="37vLTJ">
              <ref role="3cqZAo" node="6se4BTTGkph" resolve="myModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ufj" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ufk" role="3clFbG">
            <node concept="2YIFZM" id="6qi2OtU3ufl" role="2Oq$k0">
              <ref role="37wK5l" to="w1kc:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~SModelRepository" resolve="SModelRepository" />
            </node>
            <node concept="liA8E" id="6qi2OtU3ufm" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModelRepository.addModelRepositoryListener(jetbrains.mps.smodel.SModelRepositoryListener):void" resolve="addModelRepositoryListener" />
              <node concept="37vLTw" id="2BHiRxeumX1" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3ueN" resolve="myModelRepositoryListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3ufo" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="6se4BTTGrSU" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3u1H" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3cqZAl" id="6qi2OtU3u1I" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u1J" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u1K" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3u1L" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3u1M" role="3clFbG">
            <node concept="Xjq3P" id="6qi2OtU3u1N" role="2Oq$k0" />
            <node concept="liA8E" id="6qi2OtU3u1O" role="2OqNvi">
              <ref role="37wK5l" node="6qi2OtU3u1U" resolve="removeModelListener" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u1P" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3u1Q" role="3clFbG">
            <node concept="2YIFZM" id="6qi2OtU3u1R" role="2Oq$k0">
              <ref role="37wK5l" to="w1kc:~SModelRepository.getInstance():jetbrains.mps.smodel.SModelRepository" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~SModelRepository" resolve="SModelRepository" />
            </node>
            <node concept="liA8E" id="6qi2OtU3u1S" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModelRepository.removeModelRepositoryListener(jetbrains.mps.smodel.SModelRepositoryListener):void" resolve="removeModelRepositoryListener" />
              <node concept="37vLTw" id="2BHiRxeulj0" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3ueN" resolve="myModelRepositoryListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3u1U" role="jymVt">
      <property role="TrG5h" value="removeModelListener" />
      <node concept="3Tm6S6" id="6qi2OtU3u1V" role="1B3o_S" />
      <node concept="3cqZAl" id="6qi2OtU3u1W" role="3clF45" />
      <node concept="3clFbS" id="6qi2OtU3u1X" role="3clF47">
        <node concept="1DcWWT" id="6qi2OtU3u1Y" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3u1Z" role="1Duv9x">
            <property role="TrG5h" value="modelDescriptor" />
            <node concept="3uibUv" id="6qi2OtU3u20" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
          </node>
          <node concept="37vLTw" id="2BHiRxeuVvm" role="1DdaDG">
            <ref role="3cqZAo" node="6qi2OtU3ueS" resolve="myListenedModels" />
          </node>
          <node concept="3clFbS" id="6qi2OtU3u22" role="2LFqv$">
            <node concept="3clFbF" id="6qi2OtU3u23" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3u24" role="3clFbG">
                <node concept="1eOMI4" id="256tImPrAGC" role="2Oq$k0">
                  <node concept="10QFUN" id="256tImPrAGD" role="1eOMHV">
                    <node concept="37vLTw" id="3GM_nagTtIJ" role="10QFUP">
                      <ref role="3cqZAo" node="6qi2OtU3u1Z" resolve="modelDescriptor" />
                    </node>
                    <node concept="3uibUv" id="1KRNqi_MsEr" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6qi2OtU3u26" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModelInternal.removeModelListener(jetbrains.mps.smodel.event.SModelListener):void" resolve="removeModelListener" />
                  <node concept="37vLTw" id="2BHiRxeuu5j" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3ueI" resolve="myModelListener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u28" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3u29" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuEuT" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueS" resolve="myListenedModels" />
            </node>
            <node concept="2EZike" id="6qi2OtU3u2b" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3u2c" role="jymVt">
      <property role="TrG5h" value="addDependency" />
      <node concept="3cqZAl" id="6qi2OtU3u2d" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u2e" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u2f" role="3clF47">
        <node concept="3clFbJ" id="48BjLD9Xvkh" role="3cqZAp">
          <node concept="3clFbS" id="48BjLD9Xvkk" role="3clFbx">
            <node concept="3cpWs6" id="48BjLD9XvEw" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="48BjLD9Xvxm" role="3clFbw">
            <node concept="10Nm6u" id="48BjLD9XvBe" role="3uHU7w" />
            <node concept="37vLTw" id="48BjLD9XvqD" role="3uHU7B">
              <ref role="3cqZAo" node="6qi2OtU3uf3" resolve="myCurrentNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6qi2OtU3u2v" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3u2w" role="3clFbx">
            <node concept="3cpWs6" id="6qi2OtU3u2x" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6qi2OtU3u2y" role="3clFbw">
            <node concept="10Nm6u" id="6qi2OtU3u2z" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglp7T" role="3uHU7B">
              <ref role="3cqZAo" node="6qi2OtU3u2p" resolve="dependency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QnJaNXsRnv" role="3cqZAp">
          <node concept="1rXfSq" id="1QnJaNXsRnu" role="3clFbG">
            <ref role="37wK5l" node="1QnJaNXseTx" resolve="addDependencyMapping" />
            <node concept="37vLTw" id="1QnJaNXsRwt" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3uf3" resolve="myCurrentNode" />
            </node>
            <node concept="37vLTw" id="1QnJaNXsRHn" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u2p" resolve="dependency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u3x" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyOma" role="3clFbG">
            <ref role="37wK5l" node="6qi2OtU3u5m" resolve="addModelListener" />
            <node concept="2JrnkZ" id="6qi2OtU3u3$" role="37wK5m">
              <node concept="2OqwBi" id="6qi2OtU3u3_" role="2JrQYb">
                <node concept="37vLTw" id="2BHiRxgm7Zt" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3u2p" resolve="dependency" />
                </node>
                <node concept="I4A8Y" id="6qi2OtU3u3B" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u2p" role="3clF46">
        <property role="TrG5h" value="dependency" />
        <node concept="3Tqbb2" id="6qi2OtU3u2q" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QnJaNXt2hr" role="jymVt" />
    <node concept="3clFb_" id="1QnJaNXseTx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addDependencyMapping" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1QnJaNXseT$" role="3clF47">
        <node concept="3clFbF" id="48BjLD9Xr7g" role="3cqZAp">
          <node concept="1rXfSq" id="48BjLD9Xr7f" role="3clFbG">
            <ref role="37wK5l" node="48BjLD9XaLm" resolve="addToMappedSet" />
            <node concept="37vLTw" id="48BjLD9Xs54" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3uel" resolve="myNodesToDependecies" />
            </node>
            <node concept="37vLTw" id="1QnJaNXtb3V" role="37wK5m">
              <ref role="3cqZAo" node="1QnJaNXsoez" resolve="node" />
            </node>
            <node concept="37vLTw" id="48BjLD9XsBh" role="37wK5m">
              <ref role="3cqZAo" node="1QnJaNXsyBq" resolve="dependency" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="48BjLD9Xo4_" role="3cqZAp">
          <node concept="1rXfSq" id="48BjLD9Xo4$" role="3clFbG">
            <ref role="37wK5l" node="48BjLD9XaLm" resolve="addToMappedSet" />
            <node concept="37vLTw" id="48BjLD9Xp0d" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3uea" resolve="myDependenciesToNodes" />
            </node>
            <node concept="37vLTw" id="48BjLD9XpgN" role="37wK5m">
              <ref role="3cqZAo" node="1QnJaNXsyBq" resolve="dependency" />
            </node>
            <node concept="37vLTw" id="1QnJaNXtaUE" role="37wK5m">
              <ref role="3cqZAo" node="1QnJaNXsoez" resolve="node" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QnJaNXs4Eo" role="1B3o_S" />
      <node concept="3cqZAl" id="1QnJaNXse_U" role="3clF45" />
      <node concept="37vLTG" id="1QnJaNXsoez" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1QnJaNXsoey" role="1tU5fm" />
        <node concept="2AHcQZ" id="1QnJaNXsIzt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1QnJaNXsyBq" role="3clF46">
        <property role="TrG5h" value="dependency" />
        <node concept="3Tqbb2" id="1QnJaNXsGzg" role="1tU5fm" />
        <node concept="2AHcQZ" id="1QnJaNXsPTS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="1QnJaNXtnNe" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="removeDependencyFromMapping" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="1QnJaNXtnNf" role="3clF47">
        <node concept="3SKdUt" id="1QnJaNXx_w2" role="3cqZAp">
          <node concept="3SKdUq" id="1QnJaNXxAox" role="3SKWNk">
            <property role="3SKdUp" value="removing dependency node from any mappings together with all checked nodes" />
          </node>
        </node>
        <node concept="3SKdUt" id="1QnJaNXxCli" role="3cqZAp">
          <node concept="3SKdUq" id="1QnJaNXxDNA" role="3SKWNk">
            <property role="3SKdUp" value="denending on this dependency node" />
          </node>
        </node>
        <node concept="3clFbH" id="1QnJaNXxzM5" role="3cqZAp" />
        <node concept="3SKdUt" id="1QnJaNXwSnS" role="3cqZAp">
          <node concept="3SKdUq" id="1QnJaNXwSBC" role="3SKWNk">
            <property role="3SKdUp" value="1. Removing dependency -&gt; nodes mapping for specified dependency" />
          </node>
        </node>
        <node concept="3cpWs8" id="1QnJaNXtSng" role="3cqZAp">
          <node concept="3cpWsn" id="1QnJaNXtSnh" role="3cpWs9">
            <property role="TrG5h" value="nodes" />
            <node concept="2hMVRd" id="1QnJaNXtSn6" role="1tU5fm">
              <node concept="3Tqbb2" id="1QnJaNXtSn9" role="2hN53Y" />
            </node>
            <node concept="2OqwBi" id="1QnJaNXtSni" role="33vP2m">
              <node concept="37vLTw" id="1QnJaNXtSnj" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3uea" resolve="myDependenciesToNodes" />
              </node>
              <node concept="kI3uX" id="1QnJaNXtSnk" role="2OqNvi">
                <node concept="37vLTw" id="1QnJaNXtSnl" role="kIiFs">
                  <ref role="3cqZAo" node="1QnJaNXtnNv" resolve="dependency" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QnJaNXxhUv" role="3cqZAp" />
        <node concept="3clFbJ" id="1QnJaNXx5LH" role="3cqZAp">
          <node concept="3clFbS" id="1QnJaNXx5LK" role="3clFbx">
            <node concept="3SKdUt" id="1QnJaNXxjoT" role="3cqZAp">
              <node concept="3SKdUq" id="1QnJaNXxkrr" role="3SKWNk">
                <property role="3SKdUp" value="2. Removing node -&gt; dependencies mappings for nodes from step 1." />
              </node>
            </node>
            <node concept="1DcWWT" id="1QnJaNXx8yf" role="3cqZAp">
              <node concept="3clFbS" id="1QnJaNXx8yl" role="2LFqv$">
                <node concept="3cpWs8" id="1QnJaNXx949" role="3cqZAp">
                  <node concept="3cpWsn" id="1QnJaNXx94a" role="3cpWs9">
                    <property role="TrG5h" value="nodeDependencies" />
                    <node concept="2hMVRd" id="1QnJaNXx94b" role="1tU5fm">
                      <node concept="3Tqbb2" id="1QnJaNXx94c" role="2hN53Y" />
                    </node>
                    <node concept="2OqwBi" id="1QnJaNXx94d" role="33vP2m">
                      <node concept="37vLTw" id="1QnJaNXx94e" role="2Oq$k0">
                        <ref role="3cqZAo" node="6qi2OtU3uel" resolve="myNodesToDependecies" />
                      </node>
                      <node concept="kI3uX" id="1QnJaNXx94f" role="2OqNvi">
                        <node concept="37vLTw" id="1QnJaNXx94g" role="kIiFs">
                          <ref role="3cqZAo" node="1QnJaNXx8yr" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1QnJaNXx94h" role="3cqZAp">
                  <node concept="3clFbS" id="1QnJaNXx94i" role="3clFbx">
                    <node concept="3SKdUt" id="1QnJaNXxzc1" role="3cqZAp">
                      <node concept="3SKdUq" id="1QnJaNXxzJ6" role="3SKWNk">
                        <property role="3SKdUp" value="3. Cleaning &quot;backward&quot; dependency -&gt; nodes maping for removed nodes" />
                      </node>
                    </node>
                    <node concept="1DcWWT" id="1QnJaNXx94j" role="3cqZAp">
                      <node concept="3cpWsn" id="1QnJaNXx94k" role="1Duv9x">
                        <property role="TrG5h" value="nodeDependency" />
                        <node concept="3Tqbb2" id="1QnJaNXx94l" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1QnJaNXx94m" role="2LFqv$">
                        <node concept="3cpWs8" id="1QnJaNXx94n" role="3cqZAp">
                          <node concept="3cpWsn" id="1QnJaNXx94o" role="3cpWs9">
                            <property role="TrG5h" value="errors" />
                            <node concept="2hMVRd" id="1QnJaNXx94p" role="1tU5fm">
                              <node concept="3Tqbb2" id="1QnJaNXx94q" role="2hN53Y" />
                            </node>
                            <node concept="3EllGN" id="1QnJaNXx94r" role="33vP2m">
                              <node concept="37vLTw" id="1QnJaNXx94s" role="3ElVtu">
                                <ref role="3cqZAo" node="1QnJaNXx94k" resolve="nodeDependency" />
                              </node>
                              <node concept="37vLTw" id="1QnJaNXx94t" role="3ElQJh">
                                <ref role="3cqZAo" node="6qi2OtU3uea" resolve="myDependenciesToNodes" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1QnJaNXx94u" role="3cqZAp">
                          <node concept="3clFbS" id="1QnJaNXx94v" role="3clFbx">
                            <node concept="3clFbF" id="1QnJaNXx94w" role="3cqZAp">
                              <node concept="2OqwBi" id="1QnJaNXx94x" role="3clFbG">
                                <node concept="37vLTw" id="1QnJaNXx94y" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1QnJaNXx94o" resolve="errors" />
                                </node>
                                <node concept="3dhRuq" id="1QnJaNXx94z" role="2OqNvi">
                                  <node concept="37vLTw" id="1QnJaNXx94$" role="25WWJ7">
                                    <ref role="3cqZAo" node="1QnJaNXx8yr" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1QnJaNXx94_" role="3cqZAp">
                              <node concept="3clFbS" id="1QnJaNXx94A" role="3clFbx">
                                <node concept="3clFbF" id="1QnJaNXx94B" role="3cqZAp">
                                  <node concept="2OqwBi" id="1QnJaNXx94C" role="3clFbG">
                                    <node concept="37vLTw" id="1QnJaNXx94D" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6qi2OtU3uea" resolve="myDependenciesToNodes" />
                                    </node>
                                    <node concept="kI3uX" id="1QnJaNXx94E" role="2OqNvi">
                                      <node concept="37vLTw" id="1QnJaNXx94F" role="kIiFs">
                                        <ref role="3cqZAo" node="1QnJaNXx94k" resolve="nodeDependency" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="1QnJaNXx94G" role="3clFbw">
                                <node concept="37vLTw" id="1QnJaNXx94H" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1QnJaNXx94o" resolve="errors" />
                                </node>
                                <node concept="1v1jN8" id="1QnJaNXx94I" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="1QnJaNXx94J" role="3clFbw">
                            <node concept="10Nm6u" id="1QnJaNXx94K" role="3uHU7w" />
                            <node concept="37vLTw" id="1QnJaNXx94L" role="3uHU7B">
                              <ref role="3cqZAo" node="1QnJaNXx94o" resolve="errors" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="1QnJaNXx94M" role="1DdaDG">
                        <ref role="3cqZAo" node="1QnJaNXx94a" resolve="nodeDependencies" />
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1QnJaNXx94N" role="3clFbw">
                    <node concept="10Nm6u" id="1QnJaNXx94O" role="3uHU7w" />
                    <node concept="37vLTw" id="1QnJaNXx94P" role="3uHU7B">
                      <ref role="3cqZAo" node="1QnJaNXx94a" resolve="nodeDependencies" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1QnJaNXx91a" role="3cqZAp" />
              </node>
              <node concept="3cpWsn" id="1QnJaNXx8yr" role="1Duv9x">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1QnJaNXxcpa" role="1tU5fm" />
              </node>
              <node concept="37vLTw" id="1QnJaNXx8LU" role="1DdaDG">
                <ref role="3cqZAo" node="1QnJaNXtSnh" resolve="nodes" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QnJaNXx6Or" role="3clFbw">
            <node concept="10Nm6u" id="1QnJaNXx70V" role="3uHU7w" />
            <node concept="37vLTw" id="1QnJaNXx6hq" role="3uHU7B">
              <ref role="3cqZAo" node="1QnJaNXtSnh" resolve="nodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QnJaNXxNbh" role="3cqZAp" />
        <node concept="3SKdUt" id="1QnJaNXzkuy" role="3cqZAp">
          <node concept="3SKdUq" id="1QnJaNXzu0v" role="3SKWNk">
            <property role="3SKdUp" value="returning a set of checked nodes removed from mapping" />
          </node>
        </node>
        <node concept="3cpWs6" id="1QnJaNXxOBw" role="3cqZAp">
          <node concept="37vLTw" id="1QnJaNXxZWL" role="3cqZAk">
            <ref role="3cqZAo" node="1QnJaNXtSnh" resolve="nodes" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QnJaNXtnNq" role="1B3o_S" />
      <node concept="37vLTG" id="1QnJaNXtnNv" role="3clF46">
        <property role="TrG5h" value="dependency" />
        <node concept="3Tqbb2" id="1QnJaNXtnNw" role="1tU5fm" />
        <node concept="2AHcQZ" id="1QnJaNXtnNx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2hMVRd" id="1QnJaNXybW6" role="3clF45">
        <node concept="3Tqbb2" id="1QnJaNXybW7" role="2hN53Y" />
      </node>
    </node>
    <node concept="3clFb_" id="1QnJaNXB5ZG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDependenciesToInvalidate" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="1QnJaNXBh2l" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="1QnJaNXBh2m" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="1QnJaNXB5ZJ" role="3clF47">
        <node concept="3cpWs8" id="1QnJaNXBy$G" role="3cqZAp">
          <node concept="3cpWsn" id="1QnJaNXBy$J" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="1QnJaNXBy$C" role="1tU5fm">
              <node concept="3Tqbb2" id="1QnJaNXBz7Q" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="1QnJaNXBzls" role="33vP2m">
              <node concept="1pGfFk" id="1QnJaNXB_UK" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3Tqbb2" id="1QnJaNXBAf3" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="1QnJaNXBCh1" role="3cqZAp">
          <node concept="3clFbS" id="1QnJaNXBCh4" role="2LFqv$">
            <node concept="3clFbJ" id="1QnJaNXBg1x" role="3cqZAp">
              <node concept="3clFbS" id="1QnJaNXBg1y" role="3clFbx">
                <node concept="3clFbF" id="1QnJaNXDOhu" role="3cqZAp">
                  <node concept="2OqwBi" id="1QnJaNXDOwg" role="3clFbG">
                    <node concept="37vLTw" id="1QnJaNXDOht" role="2Oq$k0">
                      <ref role="3cqZAo" node="1QnJaNXBy$J" resolve="result" />
                    </node>
                    <node concept="TSZUe" id="1QnJaNXDQt5" role="2OqNvi">
                      <node concept="37vLTw" id="1QnJaNXDRFL" role="25WWJ7">
                        <ref role="3cqZAo" node="1QnJaNXBCh7" resolve="dependency" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="22lmx$" id="1QnJaNXBg1A" role="3clFbw">
                <node concept="3fqX7Q" id="3GwZr6smyI9" role="3uHU7B">
                  <node concept="2YIFZM" id="3GwZr6smzR7" role="3fr31v">
                    <ref role="37wK5l" to="mhbf:~SNodeUtil.isAccessible(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.module.SRepository):boolean" resolve="isAccessible" />
                    <ref role="1Pybhc" to="mhbf:~SNodeUtil" resolve="SNodeUtil" />
                    <node concept="37vLTw" id="3GwZr6spokZ" role="37wK5m">
                      <ref role="3cqZAo" node="1QnJaNXBCh7" resolve="dependency" />
                    </node>
                    <node concept="2YIFZM" id="3GwZr6sm$cC" role="37wK5m">
                      <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                      <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1QnJaNXBg1E" role="3uHU7w">
                  <node concept="37vLTw" id="1QnJaNXDsYr" role="3uHU7w">
                    <ref role="3cqZAo" node="1QnJaNXBh2l" resolve="model" />
                  </node>
                  <node concept="2OqwBi" id="1QnJaNXBg1G" role="3uHU7B">
                    <node concept="37vLTw" id="1QnJaNXDqgd" role="2Oq$k0">
                      <ref role="3cqZAo" node="1QnJaNXBCh7" resolve="dependency" />
                    </node>
                    <node concept="I4A8Y" id="1QnJaNXBg1I" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="1QnJaNXBCh7" role="1Duv9x">
            <property role="TrG5h" value="dependency" />
            <node concept="3Tqbb2" id="1QnJaNXBDs0" role="1tU5fm" />
          </node>
          <node concept="2OqwBi" id="1QnJaNXBD5G" role="1DdaDG">
            <node concept="37vLTw" id="1QnJaNXBD5H" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uea" resolve="myDependenciesToNodes" />
            </node>
            <node concept="3lbrtF" id="1QnJaNXBD5I" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="1QnJaNXDUfd" role="3cqZAp">
          <node concept="37vLTw" id="1QnJaNXE00C" role="3cqZAk">
            <ref role="3cqZAo" node="1QnJaNXBy$J" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QnJaNXAW6z" role="1B3o_S" />
      <node concept="2hMVRd" id="1QnJaNXE9DV" role="3clF45">
        <node concept="3Tqbb2" id="1QnJaNXE9DW" role="2hN53Y" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QnJaNXrUor" role="jymVt" />
    <node concept="3clFb_" id="6qi2OtU3u5m" role="jymVt">
      <property role="TrG5h" value="addModelListener" />
      <node concept="3cqZAl" id="6qi2OtU3u5n" role="3clF45" />
      <node concept="3Tm6S6" id="6qi2OtU3u5o" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u5p" role="3clF47">
        <node concept="3clFbJ" id="6qi2OtU3u5q" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3u5r" role="3clFbx">
            <node concept="3cpWs6" id="6qi2OtU3u5s" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="6qi2OtU3u5t" role="3clFbw">
            <node concept="10Nm6u" id="6qi2OtU3u5u" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglnUW" role="3uHU7B">
              <ref role="3cqZAo" node="6qi2OtU3u5L" resolve="modelDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6qi2OtU3u5w" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3u5x" role="3clFbx">
            <node concept="3clFbF" id="6qi2OtU3u5y" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3u5z" role="3clFbG">
                <node concept="1eOMI4" id="256tImPrAGl" role="2Oq$k0">
                  <node concept="10QFUN" id="256tImPrAGm" role="1eOMHV">
                    <node concept="37vLTw" id="2BHiRxglf6N" role="10QFUP">
                      <ref role="3cqZAo" node="6qi2OtU3u5L" resolve="modelDescriptor" />
                    </node>
                    <node concept="3uibUv" id="1KRNqi_Mtc_" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6qi2OtU3u5_" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModelInternal.addModelListener(jetbrains.mps.smodel.event.SModelListener):void" resolve="addModelListener" />
                  <node concept="37vLTw" id="2BHiRxeuknW" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3ueI" resolve="myModelListener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6qi2OtU3u5B" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3u5C" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeuhSm" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3ueS" resolve="myListenedModels" />
                </node>
                <node concept="TSZUe" id="2UMCgvoqpbm" role="2OqNvi">
                  <node concept="37vLTw" id="2BHiRxgljod" role="25WWJ7">
                    <ref role="3cqZAo" node="6qi2OtU3u5L" resolve="modelDescriptor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="6qi2OtU3u5G" role="3clFbw">
            <node concept="2OqwBi" id="6qi2OtU3u5H" role="3fr31v">
              <node concept="37vLTw" id="2BHiRxeuO2w" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3ueS" resolve="myListenedModels" />
              </node>
              <node concept="3JPx81" id="6qi2OtU3u5J" role="2OqNvi">
                <node concept="37vLTw" id="2BHiRxgmbAI" role="25WWJ7">
                  <ref role="3cqZAo" node="6qi2OtU3u5L" resolve="modelDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u5L" role="3clF46">
        <property role="TrG5h" value="modelDescriptor" />
        <node concept="3uibUv" id="6qi2OtU3u5M" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QnJaNXoD9J" role="jymVt" />
    <node concept="3clFb_" id="6qi2OtU3u3H" role="jymVt">
      <property role="TrG5h" value="addError" />
      <node concept="3cqZAl" id="6qi2OtU3u3I" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u3J" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u3K" role="3clF47">
        <node concept="2Gpval" id="60wM9d8BEHw" role="3cqZAp">
          <node concept="2GrKxI" id="60wM9d8BEHx" role="2Gsz3X">
            <property role="TrG5h" value="anc" />
          </node>
          <node concept="2OqwBi" id="60wM9d8BEH_" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxglwZw" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3u3S" resolve="node" />
            </node>
            <node concept="z$bX8" id="60wM9d8BEHH" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="60wM9d8BEHz" role="2LFqv$">
            <node concept="3clFbF" id="60wM9d8BEHI" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzd6X" role="3clFbG">
                <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                <node concept="2GrUjf" id="60wM9d8BEHK" role="37wK5m">
                  <ref role="2Gs0qQ" node="60wM9d8BEHx" resolve="anc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u3L" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyyYkE" role="3clFbG">
            <ref role="37wK5l" node="6qi2OtU3u3Y" resolve="addError" />
            <node concept="37vLTw" id="2BHiRxgm2tv" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u3S" resolve="node" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm8hV" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u3U" resolve="errorString" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmjXn" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u3W" resolve="ruleNode" />
            </node>
            <node concept="2ShNRf" id="6qi2OtU3u3Q" role="37wK5m">
              <node concept="1pGfFk" id="6qi2OtU3u3R" role="2ShVmc">
                <ref role="37wK5l" to="zavc:~NodeMessageTarget.&lt;init&gt;()" resolve="NodeMessageTarget" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u3S" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6qi2OtU3u3T" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3u3U" role="3clF46">
        <property role="TrG5h" value="errorString" />
        <node concept="17QB3L" id="6qi2OtU3u3V" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3u3W" role="3clF46">
        <property role="TrG5h" value="ruleNode" />
        <node concept="2AHcQZ" id="5O9MfN8isZG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5O9MfN8isW$" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3u3Y" role="jymVt">
      <property role="TrG5h" value="addError" />
      <node concept="3cqZAl" id="6qi2OtU3u3Z" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u40" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u41" role="3clF47">
        <node concept="3clFbF" id="6ZcaDKWQVkY" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzbR1" role="3clFbG">
            <ref role="37wK5l" node="5SHhrNLGPuZ" resolve="addError" />
            <node concept="37vLTw" id="2BHiRxglRUq" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u5e" resolve="errorNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm_qn" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u5g" resolve="errorString" />
            </node>
            <node concept="37vLTw" id="2BHiRxgmuZt" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u5i" resolve="ruleNode" />
            </node>
            <node concept="37vLTw" id="2BHiRxgm9VY" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3u5k" resolve="messageTarget" />
            </node>
            <node concept="10Nm6u" id="6ZcaDKWQVl9" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u5e" role="3clF46">
        <property role="TrG5h" value="errorNode" />
        <node concept="3Tqbb2" id="6qi2OtU3u5f" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3u5g" role="3clF46">
        <property role="TrG5h" value="errorString" />
        <node concept="17QB3L" id="6qi2OtU3u5h" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3u5i" role="3clF46">
        <property role="TrG5h" value="ruleNode" />
        <node concept="2AHcQZ" id="5O9MfN8itg9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5O9MfN8io5W" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u5k" role="3clF46">
        <property role="TrG5h" value="messageTarget" />
        <node concept="3uibUv" id="6qi2OtU3u5l" role="1tU5fm">
          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="5SHhrNLGPuZ" role="jymVt">
      <property role="TrG5h" value="addError" />
      <node concept="37vLTG" id="5SHhrNLGPv7" role="3clF46">
        <property role="TrG5h" value="errorNode" />
        <node concept="3Tqbb2" id="5SHhrNLGPv8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5SHhrNLGPv9" role="3clF46">
        <property role="TrG5h" value="errorString" />
        <node concept="17QB3L" id="5SHhrNLGPva" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="5SHhrNLGPvb" role="3clF46">
        <property role="TrG5h" value="ruleNode" />
        <node concept="2AHcQZ" id="5O9MfN8it3c" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="5O9MfN8ilep" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="37vLTG" id="5SHhrNLGPvd" role="3clF46">
        <property role="TrG5h" value="messageTarget" />
        <node concept="3uibUv" id="5SHhrNLGPve" role="1tU5fm">
          <ref role="3uigEE" to="zavc:~MessageTarget" resolve="MessageTarget" />
        </node>
      </node>
      <node concept="37vLTG" id="5SHhrNLGPvN" role="3clF46">
        <property role="TrG5h" value="intentionProvider" />
        <node concept="3uibUv" id="5SHhrNLGPxx" role="1tU5fm">
          <ref role="3uigEE" to="2gg1:~QuickFixProvider" resolve="QuickFixProvider" />
        </node>
      </node>
      <node concept="3cqZAl" id="5SHhrNLGPv0" role="3clF45" />
      <node concept="3Tm1VV" id="5SHhrNLGPv1" role="1B3o_S" />
      <node concept="3clFbS" id="5SHhrNLGPv2" role="3clF47">
        <node concept="3cpWs8" id="5SHhrNLGPwp" role="3cqZAp">
          <node concept="3cpWsn" id="5SHhrNLGPwq" role="3cpWs9">
            <property role="TrG5h" value="reporter" />
            <node concept="3uibUv" id="5SHhrNLGPwr" role="1tU5fm">
              <ref role="3uigEE" to="2gg1:~SimpleErrorReporter" resolve="SimpleErrorReporter" />
            </node>
            <node concept="2ShNRf" id="5SHhrNLGPws" role="33vP2m">
              <node concept="1pGfFk" id="5SHhrNLGPwt" role="2ShVmc">
                <ref role="37wK5l" to="2gg1:~SimpleErrorReporter.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,org.jetbrains.mps.openapi.model.SNodeReference,jetbrains.mps.errors.MessageStatus,jetbrains.mps.errors.messageTargets.MessageTarget)" resolve="SimpleErrorReporter" />
                <node concept="37vLTw" id="2BHiRxgl$c5" role="37wK5m">
                  <ref role="3cqZAo" node="5SHhrNLGPv7" resolve="errorNode" />
                </node>
                <node concept="37vLTw" id="2BHiRxgha2f" role="37wK5m">
                  <ref role="3cqZAo" node="5SHhrNLGPv9" resolve="errorString" />
                </node>
                <node concept="37vLTw" id="y18grTUnYX" role="37wK5m">
                  <ref role="3cqZAo" node="5SHhrNLGPvb" resolve="ruleNode" />
                </node>
                <node concept="Rm8GO" id="5SHhrNLGPwy" role="37wK5m">
                  <ref role="1Px2BO" to="2gg1:~MessageStatus" resolve="MessageStatus" />
                  <ref role="Rm8GQ" to="2gg1:~MessageStatus.ERROR" resolve="ERROR" />
                </node>
                <node concept="37vLTw" id="2BHiRxgm80h" role="37wK5m">
                  <ref role="3cqZAo" node="5SHhrNLGPvd" resolve="messageTarget" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5SHhrNLGPxz" role="3cqZAp">
          <node concept="3clFbS" id="5SHhrNLGPx$" role="3clFbx">
            <node concept="3clFbF" id="5SHhrNLGPx4" role="3cqZAp">
              <node concept="2OqwBi" id="5SHhrNLGPxq" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTrp3" role="2Oq$k0">
                  <ref role="3cqZAo" node="5SHhrNLGPwq" resolve="reporter" />
                </node>
                <node concept="liA8E" id="5SHhrNLGPxw" role="2OqNvi">
                  <ref role="37wK5l" to="2gg1:~AbstractErrorReporter.setIntentionProvider(jetbrains.mps.errors.QuickFixProvider):void" resolve="setIntentionProvider" />
                  <node concept="37vLTw" id="2BHiRxgm7dp" role="37wK5m">
                    <ref role="3cqZAo" node="5SHhrNLGPvN" resolve="intentionProvider" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="5SHhrNLGPxW" role="3clFbw">
            <node concept="10Nm6u" id="5SHhrNLGPxZ" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglN6C" role="3uHU7B">
              <ref role="3cqZAo" node="5SHhrNLGPvN" resolve="intentionProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QnJaNXpzTa" role="3cqZAp" />
        <node concept="3clFbF" id="1QnJaNXp$zT" role="3cqZAp">
          <node concept="1rXfSq" id="1QnJaNXp$zS" role="3clFbG">
            <ref role="37wK5l" node="48BjLD9XaLm" resolve="addToMappedSet" />
            <node concept="37vLTw" id="1QnJaNXp_eX" role="37wK5m">
              <ref role="3cqZAo" node="6qi2OtU3udZ" resolve="myNodesToErrors" />
            </node>
            <node concept="37vLTw" id="1QnJaNXp_vx" role="37wK5m">
              <ref role="3cqZAo" node="5SHhrNLGPv7" resolve="errorNode" />
            </node>
            <node concept="37vLTw" id="1QnJaNXp_L4" role="37wK5m">
              <ref role="3cqZAo" node="5SHhrNLGPwq" resolve="reporter" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QnJaNXq4RL" role="jymVt" />
    <node concept="3clFb_" id="6qi2OtU3u96" role="jymVt">
      <property role="TrG5h" value="invalidate" />
      <node concept="3cqZAl" id="6qi2OtU3u97" role="3clF45" />
      <node concept="3Tm6S6" id="1QnJaNXqSWo" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u99" role="3clF47">
        <node concept="3clFbJ" id="6qi2OtU3u9a" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3u9b" role="3clFbx">
            <node concept="3cpWs6" id="6qi2OtU3u9c" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="6qi2OtU3u9d" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxeujP_" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
            </node>
            <node concept="1v1jN8" id="6qi2OtU3u9f" role="2OqNvi" />
          </node>
        </node>
        <node concept="1DcWWT" id="6qi2OtU3u9g" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3u9h" role="1Duv9x">
            <property role="TrG5h" value="toInvalidate" />
            <node concept="3Tqbb2" id="6qi2OtU3u9i" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="2BHiRxeuh$k" role="1DdaDG">
            <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
          </node>
          <node concept="3clFbS" id="6qi2OtU3u9k" role="2LFqv$">
            <node concept="3clFbF" id="6qi2OtU3u9l" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzeWl" role="3clFbG">
                <ref role="37wK5l" node="6qi2OtU3u9s" resolve="invalidateDependency" />
                <node concept="37vLTw" id="3GM_nagTAD$" role="37wK5m">
                  <ref role="3cqZAo" node="6qi2OtU3u9h" resolve="toInvalidate" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u9o" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3u9p" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeugcV" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
            </node>
            <node concept="2EZike" id="6qi2OtU3u9r" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3u9s" role="jymVt">
      <property role="TrG5h" value="invalidateDependency" />
      <node concept="3cqZAl" id="6qi2OtU3u9t" role="3clF45" />
      <node concept="3Tm6S6" id="6qi2OtU3u9u" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u9v" role="3clF47">
        <node concept="3cpWs8" id="1QnJaNXynHy" role="3cqZAp">
          <node concept="3cpWsn" id="1QnJaNXynHz" role="3cpWs9">
            <property role="TrG5h" value="checkedNodes" />
            <node concept="2hMVRd" id="1QnJaNXynHs" role="1tU5fm">
              <node concept="3Tqbb2" id="1QnJaNXynHv" role="2hN53Y" />
            </node>
            <node concept="1rXfSq" id="1QnJaNXynH$" role="33vP2m">
              <ref role="37wK5l" node="1QnJaNXtnNe" resolve="removeDependencyFromMapping" />
              <node concept="37vLTw" id="1QnJaNXynH_" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u9P" resolve="dependency" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QnJaNXyoVi" role="3cqZAp">
          <node concept="3clFbS" id="1QnJaNXyoVl" role="3clFbx">
            <node concept="1DcWWT" id="1QnJaNXyAlb" role="3cqZAp">
              <node concept="3cpWsn" id="1QnJaNXyAlc" role="1Duv9x">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1QnJaNXyAld" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="1QnJaNXyAle" role="2LFqv$">
                <node concept="3SKdUt" id="4U7doBye6ln" role="3cqZAp">
                  <node concept="3SKdUq" id="4U7doByee9g" role="3SKWNk">
                    <property role="3SKdUp" value="avoid searching for _already_removed_ node later in check()" />
                  </node>
                </node>
                <node concept="3clFbJ" id="4U7doBydujv" role="3cqZAp">
                  <node concept="3clFbS" id="4U7doBydujy" role="3clFbx">
                    <node concept="3clFbF" id="6qi2OtU3u5R" role="3cqZAp">
                      <node concept="2OqwBi" id="6qi2OtU3u5S" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxeuDRG" role="2Oq$k0">
                          <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
                        </node>
                        <node concept="TSZUe" id="2UMCgvoqpbi" role="2OqNvi">
                          <node concept="37vLTw" id="1QnJaNXyWAz" role="25WWJ7">
                            <ref role="3cqZAo" node="1QnJaNXyAlc" resolve="node" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="4U7doBydWb8" role="3clFbw">
                    <node concept="10Nm6u" id="4U7doBydWcq" role="3uHU7w" />
                    <node concept="2OqwBi" id="4U7doBydFEQ" role="3uHU7B">
                      <node concept="37vLTw" id="1QnJaNXyVe_" role="2Oq$k0">
                        <ref role="3cqZAo" node="1QnJaNXyAlc" resolve="node" />
                      </node>
                      <node concept="I4A8Y" id="4U7doBydP$g" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6qi2OtU3u5W" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3u5X" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxeukwU" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3udZ" resolve="myNodesToErrors" />
                    </node>
                    <node concept="kI3uX" id="6qi2OtU3u5Z" role="2OqNvi">
                      <node concept="37vLTw" id="1QnJaNXyXGS" role="kIiFs">
                        <ref role="3cqZAo" node="1QnJaNXyAlc" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1QnJaNXyI7c" role="1DdaDG">
                <ref role="3cqZAo" node="1QnJaNXynHz" resolve="checkedNodes" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1QnJaNXypFs" role="3clFbw">
            <node concept="10Nm6u" id="1QnJaNXypI2" role="3uHU7w" />
            <node concept="37vLTw" id="1QnJaNXyphz" role="3uHU7B">
              <ref role="3cqZAo" node="1QnJaNXynHz" resolve="checkedNodes" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u9P" role="3clF46">
        <property role="TrG5h" value="dependency" />
        <node concept="3Tqbb2" id="6qi2OtU3u9Q" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3u6L" role="jymVt">
      <property role="TrG5h" value="check" />
      <node concept="10P_77" id="6qi2OtU3u6M" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3u6N" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u6O" role="3clF47">
        <node concept="3SKdUt" id="6qi2OtU3u6P" role="3cqZAp">
          <node concept="3SKdUq" id="6qi2OtU3u6Q" role="3SKWNk">
            <property role="3SKdUp" value="returns whether state has been changed after check" />
          </node>
        </node>
        <node concept="3clFbJ" id="7S_ufR2Uj1f" role="3cqZAp">
          <node concept="3clFbS" id="7S_ufR2Uj1g" role="3clFbx">
            <node concept="3cpWs6" id="7S_ufR2Uj1G" role="3cqZAp">
              <node concept="3clFbT" id="7S_ufR2Uj1I" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7S_ufR2Uj1C" role="3clFbw">
            <node concept="10Nm6u" id="7S_ufR2Uj1F" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxghiWN" role="3uHU7B">
              <ref role="3cqZAo" node="6qi2OtU3u8y" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u6R" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyzeDW" role="3clFbG">
            <ref role="37wK5l" node="6qi2OtU3u96" resolve="invalidate" />
          </node>
        </node>
        <node concept="3clFbJ" id="6qi2OtU3u6T" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3u6U" role="3clFbx">
            <node concept="3cpWs6" id="6qi2OtU3u6V" role="3cqZAp">
              <node concept="3clFbT" id="6qi2OtU3u6W" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6qi2OtU3u6X" role="3clFbw">
            <node concept="2OqwBi" id="6qi2OtU3u6Y" role="3uHU7w">
              <node concept="37vLTw" id="2BHiRxeuvHz" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
              </node>
              <node concept="1v1jN8" id="6qi2OtU3u70" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuGya" role="3uHU7B">
              <ref role="3cqZAo" node="6qi2OtU3ueZ" resolve="myCheckedRoot" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QnJaNXIQ4e" role="3cqZAp">
          <node concept="3cpWsn" id="1QnJaNXIQ4h" role="3cpWs9">
            <property role="TrG5h" value="nodesToCheck" />
            <node concept="3O6Q9H" id="1QnJaNXIQ4a" role="1tU5fm">
              <node concept="3Tqbb2" id="1QnJaNXIYu0" role="3O5elw" />
            </node>
            <node concept="2ShNRf" id="1QnJaNXIY$T" role="33vP2m">
              <node concept="2Jqq0_" id="1QnJaNXIY$F" role="2ShVmc">
                <node concept="3Tqbb2" id="1QnJaNXIY$G" role="HW$YZ" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QnJaNXJ9ij" role="3cqZAp">
          <node concept="2OqwBi" id="1QnJaNXJi7n" role="3clFbG">
            <node concept="37vLTw" id="1QnJaNXJ9ii" role="2Oq$k0">
              <ref role="3cqZAo" node="1QnJaNXIQ4h" resolve="nodesToCheck" />
            </node>
            <node concept="2Ke9KJ" id="1QnJaNXJlWq" role="2OqNvi">
              <node concept="37vLTw" id="1QnJaNXJlZO" role="25WWJ7">
                <ref role="3cqZAo" node="6qi2OtU3u8y" resolve="root" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="1QnJaNXJvHk" role="3cqZAp">
          <node concept="3clFbS" id="1QnJaNXJvHm" role="2LFqv$">
            <node concept="3cpWs8" id="1QnJaNXJGgs" role="3cqZAp">
              <node concept="3cpWsn" id="1QnJaNXJGgt" role="3cpWs9">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1QnJaNXJGga" role="1tU5fm" />
                <node concept="2OqwBi" id="1QnJaNXJGgu" role="33vP2m">
                  <node concept="37vLTw" id="1QnJaNXJGgv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QnJaNXIQ4h" resolve="nodesToCheck" />
                  </node>
                  <node concept="2Kt2Hk" id="1QnJaNXJGgw" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="53J1IcJZTZq" role="3cqZAp">
              <node concept="3clFbS" id="53J1IcJZTZs" role="3clFbx">
                <node concept="3N13vt" id="53J1IcJZUiV" role="3cqZAp" />
              </node>
              <node concept="2OqwBi" id="4RwoLpFRtjy" role="3clFbw">
                <node concept="37vLTw" id="4RwoLpFRtfi" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QnJaNXJGgt" resolve="node" />
                </node>
                <node concept="1mIQ4w" id="4RwoLpFRtsW" role="2OqNvi">
                  <node concept="chp4Y" id="4RwoLpFRtt_" role="cj9EA">
                    <ref role="cht4Q" to="tpck:53J1IcJV913" resolve="ISkipConstraintsChecking" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1QnJaNXJH50" role="3cqZAp">
              <node concept="22lmx$" id="1QnJaNXJH51" role="3clFbw">
                <node concept="2OqwBi" id="1QnJaNXJH52" role="3uHU7w">
                  <node concept="37vLTw" id="1QnJaNXJH53" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
                  </node>
                  <node concept="3JPx81" id="1QnJaNXJH54" role="2OqNvi">
                    <node concept="37vLTw" id="1QnJaNXJH55" role="25WWJ7">
                      <ref role="3cqZAo" node="1QnJaNXJGgt" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="1QnJaNXJH56" role="3uHU7B">
                  <node concept="37vLTw" id="1QnJaNXJH57" role="3fr31v">
                    <ref role="3cqZAo" node="6qi2OtU3ueZ" resolve="myCheckedRoot" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="1QnJaNXJH58" role="3clFbx">
                <node concept="2GUZhq" id="1QnJaNXJH59" role="3cqZAp">
                  <node concept="3clFbS" id="1QnJaNXJH5a" role="2GV8ay">
                    <node concept="3clFbF" id="1QnJaNXJH5b" role="3cqZAp">
                      <node concept="37vLTI" id="1QnJaNXJH5c" role="3clFbG">
                        <node concept="37vLTw" id="1QnJaNXJH5d" role="37vLTx">
                          <ref role="3cqZAo" node="1QnJaNXJGgt" resolve="node" />
                        </node>
                        <node concept="37vLTw" id="1QnJaNXJH5e" role="37vLTJ">
                          <ref role="3cqZAo" node="6qi2OtU3uf3" resolve="myCurrentNode" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1QnJaNXJH5f" role="3cqZAp">
                      <node concept="1rXfSq" id="1QnJaNXJH5g" role="3clFbG">
                        <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                        <node concept="37vLTw" id="1QnJaNXJH5h" role="37wK5m">
                          <ref role="3cqZAo" node="1QnJaNXJGgt" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="1DcWWT" id="1QnJaNXJH5i" role="3cqZAp">
                      <node concept="3cpWsn" id="1QnJaNXJH5j" role="1Duv9x">
                        <property role="TrG5h" value="checker" />
                        <node concept="3uibUv" id="1QnJaNXJH5k" role="1tU5fm">
                          <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1QnJaNXJH5l" role="1DdaDG">
                        <ref role="3cqZAo" node="6qi2OtU3u8$" resolve="checkers" />
                      </node>
                      <node concept="3clFbS" id="1QnJaNXJH5m" role="2LFqv$">
                        <node concept="3clFbF" id="1QnJaNXJH5n" role="3cqZAp">
                          <node concept="2OqwBi" id="1QnJaNXJH5o" role="3clFbG">
                            <node concept="37vLTw" id="1QnJaNXJH5p" role="2Oq$k0">
                              <ref role="3cqZAo" node="1QnJaNXJH5j" resolve="checker" />
                            </node>
                            <node concept="liA8E" id="1QnJaNXJH5q" role="2OqNvi">
                              <ref role="37wK5l" node="6qi2OtU3u$d" resolve="checkNode" />
                              <node concept="37vLTw" id="1QnJaNXJH5r" role="37wK5m">
                                <ref role="3cqZAo" node="1QnJaNXJGgt" resolve="node" />
                              </node>
                              <node concept="Xjq3P" id="1QnJaNXJH5s" role="37wK5m" />
                              <node concept="37vLTw" id="1QnJaNXJH5t" role="37wK5m">
                                <ref role="3cqZAo" node="6qi2OtU3u8B" resolve="repository" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1QnJaNXJH5u" role="2GVbov">
                    <node concept="3clFbF" id="1QnJaNXJH5v" role="3cqZAp">
                      <node concept="37vLTI" id="1QnJaNXJH5w" role="3clFbG">
                        <node concept="10Nm6u" id="1QnJaNXJH5x" role="37vLTx" />
                        <node concept="37vLTw" id="1QnJaNXJH5y" role="37vLTJ">
                          <ref role="3cqZAo" node="6qi2OtU3uf3" resolve="myCurrentNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1QnJaNXK93A" role="3cqZAp">
              <node concept="2OqwBi" id="1QnJaNXKabt" role="3clFbG">
                <node concept="37vLTw" id="1QnJaNXK93_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QnJaNXIQ4h" resolve="nodesToCheck" />
                </node>
                <node concept="X8dFx" id="1QnJaNXKdcy" role="2OqNvi">
                  <node concept="2OqwBi" id="1QnJaNXKeDB" role="25WWJ7">
                    <node concept="37vLTw" id="1QnJaNXKeAB" role="2Oq$k0">
                      <ref role="3cqZAo" node="1QnJaNXJGgt" resolve="node" />
                    </node>
                    <node concept="32TBzR" id="1QnJaNXKpin" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1QnJaNXJCFU" role="2$JKZa">
            <node concept="37vLTw" id="1QnJaNXJCg5" role="2Oq$k0">
              <ref role="3cqZAo" node="1QnJaNXIQ4h" resolve="nodesToCheck" />
            </node>
            <node concept="3GX2aA" id="1QnJaNXJDW4" role="2OqNvi" />
          </node>
        </node>
        <node concept="3SKdUt" id="1PwnxqC4pzL" role="3cqZAp">
          <node concept="3SKdUq" id="1PwnxqC4p_R" role="3SKWNk">
            <property role="3SKdUp" value="traversed the whole root, should have been removed all invalid nodes" />
          </node>
        </node>
        <node concept="3clFbF" id="1PwnxqC4KcX" role="3cqZAp">
          <node concept="2OqwBi" id="1PwnxqC4Pqg" role="3clFbG">
            <node concept="37vLTw" id="1PwnxqC4KcW" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
            </node>
            <node concept="2EZike" id="1PwnxqC4XaR" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3u8s" role="3cqZAp">
          <node concept="37vLTI" id="6qi2OtU3u8t" role="3clFbG">
            <node concept="3clFbT" id="6qi2OtU3u8u" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuv2l" role="37vLTJ">
              <ref role="3cqZAo" node="6qi2OtU3ueZ" resolve="myCheckedRoot" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6se4BTU3StD" role="3cqZAp">
          <node concept="37vLTI" id="6se4BTU403J" role="3clFbG">
            <node concept="3clFbT" id="6se4BTU406e" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="6se4BTU3StC" role="37vLTJ">
              <ref role="3cqZAo" node="6se4BTU3AR5" resolve="myUpdateInspector" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6qi2OtU3u8w" role="3cqZAp">
          <node concept="3clFbT" id="6qi2OtU3u8x" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u8y" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3Tqbb2" id="6qi2OtU3u8z" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3u8$" role="3clF46">
        <property role="TrG5h" value="checkers" />
        <node concept="2hMVRd" id="6qi2OtU3u8_" role="1tU5fm">
          <node concept="3uibUv" id="6qi2OtU3u8A" role="2hN53Y">
            <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3u8B" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VcCO4cNtfw" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6se4BTU212x" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="checkInspector" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="3clFbS" id="6se4BTU212$" role="3clF47">
        <node concept="3clFbJ" id="6se4BTU4Kn_" role="3cqZAp">
          <node concept="3clFbS" id="6se4BTU4KnC" role="3clFbx">
            <node concept="3clFbF" id="6se4BTU4ZTe" role="3cqZAp">
              <node concept="37vLTI" id="6se4BTU503y" role="3clFbG">
                <node concept="3clFbT" id="6se4BTU506P" role="37vLTx">
                  <property role="3clFbU" value="false" />
                </node>
                <node concept="37vLTw" id="6se4BTU4ZTd" role="37vLTJ">
                  <ref role="3cqZAo" node="6se4BTU3AR5" resolve="myUpdateInspector" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6se4BTU50bI" role="3cqZAp">
              <node concept="3clFbT" id="6se4BTU58bN" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="6se4BTU4Rgv" role="3clFbw">
            <ref role="3cqZAo" node="6se4BTU3AR5" resolve="myUpdateInspector" />
          </node>
        </node>
        <node concept="3cpWs6" id="6se4BTU485f" role="3cqZAp">
          <node concept="3clFbT" id="6se4BTU4Rz3" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6se4BTU1SWi" role="1B3o_S" />
      <node concept="10P_77" id="6se4BTU212v" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6qi2OtU3u8D" role="jymVt">
      <property role="TrG5h" value="getErrors" />
      <node concept="2hMVRd" id="6qi2OtU3u8E" role="3clF45">
        <node concept="3uibUv" id="6qi2OtU3u8F" role="2hN53Y">
          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6qi2OtU3u8G" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u8H" role="3clF47">
        <node concept="3cpWs8" id="6qi2OtU3u8I" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3u8J" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="6qi2OtU3u8K" role="1tU5fm">
              <node concept="3uibUv" id="6qi2OtU3u8L" role="2hN53Y">
                <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
              </node>
            </node>
            <node concept="2ShNRf" id="6qi2OtU3u8M" role="33vP2m">
              <node concept="1pGfFk" id="6qi2OtU3u8N" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(int)" resolve="HashSet" />
                <node concept="3uibUv" id="6qi2OtU3u8O" role="1pMfVU">
                  <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
                </node>
                <node concept="3cmrfG" id="6qi2OtU3u8P" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6qi2OtU3u8Q" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3u8R" role="1Duv9x">
            <property role="TrG5h" value="errorReporters" />
            <node concept="2hMVRd" id="1QnJaNX_T8F" role="1tU5fm">
              <node concept="3uibUv" id="1QnJaNXA9M5" role="2hN53Y">
                <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6qi2OtU3u8T" role="2LFqv$">
            <node concept="3clFbF" id="6qi2OtU3u8U" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3u8V" role="3clFbG">
                <node concept="37vLTw" id="3GM_nagTsVy" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3u8J" resolve="result" />
                </node>
                <node concept="X8dFx" id="2UMCgvoqpbx" role="2OqNvi">
                  <node concept="37vLTw" id="1QnJaNXAbk6" role="25WWJ7">
                    <ref role="3cqZAo" node="6qi2OtU3u8R" resolve="errorReporters" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6qi2OtU3u91" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxeukxf" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3udZ" resolve="myNodesToErrors" />
            </node>
            <node concept="T8wYR" id="1QnJaNX$N6v" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="6qi2OtU3u94" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTAQf" role="3cqZAk">
            <ref role="3cqZAo" node="6qi2OtU3u8J" resolve="result" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3ubu" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3cqZAl" id="6qi2OtU3ubv" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3ubw" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3ubx" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3uby" role="3cqZAp">
          <node concept="37vLTI" id="6qi2OtU3ubz" role="3clFbG">
            <node concept="3clFbT" id="6qi2OtU3ub$" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="37vLTw" id="2BHiRxeuIxL" role="37vLTJ">
              <ref role="3cqZAo" node="6qi2OtU3ueZ" resolve="myCheckedRoot" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubA" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ubB" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeugbX" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
            </node>
            <node concept="2EZike" id="6qi2OtU3ubD" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubE" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ubF" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuKks" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
            </node>
            <node concept="2EZike" id="6qi2OtU3ubH" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubI" role="3cqZAp">
          <node concept="37vLTI" id="6qi2OtU3ubJ" role="3clFbG">
            <node concept="10Nm6u" id="6qi2OtU3ubK" role="37vLTx" />
            <node concept="37vLTw" id="2BHiRxeuRQy" role="37vLTJ">
              <ref role="3cqZAo" node="6qi2OtU3uf3" resolve="myCurrentNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubM" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ubN" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunaC" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uea" resolve="myDependenciesToNodes" />
            </node>
            <node concept="1yHZxX" id="6qi2OtU3ubP" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubQ" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ubR" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeujP6" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uel" resolve="myNodesToDependecies" />
            </node>
            <node concept="1yHZxX" id="6qi2OtU3ubT" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubU" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ubV" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuG$3" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3udZ" resolve="myNodesToErrors" />
            </node>
            <node concept="1yHZxX" id="6qi2OtU3ubX" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3ubY" role="3cqZAp">
          <node concept="1rXfSq" id="4hiugqyz8TC" role="3clFbG">
            <ref role="37wK5l" node="6qi2OtU3u1U" resolve="removeModelListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QnJaNXHZHA" role="jymVt" />
    <node concept="3clFb_" id="6qi2OtU3u9R" role="jymVt">
      <property role="TrG5h" value="processEvent" />
      <node concept="3cqZAl" id="6qi2OtU3u9S" role="3clF45" />
      <node concept="3Tm6S6" id="1QnJaNXFBvC" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3u9U" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3u9V" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3u9W" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeug6L" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqpbD" role="2OqNvi">
              <node concept="2OqwBi" id="2UMCgvoqpbE" role="25WWJ7">
                <node concept="37vLTw" id="2BHiRxgmGhP" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uae" resolve="event" />
                </node>
                <node concept="liA8E" id="2UMCgvoqpbG" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelChildEvent.getParent():org.jetbrains.mps.openapi.model.SNode" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6qi2OtU3ua2" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3ua3" role="3clFbx">
            <node concept="3clFbF" id="6qi2OtU3ua4" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3ua5" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeufS6" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
                </node>
                <node concept="TSZUe" id="2UMCgvoqpb_" role="2OqNvi">
                  <node concept="2OqwBi" id="2UMCgvoqpbA" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxgm6L0" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uae" resolve="event" />
                    </node>
                    <node concept="liA8E" id="2UMCgvoqpbC" role="2OqNvi">
                      <ref role="37wK5l" to="j9co:~SModelChildEvent.getChild():org.jetbrains.mps.openapi.model.SNode" resolve="getChild" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6qi2OtU3uab" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxglB45" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uae" resolve="event" />
            </node>
            <node concept="liA8E" id="6qi2OtU3uad" role="2OqNvi">
              <ref role="37wK5l" to="j9co:~SModelChildEvent.isRemoved():boolean" resolve="isRemoved" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="ygyNQBDuOy" role="3cqZAp">
          <node concept="3clFbS" id="ygyNQBDuOz" role="3clFbx">
            <node concept="3clFbF" id="ygyNQBDuOG" role="3cqZAp">
              <node concept="2OqwBi" id="ygyNQBDuOI" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeunb2" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
                </node>
                <node concept="X8dFx" id="ygyNQBDuOM" role="2OqNvi">
                  <node concept="2OqwBi" id="WXD5HGSh3G" role="25WWJ7">
                    <node concept="1eOMI4" id="WXD5HGSh3H" role="2Oq$k0">
                      <node concept="10QFUN" id="WXD5HGSh3I" role="1eOMHV">
                        <node concept="2OqwBi" id="WXD5HGSh3J" role="10QFUP">
                          <node concept="37vLTw" id="2BHiRxghiEb" role="2Oq$k0">
                            <ref role="3cqZAo" node="6qi2OtU3uae" resolve="event" />
                          </node>
                          <node concept="liA8E" id="WXD5HGSh3L" role="2OqNvi">
                            <ref role="37wK5l" to="j9co:~SModelChildEvent.getChild():org.jetbrains.mps.openapi.model.SNode" resolve="getChild" />
                          </node>
                        </node>
                        <node concept="3Tqbb2" id="WXD5HGSh3M" role="10QFUM" />
                      </node>
                    </node>
                    <node concept="2Rf3mk" id="WXD5HGSh3N" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="ygyNQBDuP0" role="3cqZAp">
              <node concept="2OqwBi" id="ygyNQBDuP3" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxeu_6r" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uew" resolve="myInvalidNodes" />
                </node>
                <node concept="TSZUe" id="ygyNQBDuP7" role="2OqNvi">
                  <node concept="2OqwBi" id="ygyNQBDuPa" role="25WWJ7">
                    <node concept="37vLTw" id="2BHiRxgmyxZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3uae" resolve="event" />
                    </node>
                    <node concept="liA8E" id="ygyNQBDuPe" role="2OqNvi">
                      <ref role="37wK5l" to="j9co:~SModelChildEvent.getChild():org.jetbrains.mps.openapi.model.SNode" resolve="getChild" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="ygyNQBDuOB" role="3clFbw">
            <node concept="37vLTw" id="2BHiRxgm612" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3uae" resolve="event" />
            </node>
            <node concept="liA8E" id="ygyNQBDuOF" role="2OqNvi">
              <ref role="37wK5l" to="j9co:~SModelChildEvent.isAdded():boolean" resolve="isAdded" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uae" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6qi2OtU3uaf" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uag" role="jymVt">
      <property role="TrG5h" value="processEvent" />
      <node concept="3cqZAl" id="6qi2OtU3uah" role="3clF45" />
      <node concept="3Tm6S6" id="1QnJaNXFKrK" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uaj" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3uak" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ual" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeunmA" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqpbH" role="2OqNvi">
              <node concept="2OqwBi" id="2UMCgvoqpbI" role="25WWJ7">
                <node concept="2OqwBi" id="2UMCgvoqpbJ" role="2Oq$k0">
                  <node concept="37vLTw" id="2BHiRxgl1Rt" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uat" resolve="event" />
                  </node>
                  <node concept="liA8E" id="2UMCgvoqpbL" role="2OqNvi">
                    <ref role="37wK5l" to="j9co:~SModelReferenceEvent.getReference():org.jetbrains.mps.openapi.model.SReference" resolve="getReference" />
                  </node>
                </node>
                <node concept="liA8E" id="2UMCgvoqpbM" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getSourceNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSourceNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uat" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6qi2OtU3uau" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uav" role="jymVt">
      <property role="TrG5h" value="processEvent" />
      <node concept="3cqZAl" id="6qi2OtU3uaw" role="3clF45" />
      <node concept="3Tm6S6" id="1QnJaNXFU8a" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uay" role="3clF47">
        <node concept="3clFbF" id="6qi2OtU3uaz" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3ua$" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuoZL" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3ueB" resolve="myDependenciesToInvalidate" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqpbN" role="2OqNvi">
              <node concept="2OqwBi" id="2UMCgvoqpbO" role="25WWJ7">
                <node concept="37vLTw" id="2BHiRxgl00f" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3uaE" resolve="event" />
                </node>
                <node concept="liA8E" id="2UMCgvoqpbQ" role="2OqNvi">
                  <ref role="37wK5l" to="j9co:~SModelPropertyEvent.getNode():org.jetbrains.mps.openapi.model.SNode" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uaE" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6qi2OtU3uaF" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3uc0" role="jymVt">
      <property role="TrG5h" value="runCheckingAction" />
      <node concept="16syzq" id="6qi2OtU3uc1" role="3clF45">
        <ref role="16sUi3" node="6qi2OtU3udY" resolve="Result" />
      </node>
      <node concept="3Tm1VV" id="6qi2OtU3uc2" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3uc3" role="3clF47">
        <node concept="3cpWs8" id="6qi2OtU3uc4" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3uc5" role="3cpWs9">
            <property role="TrG5h" value="accessedNodes" />
            <property role="3TUv4t" value="true" />
            <node concept="2hMVRd" id="6qi2OtU3uc6" role="1tU5fm">
              <node concept="3Tqbb2" id="6qi2OtU3uc7" role="2hN53Y" />
            </node>
            <node concept="2ShNRf" id="6qi2OtU3uc8" role="33vP2m">
              <node concept="1pGfFk" id="6qi2OtU3uc9" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3Tqbb2" id="6qi2OtU3uca" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6qi2OtU3ucb" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3ucc" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <property role="3TUv4t" value="true" />
            <node concept="10Q1$e" id="6qi2OtU3ucd" role="1tU5fm">
              <node concept="3uibUv" id="6qi2OtU3uce" role="10Q1$1">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="6qi2OtU3ucf" role="33vP2m">
              <node concept="3$_iS1" id="6qi2OtU3ucg" role="2ShVmc">
                <node concept="3$GHV9" id="6qi2OtU3uch" role="3$GQph">
                  <node concept="3cmrfG" id="6qi2OtU3uci" role="3$I4v7">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
                <node concept="3uibUv" id="6qi2OtU3ucj" role="3$_nBY">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="6qi2OtU3uck" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3ucl" role="2GV8ay">
            <node concept="3cpWs8" id="6qi2OtU3ucm" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3ucn" role="3cpWs9">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="6qi2OtU3uco" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~AbstractNodesReadListener" resolve="AbstractNodesReadListener" />
                </node>
                <node concept="2ShNRf" id="6qi2OtU3ucp" role="33vP2m">
                  <node concept="YeOm9" id="6qi2OtU3ucq" role="2ShVmc">
                    <node concept="1Y3b0j" id="6qi2OtU3ucr" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="w1kc:~AbstractNodesReadListener.&lt;init&gt;()" resolve="AbstractNodesReadListener" />
                      <ref role="1Y3XeK" to="w1kc:~AbstractNodesReadListener" resolve="AbstractNodesReadListener" />
                      <node concept="3Tm1VV" id="6qi2OtU3ucs" role="1B3o_S" />
                      <node concept="3clFb_" id="6qi2OtU3uct" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="nodeUnclassifiedReadAccess" />
                        <node concept="3Tm1VV" id="6qi2OtU3ucu" role="1B3o_S" />
                        <node concept="3cqZAl" id="6qi2OtU3ucv" role="3clF45" />
                        <node concept="37vLTG" id="6qi2OtU3ucw" role="3clF46">
                          <property role="TrG5h" value="node" />
                          <node concept="3uibUv" id="6qi2OtU3ucx" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6qi2OtU3ucy" role="3clF47">
                          <node concept="3clFbF" id="6qi2OtU3ucz" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3uc$" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTApf" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
                              </node>
                              <node concept="TSZUe" id="2UMCgvoqpbT" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgll8S" role="25WWJ7">
                                  <ref role="3cqZAo" node="6qi2OtU3ucw" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_sSIk" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="6qi2OtU3ucC" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="nodePropertyReadAccess" />
                        <node concept="3Tm1VV" id="6qi2OtU3ucD" role="1B3o_S" />
                        <node concept="3cqZAl" id="6qi2OtU3ucE" role="3clF45" />
                        <node concept="37vLTG" id="6qi2OtU3ucF" role="3clF46">
                          <property role="TrG5h" value="node" />
                          <node concept="3uibUv" id="6qi2OtU3ucG" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="6qi2OtU3ucH" role="3clF46">
                          <property role="TrG5h" value="name" />
                          <node concept="17QB3L" id="3MUxWWhZQCu" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="6qi2OtU3ucJ" role="3clF46">
                          <property role="TrG5h" value="value" />
                          <node concept="17QB3L" id="3MUxWWhZQCv" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="6qi2OtU3ucL" role="3clF47">
                          <node concept="3clFbF" id="6qi2OtU3ucM" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3ucN" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTtwK" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
                              </node>
                              <node concept="TSZUe" id="2UMCgvoqpbV" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgm9K6" role="25WWJ7">
                                  <ref role="3cqZAo" node="6qi2OtU3ucF" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_sSIn" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="6qi2OtU3ucR" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="nodeReferentReadAccess" />
                        <node concept="3Tm1VV" id="6qi2OtU3ucS" role="1B3o_S" />
                        <node concept="3cqZAl" id="6qi2OtU3ucT" role="3clF45" />
                        <node concept="37vLTG" id="6qi2OtU3ucU" role="3clF46">
                          <property role="TrG5h" value="node" />
                          <node concept="3uibUv" id="6qi2OtU3ucV" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="6qi2OtU3ucW" role="3clF46">
                          <property role="TrG5h" value="role" />
                          <node concept="17QB3L" id="3MUxWWhZQCw" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="6qi2OtU3ucY" role="3clF46">
                          <property role="TrG5h" value="referent" />
                          <node concept="3uibUv" id="6qi2OtU3ucZ" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6qi2OtU3ud0" role="3clF47">
                          <node concept="3clFbF" id="6qi2OtU3ud1" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3ud2" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTtMJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
                              </node>
                              <node concept="TSZUe" id="2UMCgvoqpbX" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgm5KJ" role="25WWJ7">
                                  <ref role="3cqZAo" node="6qi2OtU3ucU" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6qi2OtU3ud6" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3ud7" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTyYy" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
                              </node>
                              <node concept="TSZUe" id="2UMCgvoqpbZ" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgm6vP" role="25WWJ7">
                                  <ref role="3cqZAo" node="6qi2OtU3ucY" resolve="referent" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_sSIl" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="3clFb_" id="6qi2OtU3udb" role="jymVt">
                        <property role="1EzhhJ" value="false" />
                        <property role="TrG5h" value="nodeChildReadAccess" />
                        <node concept="3Tm1VV" id="6qi2OtU3udc" role="1B3o_S" />
                        <node concept="3cqZAl" id="6qi2OtU3udd" role="3clF45" />
                        <node concept="37vLTG" id="6qi2OtU3ude" role="3clF46">
                          <property role="TrG5h" value="node" />
                          <node concept="3uibUv" id="6qi2OtU3udf" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="6qi2OtU3udg" role="3clF46">
                          <property role="TrG5h" value="role" />
                          <node concept="17QB3L" id="3MUxWWhZQCx" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="6qi2OtU3udi" role="3clF46">
                          <property role="TrG5h" value="child" />
                          <node concept="3uibUv" id="6qi2OtU3udj" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6qi2OtU3udk" role="3clF47">
                          <node concept="3clFbF" id="6qi2OtU3udl" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3udm" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTBsE" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
                              </node>
                              <node concept="TSZUe" id="2UMCgvoqpc1" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgm0Kl" role="25WWJ7">
                                  <ref role="3cqZAo" node="6qi2OtU3ude" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="6qi2OtU3udq" role="3cqZAp">
                            <node concept="2OqwBi" id="6qi2OtU3udr" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTA4P" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
                              </node>
                              <node concept="TSZUe" id="2UMCgvoqpc3" role="2OqNvi">
                                <node concept="37vLTw" id="2BHiRxgmt0s" role="25WWJ7">
                                  <ref role="3cqZAo" node="6qi2OtU3udi" resolve="child" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="3tYsUK_sSIm" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6qi2OtU3udv" role="3cqZAp">
              <node concept="2YIFZM" id="6qi2OtU3udw" role="3clFbG">
                <ref role="1Pybhc" to="w1kc:~NodeReadEventsCaster" resolve="NodeReadEventsCaster" />
                <ref role="37wK5l" to="w1kc:~NodeReadEventsCaster.setNodesReadListener(jetbrains.mps.smodel.INodesReadListener):void" resolve="setNodesReadListener" />
                <node concept="37vLTw" id="3GM_nagTvdn" role="37wK5m">
                  <ref role="3cqZAo" node="6qi2OtU3ucn" resolve="listener" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6qi2OtU3udy" role="3cqZAp">
              <node concept="37vLTI" id="6qi2OtU3udz" role="3clFbG">
                <node concept="2OqwBi" id="6qi2OtU3ud$" role="37vLTx">
                  <node concept="37vLTw" id="2BHiRxgmKqZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3udV" resolve="action" />
                  </node>
                  <node concept="1Bd96e" id="6qi2OtU3udA" role="2OqNvi" />
                </node>
                <node concept="AH0OO" id="6qi2OtU3udB" role="37vLTJ">
                  <node concept="3cmrfG" id="6qi2OtU3udC" role="AHEQo">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="37vLTw" id="3GM_nagTrLO" role="AHHXb">
                    <ref role="3cqZAo" node="6qi2OtU3ucc" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6qi2OtU3udE" role="2GVbov">
            <node concept="3clFbF" id="6qi2OtU3udF" role="3cqZAp">
              <node concept="2YIFZM" id="6qi2OtU3udG" role="3clFbG">
                <ref role="37wK5l" to="w1kc:~NodeReadEventsCaster.removeNodesReadListener():void" resolve="removeNodesReadListener" />
                <ref role="1Pybhc" to="w1kc:~NodeReadEventsCaster" resolve="NodeReadEventsCaster" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6qi2OtU3udH" role="3cqZAp">
          <node concept="3clFbS" id="6qi2OtU3udI" role="2LFqv$">
            <node concept="3clFbF" id="6qi2OtU3udJ" role="3cqZAp">
              <node concept="1rXfSq" id="4hiugqyzjXR" role="3clFbG">
                <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                <node concept="37vLTw" id="3GM_nagTw9B" role="37wK5m">
                  <ref role="3cqZAo" node="6qi2OtU3udM" resolve="accessedNode" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6qi2OtU3udM" role="1Duv9x">
            <property role="TrG5h" value="accessedNode" />
            <node concept="3Tqbb2" id="6qi2OtU3udN" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="3GM_nagTtX4" role="1DdaDG">
            <ref role="3cqZAo" node="6qi2OtU3uc5" resolve="accessedNodes" />
          </node>
        </node>
        <node concept="3cpWs6" id="6qi2OtU3udP" role="3cqZAp">
          <node concept="10QFUN" id="6qi2OtU3udQ" role="3cqZAk">
            <node concept="16syzq" id="6qi2OtU3udR" role="10QFUM">
              <ref role="16sUi3" node="6qi2OtU3udY" resolve="Result" />
            </node>
            <node concept="AH0OO" id="6qi2OtU3udS" role="10QFUP">
              <node concept="3cmrfG" id="6qi2OtU3udT" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="3GM_nagTAWi" role="AHHXb">
                <ref role="3cqZAo" node="6qi2OtU3ucc" resolve="result" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3udV" role="3clF46">
        <property role="TrG5h" value="action" />
        <node concept="1ajhzC" id="6qi2OtU3udW" role="1tU5fm">
          <node concept="16syzq" id="6qi2OtU3udX" role="1ajl9A">
            <ref role="16sUi3" node="6qi2OtU3udY" resolve="Result" />
          </node>
        </node>
      </node>
      <node concept="16euLQ" id="6qi2OtU3udY" role="16eVyc">
        <property role="TrG5h" value="Result" />
      </node>
    </node>
    <node concept="312cEu" id="6qi2OtU3u0n" role="jymVt">
      <property role="TrG5h" value="MyModelListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="6qi2OtU3u0o" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3u0t" role="1zkMxy">
        <ref role="3uigEE" to="w1kc:~SModelAdapter" resolve="SModelAdapter" />
      </node>
      <node concept="3clFb_" id="6qi2OtU3u0u" role="jymVt">
        <property role="TrG5h" value="beforeModelDisposed" />
        <node concept="3Tm1VV" id="6qi2OtU3u0v" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u0w" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u0x" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="3uibUv" id="6qi2OtU3u0y" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u0z" role="3clF47">
          <node concept="3clFbJ" id="1QnJaNXELTq" role="3cqZAp">
            <node concept="3clFbC" id="1QnJaNXELTw" role="3clFbw">
              <node concept="37vLTw" id="1QnJaNXELTx" role="3uHU7w">
                <ref role="3cqZAo" node="6qi2OtU3u0x" resolve="model" />
              </node>
              <node concept="37vLTw" id="6se4BTTGBx$" role="3uHU7B">
                <ref role="3cqZAo" node="6se4BTTGkph" resolve="myModel" />
              </node>
            </node>
            <node concept="3clFbS" id="1QnJaNXELT_" role="3clFbx">
              <node concept="3cpWs6" id="1QnJaNXELTA" role="3cqZAp" />
            </node>
          </node>
          <node concept="1DcWWT" id="1QnJaNXEQM5" role="3cqZAp">
            <node concept="3clFbS" id="1QnJaNXEQM8" role="2LFqv$">
              <node concept="3clFbF" id="1QnJaNXELTJ" role="3cqZAp">
                <node concept="1rXfSq" id="1QnJaNXELTK" role="3clFbG">
                  <ref role="37wK5l" node="6qi2OtU3u9s" resolve="invalidateDependency" />
                  <node concept="37vLTw" id="1QnJaNXEZgt" role="37wK5m">
                    <ref role="3cqZAo" node="1QnJaNXEQMb" resolve="dependencyToInvalidate" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="1QnJaNXEQMb" role="1Duv9x">
              <property role="TrG5h" value="dependencyToInvalidate" />
              <node concept="3Tqbb2" id="1QnJaNXEVIX" role="1tU5fm" />
            </node>
            <node concept="1rXfSq" id="1QnJaNXEMAi" role="1DdaDG">
              <ref role="37wK5l" node="1QnJaNXB5ZG" resolve="getDependenciesToInvalidate" />
              <node concept="37vLTw" id="1QnJaNXENiI" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u0x" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sS8E" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6qi2OtU3u0B" role="jymVt">
        <property role="TrG5h" value="referenceRemoved" />
        <node concept="3Tm1VV" id="6qi2OtU3u0C" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u0D" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u0E" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6qi2OtU3u0F" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u0G" role="3clF47">
          <node concept="3clFbF" id="6qi2OtU3u0H" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyIhx" role="3clFbG">
              <ref role="37wK5l" node="6qi2OtU3uag" resolve="processEvent" />
              <node concept="37vLTw" id="2BHiRxgm2n2" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u0E" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sS8F" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6qi2OtU3u0K" role="jymVt">
        <property role="TrG5h" value="referenceAdded" />
        <node concept="3Tm1VV" id="6qi2OtU3u0L" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u0M" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u0N" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6qi2OtU3u0O" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelReferenceEvent" resolve="SModelReferenceEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u0P" role="3clF47">
          <node concept="3clFbF" id="6qi2OtU3u0Q" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyMTZ" role="3clFbG">
              <ref role="37wK5l" node="6qi2OtU3uag" resolve="processEvent" />
              <node concept="37vLTw" id="2BHiRxgmoYR" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u0N" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sS8D" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6qi2OtU3u0T" role="jymVt">
        <property role="TrG5h" value="childRemoved" />
        <node concept="3Tm1VV" id="6qi2OtU3u0U" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u0V" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u0W" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6qi2OtU3u0X" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u0Y" role="3clF47">
          <node concept="3clFbF" id="6qi2OtU3u0Z" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyZwz" role="3clFbG">
              <ref role="37wK5l" node="6qi2OtU3u9R" resolve="processEvent" />
              <node concept="37vLTw" id="2BHiRxgm9Ws" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u0W" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sS8G" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6qi2OtU3u12" role="jymVt">
        <property role="TrG5h" value="childAdded" />
        <node concept="3Tm1VV" id="6qi2OtU3u13" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u14" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u15" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6qi2OtU3u16" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelChildEvent" resolve="SModelChildEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u17" role="3clF47">
          <node concept="3clFbF" id="6qi2OtU3u18" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyyUa5" role="3clFbG">
              <ref role="37wK5l" node="6qi2OtU3u9R" resolve="processEvent" />
              <node concept="37vLTw" id="2BHiRxglCxn" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u15" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sS8H" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="6qi2OtU3u1b" role="jymVt">
        <property role="TrG5h" value="propertyChanged" />
        <node concept="3Tm1VV" id="6qi2OtU3u1c" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u1d" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u1e" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="6qi2OtU3u1f" role="1tU5fm">
            <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u1g" role="3clF47">
          <node concept="3clFbF" id="6qi2OtU3u1h" role="3cqZAp">
            <node concept="1rXfSq" id="4hiugqyz3wU" role="3clFbG">
              <ref role="37wK5l" node="6qi2OtU3uav" resolve="processEvent" />
              <node concept="37vLTw" id="2BHiRxghgrk" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3u1e" resolve="event" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sS8I" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="312cEu" id="6qi2OtU3u1k" role="jymVt">
      <property role="TrG5h" value="MyModelRepositoryListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm1VV" id="6qi2OtU3u1l" role="1B3o_S" />
      <node concept="3uibUv" id="6qi2OtU3u1q" role="1zkMxy">
        <ref role="3uigEE" to="w1kc:~SModelRepositoryAdapter" resolve="SModelRepositoryAdapter" />
      </node>
      <node concept="3clFb_" id="6qi2OtU3u1r" role="jymVt">
        <property role="TrG5h" value="modelRemoved" />
        <node concept="3Tm1VV" id="6qi2OtU3u1s" role="1B3o_S" />
        <node concept="3cqZAl" id="6qi2OtU3u1t" role="3clF45" />
        <node concept="37vLTG" id="6qi2OtU3u1u" role="3clF46">
          <property role="TrG5h" value="descriptor" />
          <node concept="3uibUv" id="6qi2OtU3u1v" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="6qi2OtU3u1w" role="3clF47">
          <node concept="3clFbF" id="6qi2OtU3ubn" role="3cqZAp">
            <node concept="2OqwBi" id="6qi2OtU3ubo" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxeuh$4" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3ueS" resolve="myListenedModels" />
              </node>
              <node concept="3dhRuq" id="2UMCgvoqpbR" role="2OqNvi">
                <node concept="37vLTw" id="1QnJaNXAzXm" role="25WWJ7">
                  <ref role="3cqZAo" node="6qi2OtU3u1u" resolve="descriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sR62" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6qi2OtU3tXp">
    <property role="TrG5h" value="RefScopeChecker" />
    <node concept="3Tm1VV" id="6qi2OtU3tXq" role="1B3o_S" />
    <node concept="3uibUv" id="6qi2OtU3tXv" role="1zkMxy">
      <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
    </node>
    <node concept="3clFbW" id="6qi2OtU3tXr" role="jymVt">
      <node concept="3cqZAl" id="6qi2OtU3tXs" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3tXt" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3tXu" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6qi2OtU3tXw" role="jymVt">
      <property role="TrG5h" value="checkNode" />
      <node concept="3cqZAl" id="6qi2OtU3tXx" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3tXy" role="1B3o_S" />
      <node concept="37vLTG" id="6qi2OtU3tXz" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6qi2OtU3tX$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3tX_" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="6qi2OtU3tXA" role="1tU5fm">
          <ref role="3uigEE" node="6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3ccCa2kx7d9" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VcCO4cMUFA" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3tXD" role="3clF47">
        <node concept="3clFbJ" id="6qi2OtU3tXE" role="3cqZAp">
          <node concept="22lmx$" id="5hmhmlAY6nB" role="3clFbw">
            <node concept="3clFbC" id="5hmhmlAY6nf" role="3uHU7B">
              <node concept="37vLTw" id="2BHiRxgm73f" role="3uHU7B">
                <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
              </node>
              <node concept="10Nm6u" id="5hmhmlAY6ni" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="5hmhmlAY6or" role="3uHU7w">
              <node concept="10Nm6u" id="5hmhmlAY6ou" role="3uHU7w" />
              <node concept="2OqwBi" id="5hmhmlAY6nZ" role="3uHU7B">
                <node concept="37vLTw" id="2BHiRxghivn" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                </node>
                <node concept="I4A8Y" id="5hmhmlAY6o5" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6qi2OtU3tXF" role="3clFbx">
            <node concept="3cpWs6" id="6qi2OtU3tXG" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="3wWBYW8CUO9" role="3cqZAp">
          <node concept="3cpWsn" id="3wWBYW8CUOa" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="3wWBYW8CUOb" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2EnYce" id="4fZaO0JDwN4" role="33vP2m">
              <node concept="2JrnkZ" id="3wWBYW8CUOe" role="2Oq$k0">
                <node concept="2OqwBi" id="3wWBYW8CUOf" role="2JrQYb">
                  <node concept="37vLTw" id="2BHiRxgmP8S" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                  </node>
                  <node concept="I4A8Y" id="3wWBYW8CUOh" role="2OqNvi" />
                </node>
              </node>
              <node concept="liA8E" id="3wWBYW8CUOj" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wWBYW8CUQ1" role="3cqZAp">
          <node concept="3clFbS" id="3wWBYW8CUQ2" role="3clFbx">
            <node concept="3cpWs6" id="3wWBYW8CUQu" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="3wWBYW8CUQq" role="3clFbw">
            <node concept="10Nm6u" id="3wWBYW8CUQt" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTzmC" role="3uHU7B">
              <ref role="3cqZAo" node="3wWBYW8CUOa" resolve="module" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5H5gR35TPzA" role="3cqZAp">
          <node concept="3cpWsn" id="5H5gR35TPzD" role="3cpWs9">
            <property role="TrG5h" value="executeImmediately" />
            <node concept="10P_77" id="5H5gR35TPz$" role="1tU5fm" />
            <node concept="2YIFZM" id="4InNjD1Etbg" role="33vP2m">
              <ref role="37wK5l" to="5ijk:4InNjD1Enq3" resolve="canExecuteImmediately" />
              <ref role="1Pybhc" to="5ijk:4InNjD1Imxv" resolve="ReferenceResolverUtils" />
              <node concept="2OqwBi" id="4InNjD1EtrC" role="37wK5m">
                <node concept="37vLTw" id="4InNjD1EtlX" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                </node>
                <node concept="I4A8Y" id="4InNjD1EtFE" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="4InNjD1Eu0C" role="37wK5m">
                <ref role="3cqZAo" node="3ccCa2kx7d9" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6qi2OtU3tXZ" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3tY0" role="1Duv9x">
            <property role="TrG5h" value="ref" />
            <node concept="2z4iKi" id="6qi2OtU3tY1" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="6qi2OtU3tY2" role="2LFqv$">
            <node concept="3cpWs8" id="6qi2OtU3tY3" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3tY4" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="6qi2OtU3tY5" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3tY6" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagT$4t" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                  </node>
                  <node concept="2ZHEkA" id="6qi2OtU3tY8" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3tY9" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3tYa" role="3cpWs9">
                <property role="TrG5h" value="ld" />
                <node concept="3Tqbb2" id="6qi2OtU3tYb" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
                <node concept="2OqwBi" id="6qi2OtU3tYc" role="33vP2m">
                  <node concept="37vLTw" id="3GM_nagTrGN" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                  </node>
                  <node concept="1eFSac" id="6qi2OtU3tYe" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="6qi2OtU3tYf" role="3cqZAp">
              <node concept="3SKdUq" id="6qi2OtU3tYg" role="3SKWNk">
                <property role="3SKdUp" value="don't check unresolved and broken references, they should already have an error message" />
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3tYh" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3tYi" role="3clFbx">
                <node concept="3N13vt" id="6qi2OtU3tYj" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="6qi2OtU3tYk" role="3clFbw">
                <node concept="3clFbC" id="6qi2OtU3tYl" role="3uHU7w">
                  <node concept="10Nm6u" id="6qi2OtU3tYm" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTtiK" role="3uHU7B">
                    <ref role="3cqZAo" node="6qi2OtU3tYa" resolve="ld" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6qi2OtU3tYo" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagT$KY" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3tY4" resolve="target" />
                  </node>
                  <node concept="3w_OXm" id="6qi2OtU3tYq" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4c0sGnTe89l" role="3cqZAp">
              <node concept="3SKdUq" id="4c0sGnTe8JW" role="3SKWNk">
                <property role="3SKdUp" value="do we need all these additional dependencies? mb. it's better to use .runcheckingAction() instead?" />
              </node>
            </node>
            <node concept="3clFbF" id="6qi2OtU3tYr" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3tYs" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxghiZr" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                </node>
                <node concept="liA8E" id="6qi2OtU3tYu" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="37vLTw" id="3GM_nagTww7" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3tY4" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6qi2OtU3tYw" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3tYx" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm9pH" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                </node>
                <node concept="liA8E" id="6qi2OtU3tYz" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="37vLTw" id="3GM_nagT_3w" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3tYa" resolve="ld" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4tqoTzTH6ta" role="3cqZAp">
              <node concept="2OqwBi" id="4tqoTzTH6tc" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm92l" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                </node>
                <node concept="liA8E" id="4tqoTzTH6tg" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="37vLTw" id="2BHiRxgmKI_" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4tqoTzTH8SW" role="3cqZAp">
              <node concept="2OqwBi" id="4tqoTzTH8SX" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgm$7e" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                </node>
                <node concept="liA8E" id="4tqoTzTH8SZ" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="2OqwBi" id="4tqoTzTH8T1" role="37wK5m">
                    <node concept="37vLTw" id="2BHiRxgheFc" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                    </node>
                    <node concept="1mfA1w" id="4tqoTzTH8T5" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="4tqoTzTH8J4" role="3cqZAp">
              <node concept="3clFbS" id="4tqoTzTH8J5" role="2LFqv$">
                <node concept="3clFbF" id="4tqoTzTH8J9" role="3cqZAp">
                  <node concept="2OqwBi" id="60wM9d8BEHT" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgmrAS" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                    </node>
                    <node concept="liA8E" id="60wM9d8BEHX" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                      <node concept="37vLTw" id="3GM_nagTzRc" role="37wK5m">
                        <ref role="3cqZAo" node="4tqoTzTH8J7" resolve="c" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="4tqoTzTH8J7" role="1Duv9x">
                <property role="TrG5h" value="c" />
                <node concept="3Tqbb2" id="4tqoTzTH8Jb" role="1tU5fm" />
              </node>
              <node concept="2OqwBi" id="4tqoTzTH8Gc" role="1DdaDG">
                <node concept="37vLTw" id="2BHiRxglB$8" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                </node>
                <node concept="32TBzR" id="4tqoTzTH8Ja" role="2OqNvi" />
              </node>
            </node>
            <node concept="3cpWs8" id="2vtmMTaAWv_" role="3cqZAp">
              <node concept="3cpWsn" id="2vtmMTaAWvA" role="3cpWs9">
                <property role="TrG5h" value="refDescriptor" />
                <node concept="3uibUv" id="2vtmMTaAWvz" role="1tU5fm">
                  <ref role="3uigEE" to="ykok:~ReferenceDescriptor" resolve="ReferenceDescriptor" />
                </node>
                <node concept="2YIFZM" id="2vtmMTaAWvB" role="33vP2m">
                  <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                  <ref role="37wK5l" to="ykok:~ModelConstraints.getReferenceDescriptor(org.jetbrains.mps.openapi.model.SReference):jetbrains.mps.smodel.constraints.ReferenceDescriptor" resolve="getReferenceDescriptor" />
                  <node concept="37vLTw" id="2vtmMTaAWvC" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2vtmMTaAYcj" role="3cqZAp">
              <node concept="3cpWsn" id="2vtmMTaAYck" role="3cpWs9">
                <property role="TrG5h" value="refScope" />
                <node concept="3uibUv" id="2vtmMTaAYci" role="1tU5fm">
                  <ref role="3uigEE" to="35tq:~Scope" resolve="Scope" />
                </node>
                <node concept="2OqwBi" id="2vtmMTaAYcl" role="33vP2m">
                  <node concept="37vLTw" id="2vtmMTaAYcm" role="2Oq$k0">
                    <ref role="3cqZAo" node="2vtmMTaAWvA" resolve="refDescriptor" />
                  </node>
                  <node concept="liA8E" id="2vtmMTaAYcn" role="2OqNvi">
                    <ref role="37wK5l" to="ykok:~ReferenceDescriptor.getScope():jetbrains.mps.scope.Scope" resolve="getScope" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3tZa" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3tZb" role="3clFbx">
                <node concept="3clFbF" id="6qi2OtU3tZc" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3tZd" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglnnx" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3tZf" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3Y" resolve="addError" />
                      <node concept="37vLTw" id="2BHiRxgm6Ed" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                      </node>
                      <node concept="2OqwBi" id="6qi2OtU3tZh" role="37wK5m">
                        <node concept="1eOMI4" id="4IGSh6234Cc" role="2Oq$k0">
                          <node concept="10QFUN" id="4IGSh6234Cd" role="1eOMHV">
                            <node concept="3uibUv" id="2vtmMTaB02x" role="10QFUM">
                              <ref role="3uigEE" to="35tq:~ErrorScope" resolve="ErrorScope" />
                            </node>
                            <node concept="37vLTw" id="3GM_nagTrz6" role="10QFUP">
                              <ref role="3cqZAo" node="2vtmMTaAYck" resolve="refScope" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6qi2OtU3tZj" role="2OqNvi">
                          <ref role="37wK5l" to="35tq:~ErrorScope.getMessage():java.lang.String" resolve="getMessage" />
                        </node>
                      </node>
                      <node concept="10Nm6u" id="5hmhmlAY6ow" role="37wK5m" />
                      <node concept="2ShNRf" id="6qi2OtU3tZn" role="37wK5m">
                        <node concept="1pGfFk" id="6qi2OtU3tZo" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(java.lang.String)" resolve="ReferenceMessageTarget" />
                          <node concept="2OqwBi" id="6qi2OtU3tZp" role="37wK5m">
                            <node concept="37vLTw" id="3GM_nagTuC5" role="2Oq$k0">
                              <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                            </node>
                            <node concept="90r25" id="6qi2OtU3tZr" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4IGSh6234C8" role="3clFbw">
                <node concept="3uibUv" id="2vtmMTaB02i" role="2ZW6by">
                  <ref role="3uigEE" to="35tq:~ErrorScope" resolve="ErrorScope" />
                </node>
                <node concept="37vLTw" id="3GM_nagT_U0" role="2ZW6bz">
                  <ref role="3cqZAo" node="2vtmMTaAYck" resolve="refScope" />
                </node>
              </node>
              <node concept="3eNFk2" id="6qi2OtU3tZv" role="3eNLev">
                <node concept="3fqX7Q" id="6qi2OtU3tZw" role="3eO9$A">
                  <node concept="2OqwBi" id="6qi2OtU3tZ_" role="3fr31v">
                    <node concept="37vLTw" id="3GM_nagTzwA" role="2Oq$k0">
                      <ref role="3cqZAo" node="2vtmMTaAYck" resolve="refScope" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3tZD" role="2OqNvi">
                      <ref role="37wK5l" to="35tq:~Scope.contains(org.jetbrains.mps.openapi.model.SNode):boolean" resolve="contains" />
                      <node concept="37vLTw" id="3GM_nagTs98" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3tY4" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6qi2OtU3tZF" role="3eOfB_">
                  <node concept="3cpWs8" id="6qi2OtU3tZG" role="3cqZAp">
                    <node concept="3cpWsn" id="6qi2OtU3tZH" role="3cpWs9">
                      <property role="TrG5h" value="name" />
                      <node concept="17QB3L" id="6qi2OtU3tZI" role="1tU5fm" />
                      <node concept="2OqwBi" id="6qi2OtU3tZJ" role="33vP2m">
                        <node concept="2JrnkZ" id="6qi2OtU3tZK" role="2Oq$k0">
                          <node concept="37vLTw" id="3GM_nagTtEh" role="2JrQYb">
                            <ref role="3cqZAo" node="6qi2OtU3tY4" resolve="target" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6qi2OtU3tZM" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName():java.lang.String" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4IGSh6234CA" role="3cqZAp">
                    <node concept="3cpWsn" id="4IGSh6234CB" role="3cpWs9">
                      <property role="TrG5h" value="scopeProvider" />
                      <node concept="3uibUv" id="4IGSh6234CC" role="1tU5fm">
                        <ref role="3uigEE" to="ze1i:~ReferenceScopeProvider" resolve="ReferenceScopeProvider" />
                      </node>
                      <node concept="2OqwBi" id="2vtmMTaB0o6" role="33vP2m">
                        <node concept="37vLTw" id="2vtmMTaB0lE" role="2Oq$k0">
                          <ref role="3cqZAo" node="2vtmMTaAWvA" resolve="refDescriptor" />
                        </node>
                        <node concept="liA8E" id="2vtmMTaB0$m" role="2OqNvi">
                          <ref role="37wK5l" to="ykok:~ReferenceDescriptor.getScopeProvider():jetbrains.mps.smodel.runtime.ReferenceScopeProvider" resolve="getScopeProvider" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="1G03vHqi37y" role="3cqZAp">
                    <node concept="3cpWsn" id="1G03vHqi37z" role="3cpWs9">
                      <property role="TrG5h" value="ruleNode" />
                      <node concept="3uibUv" id="5O9MfN8il_i" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                      </node>
                      <node concept="10Nm6u" id="1G03vHqi37M" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1G03vHqi37m" role="3cqZAp">
                    <node concept="3clFbS" id="1G03vHqi37n" role="3clFbx">
                      <node concept="3clFbF" id="1G03vHqi37N" role="3cqZAp">
                        <node concept="37vLTI" id="1G03vHqi38b" role="3clFbG">
                          <node concept="2OqwBi" id="1G03vHqi38n" role="37vLTx">
                            <node concept="37vLTw" id="3GM_nagTv6m" role="2Oq$k0">
                              <ref role="3cqZAo" node="4IGSh6234CB" resolve="scopeProvider" />
                            </node>
                            <node concept="liA8E" id="1G03vHqi38p" role="2OqNvi">
                              <ref role="37wK5l" to="ze1i:~ReferenceScopeProvider.getSearchScopeValidatorNode():org.jetbrains.mps.openapi.model.SNodeReference" resolve="getSearchScopeValidatorNode" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="3GM_nagT$zx" role="37vLTJ">
                            <ref role="3cqZAo" node="1G03vHqi37z" resolve="ruleNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1G03vHqi37t" role="3clFbw">
                      <node concept="10Nm6u" id="1G03vHqi37w" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagTsUt" role="3uHU7B">
                        <ref role="3cqZAo" node="4IGSh6234CB" resolve="scopeProvider" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6qi2OtU3tZN" role="3cqZAp">
                    <node concept="2OqwBi" id="6qi2OtU3tZO" role="3clFbG">
                      <node concept="37vLTw" id="2BHiRxglRGy" role="2Oq$k0">
                        <ref role="3cqZAo" node="6qi2OtU3tX_" resolve="component" />
                      </node>
                      <node concept="liA8E" id="6qi2OtU3tZQ" role="2OqNvi">
                        <ref role="37wK5l" node="5SHhrNLGPuZ" resolve="addError" />
                        <node concept="37vLTw" id="2BHiRxgmCLs" role="37wK5m">
                          <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
                        </node>
                        <node concept="3cpWs3" id="6qi2OtU3tZS" role="37wK5m">
                          <node concept="3cpWs3" id="6qi2OtU3tZT" role="3uHU7B">
                            <node concept="3cpWs3" id="6qi2OtU3tZU" role="3uHU7B">
                              <node concept="3cpWs3" id="6qi2OtU3tZV" role="3uHU7B">
                                <node concept="Xl_RD" id="6qi2OtU3tZW" role="3uHU7B">
                                  <property role="Xl_RC" value="reference" />
                                </node>
                                <node concept="1eOMI4" id="6qi2OtU3tZX" role="3uHU7w">
                                  <node concept="3K4zz7" id="6qi2OtU3tZY" role="1eOMHV">
                                    <node concept="Xl_RD" id="6qi2OtU3tZZ" role="3K4E3e">
                                      <property role="Xl_RC" value="" />
                                    </node>
                                    <node concept="3cpWs3" id="6qi2OtU3u00" role="3K4GZi">
                                      <node concept="37vLTw" id="3GM_nagTzCJ" role="3uHU7w">
                                        <ref role="3cqZAo" node="6qi2OtU3tZH" resolve="name" />
                                      </node>
                                      <node concept="Xl_RD" id="6qi2OtU3u02" role="3uHU7B">
                                        <property role="Xl_RC" value=" " />
                                      </node>
                                    </node>
                                    <node concept="3clFbC" id="6qi2OtU3u03" role="3K4Cdx">
                                      <node concept="10Nm6u" id="6qi2OtU3u04" role="3uHU7w" />
                                      <node concept="37vLTw" id="3GM_nagTzuT" role="3uHU7B">
                                        <ref role="3cqZAo" node="6qi2OtU3tZH" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="6qi2OtU3u06" role="3uHU7w">
                                <property role="Xl_RC" value=" (" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="6qi2OtU3u07" role="3uHU7w">
                              <node concept="37vLTw" id="3GM_nagTytN" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                              </node>
                              <node concept="90r25" id="6qi2OtU3u09" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="6qi2OtU3u0a" role="3uHU7w">
                            <property role="Xl_RC" value=") is out of search scope" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTA41" role="37wK5m">
                          <ref role="3cqZAo" node="1G03vHqi37z" resolve="ruleNode" />
                        </node>
                        <node concept="2ShNRf" id="6qi2OtU3u0e" role="37wK5m">
                          <node concept="1pGfFk" id="6qi2OtU3u0f" role="2ShVmc">
                            <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(java.lang.String)" resolve="ReferenceMessageTarget" />
                            <node concept="2OqwBi" id="6qi2OtU3u0g" role="37wK5m">
                              <node concept="37vLTw" id="3GM_nagTzCh" role="2Oq$k0">
                                <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                              </node>
                              <node concept="90r25" id="6qi2OtU3u0i" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="2uxkWp9VdQx" role="37wK5m">
                          <ref role="37wK5l" node="2uxkWp9V0In" resolve="createResolveReferenceQuickfix" />
                          <node concept="37vLTw" id="2uxkWp9Ve5D" role="37wK5m">
                            <ref role="3cqZAo" node="6qi2OtU3tY0" resolve="ref" />
                          </node>
                          <node concept="37vLTw" id="2uxkWp9VehY" role="37wK5m">
                            <ref role="3cqZAo" node="3ccCa2kx7d9" resolve="repository" />
                          </node>
                          <node concept="37vLTw" id="2uxkWp9VeID" role="37wK5m">
                            <ref role="3cqZAo" node="5H5gR35TPzD" resolve="executeImmediately" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6qi2OtU3u0j" role="1DdaDG">
            <node concept="37vLTw" id="2BHiRxghf5t" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3tXz" resolve="node" />
            </node>
            <node concept="2z74zc" id="6qi2OtU3u0l" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sSSK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2uxkWp9V0In" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createResolveReferenceQuickfix" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <node concept="37vLTG" id="2uxkWp9V7v4" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="2uxkWp9V7v5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2uxkWp9V7v6" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="2uxkWp9V7v7" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="37vLTG" id="2uxkWp9V7v8" role="3clF46">
        <property role="TrG5h" value="executeImmediately" />
        <node concept="10P_77" id="2uxkWp9V7v9" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2uxkWp9V0Iq" role="3clF47">
        <node concept="3cpWs6" id="2uxkWp9V5Xb" role="3cqZAp">
          <node concept="2ShNRf" id="2uxkWp9V6kp" role="3cqZAk">
            <node concept="1pGfFk" id="2uxkWp9V6kq" role="2ShVmc">
              <ref role="37wK5l" node="1$3BPv3W06F" resolve="RefScopeChecker.ResolveReferenceQuickFix" />
              <node concept="37vLTw" id="2uxkWp9VcvU" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9V7v4" resolve="reference" />
              </node>
              <node concept="37vLTw" id="2uxkWp9V6ks" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9V7v6" resolve="repository" />
              </node>
              <node concept="37vLTw" id="2uxkWp9V6kt" role="37wK5m">
                <ref role="3cqZAo" node="2uxkWp9V7v8" resolve="executeImmediately" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2uxkWp9V02h" role="1B3o_S" />
      <node concept="3uibUv" id="2uxkWp9VblX" role="3clF45">
        <ref role="3uigEE" to="2gg1:~QuickFixProvider" resolve="QuickFixProvider" />
      </node>
    </node>
    <node concept="312cEu" id="1$3BPv3W06D" role="jymVt">
      <property role="TrG5h" value="ResolveReferenceQuickFix" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tmbuc" id="5s7RUu7Maz7" role="1B3o_S" />
      <node concept="3uibUv" id="1$3BPv3W06J" role="EKbjA">
        <ref role="3uigEE" to="2gg1:~QuickFixProvider" resolve="QuickFixProvider" />
      </node>
      <node concept="312cEg" id="1$3BPv3W078" role="jymVt">
        <property role="TrG5h" value="myIsError" />
        <node concept="3Tm6S6" id="1$3BPv3W079" role="1B3o_S" />
        <node concept="10P_77" id="1$3BPv3W07b" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="1$3BPv3W08w" role="jymVt">
        <property role="TrG5h" value="myReference" />
        <node concept="3Tmbuc" id="5s7RUu7MdB2" role="1B3o_S" />
        <node concept="3uibUv" id="1$3BPv3W08z" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
        </node>
      </node>
      <node concept="312cEg" id="1$3BPv3W08Z" role="jymVt">
        <property role="TrG5h" value="myRepository" />
        <node concept="3Tmbuc" id="5s7RUu7Mesv" role="1B3o_S" />
        <node concept="3uibUv" id="1trd1MrRavy" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="312cEg" id="5H5gR35TCVZ" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="myExecuteImmediately" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="5H5gR35TC0$" role="1B3o_S" />
        <node concept="10P_77" id="5H5gR35TCQy" role="1tU5fm" />
      </node>
      <node concept="3clFbW" id="1$3BPv3W06F" role="jymVt">
        <node concept="3cqZAl" id="1$3BPv3W06G" role="3clF45" />
        <node concept="3Tm1VV" id="1$3BPv3W06H" role="1B3o_S" />
        <node concept="3clFbS" id="1$3BPv3W06I" role="3clF47">
          <node concept="3clFbF" id="1$3BPv3W08$" role="3cqZAp">
            <node concept="37vLTI" id="1$3BPv3W08U" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxglazv" role="37vLTx">
                <ref role="3cqZAo" node="1$3BPv3W08r" resolve="reference" />
              </node>
              <node concept="37vLTw" id="2BHiRxeujQy" role="37vLTJ">
                <ref role="3cqZAo" node="1$3BPv3W08w" resolve="myReference" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1$3BPv3W094" role="3cqZAp">
            <node concept="37vLTI" id="1$3BPv3W09q" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxghfOY" role="37vLTx">
                <ref role="3cqZAo" node="1$3BPv3W08t" resolve="repository" />
              </node>
              <node concept="37vLTw" id="2BHiRxeuFiu" role="37vLTJ">
                <ref role="3cqZAo" node="1$3BPv3W08Z" resolve="myRepository" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5H5gR35U3Zl" role="3cqZAp">
            <node concept="37vLTI" id="5H5gR35U4cr" role="3clFbG">
              <node concept="37vLTw" id="5H5gR35U4i6" role="37vLTx">
                <ref role="3cqZAo" node="5H5gR35TNF0" resolve="executeImmediately" />
              </node>
              <node concept="37vLTw" id="5H5gR35U3Zk" role="37vLTJ">
                <ref role="3cqZAo" node="5H5gR35TCVZ" resolve="myExecuteImmediately" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1$3BPv3W08r" role="3clF46">
          <property role="TrG5h" value="reference" />
          <node concept="3uibUv" id="1$3BPv3W08s" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
          </node>
        </node>
        <node concept="37vLTG" id="1$3BPv3W08t" role="3clF46">
          <property role="TrG5h" value="repository" />
          <node concept="3uibUv" id="1trd1MrR9dz" role="1tU5fm">
            <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
          </node>
        </node>
        <node concept="37vLTG" id="5H5gR35TNF0" role="3clF46">
          <property role="TrG5h" value="executeImmediately" />
          <node concept="10P_77" id="5H5gR35TOa$" role="1tU5fm" />
        </node>
      </node>
      <node concept="3clFb_" id="1$3BPv3W06K" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getQuickFix" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1$3BPv3W06L" role="1B3o_S" />
        <node concept="3uibUv" id="1$3BPv3W06M" role="3clF45">
          <ref role="3uigEE" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
        </node>
        <node concept="3clFbS" id="1$3BPv3W06N" role="3clF47">
          <node concept="3cpWs6" id="1$3BPv3W07J" role="3cqZAp">
            <node concept="2ShNRf" id="1$3BPv3W07L" role="3cqZAk">
              <node concept="YeOm9" id="1$3BPv3W07N" role="2ShVmc">
                <node concept="1Y3b0j" id="1$3BPv3W07O" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="2gg1:~QuickFix_Runtime" resolve="QuickFix_Runtime" />
                  <ref role="37wK5l" to="2gg1:~QuickFix_Runtime.&lt;init&gt;()" resolve="QuickFix_Runtime" />
                  <node concept="3Tm1VV" id="1$3BPv3W07P" role="1B3o_S" />
                  <node concept="3clFb_" id="1$3BPv3W07Q" role="jymVt">
                    <property role="IEkAT" value="false" />
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="execute" />
                    <property role="DiZV1" value="false" />
                    <node concept="3Tm1VV" id="1$3BPv3W07R" role="1B3o_S" />
                    <node concept="3cqZAl" id="1$3BPv3W07S" role="3clF45" />
                    <node concept="37vLTG" id="1$3BPv3W07T" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3uibUv" id="1$3BPv3W07U" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1$3BPv3W07V" role="3clF47">
                      <node concept="3clFbF" id="1$3BPv3W07W" role="3cqZAp">
                        <node concept="2OqwBi" id="1$3BPv3W08k" role="3clFbG">
                          <node concept="2YIFZM" id="1$3BPv3W07Z" role="2Oq$k0">
                            <ref role="37wK5l" to="5ijk:1$3BPv3Ve2T" resolve="getInstance" />
                            <ref role="1Pybhc" to="5ijk:3lcbx72875n" resolve="ResolverComponent" />
                          </node>
                          <node concept="liA8E" id="1$3BPv3W08q" role="2OqNvi">
                            <ref role="37wK5l" to="5ijk:1$3BPv3Vdyw" resolve="resolve" />
                            <node concept="37vLTw" id="2BHiRxeukpR" role="37wK5m">
                              <ref role="3cqZAo" node="1$3BPv3W08w" resolve="myReference" />
                            </node>
                            <node concept="37vLTw" id="2BHiRxeuyIw" role="37wK5m">
                              <ref role="3cqZAo" node="1$3BPv3W08Z" resolve="myRepository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_sRn3" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="61KHAB8RCpw" role="jymVt">
                    <property role="TrG5h" value="getDescription" />
                    <node concept="37vLTG" id="61KHAB8RCp$" role="3clF46">
                      <property role="TrG5h" value="node" />
                      <node concept="3Tqbb2" id="61KHAB8RCpA" role="1tU5fm" />
                    </node>
                    <node concept="17QB3L" id="61KHAB8RCpB" role="3clF45" />
                    <node concept="3Tm1VV" id="61KHAB8RCpy" role="1B3o_S" />
                    <node concept="3clFbS" id="61KHAB8RCpz" role="3clF47">
                      <node concept="3cpWs6" id="61KHAB8RCpC" role="3cqZAp">
                        <node concept="3cpWs3" id="61KHAB8RXoU" role="3cqZAk">
                          <node concept="Xl_RD" id="61KHAB8RXoX" role="3uHU7w">
                            <property role="Xl_RC" value="\&quot; reference" />
                          </node>
                          <node concept="3cpWs3" id="61KHAB8RXpi" role="3uHU7B">
                            <node concept="2OqwBi" id="2vtmMTaB33w" role="3uHU7w">
                              <node concept="2OqwBi" id="61KHAB8RYMa" role="2Oq$k0">
                                <node concept="37vLTw" id="2BHiRxeuMyT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1$3BPv3W08w" resolve="myReference" />
                                </node>
                                <node concept="liA8E" id="61KHAB8RYMg" role="2OqNvi">
                                  <ref role="37wK5l" to="mhbf:~SReference.getLink():org.jetbrains.mps.openapi.language.SReferenceLink" resolve="getLink" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2vtmMTaB3JZ" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SReferenceLink.getRoleName():java.lang.String" resolve="getRoleName" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="61KHAB8RCpE" role="3uHU7B">
                              <property role="Xl_RC" value="Resolve \&quot;" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="3tYsUK_sRn9" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sT6N" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1$3BPv3W06Q" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isExecutedImmediately" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1$3BPv3W06R" role="1B3o_S" />
        <node concept="10P_77" id="1$3BPv3W06S" role="3clF45" />
        <node concept="3clFbS" id="1$3BPv3W06T" role="3clF47">
          <node concept="3cpWs6" id="1$3BPv3W07F" role="3cqZAp">
            <node concept="37vLTw" id="5H5gR35TMcY" role="3cqZAk">
              <ref role="3cqZAo" node="5H5gR35TCVZ" resolve="myExecuteImmediately" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sT6L" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1$3BPv3W06W" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="setIsError" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1$3BPv3W06X" role="1B3o_S" />
        <node concept="3cqZAl" id="1$3BPv3W06Y" role="3clF45" />
        <node concept="37vLTG" id="1$3BPv3W06Z" role="3clF46">
          <property role="TrG5h" value="isError" />
          <node concept="10P_77" id="1$3BPv3W070" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1$3BPv3W071" role="3clF47">
          <node concept="3clFbF" id="1$3BPv3W07c" role="3cqZAp">
            <node concept="37vLTI" id="1$3BPv3W07y" role="3clFbG">
              <node concept="37vLTw" id="2BHiRxgmwRy" role="37vLTx">
                <ref role="3cqZAo" node="1$3BPv3W06Z" resolve="isError" />
              </node>
              <node concept="37vLTw" id="2BHiRxeut2x" role="37vLTJ">
                <ref role="3cqZAo" node="1$3BPv3W078" resolve="myIsError" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sT6O" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1$3BPv3W072" role="jymVt">
        <property role="IEkAT" value="false" />
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="isError" />
        <property role="DiZV1" value="false" />
        <node concept="3Tm1VV" id="1$3BPv3W073" role="1B3o_S" />
        <node concept="10P_77" id="1$3BPv3W074" role="3clF45" />
        <node concept="3clFbS" id="1$3BPv3W075" role="3clF47">
          <node concept="3cpWs6" id="1$3BPv3W07B" role="3cqZAp">
            <node concept="37vLTw" id="2BHiRxeuQuI" role="3cqZAk">
              <ref role="3cqZAo" node="1$3BPv3W078" resolve="myIsError" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3tYsUK_sT6M" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6qi2OtU3tVa">
    <property role="TrG5h" value="TargetConceptChecker" />
    <node concept="3Tm1VV" id="6qi2OtU3tVb" role="1B3o_S" />
    <node concept="3uibUv" id="6qi2OtU3tVg" role="1zkMxy">
      <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
    </node>
    <node concept="3clFbW" id="6qi2OtU3tVc" role="jymVt">
      <node concept="3cqZAl" id="6qi2OtU3tVd" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3tVe" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3tVf" role="3clF47" />
    </node>
    <node concept="3clFb_" id="6qi2OtU3tVh" role="jymVt">
      <property role="TrG5h" value="checkNode" />
      <node concept="3cqZAl" id="6qi2OtU3tVi" role="3clF45" />
      <node concept="3Tm1VV" id="6qi2OtU3tVj" role="1B3o_S" />
      <node concept="37vLTG" id="6qi2OtU3tVk" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6qi2OtU3tVl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3tVm" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="6qi2OtU3tVn" role="1tU5fm">
          <ref role="3uigEE" node="6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="3ccCa2kx8tJ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VcCO4cN1uX" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="3clFbS" id="6qi2OtU3tVq" role="3clF47">
        <node concept="2Gpval" id="6qi2OtU3tVr" role="3cqZAp">
          <node concept="2GrKxI" id="6qi2OtU3tVs" role="2Gsz3X">
            <property role="TrG5h" value="child" />
          </node>
          <node concept="2OqwBi" id="6qi2OtU3tVt" role="2GsD0m">
            <node concept="2OqwBi" id="6qi2OtU3tVu" role="2Oq$k0">
              <node concept="37vLTw" id="2BHiRxglXet" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3tVk" resolve="node" />
              </node>
              <node concept="32TBzR" id="6qi2OtU3tVw" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="6qi2OtU3tVx" role="2OqNvi">
              <node concept="1bVj0M" id="6qi2OtU3tVy" role="23t8la">
                <node concept="3clFbS" id="6qi2OtU3tVz" role="1bW5cS">
                  <node concept="3clFbF" id="6qi2OtU3tV$" role="3cqZAp">
                    <node concept="3fqX7Q" id="6qi2OtU3tV_" role="3clFbG">
                      <node concept="2OqwBi" id="6qi2OtU3tVA" role="3fr31v">
                        <node concept="37vLTw" id="2BHiRxgkWD9" role="2Oq$k0">
                          <ref role="3cqZAo" node="6qi2OtU3tVD" resolve="it" />
                        </node>
                        <node concept="32XrjI" id="6qi2OtU3tVC" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6qi2OtU3tVD" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6qi2OtU3tVE" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6qi2OtU3tVF" role="2LFqv$">
            <node concept="3cpWs8" id="6qi2OtU3tVG" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3tVH" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3Tqbb2" id="6qi2OtU3tVI" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
                <node concept="2OqwBi" id="6qi2OtU3tVJ" role="33vP2m">
                  <node concept="2GrUjf" id="6qi2OtU3tVK" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6qi2OtU3tVs" resolve="child" />
                  </node>
                  <node concept="25OxAV" id="6qi2OtU3tVL" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3tVM" role="3cqZAp">
              <node concept="1Wc70l" id="6qi2OtU3tVN" role="3clFbw">
                <node concept="3y3z36" id="6qi2OtU3tVO" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTzLE" role="3uHU7B">
                    <ref role="3cqZAo" node="6qi2OtU3tVH" resolve="link" />
                  </node>
                  <node concept="10Nm6u" id="6qi2OtU3tVQ" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="6qi2OtU3tVR" role="3uHU7w">
                  <node concept="2OqwBi" id="6qi2OtU3tVS" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTA0t" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tVH" resolve="link" />
                    </node>
                    <node concept="3TrcHB" id="6qi2OtU3tVU" role="2OqNvi">
                      <ref role="3TsBF5" to="tpce:fA0lm$B" resolve="metaClass" />
                    </node>
                  </node>
                  <node concept="3t7uKx" id="6qi2OtU3tVV" role="2OqNvi">
                    <node concept="uoxfO" id="6qi2OtU3tVW" role="3t7uKA">
                      <ref role="uo_Cq" to="tpce:fLJjDmT" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6qi2OtU3tVX" role="3clFbx">
                <node concept="3clFbF" id="6qi2OtU3tVY" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3tVZ" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxglK34" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tVm" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3tW1" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                      <node concept="37vLTw" id="3GM_nagT$p9" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3tVH" resolve="link" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6qi2OtU3tW3" role="3cqZAp">
                  <node concept="3clFbS" id="6qi2OtU3tW4" role="3clFbx">
                    <node concept="3clFbF" id="6qi2OtU3tW5" role="3cqZAp">
                      <node concept="2OqwBi" id="6qi2OtU3tW6" role="3clFbG">
                        <node concept="37vLTw" id="2BHiRxgl01d" role="2Oq$k0">
                          <ref role="3cqZAo" node="6qi2OtU3tVm" resolve="component" />
                        </node>
                        <node concept="liA8E" id="6qi2OtU3tW8" role="2OqNvi">
                          <ref role="37wK5l" node="6qi2OtU3u3H" resolve="addError" />
                          <node concept="2GrUjf" id="6xhfW11KW4B" role="37wK5m">
                            <ref role="2Gs0qQ" node="6qi2OtU3tVs" resolve="child" />
                          </node>
                          <node concept="3cpWs3" id="6xhfW11LRZ0" role="37wK5m">
                            <node concept="Xl_RD" id="6xhfW11LRZb" role="3uHU7w">
                              <property role="Xl_RC" value="\&quot; found" />
                            </node>
                            <node concept="3cpWs3" id="6xhfW11LQ9H" role="3uHU7B">
                              <node concept="3cpWs3" id="6xhfW11LP6z" role="3uHU7B">
                                <node concept="3cpWs3" id="6xhfW11LbCD" role="3uHU7B">
                                  <node concept="3cpWs3" id="6qi2OtU3tWa" role="3uHU7B">
                                    <node concept="3cpWs3" id="6qi2OtU3tWb" role="3uHU7B">
                                      <node concept="2OqwBi" id="6qi2OtU3tWc" role="3uHU7w">
                                        <node concept="2GrUjf" id="6qi2OtU3tWd" role="2Oq$k0">
                                          <ref role="2Gs0qQ" node="6qi2OtU3tVs" resolve="child" />
                                        </node>
                                        <node concept="13GOg" id="6qi2OtU3tWe" role="2OqNvi" />
                                      </node>
                                      <node concept="Xl_RD" id="6qi2OtU3tWf" role="3uHU7B">
                                        <property role="Xl_RC" value="incompatible target concept in role \&quot;" />
                                      </node>
                                    </node>
                                    <node concept="Xl_RD" id="6qi2OtU3tWg" role="3uHU7w">
                                      <property role="Xl_RC" value="\&quot;: subconcept of \&quot;" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="6xhfW11Lc5k" role="3uHU7w">
                                    <node concept="37vLTw" id="6xhfW11LbVJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6qi2OtU3tVH" resolve="link" />
                                    </node>
                                    <node concept="3TrEf2" id="6xhfW11LcHw" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpce:fA0lvVK" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6xhfW11LP6I" role="3uHU7w">
                                  <property role="Xl_RC" value="\&quot; expected, \&quot;" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="6xhfW11LQLg" role="3uHU7w">
                                <node concept="2GrUjf" id="6xhfW11LQvi" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="6qi2OtU3tVs" resolve="child" />
                                </node>
                                <node concept="3NT_Vc" id="6xhfW11LRvH" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="10Nm6u" id="6qi2OtU3tWh" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="6qi2OtU3tWi" role="3clFbw">
                    <node concept="2OqwBi" id="6qi2OtU3tWj" role="3fr31v">
                      <node concept="2OqwBi" id="6qi2OtU3tWk" role="2Oq$k0">
                        <node concept="37vLTw" id="3GM_nagTAXj" role="2Oq$k0">
                          <ref role="3cqZAo" node="6qi2OtU3tVH" resolve="link" />
                        </node>
                        <node concept="3TrEf2" id="6qi2OtU3tWm" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpce:fA0lvVK" />
                        </node>
                      </node>
                      <node concept="2Za9M6" id="6qi2OtU3tWn" role="2OqNvi">
                        <node concept="25Kdxt" id="6qi2OtU3tWo" role="2ZaTVi">
                          <node concept="2OqwBi" id="6qi2OtU3tWp" role="25KhWn">
                            <node concept="2GrUjf" id="6qi2OtU3tWq" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="6qi2OtU3tVs" resolve="child" />
                            </node>
                            <node concept="3NT_Vc" id="6qi2OtU3tWr" role="2OqNvi" />
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
        <node concept="3clFbH" id="6qi2OtU3tWs" role="3cqZAp" />
        <node concept="2Gpval" id="6qi2OtU3tWt" role="3cqZAp">
          <node concept="2GrKxI" id="6qi2OtU3tWu" role="2Gsz3X">
            <property role="TrG5h" value="reference" />
          </node>
          <node concept="2OqwBi" id="6qi2OtU3tWv" role="2GsD0m">
            <node concept="37vLTw" id="2BHiRxghenH" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3tVk" resolve="node" />
            </node>
            <node concept="2z74zc" id="6qi2OtU3tWx" role="2OqNvi" />
          </node>
          <node concept="3clFbS" id="6qi2OtU3tWy" role="2LFqv$">
            <node concept="3cpWs8" id="6qi2OtU3tWz" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3tW$" role="3cpWs9">
                <property role="TrG5h" value="link" />
                <node concept="3Tqbb2" id="6qi2OtU3tW_" role="1tU5fm">
                  <ref role="ehGHo" to="tpce:f_TJgxE" resolve="LinkDeclaration" />
                </node>
                <node concept="2OqwBi" id="6qi2OtU3tWA" role="33vP2m">
                  <node concept="2GrUjf" id="6qi2OtU3tWB" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6qi2OtU3tWu" resolve="reference" />
                  </node>
                  <node concept="1eFSac" id="6qi2OtU3tWC" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5bOHs7gZFdW" role="3cqZAp">
              <node concept="3clFbS" id="5bOHs7gZFdX" role="3clFbx">
                <node concept="3N13vt" id="5bOHs7gZN8$" role="3cqZAp" />
              </node>
              <node concept="22lmx$" id="5bOHs7gZFeK" role="3clFbw">
                <node concept="3clFbC" id="5bOHs7gZFem" role="3uHU7B">
                  <node concept="37vLTw" id="3GM_nagTrz2" role="3uHU7B">
                    <ref role="3cqZAo" node="6qi2OtU3tW$" resolve="link" />
                  </node>
                  <node concept="10Nm6u" id="5bOHs7gZFeq" role="3uHU7w" />
                </node>
                <node concept="3fqX7Q" id="5bOHs7gZN76" role="3uHU7w">
                  <node concept="2OqwBi" id="5bOHs7gZN77" role="3fr31v">
                    <node concept="2OqwBi" id="5bOHs7gZN78" role="2Oq$k0">
                      <node concept="37vLTw" id="3GM_nagTuZ0" role="2Oq$k0">
                        <ref role="3cqZAo" node="6qi2OtU3tW$" resolve="link" />
                      </node>
                      <node concept="3TrcHB" id="5bOHs7gZN7a" role="2OqNvi">
                        <ref role="3TsBF5" to="tpce:fA0lm$B" resolve="metaClass" />
                      </node>
                    </node>
                    <node concept="3t7uKx" id="5bOHs7gZN7b" role="2OqNvi">
                      <node concept="uoxfO" id="5bOHs7gZN7c" role="3t7uKA">
                        <ref role="uo_Cq" to="tpce:fLJjDmS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6qi2OtU3tWP" role="3cqZAp">
              <node concept="3cpWsn" id="6qi2OtU3tWQ" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3Tqbb2" id="6qi2OtU3tWR" role="1tU5fm" />
                <node concept="2OqwBi" id="6qi2OtU3tWS" role="33vP2m">
                  <node concept="2GrUjf" id="6qi2OtU3tWT" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="6qi2OtU3tWu" resolve="reference" />
                  </node>
                  <node concept="2ZHEkA" id="6qi2OtU3tWU" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="5bOHs7gZN8G" role="3cqZAp">
              <node concept="3clFbS" id="5bOHs7gZN8H" role="3clFbx">
                <node concept="3N13vt" id="5bOHs7gZN9d" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="5bOHs7gZN97" role="3clFbw">
                <node concept="10Nm6u" id="5bOHs7gZN9b" role="3uHU7w" />
                <node concept="37vLTw" id="3GM_nagTxyX" role="3uHU7B">
                  <ref role="3cqZAo" node="6qi2OtU3tWQ" resolve="target" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6qi2OtU3tWV" role="3cqZAp">
              <node concept="2OqwBi" id="6qi2OtU3tWW" role="3clFbG">
                <node concept="37vLTw" id="2BHiRxgmaCY" role="2Oq$k0">
                  <ref role="3cqZAo" node="6qi2OtU3tVm" resolve="component" />
                </node>
                <node concept="liA8E" id="6qi2OtU3tWY" role="2OqNvi">
                  <ref role="37wK5l" node="6qi2OtU3u2c" resolve="addDependency" />
                  <node concept="37vLTw" id="3GM_nagTufp" role="37wK5m">
                    <ref role="3cqZAo" node="6qi2OtU3tW$" resolve="link" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6qi2OtU3tX0" role="3cqZAp">
              <node concept="3clFbS" id="6qi2OtU3tX1" role="3clFbx">
                <node concept="3clFbF" id="6qi2OtU3tX2" role="3cqZAp">
                  <node concept="2OqwBi" id="6qi2OtU3tX3" role="3clFbG">
                    <node concept="37vLTw" id="2BHiRxgm2uP" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tVm" resolve="component" />
                    </node>
                    <node concept="liA8E" id="6qi2OtU3tX5" role="2OqNvi">
                      <ref role="37wK5l" node="6qi2OtU3u3Y" resolve="addError" />
                      <node concept="37vLTw" id="6xhfW11Nau6" role="37wK5m">
                        <ref role="3cqZAo" node="6qi2OtU3tVk" resolve="node" />
                      </node>
                      <node concept="3cpWs3" id="6xhfW11NDl_" role="37wK5m">
                        <node concept="Xl_RD" id="6xhfW11NDlK" role="3uHU7w">
                          <property role="Xl_RC" value="\&quot; found" />
                        </node>
                        <node concept="3cpWs3" id="6xhfW11NwiW" role="3uHU7B">
                          <node concept="3cpWs3" id="6xhfW11NunB" role="3uHU7B">
                            <node concept="3cpWs3" id="6xhfW11NrOX" role="3uHU7B">
                              <node concept="3cpWs3" id="6qi2OtU3tX7" role="3uHU7B">
                                <node concept="3cpWs3" id="6qi2OtU3tX8" role="3uHU7B">
                                  <node concept="2OqwBi" id="6qi2OtU3tX9" role="3uHU7w">
                                    <node concept="2GrUjf" id="6qi2OtU3tXa" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="6qi2OtU3tWu" resolve="reference" />
                                    </node>
                                    <node concept="90r25" id="6qi2OtU3tXb" role="2OqNvi" />
                                  </node>
                                  <node concept="Xl_RD" id="6qi2OtU3tXc" role="3uHU7B">
                                    <property role="Xl_RC" value="incompatible target concept in role \&quot;" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6qi2OtU3tXd" role="3uHU7w">
                                  <property role="Xl_RC" value="\&quot;: subconcept of \&quot;" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="6xhfW11Nski" role="3uHU7w">
                                <node concept="37vLTw" id="6xhfW11NseC" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6qi2OtU3tW$" resolve="link" />
                                </node>
                                <node concept="3TrEf2" id="6xhfW11NsDQ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpce:fA0lvVK" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="6xhfW11NunM" role="3uHU7w">
                              <property role="Xl_RC" value="\&quot; expected, \&quot;" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="6xhfW11NwNV" role="3uHU7w">
                            <node concept="37vLTw" id="6xhfW11NwDP" role="2Oq$k0">
                              <ref role="3cqZAo" node="6qi2OtU3tWQ" resolve="target" />
                            </node>
                            <node concept="3NT_Vc" id="6xhfW11ND3B" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="10Nm6u" id="6qi2OtU3tXe" role="37wK5m" />
                      <node concept="2ShNRf" id="6xhfW11MSjp" role="37wK5m">
                        <node concept="1pGfFk" id="6xhfW11MVg6" role="2ShVmc">
                          <ref role="37wK5l" to="zavc:~ReferenceMessageTarget.&lt;init&gt;(java.lang.String)" resolve="ReferenceMessageTarget" />
                          <node concept="2OqwBi" id="6xhfW11MVvv" role="37wK5m">
                            <node concept="37vLTw" id="6xhfW11MVot" role="2Oq$k0">
                              <ref role="3cqZAo" node="6qi2OtU3tW$" resolve="link" />
                            </node>
                            <node concept="3TrcHB" id="6xhfW11MVXv" role="2OqNvi">
                              <ref role="3TsBF5" to="tpce:fA0kJcN" resolve="role" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3fqX7Q" id="6qi2OtU3tXf" role="3clFbw">
                <node concept="2OqwBi" id="6qi2OtU3tXg" role="3fr31v">
                  <node concept="2OqwBi" id="6qi2OtU3tXh" role="2Oq$k0">
                    <node concept="37vLTw" id="3GM_nagTrC3" role="2Oq$k0">
                      <ref role="3cqZAo" node="6qi2OtU3tW$" resolve="link" />
                    </node>
                    <node concept="3TrEf2" id="6qi2OtU3tXj" role="2OqNvi">
                      <ref role="3Tt5mk" to="tpce:fA0lvVK" />
                    </node>
                  </node>
                  <node concept="2Za9M6" id="6qi2OtU3tXk" role="2OqNvi">
                    <node concept="25Kdxt" id="6qi2OtU3tXl" role="2ZaTVi">
                      <node concept="2OqwBi" id="6qi2OtU3tXm" role="25KhWn">
                        <node concept="37vLTw" id="3GM_nagTudt" role="2Oq$k0">
                          <ref role="3cqZAo" node="6qi2OtU3tWQ" resolve="target" />
                        </node>
                        <node concept="3NT_Vc" id="6qi2OtU3tXo" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sRD_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2UMCgvoqxz1">
    <property role="TrG5h" value="LanguageChecker" />
    <node concept="3Tm1VV" id="2UMCgvoqxz2" role="1B3o_S" />
    <node concept="3uibUv" id="2UMCgvoqxz7" role="EKbjA">
      <ref role="3uigEE" node="7z7Xs6Zeka" resolve="INodeChecker" />
    </node>
    <node concept="312cEg" id="2UMCgvoqxzk" role="jymVt">
      <property role="TrG5h" value="myRules" />
      <node concept="3Tm6S6" id="2UMCgvoqxzl" role="1B3o_S" />
      <node concept="2hMVRd" id="2UMCgvoqxzm" role="1tU5fm">
        <node concept="3uibUv" id="2UMCgvoqxzn" role="2hN53Y">
          <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
        </node>
      </node>
      <node concept="2ShNRf" id="2UMCgvoqxzo" role="33vP2m">
        <node concept="2i4dXS" id="2UMCgvoqxzp" role="2ShVmc">
          <node concept="3uibUv" id="2UMCgvoqxzq" role="HW$YZ">
            <ref role="3uigEE" node="6qi2OtU3u$c" resolve="AbstractConstraintsChecker" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="2UMCgvoqxz3" role="jymVt">
      <node concept="3cqZAl" id="2UMCgvoqxz4" role="3clF45" />
      <node concept="3Tm1VV" id="2UMCgvoqxz5" role="1B3o_S" />
      <node concept="3clFbS" id="2UMCgvoqxz6" role="3clF47">
        <node concept="3clFbF" id="2UMCgvoqxzs" role="3cqZAp">
          <node concept="2OqwBi" id="2UMCgvoqxzt" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeux1Y" role="2Oq$k0">
              <ref role="3cqZAo" node="2UMCgvoqxzk" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxzv" role="2OqNvi">
              <node concept="2ShNRf" id="2UMCgvoqxzw" role="25WWJ7">
                <node concept="1pGfFk" id="2UMCgvoqxzx" role="2ShVmc">
                  <ref role="37wK5l" node="6qi2OtU3uwS" resolve="ConstraintsChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2UMCgvoqxzy" role="3cqZAp">
          <node concept="2OqwBi" id="2UMCgvoqxzz" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuXeQ" role="2Oq$k0">
              <ref role="3cqZAo" node="2UMCgvoqxzk" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxz_" role="2OqNvi">
              <node concept="2ShNRf" id="2UMCgvoqxzA" role="25WWJ7">
                <node concept="1pGfFk" id="2UMCgvoqxzB" role="2ShVmc">
                  <ref role="37wK5l" node="6qi2OtU3tXr" resolve="RefScopeChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2UMCgvoqxzI" role="3cqZAp">
          <node concept="2OqwBi" id="2UMCgvoqxzJ" role="3clFbG">
            <node concept="37vLTw" id="2BHiRxeuROE" role="2Oq$k0">
              <ref role="3cqZAo" node="2UMCgvoqxzk" resolve="myRules" />
            </node>
            <node concept="TSZUe" id="2UMCgvoqxzL" role="2OqNvi">
              <node concept="2ShNRf" id="2UMCgvoqxzM" role="25WWJ7">
                <node concept="1pGfFk" id="2UMCgvoqxzN" role="2ShVmc">
                  <ref role="37wK5l" node="6qi2OtU3tVc" resolve="TargetConceptChecker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6qi2OtU3unN" role="jymVt">
      <property role="TrG5h" value="getErrors" />
      <node concept="3Tm1VV" id="6qi2OtU3unO" role="1B3o_S" />
      <node concept="3clFbS" id="6qi2OtU3unP" role="3clF47">
        <node concept="3cpWs8" id="6qi2OtU3unQ" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3unR" role="3cpWs9">
            <property role="TrG5h" value="errorsComponent" />
            <node concept="3uibUv" id="6qi2OtU3unS" role="1tU5fm">
              <ref role="3uigEE" node="6qi2OtU3u0m" resolve="LanguageErrorsComponent" />
            </node>
            <node concept="2ShNRf" id="6qi2OtU3unT" role="33vP2m">
              <node concept="1pGfFk" id="6qi2OtU3unU" role="2ShVmc">
                <ref role="37wK5l" node="6qi2OtU3ufb" resolve="LanguageErrorsComponent" />
                <node concept="2OqwBi" id="6se4BTUcVX9" role="37wK5m">
                  <node concept="37vLTw" id="2BHiRxglGoY" role="2Oq$k0">
                    <ref role="3cqZAo" node="6qi2OtU3uog" resolve="rootNode" />
                  </node>
                  <node concept="I4A8Y" id="6se4BTUcWDM" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3unW" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3unX" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTz3t" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3unR" resolve="errorsComponent" />
            </node>
            <node concept="liA8E" id="6qi2OtU3unZ" role="2OqNvi">
              <ref role="37wK5l" node="6qi2OtU3u6L" resolve="check" />
              <node concept="37vLTw" id="2BHiRxgm6o9" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3uog" resolve="rootNode" />
              </node>
              <node concept="37vLTw" id="2BHiRxeu_7s" role="37wK5m">
                <ref role="3cqZAo" node="2UMCgvoqxzk" resolve="myRules" />
              </node>
              <node concept="37vLTw" id="2BHiRxglYDh" role="37wK5m">
                <ref role="3cqZAo" node="6qi2OtU3uoi" resolve="repoitory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6qi2OtU3uo3" role="3cqZAp">
          <node concept="3cpWsn" id="6qi2OtU3uo4" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="2hMVRd" id="6qi2OtU3uo5" role="1tU5fm">
              <node concept="3uibUv" id="6qi2OtU3uo6" role="2hN53Y">
                <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
              </node>
            </node>
            <node concept="2OqwBi" id="6qi2OtU3uo7" role="33vP2m">
              <node concept="37vLTw" id="3GM_nagTxhs" role="2Oq$k0">
                <ref role="3cqZAo" node="6qi2OtU3unR" resolve="errorsComponent" />
              </node>
              <node concept="liA8E" id="6qi2OtU3uo9" role="2OqNvi">
                <ref role="37wK5l" node="6qi2OtU3u8D" resolve="getErrors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6qi2OtU3uoa" role="3cqZAp">
          <node concept="2OqwBi" id="6qi2OtU3uob" role="3clFbG">
            <node concept="37vLTw" id="3GM_nagTrPS" role="2Oq$k0">
              <ref role="3cqZAo" node="6qi2OtU3unR" resolve="errorsComponent" />
            </node>
            <node concept="liA8E" id="6qi2OtU3uod" role="2OqNvi">
              <ref role="37wK5l" node="6qi2OtU3u1H" resolve="dispose" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6qi2OtU3uoe" role="3cqZAp">
          <node concept="37vLTw" id="3GM_nagTw58" role="3cqZAk">
            <ref role="3cqZAo" node="6qi2OtU3uo4" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6qi2OtU3uog" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="6qi2OtU3uoh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6qi2OtU3uoi" role="3clF46">
        <property role="TrG5h" value="repoitory" />
        <node concept="3uibUv" id="50Q$OHe3BMt" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
      <node concept="2hMVRd" id="6qi2OtU3uok" role="3clF45">
        <node concept="3uibUv" id="6qi2OtU3uol" role="2hN53Y">
          <ref role="3uigEE" to="2gg1:~IErrorReporter" resolve="IErrorReporter" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYsUK_sRLO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5TGjZPCODxZ">
    <property role="TrG5h" value="ErrorReportUtil" />
    <property role="1sVAO0" value="false" />
    <property role="1EXbeo" value="false" />
    <node concept="3Tm1VV" id="5TGjZPCODy0" role="1B3o_S" />
    <node concept="3clFbW" id="5TGjZPCODy1" role="jymVt">
      <node concept="3Tm1VV" id="5TGjZPCODy2" role="1B3o_S" />
      <node concept="3cqZAl" id="5TGjZPCODy3" role="3clF45" />
      <node concept="3clFbS" id="5TGjZPCODy4" role="3clF47" />
    </node>
    <node concept="2YIFZL" id="5TGjZPCODy5" role="jymVt">
      <property role="TrG5h" value="shouldReportError" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="5TGjZPCODy6" role="1B3o_S" />
      <node concept="10P_77" id="5TGjZPCODy7" role="3clF45" />
      <node concept="37vLTG" id="5TGjZPCODy8" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="5TGjZPCODyz" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5TGjZPCODya" role="3clF47">
        <node concept="3cpWs8" id="mYZ1Lju4Kv" role="3cqZAp">
          <node concept="3cpWsn" id="mYZ1Lju4Kw" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="mYZ1Lju4Ks" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="mYZ1Lju4Kx" role="33vP2m">
              <node concept="2JrnkZ" id="mYZ1Lju4Ky" role="2Oq$k0">
                <node concept="37vLTw" id="mYZ1Lju4Kz" role="2JrQYb">
                  <ref role="3cqZAo" node="5TGjZPCODy8" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="mYZ1Lju4K$" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getModel():org.jetbrains.mps.openapi.model.SModel" resolve="getModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="mYZ1Ljucrr" role="3cqZAp">
          <node concept="3clFbS" id="mYZ1Ljucru" role="3clFbx">
            <node concept="3cpWs6" id="mYZ1LjucLT" role="3cqZAp">
              <node concept="3clFbT" id="mYZ1LjucTi" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="mYZ1LjucGh" role="3clFbw">
            <node concept="10Nm6u" id="mYZ1LjucKY" role="3uHU7w" />
            <node concept="37vLTw" id="mYZ1Ljuczh" role="3uHU7B">
              <ref role="3cqZAo" node="mYZ1Lju4Kw" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5TGjZPCODyl" role="3cqZAp">
          <node concept="2YIFZM" id="5TGjZPCODyF" role="3clFbw">
            <ref role="37wK5l" to="w1kc:~SModelStereotype.isStubModelStereotype(java.lang.String):boolean" resolve="isStubModelStereotype" />
            <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
            <node concept="2YIFZM" id="2n9zn0CqMVP" role="37wK5m">
              <ref role="37wK5l" to="unno:7WvVJ3rO1Xl" resolve="getModelStereotype" />
              <ref role="1Pybhc" to="unno:1NYD3hytmTa" resolve="SNodeOperations" />
              <node concept="37vLTw" id="mYZ1Lju4K_" role="37wK5m">
                <ref role="3cqZAo" node="mYZ1Lju4Kw" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5TGjZPCODyu" role="3clFbx">
            <node concept="3cpWs6" id="5TGjZPCODyv" role="3cqZAp">
              <node concept="3clFbT" id="5TGjZPCODyw" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5K6siRRaBCF" role="3cqZAp">
          <node concept="3cpWsn" id="5K6siRRaBCG" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3Tqbb2" id="5K6siRRaBCH" role="1tU5fm" />
            <node concept="37vLTw" id="2BHiRxgm73A" role="33vP2m">
              <ref role="3cqZAo" node="5TGjZPCODy8" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="5K6siRRaBCN" role="3cqZAp">
          <node concept="3y3z36" id="5K6siRRaBCR" role="2$JKZa">
            <node concept="10Nm6u" id="5K6siRRaBCU" role="3uHU7w" />
            <node concept="37vLTw" id="3GM_nagTvA6" role="3uHU7B">
              <ref role="3cqZAo" node="5K6siRRaBCG" resolve="current" />
            </node>
          </node>
          <node concept="3clFbS" id="5K6siRRaBCP" role="2LFqv$">
            <node concept="3cpWs8" id="6WWPJLIBmqX" role="3cqZAp">
              <node concept="3cpWsn" id="6WWPJLIBmqY" role="3cpWs9">
                <property role="TrG5h" value="possibleSuppressors" />
                <node concept="A3Dl8" id="6WWPJLIBDPg" role="1tU5fm">
                  <node concept="3Tqbb2" id="6WWPJLIBDPi" role="A3Ik2" />
                </node>
                <node concept="2OqwBi" id="6WWPJLIBAh6" role="33vP2m">
                  <node concept="2OqwBi" id="6WWPJLIBmqZ" role="2Oq$k0">
                    <node concept="37vLTw" id="6WWPJLIBmr0" role="2Oq$k0">
                      <ref role="3cqZAo" node="5K6siRRaBCG" resolve="current" />
                    </node>
                    <node concept="3CFZ6_" id="6WWPJLIBmr1" role="2OqNvi">
                      <node concept="3CFTEB" id="6WWPJLIBmr2" role="3CFYIz" />
                    </node>
                  </node>
                  <node concept="4Tj9Z" id="6WWPJLIBC2P" role="2OqNvi">
                    <node concept="2ShNRf" id="6WWPJLIBCmx" role="576Qk">
                      <node concept="2HTt$P" id="6WWPJLIBCS0" role="2ShVmc">
                        <node concept="3Tqbb2" id="6WWPJLIBD21" role="2HTBi0" />
                        <node concept="37vLTw" id="6WWPJLIBDbN" role="2HTEbv">
                          <ref role="3cqZAo" node="5K6siRRaBCG" resolve="current" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6WWPJLIBDU5" role="3cqZAp" />
            <node concept="3clFbJ" id="5K6siRRaHg3" role="3cqZAp">
              <node concept="3clFbS" id="5K6siRRaHg4" role="3clFbx">
                <node concept="3cpWs6" id="5K6siRRaHgK" role="3cqZAp">
                  <node concept="3clFbT" id="5K6siRRaHgM" role="3cqZAk">
                    <property role="3clFbU" value="false" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="3uH03eoyIRn" role="3clFbw">
                <node concept="2OqwBi" id="5K6siRRaHgh" role="2Oq$k0">
                  <node concept="37vLTw" id="6WWPJLIBwER" role="2Oq$k0">
                    <ref role="3cqZAo" node="6WWPJLIBmqY" resolve="possibleSuppressors" />
                  </node>
                  <node concept="v3k3i" id="3uH03eoyIIY" role="2OqNvi">
                    <node concept="chp4Y" id="3uH03eoyNfT" role="v3oSu">
                      <ref role="cht4Q" to="tpck:2WmWrdnSpX3" resolve="ISuppressErrors" />
                    </node>
                  </node>
                </node>
                <node concept="2HwmR7" id="5K6siRRaHgl" role="2OqNvi">
                  <node concept="1bVj0M" id="5K6siRRaHgm" role="23t8la">
                    <node concept="3clFbS" id="5K6siRRaHgn" role="1bW5cS">
                      <node concept="3clFbF" id="5K6siRRaHgq" role="3cqZAp">
                        <node concept="2OqwBi" id="7Hf6HLtlPLZ" role="3clFbG">
                          <node concept="37vLTw" id="2BHiRxgmP7x" role="2Oq$k0">
                            <ref role="3cqZAo" node="5K6siRRaHgo" resolve="attr" />
                          </node>
                          <node concept="2qgKlT" id="7Hf6HLtlPM5" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:2WmWrdnSpX7" resolve="suppress" />
                            <node concept="37vLTw" id="2BHiRxgmhDw" role="37wK5m">
                              <ref role="3cqZAo" node="5TGjZPCODy8" resolve="node" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="5K6siRRaHgo" role="1bW2Oz">
                      <property role="TrG5h" value="attr" />
                      <node concept="2jxLKc" id="5K6siRRaHgp" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="U99cpalqjW" role="3cqZAp">
              <node concept="3clFbS" id="U99cpalqjX" role="3clFbx">
                <node concept="3cpWs6" id="U99cpalqjY" role="3cqZAp">
                  <node concept="3clFbT" id="U99cpalqjZ" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="2b8kI$OPcH1" role="3clFbw">
                <node concept="37vLTw" id="3GM_nagT_GA" role="2Oq$k0">
                  <ref role="3cqZAo" node="5K6siRRaBCG" resolve="current" />
                </node>
                <node concept="1mIQ4w" id="2b8kI$OPcH3" role="2OqNvi">
                  <node concept="chp4Y" id="2b8kI$OPcH5" role="cj9EA">
                    <ref role="cht4Q" to="tpck:U99cpalq9J" resolve="IAntisuppressErrors" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6WWPJLIBE0W" role="3cqZAp" />
            <node concept="3clFbF" id="5K6siRRaBD8" role="3cqZAp">
              <node concept="37vLTI" id="5K6siRRaBDa" role="3clFbG">
                <node concept="2OqwBi" id="5K6siRRaBDe" role="37vLTx">
                  <node concept="37vLTw" id="7h3U_IgpMla" role="2Oq$k0">
                    <ref role="3cqZAo" node="5K6siRRaBCG" resolve="current" />
                  </node>
                  <node concept="1mfA1w" id="5K6siRRaBDi" role="2OqNvi" />
                </node>
                <node concept="37vLTw" id="3GM_nagTw52" role="37vLTJ">
                  <ref role="3cqZAo" node="5K6siRRaBCG" resolve="current" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5TGjZPCODyx" role="3cqZAp">
          <node concept="3clFbT" id="5TGjZPCODyy" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3efgZvcMiWG" role="jymVt" />
    <node concept="2YIFZL" id="3efgZvcMhmD" role="jymVt">
      <property role="TrG5h" value="manuallySuppressed" />
      <property role="DiZV1" value="false" />
      <node concept="3Tm1VV" id="3efgZvcMhmE" role="1B3o_S" />
      <node concept="10P_77" id="3efgZvcMhmF" role="3clF45" />
      <node concept="37vLTG" id="3efgZvcMhmG" role="3clF46">
        <property role="TrG5h" value="node" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tqbb2" id="3efgZvcMhmH" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3efgZvcMhmI" role="3clF47">
        <node concept="3clFbF" id="3efgZvcMiLs" role="3cqZAp">
          <node concept="2OqwBi" id="3efgZvcMcuH" role="3clFbG">
            <node concept="2OqwBi" id="3efgZvcMbfa" role="2Oq$k0">
              <node concept="37vLTw" id="3efgZvcMbaM" role="2Oq$k0">
                <ref role="3cqZAo" node="3efgZvcMhmG" resolve="node" />
              </node>
              <node concept="z$bX8" id="3efgZvcMbkX" role="2OqNvi">
                <node concept="1xIGOp" id="3efgZvcMc5a" role="1xVPHs" />
                <node concept="1xMEDy" id="3efgZvcMc5D" role="1xVPHs">
                  <node concept="chp4Y" id="3efgZvcMc7X" role="ri$Ld">
                    <ref role="cht4Q" to="tpck:2WmWrdnSpX2" resolve="ICanSuppressErrors" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HwmR7" id="3efgZvcMdci" role="2OqNvi">
              <node concept="1bVj0M" id="3efgZvcMdck" role="23t8la">
                <node concept="3clFbS" id="3efgZvcMdcl" role="1bW5cS">
                  <node concept="3clFbF" id="3efgZvcMdh5" role="3cqZAp">
                    <node concept="2OqwBi" id="3efgZvcMdvo" role="3clFbG">
                      <node concept="2OqwBi" id="3efgZvcMdjM" role="2Oq$k0">
                        <node concept="37vLTw" id="3efgZvcMdh4" role="2Oq$k0">
                          <ref role="3cqZAo" node="3efgZvcMdcm" resolve="it" />
                        </node>
                        <node concept="3CFZ6_" id="3efgZvcMdn2" role="2OqNvi">
                          <node concept="3CFYIy" id="3efgZvcMdq9" role="3CFYIz">
                            <ref role="3CFYIx" to="tpck:3EoG9lZUeni" resolve="SuppressErrorsAnnotation" />
                          </node>
                        </node>
                      </node>
                      <node concept="3x8VRR" id="3efgZvcMkoM" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="3efgZvcMdcm" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="3efgZvcMdcn" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

