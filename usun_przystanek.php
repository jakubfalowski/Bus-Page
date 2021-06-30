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
            <h2 class="center"> Usuwanie przystanku </h2>
            <p> Wykonuj polecenia po kolei</p>
            
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM przystanek";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                echo "<table><tr><th>ID przystanku</th><th>Nazwa</th><th>X</th><th>Y</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_przystanku']."</td><td>".$row['nazwa']."</td><td>".$row['X']."</td><td>".$row['Y']."</td></tr>";
                }
                echo "</table><label> Wybierz id przystanku który chcesz usunąć</label><form method='post'><select name='przystanek'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_przystanku'].">".$row['id_przystanku']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql = "CALL usun_przystanek(".$_POST['przystanek'].")";
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