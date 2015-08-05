<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Hardware" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1438150252801"><hook NAME="MapStyle">

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="6"/>
<node TEXT="Battery" POSITION="right" ID="ID_374904795" CREATED="1438150381463" MODIFIED="1438150399487">
<edge COLOR="#0000ff"/>
<node TEXT="V-measure" ID="ID_430018287" CREATED="1438150461369" MODIFIED="1438150470792"/>
<node TEXT="VDD-source" ID="ID_194701811" CREATED="1438150490022" MODIFIED="1438150515880"/>
<node TEXT="WhiteHouse-Port" ID="ID_1703506967" CREATED="1438151708033" MODIFIED="1438151717704"/>
<node TEXT="Buck 25v-14v" ID="ID_983417835" CREATED="1438154412213" MODIFIED="1438154447046"/>
</node>
<node TEXT="PV-Port" POSITION="right" ID="ID_891533164" CREATED="1438150357396" MODIFIED="1438150365543">
<edge COLOR="#ff0000"/>
<node TEXT="transistor-darlington" ID="ID_1968364352" CREATED="1438150548601" MODIFIED="1438150562989"/>
<node TEXT="V-measure" ID="ID_138582822" CREATED="1438150569703" MODIFIED="1438150575689"/>
<node TEXT="DC-Jack" ID="ID_12398321" CREATED="1438151788961" MODIFIED="1438151792328"/>
<node TEXT="IN-direction-diode" ID="ID_1490265770" CREATED="1438152025020" MODIFIED="1438152071434"/>
<node TEXT="LM2596-12" ID="ID_1187724365" CREATED="1438246524027" MODIFIED="1438246554098"/>
</node>
<node TEXT="LED Indikator" POSITION="right" ID="ID_1773869153" CREATED="1438151615526" MODIFIED="1438151623129">
<edge COLOR="#ff00ff"/>
<node TEXT="Active-high" ID="ID_1410028376" CREATED="1438151634087" MODIFIED="1438151649862"/>
<node TEXT="4-LED" ID="ID_914309199" CREATED="1438151824662" MODIFIED="1438151827921"/>
<node TEXT="Test-Button-on-Reset" ID="ID_1474505522" CREATED="1438151896780" MODIFIED="1438151908767"/>
</node>
<node TEXT="LED-PORT" POSITION="right" ID="ID_1561857213" CREATED="1438151840787" MODIFIED="1438151845288">
<edge COLOR="#00ffff"/>
<node TEXT="transistor-Darlington" ID="ID_1501220614" CREATED="1438151868847" MODIFIED="1438151882789"/>
<node TEXT="v-measure" ID="ID_1894529839" CREATED="1438152009939" MODIFIED="1438152013656"/>
<node TEXT="DC-Jack" ID="ID_1322752909" CREATED="1438152040687" MODIFIED="1438152044872"/>
<node TEXT="OUT-direction-diode" ID="ID_1756793461" CREATED="1438152048195" MODIFIED="1438152079477"/>
<node TEXT="LM2596-12" ID="ID_1324034843" CREATED="1438246571681" MODIFIED="1438246579608"/>
</node>
<node TEXT="USB" POSITION="right" ID="ID_515112231" CREATED="1438150428810" MODIFIED="1438150433850">
<edge COLOR="#00ff00"/>
<node TEXT="transistor-darlington" ID="ID_46379647" CREATED="1438150820104" MODIFIED="1438150827462"/>
<node TEXT="V-measure" ID="ID_1142216684" CREATED="1438150830889" MODIFIED="1438150841499"/>
<node TEXT="Buck 12v-5v" ID="ID_1469294904" CREATED="1438151800305" MODIFIED="1438151810878"/>
<node TEXT="USB-Port" ID="ID_184623255" CREATED="1438151815041" MODIFIED="1438151821572"/>
<node TEXT="OUT-direction-diode" ID="ID_1742474161" CREATED="1438152086921" MODIFIED="1438152097372"/>
<node TEXT="LM2596-5" ID="ID_353572367" CREATED="1438246591299" MODIFIED="1438246596936"/>
</node>
<node TEXT="STM32F100C8 chip" POSITION="left" ID="ID_438006740" CREATED="1438152117088" MODIFIED="1438152131572">
<edge COLOR="#ffff00"/>
</node>
</node>
</map>
