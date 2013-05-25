-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 25, 2013 at 04:51 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `easyticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Count` int(11) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `PaymentId` int(11) DEFAULT NULL,
  `SeatId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK6713A039A3AE5CBE` (`SeatId`),
  KEY `FK6713A0392B17BA75` (`UserId`),
  KEY `FK6713A039A8A48C2E` (`PaymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Answer` longtext,
  `Content` varchar(200) DEFAULT NULL,
  `SendTime` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK9BEFBC002B17BA75` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ImgSrc` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Artist` varchar(50) DEFAULT NULL,
  `Content` longtext,
  `CreateTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `Information` varchar(100) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `EventTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK403827AB37964AA` (`EventTypeId`),
  KEY `FK403827A889AB20A` (`CityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eventtype`
--

CREATE TABLE IF NOT EXISTS `eventtype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE IF NOT EXISTS `faq` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Answer` longtext,
  `CreateTime` datetime DEFAULT NULL,
  `Question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE IF NOT EXISTS `seat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AmountTicket` int(11) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Seat` varchar(255) DEFAULT NULL,
  `EventId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK274225A00AE16` (`EventId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(100) DEFAULT NULL,
  `BirthDay` date DEFAULT NULL,
  `CreateDate` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `FullName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4E39DE82597D115` (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK6713A039A8A48C2E` FOREIGN KEY (`PaymentId`) REFERENCES `payment` (`Id`),
  ADD CONSTRAINT `FK6713A0392B17BA75` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK6713A039A3AE5CBE` FOREIGN KEY (`SeatId`) REFERENCES `seat` (`Id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK9BEFBC002B17BA75` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK403827A889AB20A` FOREIGN KEY (`CityId`) REFERENCES `city` (`Id`),
  ADD CONSTRAINT `FK403827AB37964AA` FOREIGN KEY (`EventTypeId`) REFERENCES `eventtype` (`Id`);

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `FK274225A00AE16` FOREIGN KEY (`EventId`) REFERENCES `event` (`Id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK4E39DE82597D115` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
