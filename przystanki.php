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
            <h2 class="center"> Aktualne przystanki </h2>
            <p>Wybierz przystanek początkowy i końcowy by obliczyć odległość pomiędzy powyższymi miejscami.</p>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');

                    if(isset($_POST['submit'])){
                        $sql = "SELECT ROUND(SQRT(POW((SELECT X FROM przystanek WHERE nazwa='".$_POST['przystanek_koncowy']."')-(SELECT X FROM przystanek WHERE nazwa='".$_POST['przystanek_poczatkowy']."'),2)+POW((SELECT Y FROM przystanek WHERE nazwa='".$_POST['przystanek_koncowy']."')-(SELECT Y FROM przystanek WHERE nazwa='".$_POST['przystanek_poczatkowy']."'),2)),2) AS wynik";
                        $result = $conn->query($sql);
                        $row = $result->fetch_assoc();
                        $wynik = $row["wynik"];
                        
                       echo "Odległość wynosi: ".$wynik." kilometrów.";
                        
                    }
                    
                
            ?>

            <form action="" method="post">
              <label for="przystanek_poczatkowy">Przystanek początkowy:</label>
              <select name="przystanek_poczatkowy" id="przystanek_poczatkowy">
                  <?php
                    $conn = new mysqli('localhost', 'root', '', 'projekt');
                    $sql = "SELECT nazwa FROM przystanek";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()){
                        echo "<option value='".$row['nazwa']."'>".$row['nazwa']."</option>";
                    }
                  ?>
              </select>
            <label for="przystanek_koncowy">Przystanek końcowy:</label>
              <select name="przystanek_koncowy" id="przystanek_koncowy">
                <?php
                    $conn = new mysqli('localhost', 'root', '', 'projekt');
                    $sql = "SELECT nazwa FROM przystanek";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()){
                        echo "<option value='".$row['nazwa']."'>".$row['nazwa']."</option>";
                    }
                  ?>
              </select>
              <input type="submit" name="submit" value="prześlij">
            </form>
            <?php
                function pre_r($array){
                    echo '<pre>';
                    print_r($array);
                    echo '</pre>';
                }
            ?>
            <img src="jpg/uklad_wspolrzednych.jpg" class="col-md-12 center" alt="plan">
        </div>
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
    </body>
</html>