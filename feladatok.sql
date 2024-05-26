-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 26. 23:03
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
