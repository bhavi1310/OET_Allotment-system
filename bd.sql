-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 09:21 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocated_students`
--

CREATE TABLE `allocated_students` (
  `name` varchar(100) NOT NULL,
  `rollno` varchar(11) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  `cgpa` varchar(11) NOT NULL,
  `course` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allocated_students`
--

INSERT INTO `allocated_students` (`name`, `rollno`, `branch`, `year`, `cgpa`, `course`) VALUES
('Emily', '999195', 'CS', '3', '9.5', 'Web Development'),
('Robert', '650142', 'CS', '3', '9.4', 'Data science'),
('Susan', '100043', 'EXTC', '3', '9.4', 'Data science'),
('Jessica', '887010', 'MEC', '3', '9.3', 'Web Development'),
('Emily', '176504', 'CS', '3', '9.2', 'Basics of Python'),
('Robert', '632026', 'CS', '3', '9.2', 'Web Development'),
('Robert', '953652', 'EXTC', '3', '9.2', 'Data science'),
('Jessica', '641345', 'IT', '3', '9.1', 'Basics of Python'),
('Mary', '399499', 'IT', '3', '9.1', 'Web Development'),
('Susan', '620701', 'IT', '3', '9.0', 'Web Development'),
('Mary', '522565', 'MEC', '3', '8.9', 'Blockchain'),
('Robert', '597277', 'IT', '3', '8.9', 'Basics of Python'),
('Jessica', '884932', 'EXTC', '3', '8.8', 'Blockchain'),
('Emily', '598228', 'EXTC', '3', '8.8', 'Web Development'),
('Jessica', '323921', 'IT', '3', '8.7', 'Blockchain'),
('Mary', '474761', 'IT', '3', '8.6', 'Web Development'),
('Robert', '629460', 'CS', '3', '8.6', 'Web Development'),
('Michael', '246260', 'CS', '3', '8.4', 'Web Development'),
('David', '564191', 'MEC', '3', '8.4', 'Blockchain'),
('Michael', '352351', 'CS', '3', '8.4', 'Blockchain'),
('Robert', '514998', 'MEC', '3', '8.4', 'Basics of Python'),
('David', '455199', 'EXTC', '3', '8.3', 'Web Development'),
('Susan', '625123', 'IT', '3', '8.3', 'Data science'),
('David', '898456', 'CS', '3', '8.3', 'Basics of Python'),
('John', '619012', 'CS', '3', '8.3', 'NLP'),
('Emily', '162924', 'CS', '3', '8.2', 'Web Development'),
('Susan', '133308', 'MEC', '3', '8.1', 'Blockchain'),
('Robert', '395557', 'MEC', '3', '8.1', 'Basics of Python'),
('Parth Muley', '1315', 'IT', '3', '8', 'NLP'),
('Jessica', '692065', 'EXTC', '3', '8.0', 'NLP'),
('Mary', '350980', 'EXTC', '3', '8.0', 'Data science'),
('David', '631977', 'CS', '3', '8.0', 'Basics of Python'),
('John', '848801', 'CS', '3', '7.9', 'Basics of Python'),
('John', '901255', 'EXTC', '3', '7.9', 'Basics of Python'),
('Robert', '451488', 'CS', '3', '7.9', 'Data science'),
('Susan', '994855', 'MEC', '3', '7.9', 'Basics of Python'),
('Susan', '262094', 'IT', '3', '7.9', 'Basics of Python'),
('David', '252987', 'MEC', '3', '7.8', 'Data science'),
('David', '995788', 'IT', '3', '7.7', 'NLP'),
('John', '474142', 'EXTC', '3', '7.7', 'NLP'),
('Mary', '929060', 'IT', '3', '7.7', 'Basics of Python'),
('Mary', '758373', 'MEC', '3', '7.7', 'Blockchain'),
('David', '421591', 'MEC', '3', '7.6', 'Data science'),
('David', '846098', 'EXTC', '3', '7.6', 'Data science'),
('Robert', '831702', 'MEC', '3', '7.5', 'Web Development'),
('Jessica', '674281', 'IT', '3', '7.5', 'Web Development'),
('John', '705779', 'MEC', '3', '7.5', 'Basics of Python'),
('Robert', '407875', 'EXTC', '3', '7.5', 'Blockchain'),
('Jessica', '252548', 'CS', '3', '7.4', 'NLP'),
('Michael', '620646', 'CS', '3', '7.4', 'Web Development'),
('Jessica', '722720', 'CS', '3', '7.4', 'Web Development'),
('Susan', '881595', 'EXTC', '3', '7.3', 'NLP'),
('Mary', '203227', 'MEC', '3', '7.3', 'Basics of Python'),
('Mary', '965845', 'MEC', '3', '7.3', 'Basics of Python'),
('Michael', '130403', 'EXTC', '3', '7.2', 'Basics of Python'),
('Mary', '848233', 'IT', '3', '7.2', 'Basics of Python'),
('Susan', '398686', 'CS', '3', '7.2', 'Data science'),
('David', '766071', 'MEC', '3', '7.1', 'Basics of Python'),
('Susan', '696427', 'EXTC', '3', '7.1', 'Data science'),
('Susan', '695753', 'CS', '3', '7.1', 'Basics of Python'),
('John', '446509', 'MEC', '3', '7.1', 'Blockchain'),
('Robert', '374222', 'MEC', '3', '7.1', 'Data science'),
('Jessica', '464996', 'EXTC', '3', '7.0', 'Blockchain'),
('John', '379288', 'CS', '3', '7.0', 'Data science'),
('Susan', '818930', 'CS', '3', '7.0', 'Web Development'),
('David', '629307', 'MEC', '3', '6.9', 'Basics of Python'),
('Mary', '523128', 'MEC', '3', '6.9', 'Data science'),
('Emily', '227287', 'CS', '3', '6.9', 'Data science'),
('Jessica', '379486', 'MEC', '3', '6.8', 'Web Development'),
('David', '673881', 'CS', '3', '6.8', 'Data science'),
('David', '305775', 'MEC', '3', '6.8', 'NLP'),
('Michael', '882261', 'MEC', '3', '6.8', 'Web Development'),
('Susan', '505670', 'EXTC', '3', '6.7', 'NLP'),
('Emily', '102697', 'CS', '3', '6.7', 'Data science'),
('Emily', '149739', 'EXTC', '3', '6.7', 'Data science'),
('Robert', '669403', 'EXTC', '3', '6.6', 'Blockchain'),
('Jessica', '964519', 'MEC', '3', '6.6', 'Data science'),
('Robert', '801448', 'MEC', '3', '6.5', 'Blockchain'),
('Jessica', '617286', 'MEC', '3', '6.5', 'Web Development'),
('Emily', '974034', 'EXTC', '3', '6.5', 'Blockchain'),
('Robert', '129142', 'EXTC', '3', '6.5', 'NLP'),
('Susan', '478159', 'EXTC', '3', '6.5', 'NLP'),
('David', '115808', 'CS', '3', '6.4', 'Data science'),
('Susan', '869907', 'EXTC', '3', '6.4', 'Blockchain'),
('John', '563445', 'IT', '3', '6.4', 'NLP'),
('Jessica', '578683', 'MEC', '3', '6.4', 'Blockchain'),
('Michael', '739588', 'IT', '3', '6.4', 'NLP'),
('Michael', '244802', 'MEC', '3', '6.4', 'Blockchain'),
('Michael', '398482', 'EXTC', '3', '6.4', 'Blockchain'),
('John', '766274', 'MEC', '3', '6.3', 'NLP'),
('Jessica', '632121', 'MEC', '3', '6.3', 'Web Development'),
('David', '922041', 'IT', '3', '6.3', 'NLP'),
('Michael', '390565', 'CS', '3', '6.3', 'NLP'),
('David', '127590', 'IT', '3', '6.3', 'Blockchain'),
('Robert', '496670', 'EXTC', '3', '6.2', 'Blockchain'),
('Robert', '429537', 'IT', '3', '6.2', 'NLP'),
('John', '326262', 'CS', '3', '6.1', 'Blockchain'),
('Emily', '800789', 'EXTC', '3', '6.1', 'NLP'),
('Susan', '846566', 'MEC', '3', '6.1', 'NLP'),
('Mary', '220386', 'IT', '3', '6.0', 'NLP');

-- --------------------------------------------------------

--
-- Table structure for table `allocated_students2`
--

CREATE TABLE `allocated_students2` (
  `name` varchar(20) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `cgpa` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `allocated_students2`
--

INSERT INTO `allocated_students2` (`name`, `rollno`, `branch`, `year`, `cgpa`, `course`) VALUES
('Bhavesh Dingria', '13156', 'CS', '4th Year', '9.6', 'Machine Learning'),
('Jessica', '519055', 'MEC', '4th year', '9.5', 'Machine Learning'),
('Jessica', '756033', 'IT', '4th year', '9.5', 'Data analytics'),
('David', '104433', 'MEC', '4th year', '9.5', 'Data analytics'),
('Robert', '716183', 'EXTC', '4th year', '9.5', 'Machine Learning'),
('Jessica', '823604', 'IT', '4th year', '9.4', 'Cyber security'),
('Mary', '789027', 'EXTC', '4th year', '9.4', 'Data analytics'),
('Susan', '814173', 'IT', '4th year', '9.3', 'Cyber security'),
('John', '359971', 'IT', '4th year', '9.3', 'UI Programming'),
('Emily', '994721', 'EXTC', '4th year', '9.3', 'Machine Learning'),
('Jessica', '602154', 'IT', '4th year', '9.3', 'Machine Learning'),
('Mary', '240188', 'CS', '4th year', '9.2', 'Cyber security'),
('Michael', '160940', 'MEC', '4th year', '9.2', 'Cyber security'),
('Emily', '669737', 'MEC', '4th year', '9.2', 'Data analytics'),
('Emily', '157991', 'IT', '4th year', '9.2', 'Data analytics'),
('Mary', '491891', 'MEC', '4th year', '9.1', 'Big Data'),
('David', '454700', 'IT', '4th year', '9.1', 'Data analytics'),
('John', '899499', 'IT', '4th year', '9.1', 'Data analytics'),
('Michael', '153414', 'IT', '4th year', '9.0', 'Machine Learning'),
('Michael', '919103', 'CS', '4th year', '9.0', 'UI Programming'),
('Jessica', '930112', 'MEC', '4th year', '9.0', 'Cyber security'),
('John', '183037', 'CS', '4th year', '8.9', 'Cyber security'),
('Susan', '260031', 'MEC', '4th year', '8.8', 'Machine Learning'),
('Michael', '713391', 'IT', '4th year', '8.8', 'Machine Learning'),
('David', '405157', 'IT', '4th year', '8.8', 'Data analytics'),
('John', '863032', 'CS', '4th year', '8.7', 'Cyber security'),
('Robert', '737951', 'CS', '4th year', '8.7', 'UI Programming'),
('Emily', '459653', 'CS', '4th year', '8.6', 'UI Programming'),
('Robert', '128429', 'CS', '4th year', '8.6', 'Big Data'),
('John', '256751', 'CS', '4th year', '8.5', 'Machine Learning'),
('John', '447700', 'IT', '4th year', '8.5', 'Machine Learning'),
('John', '314370', 'CS', '4th year', '8.5', 'UI Programming'),
('Susan', '277952', 'MEC', '4th year', '8.5', 'Cyber security'),
('David', '575912', 'CS', '4th year', '8.5', 'Cyber security'),
('Michael', '455115', 'CS', '4th year', '8.3', 'Big Data'),
('Susan', '604726', 'IT', '4th year', '8.3', 'Big Data'),
('Jessica', '215933', 'IT', '4th year', '8.3', 'Machine Learning'),
('David', '609442', 'EXTC', '4th year', '8.3', 'Machine Learning'),
('Emily', '898416', 'IT', '4th year', '8.2', 'Data analytics'),
('Robert', '303213', 'EXTC', '4th year', '8.1', 'Data analytics'),
('Susan', '754902', 'CS', '4th year', '8.1', 'Cyber security'),
('Michael', '818372', 'IT', '4th year', '8.0', 'Machine Learning'),
('Jessica', '833408', 'IT', '4th year', '8.0', 'Machine Learning'),
('Emily', '791362', 'IT', '4th year', '7.9', 'Big Data'),
('John', '368689', 'CS', '4th year', '7.9', 'Cyber security'),
('David', '443357', 'MEC', '4th year', '7.9', 'Machine Learning'),
('Susan', '563210', 'CS', '4th year', '7.8', 'Data analytics'),
('Mary', '277752', 'MEC', '4th year', '7.8', 'Data analytics'),
('Emily', '404799', 'EXTC', '4th year', '7.8', 'Machine Learning'),
('Mary', '292582', 'EXTC', '4th year', '7.8', 'Data analytics'),
('Robert', '914097', 'CS', '4th year', '7.7', 'Data analytics'),
('Emily', '926039', 'IT', '4th year', '7.6', 'Data analytics'),
('Michael', '369429', 'MEC', '4th year', '7.6', 'Big Data'),
('Jessica', '434727', 'CS', '4th year', '7.6', 'UI Programming'),
('Susan', '625608', 'CS', '4th year', '7.5', 'Big Data'),
('David', '864191', 'CS', '4th year', '7.5', 'Data analytics'),
('Jessica', '816210', 'CS', '4th year', '7.5', 'Cyber security'),
('John', '595570', 'MEC', '4th year', '7.5', 'Cyber security'),
('Susan', '868754', 'IT', '4th year', '7.5', 'Machine Learning'),
('John', '654742', 'CS', '4th year', '7.4', 'Cyber security'),
('Michael', '561397', 'MEC', '4th year', '7.4', 'Machine Learning'),
('Emily', '610240', 'CS', '4th year', '7.4', 'Machine Learning'),
('Michael', '539866', 'EXTC', '4th year', '7.4', 'Data analytics'),
('David', '184731', 'EXTC', '4th year', '7.3', 'Cyber security'),
('John', '364591', 'MEC', '4th year', '7.2', 'UI Programming'),
('Susan', '498180', 'MEC', '4th year', '7.2', 'Machine Learning'),
('David', '777652', 'EXTC', '4th year', '7.2', 'Big Data'),
('John', '812550', 'IT', '4th year', '7.1', 'UI Programming'),
('Susan', '756166', 'MEC', '4th year', '7.1', 'Big Data'),
('John', '112929', 'MEC', '4th year', '7.1', 'Big Data'),
('Emily', '273249', 'IT', '4th year', '7.0', 'Big Data'),
('Susan', '322674', 'CS', '4th year', '7.0', 'UI Programming'),
('Susan', '206751', 'CS', '4th year', '7.0', 'Big Data'),
('Emily', '614081', 'IT', '4th year', '6.9', 'Data analytics'),
('Emily', '952090', 'CS', '4th year', '6.9', 'Cyber security'),
('Robert', '636944', 'EXTC', '4th year', '6.8', 'Cyber security'),
('David', '748190', 'MEC', '4th year', '6.8', 'UI Programming'),
('David', '973790', 'EXTC', '4th year', '6.8', 'Cyber security'),
('David', '262223', 'EXTC', '4th year', '6.8', 'Data analytics'),
('Robert', '900484', 'EXTC', '4th year', '6.7', 'UI Programming'),
('Emily', '870298', 'MEC', '4th year', '6.6', 'UI Programming'),
('John', '719064', 'MEC', '4th year', '6.6', 'Big Data'),
('Susan', '927793', 'MEC', '4th year', '6.6', 'Big Data'),
('Mary', '487504', 'MEC', '4th year', '6.6', 'Big Data'),
('Mary', '473849', 'IT', '4th year', '6.6', 'Cyber security'),
('Michael', '653533', 'CS', '4th year', '6.5', 'Cyber security'),
('David', '829043', 'IT', '4th year', '6.5', 'Big Data'),
('Jessica', '635056', 'IT', '4th year', '6.4', 'Data analytics'),
('Susan', '901220', 'EXTC', '4th year', '6.4', 'UI Programming'),
('Susan', '472945', 'MEC', '4th year', '6.3', 'UI Programming'),
('John', '980168', 'CS', '4th year', '6.3', 'UI Programming'),
('Susan', '629818', 'EXTC', '4th year', '6.3', 'UI Programming'),
('Jessica', '811803', 'MEC', '4th year', '6.2', 'UI Programming'),
('Jessica', '723293', 'MEC', '4th year', '6.1', 'Big Data'),
('Emily', '580072', 'EXTC', '4th year', '6.1', 'Big Data'),
('Robert', '789763', 'CS', '4th year', '6.1', 'UI Programming'),
('Jessica', '280832', 'CS', '4th year', '6.1', 'UI Programming'),
('David', '215097', 'CS', '4th year', '6.0', 'Big Data'),
('John', '934312', 'CS', '4th year', '6.0', 'UI Programming'),
('Emily', '205452', 'CS', '4th year', '6.0', 'Big Data');

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `name` varchar(20) NOT NULL,
  `rollno` int(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `year` int(20) NOT NULL,
  `cgpa` varchar(20) NOT NULL,
  `course1` varchar(20) NOT NULL,
  `course2` varchar(20) NOT NULL,
  `course3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci MAX_ROWS=100;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`name`, `rollno`, `branch`, `year`, `cgpa`, `course1`, `course2`, `course3`) VALUES
('Mary', 965845, 'MEC', 3, '7.3', 'Basics of Python', 'Basics of Python', 'Data science'),
('David', 846098, 'EXTC', 3, '7.6', 'Data science', 'Web Development', 'Blockchain'),
('Robert', 395557, 'MEC', 3, '8.1', 'Basics of Python', 'Data science', 'NLP'),
('Jessica', 722720, 'CS', 3, '7.4', 'Web Development', 'Data science', 'NLP'),
('Susan', 695753, 'CS', 3, '7.1', 'Basics of Python', 'Basics of Python', 'Data science'),
('Robert', 801448, 'MEC', 3, '6.5', 'Blockchain', 'Web Development', 'Data science'),
('Michael', 244802, 'MEC', 3, '6.4', 'Blockchain', 'NLP', 'Blockchain'),
('David', 421591, 'MEC', 3, '7.6', 'Data science', 'NLP', 'Web Development'),
('Susan', 994855, 'MEC', 3, '7.9', 'Basics of Python', 'Basics of Python', 'Blockchain'),
('Robert', 514998, 'MEC', 3, '8.4', 'Basics of Python', 'Web Development', 'Basics of Python'),
('David', 766071, 'MEC', 3, '7.1', 'Basics of Python', 'Blockchain', 'NLP'),
('Jessica', 887010, 'MEC', 3, '9.3', 'Web Development', 'Basics of Python', 'Basics of Python'),
('Robert', 597277, 'IT', 3, '8.9', 'Basics of Python', 'Data science', 'Web Development'),
('Jessica', 641345, 'IT', 3, '9.1', 'Basics of Python', 'Data science', 'Data science'),
('David', 629307, 'MEC', 3, '6.9', 'Basics of Python', 'NLP', 'Basics of Python'),
('Jessica', 578683, 'MEC', 3, '6.4', 'Basics of Python', 'Data science', 'Blockchain'),
('Jessica', 323921, 'IT', 3, '8.7', 'Blockchain', 'NLP', 'NLP'),
('Robert', 953652, 'EXTC', 3, '9.2', 'Data science', 'Blockchain', 'Blockchain'),
('Susan', 696427, 'EXTC', 3, '7.1', 'Data science', 'Basics of Python', 'Web Development'),
('Mary', 203227, 'MEC', 3, '7.3', 'Basics of Python', 'Web Development', 'Web Development'),
('Robert', 374222, 'MEC', 3, '7.1', 'Data science', 'Blockchain', 'Basics of Python'),
('Robert', 129142, 'EXTC', 3, '6.5', 'Basics of Python', 'NLP', 'Blockchain'),
('Michael', 882261, 'MEC', 3, '6.8', 'Web Development', 'Blockchain', 'Data science'),
('Mary', 523128, 'MEC', 3, '6.9', 'Data science', 'Web Development', 'Data science'),
('Michael', 739588, 'IT', 3, '6.4', 'NLP', 'NLP', 'NLP'),
('David', 305775, 'MEC', 3, '6.8', 'NLP', 'Blockchain', 'NLP'),
('David', 995788, 'IT', 3, '7.7', 'NLP', 'NLP', 'Data science'),
('Susan', 262094, 'IT', 3, '7.9', 'Basics of Python', 'Web Development', 'NLP'),
('David', 127590, 'IT', 3, '6.3', 'Data science', 'Blockchain', 'Blockchain'),
('Jessica', 692065, 'EXTC', 3, '8.0', 'NLP', 'Data science', 'Data science'),
('David', 252987, 'MEC', 3, '7.8', 'Data science', 'Web Development', 'Data science'),
('Jessica', 617286, 'MEC', 3, '6.5', 'Basics of Python', 'Web Development', 'Web Development'),
('Emily', 102697, 'CS', 3, '6.7', 'Data science', 'Data science', 'Web Development'),
('Robert', 650142, 'CS', 3, '9.4', 'Data science', 'NLP', 'Data science'),
('David', 115808, 'CS', 3, '6.4', 'Basics of Python', 'Data science', 'Data science'),
('David', 922041, 'IT', 3, '6.3', 'NLP', 'Basics of Python', 'Basics of Python'),
('Michael', 390565, 'CS', 3, '6.3', 'NLP', 'Data science', 'NLP'),
('David', 564191, 'MEC', 3, '8.4', 'Blockchain', 'Data science', 'Blockchain'),
('Michael', 352351, 'CS', 3, '8.4', 'Blockchain', 'Web Development', 'Basics of Python'),
('Susan', 625123, 'IT', 3, '8.3', 'Data science', 'Web Development', 'Blockchain'),
('Mary', 929060, 'IT', 3, '7.7', 'Basics of Python', 'Data science', 'Data science'),
('Jessica', 964519, 'MEC', 3, '6.6', 'Data science', 'NLP', 'Basics of Python'),
('Susan', 505670, 'EXTC', 3, '6.7', 'NLP', 'NLP', 'Basics of Python'),
('Emily', 162924, 'CS', 3, '8.2', 'Web Development', 'Web Development', 'Blockchain'),
('David', 455199, 'EXTC', 3, '8.3', 'Web Development', 'Basics of Python', 'Web Development'),
('Emily', 800789, 'EXTC', 3, '6.1', 'Basics of Python', 'Basics of Python', 'NLP'),
('Susan', 881595, 'EXTC', 3, '7.3', 'NLP', 'NLP', 'Web Development'),
('Mary', 474761, 'IT', 3, '8.6', 'Web Development', 'Web Development', 'Data science'),
('John', 848801, 'CS', 3, '7.9', 'Basics of Python', 'Web Development', 'Basics of Python'),
('Robert', 496670, 'EXTC', 3, '6.2', 'Web Development', 'Data science', 'Blockchain'),
('Robert', 451488, 'CS', 3, '7.9', 'Data science', 'NLP', 'Basics of Python'),
('Jessica', 464996, 'EXTC', 3, '7.0', 'Blockchain', 'Web Development', 'Blockchain'),
('John', 766274, 'MEC', 3, '6.3', 'Data science', 'Basics of Python', 'NLP'),
('David', 898456, 'CS', 3, '8.3', 'Basics of Python', 'NLP', 'Web Development'),
('Mary', 350980, 'EXTC', 3, '8.0', 'Data science', 'NLP', 'Data science'),
('Susan', 398686, 'CS', 3, '7.2', 'Data science', 'Web Development', 'Basics of Python'),
('Emily', 176504, 'CS', 3, '9.2', 'Basics of Python', 'Blockchain', 'Web Development'),
('John', 379288, 'CS', 3, '7.0', 'Data science', 'Basics of Python', 'Basics of Python'),
('Jessica', 379486, 'MEC', 3, '6.8', 'Web Development', 'Web Development', 'NLP'),
('Jessica', 632121, 'MEC', 3, '6.3', 'Data science', 'Web Development', 'NLP'),
('Emily', 999195, 'CS', 3, '9.5', 'Web Development', 'Blockchain', 'Data science'),
('Mary', 399499, 'IT', 3, '9.1', 'Web Development', 'Blockchain', 'NLP'),
('Jessica', 252548, 'CS', 3, '7.4', 'NLP', 'NLP', 'Basics of Python'),
('Emily', 149739, 'EXTC', 3, '6.7', 'Data science', 'Basics of Python', 'Web Development'),
('John', 705779, 'MEC', 3, '7.5', 'Basics of Python', 'Basics of Python', 'Data science'),
('Mary', 220386, 'IT', 3, '6.0', 'NLP', 'NLP', 'NLP'),
('John', 474142, 'EXTC', 3, '7.7', 'NLP', 'Data science', 'Web Development'),
('John', 619012, 'CS', 3, '8.3', 'NLP', 'Basics of Python', 'NLP'),
('Emily', 598228, 'EXTC', 3, '8.8', 'Web Development', 'Data science', 'Blockchain'),
('Robert', 669403, 'EXTC', 3, '6.6', 'Blockchain', 'Data science', 'Web Development'),
('Robert', 831702, 'MEC', 3, '7.5', 'Web Development', 'NLP', 'NLP'),
('Emily', 227287, 'CS', 3, '6.9', 'Data science', 'Basics of Python', 'NLP'),
('Susan', 846566, 'MEC', 3, '6.1', 'Basics of Python', 'Blockchain', 'Blockchain'),
('Jessica', 674281, 'IT', 3, '7.5', 'Web Development', 'Basics of Python', 'Web Development'),
('Robert', 629460, 'CS', 3, '8.6', 'Web Development', 'NLP', 'Data science'),
('Susan', 478159, 'EXTC', 3, '6.5', 'NLP', 'Data science', 'Web Development'),
('Michael', 620646, 'CS', 3, '7.4', 'Web Development', 'Basics of Python', 'Data science'),
('Susan', 620701, 'IT', 3, '9.0', 'Web Development', 'Blockchain', 'Basics of Python'),
('Robert', 632026, 'CS', 3, '9.2', 'Web Development', 'Basics of Python', 'Web Development'),
('Mary', 522565, 'MEC', 3, '8.9', 'Blockchain', 'Web Development', 'Web Development'),
('David', 673881, 'CS', 3, '6.8', 'Basics of Python', 'Data science', 'Web Development'),
('Susan', 133308, 'MEC', 3, '8.1', 'Blockchain', 'Blockchain', 'NLP'),
('Michael', 130403, 'EXTC', 3, '7.2', 'Basics of Python', 'NLP', 'Data science'),
('Robert', 407875, 'EXTC', 3, '7.5', 'Blockchain', 'Data science', 'Data science'),
('John', 901255, 'EXTC', 3, '7.9', 'Basics of Python', 'Blockchain', 'Data science'),
('John', 563445, 'IT', 3, '6.4', 'Basics of Python', 'NLP', 'Blockchain'),
('Susan', 818930, 'CS', 3, '7.0', 'Web Development', 'Web Development', 'Blockchain'),
('Mary', 758373, 'MEC', 3, '7.7', 'Blockchain', 'Data science', 'Web Development'),
('Emily', 974034, 'EXTC', 3, '6.5', 'Blockchain', 'Data science', 'Basics of Python'),
('Jessica', 884932, 'EXTC', 3, '8.8', 'Blockchain', 'Blockchain', 'NLP'),
('David', 631977, 'CS', 3, '8.0', 'Basics of Python', 'NLP', 'Blockchain'),
('Mary', 848233, 'IT', 3, '7.2', 'Basics of Python', 'NLP', 'Blockchain'),
('Michael', 246260, 'CS', 3, '8.4', 'Web Development', 'Web Development', 'Data science'),
('John', 446509, 'MEC', 3, '7.1', 'Blockchain', 'Data science', 'Blockchain'),
('Michael', 398482, 'EXTC', 3, '6.4', 'Basics of Python', 'Basics of Python', 'Blockchain'),
('Susan', 869907, 'EXTC', 3, '6.4', 'Blockchain', 'NLP', 'Data science'),
('John', 326262, 'CS', 3, '6.1', 'Blockchain', 'Blockchain', 'Data science'),
('Robert', 429537, 'IT', 3, '6.2', 'Data science', 'Web Development', 'NLP'),
('Susan', 100043, 'EXTC', 3, '9.4', 'Data science', 'NLP', 'Web Development'),
('Parth Muley', 1315, 'IT', 3, '8', 'NLP', 'Web Development', 'NLP');

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment2`
--

CREATE TABLE `course_allotment2` (
  `name` varchar(20) NOT NULL,
  `rollno` int(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `cgpa` varchar(20) NOT NULL,
  `course1` varchar(20) NOT NULL,
  `course2` varchar(20) NOT NULL,
  `course3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment2`
--

INSERT INTO `course_allotment2` (`name`, `rollno`, `branch`, `year`, `cgpa`, `course1`, `course2`, `course3`) VALUES
('David', 973790, 'EXTC', '4th year', '6.8', 'Cyber security', 'Data analytics', 'Big Data'),
('Emily', 898416, 'IT', '4th year', '8.2', 'Data analytics', 'Cyber security', 'Machine Learning'),
('Susan', 901220, 'EXTC', '4th year', '6.4', 'UI Programming', 'Cyber security', 'Machine Learning'),
('John', 359971, 'IT', '4th year', '9.3', 'UI Programming', 'Big Data', 'Machine Learning'),
('Susan', 625608, 'CS', '4th year', '7.5', 'Big Data', 'Data analytics', 'Big Data'),
('Jessica', 280832, 'CS', '4th year', '6.1', 'UI Programming', 'UI Programming', 'UI Programming'),
('Mary', 240188, 'CS', '4th year', '9.2', 'Cyber security', 'UI Programming', 'Machine Learning'),
('Michael', 713391, 'IT', '4th year', '8.8', 'Machine Learning', 'Machine Learning', 'Cyber security'),
('Mary', 491891, 'MEC', '4th year', '9.1', 'Big Data', 'Cyber security', 'Machine Learning'),
('Emily', 580072, 'EXTC', '4th year', '6.1', 'Big Data', 'Big Data', 'Cyber security'),
('David', 405157, 'IT', '4th year', '8.8', 'Data analytics', 'Machine Learning', 'Machine Learning'),
('Emily', 273249, 'IT', '4th year', '7.0', 'Big Data', 'UI Programming', 'Machine Learning'),
('Mary', 292582, 'EXTC', '4th year', '7.8', 'Data analytics', 'Data analytics', 'Cyber security'),
('John', 863032, 'CS', '4th year', '8.7', 'Cyber security', 'Data analytics', 'Big Data'),
('John', 447700, 'IT', '4th year', '8.5', 'Machine Learning', 'UI Programming', 'Data analytics'),
('Michael', 153414, 'IT', '4th year', '9.0', 'Machine Learning', 'UI Programming', 'Machine Learning'),
('David', 262223, 'EXTC', '4th year', '6.8', 'Data analytics', 'Cyber security', 'Machine Learning'),
('Michael', 919103, 'CS', '4th year', '9.0', 'UI Programming', 'Data analytics', 'UI Programming'),
('Michael', 818372, 'IT', '4th year', '8.0', 'Machine Learning', 'UI Programming', 'Machine Learning'),
('Susan', 260031, 'MEC', '4th year', '8.8', 'Machine Learning', 'Machine Learning', 'Big Data'),
('John', 256751, 'CS', '4th year', '8.5', 'Machine Learning', 'Big Data', 'Data analytics'),
('David', 215097, 'CS', '4th year', '6.0', 'Cyber security', 'Big Data', 'Machine Learning'),
('Susan', 498180, 'MEC', '4th year', '7.2', 'Machine Learning', 'UI Programming', 'Cyber security'),
('David', 864191, 'CS', '4th year', '7.5', 'Data analytics', 'Data analytics', 'Machine Learning'),
('Emily', 157991, 'IT', '4th year', '9.2', 'Data analytics', 'Data analytics', 'Big Data'),
('David', 443357, 'MEC', '4th year', '7.9', 'Machine Learning', 'UI Programming', 'Data analytics'),
('Mary', 473849, 'IT', '4th year', '6.6', 'Cyber security', 'Machine Learning', 'UI Programming'),
('Susan', 322674, 'CS', '4th year', '7.0', 'UI Programming', 'Machine Learning', 'Big Data'),
('John', 314370, 'CS', '4th year', '8.5', 'UI Programming', 'Cyber security', 'UI Programming'),
('Robert', 789763, 'CS', '4th year', '6.1', 'UI Programming', 'Big Data', 'Cyber security'),
('Susan', 754902, 'CS', '4th year', '8.1', 'Cyber security', 'Big Data', 'Data analytics'),
('Emily', 926039, 'IT', '4th year', '7.6', 'Data analytics', 'Big Data', 'UI Programming'),
('John', 980168, 'CS', '4th year', '6.3', 'UI Programming', 'Data analytics', 'UI Programming'),
('Emily', 952090, 'CS', '4th year', '6.9', 'Cyber security', 'Data analytics', 'Cyber security'),
('Jessica', 519055, 'MEC', '4th year', '9.5', 'Machine Learning', 'Machine Learning', 'Machine Learning'),
('Emily', 870298, 'MEC', '4th year', '6.6', 'UI Programming', 'Machine Learning', 'Cyber security'),
('Emily', 205452, 'CS', '4th year', '6.0', 'Machine Learning', 'UI Programming', 'Data analytics'),
('Susan', 927793, 'MEC', '4th year', '6.6', 'Machine Learning', 'Big Data', 'Data analytics'),
('Jessica', 833408, 'IT', '4th year', '8.0', 'Machine Learning', 'UI Programming', 'Machine Learning'),
('Jessica', 823604, 'IT', '4th year', '9.4', 'Cyber security', 'UI Programming', 'Machine Learning'),
('David', 609442, 'EXTC', '4th year', '8.3', 'Machine Learning', 'Cyber security', 'Cyber security'),
('Jessica', 723293, 'MEC', '4th year', '6.1', 'Data analytics', 'Big Data', 'Machine Learning'),
('John', 719064, 'MEC', '4th year', '6.6', 'Big Data', 'Cyber security', 'Cyber security'),
('Emily', 669737, 'MEC', '4th year', '9.2', 'Data analytics', 'Cyber security', 'Data analytics'),
('John', 595570, 'MEC', '4th year', '7.5', 'Cyber security', 'Machine Learning', 'Data analytics'),
('Jessica', 635056, 'IT', '4th year', '6.4', 'Data analytics', 'Big Data', 'Machine Learning'),
('Jessica', 215933, 'IT', '4th year', '8.3', 'Machine Learning', 'Data analytics', 'Big Data'),
('Michael', 539866, 'EXTC', '4th year', '7.4', 'Data analytics', 'Big Data', 'Machine Learning'),
('Emily', 994721, 'EXTC', '4th year', '9.3', 'Machine Learning', 'Machine Learning', 'Cyber security'),
('Susan', 814173, 'IT', '4th year', '9.3', 'Cyber security', 'Data analytics', 'Big Data'),
('Robert', 303213, 'EXTC', '4th year', '8.1', 'Data analytics', 'Machine Learning', 'Big Data'),
('Robert', 716183, 'EXTC', '4th year', '9.5', 'Machine Learning', 'Machine Learning', 'Machine Learning'),
('Susan', 604726, 'IT', '4th year', '8.3', 'Big Data', 'Data analytics', 'Cyber security'),
('Susan', 629818, 'EXTC', '4th year', '6.3', 'Cyber security', 'UI Programming', 'Machine Learning'),
('Susan', 277952, 'MEC', '4th year', '8.5', 'Cyber security', 'Big Data', 'Machine Learning'),
('David', 184731, 'EXTC', '4th year', '7.3', 'Cyber security', 'Big Data', 'Cyber security'),
('Susan', 472945, 'MEC', '4th year', '6.3', 'UI Programming', 'UI Programming', 'Big Data'),
('John', 654742, 'CS', '4th year', '7.4', 'Cyber security', 'Data analytics', 'Cyber security'),
('Emily', 459653, 'CS', '4th year', '8.6', 'UI Programming', 'Cyber security', 'Big Data'),
('John', 934312, 'CS', '4th year', '6.0', 'Machine Learning', 'Cyber security', 'UI Programming'),
('Jessica', 434727, 'CS', '4th year', '7.6', 'UI Programming', 'Machine Learning', 'Data analytics'),
('David', 104433, 'MEC', '4th year', '9.5', 'Data analytics', 'Data analytics', 'Big Data'),
('David', 777652, 'EXTC', '4th year', '7.2', 'Machine Learning', 'Big Data', 'Data analytics'),
('Mary', 277752, 'MEC', '4th year', '7.8', 'Data analytics', 'UI Programming', 'Data analytics'),
('John', 812550, 'IT', '4th year', '7.1', 'UI Programming', 'Data analytics', 'Big Data'),
('Michael', 369429, 'MEC', '4th year', '7.6', 'Big Data', 'Big Data', 'Data analytics'),
('Robert', 914097, 'CS', '4th year', '7.7', 'Data analytics', 'Data analytics', 'Data analytics'),
('Robert', 737951, 'CS', '4th year', '8.7', 'UI Programming', 'Data analytics', 'UI Programming'),
('Jessica', 602154, 'IT', '4th year', '9.3', 'Machine Learning', 'Data analytics', 'Machine Learning'),
('John', 364591, 'MEC', '4th year', '7.2', 'UI Programming', 'Cyber security', 'Machine Learning'),
('Mary', 789027, 'EXTC', '4th year', '9.4', 'Data analytics', 'Big Data', 'Data analytics'),
('Michael', 455115, 'CS', '4th year', '8.3', 'Big Data', 'UI Programming', 'Big Data'),
('Emily', 614081, 'IT', '4th year', '6.9', 'Machine Learning', 'Data analytics', 'Machine Learning'),
('John', 183037, 'CS', '4th year', '8.9', 'Cyber security', 'UI Programming', 'Data analytics'),
('Susan', 206751, 'CS', '4th year', '7.0', 'Big Data', 'Big Data', 'Cyber security'),
('Michael', 561397, 'MEC', '4th year', '7.4', 'Machine Learning', 'Machine Learning', 'Machine Learning'),
('Susan', 868754, 'IT', '4th year', '7.5', 'Machine Learning', 'Big Data', 'Machine Learning'),
('Emily', 610240, 'CS', '4th year', '7.4', 'Machine Learning', 'UI Programming', 'Cyber security'),
('Jessica', 756033, 'IT', '4th year', '9.5', 'Data analytics', 'Cyber security', 'UI Programming'),
('David', 829043, 'IT', '4th year', '6.5', 'Big Data', 'Cyber security', 'Data analytics'),
('Robert', 636944, 'EXTC', '4th year', '6.8', 'Cyber security', 'UI Programming', 'Data analytics'),
('Michael', 160940, 'MEC', '4th year', '9.2', 'Cyber security', 'Big Data', 'Machine Learning'),
('Emily', 791362, 'IT', '4th year', '7.9', 'Big Data', 'UI Programming', 'Machine Learning'),
('Jessica', 811803, 'MEC', '4th year', '6.2', 'Machine Learning', 'Cyber security', 'Machine Learning'),
('David', 748190, 'MEC', '4th year', '6.8', 'UI Programming', 'Data analytics', 'UI Programming'),
('Emily', 404799, 'EXTC', '4th year', '7.8', 'Machine Learning', 'UI Programming', 'Big Data'),
('David', 575912, 'CS', '4th year', '8.5', 'Cyber security', 'Machine Learning', 'Cyber security'),
('John', 112929, 'MEC', '4th year', '7.1', 'Big Data', 'Machine Learning', 'Machine Learning'),
('Michael', 653533, 'CS', '4th year', '6.5', 'Cyber security', 'Cyber security', 'Data analytics'),
('Susan', 756166, 'MEC', '4th year', '7.1', 'Big Data', 'Data analytics', 'Cyber security'),
('Susan', 563210, 'CS', '4th year', '7.8', 'Data analytics', 'Cyber security', 'Cyber security'),
('David', 454700, 'IT', '4th year', '9.1', 'Data analytics', 'Machine Learning', 'Cyber security'),
('Mary', 487504, 'MEC', '4th year', '6.6', 'Big Data', 'Big Data', 'Big Data'),
('John', 368689, 'CS', '4th year', '7.9', 'Cyber security', 'UI Programming', 'Machine Learning'),
('Robert', 900484, 'EXTC', '4th year', '6.7', 'UI Programming', 'Big Data', 'Cyber security'),
('Jessica', 816210, 'CS', '4th year', '7.5', 'Cyber security', 'Big Data', 'Cyber security'),
('Robert', 128429, 'CS', '4th year', '8.6', 'Big Data', 'Data analytics', 'Big Data'),
('John', 899499, 'IT', '4th year', '9.1', 'Data analytics', 'Cyber security', 'Cyber security'),
('Jessica', 930112, 'MEC', '4th year', '9.0', 'Cyber security', 'Machine Learning', 'UI Programming'),
('Bhavesh Dingria', 13156, 'CS', '4th Year', '9.6', 'Machine Learning', 'UI Programming', 'Cyber security');

-- --------------------------------------------------------

--
-- Table structure for table `d_users`
--

CREATE TABLE `d_users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `course` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `d_users`
--

INSERT INTO `d_users` (`username`, `password`, `course`) VALUES
('heena123', '1234', 'Basics of Python'),
('sanjay123', '1234', 'Web Development'),
('vishal123', '1234', 'NLP'),
('sakshi123', '1234', 'Data science'),
('riya123', '1234', 'Blockchain'),
('harsh123', '1234', 'Data analytics'),
('sarika123', '1234', 'Machine Learning'),
('deepa123', '1234', 'Cyber security'),
('mayur123', '1234', 'UI Programming'),
('kajal123', '1234', 'Big Data'),
('admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirm_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `username`, `password`, `confirm_password`) VALUES
('Bhavesh Dingria', 'dingriabhavesh0@gmai', 'bhavi1315', '1234', ''),
('Parth Muley', 'Parth09@somaiya.edu', 'parth123', '1234', ''),
('Shivam', 'Shivam09@somaiya.edu', 'shivam12', '1234', ''),
('Bhavesh Dingria', 'dingriabhavesh0@gmai', 'bhavi13', '1234', ''),
('Karan', 'kd@somaiya.edu', 'karan12', '1234', ''),
('hh', 'Shiv9@somaiya.edu', 'shiv14', '1234', ''),
('Bhavi', 'Bd09@somaiya.edu', 'bhavi1310', '1234', ''),
('parth', 'Parth09@somaiya.edu', 'parth1234', '1234', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
