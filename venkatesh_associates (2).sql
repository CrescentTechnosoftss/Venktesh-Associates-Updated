-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 30, 2021 at 06:22 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venkatesh_associates`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `created_at`, `updated_at`) VALUES
(6, 'BANK OF INDIA', '2021-03-16 12:06:22', '2021-03-16 12:06:22'),
(11, 'CRESCENT TECHNOSOFT', '2021-03-18 12:18:02', '2021-03-18 12:18:02'),
(13, 'DEMO', '2021-03-26 09:29:33', '2021-03-26 09:29:33'),
(15, 'INDIAN BANK', '2021-03-26 09:30:39', '2021-03-26 09:30:39'),
(16, 'STATE BANK OF INDIA', '2021-03-26 09:30:49', '2021-03-26 09:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_name`, `branch_name`, `contact_no`, `email_id`, `address`, `created_at`, `updated_at`) VALUES
(2, 'INDIAN BANK', 'ANNA NAGAR', '1234567890', 'azardeveloper@crescenttechnosofts.com', 'ANNA NAGAR WEST EXTENSION,\r\nCHENNAI - 14', '2021-03-18 09:31:14', '2021-03-26 09:34:24'),
(5, 'Indian Bank', 'Asiad Colony', '24534', '', '', '2021-03-18 10:20:03', '2021-03-18 10:20:03'),
(6, 'Crescent Technosoft', 'Anna Nagar', '9944992460', 'azardeveloper@crecsenttechnosfts.com', 'E Gate Rd, D-Sector, Anna Nagar West Extension,\r\nChennai, Tamil Nadu 600101', '2021-03-18 12:18:55', '2021-03-18 12:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `created_at`, `updated_at`) VALUES
(6, 'ANNA NAGAR', '2021-03-26 09:31:00', '2021-03-26 09:31:00'),
(7, 'ASIAD COLONY', '2021-03-26 09:31:06', '2021-03-26 09:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `customer_files`
--

CREATE TABLE `customer_files` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` date DEFAULT NULL,
  `bank_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engineer_id` int NOT NULL,
  `apartment_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_value` decimal(10,2) UNSIGNED NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_amount` decimal(8,2) NOT NULL,
  `cash_paid` decimal(8,2) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `delivery_boy_id` int NOT NULL,
  `report_delivered_date` date NOT NULL,
  `delivered_to` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_files`
--

INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `contact_no`, `address`, `remarks`, `referred_by`, `engineer_id`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '55f1cf83-099e-4491-a2d1-e19087906d2f', '2021-03-29', 'INDIAN BANK', 'ANNA NAGAR', 'DEMO CUSTOMER 1', '6546456', '', '', '', 5, '', '134643.00', 'VALUATION COMPLETED', '2500.00', '2500.00', 1, 4, '2021-03-30', '', '2021-03-30 07:10:53', '2021-03-30 07:19:41', 1, 1),
(2, 'db77d355-1278-4475-a831-03a0d26d9707', '2021-03-30', 'BANK OF INDIA', 'ANNA NAGAR', 'DEMO CUSTOMER 2', '645645', '', '', '', 9, '', '1256300.00', 'VALUATION COMPLETED', '5000.00', '0.00', 1, 0, '2021-03-30', '', '2021-03-30 07:11:34', '2021-03-30 07:18:26', 1, 1),
(3, '21f40cf5-db16-4d8c-80d8-3b6a1503053d', '2021-03-30', 'CRESCENT TECHNOSOFT', 'ANNA NAGAR', 'DEMO CUSTOMER 3', '654456456', '', '', '', 8, '', '345200.00', 'VALUATION COMPLETED', '3500.00', '0.00', 0, 0, '2021-03-30', '', '2021-03-30 07:14:36', '2021-03-30 07:14:36', 1, 1),
(4, '97127a62-596a-4ec9-b469-c4d1b0d40a0d', '2021-03-30', 'INDIAN BANK', 'ANNA NAGAR', 'DEMO CUSTOMER 4', '67645456', '', '', '', 9, '', '124700.00', 'VALUATION COMPLETED', '4000.00', '0.00', 0, 0, '2021-03-30', '', '2021-03-30 07:24:18', '2021-03-30 07:24:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_boys`
--

INSERT INTO `delivery_boys` (`id`, `name`, `contact_no`, `email_id`, `address`, `created_at`, `updated_at`) VALUES
(4, 'DEMO DELIVERY BOY', '67545645', 'demo@delivery.com', '', '2021-03-26 09:31:24', '2021-03-29 10:55:51'),
(5, 'DEMO DELIVERY BOY 2', '43534543', 'demo@delivery2.com', '', '2021-03-29 10:55:01', '2021-03-29 10:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `engineers`
--

CREATE TABLE `engineers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineers`
--

INSERT INTO `engineers` (`id`, `name`, `contact_no`, `email_id`, `address`, `created_at`, `updated_at`) VALUES
(5, 'DEMO ENGINEER', '21434342', 'demo@engineer.com', '', '2021-03-26 09:31:17', '2021-03-29 10:37:28'),
(8, 'DEMO ENGINEER 1', '544554344', 'demo@engineer1.com', '', '2021-03-30 06:58:21', '2021-03-30 07:00:03'),
(9, 'DEMO ENGINEER 2', '43534646', '', '', '2021-03-30 07:00:47', '2021-03-30 07:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `file_id` bigint UNSIGNED NOT NULL,
  `descriptions` json DEFAULT NULL,
  `bill_amount` decimal(8,2) NOT NULL,
  `gst_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `initial_amount` decimal(8,2) NOT NULL,
  `paying_amt` decimal(8,2) NOT NULL,
  `due_amt` decimal(8,2) NOT NULL,
  `payment_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `uuid`, `invoice_date`, `file_id`, `descriptions`, `bill_amount`, `gst_amount`, `total_amount`, `initial_amount`, `paying_amt`, `due_amt`, `payment_type`, `bank_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '586364f6-e85d-4934-9aa0-df39bb8a25c1', '2021-03-30', 2, '[\"VALUATION OF PROPERTY BELONGING TO\", \"ESTIMATION OF PROPERTY BELONGING TO\"]', '5000.00', '0.00', '5000.00', '0.00', '0.00', '5000.00', 'CASH', 6, '2021-03-30 07:13:11', '2021-03-30 07:13:11', 1, 1),
(4, '4e5636fa-1a13-4e79-b044-518a4dd4a93e', '2021-03-30', 4, '[\"VALUATION OF PROPERTY BELONGING TO\", \"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '4000.00', '0.00', '4000.00', '2000.00', '2000.00', '2000.00', 'CASH', 0, '2021-03-30 07:25:23', '2021-03-30 07:25:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_16_052240_create_customer_banks_table', 1),
(5, '2021_03_16_052423_create_banks_table', 1),
(6, '2021_03_16_053303_create_user_banks_table', 1),
(7, '2021_03_16_053348_add_foreign_key_to_customer_banks', 1),
(8, '2021_03_16_053932_add_foreign_key_to_user_banks', 1),
(9, '2021_03_16_054115_add_columns_to_user_banks', 1),
(10, '2021_03_16_054322_create_customer_files_table', 1),
(11, '2021_03_16_115219_create_engineers_table', 1),
(12, '2021_03_16_115231_create_delivery_boys_table', 1),
(13, '2021_03_16_115702_create_branches_table', 1),
(14, '2021_03_16_122425_add_name_to_branches', 2),
(19, '2021_03_16_134921_add_user_type_to_users_table', 3),
(28, '2021_03_18_104117_create_invoices_table', 4),
(29, '2021_03_18_131100_drop_default_payment_status_from_customer_files', 5),
(31, '2021_03_18_133119_rename_customer_banks_to_bank_details', 6),
(32, '2021_03_18_135744_add_contact_and_email_to_bank_details', 7),
(33, '2021_03_18_142337_drop_bank_id_from_bank_details', 8),
(34, '2021_03_18_165619_add_additional_columns_to_user_banks', 9),
(35, '2021_03_18_165913_drop_bank_id_from_user_banks', 10),
(37, '2021_03_18_171607_add_uuid_to_invoices', 11),
(38, '2021_03_18_181017_add_payment_type_to_invoices', 12),
(39, '2021_03_18_183303_add_bill_amount_to_invoices', 13),
(40, '2021_03_19_103555_add_initial_amount_to_invoices', 14),
(41, '2021_03_20_112252_add_bank_name_to_user_banks', 15),
(43, '2021_03_20_114044_change_invoices_table_structure', 16),
(44, '2021_03_20_151343_add_descriptions_to_invoice', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `invoice_id` bigint UNSIGNED DEFAULT NULL,
  `file_id` int DEFAULT NULL,
  `amount_paid` int DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `bank_id` int DEFAULT NULL,
  `remarks` text,
  `received_by` int DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `file_id`, `amount_paid`, `paid_date`, `bank_id`, `remarks`, `received_by`, `is_paid`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 1, 2, 5000, '2021-03-30', 3, '', 5, 1, '2021-03-30 12:47:46', '2021-03-30 12:52:22', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$AyOqs2NO9H62vckx0OxKvOBHPVAOYbbVlMtf/fmz0W1QbUzCwxmAG', 'admin', '2021-03-16 06:55:09', '2021-03-30 12:32:50'),
(4, 'demo', '$2y$10$t7vVoEke05PmPTUJ.SpimeZNyH0AhjCaL4pNNs8BduE16yDwOBxyS', 'user', '2021-03-24 08:50:35', '2021-03-24 08:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_banks`
--

CREATE TABLE `user_banks` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_banks`
--

INSERT INTO `user_banks` (`id`, `bank_name`, `branch_name`, `account_name`, `account_no`, `ifsc_code`, `address`, `created_at`, `updated_at`) VALUES
(1, 'UNION BANK OF INDIA', 'Navarang', 'N. Venkatesh', 'SB  A/c  No. = 497702010001006', 'UBIN0549771', '', '2021-03-20 05:54:19', '2021-03-20 05:54:19'),
(2, 'STATE BANK OF INDIA - CA', 'Rajajinagar', 'N. Venkatesh & Associates', 'CA  A/c No. 37233932106', 'SBIN0040197', '', '2021-03-20 05:56:02', '2021-03-20 05:56:02'),
(3, 'CENTRAL BANK OF INDIA', 'Rajajinagar', 'Venkatesh. N', 'A/c  No. : 3585464908', 'CBIN0281200', '', '2021-03-20 05:57:06', '2021-03-20 05:57:06'),
(4, 'INDIAN BANK', 'Sheshadripuram', 'N. Venkatesh', 'SB   A/c  No. = 857860303', 'IDIB000S014', '', '2021-03-20 05:58:11', '2021-03-20 05:58:11'),
(5, 'KARNATAKA BANK LTD', 'Srirampura', 'N. Venkatesh', 'SB  A/c  No. = 0652500106460901', 'KARB0000065', '', '2021-03-20 05:59:19', '2021-03-20 05:59:19'),
(6, 'BANK OF MAHARASHTRA', 'Malleshwaram', 'Mr. Venkatesh. N', 'A/c No. = 60342816411', 'MAHB0000344', '', '2021-03-20 06:02:44', '2021-03-20 06:02:44'),
(7, 'PUNJAB NATIONAL  BANK', 'Mahalakshmi Layout', 'N. Venkatesh', 'SB A/c. No.  3925000100129387', 'PUNB0392500', '', '2021-03-20 06:04:35', '2021-03-20 06:04:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_files`
--
ALTER TABLE `customer_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `customer_name` (`customer_name`),
  ADD KEY `contact_no` (`contact_no`);

--
-- Indexes for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineers`
--
ALTER TABLE `engineers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_uuid_index` (`uuid`),
  ADD KEY `file_invoice_foreign_key` (`file_id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_id` (`file_id`),
  ADD KEY `payments_foreign_key` (`invoice_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_banks`
--
ALTER TABLE `user_banks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_files`
--
ALTER TABLE `customer_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `engineers`
--
ALTER TABLE `engineers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_banks`
--
ALTER TABLE `user_banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `file_invoice_foreign_key` FOREIGN KEY (`file_id`) REFERENCES `customer_files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_foreign_key` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
