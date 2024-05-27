-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 27. 10:21
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
-- Adatbázis: `kozgaz_matek_teszt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatok`
--

CREATE TABLE `feladatok` (
  `id` int(11) NOT NULL,
  `temakorID` int(11) DEFAULT NULL,
  `megoldas` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `nehezseg` int(11) NOT NULL,
  `pontszam` int(11) NOT NULL,
  `nev` varchar(250) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `feladat` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL
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
(24, 1, '2', 0, 19899, 'Mi a 2?', '2'),
(25, 6, '1', 1, 12, 'Kis feladat', 'awdwdefgegee'),
(26, 2, '3', 0, 1, 'tzjhztjzjzt', 'wdfewfefegge'),
(38, 16, '12', 1, 12, '12', '12'),
(39, 16, '12', 2, 12, 'e21ed21', 'e1e1'),
(40, 14, '12', 2, 1111, '1213', '3232dewfewf'),
(41, 15, '124', 1, 5, 'reht', 'regre'),
(42, 13, '8', 1, 12, '53534', 'fdbgfrghrtghrt'),
(43, 7, '9', 1, 1, '54', 'ztuzthh'),
(44, 4, '2', 0, 1, 'abcdefghijklmnop', 'abcdefghijklmnopq'),
(45, 5, '2', 0, 1, 'bcdefghijklmnop', 'bcdefghijklmnopq'),
(46, 9, '2', 0, 1, 'cdefghijklmnopq', 'cdefghijklmnopqr'),
(47, 8, '2', 0, 1, 'defghijklmnopqr', 'defghijklmnopqrs'),
(48, 1, '2', 0, 1, 'efghijklmnopqrs', 'efghijklmnopqrst'),
(49, 3, '2', 0, 1, 'fghijklmnopqrst', 'fghijklmnopqrstu'),
(50, 10, '2', 0, 1, 'ghijklmnopqrstu', 'ghijklmnopqrstuv'),
(51, 7, '2', 0, 1, 'hijklmnopqrstuv', 'hijklmnopqrstuvw'),
(52, 6, '2', 0, 1, 'ijklmnopqrstuvw', 'ijklmnopqrstuvwx'),
(53, 2, '2', 0, 1, 'jklmnopqrstuvwx', 'jklmnopqrstuvwxy'),
(54, 4, '2', 0, 1, 'ab', 'abc'),
(55, 5, '2', 0, 1, 'de', 'def'),
(56, 9, '2', 0, 1, 'gh', 'ghi'),
(57, 8, '2', 0, 1, 'ij', 'ijk'),
(58, 1, '2', 0, 1, 'kl', 'lmn'),
(59, 3, '2', 0, 1, 'op', 'pqr'),
(60, 10, '2', 0, 1, 'st', 'tuv'),
(61, 7, '2', 0, 1, 'wx', 'xyz'),
(62, 6, '2', 0, 1, 'yz', 'yza'),
(63, 2, '2', 0, 1, 'ab', 'abc');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `feladatok`
--
ALTER TABLE `feladatok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `feladatok`
--
ALTER TABLE `feladatok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
