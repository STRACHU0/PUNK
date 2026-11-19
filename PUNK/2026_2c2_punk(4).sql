-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2026 at 10:45 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2026_2c2_punk`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plyty`
--

CREATE TABLE `plyty` (
  `IDPlyty` int(11) NOT NULL,
  `nazwaPlyty` varchar(50) NOT NULL,
  `najpopularPiosenka` varchar(25) NOT NULL,
  `iloscPiosenek` int(11) NOT NULL,
  `zespolPlyta` int(11) NOT NULL,
  `spotify_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plyty`
--

INSERT INTO `plyty` (`IDPlyty`, `nazwaPlyty`, `najpopularPiosenka`, `iloscPiosenek`, `zespolPlyta`, `spotify_id`) VALUES
(1, 'Prawo do bycia idiotą', 'Prawo do bycia idiotą', 12, 1, '5FCwGt3DMd6'),
(2, 'Pod prąd', '1944', 10, 2, '7qmAIaxpXFn');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `podgatunki`
--

CREATE TABLE `podgatunki` (
  `IDPodgatunku` int(11) NOT NULL,
  `podgatunek` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `podgatunki`
--

INSERT INTO `podgatunki` (`IDPodgatunku`, `podgatunek`) VALUES
(1, 'Hardcore punk'),
(2, 'PUNK ROCK');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sklad`
--

CREATE TABLE `sklad` (
  `imienazwisko` varchar(50) NOT NULL,
  `zespol` int(2) NOT NULL,
  `stanowisko` varchar(15) NOT NULL,
  `staz` varchar(5) NOT NULL,
  `IDCzlonka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sklad`
--

INSERT INTO `sklad` (`imienazwisko`, `zespol`, `stanowisko`, `staz`, `IDCzlonka`) VALUES
('Robert „Robal” Matera', 1, 'gitara, śpiew', '25lat', 1),
('Krzysztof Grabowski', 1, 'perkusja', '25lat', 2),
('Jacek Chrzanowski', 1, 'Gitara basowa', '26lat', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `texts`
--

CREATE TABLE `texts` (
  `IDTekstu` int(11) NOT NULL,
  `tekst` varchar(255) NOT NULL,
  `podstrona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `IDUzytkownika` int(11) NOT NULL,
  `login` varchar(25) NOT NULL,
  `haslo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wytwornie`
--

CREATE TABLE `wytwornie` (
  `IDWytworni` int(11) NOT NULL,
  `nazwaWytworni` varchar(25) NOT NULL,
  `adresWytrworni` varchar(50) NOT NULL,
  `numerTelefonuWytworni` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wytwornie`
--

INSERT INTO `wytwornie` (`IDWytworni`, `nazwaWytworni`, `adresWytrworni`, `numerTelefonuWytworni`) VALUES
(1, 'SP RECORDS', 'Kobylańska 101 02-984 Warszawa', 696307770),
(2, 'Pasażer ', 'Tuwima 5 lok. 102 39-200 Dębica', 504734655);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zespol`
--

CREATE TABLE `zespol` (
  `id` int(11) NOT NULL,
  `nazwaZespolu` varchar(50) NOT NULL,
  `plyty` int(11) NOT NULL,
  `oceny` int(11) NOT NULL,
  `wytwornia` int(11) NOT NULL,
  `rokPowstania` int(4) NOT NULL,
  `gatunekZespol` int(11) NOT NULL,
  `historia` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zespol`
--

INSERT INTO `zespol` (`id`, `nazwaZespolu`, `plyty`, `oceny`, `wytwornia`, `rokPowstania`, `gatunekZespol`, `historia`) VALUES
(1, 'DEZERTER', 1, 1, 2, 1981, 1, 'Zespół zadebiutował na festiwalu w Jarocinie w 1982 roku. Ze względu na kontrowersyjną nazwę (nawiązującą do radzieckich pocisków balistycznych), zostali zmuszeni przez cenzurę do jej zmiany – tak narodził się Dezerter. Ich teksty, pisane przez perkusistę Krzysztofa Grabowskiego, uderzały w system komunistyczny, militaryzm i marazm społeczny.'),
(2, 'KSU', 2, 1, 2, 1977, 2, 'Zespół powstał w 1977 roku w Ustrzykach Dolnych. Nazwa grupy pochodzi od tablic rejestracyjnych wydawanych wówczas w województwie krośnieńskim (litery KSU). Założycielami byli koledzy ze szkoły, m.in. Eugeniusz \"Siczka\" Olejarczyk, Bogdan \"Bohun\" Augustyn i Leszek \"Plaster\" Pelecki.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `plyty`
--
ALTER TABLE `plyty`
  ADD PRIMARY KEY (`IDPlyty`);

--
-- Indeksy dla tabeli `podgatunki`
--
ALTER TABLE `podgatunki`
  ADD PRIMARY KEY (`IDPodgatunku`);

--
-- Indeksy dla tabeli `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`IDTekstu`);

--
-- Indeksy dla tabeli `wytwornie`
--
ALTER TABLE `wytwornie`
  ADD PRIMARY KEY (`IDWytworni`);

--
-- Indeksy dla tabeli `zespol`
--
ALTER TABLE `zespol`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plyty`
--
ALTER TABLE `plyty`
  MODIFY `IDPlyty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `podgatunki`
--
ALTER TABLE `podgatunki`
  MODIFY `IDPodgatunku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `IDTekstu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wytwornie`
--
ALTER TABLE `wytwornie`
  MODIFY `IDWytworni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zespol`
--
ALTER TABLE `zespol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
