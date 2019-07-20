-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2019 at 11:42 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(12) NOT NULL,
  `division_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `division_name`) VALUES
(1, 'Dhaka', 'Dhaka'),
(2, 'Gazipur', 'Dhaka'),
(3, 'Sherpur', 'Dhaka'),
(4, 'Joypurhat', 'Rajshahi'),
(5, 'Bogura', 'Rajshahi'),
(6, 'Nator', 'Rajshahi'),
(7, 'Dinajpur', 'Rangpur'),
(8, 'Gaibandha', 'Rangpur'),
(9, 'Rangpur', 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `division_id` int(10) UNSIGNED NOT NULL,
  `division_name` varchar(121) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`division_id`, `division_name`, `token`, `created_at`) VALUES
(1, 'Dhaka', '', NULL),
(2, 'Rajshahi', '', NULL),
(3, 'Rangpur', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_07_20_044505_create_division_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thana`
--

CREATE TABLE `thana` (
  `thana_id` int(11) NOT NULL,
  `thana_name` varchar(131) NOT NULL,
  `district_name` varchar(131) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thana`
--

INSERT INTO `thana` (`thana_id`, `thana_name`, `district_name`) VALUES
(1, 'Azampur', 'Dhaka'),
(2, 'Rampura', 'Dhaka'),
(3, 'Sreepur', 'Gazipur'),
(4, 'Kapasia', 'Gazipur'),
(5, 'Jhenaigati', 'Sherpur'),
(6, 'Nakla', 'Sherpur'),
(7, 'Akkelpur', 'Joypurhat'),
(8, 'Kalai', 'Joypurhat'),
(9, 'Khetlal', 'Joypurhat'),
(10, 'Dupchachia', 'Bogura'),
(11, 'Molamgari', 'Bogura'),
(12, 'Baraigram', 'Nator'),
(13, 'Gurudaspur', 'Nator'),
(14, 'Parbotipur', 'Dinajpur'),
(15, 'Fulbari', 'Dinajpur'),
(16, 'Polashbari', 'Gaibandha'),
(17, 'Sundoeganj', 'Gaibandha'),
(18, 'Pirgachha', 'Rangpur'),
(19, 'Pirganj ', 'Rangpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thana`
--
ALTER TABLE `thana`
  ADD PRIMARY KEY (`thana_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `division_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `thana`
--
ALTER TABLE `thana`
  MODIFY `thana_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
