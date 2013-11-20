<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:sf="http://www.nationalarchives.gov.uk/pronom/SignatureFile"
    version="2.0">
    
    <xsl:param name="signatureVersion" as="xs:string" required="no"/>
    
    <xsl:output indent="yes" encoding="UTF-8" omit-xml-declaration="no"/>
    
    <xsl:template match="sf:FFSignatureFile | ContainerSignatureMapping">
        <xsl:comment><xsl:value-of select="unparsed-text('../LICENSE')"/></xsl:comment>
        <xsl:comment>Signature Version: <xsl:value-of select="$signatureVersion"/></xsl:comment>
        
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>
