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
                        $data=date("Y-m-d");
                        $sql3 = "SELECT * FROM aktualnosci WHERE poczatek_aktualnosci < '".$data."' AND koniec_aktualnosci > '".$data."'";
                        $result3 = $conn->query($sql3);
                        while($row3 = $result3->fetch_assoc()){
                        echo 
                            "<h4>".$row3["tytuł"]."</h4><img src='data:image/jpeg;base64,".base64_encode($row3['obraz'])."' alt='aktualnosci'><b>".$row3['krotki_opis']."</b><p>".$row3['dlugi_opis']."</p>";
                        }
                    ?>
                </div>
            </div>

            <!-- lewa strona -->

            <div class = "info">
                <h2> Aktualności </h2>
                <img src="jpg/1.PNG" alt="al">
                <img src="jpg/2.png" alt="al">
                <img src="jpg/3.png" alt="al">
            </div>

            <div class="visits"> <?php include "./licznik_odwiedzin.php" ?> </div>
        </div>
        
        <!-- prawa strona -->

       <?php include "./footer.html" ?>
        
        <script src="ruchbanera.js"></script>
    </body>
</html>