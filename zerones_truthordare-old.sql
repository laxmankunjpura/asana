-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2016 at 01:52 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zerones_truthordare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`, `createdAt`) VALUES
(1, 'mail@archisecsolutions.com', 'archisec@123', '2016-11-15 07:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `truth_or_dare`
--

CREATE TABLE IF NOT EXISTS `truth_or_dare` (
  `truth_or_dare_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('truth','dare') NOT NULL,
  `user_type` enum('kids','teens','extreme') NOT NULL,
  `text` varchar(250) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` varchar(11) NOT NULL,
  PRIMARY KEY (`truth_or_dare_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `truth_or_dare`
--

INSERT INTO `truth_or_dare` (`truth_or_dare_id`, `type`, `user_type`, `text`, `createdAt`, `order_id`) VALUES
(6, 'truth', 'kids', 'What was your funniest first date ever?', '2016-11-15 12:55:04', '18'),
(7, 'truth', 'kids', 'What is your biggest turn off in a partner?', '2016-11-15 12:55:16', '21'),
(8, 'dare', 'teens', 'Do an impression of your favorite celebrity', '2016-11-15 12:55:42', '22'),
(9, 'dare', 'teens', 'Close your eyes and send a blind text to a random person', '2016-11-15 12:55:59', '6'),
(10, 'truth', 'teens', 'Do you like to exercise?', '2016-11-15 12:56:20', '7'),
(11, 'truth', 'extreme', 'Describe your worst kiss ever?', '2016-11-15 12:57:04', '8'),
(12, 'dare', 'extreme', 'Do an impression of someone until another player can guess who you are', '2016-11-15 12:57:42', '3'),
(13, 'dare', 'extreme', 'Take a selfie with the toilet and post it online', '2016-11-15 12:58:11', '19'),
(14, 'truth', 'kids', 'Can you touch your tongue to your nose?', '2016-11-16 12:59:48', '1'),
(15, 'truth', 'teens', 'If you could take away one bad thing in the world, what would it be?', '2016-11-16 13:00:25', '20'),
(16, 'truth', 'extreme', 'What is your guilty pleasure?', '2016-11-16 13:00:38', '17'),
(17, 'dare', 'kids', 'Belly dance to a country song', '2016-11-16 13:01:04', '16'),
(18, 'dare', 'teens', 'Make up a country song of the top of your head', '2016-11-16 13:01:20', '2'),
(19, 'dare', 'extreme', 'Get on all fours and act like a dog until your next turn', '2016-11-16 13:01:35', '4'),
(21, 'dare', 'extreme', 'Do an impression of someone until another player can guess who you are', '2016-11-16 13:03:45', '9'),
(22, 'dare', 'teens', 'Say â€œya heard mehâ€ after everything you say for the next 5 minutes', '2016-11-16 13:07:30', '10'),
(23, 'dare', 'kids', 'Twerk for a minute', '2016-11-16 13:08:09', '11'),
(24, 'truth', 'extreme', 'What country would like to live in if you had the chance?', '2016-11-16 13:08:43', '13'),
(25, 'truth', 'teens', 'If you could change one thing on your body, what would it be?', '2016-11-16 13:08:59', '14'),
(26, 'truth', 'kids', 'Do you believe in love at all?', '2016-11-16 13:09:23', '15'),
(27, 'dare', 'teens', 'Act like Romeo from â€œRomeo and Julietâ€ (pick who you want to be Juliet)', '2016-11-16 13:10:00', '12'),
(28, 'truth', 'teens', 'test', '2016-11-24 12:08:54', '5');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
