-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 29, 2019 at 02:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lelenor`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) NOT NULL,
  `slot_id` int(10) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `slot_id`, `patient_name`, `doctor_id`, `deleted_at`) VALUES
(1, 11, 'Tasin', 23, '2019-10-09 18:00:00'),
(2, 12, 'Nawaz', 22, '2019-12-24 17:38:02'),
(3, 13, 'Rakib', 23, '2019-12-24 17:38:02'),
(4, 14, 'Hossen', 23, '2019-12-24 17:38:02'),
(5, 15, 'Aritra', 24, '2019-12-24 17:38:02'),
(6, 16, 'Anik', 22, '2019-12-24 17:38:02'),
(7, 17, 'Manik', 22, '2019-12-24 17:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) NOT NULL,
  `STATUS` int(5) NOT NULL,
  `doctor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `STATUS`, `doctor_name`) VALUES
(22, 1, 'Khaled'),
(23, 1, 'Hasan'),
(24, 0, 'Rumi');

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `duration` int(20) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `date`, `duration`, `time`) VALUES
(11, '2019-10-10', 2900, '01:01:00'),
(12, '2019-10-11', 1200, '02:01:00'),
(13, '2019-10-18', 1100, '03:01:00'),
(14, '2019-09-08', 200, '11:01:00'),
(15, '2019-08-01', 500, '01:31:00'),
(16, '2019-10-07', 300, '02:31:00'),
(17, '2019-10-02', 1200, '03:01:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
