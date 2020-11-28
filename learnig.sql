-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 10:40 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnig`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Programing', '2020-11-23 14:24:16', '2020-11-23 14:24:16'),
(2, 'Medical', '2020-11-23 14:24:16', '2020-11-23 14:24:16'),
(3, 'English', '2020-11-23 14:24:16', '2020-11-23 14:24:16'),
(4, 'Management', '2020-11-23 14:24:16', '2020-11-23 14:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `trainer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `cat_id`, `trainer_id`, `name`, `small_desc`, `desc`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'course num 11', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4386, '1.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(2, 1, 4, 'course num 21', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 3881, '2.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(3, 1, 2, 'course num 31', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4718, '3.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(4, 1, 4, 'course num 41', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 1442, '4.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(5, 1, 3, 'course num 51', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 1478, '5.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(6, 1, 3, 'course num 61', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4122, '6.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(7, 2, 5, 'course num 12', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 3544, '7.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(8, 2, 5, 'course num 22', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 3793, '8.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(9, 2, 3, 'course num 32', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 1790, '9.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(10, 2, 1, 'course num 42', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 2331, '10.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(11, 2, 2, 'course num 52', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 1090, '11.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(12, 2, 1, 'course num 62', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 3613, '12.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(13, 3, 4, 'course num 13', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4321, '13.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(14, 3, 2, 'course num 23', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 1510, '14.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(15, 3, 1, 'course num 33', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4355, '15.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(16, 3, 2, 'course num 43', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 3901, '16.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(17, 3, 4, 'course num 53', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4069, '17.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(18, 3, 3, 'course num 63', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4658, '18.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(19, 4, 5, 'course num 14', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4339, '19.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(20, 4, 5, 'course num 24', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 3658, '20.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(21, 4, 2, 'course num 34', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4037, '21.png', '2020-11-23 14:43:33', '2020-11-23 14:43:33'),
(22, 4, 4, 'course num 44', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 2774, '22.png', '2020-11-23 14:43:34', '2020-11-23 14:43:34'),
(23, 4, 4, 'course num 54', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 4041, '23.png', '2020-11-23 14:43:34', '2020-11-23 14:43:34'),
(24, 4, 5, 'course num 64', 'this small description of courses.', 'this big data or description of courses this big data or description of courses this big data or description of courses .', 1883, '24.png', '2020-11-23 14:43:34', '2020-11-23 14:43:34'),
(25, 2, 3, 'php programing', 'no data', 'sdfffffffffffffffffffffffffffffv    fffffffffffffffffffffffffffffv            cccccccccccccccccccccccccccccccccccccccccccc', 3000, '1.png', NULL, NULL),
(26, 2, 3, 'php programing', 'no data', 'sdfffffffffffffffffffffffffffffv    fffffffffffffffffffffffffffffv            cccccccccccccccccccccccccccccccccccccccccccc', 3000, '1.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `status` enum('appovee','rejected','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 'pending', NULL, NULL),
(2, 18, 2, 'pending', NULL, NULL),
(3, 22, 2, 'pending', NULL, NULL),
(4, 14, 1, 'pending', NULL, NULL),
(5, 17, 6, 'pending', NULL, NULL),
(6, 7, 3, 'pending', NULL, NULL),
(7, 6, 5, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `spec`, `created_at`, `updated_at`) VALUES
(1, 'Fahd Madi', 'info@course.com', 'Chemical', '2020-11-23 14:27:53', '2020-11-23 14:27:53'),
(2, 'Fahd Talal', 'info@course.com', 'teacher', '2020-11-23 14:27:53', '2020-11-23 14:27:53'),
(3, 'Fahd Talal', 'info@course.com', 'teacher', '2020-11-23 14:27:53', '2020-11-23 14:27:53'),
(4, 'jamel Talal', 'info@course.com', 'student', '2020-11-23 14:27:53', '2020-11-23 14:27:53'),
(5, 'emad Talal', 'info@course.com', 'lawer', '2020-11-23 14:27:53', '2020-11-23 14:27:53'),
(6, 'Fahd sameh', 'info@course.com', 'policeman', '2020-11-23 14:27:53', '2020-11-23 14:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '+966-502-000-221',
  `spec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `name`, `phone`, `spec`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Fahd Madi', '+966-502-000-221', 'Chemical', '1.png', '2020-11-23 14:24:27', '2020-11-23 14:24:27'),
(2, 'Ahmad Salem', '+966-502-000-221', 'PE', '2.png', '2020-11-23 14:24:27', '2020-11-23 14:24:27'),
(3, 'Ahmad Malek', '+966-502-000-221', 'Doctor', '3.png', '2020-11-23 14:24:27', '2020-11-23 14:24:27'),
(4, 'Rashed Jamal', '+966-502-000-221', 'Chemist', '1.png', '2020-11-23 14:24:27', '2020-11-23 14:24:27'),
(5, 'Ahmad Malek', '+966-502-000-221', 'Web Developer', '2.png', '2020-11-23 14:24:27', '2020-11-23 14:24:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_cat_id_foreign` (`cat_id`),
  ADD KEY `courses_trainer_id_foreign` (`trainer_id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`),
  ADD CONSTRAINT `courses_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`);

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
