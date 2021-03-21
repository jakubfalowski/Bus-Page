<h4>
<?php 
    $handle = fopen("licznik_odwiedzin.txt", "r");
    if($handle){
        $licznik = ( int ) fread ($handle,20);
        fclose ($handle) ;
        $licznik++ ;
        echo " Liczba wyświetleń : ". $licznik ;
        $handle = fopen("licznik_odwiedzin.txt", "w" );
        fwrite($handle,$licznik) ;
        fclose ($handle) ; } ?>
    </h4>