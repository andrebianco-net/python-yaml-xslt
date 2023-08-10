<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/rooms">
<students>

    <xsl:for-each select="room/students/student">

        <xsl:sort select="@name"/>
        
        <student>

            <xsl:attribute name="id">
                <xsl:value-of select="@id"/>
            </xsl:attribute>

            <xsl:attribute name="name">
                <xsl:value-of select="@name"/>
            </xsl:attribute>

            <xsl:attribute name="shift">
                <xsl:value-of select="@shift"/>
            </xsl:attribute>

        </student>
    </xsl:for-each>
    
</students>
</xsl:template>

</xsl:stylesheet>