-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2017 at 04:53 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noticias`
--

-- --------------------------------------------------------

--
-- Table structure for table `articulos`
--

CREATE TABLE IF NOT EXISTS `articulos` (
  `Titulo` varchar(50) NOT NULL,
  `CodUsuario` varchar(5) NOT NULL,
  `Cuerpo` mediumtext NOT NULL,
  PRIMARY KEY (`Titulo`,`CodUsuario`),
  KEY `CodUsuario` (`CodUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articulos`
--

INSERT INTO `articulos` (`Titulo`, `CodUsuario`, `Cuerpo`) VALUES
('adga', '1', 'sadgsag'),
('agag', '1', 'aaga'),
('agf', '1', 'agea'),
('Articulo1', '1', 'Test xd'),
('Articulo2', '2', 'Test 2 xd'),
('Articulo3', '1', 'Test 3 xd');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`CodUsuario`) REFERENCES `usuarios` (`CodUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
