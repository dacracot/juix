<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:js="http://saxonica.com/ns/globalJS"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" indent="yes"/>
<!-- =========================================================================================== -->
	<xsl:template match="juix-datepicker">
		<!-- =================================================================================== -->
		<xsl:variable name="current-value" select="string-join((@month, @day, @year), '/')"/>
		<xsl:variable name="datepicker-options" select="normalize-space(@options)"/>
		<xsl:variable name="input-id">datepicker-<xsl:value-of select="position()"/></xsl:variable>
		<xsl:element name="label">
			<xsl:attribute name="for"><xsl:value-of select="$input-id"/></xsl:attribute>
			<xsl:value-of select="@label"/>
		</xsl:element>
		<xsl:element name="input">
			<xsl:attribute name="type">text</xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="$input-id"/></xsl:attribute>
		</xsl:element>
		<script xsl:expand-text="yes">juixDatepickerInit('#{$input-id}', '{$current-value}','{$datepicker-options}')</script>
		<!-- =================================================================================== -->
	</xsl:template>
<!-- =========================================================================================== -->
</xsl:stylesheet> 