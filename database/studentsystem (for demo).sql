-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 08:17 AM
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
(77, 'Bachelor of Elementary Education', 'Science, Technology & Society', 'first', 'second', '', 0),
(78, 'Bachelor of Elementary Education', 'Understanding the Self', 'first', 'second', '', 0),
(79, 'Bachelor of Elementary Education', 'Building & Enhancing New Literacies Across the Curriculum', 'first', 'second', '', 0),
(80, 'Bachelor of Elementary Education', 'Recreation (Board Games/Indoor Games)', 'first', 'second', '', 0),
(81, 'Bachelor of Elementary Education', 'Mariology', 'first', 'second', '', 0),
(82, 'Bachelor of Elementary Education', 'Christian Apologetics', 'first', 'second', '', 0),
(83, 'Bachelor of Elementary Education', 'Pagbasa at Pagsulat Tungo sa Pananaliksik', 'first', 'second', '', 0),
(86, 'Bachelor of Elementary Education', 'The Teacher & The Community, School Culture & Organizational Leadership', 'third', 'second', '', 0),
(87, 'Bachelor of Elementary Education', 'Assessment in Learning 2', 'third', 'second', '', 0),
(88, 'Bachelor of Elementary Education', 'Teaching Music in the Elementary Grades', 'third', 'second', '', 0),
(89, 'Bachelor of Elementary Education', 'Teaching Literacy in the Elementary Grades Through Literature', 'third', 'second', '', 0),
(90, 'Bachelor of Elementary Education', 'Teaching PE & Health in Elementary Grades', 'third', 'second', '', 0),
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
(108, 'Bachelor of Science in Nursing', 'Logic & Critical Thinking', 'second', 'second', '', 0),
(109, 'Bachelor of Science in Nursing', 'Health Ethics', 'second', 'second', '', 0),
(110, 'Bachelor of Science in Nursing', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)', 'second', 'second', '', 0),
(111, 'Bachelor of Science in Nursing', 'Related Learning Experience (306hrs)', 'second', 'second', '', 0),
(112, 'Bachelor of Science in Nursing', 'Nursing Informatics', 'second', 'second', '', 0),
(113, 'Bachelor of Science in Nursing', 'Nutrition for Sports and Exercise*', 'second', 'second', '', 0),
(114, 'Bachelor of Science in Nursing', 'Mariology*', 'second', 'second', '', 0),
(115, 'Bachelor of Science in Nursing', 'Care of the Older Person/Adult', 'third', 'second', '', 0),
(119, 'Bachelor of Science in Nursing', 'Related Learning Experience (51hrs)', 'third', 'second', '', 0),
(120, 'Bachelor of Science in Nursing', 'Nursing Research 2', 'third', 'second', '', 0),
(121, 'Bachelor of Science in Nursing', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro', 'third', 'second', '', 0),
(122, 'Bachelor of Science in Nursing', 'Related Learning Experience (204hrs)', 'third', 'second', '', 0),
(123, 'Bachelor of Science in Nursing', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic', 'third', 'second', '', 0),
(124, 'Bachelor of Science in Nursing', 'Related Learning Experience (204hrs)*', 'third', 'second', '', 0),
(125, 'Bachelor of Science in Nursing', 'Living in the IT Era*', 'third', 'second', '', 0),
(126, 'Bachelor of Science in Nursing', 'Theology of the Body', 'third', 'second', '', 0),
(127, 'Bachelor of Science in Nursing', 'Decent Work Employment & Transcultural Nursing', 'forth', 'second', '', 0),
(128, 'Bachelor of Science in Nursing', 'Disaster Nursing', 'forth', 'second', '', 0),
(129, 'Bachelor of Science in Nursing', 'Related Learning Experience (51hrs)*', 'forth', 'second', '', 0),
(130, 'Bachelor of Science in Nursing', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)', 'forth', 'second', '', 0),
(131, 'Bachelor of Science in Nursing', 'Rizals Life, Works & Writings', 'forth', 'second', '', 0),
(132, 'Bachelor of Science in Nursing', 'The Contemporary Wolrd*', 'forth', 'second', '', 0),
(133, 'Bachelor of Science in Psychology', 'Ethics-', 'first', 'second', '', 0),
(134, 'Bachelor of Science in Psychology', 'The Contemporary World-', 'first', 'second', '', 0),
(135, 'Bachelor of Science in Psychology', 'Science, Technology & Society-', 'first', 'second', '', 0),
(136, 'Bachelor of Science in Psychology', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-', 'first', 'second', '', 0),
(137, 'Bachelor of Science in Psychology', 'Theories of Personality', 'first', 'second', '', 0),
(138, 'Bachelor of Science in Psychology', 'Mariology-', 'first', 'second', '', 0),
(139, 'Bachelor of Science in Psychology', 'Recreation (Board Games/Indoor Games)-', 'first', 'second', '', 0),
(140, 'Bachelor of Science in Psychology', 'National Service Training Program 2-', 'first', 'second', '', 0),
(141, 'Bachelor of Science in Psychology', 'Rizals Life, Works & Writings-', 'second', 'second', '', 0),
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

--
-- Dumping data for table `studentrecords`
--

INSERT INTO `studentrecords` (`id`, `student_id`, `name`, `gender`, `cellphone`, `bday`, `bplace`, `address`, `course`, `status`, `year`) VALUES
(62, 'C-19000051', 'Alo, Avhegail Bombane', 'female', '09666927154', '2001-03-28', 'San Pablo City, Laguna', 'Brgy. Manggahan, Dolores, Quezon', 'Bachelor of Elementary Education', 'regular', ''),
(63, 'C-19000029', 'Amante, Diane Gonce', 'male', '09666927154', '2001-01-26', 'Mariveles, Bataan', '44 Guiho St., Old Alion,\r\nMariveles, Bataan', 'Bachelor of Elementary Education', 'regular', ''),
(64, 'C-19000021', 'Austria, Ruth Margareth Corbantes', 'female', '5030866', '2001-04-18', 'San Pablo City, Laguna', '117 Brgy. Soledad, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(65, 'C-19000054', 'Calabia, Danica Vasquez', 'female', '09276649774', '2001-01-21', 'San Pablo City, Laguna', 'Brgy. San Ignacio, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(66, 'C-19000053', 'Calabia, Diane Vasquez', 'female', '09276649774', '2000-01-26', 'San Pablo City, Laguna', 'Brgy. San Ignacio, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(67, 'C-19000033', 'Capule, Jennelle Magaling', 'female', '09355748656', '2001-05-04', 'San Pablo City, Laguna', 'Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Elementary Education', 'regular', ''),
(68, 'C-19000031', 'Cariaga, Mcee Pisano', 'female', '09958514458', '1999-08-11', 'San Pablo City, Laguna', 'Brgy. Pook, Rizal, Laguna', 'Bachelor of Elementary Education', 'regular', ''),
(69, 'C-19000041', 'Cariño, Lynette  ', 'female', '09556958129', '2000-06-03', 'Maragondon, Cavite', 'Brgy. Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(70, 'C-19000039', 'Dimatulac, Megan Luzon', 'female', '09556958129', '2001-03-08', 'Poblacion Manansalay, Oriental Mindoro', 'Brgy. Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(71, 'C-19000037', 'Macuja, Shaine Gallano', 'female', '09556958129', '2000-08-31', 'Mansalay, Oriental Mindoro', 'Brgy. Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(72, 'C-19000030', 'Malabag, Janet Almario', 'female', '09261406842', '2000-09-17', 'San Pablo City, Laguna', 'Brgy. Kanluran, Calauan, Laguna', 'Bachelor of Elementary Education', 'regular', ''),
(73, 'C-19000032', 'Offemaria, Erika Villanueva', 'female', '09476072822', '2000-08-11', 'San Pablo City, Laguna', 'San Antonio 1, San Pablo City', 'Bachelor of Elementary Education', 'regular', ''),
(74, 'C-19000040', 'Oracion, Katrina Dimatulac', 'female', '09308374292', '2001-05-21', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(75, 'C-19000034', 'Paguican, Cindy Maglana', 'female', '09103467924', '2000-07-06', 'Alicia, Bohol', 'Katipuna, Alicia, Bohol', 'Bachelor of Elementary Education', 'regular', ''),
(76, 'C-19000043', 'Perucho, Elaira Villan', 'female', '09493080899', '2000-09-27', 'Mansalay, Oriental Mindoro', 'Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(77, 'C-19000044', 'Royo, Bea Alonsagay', 'female', '09385896215', '2000-04-26', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(78, 'C-19000038', 'Rubion, Leih Angely Villan', 'female', '09128367625', '2001-01-08', 'Mansalay, Oriental Mindoro', 'Poblacion, Mansalay, Oriental Mindoro', 'Bachelor of Elementary Education', 'regular', ''),
(79, 'C-19000042', 'Sauza, Michelle Mindoro', 'female', '09305847134', '2000-01-20', 'Masalay, Oriental Mindoro', 'Poblacion Mansalay, Oriental\r\nMindoro\r\n', 'Bachelor of Elementary Education', 'regular', ''),
(80, 'C-19000003', 'Babor, Aira Cortez', 'female', '09064025649', '2000-07-05', 'Dumaguete City, Negros Oriental', 'Brgy. San Gabriel, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(81, 'C-19000009', 'Bacsa, Julianne Bulaklak', 'female', '09777061372', '2000-11-28', 'San Pablo City, Laguna', '4-F Brgy. San Francisco, Calihan, Purok 1, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(82, 'C-200000049', 'Belen, Joaquin Gabriel D.', 'male', '00000000000', '2000-06-15', 'San Pablo City, Laguna', '053 M. L. Quezon Street City Subdivision, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(83, 'C-19000006', 'Briones, Maywrille Garcia', 'female', '09304446344', '2001-07-26', 'San Pablo City, Laguna', 'Brgy. Imok, Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(84, 'C-19000049', 'Brucal, Laica Lopez', 'female', '00000000000', '2000-01-29', 'Tuy, Batangas', 'Brgy. Pinagdanlayan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(85, 'C-19000010', 'Bulaklak, John Reyniel Tolentino', 'male', '09150643684', '2001-01-19', 'San Pablo City, Laguna', 'Brgy. II-F, Caballero St., San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(86, 'C-19000011', 'Coronado, Sandy Lyca Pontipedra', 'female', '09278365953', '2000-03-17', 'San Pablo City, Laguna', 'Bgry. Yukos, Nagcarlan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(87, 'C-19000015', 'Estayan, Mika Ella Deveza', 'female', '09463322151', '2000-09-06', 'San Pablo City, Laguna', 'Concepcion Village, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(88, 'C-19000028', 'Gacos, Maureen  ', 'female', '09298664336', '1999-08-31', 'Calamba City, Laguna', 'Purok 7, Ilaya Parian, Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(89, 'C-19000035', 'Getape, Rogie Ann  ', 'female', '09667281041', '2001-09-01', 'Luisiana, Laguna', 'Brgy. Batong Malake, Los Baños, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(90, 'C-19000008', 'Grencio, Bianca Margarita Arnigo', 'female', '09562510994', '2000-05-03', 'Sta. Cruz, Laguna', '923 J. Luna Street, Liliw, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(91, 'C-19000036', 'Guevarra, Mary-Ann Flores', 'female', '09952081782', '2000-11-24', 'San Pablo City, Laguna', 'Brgy. Perez, Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(92, 'C-2000028', 'Guevarra, Sariah Mikel Martinez', 'female', '09184914574', '2000-01-11', 'San Pablo City, Laguna', '205 1st St. Lakeside Park, Brgy. VI-D, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(93, 'C-19000055', 'Juaneza, Maria Lucia Alessandra Larona', 'female', '56600120000', '2001-03-12', 'San Pablo City, Laguna', '153 G. Medel St. Calauan, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(94, 'C-19000007', 'Kaur, Simranjeet   ', 'female', '09326041625', '2001-09-24', 'India', 'Apt. 3, Patria Village, Sampaguita, Brgy. Del Remedio, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(95, 'C-190000', 'Lopez, Christian Jhon Hernandez', 'female', '09195864323', '2000-08-10', 'San Pablo City, Laguna', 'Brgy. Lalig, Tiaong, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(96, 'C-19000024', 'Malvar, Leonard Alcaraz', 'male', '00000000000', '2000-10-05', 'Dolores, Quezon', 'Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(97, 'C-19000025', 'Millar, Rizza Fisico', 'female', '09159381745', '2000-04-28', 'San Pablo City, Laguna', '56 Paseo De Escudero St., SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(98, 'C-19000045', 'Miranda, Shane Nicole Garcia', 'female', '09065710253', '1999-07-28', 'San Fernando, La Union', '348 Brgy. Dagatan, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(99, 'C-19000023', 'Montenegro, Faye Aurelio', 'female', '09163800940', '2001-09-15', 'San Pablo City, Laguna', 'Bungoy, Dolores, Quezon', 'Bachelor of Science in Nursing', 'regular', ''),
(100, 'C-18000001', 'Pia, Jane Ann Madrid', 'female', '00000000000', '1999-10-31', 'Bay, Laguna', '007 Purok 7, Brgy. San Antonio, Bay, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(101, 'C-18000009', 'Sobremonte, Eileen Giselle Evasco', 'female', '00000000000', '2000-07-07', 'Makati City', 'Brgy. Pag-asa, Liliw, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(102, 'C-19000018', 'Tiay, Louise Grace  ', 'female', '50330730000', '2000-11-25', 'San Pablo City, Laguna', '296 Brgy. VI-E, San Pablo City', 'Bachelor of Science in Nursing', 'regular', ''),
(103, 'C-19000016', 'Titan, Whayee Kate Jabulin', 'female', '09771562070', '2001-02-25', 'San Pablo City, Laguna', 'Sta. Maria Village, Brgy. Sta. Maria, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(104, 'C-19000047', 'Umali, Ma. Cristina Louise Uba', 'female', '09613020386', '2001-09-23', 'San Pablo City, Laguna', 'ADB Subdivision, Brgy. Del Roemedio, SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(105, 'C-19000048', 'Velizario, Steven Alfred Austria', 'male', '09273334633', '2000-05-30', 'Nagcarlan, Laguna', 'Brgy. San Nicolas, Lynville Subd., SPC', 'Bachelor of Science in Nursing', 'regular', ''),
(106, 'C-19000027', 'Villanueva, III, Marcelo Angeles', 'female', '09168323785', '1993-09-09', 'Calamba, Laguna', '6 Capalong Apt., Rosal St., Halang, Calamba, Laguna', 'Bachelor of Science in Nursing', 'regular', ''),
(107, 'C-20000057', 'Andrada,  Francheska Arabella C.', 'female', '00000000000', '2001-08-17', 'San Simon, Pampanga', 'Brgy. San Mateo, Dolores, Quezon', 'Bachelor of Science in Psychology', 'regular', ''),
(108, 'C-20000054', 'Bayaca, Charisse  ', 'female', '09159457148', '2001-01-17', 'Manila', 'Ph9 B5 L40 Southville 4, Brgy. Pook, Sta. Rosa', 'Bachelor of Science in Psychology', 'regular', ''),
(109, 'C-20000042', 'Curatchia, Janeah Felice Bondad', 'female', '00000000000', '2000-09-18', 'San Pablo City', 'B10 L1 Bondad Ville, San Crispin, SPC', 'Bachelor of Science in Psychology', 'regular', ''),
(110, 'C-20000061', 'Guevarra,  Elanhy Mae M.', 'female', '09561629824', '2002-03-29', 'Nagcarlan, Laguna', '086 Brgy. Talangan, Nagcaarlan, Laguna', 'Bachelor of Science in Psychology', 'regular', ''),
(111, 'C-20000047', 'Quilang, Brian Joshua G.', 'male', '00000000000', '2002-01-02', 'San Pablo City', '1186 Ashley Ciabal Compund, Brgy. Del Remedio', 'Bachelor of Science in Psychology', 'regular', ''),
(112, 'C-20000058', 'Sombilla, Kyla Monique Bautista', 'female', '09351052574', '2002-05-08', 'San Pedro, Laguna', 'P7-040 Brgy. Banago, Nagcarlan, Laguna', 'Bachelor of Science in Psychology', 'regular', '');

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
(140, 'C-19000051', 'Ethics'),
(141, 'C-19000051', 'The Contemporary World'),
(142, 'C-19000051', 'Science, Technology & Society'),
(143, 'C-19000051', 'Understanding the Self'),
(144, 'C-19000051', 'Building & Enhancing New Literacies Across the Curriculum'),
(145, 'C-19000051', 'Recreation (Board Games/Indoor Games)'),
(146, 'C-19000051', 'Mariology'),
(147, 'C-19000051', 'Christian Apologetics'),
(148, 'C-19000051', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(149, 'C-19000051', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(150, 'C-19000051', 'Assessment in Learning 2'),
(151, 'C-19000051', 'Teaching Music in the Elementary Grades'),
(152, 'C-19000051', 'Teaching Literacy in the Elementary Grades Through Literature'),
(153, 'C-19000051', 'Teaching PE & Health in Elementary Grades'),
(154, 'C-19000051', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(155, 'C-19000051', 'Sacraments'),
(156, 'C-19000051', 'Living in the IT Era'),
(157, 'C-19000051', 'Nutrition for Sports and Exercise'),
(158, 'C-19000051', 'Teaching Internship'),
(159, 'C-19000051', 'National Service Training Program 2'),
(160, 'C-19000029', 'Ethics'),
(161, 'C-19000029', 'The Contemporary World'),
(162, 'C-19000029', 'Science, Technology & Society'),
(163, 'C-19000029', 'Understanding the Self'),
(164, 'C-19000029', 'Building & Enhancing New Literacies Across the Curriculum'),
(165, 'C-19000029', 'Recreation (Board Games/Indoor Games)'),
(166, 'C-19000029', 'Mariology'),
(167, 'C-19000029', 'Christian Apologetics'),
(168, 'C-19000029', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(169, 'C-19000029', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(170, 'C-19000029', 'Assessment in Learning 2'),
(171, 'C-19000029', 'Teaching Music in the Elementary Grades'),
(172, 'C-19000029', 'Teaching Literacy in the Elementary Grades Through Literature'),
(173, 'C-19000029', 'Teaching PE & Health in Elementary Grades'),
(174, 'C-19000029', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(175, 'C-19000029', 'Sacraments'),
(176, 'C-19000029', 'Living in the IT Era'),
(177, 'C-19000029', 'Nutrition for Sports and Exercise'),
(178, 'C-19000029', 'Teaching Internship'),
(179, 'C-19000029', 'National Service Training Program 2'),
(180, 'C-19000021', 'Ethics'),
(181, 'C-19000021', 'The Contemporary World'),
(182, 'C-19000021', 'Science, Technology & Society'),
(183, 'C-19000021', 'Understanding the Self'),
(184, 'C-19000021', 'Building & Enhancing New Literacies Across the Curriculum'),
(185, 'C-19000021', 'Recreation (Board Games/Indoor Games)'),
(186, 'C-19000021', 'Mariology'),
(187, 'C-19000021', 'Christian Apologetics'),
(188, 'C-19000021', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(189, 'C-19000021', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(190, 'C-19000021', 'Assessment in Learning 2'),
(191, 'C-19000021', 'Teaching Music in the Elementary Grades'),
(192, 'C-19000021', 'Teaching Literacy in the Elementary Grades Through Literature'),
(193, 'C-19000021', 'Teaching PE & Health in Elementary Grades'),
(194, 'C-19000021', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(195, 'C-19000021', 'Sacraments'),
(196, 'C-19000021', 'Living in the IT Era'),
(197, 'C-19000021', 'Nutrition for Sports and Exercise'),
(198, 'C-19000021', 'Teaching Internship'),
(199, 'C-19000021', 'National Service Training Program 2'),
(200, 'C-19000054', 'Ethics'),
(201, 'C-19000054', 'The Contemporary World'),
(202, 'C-19000054', 'Science, Technology & Society'),
(203, 'C-19000054', 'Understanding the Self'),
(204, 'C-19000054', 'Building & Enhancing New Literacies Across the Curriculum'),
(205, 'C-19000054', 'Recreation (Board Games/Indoor Games)'),
(206, 'C-19000054', 'Mariology'),
(207, 'C-19000054', 'Christian Apologetics'),
(208, 'C-19000054', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(209, 'C-19000054', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(210, 'C-19000054', 'Assessment in Learning 2'),
(211, 'C-19000054', 'Teaching Music in the Elementary Grades'),
(212, 'C-19000054', 'Teaching Literacy in the Elementary Grades Through Literature'),
(213, 'C-19000054', 'Teaching PE & Health in Elementary Grades'),
(214, 'C-19000054', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(215, 'C-19000054', 'Sacraments'),
(216, 'C-19000054', 'Living in the IT Era'),
(217, 'C-19000054', 'Nutrition for Sports and Exercise'),
(218, 'C-19000054', 'Teaching Internship'),
(219, 'C-19000054', 'National Service Training Program 2'),
(220, 'C-19000053', 'Ethics'),
(221, 'C-19000053', 'The Contemporary World'),
(222, 'C-19000053', 'Science, Technology & Society'),
(223, 'C-19000053', 'Understanding the Self'),
(224, 'C-19000053', 'Building & Enhancing New Literacies Across the Curriculum'),
(225, 'C-19000053', 'Recreation (Board Games/Indoor Games)'),
(226, 'C-19000053', 'Mariology'),
(227, 'C-19000053', 'Christian Apologetics'),
(228, 'C-19000053', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(229, 'C-19000053', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(230, 'C-19000053', 'Assessment in Learning 2'),
(231, 'C-19000053', 'Teaching Music in the Elementary Grades'),
(232, 'C-19000053', 'Teaching Literacy in the Elementary Grades Through Literature'),
(233, 'C-19000053', 'Teaching PE & Health in Elementary Grades'),
(234, 'C-19000053', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(235, 'C-19000053', 'Sacraments'),
(236, 'C-19000053', 'Living in the IT Era'),
(237, 'C-19000053', 'Nutrition for Sports and Exercise'),
(238, 'C-19000053', 'Teaching Internship'),
(239, 'C-19000053', 'National Service Training Program 2'),
(240, 'C-19000033', 'Ethics'),
(241, 'C-19000033', 'The Contemporary World'),
(242, 'C-19000033', 'Science, Technology & Society'),
(243, 'C-19000033', 'Understanding the Self'),
(244, 'C-19000033', 'Building & Enhancing New Literacies Across the Curriculum'),
(245, 'C-19000033', 'Recreation (Board Games/Indoor Games)'),
(246, 'C-19000033', 'Mariology'),
(247, 'C-19000033', 'Christian Apologetics'),
(248, 'C-19000033', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(249, 'C-19000033', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(250, 'C-19000033', 'Assessment in Learning 2'),
(251, 'C-19000033', 'Teaching Music in the Elementary Grades'),
(252, 'C-19000033', 'Teaching Literacy in the Elementary Grades Through Literature'),
(253, 'C-19000033', 'Teaching PE & Health in Elementary Grades'),
(254, 'C-19000033', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(255, 'C-19000033', 'Sacraments'),
(256, 'C-19000033', 'Living in the IT Era'),
(257, 'C-19000033', 'Nutrition for Sports and Exercise'),
(258, 'C-19000033', 'Teaching Internship'),
(259, 'C-19000033', 'National Service Training Program 2'),
(260, 'C-19000031', 'Ethics'),
(261, 'C-19000031', 'The Contemporary World'),
(262, 'C-19000031', 'Science, Technology & Society'),
(263, 'C-19000031', 'Understanding the Self'),
(264, 'C-19000031', 'Building & Enhancing New Literacies Across the Curriculum'),
(265, 'C-19000031', 'Recreation (Board Games/Indoor Games)'),
(266, 'C-19000031', 'Mariology'),
(267, 'C-19000031', 'Christian Apologetics'),
(268, 'C-19000031', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(269, 'C-19000031', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(270, 'C-19000031', 'Assessment in Learning 2'),
(271, 'C-19000031', 'Teaching Music in the Elementary Grades'),
(272, 'C-19000031', 'Teaching Literacy in the Elementary Grades Through Literature'),
(273, 'C-19000031', 'Teaching PE & Health in Elementary Grades'),
(274, 'C-19000031', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(275, 'C-19000031', 'Sacraments'),
(276, 'C-19000031', 'Living in the IT Era'),
(277, 'C-19000031', 'Nutrition for Sports and Exercise'),
(278, 'C-19000031', 'Teaching Internship'),
(279, 'C-19000031', 'National Service Training Program 2'),
(280, 'C-19000041', 'Ethics'),
(281, 'C-19000041', 'The Contemporary World'),
(282, 'C-19000041', 'Science, Technology & Society'),
(283, 'C-19000041', 'Understanding the Self'),
(284, 'C-19000041', 'Building & Enhancing New Literacies Across the Curriculum'),
(285, 'C-19000041', 'Recreation (Board Games/Indoor Games)'),
(286, 'C-19000041', 'Mariology'),
(287, 'C-19000041', 'Christian Apologetics'),
(288, 'C-19000041', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(289, 'C-19000041', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(290, 'C-19000041', 'Assessment in Learning 2'),
(291, 'C-19000041', 'Teaching Music in the Elementary Grades'),
(292, 'C-19000041', 'Teaching Literacy in the Elementary Grades Through Literature'),
(293, 'C-19000041', 'Teaching PE & Health in Elementary Grades'),
(294, 'C-19000041', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(295, 'C-19000041', 'Sacraments'),
(296, 'C-19000041', 'Living in the IT Era'),
(297, 'C-19000041', 'Nutrition for Sports and Exercise'),
(298, 'C-19000041', 'Teaching Internship'),
(299, 'C-19000041', 'National Service Training Program 2'),
(300, 'C-19000039', 'Ethics'),
(301, 'C-19000039', 'The Contemporary World'),
(302, 'C-19000039', 'Science, Technology & Society'),
(303, 'C-19000039', 'Understanding the Self'),
(304, 'C-19000039', 'Building & Enhancing New Literacies Across the Curriculum'),
(305, 'C-19000039', 'Recreation (Board Games/Indoor Games)'),
(306, 'C-19000039', 'Mariology'),
(307, 'C-19000039', 'Christian Apologetics'),
(308, 'C-19000039', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(309, 'C-19000039', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(310, 'C-19000039', 'Assessment in Learning 2'),
(311, 'C-19000039', 'Teaching Music in the Elementary Grades'),
(312, 'C-19000039', 'Teaching Literacy in the Elementary Grades Through Literature'),
(313, 'C-19000039', 'Teaching PE & Health in Elementary Grades'),
(314, 'C-19000039', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(315, 'C-19000039', 'Sacraments'),
(316, 'C-19000039', 'Living in the IT Era'),
(317, 'C-19000039', 'Nutrition for Sports and Exercise'),
(318, 'C-19000039', 'Teaching Internship'),
(319, 'C-19000039', 'National Service Training Program 2'),
(320, 'C-19000037', 'Ethics'),
(321, 'C-19000037', 'The Contemporary World'),
(322, 'C-19000037', 'Science, Technology & Society'),
(323, 'C-19000037', 'Understanding the Self'),
(324, 'C-19000037', 'Building & Enhancing New Literacies Across the Curriculum'),
(325, 'C-19000037', 'Recreation (Board Games/Indoor Games)'),
(326, 'C-19000037', 'Mariology'),
(327, 'C-19000037', 'Christian Apologetics'),
(328, 'C-19000037', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(329, 'C-19000037', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(330, 'C-19000037', 'Assessment in Learning 2'),
(331, 'C-19000037', 'Teaching Music in the Elementary Grades'),
(332, 'C-19000037', 'Teaching Literacy in the Elementary Grades Through Literature'),
(333, 'C-19000037', 'Teaching PE & Health in Elementary Grades'),
(334, 'C-19000037', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(335, 'C-19000037', 'Sacraments'),
(336, 'C-19000037', 'Living in the IT Era'),
(337, 'C-19000037', 'Nutrition for Sports and Exercise'),
(338, 'C-19000037', 'Teaching Internship'),
(339, 'C-19000037', 'National Service Training Program 2'),
(340, 'C-19000030', 'Ethics'),
(341, 'C-19000030', 'The Contemporary World'),
(342, 'C-19000030', 'Science, Technology & Society'),
(343, 'C-19000030', 'Understanding the Self'),
(344, 'C-19000030', 'Building & Enhancing New Literacies Across the Curriculum'),
(345, 'C-19000030', 'Recreation (Board Games/Indoor Games)'),
(346, 'C-19000030', 'Mariology'),
(347, 'C-19000030', 'Christian Apologetics'),
(348, 'C-19000030', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(349, 'C-19000030', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(350, 'C-19000030', 'Assessment in Learning 2'),
(351, 'C-19000030', 'Teaching Music in the Elementary Grades'),
(352, 'C-19000030', 'Teaching Literacy in the Elementary Grades Through Literature'),
(353, 'C-19000030', 'Teaching PE & Health in Elementary Grades'),
(354, 'C-19000030', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(355, 'C-19000030', 'Sacraments'),
(356, 'C-19000030', 'Living in the IT Era'),
(357, 'C-19000030', 'Nutrition for Sports and Exercise'),
(358, 'C-19000030', 'Teaching Internship'),
(359, 'C-19000030', 'National Service Training Program 2'),
(360, 'C-19000032', 'Ethics'),
(361, 'C-19000032', 'The Contemporary World'),
(362, 'C-19000032', 'Science, Technology & Society'),
(363, 'C-19000032', 'Understanding the Self'),
(364, 'C-19000032', 'Building & Enhancing New Literacies Across the Curriculum'),
(365, 'C-19000032', 'Recreation (Board Games/Indoor Games)'),
(366, 'C-19000032', 'Mariology'),
(367, 'C-19000032', 'Christian Apologetics'),
(368, 'C-19000032', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(369, 'C-19000032', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(370, 'C-19000032', 'Assessment in Learning 2'),
(371, 'C-19000032', 'Teaching Music in the Elementary Grades'),
(372, 'C-19000032', 'Teaching Literacy in the Elementary Grades Through Literature'),
(373, 'C-19000032', 'Teaching PE & Health in Elementary Grades'),
(374, 'C-19000032', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(375, 'C-19000032', 'Sacraments'),
(376, 'C-19000032', 'Living in the IT Era'),
(377, 'C-19000032', 'Nutrition for Sports and Exercise'),
(378, 'C-19000032', 'Teaching Internship'),
(379, 'C-19000032', 'National Service Training Program 2'),
(380, 'C-19000040', 'Ethics'),
(381, 'C-19000040', 'The Contemporary World'),
(382, 'C-19000040', 'Science, Technology & Society'),
(383, 'C-19000040', 'Understanding the Self'),
(384, 'C-19000040', 'Building & Enhancing New Literacies Across the Curriculum'),
(385, 'C-19000040', 'Recreation (Board Games/Indoor Games)'),
(386, 'C-19000040', 'Mariology'),
(387, 'C-19000040', 'Christian Apologetics'),
(388, 'C-19000040', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(389, 'C-19000040', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(390, 'C-19000040', 'Assessment in Learning 2'),
(391, 'C-19000040', 'Teaching Music in the Elementary Grades'),
(392, 'C-19000040', 'Teaching Literacy in the Elementary Grades Through Literature'),
(393, 'C-19000040', 'Teaching PE & Health in Elementary Grades'),
(394, 'C-19000040', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(395, 'C-19000040', 'Sacraments'),
(396, 'C-19000040', 'Living in the IT Era'),
(397, 'C-19000040', 'Nutrition for Sports and Exercise'),
(398, 'C-19000040', 'Teaching Internship'),
(399, 'C-19000040', 'National Service Training Program 2'),
(400, 'C-19000034', 'Ethics'),
(401, 'C-19000034', 'The Contemporary World'),
(402, 'C-19000034', 'Science, Technology & Society'),
(403, 'C-19000034', 'Understanding the Self'),
(404, 'C-19000034', 'Building & Enhancing New Literacies Across the Curriculum'),
(405, 'C-19000034', 'Recreation (Board Games/Indoor Games)'),
(406, 'C-19000034', 'Mariology'),
(407, 'C-19000034', 'Christian Apologetics'),
(408, 'C-19000034', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(409, 'C-19000034', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(410, 'C-19000034', 'Assessment in Learning 2'),
(411, 'C-19000034', 'Teaching Music in the Elementary Grades'),
(412, 'C-19000034', 'Teaching Literacy in the Elementary Grades Through Literature'),
(413, 'C-19000034', 'Teaching PE & Health in Elementary Grades'),
(414, 'C-19000034', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(415, 'C-19000034', 'Sacraments'),
(416, 'C-19000034', 'Living in the IT Era'),
(417, 'C-19000034', 'Nutrition for Sports and Exercise'),
(418, 'C-19000034', 'Teaching Internship'),
(419, 'C-19000034', 'National Service Training Program 2'),
(420, 'C-19000043', 'Ethics'),
(421, 'C-19000043', 'The Contemporary World'),
(422, 'C-19000043', 'Science, Technology & Society'),
(423, 'C-19000043', 'Understanding the Self'),
(424, 'C-19000043', 'Building & Enhancing New Literacies Across the Curriculum'),
(425, 'C-19000043', 'Recreation (Board Games/Indoor Games)'),
(426, 'C-19000043', 'Mariology'),
(427, 'C-19000043', 'Christian Apologetics'),
(428, 'C-19000043', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(429, 'C-19000043', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(430, 'C-19000043', 'Assessment in Learning 2'),
(431, 'C-19000043', 'Teaching Music in the Elementary Grades'),
(432, 'C-19000043', 'Teaching Literacy in the Elementary Grades Through Literature'),
(433, 'C-19000043', 'Teaching PE & Health in Elementary Grades'),
(434, 'C-19000043', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(435, 'C-19000043', 'Sacraments'),
(436, 'C-19000043', 'Living in the IT Era'),
(437, 'C-19000043', 'Nutrition for Sports and Exercise'),
(438, 'C-19000043', 'Teaching Internship'),
(439, 'C-19000043', 'National Service Training Program 2'),
(440, 'C-19000044', 'Ethics'),
(441, 'C-19000044', 'The Contemporary World'),
(442, 'C-19000044', 'Science, Technology & Society'),
(443, 'C-19000044', 'Understanding the Self'),
(444, 'C-19000044', 'Building & Enhancing New Literacies Across the Curriculum'),
(445, 'C-19000044', 'Recreation (Board Games/Indoor Games)'),
(446, 'C-19000044', 'Mariology'),
(447, 'C-19000044', 'Christian Apologetics'),
(448, 'C-19000044', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(449, 'C-19000044', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(450, 'C-19000044', 'Assessment in Learning 2'),
(451, 'C-19000044', 'Teaching Music in the Elementary Grades'),
(452, 'C-19000044', 'Teaching Literacy in the Elementary Grades Through Literature'),
(453, 'C-19000044', 'Teaching PE & Health in Elementary Grades'),
(454, 'C-19000044', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(455, 'C-19000044', 'Sacraments'),
(456, 'C-19000044', 'Living in the IT Era'),
(457, 'C-19000044', 'Nutrition for Sports and Exercise'),
(458, 'C-19000044', 'Teaching Internship'),
(459, 'C-19000044', 'National Service Training Program 2'),
(460, 'C-19000038', 'Ethics'),
(461, 'C-19000038', 'The Contemporary World'),
(462, 'C-19000038', 'Science, Technology & Society'),
(463, 'C-19000038', 'Understanding the Self'),
(464, 'C-19000038', 'Building & Enhancing New Literacies Across the Curriculum'),
(465, 'C-19000038', 'Recreation (Board Games/Indoor Games)'),
(466, 'C-19000038', 'Mariology'),
(467, 'C-19000038', 'Christian Apologetics'),
(468, 'C-19000038', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(469, 'C-19000038', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(470, 'C-19000038', 'Assessment in Learning 2'),
(471, 'C-19000038', 'Teaching Music in the Elementary Grades'),
(472, 'C-19000038', 'Teaching Literacy in the Elementary Grades Through Literature'),
(473, 'C-19000038', 'Teaching PE & Health in Elementary Grades'),
(474, 'C-19000038', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(475, 'C-19000038', 'Sacraments'),
(476, 'C-19000038', 'Living in the IT Era'),
(477, 'C-19000038', 'Nutrition for Sports and Exercise'),
(478, 'C-19000038', 'Teaching Internship'),
(479, 'C-19000038', 'National Service Training Program 2'),
(480, 'C-19000042', 'Ethics'),
(481, 'C-19000042', 'The Contemporary World'),
(482, 'C-19000042', 'Science, Technology & Society'),
(483, 'C-19000042', 'Understanding the Self'),
(484, 'C-19000042', 'Building & Enhancing New Literacies Across the Curriculum'),
(485, 'C-19000042', 'Recreation (Board Games/Indoor Games)'),
(486, 'C-19000042', 'Mariology'),
(487, 'C-19000042', 'Christian Apologetics'),
(488, 'C-19000042', 'Pagbasa at Pagsulat Tungo sa Pananaliksik'),
(489, 'C-19000042', 'The Teacher & The Community, School Culture & Organizational Leadership'),
(490, 'C-19000042', 'Assessment in Learning 2'),
(491, 'C-19000042', 'Teaching Music in the Elementary Grades'),
(492, 'C-19000042', 'Teaching Literacy in the Elementary Grades Through Literature'),
(493, 'C-19000042', 'Teaching PE & Health in Elementary Grades'),
(494, 'C-19000042', 'Edukasyong Pantahanan at Pangkabuhayan with Entrepreneurship'),
(495, 'C-19000042', 'Sacraments'),
(496, 'C-19000042', 'Living in the IT Era'),
(497, 'C-19000042', 'Nutrition for Sports and Exercise'),
(498, 'C-19000042', 'Teaching Internship'),
(499, 'C-19000042', 'National Service Training Program 2'),
(500, 'C-19000003', 'Understanding the Self (BSN)'),
(501, 'C-19000003', 'Health Assessment'),
(502, 'C-19000003', 'Related Learning Experience (102hrs)'),
(503, 'C-19000003', 'Health Education'),
(504, 'C-19000003', 'Fundamentals of Nursing Practice'),
(505, 'C-19000003', 'Related Learning Experience (102hrs)*'),
(506, 'C-19000003', 'Biochemistry'),
(507, 'C-19000003', 'Recreation (Board Games/Indoor Games)*'),
(508, 'C-19000003', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(509, 'C-19000003', 'Ethics*'),
(510, 'C-19000003', 'Logic & Critical Thinking'),
(511, 'C-19000003', 'Health Ethics'),
(512, 'C-19000003', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(513, 'C-19000003', 'Related Learning Experience (306hrs)'),
(514, 'C-19000003', 'Nursing Informatics'),
(515, 'C-19000003', 'Nutrition for Sports and Exercise*'),
(516, 'C-19000003', 'Mariology*'),
(517, 'C-19000003', 'Care of the Older Person/Adult'),
(518, 'C-19000003', 'Related Learning Experience (51hrs)'),
(519, 'C-19000003', 'Nursing Research 2'),
(520, 'C-19000003', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(521, 'C-19000003', 'Related Learning Experience (204hrs)'),
(522, 'C-19000003', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(523, 'C-19000003', 'Related Learning Experience (204hrs)*'),
(524, 'C-19000003', 'Living in the IT Era*'),
(525, 'C-19000003', 'Theology of the Body'),
(526, 'C-19000003', 'Decent Work Employment & Transcultural Nursing'),
(527, 'C-19000003', 'Disaster Nursing'),
(528, 'C-19000003', 'Related Learning Experience (51hrs)*'),
(529, 'C-19000003', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(530, 'C-19000003', 'Rizals Life, Works & Writings'),
(531, 'C-19000003', 'The Contemporary Wolrd*'),
(532, 'C-19000009', 'Understanding the Self (BSN)'),
(533, 'C-19000009', 'Health Assessment'),
(534, 'C-19000009', 'Related Learning Experience (102hrs)'),
(535, 'C-19000009', 'Health Education'),
(536, 'C-19000009', 'Fundamentals of Nursing Practice'),
(537, 'C-19000009', 'Related Learning Experience (102hrs)*'),
(538, 'C-19000009', 'Biochemistry'),
(539, 'C-19000009', 'Recreation (Board Games/Indoor Games)*'),
(540, 'C-19000009', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(541, 'C-19000009', 'Ethics*'),
(542, 'C-19000009', 'Logic & Critical Thinking'),
(543, 'C-19000009', 'Health Ethics'),
(544, 'C-19000009', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(545, 'C-19000009', 'Related Learning Experience (306hrs)'),
(546, 'C-19000009', 'Nursing Informatics'),
(547, 'C-19000009', 'Nutrition for Sports and Exercise*'),
(548, 'C-19000009', 'Mariology*'),
(549, 'C-19000009', 'Care of the Older Person/Adult'),
(550, 'C-19000009', 'Related Learning Experience (51hrs)'),
(551, 'C-19000009', 'Nursing Research 2'),
(552, 'C-19000009', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(553, 'C-19000009', 'Related Learning Experience (204hrs)'),
(554, 'C-19000009', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(555, 'C-19000009', 'Related Learning Experience (204hrs)*'),
(556, 'C-19000009', 'Living in the IT Era*'),
(557, 'C-19000009', 'Theology of the Body'),
(558, 'C-19000009', 'Decent Work Employment & Transcultural Nursing'),
(559, 'C-19000009', 'Disaster Nursing'),
(560, 'C-19000009', 'Related Learning Experience (51hrs)*'),
(561, 'C-19000009', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(562, 'C-19000009', 'Rizals Life, Works & Writings'),
(563, 'C-19000009', 'The Contemporary Wolrd*'),
(564, 'C-200000049', 'Understanding the Self (BSN)'),
(565, 'C-200000049', 'Health Assessment'),
(566, 'C-200000049', 'Related Learning Experience (102hrs)'),
(567, 'C-200000049', 'Health Education'),
(568, 'C-200000049', 'Fundamentals of Nursing Practice'),
(569, 'C-200000049', 'Related Learning Experience (102hrs)*'),
(570, 'C-200000049', 'Biochemistry'),
(571, 'C-200000049', 'Recreation (Board Games/Indoor Games)*'),
(572, 'C-200000049', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(573, 'C-200000049', 'Ethics*'),
(574, 'C-200000049', 'Logic & Critical Thinking'),
(575, 'C-200000049', 'Health Ethics'),
(576, 'C-200000049', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(577, 'C-200000049', 'Related Learning Experience (306hrs)'),
(578, 'C-200000049', 'Nursing Informatics'),
(579, 'C-200000049', 'Nutrition for Sports and Exercise*'),
(580, 'C-200000049', 'Mariology*'),
(581, 'C-200000049', 'Care of the Older Person/Adult'),
(582, 'C-200000049', 'Related Learning Experience (51hrs)'),
(583, 'C-200000049', 'Nursing Research 2'),
(584, 'C-200000049', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(585, 'C-200000049', 'Related Learning Experience (204hrs)'),
(586, 'C-200000049', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(587, 'C-200000049', 'Related Learning Experience (204hrs)*'),
(588, 'C-200000049', 'Living in the IT Era*'),
(589, 'C-200000049', 'Theology of the Body'),
(590, 'C-200000049', 'Decent Work Employment & Transcultural Nursing'),
(591, 'C-200000049', 'Disaster Nursing'),
(592, 'C-200000049', 'Related Learning Experience (51hrs)*'),
(593, 'C-200000049', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(594, 'C-200000049', 'Rizals Life, Works & Writings'),
(595, 'C-200000049', 'The Contemporary Wolrd*'),
(596, 'C-19000006', 'Understanding the Self (BSN)'),
(597, 'C-19000006', 'Health Assessment'),
(598, 'C-19000006', 'Related Learning Experience (102hrs)'),
(599, 'C-19000006', 'Health Education'),
(600, 'C-19000006', 'Fundamentals of Nursing Practice'),
(601, 'C-19000006', 'Related Learning Experience (102hrs)*'),
(602, 'C-19000006', 'Biochemistry'),
(603, 'C-19000006', 'Recreation (Board Games/Indoor Games)*'),
(604, 'C-19000006', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(605, 'C-19000006', 'Ethics*'),
(606, 'C-19000006', 'Logic & Critical Thinking'),
(607, 'C-19000006', 'Health Ethics'),
(608, 'C-19000006', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(609, 'C-19000006', 'Related Learning Experience (306hrs)'),
(610, 'C-19000006', 'Nursing Informatics'),
(611, 'C-19000006', 'Nutrition for Sports and Exercise*'),
(612, 'C-19000006', 'Mariology*'),
(613, 'C-19000006', 'Care of the Older Person/Adult'),
(614, 'C-19000006', 'Related Learning Experience (51hrs)'),
(615, 'C-19000006', 'Nursing Research 2'),
(616, 'C-19000006', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(617, 'C-19000006', 'Related Learning Experience (204hrs)'),
(618, 'C-19000006', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(619, 'C-19000006', 'Related Learning Experience (204hrs)*'),
(620, 'C-19000006', 'Living in the IT Era*'),
(621, 'C-19000006', 'Theology of the Body'),
(622, 'C-19000006', 'Decent Work Employment & Transcultural Nursing'),
(623, 'C-19000006', 'Disaster Nursing'),
(624, 'C-19000006', 'Related Learning Experience (51hrs)*'),
(625, 'C-19000006', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(626, 'C-19000006', 'Rizals Life, Works & Writings'),
(627, 'C-19000006', 'The Contemporary Wolrd*'),
(628, 'C-19000049', 'Understanding the Self (BSN)'),
(629, 'C-19000049', 'Health Assessment'),
(630, 'C-19000049', 'Related Learning Experience (102hrs)'),
(631, 'C-19000049', 'Health Education'),
(632, 'C-19000049', 'Fundamentals of Nursing Practice'),
(633, 'C-19000049', 'Related Learning Experience (102hrs)*'),
(634, 'C-19000049', 'Biochemistry'),
(635, 'C-19000049', 'Recreation (Board Games/Indoor Games)*'),
(636, 'C-19000049', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(637, 'C-19000049', 'Ethics*'),
(638, 'C-19000049', 'Logic & Critical Thinking'),
(639, 'C-19000049', 'Health Ethics'),
(640, 'C-19000049', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(641, 'C-19000049', 'Related Learning Experience (306hrs)'),
(642, 'C-19000049', 'Nursing Informatics'),
(643, 'C-19000049', 'Nutrition for Sports and Exercise*'),
(644, 'C-19000049', 'Mariology*'),
(645, 'C-19000049', 'Care of the Older Person/Adult'),
(646, 'C-19000049', 'Related Learning Experience (51hrs)'),
(647, 'C-19000049', 'Nursing Research 2'),
(648, 'C-19000049', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(649, 'C-19000049', 'Related Learning Experience (204hrs)'),
(650, 'C-19000049', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(651, 'C-19000049', 'Related Learning Experience (204hrs)*'),
(652, 'C-19000049', 'Living in the IT Era*'),
(653, 'C-19000049', 'Theology of the Body'),
(654, 'C-19000049', 'Decent Work Employment & Transcultural Nursing'),
(655, 'C-19000049', 'Disaster Nursing'),
(656, 'C-19000049', 'Related Learning Experience (51hrs)*'),
(657, 'C-19000049', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(658, 'C-19000049', 'Rizals Life, Works & Writings'),
(659, 'C-19000049', 'The Contemporary Wolrd*'),
(660, 'C-19000010', 'Understanding the Self (BSN)'),
(661, 'C-19000010', 'Health Assessment'),
(662, 'C-19000010', 'Related Learning Experience (102hrs)'),
(663, 'C-19000010', 'Health Education'),
(664, 'C-19000010', 'Fundamentals of Nursing Practice'),
(665, 'C-19000010', 'Related Learning Experience (102hrs)*'),
(666, 'C-19000010', 'Biochemistry'),
(667, 'C-19000010', 'Recreation (Board Games/Indoor Games)*'),
(668, 'C-19000010', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(669, 'C-19000010', 'Ethics*'),
(670, 'C-19000010', 'Logic & Critical Thinking'),
(671, 'C-19000010', 'Health Ethics'),
(672, 'C-19000010', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(673, 'C-19000010', 'Related Learning Experience (306hrs)'),
(674, 'C-19000010', 'Nursing Informatics'),
(675, 'C-19000010', 'Nutrition for Sports and Exercise*'),
(676, 'C-19000010', 'Mariology*'),
(677, 'C-19000010', 'Care of the Older Person/Adult'),
(678, 'C-19000010', 'Related Learning Experience (51hrs)'),
(679, 'C-19000010', 'Nursing Research 2'),
(680, 'C-19000010', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(681, 'C-19000010', 'Related Learning Experience (204hrs)'),
(682, 'C-19000010', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(683, 'C-19000010', 'Related Learning Experience (204hrs)*'),
(684, 'C-19000010', 'Living in the IT Era*'),
(685, 'C-19000010', 'Theology of the Body'),
(686, 'C-19000010', 'Decent Work Employment & Transcultural Nursing'),
(687, 'C-19000010', 'Disaster Nursing'),
(688, 'C-19000010', 'Related Learning Experience (51hrs)*'),
(689, 'C-19000010', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(690, 'C-19000010', 'Rizals Life, Works & Writings'),
(691, 'C-19000010', 'The Contemporary Wolrd*'),
(692, 'C-19000011', 'Understanding the Self (BSN)'),
(693, 'C-19000011', 'Health Assessment'),
(694, 'C-19000011', 'Related Learning Experience (102hrs)'),
(695, 'C-19000011', 'Health Education'),
(696, 'C-19000011', 'Fundamentals of Nursing Practice'),
(697, 'C-19000011', 'Related Learning Experience (102hrs)*'),
(698, 'C-19000011', 'Biochemistry'),
(699, 'C-19000011', 'Recreation (Board Games/Indoor Games)*'),
(700, 'C-19000011', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(701, 'C-19000011', 'Ethics*'),
(702, 'C-19000011', 'Logic & Critical Thinking'),
(703, 'C-19000011', 'Health Ethics'),
(704, 'C-19000011', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(705, 'C-19000011', 'Related Learning Experience (306hrs)'),
(706, 'C-19000011', 'Nursing Informatics'),
(707, 'C-19000011', 'Nutrition for Sports and Exercise*'),
(708, 'C-19000011', 'Mariology*'),
(709, 'C-19000011', 'Care of the Older Person/Adult'),
(710, 'C-19000011', 'Related Learning Experience (51hrs)'),
(711, 'C-19000011', 'Nursing Research 2'),
(712, 'C-19000011', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(713, 'C-19000011', 'Related Learning Experience (204hrs)'),
(714, 'C-19000011', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(715, 'C-19000011', 'Related Learning Experience (204hrs)*'),
(716, 'C-19000011', 'Living in the IT Era*'),
(717, 'C-19000011', 'Theology of the Body'),
(718, 'C-19000011', 'Decent Work Employment & Transcultural Nursing'),
(719, 'C-19000011', 'Disaster Nursing'),
(720, 'C-19000011', 'Related Learning Experience (51hrs)*'),
(721, 'C-19000011', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(722, 'C-19000011', 'Rizals Life, Works & Writings'),
(723, 'C-19000011', 'The Contemporary Wolrd*'),
(724, 'C-19000015', 'Understanding the Self (BSN)'),
(725, 'C-19000015', 'Health Assessment'),
(726, 'C-19000015', 'Related Learning Experience (102hrs)'),
(727, 'C-19000015', 'Health Education'),
(728, 'C-19000015', 'Fundamentals of Nursing Practice'),
(729, 'C-19000015', 'Related Learning Experience (102hrs)*'),
(730, 'C-19000015', 'Biochemistry'),
(731, 'C-19000015', 'Recreation (Board Games/Indoor Games)*'),
(732, 'C-19000015', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(733, 'C-19000015', 'Ethics*'),
(734, 'C-19000015', 'Logic & Critical Thinking'),
(735, 'C-19000015', 'Health Ethics'),
(736, 'C-19000015', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(737, 'C-19000015', 'Related Learning Experience (306hrs)'),
(738, 'C-19000015', 'Nursing Informatics'),
(739, 'C-19000015', 'Nutrition for Sports and Exercise*'),
(740, 'C-19000015', 'Mariology*'),
(741, 'C-19000015', 'Care of the Older Person/Adult'),
(742, 'C-19000015', 'Related Learning Experience (51hrs)'),
(743, 'C-19000015', 'Nursing Research 2'),
(744, 'C-19000015', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(745, 'C-19000015', 'Related Learning Experience (204hrs)'),
(746, 'C-19000015', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(747, 'C-19000015', 'Related Learning Experience (204hrs)*'),
(748, 'C-19000015', 'Living in the IT Era*'),
(749, 'C-19000015', 'Theology of the Body'),
(750, 'C-19000015', 'Decent Work Employment & Transcultural Nursing'),
(751, 'C-19000015', 'Disaster Nursing'),
(752, 'C-19000015', 'Related Learning Experience (51hrs)*'),
(753, 'C-19000015', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(754, 'C-19000015', 'Rizals Life, Works & Writings'),
(755, 'C-19000015', 'The Contemporary Wolrd*'),
(756, 'C-19000028', 'Understanding the Self (BSN)'),
(757, 'C-19000028', 'Health Assessment'),
(758, 'C-19000028', 'Related Learning Experience (102hrs)'),
(759, 'C-19000028', 'Health Education'),
(760, 'C-19000028', 'Fundamentals of Nursing Practice'),
(761, 'C-19000028', 'Related Learning Experience (102hrs)*'),
(762, 'C-19000028', 'Biochemistry'),
(763, 'C-19000028', 'Recreation (Board Games/Indoor Games)*'),
(764, 'C-19000028', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(765, 'C-19000028', 'Ethics*'),
(766, 'C-19000028', 'Logic & Critical Thinking'),
(767, 'C-19000028', 'Health Ethics'),
(768, 'C-19000028', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(769, 'C-19000028', 'Related Learning Experience (306hrs)'),
(770, 'C-19000028', 'Nursing Informatics'),
(771, 'C-19000028', 'Nutrition for Sports and Exercise*'),
(772, 'C-19000028', 'Mariology*'),
(773, 'C-19000028', 'Care of the Older Person/Adult'),
(774, 'C-19000028', 'Related Learning Experience (51hrs)'),
(775, 'C-19000028', 'Nursing Research 2'),
(776, 'C-19000028', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(777, 'C-19000028', 'Related Learning Experience (204hrs)'),
(778, 'C-19000028', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(779, 'C-19000028', 'Related Learning Experience (204hrs)*'),
(780, 'C-19000028', 'Living in the IT Era*'),
(781, 'C-19000028', 'Theology of the Body'),
(782, 'C-19000028', 'Decent Work Employment & Transcultural Nursing'),
(783, 'C-19000028', 'Disaster Nursing'),
(784, 'C-19000028', 'Related Learning Experience (51hrs)*'),
(785, 'C-19000028', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(786, 'C-19000028', 'Rizals Life, Works & Writings'),
(787, 'C-19000028', 'The Contemporary Wolrd*'),
(788, 'C-19000035', 'Understanding the Self (BSN)'),
(789, 'C-19000035', 'Health Assessment'),
(790, 'C-19000035', 'Related Learning Experience (102hrs)'),
(791, 'C-19000035', 'Health Education'),
(792, 'C-19000035', 'Fundamentals of Nursing Practice'),
(793, 'C-19000035', 'Related Learning Experience (102hrs)*'),
(794, 'C-19000035', 'Biochemistry'),
(795, 'C-19000035', 'Recreation (Board Games/Indoor Games)*'),
(796, 'C-19000035', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(797, 'C-19000035', 'Ethics*'),
(798, 'C-19000035', 'Logic & Critical Thinking'),
(799, 'C-19000035', 'Health Ethics'),
(800, 'C-19000035', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(801, 'C-19000035', 'Related Learning Experience (306hrs)'),
(802, 'C-19000035', 'Nursing Informatics'),
(803, 'C-19000035', 'Nutrition for Sports and Exercise*'),
(804, 'C-19000035', 'Mariology*'),
(805, 'C-19000035', 'Care of the Older Person/Adult'),
(806, 'C-19000035', 'Related Learning Experience (51hrs)'),
(807, 'C-19000035', 'Nursing Research 2'),
(808, 'C-19000035', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(809, 'C-19000035', 'Related Learning Experience (204hrs)'),
(810, 'C-19000035', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(811, 'C-19000035', 'Related Learning Experience (204hrs)*'),
(812, 'C-19000035', 'Living in the IT Era*'),
(813, 'C-19000035', 'Theology of the Body'),
(814, 'C-19000035', 'Decent Work Employment & Transcultural Nursing'),
(815, 'C-19000035', 'Disaster Nursing'),
(816, 'C-19000035', 'Related Learning Experience (51hrs)*'),
(817, 'C-19000035', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(818, 'C-19000035', 'Rizals Life, Works & Writings'),
(819, 'C-19000035', 'The Contemporary Wolrd*'),
(820, 'C-19000008', 'Understanding the Self (BSN)'),
(821, 'C-19000008', 'Health Assessment'),
(822, 'C-19000008', 'Related Learning Experience (102hrs)'),
(823, 'C-19000008', 'Health Education'),
(824, 'C-19000008', 'Fundamentals of Nursing Practice'),
(825, 'C-19000008', 'Related Learning Experience (102hrs)*'),
(826, 'C-19000008', 'Biochemistry'),
(827, 'C-19000008', 'Recreation (Board Games/Indoor Games)*'),
(828, 'C-19000008', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(829, 'C-19000008', 'Ethics*'),
(830, 'C-19000008', 'Logic & Critical Thinking'),
(831, 'C-19000008', 'Health Ethics'),
(832, 'C-19000008', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(833, 'C-19000008', 'Related Learning Experience (306hrs)'),
(834, 'C-19000008', 'Nursing Informatics'),
(835, 'C-19000008', 'Nutrition for Sports and Exercise*'),
(836, 'C-19000008', 'Mariology*'),
(837, 'C-19000008', 'Care of the Older Person/Adult'),
(838, 'C-19000008', 'Related Learning Experience (51hrs)'),
(839, 'C-19000008', 'Nursing Research 2'),
(840, 'C-19000008', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(841, 'C-19000008', 'Related Learning Experience (204hrs)'),
(842, 'C-19000008', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(843, 'C-19000008', 'Related Learning Experience (204hrs)*'),
(844, 'C-19000008', 'Living in the IT Era*'),
(845, 'C-19000008', 'Theology of the Body'),
(846, 'C-19000008', 'Decent Work Employment & Transcultural Nursing'),
(847, 'C-19000008', 'Disaster Nursing'),
(848, 'C-19000008', 'Related Learning Experience (51hrs)*'),
(849, 'C-19000008', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(850, 'C-19000008', 'Rizals Life, Works & Writings'),
(851, 'C-19000008', 'The Contemporary Wolrd*'),
(852, 'C-19000036', 'Understanding the Self (BSN)'),
(853, 'C-19000036', 'Health Assessment'),
(854, 'C-19000036', 'Related Learning Experience (102hrs)'),
(855, 'C-19000036', 'Health Education'),
(856, 'C-19000036', 'Fundamentals of Nursing Practice'),
(857, 'C-19000036', 'Related Learning Experience (102hrs)*'),
(858, 'C-19000036', 'Biochemistry'),
(859, 'C-19000036', 'Recreation (Board Games/Indoor Games)*'),
(860, 'C-19000036', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(861, 'C-19000036', 'Ethics*'),
(862, 'C-19000036', 'Logic & Critical Thinking'),
(863, 'C-19000036', 'Health Ethics'),
(864, 'C-19000036', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(865, 'C-19000036', 'Related Learning Experience (306hrs)'),
(866, 'C-19000036', 'Nursing Informatics'),
(867, 'C-19000036', 'Nutrition for Sports and Exercise*'),
(868, 'C-19000036', 'Mariology*'),
(869, 'C-19000036', 'Care of the Older Person/Adult'),
(870, 'C-19000036', 'Related Learning Experience (51hrs)'),
(871, 'C-19000036', 'Nursing Research 2'),
(872, 'C-19000036', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(873, 'C-19000036', 'Related Learning Experience (204hrs)'),
(874, 'C-19000036', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(875, 'C-19000036', 'Related Learning Experience (204hrs)*'),
(876, 'C-19000036', 'Living in the IT Era*'),
(877, 'C-19000036', 'Theology of the Body'),
(878, 'C-19000036', 'Decent Work Employment & Transcultural Nursing'),
(879, 'C-19000036', 'Disaster Nursing'),
(880, 'C-19000036', 'Related Learning Experience (51hrs)*'),
(881, 'C-19000036', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(882, 'C-19000036', 'Rizals Life, Works & Writings'),
(883, 'C-19000036', 'The Contemporary Wolrd*'),
(884, 'C-2000028', 'Understanding the Self (BSN)'),
(885, 'C-2000028', 'Health Assessment'),
(886, 'C-2000028', 'Related Learning Experience (102hrs)'),
(887, 'C-2000028', 'Health Education'),
(888, 'C-2000028', 'Fundamentals of Nursing Practice'),
(889, 'C-2000028', 'Related Learning Experience (102hrs)*'),
(890, 'C-2000028', 'Biochemistry'),
(891, 'C-2000028', 'Recreation (Board Games/Indoor Games)*'),
(892, 'C-2000028', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(893, 'C-2000028', 'Ethics*'),
(894, 'C-2000028', 'Logic & Critical Thinking'),
(895, 'C-2000028', 'Health Ethics'),
(896, 'C-2000028', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(897, 'C-2000028', 'Related Learning Experience (306hrs)'),
(898, 'C-2000028', 'Nursing Informatics'),
(899, 'C-2000028', 'Nutrition for Sports and Exercise*'),
(900, 'C-2000028', 'Mariology*'),
(901, 'C-2000028', 'Care of the Older Person/Adult'),
(902, 'C-2000028', 'Related Learning Experience (51hrs)'),
(903, 'C-2000028', 'Nursing Research 2'),
(904, 'C-2000028', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(905, 'C-2000028', 'Related Learning Experience (204hrs)'),
(906, 'C-2000028', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(907, 'C-2000028', 'Related Learning Experience (204hrs)*'),
(908, 'C-2000028', 'Living in the IT Era*'),
(909, 'C-2000028', 'Theology of the Body'),
(910, 'C-2000028', 'Decent Work Employment & Transcultural Nursing'),
(911, 'C-2000028', 'Disaster Nursing'),
(912, 'C-2000028', 'Related Learning Experience (51hrs)*'),
(913, 'C-2000028', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(914, 'C-2000028', 'Rizals Life, Works & Writings'),
(915, 'C-2000028', 'The Contemporary Wolrd*'),
(916, 'C-19000055', 'Understanding the Self (BSN)'),
(917, 'C-19000055', 'Health Assessment'),
(918, 'C-19000055', 'Related Learning Experience (102hrs)'),
(919, 'C-19000055', 'Health Education'),
(920, 'C-19000055', 'Fundamentals of Nursing Practice'),
(921, 'C-19000055', 'Related Learning Experience (102hrs)*'),
(922, 'C-19000055', 'Biochemistry'),
(923, 'C-19000055', 'Recreation (Board Games/Indoor Games)*'),
(924, 'C-19000055', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(925, 'C-19000055', 'Ethics*'),
(926, 'C-19000055', 'Logic & Critical Thinking'),
(927, 'C-19000055', 'Health Ethics'),
(928, 'C-19000055', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(929, 'C-19000055', 'Related Learning Experience (306hrs)'),
(930, 'C-19000055', 'Nursing Informatics'),
(931, 'C-19000055', 'Nutrition for Sports and Exercise*'),
(932, 'C-19000055', 'Mariology*'),
(933, 'C-19000055', 'Care of the Older Person/Adult'),
(934, 'C-19000055', 'Related Learning Experience (51hrs)'),
(935, 'C-19000055', 'Nursing Research 2'),
(936, 'C-19000055', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(937, 'C-19000055', 'Related Learning Experience (204hrs)'),
(938, 'C-19000055', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(939, 'C-19000055', 'Related Learning Experience (204hrs)*'),
(940, 'C-19000055', 'Living in the IT Era*'),
(941, 'C-19000055', 'Theology of the Body'),
(942, 'C-19000055', 'Decent Work Employment & Transcultural Nursing'),
(943, 'C-19000055', 'Disaster Nursing'),
(944, 'C-19000055', 'Related Learning Experience (51hrs)*'),
(945, 'C-19000055', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(946, 'C-19000055', 'Rizals Life, Works & Writings'),
(947, 'C-19000055', 'The Contemporary Wolrd*'),
(948, 'C-19000007', 'Understanding the Self (BSN)'),
(949, 'C-19000007', 'Health Assessment'),
(950, 'C-19000007', 'Related Learning Experience (102hrs)'),
(951, 'C-19000007', 'Health Education'),
(952, 'C-19000007', 'Fundamentals of Nursing Practice'),
(953, 'C-19000007', 'Related Learning Experience (102hrs)*'),
(954, 'C-19000007', 'Biochemistry'),
(955, 'C-19000007', 'Recreation (Board Games/Indoor Games)*'),
(956, 'C-19000007', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(957, 'C-19000007', 'Ethics*'),
(958, 'C-19000007', 'Logic & Critical Thinking'),
(959, 'C-19000007', 'Health Ethics'),
(960, 'C-19000007', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(961, 'C-19000007', 'Related Learning Experience (306hrs)'),
(962, 'C-19000007', 'Nursing Informatics'),
(963, 'C-19000007', 'Nutrition for Sports and Exercise*'),
(964, 'C-19000007', 'Mariology*'),
(965, 'C-19000007', 'Care of the Older Person/Adult'),
(966, 'C-19000007', 'Related Learning Experience (51hrs)'),
(967, 'C-19000007', 'Nursing Research 2'),
(968, 'C-19000007', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(969, 'C-19000007', 'Related Learning Experience (204hrs)'),
(970, 'C-19000007', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(971, 'C-19000007', 'Related Learning Experience (204hrs)*'),
(972, 'C-19000007', 'Living in the IT Era*'),
(973, 'C-19000007', 'Theology of the Body'),
(974, 'C-19000007', 'Decent Work Employment & Transcultural Nursing'),
(975, 'C-19000007', 'Disaster Nursing'),
(976, 'C-19000007', 'Related Learning Experience (51hrs)*'),
(977, 'C-19000007', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(978, 'C-19000007', 'Rizals Life, Works & Writings'),
(979, 'C-19000007', 'The Contemporary Wolrd*'),
(980, 'C-190000', 'Understanding the Self (BSN)'),
(981, 'C-190000', 'Health Assessment'),
(982, 'C-190000', 'Related Learning Experience (102hrs)'),
(983, 'C-190000', 'Health Education'),
(984, 'C-190000', 'Fundamentals of Nursing Practice'),
(985, 'C-190000', 'Related Learning Experience (102hrs)*'),
(986, 'C-190000', 'Biochemistry'),
(987, 'C-190000', 'Recreation (Board Games/Indoor Games)*'),
(988, 'C-190000', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(989, 'C-190000', 'Ethics*'),
(990, 'C-190000', 'Logic & Critical Thinking'),
(991, 'C-190000', 'Health Ethics'),
(992, 'C-190000', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(993, 'C-190000', 'Related Learning Experience (306hrs)'),
(994, 'C-190000', 'Nursing Informatics'),
(995, 'C-190000', 'Nutrition for Sports and Exercise*'),
(996, 'C-190000', 'Mariology*'),
(997, 'C-190000', 'Care of the Older Person/Adult'),
(998, 'C-190000', 'Related Learning Experience (51hrs)'),
(999, 'C-190000', 'Nursing Research 2'),
(1000, 'C-190000', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1001, 'C-190000', 'Related Learning Experience (204hrs)'),
(1002, 'C-190000', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1003, 'C-190000', 'Related Learning Experience (204hrs)*'),
(1004, 'C-190000', 'Living in the IT Era*'),
(1005, 'C-190000', 'Theology of the Body'),
(1006, 'C-190000', 'Decent Work Employment & Transcultural Nursing'),
(1007, 'C-190000', 'Disaster Nursing'),
(1008, 'C-190000', 'Related Learning Experience (51hrs)*'),
(1009, 'C-190000', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1010, 'C-190000', 'Rizals Life, Works & Writings'),
(1011, 'C-190000', 'The Contemporary Wolrd*'),
(1012, 'C-19000024', 'Understanding the Self (BSN)'),
(1013, 'C-19000024', 'Health Assessment'),
(1014, 'C-19000024', 'Related Learning Experience (102hrs)'),
(1015, 'C-19000024', 'Health Education'),
(1016, 'C-19000024', 'Fundamentals of Nursing Practice'),
(1017, 'C-19000024', 'Related Learning Experience (102hrs)*'),
(1018, 'C-19000024', 'Biochemistry'),
(1019, 'C-19000024', 'Recreation (Board Games/Indoor Games)*'),
(1020, 'C-19000024', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1021, 'C-19000024', 'Ethics*'),
(1022, 'C-19000024', 'Logic & Critical Thinking'),
(1023, 'C-19000024', 'Health Ethics'),
(1024, 'C-19000024', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1025, 'C-19000024', 'Related Learning Experience (306hrs)'),
(1026, 'C-19000024', 'Nursing Informatics'),
(1027, 'C-19000024', 'Nutrition for Sports and Exercise*'),
(1028, 'C-19000024', 'Mariology*'),
(1029, 'C-19000024', 'Care of the Older Person/Adult'),
(1030, 'C-19000024', 'Related Learning Experience (51hrs)'),
(1031, 'C-19000024', 'Nursing Research 2');
INSERT INTO `studentsubs` (`id`, `student_id`, `subject`) VALUES
(1032, 'C-19000024', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1033, 'C-19000024', 'Related Learning Experience (204hrs)'),
(1034, 'C-19000024', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1035, 'C-19000024', 'Related Learning Experience (204hrs)*'),
(1036, 'C-19000024', 'Living in the IT Era*'),
(1037, 'C-19000024', 'Theology of the Body'),
(1038, 'C-19000024', 'Decent Work Employment & Transcultural Nursing'),
(1039, 'C-19000024', 'Disaster Nursing'),
(1040, 'C-19000024', 'Related Learning Experience (51hrs)*'),
(1041, 'C-19000024', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1042, 'C-19000024', 'Rizals Life, Works & Writings'),
(1043, 'C-19000024', 'The Contemporary Wolrd*'),
(1044, 'C-19000025', 'Understanding the Self (BSN)'),
(1045, 'C-19000025', 'Health Assessment'),
(1046, 'C-19000025', 'Related Learning Experience (102hrs)'),
(1047, 'C-19000025', 'Health Education'),
(1048, 'C-19000025', 'Fundamentals of Nursing Practice'),
(1049, 'C-19000025', 'Related Learning Experience (102hrs)*'),
(1050, 'C-19000025', 'Biochemistry'),
(1051, 'C-19000025', 'Recreation (Board Games/Indoor Games)*'),
(1052, 'C-19000025', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1053, 'C-19000025', 'Ethics*'),
(1054, 'C-19000025', 'Logic & Critical Thinking'),
(1055, 'C-19000025', 'Health Ethics'),
(1056, 'C-19000025', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1057, 'C-19000025', 'Related Learning Experience (306hrs)'),
(1058, 'C-19000025', 'Nursing Informatics'),
(1059, 'C-19000025', 'Nutrition for Sports and Exercise*'),
(1060, 'C-19000025', 'Mariology*'),
(1061, 'C-19000025', 'Care of the Older Person/Adult'),
(1062, 'C-19000025', 'Related Learning Experience (51hrs)'),
(1063, 'C-19000025', 'Nursing Research 2'),
(1064, 'C-19000025', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1065, 'C-19000025', 'Related Learning Experience (204hrs)'),
(1066, 'C-19000025', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1067, 'C-19000025', 'Related Learning Experience (204hrs)*'),
(1068, 'C-19000025', 'Living in the IT Era*'),
(1069, 'C-19000025', 'Theology of the Body'),
(1070, 'C-19000025', 'Decent Work Employment & Transcultural Nursing'),
(1071, 'C-19000025', 'Disaster Nursing'),
(1072, 'C-19000025', 'Related Learning Experience (51hrs)*'),
(1073, 'C-19000025', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1074, 'C-19000025', 'Rizals Life, Works & Writings'),
(1075, 'C-19000025', 'The Contemporary Wolrd*'),
(1076, 'C-19000045', 'Understanding the Self (BSN)'),
(1077, 'C-19000045', 'Health Assessment'),
(1078, 'C-19000045', 'Related Learning Experience (102hrs)'),
(1079, 'C-19000045', 'Health Education'),
(1080, 'C-19000045', 'Fundamentals of Nursing Practice'),
(1081, 'C-19000045', 'Related Learning Experience (102hrs)*'),
(1082, 'C-19000045', 'Biochemistry'),
(1083, 'C-19000045', 'Recreation (Board Games/Indoor Games)*'),
(1084, 'C-19000045', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1085, 'C-19000045', 'Ethics*'),
(1086, 'C-19000045', 'Logic & Critical Thinking'),
(1087, 'C-19000045', 'Health Ethics'),
(1088, 'C-19000045', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1089, 'C-19000045', 'Related Learning Experience (306hrs)'),
(1090, 'C-19000045', 'Nursing Informatics'),
(1091, 'C-19000045', 'Nutrition for Sports and Exercise*'),
(1092, 'C-19000045', 'Mariology*'),
(1093, 'C-19000045', 'Care of the Older Person/Adult'),
(1094, 'C-19000045', 'Related Learning Experience (51hrs)'),
(1095, 'C-19000045', 'Nursing Research 2'),
(1096, 'C-19000045', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1097, 'C-19000045', 'Related Learning Experience (204hrs)'),
(1098, 'C-19000045', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1099, 'C-19000045', 'Related Learning Experience (204hrs)*'),
(1100, 'C-19000045', 'Living in the IT Era*'),
(1101, 'C-19000045', 'Theology of the Body'),
(1102, 'C-19000045', 'Decent Work Employment & Transcultural Nursing'),
(1103, 'C-19000045', 'Disaster Nursing'),
(1104, 'C-19000045', 'Related Learning Experience (51hrs)*'),
(1105, 'C-19000045', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1106, 'C-19000045', 'Rizals Life, Works & Writings'),
(1107, 'C-19000045', 'The Contemporary Wolrd*'),
(1108, 'C-19000023', 'Understanding the Self (BSN)'),
(1109, 'C-19000023', 'Health Assessment'),
(1110, 'C-19000023', 'Related Learning Experience (102hrs)'),
(1111, 'C-19000023', 'Health Education'),
(1112, 'C-19000023', 'Fundamentals of Nursing Practice'),
(1113, 'C-19000023', 'Related Learning Experience (102hrs)*'),
(1114, 'C-19000023', 'Biochemistry'),
(1115, 'C-19000023', 'Recreation (Board Games/Indoor Games)*'),
(1116, 'C-19000023', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1117, 'C-19000023', 'Ethics*'),
(1118, 'C-19000023', 'Logic & Critical Thinking'),
(1119, 'C-19000023', 'Health Ethics'),
(1120, 'C-19000023', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1121, 'C-19000023', 'Related Learning Experience (306hrs)'),
(1122, 'C-19000023', 'Nursing Informatics'),
(1123, 'C-19000023', 'Nutrition for Sports and Exercise*'),
(1124, 'C-19000023', 'Mariology*'),
(1125, 'C-19000023', 'Care of the Older Person/Adult'),
(1126, 'C-19000023', 'Related Learning Experience (51hrs)'),
(1127, 'C-19000023', 'Nursing Research 2'),
(1128, 'C-19000023', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1129, 'C-19000023', 'Related Learning Experience (204hrs)'),
(1130, 'C-19000023', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1131, 'C-19000023', 'Related Learning Experience (204hrs)*'),
(1132, 'C-19000023', 'Living in the IT Era*'),
(1133, 'C-19000023', 'Theology of the Body'),
(1134, 'C-19000023', 'Decent Work Employment & Transcultural Nursing'),
(1135, 'C-19000023', 'Disaster Nursing'),
(1136, 'C-19000023', 'Related Learning Experience (51hrs)*'),
(1137, 'C-19000023', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1138, 'C-19000023', 'Rizals Life, Works & Writings'),
(1139, 'C-19000023', 'The Contemporary Wolrd*'),
(1140, 'C-18000001', 'Understanding the Self (BSN)'),
(1141, 'C-18000001', 'Health Assessment'),
(1142, 'C-18000001', 'Related Learning Experience (102hrs)'),
(1143, 'C-18000001', 'Health Education'),
(1144, 'C-18000001', 'Fundamentals of Nursing Practice'),
(1145, 'C-18000001', 'Related Learning Experience (102hrs)*'),
(1146, 'C-18000001', 'Biochemistry'),
(1147, 'C-18000001', 'Recreation (Board Games/Indoor Games)*'),
(1148, 'C-18000001', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1149, 'C-18000001', 'Ethics*'),
(1150, 'C-18000001', 'Logic & Critical Thinking'),
(1151, 'C-18000001', 'Health Ethics'),
(1152, 'C-18000001', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1153, 'C-18000001', 'Related Learning Experience (306hrs)'),
(1154, 'C-18000001', 'Nursing Informatics'),
(1155, 'C-18000001', 'Nutrition for Sports and Exercise*'),
(1156, 'C-18000001', 'Mariology*'),
(1157, 'C-18000001', 'Care of the Older Person/Adult'),
(1158, 'C-18000001', 'Related Learning Experience (51hrs)'),
(1159, 'C-18000001', 'Nursing Research 2'),
(1160, 'C-18000001', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1161, 'C-18000001', 'Related Learning Experience (204hrs)'),
(1162, 'C-18000001', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1163, 'C-18000001', 'Related Learning Experience (204hrs)*'),
(1164, 'C-18000001', 'Living in the IT Era*'),
(1165, 'C-18000001', 'Theology of the Body'),
(1166, 'C-18000001', 'Decent Work Employment & Transcultural Nursing'),
(1167, 'C-18000001', 'Disaster Nursing'),
(1168, 'C-18000001', 'Related Learning Experience (51hrs)*'),
(1169, 'C-18000001', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1170, 'C-18000001', 'Rizals Life, Works & Writings'),
(1171, 'C-18000001', 'The Contemporary Wolrd*'),
(1172, 'C-18000009', 'Understanding the Self (BSN)'),
(1173, 'C-18000009', 'Health Assessment'),
(1174, 'C-18000009', 'Related Learning Experience (102hrs)'),
(1175, 'C-18000009', 'Health Education'),
(1176, 'C-18000009', 'Fundamentals of Nursing Practice'),
(1177, 'C-18000009', 'Related Learning Experience (102hrs)*'),
(1178, 'C-18000009', 'Biochemistry'),
(1179, 'C-18000009', 'Recreation (Board Games/Indoor Games)*'),
(1180, 'C-18000009', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1181, 'C-18000009', 'Ethics*'),
(1182, 'C-18000009', 'Logic & Critical Thinking'),
(1183, 'C-18000009', 'Health Ethics'),
(1184, 'C-18000009', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1185, 'C-18000009', 'Related Learning Experience (306hrs)'),
(1186, 'C-18000009', 'Nursing Informatics'),
(1187, 'C-18000009', 'Nutrition for Sports and Exercise*'),
(1188, 'C-18000009', 'Mariology*'),
(1189, 'C-18000009', 'Care of the Older Person/Adult'),
(1190, 'C-18000009', 'Related Learning Experience (51hrs)'),
(1191, 'C-18000009', 'Nursing Research 2'),
(1192, 'C-18000009', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1193, 'C-18000009', 'Related Learning Experience (204hrs)'),
(1194, 'C-18000009', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1195, 'C-18000009', 'Related Learning Experience (204hrs)*'),
(1196, 'C-18000009', 'Living in the IT Era*'),
(1197, 'C-18000009', 'Theology of the Body'),
(1198, 'C-18000009', 'Decent Work Employment & Transcultural Nursing'),
(1199, 'C-18000009', 'Disaster Nursing'),
(1200, 'C-18000009', 'Related Learning Experience (51hrs)*'),
(1201, 'C-18000009', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1202, 'C-18000009', 'Rizals Life, Works & Writings'),
(1203, 'C-18000009', 'The Contemporary Wolrd*'),
(1204, 'C-19000018', 'Understanding the Self (BSN)'),
(1205, 'C-19000018', 'Health Assessment'),
(1206, 'C-19000018', 'Related Learning Experience (102hrs)'),
(1207, 'C-19000018', 'Health Education'),
(1208, 'C-19000018', 'Fundamentals of Nursing Practice'),
(1209, 'C-19000018', 'Related Learning Experience (102hrs)*'),
(1210, 'C-19000018', 'Biochemistry'),
(1211, 'C-19000018', 'Recreation (Board Games/Indoor Games)*'),
(1212, 'C-19000018', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1213, 'C-19000018', 'Ethics*'),
(1214, 'C-19000018', 'Logic & Critical Thinking'),
(1215, 'C-19000018', 'Health Ethics'),
(1216, 'C-19000018', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1217, 'C-19000018', 'Related Learning Experience (306hrs)'),
(1218, 'C-19000018', 'Nursing Informatics'),
(1219, 'C-19000018', 'Nutrition for Sports and Exercise*'),
(1220, 'C-19000018', 'Mariology*'),
(1221, 'C-19000018', 'Care of the Older Person/Adult'),
(1222, 'C-19000018', 'Related Learning Experience (51hrs)'),
(1223, 'C-19000018', 'Nursing Research 2'),
(1224, 'C-19000018', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1225, 'C-19000018', 'Related Learning Experience (204hrs)'),
(1226, 'C-19000018', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1227, 'C-19000018', 'Related Learning Experience (204hrs)*'),
(1228, 'C-19000018', 'Living in the IT Era*'),
(1229, 'C-19000018', 'Theology of the Body'),
(1230, 'C-19000018', 'Decent Work Employment & Transcultural Nursing'),
(1231, 'C-19000018', 'Disaster Nursing'),
(1232, 'C-19000018', 'Related Learning Experience (51hrs)*'),
(1233, 'C-19000018', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1234, 'C-19000018', 'Rizals Life, Works & Writings'),
(1235, 'C-19000018', 'The Contemporary Wolrd*'),
(1236, 'C-19000016', 'Understanding the Self (BSN)'),
(1237, 'C-19000016', 'Health Assessment'),
(1238, 'C-19000016', 'Related Learning Experience (102hrs)'),
(1239, 'C-19000016', 'Health Education'),
(1240, 'C-19000016', 'Fundamentals of Nursing Practice'),
(1241, 'C-19000016', 'Related Learning Experience (102hrs)*'),
(1242, 'C-19000016', 'Biochemistry'),
(1243, 'C-19000016', 'Recreation (Board Games/Indoor Games)*'),
(1244, 'C-19000016', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1245, 'C-19000016', 'Ethics*'),
(1246, 'C-19000016', 'Logic & Critical Thinking'),
(1247, 'C-19000016', 'Health Ethics'),
(1248, 'C-19000016', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1249, 'C-19000016', 'Related Learning Experience (306hrs)'),
(1250, 'C-19000016', 'Nursing Informatics'),
(1251, 'C-19000016', 'Nutrition for Sports and Exercise*'),
(1252, 'C-19000016', 'Mariology*'),
(1253, 'C-19000016', 'Care of the Older Person/Adult'),
(1254, 'C-19000016', 'Related Learning Experience (51hrs)'),
(1255, 'C-19000016', 'Nursing Research 2'),
(1256, 'C-19000016', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1257, 'C-19000016', 'Related Learning Experience (204hrs)'),
(1258, 'C-19000016', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1259, 'C-19000016', 'Related Learning Experience (204hrs)*'),
(1260, 'C-19000016', 'Living in the IT Era*'),
(1261, 'C-19000016', 'Theology of the Body'),
(1262, 'C-19000016', 'Decent Work Employment & Transcultural Nursing'),
(1263, 'C-19000016', 'Disaster Nursing'),
(1264, 'C-19000016', 'Related Learning Experience (51hrs)*'),
(1265, 'C-19000016', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1266, 'C-19000016', 'Rizals Life, Works & Writings'),
(1267, 'C-19000016', 'The Contemporary Wolrd*'),
(1268, 'C-19000047', 'Understanding the Self (BSN)'),
(1269, 'C-19000047', 'Health Assessment'),
(1270, 'C-19000047', 'Related Learning Experience (102hrs)'),
(1271, 'C-19000047', 'Health Education'),
(1272, 'C-19000047', 'Fundamentals of Nursing Practice'),
(1273, 'C-19000047', 'Related Learning Experience (102hrs)*'),
(1274, 'C-19000047', 'Biochemistry'),
(1275, 'C-19000047', 'Recreation (Board Games/Indoor Games)*'),
(1276, 'C-19000047', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1277, 'C-19000047', 'Ethics*'),
(1278, 'C-19000047', 'Logic & Critical Thinking'),
(1279, 'C-19000047', 'Health Ethics'),
(1280, 'C-19000047', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1281, 'C-19000047', 'Related Learning Experience (306hrs)'),
(1282, 'C-19000047', 'Nursing Informatics'),
(1283, 'C-19000047', 'Nutrition for Sports and Exercise*'),
(1284, 'C-19000047', 'Mariology*'),
(1285, 'C-19000047', 'Care of the Older Person/Adult'),
(1286, 'C-19000047', 'Related Learning Experience (51hrs)'),
(1287, 'C-19000047', 'Nursing Research 2'),
(1288, 'C-19000047', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1289, 'C-19000047', 'Related Learning Experience (204hrs)'),
(1290, 'C-19000047', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1291, 'C-19000047', 'Related Learning Experience (204hrs)*'),
(1292, 'C-19000047', 'Living in the IT Era*'),
(1293, 'C-19000047', 'Theology of the Body'),
(1294, 'C-19000047', 'Decent Work Employment & Transcultural Nursing'),
(1295, 'C-19000047', 'Disaster Nursing'),
(1296, 'C-19000047', 'Related Learning Experience (51hrs)*'),
(1297, 'C-19000047', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1298, 'C-19000047', 'Rizals Life, Works & Writings'),
(1299, 'C-19000047', 'The Contemporary Wolrd*'),
(1300, 'C-19000048', 'Understanding the Self (BSN)'),
(1301, 'C-19000048', 'Health Assessment'),
(1302, 'C-19000048', 'Related Learning Experience (102hrs)'),
(1303, 'C-19000048', 'Health Education'),
(1304, 'C-19000048', 'Fundamentals of Nursing Practice'),
(1305, 'C-19000048', 'Related Learning Experience (102hrs)*'),
(1306, 'C-19000048', 'Biochemistry'),
(1307, 'C-19000048', 'Recreation (Board Games/Indoor Games)*'),
(1308, 'C-19000048', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1309, 'C-19000048', 'Ethics*'),
(1310, 'C-19000048', 'Logic & Critical Thinking'),
(1311, 'C-19000048', 'Health Ethics'),
(1312, 'C-19000048', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1313, 'C-19000048', 'Related Learning Experience (306hrs)'),
(1314, 'C-19000048', 'Nursing Informatics'),
(1315, 'C-19000048', 'Nutrition for Sports and Exercise*'),
(1316, 'C-19000048', 'Mariology*'),
(1317, 'C-19000048', 'Care of the Older Person/Adult'),
(1318, 'C-19000048', 'Related Learning Experience (51hrs)'),
(1319, 'C-19000048', 'Nursing Research 2'),
(1320, 'C-19000048', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1321, 'C-19000048', 'Related Learning Experience (204hrs)'),
(1322, 'C-19000048', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1323, 'C-19000048', 'Related Learning Experience (204hrs)*'),
(1324, 'C-19000048', 'Living in the IT Era*'),
(1325, 'C-19000048', 'Theology of the Body'),
(1326, 'C-19000048', 'Decent Work Employment & Transcultural Nursing'),
(1327, 'C-19000048', 'Disaster Nursing'),
(1328, 'C-19000048', 'Related Learning Experience (51hrs)*'),
(1329, 'C-19000048', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1330, 'C-19000048', 'Rizals Life, Works & Writings'),
(1331, 'C-19000048', 'The Contemporary Wolrd*'),
(1332, 'C-19000027', 'Understanding the Self (BSN)'),
(1333, 'C-19000027', 'Health Assessment'),
(1334, 'C-19000027', 'Related Learning Experience (102hrs)'),
(1335, 'C-19000027', 'Health Education'),
(1336, 'C-19000027', 'Fundamentals of Nursing Practice'),
(1337, 'C-19000027', 'Related Learning Experience (102hrs)*'),
(1338, 'C-19000027', 'Biochemistry'),
(1339, 'C-19000027', 'Recreation (Board Games/Indoor Games)*'),
(1340, 'C-19000027', 'Pagbasa at Pagsulat Tungo sa Pananaliksik*'),
(1341, 'C-19000027', 'Ethics*'),
(1342, 'C-19000027', 'Logic & Critical Thinking'),
(1343, 'C-19000027', 'Health Ethics'),
(1344, 'C-19000027', 'Care of Mother & Child At-Risk or with Problems (Acute & Chronic)'),
(1345, 'C-19000027', 'Related Learning Experience (306hrs)'),
(1346, 'C-19000027', 'Nursing Informatics'),
(1347, 'C-19000027', 'Nutrition for Sports and Exercise*'),
(1348, 'C-19000027', 'Mariology*'),
(1349, 'C-19000027', 'Care of the Older Person/Adult'),
(1350, 'C-19000027', 'Related Learning Experience (51hrs)'),
(1351, 'C-19000027', 'Nursing Research 2'),
(1352, 'C-19000027', 'Care of Clients with Problems in Nutrition & GI Metabolism & Endocrine, Perception & Coordination, Acute & Chro'),
(1353, 'C-19000027', 'Related Learning Experience (204hrs)'),
(1354, 'C-19000027', 'Care of Clients with Maladaptive Patterns of Behavior, Acute & Chronic'),
(1355, 'C-19000027', 'Related Learning Experience (204hrs)*'),
(1356, 'C-19000027', 'Living in the IT Era*'),
(1357, 'C-19000027', 'Theology of the Body'),
(1358, 'C-19000027', 'Decent Work Employment & Transcultural Nursing'),
(1359, 'C-19000027', 'Disaster Nursing'),
(1360, 'C-19000027', 'Related Learning Experience (51hrs)*'),
(1361, 'C-19000027', 'Intensive Nursing Practicum (Hospital & Community Settings) (408hrs)'),
(1362, 'C-19000027', 'Rizals Life, Works & Writings'),
(1363, 'C-19000027', 'The Contemporary Wolrd*'),
(1364, 'C-20000057', 'Ethics-'),
(1365, 'C-20000057', 'The Contemporary World-'),
(1366, 'C-20000057', 'Science, Technology & Society-'),
(1367, 'C-20000057', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-'),
(1368, 'C-20000057', 'Theories of Personality'),
(1369, 'C-20000057', 'Mariology-'),
(1370, 'C-20000057', 'Recreation (Board Games/Indoor Games)-'),
(1371, 'C-20000057', 'National Service Training Program 2-'),
(1372, 'C-20000057', 'Rizals Life, Works & Writings-'),
(1373, 'C-20000057', 'General Zoology'),
(1374, 'C-20000057', 'Biochemistry-'),
(1375, 'C-20000057', 'Experimental Psychology'),
(1376, 'C-20000057', 'Social Psychology'),
(1377, 'C-20000057', 'Nutrition for Sports and Exercise-'),
(1378, 'C-20000057', 'National Service Training Program*'),
(1379, 'C-20000057', 'National Service Training Program 2*'),
(1380, 'C-20000054', 'Ethics-'),
(1381, 'C-20000054', 'The Contemporary World-'),
(1382, 'C-20000054', 'Science, Technology & Society-'),
(1383, 'C-20000054', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-'),
(1384, 'C-20000054', 'Theories of Personality'),
(1385, 'C-20000054', 'Mariology-'),
(1386, 'C-20000054', 'Recreation (Board Games/Indoor Games)-'),
(1387, 'C-20000054', 'National Service Training Program 2-'),
(1388, 'C-20000054', 'Rizals Life, Works & Writings-'),
(1389, 'C-20000054', 'General Zoology'),
(1390, 'C-20000054', 'Biochemistry-'),
(1391, 'C-20000054', 'Experimental Psychology'),
(1392, 'C-20000054', 'Social Psychology'),
(1393, 'C-20000054', 'Nutrition for Sports and Exercise-'),
(1394, 'C-20000054', 'National Service Training Program*'),
(1395, 'C-20000054', 'National Service Training Program 2*'),
(1396, 'C-20000042', 'Ethics-'),
(1397, 'C-20000042', 'The Contemporary World-'),
(1398, 'C-20000042', 'Science, Technology & Society-'),
(1399, 'C-20000042', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-'),
(1400, 'C-20000042', 'Theories of Personality'),
(1401, 'C-20000042', 'Mariology-'),
(1402, 'C-20000042', 'Recreation (Board Games/Indoor Games)-'),
(1403, 'C-20000042', 'National Service Training Program 2-'),
(1404, 'C-20000042', 'Rizals Life, Works & Writings-'),
(1405, 'C-20000042', 'General Zoology'),
(1406, 'C-20000042', 'Biochemistry-'),
(1407, 'C-20000042', 'Experimental Psychology'),
(1408, 'C-20000042', 'Social Psychology'),
(1409, 'C-20000042', 'Nutrition for Sports and Exercise-'),
(1410, 'C-20000042', 'National Service Training Program*'),
(1411, 'C-20000042', 'National Service Training Program 2*'),
(1412, 'C-20000061', 'Ethics-'),
(1413, 'C-20000061', 'The Contemporary World-'),
(1414, 'C-20000061', 'Science, Technology & Society-'),
(1415, 'C-20000061', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-'),
(1416, 'C-20000061', 'Theories of Personality'),
(1417, 'C-20000061', 'Mariology-'),
(1418, 'C-20000061', 'Recreation (Board Games/Indoor Games)-'),
(1419, 'C-20000061', 'National Service Training Program 2-'),
(1420, 'C-20000061', 'Rizals Life, Works & Writings-'),
(1421, 'C-20000061', 'General Zoology'),
(1422, 'C-20000061', 'Biochemistry-'),
(1423, 'C-20000061', 'Experimental Psychology'),
(1424, 'C-20000061', 'Social Psychology'),
(1425, 'C-20000061', 'Nutrition for Sports and Exercise-'),
(1426, 'C-20000061', 'National Service Training Program*'),
(1427, 'C-20000061', 'National Service Training Program 2*'),
(1428, 'C-20000047', 'Ethics-'),
(1429, 'C-20000047', 'The Contemporary World-'),
(1430, 'C-20000047', 'Science, Technology & Society-'),
(1431, 'C-20000047', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-'),
(1432, 'C-20000047', 'Theories of Personality'),
(1433, 'C-20000047', 'Mariology-'),
(1434, 'C-20000047', 'Recreation (Board Games/Indoor Games)-'),
(1435, 'C-20000047', 'National Service Training Program 2-'),
(1436, 'C-20000047', 'Rizals Life, Works & Writings-'),
(1437, 'C-20000047', 'General Zoology'),
(1438, 'C-20000047', 'Biochemistry-'),
(1439, 'C-20000047', 'Experimental Psychology'),
(1440, 'C-20000047', 'Social Psychology'),
(1441, 'C-20000047', 'Nutrition for Sports and Exercise-'),
(1442, 'C-20000047', 'National Service Training Program*'),
(1443, 'C-20000047', 'National Service Training Program 2*'),
(1444, 'C-20000058', 'Ethics-'),
(1445, 'C-20000058', 'The Contemporary World-'),
(1446, 'C-20000058', 'Science, Technology & Society-'),
(1447, 'C-20000058', 'Pagbasa at Pagsulat Tungo sa Pananaliksik-'),
(1448, 'C-20000058', 'Theories of Personality'),
(1449, 'C-20000058', 'Mariology-'),
(1450, 'C-20000058', 'Recreation (Board Games/Indoor Games)-'),
(1451, 'C-20000058', 'National Service Training Program 2-'),
(1452, 'C-20000058', 'Rizals Life, Works & Writings-'),
(1453, 'C-20000058', 'General Zoology'),
(1454, 'C-20000058', 'Biochemistry-'),
(1455, 'C-20000058', 'Experimental Psychology'),
(1456, 'C-20000058', 'Social Psychology'),
(1457, 'C-20000058', 'Nutrition for Sports and Exercise-'),
(1458, 'C-20000058', 'National Service Training Program*'),
(1459, 'C-20000058', 'National Service Training Program 2*');

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
(131, 'PCF021', 'B2RcD', 'faculty'),
(134, 'C-19000051', 'lDhtl', 'student'),
(135, 'C-19000029', 'xMFJ1', 'student'),
(136, 'C-19000021', 'u2WvQ', 'student'),
(137, 'C-19000054', 'RJvFr', 'student'),
(138, 'C-19000053', '6sA91', 'student'),
(139, 'C-19000033', 'eeyxW', 'student'),
(140, 'C-19000031', '7dUPY', 'student'),
(141, 'C-19000041', 'UxkT0', 'student'),
(142, 'C-19000039', '1crIJ', 'student'),
(143, 'C-19000037', 'APPj4', 'student'),
(144, 'C-19000030', 'f0mvS', 'student'),
(145, 'C-19000032', 'BNMqq', 'student'),
(146, 'C-19000040', '6lpDC', 'student'),
(147, 'C-19000034', 'AfjUV', 'student'),
(148, 'C-19000043', 'VXXen', 'student'),
(149, 'C-19000044', 'Wh0Ii', 'student'),
(150, 'C-19000038', 'UUnUH', 'student'),
(151, 'C-19000042', 'CwioC', 'student'),
(152, 'C-19000003', 'JhsQ2', 'student'),
(153, 'C-19000009', 'jnOsL', 'student'),
(154, 'C-200000049', 'pWjHe', 'student'),
(155, 'C-19000006', 'KVw0v', 'student'),
(156, 'C-19000049', 'LMsME', 'student'),
(157, 'C-19000010', 'KoWLA', 'student'),
(158, 'C-19000011', '3X11B', 'student'),
(159, 'C-19000015', 'obPOU', 'student'),
(160, 'C-19000028', '4p447', 'student'),
(161, 'C-19000035', '2reJk', 'student'),
(162, 'C-19000008', 'Xw1Qs', 'student'),
(163, 'C-19000036', 'CJE7T', 'student'),
(164, 'C-2000028', '6HPJV', 'student'),
(165, 'C-19000055', 'SIT1j', 'student'),
(166, 'C-19000007', 'CTXvg', 'student'),
(167, 'C-190000', 'T40aj', 'student'),
(168, 'C-19000024', 'aceXL', 'student'),
(169, 'C-19000025', 'iDoO2', 'student'),
(170, 'C-19000045', 'lSmf6', 'student'),
(171, 'C-19000023', 'PsR43', 'student'),
(172, 'C-18000001', 'g3B0L', 'student'),
(173, 'C-18000009', 'tqz2I', 'student'),
(174, 'C-19000018', 'x8B4s', 'student'),
(175, 'C-19000016', 'Ehy0d', 'student'),
(176, 'C-19000047', 'uE8zD', 'student'),
(177, 'C-19000048', '0c2zM', 'student'),
(178, 'C-19000027', 'Ui7Rk', 'student'),
(179, 'C-20000057', '9Pisk', 'student'),
(180, 'C-20000054', 'xYxIs', 'student'),
(181, 'C-20000042', 'oNZJq', 'student'),
(182, 'C-20000061', 'VycyB', 'student'),
(183, 'C-20000047', 'syNZh', 'student'),
(184, 'C-20000058', 'EWCiY', 'student');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `studentsubs`
--
ALTER TABLE `studentsubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1460;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `withdrawns`
--
ALTER TABLE `withdrawns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
