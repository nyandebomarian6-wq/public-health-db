-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2026 at 02:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publichealthdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `DiagnosisID` int(11) NOT NULL,
  `VisitID` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `DiagnosisDate` date DEFAULT NULL,
  `Severity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`DiagnosisID`, `VisitID`, `Description`, `DiagnosisDate`, `Severity`) VALUES
(1, 1, 'Malaria', '2026-05-01', 'Moderate'),
(2, 2, 'Typhoid', '2026-05-02', 'Severe'),
(3, 3, 'Flu', '2026-05-03', 'Mild'),
(4, 4, 'Malaria', '2026-05-04', 'Severe'),
(5, 5, 'Cold', '2026-05-05', 'Mild'),
(6, 6, 'Migraine', '2026-05-06', 'Moderate'),
(7, 7, 'Flu', '2026-05-07', 'Mild'),
(8, 8, 'Injury', '2026-05-08', 'Severe'),
(9, 9, 'Malaria', '2026-05-09', 'Moderate'),
(10, 10, 'Typhoid', '2026-05-10', 'Severe'),
(11, 11, 'Flu', '2026-05-11', 'Mild'),
(12, 12, 'Malaria', '2026-05-12', 'Moderate'),
(13, 13, 'Cold', '2026-05-13', 'Mild'),
(14, 14, 'Infection', '2026-05-14', 'Severe'),
(15, 15, 'Flu', '2026-05-15', 'Mild'),
(16, 16, 'Migraine', '2026-05-16', 'Moderate'),
(17, 17, 'Cold', '2026-05-17', 'Mild'),
(18, 18, 'Malaria', '2026-05-18', 'Severe'),
(19, 19, 'Flu', '2026-05-19', 'Mild'),
(20, 20, 'Typhoid', '2026-05-20', 'Severe');

-- --------------------------------------------------------

--
-- Table structure for table `healthworker`
--

CREATE TABLE `healthworker` (
  `WorkerID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Qualification` varchar(50) DEFAULT NULL,
  `ExperienceYears` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `healthworker`
--

INSERT INTO `healthworker` (`WorkerID`, `FullName`, `Role`, `Phone`, `Email`, `Qualification`, `ExperienceYears`) VALUES
(1, 'Dr Musa Bangura', 'Doctor', '077222001', 'musa1@gmail.com', 'MBBS', 10),
(2, 'Dr Kandeh', 'Doctor', '077222002', 'kandeh2@gmail.com', 'MBBS', 8),
(3, 'Nurse Hawa', 'Nurse', '077222003', 'hawa3@gmail.com', 'Nursing', 5),
(4, 'Nurse Sia', 'Nurse', '077222004', 'sia4@gmail.com', 'Nursing', 4),
(5, 'Dr Sesay', 'Doctor', '077222005', 'sesay5@gmail.com', 'MBBS', 12),
(6, 'Dr Kamara', 'Doctor', '077222006', 'kamara6@gmail.com', 'MBBS', 9),
(7, 'Nurse Mariama', 'Nurse', '077222007', 'mariama7@gmail.com', 'Nursing', 6),
(8, 'Dr Conteh', 'Doctor', '077222008', 'conteh8@gmail.com', 'MBBS', 11),
(9, 'Nurse Fatmata', 'Nurse', '077222009', 'fatmata9@gmail.com', 'Nursing', 3),
(10, 'Dr Jalloh', 'Doctor', '077222010', 'jalloh10@gmail.com', 'MBBS', 7),
(11, 'Dr Koroma', 'Doctor', '077222011', 'koroma11@gmail.com', 'MBBS', 10),
(12, 'Nurse Zainab', 'Nurse', '077222012', 'zainab12@gmail.com', 'Nursing', 4),
(13, 'Dr Bah', 'Doctor', '077222013', 'bah13@gmail.com', 'MBBS', 8),
(14, 'Nurse Rugiatu', 'Nurse', '077222014', 'rugiatu14@gmail.com', 'Nursing', 5),
(15, 'Dr Kallon', 'Doctor', '077222015', 'kallon15@gmail.com', 'MBBS', 9),
(16, 'Nurse Isatu', 'Nurse', '077222016', 'isatu16@gmail.com', 'Nursing', 6),
(17, 'Dr Turay', 'Doctor', '077222017', 'turay17@gmail.com', 'MBBS', 11),
(18, 'Nurse Siafa', 'Nurse', '077222018', 'siafa18@gmail.com', 'Nursing', 3),
(19, 'Dr Foday', 'Doctor', '077222019', 'foday19@gmail.com', 'MBBS', 7),
(20, 'Nurse Hindowa', 'Nurse', '077222020', 'hindowa20@gmail.com', 'Nursing', 5);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `BloodGroup` varchar(5) DEFAULT NULL,
  `InsuranceNo` varchar(50) DEFAULT NULL,
  `RegDate` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `FullName`, `Gender`, `DOB`, `Phone`, `Address`, `BloodGroup`, `InsuranceNo`, `RegDate`) VALUES
(1, 'John Kamara', 'Male', '1995-05-10', '077123456', 'Freetown', 'O+', 'INS001', '2026-06-11'),
(2, 'Aminata Sesay', 'Female', '2000-08-15', '077111002', 'Bo', 'A+', 'INS002', '2026-06-11'),
(3, 'Ibrahim Koroma', 'Male', '1992-03-22', '077111003', 'Makeni', 'B+', 'INS003', '2026-06-11'),
(4, 'Hawa Bangura', 'Female', '1998-11-05', '077111004', 'Kenema', 'AB+', 'INS004', '2026-06-11'),
(5, 'Mohamed Turay', 'Male', '1985-07-12', '077111005', 'Freetown', 'O-', 'INS005', '2026-06-11'),
(6, 'Fatmata Conteh', 'Female', '1997-01-19', '077111006', 'Bo', 'A-', 'INS006', '2026-06-11'),
(7, 'Alhaji Jalloh', 'Male', '1990-09-25', '077111007', 'Makeni', 'B-', 'INS007', '2026-06-11'),
(8, 'Kadiatu Bah', 'Female', '2001-04-18', '077111008', 'Kenema', 'O+', 'INS008', '2026-06-11'),
(9, 'Sorie Kallon', 'Male', '1993-06-30', '077111009', 'Freetown', 'A+', 'INS009', '2026-06-11'),
(10, 'Mariama Kamara', 'Female', '1996-12-11', '077111010', 'Bo', 'B+', 'INS010', '2026-06-11'),
(11, 'Abdul Sesay', 'Male', '1988-02-20', '077111011', 'Makeni', 'AB+', 'INS011', '2026-06-11'),
(12, 'Isatu Turay', 'Female', '1999-07-07', '077111012', 'Kenema', 'O-', 'INS012', '2026-06-11'),
(13, 'Lamin Koroma', 'Male', '1991-10-14', '077111013', 'Freetown', 'A-', 'INS013', '2026-06-11'),
(14, 'Rugiatu Bangura', 'Female', '1994-05-03', '077111014', 'Bo', 'B-', 'INS014', '2026-06-11'),
(15, 'Komba Jalloh', 'Male', '1987-08-28', '077111015', 'Makeni', 'O+', 'INS015', '2026-06-11'),
(16, 'Sia Bah', 'Female', '2002-03-09', '077111016', 'Kenema', 'A+', 'INS016', '2026-06-11'),
(17, 'Foday Kallon', 'Male', '1995-11-17', '077111017', 'Freetown', 'B+', 'INS017', '2026-06-11'),
(18, 'Hindolo Kamara', 'Male', '1989-06-06', '077111018', 'Bo', 'AB+', 'INS018', '2026-06-11'),
(19, 'Zainab Conteh', 'Female', '1997-09-13', '077111019', 'Makeni', 'O-', 'INS019', '2026-06-11'),
(20, 'Mustapha Sesay', 'Male', '1993-01-01', '077111020', 'Kenema', 'A-', 'INS020', '2026-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TreatmentID` int(11) NOT NULL,
  `DiagnosisID` int(11) DEFAULT NULL,
  `Treatment` varchar(50) DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL,
  `Duration` varchar(50) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TreatmentID`, `DiagnosisID`, `Treatment`, `Dosage`, `Duration`, `Cost`) VALUES
(2, 2, 'Antibiotics', '3x daily', '7 days', 80.00),
(3, 3, 'Flu meds', '2x daily', '3 days', 30.00),
(4, 4, 'Antimalarial', '2x daily', '5 days', 50.00),
(5, 5, 'Cold syrup', '2x daily', '3 days', 25.00),
(6, 6, 'Painkillers', '2x daily', '5 days', 40.00),
(7, 7, 'Flu meds', '2x daily', '3 days', 30.00),
(8, 8, 'Surgery care', 'As needed', '10 days', 150.00),
(9, 9, 'Antimalarial', '2x daily', '5 days', 50.00),
(10, 10, 'Antibiotics', '3x daily', '7 days', 80.00),
(11, 11, 'Flu meds', '2x daily', '3 days', 30.00),
(12, 12, 'Antimalarial', '2x daily', '5 days', 50.00),
(13, 13, 'Cold syrup', '2x daily', '3 days', 25.00),
(14, 14, 'Antibiotics', '3x daily', '7 days', 90.00),
(15, 15, 'Flu meds', '2x daily', '3 days', 30.00),
(16, 16, 'Painkillers', '2x daily', '5 days', 40.00),
(17, 17, 'Cold syrup', '2x daily', '3 days', 25.00),
(18, 18, 'Antimalarial', '2x daily', '5 days', 50.00),
(19, 19, 'Flu meds', '2x daily', '3 days', 30.00),
(20, 20, 'Antibiotics', '3x daily', '7 days', 80.00),
(21, 1, 'Antimalarial Drugs', '2 times daily', '5 days', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `VisitID` int(11) NOT NULL,
  `VisitDate` date DEFAULT NULL,
  `PatientID` int(11) DEFAULT NULL,
  `WorkerID` int(11) DEFAULT NULL,
  `VisitType` varchar(50) DEFAULT NULL,
  `Note` text DEFAULT NULL,
  `RoomNo` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`VisitID`, `VisitDate`, `PatientID`, `WorkerID`, `VisitType`, `Note`, `RoomNo`) VALUES
(1, '2026-05-01', 1, 1, 'Checkup', 'General check', 'R1'),
(2, '2026-05-02', 2, 2, 'Emergency', 'Pain', 'R2'),
(3, '2026-05-03', 3, 3, 'Checkup', 'Routine', 'R3'),
(4, '2026-05-04', 4, 4, 'Emergency', 'Fever', 'R4'),
(5, '2026-05-05', 5, 5, 'Checkup', 'Follow-up', 'R5'),
(6, '2026-05-06', 6, 1, 'Emergency', 'Headache', 'R1'),
(7, '2026-05-07', 7, 2, 'Checkup', 'General', 'R2'),
(8, '2026-05-08', 8, 3, 'Emergency', 'Injury', 'R3'),
(9, '2026-05-09', 9, 4, 'Checkup', 'Routine', 'R4'),
(10, '2026-05-10', 10, 5, 'Emergency', 'Pain', 'R5'),
(11, '2026-05-11', 11, 1, 'Checkup', 'Review', 'R1'),
(12, '2026-05-12', 12, 2, 'Emergency', 'Fever', 'R2'),
(13, '2026-05-13', 13, 3, 'Checkup', 'Routine', 'R3'),
(14, '2026-05-14', 14, 4, 'Emergency', 'Infection', 'R4'),
(15, '2026-05-15', 15, 5, 'Checkup', 'General', 'R5'),
(16, '2026-05-16', 16, 1, 'Emergency', 'Pain', 'R1'),
(17, '2026-05-17', 17, 2, 'Checkup', 'Routine', 'R2'),
(18, '2026-05-18', 18, 3, 'Emergency', 'Headache', 'R3'),
(19, '2026-05-19', 19, 4, 'Checkup', 'Follow-up', 'R4'),
(20, '2026-05-20', 20, 5, 'Emergency', 'Fever', 'R5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`DiagnosisID`),
  ADD KEY `VisitID` (`VisitID`);

--
-- Indexes for table `healthworker`
--
ALTER TABLE `healthworker`
  ADD PRIMARY KEY (`WorkerID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TreatmentID`),
  ADD KEY `DiagnosisID` (`DiagnosisID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`VisitID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `WorkerID` (`WorkerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis`
--
ALTER TABLE `diagnosis`
  MODIFY `DiagnosisID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `healthworker`
--
ALTER TABLE `healthworker`
  MODIFY `WorkerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `TreatmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `visit`
--
ALTER TABLE `visit`
  MODIFY `VisitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`VisitID`) REFERENCES `visit` (`VisitID`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`DiagnosisID`) REFERENCES `diagnosis` (`DiagnosisID`);

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  ADD CONSTRAINT `visit_ibfk_2` FOREIGN KEY (`WorkerID`) REFERENCES `healthworker` (`WorkerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
