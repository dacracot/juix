<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:js="http://saxonica.com/ns/globalJS"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" indent="yes"/>
	<xsl:include href="juix-datepicker.xsl"/>
<!-- =========================================================================================== -->
	<xsl:template match="/">
		<xsl:result-document href="#header">
			<hr/>
		</xsl:result-document>
		<xsl:result-document href="#editor">
			<table border="1">
				<tr bgcolor="#999999">
					<th colspan="2">Form</th>
				</tr>
				<xsl:apply-templates select="data/name"/>
				<xsl:apply-templates select="data/phone"/>
				<xsl:apply-templates select="data/juix-datepicker">
					<xsl:with-param name="datepicker-options">
						{
						"showOtherMonths":true,
						"changeMonth":true,
						"changeYear":true
						}
					</xsl:with-param>
				</xsl:apply-templates>
			</table>
		</xsl:result-document>
		<xsl:result-document href="#footer">
			<hr/>
		</xsl:result-document>
	</xsl:template>
	<!-- ======================================================================================= -->
	<xsl:template match="name">
		<tr>
			<td>Name:</td>
			<td>
				<xsl:value-of select="string-join((@first, @middle, @last), ' ')"/>
			</td>
		</tr>
	</xsl:template>
	<!-- ======================================================================================= -->
	<xsl:template match="phone">
		<tr>
			<td>Phone:</td>
			<td>
				<xsl:text>(</xsl:text><xsl:value-of select="@area"/><xsl:text>)</xsl:text>
				<xsl:value-of select="@prefix"/><xsl:text>-</xsl:text>
				<xsl:value-of select="@number"/>
			</td>
		</tr>
	</xsl:template>
<!-- =========================================================================================== -->
</xsl:stylesheet> 