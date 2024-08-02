-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `damsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AppointmentNumber` int(10) DEFAULT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Doctor` int(10) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AppointmentNumber`, `Name`, `MobileNumber`, `Email`, `AppointmentDate`, `AppointmentTime`, `Specialization`, `Doctor`, `Message`, `ApplyDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 141561395, 'Rajesh Kaur', 9898523694, 'raj@gmail.com', '2023-11-12', '12:41:00', '2', 2, 'Thanks', '2023-11-11 06:11:50', 'Cancelled due to incorrect mobile number', 'Cancelled', '2023-11-11 12:40:35'),
(2, 499219152, 'Mukesh Yadav', 7977797979, 'mukesh@gmail.com', '2023-11-13', '12:30:00', '4', 4, 'NA', '2023-11-12 07:08:58', 'Your appointment has been approved.', 'Approved', '2023-11-12 12:34:41'),
(3, 485109480, 'Tina Yadav', 4654564464, 'tina@gmail.com', '2023-11-11', '13:00:00', '4', 4, 'bjnbjh', '2023-11-10 12:08:51', 'Appointment request has been approved', 'Approved', '2023-11-10 14:32:29'),
(4, 611388102, 'Jyoti', 7897987987, 'jyoti@gmail.com', '2023-11-12', '14:00:00', '4', 4, 'NA', '2023-11-11 14:31:17', NULL, NULL, NULL),
(5, 607441873, 'Anuj Kumar', 1425362514, 'anujkkk@hmak.com', '2023-11-16', '15:00:00', '4', 4, 'NA', '2023-11-15 01:19:37', NULL, NULL, NULL),
(6, 667282012, 'Rahul', 1425251414, 'rk@gmail.com', '2023-11-15', '13:00:00', '4', 4, 'NA', '2023-11-14 01:48:52', 'Approved', 'Approved', '2023-11-14 07:24:25'),
(7, 599829368, 'Anita', 4563214563, 'anta@test.com', '2023-11-25', '15:20:00', '4', 4, 'NA', '2023-11-24 01:49:54', NULL, NULL, NULL),
(8, 940019123, 'Amit Kumar', 1425362514, 'amitkr123@test.com', '2023-11-15', '14:00:00', '1', 1, 'NA', '2023-11-14 01:56:17', 'Your appointment has been approved.', 'Approved', '2023-11-14 01:56:55');


-- --------------------------------------------------------

--
-- Table structure for table `tbldoctor`
--

CREATE TABLE `tbldoctor` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `Password` varchar(259) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldoctor`
--

INSERT INTO `tbldoctor` (`ID`, `FullName`, `MobileNumber`, `Email`, `Specialization`, `Password`, `CreationDate`) VALUES
(1, 'Dr. Anu Rao', 9787979798, 'anu@gmail.com', '4', 'f925916e2754e5e03f75dd58a5733251', '2023-08-09 15:01:11'),
(2, 'Dr. Pradeep Chauhan', 6464654646, 'pra@gmail.com', '2', '202cb962ac59075b964b07152d234b70', '2023-08-09 15:01:59'),
(3, 'Dr. Anuu Rao', 7896541252, 'anurao@gmail.com', '3', 'f925916e2754e5e03f75dd58a5733251', '2023-08-10 01:28:44'),
(4, 'Shiv Kumar Singh', 1231231230, 'skmr123@test.com', '1', 'f925916e2754e5e03f75dd58a5733251', '2023-08-10 01:54:44');


-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div><font color=\"#202124\" face=\"arial, sans-serif\"><b>Our mission declares our purpose of existence as a company and our objectives.</b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b><br></b></font></div><div><font color=\"#202124\" face=\"arial, sans-serif\"><b>To provide every patient with more than they expect in terms of quality care, ease of access, value for time, and exceptional customer service. We achieve this by understanding individual healthcare needs and preferences, and constantly innovating to deliver an unmatched experience in managing doctor appointments.</b></font></div>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Acharya Layout,Mangalore,Karnataka-575019', 'info@gmail.com', 7896541239, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblspecialization`
--

CREATE TABLE `tblspecialization` (
  `ID` int(5) NOT NULL,
  `Specialization` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblspecialization`
--

INSERT INTO `tblspecialization` (`ID`, `Specialization`, `CreationDate`) VALUES
(1, 'Orthopedics', '2023-08-09 14:22:33'),
(2, 'Internal Medicine', '2023-08-09 14:23:42'),
(3, 'Obstetrics and Gynecology', '2023-08-09 14:24:14'),
(4, 'Dermatology', '2023-08-09 14:24:42'),
(5, 'Pediatrics', '2023-08-09 14:25:06'),
(6, 'Radiology', '2023-08-09 14:25:31'),
(7, 'General Surgery', '2023-08-09 14:25:52'),
(8, 'Ophthalmology', '2023-08-09 14:27:18'),
(9, 'Family Medicine', '2023-08-09 14:27:52'),
(10, 'Chest Medicine', '2023-08-09 14:28:32'),
(11, 'Anesthesia', '2023-08-09 14:29:12'),
(12, 'Pathology', '2023-08-09 14:29:51'),
(13, 'ENT', '2023-08-09 14:30:13');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbldoctor`
--
ALTER TABLE `tbldoctor`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblspecialization`
--
ALTER TABLE `tblspecialization`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;


