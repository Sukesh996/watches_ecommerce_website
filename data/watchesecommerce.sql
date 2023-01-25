-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 06:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchesecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Details` text NOT NULL,
  `CreateTime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderlines`
--

CREATE TABLE `orderlines` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `WatchesId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderlines`
--

INSERT INTO `orderlines` (`Id`, `OrderId`, `WatchesId`, `Quantity`, `Price`) VALUES
(0, 1, 3, 1, 720000),
(0, 2, 3, 1, 720000),
(0, 2, 3, 1, 720000),
(0, 3, 1, 2, 730000),
(0, 4, 1, 1, 730000),
(0, 5, 1, 1, 730000),
(0, 6, 1, 2, 730000),
(0, 7, 1, 1, 730000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `CreateTime` datetime NOT NULL,
  `CloseTime` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Request` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `CreateTime`, `CloseTime`, `Status`, `UserId`, `Name`, `Address`, `Phone`, `Email`, `Request`) VALUES
(1, '2023-01-24 22:27:18', '0000-00-00 00:00:00', 0, NULL, 'xdss', 'xsdf', '11222232344', 'cccxc@gmail.com', ''),
(2, '2023-01-24 23:59:08', '0000-00-00 00:00:00', 0, NULL, 'NA', 'zzzx', 'xxxxxxxx', 'xxxx@gmail.com', ''),
(3, '2023-01-25 20:15:15', '0000-00-00 00:00:00', 0, NULL, 'ss', 'sddf', 'fgfhgg', 'ghhjgf', ''),
(4, '2023-01-25 20:18:59', '0000-00-00 00:00:00', 0, NULL, 'dfdf', 'gff', 'dfs', 'gfg', ''),
(5, '2023-01-25 20:24:44', '0000-00-00 00:00:00', 0, 12, '', 'patrapada', '7878787878', NULL, ''),
(6, '2023-01-25 20:51:05', '0000-00-00 00:00:00', 0, NULL, 'dsf', 'fdfd', 'dddddddddddd', 'dddddddddddddd', 'd'),
(7, '2023-01-25 20:54:32', '0000-00-00 00:00:00', 0, 12, '', 'bhubaneswar', '687655468', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `Id` int(11) NOT NULL,
  `CodeName` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`Id`, `CodeName`, `Name`) VALUES
(1, 'casio', 'Casio'),
(2, 'rolex', 'Rolex'),
(3, 'omega', 'Omega'),
(4, 'longines', 'Longines'),
(5, 'citizens', 'Citizens'),
(6, 'eposswiss', 'Eposwiss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `CreateTime` datetime NOT NULL,
  `Admin` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Sex` int(11) NOT NULL,
  `DoB` date NOT NULL,
  `IdCard` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Password`, `Email`, `CreateTime`, `Admin`, `Name`, `Sex`, `DoB`, `IdCard`, `Address`, `Phone`) VALUES
(12, '9a7c319d1acc8a8dddd4d5a5a158c595', 'sukesh@gmail.com', '2023-01-25 20:24:03', 0, 'sukesh', 0, '0000-00-00', '', '', ''),
(11, 'ea416ed0759d46a8de58f63a59077499', 'xxxx@gmail.com', '2023-01-25 00:00:55', 0, 'dccvb', 0, '2022-12-28', 'gfg', 'gfgf', 'hjhjjjh');

-- --------------------------------------------------------

--
-- Table structure for table `watches`
--

CREATE TABLE `watches` (
  `Id` int(11) NOT NULL,
  `CodeName` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Origin` varchar(255) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Price` bigint(20) DEFAULT NULL,
  `CreateTime` datetime NOT NULL,
  `Picture` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `watches`
--

INSERT INTO `watches` (`Id`, `CodeName`, `Name`, `Type`, `Origin`, `Year`, `Details`, `Price`, `CreateTime`, `Picture`) VALUES
(1, 'MTP-V004GL-9AUDF', 'Casio Watch MTP-V004GL-9AUDF', 'Casio', 'Japan', 2010, '\r\nManufacturer: Casio watches\r\nStyle: Men\'s watch\r\n\r\nMachine: Battery\r\n\r\nCase material: Stainless steel, also known as stainless steel (All Stainless Steel)\r\n\r\nStrap material: leather strap\r\n\r\n1 year warranty\r\n\r\nMade in Japan\r\n\r\nGlass: Mineral Crystal', 730000, '2023-01-18 07:19:11', '1.jpg'),
(2, 'MTP-V005GL-9AUDF', 'Casio Watch MTP-V005GL-9AUDF', 'Casio', '\r\nJapan', 2008, '\r\nManufacturer: Casio watches\r\n\r\n\r\nStyle: Men\'s watch\r\n\r\nMachine: Battery\r\n\r\nCase material: Stainless steel, also known as stainless steel (All Stainless Steel)\r\n\r\nStrap material: leather strap\r\n\r\n1 year warranty\r\n\r\nMade in Japan\r\n\r\n\r\nGlass: Mineral Crystal', 630000, '2023-01-05 08:56:37', '835008269_dong-ho-casio-MTP-V005GL-9AUDF.jpg'),
(3, 'MTP-V006L-1BUDF', 'Casio Watch MTP-V006L-1BUDF', 'Casio', 'Japan', 2009, '\r\nManufacturer: Casio watches\r\n\r\nStyle: Men\'s watch\r\n\r\nMachine: Battery\r\n\r\nCase material: Stainless steel, also known as stainless steel (All Stainless Steel)\r\n\r\nStrap material: leather strap\r\n\r\n1 year warranty\r\n\r\nMade in Japan\r\n\r\nGlass: Mineral Crystal', 720000, '2023-01-13 08:56:37', '46234354_MTP-V006L-1BUDF.png'),
(4, 'MTP-V004L-1AUDF', 'Casio Watch MTP-V004L-1AUDF', 'Casio', '\r\nJapan', 2004, 'Manufacturer: Casio watches\r\n\r\nStyle: Men\'s watch\r\n\r\nMachine: Battery\r\n\r\nCase material: Stainless steel, also known as stainless steel (All Stainless Steel)\r\n\r\nStrap material: leather strap\r\n\r\n1 year warranty\r\n\r\nMade in Japan\r\n\r\nGlass: Mineral Crystal', 675000, '2023-01-06 08:58:16', '179199675_dong-ho-casio-MTP-V004L-1AUDF.jpg'),
(5, 'MTP-V002D-1AUDF', '\r\nCasio Watch MTP-V002D-1AUDF', 'Casio', '\r\nJapan', 2004, '\r\nManufacturer: Casio watches\r\n\r\nStyle: Men\'s watch\r\n\r\nMachine: Battery\r\n\r\nCase material: Stainless steel, also known as stainless steel (All Stainless Steel)\r\n\r\nStrap Material: Stainless Steel\r\n\r\n1 year warranty\r\n\r\nMade in Japan\r\n\r\nGlass: Mineral Crystal', 765000, '2023-03-23 08:58:16', '888144402_dong-ho-casio-MTP-V002D-1AUDF.jpg);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Email`);

--
-- Indexes for table `watches`
--
ALTER TABLE `watches`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `watches`
--
ALTER TABLE `watches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
