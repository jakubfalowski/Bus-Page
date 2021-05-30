<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> Informator o rozkładzie autobusów </title>
        <link rel="stylesheet" href="boostrap/bootstrap.css">
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/e695157fcf.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {

            $.getJSON("file.json", function (result) {
            
                var chart = new CanvasJS.Chart("chartContainer", {
                    title:{
                       text: "Wybrana linia autobusowa"
                    },
                    data: [
                        {
                            type: "line",
                            markerType: "circle",
                            toolTipContent: "<strong>{name}</strong> <br> Godzina przyjazdu: {godzina_przyjazdu}<br> Godzina wyjazdu: {godzina_wyjazdu} ",
                            dataPoints: result,
                            
                        }
                    ]
                    
                });

                chart.render();
            });
        });
    </script>
    </head>
    <body>
        <?php include "./mainbar.html" ?>
        <div class = "news container">
            <form method="post" action="test3.php">
                <select name="nr_kursu">
                    <optgroup label="miejskie">
                        <option value="1"> 1 </option>
                        <option value="2"> 2 </option>
                        <option value="3"> 3 </option>
                        <option value="4"> 4 </option>
                        <option value="5"> 5 </option>
                    </optgroup>
                    <optgroup label="pozamiejskie">
                        <option value="8"> 8 </option>
                        <option value="9"> 9 </option>
                        <option value="10"> 10 </option>
                        <option value="11"> 11 </option>
                        <option value="12"> 12 </option>
                    </optgroup>
                </select>
                <input type="submit" name="submit">
            </form> 
        <div id="chartContainer" style="height: 360px; width: 600px"></div>
</div>
        <!-- górny pasek zakładek --> 
        
        <div class = "news container">

            <?php   
            $data=date("Y-m-d");
            $czas=date("H:i");

            echo "Stronę wyświetlono dnia ".$data." o godzinie ".$czas;

            ?>
        
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        </div>    
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script src="ruchbanera.js"></script>
            
    </body>
</html>