-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2026 at 08:41 AM
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
-- Database: `glodex_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Admin Panel user''s id to whom this application will pop up/ display',
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `sent_by` varchar(255) DEFAULT NULL,
  `application_code` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL COMMENT 'the id of the person who is creating this application/ auth id',
  `intake_year` text DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `course_id`, `student_id`, `sent_by`, `application_code`, `status`, `created_by`, `intake_year`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 2, 'Edu Consulat Aborad', 415771, 12, 8, '2026-02', NULL, '2026-01-17 00:59:10', '2026-01-17 04:23:04'),
(2, 2, 1, 4, 'Glodex', 469109, 9, 2, '2005-05', NULL, '2026-01-17 01:00:45', '2026-01-17 01:00:45'),
(3, 8, 1, 5, 'Edu Consulat Aborad', 896426, 10, 8, '2014-01', NULL, '2026-01-17 04:19:47', '2026-01-17 04:22:05');

-- --------------------------------------------------------

--
-- Table structure for table `application_statuses`
--

CREATE TABLE `application_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `status_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_statuses`
--

INSERT INTO `application_statuses` (`id`, `status_name`, `status_order`, `created_at`, `updated_at`) VALUES
(1, 'In Progress', 1, NULL, NULL),
(2, 'On Hold', 2, NULL, NULL),
(3, 'Applied', 3, NULL, NULL),
(4, 'Unconditional Offer Letter', 4, NULL, NULL),
(5, 'Conditional Offer Letter', 5, NULL, NULL),
(6, 'Payment', 6, NULL, NULL),
(7, 'CAS/I20/LOA/COE Confirmation', 7, NULL, NULL),
(8, 'Visa Documentation', 8, NULL, NULL),
(9, 'Visa Applied', 9, NULL, NULL),
(10, 'Visa Granted', 10, NULL, NULL),
(11, 'Enrolled', 11, NULL, NULL),
(12, 'Visa Rejected', 12, NULL, NULL),
(13, 'Canceled', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:40:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"Create User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"View User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"Delete User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"Create Country\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"View Country\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"Edit Country\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"Delete Country\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:17:\"Create University\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"View University\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"Edit University\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"Delete University\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:13:\"Create Course\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:11:\"View Course\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:11:\"Edit Course\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:1;i:1;i:2;i:2;i:3;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:13:\"Delete Course\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:18:\"Create Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:16:\"View Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:16:\"Edit Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:14:\"Create Partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:12:\"View Partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:14:\"Delete Partner\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:14:\"Create Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:12:\"View Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:12:\"Edit Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:12:\"Create Roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:10:\"View Roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:17:\"Create Permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:15:\"View Permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:20:\"View Partner Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:20:\"Edit Partner Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:24:\"View Partner Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:24:\"Edit Partner Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:20:\"View All Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:20:\"Edit All Application\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:34;a:3:{s:1:\"a\";i:35;s:1:\"b\";s:25:\"Create Assign Application\";s:1:\"c\";s:3:\"web\";}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:20:\"View Pending Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:14:\"Delete Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:3:{s:1:\"a\";i:38;s:1:\"b\";s:2:\"on\";s:1:\"c\";s:3:\"web\";}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:22:\"Delete Partner Student\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:10:\"Edit Roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:3:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:10:\"SuperAdmin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:3:\"BDM\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:13:\"CourseCreator\";s:1:\"c\";s:3:\"web\";}}}', 1769662620);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `country_capital` varchar(50) NOT NULL,
  `country_population` varchar(50) NOT NULL,
  `country_gdp` varchar(50) NOT NULL,
  `continent_id` int(11) NOT NULL,
  `flag` longtext DEFAULT NULL,
  `cover_photo` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_capital`, `country_population`, `country_gdp`, `continent_id`, `flag`, `cover_photo`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Burke Bradley', 'Et maiores quisquam', 'Eaque voluptatem la', 'Explicabo Voluptate', 5, 'storage/country-flags/1768454338_FNbWytDM.jpg', 'storage/country-cover-photo/1768454338_LyKT2AVW.jpg', '<p>Molestiae quasi numq.</p>', 1, NULL, '2026-01-14 23:18:58', '2026-01-14 23:18:58');

-- --------------------------------------------------------

--
-- Table structure for table `country_continents`
--

CREATE TABLE `country_continents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `continent_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_continents`
--

INSERT INTO `country_continents` (`id`, `continent_name`, `created_at`, `updated_at`) VALUES
(1, 'Asia', NULL, NULL),
(2, 'Europe', NULL, NULL),
(3, 'Oceania', NULL, NULL),
(4, 'North America', NULL, NULL),
(5, 'South America', NULL, NULL),
(6, 'Africa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `university_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `course_program_id` bigint(20) UNSIGNED NOT NULL,
  `intake_month_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`intake_month_id`)),
  `course_name` varchar(255) NOT NULL,
  `application_fee` varchar(255) NOT NULL,
  `tuition_fee_per_year` varchar(255) NOT NULL,
  `program_length` varchar(255) NOT NULL,
  `course_photo` longtext NOT NULL,
  `course_details` longtext NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `university_id`, `country_id`, `course_program_id`, `intake_month_id`, `course_name`, `application_fee`, `tuition_fee_per_year`, `program_length`, `course_photo`, `course_details`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '[\"1\"]', 'Wesley Le', 'Sit voluptatum esse', '2000', '3', 'storage/course-photo/1768633118_lqLyGQRE.png', '<p>Cumque id, eius aliq.</p>', NULL, '2026-01-17 00:58:38', '2026-01-17 00:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `course_programs`
--

CREATE TABLE `course_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_program` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_programs`
--

INSERT INTO `course_programs` (`id`, `course_program`, `created_at`, `updated_at`) VALUES
(1, 'PhD', NULL, NULL),
(2, 'MRes', NULL, NULL),
(3, 'Masters', NULL, NULL),
(4, 'Pre Masters', NULL, NULL),
(5, 'Bachelor', NULL, NULL),
(6, 'Higher Diploma', NULL, NULL),
(7, 'Diploma', NULL, NULL),
(8, 'Foundation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intake_months`
--

CREATE TABLE `intake_months` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `intake_months`
--

INSERT INTO `intake_months` (`id`, `month_name`, `created_at`, `updated_at`) VALUES
(1, 'January', NULL, NULL),
(2, 'February', NULL, NULL),
(3, 'March', NULL, NULL),
(4, 'April', NULL, NULL),
(5, 'May', NULL, NULL),
(6, 'June', NULL, NULL),
(7, 'July', NULL, NULL),
(8, 'Auguest', NULL, NULL),
(9, 'September', NULL, NULL),
(10, 'October', NULL, NULL),
(11, 'November', NULL, NULL),
(12, 'December', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_30_044726_create_countries_table', 1),
(5, '2025_09_30_051249_create_country_continents_table', 1),
(6, '2025_10_01_044903_create_universities_table', 1),
(7, '2025_10_07_044050_create_intake_months_table', 1),
(8, '2025_10_07_045100_create_courses_table', 1),
(9, '2025_10_07_045546_create_course_programs_table', 1),
(10, '2025_10_08_050653_create_student_infos_table', 1),
(11, '2025_10_08_050856_create_student_files_table', 1),
(12, '2025_11_09_063737_create_application_statuses_table', 1),
(13, '2025_11_09_070203_create_applications_table', 1),
(14, '2025_11_15_063043_create_user_infos_table', 1),
(15, '2026_01_08_045320_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Create User', 'web', '2026-01-14 03:00:58', '2026-01-14 03:00:58'),
(2, 'View User', 'web', '2026-01-14 03:01:05', '2026-01-14 03:01:05'),
(3, 'Delete User', 'web', '2026-01-14 03:01:15', '2026-01-14 03:01:15'),
(4, 'Create Country', 'web', '2026-01-14 03:01:25', '2026-01-14 03:01:25'),
(5, 'View Country', 'web', '2026-01-14 03:01:32', '2026-01-14 03:01:32'),
(6, 'Edit Country', 'web', '2026-01-14 03:01:40', '2026-01-14 03:01:40'),
(7, 'Delete Country', 'web', '2026-01-14 03:01:49', '2026-01-14 03:01:49'),
(8, 'Create University', 'web', '2026-01-14 03:01:56', '2026-01-14 03:01:56'),
(9, 'View University', 'web', '2026-01-14 03:02:02', '2026-01-14 03:02:02'),
(10, 'Edit University', 'web', '2026-01-14 03:15:01', '2026-01-14 03:15:01'),
(11, 'Delete University', 'web', '2026-01-14 03:15:09', '2026-01-14 03:15:09'),
(12, 'Create Course', 'web', '2026-01-14 03:15:16', '2026-01-14 03:15:16'),
(13, 'View Course', 'web', '2026-01-14 03:15:23', '2026-01-14 03:15:23'),
(14, 'Edit Course', 'web', '2026-01-14 03:15:30', '2026-01-14 03:15:30'),
(15, 'Delete Course', 'web', '2026-01-14 03:15:37', '2026-01-14 03:15:37'),
(16, 'Create Application', 'web', '2026-01-14 03:16:39', '2026-01-14 03:16:39'),
(17, 'View Application', 'web', '2026-01-14 03:16:49', '2026-01-14 03:16:49'),
(18, 'Edit Application', 'web', '2026-01-14 03:17:00', '2026-01-14 03:17:00'),
(19, 'Create Partner', 'web', '2026-01-14 03:27:02', '2026-01-14 03:27:02'),
(20, 'View Partner', 'web', '2026-01-14 03:27:09', '2026-01-14 03:27:09'),
(21, 'Delete Partner', 'web', '2026-01-14 03:27:24', '2026-01-14 03:27:24'),
(22, 'Create Student', 'web', '2026-01-14 03:27:31', '2026-01-14 03:27:31'),
(23, 'View Student', 'web', '2026-01-14 03:27:38', '2026-01-14 03:27:38'),
(24, 'Edit Student', 'web', '2026-01-14 03:27:47', '2026-01-14 03:27:47'),
(25, 'Create Roles', 'web', '2026-01-14 03:28:11', '2026-01-14 03:28:11'),
(26, 'View Roles', 'web', '2026-01-14 03:28:20', '2026-01-14 03:28:20'),
(27, 'Create Permission', 'web', '2026-01-14 03:28:31', '2026-01-14 03:28:31'),
(28, 'View Permission', 'web', '2026-01-14 03:28:40', '2026-01-14 03:28:40'),
(29, 'View Partner Student', 'web', '2026-01-14 03:29:08', '2026-01-14 03:29:08'),
(30, 'Edit Partner Student', 'web', '2026-01-14 03:29:15', '2026-01-14 03:29:15'),
(31, 'View Partner Application', 'web', '2026-01-14 03:29:23', '2026-01-14 03:29:23'),
(32, 'Edit Partner Application', 'web', '2026-01-14 03:29:30', '2026-01-14 03:29:30'),
(33, 'View All Application', 'web', '2026-01-14 03:31:35', '2026-01-14 03:31:35'),
(34, 'Edit All Application', 'web', '2026-01-14 03:31:55', '2026-01-14 03:31:55'),
(35, 'Create Assign Application', 'web', '2026-01-14 03:36:48', '2026-01-14 03:36:48'),
(36, 'View Pending Student', 'web', '2026-01-14 23:17:01', '2026-01-14 23:17:01'),
(37, 'Delete Student', 'web', '2026-01-14 23:30:57', '2026-01-14 23:30:57'),
(38, 'on', 'web', '2026-01-15 00:52:27', '2026-01-15 00:52:27'),
(39, 'Delete Partner Student', 'web', '2026-01-15 00:52:27', '2026-01-15 00:52:27'),
(40, 'Edit Roles', 'web', '2026-01-15 03:52:17', '2026-01-15 03:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', '2026-01-15 00:52:27', '2026-01-15 00:52:27'),
(2, 'BDM', 'web', '2026-01-15 01:36:21', '2026-01-15 01:36:21'),
(3, 'CourseCreator', 'web', '2026-01-15 01:43:15', '2026-01-15 01:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(36, 1),
(36, 2),
(37, 1),
(39, 1),
(40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CdASayfsCHsIccqmMXfVjh4zgSQrPZ3dKpgCSr34', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibTJxWjYxU2ozSEhQWlM1UXNoSjQyYnI0YllocXIwZ09GSm9MWnI3USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hZG1pbi1kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1769576779);

-- --------------------------------------------------------

--
-- Table structure for table `student_files`
--

CREATE TABLE `student_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `application_id` bigint(20) UNSIGNED DEFAULT NULL,
  `filename` longtext DEFAULT NULL,
  `filepath` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_files`
--

INSERT INTO `student_files` (`id`, `agent_id`, `course_id`, `student_id`, `application_id`, `filename`, `filepath`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, NULL, 'Jennifer Simon', 'Jennifer Simon/1768454055Marshall HeadReservation- Akash.pdf', '2026-01-14 23:14:15', '2026-01-14 23:14:15'),
(2, NULL, NULL, 2, NULL, 'Kaitlin Mcfarland', 'Kaitlin Mcfarland/1768632433Cleo Shannonprogrammes  September 2026.pdf', '2026-01-17 00:47:13', '2026-01-17 00:47:13'),
(3, NULL, NULL, 3, NULL, 'Cheyenne Cunningham', 'Cheyenne Cunningham/1768632924Brent GarnerMridul Motivation.pdf', '2026-01-17 00:55:24', '2026-01-17 00:55:24'),
(4, NULL, NULL, 4, NULL, 'Lydia Johnson', 'Lydia Johnson/1768633245_Kristen Rosales_Requirement List.pdf', '2026-01-17 01:00:45', '2026-01-17 01:00:45'),
(5, NULL, NULL, 5, NULL, 'Anjolie Yang', 'Anjolie Yang/1768645187_Charde Campbell_programmes  September 2026.pdf', '2026-01-17 04:19:47', '2026-01-17 04:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_infos`
--

CREATE TABLE `student_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'student user id',
  `student_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `passport_no` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `fathers_name` varchar(255) NOT NULL,
  `mothers_name` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `moi` int(11) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `english_proficiency` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`english_proficiency`)),
  `academic_qualifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`academic_qualifications`)),
  `sent_by` varchar(255) DEFAULT NULL COMMENT 'which agent sent this student',
  `created_by` int(11) NOT NULL COMMENT 'who created this student',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_infos`
--

INSERT INTO `student_infos` (`id`, `user_id`, `student_code`, `name`, `phone`, `email`, `dob`, `passport_no`, `permanent_address`, `fathers_name`, `mothers_name`, `gender`, `moi`, `notes`, `english_proficiency`, `academic_qualifications`, `sent_by`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'GLD2611331', 'Marshall Head', '+1 (558) 319-3941', 'lavymuha@mailinator.com', '1970-10-14', '448', 'Explicabo Qui ut es', 'Basil Roy', 'Nyssa Ayers', 1, 1, 'Quod sunt amet reru', '[{\"type\":\"OIETC\",\"listening\":\"Sit consequuntur dol\",\"reading\":\"Aliquip error archit\",\"writing\":\"Minim possimus numq\",\"speaking\":\"Deserunt perferendis\",\"overall\":\"At maxime amet poss\"}]', '[{\"group_name\":\"Brittany Hinton\",\"institute_name\":\"Troy Atkinson\",\"gpa\":\"Id consequatur minim\",\"passing_year\":\"2015\"}]', 'Glodex', 2, NULL, '2026-01-14 23:14:15', '2026-01-14 23:14:15'),
(2, 10, 'GLD4226781', 'Cleo Shannon', '+1 (998) 766-1539', 'xyzat@mailinator.com', '1998-03-08', '202', 'Modi et mollit et un', 'Emmanuel Sloan', 'Cheryl Malone', 2, 1, 'Culpa explicabo Por', '[{\"type\":\"TOEFL\",\"listening\":\"Lorem aliqua Magna\",\"reading\":\"Aliquid et alias qui\",\"writing\":\"Saepe ratione eos ve\",\"speaking\":\"Fugiat voluptatem i\",\"overall\":\"Voluptatem Deleniti\"}]', '[{\"group_name\":\"Daria Decker\",\"institute_name\":\"Graham Butler\",\"gpa\":\"Maxime dicta expedit\",\"passing_year\":\"2004\"}]', 'Edu Consulat Aborad', 8, NULL, '2026-01-17 00:47:13', '2026-01-17 00:47:13'),
(3, 11, 'GLD1292232', 'Brent Garner', '+1 (102) 325-6786', 'xapysirif@mailinator.com', '2014-07-25', '444', 'Quos adipisicing odi', 'Mufutau Ryan', 'Sylvia Prince', 1, 2, 'At iste nemo autem s', '[{\"type\":\"PTE\",\"listening\":\"Sunt accusamus labor\",\"reading\":\"Magna sunt non proid\",\"writing\":\"Adipisci dolores fug\",\"speaking\":\"Nobis anim omnis est\",\"overall\":\"Reiciendis exercitat\"}]', '[{\"group_name\":\"Luke Simon\",\"institute_name\":\"Justin Whitfield\",\"gpa\":\"Aute quasi veniam c\",\"passing_year\":\"2009\"}]', 'N/A', 3, NULL, '2026-01-17 00:55:24', '2026-01-17 00:55:24'),
(4, 12, 'GLD2908514', 'Kristen Rosales', '+1 (903) 333-7935', 'bamog@mailinator.com', '2005-07-01', '184', 'Ut molestias id eos', 'Jayme Fox', 'Sasha Martin', 1, 1, 'Culpa rem eligendi s', '[{\"type\":\"PTE\",\"listening\":\"Laudantium rem dolo\",\"reading\":\"Vero reiciendis quis\",\"writing\":\"Unde consequatur se\",\"speaking\":\"Cumque harum dolor v\",\"overall\":\"Soluta a labore qui\"}]', '[{\"group_name\":\"Halla Wallace\",\"institute_name\":\"Adena Fletcher\",\"gpa\":\"Labore sed suscipit\",\"passing_year\":\"1999\"}]', 'Glodex', 2, NULL, '2026-01-17 01:00:45', '2026-01-17 01:00:45'),
(5, 13, 'GLD6362410', 'Charde Campbell', '+1 (904) 116-3221', 'quvam@mailinator.com', '2005-07-24', '862', 'Dolores consectetur', 'Hayfa Day', 'Eaton Navarro', 2, 2, 'Obcaecati nulla reru', '[{\"type\":\"IELTS\",\"listening\":\"Enim ipsum qui et s\",\"reading\":\"Ullam dolor officia\",\"writing\":\"Sed dolor qui dolor\",\"speaking\":\"Deserunt dolor fugia\",\"overall\":\"Voluptate laborum C\"}]', '[{\"group_name\":\"Mohammad Nixon\",\"institute_name\":\"Morgan Peters\",\"gpa\":\"Duis deserunt volupt\",\"passing_year\":\"1971\"}]', 'Edu Consulat Aborad', 8, NULL, '2026-01-17 04:19:47', '2026-01-17 04:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `university_name` varchar(255) NOT NULL,
  `university_city` varchar(150) NOT NULL,
  `admission_email` varchar(255) NOT NULL,
  `admission_phone` varchar(20) NOT NULL,
  `website_link` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `commission_for_us` varchar(255) NOT NULL,
  `commission_for_agent` varchar(255) NOT NULL,
  `logo` longtext NOT NULL,
  `cover_image` longtext NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Active, 0 = Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `country_id`, `university_name`, `university_city`, `admission_email`, `admission_phone`, `website_link`, `address`, `commission_for_us`, `commission_for_agent`, `logo`, `cover_image`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jeanette Deleon', 'Fugiat cupidatat ve', 'fijyhuho@mailinator.com', '+1 (364) 947-4833', 'https://www.tufosan.mobi', 'Ducimus in laborum', 'Fugiat sed nesciunt', 'Laboris nisi tempori', 'storage/university-logo/1768454365_md303J8H.png', 'storage/university-cover-image/1768454365_edFqEpii.jpg', '<p>Quo officia quo sed .</p>', 1, NULL, '2026-01-14 23:19:25', '2026-01-14 23:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) DEFAULT NULL COMMENT '1=Admin, 2=Agent, 3=Student',
  `profile_photo` longtext DEFAULT NULL,
  `company_logo` longtext DEFAULT NULL,
  `favicon` longtext DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `organization_name` varchar(255) DEFAULT NULL,
  `user_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=Inactive, 2=Active',
  `company_description` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL COMMENT 'User''s id who created this user type',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `user_type`, `profile_photo`, `company_logo`, `favicon`, `dob`, `gender`, `marital_status`, `address`, `organization_name`, `user_status`, `company_description`, `created_by`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', NULL, '2026-01-14 02:59:38', '$2y$12$FxyP8NleO/Kl6TUDa0EiAOjThvuRhyUf2H1uGgTKu9NzWH0OqCGZK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'JSKpyWHpYf', '2026-01-14 02:59:39', '2026-01-14 02:59:39'),
(2, 'Demo Admin', 'demoadmin@gmail.com', NULL, NULL, '$2y$12$QWizL5n4yE6u4fj6eGkSQeV8sxvVTouVFE0f7vPFxYMku9JN.rtx.', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2026-01-14 03:00:38', '2026-01-14 03:00:38'),
(3, 'Demo Agent', 'demoagent@gmail.com', NULL, NULL, '$2y$12$OjrLGC4l/yyk6D8V4ncOcua/y2ZmGra/O8FBNL5LSWyQMlMd/Mp5C', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 2, NULL, NULL, '2026-01-14 03:00:39', '2026-01-17 00:54:58'),
(4, 'Demo Student', 'demostudent@gmail.com', NULL, NULL, '$2y$12$Li8yi9S7UYR8H6Zr3nZii.WDP50UO.RnaweIefNYsy.uu/lZPtNAK', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2026-01-14 03:00:39', '2026-01-14 03:00:39'),
(5, 'Marshall Head', 'lavymuha@mailinator.com', '+1 (558) 319-3941', NULL, '$2y$12$V5lJqfDBkKqUhFuHwlZlSO44rgAvF9c61Hs9Qcr7j8Np3Nxnkwj7S', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2026-01-14 23:14:15', '2026-01-14 23:14:15'),
(6, 'Anzam Hossen', 'akash01@gmail.com', '01794971951', NULL, '$2y$12$ANLcmKMzYZVf8zCkOM2w9OJM55BRiyR9KvRL6in5jhrhy5d0dazVK', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Glodex Company', 1, NULL, NULL, NULL, NULL, '2026-01-16 23:51:59', '2026-01-16 23:51:59'),
(7, 'Demo Agent User', 'demoagent01@gmail.com', '01767908632', NULL, '$2y$12$jtFOoehXlmUPKoPbQApT8OLr.sMz9GZi1T8GHxwGEVUklLBHPJZAW', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Demo Agent Company', 2, NULL, NULL, NULL, NULL, '2026-01-17 00:20:52', '2026-01-17 00:20:58'),
(8, 'Edu Consulat', 'educonsult@gmail.com', '2353763478378', NULL, '$2y$12$ChxPetXYNd.uX17XXePWk.Eh6rNZSWHMNy4MB3e8iNRn2AISiIgHK', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Edu Consulat Aborad', 2, NULL, 6, NULL, NULL, '2026-01-17 00:28:34', '2026-01-17 00:28:39'),
(9, 'Alea Roman', 'pimehal@mailinator.com', '+1 (431) 786-3012', NULL, '$2y$12$/7qnLo0ACjaD7s.BmArDLOhrJLZOcngyZ3tBvqG1SRelEIxz78lmG', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Alea Gomes Consult', 1, NULL, 9, NULL, NULL, '2026-01-17 00:29:28', '2026-01-17 00:29:28'),
(10, 'Cleo Shannon', 'xyzat@mailinator.com', '+1 (998) 766-1539', NULL, '$2y$12$jhD3BjI99PANKXNlF28CN.OxmuA11wxn.6VzKqPsWggVgdX2AgH86', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 8, NULL, NULL, '2026-01-17 00:47:13', '2026-01-17 00:47:13'),
(11, 'Brent Garner', 'xapysirif@mailinator.com', '+1 (102) 325-6786', NULL, '$2y$12$ttzYKfmBaqLgeAFbPR0fRetbp5F8ipVgY.gL.7D7ayzQcMvKroPb6', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 3, NULL, NULL, '2026-01-17 00:55:24', '2026-01-17 00:55:24'),
(12, 'Kristen Rosales', 'bamog@mailinator.com', '+1 (903) 333-7935', NULL, '$2y$12$IR56NOmlBtlgHLsH3lfnFe3PChhbyO893xuGojVx0VW6ztDcPxDoa', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, NULL, '2026-01-17 01:00:45', '2026-01-17 01:00:45'),
(13, 'Charde Campbell', 'quvam@mailinator.com', '+1 (904) 116-3221', NULL, '$2y$12$OygVp5scW2skDI5urhdWiOfjcPdPx8GZSUiukDwy3P/2o9JpfkvHC', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 8, NULL, NULL, '2026-01-17 04:19:47', '2026-01-17 04:19:47'),
(14, 'Rajib', 'rajib@gmail.com', '23532673478', NULL, '$2y$12$mCPcpcwFwqYUAJv5NF/pTuqJuhEd.5LU8qISKa2aO5woaLerfD6xe', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Glodex Company', 1, NULL, 2, NULL, NULL, '2026-01-17 04:53:11', '2026-01-17 04:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `poc` varchar(255) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `whatsapp_no` varchar(255) NOT NULL,
  `trade_license_number` varchar(255) NOT NULL,
  `trade_license_copy` longtext NOT NULL,
  `passport_nid_copy` longtext NOT NULL,
  `bank_account_name` longtext NOT NULL,
  `bank_name` longtext NOT NULL,
  `bank_account_number` longtext NOT NULL,
  `bank_address` longtext NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `benificiary_number` varchar(255) DEFAULT NULL,
  `benificiary_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_statuses`
--
ALTER TABLE `application_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_continents`
--
ALTER TABLE `country_continents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_programs`
--
ALTER TABLE `course_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `intake_months`
--
ALTER TABLE `intake_months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_files`
--
ALTER TABLE `student_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_infos`
--
ALTER TABLE `student_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_infos_phone_unique` (`phone`),
  ADD UNIQUE KEY `student_infos_email_unique` (`email`),
  ADD UNIQUE KEY `student_infos_passport_no_unique` (`passport_no`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_statuses`
--
ALTER TABLE `application_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_continents`
--
ALTER TABLE `country_continents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_programs`
--
ALTER TABLE `course_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `intake_months`
--
ALTER TABLE `intake_months`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_files`
--
ALTER TABLE `student_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_infos`
--
ALTER TABLE `student_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
