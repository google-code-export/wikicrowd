<?xml version="1.0" encoding="windows-1251" standalone="yes"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	exclude-result-prefixes="">
	<xsl:output 
		method="text" 
		version="1.0" 
		indent="no" 
		encoding="windows-1251"
		omit-xml-declaration="yes"
		media-type="text/plain"
		cdata-section-elements=""/>

	<xsl:template match="/">
		<xsl:apply-templates select="/chapter"/>
	</xsl:template>

	<xsl:template match="chapter">{\rtf1\ansi\deff0\adeflang1025
{\fonttbl{\f0\froman\fprq2\fcharset204 Times New Roman;}}
\pard\plain {\b <xsl:value-of select="@title"/>}
<xsl:apply-templates/>
}
</xsl:template>

	<xsl:template match="*[@type='title' or @type='subtitle' or @type='subsubtitle']">
\par\par \pard\plain {\b <xsl:value-of select="text/text()"/>}</xsl:template>

	<xsl:template match="*[@type='par']">
\par \pard\plain <xsl:value-of select="text/text()"/></xsl:template>

	<xsl:template match="*[@type='listitem']">
\pard\plain {\*\pn\pnlvlblt\pnf1\pnindent0{\pntxtb\'B7}}\fi-720\li720{<xsl:value-of select="text/text()"/>}\par
\pard</xsl:template>

	<xsl:template match="*[@type='footnote']">
\chftn
{\*\footnote \pard\plain \s246 \fs20 {\up6\chftn }{\i <xsl:value-of select="text/text()"/>}}</xsl:template>

</xsl:stylesheet>
