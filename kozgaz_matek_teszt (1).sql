-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Máj 28. 15:16
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.0.25

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
(65, 39, 'Dolgozat_Javító'),
(66, 39, 'Dolgozat_Javító'),
(67, 35, 'Próba dolgozat 05_28'),
(67, 36, 'Próba_05_06'),
(67, 37, 'Dolgozat'),
(67, 38, 'Éles dolgozat'),
(67, 40, 'Logaritmus'),
(70, 35, 'Próba dolgozat 05_28'),
(70, 36, 'Próba_05_06'),
(70, 37, 'Dolgozat'),
(70, 38, 'Éles dolgozat'),
(70, 40, 'Logaritmus'),
(71, 35, 'Próba dolgozat 05_28'),
(71, 36, 'Próba_05_06'),
(71, 37, 'Dolgozat');

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
(35, 33, '00:00:11', 6, 100, '2024-05-28 15:12:14');

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
(7, 4, '12', 0, 15, '2021 máj', '$\\frac{-b\\pm\\sqrt{b^2-4ac}}{2a}$'),
(8, 14, '$2^3$*3*7*11', 0, 2, '2023. október 17. (I.) 1.feladat', 'Adja meg az 1848 prímtényezős felbontását!'),
(9, 15, '10', 0, 2, '2023. október 17. (I.) 2.feladat', 'Egy építkezésre teherautókkal szállítják a homokot. Öt egyforma teherautó mindegyikének nyolcszor kellene fordulnia, hogy az összes homokot odaszállítsák. Hány fordulóval\r\ntudná odaszállítani ugyanezt a mennyiségű homokot négy ugyanekkora teherautó?'),
(10, 7, '$C', 0, 2, '2023. október 17. (I.) 4.feladat', 'Válassza ki az alábbi, a valós számok halmazán értelmezett függvények közül azt,\r\namelyik nem vesz fel negatív értéket! A válasz formátuma a következő: Pl.: A'),
(12, 15, '300FT', 0, 2, '2023. október 17. (I.) 5.feladat', 'Egy autók bérbeadásával foglalkozó cég honlapja szerint ha legfeljebb 5 napra bérlünk\r\negy bizonyos típust, akkor a bérlés díja 7500 Ft/nap. Ha legalább 6 napra béreljük\r\nugyanezt a típust, akkor a bérlés díja csak 6300 Ft/nap.\r\nMennyivel magasabb a teljes bérleti díj, ha 5 nap helyett 6 napra béreljük ezt a típust? A válasz formátuma: 100FT'),
(15, 15, '32442', 3, 8, '2022', 'fhleífhshf'),
(19, 10, '1', 1, 1, '2021', '$log_2(5)=0$'),
(21, 1, '12', 0, 12, '2021-2', '12'),
(22, 2, 'hamis', 0, 1, 'Teszt-2024.05.01', '$lg(2)$ + 30 = 25'),
(23, 1, '12', 1, 12, '2023-3', '12'),
(24, 1, '2', 0, 19899, 'Mi a 2?', '2'),
(40, 14, '12', 2, 1111, '2024-6', '3232dewfewf'),
(44, 4, '2', 0, 1, '2024-1', 'abcdefghijklmnopq'),
(45, 5, '2', 0, 1, '2024-2', 'bcdefghijklmnopq'),
(46, 9, '2', 0, 1, '2024-3', 'cdefghijklmnopqr'),
(47, 8, '2', 0, 1, '2024-4', 'defghijklmnopqrs'),
(48, 1, '2', 0, 1, '2024-5', 'efghijklmnopqrst'),
(49, 3, '2', 0, 1, 'Példa 1', 'fghijklmnopqrstu'),
(50, 10, '2', 0, 1, 'Gyakorló', 'ghijklmnopqrstuv'),
(51, 7, '2', 0, 1, 'Gyakorló 2', 'hijklmnopqrstuvw'),
(52, 6, '2', 0, 1, 'Gyakorló 1', 'ijklmnopqrstuvwx'),
(53, 2, '2', 0, 1, 'Példa 2', 'jklmnopqrstuvwxy'),
(65, 12, '17', 0, 2, 'Sorozat első tagja', 'Összeadtunk ötvenöt egymást követő pozitív páratlan számot, az összeg\r\nértéke 3905.Melyik volt az összegben az első szám?'),
(66, 18, '0.14', 0, 2, 'Tombola húzás', 'Egy rendezvényen 150 tombolajegyet adtak el. Ági 21-et vásárolt.\nMekkora annak a valószínűsége, hogy Ági nyer, ha egy nyereményt\nsorsolnak ki? (A jegyek nyerési esélye egyenlő.) '),
(67, 18, '0.2', 0, 2, 'Belépés az ajtón', 'Egy öttagú társaság egymás után lép be egy ajtón. Mekkora a\nvalószínűsége, hogy Anna, a társaság egyik tagja, elsőnek lép be az ajtón?'),
(70, 6, '5', 0, 2, 'Logaritmus', 'Adja meg x értékét, ha $2^{x-1}=16$'),
(71, 6, '1.5', 0, 2, 'Logaritmus - 2', 'Oldja meg az alábbi egyenletet a valós számok halmazán! Válaszát\ntizedes tört alakban adja meg!\n$4^{x} = 8$ ');

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
(35, '00:30:00', 1, 33, '2025-08-10', '12C'),
(36, '00:30:00', 1, 33, '2024-05-06', '12C'),
(37, '00:30:00', 0, 33, '2024-05-30', 'undefined'),
(38, '00:30:00', 1, 33, '2025-01-01', '12C'),
(39, '01:00:00', 1, 33, '2024-05-30', '12C'),
(40, '01:00:00', 1, 33, '2025-01-02', '12C');

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
(1, 2, '2024-03-25 11:33:00'),
(1, 3, '2024-03-25 11:43:00'),
(1, 6, '2024-04-05 08:09:00'),
(1, 19, '2024-04-15 10:24:00'),
(16, 12, '2024-04-15 10:20:00'),
(33, 1, '2024-05-23 08:04:00'),
(33, 21, '2024-05-28 12:48:00'),
(33, 67, '2024-05-28 12:41:00'),
(33, 70, '2024-05-28 12:40:00'),
(33, 71, '2024-05-28 12:40:00');

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
(33, 'moze1s.bence@ckik.hu', 'ec30798e6fac5c0e93fdb109394b20f57c513fcce72136766f9ac95e1a1a1a7c', 'KisHuszar', 1, '12C'),
(34, 'moz23243e1s.bence@ckik.hu', '73fa91258222403be21ddde87c0a098e9fa882d3b83d23c520fba2ef52d6ec3a', 'K12isB43ela', 0, '12C'),
(35, 'moze143qs.bence@ckik.hu', '4234d001c3122d591ca1afd9af35a4aa83d2827896e12f174eb9b3be248fa108', 'KisHuszarwef4tr4t', 0, '9A');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT a táblához `feladatsor`
--
ALTER TABLE `feladatsor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
