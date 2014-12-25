-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "Hbs" -----------------------------------
CREATE DATABASE IF NOT EXISTS `Hbs` CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `Hbs`;
-- ---------------------------------------------------------


-- CREATE TABLE "Adres" ------------------------------------
CREATE TABLE `Adres` ( 
	`adresid` Int( 11 ) NOT NULL DEFAULT '0', 
	`cadde` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`mahalle` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`sokak` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`apt` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`diskapi` Int( 11 ) NULL, 
	`ickapi` Int( 11 ) NULL, 
	`postakod` Int( 11 ) NULL, 
	`il` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`ilce` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`konum` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `adresid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Aile" -------------------------------------
CREATE TABLE `Aile` ( 
	`aileid` Int( 11 ) NOT NULL DEFAULT '0', 
	`soyad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`il` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `aileid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Akraba" -----------------------------------
CREATE TABLE `Akraba` ( 
	`akrabaid` Int( 11 ) NOT NULL DEFAULT '0', 
	`tcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`aileid` Int( 11 ) NULL, 
	`kid` Int( 11 ) NULL, 
	`did` Int( 11 ) NULL,
	 PRIMARY KEY ( `akrabaid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Birey" ------------------------------------
CREATE TABLE `Birey` ( 
	`tcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, 
	`ad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`soyad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`dyeri` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`dtarih` Date NULL, 
	`tel` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`adresid` Int( 11 ) NULL, 
	`mail` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`sifre` VarChar( 15 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`tema` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `tcno` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Birim" ------------------------------------
CREATE TABLE `Birim` ( 
	`bid` Int( 11 ) NOT NULL DEFAULT '0', 
	`tanim` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `bid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Doktor" -----------------------------------
CREATE TABLE `Doktor` ( 
	`dtcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, 
	`ad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`soyad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`tel` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`mail` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`hid` Int( 11 ) NULL, 
	`bid` Int( 11 ) NULL,
	 PRIMARY KEY ( `dtcno` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Doz" --------------------------------------
CREATE TABLE `Doz` ( 
	`dozid` Int( 11 ) NOT NULL DEFAULT '0', 
	`tanim` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `dozid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Durum" ------------------------------------
CREATE TABLE `Durum` ( 
	`did` Int( 11 ) NOT NULL DEFAULT '0', 
	`tanim` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `did` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Eczane" -----------------------------------
CREATE TABLE `Eczane` ( 
	`eid` Int( 11 ) NOT NULL DEFAULT '0', 
	`ad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`il` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`ilce` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`konum` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`mahalle` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`tel` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `eid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "HBirim" -----------------------------------
CREATE TABLE `HBirim` ( 
	`hbid` Int( 11 ) NOT NULL DEFAULT '0', 
	`hid` Int( 11 ) NULL, 
	`bid` Int( 11 ) NULL,
	 PRIMARY KEY ( `hbid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "HTanim" -----------------------------------
CREATE TABLE `HTanim` ( 
	`htid` Int( 11 ) NOT NULL DEFAULT '0', 
	`ad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`tanim` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `htid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Hastane" ----------------------------------
CREATE TABLE `Hastane` ( 
	`hid` Int( 11 ) NOT NULL DEFAULT '0', 
	`ad` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`il` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`ilce` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`konum` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `hid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Ilac" -------------------------------------
CREATE TABLE `Ilac` ( 
	`iid` Int( 11 ) NOT NULL DEFAULT '0', 
	`iad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`SGK` VarChar( 10 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`etkenmadde` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`kullanim` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`aciklama` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `iid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "IlacBilgi" --------------------------------
CREATE TABLE `IlacBilgi` ( 
	`ibid` Int( 11 ) NOT NULL DEFAULT '0', 
	`iid` Int( 11 ) NULL, 
	`dozid` Int( 11 ) NULL,
	 PRIMARY KEY ( `ibid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "KHastalik" --------------------------------
CREATE TABLE `KHastalik` ( 
	`tcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`htid` Int( 11 ) NULL
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Konum" ------------------------------------
CREATE TABLE `Konum` ( 
	`kid` Int( 11 ) NOT NULL DEFAULT '0', 
	`tanim` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `kid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Personel" ---------------------------------
CREATE TABLE `Personel` ( 
	`tcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, 
	`ad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`soyad` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`dyeri` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`dtarih` Date NULL, 
	`tel` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`adresid` Int( 11 ) NULL, 
	`mail` VarChar( 50 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`sifre` VarChar( 15 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`tema` VarChar( 30 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
	 PRIMARY KEY ( `tcno` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- CREATE TABLE "Recete" -----------------------------------
CREATE TABLE `Recete` ( 
	`receteid` Int( 11 ) NOT NULL DEFAULT '0', 
	`tcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`hbid` Int( 11 ) NULL, 
	`dtcno` VarChar( 11 ) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL, 
	`ibid` Int( 11 ) NULL, 
	`eid` Int( 11 ) NULL, 
	`tarih` Date NULL,
	 PRIMARY KEY ( `receteid` )
 )
CHARACTER SET = utf8
COLLATE = utf8_unicode_ci
ENGINE = InnoDB;
-- ---------------------------------------------------------


-- Dump data of "Adres" ------------------------------------
INSERT INTO `Adres`(`adresid`,`cadde`,`mahalle`,`sokak`,`apt`,`diskapi`,`ickapi`,`postakod`,`il`,`ilce`,`konum`) VALUES ( '1', 'Osman Kavuncu', 'Selimiye', 'Ortahisar', 'Karanfil', '22', '14', '38070', 'Kayseri', 'Melikgazi', '38.7416889, 35.3966779' );
INSERT INTO `Adres`(`adresid`,`cadde`,`mahalle`,`sokak`,`apt`,`diskapi`,`ickapi`,`postakod`,`il`,`ilce`,`konum`) VALUES ( '2', 'İsmail Erez', ' Sakarya', ' Kiraz', 'Safa', '7', '13', '38070', 'Kayseri', 'Melikgazi', NULL );
INSERT INTO `Adres`(`adresid`,`cadde`,`mahalle`,`sokak`,`apt`,`diskapi`,`ickapi`,`postakod`,`il`,`ilce`,`konum`) VALUES ( '3', 'Gülbahçe', 'Keykubat ', NULL, 'İnan ', '15', '6', '38070', ' Kayseri', 'Kocasinan', NULL );
-- ---------------------------------------------------------


-- Dump data of "Aile" -------------------------------------
INSERT INTO `Aile`(`aileid`,`soyad`,`il`) VALUES ( '1', 'Demirci', 'Kayseri' );
INSERT INTO `Aile`(`aileid`,`soyad`,`il`) VALUES ( '2', 'Yiğit', 'Kayseri' );
INSERT INTO `Aile`(`aileid`,`soyad`,`il`) VALUES ( '3', 'Gümüş', 'Kayseri' );
-- ---------------------------------------------------------


-- Dump data of "Akraba" -----------------------------------
INSERT INTO `Akraba`(`akrabaid`,`tcno`,`aileid`,`kid`,`did`) VALUES ( '1', '26897106822', '2', '2', '1' );
INSERT INTO `Akraba`(`akrabaid`,`tcno`,`aileid`,`kid`,`did`) VALUES ( '2', '25867415269', '2', '1', '1' );
INSERT INTO `Akraba`(`akrabaid`,`tcno`,`aileid`,`kid`,`did`) VALUES ( '3', '30313233340', '2', '3', NULL );
INSERT INTO `Akraba`(`akrabaid`,`tcno`,`aileid`,`kid`,`did`) VALUES ( '4', '30313233341', '2', '3', NULL );
INSERT INTO `Akraba`(`akrabaid`,`tcno`,`aileid`,`kid`,`did`) VALUES ( '5', '30313233342', '2', '3', NULL );
-- ---------------------------------------------------------


-- Dump data of "Birey" ------------------------------------
INSERT INTO `Birey`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '25867415269', 'Ayşe', 'Yiğit', 'Kayseri', '1980-02-20', '05348888888', '1', NULL, '12345', NULL );
INSERT INTO `Birey`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '26897106822', 'Ali', 'Yiğit', 'Kayseri', '1980-10-10', '05349999999', '1', NULL, '12345', NULL );
INSERT INTO `Birey`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '30313233340', 'Ahmet', 'Yiğit', 'Kayseri', '2006-10-25', '', '1', NULL, '12345', NULL );
INSERT INTO `Birey`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '30313233341', 'Fatma', 'Yiğit', 'Kayseri', '2010-04-12', NULL, '1', NULL, '12345', NULL );
INSERT INTO `Birey`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '30313233342', 'Ömer', 'Yiğit', 'Kayseri', '2014-02-25', NULL, '1', NULL, '12345', NULL );
-- ---------------------------------------------------------


-- Dump data of "Birim" ------------------------------------
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '1', 'Beyin Cerrahi' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '2', 'Genel Cerrahi' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '3', 'Göğüs Cerrahi' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '4', 'Göz Hastalıkları' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '5', 'Kalp Damar Cerrahi' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '6', 'Kulak Burun Boğaz' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '7', 'Üroloji' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '8', 'Patoloji' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '9', 'Plastik Cerrahi' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '10', 'Ortopedi ve Travmoloji' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '11', 'Çocuk Sağlığı' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '12', 'Kadın Doğum' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '13', 'Fizik Tedavi ve Rehabilitasyon' );
INSERT INTO `Birim`(`bid`,`tanim`) VALUES ( '14', 'Kardiyoloji' );
-- ---------------------------------------------------------


-- Dump data of "Doktor" -----------------------------------
INSERT INTO `Doktor`(`dtcno`,`ad`,`soyad`,`tel`,`mail`,`hid`,`bid`) VALUES ( '20212223240', 'Hasan', 'Yorgancı', '053466666666', NULL, '1', '1' );
INSERT INTO `Doktor`(`dtcno`,`ad`,`soyad`,`tel`,`mail`,`hid`,`bid`) VALUES ( '20212223241', 'Hüseyin', 'Aslan', '053455555555', NULL, '2', '2' );
-- ---------------------------------------------------------


-- Dump data of "Doz" --------------------------------------
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '1', '30 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '2', '50 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '3', '100 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '4', '200 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '5', '500 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '6', '1000 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '7', '10 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '8', '15 mg' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '9', '100 ml' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '10', '150 ml' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '11', '200 ml' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '12', '250 ml' );
INSERT INTO `Doz`(`dozid`,`tanim`) VALUES ( '13', '300 ml' );
-- ---------------------------------------------------------


-- Dump data of "Durum" ------------------------------------
INSERT INTO `Durum`(`did`,`tanim`) VALUES ( '1', 'evli' );
INSERT INTO `Durum`(`did`,`tanim`) VALUES ( '2', 'boşanmış' );
-- ---------------------------------------------------------


-- Dump data of "Eczane" -----------------------------------
INSERT INTO `Eczane`(`eid`,`ad`,`il`,`ilce`,`konum`,`mahalle`,`tel`) VALUES ( '1', ' Fatih', ' Kayseri', ' Kocasinan', '38.7430383, 35.4105824', ' 30 Ağustos', ' 326-9935' );
INSERT INTO `Eczane`(`eid`,`ad`,`il`,`ilce`,`konum`,`mahalle`,`tel`) VALUES ( '2', ' Alper', ' Kayseri', 'Melikgazi', '38.7430383, 35.4105824', 'Selimiye ', '327 26 25' );
INSERT INTO `Eczane`(`eid`,`ad`,`il`,`ilce`,`konum`,`mahalle`,`tel`) VALUES ( '3', ' Şifa ', ' Kayseri', 'Melikgazi', '38.7430383, 35.4105824', ' Anafartalar', ' 326-2998' );
INSERT INTO `Eczane`(`eid`,`ad`,`il`,`ilce`,`konum`,`mahalle`,`tel`) VALUES ( '4', ' Narin', ' Kayseri', 'Melikgazi', '38.7430383, 35.4105824', 'Keykubat ', '332 00 88' );
INSERT INTO `Eczane`(`eid`,`ad`,`il`,`ilce`,`konum`,`mahalle`,`tel`) VALUES ( '5', ' Şeker', ' Kayseri', 'Melikgazi', '38.7430383, 35.4105824', ' Keykubat', '331 61 33' );
-- ---------------------------------------------------------


-- Dump data of "HBirim" -----------------------------------
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '1', '1', '1' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '2', '1', '2' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '3', '1', '3' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '4', '1', '4' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '5', '1', '5' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '6', '1', '6' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '7', '2', '1' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '8', '2', '2' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '9', '2', '3' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '10', '2', '4' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '11', '2', '5' );
INSERT INTO `HBirim`(`hbid`,`hid`,`bid`) VALUES ( '12', '2', '6' );
-- ---------------------------------------------------------


-- Dump data of "HTanim" -----------------------------------
INSERT INTO `HTanim`(`htid`,`ad`,`tanim`) VALUES ( '1', 'Hipertansiyon', NULL );
INSERT INTO `HTanim`(`htid`,`ad`,`tanim`) VALUES ( '2', 'Diyabet', NULL );
INSERT INTO `HTanim`(`htid`,`ad`,`tanim`) VALUES ( '3', 'Astım', NULL );
INSERT INTO `HTanim`(`htid`,`ad`,`tanim`) VALUES ( '4', 'Kronik Obstrüktif Akciğer', NULL );
INSERT INTO `HTanim`(`htid`,`ad`,`tanim`) VALUES ( '5', 'Metabolik Sendrom', NULL );
-- ---------------------------------------------------------


-- Dump data of "Hastane" ----------------------------------
INSERT INTO `Hastane`(`hid`,`ad`,`il`,`ilce`,`konum`) VALUES ( '1', 'H.Nimet Köseoğlu', 'Kayseri', 'Melikgazi', '38.7409713, 35.4009748' );
INSERT INTO `Hastane`(`hid`,`ad`,`il`,`ilce`,`konum`) VALUES ( '2', 'Kayseri Devlet EAH', 'Kayseri', 'Kocasinan', '38.7276812, 35.4784799' );
INSERT INTO `Hastane`(`hid`,`ad`,`il`,`ilce`,`konum`) VALUES ( '3', 'Özel-Dünyam', 'Kayseri', 'Kocasinan', '38.7254799, 35.4770851' );
INSERT INTO `Hastane`(`hid`,`ad`,`il`,`ilce`,`konum`) VALUES ( '4', 'Gevher Nesibe EAH', 'Kayseri', 'Talas', '38.7041245, 35.5242598' );
-- ---------------------------------------------------------


-- Dump data of "Ilac" -------------------------------------
INSERT INTO `Ilac`(`iid`,`iad`,`SGK`,`etkenmadde`,`kullanim`,`aciklama`) VALUES ( '1', 'A-ferin', 'E', ' ', 'günde 3 tok', 'Grip ve Soğuk algınlığı' );
INSERT INTO `Ilac`(`iid`,`iad`,`SGK`,`etkenmadde`,`kullanim`,`aciklama`) VALUES ( '2', 'Majezik', '', 'Flurbiprofen', ' günde 2 tok', ' Ağrı Kesici' );
INSERT INTO `Ilac`(`iid`,`iad`,`SGK`,`etkenmadde`,`kullanim`,`aciklama`) VALUES ( '3', ' Etol Fort', 'E', 'Etodolak ', ' günde 2 tok', ' Orta Şiddetli Ağrı Kesici ' );
INSERT INTO `Ilac`(`iid`,`iad`,`SGK`,`etkenmadde`,`kullanim`,`aciklama`) VALUES ( '4', ' Nurofen Cold', 'E', 'Ibuprofen', ' günde 2 aç ', ' Soğuk Algınlığı- Öksürük' );
INSERT INTO `Ilac`(`iid`,`iad`,`SGK`,`etkenmadde`,`kullanim`,`aciklama`) VALUES ( '5', ' Voltaren', 'E', 'Diklofenak Sodyum', ' günde 2 tok', ' Romatizmal' );
-- ---------------------------------------------------------


-- Dump data of "IlacBilgi" --------------------------------
INSERT INTO `IlacBilgi`(`ibid`,`iid`,`dozid`) VALUES ( '1', '1', '2' );
INSERT INTO `IlacBilgi`(`ibid`,`iid`,`dozid`) VALUES ( '2', '2', '3' );
INSERT INTO `IlacBilgi`(`ibid`,`iid`,`dozid`) VALUES ( '3', '4', '4' );
INSERT INTO `IlacBilgi`(`ibid`,`iid`,`dozid`) VALUES ( '4', '2', '4' );
INSERT INTO `IlacBilgi`(`ibid`,`iid`,`dozid`) VALUES ( '5', '2', '5' );
INSERT INTO `IlacBilgi`(`ibid`,`iid`,`dozid`) VALUES ( '6', '2', '6' );
-- ---------------------------------------------------------


-- Dump data of "KHastalik" --------------------------------
INSERT INTO `KHastalik`(`tcno`,`htid`) VALUES ( '26897106822', '2' );
INSERT INTO `KHastalik`(`tcno`,`htid`) VALUES ( '26897106822', '3' );
-- ---------------------------------------------------------


-- Dump data of "Konum" ------------------------------------
INSERT INTO `Konum`(`kid`,`tanim`) VALUES ( '1', 'anne' );
INSERT INTO `Konum`(`kid`,`tanim`) VALUES ( '2', 'baba' );
INSERT INTO `Konum`(`kid`,`tanim`) VALUES ( '3', 'çocuk' );
-- ---------------------------------------------------------


-- Dump data of "Personel" ---------------------------------
INSERT INTO `Personel`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '10111213140', 'Ömer', 'Güven', 'Kayseri', '1987-05-16', NULL, '2', NULL, 'omer', NULL );
INSERT INTO `Personel`(`tcno`,`ad`,`soyad`,`dyeri`,`dtarih`,`tel`,`adresid`,`mail`,`sifre`,`tema`) VALUES ( '10111213141', 'Ahmet', 'Temiz', 'Kayser', '1992-04-20', NULL, '3', NULL, 'ahmet', NULL );
-- ---------------------------------------------------------


-- Dump data of "Recete" -----------------------------------
INSERT INTO `Recete`(`receteid`,`tcno`,`hbid`,`dtcno`,`ibid`,`eid`,`tarih`) VALUES ( '1', '26897106822', '2', '20212223240', '1', NULL, '2014-11-26' );
INSERT INTO `Recete`(`receteid`,`tcno`,`hbid`,`dtcno`,`ibid`,`eid`,`tarih`) VALUES ( '2', '26897106822', '2', '20212223240', '2', NULL, '2014-11-30' );
INSERT INTO `Recete`(`receteid`,`tcno`,`hbid`,`dtcno`,`ibid`,`eid`,`tarih`) VALUES ( '3', '26897106822', '2', '20212223241', '3', NULL, '2014-12-18' );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_ailee" ---------------------------------
CREATE INDEX `fk_ailee` USING BTREE ON `Akraba`( `aileid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_bireyy" --------------------------------
CREATE INDEX `fk_bireyy` USING BTREE ON `Akraba`( `tcno` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_durumm" --------------------------------
CREATE INDEX `fk_durumm` USING BTREE ON `Akraba`( `did` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_konumm" --------------------------------
CREATE INDEX `fk_konumm` USING BTREE ON `Akraba`( `kid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_adress" --------------------------------
CREATE INDEX `fk_adress` USING BTREE ON `Birey`( `adresid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_birim" ---------------------------------
CREATE INDEX `fk_birim` USING BTREE ON `Doktor`( `bid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_hastane" -------------------------------
CREATE INDEX `fk_hastane` USING BTREE ON `Doktor`( `hid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_birimm" --------------------------------
CREATE INDEX `fk_birimm` USING BTREE ON `HBirim`( `bid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_hastanee" ------------------------------
CREATE INDEX `fk_hastanee` USING BTREE ON `HBirim`( `hid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_dozz" ----------------------------------
CREATE INDEX `fk_dozz` USING BTREE ON `IlacBilgi`( `dozid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_ilacc" ---------------------------------
CREATE INDEX `fk_ilacc` USING BTREE ON `IlacBilgi`( `iid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_bbirey" --------------------------------
CREATE INDEX `fk_bbirey` USING BTREE ON `KHastalik`( `tcno` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_hasta" ---------------------------------
CREATE INDEX `fk_hasta` USING BTREE ON `KHastalik`( `htid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_adrees" --------------------------------
CREATE INDEX `fk_adrees` USING BTREE ON `Personel`( `adresid` );
-- ---------------------------------------------------------


-- CREATE INDEX "eid" --------------------------------------
CREATE INDEX `eid` USING BTREE ON `Recete`( `eid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_bireey" --------------------------------
CREATE INDEX `fk_bireey` USING BTREE ON `Recete`( `tcno` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_doktorr" -------------------------------
CREATE INDEX `fk_doktorr` USING BTREE ON `Recete`( `dtcno` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_hbirim" --------------------------------
CREATE INDEX `fk_hbirim` USING BTREE ON `Recete`( `hbid` );
-- ---------------------------------------------------------


-- CREATE INDEX "fk_ilacbilgi" -----------------------------
CREATE INDEX `fk_ilacbilgi` USING BTREE ON `Recete`( `ibid` );
-- ---------------------------------------------------------


-- CREATE LINK "fk_ailee" ----------------------------------
ALTER TABLE `Akraba` ADD CONSTRAINT `fk_ailee` FOREIGN KEY ( `aileid` ) REFERENCES `Aile`( `aileid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_bireyy" ---------------------------------
ALTER TABLE `Akraba` ADD CONSTRAINT `fk_bireyy` FOREIGN KEY ( `tcno` ) REFERENCES `Birey`( `tcno` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_durumm" ---------------------------------
ALTER TABLE `Akraba` ADD CONSTRAINT `fk_durumm` FOREIGN KEY ( `did` ) REFERENCES `Durum`( `did` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_konumm" ---------------------------------
ALTER TABLE `Akraba` ADD CONSTRAINT `fk_konumm` FOREIGN KEY ( `kid` ) REFERENCES `Konum`( `kid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_adress" ---------------------------------
ALTER TABLE `Birey` ADD CONSTRAINT `fk_adress` FOREIGN KEY ( `adresid` ) REFERENCES `Adres`( `adresid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_birim" ----------------------------------
ALTER TABLE `Doktor` ADD CONSTRAINT `fk_birim` FOREIGN KEY ( `bid` ) REFERENCES `Birim`( `bid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_hastane" --------------------------------
ALTER TABLE `Doktor` ADD CONSTRAINT `fk_hastane` FOREIGN KEY ( `hid` ) REFERENCES `Hastane`( `hid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_birimm" ---------------------------------
ALTER TABLE `HBirim` ADD CONSTRAINT `fk_birimm` FOREIGN KEY ( `bid` ) REFERENCES `Birim`( `bid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_hastanee" -------------------------------
ALTER TABLE `HBirim` ADD CONSTRAINT `fk_hastanee` FOREIGN KEY ( `hid` ) REFERENCES `Hastane`( `hid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_dozz" -----------------------------------
ALTER TABLE `IlacBilgi` ADD CONSTRAINT `fk_dozz` FOREIGN KEY ( `dozid` ) REFERENCES `Doz`( `dozid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_ilacc" ----------------------------------
ALTER TABLE `IlacBilgi` ADD CONSTRAINT `fk_ilacc` FOREIGN KEY ( `iid` ) REFERENCES `Ilac`( `iid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_bbirey" ---------------------------------
ALTER TABLE `KHastalik` ADD CONSTRAINT `fk_bbirey` FOREIGN KEY ( `tcno` ) REFERENCES `Birey`( `tcno` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_hasta" ----------------------------------
ALTER TABLE `KHastalik` ADD CONSTRAINT `fk_hasta` FOREIGN KEY ( `htid` ) REFERENCES `HTanim`( `htid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_adrees" ---------------------------------
ALTER TABLE `Personel` ADD CONSTRAINT `fk_adrees` FOREIGN KEY ( `adresid` ) REFERENCES `Adres`( `adresid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_bireey" ---------------------------------
ALTER TABLE `Recete` ADD CONSTRAINT `fk_bireey` FOREIGN KEY ( `tcno` ) REFERENCES `Birey`( `tcno` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_doktorr" --------------------------------
ALTER TABLE `Recete` ADD CONSTRAINT `fk_doktorr` FOREIGN KEY ( `dtcno` ) REFERENCES `Doktor`( `dtcno` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_hbirim" ---------------------------------
ALTER TABLE `Recete` ADD CONSTRAINT `fk_hbirim` FOREIGN KEY ( `hbid` ) REFERENCES `HBirim`( `hbid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "fk_ilacbilgi" ------------------------------
ALTER TABLE `Recete` ADD CONSTRAINT `fk_ilacbilgi` FOREIGN KEY ( `ibid` ) REFERENCES `IlacBilgi`( `ibid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "Recete_ibfk_1" -----------------------------
ALTER TABLE `Recete` ADD CONSTRAINT `Recete_ibfk_1` FOREIGN KEY ( `eid` ) REFERENCES `Eczane`( `eid` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


