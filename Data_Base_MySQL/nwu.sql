-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2017 at 08:26 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1337164_nwu`
--
CREATE DATABASE IF NOT EXISTS `id1337164_nwu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1337164_nwu`;

-- --------------------------------------------------------

--
-- Table structure for table `count1`
--

CREATE TABLE `count1` (
  `id` int(11) NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count1`
--

INSERT INTO `count1` (`id`, `year`) VALUES
(1, 'First'),
(4, 'Forth'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `count2`
--

CREATE TABLE `count2` (
  `id` int(11) NOT NULL,
  `samester` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count2`
--

INSERT INTO `count2` (`id`, `samester`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `courseId` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `houre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creadit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `samester` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`courseId`, `code`, `titel`, `houre`, `creadit`, `samester`, `year`, `dep`) VALUES
(2, 'CSE-1101', 'Computer Basic and Programming', '3', '3.00', 'First', 'First', 1),
(3, 'CSE-1102', 'Computer Basic and Programming Sessional', '3', '1.50', 'First', 'First', 1),
(4, 'Hum-1141', 'English and Human Communication', '1.5', '1.5', 'First', 'First', 1),
(5, 'Math-1131', 'Mathematics I', '3', '3.00', 'First', 'First', 1),
(6, 'Phy-1133', 'Physics I', '3', '3.00', 'First', 'First', 1),
(7, 'Phy-1134', 'Physics Sessional I', '1.5', '0.75', 'First', 'First', 1),
(8, 'CSE-1201', 'Object Oriented Programming', '3', '3.00', 'Second', 'First', 1),
(9, 'CSE-1202', 'Object Oriented Programming Sessional', '1.5', '0.75', 'Second', 'First', 1),
(10, 'CSE-1204', 'Softwarw Development Sessional-I', '3', '1.5', 'Second', 'First', 1),
(11, 'EEE-1221', 'Electrical Circuits', '1.5', '1.5', 'Second', 'First', 1),
(12, 'EEE-1222', 'Electrical Circuits Sessional', '1.5', '0.75', 'Second', 'First', 1),
(13, 'ME-1223', 'Mechanicalcs and Heat Engineering', '1.5', '1.5', 'Second', 'First', 1),
(14, 'ME-1224', 'Engineering Drawing CAD Sessional', '1.5', '0.75', 'Second', 'First', 1),
(15, 'Math-1231', 'Mathematics-II', '3', '3.00', 'Second', 'First', 1),
(16, 'CSE-1301', 'Digital Logic Design', '3', '3.00', 'Third', 'First', 1),
(17, 'CSE-1302', 'Digital Logic Design Sessional', '1.5', '0.75', 'Third', 'First', 1),
(18, 'Math-1331', 'Mathematics-III', '3', '3.00', 'Third', 'First', 1),
(19, 'Phy-1333', 'Physics-II', '3', '3.00', 'Third', 'First', 1),
(20, 'Phy-1334', 'Physics-II Sessional', '1.5', '0.75', 'Third', 'First', 1),
(21, 'Chem-1335', 'Chemistry', '3', '3.00', 'Third', 'First', 1),
(22, 'Chem-1336', 'Chemistry Sessional', '1.5', '0.75', 'Third', 'First', 1),
(23, 'CSE-2101', 'Data Structures', '3', '3.00', 'Frist', 'Second', 1),
(24, 'CSE-2102', 'Data Structures Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(25, 'EEE-2121', 'Electronics and Circuits', '3', '3.00', 'Frist', 'Second', 1),
(26, 'EEE-2122', 'Electronics and Circuits Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(27, 'Math-2131', 'Mathematics-IV', '3', '3.00', 'Frist', 'Second', 1),
(28, 'Hum-2141', 'Government and Sociology', '1.5', '1.5', 'Frist', 'Second', 1),
(29, 'CSE-2201', 'Algorithms', '3', '3.00', 'Second', 'Second', 1),
(30, 'CSE-2202', 'Algorithms Sessional', '3', '1.5', 'Second', 'Second', 1),
(31, 'CSE-2204', 'Software Development Sessional-II', '3', '1.5', 'Second', 'Second', 1),
(32, 'CSE-2205', 'Discrete Mathematics', '3', '3.00', 'Second', 'Second', 1),
(33, 'Math-2231', 'Matematics-V', '3', '3.00', 'Second', 'Second', 1),
(34, 'Hum-2241', 'Economics', '1.5', '1.5', 'Second', 'Second', 1),
(35, 'CSE-2301', 'Microprocessors and Microcomputers', '3', '3.00', 'Third', 'Second', 1),
(36, 'CSE-2302', 'Microprocessors and Microcomputers Sessional', '3', '1.5', 'Third', 'Second', 1),
(37, 'CSE-2303', 'Numerical Analysis', '3', '3.00', 'Third', 'Second', 1),
(38, 'CSE-2304', 'Numerical Analysis Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(39, 'EEE-2321', 'Electrical Technology', '1.5', '1.5', 'Third', 'Second', 1),
(40, 'EEE-2322', 'Electrical Technology Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(41, 'Hum-2341', 'Psychology', '1.5', '1.5', 'Third', 'Second', 1),
(42, 'CSE-3101', 'Applied Probability and Queuing Theory', '3', '3.00', 'Frist', 'Third', 1),
(43, 'CSE-3104', 'Internet Programming Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(44, 'CSE-3106', 'Software Development Sessional III', '3', '1.5', 'Frist', 'Third', 1),
(45, 'CSE-3107', 'Database Systems', '3', '3.00', 'Frist', 'Third', 1),
(46, 'CSE-3108', 'Database Systems Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(47, 'EEE-3121', 'Digital Electronics and Pulse Techniques', '3', '3.00', 'Frist', 'Third', 1),
(48, 'EEE-3122', 'Digital Electronic and Pulse Techniques Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(49, 'Hum-3141', 'Accounting', '1.5', '1.5', 'Frist', 'Third', 1),
(50, 'CSE-3201', 'Artificial Intelligence and Expert System', '3', '3.00', 'Second', 'Third', 1),
(51, 'CSE-3202', 'Artificial Intelligence and Expert System Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(52, 'CSE-3203', 'Software Engineering', '3', '3.00', 'Second', 'Third', 1),
(53, 'CSE-3204', 'Software Engineering Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(54, 'CSE-3205', 'Computer Networks', '3', '3.00', 'Second', 'Third', 1),
(55, 'CSE-3206', 'Computer Network Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(56, 'Hum-3241', 'Industrial Management and Law', '1.5', '1.5', 'Second', 'Third', 1),
(57, 'CSE-3301 ', 'System Programming and Operating System', '3', '3.00', 'Third', 'Third', 1),
(58, 'CSE-3302 ', 'System Programming and Operating System Sessional', '1.5', '0.75', 'Third', 'Third', 1),
(59, 'CSE-3303', 'Computational Geomatry', '3', '3.00', 'Third', 'Third', 1),
(60, 'CSE-3305', 'Computer Architecture', '3', '3.00', 'Third', 'Third', 1),
(61, 'EEE-3321', 'Data Communication', '3', '3.00', 'Third', 'Third', 1),
(62, 'CSE-4101', 'Neural Netword and Fuzzy System', '3', '3.00', 'Frist', 'Forth', 1),
(63, 'CSE-4102', 'Neural Netword and Fuzzy System Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(64, 'CSE-4103', 'Compiler Design', '3', '3.00', 'Frist', 'Forth', 1),
(65, 'CSE-4104', 'Compiler Design Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(66, 'CSE-4105', 'Parallel and Distribuled Processing', '3', '3.00', 'Frist', 'Forth', 1),
(67, 'EEE-4121', 'Electrical Measurement and Instrumentation', '3', '3.00', 'Frist', 'Forth', 1),
(68, 'EEE-4122', 'Electrical Measurement and Instrumentation Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(69, 'CSE-4201', 'Information System Analysis and Design', '3', '3.00', 'Second', 'Forth', 1),
(70, 'CSE-4203', 'Advance Computer Architecture', '3', '3.00', 'Second', 'Forth', 1),
(71, 'CSE-4205', 'Degital System Design', '3', '3.00', 'Second', 'Forth', 1),
(72, 'CSE-4200', 'Research Project', '3', '1.5', 'Second', 'Forth', 1),
(73, 'EEE-4221', 'VLSI Design', '3', '3.00', 'Second', 'Forth', 1),
(74, 'CSE-4301', 'Computer Graphics and Pattern Recognition', '3', '3.00', 'Third', 'Forth', 1),
(75, 'CSE-4302', 'Computer Graphics and Pattern Recognition Sessional', '1.5', '0.75', 'Third', 'Forth', 1),
(76, 'CSE-4303', 'Robotics and Computer Vision', '3', '3.00', 'Third', 'Forth', 1),
(77, 'CSE-4305', 'Information Security and Control', '1.5', '1.5', 'Third', 'Forth', 1),
(78, 'CSE-4300', 'Project and Thesis II', '3', '1.5', 'Third', 'Forth', 1),
(79, 'CSE-4320', 'Industrial Training', '3', '3.00', 'Third', 'Forth', 1),
(80, 'CSE-4307', 'Human Computer Interaction', '3', '3.00', 'Third', 'Forth', 1),
(81, 'EEE-1101', 'Electrical Circuit-1', '3', '3.00', 'First', 'First', 2),
(82, 'EEE-1102', 'Electrical Circuit-1 Sessional', '3', '1.5', 'First', 'First', 2),
(83, 'Math-1131', 'Engineering Mathematics-1', '3', '3.00', 'First', 'First', 2),
(84, 'Phy-1133', 'Physics-1', '3', '3.00', 'First', 'First', 2),
(85, 'Phy-1134', 'Physics-1 Sessional', '1.5', '0.75', 'First', 'First', 2),
(86, 'EEE-1201', 'Electrical Circuit-2', '3', '3.00', 'Second', 'First', 2),
(87, 'EEE-1202', 'Electrical Circuit-2 Sessional', '1.5', '0.75', 'Second', 'First', 2),
(88, 'CSE-1221', 'Computer Programming', '3', '3.00', 'Second', 'First', 2),
(89, 'CSE-1222', 'Computer Programming Sessional', '1.5', '0.75', 'Second', 'First', 2),
(90, 'Math-1231', 'Engineering Mathematics-2', '3', '3.00', 'Second', 'First', 2),
(91, 'Hum-1241', 'Funtion English & Sociology', '3', '3.00', 'Second', 'First', 2),
(92, 'EEE-1301', 'Basic Electrical & Electronics design Engineering', '3', '3.00', 'Third', 'First', 2),
(93, 'EEE-1302', 'Basic Electrical & Electronics design Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(94, 'ME-1321', 'Basic Mechanical Basic Engineering', '3', '3.00', 'Third', 'First', 2),
(95, 'ME-1322', 'Basic Mechanical Basic Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(96, 'Math-1331', 'Engineering Mathematics-III', '3', '3.00', 'Third', 'First', 2),
(97, 'Chem-1335', 'Chemistry-1', '3', '3.00', 'Third', 'First', 2),
(98, 'Chem-1336', 'Chemistry-1 Sessional', '1.5', '0.75', 'Third', 'First', 2),
(99, 'EEE-2101', 'Electrical Machines-1', '3', '3.00', 'Frist', 'Second', 2),
(100, 'EEE-2102', 'Electrical Machines-1 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(101, 'Math-2131', 'Engineering Mathematics-4', '3', '3.00', 'Frist', 'Second', 2),
(102, 'Phy-2133', 'Physics-2', '3', '3.00', 'Frist', 'Second', 2),
(103, 'Phy-2134', 'Physics-2 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(104, 'Chem-2335', 'Chemistry-II', '3', '3.00', 'Frist', 'Second', 2),
(105, 'Chem-2336', 'Chemistry-II Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(106, 'EEE-2201', 'Electrical Machines-II', '3', '3.00', 'Second', 'Second', 2),
(107, 'EEE-2202', 'Electrical Machines-II Sessional', '1.5', '0.75', 'Second', 'Second', 2),
(108, 'Math-2231', 'Engineering Mathematics-V', '3', '3.00', 'Second', 'Second', 2),
(109, 'Phy-2233', 'Physics-III', '3', '3.00', 'Second', 'Second', 2),
(110, 'Phy-2234', 'Physics-III Sessional', '3', '0.75', 'Second', 'Second', 2),
(111, 'EEE-2301', 'Electrical Device and Circuit-I', '3', '3.00', 'Third', 'Second', 2),
(112, 'EEE-2302', 'Electrical Device and Circuit-I Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(113, 'EEE-2303', 'Transmission and Disttribution of Electrical Power', '3', '3.00', 'Third', 'Second', 2),
(114, 'CE-2321', 'Mechanics of Solids', '3', '3.00', 'Third', 'Second', 2),
(115, 'CE-2322', 'Mechanics of Solids Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(116, 'Math-2331', 'Engineering Mathematics-VI', '3', '3.00', 'Third', 'Second', 2),
(117, 'EEE-3101', 'Electric device and circuits-II', '3', '3.00', 'Frist', 'Third', 2),
(118, 'EEE-3102', 'Electric device and circuits-II Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(119, 'EEE-3103', 'Electrical & Electronic Measurements', '3', '3.00', 'Frist', 'Third', 2),
(120, 'EEE-3104', 'Electrical & Electronic Measurements Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(121, 'EEE-3105', 'Telecommunications-I', '3', '3.00', 'Frist', 'Third', 2),
(122, 'EEE-3106', 'Telecommunications-I Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(123, 'CSE-3121', 'Programing Techniques & Numerical Analysis', '3', '3.00', 'Frist', 'Third', 2),
(124, 'EEE-3201', 'Electric device and circuits-III', '3', '3.00', 'Second', 'Third', 2),
(125, 'EEE-3202', 'Electric device and circuits-III Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(126, 'EEE-3203', 'Digital Electronics', '3', '3.00', 'Second', 'Third', 2),
(127, 'EEE-3204', 'Digital Electronics Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(128, 'HUM-3241', 'Industrial Management', '3', '3.00', 'Second', 'Third', 2),
(129, 'EEE-3301', 'Micropricessor & Microcomputer', '3', '3.00', 'Third', 'Third', 2),
(130, 'EEE-3302', 'Micropricessor & Microcomputer Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(131, 'EEE-3304', 'Software Development Sessional', '3', '1.50', 'Third', 'Third', 2),
(132, 'EEE-3305', 'Telecommunications-II', '3', '3.00', 'Third', 'Third', 2),
(133, 'EEE-3306', 'Telecommunications-II Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(134, 'EEE-3307', 'Electromagnetic waves and Fild', '3', '3.00', 'Third', 'Third', 2),
(135, 'Hum-3341', 'Socioeconomic and Environmental Engineering Projects sociology', '3', '3.00', 'Third', 'Third', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dep_table`
--

CREATE TABLE `dep_table` (
  `no` int(11) NOT NULL,
  `dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep_table`
--

INSERT INTO `dep_table` (`no`, `dep`) VALUES
(4, 'BBA'),
(6, 'Chemistry'),
(1, 'CSE'),
(3, 'Cvil'),
(2, 'EEE'),
(8, 'Hum'),
(5, 'Math'),
(7, 'ME'),
(9, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `nwu_data`
--

CREATE TABLE `nwu_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nwu_data`
--

INSERT INTO `nwu_data` (`id`, `data`) VALUES
(1, 'A University needs to be a centre of excellence for pursuit of knowledge and the highest seat of learning, research and intellectual development for any nation. To keep pace with the fast advancing world and to face the challenges of a new millennium, especially in this age of globalization ,a university plays the most important role by nourishing lofty ideals, reflecting ethical values, upholding culture and heritage and producing high quality intellectuals and human resources and skilled manpower who will be professionally sound and morally upright. North Western University will also endeavour to perform these functions by exploring and exposing the potentialities of learners.\r\n\r\nNorth Western University, the first ever full-fledged private University in Khulna, approved by the Government and the Bangladesh University Grants Commission, has come into existence under the auspices of a galaxy of distinguished and enthusiastic benevolent souls who profess genuine love for higher education. The noble objective of these people provides ample opportunities of learning to students both from urban and rural areas in the country at affordable expenses. The University has introduced need-oriented academic Programs keeping in view, the demand for trained manpower to be equipped with sound technological skills and devices within and outside the country. The University is determined to maintain a congenial and stimulating academic environment and keep the campus free from all such activities detrimental to the acquisition of knowledge and learning.\r\n\r\nLet us hope that with our concerted efforts, strong determination and close cooperation from everyone associate with this Alma Mater, we shall raise the University to international standard and reach it to the pinnacle of glory. Also, we believe this university will surely play a pioneering role in the private sector towards the extension of higher education in the country and advancement and progress of the nation as well.\r\n\r\nProfessor Dr. Tarapada Bhowmick\r\n\r\nVice-Chancellor\r\n\r\nNorth Western University\r\n\r\nKhulna'),
(2, 'North Western University, Khulna the first full-fledged private university in Khulna, Bangladesh was established on the 18th November, 2012. The University started Academic Activities from Spring Semester, 2013.\r\n\r\nThe Government of the People’s Republic of Bangladesh approved the establishment of North Western University under Private University Act. 2010.\r\n\r\nThe University started its activities with 4 Faculties, 12 Departments, 67 full time teachers, 61 part time teachers and 489 students. At present the University consists of 4 Faculties, 14 Departments. The number of students and teachers have risen to about 3400 and 140 respectively.\r\n\r\nThe first fresh admission classes had 489 students enrolled in 12 Departments: Business Administration 62 students, BA Hons in English 9 students, MA in English 5 students, LLB 10 students, MBA-1 Year 27 students, EMBA 31 students, MBA-2 Year 11 students, MDS 7 students, Computer Science & Engineering 92 students, Electrical & Electronic Engineering 150 students, Civil Engineering 84 students.\r\n\r\nThe main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students. Since its inception the University has a distinct character of having distinguished scholars as faculties who have enriched the global pool of knowledge by making notable contributions in the fields of teaching and research.\r\n\r\nThe high standard of education and research for the University was set by its Vice-Chancellor, Prof. Dr. Khondoker Bazlul Hoque.\r\n\r\nAccording to the provision of the Private University Act-2010, Talukder Abdul Khaleque is the current Chairman of the Board of Trustees, North Western University and North Western University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman.\r\n\r\nThe Vice-Chancellor, as the chief executive and academic officer runs the university with the cooperation of the statutory bodies operating under the provision of the Private University Act. 2010. The Registrar maintains the university records including admissions, keeps liaison with Ministry of Education, University Grants Commission (UGC) and other relevant authorities. The Controller of Examinations deals with all functions relating to preservation of records of Examinations, preparation and publication of results, processing confidential papers etc.\r\n\r\nNWU has the authority, under its Charter, to impart education and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering and law. Currently, NWU offers Bachelor’s and Master’s degrees in 16 subjects (10 Bachelor’s degrees and 6 Master’s degrees).\r\n\r\nThe university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs of the country.\r\n\r\nProf. Dr. Khondoker Bazlul Hoque, Vice-Chancellor (honourary) is providing leadership in improving, expanding and diversifying various academic programs. NWU now has 76 (fulltime) faculty members. All faculty members have higher degrees from reputed domestic and foreign universities.\r\n\r\nNorth Western University is dedicated to the advancement of learning, and is committed to promoting research in all fields of knowledge. As there are plans for further expansion of facilities, plans for new avenues and opportunities, the course curricula are updated and new research projects are undertaken every year. As the pioneer and the highest seat of learning in the country, the University has taken the task of fostering the transformation processes of the individual students and the country as a whole through its educational and research facilities keeping pace with the demands of the day.'),
(3, '1. Talukder Abdul Khaleque (Chairman & Trustee)\r\n\r\n2. S. M. Kamal Hossain (Vice Chairman & Trustee)\r\n\r\n3. M. Abdur Razzaque (Trustee)\r\n\r\n4. Syeda Lutfa Huq (Trustee)\r\n\r\n5. Nahid Newazi (Trustee)\r\n\r\n6. Syed Mohammed Obaidullah (Trustee)\r\n\r\n7. Prof. Dr. Mohammed Sirajul Huq Chowdhury(Trustee)\r\n\r\n8. Shahabuddin Ahmed (Trustee)\r\n\r\n9. Md. Towhidul Islam Azad (Trustee)\r\n\r\n10. Prof. Dr. Khondoker Bazlul Hoque (Trustee)\r\n\r\n11. Habibunnahar (Trustee)\r\n\r\n12. Mujibor Rahman Shamim (Trustee)\r\n\r\n13. Shabana Shaheen (Trustee)\r\n\r\n14. Morjina Islam (Trustee)\r\n\r\n15. Nurani Akther (Trustee)\r\n\r\n16. Pabitra Kumar Sarkar (Trustee)\r\n\r\n17. Saeir J. Sattar (Trustee)\r\n\r\n18. Dr. Md. Rezaul Alam (Secretary & Trustee)'),
(4, 'To develop, maintain, and sustain an overall knowledge of the university’s core research areas of interest and competence. Over a period time, these core areas should be expanded to include new areas reflecting the nature of growth of the university. Conduct regular periodic meetings with aspiring faculty members/researchers of all academic areas and maintain regular interaction with them to assist them in developing their own research programs. Supervise a reviewing committee entrusted with annually/semi annually reviewing research proposals submitted for funding from university fund allocated exclusively for research. This task will focus intensely on identifying worthwhile, knowledge enhancing projects which will most likely make a significant contribution in the specific area of interest. Develop, maintain and strengthen association of all well-recognized national academic association of repute and participate in all seminars, workshops, conferences sponsored by similar organizations. Nominate appropriate faculty members to participate in such seminars in order to increase the visibility of southeast university.');

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_table`
--

CREATE TABLE `student_mark_table` (
  `studentMarkId` int(11) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `techerCourseId` int(11) NOT NULL,
  `ct1` float NOT NULL DEFAULT '0',
  `ct2` float NOT NULL DEFAULT '0',
  `ct3` float NOT NULL DEFAULT '0',
  `totalCt` float NOT NULL DEFAULT '0',
  `present` float NOT NULL DEFAULT '0',
  `assignment` float NOT NULL DEFAULT '0',
  `final` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_mark_table`
--

INSERT INTO `student_mark_table` (`studentMarkId`, `id`, `techerCourseId`, `ct1`, `ct2`, `ct3`, `totalCt`, `present`, `assignment`, `final`, `total`) VALUES
(1, '20151006010', 1, 1, 1, 1, 1, 10, 1, 55, 67),
(2, '20151006010', 2, 15, 20, 4, 17.5, 10, 10, 55, 92.5),
(3, '20151005010', 1, 0, 1, 0, 1, 0, 0, 55, 56),
(4, '20151005010', 2, 15, 20, 0, 17.5, 10, 10, 60, 97.5);

-- --------------------------------------------------------

--
-- Table structure for table `techer_course_table`
--

CREATE TABLE `techer_course_table` (
  `techerCourseId` int(10) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `courseId` int(10) NOT NULL,
  `ctNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techer_course_table`
--

INSERT INTO `techer_course_table` (`techerCourseId`, `id`, `exam`, `courseId`, `ctNo`, `ctType`) VALUES
(1, '20121001', 'Summer-2017', 2, '2', 'BestOne'),
(2, '20121001', 'Summer-2017', 3, '2', 'BestTwo');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`no`, `type`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`name`, `id`, `password`, `email`, `dep`, `session`, `type`, `gender`, `mobile`, `birth`, `adress`, `location`, `longitude`, `latitude`) VALUES
('Injamamul huqe', '20121001', '20121001', 'Injamamul@gmail.com', 1, 'Spring-2012', 1, 'Male', '01789456133', '1986-02-04', 'Khalishpur Jute Mill, Khulna, BIDC Road, Khulna, Khulna Division, Bangladesh', 'BIDC Rd, Khulna 9000, Bangladesh', '89.54085550000002', '22.8623939'),
('Nagib Mahafug', '20131003', '1003', 'Nagib@gmail.com', 1, 'Spring-2013', 1, 'Male', '01589456133', '9-5-16', 'Helani Place, Hilo, HI, United States', 'Helani Pl, Hilo, HI 96720, USA', '-155.11099760000002', '19.7014473'),
('Asif Al Jun', '20141002', '1002', 'Asif@gmail.com', 1, 'Spring-2014', 1, 'Male', '01689456133', '', '', '', '', ''),
('Nazmul Hohain', '20142001', '2001', 'Nazmul@gmail.com', 2, 'Spring-2014', 1, 'Male', '01989456133', '', '', '', '', ''),
('Abul Kalam', '20142003', '2003', 'Abul@gmail.com', 2, 'Spring-2014', 2, 'Male', '01789456133', '', '', '', '', ''),
('Tariqul Islam', '20151005010', '20151005010', 'Tariqul@gmail.com', 1, 'Spring-2015', 3, 'Male', '01889456133', '', '', '', '', ''),
('Riadulislam', '20151006010', '20151006010', 'riad@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '1996-03-06', 'Helani Tea Store, Kadarnath Road, Khulna, Bangladesh', 'Kadarnath Rd, Khulna, Bangladesh', '89.51448260000006', '22.8835517'),
('Tanvir islam', '20151036010', '20151036010', 'tanvir@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Pallab kumar', '20151043010', '20151043010', 'pallab@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Rasidul Islam', '20152002', '2002', 'Rasidul.com', 2, 'Spring-2015', 2, 'Male', '016894646133', '', '', '', '', ''),
('Tariqul Islam', '20152005010', '20152005010', 'Tariquasl@gmail.com', 2, 'Spring-2015', 3, 'Male', '01888456133', '', '', '', '', ''),
('Riadulislam', '20152006010', '20152006010', 'riadas@gmail.com', 2, 'Spring-2015', 3, 'Male', '019894556133', '', '', '', '', ''),
('Tanvir islam', '20152036010', '20152036010', 'tanviras@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989566133', '', '', '', '', ''),
('Pallab kumar', '20152043010', '20152043010', 'pallabas@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989276133', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `count1`
--
ALTER TABLE `count1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `count2`
--
ALTER TABLE `count2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `samester` (`samester`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `UQ_No_Dep` (`code`,`dep`),
  ADD KEY `dep` (`dep`);

--
-- Indexes for table `dep_table`
--
ALTER TABLE `dep_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `dep` (`dep`);

--
-- Indexes for table `nwu_data`
--
ALTER TABLE `nwu_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD PRIMARY KEY (`studentMarkId`),
  ADD UNIQUE KEY `UQ_Id` (`id`,`techerCourseId`),
  ADD KEY `techerCourseId` (`techerCourseId`);

--
-- Indexes for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD PRIMARY KEY (`techerCourseId`),
  ADD UNIQUE KEY `UQ_id_exam` (`id`,`exam`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `dep` (`dep`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  MODIFY `studentMarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  MODIFY `techerCourseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_table`
--
ALTER TABLE `course_table`
  ADD CONSTRAINT `course_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`);

--
-- Constraints for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD CONSTRAINT `student_mark_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `student_mark_table_ibfk_2` FOREIGN KEY (`techerCourseId`) REFERENCES `techer_course_table` (`techerCourseId`);

--
-- Constraints for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD CONSTRAINT `techer_course_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `techer_course_table_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course_table` (`courseId`);

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`),
  ADD CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_table` (`no`);
--
-- Database: `id1337164_nwu`
--
CREATE DATABASE IF NOT EXISTS `id1337164_nwu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1337164_nwu`;

-- --------------------------------------------------------

--
-- Table structure for table `count1`
--

CREATE TABLE `count1` (
  `id` int(11) NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count1`
--

INSERT INTO `count1` (`id`, `year`) VALUES
(1, 'First'),
(4, 'Forth'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `count2`
--

CREATE TABLE `count2` (
  `id` int(11) NOT NULL,
  `samester` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count2`
--

INSERT INTO `count2` (`id`, `samester`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `courseId` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `houre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creadit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `samester` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`courseId`, `code`, `titel`, `houre`, `creadit`, `samester`, `year`, `dep`) VALUES
(2, 'CSE-1101', 'Computer Basic and Programming', '3', '3.00', 'First', 'First', 1),
(3, 'CSE-1102', 'Computer Basic and Programming Sessional', '3', '1.50', 'First', 'First', 1),
(4, 'Hum-1141', 'English and Human Communication', '1.5', '1.5', 'First', 'First', 1),
(5, 'Math-1131', 'Mathematics I', '3', '3.00', 'First', 'First', 1),
(6, 'Phy-1133', 'Physics I', '3', '3.00', 'First', 'First', 1),
(7, 'Phy-1134', 'Physics Sessional I', '1.5', '0.75', 'First', 'First', 1),
(8, 'CSE-1201', 'Object Oriented Programming', '3', '3.00', 'Second', 'First', 1),
(9, 'CSE-1202', 'Object Oriented Programming Sessional', '1.5', '0.75', 'Second', 'First', 1),
(10, 'CSE-1204', 'Softwarw Development Sessional-I', '3', '1.5', 'Second', 'First', 1),
(11, 'EEE-1221', 'Electrical Circuits', '1.5', '1.5', 'Second', 'First', 1),
(12, 'EEE-1222', 'Electrical Circuits Sessional', '1.5', '0.75', 'Second', 'First', 1),
(13, 'ME-1223', 'Mechanicalcs and Heat Engineering', '1.5', '1.5', 'Second', 'First', 1),
(14, 'ME-1224', 'Engineering Drawing CAD Sessional', '1.5', '0.75', 'Second', 'First', 1),
(15, 'Math-1231', 'Mathematics-II', '3', '3.00', 'Second', 'First', 1),
(16, 'CSE-1301', 'Digital Logic Design', '3', '3.00', 'Third', 'First', 1),
(17, 'CSE-1302', 'Digital Logic Design Sessional', '1.5', '0.75', 'Third', 'First', 1),
(18, 'Math-1331', 'Mathematics-III', '3', '3.00', 'Third', 'First', 1),
(19, 'Phy-1333', 'Physics-II', '3', '3.00', 'Third', 'First', 1),
(20, 'Phy-1334', 'Physics-II Sessional', '1.5', '0.75', 'Third', 'First', 1),
(21, 'Chem-1335', 'Chemistry', '3', '3.00', 'Third', 'First', 1),
(22, 'Chem-1336', 'Chemistry Sessional', '1.5', '0.75', 'Third', 'First', 1),
(23, 'CSE-2101', 'Data Structures', '3', '3.00', 'Frist', 'Second', 1),
(24, 'CSE-2102', 'Data Structures Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(25, 'EEE-2121', 'Electronics and Circuits', '3', '3.00', 'Frist', 'Second', 1),
(26, 'EEE-2122', 'Electronics and Circuits Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(27, 'Math-2131', 'Mathematics-IV', '3', '3.00', 'Frist', 'Second', 1),
(28, 'Hum-2141', 'Government and Sociology', '1.5', '1.5', 'Frist', 'Second', 1),
(29, 'CSE-2201', 'Algorithms', '3', '3.00', 'Second', 'Second', 1),
(30, 'CSE-2202', 'Algorithms Sessional', '3', '1.5', 'Second', 'Second', 1),
(31, 'CSE-2204', 'Software Development Sessional-II', '3', '1.5', 'Second', 'Second', 1),
(32, 'CSE-2205', 'Discrete Mathematics', '3', '3.00', 'Second', 'Second', 1),
(33, 'Math-2231', 'Matematics-V', '3', '3.00', 'Second', 'Second', 1),
(34, 'Hum-2241', 'Economics', '1.5', '1.5', 'Second', 'Second', 1),
(35, 'CSE-2301', 'Microprocessors and Microcomputers', '3', '3.00', 'Third', 'Second', 1),
(36, 'CSE-2302', 'Microprocessors and Microcomputers Sessional', '3', '1.5', 'Third', 'Second', 1),
(37, 'CSE-2303', 'Numerical Analysis', '3', '3.00', 'Third', 'Second', 1),
(38, 'CSE-2304', 'Numerical Analysis Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(39, 'EEE-2321', 'Electrical Technology', '1.5', '1.5', 'Third', 'Second', 1),
(40, 'EEE-2322', 'Electrical Technology Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(41, 'Hum-2341', 'Psychology', '1.5', '1.5', 'Third', 'Second', 1),
(42, 'CSE-3101', 'Applied Probability and Queuing Theory', '3', '3.00', 'Frist', 'Third', 1),
(43, 'CSE-3104', 'Internet Programming Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(44, 'CSE-3106', 'Software Development Sessional III', '3', '1.5', 'Frist', 'Third', 1),
(45, 'CSE-3107', 'Database Systems', '3', '3.00', 'Frist', 'Third', 1),
(46, 'CSE-3108', 'Database Systems Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(47, 'EEE-3121', 'Digital Electronics and Pulse Techniques', '3', '3.00', 'Frist', 'Third', 1),
(48, 'EEE-3122', 'Digital Electronic and Pulse Techniques Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(49, 'Hum-3141', 'Accounting', '1.5', '1.5', 'Frist', 'Third', 1),
(50, 'CSE-3201', 'Artificial Intelligence and Expert System', '3', '3.00', 'Second', 'Third', 1),
(51, 'CSE-3202', 'Artificial Intelligence and Expert System Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(52, 'CSE-3203', 'Software Engineering', '3', '3.00', 'Second', 'Third', 1),
(53, 'CSE-3204', 'Software Engineering Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(54, 'CSE-3205', 'Computer Networks', '3', '3.00', 'Second', 'Third', 1),
(55, 'CSE-3206', 'Computer Network Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(56, 'Hum-3241', 'Industrial Management and Law', '1.5', '1.5', 'Second', 'Third', 1),
(57, 'CSE-3301 ', 'System Programming and Operating System', '3', '3.00', 'Third', 'Third', 1),
(58, 'CSE-3302 ', 'System Programming and Operating System Sessional', '1.5', '0.75', 'Third', 'Third', 1),
(59, 'CSE-3303', 'Computational Geomatry', '3', '3.00', 'Third', 'Third', 1),
(60, 'CSE-3305', 'Computer Architecture', '3', '3.00', 'Third', 'Third', 1),
(61, 'EEE-3321', 'Data Communication', '3', '3.00', 'Third', 'Third', 1),
(62, 'CSE-4101', 'Neural Netword and Fuzzy System', '3', '3.00', 'Frist', 'Forth', 1),
(63, 'CSE-4102', 'Neural Netword and Fuzzy System Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(64, 'CSE-4103', 'Compiler Design', '3', '3.00', 'Frist', 'Forth', 1),
(65, 'CSE-4104', 'Compiler Design Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(66, 'CSE-4105', 'Parallel and Distribuled Processing', '3', '3.00', 'Frist', 'Forth', 1),
(67, 'EEE-4121', 'Electrical Measurement and Instrumentation', '3', '3.00', 'Frist', 'Forth', 1),
(68, 'EEE-4122', 'Electrical Measurement and Instrumentation Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(69, 'CSE-4201', 'Information System Analysis and Design', '3', '3.00', 'Second', 'Forth', 1),
(70, 'CSE-4203', 'Advance Computer Architecture', '3', '3.00', 'Second', 'Forth', 1),
(71, 'CSE-4205', 'Degital System Design', '3', '3.00', 'Second', 'Forth', 1),
(72, 'CSE-4200', 'Research Project', '3', '1.5', 'Second', 'Forth', 1),
(73, 'EEE-4221', 'VLSI Design', '3', '3.00', 'Second', 'Forth', 1),
(74, 'CSE-4301', 'Computer Graphics and Pattern Recognition', '3', '3.00', 'Third', 'Forth', 1),
(75, 'CSE-4302', 'Computer Graphics and Pattern Recognition Sessional', '1.5', '0.75', 'Third', 'Forth', 1),
(76, 'CSE-4303', 'Robotics and Computer Vision', '3', '3.00', 'Third', 'Forth', 1),
(77, 'CSE-4305', 'Information Security and Control', '1.5', '1.5', 'Third', 'Forth', 1),
(78, 'CSE-4300', 'Project and Thesis II', '3', '1.5', 'Third', 'Forth', 1),
(79, 'CSE-4320', 'Industrial Training', '3', '3.00', 'Third', 'Forth', 1),
(80, 'CSE-4307', 'Human Computer Interaction', '3', '3.00', 'Third', 'Forth', 1),
(81, 'EEE-1101', 'Electrical Circuit-1', '3', '3.00', 'First', 'First', 2),
(82, 'EEE-1102', 'Electrical Circuit-1 Sessional', '3', '1.5', 'First', 'First', 2),
(83, 'Math-1131', 'Engineering Mathematics-1', '3', '3.00', 'First', 'First', 2),
(84, 'Phy-1133', 'Physics-1', '3', '3.00', 'First', 'First', 2),
(85, 'Phy-1134', 'Physics-1 Sessional', '1.5', '0.75', 'First', 'First', 2),
(86, 'EEE-1201', 'Electrical Circuit-2', '3', '3.00', 'Second', 'First', 2),
(87, 'EEE-1202', 'Electrical Circuit-2 Sessional', '1.5', '0.75', 'Second', 'First', 2),
(88, 'CSE-1221', 'Computer Programming', '3', '3.00', 'Second', 'First', 2),
(89, 'CSE-1222', 'Computer Programming Sessional', '1.5', '0.75', 'Second', 'First', 2),
(90, 'Math-1231', 'Engineering Mathematics-2', '3', '3.00', 'Second', 'First', 2),
(91, 'Hum-1241', 'Funtion English & Sociology', '3', '3.00', 'Second', 'First', 2),
(92, 'EEE-1301', 'Basic Electrical & Electronics design Engineering', '3', '3.00', 'Third', 'First', 2),
(93, 'EEE-1302', 'Basic Electrical & Electronics design Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(94, 'ME-1321', 'Basic Mechanical Basic Engineering', '3', '3.00', 'Third', 'First', 2),
(95, 'ME-1322', 'Basic Mechanical Basic Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(96, 'Math-1331', 'Engineering Mathematics-III', '3', '3.00', 'Third', 'First', 2),
(97, 'Chem-1335', 'Chemistry-1', '3', '3.00', 'Third', 'First', 2),
(98, 'Chem-1336', 'Chemistry-1 Sessional', '1.5', '0.75', 'Third', 'First', 2),
(99, 'EEE-2101', 'Electrical Machines-1', '3', '3.00', 'Frist', 'Second', 2),
(100, 'EEE-2102', 'Electrical Machines-1 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(101, 'Math-2131', 'Engineering Mathematics-4', '3', '3.00', 'Frist', 'Second', 2),
(102, 'Phy-2133', 'Physics-2', '3', '3.00', 'Frist', 'Second', 2),
(103, 'Phy-2134', 'Physics-2 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(104, 'Chem-2335', 'Chemistry-II', '3', '3.00', 'Frist', 'Second', 2),
(105, 'Chem-2336', 'Chemistry-II Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(106, 'EEE-2201', 'Electrical Machines-II', '3', '3.00', 'Second', 'Second', 2),
(107, 'EEE-2202', 'Electrical Machines-II Sessional', '1.5', '0.75', 'Second', 'Second', 2),
(108, 'Math-2231', 'Engineering Mathematics-V', '3', '3.00', 'Second', 'Second', 2),
(109, 'Phy-2233', 'Physics-III', '3', '3.00', 'Second', 'Second', 2),
(110, 'Phy-2234', 'Physics-III Sessional', '3', '0.75', 'Second', 'Second', 2),
(111, 'EEE-2301', 'Electrical Device and Circuit-I', '3', '3.00', 'Third', 'Second', 2),
(112, 'EEE-2302', 'Electrical Device and Circuit-I Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(113, 'EEE-2303', 'Transmission and Disttribution of Electrical Power', '3', '3.00', 'Third', 'Second', 2),
(114, 'CE-2321', 'Mechanics of Solids', '3', '3.00', 'Third', 'Second', 2),
(115, 'CE-2322', 'Mechanics of Solids Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(116, 'Math-2331', 'Engineering Mathematics-VI', '3', '3.00', 'Third', 'Second', 2),
(117, 'EEE-3101', 'Electric device and circuits-II', '3', '3.00', 'Frist', 'Third', 2),
(118, 'EEE-3102', 'Electric device and circuits-II Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(119, 'EEE-3103', 'Electrical & Electronic Measurements', '3', '3.00', 'Frist', 'Third', 2),
(120, 'EEE-3104', 'Electrical & Electronic Measurements Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(121, 'EEE-3105', 'Telecommunications-I', '3', '3.00', 'Frist', 'Third', 2),
(122, 'EEE-3106', 'Telecommunications-I Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(123, 'CSE-3121', 'Programing Techniques & Numerical Analysis', '3', '3.00', 'Frist', 'Third', 2),
(124, 'EEE-3201', 'Electric device and circuits-III', '3', '3.00', 'Second', 'Third', 2),
(125, 'EEE-3202', 'Electric device and circuits-III Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(126, 'EEE-3203', 'Digital Electronics', '3', '3.00', 'Second', 'Third', 2),
(127, 'EEE-3204', 'Digital Electronics Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(128, 'HUM-3241', 'Industrial Management', '3', '3.00', 'Second', 'Third', 2),
(129, 'EEE-3301', 'Micropricessor & Microcomputer', '3', '3.00', 'Third', 'Third', 2),
(130, 'EEE-3302', 'Micropricessor & Microcomputer Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(131, 'EEE-3304', 'Software Development Sessional', '3', '1.50', 'Third', 'Third', 2),
(132, 'EEE-3305', 'Telecommunications-II', '3', '3.00', 'Third', 'Third', 2),
(133, 'EEE-3306', 'Telecommunications-II Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(134, 'EEE-3307', 'Electromagnetic waves and Fild', '3', '3.00', 'Third', 'Third', 2),
(135, 'Hum-3341', 'Socioeconomic and Environmental Engineering Projects sociology', '3', '3.00', 'Third', 'Third', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dep_table`
--

CREATE TABLE `dep_table` (
  `no` int(11) NOT NULL,
  `dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep_table`
--

INSERT INTO `dep_table` (`no`, `dep`) VALUES
(4, 'BBA'),
(6, 'Chemistry'),
(1, 'CSE'),
(3, 'Cvil'),
(2, 'EEE'),
(8, 'Hum'),
(5, 'Math'),
(7, 'ME'),
(9, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `nwu_data`
--

CREATE TABLE `nwu_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nwu_data`
--

INSERT INTO `nwu_data` (`id`, `data`) VALUES
(1, 'A University needs to be a centre of excellence for pursuit of knowledge and the highest seat of learning, research and intellectual development for any nation. To keep pace with the fast advancing world and to face the challenges of a new millennium, especially in this age of globalization ,a university plays the most important role by nourishing lofty ideals, reflecting ethical values, upholding culture and heritage and producing high quality intellectuals and human resources and skilled manpower who will be professionally sound and morally upright. North Western University will also endeavour to perform these functions by exploring and exposing the potentialities of learners.\r\n\r\nNorth Western University, the first ever full-fledged private University in Khulna, approved by the Government and the Bangladesh University Grants Commission, has come into existence under the auspices of a galaxy of distinguished and enthusiastic benevolent souls who profess genuine love for higher education. The noble objective of these people provides ample opportunities of learning to students both from urban and rural areas in the country at affordable expenses. The University has introduced need-oriented academic Programs keeping in view, the demand for trained manpower to be equipped with sound technological skills and devices within and outside the country. The University is determined to maintain a congenial and stimulating academic environment and keep the campus free from all such activities detrimental to the acquisition of knowledge and learning.\r\n\r\nLet us hope that with our concerted efforts, strong determination and close cooperation from everyone associate with this Alma Mater, we shall raise the University to international standard and reach it to the pinnacle of glory. Also, we believe this university will surely play a pioneering role in the private sector towards the extension of higher education in the country and advancement and progress of the nation as well.\r\n\r\nProfessor Dr. Tarapada Bhowmick\r\n\r\nVice-Chancellor\r\n\r\nNorth Western University\r\n\r\nKhulna'),
(2, 'North Western University, Khulna the first full-fledged private university in Khulna, Bangladesh was established on the 18th November, 2012. The University started Academic Activities from Spring Semester, 2013.\r\n\r\nThe Government of the People’s Republic of Bangladesh approved the establishment of North Western University under Private University Act. 2010.\r\n\r\nThe University started its activities with 4 Faculties, 12 Departments, 67 full time teachers, 61 part time teachers and 489 students. At present the University consists of 4 Faculties, 14 Departments. The number of students and teachers have risen to about 3400 and 140 respectively.\r\n\r\nThe first fresh admission classes had 489 students enrolled in 12 Departments: Business Administration 62 students, BA Hons in English 9 students, MA in English 5 students, LLB 10 students, MBA-1 Year 27 students, EMBA 31 students, MBA-2 Year 11 students, MDS 7 students, Computer Science & Engineering 92 students, Electrical & Electronic Engineering 150 students, Civil Engineering 84 students.\r\n\r\nThe main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students. Since its inception the University has a distinct character of having distinguished scholars as faculties who have enriched the global pool of knowledge by making notable contributions in the fields of teaching and research.\r\n\r\nThe high standard of education and research for the University was set by its Vice-Chancellor, Prof. Dr. Khondoker Bazlul Hoque.\r\n\r\nAccording to the provision of the Private University Act-2010, Talukder Abdul Khaleque is the current Chairman of the Board of Trustees, North Western University and North Western University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman.\r\n\r\nThe Vice-Chancellor, as the chief executive and academic officer runs the university with the cooperation of the statutory bodies operating under the provision of the Private University Act. 2010. The Registrar maintains the university records including admissions, keeps liaison with Ministry of Education, University Grants Commission (UGC) and other relevant authorities. The Controller of Examinations deals with all functions relating to preservation of records of Examinations, preparation and publication of results, processing confidential papers etc.\r\n\r\nNWU has the authority, under its Charter, to impart education and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering and law. Currently, NWU offers Bachelor’s and Master’s degrees in 16 subjects (10 Bachelor’s degrees and 6 Master’s degrees).\r\n\r\nThe university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs of the country.\r\n\r\nProf. Dr. Khondoker Bazlul Hoque, Vice-Chancellor (honourary) is providing leadership in improving, expanding and diversifying various academic programs. NWU now has 76 (fulltime) faculty members. All faculty members have higher degrees from reputed domestic and foreign universities.\r\n\r\nNorth Western University is dedicated to the advancement of learning, and is committed to promoting research in all fields of knowledge. As there are plans for further expansion of facilities, plans for new avenues and opportunities, the course curricula are updated and new research projects are undertaken every year. As the pioneer and the highest seat of learning in the country, the University has taken the task of fostering the transformation processes of the individual students and the country as a whole through its educational and research facilities keeping pace with the demands of the day.'),
(3, '1. Talukder Abdul Khaleque (Chairman & Trustee)\r\n\r\n2. S. M. Kamal Hossain (Vice Chairman & Trustee)\r\n\r\n3. M. Abdur Razzaque (Trustee)\r\n\r\n4. Syeda Lutfa Huq (Trustee)\r\n\r\n5. Nahid Newazi (Trustee)\r\n\r\n6. Syed Mohammed Obaidullah (Trustee)\r\n\r\n7. Prof. Dr. Mohammed Sirajul Huq Chowdhury(Trustee)\r\n\r\n8. Shahabuddin Ahmed (Trustee)\r\n\r\n9. Md. Towhidul Islam Azad (Trustee)\r\n\r\n10. Prof. Dr. Khondoker Bazlul Hoque (Trustee)\r\n\r\n11. Habibunnahar (Trustee)\r\n\r\n12. Mujibor Rahman Shamim (Trustee)\r\n\r\n13. Shabana Shaheen (Trustee)\r\n\r\n14. Morjina Islam (Trustee)\r\n\r\n15. Nurani Akther (Trustee)\r\n\r\n16. Pabitra Kumar Sarkar (Trustee)\r\n\r\n17. Saeir J. Sattar (Trustee)\r\n\r\n18. Dr. Md. Rezaul Alam (Secretary & Trustee)'),
(4, 'To develop, maintain, and sustain an overall knowledge of the university’s core research areas of interest and competence. Over a period time, these core areas should be expanded to include new areas reflecting the nature of growth of the university. Conduct regular periodic meetings with aspiring faculty members/researchers of all academic areas and maintain regular interaction with them to assist them in developing their own research programs. Supervise a reviewing committee entrusted with annually/semi annually reviewing research proposals submitted for funding from university fund allocated exclusively for research. This task will focus intensely on identifying worthwhile, knowledge enhancing projects which will most likely make a significant contribution in the specific area of interest. Develop, maintain and strengthen association of all well-recognized national academic association of repute and participate in all seminars, workshops, conferences sponsored by similar organizations. Nominate appropriate faculty members to participate in such seminars in order to increase the visibility of southeast university.');

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_table`
--

CREATE TABLE `student_mark_table` (
  `studentMarkId` int(11) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `techerCourseId` int(11) NOT NULL,
  `ct1` float NOT NULL DEFAULT '0',
  `ct2` float NOT NULL DEFAULT '0',
  `ct3` float NOT NULL DEFAULT '0',
  `totalCt` float NOT NULL DEFAULT '0',
  `present` float NOT NULL DEFAULT '0',
  `assignment` float NOT NULL DEFAULT '0',
  `final` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_mark_table`
--

INSERT INTO `student_mark_table` (`studentMarkId`, `id`, `techerCourseId`, `ct1`, `ct2`, `ct3`, `totalCt`, `present`, `assignment`, `final`, `total`) VALUES
(1, '20151006010', 1, 1, 1, 1, 1, 10, 1, 55, 67),
(2, '20151006010', 2, 15, 20, 4, 17.5, 10, 10, 55, 92.5),
(3, '20151005010', 1, 0, 1, 0, 1, 0, 0, 55, 56),
(4, '20151005010', 2, 15, 20, 0, 17.5, 10, 10, 60, 97.5);

-- --------------------------------------------------------

--
-- Table structure for table `techer_course_table`
--

CREATE TABLE `techer_course_table` (
  `techerCourseId` int(10) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `courseId` int(10) NOT NULL,
  `ctNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techer_course_table`
--

INSERT INTO `techer_course_table` (`techerCourseId`, `id`, `exam`, `courseId`, `ctNo`, `ctType`) VALUES
(1, '20121001', 'Summer-2017', 2, '2', 'BestOne'),
(2, '20121001', 'Summer-2017', 3, '2', 'BestTwo');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`no`, `type`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`name`, `id`, `password`, `email`, `dep`, `session`, `type`, `gender`, `mobile`, `birth`, `adress`, `location`, `longitude`, `latitude`) VALUES
('Injamamul huqe', '20121001', '20121001', 'Injamamul@gmail.com', 1, 'Spring-2012', 1, 'Male', '01789456133', '1986-02-04', 'Khalishpur Jute Mill, Khulna, BIDC Road, Khulna, Khulna Division, Bangladesh', 'BIDC Rd, Khulna 9000, Bangladesh', '89.54085550000002', '22.8623939'),
('Nagib Mahafug', '20131003', '1003', 'Nagib@gmail.com', 1, 'Spring-2013', 1, 'Male', '01589456133', '9-5-16', 'Helani Place, Hilo, HI, United States', 'Helani Pl, Hilo, HI 96720, USA', '-155.11099760000002', '19.7014473'),
('Asif Al Jun', '20141002', '1002', 'Asif@gmail.com', 1, 'Spring-2014', 1, 'Male', '01689456133', '', '', '', '', ''),
('Nazmul Hohain', '20142001', '2001', 'Nazmul@gmail.com', 2, 'Spring-2014', 1, 'Male', '01989456133', '', '', '', '', ''),
('Abul Kalam', '20142003', '2003', 'Abul@gmail.com', 2, 'Spring-2014', 2, 'Male', '01789456133', '', '', '', '', ''),
('Tariqul Islam', '20151005010', '20151005010', 'Tariqul@gmail.com', 1, 'Spring-2015', 3, 'Male', '01889456133', '', '', '', '', ''),
('Riadulislam', '20151006010', '20151006010', 'riad@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '1996-03-06', 'Helani Tea Store, Kadarnath Road, Khulna, Bangladesh', 'Kadarnath Rd, Khulna, Bangladesh', '89.51448260000006', '22.8835517'),
('Tanvir islam', '20151036010', '20151036010', 'tanvir@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Pallab kumar', '20151043010', '20151043010', 'pallab@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Rasidul Islam', '20152002', '2002', 'Rasidul.com', 2, 'Spring-2015', 2, 'Male', '016894646133', '', '', '', '', ''),
('Tariqul Islam', '20152005010', '20152005010', 'Tariquasl@gmail.com', 2, 'Spring-2015', 3, 'Male', '01888456133', '', '', '', '', ''),
('Riadulislam', '20152006010', '20152006010', 'riadas@gmail.com', 2, 'Spring-2015', 3, 'Male', '019894556133', '', '', '', '', ''),
('Tanvir islam', '20152036010', '20152036010', 'tanviras@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989566133', '', '', '', '', ''),
('Pallab kumar', '20152043010', '20152043010', 'pallabas@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989276133', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `count1`
--
ALTER TABLE `count1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `count2`
--
ALTER TABLE `count2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `samester` (`samester`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `UQ_No_Dep` (`code`,`dep`),
  ADD KEY `dep` (`dep`);

--
-- Indexes for table `dep_table`
--
ALTER TABLE `dep_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `dep` (`dep`);

--
-- Indexes for table `nwu_data`
--
ALTER TABLE `nwu_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD PRIMARY KEY (`studentMarkId`),
  ADD UNIQUE KEY `UQ_Id` (`id`,`techerCourseId`),
  ADD KEY `techerCourseId` (`techerCourseId`);

--
-- Indexes for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD PRIMARY KEY (`techerCourseId`),
  ADD UNIQUE KEY `UQ_id_exam` (`id`,`exam`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `dep` (`dep`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  MODIFY `studentMarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  MODIFY `techerCourseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_table`
--
ALTER TABLE `course_table`
  ADD CONSTRAINT `course_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`);

--
-- Constraints for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD CONSTRAINT `student_mark_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `student_mark_table_ibfk_2` FOREIGN KEY (`techerCourseId`) REFERENCES `techer_course_table` (`techerCourseId`);

--
-- Constraints for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD CONSTRAINT `techer_course_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `techer_course_table_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course_table` (`courseId`);

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`),
  ADD CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_table` (`no`);
--
-- Database: `id1337164_nwu`
--
CREATE DATABASE IF NOT EXISTS `id1337164_nwu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1337164_nwu`;

-- --------------------------------------------------------

--
-- Table structure for table `count1`
--

CREATE TABLE `count1` (
  `id` int(11) NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count1`
--

INSERT INTO `count1` (`id`, `year`) VALUES
(1, 'First'),
(4, 'Forth'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `count2`
--

CREATE TABLE `count2` (
  `id` int(11) NOT NULL,
  `samester` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count2`
--

INSERT INTO `count2` (`id`, `samester`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `courseId` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `houre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creadit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `samester` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`courseId`, `code`, `titel`, `houre`, `creadit`, `samester`, `year`, `dep`) VALUES
(2, 'CSE-1101', 'Computer Basic and Programming', '3', '3.00', 'First', 'First', 1),
(3, 'CSE-1102', 'Computer Basic and Programming Sessional', '3', '1.50', 'First', 'First', 1),
(4, 'Hum-1141', 'English and Human Communication', '1.5', '1.5', 'First', 'First', 1),
(5, 'Math-1131', 'Mathematics I', '3', '3.00', 'First', 'First', 1),
(6, 'Phy-1133', 'Physics I', '3', '3.00', 'First', 'First', 1),
(7, 'Phy-1134', 'Physics Sessional I', '1.5', '0.75', 'First', 'First', 1),
(8, 'CSE-1201', 'Object Oriented Programming', '3', '3.00', 'Second', 'First', 1),
(9, 'CSE-1202', 'Object Oriented Programming Sessional', '1.5', '0.75', 'Second', 'First', 1),
(10, 'CSE-1204', 'Softwarw Development Sessional-I', '3', '1.5', 'Second', 'First', 1),
(11, 'EEE-1221', 'Electrical Circuits', '1.5', '1.5', 'Second', 'First', 1),
(12, 'EEE-1222', 'Electrical Circuits Sessional', '1.5', '0.75', 'Second', 'First', 1),
(13, 'ME-1223', 'Mechanicalcs and Heat Engineering', '1.5', '1.5', 'Second', 'First', 1),
(14, 'ME-1224', 'Engineering Drawing CAD Sessional', '1.5', '0.75', 'Second', 'First', 1),
(15, 'Math-1231', 'Mathematics-II', '3', '3.00', 'Second', 'First', 1),
(16, 'CSE-1301', 'Digital Logic Design', '3', '3.00', 'Third', 'First', 1),
(17, 'CSE-1302', 'Digital Logic Design Sessional', '1.5', '0.75', 'Third', 'First', 1),
(18, 'Math-1331', 'Mathematics-III', '3', '3.00', 'Third', 'First', 1),
(19, 'Phy-1333', 'Physics-II', '3', '3.00', 'Third', 'First', 1),
(20, 'Phy-1334', 'Physics-II Sessional', '1.5', '0.75', 'Third', 'First', 1),
(21, 'Chem-1335', 'Chemistry', '3', '3.00', 'Third', 'First', 1),
(22, 'Chem-1336', 'Chemistry Sessional', '1.5', '0.75', 'Third', 'First', 1),
(23, 'CSE-2101', 'Data Structures', '3', '3.00', 'Frist', 'Second', 1),
(24, 'CSE-2102', 'Data Structures Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(25, 'EEE-2121', 'Electronics and Circuits', '3', '3.00', 'Frist', 'Second', 1),
(26, 'EEE-2122', 'Electronics and Circuits Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(27, 'Math-2131', 'Mathematics-IV', '3', '3.00', 'Frist', 'Second', 1),
(28, 'Hum-2141', 'Government and Sociology', '1.5', '1.5', 'Frist', 'Second', 1),
(29, 'CSE-2201', 'Algorithms', '3', '3.00', 'Second', 'Second', 1),
(30, 'CSE-2202', 'Algorithms Sessional', '3', '1.5', 'Second', 'Second', 1),
(31, 'CSE-2204', 'Software Development Sessional-II', '3', '1.5', 'Second', 'Second', 1),
(32, 'CSE-2205', 'Discrete Mathematics', '3', '3.00', 'Second', 'Second', 1),
(33, 'Math-2231', 'Matematics-V', '3', '3.00', 'Second', 'Second', 1),
(34, 'Hum-2241', 'Economics', '1.5', '1.5', 'Second', 'Second', 1),
(35, 'CSE-2301', 'Microprocessors and Microcomputers', '3', '3.00', 'Third', 'Second', 1),
(36, 'CSE-2302', 'Microprocessors and Microcomputers Sessional', '3', '1.5', 'Third', 'Second', 1),
(37, 'CSE-2303', 'Numerical Analysis', '3', '3.00', 'Third', 'Second', 1),
(38, 'CSE-2304', 'Numerical Analysis Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(39, 'EEE-2321', 'Electrical Technology', '1.5', '1.5', 'Third', 'Second', 1),
(40, 'EEE-2322', 'Electrical Technology Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(41, 'Hum-2341', 'Psychology', '1.5', '1.5', 'Third', 'Second', 1),
(42, 'CSE-3101', 'Applied Probability and Queuing Theory', '3', '3.00', 'Frist', 'Third', 1),
(43, 'CSE-3104', 'Internet Programming Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(44, 'CSE-3106', 'Software Development Sessional III', '3', '1.5', 'Frist', 'Third', 1),
(45, 'CSE-3107', 'Database Systems', '3', '3.00', 'Frist', 'Third', 1),
(46, 'CSE-3108', 'Database Systems Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(47, 'EEE-3121', 'Digital Electronics and Pulse Techniques', '3', '3.00', 'Frist', 'Third', 1),
(48, 'EEE-3122', 'Digital Electronic and Pulse Techniques Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(49, 'Hum-3141', 'Accounting', '1.5', '1.5', 'Frist', 'Third', 1),
(50, 'CSE-3201', 'Artificial Intelligence and Expert System', '3', '3.00', 'Second', 'Third', 1),
(51, 'CSE-3202', 'Artificial Intelligence and Expert System Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(52, 'CSE-3203', 'Software Engineering', '3', '3.00', 'Second', 'Third', 1),
(53, 'CSE-3204', 'Software Engineering Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(54, 'CSE-3205', 'Computer Networks', '3', '3.00', 'Second', 'Third', 1),
(55, 'CSE-3206', 'Computer Network Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(56, 'Hum-3241', 'Industrial Management and Law', '1.5', '1.5', 'Second', 'Third', 1),
(57, 'CSE-3301 ', 'System Programming and Operating System', '3', '3.00', 'Third', 'Third', 1),
(58, 'CSE-3302 ', 'System Programming and Operating System Sessional', '1.5', '0.75', 'Third', 'Third', 1),
(59, 'CSE-3303', 'Computational Geomatry', '3', '3.00', 'Third', 'Third', 1),
(60, 'CSE-3305', 'Computer Architecture', '3', '3.00', 'Third', 'Third', 1),
(61, 'EEE-3321', 'Data Communication', '3', '3.00', 'Third', 'Third', 1),
(62, 'CSE-4101', 'Neural Netword and Fuzzy System', '3', '3.00', 'Frist', 'Forth', 1),
(63, 'CSE-4102', 'Neural Netword and Fuzzy System Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(64, 'CSE-4103', 'Compiler Design', '3', '3.00', 'Frist', 'Forth', 1),
(65, 'CSE-4104', 'Compiler Design Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(66, 'CSE-4105', 'Parallel and Distribuled Processing', '3', '3.00', 'Frist', 'Forth', 1),
(67, 'EEE-4121', 'Electrical Measurement and Instrumentation', '3', '3.00', 'Frist', 'Forth', 1),
(68, 'EEE-4122', 'Electrical Measurement and Instrumentation Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(69, 'CSE-4201', 'Information System Analysis and Design', '3', '3.00', 'Second', 'Forth', 1),
(70, 'CSE-4203', 'Advance Computer Architecture', '3', '3.00', 'Second', 'Forth', 1),
(71, 'CSE-4205', 'Degital System Design', '3', '3.00', 'Second', 'Forth', 1),
(72, 'CSE-4200', 'Research Project', '3', '1.5', 'Second', 'Forth', 1),
(73, 'EEE-4221', 'VLSI Design', '3', '3.00', 'Second', 'Forth', 1),
(74, 'CSE-4301', 'Computer Graphics and Pattern Recognition', '3', '3.00', 'Third', 'Forth', 1),
(75, 'CSE-4302', 'Computer Graphics and Pattern Recognition Sessional', '1.5', '0.75', 'Third', 'Forth', 1),
(76, 'CSE-4303', 'Robotics and Computer Vision', '3', '3.00', 'Third', 'Forth', 1),
(77, 'CSE-4305', 'Information Security and Control', '1.5', '1.5', 'Third', 'Forth', 1),
(78, 'CSE-4300', 'Project and Thesis II', '3', '1.5', 'Third', 'Forth', 1),
(79, 'CSE-4320', 'Industrial Training', '3', '3.00', 'Third', 'Forth', 1),
(80, 'CSE-4307', 'Human Computer Interaction', '3', '3.00', 'Third', 'Forth', 1),
(81, 'EEE-1101', 'Electrical Circuit-1', '3', '3.00', 'First', 'First', 2),
(82, 'EEE-1102', 'Electrical Circuit-1 Sessional', '3', '1.5', 'First', 'First', 2),
(83, 'Math-1131', 'Engineering Mathematics-1', '3', '3.00', 'First', 'First', 2),
(84, 'Phy-1133', 'Physics-1', '3', '3.00', 'First', 'First', 2),
(85, 'Phy-1134', 'Physics-1 Sessional', '1.5', '0.75', 'First', 'First', 2),
(86, 'EEE-1201', 'Electrical Circuit-2', '3', '3.00', 'Second', 'First', 2),
(87, 'EEE-1202', 'Electrical Circuit-2 Sessional', '1.5', '0.75', 'Second', 'First', 2),
(88, 'CSE-1221', 'Computer Programming', '3', '3.00', 'Second', 'First', 2),
(89, 'CSE-1222', 'Computer Programming Sessional', '1.5', '0.75', 'Second', 'First', 2),
(90, 'Math-1231', 'Engineering Mathematics-2', '3', '3.00', 'Second', 'First', 2),
(91, 'Hum-1241', 'Funtion English & Sociology', '3', '3.00', 'Second', 'First', 2),
(92, 'EEE-1301', 'Basic Electrical & Electronics design Engineering', '3', '3.00', 'Third', 'First', 2),
(93, 'EEE-1302', 'Basic Electrical & Electronics design Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(94, 'ME-1321', 'Basic Mechanical Basic Engineering', '3', '3.00', 'Third', 'First', 2),
(95, 'ME-1322', 'Basic Mechanical Basic Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(96, 'Math-1331', 'Engineering Mathematics-III', '3', '3.00', 'Third', 'First', 2),
(97, 'Chem-1335', 'Chemistry-1', '3', '3.00', 'Third', 'First', 2),
(98, 'Chem-1336', 'Chemistry-1 Sessional', '1.5', '0.75', 'Third', 'First', 2),
(99, 'EEE-2101', 'Electrical Machines-1', '3', '3.00', 'Frist', 'Second', 2),
(100, 'EEE-2102', 'Electrical Machines-1 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(101, 'Math-2131', 'Engineering Mathematics-4', '3', '3.00', 'Frist', 'Second', 2),
(102, 'Phy-2133', 'Physics-2', '3', '3.00', 'Frist', 'Second', 2),
(103, 'Phy-2134', 'Physics-2 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(104, 'Chem-2335', 'Chemistry-II', '3', '3.00', 'Frist', 'Second', 2),
(105, 'Chem-2336', 'Chemistry-II Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(106, 'EEE-2201', 'Electrical Machines-II', '3', '3.00', 'Second', 'Second', 2),
(107, 'EEE-2202', 'Electrical Machines-II Sessional', '1.5', '0.75', 'Second', 'Second', 2),
(108, 'Math-2231', 'Engineering Mathematics-V', '3', '3.00', 'Second', 'Second', 2),
(109, 'Phy-2233', 'Physics-III', '3', '3.00', 'Second', 'Second', 2),
(110, 'Phy-2234', 'Physics-III Sessional', '3', '0.75', 'Second', 'Second', 2),
(111, 'EEE-2301', 'Electrical Device and Circuit-I', '3', '3.00', 'Third', 'Second', 2),
(112, 'EEE-2302', 'Electrical Device and Circuit-I Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(113, 'EEE-2303', 'Transmission and Disttribution of Electrical Power', '3', '3.00', 'Third', 'Second', 2),
(114, 'CE-2321', 'Mechanics of Solids', '3', '3.00', 'Third', 'Second', 2),
(115, 'CE-2322', 'Mechanics of Solids Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(116, 'Math-2331', 'Engineering Mathematics-VI', '3', '3.00', 'Third', 'Second', 2),
(117, 'EEE-3101', 'Electric device and circuits-II', '3', '3.00', 'Frist', 'Third', 2),
(118, 'EEE-3102', 'Electric device and circuits-II Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(119, 'EEE-3103', 'Electrical & Electronic Measurements', '3', '3.00', 'Frist', 'Third', 2),
(120, 'EEE-3104', 'Electrical & Electronic Measurements Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(121, 'EEE-3105', 'Telecommunications-I', '3', '3.00', 'Frist', 'Third', 2),
(122, 'EEE-3106', 'Telecommunications-I Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(123, 'CSE-3121', 'Programing Techniques & Numerical Analysis', '3', '3.00', 'Frist', 'Third', 2),
(124, 'EEE-3201', 'Electric device and circuits-III', '3', '3.00', 'Second', 'Third', 2),
(125, 'EEE-3202', 'Electric device and circuits-III Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(126, 'EEE-3203', 'Digital Electronics', '3', '3.00', 'Second', 'Third', 2),
(127, 'EEE-3204', 'Digital Electronics Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(128, 'HUM-3241', 'Industrial Management', '3', '3.00', 'Second', 'Third', 2),
(129, 'EEE-3301', 'Micropricessor & Microcomputer', '3', '3.00', 'Third', 'Third', 2),
(130, 'EEE-3302', 'Micropricessor & Microcomputer Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(131, 'EEE-3304', 'Software Development Sessional', '3', '1.50', 'Third', 'Third', 2),
(132, 'EEE-3305', 'Telecommunications-II', '3', '3.00', 'Third', 'Third', 2),
(133, 'EEE-3306', 'Telecommunications-II Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(134, 'EEE-3307', 'Electromagnetic waves and Fild', '3', '3.00', 'Third', 'Third', 2),
(135, 'Hum-3341', 'Socioeconomic and Environmental Engineering Projects sociology', '3', '3.00', 'Third', 'Third', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dep_table`
--

CREATE TABLE `dep_table` (
  `no` int(11) NOT NULL,
  `dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep_table`
--

INSERT INTO `dep_table` (`no`, `dep`) VALUES
(4, 'BBA'),
(6, 'Chemistry'),
(1, 'CSE'),
(3, 'Cvil'),
(2, 'EEE'),
(8, 'Hum'),
(5, 'Math'),
(7, 'ME'),
(9, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `nwu_data`
--

CREATE TABLE `nwu_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nwu_data`
--

INSERT INTO `nwu_data` (`id`, `data`) VALUES
(1, 'A University needs to be a centre of excellence for pursuit of knowledge and the highest seat of learning, research and intellectual development for any nation. To keep pace with the fast advancing world and to face the challenges of a new millennium, especially in this age of globalization ,a university plays the most important role by nourishing lofty ideals, reflecting ethical values, upholding culture and heritage and producing high quality intellectuals and human resources and skilled manpower who will be professionally sound and morally upright. North Western University will also endeavour to perform these functions by exploring and exposing the potentialities of learners.\r\n\r\nNorth Western University, the first ever full-fledged private University in Khulna, approved by the Government and the Bangladesh University Grants Commission, has come into existence under the auspices of a galaxy of distinguished and enthusiastic benevolent souls who profess genuine love for higher education. The noble objective of these people provides ample opportunities of learning to students both from urban and rural areas in the country at affordable expenses. The University has introduced need-oriented academic Programs keeping in view, the demand for trained manpower to be equipped with sound technological skills and devices within and outside the country. The University is determined to maintain a congenial and stimulating academic environment and keep the campus free from all such activities detrimental to the acquisition of knowledge and learning.\r\n\r\nLet us hope that with our concerted efforts, strong determination and close cooperation from everyone associate with this Alma Mater, we shall raise the University to international standard and reach it to the pinnacle of glory. Also, we believe this university will surely play a pioneering role in the private sector towards the extension of higher education in the country and advancement and progress of the nation as well.\r\n\r\nProfessor Dr. Tarapada Bhowmick\r\n\r\nVice-Chancellor\r\n\r\nNorth Western University\r\n\r\nKhulna'),
(2, 'North Western University, Khulna the first full-fledged private university in Khulna, Bangladesh was established on the 18th November, 2012. The University started Academic Activities from Spring Semester, 2013.\r\n\r\nThe Government of the People’s Republic of Bangladesh approved the establishment of North Western University under Private University Act. 2010.\r\n\r\nThe University started its activities with 4 Faculties, 12 Departments, 67 full time teachers, 61 part time teachers and 489 students. At present the University consists of 4 Faculties, 14 Departments. The number of students and teachers have risen to about 3400 and 140 respectively.\r\n\r\nThe first fresh admission classes had 489 students enrolled in 12 Departments: Business Administration 62 students, BA Hons in English 9 students, MA in English 5 students, LLB 10 students, MBA-1 Year 27 students, EMBA 31 students, MBA-2 Year 11 students, MDS 7 students, Computer Science & Engineering 92 students, Electrical & Electronic Engineering 150 students, Civil Engineering 84 students.\r\n\r\nThe main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students. Since its inception the University has a distinct character of having distinguished scholars as faculties who have enriched the global pool of knowledge by making notable contributions in the fields of teaching and research.\r\n\r\nThe high standard of education and research for the University was set by its Vice-Chancellor, Prof. Dr. Khondoker Bazlul Hoque.\r\n\r\nAccording to the provision of the Private University Act-2010, Talukder Abdul Khaleque is the current Chairman of the Board of Trustees, North Western University and North Western University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman.\r\n\r\nThe Vice-Chancellor, as the chief executive and academic officer runs the university with the cooperation of the statutory bodies operating under the provision of the Private University Act. 2010. The Registrar maintains the university records including admissions, keeps liaison with Ministry of Education, University Grants Commission (UGC) and other relevant authorities. The Controller of Examinations deals with all functions relating to preservation of records of Examinations, preparation and publication of results, processing confidential papers etc.\r\n\r\nNWU has the authority, under its Charter, to impart education and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering and law. Currently, NWU offers Bachelor’s and Master’s degrees in 16 subjects (10 Bachelor’s degrees and 6 Master’s degrees).\r\n\r\nThe university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs of the country.\r\n\r\nProf. Dr. Khondoker Bazlul Hoque, Vice-Chancellor (honourary) is providing leadership in improving, expanding and diversifying various academic programs. NWU now has 76 (fulltime) faculty members. All faculty members have higher degrees from reputed domestic and foreign universities.\r\n\r\nNorth Western University is dedicated to the advancement of learning, and is committed to promoting research in all fields of knowledge. As there are plans for further expansion of facilities, plans for new avenues and opportunities, the course curricula are updated and new research projects are undertaken every year. As the pioneer and the highest seat of learning in the country, the University has taken the task of fostering the transformation processes of the individual students and the country as a whole through its educational and research facilities keeping pace with the demands of the day.'),
(3, '1. Talukder Abdul Khaleque (Chairman & Trustee)\r\n\r\n2. S. M. Kamal Hossain (Vice Chairman & Trustee)\r\n\r\n3. M. Abdur Razzaque (Trustee)\r\n\r\n4. Syeda Lutfa Huq (Trustee)\r\n\r\n5. Nahid Newazi (Trustee)\r\n\r\n6. Syed Mohammed Obaidullah (Trustee)\r\n\r\n7. Prof. Dr. Mohammed Sirajul Huq Chowdhury(Trustee)\r\n\r\n8. Shahabuddin Ahmed (Trustee)\r\n\r\n9. Md. Towhidul Islam Azad (Trustee)\r\n\r\n10. Prof. Dr. Khondoker Bazlul Hoque (Trustee)\r\n\r\n11. Habibunnahar (Trustee)\r\n\r\n12. Mujibor Rahman Shamim (Trustee)\r\n\r\n13. Shabana Shaheen (Trustee)\r\n\r\n14. Morjina Islam (Trustee)\r\n\r\n15. Nurani Akther (Trustee)\r\n\r\n16. Pabitra Kumar Sarkar (Trustee)\r\n\r\n17. Saeir J. Sattar (Trustee)\r\n\r\n18. Dr. Md. Rezaul Alam (Secretary & Trustee)'),
(4, 'To develop, maintain, and sustain an overall knowledge of the university’s core research areas of interest and competence. Over a period time, these core areas should be expanded to include new areas reflecting the nature of growth of the university. Conduct regular periodic meetings with aspiring faculty members/researchers of all academic areas and maintain regular interaction with them to assist them in developing their own research programs. Supervise a reviewing committee entrusted with annually/semi annually reviewing research proposals submitted for funding from university fund allocated exclusively for research. This task will focus intensely on identifying worthwhile, knowledge enhancing projects which will most likely make a significant contribution in the specific area of interest. Develop, maintain and strengthen association of all well-recognized national academic association of repute and participate in all seminars, workshops, conferences sponsored by similar organizations. Nominate appropriate faculty members to participate in such seminars in order to increase the visibility of southeast university.');

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_table`
--

CREATE TABLE `student_mark_table` (
  `studentMarkId` int(11) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `techerCourseId` int(11) NOT NULL,
  `ct1` float NOT NULL DEFAULT '0',
  `ct2` float NOT NULL DEFAULT '0',
  `ct3` float NOT NULL DEFAULT '0',
  `totalCt` float NOT NULL DEFAULT '0',
  `present` float NOT NULL DEFAULT '0',
  `assignment` float NOT NULL DEFAULT '0',
  `final` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_mark_table`
--

INSERT INTO `student_mark_table` (`studentMarkId`, `id`, `techerCourseId`, `ct1`, `ct2`, `ct3`, `totalCt`, `present`, `assignment`, `final`, `total`) VALUES
(1, '20151006010', 1, 1, 1, 1, 1, 10, 1, 55, 67),
(2, '20151006010', 2, 15, 20, 4, 17.5, 10, 10, 55, 92.5),
(3, '20151005010', 1, 0, 1, 0, 1, 0, 0, 55, 56),
(4, '20151005010', 2, 15, 20, 0, 17.5, 10, 10, 60, 97.5);

-- --------------------------------------------------------

--
-- Table structure for table `techer_course_table`
--

CREATE TABLE `techer_course_table` (
  `techerCourseId` int(10) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `courseId` int(10) NOT NULL,
  `ctNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techer_course_table`
--

INSERT INTO `techer_course_table` (`techerCourseId`, `id`, `exam`, `courseId`, `ctNo`, `ctType`) VALUES
(1, '20121001', 'Summer-2017', 2, '2', 'BestOne'),
(2, '20121001', 'Summer-2017', 3, '2', 'BestTwo');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`no`, `type`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`name`, `id`, `password`, `email`, `dep`, `session`, `type`, `gender`, `mobile`, `birth`, `adress`, `location`, `longitude`, `latitude`) VALUES
('Injamamul huqe', '20121001', '20121001', 'Injamamul@gmail.com', 1, 'Spring-2012', 1, 'Male', '01789456133', '1986-02-04', 'Khalishpur Jute Mill, Khulna, BIDC Road, Khulna, Khulna Division, Bangladesh', 'BIDC Rd, Khulna 9000, Bangladesh', '89.54085550000002', '22.8623939'),
('Nagib Mahafug', '20131003', '1003', 'Nagib@gmail.com', 1, 'Spring-2013', 1, 'Male', '01589456133', '9-5-16', 'Helani Place, Hilo, HI, United States', 'Helani Pl, Hilo, HI 96720, USA', '-155.11099760000002', '19.7014473'),
('Asif Al Jun', '20141002', '1002', 'Asif@gmail.com', 1, 'Spring-2014', 1, 'Male', '01689456133', '', '', '', '', ''),
('Nazmul Hohain', '20142001', '2001', 'Nazmul@gmail.com', 2, 'Spring-2014', 1, 'Male', '01989456133', '', '', '', '', ''),
('Abul Kalam', '20142003', '2003', 'Abul@gmail.com', 2, 'Spring-2014', 2, 'Male', '01789456133', '', '', '', '', ''),
('Tariqul Islam', '20151005010', '20151005010', 'Tariqul@gmail.com', 1, 'Spring-2015', 3, 'Male', '01889456133', '', '', '', '', ''),
('Riadulislam', '20151006010', '20151006010', 'riad@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '1996-03-06', 'Helani Tea Store, Kadarnath Road, Khulna, Bangladesh', 'Kadarnath Rd, Khulna, Bangladesh', '89.51448260000006', '22.8835517'),
('Tanvir islam', '20151036010', '20151036010', 'tanvir@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Pallab kumar', '20151043010', '20151043010', 'pallab@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Rasidul Islam', '20152002', '2002', 'Rasidul.com', 2, 'Spring-2015', 2, 'Male', '016894646133', '', '', '', '', ''),
('Tariqul Islam', '20152005010', '20152005010', 'Tariquasl@gmail.com', 2, 'Spring-2015', 3, 'Male', '01888456133', '', '', '', '', ''),
('Riadulislam', '20152006010', '20152006010', 'riadas@gmail.com', 2, 'Spring-2015', 3, 'Male', '019894556133', '', '', '', '', ''),
('Tanvir islam', '20152036010', '20152036010', 'tanviras@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989566133', '', '', '', '', ''),
('Pallab kumar', '20152043010', '20152043010', 'pallabas@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989276133', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `count1`
--
ALTER TABLE `count1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `count2`
--
ALTER TABLE `count2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `samester` (`samester`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `UQ_No_Dep` (`code`,`dep`),
  ADD KEY `dep` (`dep`);

--
-- Indexes for table `dep_table`
--
ALTER TABLE `dep_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `dep` (`dep`);

--
-- Indexes for table `nwu_data`
--
ALTER TABLE `nwu_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD PRIMARY KEY (`studentMarkId`),
  ADD UNIQUE KEY `UQ_Id` (`id`,`techerCourseId`),
  ADD KEY `techerCourseId` (`techerCourseId`);

--
-- Indexes for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD PRIMARY KEY (`techerCourseId`),
  ADD UNIQUE KEY `UQ_id_exam` (`id`,`exam`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `dep` (`dep`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  MODIFY `studentMarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  MODIFY `techerCourseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_table`
--
ALTER TABLE `course_table`
  ADD CONSTRAINT `course_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`);

--
-- Constraints for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD CONSTRAINT `student_mark_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `student_mark_table_ibfk_2` FOREIGN KEY (`techerCourseId`) REFERENCES `techer_course_table` (`techerCourseId`);

--
-- Constraints for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD CONSTRAINT `techer_course_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `techer_course_table_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course_table` (`courseId`);

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`),
  ADD CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_table` (`no`);
--
-- Database: `id1337164_nwu`
--
CREATE DATABASE IF NOT EXISTS `id1337164_nwu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1337164_nwu`;

-- --------------------------------------------------------

--
-- Table structure for table `count1`
--

CREATE TABLE `count1` (
  `id` int(11) NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count1`
--

INSERT INTO `count1` (`id`, `year`) VALUES
(1, 'First'),
(4, 'Forth'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `count2`
--

CREATE TABLE `count2` (
  `id` int(11) NOT NULL,
  `samester` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count2`
--

INSERT INTO `count2` (`id`, `samester`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `courseId` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `houre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creadit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `samester` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`courseId`, `code`, `titel`, `houre`, `creadit`, `samester`, `year`, `dep`) VALUES
(2, 'CSE-1101', 'Computer Basic and Programming', '3', '3.00', 'First', 'First', 1),
(3, 'CSE-1102', 'Computer Basic and Programming Sessional', '3', '1.50', 'First', 'First', 1),
(4, 'Hum-1141', 'English and Human Communication', '1.5', '1.5', 'First', 'First', 1),
(5, 'Math-1131', 'Mathematics I', '3', '3.00', 'First', 'First', 1),
(6, 'Phy-1133', 'Physics I', '3', '3.00', 'First', 'First', 1),
(7, 'Phy-1134', 'Physics Sessional I', '1.5', '0.75', 'First', 'First', 1),
(8, 'CSE-1201', 'Object Oriented Programming', '3', '3.00', 'Second', 'First', 1),
(9, 'CSE-1202', 'Object Oriented Programming Sessional', '1.5', '0.75', 'Second', 'First', 1),
(10, 'CSE-1204', 'Softwarw Development Sessional-I', '3', '1.5', 'Second', 'First', 1),
(11, 'EEE-1221', 'Electrical Circuits', '1.5', '1.5', 'Second', 'First', 1),
(12, 'EEE-1222', 'Electrical Circuits Sessional', '1.5', '0.75', 'Second', 'First', 1),
(13, 'ME-1223', 'Mechanicalcs and Heat Engineering', '1.5', '1.5', 'Second', 'First', 1),
(14, 'ME-1224', 'Engineering Drawing CAD Sessional', '1.5', '0.75', 'Second', 'First', 1),
(15, 'Math-1231', 'Mathematics-II', '3', '3.00', 'Second', 'First', 1),
(16, 'CSE-1301', 'Digital Logic Design', '3', '3.00', 'Third', 'First', 1),
(17, 'CSE-1302', 'Digital Logic Design Sessional', '1.5', '0.75', 'Third', 'First', 1),
(18, 'Math-1331', 'Mathematics-III', '3', '3.00', 'Third', 'First', 1),
(19, 'Phy-1333', 'Physics-II', '3', '3.00', 'Third', 'First', 1),
(20, 'Phy-1334', 'Physics-II Sessional', '1.5', '0.75', 'Third', 'First', 1),
(21, 'Chem-1335', 'Chemistry', '3', '3.00', 'Third', 'First', 1),
(22, 'Chem-1336', 'Chemistry Sessional', '1.5', '0.75', 'Third', 'First', 1),
(23, 'CSE-2101', 'Data Structures', '3', '3.00', 'Frist', 'Second', 1),
(24, 'CSE-2102', 'Data Structures Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(25, 'EEE-2121', 'Electronics and Circuits', '3', '3.00', 'Frist', 'Second', 1),
(26, 'EEE-2122', 'Electronics and Circuits Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(27, 'Math-2131', 'Mathematics-IV', '3', '3.00', 'Frist', 'Second', 1),
(28, 'Hum-2141', 'Government and Sociology', '1.5', '1.5', 'Frist', 'Second', 1),
(29, 'CSE-2201', 'Algorithms', '3', '3.00', 'Second', 'Second', 1),
(30, 'CSE-2202', 'Algorithms Sessional', '3', '1.5', 'Second', 'Second', 1),
(31, 'CSE-2204', 'Software Development Sessional-II', '3', '1.5', 'Second', 'Second', 1),
(32, 'CSE-2205', 'Discrete Mathematics', '3', '3.00', 'Second', 'Second', 1),
(33, 'Math-2231', 'Matematics-V', '3', '3.00', 'Second', 'Second', 1),
(34, 'Hum-2241', 'Economics', '1.5', '1.5', 'Second', 'Second', 1),
(35, 'CSE-2301', 'Microprocessors and Microcomputers', '3', '3.00', 'Third', 'Second', 1),
(36, 'CSE-2302', 'Microprocessors and Microcomputers Sessional', '3', '1.5', 'Third', 'Second', 1),
(37, 'CSE-2303', 'Numerical Analysis', '3', '3.00', 'Third', 'Second', 1),
(38, 'CSE-2304', 'Numerical Analysis Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(39, 'EEE-2321', 'Electrical Technology', '1.5', '1.5', 'Third', 'Second', 1),
(40, 'EEE-2322', 'Electrical Technology Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(41, 'Hum-2341', 'Psychology', '1.5', '1.5', 'Third', 'Second', 1),
(42, 'CSE-3101', 'Applied Probability and Queuing Theory', '3', '3.00', 'Frist', 'Third', 1),
(43, 'CSE-3104', 'Internet Programming Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(44, 'CSE-3106', 'Software Development Sessional III', '3', '1.5', 'Frist', 'Third', 1),
(45, 'CSE-3107', 'Database Systems', '3', '3.00', 'Frist', 'Third', 1),
(46, 'CSE-3108', 'Database Systems Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(47, 'EEE-3121', 'Digital Electronics and Pulse Techniques', '3', '3.00', 'Frist', 'Third', 1),
(48, 'EEE-3122', 'Digital Electronic and Pulse Techniques Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(49, 'Hum-3141', 'Accounting', '1.5', '1.5', 'Frist', 'Third', 1),
(50, 'CSE-3201', 'Artificial Intelligence and Expert System', '3', '3.00', 'Second', 'Third', 1),
(51, 'CSE-3202', 'Artificial Intelligence and Expert System Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(52, 'CSE-3203', 'Software Engineering', '3', '3.00', 'Second', 'Third', 1),
(53, 'CSE-3204', 'Software Engineering Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(54, 'CSE-3205', 'Computer Networks', '3', '3.00', 'Second', 'Third', 1),
(55, 'CSE-3206', 'Computer Network Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(56, 'Hum-3241', 'Industrial Management and Law', '1.5', '1.5', 'Second', 'Third', 1),
(57, 'CSE-3301 ', 'System Programming and Operating System', '3', '3.00', 'Third', 'Third', 1),
(58, 'CSE-3302 ', 'System Programming and Operating System Sessional', '1.5', '0.75', 'Third', 'Third', 1),
(59, 'CSE-3303', 'Computational Geomatry', '3', '3.00', 'Third', 'Third', 1),
(60, 'CSE-3305', 'Computer Architecture', '3', '3.00', 'Third', 'Third', 1),
(61, 'EEE-3321', 'Data Communication', '3', '3.00', 'Third', 'Third', 1),
(62, 'CSE-4101', 'Neural Netword and Fuzzy System', '3', '3.00', 'Frist', 'Forth', 1),
(63, 'CSE-4102', 'Neural Netword and Fuzzy System Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(64, 'CSE-4103', 'Compiler Design', '3', '3.00', 'Frist', 'Forth', 1),
(65, 'CSE-4104', 'Compiler Design Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(66, 'CSE-4105', 'Parallel and Distribuled Processing', '3', '3.00', 'Frist', 'Forth', 1),
(67, 'EEE-4121', 'Electrical Measurement and Instrumentation', '3', '3.00', 'Frist', 'Forth', 1),
(68, 'EEE-4122', 'Electrical Measurement and Instrumentation Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(69, 'CSE-4201', 'Information System Analysis and Design', '3', '3.00', 'Second', 'Forth', 1),
(70, 'CSE-4203', 'Advance Computer Architecture', '3', '3.00', 'Second', 'Forth', 1),
(71, 'CSE-4205', 'Degital System Design', '3', '3.00', 'Second', 'Forth', 1),
(72, 'CSE-4200', 'Research Project', '3', '1.5', 'Second', 'Forth', 1),
(73, 'EEE-4221', 'VLSI Design', '3', '3.00', 'Second', 'Forth', 1),
(74, 'CSE-4301', 'Computer Graphics and Pattern Recognition', '3', '3.00', 'Third', 'Forth', 1),
(75, 'CSE-4302', 'Computer Graphics and Pattern Recognition Sessional', '1.5', '0.75', 'Third', 'Forth', 1),
(76, 'CSE-4303', 'Robotics and Computer Vision', '3', '3.00', 'Third', 'Forth', 1),
(77, 'CSE-4305', 'Information Security and Control', '1.5', '1.5', 'Third', 'Forth', 1),
(78, 'CSE-4300', 'Project and Thesis II', '3', '1.5', 'Third', 'Forth', 1),
(79, 'CSE-4320', 'Industrial Training', '3', '3.00', 'Third', 'Forth', 1),
(80, 'CSE-4307', 'Human Computer Interaction', '3', '3.00', 'Third', 'Forth', 1),
(81, 'EEE-1101', 'Electrical Circuit-1', '3', '3.00', 'First', 'First', 2),
(82, 'EEE-1102', 'Electrical Circuit-1 Sessional', '3', '1.5', 'First', 'First', 2),
(83, 'Math-1131', 'Engineering Mathematics-1', '3', '3.00', 'First', 'First', 2),
(84, 'Phy-1133', 'Physics-1', '3', '3.00', 'First', 'First', 2),
(85, 'Phy-1134', 'Physics-1 Sessional', '1.5', '0.75', 'First', 'First', 2),
(86, 'EEE-1201', 'Electrical Circuit-2', '3', '3.00', 'Second', 'First', 2),
(87, 'EEE-1202', 'Electrical Circuit-2 Sessional', '1.5', '0.75', 'Second', 'First', 2),
(88, 'CSE-1221', 'Computer Programming', '3', '3.00', 'Second', 'First', 2),
(89, 'CSE-1222', 'Computer Programming Sessional', '1.5', '0.75', 'Second', 'First', 2),
(90, 'Math-1231', 'Engineering Mathematics-2', '3', '3.00', 'Second', 'First', 2),
(91, 'Hum-1241', 'Funtion English & Sociology', '3', '3.00', 'Second', 'First', 2),
(92, 'EEE-1301', 'Basic Electrical & Electronics design Engineering', '3', '3.00', 'Third', 'First', 2),
(93, 'EEE-1302', 'Basic Electrical & Electronics design Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(94, 'ME-1321', 'Basic Mechanical Basic Engineering', '3', '3.00', 'Third', 'First', 2),
(95, 'ME-1322', 'Basic Mechanical Basic Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(96, 'Math-1331', 'Engineering Mathematics-III', '3', '3.00', 'Third', 'First', 2),
(97, 'Chem-1335', 'Chemistry-1', '3', '3.00', 'Third', 'First', 2),
(98, 'Chem-1336', 'Chemistry-1 Sessional', '1.5', '0.75', 'Third', 'First', 2),
(99, 'EEE-2101', 'Electrical Machines-1', '3', '3.00', 'Frist', 'Second', 2),
(100, 'EEE-2102', 'Electrical Machines-1 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(101, 'Math-2131', 'Engineering Mathematics-4', '3', '3.00', 'Frist', 'Second', 2),
(102, 'Phy-2133', 'Physics-2', '3', '3.00', 'Frist', 'Second', 2),
(103, 'Phy-2134', 'Physics-2 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(104, 'Chem-2335', 'Chemistry-II', '3', '3.00', 'Frist', 'Second', 2),
(105, 'Chem-2336', 'Chemistry-II Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(106, 'EEE-2201', 'Electrical Machines-II', '3', '3.00', 'Second', 'Second', 2),
(107, 'EEE-2202', 'Electrical Machines-II Sessional', '1.5', '0.75', 'Second', 'Second', 2),
(108, 'Math-2231', 'Engineering Mathematics-V', '3', '3.00', 'Second', 'Second', 2),
(109, 'Phy-2233', 'Physics-III', '3', '3.00', 'Second', 'Second', 2),
(110, 'Phy-2234', 'Physics-III Sessional', '3', '0.75', 'Second', 'Second', 2),
(111, 'EEE-2301', 'Electrical Device and Circuit-I', '3', '3.00', 'Third', 'Second', 2),
(112, 'EEE-2302', 'Electrical Device and Circuit-I Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(113, 'EEE-2303', 'Transmission and Disttribution of Electrical Power', '3', '3.00', 'Third', 'Second', 2),
(114, 'CE-2321', 'Mechanics of Solids', '3', '3.00', 'Third', 'Second', 2),
(115, 'CE-2322', 'Mechanics of Solids Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(116, 'Math-2331', 'Engineering Mathematics-VI', '3', '3.00', 'Third', 'Second', 2),
(117, 'EEE-3101', 'Electric device and circuits-II', '3', '3.00', 'Frist', 'Third', 2),
(118, 'EEE-3102', 'Electric device and circuits-II Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(119, 'EEE-3103', 'Electrical & Electronic Measurements', '3', '3.00', 'Frist', 'Third', 2),
(120, 'EEE-3104', 'Electrical & Electronic Measurements Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(121, 'EEE-3105', 'Telecommunications-I', '3', '3.00', 'Frist', 'Third', 2),
(122, 'EEE-3106', 'Telecommunications-I Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(123, 'CSE-3121', 'Programing Techniques & Numerical Analysis', '3', '3.00', 'Frist', 'Third', 2),
(124, 'EEE-3201', 'Electric device and circuits-III', '3', '3.00', 'Second', 'Third', 2),
(125, 'EEE-3202', 'Electric device and circuits-III Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(126, 'EEE-3203', 'Digital Electronics', '3', '3.00', 'Second', 'Third', 2),
(127, 'EEE-3204', 'Digital Electronics Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(128, 'HUM-3241', 'Industrial Management', '3', '3.00', 'Second', 'Third', 2),
(129, 'EEE-3301', 'Micropricessor & Microcomputer', '3', '3.00', 'Third', 'Third', 2),
(130, 'EEE-3302', 'Micropricessor & Microcomputer Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(131, 'EEE-3304', 'Software Development Sessional', '3', '1.50', 'Third', 'Third', 2),
(132, 'EEE-3305', 'Telecommunications-II', '3', '3.00', 'Third', 'Third', 2),
(133, 'EEE-3306', 'Telecommunications-II Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(134, 'EEE-3307', 'Electromagnetic waves and Fild', '3', '3.00', 'Third', 'Third', 2),
(135, 'Hum-3341', 'Socioeconomic and Environmental Engineering Projects sociology', '3', '3.00', 'Third', 'Third', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dep_table`
--

CREATE TABLE `dep_table` (
  `no` int(11) NOT NULL,
  `dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep_table`
--

INSERT INTO `dep_table` (`no`, `dep`) VALUES
(4, 'BBA'),
(6, 'Chemistry'),
(1, 'CSE'),
(3, 'Cvil'),
(2, 'EEE'),
(8, 'Hum'),
(5, 'Math'),
(7, 'ME'),
(9, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `nwu_data`
--

CREATE TABLE `nwu_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nwu_data`
--

INSERT INTO `nwu_data` (`id`, `data`) VALUES
(1, 'A University needs to be a centre of excellence for pursuit of knowledge and the highest seat of learning, research and intellectual development for any nation. To keep pace with the fast advancing world and to face the challenges of a new millennium, especially in this age of globalization ,a university plays the most important role by nourishing lofty ideals, reflecting ethical values, upholding culture and heritage and producing high quality intellectuals and human resources and skilled manpower who will be professionally sound and morally upright. North Western University will also endeavour to perform these functions by exploring and exposing the potentialities of learners.\r\n\r\nNorth Western University, the first ever full-fledged private University in Khulna, approved by the Government and the Bangladesh University Grants Commission, has come into existence under the auspices of a galaxy of distinguished and enthusiastic benevolent souls who profess genuine love for higher education. The noble objective of these people provides ample opportunities of learning to students both from urban and rural areas in the country at affordable expenses. The University has introduced need-oriented academic Programs keeping in view, the demand for trained manpower to be equipped with sound technological skills and devices within and outside the country. The University is determined to maintain a congenial and stimulating academic environment and keep the campus free from all such activities detrimental to the acquisition of knowledge and learning.\r\n\r\nLet us hope that with our concerted efforts, strong determination and close cooperation from everyone associate with this Alma Mater, we shall raise the University to international standard and reach it to the pinnacle of glory. Also, we believe this university will surely play a pioneering role in the private sector towards the extension of higher education in the country and advancement and progress of the nation as well.\r\n\r\nProfessor Dr. Tarapada Bhowmick\r\n\r\nVice-Chancellor\r\n\r\nNorth Western University\r\n\r\nKhulna'),
(2, 'North Western University, Khulna the first full-fledged private university in Khulna, Bangladesh was established on the 18th November, 2012. The University started Academic Activities from Spring Semester, 2013.\r\n\r\nThe Government of the People’s Republic of Bangladesh approved the establishment of North Western University under Private University Act. 2010.\r\n\r\nThe University started its activities with 4 Faculties, 12 Departments, 67 full time teachers, 61 part time teachers and 489 students. At present the University consists of 4 Faculties, 14 Departments. The number of students and teachers have risen to about 3400 and 140 respectively.\r\n\r\nThe first fresh admission classes had 489 students enrolled in 12 Departments: Business Administration 62 students, BA Hons in English 9 students, MA in English 5 students, LLB 10 students, MBA-1 Year 27 students, EMBA 31 students, MBA-2 Year 11 students, MDS 7 students, Computer Science & Engineering 92 students, Electrical & Electronic Engineering 150 students, Civil Engineering 84 students.\r\n\r\nThe main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students. Since its inception the University has a distinct character of having distinguished scholars as faculties who have enriched the global pool of knowledge by making notable contributions in the fields of teaching and research.\r\n\r\nThe high standard of education and research for the University was set by its Vice-Chancellor, Prof. Dr. Khondoker Bazlul Hoque.\r\n\r\nAccording to the provision of the Private University Act-2010, Talukder Abdul Khaleque is the current Chairman of the Board of Trustees, North Western University and North Western University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman.\r\n\r\nThe Vice-Chancellor, as the chief executive and academic officer runs the university with the cooperation of the statutory bodies operating under the provision of the Private University Act. 2010. The Registrar maintains the university records including admissions, keeps liaison with Ministry of Education, University Grants Commission (UGC) and other relevant authorities. The Controller of Examinations deals with all functions relating to preservation of records of Examinations, preparation and publication of results, processing confidential papers etc.\r\n\r\nNWU has the authority, under its Charter, to impart education and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering and law. Currently, NWU offers Bachelor’s and Master’s degrees in 16 subjects (10 Bachelor’s degrees and 6 Master’s degrees).\r\n\r\nThe university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs of the country.\r\n\r\nProf. Dr. Khondoker Bazlul Hoque, Vice-Chancellor (honourary) is providing leadership in improving, expanding and diversifying various academic programs. NWU now has 76 (fulltime) faculty members. All faculty members have higher degrees from reputed domestic and foreign universities.\r\n\r\nNorth Western University is dedicated to the advancement of learning, and is committed to promoting research in all fields of knowledge. As there are plans for further expansion of facilities, plans for new avenues and opportunities, the course curricula are updated and new research projects are undertaken every year. As the pioneer and the highest seat of learning in the country, the University has taken the task of fostering the transformation processes of the individual students and the country as a whole through its educational and research facilities keeping pace with the demands of the day.'),
(3, '1. Talukder Abdul Khaleque (Chairman & Trustee)\r\n\r\n2. S. M. Kamal Hossain (Vice Chairman & Trustee)\r\n\r\n3. M. Abdur Razzaque (Trustee)\r\n\r\n4. Syeda Lutfa Huq (Trustee)\r\n\r\n5. Nahid Newazi (Trustee)\r\n\r\n6. Syed Mohammed Obaidullah (Trustee)\r\n\r\n7. Prof. Dr. Mohammed Sirajul Huq Chowdhury(Trustee)\r\n\r\n8. Shahabuddin Ahmed (Trustee)\r\n\r\n9. Md. Towhidul Islam Azad (Trustee)\r\n\r\n10. Prof. Dr. Khondoker Bazlul Hoque (Trustee)\r\n\r\n11. Habibunnahar (Trustee)\r\n\r\n12. Mujibor Rahman Shamim (Trustee)\r\n\r\n13. Shabana Shaheen (Trustee)\r\n\r\n14. Morjina Islam (Trustee)\r\n\r\n15. Nurani Akther (Trustee)\r\n\r\n16. Pabitra Kumar Sarkar (Trustee)\r\n\r\n17. Saeir J. Sattar (Trustee)\r\n\r\n18. Dr. Md. Rezaul Alam (Secretary & Trustee)'),
(4, 'To develop, maintain, and sustain an overall knowledge of the university’s core research areas of interest and competence. Over a period time, these core areas should be expanded to include new areas reflecting the nature of growth of the university. Conduct regular periodic meetings with aspiring faculty members/researchers of all academic areas and maintain regular interaction with them to assist them in developing their own research programs. Supervise a reviewing committee entrusted with annually/semi annually reviewing research proposals submitted for funding from university fund allocated exclusively for research. This task will focus intensely on identifying worthwhile, knowledge enhancing projects which will most likely make a significant contribution in the specific area of interest. Develop, maintain and strengthen association of all well-recognized national academic association of repute and participate in all seminars, workshops, conferences sponsored by similar organizations. Nominate appropriate faculty members to participate in such seminars in order to increase the visibility of southeast university.');

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_table`
--

CREATE TABLE `student_mark_table` (
  `studentMarkId` int(11) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `techerCourseId` int(11) NOT NULL,
  `ct1` float NOT NULL DEFAULT '0',
  `ct2` float NOT NULL DEFAULT '0',
  `ct3` float NOT NULL DEFAULT '0',
  `totalCt` float NOT NULL DEFAULT '0',
  `present` float NOT NULL DEFAULT '0',
  `assignment` float NOT NULL DEFAULT '0',
  `final` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_mark_table`
--

INSERT INTO `student_mark_table` (`studentMarkId`, `id`, `techerCourseId`, `ct1`, `ct2`, `ct3`, `totalCt`, `present`, `assignment`, `final`, `total`) VALUES
(1, '20151006010', 1, 1, 1, 1, 1, 10, 1, 55, 67),
(2, '20151006010', 2, 15, 20, 4, 17.5, 10, 10, 55, 92.5),
(3, '20151005010', 1, 0, 1, 0, 1, 0, 0, 55, 56),
(4, '20151005010', 2, 15, 20, 0, 17.5, 10, 10, 60, 97.5);

-- --------------------------------------------------------

--
-- Table structure for table `techer_course_table`
--

CREATE TABLE `techer_course_table` (
  `techerCourseId` int(10) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `courseId` int(10) NOT NULL,
  `ctNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techer_course_table`
--

INSERT INTO `techer_course_table` (`techerCourseId`, `id`, `exam`, `courseId`, `ctNo`, `ctType`) VALUES
(1, '20121001', 'Summer-2017', 2, '2', 'BestOne'),
(2, '20121001', 'Summer-2017', 3, '2', 'BestTwo');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`no`, `type`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`name`, `id`, `password`, `email`, `dep`, `session`, `type`, `gender`, `mobile`, `birth`, `adress`, `location`, `longitude`, `latitude`) VALUES
('Injamamul huqe', '20121001', '20121001', 'Injamamul@gmail.com', 1, 'Spring-2012', 1, 'Male', '01789456133', '1986-02-04', 'Khalishpur Jute Mill, Khulna, BIDC Road, Khulna, Khulna Division, Bangladesh', 'BIDC Rd, Khulna 9000, Bangladesh', '89.54085550000002', '22.8623939'),
('Nagib Mahafug', '20131003', '1003', 'Nagib@gmail.com', 1, 'Spring-2013', 1, 'Male', '01589456133', '9-5-16', 'Helani Place, Hilo, HI, United States', 'Helani Pl, Hilo, HI 96720, USA', '-155.11099760000002', '19.7014473'),
('Asif Al Jun', '20141002', '1002', 'Asif@gmail.com', 1, 'Spring-2014', 1, 'Male', '01689456133', '', '', '', '', ''),
('Nazmul Hohain', '20142001', '2001', 'Nazmul@gmail.com', 2, 'Spring-2014', 1, 'Male', '01989456133', '', '', '', '', ''),
('Abul Kalam', '20142003', '2003', 'Abul@gmail.com', 2, 'Spring-2014', 2, 'Male', '01789456133', '', '', '', '', ''),
('Tariqul Islam', '20151005010', '20151005010', 'Tariqul@gmail.com', 1, 'Spring-2015', 3, 'Male', '01889456133', '', '', '', '', ''),
('Riadulislam', '20151006010', '20151006010', 'riad@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '1996-03-06', 'Helani Tea Store, Kadarnath Road, Khulna, Bangladesh', 'Kadarnath Rd, Khulna, Bangladesh', '89.51448260000006', '22.8835517'),
('Tanvir islam', '20151036010', '20151036010', 'tanvir@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Pallab kumar', '20151043010', '20151043010', 'pallab@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Rasidul Islam', '20152002', '2002', 'Rasidul.com', 2, 'Spring-2015', 2, 'Male', '016894646133', '', '', '', '', ''),
('Tariqul Islam', '20152005010', '20152005010', 'Tariquasl@gmail.com', 2, 'Spring-2015', 3, 'Male', '01888456133', '', '', '', '', ''),
('Riadulislam', '20152006010', '20152006010', 'riadas@gmail.com', 2, 'Spring-2015', 3, 'Male', '019894556133', '', '', '', '', ''),
('Tanvir islam', '20152036010', '20152036010', 'tanviras@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989566133', '', '', '', '', ''),
('Pallab kumar', '20152043010', '20152043010', 'pallabas@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989276133', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `count1`
--
ALTER TABLE `count1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `count2`
--
ALTER TABLE `count2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `samester` (`samester`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `UQ_No_Dep` (`code`,`dep`),
  ADD KEY `dep` (`dep`);

--
-- Indexes for table `dep_table`
--
ALTER TABLE `dep_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `dep` (`dep`);

--
-- Indexes for table `nwu_data`
--
ALTER TABLE `nwu_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD PRIMARY KEY (`studentMarkId`),
  ADD UNIQUE KEY `UQ_Id` (`id`,`techerCourseId`),
  ADD KEY `techerCourseId` (`techerCourseId`);

--
-- Indexes for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD PRIMARY KEY (`techerCourseId`),
  ADD UNIQUE KEY `UQ_id_exam` (`id`,`exam`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `dep` (`dep`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  MODIFY `studentMarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  MODIFY `techerCourseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_table`
--
ALTER TABLE `course_table`
  ADD CONSTRAINT `course_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`);

--
-- Constraints for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD CONSTRAINT `student_mark_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `student_mark_table_ibfk_2` FOREIGN KEY (`techerCourseId`) REFERENCES `techer_course_table` (`techerCourseId`);

--
-- Constraints for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD CONSTRAINT `techer_course_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `techer_course_table_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course_table` (`courseId`);

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`),
  ADD CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_table` (`no`);
--
-- Database: `id1337164_nwu`
--
CREATE DATABASE IF NOT EXISTS `id1337164_nwu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1337164_nwu`;

-- --------------------------------------------------------

--
-- Table structure for table `count1`
--

CREATE TABLE `count1` (
  `id` int(11) NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count1`
--

INSERT INTO `count1` (`id`, `year`) VALUES
(1, 'First'),
(4, 'Forth'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `count2`
--

CREATE TABLE `count2` (
  `id` int(11) NOT NULL,
  `samester` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count2`
--

INSERT INTO `count2` (`id`, `samester`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `courseId` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `houre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creadit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `samester` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`courseId`, `code`, `titel`, `houre`, `creadit`, `samester`, `year`, `dep`) VALUES
(2, 'CSE-1101', 'Computer Basic and Programming', '3', '3.00', 'First', 'First', 1),
(3, 'CSE-1102', 'Computer Basic and Programming Sessional', '3', '1.50', 'First', 'First', 1),
(4, 'Hum-1141', 'English and Human Communication', '1.5', '1.5', 'First', 'First', 1),
(5, 'Math-1131', 'Mathematics I', '3', '3.00', 'First', 'First', 1),
(6, 'Phy-1133', 'Physics I', '3', '3.00', 'First', 'First', 1),
(7, 'Phy-1134', 'Physics Sessional I', '1.5', '0.75', 'First', 'First', 1),
(8, 'CSE-1201', 'Object Oriented Programming', '3', '3.00', 'Second', 'First', 1),
(9, 'CSE-1202', 'Object Oriented Programming Sessional', '1.5', '0.75', 'Second', 'First', 1),
(10, 'CSE-1204', 'Softwarw Development Sessional-I', '3', '1.5', 'Second', 'First', 1),
(11, 'EEE-1221', 'Electrical Circuits', '1.5', '1.5', 'Second', 'First', 1),
(12, 'EEE-1222', 'Electrical Circuits Sessional', '1.5', '0.75', 'Second', 'First', 1),
(13, 'ME-1223', 'Mechanicalcs and Heat Engineering', '1.5', '1.5', 'Second', 'First', 1),
(14, 'ME-1224', 'Engineering Drawing CAD Sessional', '1.5', '0.75', 'Second', 'First', 1),
(15, 'Math-1231', 'Mathematics-II', '3', '3.00', 'Second', 'First', 1),
(16, 'CSE-1301', 'Digital Logic Design', '3', '3.00', 'Third', 'First', 1),
(17, 'CSE-1302', 'Digital Logic Design Sessional', '1.5', '0.75', 'Third', 'First', 1),
(18, 'Math-1331', 'Mathematics-III', '3', '3.00', 'Third', 'First', 1),
(19, 'Phy-1333', 'Physics-II', '3', '3.00', 'Third', 'First', 1),
(20, 'Phy-1334', 'Physics-II Sessional', '1.5', '0.75', 'Third', 'First', 1),
(21, 'Chem-1335', 'Chemistry', '3', '3.00', 'Third', 'First', 1),
(22, 'Chem-1336', 'Chemistry Sessional', '1.5', '0.75', 'Third', 'First', 1),
(23, 'CSE-2101', 'Data Structures', '3', '3.00', 'Frist', 'Second', 1),
(24, 'CSE-2102', 'Data Structures Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(25, 'EEE-2121', 'Electronics and Circuits', '3', '3.00', 'Frist', 'Second', 1),
(26, 'EEE-2122', 'Electronics and Circuits Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(27, 'Math-2131', 'Mathematics-IV', '3', '3.00', 'Frist', 'Second', 1),
(28, 'Hum-2141', 'Government and Sociology', '1.5', '1.5', 'Frist', 'Second', 1),
(29, 'CSE-2201', 'Algorithms', '3', '3.00', 'Second', 'Second', 1),
(30, 'CSE-2202', 'Algorithms Sessional', '3', '1.5', 'Second', 'Second', 1),
(31, 'CSE-2204', 'Software Development Sessional-II', '3', '1.5', 'Second', 'Second', 1),
(32, 'CSE-2205', 'Discrete Mathematics', '3', '3.00', 'Second', 'Second', 1),
(33, 'Math-2231', 'Matematics-V', '3', '3.00', 'Second', 'Second', 1),
(34, 'Hum-2241', 'Economics', '1.5', '1.5', 'Second', 'Second', 1),
(35, 'CSE-2301', 'Microprocessors and Microcomputers', '3', '3.00', 'Third', 'Second', 1),
(36, 'CSE-2302', 'Microprocessors and Microcomputers Sessional', '3', '1.5', 'Third', 'Second', 1),
(37, 'CSE-2303', 'Numerical Analysis', '3', '3.00', 'Third', 'Second', 1),
(38, 'CSE-2304', 'Numerical Analysis Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(39, 'EEE-2321', 'Electrical Technology', '1.5', '1.5', 'Third', 'Second', 1),
(40, 'EEE-2322', 'Electrical Technology Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(41, 'Hum-2341', 'Psychology', '1.5', '1.5', 'Third', 'Second', 1),
(42, 'CSE-3101', 'Applied Probability and Queuing Theory', '3', '3.00', 'Frist', 'Third', 1),
(43, 'CSE-3104', 'Internet Programming Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(44, 'CSE-3106', 'Software Development Sessional III', '3', '1.5', 'Frist', 'Third', 1),
(45, 'CSE-3107', 'Database Systems', '3', '3.00', 'Frist', 'Third', 1),
(46, 'CSE-3108', 'Database Systems Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(47, 'EEE-3121', 'Digital Electronics and Pulse Techniques', '3', '3.00', 'Frist', 'Third', 1),
(48, 'EEE-3122', 'Digital Electronic and Pulse Techniques Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(49, 'Hum-3141', 'Accounting', '1.5', '1.5', 'Frist', 'Third', 1),
(50, 'CSE-3201', 'Artificial Intelligence and Expert System', '3', '3.00', 'Second', 'Third', 1),
(51, 'CSE-3202', 'Artificial Intelligence and Expert System Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(52, 'CSE-3203', 'Software Engineering', '3', '3.00', 'Second', 'Third', 1),
(53, 'CSE-3204', 'Software Engineering Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(54, 'CSE-3205', 'Computer Networks', '3', '3.00', 'Second', 'Third', 1),
(55, 'CSE-3206', 'Computer Network Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(56, 'Hum-3241', 'Industrial Management and Law', '1.5', '1.5', 'Second', 'Third', 1),
(57, 'CSE-3301 ', 'System Programming and Operating System', '3', '3.00', 'Third', 'Third', 1),
(58, 'CSE-3302 ', 'System Programming and Operating System Sessional', '1.5', '0.75', 'Third', 'Third', 1),
(59, 'CSE-3303', 'Computational Geomatry', '3', '3.00', 'Third', 'Third', 1),
(60, 'CSE-3305', 'Computer Architecture', '3', '3.00', 'Third', 'Third', 1),
(61, 'EEE-3321', 'Data Communication', '3', '3.00', 'Third', 'Third', 1),
(62, 'CSE-4101', 'Neural Netword and Fuzzy System', '3', '3.00', 'Frist', 'Forth', 1),
(63, 'CSE-4102', 'Neural Netword and Fuzzy System Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(64, 'CSE-4103', 'Compiler Design', '3', '3.00', 'Frist', 'Forth', 1),
(65, 'CSE-4104', 'Compiler Design Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(66, 'CSE-4105', 'Parallel and Distribuled Processing', '3', '3.00', 'Frist', 'Forth', 1),
(67, 'EEE-4121', 'Electrical Measurement and Instrumentation', '3', '3.00', 'Frist', 'Forth', 1),
(68, 'EEE-4122', 'Electrical Measurement and Instrumentation Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(69, 'CSE-4201', 'Information System Analysis and Design', '3', '3.00', 'Second', 'Forth', 1),
(70, 'CSE-4203', 'Advance Computer Architecture', '3', '3.00', 'Second', 'Forth', 1),
(71, 'CSE-4205', 'Degital System Design', '3', '3.00', 'Second', 'Forth', 1),
(72, 'CSE-4200', 'Research Project', '3', '1.5', 'Second', 'Forth', 1),
(73, 'EEE-4221', 'VLSI Design', '3', '3.00', 'Second', 'Forth', 1),
(74, 'CSE-4301', 'Computer Graphics and Pattern Recognition', '3', '3.00', 'Third', 'Forth', 1),
(75, 'CSE-4302', 'Computer Graphics and Pattern Recognition Sessional', '1.5', '0.75', 'Third', 'Forth', 1),
(76, 'CSE-4303', 'Robotics and Computer Vision', '3', '3.00', 'Third', 'Forth', 1),
(77, 'CSE-4305', 'Information Security and Control', '1.5', '1.5', 'Third', 'Forth', 1),
(78, 'CSE-4300', 'Project and Thesis II', '3', '1.5', 'Third', 'Forth', 1),
(79, 'CSE-4320', 'Industrial Training', '3', '3.00', 'Third', 'Forth', 1),
(80, 'CSE-4307', 'Human Computer Interaction', '3', '3.00', 'Third', 'Forth', 1),
(81, 'EEE-1101', 'Electrical Circuit-1', '3', '3.00', 'First', 'First', 2),
(82, 'EEE-1102', 'Electrical Circuit-1 Sessional', '3', '1.5', 'First', 'First', 2),
(83, 'Math-1131', 'Engineering Mathematics-1', '3', '3.00', 'First', 'First', 2),
(84, 'Phy-1133', 'Physics-1', '3', '3.00', 'First', 'First', 2),
(85, 'Phy-1134', 'Physics-1 Sessional', '1.5', '0.75', 'First', 'First', 2),
(86, 'EEE-1201', 'Electrical Circuit-2', '3', '3.00', 'Second', 'First', 2),
(87, 'EEE-1202', 'Electrical Circuit-2 Sessional', '1.5', '0.75', 'Second', 'First', 2),
(88, 'CSE-1221', 'Computer Programming', '3', '3.00', 'Second', 'First', 2),
(89, 'CSE-1222', 'Computer Programming Sessional', '1.5', '0.75', 'Second', 'First', 2),
(90, 'Math-1231', 'Engineering Mathematics-2', '3', '3.00', 'Second', 'First', 2),
(91, 'Hum-1241', 'Funtion English & Sociology', '3', '3.00', 'Second', 'First', 2),
(92, 'EEE-1301', 'Basic Electrical & Electronics design Engineering', '3', '3.00', 'Third', 'First', 2),
(93, 'EEE-1302', 'Basic Electrical & Electronics design Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(94, 'ME-1321', 'Basic Mechanical Basic Engineering', '3', '3.00', 'Third', 'First', 2),
(95, 'ME-1322', 'Basic Mechanical Basic Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(96, 'Math-1331', 'Engineering Mathematics-III', '3', '3.00', 'Third', 'First', 2),
(97, 'Chem-1335', 'Chemistry-1', '3', '3.00', 'Third', 'First', 2),
(98, 'Chem-1336', 'Chemistry-1 Sessional', '1.5', '0.75', 'Third', 'First', 2),
(99, 'EEE-2101', 'Electrical Machines-1', '3', '3.00', 'Frist', 'Second', 2),
(100, 'EEE-2102', 'Electrical Machines-1 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(101, 'Math-2131', 'Engineering Mathematics-4', '3', '3.00', 'Frist', 'Second', 2),
(102, 'Phy-2133', 'Physics-2', '3', '3.00', 'Frist', 'Second', 2),
(103, 'Phy-2134', 'Physics-2 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(104, 'Chem-2335', 'Chemistry-II', '3', '3.00', 'Frist', 'Second', 2),
(105, 'Chem-2336', 'Chemistry-II Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(106, 'EEE-2201', 'Electrical Machines-II', '3', '3.00', 'Second', 'Second', 2),
(107, 'EEE-2202', 'Electrical Machines-II Sessional', '1.5', '0.75', 'Second', 'Second', 2),
(108, 'Math-2231', 'Engineering Mathematics-V', '3', '3.00', 'Second', 'Second', 2),
(109, 'Phy-2233', 'Physics-III', '3', '3.00', 'Second', 'Second', 2),
(110, 'Phy-2234', 'Physics-III Sessional', '3', '0.75', 'Second', 'Second', 2),
(111, 'EEE-2301', 'Electrical Device and Circuit-I', '3', '3.00', 'Third', 'Second', 2),
(112, 'EEE-2302', 'Electrical Device and Circuit-I Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(113, 'EEE-2303', 'Transmission and Disttribution of Electrical Power', '3', '3.00', 'Third', 'Second', 2),
(114, 'CE-2321', 'Mechanics of Solids', '3', '3.00', 'Third', 'Second', 2),
(115, 'CE-2322', 'Mechanics of Solids Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(116, 'Math-2331', 'Engineering Mathematics-VI', '3', '3.00', 'Third', 'Second', 2),
(117, 'EEE-3101', 'Electric device and circuits-II', '3', '3.00', 'Frist', 'Third', 2),
(118, 'EEE-3102', 'Electric device and circuits-II Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(119, 'EEE-3103', 'Electrical & Electronic Measurements', '3', '3.00', 'Frist', 'Third', 2),
(120, 'EEE-3104', 'Electrical & Electronic Measurements Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(121, 'EEE-3105', 'Telecommunications-I', '3', '3.00', 'Frist', 'Third', 2),
(122, 'EEE-3106', 'Telecommunications-I Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(123, 'CSE-3121', 'Programing Techniques & Numerical Analysis', '3', '3.00', 'Frist', 'Third', 2),
(124, 'EEE-3201', 'Electric device and circuits-III', '3', '3.00', 'Second', 'Third', 2),
(125, 'EEE-3202', 'Electric device and circuits-III Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(126, 'EEE-3203', 'Digital Electronics', '3', '3.00', 'Second', 'Third', 2),
(127, 'EEE-3204', 'Digital Electronics Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(128, 'HUM-3241', 'Industrial Management', '3', '3.00', 'Second', 'Third', 2),
(129, 'EEE-3301', 'Micropricessor & Microcomputer', '3', '3.00', 'Third', 'Third', 2),
(130, 'EEE-3302', 'Micropricessor & Microcomputer Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(131, 'EEE-3304', 'Software Development Sessional', '3', '1.50', 'Third', 'Third', 2),
(132, 'EEE-3305', 'Telecommunications-II', '3', '3.00', 'Third', 'Third', 2),
(133, 'EEE-3306', 'Telecommunications-II Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(134, 'EEE-3307', 'Electromagnetic waves and Fild', '3', '3.00', 'Third', 'Third', 2),
(135, 'Hum-3341', 'Socioeconomic and Environmental Engineering Projects sociology', '3', '3.00', 'Third', 'Third', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dep_table`
--

CREATE TABLE `dep_table` (
  `no` int(11) NOT NULL,
  `dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep_table`
--

INSERT INTO `dep_table` (`no`, `dep`) VALUES
(4, 'BBA'),
(6, 'Chemistry'),
(1, 'CSE'),
(3, 'Cvil'),
(2, 'EEE'),
(8, 'Hum'),
(5, 'Math'),
(7, 'ME'),
(9, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `nwu_data`
--

CREATE TABLE `nwu_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nwu_data`
--

INSERT INTO `nwu_data` (`id`, `data`) VALUES
(1, 'A University needs to be a centre of excellence for pursuit of knowledge and the highest seat of learning, research and intellectual development for any nation. To keep pace with the fast advancing world and to face the challenges of a new millennium, especially in this age of globalization ,a university plays the most important role by nourishing lofty ideals, reflecting ethical values, upholding culture and heritage and producing high quality intellectuals and human resources and skilled manpower who will be professionally sound and morally upright. North Western University will also endeavour to perform these functions by exploring and exposing the potentialities of learners.\r\n\r\nNorth Western University, the first ever full-fledged private University in Khulna, approved by the Government and the Bangladesh University Grants Commission, has come into existence under the auspices of a galaxy of distinguished and enthusiastic benevolent souls who profess genuine love for higher education. The noble objective of these people provides ample opportunities of learning to students both from urban and rural areas in the country at affordable expenses. The University has introduced need-oriented academic Programs keeping in view, the demand for trained manpower to be equipped with sound technological skills and devices within and outside the country. The University is determined to maintain a congenial and stimulating academic environment and keep the campus free from all such activities detrimental to the acquisition of knowledge and learning.\r\n\r\nLet us hope that with our concerted efforts, strong determination and close cooperation from everyone associate with this Alma Mater, we shall raise the University to international standard and reach it to the pinnacle of glory. Also, we believe this university will surely play a pioneering role in the private sector towards the extension of higher education in the country and advancement and progress of the nation as well.\r\n\r\nProfessor Dr. Tarapada Bhowmick\r\n\r\nVice-Chancellor\r\n\r\nNorth Western University\r\n\r\nKhulna'),
(2, 'North Western University, Khulna the first full-fledged private university in Khulna, Bangladesh was established on the 18th November, 2012. The University started Academic Activities from Spring Semester, 2013.\r\n\r\nThe Government of the People’s Republic of Bangladesh approved the establishment of North Western University under Private University Act. 2010.\r\n\r\nThe University started its activities with 4 Faculties, 12 Departments, 67 full time teachers, 61 part time teachers and 489 students. At present the University consists of 4 Faculties, 14 Departments. The number of students and teachers have risen to about 3400 and 140 respectively.\r\n\r\nThe first fresh admission classes had 489 students enrolled in 12 Departments: Business Administration 62 students, BA Hons in English 9 students, MA in English 5 students, LLB 10 students, MBA-1 Year 27 students, EMBA 31 students, MBA-2 Year 11 students, MDS 7 students, Computer Science & Engineering 92 students, Electrical & Electronic Engineering 150 students, Civil Engineering 84 students.\r\n\r\nThe main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students. Since its inception the University has a distinct character of having distinguished scholars as faculties who have enriched the global pool of knowledge by making notable contributions in the fields of teaching and research.\r\n\r\nThe high standard of education and research for the University was set by its Vice-Chancellor, Prof. Dr. Khondoker Bazlul Hoque.\r\n\r\nAccording to the provision of the Private University Act-2010, Talukder Abdul Khaleque is the current Chairman of the Board of Trustees, North Western University and North Western University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman.\r\n\r\nThe Vice-Chancellor, as the chief executive and academic officer runs the university with the cooperation of the statutory bodies operating under the provision of the Private University Act. 2010. The Registrar maintains the university records including admissions, keeps liaison with Ministry of Education, University Grants Commission (UGC) and other relevant authorities. The Controller of Examinations deals with all functions relating to preservation of records of Examinations, preparation and publication of results, processing confidential papers etc.\r\n\r\nNWU has the authority, under its Charter, to impart education and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering and law. Currently, NWU offers Bachelor’s and Master’s degrees in 16 subjects (10 Bachelor’s degrees and 6 Master’s degrees).\r\n\r\nThe university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs of the country.\r\n\r\nProf. Dr. Khondoker Bazlul Hoque, Vice-Chancellor (honourary) is providing leadership in improving, expanding and diversifying various academic programs. NWU now has 76 (fulltime) faculty members. All faculty members have higher degrees from reputed domestic and foreign universities.\r\n\r\nNorth Western University is dedicated to the advancement of learning, and is committed to promoting research in all fields of knowledge. As there are plans for further expansion of facilities, plans for new avenues and opportunities, the course curricula are updated and new research projects are undertaken every year. As the pioneer and the highest seat of learning in the country, the University has taken the task of fostering the transformation processes of the individual students and the country as a whole through its educational and research facilities keeping pace with the demands of the day.'),
(3, '1. Talukder Abdul Khaleque (Chairman & Trustee)\r\n\r\n2. S. M. Kamal Hossain (Vice Chairman & Trustee)\r\n\r\n3. M. Abdur Razzaque (Trustee)\r\n\r\n4. Syeda Lutfa Huq (Trustee)\r\n\r\n5. Nahid Newazi (Trustee)\r\n\r\n6. Syed Mohammed Obaidullah (Trustee)\r\n\r\n7. Prof. Dr. Mohammed Sirajul Huq Chowdhury(Trustee)\r\n\r\n8. Shahabuddin Ahmed (Trustee)\r\n\r\n9. Md. Towhidul Islam Azad (Trustee)\r\n\r\n10. Prof. Dr. Khondoker Bazlul Hoque (Trustee)\r\n\r\n11. Habibunnahar (Trustee)\r\n\r\n12. Mujibor Rahman Shamim (Trustee)\r\n\r\n13. Shabana Shaheen (Trustee)\r\n\r\n14. Morjina Islam (Trustee)\r\n\r\n15. Nurani Akther (Trustee)\r\n\r\n16. Pabitra Kumar Sarkar (Trustee)\r\n\r\n17. Saeir J. Sattar (Trustee)\r\n\r\n18. Dr. Md. Rezaul Alam (Secretary & Trustee)'),
(4, 'To develop, maintain, and sustain an overall knowledge of the university’s core research areas of interest and competence. Over a period time, these core areas should be expanded to include new areas reflecting the nature of growth of the university. Conduct regular periodic meetings with aspiring faculty members/researchers of all academic areas and maintain regular interaction with them to assist them in developing their own research programs. Supervise a reviewing committee entrusted with annually/semi annually reviewing research proposals submitted for funding from university fund allocated exclusively for research. This task will focus intensely on identifying worthwhile, knowledge enhancing projects which will most likely make a significant contribution in the specific area of interest. Develop, maintain and strengthen association of all well-recognized national academic association of repute and participate in all seminars, workshops, conferences sponsored by similar organizations. Nominate appropriate faculty members to participate in such seminars in order to increase the visibility of southeast university.');

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_table`
--

CREATE TABLE `student_mark_table` (
  `studentMarkId` int(11) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `techerCourseId` int(11) NOT NULL,
  `ct1` float NOT NULL DEFAULT '0',
  `ct2` float NOT NULL DEFAULT '0',
  `ct3` float NOT NULL DEFAULT '0',
  `totalCt` float NOT NULL DEFAULT '0',
  `present` float NOT NULL DEFAULT '0',
  `assignment` float NOT NULL DEFAULT '0',
  `final` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_mark_table`
--

INSERT INTO `student_mark_table` (`studentMarkId`, `id`, `techerCourseId`, `ct1`, `ct2`, `ct3`, `totalCt`, `present`, `assignment`, `final`, `total`) VALUES
(1, '20151006010', 1, 1, 1, 1, 1, 10, 1, 55, 67),
(2, '20151006010', 2, 15, 20, 4, 17.5, 10, 10, 55, 92.5),
(3, '20151005010', 1, 0, 1, 0, 1, 0, 0, 55, 56),
(4, '20151005010', 2, 15, 20, 0, 17.5, 10, 10, 60, 97.5);

-- --------------------------------------------------------

--
-- Table structure for table `techer_course_table`
--

CREATE TABLE `techer_course_table` (
  `techerCourseId` int(10) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `courseId` int(10) NOT NULL,
  `ctNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techer_course_table`
--

INSERT INTO `techer_course_table` (`techerCourseId`, `id`, `exam`, `courseId`, `ctNo`, `ctType`) VALUES
(1, '20121001', 'Summer-2017', 2, '2', 'BestOne'),
(2, '20121001', 'Summer-2017', 3, '2', 'BestTwo');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`no`, `type`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`name`, `id`, `password`, `email`, `dep`, `session`, `type`, `gender`, `mobile`, `birth`, `adress`, `location`, `longitude`, `latitude`) VALUES
('Injamamul huqe', '20121001', '20121001', 'Injamamul@gmail.com', 1, 'Spring-2012', 1, 'Male', '01789456133', '1986-02-04', 'Khalishpur Jute Mill, Khulna, BIDC Road, Khulna, Khulna Division, Bangladesh', 'BIDC Rd, Khulna 9000, Bangladesh', '89.54085550000002', '22.8623939'),
('Nagib Mahafug', '20131003', '1003', 'Nagib@gmail.com', 1, 'Spring-2013', 1, 'Male', '01589456133', '9-5-16', 'Helani Place, Hilo, HI, United States', 'Helani Pl, Hilo, HI 96720, USA', '-155.11099760000002', '19.7014473'),
('Asif Al Jun', '20141002', '1002', 'Asif@gmail.com', 1, 'Spring-2014', 1, 'Male', '01689456133', '', '', '', '', ''),
('Nazmul Hohain', '20142001', '2001', 'Nazmul@gmail.com', 2, 'Spring-2014', 1, 'Male', '01989456133', '', '', '', '', ''),
('Abul Kalam', '20142003', '2003', 'Abul@gmail.com', 2, 'Spring-2014', 2, 'Male', '01789456133', '', '', '', '', ''),
('Tariqul Islam', '20151005010', '20151005010', 'Tariqul@gmail.com', 1, 'Spring-2015', 3, 'Male', '01889456133', '', '', '', '', ''),
('Riadulislam', '20151006010', '20151006010', 'riad@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '1996-03-06', 'Helani Tea Store, Kadarnath Road, Khulna, Bangladesh', 'Kadarnath Rd, Khulna, Bangladesh', '89.51448260000006', '22.8835517'),
('Tanvir islam', '20151036010', '20151036010', 'tanvir@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Pallab kumar', '20151043010', '20151043010', 'pallab@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Rasidul Islam', '20152002', '2002', 'Rasidul.com', 2, 'Spring-2015', 2, 'Male', '016894646133', '', '', '', '', ''),
('Tariqul Islam', '20152005010', '20152005010', 'Tariquasl@gmail.com', 2, 'Spring-2015', 3, 'Male', '01888456133', '', '', '', '', ''),
('Riadulislam', '20152006010', '20152006010', 'riadas@gmail.com', 2, 'Spring-2015', 3, 'Male', '019894556133', '', '', '', '', ''),
('Tanvir islam', '20152036010', '20152036010', 'tanviras@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989566133', '', '', '', '', ''),
('Pallab kumar', '20152043010', '20152043010', 'pallabas@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989276133', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `count1`
--
ALTER TABLE `count1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `count2`
--
ALTER TABLE `count2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `samester` (`samester`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `UQ_No_Dep` (`code`,`dep`),
  ADD KEY `dep` (`dep`);

--
-- Indexes for table `dep_table`
--
ALTER TABLE `dep_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `dep` (`dep`);

--
-- Indexes for table `nwu_data`
--
ALTER TABLE `nwu_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD PRIMARY KEY (`studentMarkId`),
  ADD UNIQUE KEY `UQ_Id` (`id`,`techerCourseId`),
  ADD KEY `techerCourseId` (`techerCourseId`);

--
-- Indexes for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD PRIMARY KEY (`techerCourseId`),
  ADD UNIQUE KEY `UQ_id_exam` (`id`,`exam`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `dep` (`dep`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  MODIFY `studentMarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  MODIFY `techerCourseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_table`
--
ALTER TABLE `course_table`
  ADD CONSTRAINT `course_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`);

--
-- Constraints for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD CONSTRAINT `student_mark_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `student_mark_table_ibfk_2` FOREIGN KEY (`techerCourseId`) REFERENCES `techer_course_table` (`techerCourseId`);

--
-- Constraints for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD CONSTRAINT `techer_course_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `techer_course_table_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course_table` (`courseId`);

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`),
  ADD CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_table` (`no`);
--
-- Database: `id1337164_nwu`
--
CREATE DATABASE IF NOT EXISTS `id1337164_nwu` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id1337164_nwu`;

-- --------------------------------------------------------

--
-- Table structure for table `count1`
--

CREATE TABLE `count1` (
  `id` int(11) NOT NULL,
  `year` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count1`
--

INSERT INTO `count1` (`id`, `year`) VALUES
(1, 'First'),
(4, 'Forth'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `count2`
--

CREATE TABLE `count2` (
  `id` int(11) NOT NULL,
  `samester` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `count2`
--

INSERT INTO `count2` (`id`, `samester`) VALUES
(1, 'First'),
(2, 'Second'),
(3, 'Third');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `courseId` int(11) NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `houre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `creadit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `samester` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`courseId`, `code`, `titel`, `houre`, `creadit`, `samester`, `year`, `dep`) VALUES
(2, 'CSE-1101', 'Computer Basic and Programming', '3', '3.00', 'First', 'First', 1),
(3, 'CSE-1102', 'Computer Basic and Programming Sessional', '3', '1.50', 'First', 'First', 1),
(4, 'Hum-1141', 'English and Human Communication', '1.5', '1.5', 'First', 'First', 1),
(5, 'Math-1131', 'Mathematics I', '3', '3.00', 'First', 'First', 1),
(6, 'Phy-1133', 'Physics I', '3', '3.00', 'First', 'First', 1),
(7, 'Phy-1134', 'Physics Sessional I', '1.5', '0.75', 'First', 'First', 1),
(8, 'CSE-1201', 'Object Oriented Programming', '3', '3.00', 'Second', 'First', 1),
(9, 'CSE-1202', 'Object Oriented Programming Sessional', '1.5', '0.75', 'Second', 'First', 1),
(10, 'CSE-1204', 'Softwarw Development Sessional-I', '3', '1.5', 'Second', 'First', 1),
(11, 'EEE-1221', 'Electrical Circuits', '1.5', '1.5', 'Second', 'First', 1),
(12, 'EEE-1222', 'Electrical Circuits Sessional', '1.5', '0.75', 'Second', 'First', 1),
(13, 'ME-1223', 'Mechanicalcs and Heat Engineering', '1.5', '1.5', 'Second', 'First', 1),
(14, 'ME-1224', 'Engineering Drawing CAD Sessional', '1.5', '0.75', 'Second', 'First', 1),
(15, 'Math-1231', 'Mathematics-II', '3', '3.00', 'Second', 'First', 1),
(16, 'CSE-1301', 'Digital Logic Design', '3', '3.00', 'Third', 'First', 1),
(17, 'CSE-1302', 'Digital Logic Design Sessional', '1.5', '0.75', 'Third', 'First', 1),
(18, 'Math-1331', 'Mathematics-III', '3', '3.00', 'Third', 'First', 1),
(19, 'Phy-1333', 'Physics-II', '3', '3.00', 'Third', 'First', 1),
(20, 'Phy-1334', 'Physics-II Sessional', '1.5', '0.75', 'Third', 'First', 1),
(21, 'Chem-1335', 'Chemistry', '3', '3.00', 'Third', 'First', 1),
(22, 'Chem-1336', 'Chemistry Sessional', '1.5', '0.75', 'Third', 'First', 1),
(23, 'CSE-2101', 'Data Structures', '3', '3.00', 'Frist', 'Second', 1),
(24, 'CSE-2102', 'Data Structures Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(25, 'EEE-2121', 'Electronics and Circuits', '3', '3.00', 'Frist', 'Second', 1),
(26, 'EEE-2122', 'Electronics and Circuits Sessional', '1.5', '0.75', 'Frist', 'Second', 1),
(27, 'Math-2131', 'Mathematics-IV', '3', '3.00', 'Frist', 'Second', 1),
(28, 'Hum-2141', 'Government and Sociology', '1.5', '1.5', 'Frist', 'Second', 1),
(29, 'CSE-2201', 'Algorithms', '3', '3.00', 'Second', 'Second', 1),
(30, 'CSE-2202', 'Algorithms Sessional', '3', '1.5', 'Second', 'Second', 1),
(31, 'CSE-2204', 'Software Development Sessional-II', '3', '1.5', 'Second', 'Second', 1),
(32, 'CSE-2205', 'Discrete Mathematics', '3', '3.00', 'Second', 'Second', 1),
(33, 'Math-2231', 'Matematics-V', '3', '3.00', 'Second', 'Second', 1),
(34, 'Hum-2241', 'Economics', '1.5', '1.5', 'Second', 'Second', 1),
(35, 'CSE-2301', 'Microprocessors and Microcomputers', '3', '3.00', 'Third', 'Second', 1),
(36, 'CSE-2302', 'Microprocessors and Microcomputers Sessional', '3', '1.5', 'Third', 'Second', 1),
(37, 'CSE-2303', 'Numerical Analysis', '3', '3.00', 'Third', 'Second', 1),
(38, 'CSE-2304', 'Numerical Analysis Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(39, 'EEE-2321', 'Electrical Technology', '1.5', '1.5', 'Third', 'Second', 1),
(40, 'EEE-2322', 'Electrical Technology Sessional', '1.5', '0.75', 'Third', 'Second', 1),
(41, 'Hum-2341', 'Psychology', '1.5', '1.5', 'Third', 'Second', 1),
(42, 'CSE-3101', 'Applied Probability and Queuing Theory', '3', '3.00', 'Frist', 'Third', 1),
(43, 'CSE-3104', 'Internet Programming Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(44, 'CSE-3106', 'Software Development Sessional III', '3', '1.5', 'Frist', 'Third', 1),
(45, 'CSE-3107', 'Database Systems', '3', '3.00', 'Frist', 'Third', 1),
(46, 'CSE-3108', 'Database Systems Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(47, 'EEE-3121', 'Digital Electronics and Pulse Techniques', '3', '3.00', 'Frist', 'Third', 1),
(48, 'EEE-3122', 'Digital Electronic and Pulse Techniques Sessional', '1.5', '0.75', 'Frist', 'Third', 1),
(49, 'Hum-3141', 'Accounting', '1.5', '1.5', 'Frist', 'Third', 1),
(50, 'CSE-3201', 'Artificial Intelligence and Expert System', '3', '3.00', 'Second', 'Third', 1),
(51, 'CSE-3202', 'Artificial Intelligence and Expert System Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(52, 'CSE-3203', 'Software Engineering', '3', '3.00', 'Second', 'Third', 1),
(53, 'CSE-3204', 'Software Engineering Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(54, 'CSE-3205', 'Computer Networks', '3', '3.00', 'Second', 'Third', 1),
(55, 'CSE-3206', 'Computer Network Sessional', '1.5', '0.75', 'Second', 'Third', 1),
(56, 'Hum-3241', 'Industrial Management and Law', '1.5', '1.5', 'Second', 'Third', 1),
(57, 'CSE-3301 ', 'System Programming and Operating System', '3', '3.00', 'Third', 'Third', 1),
(58, 'CSE-3302 ', 'System Programming and Operating System Sessional', '1.5', '0.75', 'Third', 'Third', 1),
(59, 'CSE-3303', 'Computational Geomatry', '3', '3.00', 'Third', 'Third', 1),
(60, 'CSE-3305', 'Computer Architecture', '3', '3.00', 'Third', 'Third', 1),
(61, 'EEE-3321', 'Data Communication', '3', '3.00', 'Third', 'Third', 1),
(62, 'CSE-4101', 'Neural Netword and Fuzzy System', '3', '3.00', 'Frist', 'Forth', 1),
(63, 'CSE-4102', 'Neural Netword and Fuzzy System Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(64, 'CSE-4103', 'Compiler Design', '3', '3.00', 'Frist', 'Forth', 1),
(65, 'CSE-4104', 'Compiler Design Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(66, 'CSE-4105', 'Parallel and Distribuled Processing', '3', '3.00', 'Frist', 'Forth', 1),
(67, 'EEE-4121', 'Electrical Measurement and Instrumentation', '3', '3.00', 'Frist', 'Forth', 1),
(68, 'EEE-4122', 'Electrical Measurement and Instrumentation Sessional', '1.5', '0.75', 'Frist', 'Forth', 1),
(69, 'CSE-4201', 'Information System Analysis and Design', '3', '3.00', 'Second', 'Forth', 1),
(70, 'CSE-4203', 'Advance Computer Architecture', '3', '3.00', 'Second', 'Forth', 1),
(71, 'CSE-4205', 'Degital System Design', '3', '3.00', 'Second', 'Forth', 1),
(72, 'CSE-4200', 'Research Project', '3', '1.5', 'Second', 'Forth', 1),
(73, 'EEE-4221', 'VLSI Design', '3', '3.00', 'Second', 'Forth', 1),
(74, 'CSE-4301', 'Computer Graphics and Pattern Recognition', '3', '3.00', 'Third', 'Forth', 1),
(75, 'CSE-4302', 'Computer Graphics and Pattern Recognition Sessional', '1.5', '0.75', 'Third', 'Forth', 1),
(76, 'CSE-4303', 'Robotics and Computer Vision', '3', '3.00', 'Third', 'Forth', 1),
(77, 'CSE-4305', 'Information Security and Control', '1.5', '1.5', 'Third', 'Forth', 1),
(78, 'CSE-4300', 'Project and Thesis II', '3', '1.5', 'Third', 'Forth', 1),
(79, 'CSE-4320', 'Industrial Training', '3', '3.00', 'Third', 'Forth', 1),
(80, 'CSE-4307', 'Human Computer Interaction', '3', '3.00', 'Third', 'Forth', 1),
(81, 'EEE-1101', 'Electrical Circuit-1', '3', '3.00', 'First', 'First', 2),
(82, 'EEE-1102', 'Electrical Circuit-1 Sessional', '3', '1.5', 'First', 'First', 2),
(83, 'Math-1131', 'Engineering Mathematics-1', '3', '3.00', 'First', 'First', 2),
(84, 'Phy-1133', 'Physics-1', '3', '3.00', 'First', 'First', 2),
(85, 'Phy-1134', 'Physics-1 Sessional', '1.5', '0.75', 'First', 'First', 2),
(86, 'EEE-1201', 'Electrical Circuit-2', '3', '3.00', 'Second', 'First', 2),
(87, 'EEE-1202', 'Electrical Circuit-2 Sessional', '1.5', '0.75', 'Second', 'First', 2),
(88, 'CSE-1221', 'Computer Programming', '3', '3.00', 'Second', 'First', 2),
(89, 'CSE-1222', 'Computer Programming Sessional', '1.5', '0.75', 'Second', 'First', 2),
(90, 'Math-1231', 'Engineering Mathematics-2', '3', '3.00', 'Second', 'First', 2),
(91, 'Hum-1241', 'Funtion English & Sociology', '3', '3.00', 'Second', 'First', 2),
(92, 'EEE-1301', 'Basic Electrical & Electronics design Engineering', '3', '3.00', 'Third', 'First', 2),
(93, 'EEE-1302', 'Basic Electrical & Electronics design Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(94, 'ME-1321', 'Basic Mechanical Basic Engineering', '3', '3.00', 'Third', 'First', 2),
(95, 'ME-1322', 'Basic Mechanical Basic Engineering Sessional', '1.5', '0.75', 'Third', 'First', 2),
(96, 'Math-1331', 'Engineering Mathematics-III', '3', '3.00', 'Third', 'First', 2),
(97, 'Chem-1335', 'Chemistry-1', '3', '3.00', 'Third', 'First', 2),
(98, 'Chem-1336', 'Chemistry-1 Sessional', '1.5', '0.75', 'Third', 'First', 2),
(99, 'EEE-2101', 'Electrical Machines-1', '3', '3.00', 'Frist', 'Second', 2),
(100, 'EEE-2102', 'Electrical Machines-1 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(101, 'Math-2131', 'Engineering Mathematics-4', '3', '3.00', 'Frist', 'Second', 2),
(102, 'Phy-2133', 'Physics-2', '3', '3.00', 'Frist', 'Second', 2),
(103, 'Phy-2134', 'Physics-2 Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(104, 'Chem-2335', 'Chemistry-II', '3', '3.00', 'Frist', 'Second', 2),
(105, 'Chem-2336', 'Chemistry-II Sessional', '1.5', '0.75', 'Frist', 'Second', 2),
(106, 'EEE-2201', 'Electrical Machines-II', '3', '3.00', 'Second', 'Second', 2),
(107, 'EEE-2202', 'Electrical Machines-II Sessional', '1.5', '0.75', 'Second', 'Second', 2),
(108, 'Math-2231', 'Engineering Mathematics-V', '3', '3.00', 'Second', 'Second', 2),
(109, 'Phy-2233', 'Physics-III', '3', '3.00', 'Second', 'Second', 2),
(110, 'Phy-2234', 'Physics-III Sessional', '3', '0.75', 'Second', 'Second', 2),
(111, 'EEE-2301', 'Electrical Device and Circuit-I', '3', '3.00', 'Third', 'Second', 2),
(112, 'EEE-2302', 'Electrical Device and Circuit-I Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(113, 'EEE-2303', 'Transmission and Disttribution of Electrical Power', '3', '3.00', 'Third', 'Second', 2),
(114, 'CE-2321', 'Mechanics of Solids', '3', '3.00', 'Third', 'Second', 2),
(115, 'CE-2322', 'Mechanics of Solids Sessional', '1.5', '0.75', 'Third', 'Second', 2),
(116, 'Math-2331', 'Engineering Mathematics-VI', '3', '3.00', 'Third', 'Second', 2),
(117, 'EEE-3101', 'Electric device and circuits-II', '3', '3.00', 'Frist', 'Third', 2),
(118, 'EEE-3102', 'Electric device and circuits-II Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(119, 'EEE-3103', 'Electrical & Electronic Measurements', '3', '3.00', 'Frist', 'Third', 2),
(120, 'EEE-3104', 'Electrical & Electronic Measurements Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(121, 'EEE-3105', 'Telecommunications-I', '3', '3.00', 'Frist', 'Third', 2),
(122, 'EEE-3106', 'Telecommunications-I Sessional', '1.5', '0.75', 'Frist', 'Third', 2),
(123, 'CSE-3121', 'Programing Techniques & Numerical Analysis', '3', '3.00', 'Frist', 'Third', 2),
(124, 'EEE-3201', 'Electric device and circuits-III', '3', '3.00', 'Second', 'Third', 2),
(125, 'EEE-3202', 'Electric device and circuits-III Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(126, 'EEE-3203', 'Digital Electronics', '3', '3.00', 'Second', 'Third', 2),
(127, 'EEE-3204', 'Digital Electronics Sessional', '1.5', '0.75', 'Second', 'Third', 2),
(128, 'HUM-3241', 'Industrial Management', '3', '3.00', 'Second', 'Third', 2),
(129, 'EEE-3301', 'Micropricessor & Microcomputer', '3', '3.00', 'Third', 'Third', 2),
(130, 'EEE-3302', 'Micropricessor & Microcomputer Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(131, 'EEE-3304', 'Software Development Sessional', '3', '1.50', 'Third', 'Third', 2),
(132, 'EEE-3305', 'Telecommunications-II', '3', '3.00', 'Third', 'Third', 2),
(133, 'EEE-3306', 'Telecommunications-II Sessional', '1.5', '0.75', 'Third', 'Third', 2),
(134, 'EEE-3307', 'Electromagnetic waves and Fild', '3', '3.00', 'Third', 'Third', 2),
(135, 'Hum-3341', 'Socioeconomic and Environmental Engineering Projects sociology', '3', '3.00', 'Third', 'Third', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dep_table`
--

CREATE TABLE `dep_table` (
  `no` int(11) NOT NULL,
  `dep` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep_table`
--

INSERT INTO `dep_table` (`no`, `dep`) VALUES
(4, 'BBA'),
(6, 'Chemistry'),
(1, 'CSE'),
(3, 'Cvil'),
(2, 'EEE'),
(8, 'Hum'),
(5, 'Math'),
(7, 'ME'),
(9, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `nwu_data`
--

CREATE TABLE `nwu_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nwu_data`
--

INSERT INTO `nwu_data` (`id`, `data`) VALUES
(1, 'A University needs to be a centre of excellence for pursuit of knowledge and the highest seat of learning, research and intellectual development for any nation. To keep pace with the fast advancing world and to face the challenges of a new millennium, especially in this age of globalization ,a university plays the most important role by nourishing lofty ideals, reflecting ethical values, upholding culture and heritage and producing high quality intellectuals and human resources and skilled manpower who will be professionally sound and morally upright. North Western University will also endeavour to perform these functions by exploring and exposing the potentialities of learners.\r\n\r\nNorth Western University, the first ever full-fledged private University in Khulna, approved by the Government and the Bangladesh University Grants Commission, has come into existence under the auspices of a galaxy of distinguished and enthusiastic benevolent souls who profess genuine love for higher education. The noble objective of these people provides ample opportunities of learning to students both from urban and rural areas in the country at affordable expenses. The University has introduced need-oriented academic Programs keeping in view, the demand for trained manpower to be equipped with sound technological skills and devices within and outside the country. The University is determined to maintain a congenial and stimulating academic environment and keep the campus free from all such activities detrimental to the acquisition of knowledge and learning.\r\n\r\nLet us hope that with our concerted efforts, strong determination and close cooperation from everyone associate with this Alma Mater, we shall raise the University to international standard and reach it to the pinnacle of glory. Also, we believe this university will surely play a pioneering role in the private sector towards the extension of higher education in the country and advancement and progress of the nation as well.\r\n\r\nProfessor Dr. Tarapada Bhowmick\r\n\r\nVice-Chancellor\r\n\r\nNorth Western University\r\n\r\nKhulna'),
(2, 'North Western University, Khulna the first full-fledged private university in Khulna, Bangladesh was established on the 18th November, 2012. The University started Academic Activities from Spring Semester, 2013.\r\n\r\nThe Government of the People’s Republic of Bangladesh approved the establishment of North Western University under Private University Act. 2010.\r\n\r\nThe University started its activities with 4 Faculties, 12 Departments, 67 full time teachers, 61 part time teachers and 489 students. At present the University consists of 4 Faculties, 14 Departments. The number of students and teachers have risen to about 3400 and 140 respectively.\r\n\r\nThe first fresh admission classes had 489 students enrolled in 12 Departments: Business Administration 62 students, BA Hons in English 9 students, MA in English 5 students, LLB 10 students, MBA-1 Year 27 students, EMBA 31 students, MBA-2 Year 11 students, MDS 7 students, Computer Science & Engineering 92 students, Electrical & Electronic Engineering 150 students, Civil Engineering 84 students.\r\n\r\nThe main purpose of the University was to create new areas of knowledge and disseminate this knowledge to the society through its students. Since its inception the University has a distinct character of having distinguished scholars as faculties who have enriched the global pool of knowledge by making notable contributions in the fields of teaching and research.\r\n\r\nThe high standard of education and research for the University was set by its Vice-Chancellor, Prof. Dr. Khondoker Bazlul Hoque.\r\n\r\nAccording to the provision of the Private University Act-2010, Talukder Abdul Khaleque is the current Chairman of the Board of Trustees, North Western University and North Western University Trust. The Board of Trustees (BOT), the apex body which provides the overall policy guidelines and approves annual budget of the University, is headed by its Chairman.\r\n\r\nThe Vice-Chancellor, as the chief executive and academic officer runs the university with the cooperation of the statutory bodies operating under the provision of the Private University Act. 2010. The Registrar maintains the university records including admissions, keeps liaison with Ministry of Education, University Grants Commission (UGC) and other relevant authorities. The Controller of Examinations deals with all functions relating to preservation of records of Examinations, preparation and publication of results, processing confidential papers etc.\r\n\r\nNWU has the authority, under its Charter, to impart education and confer undergraduate and graduate degrees in all branches of arts, business and sciences, including engineering and law. Currently, NWU offers Bachelor’s and Master’s degrees in 16 subjects (10 Bachelor’s degrees and 6 Master’s degrees).\r\n\r\nThe university follows the North American academic system with all its distinctive features-semesters, credit hours, letter grades, one examiner system and so on. Its curricula, when first introduced, were reviewed by relevant departments of University of Illinois, Urbana-Champaign, and University of California at Berkeley, USA, and duly approved by University Grants Commission, Bangladesh. The academic programs are continually updated and adapted to meet the changing needs of the country.\r\n\r\nProf. Dr. Khondoker Bazlul Hoque, Vice-Chancellor (honourary) is providing leadership in improving, expanding and diversifying various academic programs. NWU now has 76 (fulltime) faculty members. All faculty members have higher degrees from reputed domestic and foreign universities.\r\n\r\nNorth Western University is dedicated to the advancement of learning, and is committed to promoting research in all fields of knowledge. As there are plans for further expansion of facilities, plans for new avenues and opportunities, the course curricula are updated and new research projects are undertaken every year. As the pioneer and the highest seat of learning in the country, the University has taken the task of fostering the transformation processes of the individual students and the country as a whole through its educational and research facilities keeping pace with the demands of the day.'),
(3, '1. Talukder Abdul Khaleque (Chairman & Trustee)\r\n\r\n2. S. M. Kamal Hossain (Vice Chairman & Trustee)\r\n\r\n3. M. Abdur Razzaque (Trustee)\r\n\r\n4. Syeda Lutfa Huq (Trustee)\r\n\r\n5. Nahid Newazi (Trustee)\r\n\r\n6. Syed Mohammed Obaidullah (Trustee)\r\n\r\n7. Prof. Dr. Mohammed Sirajul Huq Chowdhury(Trustee)\r\n\r\n8. Shahabuddin Ahmed (Trustee)\r\n\r\n9. Md. Towhidul Islam Azad (Trustee)\r\n\r\n10. Prof. Dr. Khondoker Bazlul Hoque (Trustee)\r\n\r\n11. Habibunnahar (Trustee)\r\n\r\n12. Mujibor Rahman Shamim (Trustee)\r\n\r\n13. Shabana Shaheen (Trustee)\r\n\r\n14. Morjina Islam (Trustee)\r\n\r\n15. Nurani Akther (Trustee)\r\n\r\n16. Pabitra Kumar Sarkar (Trustee)\r\n\r\n17. Saeir J. Sattar (Trustee)\r\n\r\n18. Dr. Md. Rezaul Alam (Secretary & Trustee)'),
(4, 'To develop, maintain, and sustain an overall knowledge of the university’s core research areas of interest and competence. Over a period time, these core areas should be expanded to include new areas reflecting the nature of growth of the university. Conduct regular periodic meetings with aspiring faculty members/researchers of all academic areas and maintain regular interaction with them to assist them in developing their own research programs. Supervise a reviewing committee entrusted with annually/semi annually reviewing research proposals submitted for funding from university fund allocated exclusively for research. This task will focus intensely on identifying worthwhile, knowledge enhancing projects which will most likely make a significant contribution in the specific area of interest. Develop, maintain and strengthen association of all well-recognized national academic association of repute and participate in all seminars, workshops, conferences sponsored by similar organizations. Nominate appropriate faculty members to participate in such seminars in order to increase the visibility of southeast university.');

-- --------------------------------------------------------

--
-- Table structure for table `student_mark_table`
--

CREATE TABLE `student_mark_table` (
  `studentMarkId` int(11) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `techerCourseId` int(11) NOT NULL,
  `ct1` float NOT NULL DEFAULT '0',
  `ct2` float NOT NULL DEFAULT '0',
  `ct3` float NOT NULL DEFAULT '0',
  `totalCt` float NOT NULL DEFAULT '0',
  `present` float NOT NULL DEFAULT '0',
  `assignment` float NOT NULL DEFAULT '0',
  `final` float NOT NULL DEFAULT '0',
  `total` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_mark_table`
--

INSERT INTO `student_mark_table` (`studentMarkId`, `id`, `techerCourseId`, `ct1`, `ct2`, `ct3`, `totalCt`, `present`, `assignment`, `final`, `total`) VALUES
(1, '20151006010', 1, 1, 1, 1, 1, 10, 1, 55, 67),
(2, '20151006010', 2, 15, 20, 4, 17.5, 10, 10, 55, 92.5),
(3, '20151005010', 1, 0, 1, 0, 1, 0, 0, 55, 56),
(4, '20151005010', 2, 15, 20, 0, 17.5, 10, 10, 60, 97.5);

-- --------------------------------------------------------

--
-- Table structure for table `techer_course_table`
--

CREATE TABLE `techer_course_table` (
  `techerCourseId` int(10) NOT NULL,
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `exam` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `courseId` int(10) NOT NULL,
  `ctNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ctType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `techer_course_table`
--

INSERT INTO `techer_course_table` (`techerCourseId`, `id`, `exam`, `courseId`, `ctNo`, `ctType`) VALUES
(1, '20121001', 'Summer-2017', 2, '2', 'BestOne'),
(2, '20121001', 'Summer-2017', 3, '2', 'BestTwo');

-- --------------------------------------------------------

--
-- Table structure for table `type_table`
--

CREATE TABLE `type_table` (
  `no` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_table`
--

INSERT INTO `type_table` (`no`, `type`) VALUES
(1, 'Admin'),
(3, 'Student'),
(2, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dep` int(11) NOT NULL,
  `session` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `birth` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`name`, `id`, `password`, `email`, `dep`, `session`, `type`, `gender`, `mobile`, `birth`, `adress`, `location`, `longitude`, `latitude`) VALUES
('Injamamul huqe', '20121001', '20121001', 'Injamamul@gmail.com', 1, 'Spring-2012', 1, 'Male', '01789456133', '1986-02-04', 'Khalishpur Jute Mill, Khulna, BIDC Road, Khulna, Khulna Division, Bangladesh', 'BIDC Rd, Khulna 9000, Bangladesh', '89.54085550000002', '22.8623939'),
('Nagib Mahafug', '20131003', '1003', 'Nagib@gmail.com', 1, 'Spring-2013', 1, 'Male', '01589456133', '9-5-16', 'Helani Place, Hilo, HI, United States', 'Helani Pl, Hilo, HI 96720, USA', '-155.11099760000002', '19.7014473'),
('Asif Al Jun', '20141002', '1002', 'Asif@gmail.com', 1, 'Spring-2014', 1, 'Male', '01689456133', '', '', '', '', ''),
('Nazmul Hohain', '20142001', '2001', 'Nazmul@gmail.com', 2, 'Spring-2014', 1, 'Male', '01989456133', '', '', '', '', ''),
('Abul Kalam', '20142003', '2003', 'Abul@gmail.com', 2, 'Spring-2014', 2, 'Male', '01789456133', '', '', '', '', ''),
('Tariqul Islam', '20151005010', '20151005010', 'Tariqul@gmail.com', 1, 'Spring-2015', 3, 'Male', '01889456133', '', '', '', '', ''),
('Riadulislam', '20151006010', '20151006010', 'riad@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '1996-03-06', 'Helani Tea Store, Kadarnath Road, Khulna, Bangladesh', 'Kadarnath Rd, Khulna, Bangladesh', '89.51448260000006', '22.8835517'),
('Tanvir islam', '20151036010', '20151036010', 'tanvir@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Pallab kumar', '20151043010', '20151043010', 'pallab@gmail.com', 1, 'Spring-2015', 3, 'Male', '01989456133', '', '', '', '', ''),
('Rasidul Islam', '20152002', '2002', 'Rasidul.com', 2, 'Spring-2015', 2, 'Male', '016894646133', '', '', '', '', ''),
('Tariqul Islam', '20152005010', '20152005010', 'Tariquasl@gmail.com', 2, 'Spring-2015', 3, 'Male', '01888456133', '', '', '', '', ''),
('Riadulislam', '20152006010', '20152006010', 'riadas@gmail.com', 2, 'Spring-2015', 3, 'Male', '019894556133', '', '', '', '', ''),
('Tanvir islam', '20152036010', '20152036010', 'tanviras@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989566133', '', '', '', '', ''),
('Pallab kumar', '20152043010', '20152043010', 'pallabas@gmail.com', 2, 'Spring-2015', 3, 'Male', '01989276133', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `count1`
--
ALTER TABLE `count1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`);

--
-- Indexes for table `count2`
--
ALTER TABLE `count2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `samester` (`samester`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`courseId`),
  ADD UNIQUE KEY `UQ_No_Dep` (`code`,`dep`),
  ADD KEY `dep` (`dep`);

--
-- Indexes for table `dep_table`
--
ALTER TABLE `dep_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `dep` (`dep`);

--
-- Indexes for table `nwu_data`
--
ALTER TABLE `nwu_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD PRIMARY KEY (`studentMarkId`),
  ADD UNIQUE KEY `UQ_Id` (`id`,`techerCourseId`),
  ADD KEY `techerCourseId` (`techerCourseId`);

--
-- Indexes for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD PRIMARY KEY (`techerCourseId`),
  ADD UNIQUE KEY `UQ_id_exam` (`id`,`exam`,`courseId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `type_table`
--
ALTER TABLE `type_table`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `dep` (`dep`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `courseId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  MODIFY `studentMarkId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  MODIFY `techerCourseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_table`
--
ALTER TABLE `course_table`
  ADD CONSTRAINT `course_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`);

--
-- Constraints for table `student_mark_table`
--
ALTER TABLE `student_mark_table`
  ADD CONSTRAINT `student_mark_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `student_mark_table_ibfk_2` FOREIGN KEY (`techerCourseId`) REFERENCES `techer_course_table` (`techerCourseId`);

--
-- Constraints for table `techer_course_table`
--
ALTER TABLE `techer_course_table`
  ADD CONSTRAINT `techer_course_table_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `techer_course_table_ibfk_2` FOREIGN KEY (`courseId`) REFERENCES `course_table` (`courseId`);

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `user_table_ibfk_1` FOREIGN KEY (`dep`) REFERENCES `dep_table` (`no`),
  ADD CONSTRAINT `user_table_ibfk_2` FOREIGN KEY (`type`) REFERENCES `type_table` (`no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
