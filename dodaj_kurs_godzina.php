<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">
            <h2 class="center"> Dodaj linie o danej godzinie </h2>
            <p> Wykonuj polecenia po kolei</p>

            <form action="" method="post">
              <label for="kurs">Kurs:</label>
              <select name="kurs" id="kurs">
                <?php
                    $conn = new mysqli('localhost', 'root', '', 'projekt');
                    $sql = "SELECT * FROM kurs";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()){
                        echo "<option value='".$row['id_kursu']."'>".$row['numer_kursu']."</option>";
                    }
                  ?>
              </select>
                <input type="text" name="data" placeholder="hh:mm:ss">
              <input type="submit" name="submit1" value="prześlij">
            </form>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                    if(isset($_POST['submit1'])){
                        $sql = "CALL kurs".$_POST['kurs']."('".$_POST['data']."')";
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