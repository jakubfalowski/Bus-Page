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
            <h2 class="center"> Edytowanie kursu </h2>
            <p> Wykonuj polecenia po kolei</p>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM kurs";
                $result = $conn->query($sql);
                $result2 = $conn->query($sql);
                echo "<table><tr><th>ID kursu</th><th>ID aktualności</th><th>Nr. kursu</th><th>Rodzaj</th><th>Aktualny?</th></tr>";
                while($row = $result->fetch_assoc()){
                    echo "<tr><td>".$row['id_kursu']."</td><td>".$row['id_aktualnosci']."</td><td>".$row['numer_kursu']."</td><td>".$row['rodzaj(miejski)']."</td><td>".$row['czy_aktualny']."</td></tr>";
                }
                echo "</table><label> Wybierz id kursu który chcesz edytować</label><form method='post'><select name='kurs'>";
                while($row = $result2->fetch_assoc()){
                    echo "<option value=".$row['id_kursu'].">".$row['id_kursu']."</option>";
                }
                echo "</select><input type='submit' name='submit'></form>";
                if(isset($_POST['submit'])){
                    $sql5 = "SELECT * FROM kurs WHERE id_kursu =".$_POST['kurs'];
                    $result5 = $conn->query($sql5);
                    $row5 = $result5->fetch_assoc();
                        echo "
                            <form method='post'>
                            <label> Podaj id_kursu </label>
                            <input type='number' name='kurs' value='".$_POST['kurs']."'><br>
                            <label> Podaj id_aktualnosci </label>
                            <input type='text' name='aktualnosci' value='".$row5['id_aktualnosci']."'><br>
                            <label> Podaj numer kursu </label>
                            <input type='number' name='nr_kursu'  value='".$row5['numer_kursu']."'><br>
                            <label> Podaj rodzaj (czy jest miejski czy pozamiejski) </label>
                            <input type='text' name='rodzaj'  value='".$row5['rodzaj(miejski)']."'><br>
                            <label> Podaj czy jest aktualny </label>
                            <select name='aktualny'>
                                <option value='1'> tak </option>
                                <option value='0'> nie </option>
                            </select>
                            <br>
                          <input type='submit' name='submit1' value='prześlij'>
                            </form>";
                    }
        
                if(isset($_POST['submit1'])){
                        mysqli_query($conn,"SET FOREIGN_KEY_CHECKS=0") or die (mysqli_error($conn));  
                        $aktualnosc = $_POST['aktualnosci'];
                        $nr_kursu = $_POST['nr_kursu'];
                        $rodzaj = $_POST['rodzaj'];
                        $aktualny = $_POST['aktualny'];
                        if($_POST['aktualnosci'] == '') $aktualnosc = 'NULL';
                        if($_POST['nr_kursu'] == '') $nr_kursu = 'NULL';
                        if($_POST['rodzaj'] == '') $rodzaj = 'NULL';
                        if($_POST['aktualny'] == '') $aktualny = 'NULL';
                    
                        $sql20 = "CALL edytuj_kurs(".$aktualnosc.",".$nr_kursu.",'".$rodzaj."',".$aktualny.",".$_POST['kurs'].")";
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