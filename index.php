<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <style>
            
          .news{
                width: 65%;
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
            .news img{
                width: 100%;
            }
            
            .info{
                width: 25%;
                float: right;
                background-repeat: repeat;
            }
            
            .info > img{
                width: 100%;
                padding-top: 20px;
            }
            
            @media (max-width: 991px) {
                .news{
                    width: 100%;
                    text-align: center;
                }
                .info{
                    width: 100%;
                    padding: 10%;
                    text-align: center;
                }
            }

            
        </style>
    </head>
    <body>
        <?php include "mainbar.html" ?>
        
        <!-- górny pasek zakładek --> 
        <div class="container">
            <div class = "news">
                <h2> Aktualności </h2>
                <div class = "news-square">
                    <?php
                        $conn = new mysqli('localhost', 'root', '', 'projekt');
                        $sql = "SELECT * FROM aktualnosci";
                         $result = $conn->query($sql);
                        $row = $result->fetch_assoc();
                        echo 
                            "<h4>".$row["tytuł"]."</h4><img src='data:image/jpeg;base64,".base64_encode($row['obraz'])."' alt='aktualnosci'><b>".$row['krotki_opis']."</b><p>".$row['dlugi_opis']."</p>"
                    ?>
                </div>
            </div>

            <!-- lewa strona -->

            <div class = "info">
                <h2> Aktualności </h2>
                <img src="jpg/stop.jpeg" alt="al">
                <img src="jpg/stop.jpeg" alt="al">
                <img src="jpg/stop.jpeg" alt="al">
            </div>

            <div class="visits"> <?php include "./licznik_odwiedzin.php" ?> </div>
        </div>
        
        <!-- prawa strona -->

       <?php include "./footer.html" ?>
        
        <script src="ruchbanera.js"></script>
    </body>
</html>