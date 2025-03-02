<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c8959043c(jetbrains.mps.samples.formulaLanguage.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="1" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <property id="1587916991969465369" name="conceptId" index="1pbfSe" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="gbrwc1k">
    <property role="TrG5h" value="Formula" />
    <property role="1pbfSe" value="612318890" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="gbrwfZI" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gbrw$Yx">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Expression" />
    <property role="1pbfSe" value="612216669" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
  </node>
  <node concept="1TIwiD" id="gbrwDrW">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Function" />
    <property role="1pbfSe" value="612198402" />
    <ref role="1TJDcQ" node="gbrw$Yx" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="gbrwShI">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Reference" />
    <property role="1pbfSe" value="612137616" />
    <ref role="1TJDcQ" node="gbrw$Yx" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="gbrxntB">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Constant" />
    <property role="1pbfSe" value="612009879" />
    <ref role="1TJDcQ" node="gbrw$Yx" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="gbrxy3r">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Operation" />
    <property role="1pbfSe" value="611966499" />
    <ref role="1TJDcQ" node="gbrw$Yx" resolve="Expression" />
    <node concept="1TJgyj" id="gbrxImN" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="leftOperand" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="gbrxQ_F" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="rightOperand" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gbryEfT">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="integer constant" />
    <property role="TrG5h" value="IntegerConstant" />
    <property role="1pbfSe" value="611670789" />
    <ref role="1TJDcQ" node="gbrxntB" resolve="Constant" />
    <node concept="1TJgyi" id="gbryI9r" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="PrWs8" id="1653mnvB2FN" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="gbryUGW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="floating point constant" />
    <property role="TrG5h" value="FloatingPointConstant" />
    <property role="1pbfSe" value="611603394" />
    <ref role="1TJDcQ" node="gbrxntB" resolve="Constant" />
    <node concept="1TJgyi" id="gcNirUM" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" node="gcNhUoL" resolve="_FPNumber" />
    </node>
    <node concept="PrWs8" id="1653mnvAMSw" role="PzmwI">
      <ref role="PrY4T" to="tpck:1_TrU5E6oyb" resolve="IDontSubstituteByDefault" />
    </node>
  </node>
  <node concept="1TIwiD" id="gbrzkao">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="if-function" />
    <property role="TrG5h" value="IfFunction" />
    <property role="34LRSv" value="IF(,,)" />
    <property role="1pbfSe" value="611499110" />
    <ref role="1TJDcQ" node="gbrwDrW" resolve="Function" />
    <node concept="1TJgyj" id="gbrznGe" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="logicalTest" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="gbrzza8" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="valueIfTrue" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="gbrzF4J" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="valueIfFalse" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gbrCaqt">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="plus operation" />
    <property role="TrG5h" value="PlusOperation" />
    <property role="34LRSv" value="+" />
    <property role="1pbfSe" value="610228321" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gbrCyha">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="minus operation" />
    <property role="TrG5h" value="MinusOperation" />
    <property role="34LRSv" value="-" />
    <property role="1pbfSe" value="610130612" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gbE_QIp">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="less than operation" />
    <property role="TrG5h" value="LessThanOperation" />
    <property role="34LRSv" value="&lt;" />
    <property role="1pbfSe" value="359175013" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gbZh47t">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="multiply operation" />
    <property role="TrG5h" value="MultOperation" />
    <property role="34LRSv" value="*" />
    <property role="1pbfSe" value="12303649" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gc0B_Vw">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="greater than operation" />
    <property role="TrG5h" value="GreaterThanOperation" />
    <property role="34LRSv" value="&gt;" />
    <property role="1pbfSe" value="10379235" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="Az7Fb" id="gcNhUoL">
    <property role="TrG5h" value="_FPNumber" />
    <property role="FLfZY" value="-?[0-9]+(\\.?[0-9]*)" />
  </node>
  <node concept="1TIwiD" id="gw4XJs2">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="string constant" />
    <property role="TrG5h" value="StringConstant" />
    <property role="34LRSv" value="&quot;" />
    <property role="1pbfSe" value="83294218" />
    <ref role="1TJDcQ" node="gbrxntB" resolve="Constant" />
    <node concept="1TJgyi" id="gw4XTj0" role="1TKVEl">
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="gw52_wm">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="and operation" />
    <property role="TrG5h" value="AndOperation" />
    <property role="34LRSv" value="&amp;&amp;" />
    <property role="1pbfSe" value="84564254" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gw52Ft6">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="or operation" />
    <property role="TrG5h" value="OrOperation" />
    <property role="34LRSv" value="||" />
    <property role="1pbfSe" value="84588622" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gw9LkxK">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="equals operation" />
    <property role="TrG5h" value="EqualsOperation" />
    <property role="34LRSv" value="==" />
    <property role="1pbfSe" value="163924344" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gw9O3aU">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="(expr)" />
    <property role="TrG5h" value="ParenthisizedExpression" />
    <property role="34LRSv" value="(" />
    <property role="1pbfSe" value="164639682" />
    <ref role="1TJDcQ" node="gbrw$Yx" resolve="Expression" />
    <node concept="1TJgyj" id="gw9OtSj" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <ref role="20lvS9" node="gbrw$Yx" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="gC3r7B0">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="null expression" />
    <property role="TrG5h" value="NullConstant" />
    <property role="34LRSv" value="null" />
    <property role="1pbfSe" value="57440970" />
    <ref role="1TJDcQ" node="gbrw$Yx" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="gC3v6Kb">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="IsNullOperation" />
    <property role="34LRSv" value=".isNull" />
    <property role="1pbfSe" value="58486037" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
  <node concept="1TIwiD" id="gC44PA7">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="not operation (formula language)" />
    <property role="TrG5h" value="NotOperation" />
    <property role="34LRSv" value="!" />
    <property role="1pbfSe" value="68377233" />
    <ref role="1TJDcQ" node="gbrxy3r" resolve="Operation" />
  </node>
</model>

