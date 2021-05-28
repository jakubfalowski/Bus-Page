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
            <h2 class="col-12-md center"> Bliski bus </h2>
            <?php 
                $conn = new mysqli('localhost', 'root', '', 'projekt');
                $sql = "SELECT * FROM kurs";
                $result = $conn->query($sql);
                while($row = $result->fetch_assoc()){
                    echo "<span class='box'>".$row['numer_kursu']."</span>";
                }    

                $sql1 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 1 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result1 = $conn->query($sql1);
                echo "<div class='tabela'><h3> Kurs nr. 1</h3><table>";
                while($row1 = $result1->fetch_assoc()){
                    if($row1['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row1['nazwa']."</td><td> ".$row1['godzina_przyjazdu']."</td><td> ".$row1['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";
        
                $sql2 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 2 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result2 = $conn->query($sql2);
                echo "<div class='tabela'><h3> Kurs nr. 2</h3><table>";
                while($row2 = $result2->fetch_assoc()){
                    if($row2['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row2['nazwa']."</td><td> ".$row2['godzina_przyjazdu']."</td><td> ".$row2['godzina_wyjazdu']."</td></tr>";
                    
                }    
                echo "</table></div>";
                    
                $sql3 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 3 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result3 = $conn->query($sql3);
                echo "<div class='tabela'><h3> Kurs nr. 3</h3><table>";
                while($row3 = $result3->fetch_assoc()){
                    if($row3['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row3['nazwa']."</td><td> ".$row3['godzina_przyjazdu']."</td><td> ".$row3['godzina_wyjazdu']."</td></tr>";
                    
                }    
                echo "</table></div>";
                    
                $sql4 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 4 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result4 = $conn->query($sql4);
                echo "<div class='tabela'><h3> Kurs nr. 4</h3><table>";
                while($row4 = $result4->fetch_assoc()){
                    if($row4['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row4['nazwa']."</td><td> ".$row4['godzina_przyjazdu']."</td><td> ".$row4['godzina_wyjazdu']."</td></tr>";
                    
                }    
                echo "</table></div>";
                    
                $sql5 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 5 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result5 = $conn->query($sql5);
                echo "<div class='tabela'><h3> Kurs nr. 5</h3><table>";
                while($row5 = $result5->fetch_assoc()){
                    if($row5['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row5['nazwa']."</td><td> ".$row5['godzina_przyjazdu']."</td><td> ".$row5['godzina_wyjazdu']."</td></tr>";
                    
                }    
                echo "</table></div>";
        
                $sql6 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 6 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result6 = $conn->query($sql6);
                echo "<div class='tabela'><h3> Kurs nr. 6</h3><table>";
                while($row6 = $result6->fetch_assoc()){
                    if($row6['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row6['nazwa']."</td><td> ".$row6['godzina_przyjazdu']."</td><td> ".$row6['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";
        
                $sql50 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 8 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result50 = $conn->query($sql50);
                echo "<div class='tabela'><h3> Kurs nr. 50</h3><table>";
                while($row50 = $result50->fetch_assoc()){
                    if($row50['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row50['nazwa']."</td><td> ".$row50['godzina_przyjazdu']."</td><td> ".$row50['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";
        
                $sql51 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 9 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result51 = $conn->query($sql51);
                echo "<div class='tabela'><h3> Kurs nr. 51</h3><table>";
                while($row51 = $result51->fetch_assoc()){
                    if($row51['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row51['nazwa']."</td><td> ".$row51['godzina_przyjazdu']."</td><td> ".$row51['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";
        
                $sql52 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 10 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result52 = $conn->query($sql52);
                echo "<div class='tabela'><h3> Kurs nr. 52</h3><table>";
                while($row52 = $result52->fetch_assoc()){
                    if($row52['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row52['nazwa']."</td><td> ".$row52['godzina_przyjazdu']."</td><td> ".$row52['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";
        
                $sql53 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 11 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result53 = $conn->query($sql53);
                echo "<div class='tabela'><h3> Kurs nr. 53</h3><table>";
                while($row53 = $result53->fetch_assoc()){
                    if($row53['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row53['nazwa']."</td><td> ".$row53['godzina_przyjazdu']."</td><td> ".$row53['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";
        
                $sql54 = "SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 12 ORDER BY `tabela_łącząca`.`id_połączenia` ASC ";
                $result54 = $conn->query($sql54);
                echo "<div class='tabela'><h3> Kurs nr. 54</h3><table>";
                while($row54 = $result54->fetch_assoc()){
                    if($row54['godzina_wyjazdu'] == '' ) echo "</table><table>";
                    else echo "<tr><td> ".$row54['nazwa']."</td><td> ".$row54['godzina_przyjazdu']."</td><td> ".$row54['godzina_wyjazdu']."</td></tr>";
                }    
                echo "</table></div>";

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