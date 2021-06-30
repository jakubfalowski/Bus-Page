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
            <h2 class="center"> Edytowanie przystanku </h2>
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
                echo "</table><label> Wybierz id przystanku który chcesz edytować</label><form method='post'><select name='przystanek'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_przystanku'].">".$row['id_przystanku']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql5 = "SELECT * FROM przystanek WHERE id_przystanku =".$_POST['przystanek'];
                    $result5 = $conn->query($sql5);
                    $row5 = $result5->fetch_assoc();
                        echo "
                            <form method='post'>
                            <label> Edytujesz właśnie przystanek o ID </label>
                            <input type='number' name='przystanek' value='".$_POST['przystanek']."'><br>
                            <label> Podaj nazwe </label>
                            <input type='text' name='nazwa' value='".$row5['nazwa']."'><br>
                            <label> Podaj X </label>
                            <input type='number' name='X'  value='".$row5['X']."'><br>
                            <label> Podaj Y </label>
                            <input type='number' name='Y'  value='".$row5['Y']."'><br>
                          <input type='submit' name='submit1' value='prześlij'>
                            </form>";
                    }
        
                if(isset($_POST['submit1'])){
                        mysqli_query($conn,"SET FOREIGN_KEY_CHECKS=0;") or die (mysqli_error($conn));  
                        $nazwa = $_POST['nazwa'];
                        $X = $_POST['X'];
                        $Y = $_POST['Y'];
                    
                        if($_POST['nazwa'] == '') $nazwa = 'NULL';
                        if($_POST['X'] == '') $X = 0;
                        if($_POST['Y'] == '') $Y = 0;
                    
                        $sql20 = "CALL edytuj_przystanek('".$nazwa."',".$X.",".$Y.",".$_POST['przystanek'].")";
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