-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Generation Time: Dec 04, 2018 at 11:50 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moe_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `MOE_ITEM_T`
--

CREATE TABLE `MOE_ITEM_T` (
  `No_du_compte` varchar(50) NOT NULL,
  `Date_operation` DATETIME NOT NULL,
  `REFERENCE` int(7) NOT NULL,
  `Libelle`  varchar(50) NOT NULL,
  `Date_valeur` DATETIME NOT NULL,
  `DEBIT`  DOUBLE,
  `CREDIT` DOUBLE 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MOE_ITEM_T`
--

INSERT INTO `MOE_ITEM_T` (`No_du_compte`, `Date_operation`, `REFERENCE`, `Libelle`, `Date_valeur`, `DEBIT`, `CREDIT`) VALUES
('A1-20-02650/9', '2020-10-6', 1120214,  'Paiement Echeance principale',189.77, NULL ),
('A1-20-02650/9', '2020-10-7', 1120215, 'Virement', '2020-7-10', NULL, 800.77);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;