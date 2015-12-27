<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:src="G7_närvarolista">

    <xsl:output encoding="UTF-8" method="text"/>
    <xsl:key name="dates" match="//src:matrix1_GroupActivityEventId" use="@GroupActivityEventId"/>

    <xsl:template match="/">
        <xsl:apply-templates
                select="//src:matrix1_GroupActivityEventId[generate-id(.)=generate-id(key('dates',@GroupActivityEventId)[1])]"/>
    </xsl:template>

    <xsl:template match="src:matrix1_GroupActivityEventId">
        <xsl:variable name="date" select="substring(@GroupActivityEventId, 1, 10)"/>
        <xsl:variable name="time" select="substring(@GroupActivityEventId, 13, 12)"/>
        <xsl:variable name="group" select="ancestor::src:list1_Details_Group/@textbox63"/>
        <xsl:value-of select="concat($date, ' ', $time, ' - ', $group)"/>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="key('dates', @GroupActivityEventId)[descendant::src:Cell[@Participated = '1']]">
            <xsl:variable name="detailName" select="concat(substring-after(../../@PersonId, ' '), ', ', substring-before(../../@PersonId, ' '))"/>
            <xsl:variable name="birthDate" select="//src:Detail[@textbox171 = $detailName]/@SSN"/>
            <xsl:value-of select="concat(substring($birthDate, 3, 2), substring($birthDate, 6, 2), substring($birthDate, 9, 2))"/>
            <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>
        <xsl:text>&#xA;</xsl:text>
    </xsl:template>

</xsl:stylesheet>