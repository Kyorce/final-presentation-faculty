-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost: 3306
-- Generation Time: May 24, 2025 at 12:14 PM
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
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_records`
--

CREATE TABLE `academic_records` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `degree` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `major` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `graduation_year` int(255) NOT NULL,
  `honors_received` text CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_records`
--

INSERT INTO `academic_records` (`id`, `user_email`, `degree`, `major`, `institution`, `graduation_year`, `honors_received`, `created_at`, `updated_at`) VALUES
(0, 'user1@example.com', 'Bachelor of Science', 'Computer Science', '0', 2023, 'Cum Laude', '2025-05-01 06:57:11', '2025-05-01 06:57:11'),
(0, 'pierce@gmail.com', 'Bachelor of Science', 'Computer Science', '0', 2025, 'Cum Laude', '2025-05-01 07:02:43', '2025-05-01 07:02:43'),
(0, 'pierce@gmail.com', 'Bachelor of Science', 'Computer Science', '0', 2025, 'Cum Laude', '2025-05-01 07:03:51', '2025-05-01 07:03:51'),
(0, 'pierce@gmail.com', 'Bachelor of Science', 'Computer Science', '0', 2020, '', '2025-05-01 07:06:17', '2025-05-01 07:06:17'),
(0, 'pierce@gmail.com', 'Bachelor of Science', 'Computer Science', 'Bestlink College of the Philippines', 2022555, '', '2025-05-01 07:08:53', '2025-05-01 07:08:53'),
(0, 'pierce@gmail.com', 'Bachelor of Science', 'Computer Science', 'Bestlink College of the Philippines', 2022555, '', '2025-05-01 07:09:02', '2025-05-01 07:09:02'),
(0, 'karla@gmail.com', 'Bachelor of Science', 'Computer Science', 'Bestlink College of the Philippines', 2025, 'with high honors', '2025-05-03 04:04:56', '2025-05-03 04:04:56'),
(0, 'vasallo@gmail.com', 'Bachelor of Science', 'Computer Science', 'Bestlink College of the Philippines', 2025, 'Cum Laude', '2025-05-03 04:07:55', '2025-05-03 04:07:55'),
(0, 'andie@gmail.com', 'Bachelor of Science', 'Information Technology', 'Bestlink College of the Philippines', 2018, 'Cum Laude', '2025-05-04 01:53:59', '2025-05-04 01:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `created_at`) VALUES
(6, 'BCPians ', 'This is a testing for announcement kineme of faculty \r\n', '2025-05-09 05:50:51'),
(39, 'TESTING', 'GOODMORNING BCPians\r\n', '2025-05-10 05:18:38'),
(40, 'Motivation', 'Success is not final, failure is not fatal: it is the courage to continue that counts\r\n-Winston Churchill ', '2025-05-10 05:20:16'),
(50, 'Testing IP Address', 'G\'EVENING BCPians', '2025-05-10 13:01:31'),
(51, 'Testing IP Connection', '123', '2025-05-12 05:53:31'),
(52, 'success', 'auto uno', '2025-05-23 12:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `check_in` datetime NOT NULL DEFAULT current_timestamp(),
  `check_out` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `course_code`, `description`) VALUES
(1, 'Introduction to Psychology', 'PSY101', 'A basic overview of the principles of psychology.'),
(2, '	Technopreneurship', 'TEC101 / G', 'A Technopreneurship course typically introduces students to the intersection of technology and entrepreneurship, equipping them with the skills and knowledge to create and manage technology-based businesses. It focuses on innovation, business planning, and the entrepreneurial mindset necessary for success in the tech sector. '),
(3, 'Information Assurance and Security 2', 'CCS3103', 'Information Assurance and Security 2 courses generally delve deeper into the principles of securing information and systems, building upon introductory concepts. They often explore topics like security policies, access control mechanisms, threat modeling, risk management, and specific security technologies and protocols. '),
(4, 'Swimming', '224 - HMPE', 'A typical swimming course description introduces fundamental swimming skills, progresses to more advanced techniques, and emphasizes water safety.'),
(5, 'Recreation and Leisure', 'HMELEC2', 'A Recreation and Leisure course explores the role and value of leisure in everyday life, examining how individuals engage in recreational activities and how to develop programs that promote well-being.'),
(6, 'Risk Management as Applied Safety, Security and Sanitation', 'THC222', 'The training aims to assist food businesses meet food safety standards, provide food handlers skills and knowledge of safety and hygiene, and increase compliance with food legislation.'),
(7, 'Fundamentals in Food and Beverage Operation', 'HM-ELEC3', 'A Fundamentals in Food and Beverage Operation course provides students with the foundational knowledge, skills, and attitudes needed to work in the food service industry.'),
(8, 'The Life and Works of Jose Rizal', 'GE9', 'The \"Life and Works of Jose Rizal\" course examines the life, writings, and ideals of Dr. Jose P. Rizal, aiming to provide students with a comprehensive understanding of his contributions to Filipino nationhood and the social and political context of his time.'),
(9, 'Sosyedad at Literatura', 'SOSLIT', '\"Sosyedad at Literatura,\" which translates to \"Society and Literature,\" is a course that examines the intersection of social issues and literary texts. It explores how literature reflects, shapes, and is shaped by societal dynamics. The course analyzes the social, cultural, and political contexts in which literary works are created and consumed, focusing on how they address issues like inequality, power, and social change. '),
(10, 'Social and Professional Issues', 'CCS4112', 'A \"Social and Professional Issues\" course typically explores the ethical, legal, and societal impacts of technology and the professional practices associated with various fields. It often covers topics like ethical decision-making, intellectual property, privacy, and the responsible use of technology. '),
(11, 'Web Security', 'ITSP2C', 'A web security course aims to equip individuals with the knowledge and skills to protect web applications and infrastructure from various cyber threats. It covers fundamental concepts, common vulnerabilities, and best practices for building and maintaining secure web systems. The course typically includes topics like identifying vulnerabilities, understanding different types of attacks, using security tools, and implementing security measures. '),
(12, 'Business Process Management in IT', 'CCS3219', 'Business process management helps organizations leverage processes to achieve their goals and be successful. Once processes are implemented, they must be monitored, evaluated, and optimized to make sure they are still meeting the goals that they were designed to accomplish.'),
(13, 'Pricing and Costing', 'ECC222', 'A \"Pricing and Costing\" course in IT generally focuses on the intersection of IT projects and financial management, covering topics like cost analysis, pricing strategies, and how to effectively manage project budgets. It equips students with the skills to make informed decisions about project pricing and cost management, ultimately contributing to project profitability and success. '),
(15, 'Fundamentals in Lodging Operations', 'HPC223', 'A Fundamentals in Lodging Operations course typically covers the foundational aspects of managing and operating lodging establishments, such as hotels and motels, including key departments like front office, housekeeping, food and beverage, and maintenance.');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(2, 'CCS Department'),
(6, 'Psychology Department'),
(7, 'IT Department'),
(8, 'Entrep Department'),
(9, 'BSAIS Department'),
(10, 'HUMSS Department'),
(11, 'ICT Department');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `email`, `password`, `department`) VALUES
(3, 'Pierce Rios', 'pierce@gmail.com', '$2y$10$.c5vbJNCdWEyWXDZ29LikOVgvN.5puCLfuL/J7MVZOtagEF7tl.tm', 'CSS Department'),
(4, 'Andie Dela Cruz', 'andie@gmail.com', '$2y$10$0IjQvpIm8Tq8tDVZw..mlubfpZpIlLMBjAY4wnNvHUJNA4OsXov32', 'CSS Department');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `reason` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `applied_on` datetime NOT NULL DEFAULT current_timestamp(),
  `approved_by` int(11) NOT NULL,
  `approved_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`login_id`, `user_id`, `login_timestamp`, `ip_address`, `user_agent`) VALUES
(2, 6, '2025-05-05 03:02:56', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(3, 6, '2025-05-05 03:10:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(4, 6, '2025-05-05 03:10:45', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(5, 33, '2025-05-05 03:11:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(6, 6, '2025-05-04 21:12:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(7, 6, '2025-05-04 21:12:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(8, 6, '2025-05-04 21:19:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(9, 6, '2025-05-04 21:20:30', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(10, 33, '2025-05-04 21:21:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(11, 9, '2025-05-04 22:07:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(12, 6, '2025-05-04 22:07:46', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(13, 6, '2025-05-04 22:14:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(14, 6, '2025-05-04 22:16:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(15, 6, '2025-05-04 22:18:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(16, 6, '2025-05-04 22:19:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(17, 33, '2025-05-04 22:21:20', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(18, 6, '2025-05-04 22:26:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(19, 6, '2025-05-04 22:30:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(20, 6, '2025-05-04 22:35:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(21, 6, '2025-05-04 22:37:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(22, 6, '2025-05-04 22:42:36', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(23, 6, '2025-05-04 22:48:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(24, 6, '2025-05-05 04:56:00', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(25, 33, '2025-05-05 04:57:37', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(26, 8, '2025-05-05 05:02:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(27, 9, '2025-05-05 05:07:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(28, 26, '2025-05-05 05:08:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(29, 8, '2025-05-05 05:09:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(30, 6, '2025-05-06 02:46:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(31, 6, '2025-05-06 03:29:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(32, 8, '2025-05-09 03:02:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(33, 6, '2025-05-09 03:04:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(34, 8, '2025-05-09 03:15:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(35, 6, '2025-05-09 03:33:39', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(36, 8, '2025-05-09 03:33:52', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(37, 6, '2025-05-09 03:34:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(38, 6, '2025-05-09 03:35:24', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(39, 8, '2025-05-09 03:35:48', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(40, 8, '2025-05-09 05:43:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(41, 26, '2025-05-09 05:43:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(42, 8, '2025-05-09 05:50:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(43, 6, '2025-05-09 05:51:06', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(44, 8, '2025-05-09 05:51:32', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(45, 6, '2025-05-09 05:52:44', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(46, 8, '2025-05-09 05:54:50', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(47, 6, '2025-05-09 06:17:07', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(48, 8, '2025-05-09 06:17:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(49, 6, '2025-05-09 06:54:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(50, 8, '2025-05-09 06:54:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(51, 6, '2025-05-09 06:55:05', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(52, 8, '2025-05-09 06:56:27', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(53, 6, '2025-05-09 06:57:12', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(54, 8, '2025-05-09 06:58:49', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(55, 6, '2025-05-10 05:04:10', '192.168.86.160', 'Mozilla/5.0 (Linux; Android 11; CPH2349) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36'),
(56, 8, '2025-05-10 05:13:59', '192.168.86.20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0'),
(57, 6, '2025-05-10 05:17:35', '192.168.86.149', 'Mozilla/5.0 (iPad; CPU OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1'),
(58, 8, '2025-05-10 05:18:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(59, 34, '2025-05-10 05:21:38', '192.168.86.149', 'Mozilla/5.0 (iPad; CPU OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1'),
(60, 8, '2025-05-10 05:26:10', '192.168.86.149', 'Mozilla/5.0 (iPad; CPU OS 18_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/136.0.7103.91 Mobile/15E148 Safari/604.1'),
(61, 6, '2025-05-10 05:30:03', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(62, 8, '2025-05-10 12:29:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(63, 8, '2025-05-10 12:35:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(64, 6, '2025-05-10 12:44:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(65, 33, '2025-05-10 12:45:10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(66, 8, '2025-05-10 12:45:21', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(67, 33, '2025-05-10 12:46:01', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(68, 8, '2025-05-10 12:52:34', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(69, 6, '2025-05-10 12:53:08', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(70, 33, '2025-05-10 12:53:28', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(71, 8, '2025-05-10 12:53:41', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(72, 33, '2025-05-10 12:55:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(73, 35, '2025-05-10 12:56:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(74, 8, '2025-05-10 12:56:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(75, 35, '2025-05-10 12:57:16', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(76, 8, '2025-05-10 12:57:40', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(77, 26, '2025-05-10 12:58:09', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(78, 6, '2025-05-10 13:00:57', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(79, 8, '2025-05-10 13:00:59', '192.168.86.160', 'Mozilla/5.0 (Linux; Android 11; CPH2349) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.85 Mobile Safari/537.36'),
(80, 8, '2025-05-10 13:03:02', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(81, 8, '2025-05-11 14:22:29', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(82, 8, '2025-05-11 14:32:14', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(83, 8, '2025-05-12 04:17:55', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(84, 35, '2025-05-12 04:18:17', '192.168.86.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36'),
(85, 35, '2025-05-12 04:18:20', '192.168.86.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36'),
(86, 6, '2025-05-12 04:19:25', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(87, 6, '2025-05-12 04:20:02', '192.168.86.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36'),
(88, 8, '2025-05-12 04:21:19', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(89, 8, '2025-05-12 05:53:01', '192.168.86.164', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36'),
(90, 8, '2025-05-19 02:29:43', '192.168.86.168', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Mobile Safari/537.36'),
(91, 6, '2025-05-19 02:29:53', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(92, 8, '2025-05-19 05:32:38', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(93, 8, '2025-05-21 19:37:43', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(94, 8, '2025-05-22 11:06:13', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(95, 6, '2025-05-22 11:07:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(96, 8, '2025-05-22 11:09:04', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(97, 8, '2025-05-23 12:04:54', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(98, 6, '2025-05-23 12:05:58', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(99, 8, '2025-05-23 12:09:31', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36'),
(100, 35, '2025-05-23 12:13:33', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `timestamp`) VALUES
(1, 5, 'New announcement posted: test12', '2025-05-10'),
(2, 6, 'New announcement posted: test12', '2025-05-10'),
(3, 24, 'New announcement posted: test12', '2025-05-10'),
(4, 25, 'New announcement posted: test12', '2025-05-10'),
(5, 26, 'New announcement posted: test12', '2025-05-10'),
(6, 27, 'New announcement posted: test12', '2025-05-10'),
(7, 28, 'New announcement posted: test12', '2025-05-10'),
(8, 29, 'New announcement posted: test12', '2025-05-10'),
(9, 30, 'New announcement posted: test12', '2025-05-10'),
(10, 32, 'New announcement posted: test12', '2025-05-10'),
(11, 33, 'New announcement posted: test12', '2025-05-10'),
(12, 34, 'New announcement posted: test12', '2025-05-10'),
(13, 5, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(14, 6, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(15, 24, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(16, 25, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(17, 26, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(18, 27, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(19, 28, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(20, 29, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(21, 30, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(22, 32, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(23, 33, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(24, 34, 'New announcement posted: ADMIN PAGE', '2025-05-10'),
(25, 5, 'New announcement posted: Testing IP Address', '2025-05-10'),
(26, 6, 'New announcement posted: Testing IP Address', '2025-05-10'),
(27, 24, 'New announcement posted: Testing IP Address', '2025-05-10'),
(28, 25, 'New announcement posted: Testing IP Address', '2025-05-10'),
(29, 26, 'New announcement posted: Testing IP Address', '2025-05-10'),
(30, 27, 'New announcement posted: Testing IP Address', '2025-05-10'),
(31, 28, 'New announcement posted: Testing IP Address', '2025-05-10'),
(32, 29, 'New announcement posted: Testing IP Address', '2025-05-10'),
(33, 30, 'New announcement posted: Testing IP Address', '2025-05-10'),
(34, 32, 'New announcement posted: Testing IP Address', '2025-05-10'),
(35, 34, 'New announcement posted: Testing IP Address', '2025-05-10'),
(36, 35, 'New announcement posted: Testing IP Address', '2025-05-10'),
(37, 5, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(38, 6, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(39, 24, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(40, 25, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(41, 26, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(42, 27, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(43, 28, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(44, 29, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(45, 30, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(46, 32, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(47, 34, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(48, 35, 'New announcement posted: Testing IP Connection', '2025-05-12'),
(49, 5, 'New announcement posted: success', '2025-05-23'),
(50, 6, 'New announcement posted: success', '2025-05-23'),
(51, 24, 'New announcement posted: success', '2025-05-23'),
(52, 25, 'New announcement posted: success', '2025-05-23'),
(53, 26, 'New announcement posted: success', '2025-05-23'),
(54, 27, 'New announcement posted: success', '2025-05-23'),
(55, 28, 'New announcement posted: success', '2025-05-23'),
(56, 29, 'New announcement posted: success', '2025-05-23'),
(57, 30, 'New announcement posted: success', '2025-05-23'),
(58, 32, 'New announcement posted: success', '2025-05-23'),
(59, 34, 'New announcement posted: success', '2025-05-23'),
(60, 35, 'New announcement posted: success', '2025-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `professor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`professor_id`, `name`, `email`, `password`, `department`) VALUES
(1, 'Jorge Lucero', 'Jorjie@gmail.com', '$2y$10$8yQWdzw4rIC7gjmwMkngzeG6fkpOgoOgFYe.rzOuHTe5rihuUFzje', 'CCS Department'),
(3, 'Paulo Tolentino', 'Tolentino@gmai.com', '$2y$10$2K0975y79Grs11meIWGk5.zKa7PzwxG620y4y6hMo14VKr48fXw2.', 'IT Department'),
(4, 'Gerald Dela Cruz', 'Geraldine@gmail.com', '$2y$10$iZDRr.iDyxfKMx7wE.gyq.Dt6eYm2jfXpu8zPp6Ars6LAxv8tNTDi', 'IT Department\r\n'),
(5, 'Joven Paul Anislag', 'joven@gmail.com', '$2y$10$DLy1mFWJGzCEeWFvZWOqOulTjaezjTHDVDClJz4CdpGadMW.1.ED6', 'IT Department'),
(6, 'Vanessa Mago', 'vane@gmail.com', '$2y$10$vFZjlBXmULZyfANOshZm2u4AwRV0XcuU7RZGA7rVohfO5lQt78jMu', 'Bachelor of Science in Hospitality Management'),
(7, 'Robert Traqueña', 'robert@gmail.com', '$2y$10$PbE0hTMf9kC/9qnIJXPt0e2KTQYoY78VFlvsrPruBSttnunteD4ya', 'Hospitality Management'),
(8, 'Marimel Loya', 'marimel@gmail.com', '$2y$10$admik4uz4lXVUzecm7pxFuKqQJE10ATHJb3SXN8S8Ku4O8guTdIEq', 'ITE Department'),
(9, 'Jasmine Joy Umambi', 'Jasmine@gmail.com', '$2y$10$XBUAGW6qUpOAKZrYX9BHxuTOWQfIRUy5XSiTLVIgjgnHfD4FGymEa', 'IT '),
(10, 'Jairus Evan Ecat', 'Jairus@gmail.com', '$2y$10$DXlPzbNFbhXlr5XhrzOrsOJx4EAlrdvN33x14moeC0Pc6LmOUR8WS', 'Entrep Department'),
(11, 'Pierce Rios', 'pierce@gmail.com', '$2y$10$fKEF5Pgm.NeYLY6nrtRaSeMmDp0mCtOrVqJ7O8rhouU5Zv43P.UWa', 'CSS Department');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `timetable_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `timeslot` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `timetable_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `day_of_week` varchar(255) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`timetable_id`, `course_id`, `faculty_id`, `day_of_week`, `start_time`, `end_time`, `room`) VALUES
(1, 2, 7, 'Wednesday', '14:30:00', '17:30:00', '405'),
(2, 5, 6, 'Thursday', '17:30:00', '19:00:00', 'Swimming Pool Area'),
(3, 3, 2, 'Wednesday', '17:00:00', '19:00:00', '409'),
(4, 10, 5, 'Wednesday', '19:00:00', '21:00:00', '409'),
(5, 12, 4, 'Friday', '05:00:00', '19:00:00', '409'),
(6, 11, 9, 'Monday', '19:00:00', '09:00:00', '409'),
(7, 2, 4, 'Friday', '19:00:00', '21:00:00', '409'),
(15, 9, 6, 'Monday', '17:55:00', '05:55:00', '204'),
(16, 3, 33, 'Thursday', '02:02:00', '04:05:00', '205'),
(17, 3, 35, 'Wednesday', '17:00:00', '21:00:00', '409'),
(18, 8, 26, 'Thursday', '04:05:00', '19:42:00', '205'),
(19, 10, 6, 'Friday', '17:25:00', '07:45:00', '305');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `department_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`department_id`, `id`, `name`, `email`, `password`, `role`) VALUES
(NULL, 5, 'vas', 'vasallo@gmail.com', '$2y$10$9EWC6UlWoGpKAPOvDI6qNuam1EPwGSPjfaJKZW3GLNB3onnhPWVeK', 'user'),
(NULL, 6, '12', '12@gmail.com', '$2y$10$RLffI3zKAzulQ26TKxWwBOM2LwWVpglD5srq/p3ASp6IS0OlSxtJi', 'user'),
(NULL, 8, 'karla', 'karla@gmail.com', '$2y$10$GOTd86ml0DX/dVJhMXTKXuSjstaZZvfQRjNJtHos73gprCJS0S0bG', 'admin'),
(NULL, 9, 'tweni', 'tweni@gmail.com', '$2y$10$cYCwX8086DEkLihQYL2sCu7IXglIgiVanar.gj3Unltoyut6gQLm6', 'admin'),
(NULL, 12, 'christine', 'c@gmail.com', '$2y$10$9HRC8n4QtVoZGj.BvO/OAOYLW0KyZESXzA3rBW.6hp579gT/yYXEG', 'admin'),
(NULL, 24, 'Jeydon Lopez', 'jeydi@gmail.com', '$2y$10$XO1uB4ERKr3PcppxtW3a2uvh4vj4CNu14e3To.zLr8wHbiNocvDDa', 'user'),
(NULL, 25, 'Tyron Zapanta', 'tyron@gmail.com', '$2y$10$KIzxOo4QJzBFUCKxDbCoie1gP05gTbqFuiZHdC6/ZGEbIpyqs2xsW', 'user'),
(NULL, 26, 'Pierce Rios', 'pierce@gmail.com', '$2y$10$C5d/tMfU/pgjfHpqDXLnQOujMmcUJ1HxoC2SksEmahtgowcQ4K5oS', 'user'),
(NULL, 27, 'Calyx Vergara', 'calyx@gmail.com', '$2y$10$VZQIspucXAbYKJLdJlEq2eTO.IYm27sAtZKnnUIHZpEqEyOFr.Sg2', 'user'),
(NULL, 28, 'Lysander Callahan', 'lysander@gmail.com', '$2y$10$k2yZEfmrDLyTmcM2qB6Y7.OYTs7kuxKz.QiIJaKTDN/XA7B5L/tEu', 'user'),
(NULL, 29, 'Elsa Jimenez', 'elsa@gmail.com', '$2y$10$iMjryYOANi1RPanv4gnRXec/HRMM.nEyh.O8DAA/EHeDSU9qRl5fK', 'user'),
(NULL, 30, 'Cesar Canlas', 'cesar@gmail.com', '$2y$10$gCNUZFmPsAcb5cMH7ZpGMuNgO/Lod1TrXrrtHmzixWPrSB63aTDRe', 'user'),
(NULL, 31, 'Andie', 'andi1@gmail.com', '$2y$10$.JwEumRZiS8u5ZNQITnlYuFYNtq5S8LI010.csfmBvr8EZtUcWZ1G', 'admin'),
(NULL, 32, 'Aragon Montalban', 'ara@gmail.com', '$2y$10$xscw0u30dyt8Sn9yncc9juVQphuFr0BmUFlGawiLlVjPypJVjpXTy', 'user'),
(NULL, 34, 'kyce', 'kyy@gmail.com', '$2y$10$MSEJaNa8uADEEDk64Km8MO4DKtcQWXxSpZVx.82wV8KyV2XJX04EW', 'user'),
(NULL, 35, 'Andie Dela Cruz', 'andie@gmail.com', '$2y$10$nJLZbcdAiqsfv37LKocbrOaav4Ymag7mHytx9EzgLQ1LmYl26lJam', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_code` (`course_code`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`professor_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`timetable_id`),
  ADD KEY `fk_timetable_course` (`course_id`),
  ADD KEY `fk_timetable_professor` (`professor_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`timetable_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_user_department` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `professor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `timetable_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `fk_timetable_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `fk_timetable_professor` FOREIGN KEY (`professor_id`) REFERENCES `professors` (`professor_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
