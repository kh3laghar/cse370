-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2015 at 08:13 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cse370`
--
CREATE DATABASE IF NOT EXISTS `cse370` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cse370`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--
-- Creation: Apr 12, 2015 at 03:53 AM
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `date joined` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `customer`:
--   `membership_id`
--       `membership` -> `membership_id`
--

--
-- Dumping data for table `customer`
--

INSERT DELAYED IGNORE INTO `customer` (`customer id`, `name`, `age`, `date joined`, `email`, `phone`, `membership_id`) VALUES
(61512, 'Md. Zahidul Islam', 24, '06-04-15', 'zahidulislam.bracu@gmail.com', 1673213177, 12201051),
(61515, 'Tanzeeb Samee', 23, '08-04-15', 'samee095@gmail.com', 1670769692, 12201065),
(61516, 'Md. Asiful Haque', 24, '04-09-15', 'asiful.bracu@gmail.com', 1717887196, 12201011),
(61517, 'Kanij Fatima Usha', 23, '07-04-15', 'ushbird2@gmail.com', 1689650750, 12201054),
(65153, 'Tareq Robin', 23, '06-04-15', 'tareq.bracu@live.com', 2147483647, 12301013);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--
-- Creation: Apr 12, 2015 at 03:53 AM
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `instructor_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `instructor`:
--   `staff_id`
--       `instructor` -> `instructor_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--
-- Creation: Apr 12, 2015 at 03:53 AM
--

CREATE TABLE IF NOT EXISTS `manager` (
  `manager_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `manager`:
--   `staff_id`
--       `staff` -> `staff_id`
--

--
-- Dumping data for table `manager`
--

INSERT DELAYED IGNORE INTO `manager` (`manager_id`, `staff_id`) VALUES
(31511, 41511),
(31512, 41512),
(31513, 41513),
(31514, 41514),
(31515, 41515);

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--
-- Creation: Apr 12, 2015 at 03:53 AM
--

CREATE TABLE IF NOT EXISTS `membership` (
  `membership date` longtext NOT NULL,
  `membership level` varchar(45) NOT NULL,
  `membership_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT DELAYED IGNORE INTO `membership` (`membership date`, `membership level`, `membership_id`) VALUES
('04-04-15', 'GOLD', 12201011),
('06-04-15', 'GOLD', 12201051),
('07-04-15', 'Platinum', 12201054),
('08-04-15', 'GOLD', 12201065),
('05-04-15', 'SIlver', 12301013);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--
-- Creation: Apr 12, 2015 at 03:53 AM
--

CREATE TABLE IF NOT EXISTS `programme` (
  `cost` int(11) NOT NULL,
  `date` longtext NOT NULL,
  `time` longtext NOT NULL,
  `type_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `programme`:
--   `instructor_id`
--       `staff` -> `staff_id`
--

--
-- Dumping data for table `programme`
--

INSERT DELAYED IGNORE INTO `programme` (`cost`, `date`, `time`, `type_id`, `instructor_id`) VALUES
(12000, '05-04-15', '4.00-7.00', 2, 41512),
(9000, '01-05-15', '9-11', 3, 41513),
(6000, '01-01-15', '9.00-1.00', 5, 41511);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--
-- Creation: Apr 12, 2015 at 03:53 AM
--

CREATE TABLE IF NOT EXISTS `staff` (
  `name` varchar(25) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT DELAYED IGNORE INTO `staff` (`name`, `staff_id`, `instructor_id`, `manager_id`) VALUES
('Antara Raihan', 41511, 71511, 91511),
('Kafi Ahk', 41512, 71512, 91512),
('BM Abir', 41513, 71513, 91513),
('Mim Alam', 41514, 71514, 91514),
('Nayem Jony', 41515, 71515, 91515);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer id`), ADD KEY `membership_id` (`membership_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
 ADD PRIMARY KEY (`instructor_id`), ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
 ADD PRIMARY KEY (`manager_id`), ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
 ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
 ADD PRIMARY KEY (`type_id`), ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`staff_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`membership_id`) REFERENCES `membership` (`membership_id`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `programme`
--
ALTER TABLE `programme`
ADD CONSTRAINT `programme_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `staff` (`staff_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
