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
            <h2 class="center"> Dodawanie kursu </h2>
            <p> Wykonuj polecenia po kolei</p>

            <form method="post">
                <label> Podaj id_aktualnosci </label>
                <input type="number" name="aktualnosci"><br>
                <label> Podaj numer kursu </label>
                <input type="number" name="nr_kursu"><br>
                <label> Podaj rodzaj (czy jest miejski czy pozamiejski) </label>
                <input type="text" name="rodzaj"><br>
                <label> Podaj czy jest aktualny </label>
                <select name="aktualny">
                    <option value="1"> tak </option>
                    <option value="0"> nie </option>
                </select>
                <br>
              <input type="submit" name="submit1" value="prześlij">
            </form>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                    if(isset($_POST['submit1'])){
                        mysqli_query($conn,"SET FOREIGN_KEY_CHECKS=0;") or die (mysqli_error($conn));
                        $aktualnosc = $_POST['aktualnosci'];
                        $nr_kursu = $_POST['nr_kursu'];
                        $rodzaj = $_POST['rodzaj'];
                        $aktualny = $_POST['aktualny'];
                        if($_POST['aktualnosci'] == '') $aktualnosc = 'NULL';
                        if($_POST['nr_kursu'] == '') $nr_kursu = 'NULL';
                        if($_POST['rodzaj'] == '') $rodzaj = NULL;
                        if($_POST['aktualny'] == '') $aktualny = 'NULL';
                        $sql = "CALL dodaj_kurs(".$aktualnosc.",".$nr_kursu.",'".$rodzaj."',".$aktualny.")";
                        mysqli_query($conn,$sql) or die (mysqli_error($conn));
                        echo "<p> Uzupełniono w bazie danych </p> ";
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