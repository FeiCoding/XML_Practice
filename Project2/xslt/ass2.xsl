<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        
        <html>
            
            <head>
                <link rel="stylesheet" type="text/css" href="../css/ass.css"></link>
                <title>Fruity and Spicy</title>
            </head>
            
            <body>
                <h1>Fruity and Spicy whiskies you might like!</h1>
                <p>Here is the list of all the whiskies which taste fruity and spicy among all six.</p>
                
                <table border="1" >
                    <th colspan="8" style="background-color:yellow">
                        <strong>Fruit and Spicy</strong>
                    </th>
                    
                    <tr style="background-color:pink">
                        
                        <th>Brand name</th>
                        <th>Year</th>
                        <th>Name</th>
                        <th>Alcohol level</th>
                        <th>Nose</th>
                        <th>Palate</th>
                        <th>Finish</th>
                        <th>Conclusion</th>
                        
                    </tr>  
                    <xsl:for-each select="whiskies/whisky[@types='scotch']">
                        
                        <xsl:apply-templates select="introduction | notes"/>
                        
                    </xsl:for-each>
                </table><br/>
                
            </body>
        </html>
        
    </xsl:template>
    
    
    <xsl:template match="introduction | notes">
        
        <xsl:for-each select="title | vintage">
            
            <!--    I want to pull out all the whiskies have flavour camp type is "fruity and spicy"        -->
            <!--    So I use an "if" statement, also if I do not put "brand" here, the brand name will disappear from the table        -->
            
            <xsl:if test="brand | flavourcamp[@type='fruity and spicy']">
                
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
                   
                    <!--      I select all the flavours from nose             -->
                   
                   <td>
                       <xsl:for-each select="nose[@type='flavour' ]">
                           <xsl:value-of select="."/><br/>
                       </xsl:for-each>
                   </td>
                   
                   <!--      I select all the flavours from palate             -->
                   
                   <td>
                       <xsl:for-each select="palate[@type='flavour' ]">
                           <xsl:value-of select="."/><br/>
                       </xsl:for-each>
                   </td>
                   
                   <!--      I select all the notes from finish             -->
                   
                   <td>
                       <xsl:for-each select="finish[@type ]">
                           <xsl:value-of select="."/><br/>
                       </xsl:for-each>
                   </td>
                   
                   <td>
                       <xsl:value-of select="conclusion"/>
                   </td>
                   
               </tr>
                
            </xsl:if>
            
        </xsl:for-each>
        
    </xsl:template>
    
</xsl:stylesheet>
