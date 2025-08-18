-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2025 at 08:58 AM
-- Server version: 8.0.43-0ubuntu0.24.04.1
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `exam_details`
--

CREATE TABLE `exam_details` (
  `id` bigint UNSIGNED NOT NULL,
  `examtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `examdate` date NOT NULL,
  `examtime` time NOT NULL,
  `marks` double(8,2) NOT NULL,
  `totaltime` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int NOT NULL,
  `starts` int NOT NULL,
  `ends` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_details`
--

INSERT INTO `exam_details` (`id`, `examtitle`, `examcode`, `examdate`, `examtime`, `marks`, `totaltime`, `created_at`, `updated_at`, `teacher_id`, `starts`, `ends`) VALUES
(1, 'First Questionnaire', '3423', '2025-08-14', '09:35:00', 100.00, 5, '2025-08-13 23:32:06', '2025-08-13 23:32:06', 2, 1755142500, 1755142800),
(3, 'Test exam 2', '35423', '2025-08-17', '23:58:00', 100.00, 10, '2025-08-17 02:02:32', '2025-08-17 02:02:32', 2, 1755453480, 1755454080);

-- --------------------------------------------------------

--
-- Table structure for table `home_cards`
--

CREATE TABLE `home_cards` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cards`
--

INSERT INTO `home_cards` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Testing', 'description', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_14_180636_create_home_cards_table', 1),
(4, '2019_03_16_062516_create_teachers_table', 1),
(5, '2019_03_16_075801_create_students_table', 1),
(6, '2019_03_18_144727_create_exam_details_table', 1),
(7, '2019_03_18_182225_create_questions_table', 1),
(8, '2019_03_24_162054_examdetail', 1),
(9, '2019_03_24_163314_examdetaild', 1),
(10, '2019_03_24_163526_examdetaildj', 1),
(11, '2019_03_25_184627_create_results_table', 1),
(12, '2019_03_26_175502_extra', 1),
(13, '2019_03_29_182006_add_unix_column', 1),
(14, '2019_03_31_204138_aaxdcd', 1),
(15, '2019_03_31_204151_aaxdcdsxs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('testingstudent@gmail.com', '$2y$10$MhiFL7fQzOgPHIx019X4Q.T/vemfhf6M9APxxYH4ZY.44Ki5/uBl2', '2025-08-17 01:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_detail_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `a`, `b`, `c`, `d`, `answer`, `created_at`, `updated_at`, `exam_detail_id`) VALUES
(1, 'Which of the following is an example of an operating system?', 'Microsoft Word', 'Windows 10', 'Google Chrome', 'Adobe Photoshop', 'B', '2025-08-13 23:33:18', '2025-08-13 23:33:18', 1),
(2, 'In computer networks, what does \"IP\" stand for in \"IP Address\"?', 'Internet Process', 'Internal Protocol', 'Internet Protocol', 'Interface Point', 'C', '2025-08-13 23:34:00', '2025-08-13 23:34:00', 1),
(3, 'Which data structure works on the principle of \"First In, First Out\" (FIFO)?', 'Stack', 'Queue', 'Tree', 'Graph', 'B', '2025-08-13 23:34:35', '2025-08-13 23:34:35', 1),
(4, 'What does HTML stand for?', 'Hyperlinks and Text Markup Language', 'Hyper Text Markup Language', 'High Transfer Markup Language', 'Home Tool Markup Language', 'B', '2025-08-13 23:36:02', '2025-08-13 23:36:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` int NOT NULL,
  `exam_detail_id` int NOT NULL,
  `score` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `student_id`, `exam_detail_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2025-08-14 00:28:57', '2025-08-14 00:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration` int DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `institution`, `department`, `registration`, `year`, `semester`, `contact`, `gender`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Testing Student', 'testingstudent@gmail.com', '$2y$10$V/9NaqBDoq4wkhOJ0fjqxO/0ThaE369zDJDAbFzzf/oJEmJQw82l.', 'UOS, SGD', 'IT', 3524, '1st', '2nd', '03076069760', 'Male', '4.jpeg', '2025-08-13 23:25:10', '2025-08-13 23:25:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacherID` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `email`, `password`, `institution`, `department`, `designation`, `teacherID`, `contact`, `gender`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Ghulam Ali', 'ghulamalisanpal@gmail.com', '$2y$10$B2af3grXQC2zGjl4L4xGWOrUnfNazELQerlcWI8BVE10GNgzBGuC.', 'ABC', 'IT', 'Associate Proffersor', 'TecherID1', '+923076069760', 'Male', '/tmp/phpDNn5wF', '2025-08-12 13:53:05', '2025-08-12 13:53:05', NULL),
(2, 'Testing Teacher', 'testingteacher@gmail.com', '$2y$10$g0zDkADRYid6Avun5W0L7e0IDYhUMrF0m2d0Kd0.zdoC.IWC.zNSe', 'UOS,SGD', 'IT', 'Associate Proffersor', '54322', '+923186069760', 'Male', '', '2025-08-13 23:30:42', '2025-08-13 23:30:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_details`
--
ALTER TABLE `exam_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cards`
--
ALTER TABLE `home_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`),
  ADD UNIQUE KEY `students_registration_unique` (`registration`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_details`
--
ALTER TABLE `exam_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_cards`
--
ALTER TABLE `home_cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
