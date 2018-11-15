-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 02, 2018 at 01:54 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolstuff`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_session`
--

DROP TABLE IF EXISTS `academic_session`;
CREATE TABLE IF NOT EXISTS `academic_session` (
  `academicSessionID` int(12) NOT NULL AUTO_INCREMENT,
  `year` varchar(45) NOT NULL,
  `semister` varchar(45) NOT NULL,
  `opening_date` varchar(45) NOT NULL,
  `closing_date` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`academicSessionID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic_session`
--

INSERT INTO `academic_session` (`academicSessionID`, `year`, `semister`, `opening_date`, `closing_date`, `status`) VALUES
(1, '2014/2015', '1', '2014-12-08', '2014-14-12', 'Active'),
(2, '2014/2015', '2', '2015-27-01', '2015-31-05', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
CREATE TABLE IF NOT EXISTS `auth` (
  `id` int(11) NOT NULL,
  `session_id` varchar(45) DEFAULT NULL,
  `logIn_timestamp` varchar(45) DEFAULT NULL,
  `logOut_timestamp` varchar(45) DEFAULT NULL,
  `ipaddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
CREATE TABLE IF NOT EXISTS `college` (
  `collegeId` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) NOT NULL,
  `shortname` varchar(10) NOT NULL,
  PRIMARY KEY (`collegeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`collegeId`, `fullname`, `shortname`) VALUES
(1, 'College of Computing & Informatics Science', 'COCIS'),
(5, 'Education and languages', 'EDUC ');

-- --------------------------------------------------------

--
-- Table structure for table `courseunit`
--

DROP TABLE IF EXISTS `courseunit`;
CREATE TABLE IF NOT EXISTS `courseunit` (
  `courseunitID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `courseunitCode` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `semesterOffered` varchar(45) DEFAULT NULL,
  `yearOffered` varchar(45) DEFAULT NULL,
  `isTraining` varchar(45) DEFAULT NULL,
  `creditUnits` varchar(45) DEFAULT NULL,
  `programme_programmeID` int(10) UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  PRIMARY KEY (`courseunitID`,`programme_programmeID`),
  KEY `fk_courseunit_programme1_idx` (`programme_programmeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courseunit`
--

INSERT INTO `courseunit` (`courseunitID`, `courseunitCode`, `name`, `semesterOffered`, `yearOffered`, `isTraining`, `creditUnits`, `programme_programmeID`, `action`) VALUES
(1, 'BSC3100', 'Modeling and Simulation', '1', '1', NULL, '4.0', 1, 'y'),
(2, 'BSC31005', 'Intelligent Systems', '1', '1', NULL, '2.0', 1, 'y'),
(3, 'BSC3106', 'Business Process Management', '1', '1', NULL, '4.0', 1, ''),
(4, 'BSC3107', 'Computer Literacy', '1', '1', NULL, '4.0', 1, ''),
(5, 'BSC5530', 'Computer Literacy extended', '2', '1', 'No', '5.0', 1, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `college_collegeId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `code`, `college_collegeId`) VALUES
(2, 'department of networks', 'DON', 1),
(4, 'Information Systems', 'BIS', 5),
(5, 'Information Systems', 'COMPSCI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ethusiast`
--

DROP TABLE IF EXISTS `ethusiast`;
CREATE TABLE IF NOT EXISTS `ethusiast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_key` varchar(45) NOT NULL,
  `computer_name` varchar(45) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `s_status` varchar(2) NOT NULL,
  `validity` varchar(9) NOT NULL,
  `i_date` varchar(10) NOT NULL,
  `e_date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `s_key` (`s_key`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ethusiast`
--

INSERT INTO `ethusiast` (`id`, `s_key`, `computer_name`, `ip_address`, `s_status`, `validity`, `i_date`, `e_date`) VALUES
(56, 'AE5F-37BE-D3F5-9A08', '', '', 'T', '30', 'SunSun/May', ''),
(57, 'ACE3-820E-0ECB-D2C1', '', '', 'T', '30', '', ''),
(58, '48E1-1364-821E-B26D', '', '', 'T', '30', '27/05/18', ''),
(59, 'D17B-2170-6478-8FCA', '', '', 'T', '30', '27/05/1818', ''),
(60, 'E92C-164F-6D7A-5CB8', '', '', 'T', '30', '', ''),
(61, 'FD3E-5903-18C6-D6BF', '', '', 'T', '30', '27/05/18', ''),
(62, '20DB-5367-0D6C-6109', '', '', 'A', '30', '', ''),
(63, 'BD65-0276-5DA2-6B32', '', '', 'T', '30', '', ''),
(64, 'CFE4-68DA-EF95-053D', '', '', 'A', '30', '', ''),
(65, '20DE-53C7-25DF-6724', '', '', 'A', '30', '', ''),
(66, '7E1D-CF8B-F296-869B', '', '', 'A', '30', '', ''),
(67, '92FA-D8C9-7B69-BD56', '', '', 'A', '60', '', ''),
(68, '5A1C-476C-5D04-32F6', '', '', 'A', '60', '', ''),
(69, 'C594-EF9A-C52E-D1CB', '', '', 'A', '60', '', ''),
(70, '1278-D715-3E29-F958', '', '', 'A', '60', '', ''),
(71, '683F-9CD4-147E-4621', '', '', 'A', '60', '', ''),
(72, 'B804-BC5E-9A40-F13E', '', '', 'A', '60', '', ''),
(73, 'EFBC-8E0F-01CD-C304', '', '', 'A', '60', '', ''),
(74, 'A4D6-729A-1D3C-36F7', '', '', 'A', '60', '', ''),
(75, '9CD8-50A2-D875-5C61', '', '', 'A', '60', '', ''),
(76, '9F18-3618-46EF-E374', '', '', 'A', '60', '', ''),
(77, '52B0-36A8-5879-D5B1', '', '', 'A', '60', '', ''),
(78, '04A3-20FC-21B3-526D', '', '', 'A', '120', '', ''),
(79, '1043-B60F-A1F9-AE59', '', '', 'A', '120', '', ''),
(80, '0C2A-CBA6-C8B3-48DE', '', '', 'A', '120', '', ''),
(81, '1486-A7CE-49D1-A9DF', '', '', 'A', '120', '', ''),
(82, '3106-1AC8-F45B-D0F3', '', '', 'A', '120', '', ''),
(83, '7615-D04C-86EF-E94F', '', '', 'A', '120', '', ''),
(84, 'D7A6-DC19-FE37-2034', '', '', 'A', '120', '', ''),
(85, '93D8-372B-C8D4-5BC1', '', '', 'A', '120', '', ''),
(86, '9BA8-D7F4-F4A3-B9D6', '', '', 'A', '120', '', ''),
(87, '2C16-3D47-8D56-1D42', '', '', 'A', '120', '', ''),
(88, '7D6E-86D5-59AC-3B04', '', '', 'A', '120', '', ''),
(89, '085A-E0B8-EA29-B671', '', '', 'A', '365', '', ''),
(90, 'F6E9-E104-586D-793E', '', '', 'A', '365', '', ''),
(91, 'A90B-7C2D-04BD-63BC', '', '', 'A', '365', '', ''),
(92, '81F0-71D8-9430-271B', '', '', 'A', '365', '', ''),
(93, '94FD-CD03-736E-963E', '', '', 'A', '365', '', ''),
(94, '8DE7-9BC1-830B-243C', '', '', 'A', '365', '', ''),
(95, 'FCE2-2180-9C42-F2BA', '', '', 'A', '365', '', ''),
(96, 'AC95-DA48-A0D6-E4B0', '', '', 'A', '365', '', ''),
(97, 'C13A-0193-20BD-83B7', '', '', 'A', '365', '', ''),
(98, 'BE80-FAD4-8135-5279', '', '', 'A', '365', '', ''),
(99, 'C0FB-15EA-1352-D19A', '', '', 'A', '365', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

DROP TABLE IF EXISTS `grading`;
CREATE TABLE IF NOT EXISTS `grading` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from` varchar(45) DEFAULT NULL,
  `to` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `gp` varchar(10) NOT NULL,
  `comment` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grading`
--

INSERT INTO `grading` (`id`, `from`, `to`, `grade`, `gp`, `comment`) VALUES
(1, '90', '100', 'A+', '5.0', 'Exceptional'),
(2, '80', '89', 'A', '5', 'Excellent'),
(3, '75', '79', 'B+', '4.5', 'Very Good'),
(4, '70', '74', 'B', '4', 'Good'),
(5, '65', '69', 'C+', '3.5', 'Fairly Good'),
(6, '60', '64', 'C', '3', 'Fair'),
(7, '55', '59', 'D+', '2.5', 'Pass'),
(8, '50', '54', 'D', '2', 'Marginal Pass'),
(9, '45', '49', 'E', '1.5', 'Marginal Fail'),
(10, '40', '45', 'E-', '1', 'Clear Fail'),
(11, '39', '0', 'F', '0', 'Bad Fail');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
CREATE TABLE IF NOT EXISTS `institute` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `institute_name` varchar(45) DEFAULT NULL,
  `institute_no` varchar(10) NOT NULL,
  `poBox` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telno1` varchar(45) DEFAULT NULL,
  `telno2` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `updated_On` varchar(20) NOT NULL,
  `pro_key` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`id`, `institute_name`, `institute_no`, `poBox`, `address`, `telno1`, `telno2`, `email`, `type`, `logo`, `entryDate`, `updated_On`, `pro_key`) VALUES
(1, 'Team University', '3243', '444', 'Kampala, Kyebando, Kla', '+256700392854', '+256700392854', 'johnkalungi1@hotmail.com', 'University', 'a', NULL, '2018/05/23 13:12:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE IF NOT EXISTS `lecturer` (
  `lecturerId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `department_departmentId` int(11) NOT NULL,
  PRIMARY KEY (`lecturerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_attempts` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `users_institute_instituteID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`users_id`,`users_institute_instituteID`),
  KEY `fk_login_attempts_users1_idx` (`users_id`,`users_institute_instituteID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `login_attempts`, `time`, `users_id`, `users_institute_instituteID`) VALUES
(8, NULL, '1533716020', 5, 1),
(9, NULL, '1533716320', 5, 1),
(10, NULL, '1533716336', 6, 1),
(11, NULL, '1540449760', 2, 1),
(14, NULL, '1540822646', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE IF NOT EXISTS `marks` (
  `markID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mark` varchar(45) DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  `gp` varchar(10) NOT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `otherRemarks` varchar(45) DEFAULT NULL,
  `yearOfOffering` varchar(45) DEFAULT NULL,
  `trainingHrs` varchar(45) DEFAULT NULL,
  `yearPart` varchar(45) DEFAULT NULL,
  `toMove` varchar(45) DEFAULT NULL,
  `yearEntered` varchar(45) DEFAULT NULL,
  `dateEntered` varchar(45) DEFAULT NULL,
  `examMonth` varchar(45) DEFAULT NULL,
  `enteredBy` varchar(45) DEFAULT NULL,
  `reasonForChange` varchar(45) DEFAULT NULL,
  `courseunit_courseunitID` int(10) UNSIGNED NOT NULL,
  `courseunit_programme_programmeID` int(10) UNSIGNED NOT NULL,
  `student_studentID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`markID`,`courseunit_courseunitID`,`courseunit_programme_programmeID`,`student_studentID`),
  KEY `fk_marks_courseunit1_idx` (`courseunit_courseunitID`,`courseunit_programme_programmeID`),
  KEY `fk_marks_student1_idx` (`student_studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`markID`, `mark`, `grade`, `gp`, `remarks`, `semester`, `otherRemarks`, `yearOfOffering`, `trainingHrs`, `yearPart`, `toMove`, `yearEntered`, `dateEntered`, `examMonth`, `enteredBy`, `reasonForChange`, `courseunit_courseunitID`, `courseunit_programme_programmeID`, `student_studentID`) VALUES
(38, '45', 'E', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 1, 1, 100),
(39, '90', 'A', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 2, 1, 100),
(42, '85', 'A', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 3, 1, 100),
(43, '65', 'C+', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 4, 1, 100),
(44, '98', 'A+', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 1, 1, 100),
(45, '60', 'C', '', '', '2', '', '1', '', '', '', '', '', '', 'John Baptist', '', 5, 1, 101),
(46, '90', 'A', '', '', '2', '', '1', '', '', '', '', '', '', 'John Baptist', '', 5, 1, 101),
(47, '80', 'A', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 1, 1, 101),
(48, '90', 'none', '', '', '1', '', '1', '', '', '', '', '', '', 'John Baptist', '', 1, 1, 101);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
CREATE TABLE IF NOT EXISTS `parent` (
  `parentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `telno1` varchar(45) DEFAULT NULL,
  `telno2` varchar(45) DEFAULT NULL,
  `alive` varchar(45) DEFAULT NULL,
  `career` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `studentID` int(10) UNSIGNED DEFAULT NULL,
  `student_studentID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`parentID`,`student_studentID`),
  KEY `fk_parent_student1_idx` (`student_studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parentID`, `type`, `surname`, `firstname`, `address`, `telno1`, `telno2`, `alive`, `career`, `email`, `studentID`, `student_studentID`) VALUES
(203, 'father', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 'r', 2, 100),
(204, 'mother', '', NULL, '', '', NULL, NULL, '', '', NULL, 100),
(205, 'guardian', '', NULL, '', '', NULL, NULL, '', '', NULL, 100),
(206, 'nok', '', NULL, '', '', NULL, NULL, '', '', NULL, 100),
(219, 'father', 'Ronald', NULL, '', '', NULL, NULL, '', '', NULL, 101),
(220, 'mother', '', NULL, '', '', NULL, NULL, '', '', NULL, 101),
(221, 'guardian', '', NULL, '', '', NULL, NULL, '', '', NULL, 101),
(222, 'nok', '', NULL, '', '', NULL, NULL, '', '', NULL, 101),
(223, 'father', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(224, 'mother', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(225, 'guardian', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(226, 'nok', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(231, 'father', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(232, 'mother', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(233, 'guardian', '', NULL, '', '', NULL, NULL, '', '', NULL, 102),
(234, 'nok', '', NULL, '', '', NULL, NULL, '', '', NULL, 102);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

DROP TABLE IF EXISTS `programme`;
CREATE TABLE IF NOT EXISTS `programme` (
  `programmeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `gradLoad` varchar(45) DEFAULT NULL,
  `action` varchar(12) NOT NULL,
  `code` varchar(45) NOT NULL,
  `department_departmentId` int(11) NOT NULL,
  PRIMARY KEY (`programmeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programmeID`, `category`, `name`, `duration`, `gradLoad`, `action`, `code`, `department_departmentId`) VALUES
(1, 'Degree', 'Bachelor of Computer Science', '3', '31', 'y', 'BSC', 1),
(14, 'Degree', 'Bachelors of Mass Communication', '4', '1', 'y', 'BMS', 1),
(15, 'Degree', 'Bachelors of Medicine and Surgery', '5', '1', 'y', 'BaMS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE IF NOT EXISTS `sponsor` (
  `sponsorid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `surname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `telno` varchar(45) DEFAULT NULL,
  `student_studentID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`sponsorid`,`student_studentID`),
  KEY `fk_sponsor_student1_idx` (`student_studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `regNo` varchar(45) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `dwp` varchar(100) NOT NULL,
  `institute_instituteID` int(11) NOT NULL,
  `academicSessionID` int(12) DEFAULT NULL,
  `studentNo` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `maritalStatus` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `hallOfResidence` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `notes` varchar(45) DEFAULT NULL,
  `medicalProblem` varchar(45) DEFAULT NULL,
  `medicalInformation` varchar(45) DEFAULT NULL,
  `telNo` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `yearOfStudy` varchar(45) DEFAULT NULL,
  `placeOfResidence` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `academicyearEntry` varchar(45) DEFAULT NULL,
  `dateOfAdmission` varchar(45) DEFAULT NULL,
  `gradDate` varchar(45) DEFAULT NULL,
  `entryScheme` varchar(45) NOT NULL,
  `dateofcompletion` varchar(45) DEFAULT NULL,
  `program` varchar(45) DEFAULT NULL,
  `student_status` varchar(45) DEFAULT NULL,
  `uceSchool` varchar(45) DEFAULT NULL,
  `uaceSchool` varchar(45) DEFAULT NULL,
  `uceAggregates` varchar(45) DEFAULT NULL,
  `uacePoints` varchar(45) DEFAULT NULL,
  `formerInstitution` varchar(45) DEFAULT NULL,
  `formerQualification` varchar(45) DEFAULT NULL,
  `formerYearCourse` varchar(45) NOT NULL,
  `formerRegNo` varchar(45) NOT NULL,
  `promotionalStatus` varchar(45) DEFAULT NULL,
  `courseDuration` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `uceIndex` varchar(45) DEFAULT NULL,
  `uaceIndex` varchar(45) DEFAULT NULL,
  `institutionReg` varchar(45) DEFAULT NULL,
  `yearOfCourse` varchar(45) DEFAULT NULL,
  `yearOfUace` varchar(45) DEFAULT NULL,
  `yearOfUCE` varchar(45) NOT NULL,
  `sponsorshipType` varchar(45) DEFAULT NULL,
  `enteredOn` varchar(45) NOT NULL,
  `enteredBy` varchar(45) NOT NULL,
  `updatedOn` varchar(45) NOT NULL,
  `updatedBy` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `regNo`, `username`, `dwp`, `institute_instituteID`, `academicSessionID`, `studentNo`, `surname`, `firstName`, `gender`, `maritalStatus`, `photo`, `dob`, `nationality`, `hallOfResidence`, `religion`, `notes`, `medicalProblem`, `medicalInformation`, `telNo`, `address`, `yearOfStudy`, `placeOfResidence`, `email`, `academicyearEntry`, `dateOfAdmission`, `gradDate`, `entryScheme`, `dateofcompletion`, `program`, `student_status`, `uceSchool`, `uaceSchool`, `uceAggregates`, `uacePoints`, `formerInstitution`, `formerQualification`, `formerYearCourse`, `formerRegNo`, `promotionalStatus`, `courseDuration`, `reason`, `uceIndex`, `uaceIndex`, `institutionReg`, `yearOfCourse`, `yearOfUace`, `yearOfUCE`, `sponsorshipType`, `enteredOn`, `enteredBy`, `updatedOn`, `updatedBy`) VALUES
(100, '18/U/0001/PS', '18/U/0001/PS', '$2y$10$PMqeRW/3aBkioO18ksjF2OLGCcIHpaaZ.sglG2Q6LfVG21C7AWcgK', 1, 1, '21490786', 'Kalule', 'John', 'Male', 'Single', '', '1992-08-07', 'Ugandan', 'Nkuruma', 'Christian', '', '', '', '', '', '1', '', 'mjohn@gmail.com', '2014/2015', '', '', '', '', '1', 'Active', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'root', '', ''),
(101, '14/U/1020/PS', '14/U/1020/PS', '$2y$10$PMqeRW/3aBkioO18ksjF2OLGCcIHpaaZ.sglG2Q6LfVG21C7AWcgK', 1, NULL, '21342323', 'Mutebi', 'Ronald', 'Male', 'Single', '', '2018-08-07', '', 'Kabojja', '', '', '', '', '', '', '1', 'Kabojja', 'johnkalungi1@gmail.com', '2014/2015', '2018-08-13', '2018-08-09', 'Privatelysss', '', '1', 'Inactive', 'St Joseph Namagunga', 'dd', '', '', 'Makerere University', 'Diploma', '2012', 'u188', '', '', '', 'f', 'dd', '', '', 'dd', 'f', '', '', 'root', '', ''),
(102, '', '', '', 0, NULL, '55555', '', '', '', '', '.jpg', '', '', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 'Direct Entry', NULL, '', '', '', '', NULL, NULL, '', 'Makerere University', 'Diploma', '2013', 'u188', NULL, NULL, '', '', NULL, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uace`
--

DROP TABLE IF EXISTS `uace`;
CREATE TABLE IF NOT EXISTS `uace` (
  `uaceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `p1` varchar(45) DEFAULT NULL,
  `p2` varchar(45) DEFAULT NULL,
  `p3` varchar(45) DEFAULT NULL,
  `p4` varchar(45) DEFAULT NULL,
  `p5` varchar(45) DEFAULT NULL,
  `p6` varchar(45) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `parent_parentID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`uaceID`,`parent_parentID`),
  KEY `fk_uace_parent1_idx` (`parent_parentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uace_results`
--

DROP TABLE IF EXISTS `uace_results`;
CREATE TABLE IF NOT EXISTS `uace_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `student_studentID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`student_studentID`),
  KEY `fk_uceresults_student1_idx` (`student_studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uace_results`
--

INSERT INTO `uace_results` (`id`, `subject`, `result`, `student_studentID`) VALUES
(16, '', '', 100),
(17, '', '', 100),
(18, '', '', 100),
(19, '', '', 100),
(20, '', '', 100),
(31, '', '', 0),
(32, '', '', 0),
(33, '', '', 0),
(34, '', '', 0),
(35, '', '', 0),
(36, '', '', 0),
(37, '', '', 0),
(38, '', '', 0),
(39, '', '', 0),
(40, '', '', 0),
(41, 'History', 'D2', 101),
(42, 'Economics', 'C3', 101),
(43, 'Literature in English', 'C5', 101),
(44, 'French', 'C3', 101),
(45, 'Biology', 'C5', 101),
(46, '', '', 102),
(47, '', '', 102),
(48, '', '', 102),
(49, '', '', 102),
(50, '', '', 102),
(56, '', '', 102),
(57, '', '', 102),
(58, '', '', 102),
(59, '', '', 102),
(60, '', '', 102);

-- --------------------------------------------------------

--
-- Table structure for table `uace_subjects`
--

DROP TABLE IF EXISTS `uace_subjects`;
CREATE TABLE IF NOT EXISTS `uace_subjects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uace_subjects`
--

INSERT INTO `uace_subjects` (`id`, `name`, `code`, `category`) VALUES
(1, 'General Paper', '', 'General Paper'),
(2, 'History', 'P210', 'Humanities'),
(3, 'Economics', 'P220', 'Humanities'),
(4, 'Islamic Religious Education', 'P235', 'Humanities'),
(5, 'Christian Religious Education', 'P245', 'Humanities'),
(6, 'Geography', 'P250', 'Humanities'),
(7, 'Literature in English', '310', 'Languages'),
(8, 'Kiswahili', 'P320', 'Languages'),
(9, 'French', 'P330', 'Languages'),
(10, 'German', 'P340', 'Languages'),
(11, 'Latin', 'P350', 'Languages'),
(12, ' Luganda', 'P360', 'Languages'),
(13, 'Arabic', 'P370', 'Languages'),
(14, ' Mathematics', 'P425 ', 'Mathematical Subjects'),
(15, 'Mathematics (subsidiary)', 'S475', 'Mathematical Subjects'),
(16, 'Physics', 'P510', 'Science Subjects'),
(17, 'Agriculture', 'P515', 'Science Subjects'),
(18, 'Chemistry', 'P525', 'Science Subjects'),
(19, 'Biology', 'P530', 'Science Subjects'),
(20, 'Art', '610', 'Cultural Subjects and Others'),
(21, ' Music', '621', ' Cultural Subjects and Others'),
(22, 'Health Education', '631', ' Cultural Subjects and Others'),
(23, ' Clothing and Textiles', '652', ' Cultural Subjects and Others'),
(24, 'Foods & Nutrition', '662', ' Cultural Subjects and Others'),
(25, ' Home Management', '672', ' Cultural Subjects and Others'),
(26, ' Woodwork', '732 ', 'Technical Subjects'),
(27, 'Technical Drawing', '735', 'Technical Subjects'),
(28, ' Metalwork', '742', 'Technical Subjects'),
(29, ' Building Construction', '743', 'Technical Subjects'),
(30, 'Electricity & Electronics', '751', 'Technical Subjects'),
(31, 'Power & Energy', '752', 'Technical Subjects'),
(32, 'Commerce', '800', 'Business Studies'),
(33, 'Principles of Accounts', '810 ', 'Business Studies'),
(34, 'Shorthand', '820', 'Business Studies'),
(35, 'Typewriting', '831', 'Business Studies'),
(36, 'Office Practice', '835', 'Business Studies'),
(37, 'Computer Studies', '840', 'Business Studies'),
(38, 'Entrepreneurship Skills', '845 ', 'Business Studies');

-- --------------------------------------------------------

--
-- Table structure for table `uceresults`
--

DROP TABLE IF EXISTS `uceresults`;
CREATE TABLE IF NOT EXISTS `uceresults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `student_studentID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`student_studentID`),
  KEY `fk_uceresults_student1_idx` (`student_studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=359359 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uceresults`
--

INSERT INTO `uceresults` (`id`, `subject`, `result`, `student_studentID`) VALUES
(359262, '', '', 100),
(359263, '', '', 100),
(359264, '', '', 100),
(359265, '', '', 100),
(359266, '', '', 100),
(359267, '', '', 100),
(359268, '', '', 100),
(359269, '', '', 100),
(359270, '', '', 100),
(359271, '', '', 100),
(359292, '', '', 0),
(359293, '', '', 0),
(359294, '', '', 0),
(359295, '', '', 0),
(359296, '', '', 0),
(359297, '', '', 0),
(359298, '', '', 0),
(359299, '', '', 0),
(359300, '', '', 0),
(359301, '', '', 0),
(359302, '', '', 0),
(359303, '', '', 0),
(359304, '', '', 0),
(359305, '', '', 0),
(359306, '', '', 0),
(359307, '', '', 0),
(359308, '', '', 0),
(359309, '', '', 0),
(359310, '', '', 0),
(359311, '', '', 0),
(359312, 'Literature in English', 'D1', 101),
(359313, 'Fasihi ya Kiswahili', 'D2', 101),
(359314, ' Islamic Religious Education', 'D2', 101),
(359315, ' Islamic Religious Education', 'C3', 101),
(359316, 'Music', 'C3', 101),
(359317, 'Math', 'C3', 101),
(359318, 'Music', 'D2', 101),
(359319, 'German', 'C3', 101),
(359320, 'Music', 'C3', 101),
(359321, 'Clothing and Textiles', 'P8', 101),
(359322, '', '', 102),
(359323, '', '', 102),
(359324, '', '', 102),
(359325, '', '', 102),
(359326, '', '', 102),
(359327, '', '', 102),
(359328, '', '', 102),
(359329, '', '', 102),
(359330, '', '', 102),
(359331, '', '', 102),
(359342, '', '', 102),
(359343, '', '', 102),
(359344, '', '', 102),
(359345, '', '', 102),
(359346, '', '', 102),
(359347, '', '', 102),
(359348, '', '', 102),
(359349, '', '', 102),
(359350, '', '', 102),
(359351, '', '', 102),
(359352, '', '', 0),
(359353, '', '', 0),
(359354, '', '', 0),
(359355, '', '', 0),
(359356, '', '', 0),
(359357, '', '', 0),
(359358, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `uce_subjects`
--

DROP TABLE IF EXISTS `uce_subjects`;
CREATE TABLE IF NOT EXISTS `uce_subjects` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uce_subjects`
--

INSERT INTO `uce_subjects` (`id`, `name`, `code`, `category`) VALUES
(1, 'English Language', '112', 'c'),
(2, 'Literature in English', '208', 'o'),
(3, 'Fasihi ya Kiswahili', '218 ', 'o'),
(4, 'CRE ', '223', 'o'),
(5, ' Islamic Religious Education', '225 ', 'o'),
(6, ' History', '241 ', 'c'),
(7, 'Geography', '273', 'c'),
(8, ' Political Education', '285', 'o'),
(9, 'Latin', '301', 'o'),
(10, 'German', '309', 'o'),
(11, ' French', '314', 'o'),
(12, 'Luganda', '335', 'o'),
(13, 'Lugha ya Kiswahili', '336', 'o'),
(14, 'Arabic', '337', 'o'),
(15, 'Mathematics', '456', 'c'),
(16, 'Additional Mathematics', '475 ', 'o'),
(17, 'General Science', '500', 'o'),
(18, 'Agriculture', '527 ', 'o'),
(19, 'Physics', '535', 'c'),
(20, 'Chemistry', '545', 'c'),
(21, 'Biology', '553', 'c'),
(22, 'Art', '610', 'o'),
(23, 'Music', '621', 'o'),
(24, 'Health Education', '631', 'o'),
(25, 'Clothing and Textiles', '652', 'o'),
(26, ' Foods & Nutrition', '662 ', 'Cultural Subjects and Others'),
(27, 'Home Management', '672', 'Cultural Subjects and Others'),
(28, ' Woodwork', '732', 'Technical Subjects'),
(29, 'Technical Drawing', '735', 'Technical Subjects'),
(30, 'Metalwork', '742', 'Technical Subjects'),
(31, 'Building Construction', '743', 'Technical Subjects'),
(32, 'Electricity & Electronics', '751', 'Technical Subjects'),
(33, 'Power & Energy', '752', 'Technical Subjects'),
(34, 'Commerce', '800', 'Business Studies'),
(35, 'Principles of Accounts', '810', 'Business Studies'),
(36, 'Shorthand', '820', 'Business Studies'),
(37, 'Typewriting', '831', 'Business Studies'),
(38, 'Office Practice', '835', 'Business Studies'),
(39, 'Computer Studies', '840', 'Business Studies'),
(40, 'Entrepreneurship Skills', '845', 'Business Studies');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accNo` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `accountName` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `sname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `dob` varchar(45) NOT NULL,
  `photoName` varchar(45) DEFAULT NULL,
  `dwp` varchar(300) DEFAULT NULL,
  `group` varchar(45) DEFAULT NULL,
  `accStatus` varchar(45) DEFAULT NULL,
  `entryDate` varchar(45) DEFAULT NULL,
  `updated_On` varchar(45) NOT NULL,
  `phone1` varchar(45) DEFAULT NULL,
  `phone2` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `institute_instituteID` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`institute_instituteID`),
  KEY `fk_users_institute1_idx` (`institute_instituteID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `accNo`, `username`, `accountName`, `gender`, `sname`, `fname`, `designation`, `dob`, `photoName`, `dwp`, `group`, `accStatus`, `entryDate`, `updated_On`, `phone1`, `phone2`, `email`, `institute_instituteID`) VALUES
(1, '3245a', 'root', 'a', 'Female', 'Mubiru', 'John Baptist', 'Headteacher', '2018-05-02', 'a', '$2y$10$PMqeRW/3aBkioO18ksjF2OLGCcIHpaaZ.sglG2Q6LfVG21C7AWcgK', 'user', 'Activea', 'a', '2018/05/26 23:32:14', '+256700392854', '+256700392854', 'johnkalungi1@hotmail.com', 1),
(2, '7198', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', 'w', '', 'w', 'w', 'w', 1),
(5, 'USR528', 'Violet', NULL, '', '', 'Violet', '', '', NULL, '1234@team', '', '--Select--', '', '', '', '', '', 1),
(6, 'USR657', 'hannah', NULL, 'Female', 'nyende', 'violet', '', '', NULL, 'edward', '', '--Select--', '', '', '', '', '', 1),
(7, 'USR630', 'violet.nyende', NULL, 'Female', 'Nyende', 'Violet', '', '2018-08-08', NULL, '$2y$10$BY6AuuNyqhb1capUc9UYOO1qSbDoEud4q4nphgjiBXxFAWo3jgam2', '', '--Select--', '', '', '', '', '', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courseunit`
--
ALTER TABLE `courseunit`
  ADD CONSTRAINT `fk_courseunit_programme1` FOREIGN KEY (`programme_programmeID`) REFERENCES `programme` (`programmeID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD CONSTRAINT `fk_login_attempts_users1` FOREIGN KEY (`users_id`,`users_institute_instituteID`) REFERENCES `users` (`id`, `institute_instituteID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `fk_marks_courseunit1` FOREIGN KEY (`courseunit_courseunitID`,`courseunit_programme_programmeID`) REFERENCES `courseunit` (`courseunitID`, `programme_programmeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_marks_student1` FOREIGN KEY (`student_studentID`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `parent`
--
ALTER TABLE `parent`
  ADD CONSTRAINT `fk_parent_student1` FOREIGN KEY (`student_studentID`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD CONSTRAINT `fk_sponsor_student1` FOREIGN KEY (`student_studentID`) REFERENCES `student` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `uace`
--
ALTER TABLE `uace`
  ADD CONSTRAINT `fk_uace_parent1` FOREIGN KEY (`parent_parentID`) REFERENCES `parent` (`parentID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
