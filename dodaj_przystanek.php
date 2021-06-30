
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
            <h2 class="center"> Dodawanie przystanku </h2>
            <p> Wykonuj polecenia po kolei</p>

            <form method="post">
                <label> Podaj nazwe </label>
                <input type="text" name="nazwa"><br>
                <label> Podaj x </label>
                <input type="number" name="x"><br>
                <label> Podaj y </label>
                <input type="number" name="y"><br>
                <br>
              <input type="submit" name="submit1" value="prześlij">
            </form>
            <?php
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                    if(isset($_POST['submit1'])){
                        $sql = " CALL dodaj_przystanek('".$_POST['nazwa']."',".$_POST['x'].",".$_POST['y'].")";
                        $result = $conn->query($sql);
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