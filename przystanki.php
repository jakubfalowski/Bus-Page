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
                        $sql = "SELECT * FROM przystanek WHERE nazwa='".$_POST['przystanek_poczatkowy']."'";
                        $result = $conn->query($sql);
                        $row = $result->fetch_assoc();
                        $startname = $row["nazwa"];
                        $startX = $row["X"];
                        $startY = $row["Y"];
                        
                        $sql2 = "SELECT * FROM przystanek WHERE nazwa='".$_POST['przystanek_koncowy']."'";
                        $result2 = $conn->query($sql2);
                        $row2 = $result2->fetch_assoc();
                        $finishname = $row2["nazwa"];
                        $finishX = $row2["X"];
                        $finishY = $row2["Y"];
                        $distance = round(sqrt(pow(($finishX-$startX),2)+pow(($finishY-$startY),2)),2);
                        
                       echo "Przystanek początkowy: ".$startname." X: ".$startX." Y: ".$startY."<br> Przystanek końcowy: ".$finishname." X: ".$finishX." Y: ".$finishY."<br>".$distance." km";
                        
                    }
                    
                
            ?>

            <form action="" method="post">
              <label for="przystanek_poczatkowy">Przystanek początkowy:</label>
              <select name="przystanek_poczatkowy" id="przystanek_poczatkowy">
                <option value="Nowicz Zachodni">Nowicz zachodni</option>
                <option value="Szkolna">Szkolna</option>
                <option value="Spożywcza">Spożywcza</option>
                <option value="Rynek">Rynek</option>
                <option value="Nowicz Północny">Nowicz północny</option>
                <option value="Stadionowa">Stadionowa</option>
                <option value="Nowicz Wschodni">Nowicz wschodni</option>
                <option value="Cmentarna">Cmentarna</option>
                <option value="Nowicz Południowy">Nowicz południowy</option>
                <option value="Arakowice">Arakowice</option>
                <option value="Zawada">Zawada</option>
                <option value="Marakow">Maraków</option>
                <option value="Udanow">Udanów</option>
                <option value="Mała Wieś">Mała Wieś</option>
                <option value="Duża Wieś">Duża Wieś</option>
                <option value="Recko">Recka</option>
                <option value="Kebsice">Kebsice</option>
                <option value="Maflok">Maflok</option>
              </select>
            <label for="przystanek_koncowy">Przystanek końcowy:</label>
              <select name="przystanek_koncowy" id="przystanek_koncowy">
                <option value="Nowicz Zachodni">Nowicz zachodni</option>
                <option value="Szkolna">Szkolna</option>
                <option value="Spożywcza">Spożywcza</option>
                <option value="Rynek">Rynek</option>
                <option value="Nowicz Północny">Nowicz północny</option>
                <option value="Stadionowa">Stadionowa</option>
                <option value="Nowicz Wschodni">Nowicz wschodni</option>
                <option value="Cmentarna">Cmentarna</option>
                <option value="Nowicz Południowy">Nowicz południowy</option>
                <option value="Arakowice">Arakowice</option>
                <option value="Zawada">Zawada</option>
                <option value="Marakow">Maraków</option>
                <option value="Udanow">Udanów</option>
                <option value="Mała Wieś">Mała Wieś</option>
                <option value="Duża Wieś">Duża Wieś</option>
                <option value="Recko">Recka</option>
                <option value="Kebsice">Kebsice</option>
                <option value="Maflok">Maflok</option>
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
        <script>
            const nowicz_zachodni = [4,7];
            const szkolna = [6,6];
            const spozywcza = [7,8];
            const rynek = [8,7];
            const nowicz_polnocny = [9,9];
            const stadionowa = [12,8];
            const nowicz_wschodni = [14,6];
            const cmentarna = [10,6];
            const nowicz_poludniowy = [8,4];
            
            const arakowice = [1,3];
            const zawada = [1,8];
            const marakow = [5,11];
            const udanow = [9,12];
            const mala_wies = [14,11];
            const duza_wies = [20,9];
            const recko = [18,3];
            const kebsice = [14,1];
            const maflok = [6,0];
            
            const nowicz_poludniowy_to_maflok = Math.sqrt(Math.pow((maflok[0] - nowicz_poludniowy[0]),2) + Math.pow((maflok[1] - nowicz_poludniowy[1]),2));
            
            document.getElementById("xD").innerHTML = " Odległość wynosi " + nowicz_poludniowy_to_maflok;
            
        </script>
        </div>
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
    </body>
</html>