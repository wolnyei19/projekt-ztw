-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 10:15 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `bilety`
--

CREATE TABLE `bilety` (
  `tid` int(11) NOT NULL,
  `normalny_lub_ulgowy` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `jedno_lub_wieloosobowy` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena_w_zl` int(11) NOT NULL,
  `czas_w_min` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `bilety`
--

INSERT INTO `bilety` (`tid`, `normalny_lub_ulgowy`, `jedno_lub_wieloosobowy`, `cena_w_zl`, `czas_w_min`) VALUES
(1, 'normalny', 'jednoosobowy', 4, 20),
(2, 'normalny', 'jednoosobowy', 5, 40),
(3, 'normalny', 'jednoosobowy', 6, 90),
(4, 'normalny', 'jednoosobowy', 12, 1440),
(5, 'ulgowy', 'jednoosobowy', 2, 20),
(6, 'ulgowy', 'jednoosobowy', 3, 40),
(7, 'ulgowy', 'jednoosobowy', 4, 90),
(8, 'ulgowy', 'jednoosobowy', 8, 1440),
(9, 'normalny', 'wieloosobowy', 6, 20),
(10, 'normalny', 'wieloosobowy', 7, 40),
(11, 'normalny', 'wieloosobowy', 8, 90),
(12, 'normalny', 'wieloosobowy', 16, 1440),
(13, 'ulgowy', 'wieloosobowy', 3, 20),
(14, 'ulgowy', 'wieloosobowy', 4, 40),
(15, 'ulgowy', 'wieloosobowy', 5, 90),
(16, 'ulgowy', 'wieloosobowy', 10, 1440);

-- --------------------------------------------------------

--
-- Table structure for table `klienci`
--

CREATE TABLE `klienci` (
  `uid` int(11) NOT NULL,
  `imie` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `tel` int(11) NOT NULL,
  `godzina_zakupu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `normalny_lub_ulgowy` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `jedno_lub_wieloosobowy` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `czas_w_min` int(11) NOT NULL,
  `miejsce_startowe` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `miejsce_docelowe` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`uid`, `imie`, `nazwisko`, `email`, `tel`, `godzina_zakupu`, `normalny_lub_ulgowy`, `jedno_lub_wieloosobowy`, `czas_w_min`, `miejsce_startowe`, `miejsce_docelowe`) VALUES
(1, 'Pythios', 'Vivek', 'pythiosvivek@gmail.com', 182546102, '2023-04-13 19:05:47', 'normalny', 'jednoosobowy', 1440, 'Dworcowa', 'Komag'),
(2, ' Maya', 'Martialis', 'mayamartialis@gmail.com', 124876123, '2023-04-13 19:05:47', 'ulgowy', 'jednoosobowy', 40, 'Helenka', 'Biskupice'),
(3, 'Yakiv', 'Segdae', 'yakivsegdae@gmail.com', 675912243, '2023-04-13 19:05:47', 'ulgowy', 'wieloosobowy', 90, 'Zacisze', 'Stadion'),
(4, 'Peers', 'Corinna', 'peerscorinna@gmail.com', 789278921, '2023-04-13 19:05:47', 'normalny', 'jednoosobowy', 90, 'Szpitalna', 'Michalskiego'),
(9, 'ja', 'nie', 'janie@gmail.com', 123123123, '2023-04-13 20:12:20', 'normalny', 'jednoosobowy', 20, 'Rybna', 'Poczta');

-- --------------------------------------------------------

--
-- Table structure for table `miejsce_docelowe`
--

CREATE TABLE `miejsce_docelowe` (
  `peid` int(11) NOT NULL,
  `miasto` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `ul` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `miejsce_docelowe`
--

INSERT INTO `miejsce_docelowe` (`peid`, `miasto`, `ul`) VALUES
(1, 'Gliwice', 'Centrum'),
(2, 'Gliwice', 'Dworzec'),
(3, 'Gliwice', 'Dworcowa'),
(4, 'Gliwice', 'Strzody'),
(5, 'Gliwice', 'Mikolowska'),
(6, 'Gliwice', 'Komag'),
(7, 'Gliwice', 'Lotnikow'),
(8, 'Gliwice', 'Nowe_gliwice'),
(9, 'Gliwice', 'Bojkowska'),
(10, 'Gliwice', 'Bojkow'),
(11, 'Knurów', 'Rybna'),
(12, 'Knurów', 'Poczta'),
(13, 'Knurów', 'Remiza'),
(14, 'Knurów', 'Wojska_polskiego'),
(15, 'Knurów', 'Kosmonautow'),
(16, 'Knurów', 'Szpitalna'),
(17, 'Knurów', 'Kino'),
(18, 'Knurów', 'Zacisze'),
(19, 'Knurów', 'Michalskiego'),
(20, 'Knurów', 'Stadion'),
(21, 'Zabrze', 'Helenka'),
(22, 'Zabrze', 'Rokitnicka'),
(23, 'Zabrze', 'Mikulczyce'),
(24, 'Zabrze', 'Biskupice'),
(25, 'Zabrze', 'Politechnika'),
(26, 'Zabrze', 'Plac'),
(27, 'Zabrze', 'Kopalnia'),
(28, 'Zabrze', 'Konczyce'),
(29, 'Zabrze', 'Makoszowy'),
(30, 'Zabrze', 'Legnicka');

-- --------------------------------------------------------

--
-- Table structure for table `miejsce_startowe`
--

CREATE TABLE `miejsce_startowe` (
  `psid` int(11) NOT NULL,
  `miasto` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `ul` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `miejsce_startowe`
--

INSERT INTO `miejsce_startowe` (`psid`, `miasto`, `ul`) VALUES
(1, 'Gliwice', 'Centrum'),
(2, 'Gliwice', 'Dworzec'),
(3, 'Gliwice', 'Dworcowa'),
(4, 'Gliwice', 'Strzody'),
(5, 'Gliwice', 'Mikolowska'),
(6, 'Gliwice', 'Komag'),
(7, 'Gliwice', 'Lotnikow'),
(8, 'Gliwice', 'Nowe_gliwice'),
(9, 'Gliwice', 'Bojkowska'),
(10, 'Gliwice', 'Bojkow'),
(11, 'Knurów', 'Rybna'),
(12, 'Knurów', 'Poczta'),
(13, 'Knurów', 'Remiza'),
(14, 'Knurów', 'Wojska_polskiego'),
(15, 'Knurów', 'Kosmonautow'),
(16, 'Knurów', 'Szpitalna'),
(17, 'Knurów', 'Kino'),
(18, 'Knurów', 'Zacisze'),
(19, 'Knurów', 'Michalskiego'),
(20, 'Knurów', 'Stadion'),
(21, 'Zabrze', 'Helenka'),
(22, 'Zabrze', 'Rokitnicka'),
(23, 'Zabrze', 'Mikulczyce'),
(24, 'Zabrze', 'Biskupice'),
(25, 'Zabrze', 'Politechnika'),
(26, 'Zabrze', 'Plac'),
(27, 'Zabrze', 'Kopalnia'),
(28, 'Zabrze', 'Konczyce'),
(29, 'Zabrze', 'Makoszowy'),
(30, 'Zabrze', 'Legnicka');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `did` int(11) NOT NULL,
  `rodzaj_transportu` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `dostepne` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `godziny` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwa_linii` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`did`, `rodzaj_transportu`, `dostepne`, `godziny`, `nazwa_linii`) VALUES
(1, 'autobus', 'Centrum', '07:00-19:00', '58'),
(2, 'autobus', 'Dworzec', '07:00-19:00', '71'),
(3, 'tramwaj', 'Dworcowa', '09:00-21:00', '5'),
(4, 'autobus', 'Strzody', '07:00-19:00', '66'),
(5, 'autobus', 'Mikolowska', '07:00-19:00', '104'),
(6, 'autobus', 'Komag', '07:00-19:00', '259'),
(7, 'trolejbus', 'Lotnikow', '09:00-21:00', 'F'),
(8, 'tramwaj', 'Nowe_gliwice', '07:00-19:00', '26'),
(9, 'autobus', 'Bojkowska', '09:00-21:00', '694'),
(10, 'autobus', 'Bojkow', '07:00-19:00', '137'),
(11, 'autobus', 'Rybna', '09:00-21:00', '47'),
(12, 'autobus', 'Poczta', '09:00-21:00', '920'),
(13, 'autobus', 'Remiza', '07:00-19:00', '187'),
(14, 'autobus', 'Wojska_polskiego', '07:00-19:00', '253'),
(15, 'autobus', 'Kosmonautow', '07:00-19:00', '89'),
(16, 'trolejbus', 'Szpitalna', '07:00-19:00', 'D'),
(17, 'tramwaj', 'Kino', '07:00-19:00', '0'),
(18, 'autobus', 'Zacisze', '09:00-21:00', '6'),
(19, 'tramwaj', 'Michalskiego', '07:00-19:00', '43'),
(20, 'autobus', 'Stadion', '07:00-19:00', '180'),
(21, 'autobus', 'Helenka', '07:00-19:00', '71'),
(22, 'autobus', 'Rokitnicka', '07:00-19:00', '208'),
(23, 'autobus', 'Mikulczyce', '07:00-19:00', '118'),
(24, 'autobus', 'Biskupice', '07:00-19:00', '690'),
(25, 'autobus', 'Politechnika', '07:00-19:00', '612'),
(26, 'autobus', 'Plac', '07:00-19:00', '286'),
(27, 'autobus', 'Kopalnia', '07:00-19:00', '189'),
(28, 'autobus', 'Konczyce', '07:00-19:00', '252'),
(29, 'autobus', 'Makoszowy', '07:00-19:00', '723'),
(30, 'autobus', 'Legnicka', '07:00-19:00', '130');

-- --------------------------------------------------------

--
-- Table structure for table `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `uid`, `did`) VALUES
(1, 1, 3),
(2, 2, 21),
(3, 3, 18),
(4, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bilety`
--
ALTER TABLE `bilety`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `miejsce_docelowe`
--
ALTER TABLE `miejsce_docelowe`
  ADD PRIMARY KEY (`peid`);

--
-- Indexes for table `miejsce_startowe`
--
ALTER TABLE `miejsce_startowe`
  ADD PRIMARY KEY (`psid`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `klucz_obczy1` (`uid`),
  ADD KEY `klucz_obczy2` (`did`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bilety`
--
ALTER TABLE `bilety`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `miejsce_docelowe`
--
ALTER TABLE `miejsce_docelowe`
  MODIFY `peid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `miejsce_startowe`
--
ALTER TABLE `miejsce_startowe`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `klucz_obczy1` FOREIGN KEY (`uid`) REFERENCES `klienci` (`uid`),
  ADD CONSTRAINT `klucz_obczy2` FOREIGN KEY (`did`) REFERENCES `transport` (`did`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
