-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Ápr 05. 06:43
-- Kiszolgáló verziója: 5.7.14
-- PHP verzió: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kike_201105_nyilvantartas`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `barlang`
--

CREATE TABLE `barlang` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `hossz` double DEFAULT NULL,
  `kiterjedes` double DEFAULT NULL,
  `melyseg` double DEFAULT NULL,
  `magassag` double DEFAULT NULL,
  `telepules` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `barlang`
--

INSERT INTO `barlang` (`id`, `nev`, `hossz`, `kiterjedes`, `melyseg`, `magassag`, `telepules`) VALUES
(1, 'Soproni Zsivány-barlang', 110, 12, 12, 0, 'Fertőrákos'),
(2, 'Abaligeti-barlang', 1712, 48.7, 10, 38.7, 'Abaliget'),
(3, 'Duó-zsomboly', 62.8, 31, 31, 0, 'Pécs'),
(4, 'Remény-zsomboly', 60, 51.5, 51.5, 0, 'Orfű'),
(5, 'Spirál-víznyelő', 850, 86.4, 86.4, 0, 'Pécs'),
(6, 'Büdöskúti-zsomboly', 40, 20.5, 20.5, 0, 'Pécs'),
(7, 'Korall-zsomboly', 25, 17.8, 17.8, 0, 'Mánfa'),
(8, 'Tettyei-forrásbarlang', 40, 17, 16, 1, 'Pécs'),
(9, 'Mánfai-kőlyuk', 310, 12, 4.3, 7.7, 'Mánfa'),
(10, 'Orfűi Vízfő-barlang', 328.5, 27, 1, 26, 'Orfű'),
(11, 'Mészégető-források-barlangja', 279, 14.5, 1.4, 13.1, 'Orfű'),
(12, 'Vásáros-úti-zsomboly', 76.2, 31.5, 29.5, 2, 'Orfű'),
(13, 'Szuadó-völgyi-víznyelőbarlang', 345.4, 52, 52, 0, 'Orfű'),
(14, 'Trió-barlang', 250, 58, 58, 0, 'Orfű'),
(15, 'Madárka-zsomboly', 42.4, 18.3, 18.3, 0, 'Orfű'),
(16, 'Beremendi-kristálybarlang', 850, 53, 38, 15, 'Beremend'),
(17, 'Nagyharsányi-kristálybarlang', 600, 60, 59, 1, 'Nagyharsány'),
(18, 'Hajszabarnai Pénz-lik', 120, 18.5, 13, 5.5, 'Bakonyjákó'),
(19, 'Kőris-hegyi-ördöglik', 64, 36, 36, 0, 'Bakonyszücs'),
(20, 'Pipa-zsomboly', 125, 48.2, 48.2, 0, 'Zirc'),
(21, 'Bükkös-árki-barlang', 73.2, 31.1, 31.1, 0, 'Isztimér'),
(22, 'Alba Regia-barlang', 3600, 200.2, 200.2, 0, 'Isztimér'),
(23, 'Háromkürtő-zsomboly', 360, 105, 105, 0, 'Tés'),
(24, 'Bongó-zsomboly', 136.7, 35.4, 35.4, 0, 'Bakonynána'),
(25, 'Őskarszt-akna', 53, 40, 40, 0, 'Tés'),
(26, 'Csengő-zsomboly', 210.3, 133.9, 133.9, 0, 'Olaszfalu'),
(27, 'Jubileumi-zsomboly', 222.2, 121, 121, 0, 'Tés'),
(28, 'Csipkés-zsomboly', 180, 72.5, 72.5, 0, 'Tés'),
(29, 'Tábla-völgyi-barlang', 350, 78, 78, 0, 'Tés'),
(30, 'Szelelő-lyuk', 261.3, 25, 25, 0, 'Tés'),
(31, 'Károlyházi-nyelő barlangja', 100, 65, 65, 0, 'Csesznek'),
(32, 'Szentgáli-kőlik', 420, 43.7, 39, 4.7, 'Szentgál'),
(33, 'Tűzköves-hegyi-barlang', 156.3, 15.8, 5.4, 10.4, 'Szentgál'),
(34, 'Cserszegtomaji-kútbarlang', 3320, 12, 10, 2, 'Cserszegtomaj'),
(35, 'Acheron-kútbarlang', 215, 3.5, 0, 3.5, 'Cserszegtomaj'),
(36, 'Csodabogyós-barlang', 5200, 121, 121, 0, 'Balatonederics'),
(37, 'Döme-barlang', 354, 109.4, 108, 1.4, 'Balatonederics'),
(38, 'Jakucs László-barlang', 154, 24.5, 24.5, 0, 'Balatonederics'),
(39, 'Szél-lik', 212.7, 40, 40, 0, 'Balatonederics'),
(40, 'Tapolcai-tavasbarlang', 3280, 22, 22, 0, 'Tapolca'),
(41, 'Tapolcai Kórház-barlang', 2280, 36.8, 34.8, 2, 'Tapolca'),
(42, 'Berger Károly-barlang', 1070, 14.7, 14.7, 0, 'Tapolca'),
(43, 'Gánti-barlang', 149, 14.6, 14, 0.6, 'Gánt'),
(44, 'Vértessomlói-barlang', 110, 36, 36, 0, 'Vértessomló'),
(45, 'Keselő-hegyi-barlang', 400, 115, 115, 0, 'Tatabánya'),
(46, 'Keselő-hegyi 11. sz. barlang', 183.5, 66.8, 66.8, 0, 'Tatabánya'),
(47, 'Keselő-hegyi 2. sz. barlang', 150, 57, 33, 24, 'Tatabánya'),
(48, 'Kálvária-hegyi 1. sz. barlang', 100, 10, 10, 0, 'Tatabánya'),
(49, 'Kálvária-hegyi 2. sz. barlang', 34, 4.2, 1.7, 2.5, 'Tatabánya'),
(50, 'Keselő-hegyi 4. sz. barlang', 68.8, 62.5, 35.5, 27, 'Tatabánya'),
(51, 'Keselő-hegyi 21. sz. barlang', 20.5, 8, 6.2, 1.8, 'Tatabánya'),
(52, 'Tűzköves-barlang', 47.3, 21.5, 21.5, 0, 'Süttő'),
(53, 'Jura-zsomboly', 137.8, 52.1, 52.1, 0, 'Süttő'),
(54, 'Legyes-barlang', 0, 33.2, 33.2, 0, 'Süttő'),
(55, 'Lengyel-barlang', 585, 70, 70, 0, 'Tatabánya'),
(56, 'Vértes László-barlang', 163.7, 58.5, 58.5, 0, 'Vértesszőlős'),
(57, 'Veres-hegyi-barlang', 182.5, 45, 45, 0, 'Tatabánya'),
(58, 'Tükör-forrási-barlang', 30, 24, 24, 0, 'Tata'),
(59, 'Angyal-forrási-barlang', 48, 10, 10, 0, 'Tata'),
(60, 'Kullancsos-barlang', 165, 41.5, 41.5, 0, 'Baj'),
(61, 'Megalodus-barlang', 261, 24.1, 20.5, 3.6, 'Tata'),
(62, 'Bartha-kútbarlang', 59.3, 20.3, 20.3, 0, 'Tata'),
(63, 'Gorba-tetői-barlang', 55, 26.5, 26.5, 0, 'Tardos'),
(64, 'Pisznice-barlang', 560, 20, 5, 15, 'Lábatlan'),
(65, 'Pisznicei Határ-barlang', 69.5, 12.6, 7.8, 4.8, 'Lábatlan'),
(66, 'Pisznicei-zsomboly', 37.5, 26, 26, 0, 'Lábatlan'),
(67, 'Lábatlani Sárkány-lyuk', 65, 20, 6, 14, 'Lábatlan'),
(68, 'Bajóti Büdös-lyuk', 50.3, 11.3, 11.3, 0, 'Bajót'),
(69, 'Öreg-kői 1. sz. zsomboly', 115, 34, 34, 0, 'Bajót'),
(70, 'Dorogi 9. sz. kaverna', 80, 0, 0, 0, 'Dorog'),
(71, 'Dorogi 10. sz. kaverna', 70, 0, 0, 0, 'Dorog'),
(72, 'Tokodi vízakna hasadékbarlangja', 0, 0, 0, 0, 'Tokod'),
(73, 'Babál-barlang', 128.7, 20, 10, 10, 'Sárisáp'),
(74, 'Bátori-barlang', 360, 56, 50, 6, 'Budapest'),
(75, 'Gellért-hegyi-aragonitbarlang', 25, 11, 0, 11, 'Budapest'),
(76, 'Ördögárok utcai-barlang', 45.1, 21, 21, 0, 'Budapest'),
(77, 'Rácskai-barlang', 100, 34, 31, 3, 'Budapest'),
(78, 'Budai Vár-barlang', 3300, 15, 15, 0, 'Budapest'),
(79, 'Pálvölgyi-Mátyáshegyi-barlangrendszer', 19000, 122.6, 94.9, 27.7, 'Budapest'),
(80, 'Szemlő-hegyi-barlang', 2201, 50.4, 11.1, 39.3, 'Budapest'),
(81, 'Látó-hegyi-barlang', 58, 21, 17, 4, 'Budapest'),
(82, 'Ferenc-hegyi-barlang', 6500, 85, 85, 0, 'Budapest'),
(83, 'Harcsaszájú-Hideglyuk-barlangrendszer', 7000, 93, 80, 13, 'Budapest'),
(84, 'Molnár János-barlang', 6000, 128.6, 98.6, 30, 'Budapest'),
(85, 'Bekey-barlang', 173, 39.6, 39.6, 0, 'Budapest'),
(86, 'József-hegyi-barlang', 5677, 105.8, 105.8, 0, 'Budapest'),
(87, 'József-hegyi 2-3. sz. barlang', 80, 40, 40, 0, 'Budapest'),
(88, 'Barit-barlang', 215, 20.8, 9.9, 10.9, 'Budapest'),
(89, 'Tábor-hegyi-barlang', 162, 21.9, 16.6, 5.3, 'Budapest'),
(90, 'Solymári-ördöglyuk', 5550, 78, 78, 0, 'Solymár'),
(91, 'Róka-hegyi-barlang', 87, 38.7, 38.7, 0, 'Üröm'),
(92, 'Amfiteátrum-barlang', 294, 76, 76, 0, 'Üröm'),
(93, 'Ürömi-víznyelőbarlang', 214, 28.4, 26.3, 2.1, 'Üröm'),
(94, 'Porhintő-barlang', 30, 20, 20, 0, 'Üröm'),
(95, 'Papp Ferenc-barlang', 400, 66, 66, 0, 'Pilisborosjenő'),
(96, 'Szabó József-barlang', 152.2, 18.3, 15.8, 2.5, 'Budakalász'),
(97, 'Pomázi kőfejtő Felső-barlangja', 300, 45, 45, 0, 'Pomáz'),
(98, 'Amazonok-barlangja', 141, 12.6, 12.6, 0, 'Pomáz'),
(99, 'Arany-lyuk', 92, 42, 42, 0, 'Budakalász'),
(100, 'Leány-Legény-Ariadne-barlangrendszer', 5050, 119, 58, 61, 'Pilisszentlélek'),
(101, 'Nagy-Somlyóhegyi-barlang', 90, 52.5, 50.5, 2, 'Pilisjászfalu'),
(102, 'Szent Özséb-barlang', 800, 82, 82, 0, 'Pilisszentkereszt'),
(103, 'Szopláki-ördöglyuk', 220, 37.6, 37.6, 0, 'Pilisszentkereszt'),
(104, 'Pilis-barlang', 470, 45, 6, 39, 'Pilisszentkereszt'),
(105, 'Ajándék-barlang', 500, 58.4, 57.2, 1.2, 'Pilisszentkereszt'),
(106, 'Sátorkőpusztai-barlang', 354, 61.4, 49.3, 12.1, 'Esztergom'),
(107, 'Strázsa-hegyi-barlang', 60, 25, 16, 9, 'Esztergom'),
(108, 'Kis-Strázsa-hegyi-hasadékbarlang', 80, 20, 20, 0, 'Esztergom'),
(109, 'Széchy Dénes-barlang', 50, 10, 2, 8, 'Esztergom'),
(110, 'Naszályi-víznyelőbarlang', 1900, 173, 173, 0, 'Vác'),
(111, 'Nincskegyelem-aknabarlang', 224, 71, 71, 0, 'Vác'),
(112, 'Násznép-barlang', 222.5, 19.7, 7.5, 12.2, 'Kosd'),
(113, 'Nézsai-víznyelőbarlang', 393.5, 55.7, 55.7, 0, 'Nézsa'),
(114, 'Csörgő-lyuk', 428, 29.6, 29.6, 0, 'Mátraszentimre'),
(115, 'Diabáz-barlang', 1000, 161, 161, 0, 'Miskolc'),
(116, 'Szalajka-forrásbarlang', 100, 20, 20, 0, 'Szilvásvárad'),
(117, 'Kis-kőháti-zsomboly', 479, 117, 117, 0, 'Nagyvisnyó'),
(118, 'Esztáz-kői-barlang', 160, 33.5, 18, 15.5, 'Felsőtárkány'),
(119, 'Gyurkó-lápai-barlang', 181.2, 45, 39.3, 5.7, 'Varbó'),
(120, 'Szamentu-barlang', 944.7, 42, 36.9, 5.1, 'Varbó'),
(121, 'Három-kúti-barlang', 89, 19.3, 4.7, 14.6, 'Miskolc'),
(122, 'Lilla-barlang', 225, 20.3, 19.1, 1.2, 'Parasznya'),
(123, 'Bronzika-barlang', 337.5, 27.2, 24.8, 2.4, 'Miskolc'),
(124, 'Kő-lyuk', 623, 30.6, 19, 11.6, 'Parasznya'),
(125, 'Hillebrand Jenő-barlang', 240, 24.1, 16.2, 7.9, 'Parasznya'),
(126, 'Szeleta-zsomboly', 645, 101.5, 101.5, 0, 'Miskolc'),
(127, 'Vénusz-barlang', 637, 37.6, 18.4, 19.2, 'Parasznya'),
(128, 'Szent István-barlang', 1445, 93.8, 16.8, 77, 'Miskolc'),
(129, 'Jáspis-barlang', 830, 193, 193, 0, 'Miskolc'),
(130, 'Garadna-forrásbarlang', 7, 4.5, 4.5, 0, 'Hámor'),
(131, 'Szirén-barlang', 700, 45, 42, 3, 'Miskolc'),
(132, 'Létrási-vizesbarlang', 3000, 67.8, 57.8, 10, 'Miskolc'),
(133, 'Szepesi-Láner-barlangrendszer', 2500, 159.3, 159.3, 0, 'Miskolc'),
(134, 'Bányász-barlang', 120, 89, 89, 0, 'Miskolc'),
(135, 'Bolhási-Jávorkúti-barlangrendszer', 5314, 132, 125.5, 6.5, 'Miskolc'),
(136, 'Speizi-barlang', 715, 101, 101, 0, 'Miskolc'),
(137, 'Borókás-tebri 4. sz. víznyelőbarlang', 550, 96, 96, 0, 'Miskolc'),
(138, 'István-lápai-barlang', 7300, 254, 254, 0, 'Miskolc'),
(139, 'Borókás-tebri 2. sz. víznyelőbarlang', 503, 95, 95, 0, 'Miskolc'),
(140, 'Fekete-barlang', 2200, 174, 174, 0, 'Miskolc'),
(141, 'Vesszős-gerinci-barlang', 221.4, 6.8, 6.8, 0, 'Miskolc'),
(142, 'Balekina-barlang', 600, 90, 90, 0, 'Miskolc'),
(143, 'Pénz-pataki-víznyelőbarlang', 1989, 155.5, 150, 5.5, 'Bükkszentkereszt'),
(144, 'Hajnóczy-barlang', 4257, 125, 81.3, 43.7, 'Cserépfalu'),
(145, 'Anna-barlang', 568, 14, 4.5, 9.5, 'Hámor'),
(146, 'Diósgyőrtapolcai-barlang', 87.8, 9, 3.8, 5.2, 'Miskolc'),
(147, 'Vár-tetői-barlang', 550, 101.8, 101.8, 0, 'Miskolc'),
(148, 'Tatár-árki-barlang', 156, 39, 35, 4, 'Miskolc'),
(149, 'Fecske-lyuk', 210, 26.9, 9.3, 17.6, 'Miskolc'),
(150, 'Nagykőmázsa-oldali-zsomboly', 90, 32, 32, 0, 'Miskolc'),
(151, 'Viktória-barlang', 723.4, 41.5, 41.5, 0, 'Miskolc'),
(152, 'Mexikó-völgyi-víznyelőbarlang', 414, 79, 79, 0, 'Miskolc'),
(153, 'Esztramosi Földvári Aladár-barlang', 190, 7.1, 7.1, 0, 'Bódvarákó'),
(154, 'Rákóczi 3. sz. barlang', 150, 34, 27, 7, 'Tornaszentandrás'),
(155, 'Rákóczi-oldaltáró-barlangja', 170, 29.2, 10.4, 18.8, 'Tornaszentandrás'),
(156, 'Rákóczi 1. sz. barlang', 650, 79, 61, 18, 'Tornaszentandrás'),
(157, 'Rákóczi 2. sz. barlang', 533.3, 53, 53, 0, 'Tornaszentandrás'),
(158, 'Esztramosi Felső-táró 2. sz. ürege', 46, 23, 0, 23, 'Tornaszentandrás'),
(159, 'Baradla-barlang', 20500, 112, 86, 26, 'Jósvafő'),
(160, 'Imolai-ördöglyuk', 53.3, 33.9, 30, 3.9, 'Imola'),
(161, 'Béke-barlang', 7183, 97, 71, 26, 'Aggtelek'),
(162, 'Teresztenyei-forrásbarlang', 80, 8, 0, 8, 'Teresztenye'),
(163, 'Szabadság-barlang', 3030, 48.5, 30.4, 18.1, 'Égerszög'),
(164, 'Danca-barlang', 1390, 30, 0, 30, 'Égerszög'),
(165, 'Baradla-tetői-zsomboly', 387, 87, 87, 0, 'Aggtelek'),
(166, 'Baradla Hosszú-Alsó-barlang', 127, 17.1, 10.8, 6.3, 'Jósvafő'),
(167, 'Kossuth-barlang', 1610, 60, 32, 28, 'Jósvafő'),
(168, 'Vass Imre-barlang', 2185, 56.6, 12.8, 43.8, 'Jósvafő'),
(169, 'Csapás-tetői-barlang', 33, 18, 18, 0, 'Szinpetri'),
(170, 'Rejtek-zsomboly', 450, 66.5, 66.5, 0, 'Szögliget'),
(171, 'Hosszú-tetői-barlang', 40, 8, 3, 5, 'Szögliget'),
(172, 'Magas-tetői-barlang', 168.5, 39.5, 34.1, 5.4, 'Szögliget'),
(173, 'Bába-völgyi 2. sz. víznyelő barlangja', 70, 22, 22, 0, 'Szögliget'),
(174, 'Frank-barlang', 182.2, 46.7, 46.7, 0, 'Bódvaszilas'),
(175, 'Csörgő-forrásbarlang', 120, 0, 0, 0, 'Szögliget'),
(176, 'Meteor-barlang', 1672, 127, 127, 0, 'Bódvaszilas'),
(177, 'Kopasz-vigasz-barlang', 220, 37, 37, 0, 'Bódvaszilas'),
(178, 'Almási-zsomboly', 358, 100, 100, 0, 'Bódvaszilas'),
(179, 'Szabó-pallagi-zsomboly', 1035, 151, 151, 0, 'Bódvaszilas'),
(180, 'Vecsembükki-zsomboly', 900, 236, 236, 0, 'Bódvaszilas'),
(181, 'Kopaszgally-oldali 2. sz. víznyelőbarlang', 450, 118, 118, 0, 'Bódvaszilas'),
(182, 'Széki-zsomboly', 120, 51.5, 51.5, 0, 'Bódvaszilas');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `barlang`
--
ALTER TABLE `barlang`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `barlang`
--
ALTER TABLE `barlang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
