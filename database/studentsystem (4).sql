-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 05:58 AM
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
(75, 'Bachelor of Elementary Education', 'Purposive Communication', 'first', 'first', '', 0),
(76, 'Bachelor of Elementary Education', 'Mathematics in the Modern World', 'first', 'first', '', 0),
(77, 'Bachelor of Elementary Education', 'Readings in Philippines History', 'first', 'first', '', 0),
(78, 'Bachelor of Elementary Education', 'Art Appreciation', 'first', 'first', '', 0),
(79, 'Bachelor of Elementary Education', 'The Child & Adolescent Learners and Learning Principles', 'first', 'first', '', 0),
(80, 'Bachelor of Elementary Education', 'Komunikasyon sa Akademikong Filipino', 'first', 'first', '', 0),
(81, 'Bachelor of Elementary Education', 'Laro ng Lahi', 'first', 'first', '', 0),
(84, 'Bachelor of Elementary Education', 'Ethics', 'first', 'second', '', 0),
(85, 'Bachelor of Elementary Education', 'The Contemporary World', 'first', 'second', '', 0),
(86, 'Bachelor of Elementary Education', 'Science, Technology & Society', 'first', 'second', '', 0),
(87, 'Bachelor of Elementary Education', 'Understanding the Self', 'first', 'second', '', 0),
(88, 'Bachelor of Elementary Education', 'Building and Enhancing New Literacies Across the Curriculum', 'first', 'second', '', 0),
(89, 'Bachelor of Elementary Education', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'first', 'second', '', 0),
(90, 'Bachelor of Elementary Education', 'Combat Sports (Taekwondo)', 'first', 'second', '', 0),
(91, 'Bachelor of Elementary Education', 'National Service Training Program 2', 'first', 'second', '', 0),
(92, 'Bachelor of Elementary Education', 'Mariology', 'first', 'second', '', 0),
(93, 'Bachelor of Elementary Education', 'Technology for Teaching Learning 1', 'second', 'first', '', 0),
(94, 'Bachelor of Elementary Education', 'Facilitating Learner-Centered Teaching', 'second', 'first', '', 0),
(95, 'Bachelor of Elementary Education', 'Teaching Math in the Primary Grades', 'second', 'first', '', 0),
(96, 'Bachelor of Elementary Education', 'Teaching Science in the Elementary Grades (Biology & Chemistry)', 'second', 'first', '', 0),
(97, 'Bachelor of Elementary Education', 'Teaching Social Studies in the Elementary Grades (Phil History & Government)', 'second', 'first', '', 0),
(98, 'Bachelor of Elementary Education', 'Pagtuturo ng Filipino sa Elementary I - Estruktura at Gamit ng Wikang Filipino', 'second', 'first', '', 0),
(99, 'Bachelor of Elementary Education', 'Good Manners & Right Conduct (Edukasyon sa Pagpapakatao)', 'second', 'first', '', 0),
(100, 'Bachelor of Elementary Education', 'Rizal Life, Works & Writings', 'second', 'second', '', 0),
(101, 'Bachelor of Elementary Education', 'The Teaching Profession', 'second', 'second', '', 0),
(102, 'Bachelor of Elementary Education', 'Foundation of Special & Inclusive Education', 'second', 'second', '', 0),
(103, 'Bachelor of Elementary Education', 'Teaching Math in the Intermediate Grades ', 'second', 'second', '', 0),
(104, 'Bachelor of Elementary Education', 'Teaching Science in the Elementary Grades  (Physics, Earth & Space Science)', 'second', 'second', '', 0),
(105, 'Bachelor of Elementary Education', 'Teaching Social Studies in Elementary Grades (Culture & Geography)', 'second', 'second', '', 0),
(106, 'Bachelor of Elementary Education', 'Pagtuturo ng Filipino sa Elementarya II - Panitikan ng Pilipinas', 'second', 'second', '', 0),
(107, 'Bachelor of Elementary Education', 'Technology for Teaching & Learning in the Elementary Grades', 'second', 'second', '', 0),
(108, 'Bachelor of Elementary Education', 'Survival Skills (Mountain & Camping)', 'second', 'second', '', 0),
(109, 'Bachelor of Elementary Education', 'Christian Apologetics', 'second', 'second', '', 0),
(110, 'Bachelor of Elementary Education', 'The Teacher & the School Curriculum', 'third', 'first', '', 0),
(111, 'Bachelor of Elementary Education', 'Assessment of Learning 1', 'third', 'first', '', 0),
(112, 'Bachelor of Elementary Education', 'Content & Pedagogy for the Mother-Tongue', 'third', 'first', '', 0),
(113, 'Bachelor of Elementary Education', 'Teaching English in the Elementary Grades (Language Arts)', 'third', 'first', '', 0),
(114, 'Bachelor of Elementary Education', 'Teaching Arts in the Elementary Grades', 'third', 'first', '', 0),
(115, 'Bachelor of Elementary Education', 'Edukasyong Pantahanan at Pangkabuhayan', 'third', 'first', '', 0),
(116, 'Bachelor of Elementary Education', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education', 'third', 'first', '', 0),
(117, 'Bachelor of Elementary Education', 'Theology of the Body', 'third', 'first', '', 0),
(118, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(119, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(120, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(121, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(122, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(123, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(124, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(125, 'Bachelor of Elementary Education', '', 'forth', 'first', '', 0),
(126, 'Bachelor of Elementary Education', '', 'third', 'second', '', 0),
(127, 'Bachelor of Elementary Education', 'Teaching Internship', 'forth', 'second', '', 0),
(128, 'Bachelor of Elementary Education', '', 'forth', 'first', '', 0),
(129, 'Bachelor of Elementary Education', '', 'forth', 'first', '', 0),
(130, 'Bachelor of Elementary Education', '', 'forth', 'first', '', 0),
(131, 'Bachelor of Science in Psychology', 'Purposive Communication', 'first', 'first', '', 0),
(132, 'Bachelor of Science in Psychology', 'Mathematics in the Modern World', 'first', 'first', '', 0),
(133, 'Bachelor of Science in Psychology', 'Readings in Philippines History', 'first', 'first', '', 0),
(134, 'Bachelor of Science in Psychology', 'Komunikasyon sa Akademikong Filipino', 'first', 'first', '', 0),
(135, 'Bachelor of Science in Psychology', 'Introduction to Psychology', 'first', 'first', '', 0),
(136, 'Bachelor of Science in Psychology', 'Laro ng Lahi', 'first', 'first', '', 0),
(137, 'Bachelor of Science in Psychology', 'Nationa Service Training Program 1', 'first', 'first', '', 0),
(139, 'Bachelor of Science in Psychology', 'Ethics', 'first', 'second', '', 0),
(140, 'Bachelor of Science in Psychology', 'The Contemporary World', 'first', 'second', '', 0),
(141, 'Bachelor of Science in Psychology', 'Science, Technology & Society', 'first', 'second', '', 0),
(142, 'Bachelor of Science in Psychology', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'first', 'second', '', 0),
(143, 'Bachelor of Science in Psychology', 'Theories of Personality', 'first', 'second', '', 0),
(144, 'Bachelor of Science in Psychology', 'Combat Sports (Taekwondo)', 'first', 'second', '', 0),
(145, 'Bachelor of Science in Psychology', 'National Service Training Program 2', 'first', 'second', '', 0),
(147, 'Bachelor of Science in Psychology', 'Mariology', 'first', 'second', '', 0),
(148, 'Bachelor of Science in Psychology', 'Art Appreciation', 'second', 'first', '', 0),
(149, 'Bachelor of Science in Psychology', 'Masining na Pagpapahayag', 'second', 'first', '', 0),
(150, 'Bachelor of Science in Psychology', 'Inorganic Chemistry', 'second', 'first', '', 0),
(151, 'Bachelor of Science in Psychology', 'Cell & Developmental Biology', 'second', 'first', '', 0),
(152, 'Bachelor of Science in Psychology', 'Psychological Statistics', 'second', 'first', '', 0),
(153, 'Bachelor of Science in Psychology', 'Developmental Psychology', 'second', 'first', '', 0),
(154, 'Bachelor of Science in Psychology', 'Swimming', 'second', 'first', '', 0),
(155, 'Bachelor of Science in Psychology', 'Understanding the Self', 'second', 'second', '', 0),
(156, 'Bachelor of Science in Psychology', 'Rizal Life, Works & Writings', 'second', 'second', '', 0),
(157, 'Bachelor of Science in Psychology', 'General Zoology', 'second', 'second', '', 0),
(158, 'Bachelor of Science in Psychology', 'Biochemistry', 'second', 'second', '', 0),
(159, 'Bachelor of Science in Psychology', 'Experimental Psychology', 'second', 'second', '', 0),
(160, 'Bachelor of Science in Psychology', 'Social Psychology', 'second', 'second', '', 0),
(161, 'Bachelor of Science in Psychology', 'Survival Skills (Mountain & Camping)', 'second', 'second', '', 0),
(162, 'Bachelor of Science in Psychology', 'Christian Apologetics', 'second', 'second', '', 0),
(163, 'Bachelor of Science in Psychology', 'Field Methods in Psychology', 'third', 'first', '', 0),
(164, 'Bachelor of Science in Psychology', 'Abnormal Psychology', 'third', 'first', '', 0),
(165, 'Bachelor of Science in Psychology', 'Industrial/Organizational Psychology', 'third', 'first', '', 0),
(166, 'Bachelor of Science in Psychology', 'Group Dynamics', 'third', 'first', '', 0),
(167, 'Bachelor of Science in Psychology', 'Intro to Counselling', 'third', 'first', '', 0),
(168, 'Bachelor of Science in Psychology', 'Theology of the Body', 'third', 'first', '', 0),
(169, 'Bachelor of Science in Psychology', '', 'third', 'second', '', 0),
(170, 'Bachelor of Science in Psychology', '', 'forth', 'first', '', 0),
(171, 'Bachelor of Science in Psychology', '', 'forth', 'first', '', 0),
(172, 'Bachelor of Science in Psychology', '', 'third', 'second', '', 0),
(173, 'Bachelor of Science in Psychology', '', 'forth', 'first', '', 0),
(174, 'Bachelor of Science in Psychology', 'Research in Psychology II', 'forth', 'second', '', 0),
(175, 'Bachelor of Science in Psychology', 'Practicum in Psychology (150hrs min.)', 'forth', 'second', '', 0),
(176, 'Bachelor of Science in Psychology', '', 'forth', 'first', '', 0),
(177, 'Bachelor of Science in Psychology', '', 'third', 'second', '', 0),
(178, 'Bachelor of Science in Psychology', '', 'forth', 'first', '', 0),
(180, 'Bachelor of Science in Nursing', 'Purposive Communication', 'first', 'first', '', 0),
(181, 'Bachelor of Science in Nursing', 'Mathematics in the Modern World', 'first', 'first', '', 0),
(182, 'Bachelor of Science in Nursing', 'Readings in Philippines History', 'first', 'first', '', 0),
(183, 'Bachelor of Science in Nursing', 'Komunikasyon sa Akademikong Filipino', 'first', 'first', '', 0),
(184, 'Bachelor of Science in Nursing', 'Theoretical Foundation of Nursing', 'first', 'first', '', 0),
(194, 'Bachelor of Science in Nursing', 'Understanding the Self (BSN)', 'first', 'second', '', 0),
(204, 'Bachelor of Science in Nursing', 'Anatomy Physiology', 'first', 'first', '', 0),
(205, 'Bachelor of Science in Nursing', 'Laro ng Lahi', 'first', 'first', '', 0),
(206, 'Bachelor of Science in Nursing', 'Pastoral Theology', 'first', 'first', '', 0),
(207, 'Bachelor of Science in Nursing', 'Nationa Service Training Program 1', 'first', 'first', '', 0),
(210, 'Bachelor of Science in Nursing', 'Health Assessment', 'first', 'second', '', 0),
(211, 'Bachelor of Science in Nursing', 'Related Learning Experience (102hrs)', 'first', 'second', '', 0),
(212, 'Bachelor of Science in Nursing', 'Health Education', 'first', 'second', '', 0),
(213, 'Bachelor of Science in Nursing', 'Fundamentals of Nursing Practice', 'first', 'second', '', 0),
(214, 'Bachelor of Science in Nursing', 'Related Learning Experience (102hrs.)', 'first', 'second', '', 0),
(215, 'Bachelor of Science in Nursing', 'Biochemistry', 'first', 'second', '', 0),
(216, 'Bachelor of Science in Nursing', 'Combat Sports (Taekwondo)', 'first', 'second', '', 0),
(217, 'Bachelor of Science in Nursing', 'National Service Training Program 2', 'first', 'second', '', 0),
(218, 'Bachelor of Science in Nursing', 'Art Appreciation (BSN)', 'second', 'first', '', 0),
(219, 'Bachelor of Science in Nursing', 'Microbiology & Parasitology', 'second', 'first', '', 0),
(220, 'Bachelor of Science in Nursing', 'Community Health Nursing I: Individual & Family as Clients', 'second', 'first', '', 0),
(221, 'Bachelor of Science in Nursing', 'Related Learning Experience [102hrs]', 'second', 'first', '', 0),
(222, 'Bachelor of Science in Nursing', 'Nutrition & Diet Therapy', 'second', 'first', '', 0),
(223, 'Bachelor of Science in Nursing', 'Pharmacology', 'second', 'first', '', 0),
(224, 'Bachelor of Science in Nursing', 'Care of Mother, Child, Adoloscent (Well Clients)', 'second', 'first', '', 0),
(225, 'Bachelor of Science in Nursing', 'Related Learning Experience (255hrs)', 'second', 'first', '', 0),
(226, 'Bachelor of Science in Nursing', 'Swimming', 'second', 'first', '', 0),
(227, 'Bachelor of Science in Nursing', 'Ethics (BSN)', 'second', 'second', '', 0),
(228, 'Bachelor of Science in Nursing', 'Logic & Critical Thinking', 'second', 'second', '', 0),
(229, 'Bachelor of Science in Nursing', 'Health Ethics', 'second', 'second', '', 0),
(230, 'Bachelor of Science in Nursing', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)', 'second', 'second', '', 0),
(231, 'Bachelor of Science in Nursing', 'Related Learning Experience (306hrs)', 'second', 'second', '', 0),
(232, 'Bachelor of Science in Nursing', 'Nursing Informatics', 'second', 'second', '', 0),
(233, 'Bachelor of Science in Nursing', 'Survival Skills (Mountain & Camping)', 'second', 'second', '', 0),
(234, 'Bachelor of Science in Nursing', 'Mariology', 'second', 'second', '', 0),
(235, 'Bachelor of Elementary Education', '', 'forth', 'first', '', 0),
(236, 'Bachelor of Elementary Education', 'National Service Training Program 1', 'first', 'first', '', 0),
(237, 'Bachelor of Elementary Education', 'Pastoral Theology', 'first', 'first', '', 0),
(238, 'Bachelor of Science in Nursing', 'National Service Training Program 1', 'first', 'first', '', 0),
(239, 'Bachelor of Science in Psychology', 'National Service Training Program 1', 'first', 'first', '', 0),
(240, 'Bachelor of Science in Psychology', 'Pastoral Theology', 'first', 'first', '', 0),
(241, 'Bachelor of Science in Nursing', 'Science, Technology & Society', 'third', 'first', '', 0),
(242, 'Bachelor of Science in Nursing', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp', 'third', 'first', '', 0),
(243, 'Bachelor of Science in Nursing', 'Related Learning Experience [306hrs]', 'third', 'first', '', 0),
(244, 'Bachelor of Science in Nursing', 'Community Health Nursing 2: Population Groups & Community as Community Clients', 'third', 'first', '', 0),
(245, 'Bachelor of Science in Nursing', 'Related Learning Experience (51hrs)', 'third', 'first', '', 0),
(246, 'Bachelor of Science in Nursing', 'Christian Apologetics', 'third', 'first', '', 0),
(247, 'Bachelor of Science in Nursing', 'Nursing Research 1', 'third', 'first', '', 0),
(248, 'Bachelor of Science in Nursing', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'third', 'first', '', 0),
(249, 'Bachelor of Science in Nursing', '', 'third', 'second', '', 0),
(250, 'Bachelor of Science in Nursing', '', 'forth', 'first', '', 0),
(251, 'Bachelor of Science in Nursing', '', 'forth', 'first', '', 0),
(252, 'Bachelor of Science in Nursing', 'Decent Work Employment & Transcultural Nursing', 'forth', 'second', '', 0),
(253, 'Bachelor of Science in Nursing', 'Disaster Nursing ', 'forth', 'second', '', 0),
(254, 'Bachelor of Science in Nursing', 'Related Learning Experience (51hrs.)', 'forth', 'second', '', 0),
(255, 'Bachelor of Science in Nursing', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)', 'forth', 'second', '', 0),
(256, 'Bachelor of Science in Nursing', 'Rizal Life, Works & Writings', 'forth', 'second', '', 0),
(257, 'Bachelor of Science in Nursing', 'The Contemporary World (BSN)', 'forth', 'second', '', 0),
(258, 'Bachelor of Elementary Education', 'The Teacher & the Community, School Culture &  Organizational Leadership', 'third', 'second', '', 0),
(259, 'Bachelor of Elementary Education', 'Observation of Teaching-Learning in Actual School Environment', 'forth', 'first', '', 0),
(260, 'Bachelor of Elementary Education', 'Assessment of Learning 2', 'third', 'second', '', 0),
(261, 'Bachelor of Elementary Education', 'Teaching Music in the Elementary Grades', 'third', 'second', '', 0),
(262, 'Bachelor of Elementary Education', 'Teaching Literacy in Elementary Grades Through Literature', 'third', 'second', '', 0),
(263, 'Bachelor of Elementary Education', 'Teaching PE & Health in Elementary Grades', 'third', 'second', '', 0),
(264, 'Bachelor of Elementary Education', 'Edukasyong Pantahanan at Pangkabuhayan with  Entrepreneurship', 'third', 'second', '', 0),
(265, 'Bachelor of Elementary Education', 'Sacraments', 'third', 'second', '', 0),
(266, 'Bachelor of Elementary Education', 'Living in the IT Era', 'third', 'second', '', 0),
(267, 'Bachelor of Elementary Education', 'Participation & Teaching Assistantship', 'forth', 'first', '', 0),
(268, 'Bachelor of Elementary Education', 'Research in Education', 'forth', 'first', '', 0),
(269, 'Bachelor of Elementary Education', 'Canossian Spirituality & Mission', 'forth', 'first', '', 0),
(270, 'Bachelor of Science in Nursing', 'Care of the Older Person/Adult', 'third', 'second', '', 0),
(271, 'Bachelor of Science in Nursing', 'Related Learning Experience [51hrs]', 'third', 'second', '', 0),
(272, 'Bachelor of Science in Nursing', 'Nursing Research 2', 'third', 'second', '', 0),
(273, 'Bachelor of Science in Nursing', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C', 'third', 'second', '', 0),
(274, 'Bachelor of Science in Nursing', 'Related Learning Experience (204hrs)*', 'third', 'second', '', 0),
(275, 'Bachelor of Science in Nursing', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic', 'third', 'second', '', 0),
(276, 'Bachelor of Science in Nursing', 'Related Learning Experience [204hrs]*', 'third', 'second', '', 0),
(277, 'Bachelor of Science in Nursing', 'Elective 3', 'third', 'second', '', 0),
(278, 'Bachelor of Science in Nursing', 'Theology of the Body', 'third', 'second', '', 0),
(279, 'Bachelor of Science in Nursing', 'Nursing Care of Clients with Life Threatening Conditions/ Acutely ill/Multi-organ Problems/High Acuity & Emerge', 'forth', 'first', '', 0),
(280, 'Bachelor of Science in Nursing', 'Related Learning Experience [255hrs]', 'forth', 'first', '', 0),
(281, 'Bachelor of Science in Nursing', 'Nursing Leadership & Management', 'forth', 'first', '', 0),
(282, 'Bachelor of Science in Nursing', 'Related Learning Experience (153hrs)', 'forth', 'first', '', 0),
(283, 'Bachelor of Science in Nursing', 'Spirituality & Vocation', 'forth', 'first', '', 0),
(284, 'Bachelor of Science in Nursing', 'Canossian Spirituality & Mission', 'forth', 'first', '', 0),
(285, 'Bachelor of Science in Psychology', 'Psychological Assessment', 'third', 'second', '', 0),
(286, 'Bachelor of Science in Psychology', 'Physiological Psychology', 'third', 'second', '', 0),
(287, 'Bachelor of Science in Psychology', 'Cognitive Psychology', 'third', 'second', '', 0),
(288, 'Bachelor of Science in Psychology', 'Intro to Clinical Psychology', 'third', 'second', '', 0),
(289, 'Bachelor of Science in Psychology', 'Psychology for Exceptional Children', 'third', 'second', '', 0),
(290, 'Bachelor of Science in Psychology', 'Spirituality & Vocation', 'third', 'second', '', 0),
(291, 'Bachelor of Science in Psychology', 'Research in Psychology I', 'forth', 'first', '', 0),
(292, 'Bachelor of Science in Psychology', 'Seminar in Psychology: Recruitment & Selection', 'forth', 'first', '', 0),
(293, 'Bachelor of Science in Psychology', 'Sikolohiyang Pilipino or Filipino Psychology', 'forth', 'first', '', 0),
(294, 'Bachelor of Science in Psychology', 'Canossian Spirituality & Mission', 'forth', 'first', '', 0),
(295, 'Bachelor of Science in Psychology', 'Nutrition for Sports & Exercise', 'second', 'second', '', 0);

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

--
-- Dumping data for table `studentrecords`
--

INSERT INTO `studentrecords` (`id`, `student_id`, `name`, `gender`, `cellphone`, `bday`, `bplace`, `address`, `course`, `status`, `year`) VALUES
(58, 'C-19000051', 'Alo, Avhegail Bombane', 'female', '09666927154', '2001-03-28', 'San Pablo City, Laguna', 'Brgy. Manggahan, Dolores, Quezon', 'Bachelor of Elementary Education', 'regular', ''),
(59, 'C-19000029', 'Amante, Diane Gonce', 'female', '09666927154', '2001-01-26', 'Mariveles, Bataan', '44 Guiho St., Old Alion, Mariveles, Bataan', 'Bachelor of Elementary Education', 'regular', ''),
(60, 'C-19000021', 'Austria, Ruth Margareth  Corbantes', 'female', '5030866', '2001-04-18', 'San Pablo City, Laguna', '117 Brgy. Soledad, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(61, 'C-19000054', 'Calabia, Danica Vasquez', 'female', '09276649774', '2001-01-21', 'San Pablo City, Laguna', 'Brgy. San Ignacio, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(62, 'C-19000053', 'Calabia, Diane Vasquez', 'female', '09276649774', '2000-01-26', 'San Pablo City, Laguna', 'Brgy. San Ignacio, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(63, 'C-19000033', 'Capule, Jennelle Magaling', 'female', '09355748656', '2001-05-04', 'San Pablo City, Laguna', 'Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Elementary Education', 'regular', ''),
(64, 'C-19000031', 'Cariaga, Mcee Pisano', 'female', '09958514458', '1999-08-11', 'San Pablo City, Laguna', 'Brgy. Pook, Rizal, Laguna', 'Bachelor of Elementary Education', 'regular', ''),
(65, 'C-19000041', 'Cariño, Lynette', 'female', '09556958129', '2000-06-03', 'Maragondon, Cavite', 'Brgy. Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(66, 'C-19000039', 'Dimatulac, Megan Luzon', 'female', '09556958129', '2001-03-08', 'Poblacion, Mansalay, Oriental Mindoro', 'Brgy. Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(67, 'C-19000037', 'Macuja, Shaine Gallano', 'female', '09556958129', '2000-08-31', 'Mansalay, Oriental Mindoro', 'Brgy. Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(68, 'C-19000030', 'Malabag, Janet Almario', 'female', '09261406842', '2000-09-17', 'San Pablo City, Laguna', 'Brgy. Kanluran, Calauan, Laguna', 'Bachelor of Elementary Education', 'regular', ''),
(69, 'C-19000032', 'Offemaria, Erika Villanueva', 'female', '09476072822', '2000-08-11', 'San Pablo City, Laguna', 'San Antonio 1, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(70, 'C-19000040', 'Oracion, Katrina Dimatulac', 'female', '09308374292', '2001-05-21', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(71, 'C-19000034', 'Paguican, Cindy Maglana', 'female', '09103467924', '2000-07-06', 'Alicia, Bohol', 'Katipuna, Alicia, Bohol', 'Bachelor of Elementary Education', 'regular', ''),
(72, 'C-19000043', 'Perucho, Elaira Villan', 'female', '09493080899', '2000-09-27', 'Mansalay, Oriental Mindoro', 'Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(73, 'C-19000044', 'Royo, Bea Alonsagay', 'female', '09385896215', '2000-04-26', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(74, 'C-19000038', 'Rubion, Leih Angely Villan', 'female', '09128367625', '2001-01-08', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(75, 'C-19000042', 'Sauza, Michelle Mindoro', 'female', '09305847134', '2000-01-20', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(76, 'C-19000003', 'Babor, Aira Cortez', 'female', '09064025649', '2000-07-05', 'Dumaguete City, Negros Oriental', 'Brgy. San Gabriel, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(77, 'C-19000009', 'Bacsa, Julianne Bulaklak', 'female', '09777061372', '2000-11-28', 'San Pablo City, Laguna', '4-F Brgy. San Francisco, Calihan, Purok 1, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(78, 'C-200000049', 'Belen, Joaquin Gabriel D.', 'male', '00000000000', '2000-06-15', 'San Pablo City, Laguna', '053 M. L. Quezon Street City Subdivision, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(79, 'C-19000006', 'Briones, Maywrille Garcia', 'female', '09304446344', '2001-07-26', 'San Pablo City, Laguna', 'Brgy. Imok, Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(80, 'C-19000049', 'Brucal, Laica Lopez', 'female', '00000000000', '2000-01-29', 'Tuy, Batangas', 'Brgy. Pinagdanlayan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(81, 'C-19000010', 'Bulaklak, John Reyniel Tolentino', 'male', '09150643684', '2001-01-19', 'San Pablo, City Laguna', 'Brgy. II-F, Caballero St., San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(82, 'C-19000011', 'Coronado, Sandy Lyca Pontipedra', 'female', '09278365953', '2000-03-17', 'San Pablo City, Laguna', 'Bgry. Yukos, Nagcarlan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(83, 'C-19000015', 'Estayan, Mika Ella Deveza', 'female', '09463322151', '2000-09-06', 'San Pablo City, Laguna', 'Concepcion Village, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(84, 'C-19000028', 'Gacos, Maureen  ', 'female', '09298664336', '1999-08-31', 'Calamba City, Laguna', 'Purok 7, Ilaya Parian, Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(85, 'C-19000035', 'Getape, Rogie Ann  ', 'female', '09667281041', '2001-09-01', 'Luisiana, Laguna', 'Brgy. Batong Malake, Los Baños, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(86, 'C-19000008', 'Grencio, Bianca Margarita Arnigo', 'female', '09562510994', '2000-05-03', 'Sta. Cruz, Laguna', '923 J. Luna Street, Liliw, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(87, 'C-19000036', 'Guevarra, Mary-Ann Flore', 'female', '09952081782', '2000-11-24', 'San Pablo City, Laguna', 'Brgy. Perez, Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(88, 'C-2000028', 'Guevarra, Sariah Mikel Martinez', 'female', '09184914574', '2000-01-11', 'San Pablo City, Laguna', '205 1st St. Lakeside Park, Brgy. VI-D, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(89, 'C-19000055', 'Juaneza, Maria Lucia Alessandra Larona', 'female', '56600120000', '2001-03-12', 'San Pablo City, Laguna', '153 G. Medel St. Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(90, 'C-19000007', 'Kaur, Simranjeet  ', 'female', '09326041625', '2001-09-24', 'India', 'Apt. 3, Patria Village, Sampaguita, Brgy. Del Remedio, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(91, 'C-190000', 'Lopez, Christian Jhon Hernandez', 'female', '09195864323', '2000-08-10', 'San Pablo City, Laguna', 'Brgy. Lalig, Tiaong, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(92, 'C-19000024', 'Malvar, Leonard Alcaraz', 'male', '00000000000', '2000-10-05', 'Dolores, Quezon', 'Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(93, 'C-19000025', 'Millar, Rizza Fisico', 'female', '09159381745', '2000-04-28', 'San Pablo City, Laguna', '56 Paseo De Escudero St., SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(94, 'C-19000045', 'Miranda, Shane Nicole Garcia', 'female', '09065710253', '1999-07-28', 'San Fernando, La Union', '348 Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(95, 'C-19000023', 'Montenegro, Faye Aurelio', 'female', '09163800940', '2001-09-15', 'San Pablo City, Laguna', 'Bungoy, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(96, 'C-18000001', 'Pia, Jane Ann Madrid', 'female', '00000000000', '1999-10-31', 'Bay, Laguna', '007 Purok 7, Brgy. San Antonio, Bay, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(97, 'C-18000009', 'Sobremonte, Eileen Giselle Evasco', 'female', '00000000000', '2000-07-07', 'Makati City', 'Brgy. Pag-asa, Liliw, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(98, 'C-19000018', 'Tiay, Louise Grace  ', 'female', '50330730000', '2000-11-25', 'San Pablo City, Laguna', '296 Brgy. VI-E, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(99, 'C-19000016', 'Titan, Whayee Kate Jabulin', 'female', '09771562070', '2001-02-25', 'San Pablo City, Laguna', 'Sta. Maria Village, Brgy. Sta. Maria, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(100, 'C-19000047', 'Umali, Ma. Cristina Louise Uba', 'female', '09613020386', '2001-09-23', 'San Pablo City, Laguna', 'ADB Subdivision, Brgy. Del Roemedio, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(103, 'C-19000048', 'Velizario, Steven Alfred Austria', 'male', '09273334633', '2000-05-30', 'Nagcarlan, Laguna', 'Brgy. San Nicolas, Lynville Subd., SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(104, 'C-19000027', 'Villanueva, III, Marcelo Angeles', 'male', '09168323785', '1993-09-09', 'Calamba, Laguna', '6 Capalong Apt., Rosal St., Halang, Calamba, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(105, 'C-0000006', 'Abital, Ruperth Mil', 'male', '09267365786', '2001-08-04', 'Kuwait', 'Brgy. San Cristobal, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(106, 'C-20000036', 'Agawin, Lyneth Garcia', 'female', '00000000000', '2001-08-21', 'Pagsanjan, Laguna', 'Caballes St., Brgy. Sampaloc, Pagsanjan', 'Bachelor of Science in Nursing', 'regular', ''),
(107, 'C-20000032', 'Agra, Calvin Angelo Almario', 'male', '52361850000', '2001-10-10', 'San Pablo, Laguna', 'Brgy. Del Remedio, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(108, 'C-20000027', 'Alberca, Camiela Malete', 'female', '09077580083', '2002-02-07', 'Bay, Laguna', 'San Antonio, Bay, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(109, 'C-20000045', 'Amante, Kimberly Joy Armedilla', 'female', '00000000000', '2002-02-20', 'San Pablo City, Laguna', 'San Jose, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(110, 'C-20000017', 'Bacay, Vynz Ardeyn Magpantay', 'female', '09171648197', '2002-08-26', 'San Pablo, Laguna', 'Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(111, 'C-20000012', 'Banaag, Mark Raven B.', 'male', '09560686766', '2002-02-20', 'San Pablo, Laguna', '#243 Brgy. San Mateo, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(112, 'C-20000013', 'Belen, Maxine Victoria Revilleza', 'female', '00000000000', '2001-08-26', 'San Pablo, Laguna', '#43 Aretmio Fule St., Brgy. V-C, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(113, 'C-20000004', 'Cabuya, Elisha Louise Bamba', 'female', '09555639962', '1998-09-22', 'Nagcarlan, Laguna', '0417 Azores St., Bagong Bayan, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(114, 'C-20000052', 'Cornista, Lance Alvin Julian Laroza', 'male', '50303110000', '1999-12-24', 'San Pablo City, Laguna', '104 Sta. Isabel , San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(115, 'C-20000040', 'Dacanay, Kurt Daniel Osalla', 'male', '09651928915', '2002-05-26', 'San Pablo City, Laguna', 'Villa Adelina XI, San Agustin, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(116, 'C-20000025', 'De la Cruz, Rozette Anne Lyne Bernardo', 'female', '09952647884', '2001-05-21', 'San Pablo City, Laguna', '0548 Jupiter Street, Brgy. Concepcion Village, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(117, 'C-20000019', 'Delos Reyes, Althea Jean Punzalan', 'female', '09281992269', '2001-10-26', 'San Pablo City, Laguna', 'Oreta Compound, San Jose, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(118, 'C-20000007', 'Deomano, Aira Jane Buera', 'female', '09957417469', '2002-01-22', 'San Pablo City, Laguna', 'Brgy. Sta. Filomena, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(119, 'C-20000020', 'Escano, Aiza Talidong', 'female', '09773869841', '2001-08-15', 'San Pablo, Laguna', 'Blk 2 Lot 1 NHA, Sto. Angel, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(120, 'C-20000034', 'Fandialan, Reginald John Dayan', 'male', '09190897309', '2001-07-15', 'San Pablo City, Laguna', '94 Deangkinay St., Bagong Pook, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(121, 'C-20000016', 'Gatchalian, Patrice Anne Rodriguez', 'female', '09179739360', '2001-12-30', 'San Pablo City, Laguna', '83 DonaSocorro St., Teomora Village, San Gabriel, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(122, 'C-20000059', 'Gonzales, Cindy Hernandez', 'female', '09503690795', '2002-07-22', 'San Pablo City, Laguna', '#198 Purok 4, Brgy. Soledad, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(123, 'C-20000037', 'Guevarra, John Darrel Aquino', 'male', '09198867524', '2002-05-15', 'San Pablo City, Laguna', '492 San Mateo, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(124, 'C-20000043', 'Gutierrez, John Isaac Louie Culla', 'male', '09453510197', '2001-11-04', 'San Pablo City, Laguna', '594 Narra St. Springleaf Heights, San Lucas 2, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(125, 'C-20000003', 'Lopez, Karen Mapusao', 'female', '09453510197', '1990-06-15', 'San Pablo City, Laguna', '594 Narra St., Springleaf Heights, San Lucas 2, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(126, 'C-20000009', 'Manalo, Julia Claudette A.', 'female', '09291633676', '2002-07-31', 'San Pabloc City, Laguna', 'San Roque, Alaminos, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(127, 'C-20000011', 'Mandap, Ma. Isabelle Aragones', 'female', '00000000000', '2002-05-15', 'San Pablo City, Laguna', '969 Nefortville Subd., Brgy. VI-D, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(128, 'C-20000002', 'Marasigan, Daisylyn Patrociño', 'female', '09082179381', '2002-02-16', 'Tiaong, Quezon', 'Sitio Sapangsantal, San Isidro, Tiaong, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(129, 'C-20000035', 'Martinez, Jhudiel Mae Celerio', 'female', '09982909199', '2002-05-27', 'San Pablo City, Laguna', '276 Recto Street City Subdivision, Brgy. 1-B, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(130, 'C-20000001', 'Medel, Regine Panapanaan', 'female', '09953126414', '2002-03-11', 'Sta. Cruz, Laguna', 'Sitio Bakahan, Lalig, Tiaong, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(131, 'C-20000050', 'Orillaza, Jedeia-el Sorongclo', 'female', '09179740332', '2002-03-22', 'San Pablo City, Laguna', '102 Mabini Ext., San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(132, 'C-20000021', 'Osuna, Helysylth Dorado', 'female', '09213653159', '2002-03-27', 'San Pablo City, Laguna', 'Purok 4, Brgy. Malinao, Nagcarlan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(133, 'C-20000029', 'Pangadan, Gabriel Benedict Balane', 'male', '09480933673', '2002-06-04', 'San Pablo City, Laguna', '#989 1st St. Medex Subd., San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(134, 'C-20000060', 'Plan, Arjen Faye Faraon', 'female', '09618017262', '2002-01-30', 'San Pablo City, Laguna', 'Cauyan St., Bagong Anyo, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(135, 'C-20000038', 'Quinton, Hana Andrea Nixie Flores', 'female', '00000000000', '2002-05-02', ' San Pablo City, Laguna', 'Brgy. San Gabriel, San Pablo City, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(136, 'C-20000005', 'Residuo, Nicole Dalisay', 'female', '09612683477', '2001-08-07', 'San Pablo City, Laguna', 'San Pablo City, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(137, 'C-20000031', 'Rivera, Zyrene May Caro', 'female', '09228304370', '2002-05-24', 'San Pablo City, Laguna', 'Bagong Pook, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(138, 'C-20000033', 'Sazon, Angielyn Sibayan', 'female', '00000000000', '2002-05-25', 'San Pablo City, Laguna', 'Bagong Pook, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(139, 'C-20000048', 'Solis, Joyce Vargas', 'female', '09156935414', '2001-10-22', 'San Pablo City, Laguna', 'Brgy. Maligaya, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(140, 'C-20000024', 'Suarez, Rolito Obligacion', 'female', '09675523168', '2001-03-10', 'Calamba, Laguna', 'Indigo Bay Subd., Bagong Kalsada, Bay, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(141, 'C-20000046', 'Suazo, Alaire Marguarith Anilao', 'female', '00000000000', '2002-08-24', 'San Pablo City, Laguna', '-', 'Bachelor of Science in Nursing', 'regular', ''),
(142, 'C-20000023', 'Tiangco, Fatima Alfa Flores', 'female', '09561096133', '2002-03-22', 'San Pablo City, Laguna', '-', 'Bachelor of Science in Nursing', 'regular', ''),
(143, 'C-20000030', 'Tuala, Jesty Red Cunanan', 'male', '00000000000', '2001-10-17', 'Makati City, Metro Manila', '799 Burgos St., Liliw, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(144, 'C-20000015', 'Umali, Quennie Marie Gamaro', 'female', '09201371238', '2002-09-12', 'San Pablo City, Laguna', 'Crystal Ville, Brgy. VI-E, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(145, 'C-20000022', 'Vallejo, Lexter John  ', 'male', '09995204410', '2000-05-26', 'San Pablo City, Laguna', 'Brgy. Del Remedio, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(146, 'C-20000057', 'Andrada, Francheska Arabella C.`', 'female', '00000000000', '2001-08-17', 'San Simon, Pampanga', 'Brgy. San Mateo, Dolores, Quezon', 'Bachelor of Science in Psychology', 'regular', ''),
(147, 'C-20000054', 'Bayaca, Charisse  ', 'female', '09159457148', '2001-01-17', 'Manila', 'Ph9 B5 L40 Southville 4, Brgy. Pook, Sta. Rosa', 'Bachelor of Science in Psychology', 'regular', ''),
(148, 'C-20000042', 'Curatchia, Janeah Felice Bondad', 'female', '00000000000', '2000-09-18', 'San Pablo City', 'B10 L1 Bondad Ville, San Crispin, SPC', 'Bachelor of Science in Psychology', 'regular', ''),
(149, 'C-20000061', 'Guevarra, Elanhy Mae M.', 'female', '09561629824', '2002-03-29', 'Nagcarlan, Laguna', '086 Brgy. Talangan, Nagcaarlan, Laguna', 'Bachelor of Science in Psychology', 'regular', ''),
(150, 'C-20000047', 'Quilang, Brian Joshua G.', 'male', '00000000000', '2002-01-02', 'San Pablo City, Manila', '1186 Ashley Ciabal Compund, Brgy. Del Remedio', 'Bachelor of Science in Psychology', 'regular', ''),
(151, 'C-20000058', 'Sombilla, Kyla Monique Bautista', 'female', '09351052574', '2002-05-09', 'San Pedro, Laguna', 'P7-040 Brgy. Banago, Nagcarlan, Laguna', 'Bachelor of Science in Psychology', 'regular', '');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubs`
--

CREATE TABLE `studentsubs` (
  `id` int(11) NOT NULL,
  `student_id` varchar(123) NOT NULL,
  `subject` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentsubs`
--

INSERT INTO `studentsubs` (`id`, `student_id`, `subject`) VALUES
(96, 'C-19000051', 'The Teacher & the School Curriculum'),
(97, 'C-19000051', 'Assessment of Learning 1'),
(98, 'C-19000051', 'Content & Pedagogy for the Mother-Tongue'),
(99, 'C-19000051', 'Teaching English in the Elementary Grades (Language Arts)'),
(100, 'C-19000051', 'Teaching Arts in the Elementary Grades'),
(101, 'C-19000051', 'Edukasyong Pantahanan at Pangkabuhayan'),
(102, 'C-19000051', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(103, 'C-19000051', 'Theology of the Body'),
(104, 'C-19000051', ''),
(105, 'C-19000051', ''),
(106, 'C-19000051', ''),
(107, 'C-19000051', ''),
(108, 'C-19000051', ''),
(109, 'C-19000051', ''),
(110, 'C-19000051', ''),
(111, 'C-19000029', 'The Teacher & the School Curriculum'),
(112, 'C-19000029', 'Assessment of Learning 1'),
(113, 'C-19000029', 'Content & Pedagogy for the Mother-Tongue'),
(114, 'C-19000029', 'Teaching English in the Elementary Grades (Language Arts)'),
(115, 'C-19000029', 'Teaching Arts in the Elementary Grades'),
(116, 'C-19000029', 'Edukasyong Pantahanan at Pangkabuhayan'),
(117, 'C-19000029', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(118, 'C-19000029', 'Theology of the Body'),
(119, 'C-19000029', ''),
(120, 'C-19000029', ''),
(121, 'C-19000029', ''),
(122, 'C-19000029', ''),
(123, 'C-19000029', ''),
(124, 'C-19000029', ''),
(125, 'C-19000029', ''),
(126, 'C-19000021', 'The Teacher & the School Curriculum'),
(127, 'C-19000021', 'Assessment of Learning 1'),
(128, 'C-19000021', 'Content & Pedagogy for the Mother-Tongue'),
(129, 'C-19000021', 'Teaching English in the Elementary Grades (Language Arts)'),
(130, 'C-19000021', 'Teaching Arts in the Elementary Grades'),
(131, 'C-19000021', 'Edukasyong Pantahanan at Pangkabuhayan'),
(132, 'C-19000021', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(133, 'C-19000021', 'Theology of the Body'),
(134, 'C-19000021', ''),
(135, 'C-19000021', ''),
(136, 'C-19000021', ''),
(137, 'C-19000021', ''),
(138, 'C-19000021', ''),
(139, 'C-19000021', ''),
(140, 'C-19000021', ''),
(141, 'C-19000054', 'The Teacher & the School Curriculum'),
(142, 'C-19000054', 'Assessment of Learning 1'),
(143, 'C-19000054', 'Content & Pedagogy for the Mother-Tongue'),
(144, 'C-19000054', 'Teaching English in the Elementary Grades (Language Arts)'),
(145, 'C-19000054', 'Teaching Arts in the Elementary Grades'),
(146, 'C-19000054', 'Edukasyong Pantahanan at Pangkabuhayan'),
(147, 'C-19000054', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(148, 'C-19000054', 'Theology of the Body'),
(149, 'C-19000054', ''),
(150, 'C-19000054', ''),
(151, 'C-19000054', ''),
(152, 'C-19000054', ''),
(153, 'C-19000054', ''),
(154, 'C-19000054', ''),
(155, 'C-19000054', ''),
(156, 'C-19000053', 'The Teacher & the School Curriculum'),
(157, 'C-19000053', 'Assessment of Learning 1'),
(158, 'C-19000053', 'Content & Pedagogy for the Mother-Tongue'),
(159, 'C-19000053', 'Teaching English in the Elementary Grades (Language Arts)'),
(160, 'C-19000053', 'Teaching Arts in the Elementary Grades'),
(161, 'C-19000053', 'Edukasyong Pantahanan at Pangkabuhayan'),
(162, 'C-19000053', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(163, 'C-19000053', 'Theology of the Body'),
(164, 'C-19000053', ''),
(165, 'C-19000053', ''),
(166, 'C-19000053', ''),
(167, 'C-19000053', ''),
(168, 'C-19000053', ''),
(169, 'C-19000053', ''),
(170, 'C-19000053', ''),
(171, 'C-19000033', 'The Teacher & the School Curriculum'),
(172, 'C-19000033', 'Assessment of Learning 1'),
(173, 'C-19000033', 'Content & Pedagogy for the Mother-Tongue'),
(174, 'C-19000033', 'Teaching English in the Elementary Grades (Language Arts)'),
(175, 'C-19000033', 'Teaching Arts in the Elementary Grades'),
(176, 'C-19000033', 'Edukasyong Pantahanan at Pangkabuhayan'),
(177, 'C-19000033', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(178, 'C-19000033', 'Theology of the Body'),
(179, 'C-19000033', ''),
(180, 'C-19000033', ''),
(181, 'C-19000033', ''),
(182, 'C-19000033', ''),
(183, 'C-19000033', ''),
(184, 'C-19000033', ''),
(185, 'C-19000033', ''),
(186, 'C-19000031', 'The Teacher & the School Curriculum'),
(187, 'C-19000031', 'Assessment of Learning 1'),
(188, 'C-19000031', 'Content & Pedagogy for the Mother-Tongue'),
(189, 'C-19000031', 'Teaching English in the Elementary Grades (Language Arts)'),
(190, 'C-19000031', 'Teaching Arts in the Elementary Grades'),
(191, 'C-19000031', 'Edukasyong Pantahanan at Pangkabuhayan'),
(192, 'C-19000031', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(193, 'C-19000031', 'Theology of the Body'),
(194, 'C-19000031', ''),
(195, 'C-19000031', ''),
(196, 'C-19000031', ''),
(197, 'C-19000031', ''),
(198, 'C-19000031', ''),
(199, 'C-19000031', ''),
(200, 'C-19000031', ''),
(201, 'C-19000041', 'The Teacher & the School Curriculum'),
(202, 'C-19000041', 'Assessment of Learning 1'),
(203, 'C-19000041', 'Content & Pedagogy for the Mother-Tongue'),
(204, 'C-19000041', 'Teaching English in the Elementary Grades (Language Arts)'),
(205, 'C-19000041', 'Teaching Arts in the Elementary Grades'),
(206, 'C-19000041', 'Edukasyong Pantahanan at Pangkabuhayan'),
(207, 'C-19000041', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(208, 'C-19000041', 'Theology of the Body'),
(209, 'C-19000041', ''),
(210, 'C-19000041', ''),
(211, 'C-19000041', ''),
(212, 'C-19000041', ''),
(213, 'C-19000041', ''),
(214, 'C-19000041', ''),
(215, 'C-19000041', ''),
(216, 'C-19000039', 'The Teacher & the School Curriculum'),
(217, 'C-19000039', 'Assessment of Learning 1'),
(218, 'C-19000039', 'Content & Pedagogy for the Mother-Tongue'),
(219, 'C-19000039', 'Teaching English in the Elementary Grades (Language Arts)'),
(220, 'C-19000039', 'Teaching Arts in the Elementary Grades'),
(221, 'C-19000039', 'Edukasyong Pantahanan at Pangkabuhayan'),
(222, 'C-19000039', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(223, 'C-19000039', 'Theology of the Body'),
(224, 'C-19000039', ''),
(225, 'C-19000039', ''),
(226, 'C-19000039', ''),
(227, 'C-19000039', ''),
(228, 'C-19000039', ''),
(229, 'C-19000039', ''),
(230, 'C-19000039', ''),
(231, 'C-19000037', 'The Teacher & the School Curriculum'),
(232, 'C-19000037', 'Assessment of Learning 1'),
(233, 'C-19000037', 'Content & Pedagogy for the Mother-Tongue'),
(234, 'C-19000037', 'Teaching English in the Elementary Grades (Language Arts)'),
(235, 'C-19000037', 'Teaching Arts in the Elementary Grades'),
(236, 'C-19000037', 'Edukasyong Pantahanan at Pangkabuhayan'),
(237, 'C-19000037', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(238, 'C-19000037', 'Theology of the Body'),
(239, 'C-19000037', ''),
(240, 'C-19000037', ''),
(241, 'C-19000037', ''),
(242, 'C-19000037', ''),
(243, 'C-19000037', ''),
(244, 'C-19000037', ''),
(245, 'C-19000037', ''),
(246, 'C-19000030', 'The Teacher & the School Curriculum'),
(247, 'C-19000030', 'Assessment of Learning 1'),
(248, 'C-19000030', 'Content & Pedagogy for the Mother-Tongue'),
(249, 'C-19000030', 'Teaching English in the Elementary Grades (Language Arts)'),
(250, 'C-19000030', 'Teaching Arts in the Elementary Grades'),
(251, 'C-19000030', 'Edukasyong Pantahanan at Pangkabuhayan'),
(252, 'C-19000030', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(253, 'C-19000030', 'Theology of the Body'),
(254, 'C-19000030', ''),
(255, 'C-19000030', ''),
(256, 'C-19000030', ''),
(257, 'C-19000030', ''),
(258, 'C-19000030', ''),
(259, 'C-19000030', ''),
(260, 'C-19000030', ''),
(261, 'C-19000032', 'The Teacher & the School Curriculum'),
(262, 'C-19000032', 'Assessment of Learning 1'),
(263, 'C-19000032', 'Content & Pedagogy for the Mother-Tongue'),
(264, 'C-19000032', 'Teaching English in the Elementary Grades (Language Arts)'),
(265, 'C-19000032', 'Teaching Arts in the Elementary Grades'),
(266, 'C-19000032', 'Edukasyong Pantahanan at Pangkabuhayan'),
(267, 'C-19000032', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(268, 'C-19000032', 'Theology of the Body'),
(269, 'C-19000032', ''),
(270, 'C-19000032', ''),
(271, 'C-19000032', ''),
(272, 'C-19000032', ''),
(273, 'C-19000032', ''),
(274, 'C-19000032', ''),
(275, 'C-19000032', ''),
(276, 'C-19000040', 'The Teacher & the School Curriculum'),
(277, 'C-19000040', 'Assessment of Learning 1'),
(278, 'C-19000040', 'Content & Pedagogy for the Mother-Tongue'),
(279, 'C-19000040', 'Teaching English in the Elementary Grades (Language Arts)'),
(280, 'C-19000040', 'Teaching Arts in the Elementary Grades'),
(281, 'C-19000040', 'Edukasyong Pantahanan at Pangkabuhayan'),
(282, 'C-19000040', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(283, 'C-19000040', 'Theology of the Body'),
(284, 'C-19000040', ''),
(285, 'C-19000040', ''),
(286, 'C-19000040', ''),
(287, 'C-19000040', ''),
(288, 'C-19000040', ''),
(289, 'C-19000040', ''),
(290, 'C-19000040', ''),
(291, 'C-19000034', 'The Teacher & the School Curriculum'),
(292, 'C-19000034', 'Assessment of Learning 1'),
(293, 'C-19000034', 'Content & Pedagogy for the Mother-Tongue'),
(294, 'C-19000034', 'Teaching English in the Elementary Grades (Language Arts)'),
(295, 'C-19000034', 'Teaching Arts in the Elementary Grades'),
(296, 'C-19000034', 'Edukasyong Pantahanan at Pangkabuhayan'),
(297, 'C-19000034', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(298, 'C-19000034', 'Theology of the Body'),
(299, 'C-19000034', ''),
(300, 'C-19000034', ''),
(301, 'C-19000034', ''),
(302, 'C-19000034', ''),
(303, 'C-19000034', ''),
(304, 'C-19000034', ''),
(305, 'C-19000034', ''),
(306, 'C-19000043', 'The Teacher & the School Curriculum'),
(307, 'C-19000043', 'Assessment of Learning 1'),
(308, 'C-19000043', 'Content & Pedagogy for the Mother-Tongue'),
(309, 'C-19000043', 'Teaching English in the Elementary Grades (Language Arts)'),
(310, 'C-19000043', 'Teaching Arts in the Elementary Grades'),
(311, 'C-19000043', 'Edukasyong Pantahanan at Pangkabuhayan'),
(312, 'C-19000043', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(313, 'C-19000043', 'Theology of the Body'),
(314, 'C-19000043', ''),
(315, 'C-19000043', ''),
(316, 'C-19000043', ''),
(317, 'C-19000043', ''),
(318, 'C-19000043', ''),
(319, 'C-19000043', ''),
(320, 'C-19000043', ''),
(321, 'C-19000044', 'The Teacher & the School Curriculum'),
(322, 'C-19000044', 'Assessment of Learning 1'),
(323, 'C-19000044', 'Content & Pedagogy for the Mother-Tongue'),
(324, 'C-19000044', 'Teaching English in the Elementary Grades (Language Arts)'),
(325, 'C-19000044', 'Teaching Arts in the Elementary Grades'),
(326, 'C-19000044', 'Edukasyong Pantahanan at Pangkabuhayan'),
(327, 'C-19000044', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(328, 'C-19000044', 'Theology of the Body'),
(329, 'C-19000044', ''),
(330, 'C-19000044', ''),
(331, 'C-19000044', ''),
(332, 'C-19000044', ''),
(333, 'C-19000044', ''),
(334, 'C-19000044', ''),
(335, 'C-19000044', ''),
(336, 'C-19000038', 'The Teacher & the School Curriculum'),
(337, 'C-19000038', 'Assessment of Learning 1'),
(338, 'C-19000038', 'Content & Pedagogy for the Mother-Tongue'),
(339, 'C-19000038', 'Teaching English in the Elementary Grades (Language Arts)'),
(340, 'C-19000038', 'Teaching Arts in the Elementary Grades'),
(341, 'C-19000038', 'Edukasyong Pantahanan at Pangkabuhayan'),
(342, 'C-19000038', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(343, 'C-19000038', 'Theology of the Body'),
(344, 'C-19000038', ''),
(345, 'C-19000038', ''),
(346, 'C-19000038', ''),
(347, 'C-19000038', ''),
(348, 'C-19000038', ''),
(349, 'C-19000038', ''),
(350, 'C-19000038', ''),
(351, 'C-19000042', 'The Teacher & the School Curriculum'),
(352, 'C-19000042', 'Assessment of Learning 1'),
(353, 'C-19000042', 'Content & Pedagogy for the Mother-Tongue'),
(354, 'C-19000042', 'Teaching English in the Elementary Grades (Language Arts)'),
(355, 'C-19000042', 'Teaching Arts in the Elementary Grades'),
(356, 'C-19000042', 'Edukasyong Pantahanan at Pangkabuhayan'),
(357, 'C-19000042', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education'),
(358, 'C-19000042', 'Theology of the Body'),
(359, 'C-19000042', ''),
(360, 'C-19000042', ''),
(361, 'C-19000042', ''),
(362, 'C-19000042', ''),
(363, 'C-19000042', ''),
(364, 'C-19000042', ''),
(365, 'C-19000042', ''),
(366, 'C-19000003', 'Science, Technology & Society'),
(367, 'C-19000003', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(368, 'C-19000003', 'Related Learning Experience [306hrs]'),
(369, 'C-19000003', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(370, 'C-19000003', 'Related Learning Experience (51hrs)'),
(371, 'C-19000003', 'Christian Apologetics'),
(372, 'C-19000003', 'Nursing Research 1'),
(373, 'C-19000003', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(374, 'C-19000003', ''),
(375, 'C-19000009', 'Science, Technology & Society'),
(376, 'C-19000009', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(377, 'C-19000009', 'Related Learning Experience [306hrs]'),
(378, 'C-19000009', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(379, 'C-19000009', 'Related Learning Experience (51hrs)'),
(380, 'C-19000009', 'Christian Apologetics'),
(381, 'C-19000009', 'Nursing Research 1'),
(382, 'C-19000009', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(383, 'C-19000009', ''),
(384, 'C-200000049', 'Science, Technology & Society'),
(385, 'C-200000049', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(386, 'C-200000049', 'Related Learning Experience [306hrs]'),
(387, 'C-200000049', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(388, 'C-200000049', 'Related Learning Experience (51hrs)'),
(389, 'C-200000049', 'Christian Apologetics'),
(390, 'C-200000049', 'Nursing Research 1'),
(391, 'C-200000049', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(392, 'C-200000049', ''),
(393, 'C-19000006', 'Science, Technology & Society'),
(394, 'C-19000006', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(395, 'C-19000006', 'Related Learning Experience [306hrs]'),
(396, 'C-19000006', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(397, 'C-19000006', 'Related Learning Experience (51hrs)'),
(398, 'C-19000006', 'Christian Apologetics'),
(399, 'C-19000006', 'Nursing Research 1'),
(400, 'C-19000006', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(401, 'C-19000006', ''),
(402, 'C-19000049', 'Science, Technology & Society'),
(403, 'C-19000049', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(404, 'C-19000049', 'Related Learning Experience [306hrs]'),
(405, 'C-19000049', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(406, 'C-19000049', 'Related Learning Experience (51hrs)'),
(407, 'C-19000049', 'Christian Apologetics'),
(408, 'C-19000049', 'Nursing Research 1'),
(409, 'C-19000049', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(410, 'C-19000049', ''),
(411, 'C-19000010', 'Science, Technology & Society'),
(412, 'C-19000010', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(413, 'C-19000010', 'Related Learning Experience [306hrs]'),
(414, 'C-19000010', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(415, 'C-19000010', 'Related Learning Experience (51hrs)'),
(416, 'C-19000010', 'Christian Apologetics'),
(417, 'C-19000010', 'Nursing Research 1'),
(418, 'C-19000010', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(419, 'C-19000010', ''),
(420, 'C-19000010', 'Care of the Older Person/Adult'),
(421, 'C-19000010', 'Related Learning Experience [51hrs]'),
(422, 'C-19000010', 'Nursing Research 2'),
(423, 'C-19000010', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(424, 'C-19000010', 'Related Learning Experience (204hrs)*'),
(425, 'C-19000010', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(426, 'C-19000010', 'Related Learning Experience [204hrs]*'),
(427, 'C-19000010', 'Elective 3'),
(428, 'C-19000010', 'Theology of the Body'),
(429, 'C-19000011', 'Science, Technology & Society'),
(430, 'C-19000011', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(431, 'C-19000011', 'Related Learning Experience [306hrs]'),
(432, 'C-19000011', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(433, 'C-19000011', 'Related Learning Experience (51hrs)'),
(434, 'C-19000011', 'Christian Apologetics'),
(435, 'C-19000011', 'Nursing Research 1'),
(436, 'C-19000011', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(437, 'C-19000011', ''),
(438, 'C-19000011', 'Care of the Older Person/Adult'),
(439, 'C-19000011', 'Related Learning Experience [51hrs]'),
(440, 'C-19000011', 'Nursing Research 2'),
(441, 'C-19000011', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(442, 'C-19000011', 'Related Learning Experience (204hrs)*'),
(443, 'C-19000011', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(444, 'C-19000011', 'Related Learning Experience [204hrs]*'),
(445, 'C-19000011', 'Elective 3'),
(446, 'C-19000011', 'Theology of the Body'),
(447, 'C-19000015', 'Science, Technology & Society'),
(448, 'C-19000015', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(449, 'C-19000015', 'Related Learning Experience [306hrs]'),
(450, 'C-19000015', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(451, 'C-19000015', 'Related Learning Experience (51hrs)'),
(452, 'C-19000015', 'Christian Apologetics'),
(453, 'C-19000015', 'Nursing Research 1'),
(454, 'C-19000015', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(455, 'C-19000015', ''),
(456, 'C-19000015', 'Care of the Older Person/Adult'),
(457, 'C-19000015', 'Related Learning Experience [51hrs]'),
(458, 'C-19000015', 'Nursing Research 2'),
(459, 'C-19000015', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(460, 'C-19000015', 'Related Learning Experience (204hrs)*'),
(461, 'C-19000015', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(462, 'C-19000015', 'Related Learning Experience [204hrs]*'),
(463, 'C-19000015', 'Elective 3'),
(464, 'C-19000015', 'Theology of the Body'),
(465, 'C-19000028', 'Science, Technology & Society'),
(466, 'C-19000028', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(467, 'C-19000028', 'Related Learning Experience [306hrs]'),
(468, 'C-19000028', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(469, 'C-19000028', 'Related Learning Experience (51hrs)'),
(470, 'C-19000028', 'Christian Apologetics'),
(471, 'C-19000028', 'Nursing Research 1'),
(472, 'C-19000028', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(473, 'C-19000028', ''),
(474, 'C-19000028', 'Care of the Older Person/Adult'),
(475, 'C-19000028', 'Related Learning Experience [51hrs]'),
(476, 'C-19000028', 'Nursing Research 2'),
(477, 'C-19000028', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(478, 'C-19000028', 'Related Learning Experience (204hrs)*'),
(479, 'C-19000028', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(480, 'C-19000028', 'Related Learning Experience [204hrs]*'),
(481, 'C-19000028', 'Elective 3'),
(482, 'C-19000028', 'Theology of the Body'),
(483, 'C-19000035', 'Science, Technology & Society'),
(484, 'C-19000035', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(485, 'C-19000035', 'Related Learning Experience [306hrs]'),
(486, 'C-19000035', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(487, 'C-19000035', 'Related Learning Experience (51hrs)'),
(488, 'C-19000035', 'Christian Apologetics'),
(489, 'C-19000035', 'Nursing Research 1'),
(490, 'C-19000035', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(491, 'C-19000035', ''),
(492, 'C-19000035', 'Care of the Older Person/Adult'),
(493, 'C-19000035', 'Related Learning Experience [51hrs]'),
(494, 'C-19000035', 'Nursing Research 2'),
(495, 'C-19000035', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(496, 'C-19000035', 'Related Learning Experience (204hrs)*'),
(497, 'C-19000035', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(498, 'C-19000035', 'Related Learning Experience [204hrs]*'),
(499, 'C-19000035', 'Elective 3'),
(500, 'C-19000035', 'Theology of the Body'),
(501, 'C-19000008', 'Science, Technology & Society'),
(502, 'C-19000008', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(503, 'C-19000008', 'Related Learning Experience [306hrs]'),
(504, 'C-19000008', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(505, 'C-19000008', 'Related Learning Experience (51hrs)'),
(506, 'C-19000008', 'Christian Apologetics'),
(507, 'C-19000008', 'Nursing Research 1'),
(508, 'C-19000008', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(509, 'C-19000008', ''),
(510, 'C-19000008', 'Care of the Older Person/Adult'),
(511, 'C-19000008', 'Related Learning Experience [51hrs]'),
(512, 'C-19000008', 'Nursing Research 2'),
(513, 'C-19000008', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(514, 'C-19000008', 'Related Learning Experience (204hrs)*'),
(515, 'C-19000008', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(516, 'C-19000008', 'Related Learning Experience [204hrs]*'),
(517, 'C-19000008', 'Elective 3'),
(518, 'C-19000008', 'Theology of the Body'),
(519, 'C-19000036', 'Science, Technology & Society'),
(520, 'C-19000036', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(521, 'C-19000036', 'Related Learning Experience [306hrs]'),
(522, 'C-19000036', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(523, 'C-19000036', 'Related Learning Experience (51hrs)'),
(524, 'C-19000036', 'Christian Apologetics'),
(525, 'C-19000036', 'Nursing Research 1'),
(526, 'C-19000036', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(527, 'C-19000036', ''),
(528, 'C-19000036', 'Care of the Older Person/Adult'),
(529, 'C-19000036', 'Related Learning Experience [51hrs]'),
(530, 'C-19000036', 'Nursing Research 2'),
(531, 'C-19000036', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(532, 'C-19000036', 'Related Learning Experience (204hrs)*'),
(533, 'C-19000036', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(534, 'C-19000036', 'Related Learning Experience [204hrs]*'),
(535, 'C-19000036', 'Elective 3'),
(536, 'C-19000036', 'Theology of the Body'),
(537, 'C-2000028', 'Science, Technology & Society'),
(538, 'C-2000028', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(539, 'C-2000028', 'Related Learning Experience [306hrs]'),
(540, 'C-2000028', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(541, 'C-2000028', 'Related Learning Experience (51hrs)'),
(542, 'C-2000028', 'Christian Apologetics'),
(543, 'C-2000028', 'Nursing Research 1'),
(544, 'C-2000028', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(545, 'C-2000028', ''),
(546, 'C-2000028', 'Care of the Older Person/Adult'),
(547, 'C-2000028', 'Related Learning Experience [51hrs]'),
(548, 'C-2000028', 'Nursing Research 2'),
(549, 'C-2000028', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(550, 'C-2000028', 'Related Learning Experience (204hrs)*'),
(551, 'C-2000028', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(552, 'C-2000028', 'Related Learning Experience [204hrs]*'),
(553, 'C-2000028', 'Elective 3'),
(554, 'C-2000028', 'Theology of the Body'),
(555, 'C-19000055', 'Science, Technology & Society'),
(556, 'C-19000055', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(557, 'C-19000055', 'Related Learning Experience [306hrs]'),
(558, 'C-19000055', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(559, 'C-19000055', 'Related Learning Experience (51hrs)'),
(560, 'C-19000055', 'Christian Apologetics'),
(561, 'C-19000055', 'Nursing Research 1'),
(562, 'C-19000055', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(563, 'C-19000055', ''),
(564, 'C-19000055', 'Care of the Older Person/Adult'),
(565, 'C-19000055', 'Related Learning Experience [51hrs]'),
(566, 'C-19000055', 'Nursing Research 2'),
(567, 'C-19000055', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(568, 'C-19000055', 'Related Learning Experience (204hrs)*'),
(569, 'C-19000055', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(570, 'C-19000055', 'Related Learning Experience [204hrs]*'),
(571, 'C-19000055', 'Elective 3'),
(572, 'C-19000055', 'Theology of the Body'),
(573, 'C-19000007', 'Science, Technology & Society'),
(574, 'C-19000007', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(575, 'C-19000007', 'Related Learning Experience [306hrs]'),
(576, 'C-19000007', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(577, 'C-19000007', 'Related Learning Experience (51hrs)'),
(578, 'C-19000007', 'Christian Apologetics'),
(579, 'C-19000007', 'Nursing Research 1'),
(580, 'C-19000007', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(581, 'C-19000007', ''),
(582, 'C-19000007', 'Care of the Older Person/Adult'),
(583, 'C-19000007', 'Related Learning Experience [51hrs]'),
(584, 'C-19000007', 'Nursing Research 2'),
(585, 'C-19000007', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(586, 'C-19000007', 'Related Learning Experience (204hrs)*'),
(587, 'C-19000007', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(588, 'C-19000007', 'Related Learning Experience [204hrs]*'),
(589, 'C-19000007', 'Elective 3'),
(590, 'C-19000007', 'Theology of the Body'),
(591, 'C-190000', 'Science, Technology & Society'),
(592, 'C-190000', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(593, 'C-190000', 'Related Learning Experience [306hrs]'),
(594, 'C-190000', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(595, 'C-190000', 'Related Learning Experience (51hrs)'),
(596, 'C-190000', 'Christian Apologetics'),
(597, 'C-190000', 'Nursing Research 1'),
(598, 'C-190000', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(599, 'C-190000', ''),
(600, 'C-190000', 'Care of the Older Person/Adult'),
(601, 'C-190000', 'Related Learning Experience [51hrs]'),
(602, 'C-190000', 'Nursing Research 2'),
(603, 'C-190000', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(604, 'C-190000', 'Related Learning Experience (204hrs)*'),
(605, 'C-190000', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(606, 'C-190000', 'Related Learning Experience [204hrs]*'),
(607, 'C-190000', 'Elective 3'),
(608, 'C-190000', 'Theology of the Body'),
(609, 'C-19000024', 'Science, Technology & Society'),
(610, 'C-19000024', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(611, 'C-19000024', 'Related Learning Experience [306hrs]'),
(612, 'C-19000024', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(613, 'C-19000024', 'Related Learning Experience (51hrs)'),
(614, 'C-19000024', 'Christian Apologetics'),
(615, 'C-19000024', 'Nursing Research 1'),
(616, 'C-19000024', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(617, 'C-19000024', ''),
(618, 'C-19000024', 'Care of the Older Person/Adult'),
(619, 'C-19000024', 'Related Learning Experience [51hrs]'),
(620, 'C-19000024', 'Nursing Research 2'),
(621, 'C-19000024', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(622, 'C-19000024', 'Related Learning Experience (204hrs)*'),
(623, 'C-19000024', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(624, 'C-19000024', 'Related Learning Experience [204hrs]*'),
(625, 'C-19000024', 'Elective 3'),
(626, 'C-19000024', 'Theology of the Body'),
(627, 'C-19000025', 'Science, Technology & Society'),
(628, 'C-19000025', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(629, 'C-19000025', 'Related Learning Experience [306hrs]'),
(630, 'C-19000025', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(631, 'C-19000025', 'Related Learning Experience (51hrs)'),
(632, 'C-19000025', 'Christian Apologetics'),
(633, 'C-19000025', 'Nursing Research 1'),
(634, 'C-19000025', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(635, 'C-19000025', ''),
(636, 'C-19000025', 'Care of the Older Person/Adult'),
(637, 'C-19000025', 'Related Learning Experience [51hrs]'),
(638, 'C-19000025', 'Nursing Research 2'),
(639, 'C-19000025', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(640, 'C-19000025', 'Related Learning Experience (204hrs)*'),
(641, 'C-19000025', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(642, 'C-19000025', 'Related Learning Experience [204hrs]*'),
(643, 'C-19000025', 'Elective 3'),
(644, 'C-19000025', 'Theology of the Body'),
(645, 'C-19000045', 'Science, Technology & Society'),
(646, 'C-19000045', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(647, 'C-19000045', 'Related Learning Experience [306hrs]'),
(648, 'C-19000045', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(649, 'C-19000045', 'Related Learning Experience (51hrs)'),
(650, 'C-19000045', 'Christian Apologetics'),
(651, 'C-19000045', 'Nursing Research 1'),
(652, 'C-19000045', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(653, 'C-19000045', ''),
(654, 'C-19000045', 'Care of the Older Person/Adult'),
(655, 'C-19000045', 'Related Learning Experience [51hrs]'),
(656, 'C-19000045', 'Nursing Research 2'),
(657, 'C-19000045', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(658, 'C-19000045', 'Related Learning Experience (204hrs)*'),
(659, 'C-19000045', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(660, 'C-19000045', 'Related Learning Experience [204hrs]*'),
(661, 'C-19000045', 'Elective 3'),
(662, 'C-19000045', 'Theology of the Body'),
(663, 'C-19000023', 'Science, Technology & Society'),
(664, 'C-19000023', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(665, 'C-19000023', 'Related Learning Experience [306hrs]'),
(666, 'C-19000023', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(667, 'C-19000023', 'Related Learning Experience (51hrs)'),
(668, 'C-19000023', 'Christian Apologetics'),
(669, 'C-19000023', 'Nursing Research 1'),
(670, 'C-19000023', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(671, 'C-19000023', ''),
(672, 'C-19000023', 'Care of the Older Person/Adult'),
(673, 'C-19000023', 'Related Learning Experience [51hrs]'),
(674, 'C-19000023', 'Nursing Research 2'),
(675, 'C-19000023', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(676, 'C-19000023', 'Related Learning Experience (204hrs)*'),
(677, 'C-19000023', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(678, 'C-19000023', 'Related Learning Experience [204hrs]*'),
(679, 'C-19000023', 'Elective 3'),
(680, 'C-19000023', 'Theology of the Body'),
(681, 'C-18000001', 'Science, Technology & Society'),
(682, 'C-18000001', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(683, 'C-18000001', 'Related Learning Experience [306hrs]'),
(684, 'C-18000001', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(685, 'C-18000001', 'Related Learning Experience (51hrs)'),
(686, 'C-18000001', 'Christian Apologetics'),
(687, 'C-18000001', 'Nursing Research 1'),
(688, 'C-18000001', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(689, 'C-18000001', ''),
(690, 'C-18000001', 'Care of the Older Person/Adult'),
(691, 'C-18000001', 'Related Learning Experience [51hrs]'),
(692, 'C-18000001', 'Nursing Research 2'),
(693, 'C-18000001', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(694, 'C-18000001', 'Related Learning Experience (204hrs)*'),
(695, 'C-18000001', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(696, 'C-18000001', 'Related Learning Experience [204hrs]*'),
(697, 'C-18000001', 'Elective 3'),
(698, 'C-18000001', 'Theology of the Body'),
(699, 'C-18000009', 'Science, Technology & Society'),
(700, 'C-18000009', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(701, 'C-18000009', 'Related Learning Experience [306hrs]'),
(702, 'C-18000009', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(703, 'C-18000009', 'Related Learning Experience (51hrs)'),
(704, 'C-18000009', 'Christian Apologetics'),
(705, 'C-18000009', 'Nursing Research 1'),
(706, 'C-18000009', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(707, 'C-18000009', ''),
(708, 'C-18000009', 'Care of the Older Person/Adult'),
(709, 'C-18000009', 'Related Learning Experience [51hrs]'),
(710, 'C-18000009', 'Nursing Research 2'),
(711, 'C-18000009', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(712, 'C-18000009', 'Related Learning Experience (204hrs)*'),
(713, 'C-18000009', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(714, 'C-18000009', 'Related Learning Experience [204hrs]*'),
(715, 'C-18000009', 'Elective 3'),
(716, 'C-18000009', 'Theology of the Body'),
(717, 'C-19000018', 'Science, Technology & Society'),
(718, 'C-19000018', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(719, 'C-19000018', 'Related Learning Experience [306hrs]'),
(720, 'C-19000018', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(721, 'C-19000018', 'Related Learning Experience (51hrs)'),
(722, 'C-19000018', 'Christian Apologetics'),
(723, 'C-19000018', 'Nursing Research 1'),
(724, 'C-19000018', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(725, 'C-19000018', ''),
(726, 'C-19000018', 'Care of the Older Person/Adult'),
(727, 'C-19000018', 'Related Learning Experience [51hrs]'),
(728, 'C-19000018', 'Nursing Research 2'),
(729, 'C-19000018', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(730, 'C-19000018', 'Related Learning Experience (204hrs)*'),
(731, 'C-19000018', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(732, 'C-19000018', 'Related Learning Experience [204hrs]*'),
(733, 'C-19000018', 'Elective 3'),
(734, 'C-19000018', 'Theology of the Body'),
(735, 'C-19000016', 'Science, Technology & Society'),
(736, 'C-19000016', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(737, 'C-19000016', 'Related Learning Experience [306hrs]'),
(738, 'C-19000016', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(739, 'C-19000016', 'Related Learning Experience (51hrs)'),
(740, 'C-19000016', 'Christian Apologetics'),
(741, 'C-19000016', 'Nursing Research 1'),
(742, 'C-19000016', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(743, 'C-19000016', ''),
(744, 'C-19000016', 'Care of the Older Person/Adult'),
(745, 'C-19000016', 'Related Learning Experience [51hrs]'),
(746, 'C-19000016', 'Nursing Research 2'),
(747, 'C-19000016', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(748, 'C-19000016', 'Related Learning Experience (204hrs)*'),
(749, 'C-19000016', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(750, 'C-19000016', 'Related Learning Experience [204hrs]*'),
(751, 'C-19000016', 'Elective 3'),
(752, 'C-19000016', 'Theology of the Body'),
(753, 'C-19000047', 'Science, Technology & Society'),
(754, 'C-19000047', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(755, 'C-19000047', 'Related Learning Experience [306hrs]'),
(756, 'C-19000047', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(757, 'C-19000047', 'Related Learning Experience (51hrs)'),
(758, 'C-19000047', 'Christian Apologetics'),
(759, 'C-19000047', 'Nursing Research 1'),
(760, 'C-19000047', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(761, 'C-19000047', ''),
(762, 'C-19000047', 'Care of the Older Person/Adult'),
(763, 'C-19000047', 'Related Learning Experience [51hrs]'),
(764, 'C-19000047', 'Nursing Research 2'),
(765, 'C-19000047', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(766, 'C-19000047', 'Related Learning Experience (204hrs)*'),
(767, 'C-19000047', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(768, 'C-19000047', 'Related Learning Experience [204hrs]*'),
(769, 'C-19000047', 'Elective 3'),
(770, 'C-19000047', 'Theology of the Body'),
(771, 'C-19000048', 'Science, Technology & Society'),
(772, 'C-19000048', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(773, 'C-19000048', 'Related Learning Experience [306hrs]'),
(774, 'C-19000048', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(775, 'C-19000048', 'Related Learning Experience (51hrs)'),
(776, 'C-19000048', 'Christian Apologetics'),
(777, 'C-19000048', 'Nursing Research 1'),
(778, 'C-19000048', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(779, 'C-19000048', ''),
(780, 'C-19000048', 'Care of the Older Person/Adult'),
(781, 'C-19000048', 'Related Learning Experience [51hrs]'),
(782, 'C-19000048', 'Nursing Research 2'),
(783, 'C-19000048', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(784, 'C-19000048', 'Related Learning Experience (204hrs)*'),
(785, 'C-19000048', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(786, 'C-19000048', 'Related Learning Experience [204hrs]*'),
(787, 'C-19000048', 'Elective 3'),
(788, 'C-19000048', 'Theology of the Body'),
(789, 'C-19000027', 'Science, Technology & Society'),
(790, 'C-19000027', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(791, 'C-19000027', 'Related Learning Experience [306hrs]'),
(792, 'C-19000027', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(793, 'C-19000027', 'Related Learning Experience (51hrs)'),
(794, 'C-19000027', 'Christian Apologetics'),
(795, 'C-19000027', 'Nursing Research 1'),
(796, 'C-19000027', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(797, 'C-19000027', ''),
(798, 'C-19000027', 'Care of the Older Person/Adult'),
(799, 'C-19000027', 'Related Learning Experience [51hrs]'),
(800, 'C-19000027', 'Nursing Research 2'),
(801, 'C-19000027', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(802, 'C-19000027', 'Related Learning Experience (204hrs)*'),
(803, 'C-19000027', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(804, 'C-19000027', 'Related Learning Experience [204hrs]*'),
(805, 'C-19000027', 'Elective 3'),
(806, 'C-19000027', 'Theology of the Body'),
(807, 'C-19000048', 'Science, Technology & Society'),
(808, 'C-19000048', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(809, 'C-19000048', 'Related Learning Experience [306hrs]'),
(810, 'C-19000048', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(811, 'C-19000048', 'Related Learning Experience (51hrs)'),
(812, 'C-19000048', 'Christian Apologetics'),
(813, 'C-19000048', 'Nursing Research 1'),
(814, 'C-19000048', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(815, 'C-19000048', ''),
(816, 'C-19000048', 'Care of the Older Person/Adult'),
(817, 'C-19000048', 'Related Learning Experience [51hrs]'),
(818, 'C-19000048', 'Nursing Research 2'),
(819, 'C-19000048', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(820, 'C-19000048', 'Related Learning Experience (204hrs)*'),
(821, 'C-19000048', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(822, 'C-19000048', 'Related Learning Experience [204hrs]*'),
(823, 'C-19000048', 'Elective 3'),
(824, 'C-19000048', 'Theology of the Body'),
(825, 'C-19000027', 'Science, Technology & Society'),
(826, 'C-19000027', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp'),
(827, 'C-19000027', 'Related Learning Experience [306hrs]'),
(828, 'C-19000027', 'Community Health Nursing 2: Population Groups & Community as Community Clients'),
(829, 'C-19000027', 'Related Learning Experience (51hrs)'),
(830, 'C-19000027', 'Christian Apologetics'),
(831, 'C-19000027', 'Nursing Research 1'),
(832, 'C-19000027', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(833, 'C-19000027', ''),
(834, 'C-19000027', 'Care of the Older Person/Adult'),
(835, 'C-19000027', 'Related Learning Experience [51hrs]'),
(836, 'C-19000027', 'Nursing Research 2'),
(837, 'C-19000027', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C'),
(838, 'C-19000027', 'Related Learning Experience (204hrs)*'),
(839, 'C-19000027', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic'),
(840, 'C-19000027', 'Related Learning Experience [204hrs]*'),
(841, 'C-19000027', 'Elective 3'),
(842, 'C-19000027', 'Theology of the Body'),
(843, 'C-0000006', 'GEN Math'),
(844, 'C-0000006', 'Art Appreciation (BSN)'),
(845, 'C-0000006', 'Microbiology & Parasitology'),
(846, 'C-0000006', 'Community Health Nursing I: Individual & Family as Clients'),
(847, 'C-0000006', 'Related Learning Experience [102hrs]'),
(848, 'C-0000006', 'Nutrition & Diet Therapy'),
(849, 'C-0000006', 'Pharmacology'),
(850, 'C-0000006', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(851, 'C-0000006', 'Related Learning Experience (255hrs)'),
(852, 'C-0000006', 'Swimming'),
(853, 'C-0000006', 'Ethics (BSN)'),
(854, 'C-0000006', 'Logic & Critical Thinking'),
(855, 'C-0000006', 'Health Ethics'),
(856, 'C-0000006', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(857, 'C-0000006', 'Related Learning Experience (306hrs)'),
(858, 'C-0000006', 'Nursing Informatics'),
(859, 'C-0000006', 'Survival Skills (Mountain & Camping)'),
(860, 'C-0000006', 'Mariology'),
(861, 'C-20000036', 'GEN Math'),
(862, 'C-20000036', 'Art Appreciation (BSN)'),
(863, 'C-20000036', 'Microbiology & Parasitology'),
(864, 'C-20000036', 'Community Health Nursing I: Individual & Family as Clients'),
(865, 'C-20000036', 'Related Learning Experience [102hrs]'),
(866, 'C-20000036', 'Nutrition & Diet Therapy'),
(867, 'C-20000036', 'Pharmacology'),
(868, 'C-20000036', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(869, 'C-20000036', 'Related Learning Experience (255hrs)'),
(870, 'C-20000036', 'Swimming'),
(871, 'C-20000036', 'Ethics (BSN)'),
(872, 'C-20000036', 'Logic & Critical Thinking'),
(873, 'C-20000036', 'Health Ethics'),
(874, 'C-20000036', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(875, 'C-20000036', 'Related Learning Experience (306hrs)'),
(876, 'C-20000036', 'Nursing Informatics'),
(877, 'C-20000036', 'Survival Skills (Mountain & Camping)'),
(878, 'C-20000036', 'Mariology'),
(879, 'C-20000032', 'GEN Math'),
(880, 'C-20000032', 'Art Appreciation (BSN)'),
(881, 'C-20000032', 'Microbiology & Parasitology'),
(882, 'C-20000032', 'Community Health Nursing I: Individual & Family as Clients'),
(883, 'C-20000032', 'Related Learning Experience [102hrs]'),
(884, 'C-20000032', 'Nutrition & Diet Therapy'),
(885, 'C-20000032', 'Pharmacology'),
(886, 'C-20000032', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(887, 'C-20000032', 'Related Learning Experience (255hrs)'),
(888, 'C-20000032', 'Swimming'),
(889, 'C-20000032', 'Ethics (BSN)'),
(890, 'C-20000032', 'Logic & Critical Thinking'),
(891, 'C-20000032', 'Health Ethics'),
(892, 'C-20000032', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(893, 'C-20000032', 'Related Learning Experience (306hrs)'),
(894, 'C-20000032', 'Nursing Informatics'),
(895, 'C-20000032', 'Survival Skills (Mountain & Camping)'),
(896, 'C-20000032', 'Mariology'),
(897, 'C-20000027', 'GEN Math'),
(898, 'C-20000027', 'Art Appreciation (BSN)'),
(899, 'C-20000027', 'Microbiology & Parasitology'),
(900, 'C-20000027', 'Community Health Nursing I: Individual & Family as Clients'),
(901, 'C-20000027', 'Related Learning Experience [102hrs]'),
(902, 'C-20000027', 'Nutrition & Diet Therapy'),
(903, 'C-20000027', 'Pharmacology'),
(904, 'C-20000027', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(905, 'C-20000027', 'Related Learning Experience (255hrs)'),
(906, 'C-20000027', 'Swimming'),
(907, 'C-20000027', 'Ethics (BSN)'),
(908, 'C-20000027', 'Logic & Critical Thinking'),
(909, 'C-20000027', 'Health Ethics'),
(910, 'C-20000027', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(911, 'C-20000027', 'Related Learning Experience (306hrs)'),
(912, 'C-20000027', 'Nursing Informatics'),
(913, 'C-20000027', 'Survival Skills (Mountain & Camping)'),
(914, 'C-20000027', 'Mariology'),
(915, 'C-20000045', 'GEN Math'),
(916, 'C-20000045', 'Art Appreciation (BSN)'),
(917, 'C-20000045', 'Microbiology & Parasitology'),
(918, 'C-20000045', 'Community Health Nursing I: Individual & Family as Clients'),
(919, 'C-20000045', 'Related Learning Experience [102hrs]'),
(920, 'C-20000045', 'Nutrition & Diet Therapy'),
(921, 'C-20000045', 'Pharmacology'),
(922, 'C-20000045', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(923, 'C-20000045', 'Related Learning Experience (255hrs)'),
(924, 'C-20000045', 'Swimming'),
(925, 'C-20000045', 'Ethics (BSN)'),
(926, 'C-20000045', 'Logic & Critical Thinking'),
(927, 'C-20000045', 'Health Ethics'),
(928, 'C-20000045', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(929, 'C-20000045', 'Related Learning Experience (306hrs)'),
(930, 'C-20000045', 'Nursing Informatics'),
(931, 'C-20000045', 'Survival Skills (Mountain & Camping)'),
(932, 'C-20000045', 'Mariology'),
(933, 'C-20000017', 'GEN Math'),
(934, 'C-20000017', 'Art Appreciation (BSN)'),
(935, 'C-20000017', 'Microbiology & Parasitology'),
(936, 'C-20000017', 'Community Health Nursing I: Individual & Family as Clients'),
(937, 'C-20000017', 'Related Learning Experience [102hrs]'),
(938, 'C-20000017', 'Nutrition & Diet Therapy'),
(939, 'C-20000017', 'Pharmacology'),
(940, 'C-20000017', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(941, 'C-20000017', 'Related Learning Experience (255hrs)'),
(942, 'C-20000017', 'Swimming'),
(943, 'C-20000017', 'Ethics (BSN)'),
(944, 'C-20000017', 'Logic & Critical Thinking'),
(945, 'C-20000017', 'Health Ethics'),
(946, 'C-20000017', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(947, 'C-20000017', 'Related Learning Experience (306hrs)'),
(948, 'C-20000017', 'Nursing Informatics'),
(949, 'C-20000017', 'Survival Skills (Mountain & Camping)'),
(950, 'C-20000017', 'Mariology'),
(951, 'C-20000012', 'GEN Math'),
(952, 'C-20000012', 'Art Appreciation (BSN)'),
(953, 'C-20000012', 'Microbiology & Parasitology'),
(954, 'C-20000012', 'Community Health Nursing I: Individual & Family as Clients'),
(955, 'C-20000012', 'Related Learning Experience [102hrs]'),
(956, 'C-20000012', 'Nutrition & Diet Therapy'),
(957, 'C-20000012', 'Pharmacology'),
(958, 'C-20000012', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(959, 'C-20000012', 'Related Learning Experience (255hrs)'),
(960, 'C-20000012', 'Swimming'),
(961, 'C-20000012', 'Ethics (BSN)'),
(962, 'C-20000012', 'Logic & Critical Thinking'),
(963, 'C-20000012', 'Health Ethics'),
(964, 'C-20000012', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(965, 'C-20000012', 'Related Learning Experience (306hrs)'),
(966, 'C-20000012', 'Nursing Informatics'),
(967, 'C-20000012', 'Survival Skills (Mountain & Camping)'),
(968, 'C-20000012', 'Mariology'),
(969, 'C-20000013', 'GEN Math'),
(970, 'C-20000013', 'Art Appreciation (BSN)'),
(971, 'C-20000013', 'Microbiology & Parasitology'),
(972, 'C-20000013', 'Community Health Nursing I: Individual & Family as Clients'),
(973, 'C-20000013', 'Related Learning Experience [102hrs]'),
(974, 'C-20000013', 'Nutrition & Diet Therapy'),
(975, 'C-20000013', 'Pharmacology'),
(976, 'C-20000013', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(977, 'C-20000013', 'Related Learning Experience (255hrs)'),
(978, 'C-20000013', 'Swimming'),
(979, 'C-20000013', 'Ethics (BSN)'),
(980, 'C-20000013', 'Logic & Critical Thinking'),
(981, 'C-20000013', 'Health Ethics'),
(982, 'C-20000013', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(983, 'C-20000013', 'Related Learning Experience (306hrs)'),
(984, 'C-20000013', 'Nursing Informatics'),
(985, 'C-20000013', 'Survival Skills (Mountain & Camping)'),
(986, 'C-20000013', 'Mariology'),
(987, 'C-20000004', 'GEN Math'),
(988, 'C-20000004', 'Art Appreciation (BSN)'),
(989, 'C-20000004', 'Microbiology & Parasitology');
INSERT INTO `studentsubs` (`id`, `student_id`, `subject`) VALUES
(990, 'C-20000004', 'Community Health Nursing I: Individual & Family as Clients'),
(991, 'C-20000004', 'Related Learning Experience [102hrs]'),
(992, 'C-20000004', 'Nutrition & Diet Therapy'),
(993, 'C-20000004', 'Pharmacology'),
(994, 'C-20000004', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(995, 'C-20000004', 'Related Learning Experience (255hrs)'),
(996, 'C-20000004', 'Swimming'),
(997, 'C-20000004', 'Ethics (BSN)'),
(998, 'C-20000004', 'Logic & Critical Thinking'),
(999, 'C-20000004', 'Health Ethics'),
(1000, 'C-20000004', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1001, 'C-20000004', 'Related Learning Experience (306hrs)'),
(1002, 'C-20000004', 'Nursing Informatics'),
(1003, 'C-20000004', 'Survival Skills (Mountain & Camping)'),
(1004, 'C-20000004', 'Mariology'),
(1005, 'C-20000052', 'GEN Math'),
(1006, 'C-20000052', 'Art Appreciation (BSN)'),
(1007, 'C-20000052', 'Microbiology & Parasitology'),
(1008, 'C-20000052', 'Community Health Nursing I: Individual & Family as Clients'),
(1009, 'C-20000052', 'Related Learning Experience [102hrs]'),
(1010, 'C-20000052', 'Nutrition & Diet Therapy'),
(1011, 'C-20000052', 'Pharmacology'),
(1012, 'C-20000052', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1013, 'C-20000052', 'Related Learning Experience (255hrs)'),
(1014, 'C-20000052', 'Swimming'),
(1015, 'C-20000052', 'Ethics (BSN)'),
(1016, 'C-20000052', 'Logic & Critical Thinking'),
(1017, 'C-20000052', 'Health Ethics'),
(1018, 'C-20000052', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1019, 'C-20000052', 'Related Learning Experience (306hrs)'),
(1020, 'C-20000052', 'Nursing Informatics'),
(1021, 'C-20000052', 'Survival Skills (Mountain & Camping)'),
(1022, 'C-20000052', 'Mariology'),
(1023, 'C-20000040', 'GEN Math'),
(1024, 'C-20000040', 'Art Appreciation (BSN)'),
(1025, 'C-20000040', 'Microbiology & Parasitology'),
(1026, 'C-20000040', 'Community Health Nursing I: Individual & Family as Clients'),
(1027, 'C-20000040', 'Related Learning Experience [102hrs]'),
(1028, 'C-20000040', 'Nutrition & Diet Therapy'),
(1029, 'C-20000040', 'Pharmacology'),
(1030, 'C-20000040', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1031, 'C-20000040', 'Related Learning Experience (255hrs)'),
(1032, 'C-20000040', 'Swimming'),
(1033, 'C-20000040', 'Ethics (BSN)'),
(1034, 'C-20000040', 'Logic & Critical Thinking'),
(1035, 'C-20000040', 'Health Ethics'),
(1036, 'C-20000040', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1037, 'C-20000040', 'Related Learning Experience (306hrs)'),
(1038, 'C-20000040', 'Nursing Informatics'),
(1039, 'C-20000040', 'Survival Skills (Mountain & Camping)'),
(1040, 'C-20000040', 'Mariology'),
(1041, 'C-20000025', 'GEN Math'),
(1042, 'C-20000025', 'Art Appreciation (BSN)'),
(1043, 'C-20000025', 'Microbiology & Parasitology'),
(1044, 'C-20000025', 'Community Health Nursing I: Individual & Family as Clients'),
(1045, 'C-20000025', 'Related Learning Experience [102hrs]'),
(1046, 'C-20000025', 'Nutrition & Diet Therapy'),
(1047, 'C-20000025', 'Pharmacology'),
(1048, 'C-20000025', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1049, 'C-20000025', 'Related Learning Experience (255hrs)'),
(1050, 'C-20000025', 'Swimming'),
(1051, 'C-20000025', 'Ethics (BSN)'),
(1052, 'C-20000025', 'Logic & Critical Thinking'),
(1053, 'C-20000025', 'Health Ethics'),
(1054, 'C-20000025', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1055, 'C-20000025', 'Related Learning Experience (306hrs)'),
(1056, 'C-20000025', 'Nursing Informatics'),
(1057, 'C-20000025', 'Survival Skills (Mountain & Camping)'),
(1058, 'C-20000025', 'Mariology'),
(1059, 'C-20000019', 'GEN Math'),
(1060, 'C-20000019', 'Art Appreciation (BSN)'),
(1061, 'C-20000019', 'Microbiology & Parasitology'),
(1062, 'C-20000019', 'Community Health Nursing I: Individual & Family as Clients'),
(1063, 'C-20000019', 'Related Learning Experience [102hrs]'),
(1064, 'C-20000019', 'Nutrition & Diet Therapy'),
(1065, 'C-20000019', 'Pharmacology'),
(1066, 'C-20000019', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1067, 'C-20000019', 'Related Learning Experience (255hrs)'),
(1068, 'C-20000019', 'Swimming'),
(1069, 'C-20000019', 'Ethics (BSN)'),
(1070, 'C-20000019', 'Logic & Critical Thinking'),
(1071, 'C-20000019', 'Health Ethics'),
(1072, 'C-20000019', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1073, 'C-20000019', 'Related Learning Experience (306hrs)'),
(1074, 'C-20000019', 'Nursing Informatics'),
(1075, 'C-20000019', 'Survival Skills (Mountain & Camping)'),
(1076, 'C-20000019', 'Mariology'),
(1077, 'C-20000007', 'GEN Math'),
(1078, 'C-20000007', 'Art Appreciation (BSN)'),
(1079, 'C-20000007', 'Microbiology & Parasitology'),
(1080, 'C-20000007', 'Community Health Nursing I: Individual & Family as Clients'),
(1081, 'C-20000007', 'Related Learning Experience [102hrs]'),
(1082, 'C-20000007', 'Nutrition & Diet Therapy'),
(1083, 'C-20000007', 'Pharmacology'),
(1084, 'C-20000007', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1085, 'C-20000007', 'Related Learning Experience (255hrs)'),
(1086, 'C-20000007', 'Swimming'),
(1087, 'C-20000007', 'Ethics (BSN)'),
(1088, 'C-20000007', 'Logic & Critical Thinking'),
(1089, 'C-20000007', 'Health Ethics'),
(1090, 'C-20000007', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1091, 'C-20000007', 'Related Learning Experience (306hrs)'),
(1092, 'C-20000007', 'Nursing Informatics'),
(1093, 'C-20000007', 'Survival Skills (Mountain & Camping)'),
(1094, 'C-20000007', 'Mariology'),
(1095, 'C-20000020', 'GEN Math'),
(1096, 'C-20000020', 'Art Appreciation (BSN)'),
(1097, 'C-20000020', 'Microbiology & Parasitology'),
(1098, 'C-20000020', 'Community Health Nursing I: Individual & Family as Clients'),
(1099, 'C-20000020', 'Related Learning Experience [102hrs]'),
(1100, 'C-20000020', 'Nutrition & Diet Therapy'),
(1101, 'C-20000020', 'Pharmacology'),
(1102, 'C-20000020', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1103, 'C-20000020', 'Related Learning Experience (255hrs)'),
(1104, 'C-20000020', 'Swimming'),
(1105, 'C-20000020', 'Ethics (BSN)'),
(1106, 'C-20000020', 'Logic & Critical Thinking'),
(1107, 'C-20000020', 'Health Ethics'),
(1108, 'C-20000020', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1109, 'C-20000020', 'Related Learning Experience (306hrs)'),
(1110, 'C-20000020', 'Nursing Informatics'),
(1111, 'C-20000020', 'Survival Skills (Mountain & Camping)'),
(1112, 'C-20000020', 'Mariology'),
(1113, 'C-20000034', 'GEN Math'),
(1114, 'C-20000034', 'Art Appreciation (BSN)'),
(1115, 'C-20000034', 'Microbiology & Parasitology'),
(1116, 'C-20000034', 'Community Health Nursing I: Individual & Family as Clients'),
(1117, 'C-20000034', 'Related Learning Experience [102hrs]'),
(1118, 'C-20000034', 'Nutrition & Diet Therapy'),
(1119, 'C-20000034', 'Pharmacology'),
(1120, 'C-20000034', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1121, 'C-20000034', 'Related Learning Experience (255hrs)'),
(1122, 'C-20000034', 'Swimming'),
(1123, 'C-20000034', 'Ethics (BSN)'),
(1124, 'C-20000034', 'Logic & Critical Thinking'),
(1125, 'C-20000034', 'Health Ethics'),
(1126, 'C-20000034', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1127, 'C-20000034', 'Related Learning Experience (306hrs)'),
(1128, 'C-20000034', 'Nursing Informatics'),
(1129, 'C-20000034', 'Survival Skills (Mountain & Camping)'),
(1130, 'C-20000034', 'Mariology'),
(1131, 'C-20000016', 'GEN Math'),
(1132, 'C-20000016', 'Art Appreciation (BSN)'),
(1133, 'C-20000016', 'Microbiology & Parasitology'),
(1134, 'C-20000016', 'Community Health Nursing I: Individual & Family as Clients'),
(1135, 'C-20000016', 'Related Learning Experience [102hrs]'),
(1136, 'C-20000016', 'Nutrition & Diet Therapy'),
(1137, 'C-20000016', 'Pharmacology'),
(1138, 'C-20000016', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1139, 'C-20000016', 'Related Learning Experience (255hrs)'),
(1140, 'C-20000016', 'Swimming'),
(1141, 'C-20000016', 'Ethics (BSN)'),
(1142, 'C-20000016', 'Logic & Critical Thinking'),
(1143, 'C-20000016', 'Health Ethics'),
(1144, 'C-20000016', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1145, 'C-20000016', 'Related Learning Experience (306hrs)'),
(1146, 'C-20000016', 'Nursing Informatics'),
(1147, 'C-20000016', 'Survival Skills (Mountain & Camping)'),
(1148, 'C-20000016', 'Mariology'),
(1149, 'C-20000059', 'GEN Math'),
(1150, 'C-20000059', 'Art Appreciation (BSN)'),
(1151, 'C-20000059', 'Microbiology & Parasitology'),
(1152, 'C-20000059', 'Community Health Nursing I: Individual & Family as Clients'),
(1153, 'C-20000059', 'Related Learning Experience [102hrs]'),
(1154, 'C-20000059', 'Nutrition & Diet Therapy'),
(1155, 'C-20000059', 'Pharmacology'),
(1156, 'C-20000059', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1157, 'C-20000059', 'Related Learning Experience (255hrs)'),
(1158, 'C-20000059', 'Swimming'),
(1159, 'C-20000059', 'Ethics (BSN)'),
(1160, 'C-20000059', 'Logic & Critical Thinking'),
(1161, 'C-20000059', 'Health Ethics'),
(1162, 'C-20000059', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1163, 'C-20000059', 'Related Learning Experience (306hrs)'),
(1164, 'C-20000059', 'Nursing Informatics'),
(1165, 'C-20000059', 'Survival Skills (Mountain & Camping)'),
(1166, 'C-20000059', 'Mariology'),
(1167, 'C-20000037', 'GEN Math'),
(1168, 'C-20000037', 'Art Appreciation (BSN)'),
(1169, 'C-20000037', 'Microbiology & Parasitology'),
(1170, 'C-20000037', 'Community Health Nursing I: Individual & Family as Clients'),
(1171, 'C-20000037', 'Related Learning Experience [102hrs]'),
(1172, 'C-20000037', 'Nutrition & Diet Therapy'),
(1173, 'C-20000037', 'Pharmacology'),
(1174, 'C-20000037', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1175, 'C-20000037', 'Related Learning Experience (255hrs)'),
(1176, 'C-20000037', 'Swimming'),
(1177, 'C-20000037', 'Ethics (BSN)'),
(1178, 'C-20000037', 'Logic & Critical Thinking'),
(1179, 'C-20000037', 'Health Ethics'),
(1180, 'C-20000037', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1181, 'C-20000037', 'Related Learning Experience (306hrs)'),
(1182, 'C-20000037', 'Nursing Informatics'),
(1183, 'C-20000037', 'Survival Skills (Mountain & Camping)'),
(1184, 'C-20000037', 'Mariology'),
(1185, 'C-20000043', 'GEN Math'),
(1186, 'C-20000043', 'Art Appreciation (BSN)'),
(1187, 'C-20000043', 'Microbiology & Parasitology'),
(1188, 'C-20000043', 'Community Health Nursing I: Individual & Family as Clients'),
(1189, 'C-20000043', 'Related Learning Experience [102hrs]'),
(1190, 'C-20000043', 'Nutrition & Diet Therapy'),
(1191, 'C-20000043', 'Pharmacology'),
(1192, 'C-20000043', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1193, 'C-20000043', 'Related Learning Experience (255hrs)'),
(1194, 'C-20000043', 'Swimming'),
(1195, 'C-20000043', 'Ethics (BSN)'),
(1196, 'C-20000043', 'Logic & Critical Thinking'),
(1197, 'C-20000043', 'Health Ethics'),
(1198, 'C-20000043', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1199, 'C-20000043', 'Related Learning Experience (306hrs)'),
(1200, 'C-20000043', 'Nursing Informatics'),
(1201, 'C-20000043', 'Survival Skills (Mountain & Camping)'),
(1202, 'C-20000043', 'Mariology'),
(1203, 'C-20000003', 'GEN Math'),
(1204, 'C-20000003', 'Art Appreciation (BSN)'),
(1205, 'C-20000003', 'Microbiology & Parasitology'),
(1206, 'C-20000003', 'Community Health Nursing I: Individual & Family as Clients'),
(1207, 'C-20000003', 'Related Learning Experience [102hrs]'),
(1208, 'C-20000003', 'Nutrition & Diet Therapy'),
(1209, 'C-20000003', 'Pharmacology'),
(1210, 'C-20000003', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1211, 'C-20000003', 'Related Learning Experience (255hrs)'),
(1212, 'C-20000003', 'Swimming'),
(1213, 'C-20000003', 'Ethics (BSN)'),
(1214, 'C-20000003', 'Logic & Critical Thinking'),
(1215, 'C-20000003', 'Health Ethics'),
(1216, 'C-20000003', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1217, 'C-20000003', 'Related Learning Experience (306hrs)'),
(1218, 'C-20000003', 'Nursing Informatics'),
(1219, 'C-20000003', 'Survival Skills (Mountain & Camping)'),
(1220, 'C-20000003', 'Mariology'),
(1221, 'C-20000009', 'GEN Math'),
(1222, 'C-20000009', 'Art Appreciation (BSN)'),
(1223, 'C-20000009', 'Microbiology & Parasitology'),
(1224, 'C-20000009', 'Community Health Nursing I: Individual & Family as Clients'),
(1225, 'C-20000009', 'Related Learning Experience [102hrs]'),
(1226, 'C-20000009', 'Nutrition & Diet Therapy'),
(1227, 'C-20000009', 'Pharmacology'),
(1228, 'C-20000009', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1229, 'C-20000009', 'Related Learning Experience (255hrs)'),
(1230, 'C-20000009', 'Swimming'),
(1231, 'C-20000009', 'Ethics (BSN)'),
(1232, 'C-20000009', 'Logic & Critical Thinking'),
(1233, 'C-20000009', 'Health Ethics'),
(1234, 'C-20000009', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1235, 'C-20000009', 'Related Learning Experience (306hrs)'),
(1236, 'C-20000009', 'Nursing Informatics'),
(1237, 'C-20000009', 'Survival Skills (Mountain & Camping)'),
(1238, 'C-20000009', 'Mariology'),
(1239, 'C-20000011', 'GEN Math'),
(1240, 'C-20000011', 'Art Appreciation (BSN)'),
(1241, 'C-20000011', 'Microbiology & Parasitology'),
(1242, 'C-20000011', 'Community Health Nursing I: Individual & Family as Clients'),
(1243, 'C-20000011', 'Related Learning Experience [102hrs]'),
(1244, 'C-20000011', 'Nutrition & Diet Therapy'),
(1245, 'C-20000011', 'Pharmacology'),
(1246, 'C-20000011', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1247, 'C-20000011', 'Related Learning Experience (255hrs)'),
(1248, 'C-20000011', 'Swimming'),
(1249, 'C-20000011', 'Ethics (BSN)'),
(1250, 'C-20000011', 'Logic & Critical Thinking'),
(1251, 'C-20000011', 'Health Ethics'),
(1252, 'C-20000011', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1253, 'C-20000011', 'Related Learning Experience (306hrs)'),
(1254, 'C-20000011', 'Nursing Informatics'),
(1255, 'C-20000011', 'Survival Skills (Mountain & Camping)'),
(1256, 'C-20000011', 'Mariology'),
(1257, 'C-20000002', 'GEN Math'),
(1258, 'C-20000002', 'Art Appreciation (BSN)'),
(1259, 'C-20000002', 'Microbiology & Parasitology'),
(1260, 'C-20000002', 'Community Health Nursing I: Individual & Family as Clients'),
(1261, 'C-20000002', 'Related Learning Experience [102hrs]'),
(1262, 'C-20000002', 'Nutrition & Diet Therapy'),
(1263, 'C-20000002', 'Pharmacology'),
(1264, 'C-20000002', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1265, 'C-20000002', 'Related Learning Experience (255hrs)'),
(1266, 'C-20000002', 'Swimming'),
(1267, 'C-20000002', 'Ethics (BSN)'),
(1268, 'C-20000002', 'Logic & Critical Thinking'),
(1269, 'C-20000002', 'Health Ethics'),
(1270, 'C-20000002', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1271, 'C-20000002', 'Related Learning Experience (306hrs)'),
(1272, 'C-20000002', 'Nursing Informatics'),
(1273, 'C-20000002', 'Survival Skills (Mountain & Camping)'),
(1274, 'C-20000002', 'Mariology'),
(1275, 'C-20000035', 'GEN Math'),
(1276, 'C-20000035', 'Art Appreciation (BSN)'),
(1277, 'C-20000035', 'Microbiology & Parasitology'),
(1278, 'C-20000035', 'Community Health Nursing I: Individual & Family as Clients'),
(1279, 'C-20000035', 'Related Learning Experience [102hrs]'),
(1280, 'C-20000035', 'Nutrition & Diet Therapy'),
(1281, 'C-20000035', 'Pharmacology'),
(1282, 'C-20000035', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1283, 'C-20000035', 'Related Learning Experience (255hrs)'),
(1284, 'C-20000035', 'Swimming'),
(1285, 'C-20000035', 'Ethics (BSN)'),
(1286, 'C-20000035', 'Logic & Critical Thinking'),
(1287, 'C-20000035', 'Health Ethics'),
(1288, 'C-20000035', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1289, 'C-20000035', 'Related Learning Experience (306hrs)'),
(1290, 'C-20000035', 'Nursing Informatics'),
(1291, 'C-20000035', 'Survival Skills (Mountain & Camping)'),
(1292, 'C-20000035', 'Mariology'),
(1293, 'C-20000001', 'GEN Math'),
(1294, 'C-20000001', 'Art Appreciation (BSN)'),
(1295, 'C-20000001', 'Microbiology & Parasitology'),
(1296, 'C-20000001', 'Community Health Nursing I: Individual & Family as Clients'),
(1297, 'C-20000001', 'Related Learning Experience [102hrs]'),
(1298, 'C-20000001', 'Nutrition & Diet Therapy'),
(1299, 'C-20000001', 'Pharmacology'),
(1300, 'C-20000001', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1301, 'C-20000001', 'Related Learning Experience (255hrs)'),
(1302, 'C-20000001', 'Swimming'),
(1303, 'C-20000001', 'Ethics (BSN)'),
(1304, 'C-20000001', 'Logic & Critical Thinking'),
(1305, 'C-20000001', 'Health Ethics'),
(1306, 'C-20000001', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1307, 'C-20000001', 'Related Learning Experience (306hrs)'),
(1308, 'C-20000001', 'Nursing Informatics'),
(1309, 'C-20000001', 'Survival Skills (Mountain & Camping)'),
(1310, 'C-20000001', 'Mariology'),
(1311, 'C-20000050', 'GEN Math'),
(1312, 'C-20000050', 'Art Appreciation (BSN)'),
(1313, 'C-20000050', 'Microbiology & Parasitology'),
(1314, 'C-20000050', 'Community Health Nursing I: Individual & Family as Clients'),
(1315, 'C-20000050', 'Related Learning Experience [102hrs]'),
(1316, 'C-20000050', 'Nutrition & Diet Therapy'),
(1317, 'C-20000050', 'Pharmacology'),
(1318, 'C-20000050', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1319, 'C-20000050', 'Related Learning Experience (255hrs)'),
(1320, 'C-20000050', 'Swimming'),
(1321, 'C-20000050', 'Ethics (BSN)'),
(1322, 'C-20000050', 'Logic & Critical Thinking'),
(1323, 'C-20000050', 'Health Ethics'),
(1324, 'C-20000050', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1325, 'C-20000050', 'Related Learning Experience (306hrs)'),
(1326, 'C-20000050', 'Nursing Informatics'),
(1327, 'C-20000050', 'Survival Skills (Mountain & Camping)'),
(1328, 'C-20000050', 'Mariology'),
(1329, 'C-20000021', 'GEN Math'),
(1330, 'C-20000021', 'Art Appreciation (BSN)'),
(1331, 'C-20000021', 'Microbiology & Parasitology'),
(1332, 'C-20000021', 'Community Health Nursing I: Individual & Family as Clients'),
(1333, 'C-20000021', 'Related Learning Experience [102hrs]'),
(1334, 'C-20000021', 'Nutrition & Diet Therapy'),
(1335, 'C-20000021', 'Pharmacology'),
(1336, 'C-20000021', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1337, 'C-20000021', 'Related Learning Experience (255hrs)'),
(1338, 'C-20000021', 'Swimming'),
(1339, 'C-20000021', 'Ethics (BSN)'),
(1340, 'C-20000021', 'Logic & Critical Thinking'),
(1341, 'C-20000021', 'Health Ethics'),
(1342, 'C-20000021', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1343, 'C-20000021', 'Related Learning Experience (306hrs)'),
(1344, 'C-20000021', 'Nursing Informatics'),
(1345, 'C-20000021', 'Survival Skills (Mountain & Camping)'),
(1346, 'C-20000021', 'Mariology'),
(1347, 'C-20000029', 'GEN Math'),
(1348, 'C-20000029', 'Art Appreciation (BSN)'),
(1349, 'C-20000029', 'Microbiology & Parasitology'),
(1350, 'C-20000029', 'Community Health Nursing I: Individual & Family as Clients'),
(1351, 'C-20000029', 'Related Learning Experience [102hrs]'),
(1352, 'C-20000029', 'Nutrition & Diet Therapy'),
(1353, 'C-20000029', 'Pharmacology'),
(1354, 'C-20000029', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1355, 'C-20000029', 'Related Learning Experience (255hrs)'),
(1356, 'C-20000029', 'Swimming'),
(1357, 'C-20000029', 'Ethics (BSN)'),
(1358, 'C-20000029', 'Logic & Critical Thinking'),
(1359, 'C-20000029', 'Health Ethics'),
(1360, 'C-20000029', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1361, 'C-20000029', 'Related Learning Experience (306hrs)'),
(1362, 'C-20000029', 'Nursing Informatics'),
(1363, 'C-20000029', 'Survival Skills (Mountain & Camping)'),
(1364, 'C-20000029', 'Mariology'),
(1365, 'C-20000060', 'GEN Math'),
(1366, 'C-20000060', 'Art Appreciation (BSN)'),
(1367, 'C-20000060', 'Microbiology & Parasitology'),
(1368, 'C-20000060', 'Community Health Nursing I: Individual & Family as Clients'),
(1369, 'C-20000060', 'Related Learning Experience [102hrs]'),
(1370, 'C-20000060', 'Nutrition & Diet Therapy'),
(1371, 'C-20000060', 'Pharmacology'),
(1372, 'C-20000060', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1373, 'C-20000060', 'Related Learning Experience (255hrs)'),
(1374, 'C-20000060', 'Swimming'),
(1375, 'C-20000060', 'Ethics (BSN)'),
(1376, 'C-20000060', 'Logic & Critical Thinking'),
(1377, 'C-20000060', 'Health Ethics'),
(1378, 'C-20000060', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1379, 'C-20000060', 'Related Learning Experience (306hrs)'),
(1380, 'C-20000060', 'Nursing Informatics'),
(1381, 'C-20000060', 'Survival Skills (Mountain & Camping)'),
(1382, 'C-20000060', 'Mariology'),
(1383, 'C-20000038', 'GEN Math'),
(1384, 'C-20000038', 'Art Appreciation (BSN)'),
(1385, 'C-20000038', 'Microbiology & Parasitology'),
(1386, 'C-20000038', 'Community Health Nursing I: Individual & Family as Clients'),
(1387, 'C-20000038', 'Related Learning Experience [102hrs]'),
(1388, 'C-20000038', 'Nutrition & Diet Therapy'),
(1389, 'C-20000038', 'Pharmacology'),
(1390, 'C-20000038', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1391, 'C-20000038', 'Related Learning Experience (255hrs)'),
(1392, 'C-20000038', 'Swimming'),
(1393, 'C-20000038', 'Ethics (BSN)'),
(1394, 'C-20000038', 'Logic & Critical Thinking'),
(1395, 'C-20000038', 'Health Ethics'),
(1396, 'C-20000038', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1397, 'C-20000038', 'Related Learning Experience (306hrs)'),
(1398, 'C-20000038', 'Nursing Informatics'),
(1399, 'C-20000038', 'Survival Skills (Mountain & Camping)'),
(1400, 'C-20000038', 'Mariology'),
(1401, 'C-20000005', 'GEN Math'),
(1402, 'C-20000005', 'Art Appreciation (BSN)'),
(1403, 'C-20000005', 'Microbiology & Parasitology'),
(1404, 'C-20000005', 'Community Health Nursing I: Individual & Family as Clients'),
(1405, 'C-20000005', 'Related Learning Experience [102hrs]'),
(1406, 'C-20000005', 'Nutrition & Diet Therapy'),
(1407, 'C-20000005', 'Pharmacology'),
(1408, 'C-20000005', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1409, 'C-20000005', 'Related Learning Experience (255hrs)'),
(1410, 'C-20000005', 'Swimming'),
(1411, 'C-20000005', 'Ethics (BSN)'),
(1412, 'C-20000005', 'Logic & Critical Thinking'),
(1413, 'C-20000005', 'Health Ethics'),
(1414, 'C-20000005', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1415, 'C-20000005', 'Related Learning Experience (306hrs)'),
(1416, 'C-20000005', 'Nursing Informatics'),
(1417, 'C-20000005', 'Survival Skills (Mountain & Camping)'),
(1418, 'C-20000005', 'Mariology'),
(1419, 'C-20000031', 'GEN Math'),
(1420, 'C-20000031', 'Art Appreciation (BSN)'),
(1421, 'C-20000031', 'Microbiology & Parasitology'),
(1422, 'C-20000031', 'Community Health Nursing I: Individual & Family as Clients'),
(1423, 'C-20000031', 'Related Learning Experience [102hrs]'),
(1424, 'C-20000031', 'Nutrition & Diet Therapy'),
(1425, 'C-20000031', 'Pharmacology'),
(1426, 'C-20000031', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1427, 'C-20000031', 'Related Learning Experience (255hrs)'),
(1428, 'C-20000031', 'Swimming'),
(1429, 'C-20000031', 'Ethics (BSN)'),
(1430, 'C-20000031', 'Logic & Critical Thinking'),
(1431, 'C-20000031', 'Health Ethics'),
(1432, 'C-20000031', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1433, 'C-20000031', 'Related Learning Experience (306hrs)'),
(1434, 'C-20000031', 'Nursing Informatics'),
(1435, 'C-20000031', 'Survival Skills (Mountain & Camping)'),
(1436, 'C-20000031', 'Mariology'),
(1437, 'C-20000033', 'GEN Math'),
(1438, 'C-20000033', 'Art Appreciation (BSN)'),
(1439, 'C-20000033', 'Microbiology & Parasitology'),
(1440, 'C-20000033', 'Community Health Nursing I: Individual & Family as Clients'),
(1441, 'C-20000033', 'Related Learning Experience [102hrs]'),
(1442, 'C-20000033', 'Nutrition & Diet Therapy'),
(1443, 'C-20000033', 'Pharmacology'),
(1444, 'C-20000033', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1445, 'C-20000033', 'Related Learning Experience (255hrs)'),
(1446, 'C-20000033', 'Swimming'),
(1447, 'C-20000033', 'Ethics (BSN)'),
(1448, 'C-20000033', 'Logic & Critical Thinking'),
(1449, 'C-20000033', 'Health Ethics'),
(1450, 'C-20000033', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1451, 'C-20000033', 'Related Learning Experience (306hrs)'),
(1452, 'C-20000033', 'Nursing Informatics'),
(1453, 'C-20000033', 'Survival Skills (Mountain & Camping)'),
(1454, 'C-20000033', 'Mariology'),
(1455, 'C-20000048', 'GEN Math'),
(1456, 'C-20000048', 'Art Appreciation (BSN)'),
(1457, 'C-20000048', 'Microbiology & Parasitology'),
(1458, 'C-20000048', 'Community Health Nursing I: Individual & Family as Clients'),
(1459, 'C-20000048', 'Related Learning Experience [102hrs]'),
(1460, 'C-20000048', 'Nutrition & Diet Therapy'),
(1461, 'C-20000048', 'Pharmacology'),
(1462, 'C-20000048', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1463, 'C-20000048', 'Related Learning Experience (255hrs)'),
(1464, 'C-20000048', 'Swimming'),
(1465, 'C-20000048', 'Ethics (BSN)'),
(1466, 'C-20000048', 'Logic & Critical Thinking'),
(1467, 'C-20000048', 'Health Ethics'),
(1468, 'C-20000048', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1469, 'C-20000048', 'Related Learning Experience (306hrs)'),
(1470, 'C-20000048', 'Nursing Informatics'),
(1471, 'C-20000048', 'Survival Skills (Mountain & Camping)'),
(1472, 'C-20000048', 'Mariology'),
(1473, 'C-20000024', 'GEN Math'),
(1474, 'C-20000024', 'Art Appreciation (BSN)'),
(1475, 'C-20000024', 'Microbiology & Parasitology'),
(1476, 'C-20000024', 'Community Health Nursing I: Individual & Family as Clients'),
(1477, 'C-20000024', 'Related Learning Experience [102hrs]'),
(1478, 'C-20000024', 'Nutrition & Diet Therapy'),
(1479, 'C-20000024', 'Pharmacology'),
(1480, 'C-20000024', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1481, 'C-20000024', 'Related Learning Experience (255hrs)'),
(1482, 'C-20000024', 'Swimming'),
(1483, 'C-20000024', 'Ethics (BSN)'),
(1484, 'C-20000024', 'Logic & Critical Thinking'),
(1485, 'C-20000024', 'Health Ethics'),
(1486, 'C-20000024', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1487, 'C-20000024', 'Related Learning Experience (306hrs)'),
(1488, 'C-20000024', 'Nursing Informatics'),
(1489, 'C-20000024', 'Survival Skills (Mountain & Camping)'),
(1490, 'C-20000024', 'Mariology'),
(1491, 'C-20000046', 'GEN Math'),
(1492, 'C-20000046', 'Art Appreciation (BSN)'),
(1493, 'C-20000046', 'Microbiology & Parasitology'),
(1494, 'C-20000046', 'Community Health Nursing I: Individual & Family as Clients'),
(1495, 'C-20000046', 'Related Learning Experience [102hrs]'),
(1496, 'C-20000046', 'Nutrition & Diet Therapy'),
(1497, 'C-20000046', 'Pharmacology'),
(1498, 'C-20000046', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1499, 'C-20000046', 'Related Learning Experience (255hrs)'),
(1500, 'C-20000046', 'Swimming'),
(1501, 'C-20000046', 'Ethics (BSN)'),
(1502, 'C-20000046', 'Logic & Critical Thinking'),
(1503, 'C-20000046', 'Health Ethics'),
(1504, 'C-20000046', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1505, 'C-20000046', 'Related Learning Experience (306hrs)'),
(1506, 'C-20000046', 'Nursing Informatics'),
(1507, 'C-20000046', 'Survival Skills (Mountain & Camping)'),
(1508, 'C-20000046', 'Mariology'),
(1509, 'C-20000023', 'GEN Math'),
(1510, 'C-20000023', 'Art Appreciation (BSN)'),
(1511, 'C-20000023', 'Microbiology & Parasitology'),
(1512, 'C-20000023', 'Community Health Nursing I: Individual & Family as Clients'),
(1513, 'C-20000023', 'Related Learning Experience [102hrs]'),
(1514, 'C-20000023', 'Nutrition & Diet Therapy'),
(1515, 'C-20000023', 'Pharmacology'),
(1516, 'C-20000023', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1517, 'C-20000023', 'Related Learning Experience (255hrs)'),
(1518, 'C-20000023', 'Swimming'),
(1519, 'C-20000023', 'Ethics (BSN)'),
(1520, 'C-20000023', 'Logic & Critical Thinking'),
(1521, 'C-20000023', 'Health Ethics'),
(1522, 'C-20000023', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1523, 'C-20000023', 'Related Learning Experience (306hrs)'),
(1524, 'C-20000023', 'Nursing Informatics'),
(1525, 'C-20000023', 'Survival Skills (Mountain & Camping)'),
(1526, 'C-20000023', 'Mariology'),
(1527, 'C-20000030', 'GEN Math'),
(1528, 'C-20000030', 'Art Appreciation (BSN)'),
(1529, 'C-20000030', 'Microbiology & Parasitology'),
(1530, 'C-20000030', 'Community Health Nursing I: Individual & Family as Clients'),
(1531, 'C-20000030', 'Related Learning Experience [102hrs]'),
(1532, 'C-20000030', 'Nutrition & Diet Therapy'),
(1533, 'C-20000030', 'Pharmacology'),
(1534, 'C-20000030', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1535, 'C-20000030', 'Related Learning Experience (255hrs)'),
(1536, 'C-20000030', 'Swimming'),
(1537, 'C-20000030', 'Ethics (BSN)'),
(1538, 'C-20000030', 'Logic & Critical Thinking'),
(1539, 'C-20000030', 'Health Ethics'),
(1540, 'C-20000030', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1541, 'C-20000030', 'Related Learning Experience (306hrs)'),
(1542, 'C-20000030', 'Nursing Informatics'),
(1543, 'C-20000030', 'Survival Skills (Mountain & Camping)'),
(1544, 'C-20000030', 'Mariology'),
(1545, 'C-20000015', 'GEN Math'),
(1546, 'C-20000015', 'Art Appreciation (BSN)'),
(1547, 'C-20000015', 'Microbiology & Parasitology'),
(1548, 'C-20000015', 'Community Health Nursing I: Individual & Family as Clients'),
(1549, 'C-20000015', 'Related Learning Experience [102hrs]'),
(1550, 'C-20000015', 'Nutrition & Diet Therapy'),
(1551, 'C-20000015', 'Pharmacology'),
(1552, 'C-20000015', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1553, 'C-20000015', 'Related Learning Experience (255hrs)'),
(1554, 'C-20000015', 'Swimming'),
(1555, 'C-20000015', 'Ethics (BSN)'),
(1556, 'C-20000015', 'Logic & Critical Thinking'),
(1557, 'C-20000015', 'Health Ethics'),
(1558, 'C-20000015', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1559, 'C-20000015', 'Related Learning Experience (306hrs)'),
(1560, 'C-20000015', 'Nursing Informatics'),
(1561, 'C-20000015', 'Survival Skills (Mountain & Camping)'),
(1562, 'C-20000015', 'Mariology'),
(1563, 'C-20000022', 'GEN Math'),
(1564, 'C-20000022', 'Art Appreciation (BSN)'),
(1565, 'C-20000022', 'Microbiology & Parasitology'),
(1566, 'C-20000022', 'Community Health Nursing I: Individual & Family as Clients'),
(1567, 'C-20000022', 'Related Learning Experience [102hrs]'),
(1568, 'C-20000022', 'Nutrition & Diet Therapy'),
(1569, 'C-20000022', 'Pharmacology'),
(1570, 'C-20000022', 'Care of Mother, Child, Adoloscent (Well Clients)'),
(1571, 'C-20000022', 'Related Learning Experience (255hrs)'),
(1572, 'C-20000022', 'Swimming'),
(1573, 'C-20000022', 'Ethics (BSN)'),
(1574, 'C-20000022', 'Logic & Critical Thinking'),
(1575, 'C-20000022', 'Health Ethics'),
(1576, 'C-20000022', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)'),
(1577, 'C-20000022', 'Related Learning Experience (306hrs)'),
(1578, 'C-20000022', 'Nursing Informatics'),
(1579, 'C-20000022', 'Survival Skills (Mountain & Camping)'),
(1580, 'C-20000022', 'Mariology'),
(1581, 'C-20000057', 'GEN Math'),
(1582, 'C-20000057', 'Art Appreciation'),
(1583, 'C-20000057', 'Masining na Pagpapahayag'),
(1584, 'C-20000057', 'Inorganic Chemistry'),
(1585, 'C-20000057', 'Cell & Developmental Biology'),
(1586, 'C-20000057', 'Psychological Statistics'),
(1587, 'C-20000057', 'Developmental Psychology'),
(1588, 'C-20000057', 'Swimming'),
(1589, 'C-20000057', 'Understanding the Self'),
(1590, 'C-20000057', 'Rizal Life, Works & Writings'),
(1591, 'C-20000057', 'General Zoology'),
(1592, 'C-20000057', 'Biochemistry'),
(1593, 'C-20000057', 'Experimental Psychology'),
(1594, 'C-20000057', 'Social Psychology'),
(1595, 'C-20000057', 'Survival Skills (Mountain & Camping)'),
(1596, 'C-20000057', 'Christian Apologetics'),
(1597, 'C-20000054', 'GEN Math'),
(1598, 'C-20000054', 'Art Appreciation'),
(1599, 'C-20000054', 'Masining na Pagpapahayag'),
(1600, 'C-20000054', 'Inorganic Chemistry'),
(1601, 'C-20000054', 'Cell & Developmental Biology'),
(1602, 'C-20000054', 'Psychological Statistics'),
(1603, 'C-20000054', 'Developmental Psychology'),
(1604, 'C-20000054', 'Swimming'),
(1605, 'C-20000054', 'Understanding the Self'),
(1606, 'C-20000054', 'Rizal Life, Works & Writings'),
(1607, 'C-20000054', 'General Zoology'),
(1608, 'C-20000054', 'Biochemistry'),
(1609, 'C-20000054', 'Experimental Psychology'),
(1610, 'C-20000054', 'Social Psychology'),
(1611, 'C-20000054', 'Survival Skills (Mountain & Camping)'),
(1612, 'C-20000054', 'Christian Apologetics'),
(1613, 'C-20000042', 'GEN Math'),
(1614, 'C-20000042', 'Art Appreciation'),
(1615, 'C-20000042', 'Masining na Pagpapahayag'),
(1616, 'C-20000042', 'Inorganic Chemistry'),
(1617, 'C-20000042', 'Cell & Developmental Biology'),
(1618, 'C-20000042', 'Psychological Statistics'),
(1619, 'C-20000042', 'Developmental Psychology'),
(1620, 'C-20000042', 'Swimming'),
(1621, 'C-20000042', 'Understanding the Self'),
(1622, 'C-20000042', 'Rizal Life, Works & Writings'),
(1623, 'C-20000042', 'General Zoology'),
(1624, 'C-20000042', 'Biochemistry'),
(1625, 'C-20000042', 'Experimental Psychology'),
(1626, 'C-20000042', 'Social Psychology'),
(1627, 'C-20000042', 'Survival Skills (Mountain & Camping)'),
(1628, 'C-20000042', 'Christian Apologetics'),
(1629, 'C-20000061', 'GEN Math'),
(1630, 'C-20000061', 'Art Appreciation'),
(1631, 'C-20000061', 'Masining na Pagpapahayag'),
(1632, 'C-20000061', 'Inorganic Chemistry'),
(1633, 'C-20000061', 'Cell & Developmental Biology'),
(1634, 'C-20000061', 'Psychological Statistics'),
(1635, 'C-20000061', 'Developmental Psychology'),
(1636, 'C-20000061', 'Swimming'),
(1637, 'C-20000061', 'Understanding the Self'),
(1638, 'C-20000061', 'Rizal Life, Works & Writings'),
(1639, 'C-20000061', 'General Zoology'),
(1640, 'C-20000061', 'Biochemistry'),
(1641, 'C-20000061', 'Experimental Psychology'),
(1642, 'C-20000061', 'Social Psychology'),
(1643, 'C-20000061', 'Survival Skills (Mountain & Camping)'),
(1644, 'C-20000061', 'Christian Apologetics'),
(1645, 'C-20000047', 'GEN Math'),
(1646, 'C-20000047', 'Art Appreciation'),
(1647, 'C-20000047', 'Masining na Pagpapahayag'),
(1648, 'C-20000047', 'Inorganic Chemistry'),
(1649, 'C-20000047', 'Cell & Developmental Biology'),
(1650, 'C-20000047', 'Psychological Statistics'),
(1651, 'C-20000047', 'Developmental Psychology'),
(1652, 'C-20000047', 'Swimming'),
(1653, 'C-20000047', 'Understanding the Self'),
(1654, 'C-20000047', 'Rizal Life, Works & Writings'),
(1655, 'C-20000047', 'General Zoology'),
(1656, 'C-20000047', 'Biochemistry'),
(1657, 'C-20000047', 'Experimental Psychology'),
(1658, 'C-20000047', 'Social Psychology'),
(1659, 'C-20000047', 'Survival Skills (Mountain & Camping)'),
(1660, 'C-20000047', 'Christian Apologetics'),
(1661, 'C-20000058', 'GEN Math'),
(1662, 'C-20000058', 'Art Appreciation'),
(1663, 'C-20000058', 'Masining na Pagpapahayag'),
(1664, 'C-20000058', 'Inorganic Chemistry'),
(1665, 'C-20000058', 'Cell & Developmental Biology'),
(1666, 'C-20000058', 'Psychological Statistics'),
(1667, 'C-20000058', 'Developmental Psychology'),
(1668, 'C-20000058', 'Swimming'),
(1669, 'C-20000058', 'Understanding the Self'),
(1670, 'C-20000058', 'Rizal Life, Works & Writings'),
(1671, 'C-20000058', 'General Zoology'),
(1672, 'C-20000058', 'Biochemistry'),
(1673, 'C-20000058', 'Experimental Psychology'),
(1674, 'C-20000058', 'Social Psychology'),
(1675, 'C-20000058', 'Survival Skills (Mountain & Camping)'),
(1676, 'C-20000058', 'Christian Apologetics');

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
(52, '137', 'Experimental Psychology', 'Psy 104', 0),
(53, '137', 'National Service Training Program 2', 'NSTP 2', 3),
(54, '185', 'Health Education', 'NCM 102', 0),
(55, '185', 'Nursing Informatics', 'NCM 110', 3),
(56, '185', 'General Zoology', 'Zoo', 5),
(57, '184', 'Mariology', 'Relg 2', 0),
(58, '184', 'Christian Apologetics', 'Relg 3', 2),
(59, '154', 'Building and Enhancing New Literacies Across the Curriculum', 'Ed 102 ', 0),
(60, '154', 'Teaching Literacy in Elementary Grades Through Literature', 'TchgEng2', 3),
(61, '154', 'Teaching Internship', 'Prac', 6),
(62, '154', 'The Teacher & the Community, School Culture &  Organizational Leadership', 'Ed 108', 3),
(63, '154', 'Living in the IT Era', 'GE Elec', 3),
(64, 'DO4 94 07 1206', 'Sacraments', 'Relg 5', 0),
(65, '9237', 'Social Psychology', 'Psy 105', 0),
(66, 'PRC 0781116', 'Nutrition for Sports & Exercise', 'PE 104*', 0),
(68, '138', 'Edukasyong Pantahanan at Pangkabuhayan with  Entrepreneurship', 'TchgTLE2', 0),
(69, '9276', 'Understanding the Self', 'GE 108', 0),
(70, '4127', 'Theories of Personality', 'Psy 101', 0);

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
(10, 'GE 101', 'Purposive Communication', '3'),
(11, 'GE 102', 'Mathematics in the Modern World', '3'),
(12, 'GE 103', 'Readings in Philippines History', '3'),
(14, 'Ed 101', 'The Child & Adolescent Learners and Learning Principles', '3'),
(15, 'Fil 1', 'Komunikasyon sa Akademikong Filipino', '3'),
(16, 'PE 101', 'Laro ng Lahi', '2'),
(18, 'Relg 1', 'Pastoral Theology', '2'),
(20, 'GE 106', 'The Contemporary World', '3'),
(21, 'GE 107', 'Science, Technology & Society', '3'),
(22, 'GE 108', 'Understanding the Self', '3'),
(23, 'Ed 102 ', 'Building and Enhancing New Literacies Across the Curriculum', '3'),
(24, 'Fil 2', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', '3'),
(25, 'PE 102', 'Combat Sports (Taekwondo)', '2'),
(26, 'NSTP 2', 'National Service Training Program 2', '3'),
(27, 'Relg 2', 'Mariology', '2'),
(28, 'Ed 103', 'Technology for Teaching Learning 1', '3'),
(29, 'Ed 104', 'Facilitating Learner-Centered Teaching', '3'),
(30, 'TchgM1', 'Teaching Math in the Primary Grades', '3'),
(31, 'TchgSci1', 'Teaching Science in the Elementary Grades (Biology & Chemistry)', '3'),
(33, 'TchgSS1', 'Teaching Social Studies in the Elementary Grades (Phil History & Government)', '3'),
(34, 'TchgFil1', 'Pagtuturo ng Filipino sa Elementary I - Estruktura at Gamit ng Wikang Filipino', '3'),
(35, 'ValEd', 'Good Manners & Right Conduct (Edukasyon sa Pagpapakatao)', '3'),
(37, 'PE 103', 'Swimming', '2'),
(39, 'Rizal', 'Rizal Life, Works & Writings', '3'),
(40, 'Ed 105', 'The Teaching Profession', '3'),
(41, 'Ed 106', 'Foundation of Special & Inclusive Education', '3'),
(42, 'TchgM2', 'Teaching Math in the Intermediate Grades ', '3'),
(43, 'TchgSci2', 'Teaching Science in the Elementary Grades  (Physics, Earth & Space Science)', '3'),
(44, 'TchgSS2', 'Teaching Social Studies in Elementary Grades (Culture & Geography)', '3'),
(45, 'TchgFil2', 'Pagtuturo ng Filipino sa Elementarya II - Panitikan ng Pilipinas', '3'),
(48, 'TTL2', 'Technology for Teaching & Learning in the Elementary Grades', '3'),
(49, 'PE 104', 'Survival Skills (Mountain & Camping)', '2'),
(50, 'Relg 3', 'Christian Apologetics', '2'),
(51, 'Ed 107', 'The Teacher & the School Curriculum', '3'),
(52, 'AssLrng1', 'Assessment of Learning 1', '3'),
(53, 'MTB-MLE', 'Content & Pedagogy for the Mother-Tongue', '3'),
(54, 'TchgEng1', 'Teaching English in the Elementary Grades (Language Arts)', '3'),
(55, 'TchgArts', 'Teaching Arts in the Elementary Grades', '3'),
(56, 'TchgTLE1', 'Edukasyong Pantahanan at Pangkabuhayan', '3'),
(57, 'ECE', 'Play & Developmentally Appropriate Practices in  Early Chilhood Education', '3'),
(58, 'Relg 4', 'Theology of the Body', '2'),
(59, 'Ed 108', 'The Teacher & the Community, School Culture &  Organizational Leadership', '3'),
(60, 'AssLrng2', 'Assessment of Learning 2', '3'),
(61, 'TchgMusic', 'Teaching Music in the Elementary Grades', '3'),
(62, 'TchgEng2', 'Teaching Literacy in Elementary Grades Through Literature', '3'),
(63, 'TchgPEH', 'Teaching PE & Health in Elementary Grades', '3'),
(64, 'TchgTLE2', 'Edukasyong Pantahanan at Pangkabuhayan with  Entrepreneurship', '3'),
(66, 'GE Elec', 'Living in the IT Era', '3'),
(67, 'FS 1', 'Observation of Teaching-Learning in Actual School Environment', '3'),
(68, 'FS 2', 'Participation & Teaching Assistantship', '3'),
(69, 'ResEd', 'Research in Education', '3'),
(70, 'CSM', 'Canossian Spirituality & Mission', '1'),
(71, 'Prac', 'Teaching Internship', '6'),
(72, 'Psy 100', 'Introduction to Psychology', '3'),
(73, 'Psy 101', 'Theories of Personality', '3'),
(74, 'Fil 3', 'Masining na Pagpapahayag', '3'),
(75, 'Chem', 'Inorganic Chemistry', '5'),
(76, 'Bio', 'Cell & Developmental Biology', '5'),
(77, 'Psy 102', 'Psychological Statistics', '5'),
(78, 'Psy 103', 'Developmental Psychology', '3'),
(79, 'Zoo', 'General Zoology', '5'),
(80, 'Biochem', 'Biochemistry', '5'),
(81, 'Psy 104', 'Experimental Psychology', '5'),
(82, 'Psy 105', 'Social Psychology', '3'),
(84, 'Psy 106', 'Field Methods in Psychology', '5'),
(85, 'Psy 107', 'Abnormal Psychology', '3'),
(86, 'Psy 108', 'Industrial/Organizational Psychology', '3'),
(87, 'Psy 109', 'Group Dynamics', '3'),
(88, 'Psy 110', 'Intro to Counselling', '3'),
(89, 'Psy 112', 'Psychological Assessment', '5'),
(90, 'Psy 113', 'Physiological Psychology', '3'),
(91, 'Psy 114', 'Cognitive Psychology', '3'),
(92, 'Psy 115', 'Intro to Clinical Psychology', '3'),
(93, 'Psy 117', 'Psychology for Exceptional Children', '3'),
(96, 'Relg 5 ', 'Spirituality & Vocation', '2'),
(97, 'Psy 118', 'Research in Psychology I', '3'),
(98, 'Psy 119', 'Seminar in Psychology: Recruitment & Selection', '3'),
(99, 'Psy 116', 'Sikolohiyang Pilipino or Filipino Psychology', '3'),
(100, 'Psy 120', 'Research in Psychology II', '3'),
(101, 'Prac ', 'Practicum in Psychology (150hrs min.)', '3'),
(102, 'NCM 100', 'Theoretical Foundation of Nursing', '3'),
(103, 'Ana/Physio', 'Anatomy Physiology', '5'),
(108, 'NCM 101', 'Health Assessment', '3'),
(109, 'RLE 101', 'Related Learning Experience (102hrs)', '2'),
(110, 'NCM 102', 'Health Education', '3'),
(111, 'NCM 103', 'Fundamentals of Nursing Practice', '3'),
(119, 'RLE 103', 'Related Learning Experience (102hrs.)', '2'),
(120, 'Micro/Para', 'Microbiology & Parasitology', '4'),
(121, 'NCM 104', 'Community Health Nursing I: Individual & Family as Clients', '2'),
(123, 'NCM 105', 'Nutrition & Diet Therapy', '3'),
(124, 'NCM 106', 'Pharmacology', '3'),
(125, 'NCM 107', 'Care of Mother, Child, Adoloscent (Well Clients)', '4'),
(126, 'RLE 107', 'Related Learning Experience (255hrs)', '5'),
(129, 'GE 105', 'Art Appreciation (BSN)', '3'),
(130, 'GE 104', 'Art Appreciation', '3'),
(131, 'GE 104 ', 'Understanding the Self (BSN)', '3'),
(133, 'RLE 104 (CHN)', 'Related Learning Experience [102hrs]', '2'),
(134, 'GE 105 ', 'Ethics', '3'),
(135, 'GE 106 ', 'Ethics (BSN)', '3'),
(136, 'Logic', 'Logic & Critical Thinking', '3'),
(137, 'NCM 108', 'Health Ethics', '3'),
(139, 'RLE 109', 'Related Learning Experience (306hrs)', '6'),
(140, 'NCM 110', 'Nursing Informatics', '3'),
(141, 'NCM 109', 'Care of Mother & Child At-Risk or with Problems  (Acute & Chronic)', '6'),
(142, 'NSTP 1', 'National Service Training Program 1', '3'),
(143, 'NCM 112', 'Care of Clients with Problems in Oxygenation, Fluid &  Electrolyte, Infectious, Inflammatory & Immunologic Resp', '8'),
(144, 'RLE 112', 'Related Learning Experience [306hrs]', '6'),
(145, 'NCM 111', 'Nursing Research 1', '3'),
(146, 'NCM 113', 'Community Health Nursing 2: Population Groups & Community as Community Clients', '2'),
(147, 'RLE 113 (CHN)', 'Related Learning Experience (51hrs)', '1'),
(148, 'NCM 114', 'Care of the Older Person/Adult', '2'),
(149, 'RLE 114', 'Related Learning Experience [51hrs]', '1'),
(150, 'NCM 115', 'Nursing Research 2', '2'),
(151, 'NCM 116', 'Care of Clients with Problems in Nutrition & GI, Metabolism &  Endocrine, Perception & Coordination,  Acute & C', '5'),
(152, 'RLE 116', 'Related Learning Experience (204hrs)*', '4'),
(153, 'NCM 117', 'Care of Clients with Maladaptive Patterns of Behavior,  Acute & Chronic', '4'),
(154, 'RLE 117', 'Related Learning Experience [204hrs]*', '4'),
(155, 'GE Elec 3', 'Elective 3', '3'),
(156, 'NCM 118', 'Nursing Care of Clients with Life Threatening Conditions/ Acutely ill/Multi-organ Problems/High Acuity & Emerge', '4'),
(157, 'RLE 118', 'Related Learning Experience [255hrs]', '5'),
(158, 'NCM 119', 'Nursing Leadership & Management', '4'),
(159, 'RLE 119', 'Related Learning Experience (153hrs)', '3'),
(160, 'Relg 5', 'Sacraments', '2'),
(161, 'NCM 120', 'Decent Work Employment & Transcultural Nursing', '3'),
(162, 'NCM 121', 'Disaster Nursing ', '2'),
(163, 'RLE 121', 'Related Learning Experience (51hrs.)', '1'),
(164, 'NCM 122', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)', '8'),
(165, 'GE 108 ', 'The Contemporary World (BSN)', '3'),
(166, 'PE 104*', 'Nutrition for Sports & Exercise', '2');

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
(42, '137', 'Judith C. Garcia', 'male', '09982329608', 'Blk 7 Lot 7, Bellavita Alaminos, San Andres, Alaminos, Laguna'),
(43, '185', 'Girlie Mannphy A. Lacambra', 'male', '09258468725', 'Ciabal Compound, Brgy. Del Remedio, San Pablo City, 4000 Laguna'),
(44, '184', 'Rhea V. Melendrez', 'male', '09333567267', 'Justice Araullo St., Farconville Subd., Brgy. San Francisco, San Pablo City, Laguna'),
(45, '154', 'Josephine V.  Paet', 'male', '09178143976', 'Purok 5 Brgy.  Alibungbungan Nagcarlan,  Laguna'),
(46, 'DO4 94 07 1206', 'Sr. Dolores Z. Sangel', 'female', '09208903170', 'Canossa College San Pablo City'),
(47, '9237', 'Apple Cherry T. De Vera', 'female', '09053740287', 'Purok IV Brgy. San Vicente, SPC'),
(48, 'PRC 0781116', 'Ryan P. Suminstrado', 'male', '09454772414', '1783 Sta. Monica, SPC'),
(50, '138', 'May A. Garcia', 'female', '09239534633', '572 Dona Concepcion St., Marino Subd., S.P.C.'),
(51, '9276', ' Camilla Louis B. Gabriel', 'female', '09282292717', '0065A Malabon Subd. Brgy. Lumingon, Tiaong Quezon'),
(52, '4127', 'Noraida G. Salvosa', 'female', '09052149915', '3 int 3 M. Paulino St  San Pablo City Brgy 11- E');

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
(108, 'C-19000051', '596Ou', 'student'),
(109, 'C-19000029', 'iZR9D', 'student'),
(110, 'C-19000021', 'Jdw2N', 'student'),
(111, 'C-19000054', 'K4Fdo', 'student'),
(112, 'C-19000053', '0uFYB', 'student'),
(113, 'C-19000033', 'rEkg7', 'student'),
(114, 'C-19000031', 'EJIvE', 'student'),
(115, 'C-19000041', '8ZHpA', 'student'),
(116, 'C-19000039', 'DyCS3', 'student'),
(117, 'C-19000037', 'IBFPs', 'student'),
(118, 'C-19000030', 'TIml9', 'student'),
(119, 'C-19000032', 'hhQtk', 'student'),
(120, 'C-19000040', 'A6ZKe', 'student'),
(121, 'C-19000034', 'sRPYj', 'student'),
(122, 'C-19000043', 'sW5EN', 'student'),
(123, 'C-19000044', '85ech', 'student'),
(124, 'C-19000038', 'croLp', 'student'),
(125, 'C-19000042', 'vgZqx', 'student'),
(126, 'C-19000003', 'ARRRS', 'student'),
(127, 'C-19000009', 'BwIbi', 'student'),
(128, 'C-200000049', 'D1RTf', 'student'),
(129, 'C-19000006', '5oSAw', 'student'),
(130, 'C-19000049', 'BP8ut', 'student'),
(131, 'C-19000010', 'gP17X', 'student'),
(132, 'C-19000011', 'ZiKSP', 'student'),
(133, 'C-19000015', 'h97MA', 'student'),
(134, 'C-19000028', 'DY9Ip', 'student'),
(135, 'C-19000035', 'BP6em', 'student'),
(136, 'C-19000008', 'PQsKU', 'student'),
(137, 'C-19000036', '9lAMG', 'student'),
(138, 'C-2000028', 'luQH0', 'student'),
(139, 'C-19000055', 'GT7Pr', 'student'),
(140, 'C-19000007', 'NbtW3', 'student'),
(141, 'C-190000', 'QNc70', 'student'),
(142, 'C-19000024', 'FZzqp', 'student'),
(143, 'C-19000025', 'FjTYf', 'student'),
(144, 'C-19000045', 'pFTBd', 'student'),
(145, 'C-19000023', 'zgUY2', 'student'),
(146, 'C-18000001', 'WKcZm', 'student'),
(147, 'C-18000009', '0cbKZ', 'student'),
(148, 'C-19000018', '812bl', 'student'),
(149, 'C-19000016', 'iIVsB', 'student'),
(150, 'C-19000047', 'GIfqA', 'student'),
(151, 'C-19000048', 'nL7Qc', 'student'),
(152, 'C-19000027', 'LVdJr', 'student'),
(153, 'C-19000048', 'EiDQr', 'student'),
(154, 'C-19000027', 'U8p3J', 'student'),
(155, 'C-0000006', 'V2lEi', 'student'),
(156, 'C-20000036', 'gBDgV', 'student'),
(157, 'C-20000032', 'boaqv', 'student'),
(158, 'C-20000027', 'FET94', 'student'),
(159, 'C-20000045', '9qsY7', 'student'),
(160, 'C-20000017', 'fUKMR', 'student'),
(161, 'C-20000012', '7xHrR', 'student'),
(162, 'C-20000013', 'WIPHm', 'student'),
(163, 'C-20000004', 'p5o5K', 'student'),
(164, 'C-20000052', 'NudAF', 'student'),
(165, 'C-20000040', 'sMGOc', 'student'),
(166, 'C-20000025', 'jNzcL', 'student'),
(167, 'C-20000019', 'fRd1F', 'student'),
(168, 'C-20000007', 'rB8cC', 'student'),
(169, 'C-20000020', 'yQ3s4', 'student'),
(170, 'C-20000034', 'QbNPD', 'student'),
(171, 'C-20000016', 'yp4k4', 'student'),
(172, 'C-20000059', 'sCWV5', 'student'),
(173, 'C-20000037', 'Z3dSk', 'student'),
(174, 'C-20000043', 'Anhbb', 'student'),
(175, 'C-20000003', 'EBDbj', 'student'),
(176, 'C-20000009', 'qjNgt', 'student'),
(177, 'C-20000011', '2zJDh', 'student'),
(178, 'C-20000002', 'gqwRo', 'student'),
(179, 'C-20000035', 'KEZh1', 'student'),
(180, 'C-20000001', 'ScbOl', 'student'),
(181, 'C-20000050', 'AhMiV', 'student'),
(182, 'C-20000021', 'zhiHk', 'student'),
(183, 'C-20000029', 'tgrw8', 'student'),
(184, 'C-20000060', 'ggWbs', 'student'),
(185, 'C-20000038', 'oo8xf', 'student'),
(186, 'C-20000005', '64dWs', 'student'),
(187, 'C-20000031', 'tp9U7', 'student'),
(188, 'C-20000033', 'nnEwt', 'student'),
(189, 'C-20000048', 'mURQA', 'student'),
(190, 'C-20000024', 'tvb2K', 'student'),
(191, 'C-20000046', 'yPYKX', 'student'),
(192, 'C-20000023', 'utvsg', 'student'),
(193, 'C-20000030', 'M2rvN', 'student'),
(194, 'C-20000015', 'BR0JY', 'student'),
(195, 'C-20000022', '41Mws', 'student'),
(196, 'C-20000057', 'h5Lm6', 'student'),
(197, 'C-20000054', '1DlR6', 'student'),
(198, 'C-20000042', 'ogRge', 'student'),
(199, 'C-20000061', 'buNw8', 'student'),
(200, 'C-20000047', 'BXdBc', 'student'),
(201, 'C-20000058', 'yDfJa', 'student'),
(202, '137', 'SZIFZ', 'faculty'),
(203, '185', '1IPTB', 'faculty'),
(204, '184', '369W2', 'faculty'),
(205, '154', 'Nz6g6', 'faculty'),
(206, 'DO4 94 07 1206', 'D0Kyn', 'faculty'),
(207, '9237', 'UPmCT', 'faculty'),
(208, 'PRC 0781116', 'Squ8y', 'faculty'),
(209, '138', 'kv7b9', 'faculty'),
(210, '138', '6laXF', 'faculty'),
(211, '9276', '32ylV', 'faculty'),
(212, '4127', 'yaJeC', 'faculty');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resigns`
--
ALTER TABLE `resigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `studentrecords`
--
ALTER TABLE `studentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `studentsubs`
--
ALTER TABLE `studentsubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1677;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `student_cs`
--
ALTER TABLE `student_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `sublists`
--
ALTER TABLE `sublists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `teacherrecords`
--
ALTER TABLE `teacherrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `teacher_cs`
--
ALTER TABLE `teacher_cs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `withdrawns`
--
ALTER TABLE `withdrawns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
