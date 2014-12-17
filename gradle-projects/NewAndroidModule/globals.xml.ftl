<?xml version="1.0"?>
<globals>
    <global id="topOut" value="." />
    <global id="projectOut" value="." />
    <!-- Use appcompat if compiling with Lollipop and supporting pre-Lollipop versions -->
    <global id="appCompat" type="boolean" value="${(hasDependency('com.android.support:appcompat-v7'))?string}" />
    <global id="manifestOut" value="${manifestDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="testOut" value="androidTest/${slashedPackageName(packageName)}" />
    <global id="resOut" value="${resDir}" />
    <global id="mavenUrl" value="mavenCentral" />
    <global id="buildToolsVersion" value="18.0.1" />
    <global id="gradlePluginVersion" value="0.6.+" />

    <global id="verRetrofit" value="1.8.+" />
    <global id="verPicasso" value="2.4.+" />
    <global id="verJackson" value="2.4.+" />
    <global id="verRxJava" value="0.20.+" />
    <global id="verRetrolambda" value="2.5.+" />
    <global id="verRobolectric" value="2.4" />
    <global id="verRobotium" value="5.2.+" />
</globals>
