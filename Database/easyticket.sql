-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 02, 2013 at 12:44 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`Id`, `Name`) VALUES
(1, 'Ho Chi Minh'),
(2, 'Da Nang'),
(3, 'Hai Phong'),
(4, 'Ha Noi'),
(5, 'Ha Dong');

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
  `StartTime` datetime DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `CityId` int(11) DEFAULT NULL,
  `EventTypeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK403827AB37964AA` (`EventTypeId`),
  KEY `FK403827A889AB20A` (`CityId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `eventtype`
--

CREATE TABLE IF NOT EXISTS `eventtype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `eventtype`
--

INSERT INTO `eventtype` (`Id`, `Name`) VALUES
(1, 'Sport'),
(2, 'Movie'),
(3, 'Music'),
(4, 'Drama');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Id`, `Description`, `Name`) VALUES
(1, NULL, 'Debitcard'),
(2, NULL, 'Bank''s credit');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `description`, `name`) VALUES
(1, 'admin', 'admin'),
(2, 'customer', 'customer');

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
  `Discount` double DEFAULT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Address`, `BirthDay`, `CreateDate`, `Email`, `FullName`, `Password`, `Phone`, `UserName`, `RoleId`) VALUES
(1, 'Ha Noi', '1992-10-10', '2012-10-10', 'mytest310113@gmail.com', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '01665834906', 'admin', 1),
(2, 'Ha Noi', '2000-11-07', '2012-10-10', 'mytest310113@gmail.com', 'Customer', '91ec1f9324753048c0096d036a694f86', '0123456789', 'customer', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK6713A0392B17BA75` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK6713A039A3AE5CBE` FOREIGN KEY (`SeatId`) REFERENCES `seat` (`Id`),
  ADD CONSTRAINT `FK6713A039A8A48C2E` FOREIGN KEY (`PaymentId`) REFERENCES `payment` (`Id`);

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
