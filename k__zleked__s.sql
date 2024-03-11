-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 11. 13:14
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `közlekedés`
--
CREATE DATABASE IF NOT EXISTS `közlekedés` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `közlekedés`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jármű`
--

DROP TABLE IF EXISTS `jármű`;
CREATE TABLE `jármű` (
  `id` int(11) NOT NULL,
  `típus` varchar(10) DEFAULT NULL CHECK (`típus` in ('HÉV','Busz','Trolibusz','Metró','Villamos')),
  `gyártási_év` date DEFAULT NULL,
  `gyártmány` varchar(20) DEFAULT NULL,
  `üzemeltető` varchar(7) DEFAULT NULL CHECK (`üzemeltető` in ('BKK','MÁV-HÉV')),
  `akadalymentesitett` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `jármű`
--

INSERT INTO `jármű` (`id`, `típus`, `gyártási_év`, `gyártmány`, `üzemeltető`, `akadalymentesitett`) VALUES
(1, 'Busz', '2024-10-23', 'Ikarus', 'BKK', 1),
(2, 'Trolibusz', '2024-05-19', 'Ikarus', 'BKK', 0),
(3, 'Busz', '2024-01-11', 'Mercedes', 'BKK', 1),
(4, 'Busz', '2024-01-21', 'Ikarus', 'BKK', 0),
(5, 'Trolibusz', '2024-04-16', 'Ikarus', 'BKK', 0),
(6, 'Busz', '2024-02-08', 'Mercedes', 'BKK', 0),
(7, 'Villamos', '2024-09-09', 'Siemens', 'BKK', 0),
(8, 'Metró', '2024-07-08', 'Alstom', 'BKK', 1),
(9, 'Metró', '2024-06-30', 'Alstom', 'BKK', 0),
(10, 'Busz', '2024-07-21', 'Ikarus', 'BKK', 1),
(11, 'Trolibusz', '2024-10-15', 'Solaris', 'BKK', 0),
(12, 'Trolibusz', '2024-09-26', 'Solaris', 'BKK', 1),
(13, 'Busz', '2024-09-22', 'MAN', 'BKK', 1),
(14, 'Busz', '2024-08-15', 'Ikarus', 'BKK', 1),
(15, 'Trolibusz', '2024-05-12', 'Solaris', 'BKK', 1),
(16, 'Busz', '2024-06-30', 'MAN', 'BKK', 1),
(17, 'Metró', '2024-12-11', 'Alstom', 'BKK', 0),
(18, 'Trolibusz', '2024-07-26', 'Ikarus', 'BKK', 0),
(19, 'Busz', '2024-10-09', 'Ikarus', 'BKK', 0),
(20, 'Metró', '2024-03-24', 'Metrovagonmas', 'BKK', 0),
(21, 'Trolibusz', '2024-05-12', 'Ikarus', 'BKK', 0),
(22, 'Metró', '2024-07-13', 'Alstom', 'BKK', 1),
(23, 'Metró', '2024-08-18', 'Metrovagonmas', 'BKK', 0),
(24, 'Busz', '2024-03-25', 'Solaris', 'BKK', 0),
(25, 'Busz', '2024-09-03', 'Solaris', 'BKK', 1),
(26, 'Busz', '2024-12-17', 'Mercedes', 'BKK', 1),
(27, 'Metró', '2024-05-22', 'Alstom', 'BKK', 1),
(28, 'HÉV', '2024-01-09', 'Alstom', 'MÁV-HÉV', 0),
(29, 'Metró', '2024-04-02', 'Metrovagonmas', 'BKK', 0),
(30, 'Villamos', '2024-01-26', 'Caf', 'BKK', 1),
(31, 'Busz', '2024-07-30', 'MAN', 'BKK', 1),
(32, 'Trolibusz', '2024-12-08', 'Ikarus', 'BKK', 0),
(33, 'Villamos', '2024-06-13', 'Siemens', 'BKK', 1),
(34, 'Villamos', '2024-01-02', 'Caf', 'BKK', 1),
(35, 'Metró', '2024-06-23', 'Alstom', 'BKK', 0),
(36, 'Busz', '2024-11-01', 'MAN', 'BKK', 0),
(37, 'HÉV', '2024-02-01', 'Alstom', 'MÁV-HÉV', 1),
(38, 'Villamos', '2024-06-23', 'Siemens', 'BKK', 1),
(39, 'HÉV', '2024-10-22', 'Bombardier', 'MÁV-HÉV', 0),
(40, 'Trolibusz', '2024-02-27', 'Ikarus', 'BKK', 1),
(41, 'Trolibusz', '2024-03-04', 'Solaris', 'BKK', 1),
(42, 'Metró', '2024-10-29', 'Metrovagonmas', 'BKK', 1),
(43, 'Villamos', '2024-03-10', 'Caf', 'BKK', 1),
(44, 'Villamos', '2024-08-16', 'Caf', 'BKK', 1),
(45, 'Busz', '2024-09-20', 'Ikarus', 'BKK', 0),
(46, 'Villamos', '2024-04-21', 'Caf', 'BKK', 0),
(47, 'Metró', '2024-03-16', 'Alstom', 'BKK', 0),
(48, 'Busz', '2024-06-24', 'MAN', 'BKK', 0),
(49, 'HÉV', '2024-04-15', 'Alstom', 'MÁV-HÉV', 0),
(50, 'Metró', '2024-12-28', 'Ganz', 'BKK', 1),
(51, 'Trolibusz', '2024-05-03', 'Solaris', 'BKK', 0),
(52, 'HÉV', '2024-11-01', 'Bombardier', 'MÁV-HÉV', 0),
(53, 'Villamos', '2024-02-04', 'Siemens', 'BKK', 1),
(54, 'Busz', '2024-11-15', 'Ikarus', 'BKK', 0),
(55, 'Villamos', '2024-04-12', 'Caf', 'BKK', 0),
(56, 'HÉV', '2024-09-05', 'Bombardier', 'MÁV-HÉV', 1),
(57, 'Busz', '2024-04-21', 'Mercedes', 'BKK', 0),
(58, 'Busz', '2024-12-05', 'Solaris', 'BKK', 1),
(59, 'Trolibusz', '2024-05-17', 'Ikarus', 'BKK', 1),
(60, 'Villamos', '2024-01-18', 'Caf', 'BKK', 0),
(61, 'Villamos', '2024-10-22', 'Caf', 'BKK', 1),
(62, 'Trolibusz', '2024-04-03', 'Solaris', 'BKK', 1),
(63, 'Villamos', '2024-03-08', 'Siemens', 'BKK', 1),
(64, 'Metró', '2024-10-22', 'Ganz', 'BKK', 0),
(65, 'Villamos', '2024-05-01', 'Caf', 'BKK', 0),
(66, 'Villamos', '2024-04-23', 'Siemens', 'BKK', 0),
(67, 'Villamos', '2024-04-08', 'Siemens', 'BKK', 1),
(68, 'Metró', '2024-12-18', 'Alstom', 'BKK', 0),
(69, 'Trolibusz', '2024-06-27', 'Solaris', 'BKK', 1),
(70, 'Busz', '2024-07-06', 'Mercedes', 'BKK', 0),
(71, 'Metró', '2024-10-15', 'Metrovagonmas', 'BKK', 1),
(72, 'Metró', '2024-06-16', 'Alstom', 'BKK', 1),
(73, 'Trolibusz', '2024-01-13', 'Solaris', 'BKK', 1),
(74, 'Busz', '2024-09-07', 'MAN', 'BKK', 1),
(75, 'Villamos', '2024-01-08', 'Caf', 'BKK', 1),
(76, 'Villamos', '2024-06-21', 'Siemens', 'BKK', 1),
(77, 'HÉV', '2024-06-16', 'Bombardier', 'MÁV-HÉV', 0),
(78, 'Metró', '2024-07-01', 'Alstom', 'BKK', 1),
(79, 'Busz', '2024-06-21', 'Ikarus', 'BKK', 0),
(80, 'Villamos', '2024-04-06', 'Caf', 'BKK', 0),
(81, 'Trolibusz', '2024-03-16', 'Ikarus', 'BKK', 0),
(82, 'Villamos', '2024-12-28', 'Caf', 'BKK', 1),
(83, 'Busz', '2024-05-17', 'Ikarus', 'BKK', 0),
(84, 'Trolibusz', '2024-03-02', 'Ikarus', 'BKK', 1),
(85, 'HÉV', '2024-02-22', 'Bombardier', 'MÁV-HÉV', 1),
(86, 'Trolibusz', '2024-09-30', 'Ikarus', 'BKK', 1),
(87, 'Trolibusz', '2024-03-08', 'Ikarus', 'BKK', 0),
(88, 'Metró', '2024-03-02', 'Alstom', 'BKK', 0),
(89, 'HÉV', '2024-01-07', 'Bombardier', 'MÁV-HÉV', 0),
(90, 'Villamos', '2024-05-16', 'Caf', 'BKK', 0),
(91, 'HÉV', '2024-10-01', 'Alstom', 'MÁV-HÉV', 0),
(92, 'Trolibusz', '2024-10-20', 'Solaris', 'BKK', 1),
(93, 'Trolibusz', '2024-11-15', 'Solaris', 'BKK', 1),
(94, 'Trolibusz', '2024-06-16', 'Solaris', 'BKK', 1),
(95, 'Busz', '2024-04-02', 'MAN', 'BKK', 1),
(96, 'Busz', '2024-06-17', 'Solaris', 'BKK', 0),
(97, 'Trolibusz', '2024-01-07', 'Ikarus', 'BKK', 1),
(98, 'Metró', '2024-08-04', 'Alstom', 'BKK', 1),
(99, 'Busz', '2024-04-22', 'Mercedes', 'BKK', 1),
(100, 'Busz', '2024-01-13', 'Ikarus', 'BKK', 1),
(101, 'Busz', '2024-05-07', 'MAN', 'BKK', 0),
(102, 'Busz', '2024-06-09', 'MAN', 'BKK', 1),
(103, 'Metró', '2024-01-09', 'Alstom', 'BKK', 0),
(104, 'Trolibusz', '2024-08-30', 'Solaris', 'BKK', 1),
(105, 'Trolibusz', '2024-02-19', 'Ikarus', 'BKK', 1),
(106, 'Busz', '2024-12-05', 'Mercedes', 'BKK', 1),
(107, 'Busz', '2024-10-11', 'Mercedes', 'BKK', 1),
(108, 'Trolibusz', '2024-05-15', 'Solaris', 'BKK', 1),
(109, 'Metró', '2024-08-05', 'Metrovagonmas', 'BKK', 1),
(110, 'Villamos', '2024-10-16', 'Siemens', 'BKK', 0),
(111, 'Metró', '2024-04-28', 'Metrovagonmas', 'BKK', 0),
(112, 'Villamos', '2024-09-17', 'Caf', 'BKK', 1),
(113, 'Metró', '2024-12-07', 'Alstom', 'BKK', 1),
(114, 'Busz', '2024-01-30', 'Mercedes', 'BKK', 0),
(115, 'Villamos', '2024-09-08', 'Siemens', 'BKK', 0),
(116, 'Villamos', '2024-04-15', 'Caf', 'BKK', 1),
(117, 'Metró', '2024-10-30', 'Alstom', 'BKK', 1),
(118, 'Villamos', '2024-03-30', 'Caf', 'BKK', 0),
(119, 'Trolibusz', '2024-05-22', 'Solaris', 'BKK', 0),
(120, 'Metró', '2024-10-15', 'Alstom', 'BKK', 0),
(121, 'Villamos', '2024-08-15', 'Siemens', 'BKK', 0),
(122, 'Busz', '2024-08-11', 'Ikarus', 'BKK', 0),
(123, 'HÉV', '2024-05-09', 'Alstom', 'MÁV-HÉV', 1),
(124, 'Trolibusz', '2024-08-31', 'Ikarus', 'BKK', 0),
(125, 'Villamos', '2024-11-03', 'Caf', 'BKK', 0),
(126, 'Trolibusz', '2024-10-28', 'Solaris', 'BKK', 0),
(127, 'Trolibusz', '2024-12-19', 'Ikarus', 'BKK', 1),
(128, 'Busz', '2024-06-28', 'MAN', 'BKK', 1),
(129, 'Metró', '2024-06-16', 'Metrovagonmas', 'BKK', 1),
(130, 'HÉV', '2024-06-07', 'Alstom', 'MÁV-HÉV', 1),
(131, 'Villamos', '2024-10-05', 'Siemens', 'BKK', 0),
(132, 'Trolibusz', '2024-06-30', 'Ikarus', 'BKK', 1),
(133, 'Busz', '2024-04-17', 'MAN', 'BKK', 1),
(134, 'Metró', '2024-07-01', 'Ganz', 'BKK', 1),
(135, 'HÉV', '2024-01-25', 'Alstom', 'MÁV-HÉV', 0),
(136, 'Busz', '2024-10-07', 'Ikarus', 'BKK', 0),
(137, 'Trolibusz', '2024-12-15', 'Ikarus', 'BKK', 1),
(138, 'Metró', '2024-11-21', 'Ganz', 'BKK', 1),
(139, 'Busz', '2024-02-12', 'Solaris', 'BKK', 1),
(140, 'Villamos', '2024-10-11', 'Siemens', 'BKK', 1),
(141, 'Metró', '2024-04-17', 'Metrovagonmas', 'BKK', 1),
(142, 'Metró', '2024-05-21', 'Ganz', 'BKK', 0),
(143, 'Villamos', '2024-06-27', 'Siemens', 'BKK', 1),
(144, 'Villamos', '2024-02-18', 'Caf', 'BKK', 1),
(145, 'HÉV', '2024-04-10', 'Siemens', 'MÁV-HÉV', 1),
(146, 'Trolibusz', '2024-02-06', 'Ikarus', 'BKK', 1),
(147, 'Metró', '2024-09-15', 'Alstom', 'BKK', 0),
(148, 'Trolibusz', '2024-01-15', 'Ikarus', 'BKK', 1),
(149, 'Busz', '2024-09-04', 'Solaris', 'BKK', 0),
(150, 'HÉV', '2024-04-28', 'Siemens', 'MÁV-HÉV', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `megálló`
--

DROP TABLE IF EXISTS `megálló`;
CREATE TABLE `megálló` (
  `id` int(11) NOT NULL,
  `név` varchar(50) DEFAULT NULL,
  `akadalymentesitett` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `megálló`
--

INSERT INTO `megálló` (`id`, `név`, `akadalymentesitett`) VALUES
(1, 'Csepel, Szent Imre tér', 0),
(2, 'Széll Kálmán tér', 1),
(3, 'Bikás park', 1),
(4, 'Kelenföld vasútállomás', 0),
(5, 'Kelenföld vasútállomás M', 0),
(6, 'Batthyány tér M+H', 1),
(7, 'Újpalota, Nyírpalota út', 1),
(8, 'Móricz Zsigmond körtér M', 0),
(9, 'Kistarcsa, kórház', 0),
(10, 'Örs vezér tere', 0),
(11, 'Mexikói út M', 0),
(12, 'Cinkota, Lassú utca', 0),
(13, 'Ilonatelep', 0),
(14, 'Rákóczi tér', 1),
(15, 'Megyer, Szondi utca', 1),
(16, 'Aquincum', 0),
(17, 'Örs vezér tere M+H', 0),
(18, 'Opera', 0),
(19, 'Svábhegy', 0),
(20, 'Puskás Ferenc stadion', 0),
(21, 'Szentjakab', 1),
(22, 'Bajcsy-Zsilinszky út', 0),
(23, 'Hősök tere', 1),
(24, 'II. János Pál pápa tér', 0),
(25, 'Kodály körönd', 0),
(26, 'Sashalom', 0),
(27, 'Budakalász, Lenfonó', 0),
(28, 'Szépvölgyi út', 1),
(29, 'Batthyány tér', 1),
(30, 'Széll Kálmán tér M', 0),
(31, 'Gödöllő, Erzsébet park', 0),
(32, 'Arany János utca', 0),
(33, 'Kaszásdűlő', 0),
(34, 'Csepel, Csillagtelep', 0),
(35, 'Mátyásföld, Imre utca', 0),
(36, 'Kőbánya-Kispest', 0),
(37, 'Mexikói út', 1),
(38, 'Boráros tér H', 1),
(39, 'Gyöngyösi utca M', 0),
(40, 'Mogyoród', 0),
(41, 'Tímár utca', 1),
(42, 'Nyugati pályaudvar M', 0),
(43, 'Szent Gellért tér - Műegyetem', 1),
(44, 'Pasaréti tér', 1),
(45, 'Göncz Árpád városközpont', 1),
(46, 'Deák Ferenc tér', 1),
(47, 'Békásmegyer', 0),
(48, 'Hűvösvölgy', 1),
(49, 'Péterimajor', 1),
(50, 'Semmelweis Klinikák', 1),
(51, 'Nagytétény-Diósd vasútállomás', 0),
(52, 'Budakalász', 0),
(53, 'Szentistvántelep', 1),
(54, 'Mátyásföld, repülőtér', 0),
(55, 'Gödöllő', 0),
(56, 'Szilasliget', 1),
(57, 'Mátyásföld alsó', 0),
(58, 'Nagyvárad tér', 1),
(59, 'Széchenyi fürdő', 1),
(60, 'Szentlélek tér', 0),
(61, 'Móricz Zsigmond körtér', 0),
(62, 'Kőbánya alsó vasútállomás', 1),
(63, 'Filatorigát', 0),
(64, 'Határ út', 0),
(65, 'Keleti pályaudvar M', 1),
(66, 'Rákospalota', 1),
(67, 'Árpádföld', 1),
(68, 'Dísz tér', 1),
(69, 'Szebeni utca', 0),
(70, 'Göncz Árpád városközpont M', 0),
(71, 'Cinkota alsó', 0),
(72, 'Forgách utca', 1),
(73, 'Szent Imre tér', 0),
(74, 'Budatétény vasútállomás (Campona)', 0),
(75, 'Ferenciek tere', 1),
(76, 'Karácsony Sándor utca', 0),
(77, 'Gyál', 1),
(78, 'Astoria', 0),
(79, 'Nyugati pályaudvar', 1),
(80, 'Keleti pályaudvar', 0),
(81, 'Vörösmarty tér', 1),
(82, 'Ecseri út', 1),
(83, 'Cinkotai autóbuszgarázs', 1),
(84, 'Közvágóhíd', 1),
(85, 'Pestszentimre', 0),
(86, 'Gödöllő, Szabadság tér', 0),
(87, 'Nagyicce', 0),
(88, 'Rákosfalva', 1),
(89, 'Blaha Lujza tér', 1),
(90, 'Újbuda-központ', 0),
(91, 'Kistarcsa', 1),
(92, 'Oktogon', 0),
(93, 'Szentlélek tér H', 0),
(94, 'Nagybányai út', 0),
(95, 'Vecsési út', 0),
(96, 'Szigetszentmiklós, városháza', 1),
(97, 'Deák Ferenc tér M', 0),
(98, 'Margit híd, budai hídfő', 0),
(99, 'Normafa', 1),
(100, 'Centenáriumi lakótelep', 1),
(101, 'Kissvábhegy', 1),
(102, 'Káposztásmegyer, Szilas-patak', 1),
(103, 'Gazdagréti tér', 1),
(104, 'Dózsa György út', 1),
(105, 'Szentendre', 0),
(106, 'Újpest-Városkapu', 0),
(107, 'Újpest-központ M', 1),
(108, 'Budaörsi lakótelep', 1),
(109, 'Déli pályaudvar', 1),
(110, 'Csepel', 1),
(111, 'Boráros tér', 1),
(112, 'Lakihegy, Cseresznyés utca', 0),
(113, 'Szentlőrinci úti lakótelep', 0),
(114, 'Lehel tér', 0),
(115, 'Cinkota', 0),
(116, 'Fővám tér', 0),
(117, 'Blaha Lujza tér M', 1),
(118, 'Vörösmarty utca', 0),
(119, 'Csillaghegy', 1),
(120, 'Mindszenty József bíboros tér', 0),
(121, 'Kén utca', 1),
(122, 'Bajza utca', 1),
(123, 'Újpest-Központ', 1),
(124, 'Budakeszi, Dózsa György tér', 0),
(125, 'Diósd, Búzavirág utca', 1),
(126, 'Rákoskeresztúr', 1),
(127, 'Szabadkikötő', 1),
(128, 'Szabadságtelep', 1),
(129, 'Zsófialiget', 0),
(130, 'Pestszentlőrinc vasútállomás', 1),
(131, 'Kerepes', 1),
(132, 'Óbuda, Bogdáni út', 0),
(133, 'Békásmegyer, Újmegyeri tér', 0),
(134, 'Kossuth utca', 1),
(135, 'Káposztásmegyer, Mogyoródi-patak', 1),
(136, 'Pannóniatelep', 0),
(137, 'Pöttyös utca', 1),
(138, 'Hungexpo', 0),
(139, 'Pesterzsébet felső', 1),
(140, 'Gödöllő, Palotakert', 0),
(141, 'Építész utca', 0),
(142, 'Margitsziget', 0),
(143, 'Pillangó utca', 1),
(144, 'Újbuda-központ M', 1),
(145, 'Kálvin tér', 1),
(146, 'Corvin-negyed', 0),
(147, 'Budakeszi, Tesco áruház', 1),
(148, 'Sánc utca', 0),
(149, 'Rómaifürdő', 0),
(150, 'Gyöngyösi utca', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menetrend`
--

DROP TABLE IF EXISTS `menetrend`;
CREATE TABLE `menetrend` (
  `járatszam` varchar(4) DEFAULT NULL,
  `dátum` date DEFAULT NULL,
  `indul` time DEFAULT NULL,
  `érkezik` time DEFAULT NULL,
  `jármű_id` int(11) DEFAULT NULL,
  `megálló_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `menetrend`
--

INSERT INTO `menetrend` (`járatszam`, `dátum`, `indul`, `érkezik`, `jármű_id`, `megálló_id`) VALUES
('944', '2024-05-02', '22:11:00', '22:07:00', 134, 60),
('37', '2024-12-11', '13:34:00', '13:28:00', 94, 120),
('869', '2024-02-07', '22:15:00', '22:07:00', 141, 149),
('50', '2024-06-16', '00:01:00', '00:00:00', 148, 96),
('983', '2024-02-21', '08:11:00', '08:10:00', 131, 109),
('485', '2024-10-23', '08:17:00', '08:16:00', 119, 55),
('224', '2024-06-30', '16:12:00', '16:05:00', 8, 143),
('167', '2024-02-24', '16:45:00', '16:40:00', 103, 19),
('99', '2024-06-01', '01:29:00', '01:21:00', 109, 66),
('416', '2024-07-14', '06:08:00', '06:03:00', 84, 23),
('351', '2024-05-27', '17:58:00', '17:57:00', 3, 115),
('931', '2024-12-01', '04:46:00', '04:45:00', 144, 128),
('580', '2024-05-29', '09:19:00', '09:17:00', 1, 5),
('723', '2024-09-25', '18:14:00', '18:10:00', 147, 83),
('572', '2024-12-05', '05:46:00', '05:41:00', 135, 118),
('845', '2024-05-15', '09:00:00', '08:56:00', 14, 95),
('64', '2024-12-23', '04:14:00', '04:12:00', 94, 20),
('865', '2024-12-13', '22:20:00', '22:12:00', 1, 5),
('480', '2024-12-04', '02:45:00', '02:36:00', 30, 140),
('223', '2024-12-31', '18:51:00', '18:44:00', 42, 116),
('543', '2024-10-27', '01:55:00', '01:47:00', 137, 40),
('719', '2024-07-26', '07:13:00', '07:11:00', 96, 53),
('501', '2024-03-13', '01:31:00', '01:30:00', 34, 93),
('218', '2024-05-30', '17:04:00', '17:02:00', 70, 118),
('201', '2024-03-26', '08:45:00', '08:41:00', 14, 145),
('632', '2024-05-22', '03:11:00', '03:09:00', 83, 41),
('538', '2024-09-30', '17:00:00', '16:52:00', 63, 18),
('663', '2024-07-21', '20:22:00', '20:21:00', 35, 4),
('38', '2024-04-13', '20:58:00', '20:50:00', 30, 99),
('153', '2024-04-20', '03:19:00', '03:11:00', 73, 37),
('677', '2024-01-20', '06:44:00', '06:35:00', 45, 143),
('800', '2024-06-06', '07:11:00', '07:09:00', 140, 90),
('201', '2024-09-30', '04:48:00', '04:44:00', 25, 129),
('581', '2024-11-20', '11:48:00', '11:41:00', 144, 135),
('624', '2024-05-18', '23:23:00', '23:20:00', 15, 44),
('898', '2024-06-27', '13:41:00', '13:38:00', 12, 123),
('78', '2024-07-28', '12:39:00', '12:32:00', 112, 107),
('727', '2024-09-17', '23:11:00', '23:02:00', 77, 123),
('630', '2024-04-09', '23:50:00', '23:46:00', 12, 112),
('239', '2024-12-06', '17:24:00', '17:15:00', 53, 79),
('809', '2024-06-06', '16:44:00', '16:35:00', 117, 70),
('418', '2024-11-15', '12:12:00', '12:09:00', 60, 24),
('625', '2024-05-05', '21:14:00', '21:11:00', 111, 57),
('464', '2024-02-08', '02:03:00', '02:00:00', 21, 45),
('184', '2024-09-26', '15:39:00', '15:33:00', 63, 92),
('675', '2024-07-14', '13:52:00', '13:47:00', 57, 22),
('884', '2024-09-13', '09:32:00', '09:31:00', 82, 19),
('924', '2024-06-08', '08:11:00', '08:07:00', 111, 140),
('746', '2024-03-08', '19:52:00', '19:42:00', 27, 44),
('124', '2024-11-25', '04:30:00', '04:24:00', 17, 19),
('433', '2024-01-15', '13:16:00', '13:14:00', 137, 134),
('746', '2024-11-04', '07:42:00', '07:34:00', 97, 57),
('559', '2024-06-26', '10:50:00', '10:43:00', 105, 150),
('28', '2024-05-04', '14:47:00', '14:42:00', 72, 141),
('683', '2024-07-12', '21:38:00', '21:33:00', 17, 98),
('413', '2024-01-30', '10:24:00', '10:21:00', 80, 72),
('222', '2024-03-11', '06:55:00', '06:46:00', 139, 114),
('769', '2024-04-08', '13:34:00', '13:28:00', 148, 88),
('809', '2024-01-28', '01:09:00', '01:02:00', 144, 139),
('626', '2024-06-25', '18:11:00', '18:10:00', 98, 103),
('106', '2024-03-01', '06:06:00', '05:58:00', 51, 41),
('214', '2024-09-24', '21:23:00', '21:15:00', 29, 132),
('714', '2024-08-24', '02:04:00', '02:00:00', 125, 10),
('906', '2024-09-05', '11:58:00', '11:48:00', 18, 10),
('370', '2024-08-07', '15:13:00', '15:03:00', 53, 109),
('156', '2024-06-29', '18:11:00', '18:02:00', 111, 68),
('473', '2024-08-31', '11:01:00', '10:52:00', 63, 106),
('375', '2024-03-31', '06:48:00', '06:42:00', 73, 16),
('413', '2024-02-06', '03:23:00', '03:21:00', 105, 27),
('276', '2024-07-31', '17:32:00', '17:30:00', 55, 131),
('894', '2024-02-17', '21:17:00', '21:16:00', 101, 130),
('364', '2024-07-03', '03:01:00', '02:51:00', 147, 6),
('126', '2024-09-25', '10:40:00', '10:34:00', 61, 130),
('957', '2024-09-07', '21:28:00', '21:26:00', 88, 114),
('948', '2024-09-24', '08:44:00', '08:41:00', 105, 85),
('265', '2024-02-13', '22:57:00', '22:50:00', 99, 34),
('162', '2024-07-30', '18:50:00', '18:49:00', 3, 125),
('642', '2024-08-19', '15:13:00', '15:04:00', 65, 41),
('636', '2024-12-09', '24:01:00', '23:56:00', 27, 112),
('661', '2024-12-24', '13:25:00', '13:15:00', 142, 114),
('130', '2024-05-20', '23:07:00', '23:06:00', 79, 96),
('94', '2024-12-22', '12:26:00', '12:25:00', 40, 121),
('497', '2024-06-13', '16:02:00', '16:00:00', 70, 111),
('843', '2024-04-02', '17:32:00', '17:25:00', 52, 41),
('858', '2024-03-10', '19:13:00', '19:11:00', 70, 77),
('738', '2024-08-24', '12:44:00', '12:41:00', 2, 121),
('22', '2024-12-26', '06:30:00', '06:25:00', 106, 87),
('203', '2024-06-21', '12:08:00', '11:59:00', 97, 120),
('798', '2024-05-13', '09:14:00', '09:09:00', 98, 123),
('855', '2024-11-02', '23:14:00', '23:09:00', 55, 148),
('776', '2024-06-21', '08:28:00', '08:18:00', 125, 146),
('40', '2024-03-24', '10:04:00', '09:57:00', 36, 149),
('417', '2024-07-28', '08:42:00', '08:34:00', 88, 57),
('731', '2024-06-08', '18:49:00', '18:41:00', 115, 74),
('637', '2024-02-21', '22:36:00', '22:30:00', 143, 66),
('28', '2024-09-16', '04:05:00', '03:58:00', 55, 10),
('514', '2024-02-26', '05:00:00', '04:50:00', 77, 55),
('490', '2024-04-09', '16:27:00', '16:19:00', 127, 14),
('444', '2024-06-28', '00:13:00', '00:06:00', 70, 150),
('78', '2024-06-08', '05:53:00', '05:45:00', 126, 143);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `jármű`
--
ALTER TABLE `jármű`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `megálló`
--
ALTER TABLE `megálló`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `menetrend`
--
ALTER TABLE `menetrend`
  ADD KEY `jármű_id` (`jármű_id`),
  ADD KEY `megálló_id` (`megálló_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `jármű`
--
ALTER TABLE `jármű`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT a táblához `megálló`
--
ALTER TABLE `megálló`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `menetrend`
--
ALTER TABLE `menetrend`
  ADD CONSTRAINT `menetrend_ibfk_1` FOREIGN KEY (`jármű_id`) REFERENCES `jármű` (`id`),
  ADD CONSTRAINT `menetrend_ibfk_2` FOREIGN KEY (`megálló_id`) REFERENCES `megálló` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
