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
        </style>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">
            <h2 class="center"> Usuwanie biletu </h2>
            <p> Wykonuj polecenia po kolei</p>
            
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM bilet";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                $result3 = $conn->query($sql);
                $result4 = $conn->query($sql);
                echo "<table><tr><th>ID biletu</th><th>ID przystanku początkowego</th><th>ID przystanku końcowego</th><th>ID kursu</th><th>Odległość</th><th>Cena</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_biletu']."</td><td>".$row['id_przystanku_poczatkowego']."</td><td>".$row['id_przystanku_koncowego']."</td><td>".$row['id_kursu']."</td><td>".$row['odleglosc']."</td><td>".$row['odleglosc']."</td></tr>";
                }
                echo "</table><label> Wybierz id biletu który chcesz usunąć</label><form method='post'><select name='bilet'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_biletu'].">".$row['id_biletu']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql = "CALL usun_bilet('".$_POST['bilet']."')";
                    $result = $conn->query($sql);
                }        
                          
                
                echo "<label> Wybierz zakres biletów które chcesz usunąć</label><form method='post'><select name='bilet_min'>";
                while($row = $result3->fetch_assoc()){
                    echo "<option value=".$row['id_biletu'].">".$row['id_biletu']."</option>";
                }
                echo "</select><select name='bilet_max'>";
                while($row = $result4->fetch_assoc()){
                    echo "<option value=".$row['id_biletu'].">".$row['id_biletu']."</option>";
                }
                echo "</select><input type='submit' name='submit2'></form>";
        
                if(isset($_POST['submit2'])){
                    $sql = "CALL usun_zakres_bilet('".$_POST['bilet_min']."','".$_POST['bilet_max']."')";
                    mysqli_query($conn,$sql) or die (mysqli_error($conn));
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