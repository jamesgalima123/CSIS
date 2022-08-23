-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 01:50 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

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
(1, 'open', 'final');

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

--
-- Dumping data for table `midterms`
--

INSERT INTO `midterms` (`id`, `student_id`, `subject`, `grade`) VALUES
(23, '2018-00073-cl-0', 'Mathematics', '93'),
(24, '2018-00071-cl-0', 'Mathematics', '91');

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

--
-- Dumping data for table `prelims`
--

INSERT INTO `prelims` (`id`, `student_id`, `subject`, `grade`) VALUES
(48, '2018-00073-cl-0', 'Mathematics', '99'),
(49, '2018-00071-cl-0', 'Mathematics', '96');

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
(54, 'bachelor of elementary education', 'Mathematics', 'first', 'first', '', 0),
(56, 'bachelor of science in psychology', 'Mathematics', 'first', 'first', '', 0),
(57, 'bachelor of science in psychology', 'English', 'first', 'first', '', 0),
(58, 'bachelor of science in psychology', 'Filipino', 'first', 'second', '', 0),
(59, 'bachelor of science in psychology', 'Physical Education', 'first', 'second', '', 0),
(61, 'bachelor of elementary education', 'Filipino', 'first', 'second', '', 0),
(62, 'bachelor of elementary education', 'English', 'first', 'second', '', 0),
(63, 'bachelor of science in nursing', 'Filipino', 'first', 'first', '', 0),
(64, 'bachelor of science in nursing', 'Physical Education', 'first', 'first', '', 0),
(65, 'bachelor of science in nursing', 'Mathematics', 'first', 'second', '', 0),
(66, 'bachelor of science in nursing', 'English', 'first', 'second', '', 0),
(71, 'bachelor of science in psychology', 'GEN Math', 'second', 'first', '', 0),
(72, 'Bachelor of Science in Nursing', 'GEN Math', 'second', 'first', '', 0),
(74, 'Bachelor of Elementary Education', 'Physical Education', 'first', 'first', '', 0);

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
(51, '2018-00071-cl-0', 'Lagancia, Boknoy B.', 'male', '09616219777', '2021-06-30', 'tadlac', 'Tadlac, Los Banos, Laguna', 'Bachelor of Elementary Education', 'regular', ''),
(52, '2018-00070-cl-0', 'Bello, Jerome L.', 'male', '09065187987', '2021-07-08', 'Quezon', 'Laguna', 'Bachelor of Science in Psychology', 'irregular', ''),
(53, '2018-00073-cl-0', 'Cobijano, Erika A', 'female', '09348576857', '2021-06-30', 'Calauan', 'Calauan', 'Bachelor of Elementary Education', 'regular', '');

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
(71, '2018-00071-cl-0', 'Mathematics'),
(72, '2018-00071-cl-0', 'Physical Education'),
(73, '2018-00071-cl-0', 'Filipino'),
(74, '2018-00071-cl-0', 'English'),
(78, '2018-00070-cl-0', 'Mathematics '),
(79, '2018-00070-cl-0', 'English '),
(84, '2018-00073-cl-0', 'Mathematics'),
(85, '2018-00073-cl-0', 'Physical Education'),
(86, '2018-00073-cl-0', 'Filipino'),
(87, '2018-00073-cl-0', 'English'),
(89, '2018-00070-cl-0', 'Physical Education '),
(90, '2018-00070-cl-0', 'Filipino '),
(95, '2018-00070-cl-0', 'General Math ');

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

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `subject_code`, `teacher_id`, `student_id`, `term`, `score`, `course`) VALUES
(25, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'prelim', 100, 'Bachelor of Elementary Education'),
(26, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'prelim', 100, 'Bachelor of Elementary Education'),
(27, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'midterm', 100, 'Bachelor of Elementary Education'),
(28, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'midterm', 100, 'Bachelor of Elementary Education'),
(29, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'final', 99, 'Bachelor of Elementary Education'),
(30, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'final', 100, 'Bachelor of Elementary Education');

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

--
-- Dumping data for table `student_cs`
--

INSERT INTO `student_cs` (`id`, `subject_code`, `teacher_id`, `student_id`, `term`, `score`, `course`) VALUES
(19, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'prelim', 10, 'Bachelor of Elementary Education'),
(20, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'prelim', 10, 'Bachelor of Elementary Education'),
(21, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'prelim', 8, 'Bachelor of Elementary Education'),
(22, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'prelim', 9, 'Bachelor of Elementary Education'),
(23, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'midterm', 18, 'Bachelor of Elementary Education'),
(24, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'midterm', 17, 'Bachelor of Elementary Education'),
(31, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'final', 17, 'Bachelor of Elementary Education'),
(32, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'final', 19, 'Bachelor of Elementary Education'),
(35, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'final', 18, 'Bachelor of Elementary Education'),
(36, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'final', 19, 'Bachelor of Elementary Education');

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

--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`id`, `subject_code`, `teacher_id`, `student_id`, `term`, `score`, `course`) VALUES
(11, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'prelim', 48, 'Bachelor of Elementary Education'),
(12, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'prelim', 50, 'Bachelor of Elementary Education'),
(13, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'midterm', 30, 'Bachelor of Elementary Education'),
(14, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'midterm', 45, 'Bachelor of Elementary Education'),
(15, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'final', 48, 'Bachelor of Elementary Education'),
(16, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'final', 48, 'Bachelor of Elementary Education');

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

--
-- Dumping data for table `student_reporting`
--

INSERT INTO `student_reporting` (`id`, `subject_code`, `teacher_id`, `student_id`, `term`, `score`, `course`) VALUES
(13, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'prelim', 25, 'Bachelor of Elementary Education'),
(14, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'prelim', 30, 'Bachelor of Elementary Education'),
(15, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'midterm', 20, 'Bachelor of Elementary Education'),
(16, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'midterm', 15, 'Bachelor of Elementary Education'),
(17, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'final', 15, 'Bachelor of Elementary Education'),
(18, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'final', 15, 'Bachelor of Elementary Education'),
(21, 'M-01', '1999-00070-proc-0', '2018-00071-cl-0', 'final', 45, 'Bachelor of Elementary Education'),
(22, 'M-01', '1999-00070-proc-0', '2018-00073-cl-0', 'final', 40, 'Bachelor of Elementary Education');

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
(44, '1999-00071-proc-1', 'Physical Education', 'P.E-01', 0),
(45, '1999-00072-proc-1', 'Filipino', 'F-01', 0),
(46, '1999-00070-proc-0', 'Mathematics', 'M-01', 3),
(47, '1999-00070-proc-0', 'English', 'E-01', 3),
(50, '1999-00070-proc-0', 'Math', 'M-03', 2);

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
(1, 'M-01', 'Mathematics', '3'),
(3, 'E-01', 'English', '3'),
(4, 'F-01', 'Filipino', '2'),
(6, 'P.E-01', 'Physical Education', '2'),
(7, 'M-02', 'General Math', '3'),
(9, 'M-03', 'Math', '2');

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
(38, '1999-00070-proc-0', 'Jerome Bello', 'male', '09221232123', 'Tadlac, Los Banos, Laguna'),
(39, '1999-00071-proc-1', 'Marvel', 'male', '0935234456', 'Los Banos Laguna'),
(40, '1999-00072-proc-1', 'Jake', 'male', '09346574657', 'San Pablo');

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

--
-- Dumping data for table `teacher_cs`
--

INSERT INTO `teacher_cs` (`id`, `subject_code`, `teacher_id`, `term`, `item`, `course`) VALUES
(10, 'M-01', '1999-00070-proc-0', 'prelim', 10, 'Bachelor of Elementary Education'),
(11, 'M-01', '1999-00070-proc-0', 'prelim', 10, 'Bachelor of Elementary Education'),
(12, 'M-01', '1999-00070-proc-0', 'midterm', 20, 'Bachelor of Elementary Education'),
(16, 'M-01', '1999-00070-proc-0', 'final', 20, 'Bachelor of Elementary Education'),
(18, 'M-01', '1999-00070-proc-0', 'final', 20, 'Bachelor of Elementary Education');

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

--
-- Dumping data for table `teacher_exam`
--

INSERT INTO `teacher_exam` (`id`, `subject_code`, `teacher_id`, `term`, `item`, `course`) VALUES
(6, 'M-01', '1999-00070-proc-0', 'prelim', 50, 'Bachelor of Elementary Education'),
(7, 'M-01', '1999-00070-proc-0', 'midterm', 50, 'Bachelor of Elementary Education'),
(8, 'M-01', '1999-00070-proc-0', 'final', 50, 'Bachelor of Elementary Education');

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

--
-- Dumping data for table `teacher_reporting`
--

INSERT INTO `teacher_reporting` (`id`, `subject_code`, `teacher_id`, `term`, `item`, `course`) VALUES
(5, 'M-01', '1999-00070-proc-0', 'prelim', 30, 'Bachelor of Elementary Education'),
(6, 'M-01', '1999-00070-proc-0', 'midterm', 25, 'Bachelor of Elementary Education'),
(7, 'M-01', '1999-00070-proc-0', 'final', 25, 'Bachelor of Elementary Education'),
(9, 'M-01', '1999-00070-proc-0', 'final', 50, 'Bachelor of Elementary Education');

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
(63, '1999-00070-proc-0', 'password', 'faculty'),
(75, '1999-00071-proc-1', 'pass', 'faculty'),
(76, '1999-00072-proc-1', 'password', 'faculty'),
(100, '2018-00071-cl-0', 'password', 'student'),
(101, '2018-00070-cl-0', 'pass', 'student'),
(102, '2018-00073-cl-0', 'password', 'student');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resigns`
--
ALTER TABLE `resigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `studentrecords`
--
ALTER TABLE `studentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `studentsubs`
--
ALTER TABLE `studentsubs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sublists`
--
ALTER TABLE `sublists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacherrecords`
--
ALTER TABLE `teacherrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `withdrawns`
--
ALTER TABLE `withdrawns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
