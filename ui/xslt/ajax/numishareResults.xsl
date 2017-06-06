<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    
    <xsl:template match="object" mode="results">
        <xsl:variable name="position" select="position()"/>
        <!-- obverse -->
        <xsl:choose>
            <xsl:when test="string(obvRef) and string(obvThumb)">
                <a class="thumbImage" rel="gallery" href="{obvRef}" title="Obverse of {@identifier}: {@collection}" id="{@uri}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                    <img src="{obvThumb}"/>
                </a>
            </xsl:when>
            <xsl:when test="not(string(obvRef)) and string(obvThumb)">
                <img src="{obvThumb}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                </img>
            </xsl:when>
            <xsl:when test="string(obvRef) and not(string(obvThumb))">
                <a class="thumbImage" rel="gallery" href="{obvRef}" title="Obverse of {@identifier}: {@collection}" id="{@uri}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                    <img src="{obvRef}" style="max-width:120px"/>
                </a>
            </xsl:when>
        </xsl:choose>
        <!-- reverse-->
        <xsl:choose>
            <xsl:when test="string(revRef) and string(revThumb)">
                <a class="thumbImage" rel="gallery" href="{revRef}" title="Reverse of {@identifier}: {@collection}" id="{@uri}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                    <img src="{revThumb}"/>
                </a>
            </xsl:when>
            <xsl:when test="not(string(revRef)) and string(revThumb)">
                <img src="{revThumb}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                </img>
            </xsl:when>
            <xsl:when test="string(revRef) and not(string(revThumb))">
                <a class="thumbImage" rel="gallery" href="{revRef}" title="Obverse of {@identifier}: {@collection}" id="{@uri}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                    <img src="{revRef}" style="max-width:120px"/>
                </a>
            </xsl:when>
        </xsl:choose>
        <!-- combined -->
        <xsl:choose>
            <xsl:when test="string(comRef) and string(comThumb)">
                <a class="thumbImage" rel="gallery" href="{comRef}" title="Reverse of {@identifier}: {@collection}" id="{@uri}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                    <img src="{comThumb}"/>
                </a>
            </xsl:when>
            <xsl:when test="not(string(comRef)) and string(comThumb)">
                <img src="{comThumb}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                </img>
            </xsl:when>
            <xsl:when test="string(comRef) and not(string(comThumb))">
                <a class="thumbImage" rel="gallery" href="{comRef}" title="Obverse of {@identifier}: {@collection}" id="{@uri}">
                    <xsl:if test="$position &gt; 1">
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:if>
                    <img src="{comRef}" style="max-width:240px"/>
                </a>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>