<?php
ob_start();
include 'bliski-bus.php';
$kurs = intval($_POST['nr_kursu']);
ob_end_clean();

echo $kurs;

header('Content-Type: application/json');

$con = mysqli_connect('localhost', 'root', '', 'projekt');
$czas=date("H:i:s");

if (mysqli_connect_errno($con))
{
    echo "Failed to connect to DataBase: " . mysqli_connect_error();
}

else
{
    $data_points = array();
    $result = mysqli_query($con, "SELECT * FROM tabela_łącząca RIGHT JOIN przystanek ON tabela_łącząca.id_przystanku = przystanek.id_przystanku WHERE id_kursu = " . $kurs . " AND godzina_przyjazdu >'".$czas."' GROUP BY id_kursu, przystanek.id_przystanku ORDER BY godzina_przyjazdu");
    
    while($row = mysqli_fetch_array($result))
    {        
        $point = array("name" => $row['nazwa'] , "x" => $row['X'], "y" => $row['Y'], "godzina_przyjazdu" => $row['godzina_przyjazdu'] , "godzina_wyjazdu" => $row['godzina_wyjazdu']);
        
        array_push($data_points, $point);        
    }
    
    
    echo json_encode($data_points, JSON_NUMERIC_CHECK);
}
mysqli_close($con);

$xd = json_encode($data_points, JSON_NUMERIC_CHECK);
$fp = fopen('file.json', 'w');
fwrite($fp, print_r($xd, TRUE));
//fwrite($fp, print_r($point, TRUE));
fclose($fp);

header("Location: bliski-bus.php");
?>
