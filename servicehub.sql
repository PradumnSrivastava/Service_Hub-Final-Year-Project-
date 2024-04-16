-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 09:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servicehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tb`
--

CREATE TABLE `adminlogin_tb` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) NOT NULL,
  `a_email` varchar(60) NOT NULL,
  `a_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin_tb`
--

INSERT INTO `adminlogin_tb` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'Admin Kumar', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `assets_tb`
--

CREATE TABLE `assets_tb` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assets_tb`
--

INSERT INTO `assets_tb` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(1, 'Keyboard', '2023-10-03', 3, 10, 400, 500),
(2, 'Mouse', '2023-10-02', 18, 30, 500, 600),
(3, 'Rode Mic', '2023-10-20', 9, 10, 15000, 18000);

-- --------------------------------------------------------

--
-- Table structure for table `assignwork_tb`
--

CREATE TABLE `assignwork_tb` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text NOT NULL,
  `request_desc` text NOT NULL,
  `requester_name` varchar(60) NOT NULL,
  `requester_add1` text NOT NULL,
  `requester_add2` text NOT NULL,
  `requester_city` varchar(60) NOT NULL,
  `requester_state` varchar(60) NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `assign_tech` varchar(60) NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assignwork_tb`
--

INSERT INTO `assignwork_tb` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_tech`, `assign_date`) VALUES
(1, 1, 'Mic not working', 'my mic is not working', 'Jay', '6565', 'Col', 'Bokaro', 'Jh', 6565, 'jay@gmail.com', 656567, 'Jay Kisan', '2023-10-14'),
(2, 2, 'Jack and Jones', 'Hello There have you seen this movie', 'Raj', '123', 'Sector Five', 'Bokaro', 'Jharkhand', 123456, 'raj@gmail.com', 234234234, 'Kabir', '2023-10-16'),
(3, 3, 'Jack and Jones', 'Hello There have you seen this movie', 'Raj', '123', 'Sector Five', 'Bokaro', 'Jharkhand', 123456, 'raj@gmail.com', 234234234, 'Jay', '2023-10-21'),
(4, 4, 'LCD Not working', 'my lcd is not working properly', 'Rahul', 'HOuse No. 123', 'Railway', 'Bokaro', 'Jh', 12345, 'rahul@gmail.com', 234566, 'Kunal', '2023-10-21'),
(5, 5, 'Rode Mic Note Working', 'my rode mic is not working properly', 'Sam', 'house no 234', 'Sec 3', 'Kolkata', 'West Bengal', 674534, 'user@gmail.com', 1234566782, 'Tech1', '2023-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `customer_tb`
--

CREATE TABLE `customer_tb` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) NOT NULL,
  `custadd` varchar(60) NOT NULL,
  `cpname` varchar(60) NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_tb`
--

INSERT INTO `customer_tb` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(1, 'Amit Shukla', 'Naini', 'Mouse', 1, 600, 600, '2023-10-13'),
(2, 'Jaya Pandey', 'Ranchi', 'Neckband', 2, 1200, 600, '2023-10-13'),
(3, 'Ram', 'Praygraj', 'Headphone', 5, 600, 3000, '2023-10-13'),
(4, 'Sanchi Rai', 'Ranchi', 'Mouse', 2, 600, 1200, '2023-10-13'),
(5, 'Jay Singh', 'varanasi', 'Keyboard', 1, 500, 500, '2023-11-15'),
(6, 'Ravi Kumar', 'Patna', 'Keyboard', 1, 500, 500, '2023-11-20'),
(7, 'Shukla Amar', 'Ranchi', 'Samsung LCD', 1, 12000, 12000, '2024-01-20'),
(8, 'Raj Pandey', 'Delhi', 'Acer LCD Monitor', 1, 7000, 7000, '2024-02-01'),
(9, 'Anand', 'Mumbai', 'Refrigerator', 1, 19000, 19000, '2024-02-10'),
(10, 'Kunal', 'Ranchi', 'Rode Mic', 1, 18000, 18000, '2024-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin_tb`
--

CREATE TABLE `requesterlogin_tb` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) NOT NULL,
  `r_email` varchar(60) NOT NULL,
  `r_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requesterlogin_tb`
--

INSERT INTO `requesterlogin_tb` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(1, '  Rajesh', 'raj@gmail.com', 'user'),
(2, '  User', 'user@gmail.com', 'user'),
(3, 'Jay', 'jay@gmail.com', 'jay123');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest_tb`
--

CREATE TABLE `submitrequest_tb` (
  `request_id` int(11) NOT NULL,
  `request_info` text NOT NULL,
  `request_desc` text NOT NULL,
  `requester_name` varchar(60) NOT NULL,
  `requester_add1` text NOT NULL,
  `requester_add2` text NOT NULL,
  `requester_city` varchar(60) NOT NULL,
  `requester_state` varchar(60) NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) NOT NULL,
  `requester_mobile` bigint(11) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest_tb`
--

INSERT INTO `submitrequest_tb` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(1, 'Jack and Jones', 'Hello There have you seen this movie', 'Raj', '123', 'Sector Five', 'Ranchi', 'Jharkhand', 123456, 'raj@gmail.com', 234234234, '2023-12-13'),
(2, 'asdsadsa', 'asdsadsa', 'dasdsad', 'asdasd', 'sdsadsa', 'asdsad', 'sadasd', 1413123, 'dsadas@gmail.com', 4131323, '2024-01-10'),
(3, 'Rode Mic Note Working', 'my rode mic is not working properly', 'Sam', 'house no 234', 'Sec 3', 'Kolkata', 'West Bengal', 674534, 'user@gmail.com', 1234566782, '2024-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `technician_tb`
--

CREATE TABLE `technician_tb` (
  `empid` int(11) NOT NULL,
  `empName` varchar(60) NOT NULL,
  `empCity` varchar(60) NOT NULL,
  `empMobile` bigint(11) NOT NULL,
  `empEmail` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `technician_tb`
--

INSERT INTO `technician_tb` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(1, 'Tech1', 'Delhi 4', 1234, 'tech@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assets_tb`
--
ALTER TABLE `assets_tb`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer_tb`
--
ALTER TABLE `customer_tb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `technician_tb`
--
ALTER TABLE `technician_tb`
  ADD PRIMARY KEY (`empid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin_tb`
--
ALTER TABLE `adminlogin_tb`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets_tb`
--
ALTER TABLE `assets_tb`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assignwork_tb`
--
ALTER TABLE `assignwork_tb`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_tb`
--
ALTER TABLE `customer_tb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `requesterlogin_tb`
--
ALTER TABLE `requesterlogin_tb`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `submitrequest_tb`
--
ALTER TABLE `submitrequest_tb`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `technician_tb`
--
ALTER TABLE `technician_tb`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
