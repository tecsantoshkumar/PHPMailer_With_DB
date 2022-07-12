-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 11:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mailer`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_mail`
--

CREATE TABLE `user_mail` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_mail`
--

INSERT INTO `user_mail` (`id`, `subject`, `email`, `query`) VALUES
(1, 'Hello', 'sk4809656@gmail.com', 'Hello'),
(2, 'Request', 'sk4809656@gmail.com', 'Hello'),
(3, 'Hello', 'sk4809656@gmail.com', 'Hello'),
(4, 'Hello', 'sk4809656@gmail.com', 'Hello'),
(5, 'Hello', 'sk4809656@gmail.com', 'Hello'),
(6, 'Hello', 'sk4809656@gmail.com', 'Hello'),
(7, 'Hello', 'admin@mvitr.com', 'Hello'),
(8, 'Hello', 'admin@mvitr.com', 'Hello'),
(9, 'Hello', 'admin@mvitr.com', 'Hello'),
(10, 'Request', 'sk4809656@gmail.com', 'Hello'),
(11, 'Request', 'sk4809656@gmail.com', 'Hello'),
(12, 'Request', 'sk4809656@gmail.com', 'Test'),
(13, 'Test', 'nallapaneni.saikrish', 'Test'),
(14, 'Test', 'nallapaneni.saikrish', 'Hello Test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_mail`
--
ALTER TABLE `user_mail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_mail`
--
ALTER TABLE `user_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
