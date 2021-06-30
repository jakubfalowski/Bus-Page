<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <style>
            table,tr ,th, td{
                padding: 20px;
                border: 1px solid black;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">
            <h2 class="center"> ADMIN PANEL </h2>
            <table>
                <tr><th>Aktualności</th><th>Bilet</th><th>Kurs</th><th>Przystanek</th><th>Tabela Łącząca</th></tr>
                <tr><td><a href="dodaj_aktualnosc.php"> Dodaj </a></td><td><a href="bilet.php"> Dodaj </a></td><td><a href="dodaj_kurs.php"> Dodaj </a></td><td><a href="dodaj_przystanek.php"> Dodaj </a></td><td><a href="dodaj_kurs_godzina.php"> Dodaj </a></td></tr>
                <tr><td><a href="edytuj_aktualnosci.php"> Edytuj </a></td><td><a href="edytuj_bilet.php"> Edytuj </a></td><td><a href="edytuj_kurs.php"> Edytuj </a></td><td><a href="edytuj_przystanek.php"> Edytuj </a></td><td><a href="edytuj_kurs_godzina.php"> Edytuj </a></td></tr>
                <tr><td><a href="usun_aktualnosc.php"> Usuń </a></td><td><a href="usun_bilet.php"> Usuń </a></td><td><a href="usun_kurs.php"> Usuń </a></td><td><a href="usun_przystanek.php"> Usuń </a></td><td><a href="usun_kurs_godzina.php"> Usuń </a></td></tr>
            </table>
        </div>
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
    </body>
</html>