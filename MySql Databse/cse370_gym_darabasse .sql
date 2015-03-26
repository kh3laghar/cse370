-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2015 at 03:08 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cse370_gym_darabasse`
--

-- --------------------------------------------------------

--
-- Table structure for table `instr_info`
--

CREATE TABLE IF NOT EXISTS `instr_info` (
  `instr_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager_info`
--

CREATE TABLE IF NOT EXISTS `manager_info` (
  `man_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `s_nid` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_info`
--

CREATE TABLE IF NOT EXISTS `reg_info` (
`id` int(10) NOT NULL,
  `Name` text NOT NULL,
  `u_id` varchar(20) NOT NULL,
  `u_pass` varchar(12) NOT NULL,
  `u_email` varchar(30) NOT NULL,
  `u_phone` int(11) NOT NULL,
  `u-age` int(3) NOT NULL,
  `u_height` float(10,5) NOT NULL COMMENT 'Put your Height in Cm format '
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_info`
--

INSERT INTO `reg_info` (`id`, `Name`, `u_id`, `u_pass`, `u_email`, `u_phone`, `u-age`, `u_height`) VALUES
(1, 'Md. Asiful Haque', 'kh3laghar', '123456789A', 'kh3laghar@gmail.com', 1717887196, 24, 0.99900),
(2, 'Zahidul Islam', 'zahidul.bracu', '01673213177', 'zahidulislam.bracu@gmail.com', 1673213177, 23, 154.77000),
(3, 'Tarequl Hasan Robin', 'tareq.robin', '01715139277', 'tareq.robin@live.com', 1715139277, 25, 0.99900),
(4, 'B. M Abir', 'ananto_17', '01915601505', 'ananto_17@live.com', 1915601505, 22, 0.99900);

-- --------------------------------------------------------

--
-- Table structure for table `staff_info`
--

CREATE TABLE IF NOT EXISTS `staff_info` (
`s_Id` int(10) NOT NULL,
  `s_name` varchar(255) NOT NULL,
  `s_bdate` date NOT NULL,
  `s_nid` int(15) NOT NULL,
  `man_id` int(10) NOT NULL,
  `instr_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg_info`
--
ALTER TABLE `reg_info`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_email` (`u_email`);

--
-- Indexes for table `staff_info`
--
ALTER TABLE `staff_info`
 ADD PRIMARY KEY (`s_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg_info`
--
ALTER TABLE `reg_info`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `staff_info`
--
ALTER TABLE `staff_info`
MODIFY `s_Id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
