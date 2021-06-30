<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <style>
            table,tr{
                text-align: center;
                padding: 10px;
                border: 1px solid black;
            }
            th{
                padding: 10px;
            }
            .db{
                width: 200px;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">
            <h2 class="center"> Edytowanie kursu </h2>
            <p> Wykonuj polecenia po kolei</p>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM aktualnosci";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                echo "<table><tr><th>ID aktualności</th><th>Tytuł</th><th>Obraz</th><th>Krótki opis</th><th>Długi opis</th><th>Początek aktualności</th><th>Koniec aktualności</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_aktualnosci']."</td><td>".$row['tytuł']."</td><td><img src='data:image/jpeg;base64,".base64_encode($row['obraz'])."' alt='aktualnosci' class='db'></td><td>".$row['krotki_opis']."</td><td>".$row['dlugi_opis']."</td><td>".$row['poczatek_aktualnosci']."</td><td>".$row['koniec_aktualnosci']."</td></tr>";
                }
                echo "</table><label> Wybierz id aktualnosci który chcesz edytować</label><form method='post'><select name='aktualnosc'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_aktualnosci'].">".$row['id_aktualnosci']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    
                    $sql5 = "SELECT * FROM aktualnosci WHERE id_aktualnosci =".$_POST['aktualnosc'];
                    $result5 = $conn->query($sql5);
                    $row5 = $result5->fetch_assoc();
                        echo "
                            <form method='post'>
                            <label> Podaj id_aktualnosci</label>
                            <input type='number' name='aktualnosci' value='".$_POST['aktualnosc']."'><br>
                            <label> Podaj tytuł </label>
                            <input type='text' name='tytul' value='".$row5['tytuł']."'><br>
                            <label> Podaj adres obrazka </label>
                            <input type='text' name='obraz'  value='".base64_encode($row5['obraz'])."'><br>
                            <label> Podaj krótki opis </label>
                            <input type='text' name='k_opis'  value='".$row5['krotki_opis']."'><br>
                            <label> Podaj długi opis </label>
                            <input type='text' name='d_opis'  value='".$row5['dlugi_opis']."'><br>
                            <input type='text' name='poczatek'  value='".$row5['poczatek_aktualnosci']."'><br>
                            <input type='text' name='koniec'  value='".$row5['koniec_aktualnosci']."'><br>
                          <input type='submit' name='submit1' value='prześlij'>
                            </form>";
                    }
        
                if(isset($_POST['submit1'])){
                        mysqli_query($conn,"SET FOREIGN_KEY_CHECKS=0;") or die (mysqli_error($conn));  
                        $tytul = $_POST['tytul'];
                        $obraz = $_POST['obraz'];
                        $k_opis = $_POST['k_opis'];
                        $d_opis = $_POST['d_opis'];
                        $poczatek = $_POST['poczatek'];
                        $koniec = $_POST['koniec'];
                        if($_POST['tytul'] == '') $tytul = 'NULL';
                        if($_POST['obraz'] == '') $obraz = 'NULL';
                        if($_POST['k_opis'] == '') $k_opis = 'NULL';
                        if($_POST['d_opis'] == '') $d_opis = 'NULL';
                        if($_POST['poczatek'] == '') $poczatek = 'NULL';
                        if($_POST['koniec'] == '') $koniec = 'NULL';
                    
                        $sql20 = "CALL edytuj_aktualnosc('".$tytul."','".$obraz."','".$k_opis."','".$d_opis."','".$poczatek."','".$koniec."',".$_POST['aktualnosci'].")";
                        mysqli_query($conn,$sql20) or die (mysqli_error($conn));  
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