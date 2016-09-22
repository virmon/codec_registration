-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2016 at 07:05 AM
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
(0001, '2015081787', 'Bien Joseph', 'P.', 'Jocson', '1997-12-08', '09273265998', 'bienjocson1997@gmail.com', '2CSB', 'member', 'No', '2016-09-21 13:46:41'),
(0002, '2013058907', 'Joshua Timothy', 'Pineda', 'Tolentino', '1996-07-22', '09479560771', 'joshuatimothy.tolentino@gmail.com', '4rd Year - IT - 4ITB', 'member', 'No', '2016-09-22 01:13:14'),
(0003, '2014068922', 'Clyde Ravi', 'Rosario', 'Bitera', '1998-05-09', '09399255891', 'bitera1012@gmail.com', '3CSA', 'EA', 'No', '2016-09-22 01:19:14'),
(0004, '2014072877', 'Geoffrie Simon', 'Yu', 'Yu', '1996-12-15', '09176740117', '2014072877@ust-ics.mygbiz.com', '3CSA', 'Staff', 'No', '2016-09-22 01:24:14'),
(0005, '2014069616', 'Julius Vincent Angelo', 'J', 'Espanol', '1997-07-02', '639262312089', 'juliusespanol27@gmail.com', '3CSA', 'member', 'No', '2016-09-22 01:27:59'),
(0006, '2014069446', 'Mary Louraine', 'M.', 'Monedero', '1997-11-05', '09272724755', '2014069446@ust-ics.mygbiz.com', '3CSA', 'member', 'No', '2016-09-22 01:28:02'),
(0007, '2014069005', 'Joselito', 'S', 'Caballero', '1996-09-14', '09175445727', '2014069005@ust-ics.mygbiz.com', '3CSA', 'member', 'No', '2016-09-22 01:36:42'),
(0008, '2014068992', 'Beatrice Anne ', 'S', 'Bungar', '1997-02-08', '09175063756', '2014068992@ust-ics.mygbiz.com', '3CSB', 'member', 'No', '2016-09-22 01:46:16'),
(0009, '2014068882', 'Matthew Nicole', 'Z', 'Bayabus', '1997-10-29', '09996426752', '2014068882@ust-ics.mygbiz.com', '3-IT-G', 'EA', 'No', '2016-09-22 02:31:31'),
(0010, '2014069778', 'Stephen Kyle', 'R', 'Farinas', '1998-04-16', '09228613616', 'kylefarinas@gmail.com', '3CS-C', 'member', 'No', '2016-09-22 02:54:22'),
(0011, '2015081817', 'Ezekiel', 'P', 'David', '1997-04-27', '09275489085', 'kielboy8@gmail.com', '2CS-B', 'member', 'No', '2016-09-22 03:26:03'),
(0012, '2013061644', 'Lean Angelo', 'O.', 'Licerio', '1996-11-07', '09179478662', 'leanangelo711@gmail.com', '3-ISA', 'member', 'No', '2016-09-22 03:37:07');

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
(0002, '2013056698', 'Chelsea', 'D.', 'Pagtananan', '1997-04-02', '09172406192', '2013056698@ust-ics.mygbiz.com', '4ISC', 'member', 'No', '2016-09-21 13:44:58'),
(0009, '2014068836', 'Angel Luis', 'D', 'Santos', '1997-01-09', '09154459783', '2014068836@ust-ics.mygbiz.com', '3CSA', 'member', 'No', '2016-09-22 01:29:00'),
(0010, '2014068669', 'Joseph', 'C', 'Reyes', '1997-03-19', '09358627317', 'kewongtamulmul@yahoo.com', '3csa', 'member', 'No', '2016-09-22 01:31:29'),
(0011, '2014069840', 'Jan Kristofer', 'C', 'Garcia', '1997-01-08', '09082179793', '2014069840@ust-ics.mygbiz.com', '3CSA', 'member', 'No', '2016-09-22 01:32:35'),
(0012, '2014068596', 'Geriel Louis', 'C', 'Agustin', '1998-07-23', '09066263187', 'gerielagustin26@gmail.com', '3CSA', 'member', 'No', '2016-09-22 01:33:12'),
(0013, '2014069087', 'Jerome', 'M', 'Cases', '1998-04-08', '09177914418', 'casesjeromem@gmail.com', '3CSA', 'member', 'No', '2016-09-22 01:34:56'),
(0015, '2014069532', 'John Collin', 'P', 'Padua', '1997-12-10', '09157284728', 'collinpadua@gmail.com', '3CSA', 'member', 'No', '2016-09-22 01:37:14');

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
  MODIFY `members_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `unpaid`
--
ALTER TABLE `unpaid`
  MODIFY `unpaid_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
