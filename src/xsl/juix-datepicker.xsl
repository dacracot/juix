<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:js="http://saxonica.com/ns/globalJS"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
	<xsl:output method="html" indent="yes"/>
<!-- =========================================================================================== -->
	<xsl:template match="juix-datepicker">
		<tr>
			<td>Date:</td>
			<td>
				<xsl:variable name="currentValue" select="string-join((@month, @day, @year), '/')"/>
				<input type="text" id="datepicker{position()}"/>
				<script xsl:expand-text="yes">initDP('#datepicker{position()}', '{$currentValue}')</script>
			</td>
		</tr>
	</xsl:template>
<!-- =========================================================================================== -->
</xsl:stylesheet> 