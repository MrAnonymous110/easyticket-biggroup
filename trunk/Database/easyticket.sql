-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2013 at 06:47 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(1, 'Jobs'),
(2, 'Information');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `Answer`, `Content`, `SendTime`, `Title`, `UserId`) VALUES
(1, NULL, 'aaa', '2013-06-15 18:36:35', 'aaa', 1);

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
  `discount` double NOT NULL,
  `startTimeBuild` varchar(255) DEFAULT NULL,
  `endTimeBuild` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK403827AB37964AA` (`EventTypeId`),
  KEY `FK403827A889AB20A` (`CityId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Id`, `ImgSrc`, `Address`, `Artist`, `Content`, `CreateTime`, `EndTime`, `StartTime`, `Title`, `CityId`, `EventTypeId`, `discount`, `startTimeBuild`, `endTimeBuild`) VALUES
(5, '/images/vkoolnet01062013.jpg', 'Dan Chu Cinema', 'Ewan McGregor, Nicholas Hoult,...', 'His peaceful life suddenly turned upside down Jack farmers in the moment when he accidentally let the magic beans sprout. The giant trees serve as a bridge between the human world with the world of the scary giant monster - creatures almost unparalleled power exists only in legend. Jack volunteered to fight to the end to defend their kingdom and rescue the princess Isabelle that he has loved from first sight ...', '2013-06-16 01:00:11', '2013-10-12 18:00:00', '2013-10-10 14:00:00', 'Jack The Giant Slayer', 4, 2, 0, NULL, NULL),
(6, '/images/vkoolnet28052013.jpg', 'Dan Chu Cinema', ' Dwayne Johnson, Vin Diesel,...', 'Fast & Furious 6 have orchestrated the participation of famous action star. Actor and producer Vin Diesel plays Dominic Toretto, a professional criminal "watch for" this is to invite employees to cooperate with U.S. diplomatic security bureau Luke Hobbs (Dwayne Johnson) to deal with a gang transnational crime.', '2013-06-16 01:02:02', '2013-10-12 18:00:00', '2013-10-10 14:00:00', 'Fast & Furious 6', 4, 2, 0, NULL, NULL),
(7, '/images/vkoolnet01062013.jpg', 'Dan Chu Cinema', 'Ewan McGregor, Nicholas Hoult,...', 'His peaceful life suddenly turned upside down Jack farmers in the moment when he accidentally let the magic beans sprout. The giant trees serve as a bridge between the human world with the world of the scary giant monster - creatures almost unparalleled power exists only in legend. Jack volunteered to fight to the end to defend their kingdom and rescue the princess Isabelle that he has loved from first sight ...', '2013-06-16 01:18:57', '2013-10-12 18:00:00', '2013-10-10 14:00:00', 'Jack The Giant Slayer', 1, 2, 0, NULL, NULL),
(8, '/images/5.jpg', 'test', 'test', 'test', '2013-06-16 01:20:37', '2013-10-10 15:30:00', '2013-10-10 14:00:00', 'test', 1, 1, 0, NULL, NULL),
(9, '/images/12.jpg', 'aaaaaaa', 'aaaaaa', 'aaaaaaaa', '2013-06-16 01:23:05', '2013-10-10 15:30:00', '2013-10-10 14:00:00', 'aaaaa', 5, 4, 0, NULL, NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`Id`, `Answer`, `CreateTime`, `Question`) VALUES
(4, 'You click button booking', '2013-06-16 01:09:14', 'how to booking event?'),
(5, 'You click button detail on event', '2013-06-16 01:10:30', 'How to view information event?');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(255) DEFAULT NULL,
  `subContent` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `cateId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK24FEF36ADFBA01` (`cateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Id`, `Content`, `subContent`, `Title`, `cateId`) VALUES
(4, '						\r\nThis is content news	', NULL, 'Recruit some employees for company EasyTicket', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`Id`, `AmountTicket`, `Description`, `Price`, `Seat`, `EventId`, `Discount`) VALUES
(4, 20, 'VIP', 200, 'VIP', 5, 1),
(5, 12, 'Hot ', 250, 'HOT', 6, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `FK24FEF36ADFBA01` FOREIGN KEY (`cateId`) REFERENCES `category` (`Id`);

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
