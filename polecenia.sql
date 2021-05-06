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
  
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,2,'07:55:00','07:56:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,3,'07:58:00','07:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,10,'08:02:00','08:03:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,9,'08:06:00','08:07:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,8,'08:11:00','08:12:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,7,'08:15:00','08:16:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,6,'08:19:00','08:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,4,'08:22:00','08:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (1,5,'08:24:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,2,'09:55:00','09:56:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,3,'09:58:00','09:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,10,'10:02:00','10:03:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,9,'10:06:00','10:07:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,8,'10:11:00','10:12:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,7,'10:15:00','10:16:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,6,'10:19:00','10:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,4,'10:22:00','10:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (1,5,'10:24:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,2,'14:55:00','14:56:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,3,'14:58:00','14:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,10,'15:02:00','15:03:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,9,'15:06:00','15:07:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,8,'15:11:00','15:12:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,7,'15:15:00','15:16:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,6,'15:19:00','15:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,4,'15:22:00','15:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (1,5,'15:24:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,2,'17:55:00','17:56:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,3,'17:58:00','17:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,10,'18:02:00','18:03:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,9,'18:06:00','18:07:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,8,'18:11:00','18:12:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,7,'18:15:00','18:16:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,6,'18:19:00','18:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,4,'18:22:00','18:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (1,5,'18:24:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,2,'19:55:00','19:56:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,3,'19:58:00','19:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,10,'20:02:00','20:03:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,9,'20:06:00','20:07:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,8,'20:11:00','20:12:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,7,'20:15:00','20:16:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,6,'20:19:00','20:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (1,4,'20:22:00','20:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (1,5,'20:24:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,8,'07:27:00','07:30:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,9,'07:34:00','07:35:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,5,'07:38:00','07:40:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (2,3,'07:43:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,8,'08:27:00','08:30:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,9,'08:34:00','08:35:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,5,'08:38:00','08:40:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (2,3,'08:43:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,8,'09:57:00','10:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,9,'10:04:00','10:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (2,5,'10:08:00','10:10:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (2,3,'10:13:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'07:11:00','07:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'07:18:00','07:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'07:24:00','07:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'07:30:00','07:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'07:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'07:40:00','07:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'07:48:00','07:49:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'07:54:00','07:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'08:00:00','08:01:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'08:04:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'08:10:00','08:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'08:18:00','08:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'08:24:00','08:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'08:30:00','08:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'08:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'09:10:00','09:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'09:18:00','09:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'09:24:00','09:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'09:30:00','09:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'09:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'10:10:00','10:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'10:18:00','10:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'10:24:00','10:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'10:30:00','10:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'10:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'11:10:00','11:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'11:18:00','11:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'11:24:00','11:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'11:30:00','11:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'11:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'12:10:00','12:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'12:18:00','12:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'12:24:00','12:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'12:30:00','12:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'12:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'13:10:00','13:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'13:18:00','13:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'13:24:00','13:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'13:30:00','13:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'13:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'14:10:00','14:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'14:18:00','14:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'14:24:00','14:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'14:30:00','14:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'14:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,3,'15:10:00','15:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,10,'15:18:00','15:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,6,'15:24:00','15:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (3,2,'15:30:00','15:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (3,3,'15:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'07:43:00','07:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,'07:51:00','07:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'07:58:00','08:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,'08:03:00','08:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'08:07:00','08:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,'08:13:00','08:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'08:18:00','08:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,'08:23:00','08:24:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,'08:27:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'09:43:00','09:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,'09:51:00','09:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'09:58:00','10:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,'10:03:00','10:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'10:07:00','10:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,'10:13:00','10:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'10:18:00','10:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,'10:23:00','10:24:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,'10:27:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'11:43:00','11:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,'11:51:00','11:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'11:58:00','12:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,'12:03:00','12:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'12:07:00','12:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,'12:13:00','12:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'12:18:00','12:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,'12:23:00','12:24:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,'12:27:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'14:43:00','14:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,'14:51:00','14:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'14:58:00','15:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,'15:03:00','15:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'15:07:00','15:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,'15:13:00','15:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'15:18:00','15:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,'15:23:00','15:24:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,'15:27:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'17:43:00','17:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,'17:51:00','17:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'17:58:00','18:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,'18:03:00','18:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'18:07:00','18:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,'18:13:00','18:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'18:18:00','18:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,'18:23:00','18:24:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,'18:27:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'20:43:00','20:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,8,'20:51:00','20:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'20:58:00','21:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,10,'21:03:00','21:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'21:07:00','21:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,2,'21:13:00','21:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,5,'21:18:00','21:20:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (4,6,'21:23:00','21:24:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (4,5,'21:27:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'08:02:00','08:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'08:07:00','08:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'08:13:00','08:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'08:17:00','08:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'08:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'09:02:00','09:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'09:07:00','09:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'09:13:00','09:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'09:17:00','09:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'09:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'11:02:00','11:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'11:07:00','11:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'11:13:00','11:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'11:17:00','11:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'11:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'13:02:00','13:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'13:07:00','13:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'13:13:00','13:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'13:17:00','13:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'13:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'16:02:00','16:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'16:07:00','16:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'16:13:00','16:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'16:17:00','16:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'16:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'18:02:00','18:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'18:07:00','18:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'18:13:00','18:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'18:17:00','18:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'18:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'19:02:00','19:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'19:07:00','19:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'19:13:00','19:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'19:17:00','19:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'19:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'20:02:00','20:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'20:07:00','20:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'20:13:00','20:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'20:17:00','20:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'20:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'22:02:00','22:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'22:07:00','22:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'22:13:00','22:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'22:17:00','22:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'22:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'00:02:00','00:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'00:07:00','00:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'00:13:00','00:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'00:17:00','00:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'00:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'03:02:00','03:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'03:07:00','03:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'03:13:00','03:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'03:17:00','03:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'03:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,5,'05:02:00','05:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,4,'05:07:00','05:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,7,'05:13:00','05:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (5,9,'05:17:00','05:18:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (5,5,'05:21:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,11,'12:00:00','12:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,12,'12:10:00','12:11:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,13,'12:16:00','12:17:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,14,'12:22:00','12:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,15,'12:28:00','12:29:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,16,'12:35:00','12:36:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,17,'12:42:00','12:43:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,18,'12:47:00','12:48:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,19,'12:56:00','13:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,18,'13:08:00','13:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,17,'13:13:00','13:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,16,'13:20:00','13:21:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,15,'13:27:00','13:27:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,14,'13:32:00','13:33:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,13,'13:38:00','13:39:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,12,'13:44:00','13:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (8,11,'13:50:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,11,'18:00:00','18:05:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,12,'18:10:00','18:11:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,13,'18:16:00','18:17:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,14,'18:22:00','18:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,15,'18:28:00','18:29:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,16,'18:35:00','18:36:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,17,'18:42:00','18:43:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,18,'18:47:00','18:48:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,19,'18:56:00','19:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,18,'19:08:00','19:09:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,17,'19:13:00','19:14:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,16,'19:20:00','19:21:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,15,'19:27:00','19:27:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,14,'19:32:00','19:33:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,13,'19:38:00','19:39:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (8,12,'19:44:00','19:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (8,11,'19:50:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,'07:55:00','07:56:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,'07:59:00','08:00:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,'08:05:00','08:06:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,'08:11:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,'10:30:00','10:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,'10:34:00','10:35:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,'10:40:00','10:41:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,'10:46:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,'11:44:00','11:45:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,'11:48:00','11:49:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,'11:54:00','11:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,'12:00:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,'15:20:00','15:21:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,'15:24:00','15:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,'15:30:00','15:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,'15:36:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,'17:46:00','17:47:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,'17:50:00','17:51:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,'17:54:00','17:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,'18:00:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,2,'21:20:00','21:21:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,12,'21:24:00','21:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (9,11,'21:28:00','21:29:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (9,2,'21:34:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,'08:05:00','08:06:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,'08:09:00','08:10:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,'08:14:00','08:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,'08:20:00','08:21:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,'08:26:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,'10:39:00','10:40:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,'10:43:00','10:44:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,'10:48:00','10:49:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,'10:54:00','10:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,'11:00:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,'11:54:00','11:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,'11:58:00','11:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,'12:03:00','12:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,'12:09:00','12:10:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,'12:15:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,'15:05:00','15:06:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,'15:09:00','15:10:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,'15:14:00','15:15:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,'15:20:00','15:21:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,'15:26:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,'17:56:00','17:57:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,'18:00:00','18:01:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,'18:05:00','18:06:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,'18:11:00','18:12:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,'18:17:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,6,'21:03:00','21:04:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,13,'21:07:00','21:08:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,14,'21:12:00','21:13:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (10,15,'21:18:00','21:19:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (10,6,'21:24:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,'07:45:00','07:46:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,'07:51:00','07:52:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,'07:57:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,'10:28:00','10:29:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,'10:34:00','10:35:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,'10:40:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,'11:34:00','11:35:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,'10:40:00','11:41:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,'11:46:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,'14:54:00','14:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,'15:00:00','15:01:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,'15:06:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,'17:36:00','17:37:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,'17:42:00','17:43:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,'17:48:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,10,'20:45:00','20:53:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (11,19,'20:58:00','20:59:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (11,10,'21:04:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,8,'07:33:00','07:34:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,16,'07:41:00','07:42:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,17,'07:48:00','07:49:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,18,'07:54:00','07:55:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,8,'08:00:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,8,'10:01:00','10:02:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,16,'10:09:00','10:10:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,17,'10:16:00','10:17:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,18,'10:22:00','10:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,8,'10:28:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,8,'11:22:00','11:23:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,16,'11:30:00','11:31:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,17,'11:37:00','11:38:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,18,'11:43:00','11:44:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,8,'11:49:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,8,'14:27:00','14:28:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,16,'14:35:00','14:36:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,17,'14:42:00','14:43:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,18,'14:48:00','14:49:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,8,'14:54:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,8,'17:24:00','17:25:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,16,'17:32:00','17:33:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,17,'17:39:00','17:40:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,18,'17:45:00','17:46:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,8,'17:51:00');

INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,8,'20:31:00','20:32:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,16,'20:39:00','20:40:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,17,'20:46:00','20:47:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`, `godzina_wyjazdu`) VALUES (12,18,'20:52:00','20:53:00');
INSERT INTO `tabela_łącząca`( `id_kursu`, `id_przystanku`, `godzina_przyjazdu`) VALUES (12,8,'20:58:00');

