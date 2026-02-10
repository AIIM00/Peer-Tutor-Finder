-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 10, 2026 at 03:21 PM
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
-- Database: `peer_tutor_finder`
--

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `school` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `courses` text DEFAULT NULL,
  `availability` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `email`, `school`, `major`, `courses`, `availability`) VALUES
(117, 'selman', 'sl@gmail.com', NULL, NULL, NULL, NULL),
(118, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', 'Hi', NULL),
(119, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', 'Hi', NULL),
(120, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', '', NULL),
(121, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', '', NULL),
(122, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', '', NULL),
(123, 'SelmanIB', 'sel@gmail.com', 'Science', 'Mathematics', '[]', NULL),
(124, 'SelmanIB', 'sel@gmail.com', 'Science', 'Mathematics', '[]', NULL),
(125, 'SelmanMhmad', 'sel@gmail.com', 'Engineering', 'Electrical Engineering', '[]', NULL),
(126, 'SelmanMhmad', 'sel@gmail.com', 'Engineering', 'Electrical Engineering', '[]', NULL),
(127, 'Fadi', 'fadi22@gmail.com', 'Science', 'Mathematics', '', NULL),
(128, 'Fadi', 'fadi22@gmail.com', 'Science', 'Mathematics', '', NULL),
(129, 'Fadi', 'fadi22@gmail.com', 'Science', 'Mathematics', '', NULL),
(130, 'Jaafar', 'jaf@gmail.com', 'Business', 'Accounting', '', NULL),
(131, 'Jaafar', 'jaf@gmail.com', 'Business', 'Accounting', '', NULL),
(132, 'Moussa', 'moussa@gmail.com', 'Science', 'Physics', '', NULL),
(133, 'Moussa', 'moussa@gmail.com', 'Science', 'Physics', '', NULL),
(134, 'Moussa Ib', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', '', NULL),
(135, 'Moussa Ib', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', '', NULL),
(136, 'Moussa hassan', 'ali22ibrahim12@gmail.com', 'Science', 'Mathematics', '', NULL),
(137, 'Moussa hassan', 'ali22ibrahim12@gmail.com', 'Science', 'Mathematics', '', NULL),
(138, 'SelmanIB', 'fadi2026@gmail.com', 'Business', 'Accounting', '', NULL),
(139, 'SelmanIB', 'fadi2026@gmail.com', 'Business', 'Accounting', '', NULL),
(140, 'SelmanIB', 'ali22ibrahim12@gmail.com', 'Science', 'Mathematics', '', NULL),
(141, 'SelmanIB', 'ali22ibrahim12@gmail.com', 'Science', 'Mathematics', '', NULL),
(142, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Business', 'Accounting', '', NULL),
(143, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Business', 'Accounting', '', NULL),
(144, 'SelmanIbrahim', 'ali22ibrahim12@gmail.com', 'Science', 'Mathematics', '[\"MATH201\",\"MATH310\"]', NULL),
(145, 'ahmad', 'af@gmail.com', 'Engineering', 'Electrical Engineering', '[\"EENG250\",\"EEN350\"]', NULL),
(146, 'ahmad', 'af@gmail.com', 'Science', 'Mathematics', '[\"MATH201\"]', NULL),
(147, 'ahmad', 'af@gmail.com', 'Science', 'Mathematics', 'hi', NULL),
(148, 'ahmad', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\",\"CENG435\"]', NULL),
(149, 'ahmad', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\",\"CENG435\"]', NULL),
(150, 'ali', 'af@gmail.com', 'Business', 'Management', '[\"MGMT200\",\"MGMT310\"]', NULL),
(151, 'selman', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\",\"CENG435\"]', NULL),
(152, 'ali', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\"]', NULL),
(153, 'ali', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\"]', NULL),
(154, 'Jaafar ', 'jaafarali@gmail.com', 'Engineering', 'Electrical Engineering', '[\"EENG250\",\"EEN350\"]', NULL),
(155, 'celine', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\",\"CE420\"]', NULL),
(156, 'ljkjlk', 'jkljlk@gmail.com', 'Science', 'Physics', '[\"PHYS320\"]', NULL),
(157, 'nour', 'jaafarali@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG435\"]', NULL),
(158, 'nour', 'af@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG435\"]', NULL),
(159, 'ali', 'ali22ibrahim12@gmail.com', 'Engineering', 'Computer Engineering', '[\"CENG420\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_requests`
--

CREATE TABLE `tutor_requests` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `subject_code` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor_requests`
--

INSERT INTO `tutor_requests` (`id`, `student_name`, `subject_code`, `email`, `description`, `created_at`) VALUES
(10, 'ali ibrahim', 'CENG400', 'ali22ibrahim12@gmail.com', 'I am fatigue.', '2026-01-02 21:06:58'),
(11, 'ali ibrahim', 'CENG400', 'ali22ibrahim12@gmail.com', 'I want to finish chapter 10.', '2026-01-02 21:07:17'),
(12, 'ali ibrahim', 'CENG400', 'ali22ibrahim12@gmail.com', 'Hello, I am facing a problem in chapter 4 (pipelining).', '2026-01-03 18:06:01'),
(13, 'ahmad', 'Ceng400', 'ali22ibrahim12@gmail.com', 'SSS', '2026-01-04 18:42:00'),
(14, 'ahmad', 'CengEENG250', 'ali22ibrahim12@gmail.com', 'Hello!!', '2026-01-04 21:21:10'),
(15, 'ahmad', 'Ceng400', 'ali22ibrahim12@gmail.com', 'ljkljkjkl', '2026-01-07 09:37:36'),
(16, 'cherine', 'Ceng400', 'ali22ibrahim12@gmail.com', 'hlkhlk', '2026-01-07 09:56:34'),
(17, 'cherine', 'Ceng400', 'ali22ibrahim12@gmail.com', 'hlkhlk', '2026-01-07 10:06:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `tutor_requests`
--
ALTER TABLE `tutor_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
