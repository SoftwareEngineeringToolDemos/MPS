<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:12055fd0-2d7f-4ac3-93ec-28bb09579a63(jetbrains.mps.lang.editor.editorTest.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="3" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="68nn" ref="r:1a7fc406-f263-498c-a126-51036fe6a9da(jetbrains.mps.lang.editor.editorTest.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1140524450556" name="usesBraces" index="2czwfP" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="4510086454726375946" name="jetbrains.mps.lang.editor.structure.PropertyExpressionCellSelector" flags="ng" index="eON6Q">
        <child id="4510086454769912032" name="propertyDeclaration" index="ciSds" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1134379236839" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedPropertyCell" flags="ng" index="uhnNJ" />
      <concept id="1136564507907" name="jetbrains.mps.lang.editor.structure.CellModel_AttributedLinkCell" flags="ng" index="2wxxgb" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1184319644772" name="jetbrains.mps.lang.editor.structure.CellModel_NonEmptyProperty" flags="sg" stub="730538219796134178" index="2YWUlR" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1139416841293" name="usesBraces" index="1ayjP4" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1140133623887" name="jetbrains.mps.lang.smodel.structure.Node_DeleteOperation" flags="nn" index="1PgB_6" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3dxNxGnPyQW">
    <ref role="1XX52x" to="68nn:3dxNxGnPyQV" resolve="TestBlockList" />
    <node concept="3EZMnI" id="3dxNxGnPyQY" role="2wV5jI">
      <node concept="3F0ifn" id="61TNGoJyAT3" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" node="6liys7VYnbL" resolve="baseStyle" />
        <node concept="ljvvj" id="61TNGoJyAT4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3dxNxGnPyR0" role="2iSdaV" />
      <node concept="3F2HdR" id="3dxNxGnPyR5" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:3dxNxGnPyR2" />
        <node concept="l2Vlx" id="3dxNxGnPyR6" role="2czzBx" />
        <node concept="lj46D" id="61TNGoJyAT8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="3dxNxGnPyR7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3dxNxGnPyR8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="61TNGoJyAT6" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" node="6liys7VYnbL" resolve="baseStyle" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3dxNxGnQiTi">
    <ref role="1XX52x" to="68nn:3dxNxGnPYED" resolve="IBaseTestBlock" />
    <node concept="1xolST" id="4c2NUwQ2Isp" role="2wV5jI">
      <property role="1xolSY" value="    " />
    </node>
  </node>
  <node concept="24kQdi" id="3dxNxGnQiTm">
    <ref role="1XX52x" to="68nn:3dxNxGnPYEC" resolve="BracesBlock" />
    <node concept="3EZMnI" id="7nHtuW6w$f6" role="2wV5jI">
      <property role="1ayjP4" value="true" />
      <node concept="2iRfu4" id="7nHtuW6w$f7" role="2iSdaV" />
      <node concept="3F2HdR" id="7nHtuW6wir5" role="3EZMnx">
        <property role="2czwfP" value="false" />
        <ref role="1NtTu8" to="68nn:3dxNxGnPyR2" />
        <node concept="2iRfu4" id="7nHtuW6wir6" role="2czzBx" />
        <node concept="3F0ifn" id="7nHtuW6wir7" role="2czzBI">
          <property role="3F0ifm" value="no statements" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3dxNxGnQk8e">
    <ref role="1XX52x" to="68nn:3dxNxGnQk8c" resolve="StubBlock" />
    <node concept="3F0ifn" id="3dxNxGnQk8g" role="2wV5jI">
      <property role="3F0ifm" value="stub" />
      <node concept="Vb9p2" id="36RWm$nBas3" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="5WMaMLZb2EV">
    <ref role="1XX52x" to="68nn:5WMaMLZb2EU" resolve="VerticalLayoutBlockList" />
    <node concept="3EZMnI" id="5WMaMLZb2F4" role="2wV5jI">
      <node concept="3F0ifn" id="5WMaMLZb2F8" role="3EZMnx">
        <property role="3F0ifm" value="vertical layout" />
      </node>
      <node concept="2iRfu4" id="5WMaMLZb2F5" role="2iSdaV" />
      <node concept="3EZMnI" id="5WMaMLZb2EX" role="3EZMnx">
        <node concept="3F2HdR" id="5WMaMLZb2F0" role="3EZMnx">
          <ref role="1NtTu8" to="68nn:3dxNxGnPyR2" />
          <node concept="2iRkQZ" id="7nHtuW6uGzy" role="2czzBx" />
        </node>
        <node concept="2EHx9g" id="7nHtuW6vO6W" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7nHtuW6xxRQ">
    <ref role="1XX52x" to="68nn:7nHtuW6xxRO" resolve="BracesStubBlock" />
    <node concept="3EZMnI" id="7nHtuW6xxRW" role="2wV5jI">
      <property role="1ayjP4" value="true" />
      <node concept="PMmxH" id="2wdLO7KhY2h" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="2iRfu4" id="7nHtuW6xxRY" role="2iSdaV" />
    </node>
  </node>
  <node concept="V5hpn" id="6liys7VYnbK">
    <property role="TrG5h" value="TestLanguage_StyleSheet" />
    <node concept="14StLt" id="6liys7VYnbL" role="V601i">
      <property role="TrG5h" value="baseStyle" />
      <node concept="Vb9p2" id="6liys7VYnbM" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="36RWm$n$F7P">
    <ref role="1XX52x" to="68nn:36RWm$n$F7O" resolve="InspectorBlock" />
    <node concept="3EZMnI" id="36RWm$n$F7R" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYb9" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="Vb9p2" id="2wdLO7KhYba" role="3F10Kt" />
      </node>
      <node concept="l2Vlx" id="36RWm$n$F7T" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="36RWm$n$F7W" role="6VMZX">
      <node concept="l2Vlx" id="36RWm$n$F7X" role="2iSdaV" />
      <node concept="3F1sOY" id="36RWm$n$F7Z" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:36RWm$n$F7Y" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6D854YClJhx">
    <ref role="1XX52x" to="68nn:6D854YClJhw" resolve="ReferenceAnnotataion" />
    <node concept="3EZMnI" id="6D854YClJhz" role="2wV5jI">
      <node concept="l2Vlx" id="6D854YClJh$" role="2iSdaV" />
      <node concept="3F0ifn" id="6D854YClJhC" role="3EZMnx">
        <property role="3F0ifm" value="&lt;ref" />
      </node>
      <node concept="2wxxgb" id="6D854YCm5f$" role="3EZMnx" />
      <node concept="3F0ifn" id="6D854YClJhE" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <node concept="11L4FC" id="6D854YCmZaj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4rF9pGiVP5N">
    <ref role="1XX52x" to="68nn:4rF9pGiVP5M" resolve="SideTranformWrapper" />
    <node concept="3EZMnI" id="4rF9pGiVP5U" role="2wV5jI">
      <node concept="3F0ifn" id="4rF9pGiXvjO" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="4rF9pGiXvjR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4rF9pGiVP62" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:4rF9pGiVP5Q" />
        <ref role="1ERwB7" node="4rF9pGiXd7V" resolve="SideTransformWrapperActionMap" />
      </node>
      <node concept="3EZMnI" id="4rF9pGiVP64" role="3EZMnx">
        <node concept="VPM3Z" id="4rF9pGiVP65" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4rF9pGiVP69" role="3EZMnx">
          <property role="3F0ifm" value="right" />
        </node>
        <node concept="l2Vlx" id="4rF9pGiVP67" role="2iSdaV" />
        <node concept="pkWqt" id="4rF9pGiVP6j" role="pqm2j">
          <node concept="3clFbS" id="4rF9pGiVP6k" role="2VODD2">
            <node concept="3clFbF" id="4rF9pGiVP6l" role="3cqZAp">
              <node concept="2OqwBi" id="4rF9pGiVP6n" role="3clFbG">
                <node concept="pncrf" id="4rF9pGiVP6m" role="2Oq$k0" />
                <node concept="3TrcHB" id="4rF9pGiVP6r" role="2OqNvi">
                  <ref role="3TsBF5" to="68nn:4rF9pGiVP5T" resolve="rightOpen" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4rF9pGiXvjQ" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="4rF9pGiXvjS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4rF9pGiVP5W" role="2iSdaV" />
    </node>
  </node>
  <node concept="1h_SRR" id="4rF9pGiXd7V">
    <property role="TrG5h" value="SideTransformWrapperActionMap" />
    <ref role="1h_SK9" to="68nn:4rF9pGiVP5M" resolve="SideTranformWrapper" />
    <node concept="1hA7zw" id="4rF9pGiXd7W" role="1h_SK8">
      <property role="1hAc7j" value="right_transform_action_id" />
      <node concept="1hAIg9" id="4rF9pGiXd7X" role="1hA7z_">
        <node concept="3clFbS" id="4rF9pGiXd7Y" role="2VODD2">
          <node concept="3clFbF" id="4rF9pGiXd7Z" role="3cqZAp">
            <node concept="37vLTI" id="4rF9pGiXd86" role="3clFbG">
              <node concept="3clFbT" id="4rF9pGiXd89" role="37vLTx">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="2OqwBi" id="4rF9pGiXd81" role="37vLTJ">
                <node concept="0IXxy" id="4rF9pGiXd80" role="2Oq$k0" />
                <node concept="3TrcHB" id="4rF9pGiXd85" role="2OqNvi">
                  <ref role="3TsBF5" to="68nn:4rF9pGiVP5T" resolve="rightOpen" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4rF9pGiXJZd">
    <ref role="1XX52x" to="68nn:4rF9pGiXC47" resolve="IntegerLiteral" />
    <node concept="3F0A7n" id="4rF9pGiXJZf" role="2wV5jI">
      <ref role="1NtTu8" to="68nn:4rF9pGiXC48" resolve="value" />
    </node>
  </node>
  <node concept="24kQdi" id="4rF9pGiY9Fb">
    <ref role="1XX52x" to="68nn:4rF9pGiXQ7q" resolve="BinaryExpression" />
    <node concept="3EZMnI" id="4rF9pGiY9Fe" role="2wV5jI">
      <node concept="3F1sOY" id="4rF9pGiY9Fh" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:4rF9pGiXQ7s" />
      </node>
      <node concept="PMmxH" id="2wdLO7KhY74" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="4rF9pGiY9Fl" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:4rF9pGiXQ7t" />
      </node>
      <node concept="l2Vlx" id="4rF9pGiY9Fg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2h4QH4RYdtU">
    <ref role="1XX52x" to="68nn:2h4QH4RYdtS" resolve="AttractsFocusBlock" />
    <node concept="3EZMnI" id="2h4QH4RYdtW" role="2wV5jI">
      <node concept="3F0ifn" id="2h4QH4RYdtZ" role="3EZMnx">
        <property role="3F0ifm" value="attracts focus" />
      </node>
      <node concept="3F1sOY" id="2h4QH4RYdu1" role="3EZMnx">
        <property role="1cu_pB" value="1" />
        <ref role="1NtTu8" to="68nn:2h4QH4RYdtT" />
      </node>
      <node concept="l2Vlx" id="2h4QH4RYdtY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2h4QH4RYoZ_">
    <ref role="1XX52x" to="68nn:2h4QH4RYgVh" resolve="VariableDeclarationBlock" />
    <node concept="3EZMnI" id="2h4QH4RYoZB" role="2wV5jI">
      <node concept="3F0ifn" id="2h4QH4RYoZE" role="3EZMnx">
        <property role="3F0ifm" value="var" />
      </node>
      <node concept="3F0A7n" id="2h4QH4RYoZG" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="2h4QH4RYoZD" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2h4QH4RYDHu">
    <ref role="1XX52x" to="68nn:2h4QH4RYDHs" resolve="VariableDeclarationReference" />
    <node concept="3EZMnI" id="2h4QH4RYDHw" role="2wV5jI">
      <node concept="1iCGBv" id="2h4QH4RYDHz" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:2h4QH4RYDHt" />
        <node concept="1sVBvm" id="2h4QH4RYDH$" role="1sWHZn">
          <node concept="3F0A7n" id="2h4QH4RYDHA" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2h4QH4RYDHy" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4SHGGBQPQ0C">
    <ref role="1XX52x" to="68nn:4SHGGBQPQ0A" resolve="NonEmptyProperty" />
    <node concept="3EZMnI" id="4SHGGBQPQ0E" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY99" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="2YWUlR" id="4SHGGBQQ1S5" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <ref role="1NtTu8" to="68nn:4SHGGBQPQ0B" resolve="value" />
      </node>
      <node concept="l2Vlx" id="4SHGGBQPQ0G" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4SHGGBQQkCq" role="6VMZX">
      <node concept="3F0ifn" id="4SHGGBQQkCs" role="3EZMnx">
        <property role="3F0ifm" value="property" />
      </node>
      <node concept="3F0A7n" id="4SHGGBQQkCu" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="no value" />
        <property role="39s7Ar" value="false" />
        <ref role="1NtTu8" to="68nn:4SHGGBQPQ0B" resolve="value" />
      </node>
      <node concept="l2Vlx" id="4SHGGBQQkCr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4jBMNo5V406">
    <ref role="1XX52x" to="68nn:4jBMNo5V404" resolve="NotEditableVaraileReference" />
    <node concept="1iCGBv" id="4jBMNo5V408" role="2wV5jI">
      <ref role="1NtTu8" to="68nn:4jBMNo5V405" />
      <node concept="1sVBvm" id="4jBMNo5V409" role="1sWHZn">
        <node concept="3F0A7n" id="4jBMNo5V40b" role="2wV5jI">
          <property role="1Intyy" value="false" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="30gYXW" id="4jBMNo5VpJR" role="3F10Kt">
            <property role="Vb096" value="cyan" />
          </node>
          <node concept="VPxyj" id="6xmMsQAV98n" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="25b5I77c4f3">
    <ref role="1XX52x" to="68nn:25b5I77c4bf" resolve="ClassReference" />
    <node concept="3EZMnI" id="25b5I77ccU8" role="2wV5jI">
      <node concept="l2Vlx" id="25b5I77ccUb" role="2iSdaV" />
      <node concept="3F0ifn" id="25b5I77ccUf" role="3EZMnx">
        <property role="3F0ifm" value="myClass:" />
      </node>
      <node concept="1iCGBv" id="25b5I77ccUS" role="3EZMnx">
        <ref role="1NtTu8" to="68nn:25b5I77c4eE" />
        <node concept="1sVBvm" id="25b5I77ccUT" role="1sWHZn">
          <node concept="3EZMnI" id="25b5I77ccUZ" role="2wV5jI">
            <node concept="3F0ifn" id="25b5I77ccVm" role="3EZMnx">
              <property role="3F0ifm" value="final" />
              <node concept="pkWqt" id="25b5I77ccVr" role="pqm2j">
                <node concept="3clFbS" id="25b5I77ccVs" role="2VODD2">
                  <node concept="3clFbF" id="25b5I77ctam" role="3cqZAp">
                    <node concept="2OqwBi" id="25b5I77ctuT" role="3clFbG">
                      <node concept="3TrcHB" id="25b5I77cLeM" role="2OqNvi">
                        <ref role="3TsBF5" to="tpee:hLEXba4" resolve="isFinal" />
                      </node>
                      <node concept="pncrf" id="25b5I77ctal" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0A7n" id="25b5I77ccV9" role="3EZMnx">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
            <node concept="l2Vlx" id="25b5I77ccV2" role="2iSdaV" />
            <node concept="VPM3Z" id="25b5I77ccV3" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2Lps20zY1$l">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="68nn:2Lps20zY1wu" resolve="SimplePropertyContainer" />
    <node concept="3F0A7n" id="2Lps20zY230" role="2wV5jI">
      <ref role="1NtTu8" to="68nn:2Lps20zY1zt" resolve="property" />
    </node>
  </node>
  <node concept="24kQdi" id="2ZnZLV$euUC">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="68nn:2Lps20zYhmH" resolve="SimplePropertyAttribute" />
    <node concept="3EZMnI" id="2ZnZLV$euUH" role="2wV5jI">
      <node concept="l2Vlx" id="2ZnZLV$euUI" role="2iSdaV" />
      <node concept="3F0ifn" id="2ZnZLV$euUL" role="3EZMnx">
        <property role="3F0ifm" value="@" />
        <ref role="1ERwB7" node="2ZnZLV$fekT" resolve="SimplePropertyAttributeActions" />
      </node>
      <node concept="uhnNJ" id="2ZnZLV$eAdd" role="3EZMnx" />
    </node>
  </node>
  <node concept="1h_SRR" id="2ZnZLV$fekT">
    <property role="3GE5qa" value="attributes" />
    <property role="TrG5h" value="SimplePropertyAttributeActions" />
    <ref role="1h_SK9" to="68nn:2Lps20zYhmH" resolve="SimplePropertyAttribute" />
    <node concept="1hA7zw" id="2ZnZLV$feuG" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2ZnZLV$feuH" role="1hA7z_">
        <node concept="3clFbS" id="2ZnZLV$feuI" role="2VODD2">
          <node concept="3cpWs8" id="hV6Dj3E" role="3cqZAp">
            <node concept="3cpWsn" id="hV6Dj3F" role="3cpWs9">
              <property role="TrG5h" value="attributedNode" />
              <node concept="3Tqbb2" id="hV6Dj3G" role="1tU5fm">
                <ref role="ehGHo" to="tpck:gw2VY9q" resolve="BaseConcept" />
              </node>
              <node concept="2OqwBi" id="hV6Dj3H" role="33vP2m">
                <node concept="0IXxy" id="hV6Dj3I" role="2Oq$k0" />
                <node concept="1mfA1w" id="hV6Dj3J" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="hV6HhR5" role="3cqZAp">
            <node concept="2OqwBi" id="hV6HhXH" role="3clFbG">
              <node concept="0IXxy" id="hV6HhR6" role="2Oq$k0" />
              <node concept="1PgB_6" id="hV6HiiJ" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="3Un2VKNJIOT" role="3cqZAp">
            <node concept="2OqwBi" id="3Un2VKNJIUE" role="3clFbG">
              <node concept="37vLTw" id="3Un2VKNJIOS" role="2Oq$k0">
                <ref role="3cqZAo" node="hV6Dj3F" resolve="attributedNode" />
              </node>
              <node concept="1OKiuA" id="3Un2VKNJJJD" role="2OqNvi">
                <node concept="1Q80Hx" id="3Un2VKNJJJP" role="lBI5i" />
                <node concept="eON6Q" id="3Un2VKNJJYu" role="lGT1i">
                  <node concept="1PxgMI" id="7R2Gq48BOJL" role="ciSds">
                    <property role="1BlNFB" value="true" />
                    <ref role="1PxNhF" to="tpce:f_TJgxF" resolve="PropertyDeclaration" />
                    <node concept="2OqwBi" id="7R2Gq48BO6a" role="1PxMeX">
                      <node concept="2OqwBi" id="EM64$GXIDJ" role="2Oq$k0">
                        <node concept="0IXxy" id="EM64$GXI$7" role="2Oq$k0" />
                        <node concept="2qgKlT" id="7R2Gq48BK1Z" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:1avfQ4BBzOo" resolve="getProperty" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7R2Gq48BOk5" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SProperty.getDeclarationNode():org.jetbrains.mps.openapi.model.SNode" resolve="getDeclarationNode" />
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
  <node concept="24kQdi" id="2ZnZLV$fJsi">
    <property role="3GE5qa" value="attributes" />
    <ref role="1XX52x" to="68nn:2ZnZLV$fJmi" resolve="Composition" />
    <node concept="3EZMnI" id="2ZnZLV$fJsk" role="2wV5jI">
      <node concept="3F0ifn" id="7BzI3N6HhFS" role="3EZMnx">
        <property role="3F0ifm" value="[" />
      </node>
      <node concept="3F2HdR" id="2ZnZLV$fJsr" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="68nn:2ZnZLV$fJqv" />
        <node concept="l2Vlx" id="2ZnZLV$fJss" role="2czzBx" />
      </node>
      <node concept="l2Vlx" id="2ZnZLV$fJsn" role="2iSdaV" />
      <node concept="3F0ifn" id="7BzI3N6HhG2" role="3EZMnx">
        <property role="3F0ifm" value="]" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6LcR7GqxckO">
    <property role="3GE5qa" value="delete" />
    <ref role="1XX52x" to="68nn:6LcR7Gqxc8y" resolve="DelTestChildContainer" />
    <node concept="3EZMnI" id="6LcR7GqxcRr" role="2wV5jI">
      <node concept="l2Vlx" id="6LcR7GqxcRs" role="2iSdaV" />
      <node concept="3F0ifn" id="6LcR7GqxcRt" role="3EZMnx">
        <property role="3F0ifm" value="delete test container" />
      </node>
      <node concept="3F0ifn" id="6LcR7GqxcRu" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="6LcR7GqxcRv" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="6LcR7GqxcRw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6LcR7GqxcRx" role="3EZMnx">
        <node concept="l2Vlx" id="6LcR7GqxcRy" role="2iSdaV" />
        <node concept="lj46D" id="6LcR7GqxcRz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6LcR7GqxcR$" role="3EZMnx">
          <property role="3F0ifm" value="children" />
        </node>
        <node concept="3F0ifn" id="6LcR7GqxcR_" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="11L4FC" id="6LcR7GqxcRA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="6LcR7GqxcRB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6LcR7GqxcRC" role="3EZMnx">
          <ref role="1NtTu8" to="68nn:6LcR7GqxcjN" />
          <node concept="lj46D" id="6LcR7GqxcRD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="6LcR7GqxcRE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6LcR7GqxcRF" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="6LcR7GqxcRG" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="P9hc2Kf8Dd">
    <property role="3GE5qa" value="substitute" />
    <ref role="1XX52x" to="68nn:P9hc2Kf3kH" resolve="SubstTestBooleanPropertyChild" />
    <node concept="3F0A7n" id="P9hc2Kf8Hj" role="2wV5jI">
      <ref role="1NtTu8" to="68nn:P9hc2Kf75T" resolve="myProperty" />
    </node>
  </node>
  <node concept="24kQdi" id="P9hc2Kffzo">
    <property role="3GE5qa" value="substitute" />
    <ref role="1XX52x" to="68nn:P9hc2Kf3eR" resolve="SubstTestRoot" />
    <node concept="3EZMnI" id="P9hc2Kffzq" role="2wV5jI">
      <node concept="3F0ifn" id="P9hc2Kffzx" role="3EZMnx">
        <property role="3F0ifm" value="root {" />
        <node concept="ljvvj" id="P9hc2Kff_s" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="P9hc2KffCJ" role="3EZMnx">
        <node concept="VPM3Z" id="P9hc2KffCL" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="P9hc2KffEF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="P9hc2KffJK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="P9hc2KffN9" role="3EZMnx">
          <property role="3F0ifm" value="singe child:" />
        </node>
        <node concept="3F1sOY" id="P9hc2KffNl" role="3EZMnx">
          <ref role="1NtTu8" to="68nn:P9hc2Kf3nJ" />
        </node>
        <node concept="l2Vlx" id="P9hc2KffCO" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="7UZdOvgzaO7" role="3EZMnx">
        <node concept="3F0ifn" id="7UZdOvgzaQX" role="3EZMnx">
          <property role="3F0ifm" value="children with separator" />
          <node concept="ljvvj" id="7UZdOvgzaRu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7UZdOvgzaO8" role="2iSdaV" />
        <node concept="3F2HdR" id="7UZdOvgza$Y" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="68nn:7UZdOvgzajQ" />
          <node concept="l2Vlx" id="7UZdOvgza_1" role="2czzBx" />
          <node concept="ljvvj" id="7UZdOvgza_M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="7UZdOvgzaPu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7UZdOvgzaSD" role="3EZMnx">
        <node concept="l2Vlx" id="7UZdOvgzaSE" role="2iSdaV" />
        <node concept="3EZMnI" id="7UZdOvgzaUi" role="3EZMnx">
          <node concept="3F0ifn" id="7UZdOvgzaUj" role="3EZMnx">
            <property role="3F0ifm" value="middleware child" />
            <node concept="ljvvj" id="7UZdOvgzaUk" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="1iCGBv" id="7UZdOvgzaV6" role="3EZMnx">
            <ref role="1NtTu8" to="68nn:7UZdOvgzaJT" />
            <node concept="1sVBvm" id="7UZdOvgzaV8" role="1sWHZn">
              <node concept="3F2HdR" id="7UZdOvgzaVm" role="2wV5jI">
                <property role="2czwfO" value="," />
                <ref role="1NtTu8" to="68nn:7UZdOvgzaJQ" />
              </node>
            </node>
          </node>
          <node concept="l2Vlx" id="7UZdOvgzaUl" role="2iSdaV" />
        </node>
        <node concept="lj46D" id="7UZdOvgzaTJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="7UZdOvgzaTN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="P9hc2KgOtf" role="3EZMnx">
        <node concept="VPM3Z" id="P9hc2KgOth" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="P9hc2KgOvf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="P9hc2KgOwZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="P9hc2KgO$u" role="3EZMnx">
          <property role="3F0ifm" value="multi- children:" />
          <node concept="ljvvj" id="P9hc2KgW1I" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="P9hc2KgO$$" role="3EZMnx">
          <ref role="1NtTu8" to="68nn:P9hc2KgOpM" />
          <node concept="l2Vlx" id="P9hc2KgOCa" role="2czzBx" />
          <node concept="VPM3Z" id="P9hc2KgO$C" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="pj6Ft" id="P9hc2KgOHl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="P9hc2Kh1BX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="P9hc2KgOtk" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="P9hc2KffzB" role="3EZMnx">
        <property role="3F0ifm" value="}" />
      </node>
      <node concept="l2Vlx" id="P9hc2Kffzt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="P9hc2KfVPY">
    <property role="3GE5qa" value="substitute" />
    <ref role="1XX52x" to="68nn:P9hc2Kf3mI" resolve="SubstTestEnumPropertyChild" />
    <node concept="3F0A7n" id="P9hc2KfVQB" role="2wV5jI">
      <ref role="1NtTu8" to="68nn:P9hc2KfU0I" resolve="myEnumProperty" />
    </node>
  </node>
</model>

