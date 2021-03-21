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
            <h2 class="col-12-md center"> Aktualne przystanki </h2>
            <img src="jpg/uklad_wspolrzednych.jpg" class="col-md-12 center" alt="plan">
            <p class="col-md-12 center"> Do przystanków pozamiejskich zachodnich dojeżdża tylko autobus Nowicz zachodni, identycznie z wschodnim, południowym i północnym. </p>
            <p id="xD"> e </p>
            
            <p>Wybierz przystanek początkowy i końcowy by obliczyć odległość pomiędzy powyższymi miejscami.</p>

            <form action="/action_page.php">
              <label for="przystanek_poczatkowy">Przystanek początkowy:</label>
              <select name="przystanek_poczatkowy" id="przystanek_poczatkowy">
                <option value="nowicz_z">Nowicz zachodni</option>
                <option value="szkolna">Szkolna</option>
                <option value="spozywcza">Spożywcza</option>
                <option value="rynek">Rynek</option>
                <option value="nowicz_pln">Nowicz północny</option>
                <option value="stadionowa">Stadionowa</option>
                <option value="nowicz_w">Nowicz wschodni</option>
                <option value="cmentarna">Cmentarna</option>
                <option value="nowicz_pld">Nowicz południowy</option>
                <option value="arakowice">Arakowice</option>
                <option value="zawada">Zawada</option>
                <option value="marakow">Maraków</option>
                <option value="udanow">Udanów</option>
                <option value="mala_wies">Mała Wieś</option>
                <option value="duza_wies">Duża Wieś</option>
                <option value="recka">Recka</option>
                <option value="kebsice">Kebsice</option>
                <option value="maflok">Maflok</option>
              </select>
            <label for="przystanek_koncowy">Przystanek końcowy:</label>
              <select name="przystanek_koncowy" id="przystanek_koncowy">
                <option value="nowicz_z">Nowicz zachodni</option>
                <option value="szkolna">Szkolna</option>
                <option value="spozywcza">Spożywcza</option>
                <option value="rynek">Rynek</option>
                <option value="nowicz_pln">Nowicz północny</option>
                <option value="stadionowa">Stadionowa</option>
                <option value="nowicz_w">Nowicz wschodni</option>
                <option value="cmentarna">Cmentarna</option>
                <option value="nowicz_pld">Nowicz południowy</option>
                <option value="arakowice">Arakowice</option>
                <option value="zawada">Zawada</option>
                <option value="marakow">Maraków</option>
                <option value="udanow">Udanów</option>
                <option value="mala_wies">Mała Wieś</option>
                <option value="duza_wies">Duża Wieś</option>
                <option value="recka">Recka</option>
                <option value="kebsice">Kebsice</option>
                <option value="maflok">Maflok</option>
              </select>
              <input type="submit" value="Submit">
            </form>
        
        <script>
            const nowicz_zachodni = [4,7];
            const szkolna = [6,6];
            const spozywcza = [7,8];
            const rynek = [8,7];
            const nowicz_polnocny = [9,9];
            const stadionowa = [12,8];
            const nowicz_wschodni = [14,6];
            const cmentarna = [10,6];
            const nowicz_poludniowy = [8,4];
            
            const arakowice = [1,3];
            const zawada = [1,8];
            const marakow = [5,11];
            const udanow = [9,12];
            const mala_wies = [14,11];
            const duza_wies = [20,9];
            const recko = [18,3];
            const kebsice = [14,1];
            const maflok = [6,0];
            
            const nowicz_poludniowy_to_maflok = Math.sqrt(Math.pow((maflok[0] - nowicz_poludniowy[0]),2) + Math.pow((maflok[1] - nowicz_poludniowy[1]),2));
            
            document.getElementById("xD").innerHTML = " Odległość wynosi " + nowicz_poludniowy_to_maflok;
            
        </script>
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