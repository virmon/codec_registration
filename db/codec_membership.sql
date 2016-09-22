-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2016 at 01:10 AM
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
(0012, '2013061644', 'Lean Angelo', 'O.', 'Licerio', '1996-11-07', '09179478662', 'leanangelo711@gmail.com', '3-ISA', 'member', 'No', '2016-09-22 03:37:07'),
(0013, '2014069491', 'Katherine', 'A.', 'Domingo', '1998-02-13', '09174167279', '2014069491@ust-ics.mygbiz.com', '3CSD', 'member', 'No', '2016-09-22 05:46:27'),
(0014, '2014069351', 'George III', 'A', 'Macarubbo', '1998-06-03', '09756709179', '2014069351@ust-ics.mygbiz.com', '3CSD', 'member', 'No', '2016-09-22 06:00:41'),
(0015, '2014069837', 'Angelo Gabriel', 'C', 'GARCIA', '1997-06-03', '09351541432', '2014069837@ust-ics.mygbiz.com', '3CSD', 'member', 'No', '2016-09-22 06:00:47'),
(0016, '2014069389', 'Shaira Nichole', 'Sagenes', 'Marquez', '1998-05-20', '09988628785', 'shairanichole@gmail.com', '3CSA', 'member', 'No', '2016-09-22 06:06:22'),
(0017, '2014069485', 'Myron Angelo', 'O.', 'Dizon', '1997-09-15', '09065663190', 'myrondizon@hotmail.com', '3ISB', 'member', 'No', '2016-09-22 06:16:48'),
(0018, '2015081610', 'Evander James', 'S.', 'Dizon', '1998-12-20', '09758880236', 'evanderrpg@gmail.com', '2CSB', 'member', 'No', '2016-09-22 06:22:51'),
(0019, '2015081794', 'Allen Glen', 'M.', 'Marders', '1998-10-14', '09175474057', 'allen_agmm@yahoo.com', '2CSB', 'member', 'No', '2016-09-22 06:23:54'),
(0020, '2013056509', 'Jenny Lyn', 'L.', 'Frias', '1997-06-06', '09162659813', 'frias.jennylyn@gmail.com', '4CSB', 'Staff', 'No', '2016-09-22 06:27:33'),
(0021, '2013056507', 'MA. MICAH', 'R.', 'ENCARNACION', '1997-02-05', '09958854187', '2013056507@ust-ics.mygbiz.com', '4-CS-B', 'Staff', 'No', '2016-09-22 06:27:39'),
(0022, '2011033046', 'Shawn Reuben', 'R', 'Relova', '1994-10-21', '09277436713', '2011033046@ust-ics.mygbiz.com', '4CSB', 'member', 'No', '2016-09-22 07:04:53'),
(0023, '2014073370', 'Marylaine', 'N', 'Uy', '1997-11-17', '09178583193', 'uymarylaine@gmail.com', '3ISA', 'member', 'No', '2016-09-22 07:11:25'),
(0024, '2014068741', 'Janina May', 'M.', 'Roque', '1998-05-01', '09237010525', '2014068741@ust-ics.mygbiz.com', '3 IS-A', 'member', 'No', '2016-09-22 07:11:27'),
(0025, '20104069784', 'Gino Isaiah', 'C.', 'Figueroa', '1997-10-31', '09178462694', '2014069784@ust-ics.mygbiz.com', '3IS-A', 'member', 'No', '2016-09-22 07:12:25'),
(0026, '2013056531', 'Angela Marie', 'T.N.K.', 'Miranda', '1995-12-11', '09178654075', '2013056531@ust.edu.ph', '4csb', 'member', 'Yes', '2016-09-22 07:12:26'),
(0027, '2014068814', 'Michael Daniele', 'S.B.', 'Zubiri', '1997-11-16', '09175498918', '2014068814@ust-ics.mygbiz.com', '4ISA', 'member', 'No', '2016-09-22 07:55:42'),
(0028, '2014068735', 'Brian', 'S.', 'Zepeda', '1997-11-27', '09278573118', '2014068735@ust-ics.mygbiz.com', '3CS-D', 'EA', 'No', '2016-09-22 07:57:27'),
(0029, '2014072851', 'Harold', 'Estrella', 'Rocillo', '1998-09-12', '09055100139', '2014072851@ust-ics.mygbiz.com', '3CSD', 'member', 'No', '2016-09-22 07:58:57');

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
(0015, '2014069532', 'John Collin', 'P', 'Padua', '1997-12-10', '09157284728', 'collinpadua@gmail.com', '3CSA', 'member', 'No', '2016-09-22 01:37:14'),
(0021, '2013054112', 'Raphael Louis', 'D.', 'Blanco', '1997-11-25', '09434794712', '2013054112@ust-ics.mygbiz.com', '4IS-A', 'EA', 'No', '2016-09-22 05:37:20'),
(0022, '2013054515', 'Nicole Anne', 'C', 'BaÃ±ez', '1997-08-28', '09266808200', 'nicole.banez28@yahoo.com', '4IS-A', 'EA', 'No', '2016-09-22 05:41:27'),
(0027, '2014068489', 'Sofia Vivien', 'P.', 'Perez', '1998-02-20', '09083594432', '2014068489@ust-ics.mygbiz.com', '3IT-G', 'member', 'No', '2016-09-22 06:14:26'),
(0038, '2014068968', 'Mark Samuel', 'V.', 'Sta. Maria', '1997-10-21', '09155348554', '2014068968@ust-ics.mygbiz.com', '3-CS-F', 'member', 'No', '2016-09-22 07:34:06'),
(0039, '2014069839', 'Gabriel Ian Levi', 'C', 'Garcia', '1998-02-04', '09154511824', '2014069839@ust-ics.mygbiz.com', '3-CS-D', 'member', 'No', '2016-09-22 07:49:18'),
(0043, '2013056711', 'Katrina Nicole', 'V.', 'Plantilla', '1996-11-28', '09399348422', 'kplantilla@yahoo.com', '4ISA', 'member', 'No', '2016-09-22 08:01:36'),
(0044, '2012043992', 'Franchesca', '?', 'Oblepias', '1996-02-10', '09179403419', '2012043992@ust-ics.mygbiz.com', '4ISA', 'member', 'No', '2016-09-22 08:05:29');

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
  MODIFY `members_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `unpaid`
--
ALTER TABLE `unpaid`
  MODIFY `unpaid_id` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
