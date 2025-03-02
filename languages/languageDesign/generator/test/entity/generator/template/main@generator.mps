<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4f47afa3-64fe-42e3-9115-b12425c6d436(jetbrains.mps.generator.test.crossmodel.entity.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="4d14758c-3ecb-486d-b8c8-ea5beb8ae408" name="jetbrains.mps.generator.test.crossmodel.entity" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="dc1cc948-6f43-4687-90cb-17dd5cb27219" name="jetbrains.mps.generator.test.crossmodel.property" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="sroc" ref="r:0bb4ff75-d79d-4390-9b6c-e01faee2c7e6(jetbrains.mps.generator.test.crossmodel.property.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="qz7j" ref="r:9b56ed90-436a-4093-aab2-2dfe5d09ce42(jetbrains.mps.generator.test.crossmodel.entity.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="3071639529306477415" name="exports" index="24Zfi7" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167168920554" name="jetbrains.mps.lang.generator.structure.BaseMappingRule_Condition" flags="in" index="30G5F_" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
        <child id="1167169362365" name="conditionFunction" index="30HLyM" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="7325101476743014756" name="jetbrains.mps.lang.generator.structure.ExportLabelParameter_outputNode" flags="ng" index="3dkLmv" />
      <concept id="7325101476742962142" name="jetbrains.mps.lang.generator.structure.ExportLabelParameter_inputNode" flags="ng" index="3dkYs_" />
      <concept id="7325101476742962089" name="jetbrains.mps.lang.generator.structure.UnmarshalFunction" flags="ig" index="3dkYti" />
      <concept id="7325101476742955528" name="jetbrains.mps.lang.generator.structure.MarshalFunction" flags="ig" index="3dkZVN" />
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="8915420221429954054" name="jetbrains.mps.lang.generator.structure.ExportMacro" flags="lg" index="3y4P_M">
        <reference id="8915420221429954106" name="label" index="3y4P_e" />
      </concept>
      <concept id="8915420221429742786" name="jetbrains.mps.lang.generator.structure.ExportLabelParameter_keeper" flags="ng" index="3y7DeQ" />
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="494100551407614666" name="jetbrains.mps.lang.generator.structure.ExportLabel" flags="ng" index="1J8HWv">
        <property id="2500545923215275944" name="documentation" index="3FvSVG" />
        <reference id="1770874776445877574" name="outputKind" index="vkxhW" />
        <reference id="1770874776445877573" name="inputKind" index="vkxhZ" />
        <reference id="494100551407752158" name="dataHolder" index="1J8bob" />
        <child id="494100551407752201" name="marshal" index="1J8b7s" />
        <child id="494100551407752226" name="unmarshal" index="1J8b7R" />
      </concept>
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
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
      <concept id="494100551407707431" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetExport" flags="ng" index="1J843M">
        <reference id="494100551407707432" name="label" index="1J843X" />
        <child id="1770874776445951671" name="inputNode" index="vkvud" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138676077309" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="nn" index="uoxfO">
        <reference id="1138676095763" name="enumMember" index="uo_Cq" />
      </concept>
      <concept id="1146171026731" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Enum" flags="nn" index="3t7uKx">
        <child id="1146171026732" name="value" index="3t7uKA" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
    <language id="dc1cc948-6f43-4687-90cb-17dd5cb27219" name="jetbrains.mps.generator.test.crossmodel.property">
      <concept id="5925726056274072226" name="jetbrains.mps.generator.test.crossmodel.property.structure.InitOp" flags="ng" index="2ugBFh">
        <property id="5925726056274090047" name="value" index="2ugz1c" />
        <reference id="5925726056274073213" name="property" index="2ugBSe" />
        <reference id="5176577547833794531" name="bean" index="_cVCT" />
      </concept>
      <concept id="5533782486491987568" name="jetbrains.mps.generator.test.crossmodel.property.structure.BeanProperty" flags="ng" index="1BqwYE" />
      <concept id="5533782486491987565" name="jetbrains.mps.generator.test.crossmodel.property.structure.Bean" flags="ng" index="1BqwYR">
        <child id="5925726056274208617" name="initializers" index="2uJ4Wq" />
        <child id="5533782486491987582" name="properties" index="1BqwY$" />
      </concept>
    </language>
  </registry>
  <node concept="13MO4I" id="3LKEueXF49i">
    <property role="TrG5h" value="EntriesOne" />
    <ref role="3gUMe" to="qz7j:3LKEueXEmnQ" resolve="Entry" />
    <node concept="1BqwYR" id="4vmTtDyRYPs" role="13RCb5">
      <property role="TrG5h" value="BeanDeclarations" />
      <node concept="1BqwYE" id="4vmTtDyRZGv" role="1BqwY$">
        <property role="TrG5h" value="p" />
        <node concept="raruj" id="4vmTtDyRZGx" role="lGtFl" />
        <node concept="17Uvod" id="4vmTtDyS0o9" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="4vmTtDyS0oa" role="3zH0cK">
            <node concept="3clFbS" id="4vmTtDyS0ob" role="2VODD2">
              <node concept="3clFbF" id="4vmTtDyS0yP" role="3cqZAp">
                <node concept="2OqwBi" id="4vmTtDyS0B7" role="3clFbG">
                  <node concept="30H73N" id="4vmTtDyS0yO" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4vmTtDyS0UF" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3y4P_M" id="4vmTtDyS1jk" role="lGtFl">
          <ref role="3y4P_e" node="2aNIkj9N1d3" resolve="EntryToBeanProperty" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="3LKEueXFlva">
    <property role="TrG5h" value="EntriesTwo" />
    <ref role="3gUMe" to="qz7j:3LKEueXEmnQ" resolve="Entry" />
    <node concept="1BqwYR" id="4vmTtDyS0hO" role="13RCb5">
      <property role="TrG5h" value="BeanInitializers" />
      <node concept="1BqwYE" id="4vmTtDySslP" role="1BqwY$">
        <property role="TrG5h" value="context" />
      </node>
      <node concept="2ugBFh" id="4vmTtDyS0hR" role="2uJ4Wq">
        <property role="2ugz1c" value="0" />
        <ref role="2ugBSe" node="4vmTtDySslP" resolve="context" />
        <ref role="_cVCT" node="4vmTtDyS0hO" resolve="BeanInitializers" />
        <node concept="raruj" id="4vmTtDyS0hT" role="lGtFl" />
        <node concept="17Uvod" id="4vmTtDySoCV" role="lGtFl">
          <property role="2qtEX9" value="value" />
          <property role="P4ACc" value="dc1cc948-6f43-4687-90cb-17dd5cb27219/5925726056274072226/5925726056274090047" />
          <node concept="3zFVjK" id="4vmTtDySoCW" role="3zH0cK">
            <node concept="3clFbS" id="4vmTtDySoCX" role="2VODD2">
              <node concept="3clFbF" id="4vmTtDySp6B" role="3cqZAp">
                <node concept="2OqwBi" id="4vmTtDySq0p" role="3clFbG">
                  <node concept="2OqwBi" id="4vmTtDySpg1" role="2Oq$k0">
                    <node concept="30H73N" id="4vmTtDySp6A" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4vmTtDySpBN" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4vmTtDySqOR" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ZhdrF" id="4vmTtDySvqP" role="lGtFl">
          <property role="2qtEX8" value="property" />
          <property role="P3scX" value="dc1cc948-6f43-4687-90cb-17dd5cb27219/5925726056274072226/5925726056274073213" />
          <node concept="3$xsQk" id="4vmTtDySvqQ" role="3$ytzL">
            <node concept="3clFbS" id="4vmTtDySvqR" role="2VODD2">
              <node concept="3clFbF" id="4vmTtDySvWN" role="3cqZAp">
                <node concept="2OqwBi" id="4vmTtDySvZI" role="3clFbG">
                  <node concept="1iwH7S" id="4vmTtDySvWM" role="2Oq$k0" />
                  <node concept="1J843M" id="4vmTtDySw9a" role="2OqNvi">
                    <ref role="1J843X" node="2aNIkj9N1d3" resolve="EntryToBeanProperty" />
                    <node concept="2OqwBi" id="4vmTtDySwiI" role="vkvud">
                      <node concept="30H73N" id="4vmTtDySwgv" role="2Oq$k0" />
                      <node concept="3TrEf2" id="4vmTtDySwAw" role="2OqNvi">
                        <ref role="3Tt5mk" to="qz7j:3LKEueXEqw8" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ZhdrF" id="4vmTtDyTsw$" role="lGtFl">
          <property role="2qtEX8" value="bean" />
          <property role="P3scX" value="dc1cc948-6f43-4687-90cb-17dd5cb27219/5925726056274072226/5176577547833794531" />
          <node concept="3$xsQk" id="4vmTtDyTsw_" role="3$ytzL">
            <node concept="3clFbS" id="4vmTtDyTswA" role="2VODD2">
              <node concept="3clFbF" id="4vmTtDyTt4P" role="3cqZAp">
                <node concept="2OqwBi" id="4vmTtDyTt6M" role="3clFbG">
                  <node concept="1iwH7S" id="4vmTtDyTt4O" role="2Oq$k0" />
                  <node concept="1J843M" id="4vmTtDyTtbI" role="2OqNvi">
                    <ref role="1J843X" node="2aNIkj9MYP$" resolve="NodeToBean" />
                    <node concept="2OqwBi" id="4vmTtDyTtE6" role="vkvud">
                      <node concept="2OqwBi" id="4vmTtDyTtjg" role="2Oq$k0">
                        <node concept="30H73N" id="4vmTtDyTth1" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4vmTtDyTtuy" role="2OqNvi">
                          <ref role="3Tt5mk" to="qz7j:3LKEueXEqw8" />
                        </node>
                      </node>
                      <node concept="3TrEf2" id="4vmTtDyTtYY" role="2OqNvi">
                        <ref role="3Tt5mk" to="qz7j:2AJJ6NjfPPI" />
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
  <node concept="bUwia" id="2aNIkj9MUD_">
    <property role="TrG5h" value="SampleGenerator" />
    <node concept="1J8HWv" id="2aNIkj9MYP$" role="24Zfi7">
      <property role="TrG5h" value="NodeToBean" />
      <property role="3FvSVG" value="Captures classes generated from NodeA" />
      <ref role="vkxhZ" to="qz7j:3LKEueXEmhz" resolve="NodeA" />
      <ref role="1J8bob" to="qz7j:7ITVRipEe5t" resolve="TrivialKeeper" />
      <ref role="vkxhW" to="sroc:4NbWtCFCvTH" resolve="Bean" />
      <node concept="3dkZVN" id="2aNIkj9MYP_" role="1J8b7s">
        <node concept="3clFbS" id="2aNIkj9MYPA" role="2VODD2">
          <node concept="3clFbF" id="7ITVRipEd13" role="3cqZAp">
            <node concept="37vLTI" id="7ITVRipEuHW" role="3clFbG">
              <node concept="2OqwBi" id="7ITVRipEv5A" role="37vLTx">
                <node concept="3dkLmv" id="7ITVRipEuOB" role="2Oq$k0" />
                <node concept="3TrcHB" id="7ITVRipEvE2" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ITVRipEueR" role="37vLTJ">
                <node concept="3y7DeQ" id="7ITVRipEd11" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCiHT" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:7ITVRipEe5u" resolve="string1" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3dkYti" id="2aNIkj9MYPB" role="1J8b7R">
        <node concept="3clFbS" id="2aNIkj9MYPC" role="2VODD2">
          <node concept="3clFbF" id="7ITVRipE$4V" role="3cqZAp">
            <node concept="37vLTI" id="7ITVRipE_vp" role="3clFbG">
              <node concept="2OqwBi" id="7ITVRipE_ya" role="37vLTx">
                <node concept="3y7DeQ" id="7ITVRipE_w5" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCiZ2" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:7ITVRipEe5u" resolve="string1" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ITVRipE$ci" role="37vLTJ">
                <node concept="3dkLmv" id="7ITVRipE$4U" role="2Oq$k0" />
                <node concept="3TrcHB" id="7ITVRipE$Kw" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1J8HWv" id="2aNIkj9N1d3" role="24Zfi7">
      <property role="TrG5h" value="EntryToBeanProperty" />
      <property role="3FvSVG" value="Captures set methods for an Entry" />
      <ref role="1J8bob" to="qz7j:7ITVRipEe5t" resolve="TrivialKeeper" />
      <ref role="vkxhZ" to="qz7j:3LKEueXEmnQ" resolve="Entry" />
      <ref role="vkxhW" to="sroc:4NbWtCFCvTK" resolve="BeanProperty" />
      <node concept="3dkZVN" id="2aNIkj9N1d4" role="1J8b7s">
        <node concept="3clFbS" id="2aNIkj9N1d5" role="2VODD2">
          <node concept="3clFbF" id="7ITVRipEwir" role="3cqZAp">
            <node concept="37vLTI" id="7ITVRipEwQQ" role="3clFbG">
              <node concept="2OqwBi" id="7ITVRipEx63" role="37vLTx">
                <node concept="3dkYs_" id="7ITVRipEwXw" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCk8$" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ITVRipEwjX" role="37vLTJ">
                <node concept="3y7DeQ" id="7ITVRipEwip" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCjtT" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:7ITVRipEe5u" resolve="string1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7ITVRipExv4" role="3cqZAp">
            <node concept="37vLTI" id="7ITVRipExXV" role="3clFbG">
              <node concept="2OqwBi" id="7ITVRipEyfT" role="37vLTx">
                <node concept="3dkLmv" id="7ITVRipEy4A" role="2Oq$k0" />
                <node concept="3TrcHB" id="7ITVRipEzoA" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ITVRipExCi" role="37vLTJ">
                <node concept="3y7DeQ" id="7ITVRipExv2" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCjGk" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:7ITVRipEe5w" resolve="string2" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3dkYti" id="2aNIkj9N1d6" role="1J8b7R">
        <node concept="3clFbS" id="2aNIkj9N1d7" role="2VODD2">
          <node concept="3clFbF" id="7ITVRipE_Ys" role="3cqZAp">
            <node concept="37vLTI" id="7ITVRipEBq$" role="3clFbG">
              <node concept="2OqwBi" id="7ITVRipEBAJ" role="37vLTx">
                <node concept="3y7DeQ" id="7ITVRipEB$E" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCkmZ" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:7ITVRipEe5w" resolve="string2" />
                </node>
              </node>
              <node concept="2OqwBi" id="7ITVRipEA5Z" role="37vLTJ">
                <node concept="3dkLmv" id="7ITVRipE_Yr" role="2Oq$k0" />
                <node concept="3TrcHB" id="7ITVRipEAF2" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="2aNIkj9MVj2" role="3acgRq">
      <ref role="30HIoZ" to="qz7j:3LKEueXEmnQ" resolve="Entry" />
      <node concept="j$656" id="2aNIkj9MVj3" role="1lVwrX">
        <ref role="v9R2y" node="3LKEueXF49i" resolve="EntriesOne" />
      </node>
      <node concept="30G5F_" id="2aNIkj9MVj4" role="30HLyM">
        <node concept="3clFbS" id="2aNIkj9MVj5" role="2VODD2">
          <node concept="3clFbF" id="2aNIkj9MVj6" role="3cqZAp">
            <node concept="2OqwBi" id="2aNIkj9MVj7" role="3clFbG">
              <node concept="2OqwBi" id="2aNIkj9MVj8" role="2Oq$k0">
                <node concept="30H73N" id="2aNIkj9MVj9" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCkQv" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:3LKEueXEqHY" resolve="kind" />
                </node>
              </node>
              <node concept="3t7uKx" id="2aNIkj9MVjb" role="2OqNvi">
                <node concept="uoxfO" id="2aNIkj9MVjc" role="3t7uKA">
                  <ref role="uo_Cq" to="qz7j:3LKEueXEqI7" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="2aNIkj9MVjd" role="3acgRq">
      <ref role="30HIoZ" to="qz7j:3LKEueXEmnQ" resolve="Entry" />
      <node concept="j$656" id="2aNIkj9MVje" role="1lVwrX">
        <ref role="v9R2y" node="3LKEueXFlva" resolve="EntriesTwo" />
      </node>
      <node concept="30G5F_" id="2aNIkj9MVjf" role="30HLyM">
        <node concept="3clFbS" id="2aNIkj9MVjg" role="2VODD2">
          <node concept="3clFbF" id="2aNIkj9MVjh" role="3cqZAp">
            <node concept="2OqwBi" id="2aNIkj9MVji" role="3clFbG">
              <node concept="2OqwBi" id="2aNIkj9MVjj" role="2Oq$k0">
                <node concept="30H73N" id="2aNIkj9MVjk" role="2Oq$k0" />
                <node concept="3TrcHB" id="4NbWtCFCl_I" role="2OqNvi">
                  <ref role="3TsBF5" to="qz7j:3LKEueXEqHY" resolve="kind" />
                </node>
              </node>
              <node concept="3t7uKx" id="2aNIkj9MVjm" role="2OqNvi">
                <node concept="uoxfO" id="2aNIkj9MVjn" role="3t7uKA">
                  <ref role="uo_Cq" to="qz7j:3LKEueXEqI8" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3lhOvk" id="2aNIkj9MVaF" role="3lj3bC">
      <ref role="30HIoZ" to="qz7j:3LKEueXEmhz" resolve="NodeA" />
      <ref role="3lhOvi" node="4vmTtDyRX4e" resolve="ABean" />
    </node>
    <node concept="n94m4" id="4NbWtCFAzIW" role="lGtFl" />
  </node>
  <node concept="1BqwYR" id="4vmTtDyRX4e">
    <property role="TrG5h" value="ABean" />
    <node concept="1BqwYE" id="4vmTtDyRXvX" role="1BqwY$">
      <property role="TrG5h" value="x" />
      <node concept="2b32R4" id="4vmTtDyRXH8" role="lGtFl">
        <node concept="3JmXsc" id="4vmTtDyRXHb" role="2P8S$">
          <node concept="3clFbS" id="4vmTtDyRXHc" role="2VODD2">
            <node concept="3clFbF" id="4vmTtDyRXHi" role="3cqZAp">
              <node concept="2OqwBi" id="4vmTtDySHih" role="3clFbG">
                <node concept="2OqwBi" id="4vmTtDyRXHd" role="2Oq$k0">
                  <node concept="3Tsc0h" id="4vmTtDyRXHg" role="2OqNvi">
                    <ref role="3TtcxE" to="qz7j:3LKEueXEqHW" />
                  </node>
                  <node concept="30H73N" id="4vmTtDyRXHh" role="2Oq$k0" />
                </node>
                <node concept="3zZkjj" id="4vmTtDySIOm" role="2OqNvi">
                  <node concept="1bVj0M" id="4vmTtDySIOo" role="23t8la">
                    <node concept="3clFbS" id="4vmTtDySIOp" role="1bW5cS">
                      <node concept="3clFbF" id="4vmTtDySJ5K" role="3cqZAp">
                        <node concept="2OqwBi" id="4vmTtDySKpO" role="3clFbG">
                          <node concept="2OqwBi" id="4vmTtDySJcN" role="2Oq$k0">
                            <node concept="37vLTw" id="4vmTtDySJ5J" role="2Oq$k0">
                              <ref role="3cqZAo" node="4vmTtDySIOq" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="4vmTtDySJw8" role="2OqNvi">
                              <ref role="3TsBF5" to="qz7j:3LKEueXEqHY" resolve="kind" />
                            </node>
                          </node>
                          <node concept="3t7uKx" id="4vmTtDySLsw" role="2OqNvi">
                            <node concept="uoxfO" id="4vmTtDySLsy" role="3t7uKA">
                              <ref role="uo_Cq" to="qz7j:3LKEueXEqI7" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4vmTtDySIOq" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4vmTtDySIOr" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ugBFh" id="4vmTtDyRXi7" role="2uJ4Wq">
      <property role="2ugz1c" value="0" />
      <ref role="2ugBSe" node="4vmTtDyRXvX" resolve="x" />
      <node concept="2b32R4" id="4vmTtDyRXia" role="lGtFl">
        <node concept="3JmXsc" id="4vmTtDyRXid" role="2P8S$">
          <node concept="3clFbS" id="4vmTtDyRXie" role="2VODD2">
            <node concept="3clFbF" id="4vmTtDyRXik" role="3cqZAp">
              <node concept="2OqwBi" id="4vmTtDySB0f" role="3clFbG">
                <node concept="2OqwBi" id="4vmTtDyRXif" role="2Oq$k0">
                  <node concept="3Tsc0h" id="4vmTtDyRXii" role="2OqNvi">
                    <ref role="3TtcxE" to="qz7j:3LKEueXEqHW" />
                  </node>
                  <node concept="30H73N" id="4vmTtDyRXij" role="2Oq$k0" />
                </node>
                <node concept="3zZkjj" id="4vmTtDySCys" role="2OqNvi">
                  <node concept="1bVj0M" id="4vmTtDySCyu" role="23t8la">
                    <node concept="3clFbS" id="4vmTtDySCyv" role="1bW5cS">
                      <node concept="3clFbF" id="4vmTtDySCNQ" role="3cqZAp">
                        <node concept="2OqwBi" id="4vmTtDySF1n" role="3clFbG">
                          <node concept="2OqwBi" id="4vmTtDySCUT" role="2Oq$k0">
                            <node concept="37vLTw" id="4vmTtDySCNP" role="2Oq$k0">
                              <ref role="3cqZAo" node="4vmTtDySCyw" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="4vmTtDySDuV" role="2OqNvi">
                              <ref role="3TsBF5" to="qz7j:3LKEueXEqHY" resolve="kind" />
                            </node>
                          </node>
                          <node concept="3t7uKx" id="4vmTtDySG43" role="2OqNvi">
                            <node concept="uoxfO" id="4vmTtDySG45" role="3t7uKA">
                              <ref role="uo_Cq" to="qz7j:3LKEueXEqI8" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="4vmTtDySCyw" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="4vmTtDySCyx" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="n94m4" id="4vmTtDyRX4f" role="lGtFl">
      <ref role="n9lRv" to="qz7j:3LKEueXEmhz" resolve="NodeA" />
    </node>
    <node concept="3y4P_M" id="4vmTtDySnXL" role="lGtFl">
      <ref role="3y4P_e" node="2aNIkj9MYP$" resolve="NodeToBean" />
    </node>
    <node concept="17Uvod" id="4vmTtDyTbbA" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4vmTtDyTbbB" role="3zH0cK">
        <node concept="3clFbS" id="4vmTtDyTbbC" role="2VODD2">
          <node concept="3clFbF" id="4vmTtDyTbGF" role="3cqZAp">
            <node concept="3cpWs3" id="4vmTtDyTcvq" role="3clFbG">
              <node concept="Xl_RD" id="4vmTtDyTcvv" role="3uHU7w">
                <property role="Xl_RC" value="Bean" />
              </node>
              <node concept="2OqwBi" id="4vmTtDyTbKX" role="3uHU7B">
                <node concept="30H73N" id="4vmTtDyTbGE" role="2Oq$k0" />
                <node concept="3TrcHB" id="4vmTtDyTc4x" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

