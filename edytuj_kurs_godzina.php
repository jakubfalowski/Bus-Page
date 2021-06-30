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
            <h2 class="center"> Edytowanie tabeli łączącej </h2>
            <p> Wykonuj polecenia po kolei</p>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM tabela_łącząca";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                echo "<table><tr><th>ID połączenia</th><th>ID kursu</th><th>ID przystanku</th><th>Godzina przyjazdu</th><th>Godzina wyjazdu</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_połączenia']."</td><td>".$row['id_kursu']."</td><td>".$row['id_przystanku']."</td><td>".$row['godzina_przyjazdu']."</td><td>".$row['godzina_wyjazdu']."</td></tr>";
                }
                echo "</table><label> Wybierz id połączenia który chcesz edytować</label><form method='post'><select name='połączenie'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_połączenia'].">".$row['id_połączenia']."</option></form>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql5 = "SELECT * FROM tabela_łącząca WHERE id_połączenia =".$_POST['połączenie'];
                    $result5 = $conn->query($sql5);
                    $row5 = $result5->fetch_assoc();
                        echo "
                            <form method='post'>
                            <label> Podaj id_połączenia </label>
                            <input type='number' name='połączenie' value='".$_POST['połączenie']."'><br>
                            <label> Podaj id_kursu </label>
                            <input type='number' name='kurs' value='".$row5['id_kursu']."'><br>
                            <label> Podaj id przystanku </label>
                            <input type='number' name='przystanek'  value='".$row5['id_przystanku']."'><br>
                            <label> Podaj godzine przyjazdu  </label>
                            <input type='text' name='przyjazd'  value='".$row5['godzina_przyjazdu']."'><br>
                            <label> Podaj godzine wyjazdu  </label>
                            <input type='text' name='wyjazd'  value='".$row5['godzina_wyjazdu']."'>
                            <br>
                          <input type='submit' name='submit1' value='prześlij'>
                            </form>";
                    }
        
                if(isset($_POST['submit1'])){
                        mysqli_query($conn,"SET FOREIGN_KEY_CHECKS=0;") or die (mysqli_error($conn));  
                        $kurs = $_POST['kurs'];
                        $przystanek = $_POST['przystanek'];
                        $przyjazd = $_POST['przyjazd'];
                        $wyjazd = $_POST['wyjazd'];
                        if($_POST['kurs'] == '') $kurs = 'NULL';
                        if($_POST['przystanek'] == '') $przystanek = 'NULL';
                        if($_POST['przyjazd'] == '') $przyjazd = 'NULL';
                        if($_POST['wyjazd'] == '') $wyjazd = 'NULL';
                    
                        $sql20 = "CALL edytuj_kurs_godzina(".$kurs.",".$przystanek.",'".$przyjazd."','".$wyjazd."',".$_POST['połączenie'].")";
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