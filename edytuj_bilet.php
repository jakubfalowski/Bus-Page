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
            <h2 class="center"> Edytowanie biletu </h2>
            <p> Wykonuj polecenia po kolei</p>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
        
                $sql = "SELECT * FROM bilet";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                echo "<table><tr><th>ID biletu</th><th>ID przystanku początkowego</th><th>ID przystanku końcowego</th><th>ID kursu</th><th>Odległość</th><th>Cena</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_biletu']."</td><td>".$row['id_przystanku_poczatkowego']."</td><td>".$row['id_przystanku_koncowego']."</td><td>".$row['id_kursu']."</td><td>".$row['odleglosc']."</td><td>".$row['cena']."</td></tr>";
                }
                echo "</table><label> Wybierz id biletu który chcesz edytować</label><form method='post'><select name='bilet'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_biletu'].">".$row['id_biletu']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql5 = "SELECT * FROM bilet WHERE id_biletu =".$_POST['bilet'];
                    $result5 = $conn->query($sql5);
                    $row5 = $result5->fetch_assoc();
                        echo "
                            <form method='post'>
                            <label> Podaj id_biletu </label>
                            <input type='number' name='bilet' value='".$_POST['bilet']."'><br>
                            <label> Podaj ID przystanku początkowego </label>
                            <input type='text' name='id_przystanku_poczatkowego' value='".$row5['id_przystanku_poczatkowego']."'><br>
                            <label> Podaj ID przystanku końcowego </label>
                            <input type='number' name='id_przystanku_koncowego'  value='".$row5['id_przystanku_koncowego']."'><br>
                            <label> Podaj ID kursu  </label>
                            <input type='number' name='id_kursu' value='".$row5['id_kursu']."'><br>
                            <label> Podaj odległość </label>
                            <input type='number' step='0.01' name='odleglosc' value='".$row5['odleglosc']."'><br>
                            <label> Podaj cene </label>
                            <input type='number' step='0.01' name='cena' value='".$row5['cena']."'><br>
                            <br>
                            <input type='submit' name='submit1' value='prześlij'>
                            </form>";
                    }
                if(isset($_POST['submit1'])){
                        mysqli_query($conn,"SET FOREIGN_KEY_CHECKS=0;") or die (mysqli_error($conn));  
                    
                        $id_przystanku_poczatkowego = $_POST['id_przystanku_poczatkowego'];
                        $id_przystanku_koncowego = $_POST['id_przystanku_koncowego'];
                        $id_kursu = $_POST['id_kursu'];
                        $odleglosc = $_POST['odleglosc'];
                        $cena = $_POST['cena'];
                        if($_POST['id_przystanku_poczatkowego'] == '') $id_przystanku_poczatkowego = 'NULL';
                        if($_POST['id_przystanku_koncowego'] == '') $id_przystanku_koncowego = 'NULL';
                        if($_POST['id_kursu'] == '') $id_kursu = 'NULL';
                        if($_POST['cena'] == '') $cena = 0;
                        if($_POST['odleglosc'] == '') $odleglosc = 0;
                    
                        $sql20 = "CALL edytuj_bilet(".$id_przystanku_poczatkowego.",".$id_przystanku_koncowego.",".$id_kursu.",".$odleglosc.",".$cena.",".$_POST['bilet'].")";
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