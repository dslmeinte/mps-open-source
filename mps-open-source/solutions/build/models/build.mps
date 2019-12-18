<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7a993fc4-095f-40b4-8e31-5c1430b7a67e(build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="7_z3uTkhWnB">
    <property role="TrG5h" value="web-build" />
    <property role="2DA0ip" value="../.." />
    <node concept="10PD9b" id="7_z3uTkhWnC" role="10PD9s" />
    <node concept="3b7kt6" id="7_z3uTkhWnD" role="10PD9s" />
    <node concept="398rNT" id="7_z3uTkhWnE" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2sgV4H" id="7_z3uTkhWnF" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="7_z3uTkhWnG" role="2JcizS">
        <ref role="398BVh" node="7_z3uTkhWnE" resolve="mps_home" />
      </node>
    </node>
    <node concept="1l3spV" id="7_z3uTkhWo1" role="1l3spN">
      <node concept="3981dG" id="7_z3uTkhWo2" role="39821P">
        <node concept="3_J27D" id="7_z3uTkhWo3" role="Nbhlr">
          <node concept="3Mxwew" id="7_z3uTkhWo4" role="3MwsjC">
            <property role="3MwjfP" value="webLanguages.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="7_z3uTkhWo5" role="39821P">
          <ref role="m_rDy" node="7_z3uTkhWnQ" resolve="com.dslconsultancy.webLanguages" />
          <node concept="pUk6x" id="7_z3uTkhWo6" role="pUk7w" />
          <node concept="28jJK3" id="7_z3uTkiyP4" role="39821P">
            <node concept="55IIr" id="7_z3uTkiyP5" role="28jJRO">
              <node concept="2Ry0Ak" id="7_z3uTkiyPh" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="7_z3uTkiyPm" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-annotations-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="7_z3uTkiyPx" role="39821P">
            <node concept="55IIr" id="7_z3uTkiyPy" role="28jJRO">
              <node concept="2Ry0Ak" id="7_z3uTkiyPz" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="7_z3uTkiyQi" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-core-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="7_z3uTkiyPN" role="39821P">
            <node concept="55IIr" id="7_z3uTkiyPO" role="28jJRO">
              <node concept="2Ry0Ak" id="7_z3uTkiyPP" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="7_z3uTkiyQq" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-databind-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7_z3uTkhWnP" role="3989C9">
      <property role="TrG5h" value="Web-languages" />
      <node concept="1E1JtD" id="7_z3uTkhWnO" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="XmlWithExtension" />
        <property role="3LESm3" value="626375ad-0250-40d5-9caf-bd6ccacbb87c" />
        <node concept="55IIr" id="7_z3uTkhWnJ" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTkhWnK" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7_z3uTkhWnL" role="2Ry0An">
              <property role="2Ry0Am" value="XmlWithExtension" />
              <node concept="2Ry0Ak" id="7_z3uTkhWnM" role="2Ry0An">
                <property role="2Ry0Am" value="XmlWithExtension.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkhWo7" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTkhWo8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkhWo9" role="3bR37C">
          <node concept="1Busua" id="7_z3uTkhWoa" role="1SiIV1">
            <ref role="1Busuk" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7_z3uTki6M$" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="XSD" />
        <property role="3LESm3" value="783994a0-4c08-40b6-83e5-ddb930f19f9d" />
        <node concept="55IIr" id="7_z3uTki6MB" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTki6N0" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7_z3uTki6N3" role="2Ry0An">
              <property role="2Ry0Am" value="XSD" />
              <node concept="2Ry0Ak" id="7_z3uTki6N8" role="2Ry0An">
                <property role="2Ry0Am" value="XSD.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTki6Na" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTki6Nb" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTki6Nc" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTki6Nd" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTki6Ne" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTki6Nf" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1yeLz9" id="7_z3uTki6Ng" role="1TViLv">
          <property role="TrG5h" value="XSD#12588432219462838" />
          <property role="3LESm3" value="f549ad0e-8b9c-4fa3-b647-abaea2230f07" />
        </node>
      </node>
      <node concept="1E1JtD" id="7_z3uTki6Jx" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="WSDL" />
        <property role="3LESm3" value="a2adafa0-f1cb-4eaf-b2a2-3d77f2785641" />
        <node concept="55IIr" id="7_z3uTki6Jy" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTki6JC" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7_z3uTki6JF" role="2Ry0An">
              <property role="2Ry0Am" value="WSDL" />
              <node concept="2Ry0Ak" id="7_z3uTki6JK" role="2Ry0An">
                <property role="2Ry0Am" value="WSDL.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTki6JM" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTki6JN" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1yeLz9" id="7_z3uTki6JO" role="1TViLv">
          <property role="TrG5h" value="WSDL#3718049542662878567" />
          <property role="3LESm3" value="59739410-fa13-4c92-bdc2-4072d59c9386" />
          <node concept="1SiIV0" id="7_z3uTki6JP" role="3bR37C">
            <node concept="3bR9La" id="7_z3uTki6JQ" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
            </node>
          </node>
          <node concept="1SiIV0" id="7_z3uTki6NA" role="3bR37C">
            <node concept="3bR9La" id="7_z3uTki6NB" role="1SiIV1">
              <ref role="3bR37D" node="7_z3uTki6M$" resolve="XSD" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTki6N$" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTki6N_" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7_z3uTki6M$" resolve="XSD" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="7_z3uTkiplH" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="runtime.lib" />
        <property role="3LESm3" value="b4c21c7b-9eb9-46a5-8813-d2e1d07a3f4a" />
        <node concept="55IIr" id="7_z3uTkiplK" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTkipmz" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="7_z3uTkipmC" role="2Ry0An">
              <property role="2Ry0Am" value="runtime.lib" />
              <node concept="2Ry0Ak" id="7_z3uTkipmH" role="2Ry0An">
                <property role="2Ry0Am" value="runtime.lib.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkipmJ" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTkipmK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkipmO" role="3bR37C">
          <node concept="1BurEX" id="7_z3uTkipmP" role="1SiIV1">
            <node concept="55IIr" id="7_z3uTkipmL" role="1BurEY">
              <node concept="2Ry0Ak" id="7_z3uTkipmM" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="7_z3uTkipmN" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-core-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkipmT" role="3bR37C">
          <node concept="1BurEX" id="7_z3uTkipmU" role="1SiIV1">
            <node concept="55IIr" id="7_z3uTkipmQ" role="1BurEY">
              <node concept="2Ry0Ak" id="7_z3uTkipmR" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="7_z3uTkipmS" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-databind-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7_z3uTkipk9" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Json" />
        <property role="3LESm3" value="8382542b-a045-4f73-951b-02d75ee252bf" />
        <node concept="55IIr" id="7_z3uTkipkc" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTkipkP" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7_z3uTkipkU" role="2Ry0An">
              <property role="2Ry0Am" value="Json" />
              <node concept="2Ry0Ak" id="7_z3uTkipkZ" role="2Ry0An">
                <property role="2Ry0Am" value="Json.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkipnj" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTkipnk" role="1SiIV1">
            <ref role="3bR37D" node="7_z3uTkiplH" resolve="runtime.lib" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7_z3uTknUec" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Css" />
        <property role="3LESm3" value="4b29a406-d945-4891-9369-166d00decad5" />
        <node concept="55IIr" id="7_z3uTknUef" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTknUfI" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7_z3uTknUg5" role="2Ry0An">
              <property role="2Ry0Am" value="Css" />
              <node concept="2Ry0Ak" id="7_z3uTknUgs" role="2Ry0An">
                <property role="2Ry0Am" value="Css.mpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="7_z3uTknUhU" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Svg" />
        <property role="3LESm3" value="603daafe-2a66-4fb4-b473-5f80d274b3b9" />
        <node concept="55IIr" id="7_z3uTknUhX" role="3LF7KH">
          <node concept="2Ry0Ak" id="7_z3uTknUjl" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="7_z3uTknUjA" role="2Ry0An">
              <property role="2Ry0Am" value="Svg" />
              <node concept="2Ry0Ak" id="7_z3uTknUjR" role="2Ry0An">
                <property role="2Ry0Am" value="Svg.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTknUk5" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTknUk6" role="1SiIV1">
            <ref role="3bR37D" node="7_z3uTknUec" resolve="Css" />
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTknUk7" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTknUk8" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
          </node>
        </node>
        <node concept="1yeLz9" id="7_z3uTknUk9" role="1TViLv">
          <property role="TrG5h" value="Svg#01" />
          <property role="3LESm3" value="7ac9b9fa-514a-417b-9491-252adcd6d2fc" />
          <node concept="1SiIV0" id="7_z3uTknUka" role="3bR37C">
            <node concept="3bR9La" id="7_z3uTknUkb" role="1SiIV1">
              <ref role="3bR37D" node="7_z3uTknUec" resolve="Css" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7_z3uTkhWnQ" role="3989C9">
      <property role="m$_wk" value="com.dslconsultancy.webLanguages" />
      <node concept="3_J27D" id="7_z3uTkhWnR" role="m$_yQ">
        <node concept="3Mxwew" id="7_z3uTkhWnS" role="3MwsjC">
          <property role="3MwjfP" value="Web-languages" />
        </node>
      </node>
      <node concept="3_J27D" id="7_z3uTkhWnT" role="m$_w8">
        <node concept="3Mxwew" id="7_z3uTkhWnU" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="7_z3uTkhWnV" role="m$_yh">
        <ref role="m$f5T" node="7_z3uTkhWnP" resolve="Web-languages" />
      </node>
      <node concept="m$_yC" id="7_z3uTkhWnW" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="7_z3uTkhWnX" role="m_cZH">
        <node concept="3Mxwew" id="7_z3uTkhWnY" role="3MwsjC">
          <property role="3MwjfP" value="webLanguages" />
        </node>
      </node>
    </node>
  </node>
</model>

