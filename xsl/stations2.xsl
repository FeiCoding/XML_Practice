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
            
            <h1 style="text-align:center">Brief History</h1>
            
            <!-- Build up the table -->
            <table border="1" align="center">
                <tr bgcolor="#9acd32">
                    <th>Name</th>
                    <th>History</th>
                    <th>Wiki Link</th>
                    
                </tr>
                <xsl:for-each select="stations/station">
                    <tr>                        
                        <td>
                            <xsl:value-of select="name/currentName"/>
                        </td>
                        <td>
                            <xsl:value-of select="history"/>
                        </td>
                        <td>
                            <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="information/website"/>
                                </xsl:attribute>
                                <p>link</p>
                            </xsl:element>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
