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
            <h2 class="center"> Usuwanie aktualności </h2>
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
                echo "</table><label> Wybierz id aktualnosci który chcesz usunąć</label><form method='post'><select name='aktualnosc'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_aktualnosci'].">".$row['id_aktualnosci']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql = "CALL usun_aktualnosc('".$_POST['aktualnosc']."')";
                    $result = $conn->query($sql);
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