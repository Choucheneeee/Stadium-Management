-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  sam. 23 jan. 2021 à 12:02
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `terrain`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `id_compte` int(100) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `CIN` varchar(50) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `MDP` LONGTEXT NOT NULL,
  `is_admin` int(1) NOT NULL,
  PRIMARY KEY (`id_compte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Structure de la table `reclamation`
--

DROP TABLE IF EXISTS `reclamation`;
CREATE TABLE IF NOT EXISTS `reclamation` (
  `id_reclamation` int(100) NOT NULL AUTO_INCREMENT,
  `id_compte` int(100) NOT NULL,
  `description` LONGTEXT NOT NULL,
  `type_reclamation` varchar(50) NOT NULL,
  `date_reclamation` date NOT NULL,
  PRIMARY KEY (`id_reclamation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id_reservation` int(100) NOT NULL AUTO_INCREMENT,
  `id_compte` int(100) NOT NULL,
  `date_reservation` date NOT NULL,
  `heure` int(100) NOT NULL,
  `type_reservation` varchar(50) NOT NULL,
  PRIMARY KEY (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insert a test user for login
INSERT INTO `compte` (`Nom`, `Prenom`, `CIN`, `Telephone`, `Email`, `MDP`, `is_admin`) VALUES
('Admin', 'Test', 'AB123456', '0612345678', 'admin@test.com', 'test123', 1);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
