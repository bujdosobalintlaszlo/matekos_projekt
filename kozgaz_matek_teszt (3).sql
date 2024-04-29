-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 01:00 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kozgaz_matek_teszt`
--

-- --------------------------------------------------------

--
-- Table structure for table `feladatesfeladatsorkapcs`
--

CREATE TABLE `feladatesfeladatsorkapcs` (
  `feladatId` int(11) NOT NULL,
  `feladatsorId` int(11) NOT NULL,
  `FeladatNev` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `feladatesfeladatsorkapcs`
--

INSERT INTO `feladatesfeladatsorkapcs` (`feladatId`, `feladatsorId`, `FeladatNev`) VALUES
(1, 7, 'IgenJa'),
(1, 19, 'asdf'),
(1, 20, 'asdfasdf'),
(1, 21, 'asdf'),
(1, 22, 'asdfxcds'),
(1, 24, 'Teszt43'),
(2, 7, 'IgenJa'),
(2, 19, 'asdf'),
(2, 20, 'asdfasdf'),
(2, 21, 'asdf'),
(2, 24, 'Teszt43'),
(3, 7, 'IgenJa'),
(3, 19, 'asdf'),
(3, 20, 'asdfasdf'),
(3, 21, 'asdf'),
(3, 24, 'Teszt43'),
(4, 7, 'IgenJa'),
(4, 19, 'asdf'),
(4, 20, 'asdfasdf'),
(4, 21, 'asdf'),
(4, 24, 'Teszt43'),
(5, 7, 'IgenJa'),
(5, 19, 'asdf'),
(5, 20, 'asdfasdf'),
(5, 21, 'asdf'),
(5, 24, 'Teszt43'),
(6, 7, 'IgenJa'),
(6, 19, 'asdf'),
(7, 7, 'IgenJa');

-- --------------------------------------------------------

--
-- Table structure for table `feladatesfelhasznalokapcs`
--

CREATE TABLE `feladatesfelhasznalokapcs` (
  `feladatsorId` int(11) NOT NULL,
  `felhasznaloId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feladatok`
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
-- Dumping data for table `feladatok`
--

INSERT INTO `feladatok` (`id`, `temakorID`, `megoldas`, `nehezseg`, `pontszam`, `nev`, `feladat`) VALUES
(1, 1, 'teszt', 0, 0, 'Probafeladat', 'khdjahdjkhakdajh'),
(2, 8, '12', 1, 5, '2006 máj.6 1.', 'van egy vagy két hármoszög oké?'),
(3, 11, '12', 0, 5, '2005 máj.6 13.', 'van egy vagy két gúla oké?'),
(4, 2, '1', 7, 5, '2012 máj.6 13.', '2x=2'),
(5, 10, '12', 3, 5, '2021 máj.12 15.', 'van egy vagy két négyzet oké?'),
(6, 17, '12', 2, 51, '2021 máj.12 15.', 'van egy vagy két négyzet oké?'),
(7, 4, '12', 0, 15, 'Ez egy feladat', 'When $a \ne 0$, there are two solutions to (ax^2 + bx + c = 0) and they are\n$x = {-b pm sqrt{b^2-4ac} over 2a}.$'),
(8, 14, '$2^3$*3*7*11', 0, 2, '2023. október 17. (I.) 1.feladat', 'Adja meg az 1848 prímtényezős felbontását!'),
(9, 15, '10', 0, 2, '2023. október 17. (I.) 2.feladat', 'Egy építkezésre teherautókkal szállítják a homokot. Öt egyforma teherautó mindegyikének nyolcszor kellene fordulnia, hogy az összes homokot odaszállítsák. Hány fordulóval\r\ntudná odaszállítani ugyanezt a mennyiségű homokot négy ugyanekkora teherautó?'),
(10, 7, '$C', 0, 2, '2023. október 17. (I.) 4.feladat', 'Válassza ki az alábbi, a valós számok halmazán értelmezett függvények közül azt,\r\namelyik nem vesz fel negatív értéket! A válasz formátuma a következő: Pl.: A'),
(11, 15, '300FT', 0, 2, '2023. október 17. (I.) 5.feladat', 'Egy autók bérbeadásával foglalkozó cég honlapja szerint ha legfeljebb 5 napra bérlünk\r\negy bizonyos típust, akkor a bérlés díja 7500 Ft/nap. Ha legalább 6 napra béreljük\r\nugyanezt a típust, akkor a bérlés díja csak 6300 Ft/nap.\r\nMennyivel magasabb a teljes bérleti díj, ha 5 nap helyett 6 napra béreljük ezt a típust? A válasz formátuma: 100FT'),
(12, 15, '300FT', 0, 2, '2023. október 17. (I.) 5.feladat', 'Egy autók bérbeadásával foglalkozó cég honlapja szerint ha legfeljebb 5 napra bérlünk\r\negy bizonyos típust, akkor a bérlés díja 7500 Ft/nap. Ha legalább 6 napra béreljük\r\nugyanezt a típust, akkor a bérlés díja csak 6300 Ft/nap.\r\nMennyivel magasabb a teljes bérleti díj, ha 5 nap helyett 6 napra béreljük ezt a típust? A válasz formátuma: 100FT'),
(13, 15, '3244', 1, 89234, 'felfsf', 'fhleífhshf'),
(14, 15, '32442', 2, 89234, 'felfsfhguihidru', 'fhleífhshf'),
(15, 15, '32442', 3, 89234, 'felfsfhguihidruzt', 'fhleífhshf'),
(16, 15, '32442', 2, 89234, 'felfsfhguihidruzt1', 'fhleífhshf'),
(17, 15, '32442', 2, 89234, 'felfsfhguihidruzt2', 'fhleífhshf'),
(18, 15, '32442', 1, 89234, 'felfsfhguihidruzt25', 'fhleífhshf'),
(19, 10, '1', 1, 1, 'Próba', '$log_2(5)=0$');

-- --------------------------------------------------------

--
-- Table structure for table `feladatsor`
--

CREATE TABLE `feladatsor` (
  `id` int(11) NOT NULL,
  `idoKorlat` time NOT NULL,
  `dolgozatE` int(11) NOT NULL,
  `tanarId` int(11) NOT NULL,
  `hatarido` date DEFAULT NULL,
  `osztaly` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `feladatsor`
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
(17, '20:20:00', 1, 1, '0000-00-00', '12C'),
(18, '20:20:00', 1, 1, '2002-02-20', '12C'),
(19, '11:11:00', 1, 1, '0000-00-00', '12C'),
(20, '04:34:00', 1, 1, '0000-00-00', '12C'),
(21, '23:42:00', 1, 1, '0000-00-00', '12C'),
(22, '04:23:00', 0, 1, '0000-00-00', '12C'),
(23, '23:23:00', 0, 1, '1212-12-12', 'undefined'),
(24, '03:03:00', 1, 1, '3033-03-30', '12C');

-- --------------------------------------------------------

--
-- Table structure for table `felhaszesfeladkapcs`
--

CREATE TABLE `felhaszesfeladkapcs` (
  `felhasznaloId` int(11) NOT NULL,
  `feladatId` int(11) NOT NULL,
  `megoldIdo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `felhaszesfeladkapcs`
--

INSERT INTO `felhaszesfeladkapcs` (`felhasznaloId`, `feladatId`, `megoldIdo`) VALUES
(1, 2, '2024-03-25 11:33:00'),
(1, 3, '2024-03-25 11:43:00'),
(1, 6, '2024-04-05 08:09:00'),
(1, 19, '2024-04-15 10:24:00'),
(16, 12, '2024-04-15 10:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `id` int(11) NOT NULL,
  `email` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(150) COLLATE utf8_hungarian_ci NOT NULL,
  `felhasznaloNev` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `jog` int(11) NOT NULL,
  `osztaly` varchar(3) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `email`, `jelszo`, `felhasznaloNev`, `jog`, `osztaly`) VALUES
(1, 'balint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint89', 1, '12C'),
(2, 'balint7584@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'admin_1', 0, '12C'),
(4, 'balint75841@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'admin_11', 0, 'nan'),
(8, 'flsfejs@gmail.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'balin_t18', 0, '12C'),
(9, 'bali42nt@gmail.com', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'Bal_int1', 0, '12C'),
(10, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'balint', 0, ''),
(12, 'szab.eman@alma.hu', '5d546560c6bf78fc7df8aa986c11c71cf7f83bcf3058bd9b1e8b1c56d0f5b852', 'almaa', 0, '12C'),
(13, 'balint1@gmail.com', 'f0e4c2f76c58916ec258f246851bea091d14d4247a2fc3e18694461b1816e13b', 'balintZ', 0, '12C'),
(14, 'bar487594lint@gmail.com', 'c6b27d53202d02ed1ec21445f40f65c6d40174986ccc140fcdaa69e07e9718de', 'balint8695', 0, '12C'),
(15, 'hasbula3@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint597834', 0, '11A'),
(16, 'alma@alma.com', '7eb9425d6911e079bb8571a7705877cbc6c59ee0746c9912577c71a91aec55f6', 'alma2', 0, '12C');

-- --------------------------------------------------------

--
-- Table structure for table `temakor`
--

CREATE TABLE `temakor` (
  `id` int(11) NOT NULL,
  `temakor` text COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `temakor`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `feladatesfeladatsorkapcs`
--
ALTER TABLE `feladatesfeladatsorkapcs`
  ADD PRIMARY KEY (`feladatId`,`feladatsorId`),
  ADD KEY `feladatsorId` (`feladatsorId`);

--
-- Indexes for table `feladatesfelhasznalokapcs`
--
ALTER TABLE `feladatesfelhasznalokapcs`
  ADD PRIMARY KEY (`feladatsorId`,`felhasznaloId`),
  ADD KEY `felhasznaloId` (`felhasznaloId`);

--
-- Indexes for table `feladatok`
--
ALTER TABLE `feladatok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feladatsor`
--
ALTER TABLE `feladatsor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `felhaszesfeladkapcs`
--
ALTER TABLE `felhaszesfeladkapcs`
  ADD PRIMARY KEY (`felhasznaloId`,`feladatId`),
  ADD KEY `feladatId` (`feladatId`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `temakor`
--
ALTER TABLE `temakor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feladatok`
--
ALTER TABLE `feladatok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feladatsor`
--
ALTER TABLE `feladatsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `temakor`
--
ALTER TABLE `temakor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feladatesfeladatsorkapcs`
--
ALTER TABLE `feladatesfeladatsorkapcs`
  ADD CONSTRAINT `feladatesfeladatsorkapcs_ibfk_1` FOREIGN KEY (`feladatId`) REFERENCES `feladatok` (`id`),
  ADD CONSTRAINT `feladatesfeladatsorkapcs_ibfk_2` FOREIGN KEY (`feladatsorId`) REFERENCES `feladatsor` (`id`);

--
-- Constraints for table `feladatesfelhasznalokapcs`
--
ALTER TABLE `feladatesfelhasznalokapcs`
  ADD CONSTRAINT `feladatesfelhasznalokapcs_ibfk_1` FOREIGN KEY (`feladatsorId`) REFERENCES `feladatsor` (`id`),
  ADD CONSTRAINT `feladatesfelhasznalokapcs_ibfk_2` FOREIGN KEY (`felhasznaloId`) REFERENCES `felhasznalok` (`id`);

--
-- Constraints for table `felhaszesfeladkapcs`
--
ALTER TABLE `felhaszesfeladkapcs`
  ADD CONSTRAINT `felhaszesfeladkapcs_ibfk_1` FOREIGN KEY (`felhasznaloId`) REFERENCES `felhasznalok` (`id`),
  ADD CONSTRAINT `felhaszesfeladkapcs_ibfk_2` FOREIGN KEY (`feladatId`) REFERENCES `feladatok` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
