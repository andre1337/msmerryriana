-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 12:46 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mls`
--

-- --------------------------------------------------------

--
-- Table structure for table `mls_banned`
--

CREATE TABLE `mls_banned` (
  `userid` int(11) NOT NULL,
  `until` int(11) NOT NULL,
  `by` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mls_groups`
--

CREATE TABLE `mls_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `canban` int(11) NOT NULL,
  `canhideavt` int(11) NOT NULL,
  `canedit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_groups`
--

INSERT INTO `mls_groups` (`groupid`, `name`, `type`, `priority`, `color`, `canban`, `canhideavt`, `canedit`) VALUES
(1, 'Guest', 0, 1, '', 0, 0, 0),
(2, 'Member', 1, 1, '#08c', 0, 0, 0),
(3, 'Moderator', 2, 1, 'green', 1, 1, 0),
(4, 'Administrator', 3, 1, '#F0A02D', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mls_privacy`
--

CREATE TABLE `mls_privacy` (
  `userid` int(11) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_privacy`
--

INSERT INTO `mls_privacy` (`userid`, `email`) VALUES
(1, 0),
(4, 0),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mls_ref`
--

CREATE TABLE `mls_ref` (
  `id` int(25) NOT NULL,
  `nama` varchar(23) NOT NULL,
  `email` varchar(24) NOT NULL,
  `hp` varchar(24) NOT NULL,
  `ref` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_ref`
--

INSERT INTO `mls_ref` (`id`, `nama`, `email`, `hp`, `ref`) VALUES
(1, 'rian', 'rian@gmail.com', '2323232332', 'kevin'),
(2, 'Dian', 'dian@gmail.com', '081345231', 'Jannah');

-- --------------------------------------------------------

--
-- Table structure for table `mls_settings`
--

CREATE TABLE `mls_settings` (
  `site_name` varchar(255) NOT NULL DEFAULT 'Demo Site',
  `url` varchar(300) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `max_ban_period` int(11) NOT NULL DEFAULT 10,
  `register` int(11) NOT NULL DEFAULT 1,
  `email_validation` int(11) NOT NULL DEFAULT 0,
  `captcha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_settings`
--

INSERT INTO `mls_settings` (`site_name`, `url`, `admin_email`, `max_ban_period`, `register`, `email_validation`, `captcha`) VALUES
('mls', 'http://localhost/mls', 'nor.reply@gmail.com', 10, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mls_users`
--

CREATE TABLE `mls_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `validated` varchar(100) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT 2,
  `lastactive` int(11) NOT NULL,
  `showavt` int(11) NOT NULL DEFAULT 1,
  `banned` int(11) NOT NULL,
  `regtime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mls_users`
--

INSERT INTO `mls_users` (`userid`, `username`, `display_name`, `password`, `email`, `key`, `validated`, `groupid`, `lastactive`, `showavt`, `banned`, `regtime`) VALUES
(1, 'admin', 'Admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'admin@gmail.com', '', '1', 4, 1575863773, 0, 0, 1575736621),
(3, 'user', 'user', '12dea96fec20593566ab75692c9949596833adc9', 'user@user.com', '', '1', 2, 1, 1, 0, 1),
(4, 'kevin', 'kevin', 'ffb4761cba839470133bee36aeb139f58d7dbaa9', 'andreassur@digitalent2019.id', '', '1', 2, 1575816320, 1, 0, 1575784663),
(5, 'Jannah', 'jannah', '3b7906669e6c5b713128bc7b4bca91975cf18865', 'jannah@gmail.com', '', '1', 2, 1575866226, 1, 0, 1575787624);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mls_banned`
--
ALTER TABLE `mls_banned`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `mls_groups`
--
ALTER TABLE `mls_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `mls_privacy`
--
ALTER TABLE `mls_privacy`
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `mls_ref`
--
ALTER TABLE `mls_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mls_users`
--
ALTER TABLE `mls_users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mls_groups`
--
ALTER TABLE `mls_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mls_ref`
--
ALTER TABLE `mls_ref`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mls_users`
--
ALTER TABLE `mls_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
