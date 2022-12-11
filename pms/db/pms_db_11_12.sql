-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2022 at 06:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `menusetting`
--

CREATE TABLE `menusetting` (
  `id` int(12) NOT NULL,
  `menucode` varchar(10) NOT NULL,
  `menuname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menusetting`
--

INSERT INTO `menusetting` (`id`, `menucode`, `menuname`) VALUES
(3, '001', 'Personal Resume Management');

-- --------------------------------------------------------

--
-- Table structure for table `prs_coresprofobj`
--

CREATE TABLE `prs_coresprofobj` (
  `id` int(16) NOT NULL,
  `usercode` varchar(15) NOT NULL,
  `correspondence` varchar(50) NOT NULL,
  `profile` varchar(150) NOT NULL,
  `objective` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prs_education`
--

CREATE TABLE `prs_education` (
  `id` int(16) NOT NULL,
  `usercode` varchar(16) NOT NULL,
  `ug` varchar(50) NOT NULL,
  `pg` varchar(50) NOT NULL,
  `hsc` varchar(50) NOT NULL,
  `sslc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prs_experience`
--

CREATE TABLE `prs_experience` (
  `id` int(16) NOT NULL,
  `usercode` varchar(16) NOT NULL,
  `companyname` varchar(50) NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prs_project`
--

CREATE TABLE `prs_project` (
  `id` int(16) NOT NULL,
  `usercode` int(16) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `techused` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `responsibility` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prs_technical`
--

CREATE TABLE `prs_technical` (
  `id` int(16) NOT NULL,
  `usercode` varchar(12) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `submenusetting`
--

CREATE TABLE `submenusetting` (
  `id` int(12) NOT NULL,
  `menucode` varchar(10) NOT NULL,
  `submenuname` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenusetting`
--

INSERT INTO `submenusetting` (`id`, `menucode`, `submenuname`, `url`) VALUES
(1, '001', 'Correspondence/profile Entry', 'prs_coresprofobj?option=view&id=0'),
(2, '002', 'education ', 'prs_education?option=view&id=0'),
(3, '003', 'experience', 'prs_experience?option=view&id=0'),
(4, '004', 'technical', 'prs_technical?option=view&id=0'),
(5, '005', 'project', 'prs_project?option=view&id=0');

-- --------------------------------------------------------

--
-- Table structure for table `usersetting`
--

CREATE TABLE `usersetting` (
  `id` int(12) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobileno` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersetting`
--

INSERT INTO `usersetting` (`id`, `username`, `password`, `email`, `mobileno`) VALUES
(6, 'GAVASKAR S', 'welcome', 'gavaskar07@gmail.com', '944315724612'),
(29, 'SUBIN LAL', 'welcome', 'lalsubin3@gmail.com', '8220115933');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menusetting`
--
ALTER TABLE `menusetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prs_coresprofobj`
--
ALTER TABLE `prs_coresprofobj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prs_education`
--
ALTER TABLE `prs_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prs_experience`
--
ALTER TABLE `prs_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prs_project`
--
ALTER TABLE `prs_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prs_technical`
--
ALTER TABLE `prs_technical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenusetting`
--
ALTER TABLE `submenusetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersetting`
--
ALTER TABLE `usersetting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menusetting`
--
ALTER TABLE `menusetting`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prs_coresprofobj`
--
ALTER TABLE `prs_coresprofobj`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prs_education`
--
ALTER TABLE `prs_education`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prs_experience`
--
ALTER TABLE `prs_experience`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prs_project`
--
ALTER TABLE `prs_project`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prs_technical`
--
ALTER TABLE `prs_technical`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submenusetting`
--
ALTER TABLE `submenusetting`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usersetting`
--
ALTER TABLE `usersetting`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
