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
            <h2 class="col-12-md center"> Bliski bus </h2>
            <?php

            $data=date("Y-m-d");
            $czas=date("H:i");

            echo "Stronę wyświetlono dnia $data o godzinie $czas";

            ?>
            
            </div>

        
        
        <!-- srodek -->
        <div class="visits container-fluid"> <?php include "./licznik_odwiedzin.php" ?> </div>
        <?php include "./footer.html" ?>
        <!-- stopka -->
        <script>
            let test1 = document.getElementById("test1");
            let test2 = document.getElementById("test2");
            let test3 = document.getElementById("test3");
            
            let bn = document.getElementById("bnr");
            
            function bg1(){
                test1.classList.add('fas');
                test1.classList.remove('far');
                test2.classList.remove('fas');
                test2.classList.add('far');
                test3.classList.remove('fas');
                test3.classList.add('far');
                bn.classList.add('bg1');
                bn.classList.remove('bg2');
                bn.classList.remove('bg3');
            }
            
            function bg2(){
                test2.classList.add('fas');
                test2.classList.remove('far');
                test1.classList.remove('fas');
                test1.classList.add('far');
                test3.classList.remove('fas');
                test3.classList.add('far');
                bn.classList.add('bg2');
                bn.classList.remove('bg1');
                bn.classList.remove('bg3');
            }
            
            function bg3(){
                test3.classList.add('fas');
                test3.classList.remove('far');
                test1.classList.remove('fas');
                test1.classList.add('far');
                test2.classList.remove('fas');
                test2.classList.add('far');
                bn.classList.add('bg3');
                bn.classList.remove('bg1');
                bn.classList.remove('bg2');
            }
            
            test1.addEventListener('click', event => {
                bg1();
            });
            
            test2.addEventListener('click', event => {
                bg2();
            });
            
            test3.addEventListener('click', event => {
                bg3();
            });
            
            setTimeout(bg2inf,5000);
            setTimeout(bg3inf,10000);
            setTimeout(bg1inf,15000);
            
            function bg1inf(){
                bg1();
               setInterval(bg1,15000); 
            }
            
            function bg2inf(){
                bg2();
               setInterval(bg2,15000); 
            }
            
            function bg3inf(){
                bg3();
                setInterval(bg3,15000);
            }
            
            
        </script>
    </body>
</html>