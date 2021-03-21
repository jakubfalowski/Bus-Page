<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <style>

/*
            @media (max-width: 768px) {
                .banner{
                    height: 200px;
                    }
                .banner > img{
                    top: 10px;
                    height: 100px;
                    }
                .banner > img.col-xs-12{
                    display: none;
                    }
            }
*/
            
          .news{
                width: 70%;
                float: left;
                height: 100%;
            } 
            .news > div{
                background-color: lightgray;
                margin-top: 30px;
            } 

            .news-square > * {
                padding-top: 20px;
            }
            
            
            .info{
                width: 30%;
                float: right;
                background-repeat: repeat;
                border-left: black 2px solid;
            }
            
            .info > img{
                padding-top: 20px;
            }
            

            
        </style>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        
        <!-- górny pasek zakładek --> 
        
        <div class = "news container-fluid">
            <h2> Aktualności </h2>
            <div class = "col-md-5 col-sm-offset-1 col-sm-10 col-xs-12 container fluid news-square">
                <h4>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h4>
                <img src="jpg/kierownica.jpeg" alt="kierowca" class="col-md-12 col-xs-12">
                <p class="col-md-12"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
            </div>
            <div class = "col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-10 col-xs-12 container fluid news-square">
                <h4>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h4>
                <img src="jpg/kierownica.jpeg" alt="kierowca" class="col-md-12 col-xs-12">
                <p class="col-md-12"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
            </div>
            <br>
            <div class = "col-md-5 col-sm-offset-1 col-sm-10 col-xs-12 container fluid news-square">
                <h4>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h4>
                <img src="jpg/kierownica.jpeg" alt="kierowca" class="col-md-12 col-xs-12">
                <p class="col-md-12"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
            </div>

            <div class = "col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-10 col-xs-12 container fluid news-square">
                <h4>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</h4>
                <img src="jpg/kierownica.jpeg" alt="kierowca" class="col-md-12 col-xs-12">
                <p class="col-md-12"> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. </p>
            </div>
        </div>
    
        <!-- lewa strona -->
        
        <div class = "info container-fluid">
            <h2> Aktualności </h2>
            <img src="jpg/stop.jpeg" class="col-md-10 col-xs-12" alt="al">
            <img src="jpg/stop.jpeg" class="col-md-10 col-xs-12" alt="al">
            <img src="jpg/stop.jpeg" class="col-md-10 col-xs-12" alt="al">
        </div>
        
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        
        <!-- prawa strona -->

       <div class="footer container-fluid">
 Kontakt xD
</div>
        
        <script src="ruchbanera.js"></script>
        
    </body>
</html>