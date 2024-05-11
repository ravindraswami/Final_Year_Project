-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 03:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `societydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `Sr.No.` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `post` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`Sr.No.`, `name`, `mobile`, `post`) VALUES
(1, 'Sneha pawar', 9699881043, 'President'),
(2, 'Mansi sanjeker', 2345678987, 'Secretory'),
(3, 'sandesh katkar', 2345678987, 'Treasurer');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('sandesh', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `ComplaintNo` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `flatNo` int(11) NOT NULL,
  `date` date NOT NULL,
  `complainttype` varchar(100) NOT NULL,
  `aboutcomplaint` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`ComplaintNo`, `name`, `flatNo`, `date`, `complainttype`, `aboutcomplaint`, `status`) VALUES
(1, 'sandesh', 1, '2024-03-23', 'electric', 'swith board is not working', 1),
(2, 'sandesh', 1, '2024-03-26', 'water', 'kichen taps are not working properly', 0);

-- --------------------------------------------------------

--
-- Table structure for table `flatedetails`
--

CREATE TABLE `flatedetails` (
  `flatNo` int(11) NOT NULL,
  `wing` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `maintenance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flatedetails`
--

INSERT INTO `flatedetails` (`flatNo`, `wing`, `type`, `maintenance`) VALUES
(1, 'A', '1BHK', 10000),
(2, 'A', '1BHK', 10000),
(3, 'A', '1BHK', 10000),
(4, 'A', '1BHK', 10000),
(5, 'A', '1BHK', 10000),
(6, 'A', '1BHK', 10000),
(7, 'A', '1BHK', 10000),
(8, 'A', '1BHK', 10000),
(9, 'A', '1RK', 7000),
(10, 'A', '1RK', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `flateowners`
--

CREATE TABLE `flateowners` (
  `id` int(11) NOT NULL,
  `flateNo` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` int(11) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `adharNo` int(12) NOT NULL,
  `members` int(11) NOT NULL,
  `password` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flateowners`
--

INSERT INTO `flateowners` (`id`, `flateNo`, `name`, `mobile`, `date`, `email`, `gender`, `adharNo`, `members`, `password`) VALUES
(1, 1, 'sandesh', 1243546363, '2024-03-23', 'sandesh@gmail.com', 'Male', 2147483647, 5, 'sandy123'),
(2, 0, 'arihant', 1234567898, '2024-03-23', 'arihant@gmail.com', 'Male', 2147483647, 4, '0'),
(4, 0, 'rohan', 2147483647, '2024-03-05', 'rohan@gmail.com', 'Male', 2147483647, 8, '0');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `sr.no.` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`sr.no.`, `name`) VALUES
(1, 'image1.png\r\n'),
(2, 'image2.png');

-- --------------------------------------------------------

--
-- Table structure for table `noticedetails`
--

CREATE TABLE `noticedetails` (
  `NoticeID` int(11) NOT NULL,
  `NoticeTitle` varchar(100) NOT NULL,
  `NoticeDescription` varchar(250) NOT NULL,
  `NoticeDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `noticedetails`
--

INSERT INTO `noticedetails` (`NoticeID`, `NoticeTitle`, `NoticeDescription`, `NoticeDate`) VALUES
(3, 'Rangapanchami', 'invited to all soceity memebers to play colors on occation of rangapanchmi . venue : society compound', '2024-03-30'),
(4, 'gudi padwa', 'there is meeting for gudi padwa in society garden.', '2024-03-29'),
(5, 'monthly meeting', 'meeting on socity renevation', '2024-03-31'),
(6, 'monthly meeting', 'meeting on increment of maintenance', '2024-03-30'),
(7, 'monthly meeting', 'meeting on water tanker', '2024-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `Flatnum` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerID` int(11) NOT NULL,
  `payment_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_date` datetime NOT NULL,
  `amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `Flatnum`, `name`, `ownerID`, `payment_id`, `added_date`, `amount`) VALUES
(1, 1, '', 0, 'pay_MXY8ppDGcA3NiC', '2023-09-02 10:59:34', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`Sr.No.`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`ComplaintNo`);

--
-- Indexes for table `flateowners`
--
ALTER TABLE `flateowners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`sr.no.`);

--
-- Indexes for table `noticedetails`
--
ALTER TABLE `noticedetails`
  ADD PRIMARY KEY (`NoticeID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `Sr.No.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `ComplaintNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flateowners`
--
ALTER TABLE `flateowners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `sr.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `noticedetails`
--
ALTER TABLE `noticedetails`
  MODIFY `NoticeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
