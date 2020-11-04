-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Hoszt: localhost
-- L�trehoz�s ideje: 2009. Feb 17. 16:31
-- Szerver verzi�: 5.0.45
-- PHP Verzi�: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Adatb�zis: `tagdij`
-- 

-- --------------------------------------------------------

-- 
-- T�bla szerkezet: `befiz`
-- 

CREATE TABLE `befiz` (
  `azon` int(10) unsigned NOT NULL,
  `datum` datetime NOT NULL,
  `osszeg` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- T�bla adatok: `befiz`
-- 

INSERT INTO `befiz` VALUES (1001, '2010-01-11 16:25:03', 60000);
INSERT INTO `befiz` VALUES (1002, '2010-01-17 11:01:19',  5000);
INSERT INTO `befiz` VALUES (1004, '2010-01-21 15:40:25', 18000);
INSERT INTO `befiz` VALUES (1005, '2010-02-02 09:26:54', 24000);
INSERT INTO `befiz` VALUES (1004, '2010-02-04 11:47:08', 30000);
INSERT INTO `befiz` VALUES (1006, '2010-02-20 16:36:12',  9000);
INSERT INTO `befiz` VALUES (1007, '2010-02-21 13:44:02', 12000);
INSERT INTO `befiz` VALUES (1005, '2010-03-01 10:49:41',  8000);
INSERT INTO `befiz` VALUES (1007, '2010-03-06 14:52:44', 15000);
INSERT INTO `befiz` VALUES (1009, '2010-04-12 20:21:57', 20000);
INSERT INTO `befiz` VALUES (1004, '2010-05-10 12:00:29',  8000);
INSERT INTO `befiz` VALUES (1006, '2010-06-08 11:10:26',  4000);
INSERT INTO `befiz` VALUES (1010, '2010-06-22 17:22:43',  7000);
INSERT INTO `befiz` VALUES (1010, '2010-07-14 03:35:02',  8500);
INSERT INTO `befiz` VALUES (1012, '2010-07-19 12:48:51', 41000);
INSERT INTO `befiz` VALUES (1004, '2010-09-02 16:51:25', 11000);
INSERT INTO `befiz` VALUES (1006, '2010-09-05 14:34:48', 15000);
INSERT INTO `befiz` VALUES (1007, '2010-09-25 21:16:38',  4000);
INSERT INTO `befiz` VALUES (1012, '2010-10-01 13:13:34', 10000);
INSERT INTO `befiz` VALUES (1010, '2010-10-01 14:29:37',  5000);
INSERT INTO `befiz` VALUES (1012, '2010-10-12 16:54:15',  6000);
INSERT INTO `befiz` VALUES (1007, '2010-11-24 11:02:52', 14000);
INSERT INTO `befiz` VALUES (1009, '2010-11-25 10:48:31', 19000);
INSERT INTO `befiz` VALUES (1007, '2010-11-25 16:01:24', 17000);
INSERT INTO `befiz` VALUES (1002, '2010-11-29 13:34:08', 10000);
INSERT INTO `befiz` VALUES (1010, '2010-11-30 08:27:50', 12000);
INSERT INTO `befiz` VALUES (1004, '2010-12-12 22:02:20', 20000);
INSERT INTO `befiz` VALUES (1009, '2010-12-15 12:28:44', 25000);
INSERT INTO `befiz` VALUES (1002, '2010-12-23 19:42:20',  3000);
INSERT INTO `befiz` VALUES (1005, '2010-12-23 20:33:28',  7500);
INSERT INTO `befiz` VALUES (1002, '2010-12-29 10:00:47', 18000);

-- --------------------------------------------------------

-- 
-- T�bla szerkezet: `ugyfel`
-- 

CREATE TABLE `ugyfel` (
  `azon` int(10) unsigned NOT NULL,
  `nev` varchar(30) NOT NULL,
  `szulev` smallint(4) unsigned NOT NULL,
  `irszam` smallint(4) unsigned NOT NULL,
  `orsz` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- T�bla adatok: `ugyfel`
-- 

INSERT INTO `ugyfel` VALUES (1001, 'Buda Jen�'     , 1982, 1026, 'H'  );
INSERT INTO `ugyfel` VALUES (1002, 'Makkos M�ria'  , 1970, 1128, 'H'  );
INSERT INTO `ugyfel` VALUES (1003, 'Pilis Csaba'   , 1992, 2442, 'H'  );
INSERT INTO `ugyfel` VALUES (1004, 'T�r�k B�lint'  , 1988, 2128, 'H'  );
INSERT INTO `ugyfel` VALUES (1005, 'Szent Endre'   , 1962, 2000, 'H'  );
INSERT INTO `ugyfel` VALUES (1006, 'Kis Marton'    , 1991, 9999, 'A'  );
INSERT INTO `ugyfel` VALUES (1007, 'B�k�s Csaba'   , 1989, 4400, 'H'  );
INSERT INTO `ugyfel` VALUES (1009, 'Dr�va Szabolcs', 1985, 7520, 'H'  );
INSERT INTO `ugyfel` VALUES (1010, 'Nagy K�roly'   , 1975, 9999, 'RO' );
INSERT INTO `ugyfel` VALUES (1012, 'Boros Jen�'    , 1982, 9999, 'RO' );
INSERT INTO `ugyfel` VALUES (1013, 'Sz�va Magdolna', 1987, 9999, 'HR' );
