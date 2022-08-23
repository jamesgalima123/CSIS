-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 10:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `description`) VALUES
(8, 'Bachelor of Elementary Education'),
(9, 'Bachelor of Science in Nursing'),
(17, 'Bachelor of Science in Psychology');

-- --------------------------------------------------------

--
-- Table structure for table `finals`
--

CREATE TABLE `finals` (
  `id` int(11) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `subject` varchar(123) NOT NULL,
  `grade` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gradingstatus`
--

CREATE TABLE `gradingstatus` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL,
  `term` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gradingstatus`
--

INSERT INTO `gradingstatus` (`id`, `status`, `term`) VALUES
(1, 'open', 'prelim');

-- --------------------------------------------------------

--
-- Table structure for table `midterms`
--

CREATE TABLE `midterms` (
  `id` int(11) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `subject` varchar(123) NOT NULL,
  `grade` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prelims`
--

CREATE TABLE `prelims` (
  `id` int(11) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `subject` varchar(123) NOT NULL,
  `grade` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `course` varchar(128) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `year` varchar(128) NOT NULL,
  `sem` varchar(128) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `course`, `subject`, `year`, `sem`, `subject_code`, `units`) VALUES
(75, 'Bachelor of Elementary Education', 'Ethics', 'first', 'second', '', 0),
(76, 'Bachelor of Elementary Education', 'The Contemporary World', 'first', 'second', '', 0),
(78, 'Bachelor of Elementary Education', 'Understanding the Self', 'first', 'second', '', 0),
(80, 'Bachelor of Elementary Education', 'Recreation (Board Games/Indoor Games)', 'first', 'second', '', 0),
(81, 'Bachelor of Elementary Education', 'Mariology', 'first', 'second', '', 0),
(82, 'Bachelor of Elementary Education', 'Christian Apologetics', 'first', 'second', '', 0),
(83, 'Bachelor of Elementary Education', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'first', 'second', '', 0),
(87, 'Bachelor of Elementary Education', 'Assessment in Learning 2', 'third', 'second', '', 0),
(88, 'Bachelor of Elementary Education', 'Teaching Music in the Elementary Grades', 'third', 'second', '', 0),
(89, 'Bachelor of Elementary Education', 'Teaching Literacy in the Elementary Grades Through Literature', 'third', 'second', '', 0),
(91, 'Bachelor of Elementary Education', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship', 'third', 'second', '', 0),
(92, 'Bachelor of Elementary Education', 'Sacraments', 'third', 'second', '', 0),
(93, 'Bachelor of Elementary Education', 'Living in the IT Era', 'third', 'second', '', 0),
(94, 'Bachelor of Elementary Education', 'Nutrition for Sports and Exercise', 'third', 'second', '', 0),
(95, 'Bachelor of Elementary Education', 'Teaching Internship', 'forth', 'second', '', 0),
(96, 'Bachelor of Elementary Education', 'National Service Training Program 2', 'forth', 'second', '', 0),
(97, 'Bachelor of Science in Nursing', 'Understanding the Self (BSN)', 'first', 'second', '', 0),
(98, 'Bachelor of Science in Nursing', 'Health Assessment', 'first', 'second', '', 0),
(99, 'Bachelor of Science in Nursing', 'Related Learning Experience (102hrs)', 'first', 'second', '', 0),
(100, 'Bachelor of Science in Nursing', 'Health Education', 'first', 'second', '', 0),
(101, 'Bachelor of Science in Nursing', 'Fundamentals of Nursing Practice', 'first', 'second', '', 0),
(102, 'Bachelor of Science in Nursing', 'Related Learning Experience (102hrs)*', 'first', 'second', '', 0),
(103, 'Bachelor of Science in Nursing', 'Biochemistry', 'first', 'second', '', 0),
(104, 'Bachelor of Science in Nursing', 'Recreation (Board Games/Indoor Games)*', 'first', 'second', '', 0),
(105, 'Bachelor of Science in Nursing', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*', 'first', 'second', '', 0),
(107, 'Bachelor of Science in Nursing', 'Ethics*', 'second', 'second', '', 0),
(109, 'Bachelor of Science in Nursing', 'Health Ethics', 'second', 'second', '', 0),
(111, 'Bachelor of Science in Nursing', 'Related Learning Experience (306hrs)', 'second', 'second', '', 0),
(112, 'Bachelor of Science in Nursing', 'Nursing Informatics', 'second', 'second', '', 0),
(113, 'Bachelor of Science in Nursing', 'Nutrition for Sports and Exercise*', 'second', 'second', '', 0),
(114, 'Bachelor of Science in Nursing', 'Mariology*', 'second', 'second', '', 0),
(115, 'Bachelor of Science in Nursing', 'Care of the Older Person/Adult', 'third', 'second', '', 0),
(119, 'Bachelor of Science in Nursing', 'Related Learning Experience (51hrs)', 'third', 'second', '', 0),
(120, 'Bachelor of Science in Nursing', 'Nursing Research 2', 'third', 'second', '', 0),
(122, 'Bachelor of Science in Nursing', 'Related Learning Experience (204hrs)', 'third', 'second', '', 0),
(124, 'Bachelor of Science in Nursing', 'Related Learning Experience (204hrs)*', 'third', 'second', '', 0),
(125, 'Bachelor of Science in Nursing', 'Living in the IT Era*', 'third', 'second', '', 0),
(126, 'Bachelor of Science in Nursing', 'Theology of the Body', 'third', 'second', '', 0),
(128, 'Bachelor of Science in Nursing', 'Disaster Nursing', 'forth', 'second', '', 0),
(129, 'Bachelor of Science in Nursing', 'Related Learning Experience (51hrs)*', 'forth', 'second', '', 0),
(132, 'Bachelor of Science in Nursing', 'The Contemporary Wolrd*', 'forth', 'second', '', 0),
(133, 'Bachelor of Science in Psychology', 'Ethics-', 'first', 'second', '', 0),
(134, 'Bachelor of Science in Psychology', 'The Contemporary World-', 'first', 'second', '', 0),
(136, 'Bachelor of Science in Psychology', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-', 'first', 'second', '', 0),
(137, 'Bachelor of Science in Psychology', 'Theories of Personality', 'first', 'second', '', 0),
(138, 'Bachelor of Science in Psychology', 'Mariology-', 'first', 'second', '', 0),
(139, 'Bachelor of Science in Psychology', 'Recreation (Board Games/Indoor Games)-', 'first', 'second', '', 0),
(140, 'Bachelor of Science in Psychology', 'National Service Training Program 2-', 'first', 'second', '', 0),
(142, 'Bachelor of Science in Psychology', 'General Zoology', 'second', 'second', '', 0),
(143, 'Bachelor of Science in Psychology', 'Biochemistry-', 'second', 'second', '', 0),
(144, 'Bachelor of Science in Psychology', 'Experimental Psychology', 'second', 'second', '', 0),
(145, 'Bachelor of Science in Psychology', 'Social Psychology', 'second', 'second', '', 0),
(146, 'Bachelor of Science in Psychology', 'Nutrition for Sports and Exercise-', 'second', 'second', '', 0),
(147, 'Bachelor of Science in Psychology', 'National Service Training Program*', 'second', 'second', '', 0),
(148, 'Bachelor of Science in Psychology', 'National Service Training Program 2*', 'second', 'second', '', 0),
(149, 'Bachelor of Elementary Education', 'Science, Technology and Society', 'first', 'second', '', 0),
(150, 'Bachelor of Elementary Education', 'Building and Enhancing New Literacies Across the Curriculum', 'first', 'second', '', 0),
(151, 'Bachelor of Elementary Education', 'The Teacher and the Community, School Culture and Organizational Leadership', 'third', 'second', '', 0),
(152, 'Bachelor of Elementary Education', 'Teaching PE and Health in Elementary Grades', 'third', 'second', '', 0),
(153, 'Bachelor of Science in Nursing', 'Logic and Critical Thinking', 'second', 'second', '', 0),
(154, 'Bachelor of Science in Nursing', 'Care of Mother and Child At-Risk or with Problems (Acute and Chronic)', 'second', 'second', '', 0),
(155, 'Bachelor of Science in Nursing', 'Care of Clients with Problems in Nutrition and GI Metabolism and Endocrine, Perception and Coordination, Acute ', 'third', 'second', '', 0),
(156, 'Bachelor of Science in Nursing', 'Care of Clients with Maladaptive Patterns of Behavior, Acute and Chronic', 'third', 'second', '', 0),
(157, 'Bachelor of Science in Nursing', 'Decent Work Employment and Transcultural Nursing', 'forth', 'second', '', 0),
(158, 'Bachelor of Science in Nursing', 'Intensive Nursing Practicum (Hospital and Community Settings) (408hrs)', 'forth', 'second', '', 0),
(159, 'Bachelor of Science in Nursing', 'Rizals Life, Works and Writings*', 'forth', 'second', '', 0),
(160, 'Bachelor of Science in Psychology', 'Science, Technology and Society-', 'first', 'second', '', 0),
(161, 'Bachelor of Science in Psychology', 'Rizals Life, Works and Writings', 'second', 'second', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `request_type` varchar(128) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `resigns`
--

CREATE TABLE `resigns` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `mobile_number` varchar(128) NOT NULL,
  `resigned_date` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentrecords`
--

CREATE TABLE `studentrecords` (
  `id` int(11) NOT NULL,
  `student_id` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `cellphone` varchar(11) NOT NULL,
  `bday` varchar(128) NOT NULL,
  `bplace` varchar(128) NOT NULL,
  `address` text NOT NULL,
  `course` text NOT NULL,
  `status` text NOT NULL,
  `year` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentsubs`
--

CREATE TABLE `studentsubs` (
  `id` int(11) NOT NULL,
  `student_id` varchar(123) NOT NULL,
  `subject` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `score` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_cs`
--

CREATE TABLE `student_cs` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `score` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `score` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_reporting`
--

CREATE TABLE `student_reporting` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `score` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(123) NOT NULL,
  `description` varchar(123) NOT NULL,
  `subcode` varchar(123) NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `teacher_id`, `description`, `subcode`, `units`) VALUES
(52, 'FCF001', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*', 'Fil 2*', 3),
(53, 'FCF001', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-', 'Fil 2-', 3),
(55, 'FCF002', 'The Contemporary World', 'GE 106', 3),
(57, 'FCF002', 'Ethics*', 'GE 106*', 3),
(59, 'FCF002', 'The Contemporary Wolrd*', 'GE 108*', 3),
(60, 'FCF002', 'Ethics-', 'GE 105-', 3),
(61, 'FCF002', 'The Contemporary World-', 'GE 106-', 3),
(65, 'FCF003', 'Teaching Literacy in the Elementary Grades Through Literature', 'TchgEng2', 3),
(67, 'FCF003', 'Living in the IT Era', 'GE Elec 3', 3),
(68, 'FCF003', 'Living in the IT Era*', 'GE Elec', 3),
(75, 'FCF006', 'Nursing Informatics', 'NCM 110', 3),
(77, 'FCF006', 'General Zoology', 'Zoo', 5),
(82, 'PCF009', 'Biochemistry-', 'Biochem-', 5),
(85, 'PCF011', 'National Service Training Program 2-', 'NSTP 2-', 3),
(86, 'PCF011', 'National Service Training Program 2*', 'NSTP 2*', 3),
(91, 'PCF015', 'Theories of Personality', 'Psy 101', 3),
(93, 'PCF016', 'Nutrition for Sports and Exercise*', 'PE 104*', 2),
(95, 'PCF016', 'Nutrition for Sports and Exercise-', 'PE 104-', 2),
(97, 'PCF018', 'Recreation (Board Games/Indoor Games)', 'PE 102', 2),
(98, 'PCF018', 'Recreation (Board Games/Indoor Games)*', 'PE 102*', 2),
(99, 'PCF018', 'Recreation (Board Games/Indoor Games)-', 'PE 102-', 2),
(101, 'PCF018', 'Nutrition for Sports and Exercise', 'PE 104', 2),
(102, 'PCF019', 'Health Ethics', 'NCM 108', 3),
(103, 'PCF008', 'Social Psychology', 'Psy 105', 3),
(106, 'PCF011', 'National Service Training Program 2', 'NSTP 2', 3),
(107, 'PCF011', 'Experimental Psychology', 'Psy 104', 5),
(109, 'FCF001', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'Fil 2', 3),
(110, 'FCF002', 'Ethics', 'GE 105', 3),
(112, 'FCF004', 'Fundamentals of Nursing Practice', 'NCM 103', 3),
(113, 'FCF005', 'Health Assessment', 'NCM 101', 3),
(114, 'FCF006', 'Health Education', 'NCM 102', 3),
(115, 'PCF009', 'Biochemistry', 'Biochem', 5),
(116, 'FCF002', 'Science, Technology and Society', 'GE 107', 3),
(117, 'FCF002', 'Science, Technology and Society-', 'GE 107-', 3),
(118, 'FCF003', 'Building and Enhancing New Literacies Across the Curriculum', 'Ed 102', 3),
(119, 'FCF003', 'The Teacher and the Community, School Culture and Organizational Leadership', 'Ed 108', 3),
(120, 'FCF005', 'Care of Mother and Child At-Risk or with Problems (Acute and Chronic)', 'NCM 109', 6),
(121, 'FCF004', 'Care of Clients with Problems in Nutrition and GI Metabolism and Endocrine, Perception and Coordination, Acute ', 'NCM 116', 5),
(122, 'FCF004', 'Decent Work Employment and Transcultural Nursing', 'NCM 120', 3),
(123, 'FCF004', 'Intensive Nursing Practicum (Hospital and Community Settings) (408hrs)', 'NCM 122', 8),
(124, 'FCF002', 'Rizals Life, Works and Writings*', 'Rizal*', 3),
(125, 'FCF002', 'Rizals Life, Works and Writings', 'Rizal-', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sublists`
--

CREATE TABLE `sublists` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(111) NOT NULL,
  `description` varchar(111) NOT NULL,
  `units` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sublists`
--

INSERT INTO `sublists` (`id`, `subject_code`, `description`, `units`) VALUES
(10, 'GE 105', 'Ethics', '3'),
(11, 'GE 106', 'The Contemporary World', '3'),
(13, 'GE 108', 'Understanding the Self', '3'),
(15, 'PE 102', 'Recreation (Board Games/Indoor Games)', '2'),
(16, 'Relg 2', 'Mariology', '2'),
(17, 'Relg 3', 'Christian Apologetics', '2'),
(18, 'Fil 2', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', '3'),
(20, 'AssLrng2', 'Assessment in Learning 2', '3'),
(22, 'TchgMusic', 'Teaching Music in the Elementary Grades', '3'),
(23, 'TchgEng2', 'Teaching Literacy in the Elementary Grades Through Literature', '3'),
(25, 'TchgTLE2', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship', '3'),
(26, 'Relg 5', 'Sacraments', '2'),
(27, 'GE Elec 3', 'Living in the IT Era', '3'),
(28, 'PE 104', 'Nutrition for Sports and Exercise', '2'),
(29, 'Prac', 'Teaching Internship', '6'),
(30, 'NSTP 2', 'National Service Training Program 2', '3'),
(31, 'GE 104', 'Understanding the Self (BSN)', '3'),
(32, 'NCM 101', 'Health Assessment', '3'),
(33, 'RLE 101', 'Related Learning Experience (102hrs)', '2'),
(34, 'NCM 102', 'Health Education', '3'),
(35, 'NCM 103', 'Fundamentals of Nursing Practice', '3'),
(36, 'RLE 103', 'Related Learning Experience (102hrs)*', '2'),
(37, 'Biochem', 'Biochemistry', '5'),
(38, 'PE 102*', 'Recreation (Board Games/Indoor Games)*', '2'),
(39, 'Fil 2*', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*', '3'),
(42, 'NCM 108', 'Health Ethics', '3'),
(44, 'RLE 109', 'Related Learning Experience (306hrs)', '6'),
(45, 'NCM 110', 'Nursing Informatics', '3'),
(46, 'PE 104*', 'Nutrition for Sports and Exercise*', '2'),
(48, 'NCM 114', 'Care of the Older Person/Adult', '2'),
(49, 'RLE 114', 'Related Learning Experience (51hrs)', '1'),
(50, 'NCM 115', 'Nursing Research 2', '2'),
(52, 'RLE 116', 'Related Learning Experience (204hrs)', '4'),
(56, 'Relg 4', 'Theology of the Body', '2'),
(58, 'NCM 121', 'Disaster Nursing', '2'),
(63, 'GE 106*', 'Ethics*', '3'),
(64, 'Relg 2*', 'Mariology*', '2'),
(65, 'RLE 121', 'Related Learning Experience (51hrs)*', '1'),
(66, 'RLE 117', 'Related Learning Experience (204hrs)*', '4'),
(67, 'GE Elec', 'Living in the IT Era*', '3'),
(68, 'GE 108*', 'The Contemporary Wolrd*', '3'),
(69, 'GE 105-', 'Ethics-', '3'),
(70, 'GE 106-', 'The Contemporary World-', '3'),
(72, 'Fil 2-', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-', '3'),
(73, 'Psy 101', 'Theories of Personality', '3'),
(74, 'Relg 2-', 'Mariology-', '2'),
(75, 'PE 102-', 'Recreation (Board Games/Indoor Games)-', '2'),
(76, 'NSTP 2-', 'National Service Training Program 2-', '3'),
(78, 'Zoo', 'General Zoology', '5'),
(79, 'Biochem-', 'Biochemistry-', '5'),
(80, 'Psy 104', 'Experimental Psychology', '5'),
(81, 'Psy 105', 'Social Psychology', '3'),
(82, 'PE 104-', 'Nutrition for Sports and Exercise-', '2'),
(84, 'NSTP 2*', 'National Service Training Program 2*', '3'),
(85, 'GE 107', 'Science, Technology and Society', '3'),
(86, 'GE 107-', 'Science, Technology and Society-', '3'),
(87, 'Ed 102', 'Building and Enhancing New Literacies Across the Curriculum', '3'),
(88, 'Ed 108', 'The Teacher and the Community, School Culture and Organizational Leadership', '3'),
(89, 'TchgPEH', 'Teaching PE and Health in Elementary Grades', '3'),
(90, 'Logic', 'Logic and Critical Thinking', '3'),
(91, 'Rizal*', 'Rizals Life, Works and Writings*', '3'),
(92, 'Rizal-', 'Rizals Life, Works and Writings', '3'),
(93, 'NCM 109', 'Care of Mother and Child At-Risk or with Problems (Acute and Chronic)', '6'),
(94, 'NCM 116', 'Care of Clients with Problems in Nutrition and GI Metabolism and Endocrine, Perception and Coordination, Acute ', '5'),
(95, 'NCM 117', 'Care of Clients with Maladaptive Patterns of Behavior, Acute and Chronic', '4'),
(96, 'NCM 120', 'Decent Work Employment and Transcultural Nursing', '3'),
(97, 'NCM 122', 'Intensive Nursing Practicum (Hospital and Community Settings) (408hrs)', '8');

-- --------------------------------------------------------

--
-- Table structure for table `teacherrecords`
--

CREATE TABLE `teacherrecords` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `cellphone` varchar(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherrecords`
--

INSERT INTO `teacherrecords` (`id`, `teacher_id`, `name`, `gender`, `cellphone`, `address`) VALUES
(42, 'FCF001', 'Lucila M. Bujactin', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(43, 'FCF002', 'Carmen A. Perdiguez', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(44, 'FCF003', 'Josephine V. Paet', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(45, 'FCF004', 'Kathleen B. Corcolon', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(46, 'FCF005', 'Vivian P. Lajara', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(47, 'FCF006', 'Girlie Mannphy Lacambra', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(49, 'PCF007', 'Sandy Dan', 'male', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(50, 'PCF008', 'Apple Cherry T. Devera', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(51, 'PCF009', 'Ruth R. Dionela', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(52, 'PCF010', 'Arlene E. Flores', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(53, 'PCF011', 'Judith C. Garcia', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(54, 'PCF012', 'Maria Lucia  Aileen L. Juaneza', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(55, 'PCF013', 'Dexter F. Pagkaliwagan', 'male', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(56, 'PCF014', 'Arlene Pondevida', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(57, 'PCF015', 'Noraida G. Salvosa', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(58, 'PCF016', 'Ryan P. Suministrado', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(59, 'PCF017', 'Sr. Rowena Garcia, FdCC', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(60, 'PCF018', 'Sr. Lina L. Amante, FdCC', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(61, 'PCF019', 'Sr. Rita Nedtran, FdCC', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(62, 'PCF020', 'Mariane DL. Belen', 'female', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000'),
(63, 'PCF021', 'Mac Quintana', 'male', '0495623891', 'Lakeside Park Subdivision, San Pablo City, Laguna 4000');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_cs`
--

CREATE TABLE `teacher_cs` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `item` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_exam`
--

CREATE TABLE `teacher_exam` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `item` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_reporting`
--

CREATE TABLE `teacher_reporting` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(128) NOT NULL,
  `teacher_id` varchar(128) NOT NULL,
  `term` varchar(128) NOT NULL,
  `item` int(11) NOT NULL,
  `course` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `password` text NOT NULL,
  `role` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `role`) VALUES
(110, 'FCF001', '9dxN3', 'faculty'),
(111, 'FCF002', '1J8k7', 'faculty'),
(112, 'FCF003', 'm1Evt', 'faculty'),
(113, 'FCF004', 'oHSZz', 'faculty'),
(114, 'FCF005', '44W38', 'faculty'),
(115, 'FCF006', 'neQsF', 'faculty'),
(117, 'PCF007', 'XUV0M', 'faculty'),
(118, 'PCF008', 'hQf6m', 'faculty'),
(119, 'PCF009', '8rFy7', 'faculty'),
(120, 'PCF010', 'VQAaC', 'faculty'),
(121, 'PCF011', 'W5cwg', 'faculty'),
(122, 'PCF012', 'Ucdwh', 'faculty'),
(123, 'PCF013', 's1VCw', 'faculty'),
(124, 'PCF014', '0Ou7B', 'faculty'),
(125, 'PCF015', 'L7UmS', 'faculty'),
(126, 'PCF016', '9Qo40', 'faculty'),
(127, 'PCF017', 'EGYfh', 'faculty'),
(128, 'PCF018', 'mKYCs', 'faculty'),
(129, 'PCF019', '1cIRc', 'faculty'),
(130, 'PCF020', 'oa8UU', 'faculty'),
(131, 'PCF021', 'B2RcD', 'faculty');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawns`
--

CREATE TABLE `withdrawns` (
  `id` int(11) NOT NULL,
  `student_id` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `course` varchar(128) NOT NULL,
  `mobile_number` varchar(128) NOT NULL,
  `withdraw_date` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finals`
--
ALTER TABLE `finals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradingstatus`
--
ALTER TABLE `gradingstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `midterms`
--
ALTER TABLE `midterms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prelims`
--
ALTER TABLE `prelims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resigns`
--
ALTER TABLE `resigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentrecords`
--
ALTER TABLE `studentrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentsubs`
--
ALTER TABLE `studentsubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_cs`
--
ALTER TABLE `student_cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_reporting`
--
ALTER TABLE `student_reporting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sublists`
--
ALTER TABLE `sublists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacherrecords`
--
ALTER TABLE `teacherrecords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_cs`
--
ALTER TABLE `teacher_cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_exam`
--
ALTER TABLE `teacher_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_reporting`
--
ALTER TABLE `teacher_reporting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawns`
--
ALTER TABLE `withdrawns`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `finals`
--
ALTER TABLE `finals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `gradingstatus`
--
ALTER TABLE `gradingstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `midterms`
--
ALTER TABLE `midterms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `prelims`
--
ALTER TABLE `prelims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resigns`
--
ALTER TABLE `resigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studentrecords`
--
ALTER TABLE `studentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `studentsubs`
--
ALTER TABLE `studentsubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1484;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `student_cs`
--
ALTER TABLE `student_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student_reporting`
--
ALTER TABLE `student_reporting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `sublists`
--
ALTER TABLE `sublists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `teacherrecords`
--
ALTER TABLE `teacherrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `teacher_cs`
--
ALTER TABLE `teacher_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher_exam`
--
ALTER TABLE `teacher_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_reporting`
--
ALTER TABLE `teacher_reporting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `withdrawns`
--
ALTER TABLE `withdrawns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
