-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 12:42 PM
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

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wytwornie`
--
ALTER TABLE `wytwornie`
  ADD PRIMARY KEY (`IDWytworni`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wytwornie`
--
ALTER TABLE `wytwornie`
  MODIFY `IDWytworni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
