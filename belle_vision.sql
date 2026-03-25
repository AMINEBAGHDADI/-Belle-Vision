-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 05:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belle_vision`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `IdClub` varchar(5) NOT NULL,
  `nomClub` varchar(20) NOT NULL,
  `Animateur` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`IdClub`, `nomClub`, `Animateur`) VALUES
('C001', 'Club Théatre', 'Adel'),
('C002', 'Club Chant', 'Azza'),
('C003', 'Club peinture', 'Sarra');

-- --------------------------------------------------------

--
-- Table structure for table `eleve`
--

CREATE TABLE `eleve` (
  `IdEleve` varchar(4) NOT NULL,
  `nomprenom` varchar(30) NOT NULL,
  `Datenaiss` date NOT NULL,
  `Genre` char(1) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `numtelp` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eleve`
--

INSERT INTO `eleve` (`IdEleve`, `nomprenom`, `Datenaiss`, `Genre`, `Adresse`, `numtelp`) VALUES
('E001', 'Mohamed Jallouli', '2014-06-12', 'M', 'Rue des palmiers, Ariana', '20999999'),
('E002', 'Sarra Omrani', '2015-01-15', 'F', '2 Rue des lauriers, Tunis', '98000001'),
('E003', 'Karim Sassi', '2014-09-04', 'M', '22 rue Salama, Ariana', '99111111');

-- --------------------------------------------------------

--
-- Table structure for table `participer`
--

CREATE TABLE `participer` (
  `IdEleve` varchar(4) NOT NULL,
  `IdClub` varchar(5) NOT NULL,
  `DateInscrit` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `participer`
--

INSERT INTO `participer` (`IdEleve`, `IdClub`, `DateInscrit`) VALUES
('E001', 'C001', '2023-09-17'),
('E001', 'C002', '2023-10-02'),
('E003', 'C003', '2023-11-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`IdClub`),
  ADD UNIQUE KEY `c1` (`nomClub`);

--
-- Indexes for table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`IdEleve`);

--
-- Indexes for table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`IdEleve`,`IdClub`),
  ADD KEY `IdClub` (`IdClub`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`IdEleve`) REFERENCES `eleve` (`IdEleve`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`IdClub`) REFERENCES `club` (`IdClub`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
