-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 28. 13:24
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kozgaz_matek_teszt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatesfeladatsorkapcs`
--

CREATE TABLE `feladatesfeladatsorkapcs` (
  `feladatId` int(11) NOT NULL,
  `feladatsorId` int(11) NOT NULL,
  `FeladatNev` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `feladatesfeladatsorkapcs`
--

INSERT INTO `feladatesfeladatsorkapcs` (`feladatId`, `feladatsorId`, `FeladatNev`) VALUES
(1, 7, 'IgenJa'),
(1, 19, 'asdf'),
(1, 20, 'asdfasdf'),
(1, 21, 'asdf'),
(1, 22, 'asdfxcds'),
(1, 24, 'Teszt43'),
(1, 26, 'pontosan'),
(1, 27, 'fesuhfsheifhsehfisehilf'),
(1, 28, 'Kill bill'),
(1, 30, '111111'),
(1, 31, 'rfrndftfxhb'),
(1, 32, 'feslfsifsefse'),
(2, 7, 'IgenJa'),
(2, 19, 'asdf'),
(2, 20, 'asdfasdf'),
(2, 21, 'asdf'),
(2, 24, 'Teszt43'),
(2, 26, 'pontosan'),
(2, 27, 'fesuhfsheifhsehfisehilf'),
(2, 28, 'Kill bill'),
(2, 31, 'rfrndftfxhb'),
(2, 32, 'feslfsifsefse'),
(3, 7, 'IgenJa'),
(3, 19, 'asdf'),
(3, 20, 'asdfasdf'),
(3, 21, 'asdf'),
(3, 24, 'Teszt43'),
(3, 27, 'fesuhfsheifhsehfisehilf'),
(3, 28, 'Kill bill'),
(3, 29, 'moka es kacagas'),
(3, 31, 'rfrndftfxhb'),
(3, 32, 'feslfsifsefse'),
(4, 7, 'IgenJa'),
(4, 19, 'asdf'),
(4, 20, 'asdfasdf'),
(4, 21, 'asdf'),
(4, 24, 'Teszt43'),
(4, 25, '2024.04.29'),
(4, 26, 'pontosan'),
(4, 27, 'fesuhfsheifhsehfisehilf'),
(4, 28, 'Kill bill'),
(4, 29, 'moka es kacagas'),
(4, 32, 'feslfsifsefse'),
(5, 7, 'IgenJa'),
(5, 19, 'asdf'),
(5, 20, 'asdfasdf'),
(5, 21, 'asdf'),
(5, 24, 'Teszt43'),
(5, 25, '2024.04.29'),
(5, 28, 'Kill bill'),
(5, 29, 'moka es kacagas'),
(5, 32, 'feslfsifsefse'),
(6, 7, 'IgenJa'),
(6, 19, 'asdf'),
(6, 25, '2024.04.29'),
(6, 29, 'moka es kacagas'),
(6, 32, 'feslfsifsefse'),
(7, 7, 'IgenJa'),
(7, 25, '2024.04.29'),
(7, 29, 'moka es kacagas'),
(7, 32, 'feslfsifsefse'),
(8, 25, '2024.04.29'),
(8, 29, 'moka es kacagas'),
(8, 32, 'feslfsifsefse'),
(9, 29, 'moka es kacagas'),
(15, 25, '2024.04.29'),
(19, 25, '2024.04.29');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatesfelhasznalokapcs`
--

CREATE TABLE `feladatesfelhasznalokapcs` (
  `feladatsorId` int(11) NOT NULL,
  `felhasznaloId` int(11) NOT NULL,
  `megoldasiIdo` time DEFAULT NULL,
  `pontszam` int(11) DEFAULT NULL,
  `szazalek` int(11) DEFAULT NULL,
  `megoldasdatum` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `feladatesfelhasznalokapcs`
--

INSERT INTO `feladatesfelhasznalokapcs` (`feladatsorId`, `felhasznaloId`, `megoldasiIdo`, `pontszam`, `szazalek`, `megoldasdatum`) VALUES
(7, 26, '00:00:11', 61, 71, '2024-05-28 10:08:19'),
(25, 1, '00:00:05', 5, 6, '2024-05-01 10:18:52'),
(26, 1, '00:00:44', 10, 100, '2024-05-09 17:46:57');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatok`
--

CREATE TABLE `feladatok` (
  `id` int(11) NOT NULL,
  `temakorID` int(11) DEFAULT NULL,
  `megoldas` varchar(150) NOT NULL,
  `nehezseg` int(11) NOT NULL,
  `pontszam` int(11) NOT NULL,
  `nev` varchar(250) DEFAULT NULL,
  `feladat` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `feladatok`
--

INSERT INTO `feladatok` (`id`, `temakorID`, `megoldas`, `nehezseg`, `pontszam`, `nev`, `feladat`) VALUES
(1, 1, 'teszt', 0, 0, 'Probafeladat', 'khdjahdjkhakdajh'),
(2, 8, '12', 1, 5, '2006 máj.6 1.', 'van egy vagy két hármoszög oké?'),
(3, 11, '12', 0, 5, '2005 máj.6 13.', 'van egy vagy két gúla oké?'),
(4, 2, '1', 7, 5, '2012 máj.6 13.', '2x=2'),
(5, 10, '12', 3, 5, '2021 máj.12 15.', 'van egy vagy két négyzet oké?'),
(6, 17, '12', 2, 51, '2021 máj.12 15.', 'van egy vagy két négyzet oké?'),
(7, 4, '12', 0, 15, 'Ez egy feladat', '$\\frac{-b\\pm\\sqrt{b^2-4ac}}{2a}$'),
(8, 14, '$2^3$*3*7*11', 0, 2, '2023. október 17. (I.) 1.feladat', 'Adja meg az 1848 prímtényezős felbontását!'),
(9, 15, '10', 0, 2, '2023. október 17. (I.) 2.feladat', 'Egy építkezésre teherautókkal szállítják a homokot. Öt egyforma teherautó mindegyikének nyolcszor kellene fordulnia, hogy az összes homokot odaszállítsák. Hány fordulóval\r\ntudná odaszállítani ugyanezt a mennyiségű homokot négy ugyanekkora teherautó?'),
(10, 7, '$C', 0, 2, '2023. október 17. (I.) 4.feladat', 'Válassza ki az alábbi, a valós számok halmazán értelmezett függvények közül azt,\r\namelyik nem vesz fel negatív értéket! A válasz formátuma a következő: Pl.: A'),
(11, 15, '300FT', 0, 2, '2023. október 17. (I.) 5.feladat', 'Egy autók bérbeadásával foglalkozó cég honlapja szerint ha legfeljebb 5 napra bérlünk\r\negy bizonyos típust, akkor a bérlés díja 7500 Ft/nap. Ha legalább 6 napra béreljük\r\nugyanezt a típust, akkor a bérlés díja csak 6300 Ft/nap.\r\nMennyivel magasabb a teljes bérleti díj, ha 5 nap helyett 6 napra béreljük ezt a típust? A válasz formátuma: 100FT'),
(12, 15, '300FT', 0, 2, '2023. október 17. (I.) 5.feladat', 'Egy autók bérbeadásával foglalkozó cég honlapja szerint ha legfeljebb 5 napra bérlünk\r\negy bizonyos típust, akkor a bérlés díja 7500 Ft/nap. Ha legalább 6 napra béreljük\r\nugyanezt a típust, akkor a bérlés díja csak 6300 Ft/nap.\r\nMennyivel magasabb a teljes bérleti díj, ha 5 nap helyett 6 napra béreljük ezt a típust? A válasz formátuma: 100FT'),
(13, 15, '3244', 1, 8, 'felfsf', 'fhleífhshf'),
(14, 15, '32442', 2, 8, 'felfsfhguihidru', 'fhleífhshf'),
(15, 15, '32442', 3, 8, 'felfsfhguihidruzt', 'fhleífhshf'),
(16, 15, '32442', 2, 8, 'felfsfhguihidruzt1', 'fhleífhshf'),
(17, 15, '32442', 2, 8, 'felfsfhguihidruzt2', 'fhleífhshf'),
(18, 15, '32442', 1, 8, 'felfsfhguihidruzt25', 'fhleífhshf'),
(19, 10, '1', 1, 1, 'Próba', '$log_2(5)=0$'),
(21, 1, '12', 0, 12, '12', '12'),
(22, 2, 'hamis', 0, 1, 'Teszt-2024.05.01', '$lg(2)$ + 30 = 25'),
(23, 1, '12', 1, 12, '13', '12'),
(24, 16, '12', 1, 5000, 'feladat 45md', 'aklhdhawkdhakhwdkjawhkldwa'),
(25, 1, '4', 0, 5, 'János', 'Oldd meg az egyenletet: 2 + 2 = ?'),
(26, 1, '15', 0, 5, 'Katalin', 'Számold ki: 10 + 5 = ?'),
(27, 1, '9', 0, 5, 'Péter', 'Mi az eredmény: 3 * 3 = ?'),
(28, 1, '12', 0, 5, 'Anna', 'Oldd meg: 6 * 2 = ?'),
(29, 1, '5', 0, 5, 'Gábor', 'Számold ki: 10 / 2 = ?'),
(30, 1, '7', 0, 5, 'Zsófia', 'Oldd meg: 14 / 2 = ?'),
(31, 1, '6', 0, 5, 'Miklós', 'Mi az eredmény: 2 * 3 = ?'),
(32, 1, '8', 0, 5, 'Eszter', 'Számold ki: 4 + 4 = ?'),
(33, 1, '3', 0, 5, 'Tibor', 'Oldd meg: 9 - 6 = ?'),
(34, 1, '10', 0, 5, 'Zoltán', 'Számold ki: 5 + 5 = ?'),
(35, 1, '0', 0, 5, 'Márta', 'Mi az eredmény: 7 - 7 = ?'),
(36, 1, '2', 0, 5, 'Balázs', 'Oldd meg: 1 + 1 = ?'),
(37, 1, '18', 0, 5, 'Judit', 'Számold ki: 9 * 2 = ?'),
(38, 1, '20', 0, 5, 'Tamás', 'Oldd meg: 10 * 2 = ?'),
(39, 1, '6', 0, 5, 'Ilona', 'Mi az eredmény: 12 / 2 = ?'),
(40, 1, '1', 0, 5, 'Ferenc', 'Számold ki: 7 - 6 = ?'),
(41, 1, '14', 0, 5, 'László', 'Oldd meg: 7 * 2 = ?'),
(42, 1, '16', 0, 5, 'Éva', 'Mi az eredmény: 8 + 8 = ?'),
(43, 1, '4', 0, 5, 'Bence', 'Számold ki: 2 * 2 = ?'),
(44, 1, '9', 0, 5, 'Réka', 'Oldd meg: 3 * 3 = ?'),
(45, 1, '5', 0, 5, 'Béla', 'Számold ki: 2 + 3 = ?'),
(46, 1, '6', 0, 5, 'Dóra', 'Oldd meg: 3 * 2 = ?'),
(47, 1, '7', 0, 5, 'Erik', 'Mi az eredmény: 10 - 3 = ?'),
(48, 1, '9', 0, 5, 'Fanni', 'Számold ki: 4 + 5 = ?'),
(49, 1, '8', 0, 5, 'Gergő', 'Oldd meg: 16 / 2 = ?'),
(50, 1, '4', 0, 5, 'Hanna', 'Mi az eredmény: 2 + 2 = ?'),
(51, 1, '12', 0, 5, 'Imre', 'Számold ki: 3 * 4 = ?'),
(52, 1, '15', 0, 5, 'Judit', 'Oldd meg: 5 * 3 = ?'),
(53, 1, '6', 0, 5, 'Kinga', 'Mi az eredmény: 8 - 2 = ?'),
(54, 1, '2', 0, 5, 'Lajos', 'Számold ki: 4 / 2 = ?'),
(55, 1, '7', 0, 5, 'Mária', 'Oldd meg: 14 / 2 = ?'),
(56, 1, '10', 0, 5, 'Nóra', 'Mi az eredmény: 5 * 2 = ?'),
(57, 1, '8', 0, 5, 'Olivér', 'Számold ki: 4 * 2 = ?'),
(58, 1, '1', 0, 5, 'Petra', 'Oldd meg: 7 - 6 = ?'),
(59, 1, '18', 0, 5, 'Róbert', 'Mi az eredmény: 6 * 3 = ?'),
(60, 1, '20', 0, 5, 'Sára', 'Számold ki: 10 * 2 = ?'),
(61, 1, '11', 0, 5, 'Tamás', 'Oldd meg: 8 + 3 = ?'),
(62, 1, '4', 0, 5, 'Viktor', 'Mi az eredmény: 8 - 4 = ?'),
(63, 1, '2', 0, 5, 'Zsófia', 'Számold ki: 1 + 1 = ?'),
(64, 1, '14', 0, 5, 'Ádám', 'Oldd meg: 7 * 2 = ?');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatsor`
--

CREATE TABLE `feladatsor` (
  `id` int(11) NOT NULL,
  `idoKorlat` time NOT NULL,
  `dolgozatE` int(11) NOT NULL,
  `tanarId` int(11) NOT NULL,
  `hatarido` date DEFAULT NULL,
  `osztaly` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `feladatsor`
--

INSERT INTO `feladatsor` (`id`, `idoKorlat`, `dolgozatE`, `tanarId`, `hatarido`, `osztaly`) VALUES
(2, '02:20:00', 1, 1, '2022-02-02', NULL),
(3, '10:23:00', 1, 1, '1011-10-10', '12C'),
(4, '02:20:00', 1, 1, '2020-02-20', '12C'),
(5, '01:10:00', 1, 1, '1010-10-10', '12C'),
(6, '03:00:00', 1, 1, '0000-00-00', '12C'),
(7, '06:37:00', 1, 1, '4343-04-03', '12C'),
(8, '03:20:00', 1, 1, '2024-05-03', '12C'),
(9, '03:30:00', 1, 1, '2024-04-30', '12C'),
(10, '05:32:00', 1, 1, '3223-03-31', '12C'),
(11, '20:20:00', 1, 1, '2020-02-20', '12C'),
(12, '20:20:00', 1, 1, '2020-02-20', '12C'),
(13, '00:23:00', 1, 1, '3232-03-02', '12C'),
(14, '23:00:00', 1, 1, '0000-00-00', '12C'),
(15, '07:59:00', 1, 1, '7677-07-06', '12C'),
(16, '03:32:00', 1, 1, '3232-03-02', '12C'),
(18, '20:20:00', 1, 1, '2002-02-20', '12C'),
(19, '11:11:00', 1, 1, '0000-00-00', '12C'),
(20, '04:34:00', 1, 1, '0000-00-00', '12C'),
(21, '23:42:00', 1, 1, '0000-00-00', '12C'),
(22, '04:23:00', 0, 1, '0000-00-00', '12C'),
(24, '03:03:00', 1, 1, '3033-03-30', '12C'),
(25, '10:10:00', 1, 1, '2024-05-10', '12C'),
(26, '00:01:00', 0, 1, '2024-05-01', '12C'),
(27, '00:01:00', 1, 1, '2024-05-24', '12C'),
(28, '01:10:00', 0, 1, '0000-00-00', 'undefined'),
(29, '00:10:00', 0, 1, '0000-00-00', 'undefined'),
(30, '11:11:00', 0, 1, '1111-11-11', 'undefined'),
(31, '22:02:00', 1, 1, '0000-00-00', '12C'),
(32, '11:23:00', 0, 1, '0000-00-00', '12C');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhaszesfeladkapcs`
--

CREATE TABLE `felhaszesfeladkapcs` (
  `felhasznaloId` int(11) NOT NULL,
  `feladatId` int(11) NOT NULL,
  `megoldIdo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhaszesfeladkapcs`
--

INSERT INTO `felhaszesfeladkapcs` (`felhasznaloId`, `feladatId`, `megoldIdo`) VALUES
(1, 1, '2024-05-23 15:16:00'),
(1, 2, '2024-03-25 11:33:00'),
(1, 3, '2024-03-25 11:43:00'),
(1, 4, '2024-05-15 10:37:00'),
(1, 6, '2024-04-05 08:09:00'),
(1, 12, '2024-05-18 19:59:00'),
(1, 19, '2024-04-15 10:24:00'),
(1, 21, '2024-05-15 10:37:00'),
(4, 1, '2024-05-02 15:09:00'),
(16, 12, '2024-04-15 10:20:00'),
(34, 1, '2024-05-04 17:05:00'),
(34, 21, '2024-05-04 17:05:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `jelszo` varchar(150) NOT NULL,
  `felhasznaloNev` varchar(40) NOT NULL,
  `jog` int(11) NOT NULL,
  `osztaly` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `email`, `jelszo`, `felhasznaloNev`, `jog`, `osztaly`) VALUES
(1, 'balint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'bujdosobalint', 1, '12C'),
(2, 'balint7584@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'tuntu', 0, '12C'),
(4, 'balint75841@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'admin_11', 0, 'nan'),
(8, 'flsfejs@gmail.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'balin_t18', 0, '12C'),
(9, 'bali42nt@gmail.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Bal_int1', 0, '12C'),
(12, 'szab.eman@alma.hu', '5d546560c6bf78fc7df8aa986c11c71cf7f83bcf3058bd9b1e8b1c56d0f5b852', 'almaa', 0, '12C'),
(13, 'balint1@gmail.com', 'f0e4c2f76c58916ec258f246851bea091d14d4247a2fc3e18694461b1816e13b', 'balintZ', 0, '12C'),
(14, 'bar487594lint@gmail.com', 'c6b27d53202d02ed1ec21445f40f65c6d40174986ccc140fcdaa69e07e9718de', 'balint8695', 0, '12C'),
(15, 'hasbula3@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint597834', 0, '11A'),
(16, 'alma@alma.com', '7eb9425d6911e079bb8571a7705877cbc6c59ee0746c9912577c71a91aec55f6', 'alma2', 0, '12C'),
(17, 'balinfhkslbghft@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'kapitany7584', 0, '12C'),
(18, 'gvrsjn@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'heewgofz2', 0, '12A'),
(19, 'balint753284@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint56566565', 0, '12C'),
(20, 'ba43432lint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint65', 0, '12B'),
(21, 'bali78953nt7584@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'gjdklgdn54', 0, '12C'),
(22, 'bali45nt@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'TRza1', 0, '12C'),
(23, 'balahaint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'videoinfo1', 0, '12C'),
(24, 'bali7843nt@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'kurvaanyad', 0, '12C'),
(25, 'b2323alint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'joLesz1', 0, '12C'),
(26, 'ba3232lint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint6748', 0, '12C'),
(27, 'bali32nt@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'miertnemjo1', 0, '12C'),
(28, 'baewrwlint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'jkjrg5632', 0, '12C'),
(29, 'b323alint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'ztrui54', 0, '12C'),
(30, 'balin2w12t7584@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'namivan23', 0, '12C'),
(31, 'ba343lint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'mostmarJO1', 0, '12C'),
(32, 'zsofika@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'Zsófika10', 0, '12C'),
(34, 'fbsek@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'BalintVok0', 0, '12C');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osztalyok`
--

CREATE TABLE `osztalyok` (
  `id` int(11) NOT NULL,
  `osztaly` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `osztalyok`
--

INSERT INTO `osztalyok` (`id`, `osztaly`) VALUES
(1, '9A'),
(2, '9B'),
(3, '9C'),
(4, '10A'),
(5, '10B'),
(6, '10C'),
(7, '11A'),
(8, '11B'),
(9, '11C'),
(10, '12A'),
(11, '12B'),
(12, '12C'),
(13, '12K'),
(14, '13');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `temakor`
--

CREATE TABLE `temakor` (
  `id` int(11) NOT NULL,
  `temakor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `temakor`
--

INSERT INTO `temakor` (`id`, `temakor`) VALUES
(1, 'Abszolútérték, gyök'),
(2, 'Bizonyítások'),
(3, 'Egyenletek, egyenlőtlenségek, egyenletrendszerek'),
(4, 'Egyszerűsítések, átalakítások'),
(5, 'Értelmezési tartomány, értékkészlet'),
(6, 'Exponenciális és logaritmusos feladatok'),
(7, 'Függvények, analízis'),
(8, 'Halmazok'),
(9, 'Kombinatorika'),
(10, 'Logika, gráfok'),
(11, 'Síkgeometria'),
(12, 'Sorozatok'),
(13, 'Statisztika'),
(14, 'Számelmélet'),
(15, 'Szöveges feladatok'),
(16, 'Térgeometria'),
(17, 'Trigonometria'),
(18, 'Valószínűségszámítás');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `feladatesfeladatsorkapcs`
--
ALTER TABLE `feladatesfeladatsorkapcs`
  ADD PRIMARY KEY (`feladatId`,`feladatsorId`),
  ADD KEY `feladatsorId` (`feladatsorId`);

--
-- A tábla indexei `feladatesfelhasznalokapcs`
--
ALTER TABLE `feladatesfelhasznalokapcs`
  ADD PRIMARY KEY (`feladatsorId`,`felhasznaloId`),
  ADD KEY `felhasznaloId` (`felhasznaloId`);

--
-- A tábla indexei `feladatok`
--
ALTER TABLE `feladatok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `feladatsor`
--
ALTER TABLE `feladatsor`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `felhaszesfeladkapcs`
--
ALTER TABLE `felhaszesfeladkapcs`
  ADD PRIMARY KEY (`felhasznaloId`,`feladatId`),
  ADD KEY `feladatId` (`feladatId`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `osztalyok`
--
ALTER TABLE `osztalyok`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `temakor`
--
ALTER TABLE `temakor`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `feladatok`
--
ALTER TABLE `feladatok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT a táblához `feladatsor`
--
ALTER TABLE `feladatsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT a táblához `osztalyok`
--
ALTER TABLE `osztalyok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `temakor`
--
ALTER TABLE `temakor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `feladatesfeladatsorkapcs`
--
ALTER TABLE `feladatesfeladatsorkapcs`
  ADD CONSTRAINT `feladatesfeladatsorkapcs_ibfk_1` FOREIGN KEY (`feladatId`) REFERENCES `feladatok` (`id`),
  ADD CONSTRAINT `feladatesfeladatsorkapcs_ibfk_2` FOREIGN KEY (`feladatsorId`) REFERENCES `feladatsor` (`id`);

--
-- Megkötések a táblához `feladatesfelhasznalokapcs`
--
ALTER TABLE `feladatesfelhasznalokapcs`
  ADD CONSTRAINT `feladatesfelhasznalokapcs_ibfk_1` FOREIGN KEY (`feladatsorId`) REFERENCES `feladatsor` (`id`),
  ADD CONSTRAINT `feladatesfelhasznalokapcs_ibfk_2` FOREIGN KEY (`felhasznaloId`) REFERENCES `felhasznalok` (`id`);

--
-- Megkötések a táblához `felhaszesfeladkapcs`
--
ALTER TABLE `felhaszesfeladkapcs`
  ADD CONSTRAINT `felhaszesfeladkapcs_ibfk_1` FOREIGN KEY (`felhasznaloId`) REFERENCES `felhasznalok` (`id`),
  ADD CONSTRAINT `felhaszesfeladkapcs_ibfk_2` FOREIGN KEY (`feladatId`) REFERENCES `feladatok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
