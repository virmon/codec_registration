-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2016 at 03:54 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codec_membership`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `members_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `student_no` varchar(20) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `section` varchar(20) NOT NULL,
  `apply` varchar(20) NOT NULL,
  `hackathon` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`members_id`, `student_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `contact`, `email`, `section`, `apply`, `hackathon`, `timestamp`) VALUES
(0001, '2015081787', 'Bien Joseph', 'P.', 'Jocson', '1997-12-08', '09273265998', 'bienjocson1997@gmail.com', '2CSB', 'member', 'No', '2016-09-21 13:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `unpaid`
--

CREATE TABLE `unpaid` (
  `unpaid_id` int(4) UNSIGNED ZEROFILL NOT NULL,
  `student_no` varchar(20) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `section` varchar(20) NOT NULL,
  `apply` varchar(20) NOT NULL,
  `hackathon` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unpaid`
--

INSERT INTO `unpaid` (`unpaid_id`, `student_no`, `firstname`, `middlename`, `lastname`, `birthdate`, `contact`, `email`, `section`, `apply`, `hackathon`, `timestamp`) VALUES
(0001, '2015081734', 'Mark Samuel', 'C.', 'Nicasio', '1998-11-23', '09326795015', 'marksamuel.nicasio@gmail.com', '2 IS B', 'member', 'No', '2016-09-21 13:43:28'),
(0002, '2013056698', 'Chelsea', 'D.', 'Pagtananan', '1997-04-02', '09172406192', '2013056698@ust-ics.mygbiz.com', '4ISC', 'member', 'No', '2016-09-21 13:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'virmon', 'virmontumulak@gmail.com', 'passwordvirmon', 1, '2016-09-11 16:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`members_id`);

--
-- Indexes for table `unpaid`
--
ALTER TABLE `unpaid`
  ADD PRIMARY KEY (`unpaid_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `members_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `unpaid`
--
ALTER TABLE `unpaid`
  MODIFY `unpaid_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
