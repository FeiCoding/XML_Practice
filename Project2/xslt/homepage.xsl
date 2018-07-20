<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    <html>
        <head>
            <style> 
                div.container {
                width: 100%;
                border: 1px solid gray;
                }
                
                header, footer {
                padding: 1em;
                color: white;
                background-color: hsl(0, 100%, 25%);";
                clear: left;
                text-align: center;
                }
                
                nav {
                float: left;
                max-width: 160px;
                margin: 0;
                padding: 1em;
                }
                
                nav ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                width: 150px;
                background-color:hsl(0, 100%, 90%);
                }
                
                nav ul a {
                display: block;
                color:#000 ;
                padding: 8px 16px;
                text-decoration: none;
                }
                
                nav ul a.active {
                background-color: #4CAF50;
                color: white;
                }
                
                nav ul a:hover:not(.active) {
                background-color: hsl(0, 100%, 25%);
                color: white;
                }
                
                div.gallery {
                margin: 5px;
                border: none;
                float: top;
                width: 1200px;
                height: 500px;
                }
                
                div.gallery:hover {
                border: none;
                }
                
                div.gallery img {
                width: 100%;
                height: auto;
                }
                
                
                div.desc {
                padding: 15px;
                text-align: center;
                }
                
                article {
                margin-left: 170px;
                border-left: 1px solid gray;
                padding: 1em;
                overflow: hidden;
                }
                
                h1{
                font-size: 50px;
                }
                
                h2{
                font-size: 36px;
                }
                
                li{
                font-size: 20px; 
                font-family:"Times New Roman", Times, serif;
                }
                
                p {
                font-size: 20px; 
                font-family: "Times New Roman", Times, serif;
                }
                
            </style>
        </head>
        
        <body>
            
            <div class="container">
                <header>
                    <h1 style="background-color:hsl(0, 100%, 25%);">Scotch Whiskies</h1>
                </header>
                
                <nav class="nav">
                    <ul>
                        <li><a href="../html/whisky1.html">Brand  information</a></li>
                        <li><a href="../html/whisky2.html">Fruity and Spicy</a></li>
                        <li><a href="../html/whisky3.html">Strong whiskies</a></li>
                    </ul>
                </nav>
                
                
                
                <article class="article">
                    
                    <div class="gallery">
                        <a >
                            <img src="../images/scotland.jpg" alt="scotland landscape" width="100%"></img>
                        </a>
                        <div class="desc">The great view of scotland</div>
                    </div>
                    
                    <h2>Whisky</h2>
                    
                    <p>Whisky is one of the most popular alcohol drinks in the world. It is not only a product simply made from cereal, it is the creation of human ingenuity. 
                        The variation and possibility of whisky is infinite.</p>
                    
                    <p>In here, you will know some famous distilleries, and find some whiskies you might like. No matter you are a beginner or an expert, this is a fun place to enjoy.</p>
                    
                    <p>
                        <strong>Try some scotch whiskies today!  The more you try, the wider world you would explore!</strong>
                    </p>
                </article>
                
                <footer></footer>
            </div>
            
        </body>
    </html>
    
    </xsl:template>
</xsl:stylesheet>
