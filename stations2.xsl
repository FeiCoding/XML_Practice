<?xml version="1.0" encoding="UTF-8"?>

<!-- Define the name space of xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xd"
    version="1.0">
    
    <!-- Define the output tage -->
    <xsl:output method="html" version="4.0"
        encoding="UTF-8" indent="yes"/>
    
    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <!-- Define the meta information to contain the author information and file's function -->
                <meta charset="UTF-8" />
                <meta name="description" content="INSTG037 XML Assignment" />
                <meta name="keywords" content="HTML,CSS,XML" />
                <meta name="author" content="Kun Chen" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                
                <!-- Define the link information to link to css file -->
                <link rel="stylesheet" type="text/css" href="style2.css" />
            </head>
            <body>
                <h1 style="text-align:center">My Favorite 10 Stations</h1>
                
                <!-- Use apply-templates to define the list content -->
                <xsl:apply-templates/> 
            </body>
        </html>
    </xsl:template>
    
    
    <!-- Child templates -->
    <xsl:template match="station">
        <div class="centerDiv">
            <div class="div1">
                <p>                    
                    <xsl:apply-templates select="img"/>
                </p>
            </div>
            <div class="div2">
                <p>
                    <xsl:apply-templates select="name/currentName"/>
                    <xsl:apply-templates select="name/usedName"/>
                    <xsl:apply-templates select="information/position/postcode"/>
                    <xsl:apply-templates select="information/position/lineAdress"/>
                    <xsl:apply-templates select="information/opendedTime"/>
                    <xsl:apply-templates select="information/zones"/>
                    <xsl:apply-templates select="information/lines"/>
                    <xsl:apply-templates select="information/usage"/>
                    <xsl:apply-templates select="information/history"/>
                </p>
            </div>
        </div>
    </xsl:template>
    
    <xsl:template match="img">
        <span>
            <!-- Use xsl to attach image of station into the list -->
            <img height="150" width="150" align="right">
                <xsl:attribute name="src">
                    <xsl:value-of select="./imgName"/>
                </xsl:attribute>
            </img>
        </span>
    </xsl:template>
    
    <xsl:template match="name/currentName">
        Current Name: <span style="color:#ff0000">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="name/usedName">
        Used Name: <span style="color:#ff0000">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="information/position/lineAdress">
        Line Adress: <span style="color:#ff0000">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="information/opendedTime">
        Opended Time: <span style="color:#ff0000">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="information/zones">
        Zones: <span style="color:#ff0000">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="information/lines">
        Lines: <span style="color:#00ff00">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="information/usage">
        Usage: <span style="color:#00ff00">
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
    <xsl:template match="information/history">
        History: <span>
            <xsl:value-of select="."/></span>
        <br />
    </xsl:template>
    
</xsl:stylesheet>