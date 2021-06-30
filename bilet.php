<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <style>
            table,th,td{
                padding: 10px;
                border: 1px solid black;
                text-align: center;
            }
        </style>
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
                    $sql = "SELECT * FROM kurs WHERE czy_aktualny = 1";
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
                            <select name='kurs' id='kurs'><option value='".$_POST['kurs']."'>".$_POST['kurs']."</option></select><input type='submit' name='submit2' value='kup bilet dzienny'><input type='submit' name='submit3' value='kup bilet miesięczny'></form>";
                    }
                    
                    if(isset($_POST['submit2']) || isset($_POST['submit3'])){
                        echo "Kupiłeś bilet pomiędzy: ".$_POST['miasto1']." a ".$_POST['miasto2'];
                        $sql3 = "CALL odleglosc_przystankow('".$_POST['miasto1']."','".$_POST['miasto2']."')";
                        $result3 = $conn->query($sql3);
                        while($row3 = $result3->fetch_assoc()){
                            $odleglosc = $row3['wynik'];
                            echo " Odległość wynosi: ".$odleglosc." kilometrów. ";
                        }
                    
                        ?>
                    <?php
                        $conn = new mysqli('localhost', 'root', '', 'projekt');
                        $sql4 = "SELECT `rodzaj(miejski)` FROM `tabela_łącząca` INNER JOIN kurs ON tabela_łącząca.id_kursu = kurs.id_kursu INNER JOIN przystanek ON tabela_łącząca.id_przystanku = przystanek.id_przystanku WHERE nazwa = '".$_POST['miasto2']."'";
                        $result4 = $conn->query($sql4);
                        $row4 = $result4->fetch_assoc();
                        $rodzaj = $row4['rodzaj(miejski)'];
                        if($rodzaj == 'miejski') $cena = ROUND($odleglosc * 0.5,2);
                        else $cena = $odleglosc * 1;
                        echo "Cena to: ".$cena." złotych.";
                    }
                    if(isset($_POST['submit2'])){
                        $sql5 = " CALL dodaj_bilet('".$_POST['miasto1']."','".$_POST['miasto2']."',".$_POST['kurs'].",".$odleglosc.",".$cena.")";
                        $result5 = $conn->query($sql5);
                    
                        }
                    if(isset($_POST['submit3'])){
                        $sql30="SET GLOBAL event_scheduler='ON';";
                         mysqli_query($conn,$sql30) or die (mysqli_error($conn));
                        
                        $start = date("Y-m-d");
                        $teraz = strtotime(date("Y-m-d"));
                        $final = date("Y-m-d", strtotime("+1 month", $teraz));
                        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
                        $charactersLength = strlen($characters);
                        $randomString = '';
                        for ($i = 0; $i < 8; $i++) {
                            $randomString .= $characters[rand(0, $charactersLength - 1)];
                        }
                        $sql20 = "
                        CREATE DEFINER=`root`@`localhost` EVENT `".$randomString."` ON SCHEDULE EVERY 1 DAY STARTS 
                        '".$start." 00:00:01'ENDS '".$final." 00:00:01' 
                        ON COMPLETION NOT PRESERVE ENABLE 
                        DO BEGIN 
                       CALL dodaj_bilet('".$_POST['miasto1']."','".$_POST['miasto2']."',".$_POST['kurs'].",".$odleglosc.",".$cena."); END";
                        mysqli_query($conn,$sql20) or die (mysqli_error($conn));
                        echo "<p> Twój kod do biletu miesięcznego: <b>".$randomString. "</b></p>";
                        
                    }
                        
                    $sql10 = " SELECT * FROM `bilety_na_kurs`";
                    $result10 = $conn->query($sql10);
                    echo "<table><tr><th> ID kursu </th><th> Ilość sprzedanych biletów </th> </tr>";
                    while($row10 = $result10->fetch_assoc()){
                        echo "<tr><td>".$row10['id_kursu']."</td><td>".$row10['ilosc_sprzedanych_biletow']."</td></tr>";
                    }
                    echo "</table>";
                    
                
            ?>
        </div>
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
    </body>
</html>