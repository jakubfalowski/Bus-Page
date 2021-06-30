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
            <h2 class="center"> Usuwanie linii o danej godzinie </h2>
            <p> Wykonuj polecenia po kolei</p>
            
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM tabela_łącząca";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                $result3 = $conn->query($sql);
                $result4 = $conn->query($sql);
                echo "<table><tr><th>ID połączenia</th><th>ID kursu</th><th>ID przystanku</th><th>Godzina przyjazdu</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_połączenia']."</td><td>".$row['id_kursu']."</td><td>".$row['id_przystanku']."</td><td>".$row['godzina_przyjazdu']."</td></tr>";
                }
                echo "</table><label> Wybierz id połączenia który chcesz usunąć</label><form method='post'><select name='połączenie'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_połączenia'].">".$row['id_połączenia']."</option></form>";
                }
                echo "</select><input type='submit' name='submit'></form><form method='post'><label> Wybierz zakres połączeń które chcesz usunąć</label><select name='połączenie1'>";
                while($row = $result3->fetch_assoc()){
                    echo "<option value=".$row['id_połączenia'].">".$row['id_połączenia']."</option>";
                }
                echo "</select><select name='połączenie2'>";
                while($row = $result4->fetch_assoc()){
                    echo "<option value=".$row['id_połączenia'].">".$row['id_połączenia']."</option>";
                }
                echo "</select><input type='submit' name='submit2'></form>";
        
                if(isset($_POST['submit'])){
                    $sql = "CALL usun_tabela_łącząca(".$_POST['połączenie'].")";
                    $result = $conn->query($sql);
                }        
                if(isset($_POST['submit2'])){
                    $sql = "CALL usun_zakres_łącząca(".$_POST['połączenie1'].",".$_POST['połączenie2'].")";
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