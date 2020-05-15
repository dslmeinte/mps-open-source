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
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
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
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
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
    <property role="turDy" value="build-web.xml" />
    <node concept="10PD9b" id="7_z3uTkhWnC" role="10PD9s" />
    <node concept="3b7kt6" id="7_z3uTkhWnD" role="10PD9s" />
    <node concept="398rNT" id="70ox0EtUFba" role="1l3spd">
      <property role="TrG5h" value="mps-open-source" />
      <node concept="55IIr" id="70ox0EtUFbk" role="398pKh" />
    </node>
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
          <ref role="m_rDy" node="7_z3uTkhWnQ" resolve="com.dslconsultancy.mps.webLanguages" />
          <node concept="pUk6x" id="7_z3uTkhWo6" role="pUk7w" />
          <node concept="28jJK3" id="7_z3uTkiyP4" role="39821P">
            <node concept="398BVA" id="70ox0EtUZt6" role="28jJRO">
              <ref role="398BVh" node="70ox0EtUFba" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="70ox0EtUZta" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="70ox0EtUZtb" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-annotations-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="7_z3uTkiyPx" role="39821P">
            <node concept="398BVA" id="70ox0EtUZt$" role="28jJRO">
              <ref role="398BVh" node="70ox0EtUFba" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="70ox0EtUZtC" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="70ox0EtUZtD" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-core-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="7_z3uTkiyPN" role="39821P">
            <node concept="398BVA" id="70ox0EtUZu2" role="28jJRO">
              <ref role="398BVh" node="70ox0EtUFba" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="70ox0EtUZu6" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="70ox0EtUZu7" role="2Ry0An">
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
      <node concept="1E1JtA" id="7_z3uTkiplH" role="2G$12L">
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
            <node concept="398BVA" id="70ox0EtUFc3" role="1BurEY">
              <ref role="398BVh" node="70ox0EtUFba" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="70ox0EtUFc7" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="70ox0EtUFc8" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-core-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTkipmT" role="3bR37C">
          <node concept="1BurEX" id="7_z3uTkipmU" role="1SiIV1">
            <node concept="398BVA" id="70ox0EtUFcx" role="1BurEY">
              <ref role="398BVh" node="70ox0EtUFba" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="70ox0EtUFc_" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="70ox0EtUFcA" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-databind-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="MRZty8cNwb" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="MRZty8cNwc" role="1HemKq">
            <node concept="55IIr" id="MRZty8cNw7" role="3LXTmr">
              <node concept="2Ry0Ak" id="MRZty8cNw8" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="MRZty8cNw9" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime.lib" />
                  <node concept="2Ry0Ak" id="MRZty8cNwa" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="MRZty8cNwd" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
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
        <node concept="1BupzO" id="MRZty8cNwp" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="MRZty8cNwq" role="1HemKq">
            <node concept="55IIr" id="MRZty8cNwl" role="3LXTmr">
              <node concept="2Ry0Ak" id="MRZty8cNwm" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="MRZty8cNwn" role="2Ry0An">
                  <property role="2Ry0Am" value="Css" />
                  <node concept="2Ry0Ak" id="MRZty8cNwo" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="MRZty8cNwr" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIgx" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIgy" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIgz" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIg$" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIg_" role="2Ry0An">
                  <property role="2Ry0Am" value="Css" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIgB" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
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
        <node concept="1BupzO" id="MRZty8cNwi" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="MRZty8cNwj" role="1HemKq">
            <node concept="55IIr" id="MRZty8cNwe" role="3LXTmr">
              <node concept="2Ry0Ak" id="MRZty8cNwf" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="MRZty8cNwg" role="2Ry0An">
                  <property role="2Ry0Am" value="Json" />
                  <node concept="2Ry0Ak" id="MRZty8cNwh" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="MRZty8cNwk" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIfS" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIfT" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIfU" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIfV" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIfW" role="2Ry0An">
                  <property role="2Ry0Am" value="Json" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIfY" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="4$egv0eGJpv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="JsonSchema" />
        <property role="3LESm3" value="332c9129-fd88-4f4c-a448-1f9b461e11cb" />
        <node concept="55IIr" id="4$egv0eGJpy" role="3LF7KH">
          <node concept="2Ry0Ak" id="4$egv0eGJsc" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="4$egv0eGJsz" role="2Ry0An">
              <property role="2Ry0Am" value="JsonSchema" />
              <node concept="2Ry0Ak" id="4$egv0eGJsO" role="2Ry0An">
                <property role="2Ry0Am" value="JsonSchema.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4$egv0eGJt8" role="3bR37C">
          <node concept="3bR9La" id="4$egv0eGJt9" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4$egv0eGJta" role="3bR37C">
          <node concept="3bR9La" id="4$egv0eGJtb" role="1SiIV1">
            <ref role="3bR37D" node="7_z3uTkipk9" resolve="Json" />
          </node>
        </node>
        <node concept="1BupzO" id="4$egv0eGJtg" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4$egv0eGJth" role="1HemKq">
            <node concept="55IIr" id="4$egv0eGJtc" role="3LXTmr">
              <node concept="2Ry0Ak" id="4$egv0eGJtd" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4$egv0eGJte" role="2Ry0An">
                  <property role="2Ry0Am" value="JsonSchema" />
                  <node concept="2Ry0Ak" id="4$egv0eGJtf" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4$egv0eGJti" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="4$egv0eGJtj" role="1TViLv">
          <property role="TrG5h" value="JsonSchema#2989739400374353138" />
          <property role="3LESm3" value="33844b78-d575-4d6a-8fa9-eb656330fb28" />
          <node concept="1BupzO" id="4$egv0eGJtp" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="4$egv0eGJtq" role="1HemKq">
              <node concept="55IIr" id="4$egv0eGJtk" role="3LXTmr">
                <node concept="2Ry0Ak" id="4$egv0eGJtl" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="4$egv0eGJtm" role="2Ry0An">
                    <property role="2Ry0Am" value="JsonSchema" />
                    <node concept="2Ry0Ak" id="4$egv0eGJtn" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="4$egv0eGJto" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="4$egv0eGJtr" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIff" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIfg" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIfh" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIfi" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIfj" role="2Ry0An">
                  <property role="2Ry0Am" value="JsonSchema" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIfl" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
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
          <node concept="1BupzO" id="MRZty8cNwG" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="MRZty8cNwH" role="1HemKq">
              <node concept="55IIr" id="MRZty8cNwB" role="3LXTmr">
                <node concept="2Ry0Ak" id="MRZty8cNwC" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="MRZty8cNwD" role="2Ry0An">
                    <property role="2Ry0Am" value="Svg" />
                    <node concept="2Ry0Ak" id="MRZty8cNwE" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="MRZty8cNwF" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="MRZty8cNwI" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="MRZty8cNws" role="3bR37C">
          <node concept="3bR9La" id="MRZty8cNwt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="MRZty8cNwu" role="3bR37C">
          <node concept="3bR9La" id="MRZty8cNwv" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
          </node>
        </node>
        <node concept="1BupzO" id="4$egv0eGJtW" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="4$egv0eGJtX" role="1HemKq">
            <node concept="55IIr" id="4$egv0eGJtS" role="3LXTmr">
              <node concept="2Ry0Ak" id="4$egv0eGJtT" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="4$egv0eGJtU" role="2Ry0An">
                  <property role="2Ry0Am" value="Svg" />
                  <node concept="2Ry0Ak" id="4$egv0eGJtV" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="4$egv0eGJtY" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIeA" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIeB" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIeC" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIeD" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIeE" role="2Ry0An">
                  <property role="2Ry0Am" value="Svg" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIeG" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
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
          <node concept="1BupzO" id="MRZty8cNvY" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="MRZty8cNvZ" role="1HemKq">
              <node concept="55IIr" id="MRZty8cNvT" role="3LXTmr">
                <node concept="2Ry0Ak" id="MRZty8cNvU" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="MRZty8cNvV" role="2Ry0An">
                    <property role="2Ry0Am" value="WSDL" />
                    <node concept="2Ry0Ak" id="MRZty8cNvW" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="MRZty8cNvX" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="MRZty8cNw0" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7_z3uTki6N$" role="3bR37C">
          <node concept="3bR9La" id="7_z3uTki6N_" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="7_z3uTki6M$" resolve="XSD" />
          </node>
        </node>
        <node concept="1BupzO" id="MRZty8cNvQ" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="MRZty8cNvR" role="1HemKq">
            <node concept="55IIr" id="MRZty8cNvM" role="3LXTmr">
              <node concept="2Ry0Ak" id="MRZty8cNvN" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="MRZty8cNvO" role="2Ry0An">
                  <property role="2Ry0Am" value="WSDL" />
                  <node concept="2Ry0Ak" id="MRZty8cNvP" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="MRZty8cNvS" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIha" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIhb" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIhc" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIhd" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIhe" role="2Ry0An">
                  <property role="2Ry0Am" value="WSDL" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIhg" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
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
          <node concept="1BupzO" id="MRZty8cNvJ" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="MRZty8cNvK" role="1HemKq">
              <node concept="55IIr" id="MRZty8cNvE" role="3LXTmr">
                <node concept="2Ry0Ak" id="MRZty8cNvF" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="MRZty8cNvG" role="2Ry0An">
                    <property role="2Ry0Am" value="XSD" />
                    <node concept="2Ry0Ak" id="MRZty8cNvH" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="MRZty8cNvI" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="MRZty8cNvL" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="MRZty8cNvB" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="MRZty8cNvC" role="1HemKq">
            <node concept="55IIr" id="MRZty8cNvz" role="3LXTmr">
              <node concept="2Ry0Ak" id="MRZty8cNv$" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="MRZty8cNv_" role="2Ry0An">
                  <property role="2Ry0Am" value="XSD" />
                  <node concept="2Ry0Ak" id="MRZty8cNvA" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="MRZty8cNvD" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIhN" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIhO" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIhP" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIhQ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIhR" role="2Ry0An">
                  <property role="2Ry0Am" value="XSD" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIhT" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
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
        <node concept="1BupzO" id="MRZty8cNvw" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="MRZty8cNvx" role="1HemKq">
            <node concept="55IIr" id="MRZty8cNvs" role="3LXTmr">
              <node concept="2Ry0Ak" id="MRZty8cNvt" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="MRZty8cNvu" role="2Ry0An">
                  <property role="2Ry0Am" value="XmlWithExtension" />
                  <node concept="2Ry0Ak" id="MRZty8cNvv" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="MRZty8cNvy" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIis" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIit" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIiu" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIiv" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIiw" role="2Ry0An">
                  <property role="2Ry0Am" value="XmlWithExtension" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIiy" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7_z3uTkhWnQ" role="3989C9">
      <property role="m$_wk" value="com.dslconsultancy.mps.webLanguages" />
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
  <node concept="1l3spW" id="5oL_nVw7pqI">
    <property role="2DA0ip" value="../.." />
    <property role="TrG5h" value="export-build" />
    <property role="turDy" value="build-export.xml" />
    <node concept="398rNT" id="3Ct5Pvtr$3R" role="1l3spd">
      <property role="TrG5h" value="mps-open-source" />
      <node concept="55IIr" id="3Ct5Pvtr$3S" role="398pKh" />
    </node>
    <node concept="2sgV4H" id="5oL_nVw7prN" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5oL_nVw7prO" role="2JcizS">
        <ref role="398BVh" node="5oL_nVw7prL" resolve="mps_home" />
      </node>
    </node>
    <node concept="398rNT" id="5oL_nVw7prL" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="10PD9b" id="5oL_nVw7prH" role="10PD9s" />
    <node concept="3b7kt6" id="5oL_nVw7prI" role="10PD9s" />
    <node concept="55IIr" id="5oL_nVw7pqJ" role="auvoZ" />
    <node concept="1l3spV" id="5oL_nVw7pqK" role="1l3spN">
      <node concept="3981dG" id="5oL_nVw7pDL" role="39821P">
        <node concept="3_J27D" id="5oL_nVw7pDM" role="Nbhlr">
          <node concept="3Mxwew" id="5oL_nVw7pDV" role="3MwsjC">
            <property role="3MwjfP" value="export.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="5oL_nVw7pE9" role="39821P">
          <ref role="m_rDy" node="5oL_nVw7pAe" resolve="com.dslconsultancy.mps.export" />
          <node concept="28jJK3" id="3Ct5Pvtr$3g" role="39821P">
            <node concept="398BVA" id="3Ct5Pvtr$3h" role="28jJRO">
              <ref role="398BVh" node="3Ct5Pvtr$3R" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="3Ct5Pvtr$3i" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="3Ct5Pvtr$3j" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-annotations-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3Ct5Pvtr$3k" role="39821P">
            <node concept="398BVA" id="3Ct5Pvtr$3l" role="28jJRO">
              <ref role="398BVh" node="3Ct5Pvtr$3R" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="3Ct5Pvtr$3m" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="3Ct5Pvtr$3n" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-core-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="3Ct5Pvtr$3o" role="39821P">
            <node concept="398BVA" id="3Ct5Pvtr$3p" role="28jJRO">
              <ref role="398BVh" node="3Ct5Pvtr$3R" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="3Ct5Pvtr$3q" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="3Ct5Pvtr$3r" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-databind-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="pUk6x" id="5oL_nVw7pEp" role="pUk7w" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5oL_nVw7prX" role="3989C9">
      <property role="TrG5h" value="Export-solution" />
      <node concept="1E1JtA" id="5oL_nVw7puV" role="2G$12L">
        <property role="TrG5h" value="runtime.lib" />
        <property role="3LESm3" value="b4c21c7b-9eb9-46a5-8813-d2e1d07a3f4a" />
        <node concept="55IIr" id="5oL_nVw7puW" role="3LF7KH">
          <node concept="2Ry0Ak" id="5oL_nVw7puX" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5oL_nVw7puY" role="2Ry0An">
              <property role="2Ry0Am" value="runtime.lib" />
              <node concept="2Ry0Ak" id="5oL_nVw7puZ" role="2Ry0An">
                <property role="2Ry0Am" value="runtime.lib.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7pv0" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7pv1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3Ct5Pvtr$58" role="3bR37C">
          <node concept="1BurEX" id="3Ct5Pvtr$59" role="1SiIV1">
            <node concept="398BVA" id="3Ct5Pvtr$5a" role="1BurEY">
              <ref role="398BVh" node="3Ct5Pvtr$3R" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="3Ct5Pvtr$5b" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="3Ct5Pvtr$5c" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-core-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3Ct5Pvtr$5d" role="3bR37C">
          <node concept="1BurEX" id="3Ct5Pvtr$5e" role="1SiIV1">
            <node concept="398BVA" id="3Ct5Pvtr$5f" role="1BurEY">
              <ref role="398BVh" node="3Ct5Pvtr$3R" resolve="mps-open-source" />
              <node concept="2Ry0Ak" id="3Ct5Pvtr$5g" role="iGT6I">
                <property role="2Ry0Am" value="libs" />
                <node concept="2Ry0Ak" id="3Ct5Pvtr$5h" role="2Ry0An">
                  <property role="2Ry0Am" value="jackson-databind-2.9.7.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="5oL_nVw7pvc" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5oL_nVw7pvd" role="1HemKq">
            <node concept="55IIr" id="5oL_nVw7pve" role="3LXTmr">
              <node concept="2Ry0Ak" id="5oL_nVw7pvf" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5oL_nVw7pvg" role="2Ry0An">
                  <property role="2Ry0Am" value="runtime.lib" />
                  <node concept="2Ry0Ak" id="5oL_nVw7pvh" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5oL_nVw7pvi" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="5oL_nVw7pwf" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Json" />
        <property role="3LESm3" value="8382542b-a045-4f73-951b-02d75ee252bf" />
        <node concept="55IIr" id="5oL_nVw7pwg" role="3LF7KH">
          <node concept="2Ry0Ak" id="5oL_nVw7pwh" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="5oL_nVw7pwi" role="2Ry0An">
              <property role="2Ry0Am" value="Json" />
              <node concept="2Ry0Ak" id="5oL_nVw7pwj" role="2Ry0An">
                <property role="2Ry0Am" value="Json.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7pwk" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7pwl" role="1SiIV1">
            <ref role="3bR37D" node="5oL_nVw7puV" resolve="runtime.lib" />
          </node>
        </node>
        <node concept="1BupzO" id="5oL_nVw7pwm" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5oL_nVw7pwn" role="1HemKq">
            <node concept="55IIr" id="5oL_nVw7pwo" role="3LXTmr">
              <node concept="2Ry0Ak" id="5oL_nVw7pwp" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5oL_nVw7pwq" role="2Ry0An">
                  <property role="2Ry0Am" value="Json" />
                  <node concept="2Ry0Ak" id="5oL_nVw7pwr" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5oL_nVw7pws" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="5wO1A4DzIjh" role="3bR31x">
          <node concept="3LXTmp" id="5wO1A4DzIji" role="3rtmxm">
            <node concept="55IIr" id="5wO1A4DzIjj" role="3LXTmr">
              <node concept="2Ry0Ak" id="5wO1A4DzIjk" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="5wO1A4DzIjl" role="2Ry0An">
                  <property role="2Ry0Am" value="Json" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5wO1A4DzIjn" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5oL_nVw7pxZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="Export" />
        <property role="3LESm3" value="7a913b86-0a94-47d4-9d86-31102f70adcb" />
        <node concept="55IIr" id="5oL_nVw7py2" role="3LF7KH">
          <node concept="2Ry0Ak" id="5oL_nVw7pz0" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5oL_nVw7pzn" role="2Ry0An">
              <property role="2Ry0Am" value="Export" />
              <node concept="2Ry0Ak" id="5oL_nVw7pzI" role="2Ry0An">
                <property role="2Ry0Am" value="Export.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7p$a" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7p$b" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7p$c" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7p$d" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7p$e" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7p$f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7p$g" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7p$h" role="1SiIV1">
            <ref role="3bR37D" node="5oL_nVw7pwf" resolve="Json" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oL_nVw7p$i" role="3bR37C">
          <node concept="3bR9La" id="5oL_nVw7p$j" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
        <node concept="1BupzO" id="5oL_nVw7p$o" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5oL_nVw7p$p" role="1HemKq">
            <node concept="55IIr" id="5oL_nVw7p$k" role="3LXTmr">
              <node concept="2Ry0Ak" id="5oL_nVw7p$l" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5oL_nVw7p$m" role="2Ry0An">
                  <property role="2Ry0Am" value="Export" />
                  <node concept="2Ry0Ak" id="5oL_nVw7p$n" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5oL_nVw7p$q" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="5oL_nVw7pAe" role="3989C9">
      <property role="m$_wk" value="com.dslconsultancy.mps.export" />
      <node concept="3_J27D" id="5oL_nVw7pAg" role="m$_yQ">
        <node concept="3Mxwew" id="5oL_nVw7pCX" role="3MwsjC">
          <property role="3MwjfP" value="MPS Export" />
        </node>
      </node>
      <node concept="3_J27D" id="5oL_nVw7pAi" role="m_cZH">
        <node concept="3Mxwew" id="5oL_nVw7pCZ" role="3MwsjC">
          <property role="3MwjfP" value="export" />
        </node>
      </node>
      <node concept="3_J27D" id="5oL_nVw7pAk" role="m$_w8">
        <node concept="3Mxwew" id="5oL_nVw7pDd" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="5oL_nVw7pDr" role="m$_yh">
        <ref role="m$f5T" node="5oL_nVw7prX" resolve="Export-solution" />
      </node>
      <node concept="m$_yC" id="5oL_nVw7pDD" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
    </node>
  </node>
</model>

