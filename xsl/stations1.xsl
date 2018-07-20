<?xml version="1.0" encoding="UTF-8"?>

<!-- Define the name space of xsl-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" exclude-result-prefixes="xd" version="1.0">
    
    <!-- Define the output tage -->
    <xsl:output method="html" version="4.0"
        encoding="UTF-8" indent="yes"/>
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
                <link rel="stylesheet" type="text/css" href="style1.css" />
            </head>
            
            <h1 style="text-align:center">Station Details</h1>
            
            <!-- Build up the table -->
            <table border="1" class="inlineTable">
                <tr bgcolor="#9acd32">
                    <th> Image </th>
                    <th colspan="2">Name</th>
                    <th colspan="6">Information</th>
                    
                </tr>
                <tr style="color:#0000ff">
                    <td>Current Picture</td>
                    <td>Current Name</td>
                    <td>Used Name</td>
                    <td colspan="2">Postcode/Position</td>
                    <td>Time of Opened</td>
                </tr>
                <xsl:for-each select="stations/station">
                    <tr>
                        <td>
                            <!-- Use xsl to attach image of station into the table -->
                            <img height="40" width="40">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="img/imgName"/>
                                </xsl:attribute>
                            </img>
                        </td>
                        
                        <!-- use when-otherwise statement to mark the station which in under building and which is under using according to the attribute of station -->
                        <xsl:choose>
                            <xsl:when test="./@type = 'building'">
                                <td bgcolor="#ff66ff">
                                    <xsl:value-of select="name/currentName"/>
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td>
                                    <xsl:value-of select="name/currentName"/>
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                        <td>
                            <xsl:value-of select="name/usedName"/>
                        </td>
                        <td>
                            <xsl:value-of select="information/position/postcode"/>
                        </td>
                        <td>
                            <xsl:value-of select="information/position/lineAdress"/>
                        </td>
                        <td>
                            <xsl:value-of select="information/openedTime/date"/>
                            <xsl:value-of select="information/openedTime/month"/>
                            <xsl:value-of select="information/openedTime/year"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            
            <!-- Small table to explain the color meanings -->
            <table class="inlineTable">
                <th> Color </th>
                <th> Meaning </th>
                <tr>
                    <td bgcolor="#ff66ff"/>
                    <td>Under Building</td>
                </tr>
            </table>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
