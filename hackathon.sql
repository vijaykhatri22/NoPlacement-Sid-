-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 03:16 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumini`
--

CREATE TABLE `alumini` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `backlogs` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `j_posts`
--

CREATE TABLE `j_posts` (
  `id` int(11) NOT NULL,
  `j_title` varchar(255) NOT NULL,
  `j_discription` text NOT NULL,
  `j_type` char(1) NOT NULL,
  `s_sec` float NOT NULL,
  `h_sec` float NOT NULL,
  `g_agg` float NOT NULL,
  `backlogs` int(5) NOT NULL,
  `salary` double NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seekers`
--

CREATE TABLE `seekers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(13) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `g_year` year(4) DEFAULT NULL,
  `s_sec` float DEFAULT NULL,
  `h_sec` float DEFAULT NULL,
  `g_agg` float DEFAULT NULL,
  `backlogs` int(5) DEFAULT NULL,
  `j_type` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seekers`
--

INSERT INTO `seekers` (`id`, `name`, `email`, `contact`, `password`, `gender`, `g_year`, `s_sec`, `h_sec`, `g_agg`, `backlogs`, `j_type`) VALUES
(1, 'abc', 'abc@gmail.com', NULL, 'jPoigrF94KWYwBD18BCefQ==', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumini`
--
ALTER TABLE `alumini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `j_posts`
--
ALTER TABLE `j_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seekers`
--
ALTER TABLE `seekers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumini`
--
ALTER TABLE `alumini`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `j_posts`
--
ALTER TABLE `j_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seekers`
--
ALTER TABLE `seekers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
