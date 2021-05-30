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
            <h2 class="center"> Kup bilet </h2>
            <p> Wykonuj polecenia po kolei</p>

            <form action="" method="post">
              <label for="kurs">Kurs:</label>
              <select name="kurs" id="kurs">
                <?php
                    $conn = new mysqli('localhost', 'root', '', 'projekt');
                    $sql = "SELECT * FROM kurs";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()){
                        echo "<option value='".$row['id_kursu']."'>".$row['numer_kursu']."</option>";
                    }
                  ?>
              </select>
              <input type="submit" name="submit1" value="prześlij">
            </form>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                    if(isset($_POST['submit1'])){
                        $sql = "SELECT nazwa FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = ".$_POST['kurs']." GROUP BY przystanek.id_przystanku";
                        $result = $conn->query($sql);
                        $result2 = $conn->query($sql);
                        echo "<form action='' method='post'><label for='miasto1'>Kurs:</label><select name='miasto1' id='miasto1'>";
                        while($row = $result->fetch_assoc()){
                            echo "<option value='".$row['nazwa']."'>".$row['nazwa']."</option>";
                        }    
                        echo "</select>";
                        echo "<label for='miasto2'>Kurs:</label><select name='miasto2' id='miasto2'>";
                        while($row = $result2->fetch_assoc()){
                            echo "<option value='".$row['nazwa']."'>".$row['nazwa']."</option>";
                        }    
                        echo "</select><label for='kurs'>Kurs:</label>
                            <select name='kurs' id='kurs'><option value='".$_POST['kurs']."'>".$_POST['kurs']."</option></select><input type='submit' name='submit2' value='prześlij'></form>";
                    }
                    
                    if(isset($_POST['submit2'])){
                        echo "Kupiłeś bilet pomiędzy: ".$_POST['miasto1']." a ".$_POST['miasto2'];
                        $sql3 = "SELECT ROUND(SQRT(POW((SELECT X FROM przystanek WHERE nazwa='".$_POST['miasto2']."')-(SELECT X FROM przystanek WHERE nazwa='".$_POST['miasto1']."'),2)+POW((SELECT Y FROM przystanek WHERE nazwa='".$_POST['miasto2']."')-(SELECT Y FROM przystanek WHERE nazwa='".$_POST['miasto1']."'),2)),2) AS wynik";
                        $result3 = $conn->query($sql3);
                        while($row3 = $result3->fetch_assoc()){
                            $odleglosc = $row3['wynik'];
                            echo " Odległość wynosi: ".$odleglosc." kilometrów. ";
                        }
                        $sql4 = "SELECT `rodzaj(miejski)` FROM `tabela_łącząca` INNER JOIN kurs ON tabela_łącząca.id_kursu = kurs.id_kursu INNER JOIN przystanek ON tabela_łącząca.id_przystanku = przystanek.id_przystanku WHERE nazwa = '".$_POST['miasto2']."'";
                        $result4 = $conn->query($sql4);
                        $row4 = $result4->fetch_assoc();
                        $rodzaj = $row4['rodzaj(miejski)'];
                        if($rodzaj == 'miejski') $cena = $odleglosc * 0.5;
                        else $cena = $odleglosc * 1;
                        echo "Cena to: ".$cena." złotych.";
                        $sql5 = "INSERT INTO `bilet`(`id_przystanku_poczatkowego`, `id_przystanku_koncowego`, `id_kursu`, `odleglosc`, `cena`) VALUES ((SELECT id_przystanku FROM przystanek WHERE nazwa = '".$_POST['miasto1']."'),(SELECT id_przystanku FROM przystanek WHERE nazwa = '".$_POST['miasto2']."'),".$_POST['kurs'].",".$odleglosc.",".$cena.")";
                        $result5 = $conn->query($sql5);

                    }
                
            ?>
        </div>
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
    </body>
</html>