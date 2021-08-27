-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 27, 2021 at 12:37 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leavemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `leaveinfo`
--

CREATE TABLE `leaveinfo` (
  `empno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual` decimal(50,2) NOT NULL,
  `maternity` int(11) NOT NULL,
  `paternity` int(11) NOT NULL,
  `compassionate1` int(11) NOT NULL,
  `compassionate2` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaveinfo`
--

INSERT INTO `leaveinfo` (`empno`, `annual`, `maternity`, `paternity`, `compassionate1`, `compassionate2`, `year`) VALUES
('0000', '0.00', 90, 14, 7, 1, 2021),
('0001', '47.50', 0, 14, 7, 1, 2021),
('0008', '12.25', 90, 0, 7, 1, 2021),
('0027', '7.25', 0, 14, 7, 1, 2021),
('0035', '12.25', 0, 14, 7, 1, 2021),
('0041', '10.25', 90, 0, 7, 1, 2021),
('0042', '7.25', 0, 14, 7, 1, 2021),
('0053', '11.25', 90, 0, 7, 1, 2021),
('0075', '7.25', 0, 14, 7, 1, 2021),
('0077', '4.25', 90, 0, 7, 1, 2021),
('0079', '12.25', 90, 0, 7, 1, 2021),
('0091', '5.25', 90, 0, 7, 1, 2021),
('0107', '9.25', 0, 14, 7, 1, 2021),
('0108', '12.25', 90, 0, 7, 1, 2021),
('0110', '7.25', 90, 0, 7, 1, 2021),
('0117', '12.25', 90, 0, 7, 1, 2021),
('0140', '12.25', 0, 14, 7, 1, 2021),
('0152', '3.25', 90, 0, 7, 1, 2021),
('0160', '10.25', 90, 0, 7, 1, 2021),
('0167', '8.25', 0, 14, 7, 1, 2021),
('0172', '10.25', 90, 0, 7, 1, 2021),
('0173', '12.25', 0, 14, 7, 1, 2021),
('0179', '12.25', 90, 0, 7, 1, 2021),
('0180', '12.25', 90, 0, 7, 1, 2021),
('0181', '8.25', 90, 0, 7, 1, 2021),
('0182', '6.25', 0, 14, 7, 1, 2021),
('0183', '0.00', 90, 0, 7, 1, 2021),
('0190', '12.25', 0, 14, 7, 1, 2021),
('0191', '0.00', 0, 14, 7, 1, 2021),
('0193', '12.25', 0, 14, 7, 1, 2021),
('0194', '12.25', 90, 0, 7, 1, 2021),
('0195', '0.00', 90, 0, 7, 1, 2021),
('0197', '0.00', 0, 14, 7, 1, 2021),
('0198', '0.00', 90, 0, 7, 1, 2021),
('0199', '0.00', 90, 0, 7, 1, 2021),
('0200', '0.00', 0, 14, 7, 1, 2021),
('0201', '12.25', 90, 0, 7, 1, 2021),
('0202', '0.00', 0, 14, 7, 1, 2021);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `fname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empno` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regtime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `lname`, `empno`, `gender`, `tel`, `category`, `regtime`) VALUES
('FNAME', 'LNAME', '0000', 'Other', '0000000000', 'NULL', '2021-08-27 06:35:50'),
('Allan', 'Ragi', '0001', 'Male', '0722520053', 'Executive Director', '2021-07-31 21:00:00'),
('Beatrice', 'Awino', '0008', 'Female', '0722858103', 'Regional Coordinator', '2021-07-31 21:00:00'),
('Jackson', 'Ndegwa', '0027', 'Male', '0722762457', 'Head of Policy', '2021-07-31 21:00:00'),
('Kevin', 'Kai', '0035', 'Male', '0723722498', 'Data Clerk MSA', '2021-07-31 21:00:00'),
('Sylvia', 'Ayon', '0041', 'Female', '0723765613', 'Key Population Manager', '2021-07-31 21:00:00'),
('Peter', 'Mutinda', '0042', 'Male', '0726641637', 'Finance katch', '2021-07-31 21:00:00'),
('Charity', 'Wangui', '0053', 'Female', '0728530787', 'Communications Officer', '2021-07-31 21:00:00'),
('Samuel', 'Njoroge', '0075', 'Male', '0727440638', 'M&E MSA', '2021-07-31 21:00:00'),
('Lilian', 'Wanjiku', '0077', 'Female', '0722145962', 'null', '2021-07-31 21:00:00'),
('Rita', 'Wanjiru', '0079', 'Female', '0723076626', 'Regional coordinator', '2021-07-31 21:00:00'),
('Knapek', 'Masese', '0091', 'Female', '0718848783', 'Program Officer', '2021-07-31 21:00:00'),
('Stephen', 'Ikonya', '0107', 'Male', '0722106199', 'Regional Coordinator', '2021-07-31 21:00:00'),
('Nyanga', 'Martha', '0108', 'Female', '0710911653', 'null', '2021-07-31 21:00:00'),
('Rahab', 'Gathoni', '0110', 'Female', ' 0720986341', 'Head Campaigner', '2021-07-31 21:00:00'),
('Catherine', 'Anyango', '0117', 'Female', '0733933475', 'Finance', '2021-07-31 21:00:00'),
('Gregory', 'Brian', '0140', 'Male', '0724020122', 'M&E katch', '2021-07-31 21:00:00'),
('Leah', 'Mokuhe', '0152', 'Female', '0727435703', 'null', '2021-07-31 21:00:00'),
('Jane', 'Njeri', '0160', 'Female', '0717875965', 'Finance MSA', '2021-07-31 21:00:00'),
('Francis', 'Njenga', '0167', 'Male', '0724996060', 'ICT HQ', '2021-07-31 21:00:00'),
('Salma', 'Zawadi', '0172', 'Female', '00000000000', 'null', '2021-07-31 21:00:00'),
('Elijah', 'Otieno', '0173', 'Male', '0720702988', 'Finance HQ', '2021-07-31 21:00:00'),
('Brenda', 'Naishorwa', '0179', 'Female', '0000000000000', 'null', '2021-07-31 21:00:00'),
('Annah', 'Likita', '0180', 'Female', '000000000', 'null', '2021-07-31 21:00:00'),
('Faima', 'Kadoga', '0181', 'Female', '00000000', 'null', '2021-07-31 21:00:00'),
('Joel', 'Mwarumba', '0182', 'Male', '0000000000', 'null', '2021-07-31 21:00:00'),
('Ali', 'Tabu', '0183', 'Female', '00000000000', 'null', '2021-07-31 21:00:00'),
('Robert', 'Kisia', '0190', 'Male', '00000000000', 'Clinician DIC', '2021-07-31 21:00:00'),
('Edwin', 'Kamumbu', '0191', 'Male', '0716821963', 'Finance', '2021-07-31 21:00:00'),
('Edwin', 'Ihaji', '0193', 'Male', '00000000', 'Site Coordinator', '2021-07-31 21:00:00'),
('Diana', 'Kemunto', '0194', 'Female', '0710293771', 'null', '2021-07-31 21:00:00'),
('Nkath', 'Koronya', '0195', 'Female', '0721377664', 'Communications Intern', '2021-07-31 21:00:00'),
('John', 'Kamau', '0197', 'Male', '00000000000', 'Intern Katch', '2021-07-31 21:00:00'),
('Mary', 'Maina', '0198', 'Female', '000000000', 'DIC intern', '2021-07-31 21:00:00'),
('Sheila', 'Kobia', '0199', 'Female', '0722137422', 'Admin intern', '2021-07-31 21:00:00'),
('Patrick', 'Nyoko', '0200', 'Male', '000000000', 'ICT intern', '2021-07-31 21:00:00'),
('Agnes', 'Mutiso', '0201', 'Female', '00000000000', 'HTS DIC', '2021-07-31 21:00:00'),
('Tome', 'Wesley', '0202', 'Male', '0000000000', 'M&E intern HQ', '2021-07-31 21:00:00');

--
-- Triggers `registration`
--
DELIMITER $$
CREATE TRIGGER `avoid_empty` BEFORE INSERT ON `registration` FOR EACH ROW SET NEW.fname = 
      CASE WHEN 
       CHAR_LENGTH(NEW.fname) = 0 OR
       CHAR_LENGTH(NEW.lname)    = 0 OR
       CHAR_LENGTH(NEW.empno)   = 0 OR
       CHAR_LENGTH(NEW.category)   = 0 OR
       CHAR_LENGTH(NEW.tel)     = 0 THEN NULL
       ELSE NEW.fname
      END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leaveinfo`
--
ALTER TABLE `leaveinfo`
  ADD PRIMARY KEY (`empno`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`empno`);

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `update_annual_for_newly_registered` ON SCHEDULE EVERY 20 HOUR STARTS '2021-08-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE leaveinfo,registration
SET annual = (annual + 1.75)
WHERE
registration.empno = leaveinfo.empno
AND
TIMESTAMPDIFF(DAY,registration.regtime,CURRENT_TIMESTAMP) != 0
AND
MOD(TIMESTAMPDIFF(DAY,registration.regtime,CURRENT_TIMESTAMP),30) = 0
AND
registration.regtime != '2021-08-01 00:00:00'$$

CREATE DEFINER=`root`@`localhost` EVENT `update_registered_annual` ON SCHEDULE EVERY 1 MONTH STARTS '2021-08-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE leaveinfo,registration
SET annual = (annual + 1.75)
WHERE
registration.empno = leaveinfo.empno
AND
registration.regtime = '2021-08-01 00:00:00'
AND
registration.empno != '0001'$$

CREATE DEFINER=`root`@`localhost` EVENT `update_annualforboss` ON SCHEDULE EVERY 1 MONTH STARTS '2021-08-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE leaveinfo,registration
SET annual = (annual + 2.5)
WHERE
registration.empno = leaveinfo.empno
AND
registration.empno = '0001'$$

CREATE DEFINER=`root`@`localhost` EVENT `update_maternity_yearly` ON SCHEDULE EVERY 1 YEAR STARTS '2021-01-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE leaveinfo,registration
SET maternity = '90',paternity = '0',compassionate1 = '7',compassionate2 ='1',leaveinfo.year = (leaveinfo.year+1)
WHERE
registration.empno = leaveinfo.empno
AND
registration.gender = 'female'$$

CREATE DEFINER=`root`@`localhost` EVENT `update_paternity_yearly` ON SCHEDULE EVERY 1 YEAR STARTS '2021-01-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE leaveinfo,registration
SET maternity = '0',paternity = '14',compassionate1 = '7',compassionate2 ='1',leaveinfo.year = (leaveinfo.year+1)
WHERE
registration.empno = leaveinfo.empno
AND
registration.gender = 'male'$$

CREATE DEFINER=`root`@`localhost` EVENT `update_for_other_gender` ON SCHEDULE EVERY 1 YEAR STARTS '2021-01-01 00:00:00' ON COMPLETION PRESERVE ENABLE DO UPDATE leaveinfo,registration
SET maternity = '90',paternity = '14',compassionate1 = '7',compassionate2 ='1',leaveinfo.year = (leaveinfo.year+1)
WHERE
registration.empno = leaveinfo.empno
AND
registration.gender = 'other'$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
