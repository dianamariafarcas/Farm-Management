-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 11:36 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ferma`
--

-- --------------------------------------------------------

--
-- Table structure for table `animale`
--

CREATE TABLE `animale` (
  `idA` int(11) NOT NULL,
  `codA` text NOT NULL,
  `rasaId` int(11) NOT NULL,
  `gen` text NOT NULL,
  `data_nasterii` date NOT NULL,
  `stare` int(11) NOT NULL,
  `idP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animale`
--

INSERT INTO `animale` (`idA`, `codA`, `rasaId`, `gen`, `data_nasterii`, `stare`, `idP`) VALUES
(23, 'RO123412341234', 13, 'F', '2024-05-21', 1, 1),
(37, 'ro1111', 11, 'M', '2024-05-22', 1, 1),
(39, 'ro0000', 11, 'F', '2024-05-22', 1, 1),
(40, 'ro111', 8, 'M', '2024-05-22', 1, 1),
(42, 'ro09', 19, 'M', '2024-05-22', 1, 1),
(43, 'ro9898', 9, 'M', '2024-05-22', 1, 1),
(44, 'ro6', 44, 'M', '2024-05-22', 1, 1),
(46, 'RO123451234512', 13, 'M', '2024-05-22', 1, 1),
(53, 'RO12', 60, 'M', '2024-05-23', 1, 1),
(55, 'RO123412333333', 65, 'M', '2024-05-23', 1, 1),
(56, 'RO123412333332', 66, 'M', '2024-05-23', 1, 1),
(58, 'RO100000000000', 72, 'F', '2024-05-23', 1, 1),
(59, 'RO132345678910', 73, 'M', '2024-05-24', 1, 1),
(60, 'RO123123123123', 74, 'F', '2024-05-25', 1, 1),
(61, 'RO123123123126', 75, 'F', '2024-05-25', 1, 1),
(62, 'RO123123123127', 76, 'M', '2024-05-25', 1, 1),
(63, 'RO123456789103', 66, 'M', '2024-05-26', 1, 1),
(64, 'RO123456789107', 78, 'F', '2024-05-27', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `idN` int(11) NOT NULL,
  `cod_animal` text NOT NULL,
  `denO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`idN`, `cod_animal`, `denO`) VALUES
(1, 'RO456879219820', 'inseminat'),
(2, 'RO124532222001', 'decedat'),
(3, 'RO123456781567', 'vandut'),
(5, 'RO251623381234', 'vandut'),
(8, 'RO345211882345', 'inseminat');

-- --------------------------------------------------------

--
-- Table structure for table `operatii`
--

CREATE TABLE `operatii` (
  `idO` int(11) NOT NULL,
  `codA` text NOT NULL,
  `denumire` text NOT NULL,
  `descriere` text NOT NULL,
  `dataO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operatii`
--

INSERT INTO `operatii` (`idO`, `codA`, `denumire`, `descriere`, `dataO`) VALUES
(1, 'RO251623381234', 'inseminat', 'ok', '2019-04-10'),
(2, 'RO987654322002', 'nastere', 'sanatos', '2022-04-12'),
(3, 'RO456879219820', 'decedat', '(((', '2022-06-14'),
(4, 'RO456123098617', 'vandut', 'iii', '2016-10-11'),
(9, 'RO345211882345', 'vandut', 'ok', '2022-04-24'),
(11, 'RO123412341234', 'nastere', 'buna', '2024-05-24'),
(12, 'RO123456789103', 'decedat', 'doping', '2024-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `proprietari`
--

CREATE TABLE `proprietari` (
  `idP` int(11) NOT NULL,
  `nume` text NOT NULL,
  `cnp` text NOT NULL,
  `adresa` text NOT NULL,
  `numeFerma` text NOT NULL,
  `descriere` text NOT NULL,
  `utilizator` text NOT NULL,
  `parola` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proprietari`
--

INSERT INTO `proprietari` (`idP`, `nume`, `cnp`, `adresa`, `numeFerma`, `descriere`, `utilizator`, `parola`) VALUES
(1, 'Farcas Dorin', '123456789', 'adbc', 'ferma', 'ok', 'farcasdorin', '1234'),
(2, 'Pop Ion', '987654321', 'defg', 'ferma mea', 'buna', 'popion', '5678'),
(3, 'Kantor Bea', '1234567', 'abcd', 'superferma', 'ok', 'kantorbea', '0000'),
(4, 'Farcas Diana', '1234', 'abcd', 'Ferma mea', 'ok', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rase`
--

CREATE TABLE `rase` (
  `idRasa` int(11) NOT NULL,
  `denumire` varchar(50) NOT NULL,
  `descriere` varchar(50) NOT NULL,
  `idSpecie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rase`
--

INSERT INTO `rase` (`idRasa`, `denumire`, `descriere`, `idSpecie`) VALUES
(1, 'Holstein', 'Alba', 1),
(2, 'Angus', 'Neagra', 1),
(3, 'Hereford', 'Maro', 1),
(4, 'Merino', 'Alba', 2),
(5, 'Suffolk', 'Alba', 2),
(6, 'Dorper', 'Patata', 2),
(7, 'Large White', 'Alba', 3),
(8, 'Duroc', 'Maro cu alb', 3),
(9, 'Landrace', 'Alb', 3),
(10, 'Arabian', 'Negru', 4),
(11, 'Thoroughbred', 'Alb', 4),
(12, 'Morgan', 'Patat', 4),
(13, 'Bruna de Maramures', 'Pestrit', 1),
(14, 'Brună de Maramureș', 'Maro', 1),
(15, 'Merino', 'Alb', 2),
(16, 'Țurcană', 'Oachesa', 2),
(17, 'Țigaie', 'Cornoasa', 2),
(18, 'Mangalița', 'Negru', 3),
(19, 'Bazna', 'Alb', 3),
(20, 'Lipițan', 'Alb', 4),
(21, 'Semigreu Românesc', 'Negru', 4),
(44, 'Mangalița', 'ok', 3),
(47, 'Bruna de Maramures', 'Pestrit', 1),
(52, 'Holstein', 'ok', 1),
(65, 'Gasca', 'neagra', 5),
(66, 'Cocos', 'Gherla', 5),
(72, 'Large White', 'mare', 3),
(73, 'Baltata romaneasca', 'buna', 1),
(74, 'Gaina', 'alba', 5),
(75, 'Gaina', 'neagra', 5),
(76, 'Cocos', 'Gherla', 5),
(77, 'Cocos', 'Gherla', 5),
(78, 'Gaina', 'Gherla', 5);

-- --------------------------------------------------------

--
-- Table structure for table `specii`
--

CREATE TABLE `specii` (
  `idSpecie` int(11) NOT NULL,
  `denumire` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specii`
--

INSERT INTO `specii` (`idSpecie`, `denumire`) VALUES
(1, 'bovine'),
(2, 'ovine'),
(3, 'suine'),
(4, 'cabaline'),
(5, 'pasari');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vanimale`
-- (See below for the actual view)
--
CREATE TABLE `vanimale` (
`idA` int(11)
,`codA` text
,`gen` text
,`data_nasterii` date
,`stare` int(11)
,`specie` varchar(50)
,`rasa` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vanimale1`
-- (See below for the actual view)
--
CREATE TABLE `vanimale1` (
`idA` int(11)
,`codA` text
,`gen` text
,`data_nasterii` date
,`stare` int(11)
,`idP` int(11)
,`specie` varchar(50)
,`rasa` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vanimale2`
-- (See below for the actual view)
--
CREATE TABLE `vanimale2` (
`idA` int(11)
,`codA` text
,`gen` text
,`data_nasterii` date
,`stare` int(11)
,`idP` int(11)
,`specie` varchar(50)
,`rasa` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vanimale3`
-- (See below for the actual view)
--
CREATE TABLE `vanimale3` (
`idA` int(11)
,`codA` text
,`gen` text
,`data_nasterii` date
,`stare` int(11)
,`idP` int(11)
,`specie` varchar(50)
,`rasa` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `vanimale`
--
DROP TABLE IF EXISTS `vanimale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vanimale`  AS SELECT `a`.`idA` AS `idA`, `a`.`codA` AS `codA`, `a`.`gen` AS `gen`, `a`.`data_nasterii` AS `data_nasterii`, `a`.`stare` AS `stare`, `s`.`denumire` AS `specie`, `r`.`denumire` AS `rasa` FROM ((`animale` `a` join `rase` `r` on(`a`.`rasaId` = `r`.`idRasa`)) join `specii` `s` on(`r`.`idSpecie` = `s`.`idSpecie`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vanimale1`
--
DROP TABLE IF EXISTS `vanimale1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vanimale1`  AS SELECT `a`.`idA` AS `idA`, `a`.`codA` AS `codA`, `a`.`gen` AS `gen`, `a`.`data_nasterii` AS `data_nasterii`, `a`.`stare` AS `stare`, `a`.`idP` AS `idP`, `s`.`denumire` AS `specie`, `r`.`denumire` AS `rasa` FROM ((`animale` `a` join `rase` `r` on(`a`.`rasaId` = `r`.`idRasa`)) join `specii` `s` on(`s`.`idSpecie` = `r`.`idSpecie`)) ORDER BY `a`.`codA` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `vanimale2`
--
DROP TABLE IF EXISTS `vanimale2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vanimale2`  AS SELECT `a`.`idA` AS `idA`, `a`.`codA` AS `codA`, `a`.`gen` AS `gen`, `a`.`data_nasterii` AS `data_nasterii`, `a`.`stare` AS `stare`, `a`.`idP` AS `idP`, `s`.`denumire` AS `specie`, `r`.`denumire` AS `rasa` FROM ((`animale` `a` join `rase` `r` on(`a`.`rasaId` = `r`.`idRasa`)) join `specii` `s` on(`s`.`idSpecie` = `r`.`idSpecie`)) ORDER BY `r`.`denumire` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `vanimale3`
--
DROP TABLE IF EXISTS `vanimale3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vanimale3`  AS SELECT `a`.`idA` AS `idA`, `a`.`codA` AS `codA`, `a`.`gen` AS `gen`, `a`.`data_nasterii` AS `data_nasterii`, `a`.`stare` AS `stare`, `a`.`idP` AS `idP`, `s`.`denumire` AS `specie`, `r`.`denumire` AS `rasa` FROM ((`animale` `a` join `rase` `r` on(`a`.`rasaId` = `r`.`idRasa`)) join `specii` `s` on(`s`.`idSpecie` = `r`.`idSpecie`)) ORDER BY `s`.`denumire` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animale`
--
ALTER TABLE `animale`
  ADD PRIMARY KEY (`idA`),
  ADD KEY `fk_proprietar` (`idP`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`idN`);

--
-- Indexes for table `operatii`
--
ALTER TABLE `operatii`
  ADD PRIMARY KEY (`idO`);

--
-- Indexes for table `proprietari`
--
ALTER TABLE `proprietari`
  ADD PRIMARY KEY (`idP`);

--
-- Indexes for table `rase`
--
ALTER TABLE `rase`
  ADD PRIMARY KEY (`idRasa`);

--
-- Indexes for table `specii`
--
ALTER TABLE `specii`
  ADD PRIMARY KEY (`idSpecie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animale`
--
ALTER TABLE `animale`
  MODIFY `idA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `idN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `operatii`
--
ALTER TABLE `operatii`
  MODIFY `idO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `proprietari`
--
ALTER TABLE `proprietari`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rase`
--
ALTER TABLE `rase`
  MODIFY `idRasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `specii`
--
ALTER TABLE `specii`
  MODIFY `idSpecie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animale`
--
ALTER TABLE `animale`
  ADD CONSTRAINT `fk_proprietar` FOREIGN KEY (`idP`) REFERENCES `proprietari` (`idP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
