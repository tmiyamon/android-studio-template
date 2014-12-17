<?xml version="1.0"?>
<recipe>


    <#if appCompat><dependency mavenUrl="com.android.support:appcompat-v7:${targetApi}.+"/></#if>

<#if !createActivity>
    <mkdir at="${escapeXmlAttribute(srcOut)}" />
</#if>

    <mkdir at="${escapeXmlAttribute(projectOut)}/libs" />

    <merge from="settings.gradle.ftl"
             to="${escapeXmlAttribute(topOut)}/settings.gradle" />
    <instantiate from="build.gradle.ftl"
                   to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <instantiate from="AndroidManifest.xml.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

<#if copyIcons>
    <mkdir  at="${escapeXmlAttribute(resOut)}/drawable" />
    <copy from="res/drawable-hdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi" />
    <copy from="res/drawable-mdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi" />
    <copy from="res/drawable-xhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi" />
    <copy from="res/drawable-xxhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi" />
</#if>
<#if makeIgnore>
    <copy from="module_ignore"
            to="${escapeXmlAttribute(projectOut)}/.gitignore" />
</#if>
<#if enableProGuard>
    <instantiate from="proguard-rules.txt.ftl"
                   to="${escapeXmlAttribute(projectOut)}/proguard-rules.pro" />
</#if>
<#if !(isLibraryProject??) || !isLibraryProject>
    <instantiate from="res/values/styles.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/styles.xml" />
<#if buildApi gte 21 && !(appCompat)>
    <copy from="res/values-v21/styles.xml"
          to="${escapeXmlAttribute(resOut)}/values-v21/styles.xml" />
</#if>
</#if>

    <instantiate from="res/values/strings.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="test/app_package/ApplicationTest.java.ftl"
                   to="${testOut}/ApplicationTest.java" />

    <dependency mavenUrl="com.squareup.retrofit:retrofit:${verRetrofit}" />
    <dependency mavenUrl="com.squareup.picasso:picasso:${verPicasso}" />
    <dependency mavenUrl="com.fasterxml.jackson.core:jackson-core:${verJackson}" />
    <dependency mavenUrl="com.fasterxml.jackson.core:jackson-databind:${verJackson}" />
    <dependency mavenUrl="com.fasterxml.jackson.core:jackson-annotations:${verJackson}" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/network" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/models" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/managers" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/utils" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/fragments" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/views" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/views/adapters" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/views/actionbar" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/views/widgets" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/views/notifications" />

    <#if isLibraryProject?? && isLibraryProject>
    <#else>
    <instantiate from="gradle.properties"
             to="${escapeXmlAttribute(projectOut)}/gradle.properties" />
    </#if>
</recipe>
