-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 03:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spark bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountdetails`
--

CREATE TABLE `accountdetails` (
  `sno` int(11) NOT NULL,
  `accID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accountdetails`
--

INSERT INTO `accountdetails` (`sno`, `accID`, `name`, `email`, `balance`) VALUES
(1, 1201, 'Apple', 'apple@gmail.com', 300),
(2, 2301, 'Ball', 'ball@gmail.com', 400),
(3, 3401, 'Cat', 'cat@gmail.com', 500),
(4, 4501, 'Dog', 'dog@gmail.com', 600),
(5, 5601, 'Elephant', 'elephant@gmail.com', 700),
(6, 6701, 'Fog', 'fog@gmail.com', 800),
(7, 7801, 'Hat', 'hat@gmail.com', 900),
(8, 8901, 'Ink', 'ink@gmail.com', 1000),
(9, 9902, 'jeep', 'jeep@gmail.com', 1100),
(10, 9903, 'kit', 'kit@gmail.com', 2000),
(11, 9904, 'lan', 'lan@gmail.com', 3000);


-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `sno` int(11) NOT NULL,
  `payer` text NOT NULL,
  `payerAcc` int(11) NOT NULL,
  `payee` text NOT NULL,
  `payeeAcc` int(11) NOT NULL,
  `amount` double NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`sno`, `payer`, `payerAcc`, `payee`, `payeeAcc`, `amount`, `time`) VALUES
(1, 'Apple', 1201, 'kit', 9903, 100, '2021-07-7 1:38:09'),
(2, 'lan', 9904, 'Hat', 7801, 100, '2021-07-15 9:15:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdetails`
--
ALTER TABLE `accountdetails`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountdetails`
--
ALTER TABLE `accountdetails`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
