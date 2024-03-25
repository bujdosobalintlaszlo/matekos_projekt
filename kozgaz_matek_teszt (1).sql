-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 25. 12:36
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
-- Tábla szerkezet ehhez a táblához `feladatesfeladatsorkapcs`
--

CREATE TABLE `feladatesfeladatsorkapcs` (
  `feladatId` int(11) NOT NULL,
  `feladatsorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatesfelhasznalokapcs`
--

CREATE TABLE `feladatesfelhasznalokapcs` (
  `feladatsorId` int(11) NOT NULL,
  `felhasznaloId` int(11) NOT NULL,
  `meoldIdo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

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
(1, 1, 'teszt', 0, 0, 'Probafe12ladat', NULL),
(2, 2, 'teszt', 1, 0, 'Proba2', NULL),
(3, 3, '10', 0, 2, 'Első feladat', 'Mennyi 5+5?'),
(4, 11, '1', 0, 2, 'összeadás', '$2^8$+ $3^4$');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `feladatsor`
--

CREATE TABLE `feladatsor` (
  `id` int(11) NOT NULL,
  `idoKorlat` int(11) NOT NULL,
  `dolgozatE` int(11) NOT NULL,
  `tanarId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhaszesfeladkapcs`
--

CREATE TABLE `felhaszesfeladkapcs` (
  `felhasznaloId` int(11) NOT NULL,
  `feladatId` int(11) NOT NULL,
  `megoldIdo` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
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
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`id`, `email`, `jelszo`, `felhasznaloNev`, `jog`, `osztaly`) VALUES
(1, 'balint@gmail.com', 'ef28a6f147d822cdc65df689b118390d8245064e79d889386436bad6db42f9fd', 'balint89', 0, '12C'),
(2, 'mozes.bence@ckik.hu', '12d21214e108523365acca6188d16f8157d6cfd97c9e072e7252ab019f14de7b', 'mozben', 0, '12C'),
(3, 'moze1s.bence@ckik.hu', 'ec30798e6fac5c0e93fdb109394b20f57c513fcce72136766f9ac95e1a1a1a7c', 'KisHuszar.12', 1, '12C'),
(4, 'kisbela@gmail.com', 'be777e1c1380a74447b462723b7002240abd5f2714187f240c63699ba9810ee5', 'KisBela', 0, '12C'),
(5, 'kisbela12@gmail.com', 'ec30798e6fac5c0e93fdb109394b20f57c513fcce72136766f9ac95e1a1a1a7c', 'mozesben121212', 0, '12C'),
(6, 'moze11s.bence@ckik.hu', 'ec30798e6fac5c0e93fdb109394b20f57c513fcce72136766f9ac95e1a1a1a7c', 'mozesben1212121212', 1, '12C');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `temakor`
--

CREATE TABLE `temakor` (
  `id` int(11) NOT NULL,
  `temakor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_temakorID` (`temakorID`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `feladatsor`
--
ALTER TABLE `feladatsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Megkötések a táblához `feladatok`
--
ALTER TABLE `feladatok`
  ADD CONSTRAINT `fk_temakorID` FOREIGN KEY (`temakorID`) REFERENCES `temakor` (`id`);

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
