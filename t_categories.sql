-- phpMyAdmin SQL Dump
-- version 4.3.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2015 at 12:38 PM
-- Server version: 5.5.43
-- PHP Version: 5.4.42

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smiddleware`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_categories`
--

CREATE TABLE IF NOT EXISTS `t_categories` (
  `a_categoryid` int(11) NOT NULL,
  `a_categoryname` varchar(45) DEFAULT NULL,
  `a_prestashopcategoryid` bigint(20) NOT NULL,
  `a_categorythresholdlimit` int(11) DEFAULT NULL,
  `a_categorygroupid` int(11) DEFAULT NULL,
  `a_weight` int(11) DEFAULT '200',
  `a_createdby` bigint(20) DEFAULT NULL,
  `a_createddate` datetime DEFAULT NULL,
  `a_modifiedby` bigint(20) DEFAULT NULL,
  `a_modifieddate` datetime DEFAULT NULL,
  `a_height` float(6,2) NOT NULL,
  `a_length` float(6,2) NOT NULL,
  `a_breadth` float(6,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`a_categoryid`), ADD UNIQUE KEY `a_prestashopcategoryid_UNIQUE` (`a_prestashopcategoryid`), ADD KEY `t_categories_user_idx` (`a_createdby`), ADD KEY `t_categories_categorygroup_idx` (`a_categorygroupid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `a_categoryid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_categories`
--
ALTER TABLE `t_categories`
ADD CONSTRAINT `t_categories_categorygroup` FOREIGN KEY (`a_categorygroupid`) REFERENCES `t_categorygroup` (`a_categorygroupid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `t_categories_user` FOREIGN KEY (`a_createdby`) REFERENCES `t_user` (`a_userid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
