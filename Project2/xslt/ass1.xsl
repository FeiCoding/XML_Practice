<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    
    <!--    This is the templete for the whole document, html gives head and body structure-->
    <!--    Within the stylesheet, drill down to more specific elements    -->
    <!--    Apply templates for each sector    -->
    
    <xsl:template match="/">
        
        <html>
            <link rel="stylesheet" type="text/css" href="../css/ass.css"></link>
            <head>
                <title>Brand Information</title>
            </head>
            
            <body>
                <h1>Basic information about 6 sctoch whiskies </h1>
                <p>Here are some basic information about 6 whiskies from Scotland:</p>

                
                
                <table border="1" >
                    
                <!--        6 headings in one table            -->
                    
                    <tr style="background-color:yellow">
                        <th>Brand name</th>
                        <th>Region</th>
                        <th>Town</th>
                        <th>Website</th>
                        <th>Year</th>
                        <th>Name</th>
                        
                    </tr>  
                    
                <!--         Select whiskies are scotch type           -->
                    
                <xsl:for-each select="whiskies/whisky[@types='scotch']">
                    
                   <!--         Sort the table by brand name           -->
                    
                    <xsl:sort select="introduction/title/brand"/>
                    
                    <!--     Because I need both information from introduction and notes, so I put 'or'  statement              -->
                    
                    <xsl:apply-templates select="introduction | notes"/>
                    
                </xsl:for-each>
                </table>
            </body>
        </html>
     
    </xsl:template>
    
        <!--           Template for the table         -->
    
    <xsl:template match="introduction | notes">
        
        <!--    when introduction or notes have been matched, keep select the sub-elements I want from them    -->

            <xsl:for-each select="title | vintage">
                
        <!--     Make the link from brand name to individual  image file           -->
                
            <tr>
                <td>
                    <a>
                        <xsl:for-each select="./image">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@src"/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <strong><xsl:value-of select="./brand"/></strong>
                    </a>
                </td>
                
                <td>
                    <xsl:value-of select="region"/>
                </td>
                
                <td>
                    <xsl:value-of select="town"/>
                </td>
                
        <!--     Make the link of the url to the actual website           -->
                
                <td>
                    <a>
                        <xsl:for-each select="./website">
                            <xsl:attribute name="href">
                                <xsl:value-of select="@target"/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <strong><xsl:value-of select="./website"/></strong>
                    </a>
                </td>
           
                    <td>
                        <xsl:value-of select="year"/>
                    </td>
                    
                    <td>
                        <xsl:value-of select="name"/>
                    </td>
                
                </tr>
            </xsl:for-each>
              
              
    </xsl:template>
   
        
</xsl:stylesheet>
