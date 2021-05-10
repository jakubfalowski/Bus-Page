<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        
        
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        
        
        
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">
            <h2 class="col-12-md center"> Bliski bus </h2>
            <img src="jpg/1.jpg" alt="1" class="center">
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM tabela_łącząca WHERE id_kursu = 1 AND id_przystanku = 4";
                $result = mysqli_query($conn, $sql);

                 if (mysqli_num_rows($result) > 0) {
                    while($row = mysqli_fetch_assoc($result)) {
                       echo "<br>"."Godzina przyjazdu: ".$row["godzina_przyjazdu"]."  , Godzina wyjazdu: ". $row["godzina_wyjazdu"];
                        if($row["godzina_wyjazdu"] == NULL) echo "przystanek końcowy";
                    }
                 } else {
                    echo "brak";
                 }
                 mysqli_close($conn);
            
                
            ?>
            
            </div>

        
        
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
    </body>
</html>