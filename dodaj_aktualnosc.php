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
            <h2 class="center"> Dodawanie aktualności </h2>
            <p> Wykonuj polecenia po kolei</p>

            <form method="post">
                <label> Podaj tytuł </label>
                <input type="text" name="tytul"><br>
                <label> Podaj źródło do obrazka </label>
                <input type="text" name="obrazek"><br>
                <label> Podaj krótki opis </label>
                <input type="text" name="k_opis"><br>
                <label> Podaj długi opis </label>
                <input type="text" name="d_opis"><br>
                <label> Podaj datę początkową </label>
                <input type="text" name="data_poczatkowa" placeholder="yyyy-mm-dd" pattern="[0-9]{4}-[0-1][0-9]-[0-3][0-9]"><br>
                <label> Podaj datę końcową </label>
                <input type="text" name="data_koncowa" placeholder="yyyy-mm-dd" pattern="[0-9]{4}-[0-1][0-9]-[0-3][0-9]"><br>
              <input type="submit" name="submit1" value="prześlij">
            </form>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                    if(isset($_POST['submit1'])){
                        $sql = "CALL dodawanie_aktualnosci('".$_POST['tytul']."','".$_POST['obrazek']."','".$_POST['k_opis']."','".$_POST['d_opis']."','".$_POST['data_poczatkowa']."','".$_POST['data_koncowa']."')";
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