<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:291c2e75-1693-4702-b50c-6c96d8d6956d(jetbrains.mps.samples.customAspect.documentation.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="0" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="0" />
    <use id="22916f45-e98f-4433-9c1b-1b382cf5bd8d" name="jetbrains.mps.samples.customAspect.documentation" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="4stj" ref="r:ed8e9175-44d1-47ad-9d2b-75c7b10d01f8(jetbrains.mps.samples.customAspect.documentation.runtime)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="e8bb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.adapter.ids(MPS.Core/)" />
    <import index="tp3j" ref="r:00000000-0000-4000-0000-011c89590353(jetbrains.mps.lang.intentions.structure)" />
    <import index="j6e7" ref="r:554f8053-4df6-4aa3-9ecf-e71658269bf9(jetbrains.mps.samples.customAspect.documentation.structure)" />
    <import index="ucur" ref="r:1dfaf07d-c77a-451e-91d3-b6f80f0f8508(jetbrains.mps.lang.descriptor.generator.template.main@generator)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="zq1i" ref="r:db5137e2-4fb5-4a7c-926a-237f59e67877(jetbrains.mps.lang.descriptor.generator.template.utils)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="hypd" ref="r:aa31e43e-9240-4f4d-b6db-5c1c9a86c59e(jetbrains.mps.lang.project.structure)" />
    <import index="ze1i" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.runtime(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="iwf0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.descriptor(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
  </imports>
  <registry>
    <language id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts">
      <concept id="1161622753914" name="jetbrains.mps.lang.sharedConcepts.structure.ConceptFunctionParameter_operationContext" flags="nn" index="1Q79dO" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167088157977" name="createRootRule" index="2VS0gm" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4" />
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="5005282049925926521" name="jetbrains.mps.lang.generator.structure.TemplateArgumentParameterExpression" flags="nn" index="v3LJS">
        <reference id="5005282049925926522" name="parameter" index="v3LJV" />
      </concept>
      <concept id="1167087469898" name="jetbrains.mps.lang.generator.structure.CreateRootRule" flags="lg" index="2VPoh5">
        <reference id="1167087469901" name="templateNode" index="2VPoh2" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="982871510064032177" name="jetbrains.mps.lang.generator.structure.IParameterizedTemplate" flags="ng" index="1s_3nv">
        <child id="982871510064032342" name="parameter" index="1s_3oS" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1805153994415891174" name="jetbrains.mps.lang.generator.structure.TemplateParameterDeclaration" flags="ng" index="1N15co">
        <child id="1805153994415893199" name="type" index="1N15GL" />
      </concept>
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173996401517" name="jetbrains.mps.baseLanguageInternal.structure.InternalNewExpression" flags="nn" index="1nCR9W">
        <property id="1173996588177" name="fqClassName" index="1nD$Q0" />
        <child id="1179332974947" name="type" index="2lIhxL" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <reference id="1171315804605" name="concept" index="2RRcyH" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="linkRole" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1178894719932" name="jetbrains.mps.baseLanguage.collections.structure.DistinctOperation" flags="nn" index="1VAtEI" />
    </language>
  </registry>
  <node concept="bUwia" id="2wQ3F8GeG07">
    <property role="TrG5h" value="main" />
    <node concept="2VPoh5" id="2wQ3F8GeXiG" role="2VS0gm">
      <ref role="2VPoh2" node="2wQ3F8GeZrq" resolve="DocumentationDescriptor" />
    </node>
  </node>
  <node concept="312cEu" id="2wQ3F8GeZrq">
    <property role="TrG5h" value="DocumentationDescriptor" />
    <node concept="3Tm1VV" id="2wQ3F8GeZrr" role="1B3o_S" />
    <node concept="n94m4" id="2wQ3F8GeZrs" role="lGtFl" />
    <node concept="3uibUv" id="2wQ3F8Gf02T" role="EKbjA">
      <ref role="3uigEE" to="4stj:2wQ3F8GeTEG" resolve="DocumentationAspectDescriptor" />
    </node>
    <node concept="3clFb_" id="2wQ3F8Gf041" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getConceptDocumentation" />
      <node concept="3Tm1VV" id="2wQ3F8Gf043" role="1B3o_S" />
      <node concept="3uibUv" id="2wQ3F8Gf044" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="2wQ3F8Gf045" role="3clF46">
        <property role="TrG5h" value="concept" />
        <node concept="3bZ5Sz" id="2wQ3F8Gf046" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2wQ3F8Gf047" role="3clF47">
        <node concept="1_3QMa" id="2wQ3F8Gf06h" role="3cqZAp">
          <node concept="1pnPoh" id="2wQ3F8Gf0ax" role="1_3QMm">
            <node concept="3gn64h" id="2wQ3F8Gf0aG" role="1pnPq6">
              <ref role="3gnhBz" to="j6e7:2wQ3F8GeGsM" resolve="ConceptDocumentation" />
              <node concept="1ZhdrF" id="2wQ3F8Gf5qY" role="lGtFl">
                <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1154546950173/1154546997487" />
                <property role="2qtEX8" value="concept" />
                <node concept="3$xsQk" id="2wQ3F8Gf5qZ" role="3$ytzL">
                  <node concept="3clFbS" id="2wQ3F8Gf5r0" role="2VODD2">
                    <node concept="3clFbF" id="2wQ3F8Gf5tc" role="3cqZAp">
                      <node concept="30H73N" id="2wQ3F8Gf5tb" role="3clFbG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="2wQ3F8Gf0a_" role="1pnPq1">
              <node concept="3cpWs6" id="2wQ3F8Gf0bz" role="3cqZAp">
                <node concept="Xl_RD" id="2wQ3F8Gf0he" role="3cqZAk">
                  <property role="Xl_RC" value="doc" />
                  <node concept="17Uvod" id="2wQ3F8Gf5Tt" role="lGtFl">
                    <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                    <property role="2qtEX9" value="value" />
                    <node concept="3zFVjK" id="2wQ3F8Gf5Tu" role="3zH0cK">
                      <node concept="3clFbS" id="2wQ3F8Gf5Tv" role="2VODD2">
                        <node concept="3clFbF" id="2wQ3F8Gf663" role="3cqZAp">
                          <node concept="2OqwBi" id="2wQ3F8GfaV$" role="3clFbG">
                            <node concept="2OqwBi" id="2wQ3F8Gf70u" role="2Oq$k0">
                              <node concept="2OqwBi" id="2wQ3F8Gf665" role="2Oq$k0">
                                <node concept="2OqwBi" id="2wQ3F8Gf666" role="2Oq$k0">
                                  <node concept="1iwH7S" id="2wQ3F8Gf667" role="2Oq$k0" />
                                  <node concept="1r8y6K" id="2wQ3F8Gf668" role="2OqNvi" />
                                </node>
                                <node concept="2RRcyG" id="2wQ3F8Gf669" role="2OqNvi">
                                  <ref role="2RRcyH" to="j6e7:2wQ3F8GeGsM" resolve="ConceptDocumentation" />
                                </node>
                              </node>
                              <node concept="1z4cxt" id="2wQ3F8Gf9xj" role="2OqNvi">
                                <node concept="1bVj0M" id="2wQ3F8Gf9xl" role="23t8la">
                                  <node concept="3clFbS" id="2wQ3F8Gf9xm" role="1bW5cS">
                                    <node concept="3clFbF" id="2wQ3F8Gf9K3" role="3cqZAp">
                                      <node concept="3clFbC" id="2wQ3F8Gfazr" role="3clFbG">
                                        <node concept="30H73N" id="2wQ3F8GfaEU" role="3uHU7w" />
                                        <node concept="2OqwBi" id="2wQ3F8Gf9Sx" role="3uHU7B">
                                          <node concept="37vLTw" id="2wQ3F8Gf9K2" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2wQ3F8Gf9xn" resolve="it" />
                                          </node>
                                          <node concept="3TrEf2" id="2wQ3F8Gfaam" role="2OqNvi">
                                            <ref role="3Tt5mk" to="j6e7:2wQ3F8GeHgQ" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="2wQ3F8Gf9xn" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="2wQ3F8Gf9xo" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3TrcHB" id="2wQ3F8Gfbg5" role="2OqNvi">
                              <ref role="3TsBF5" to="j6e7:2wQ3F8GeGRK" resolve="text" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1WS0z7" id="2wQ3F8Gf2zA" role="lGtFl">
              <node concept="3JmXsc" id="2wQ3F8Gf2zC" role="3Jn$fo">
                <node concept="3clFbS" id="2wQ3F8Gf2zE" role="2VODD2">
                  <node concept="3clFbF" id="2wQ3F8Gf5g7" role="3cqZAp">
                    <node concept="2OqwBi" id="3pZGE0vteCC" role="3clFbG">
                      <node concept="2OqwBi" id="3pZGE0vny_L" role="2Oq$k0">
                        <node concept="2OqwBi" id="1M8MwyYhAY" role="2Oq$k0">
                          <node concept="2OqwBi" id="1M8MwyYhAZ" role="2Oq$k0">
                            <node concept="1iwH7S" id="1M8MwyYhB0" role="2Oq$k0" />
                            <node concept="1st3f0" id="2wQ3F8Gf_uY" role="2OqNvi" />
                          </node>
                          <node concept="2RRcyG" id="1M8MwyYhB2" role="2OqNvi">
                            <ref role="2RRcyH" to="j6e7:2wQ3F8GeGsM" resolve="ConceptDocumentation" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="_dFfuhhTSp" role="2OqNvi">
                          <node concept="1bVj0M" id="_dFfuhhTSr" role="23t8la">
                            <node concept="3clFbS" id="_dFfuhhTSs" role="1bW5cS">
                              <node concept="3clFbF" id="_dFfuhhVcI" role="3cqZAp">
                                <node concept="2OqwBi" id="_dFfuhhVqb" role="3clFbG">
                                  <node concept="37vLTw" id="_dFfuhhVcH" role="2Oq$k0">
                                    <ref role="3cqZAo" node="_dFfuhhTSt" resolve="it" />
                                  </node>
                                  <node concept="3TrEf2" id="_dFfuhhVKJ" role="2OqNvi">
                                    <ref role="3Tt5mk" to="j6e7:2wQ3F8GeHgQ" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="_dFfuhhTSt" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="_dFfuhhTSu" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1VAtEI" id="3pZGE0vtfp0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="2wQ3F8Gf07c" role="1_3QMn">
            <ref role="3cqZAo" node="2wQ3F8Gf045" resolve="concept" />
          </node>
          <node concept="3clFbS" id="2wQ3F8Gf0dv" role="1prKM_" />
        </node>
        <node concept="3cpWs6" id="2wQ3F8Gf08O" role="3cqZAp">
          <node concept="10Nm6u" id="2wQ3F8Gf09v" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="jVnub" id="2wQ3F8Gfby3">
    <property role="TrG5h" value="DocDescriptor" />
    <ref role="phYkn" to="ucur:73oS_w7sjpL" resolve="returnLanguageAspectDescriptor" />
    <node concept="3aamgX" id="1na$wSWf3eT" role="3aUrZf">
      <ref role="30HIoZ" to="hypd:5xDtKQA7vSB" resolve="ModelReference" />
      <node concept="30G5F_" id="1na$wSWf3eX" role="30HLyM">
        <node concept="3clFbS" id="1na$wSWf3eY" role="2VODD2">
          <node concept="3cpWs6" id="3S8kul4RZlW" role="3cqZAp">
            <node concept="2YIFZM" id="3S8kul4RZlX" role="3cqZAk">
              <ref role="37wK5l" to="zq1i:1XXGcSTYFLY" resolve="isAspectOfLanguage" />
              <ref role="1Pybhc" to="zq1i:3Y_BMlivqcz" resolve="LanguageRuntimeGeneratorUtils" />
              <node concept="2OqwBi" id="2wQ3F8GfsAe" role="37wK5m">
                <node concept="v3LJS" id="2wQ3F8Gfst2" role="2Oq$k0">
                  <ref role="v3LJV" node="2wQ3F8GfcH0" resolve="modelRef" />
                </node>
                <node concept="liA8E" id="2wQ3F8GfsSS" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModelReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SModel" resolve="resolve" />
                  <node concept="2OqwBi" id="2wQ3F8GfujF" role="37wK5m">
                    <node concept="2OqwBi" id="2wQ3F8GftP6" role="2Oq$k0">
                      <node concept="1Q79dO" id="2wQ3F8GftFI" role="2Oq$k0" />
                      <node concept="liA8E" id="2wQ3F8Gfu4G" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2wQ3F8GfuKN" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1iwH7S" id="3S8kul4RZm0" role="37wK5m" />
              <node concept="35c_gC" id="52UGxk5qCDB" role="37wK5m">
                <ref role="35c_gD" to="j6e7:2wQ3F8GeGsM" resolve="ConceptDocumentation" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1Koe21" id="3XrE5vcmThX" role="1lVwrX">
        <node concept="312cEu" id="3XrE5vcmTCT" role="1Koe22">
          <property role="2bfB8j" value="true" />
          <property role="TrG5h" value="containerClass" />
          <node concept="3clFb_" id="3XrE5vcna5M" role="jymVt">
            <property role="1EzhhJ" value="false" />
            <property role="TrG5h" value="createAspectDescriptor" />
            <property role="od$2w" value="false" />
            <property role="DiZV1" value="false" />
            <node concept="16syzq" id="3XrE5vcrvmy" role="3clF45">
              <ref role="16sUi3" node="3XrE5vcna68" resolve="T" />
            </node>
            <node concept="37vLTG" id="3XrE5vcna5N" role="3clF46">
              <property role="TrG5h" value="aspectClass" />
              <node concept="3uibUv" id="3XrE5vcna5O" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                <node concept="16syzq" id="3XrE5vcrx4O" role="11_B2D">
                  <ref role="16sUi3" node="3XrE5vcna68" resolve="T" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="3XrE5vcna5R" role="3clF47">
              <node concept="3clFbJ" id="3XrE5vcna5S" role="3cqZAp">
                <node concept="3clFbC" id="3XrE5vcni6x" role="3clFbw">
                  <node concept="3VsKOn" id="4T4DgDRJ5JL" role="3uHU7w">
                    <ref role="3VsUkX" to="4stj:2wQ3F8GeTEG" resolve="DocumentationAspectDescriptor" />
                  </node>
                  <node concept="37vLTw" id="3XrE5vcnhrD" role="3uHU7B">
                    <ref role="3cqZAo" node="3XrE5vcna5N" resolve="aspectClass" />
                  </node>
                </node>
                <node concept="3clFbS" id="3XrE5vcna63" role="3clFbx">
                  <node concept="3cpWs6" id="3XrE5vcnqKv" role="3cqZAp">
                    <node concept="10QFUN" id="41NAEYRI0B4" role="3cqZAk">
                      <node concept="16syzq" id="41NAEYRI1xb" role="10QFUM">
                        <ref role="16sUi3" node="3XrE5vcna68" resolve="T" />
                      </node>
                      <node concept="1nCR9W" id="3XrE5vcr$US" role="10QFUP">
                        <property role="1nD$Q0" value="DocAspectDescriptor" />
                        <node concept="3uibUv" id="2wQ3F8Gfp19" role="2lIhxL">
                          <ref role="3uigEE" to="4stj:2wQ3F8GeTEG" resolve="DocumentationAspectDescriptor" />
                        </node>
                        <node concept="17Uvod" id="3XrE5vcrElb" role="lGtFl">
                          <property role="2qtEX9" value="fqClassName" />
                          <property role="P4ACc" value="df345b11-b8c7-4213-ac66-48d2a9b75d88/1173996401517/1173996588177" />
                          <node concept="3zFVjK" id="3XrE5vcrElc" role="3zH0cK">
                            <node concept="3clFbS" id="3XrE5vcrEld" role="2VODD2">
                              <node concept="3clFbF" id="3XrE5vcrH7N" role="3cqZAp">
                                <node concept="3cpWs3" id="3XrE5vcrH7O" role="3clFbG">
                                  <node concept="Xl_RD" id="3XrE5vcrH7P" role="3uHU7w">
                                    <property role="Xl_RC" value=".DocumentationDescriptor" />
                                  </node>
                                  <node concept="2OqwBi" id="3XrE5vcrH7Q" role="3uHU7B">
                                    <node concept="3TrcHB" id="3XrE5vcrH7R" role="2OqNvi">
                                      <ref role="3TsBF5" to="hypd:5xDtKQA7vSI" resolve="qualifiedName" />
                                    </node>
                                    <node concept="30H73N" id="3XrE5vcrH7S" role="2Oq$k0" />
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
                <node concept="raruj" id="3XrE5vcnh3o" role="lGtFl" />
              </node>
              <node concept="3cpWs6" id="3XrE5vcna65" role="3cqZAp">
                <node concept="10Nm6u" id="3XrE5vcna66" role="3cqZAk" />
              </node>
            </node>
            <node concept="3Tm1VV" id="3XrE5vcna67" role="1B3o_S" />
            <node concept="16euLQ" id="3XrE5vcna68" role="16eVyc">
              <property role="TrG5h" value="T" />
              <node concept="3uibUv" id="4r8JClTjSeJ" role="3ztrMU">
                <ref role="3uigEE" to="ze1i:~ILanguageAspect" resolve="ILanguageAspect" />
              </node>
            </node>
          </node>
          <node concept="3Tm1VV" id="3XrE5vcmTCU" role="1B3o_S" />
        </node>
      </node>
    </node>
    <node concept="1N15co" id="2wQ3F8GfcGY" role="1s_3oS">
      <property role="TrG5h" value="langModule" />
      <node concept="3uibUv" id="2wQ3F8GfcGZ" role="1N15GL">
        <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
      </node>
    </node>
    <node concept="1N15co" id="2wQ3F8GfcH0" role="1s_3oS">
      <property role="TrG5h" value="modelRef" />
      <node concept="3uibUv" id="2wQ3F8GfcHC" role="1N15GL">
        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
      </node>
    </node>
  </node>
</model>

