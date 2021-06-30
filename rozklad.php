<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <style>
            .box{
                display: inline-block;
                height: 100px;
                line-height: 100px;
                width: 100px;
                vertical-align: middle;
                background-color:lightcyan;
                color: black;
                text-align: center;
                font-size: 30px;
                border: black solid 1px;
            }
            .box:hover{
                background-color: white;
            }

            table{
                background-color: white;
                border: black solid 1px;
                display: inline-block;
            }
            td, th{
                width: 180px;
                text-align: center;
            }
            tr:nth-child(odd){
                background-color: lightcyan;
            }
            tr:hover{
                background-color: black;
                color: white;
            }
            .hidden{
                display:none;
            }
            
            
        </style>
        <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        
        
        
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">
            <h2 class="col-12-md center"> Rozkład </h2>
            <?php 
                $data=date("Y-m-d");
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql22 = "CALL wylacz_aktualnosc('".$data."');";
                mysqli_query($conn,$sql22) or die (mysqli_error($conn));

                $sql23 = "CALL wlacz_aktualnosc('".$data."');";
                mysqli_query($conn,$sql23) or die (mysqli_error($conn));
                
                $sql = "SELECT * FROM kurs WHERE czy_aktualny = 1";
                $result = $conn->query($sql);
                while($row = $result->fetch_assoc()){
                    echo "<span class='box'>".$row['numer_kursu']."</span>";   
                    $sql1 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = ".$row['id_kursu']." ORDER BY `tabela_łącząca`.`id_połączenia` ASC; ";
                    $result1 = $conn->query($sql1);
                    echo "<div class='tabela'><h3> Kurs nr. ".$row['numer_kursu']."</h3><table>";
                    while($row1 = $result1->fetch_assoc()){
                        if($row1['godzina_wyjazdu'] == '' ) echo "</table><table>";
                        else echo "<tr><td> ".$row1['nazwa']."</td><td> ".$row1['godzina_przyjazdu']."</td><td> ".$row1['godzina_wyjazdu']."</td></tr>";
                    }    
                    echo "</table></div>";
                }    
            ?>
        </div>

        
        
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
        <script> 
            for(let i = 1; i <= 12; i++){
                $('.tabela:nth-of-type('+i+')').hide();
                $('.box:nth-of-type('+i+')').click(function(){
                    $('.tabela:nth-of-type('+i+')').toggle();
                 });
            }

                 
        </script>
    </body>
</html>