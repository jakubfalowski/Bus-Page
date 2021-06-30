INSERT INTO `aktualnosci`( `tytuł`, `obraz`, `krotki_opis`, `dlugi_opis`, `poczatek_aktualnosci`, `koniec_aktualnosci`) VALUES ('Kursy chwilowo zawieszone',LOAD_FILE('C:/xampp/htdocs/jpg/srodek.jpeg'),'Przepraszamy za zaistniałą sytuacje','Postaramy się to jak najszybciej naprawić','2021-05-05','2021-05-09');

INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Nowicz Zachodni',4,7);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Szkolna',6,6);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Spożywcza',7,8);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Rynek',8,7);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Nowicz Północny',9,9);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Stadionowa',12,8);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Nowicz Wschodni',14,6);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Cmentarna',10,6);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Nowicz Południowy',8,4);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Arakowice',1,3);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Zawada',1,8);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Maraków',5,11);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Udanów',9,12);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Mała Wieś',14,11);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Duża Wieś',20,9);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Recko',18,3);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Kebsice',14,1);
INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES ('Maflok',6,0);

INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (1,'miejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (2,'miejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (3,'miejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (4,'miejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (5,'miejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (6,'miejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (7,'miejski',true);

INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (50,'pozamiejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (51,'pozamiejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (52,'pozamiejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (53,'pozamiejski',true);
INSERT INTO `kurs`(`numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (54,'pozamiejski',true);
  


DELIMITER //
CREATE OR REPLACE PROCEDURE kurs1(IN_TIME TIME)
BEGIN
	IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,2,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 1 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,3,DATE_ADD(IN_TIME, INTERVAL 3 MINUTE),DATE_ADD(IN_TIME, INTERVAL 4 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,10,DATE_ADD(IN_TIME, INTERVAL 7 MINUTE),DATE_ADD(IN_TIME, INTERVAL 8 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,9,DATE_ADD(IN_TIME, INTERVAL 11 MINUTE),DATE_ADD(IN_TIME, INTERVAL 12 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,8,DATE_ADD(IN_TIME, INTERVAL 16 MINUTE),DATE_ADD(IN_TIME, INTERVAL 17 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,7,DATE_ADD(IN_TIME, INTERVAL 20 MINUTE),DATE_ADD(IN_TIME, INTERVAL 21 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,6,DATE_ADD(IN_TIME, INTERVAL 24 MINUTE),DATE_ADD(IN_TIME, INTERVAL 25 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,4,DATE_ADD(IN_TIME, INTERVAL 27 MINUTE),DATE_ADD(IN_TIME, INTERVAL 28 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (1,5,DATE_ADD(IN_TIME, INTERVAL 29 MINUTE));
END //
DELIMITER ;

CALL kurs1('07:55:00');
CALL kurs1('09:55:00');
CALL kurs1('12:30:00');
CALL kurs1('14:55:00');
CALL kurs1('16:25:00');
CALL kurs1('17:55:00');
CALL kurs1('19:55:00');
CALL kurs1('21:40:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs2(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,8,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 3 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,9,DATE_ADD(IN_TIME, INTERVAL 7 MINUTE),DATE_ADD(IN_TIME, INTERVAL 8 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,5,DATE_ADD(IN_TIME, INTERVAL 11 MINUTE),DATE_ADD(IN_TIME, INTERVAL 13 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (2,3,DATE_ADD(IN_TIME, INTERVAL 16 MINUTE));
END //
DELIMITER ;

CALL kurs2('07:27:00');
CALL kurs2('08:27:00');
CALL kurs2('09:57:00');
CALL kurs2('12:27:00');
CALL kurs2('15:27:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs3(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 5 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,DATE_ADD(IN_TIME, INTERVAL 8 MINUTE),DATE_ADD(IN_TIME, INTERVAL 9 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,DATE_ADD(IN_TIME, INTERVAL 14 MINUTE),DATE_ADD(IN_TIME, INTERVAL 15 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,DATE_ADD(IN_TIME, INTERVAL 20 MINUTE),DATE_ADD(IN_TIME, INTERVAL 21 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,DATE_ADD(IN_TIME, INTERVAL 24 MINUTE));
END //
DELIMITER ;

CALL kurs3('07:11:00');
CALL kurs3('07:40:00');
CALL kurs3('08:40:00');
CALL kurs3('09:40:00');
CALL kurs3('10:40:00');
CALL kurs3('11:40:00');
CALL kurs3('12:40:00');
CALL kurs3('13:40:00');
CALL kurs3('14:40:00');
CALL kurs3('15:40:00');
CALL kurs3('18:40:00');
CALL kurs3('22:40:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs4(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 5 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,DATE_ADD(IN_TIME, INTERVAL 11 MINUTE),DATE_ADD(IN_TIME, INTERVAL 12 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,DATE_ADD(IN_TIME, INTERVAL 18 MINUTE),DATE_ADD(IN_TIME, INTERVAL 19 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,DATE_ADD(IN_TIME, INTERVAL 24 MINUTE),DATE_ADD(IN_TIME, INTERVAL 25 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,DATE_ADD(IN_TIME, INTERVAL 30 MINUTE),DATE_ADD(IN_TIME, INTERVAL 31 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,DATE_ADD(IN_TIME, INTERVAL 37 MINUTE));
END //
DELIMITER ;

CALL kurs4('07:43:00');
CALL kurs4('09:43:00');
CALL kurs4('11:43:00');
CALL kurs4('13:13:00');
CALL kurs4('14:43:00');
CALL kurs4('17:43:00');
CALL kurs4('20:43:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs5(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 3 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,DATE_ADD(IN_TIME, INTERVAL 5 MINUTE),DATE_ADD(IN_TIME, INTERVAL 6 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,DATE_ADD(IN_TIME, INTERVAL 11 MINUTE),DATE_ADD(IN_TIME, INTERVAL 12 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,DATE_ADD(IN_TIME, INTERVAL 15 MINUTE),DATE_ADD(IN_TIME, INTERVAL 16 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,DATE_ADD(IN_TIME, INTERVAL 19 MINUTE));
END //
DELIMITER ;

CALL kurs5('08:02:00');
CALL kurs5('09:02:00');
CALL kurs5('11:02:00');
CALL kurs5('13:02:00');
CALL kurs5('16:02:00');
CALL kurs5('18:02:00');
CALL kurs5('19:02:00');
CALL kurs5('20:02:00');
CALL kurs5('22:02:00');
CALL kurs5('00:02:00');
CALL kurs5('03:02:00');
CALL kurs5('05:02:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs8(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,11,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 5 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,12,DATE_ADD(IN_TIME, INTERVAL 10 MINUTE),DATE_ADD(IN_TIME, INTERVAL 11 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,13,DATE_ADD(IN_TIME, INTERVAL 16 MINUTE),DATE_ADD(IN_TIME, INTERVAL 17 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,14,DATE_ADD(IN_TIME, INTERVAL 22 MINUTE),DATE_ADD(IN_TIME, INTERVAL 23 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,15,DATE_ADD(IN_TIME, INTERVAL 28 MINUTE),DATE_ADD(IN_TIME, INTERVAL 29 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,16,DATE_ADD(IN_TIME, INTERVAL 35 MINUTE),DATE_ADD(IN_TIME, INTERVAL 36 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,17,DATE_ADD(IN_TIME, INTERVAL 42 MINUTE),DATE_ADD(IN_TIME, INTERVAL 43 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,18,DATE_ADD(IN_TIME, INTERVAL 47 MINUTE),DATE_ADD(IN_TIME, INTERVAL 48 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,19,DATE_ADD(IN_TIME, INTERVAL 56 MINUTE),DATE_ADD(IN_TIME, INTERVAL 60 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (8,11,DATE_ADD(IN_TIME, INTERVAL 66 MINUTE));
END //
DELIMITER ;

CALL kurs8('06:30:00');
CALL kurs8('08:00:00');
CALL kurs8('10:00:00');
CALL kurs8('12:00:00');
CALL kurs8('15:00:00');
CALL kurs8('16:30:00');
CALL kurs8('18:00:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs9(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 1 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,DATE_ADD(IN_TIME, INTERVAL 4 MINUTE),DATE_ADD(IN_TIME, INTERVAL 5 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,DATE_ADD(IN_TIME, INTERVAL 10 MINUTE),DATE_ADD(IN_TIME, INTERVAL 11 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,DATE_ADD(IN_TIME, INTERVAL 16 MINUTE));
END //
DELIMITER ;

CALL kurs9('07:00:00');
CALL kurs9('07:55:00');
CALL kurs9('10:30:00');
CALL kurs9('11:44:00');
CALL kurs9('15:20:00');
CALL kurs9('17:46:00');
CALL kurs9('21:20:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs10(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 1 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,DATE_ADD(IN_TIME, INTERVAL 4 MINUTE),DATE_ADD(IN_TIME, INTERVAL 5 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,DATE_ADD(IN_TIME, INTERVAL 9 MINUTE),DATE_ADD(IN_TIME, INTERVAL 10 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,DATE_ADD(IN_TIME, INTERVAL 15 MINUTE),DATE_ADD(IN_TIME, INTERVAL 16 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,DATE_ADD(IN_TIME, INTERVAL 21 MINUTE));
END //
DELIMITER ;

CALL kurs10('08:05:00');
CALL kurs10('10:39:00');
CALL kurs10('11:54:00');
CALL kurs10('15:05:00');
CALL kurs10('17:56:00');
CALL kurs10('21:03:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs11(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 1 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,DATE_ADD(IN_TIME, INTERVAL 6 MINUTE),DATE_ADD(IN_TIME, INTERVAL 7 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,DATE_ADD(IN_TIME, INTERVAL 12 MINUTE));
END //
DELIMITER ;

CALL kurs11('07:45:00');
CALL kurs11('10:28:00');
CALL kurs11('11:34:00');
CALL kurs11('14:54:00');
CALL kurs11('17:36:00');
CALL kurs11('20:45:00');

DELIMITER //
CREATE OR REPLACE PROCEDURE kurs12(IN_TIME TIME)
BEGIN
    IF IN_TIME <= '00:00:00' OR IN_TIME >= '24:00:00' THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Źle podany czas';
	END IF;
	INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,6,IN_TIME,DATE_ADD(IN_TIME, INTERVAL 1 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,13,DATE_ADD(IN_TIME, INTERVAL 8 MINUTE),DATE_ADD(IN_TIME, INTERVAL 9 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,14,DATE_ADD(IN_TIME, INTERVAL 15 MINUTE),DATE_ADD(IN_TIME, INTERVAL 16 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,15,DATE_ADD(IN_TIME, INTERVAL 21 MINUTE),DATE_ADD(IN_TIME, INTERVAL 22 MINUTE));
    INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,6,DATE_ADD(IN_TIME, INTERVAL 27 MINUTE));
END //
DELIMITER ;

CALL kurs12('07:33:00');
CALL kurs12('10:01:00');
CALL kurs12('11:22:00');
CALL kurs12('14:27:00');
CALL kurs12('17:24:00');
CALL kurs12('20:31:00');


DELIMITER //
CREATE OR REPLACE PROCEDURE odleglosc_przystankow(poczatek VARCHAR(50), koniec VARCHAR(50))
BEGIN
    SELECT ROUND(SQRT(POW((SELECT X FROM przystanek WHERE nazwa = 'poczatek')-(SELECT X FROM przystanek WHERE nazwa = 'koniec'),2)+POW((SELECT Y FROM przystanek WHERE nazwa = 'poczatek' )-(SELECT Y FROM przystanek WHERE nazwa = 'koniec'),2)),2) AS wynik;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE wyswietlanie_kursow(numer_kursu INT)
BEGIN
    SELECT * FROM przystanek INNER JOIN tabela_łącząca ON przystanek.id_przystanku = tabela_łącząca.id_przystanku WHERE id_kursu = 'numer_kursu' ORDER BY `tabela_łącząca`.`id_połączenia` ASC; 
END //
DELIMITER ;

DELIMITER $$
CREATE OR REPLACE PROCEDURE dodawanie_aktualnosci(tytul VARCHAR(30),obrazek BLOB, k_opis VARCHAR(100), d_opis VARCHAR(5000), data_poczatkowa DATE, data_koncowa DATE ) 
BEGIN 
    IF data_koncowa < data_poczatkowa THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data końcowa nie może być wcześniejsza od początkowej'; 
    END IF; 
        INSERT INTO `aktualnosci`( `tytuł`, `obraz`, `krotki_opis`, `dlugi_opis`, `poczatek_aktualnosci`, `koniec_aktualnosci`) VALUES (tytul,LOAD_FILE(obrazek),k_opis,d_opis,data_poczatkowa,data_koncowa);
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER validate_aktualnosci_insert
BEFORE UPDATE ON aktualnosci FOR EACH ROW
BEGIN
	CALL dodawanie_aktualnosci(NEW.poczatek_aktualnosci, NEW.koniec_aktualnosci);
END$$
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE dodaj_bilet(przystanek1 VARCHAR(50), przystanek2 VARCHAR(50), id_kursu INT, odleglosc DOUBLE, cena DOUBLE)
BEGIN
    INSERT INTO `bilet`(`id_przystanku_poczatkowego`, `id_przystanku_koncowego`, `id_kursu`, `odleglosc`, `cena`) VALUES ((SELECT id_przystanku FROM przystanek WHERE nazwa = przystanek1),(SELECT id_przystanku FROM przystanek WHERE nazwa = przystanek2),id_kursu,ROUND(odleglosc,2),ROUND(cena,2));
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_aktualnosc(aktualnosci_id INT)
BEGIN
    DELETE FROM aktualnosci WHERE id_aktualnosci = aktualnosci_id;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_kurs(kurs_id INT)
BEGIN
    DELETE FROM kurs WHERE id_kursu = kurs_id;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE dodaj_kurs(aktualnosci INT, nr_kursu VARCHAR(5), rodzaj VARCHAR(50), aktualny INT)
BEGIN
    INSERT INTO `kurs`(`id_aktualnosci`, `numer_kursu`, `rodzaj(miejski)`, `czy_aktualny`) VALUES (aktualnosci,nr_kursu,rodzaj,aktualny);
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_przystanek(przystanek INT)
BEGIN
    DELETE FROM przystanek WHERE id_przystanku = przystanek;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_tabela_łącząca(połączenie INT)
BEGIN
    DELETE FROM tabela_łącząca WHERE id_połączenia = połączenie;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE dodaj_przystanek(nazwa VARCHAR(100), x DOUBLE, y DOUBLE)
BEGIN
    INSERT INTO `przystanek`( `nazwa`, `X`, `Y`) VALUES (nazwa,x,y);
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE edytuj_kurs(aktualnosc INT, nr_kursu INT, rodzaj VARCHAR(50), aktualny INT, kurs INT)
BEGIN
    UPDATE `kurs` SET id_aktualnosci = aktualnosc, numer_kursu = nr_kursu ,`rodzaj(miejski)` = rodzaj , czy_aktualny = aktualny WHERE id_kursu = kurs;
END //
DELIMITER ;


DELIMITER $$
CREATE EVENT miesieczny ON SCHEDULE EVERY 1 DAY STARTS '2011-09-30 00:00:01' ENDS '2021-09-30 00:00:01'
DO BEGIN
INSERT INTO `bilet`(`id_przystanku_poczatkowego`, `id_przystanku_koncowego`, `id_kursu`, `odleglosc`, `cena`)
VALUES (2,4,5,4,8);
END $$

CREATE DEFINER=`root`@`localhost` EVENT `miesieczny` ON SCHEDULE EVERY 1 DAY STARTS '2011-09-30 00:00:01' ENDS '2021-09-30 00:00:01' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
INSERT INTO `bilet`(`id_przystanku_poczatkowego`, `id_przystanku_koncowego`, `id_kursu`, `odleglosc`, `cena`)
VALUES (2,4,5,4,8);
END

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_bilet(bilet INT)
BEGIN
    DELETE FROM bilet WHERE id_biletu = bilet;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_zakres_bilet(bilet_min INT, bilet_max INT)
BEGIN
    DELETE FROM bilet WHERE id_biletu >= bilet_min AND id_biletu <= bilet_max;
END //
DELIMITER ;

DELIMITER $$
CREATE TRIGGER validate_zakres_bilet
BEFORE UPDATE ON bilet FOR EACH ROW
BEGIN
	CALL usun_zakres_bilet(NEW.id_biletu, NEW.id_biletu);
END$$
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE usun_zakres_łącząca(połączenie_min INT, połączenie_max INT)
BEGIN
    IF połączenie_max < połączenie_min THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID połączenia minimalnego nie może być większe od maksymalnego'; 
    IF połączenie_max < połączenie_min THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'ID połączenia minimalnego nie może być większe od maksymalnego'; 
    END IF; 
    DELETE FROM tabela_łącząca WHERE id_połączenia >= połączenie_min AND id_połączenia <= połączenie_max;
END //
DELIMITER ;
 
DELIMITER $$
CREATE TRIGGER validate_zakres_łącząca
BEFORE UPDATE ON tabela_łącząca FOR EACH ROW
BEGIN
	CALL usun_zakres_łącząca(NEW.id_polaczenia, NEW.id_polaczenia);
END$$
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE edytuj_bilet(pp INT, pk INT, kurs INT, odleglosc FLOAT, cena FLOAT, bilet INT)
BEGIN
    UPDATE `bilet` SET id_przystanku_poczatkowego = pp, id_przystanku_koncowego = pk ,id_kursu = kurs , odleglosc = odleglosc, cena = cena WHERE id_biletu = bilet;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE edytuj_przystanek(nazwap VARCHAR(100), wX INT, wY INT, przystanek INT)
BEGIN
    UPDATE `przystanek` SET nazwa = nazwap, X = wX ,Y = wY WHERE id_przystanku = przystanek;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE edytuj_aktualnosc(tytul VARCHAR(30), obrazek BLOB, opisK VARCHAR(100), opisD VARCHAR(5000),start_a DATE, finish_a DATE, aktualnosc INT)
BEGIN
    UPDATE `aktualnosci` SET tytuł = tytul, obraz = LOAD_FILE(obrazek) , krotki_opis = opisK, dlugi_opis = opisD, poczatek_aktualnosci = start_a, koniec_aktualnosci = finish_a  WHERE id_aktualnosci = aktualnosc;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE edytuj_kurs_godzina(kurs INT, przystanek INT, przyjazd TIME, wyjazd TIME,połączenie INT)
BEGIN
    UPDATE `tabela_łącząca` SET id_kursu = kurs, id_przystanku = przystanek , godzina_przyjazdu = przyjazd, godzina_wyjazdu = wyjazd WHERE id_połączenia = połączenie;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE wylacz_aktualnosc(dzisiaj DATE)
BEGIN
    UPDATE kurs INNER JOIN aktualnosci ON kurs.id_aktualnosci = aktualnosci.id_aktualnosci SET czy_aktualny = 0 WHERE poczatek_aktualnosci < dzisiaj AND koniec_aktualnosci > dzisiaj
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE wlacz_aktualnosc(dzisiaj DATE)
BEGIN
    UPDATE kurs INNER JOIN aktualnosci ON kurs.id_aktualnosci = aktualnosci.id_aktualnosci SET czy_aktualny = 1 WHERE koniec_aktualnosci < dzisiaj AND poczatek_aktualnosci < dzisiaj OR koniec_aktualnosci > dzisiaj AND poczatek_aktualnosci > dzisiaj;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER cena_gt
     BEFORE UPDATE ON bilet
     FOR EACH ROW
     BEGIN
       IF NEW.cena < 0 THEN
         SET NEW.cena = 0;
       END IF;
       END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER odleglosc_gt
     BEFORE UPDATE ON bilet
     FOR EACH ROW
     BEGIN
       IF NEW.odleglosc < 0 THEN
         SET NEW.odleglosc = 0;
       END IF;
       END //
DELIMITER ;
