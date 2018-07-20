<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        
        <html>
            
            <head>
                <link rel="stylesheet" type="text/css" href="../css/ass.css"></link>
                <title>Strong whiskies</title>
            </head>
            
            <body>
                <h1>whiskies with specific types</h1>
                <p>If you are an whisky lover, you might have your own preference of some specific  flavours: Here I list all whiskies may be strong when it tastes.</p>
                
                <table border="1" >
                    <th colspan="6" style="background-color:yellow">
                        <strong>Strong whiskies</strong><br/>which means taste rich, heavy, thick and powerful
                    </th>
                    
                    <tr>
                        <th>Brand name</th>
                        <th>Year</th>
                        <th>Name</th>
                        <th>Alcohol level</th>
                    </tr>  
                    
                    <xsl:for-each select="whiskies/whisky[@types='scotch']">
                        
                        <xsl:apply-templates select="introduction | notes"/>
                        
                    </xsl:for-each>
                    
                </table>
                
            </body>
            
        </html>
        
    </xsl:template>
    
    <xsl:template match="introduction | notes">
        
        <xsl:for-each select="title | vintage">
            
            <!--    Just a example of  how a strong whisky may taste like including all following attributes.        -->
            
            <xsl:if test="brand | palate[@feeling='rich'] | palate[@feeling='heavy'] | palate[@feeling='thick'] | palate[@feeling='full'] | palate[@feeling='powerful']">
                
                <tr>
                    
                    <td >
                        <xsl:value-of select="brand"/>
                    </td>
                    
                    <td>
                        <xsl:value-of select="year"/>
                    </td>
                    
                    <td>
                        <xsl:value-of select="name"/>
                    </td>
                    
                    <td>
                        <xsl:value-of select="abv"/>
                    </td>
                    
                </tr>
                
            </xsl:if>
            
        </xsl:for-each>
        
    </xsl:template>
    
</xsl:stylesheet>
