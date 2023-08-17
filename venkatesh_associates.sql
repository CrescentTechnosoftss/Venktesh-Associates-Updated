-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2023 at 03:45 PM
-- Server version: 8.0.34-0ubuntu0.20.04.1
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
  `bank_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank_name`, `created_at`, `updated_at`) VALUES
(1, 'UNION BANK OF INDIA', '2021-03-31 12:03:16', '2021-03-31 12:03:16'),
(2, 'CENTRAL BANK OF INDIA', '2021-03-31 12:05:30', '2021-03-31 12:05:30'),
(3, 'UCO BANK', '2021-03-31 13:14:49', '2021-03-31 13:14:49'),
(4, 'INDIAN BANK', '2021-03-31 13:15:12', '2021-03-31 13:15:12'),
(5, 'INDIAN OVERSEAS BANK', '2021-04-01 05:27:02', '2021-04-01 05:27:02'),
(6, 'KARNATAKA BANK', '2021-04-02 11:31:44', '2021-04-02 11:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_name`, `branch_name`, `contact_no`, `email_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 'KARNATAKA BANK LTD', 'OVERSEAS', '', '', '', NULL, '2021-04-08 12:18:48'),
(2, 'UNION BANK OF INDIA', 'ULP KORAMANGALA', '', '', '', NULL, NULL),
(3, 'INDIAN BANK', 'PEENYA', '', 'ssipeenya@indianbank.co.in', '', NULL, '2021-04-20 09:52:35'),
(5, 'INDIAN OVERSEAS BANK', 'MALLESHWARAM', '', 'iob0323@iob.in', '', NULL, '2021-04-20 06:11:23'),
(7, 'KARNATAKA BANK LTD', 'MINERVA CIRCLE', '', 'blr.minerva@ktkbank.com', '', NULL, '2021-04-20 09:59:58'),
(8, 'UNION BANK OF INDIA (ECORP)', 'SRINAGAR', '', 'cb0215@corpbank.co.in', '', NULL, '2021-04-19 11:11:02'),
(9, 'THE SIRSI URBAN SAHAKARI BANK LTD', 'HALASUR', '', '', '', NULL, '2021-04-08 12:20:49'),
(10, 'BANK OF BARODA', 'SINGENA AGRAHARA', '', 'azardeveloper@crescenttechnosofts.com', '', NULL, '2021-04-20 11:06:45'),
(11, 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', '', '', '', NULL, NULL),
(13, 'UNION BANK OF INDIA (EANDHRA)', 'SAHAKARNAGAR', '', '', '', NULL, '2021-04-08 13:16:00'),
(17, 'CENT BANK HOME FINANCE LTD', 'BENGALURU', '', '', '', NULL, NULL),
(18, 'KOTAK MAHINDRA BANK', 'M. G. ROAD', '', '', '', NULL, NULL),
(20, 'BANK OF MAHARASHTRA', 'BANASWADI', '', '', '', NULL, NULL),
(21, 'BANK OF BARODA', 'KODIHALLI', '', 'bbklly@bankofbaroda.co.in', '', NULL, '2021-04-20 07:31:57'),
(22, 'STATE BANK OF INDIA', 'RACPC', '', '', '', NULL, NULL),
(23, 'UCO BANK', 'PONDICHERRY', '', '', '', NULL, NULL),
(24, 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', '', 'cb0526@corpbank.co.in', '', NULL, '2021-04-19 11:11:16'),
(25, 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', '', 'Br.Rtnagar@allahabadbank.in', '', NULL, '2021-04-20 09:54:06'),
(26, 'CENTRAL BANK OF INDIA', 'KORAMANAGALA', '', 'cbi_korama@vsnl.net', '', NULL, '2021-04-09 14:17:33'),
(29, 'INCOME TAX', 'BENGALURU', '', '', '', NULL, NULL),
(30, 'BANK OF BARODA(EVIJAYA)', 'MICO  LAYOUT', '', '', '', NULL, '2021-04-20 08:29:12'),
(31, 'UNION BANK OF INDIA (EANDHRA)', 'BTM LAYOUT', '', 'bm2073@andhrabank.co.in', '', NULL, '2021-04-19 12:54:13'),
(32, 'PUNJAB NATIONAL BANK', 'CIRCLE OFFICE', '', '', '', NULL, NULL),
(33, 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', '', '', '', NULL, '2021-04-08 12:21:17'),
(34, 'CANARA BANK', 'BALANAGAR', '', '', '', NULL, NULL),
(35, 'UNION BANK OF INDIA (ECORP)', 'KAMAKSHIPALYA', '', 'cb1229@unionbankofindia.com', '', NULL, '2021-04-19 08:47:57'),
(36, 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', '', 'bom43@mahabank.co.in', '', NULL, '2021-04-08 13:48:07'),
(37, 'DUMMY', 'DUMMY', '', '', '', NULL, NULL),
(38, 'UNION BANK OF INDIA (EANDHRA)', 'MYDUKUR KADAPA DISTRICT MYSORE', '', '', '', NULL, '2021-04-13 10:50:55'),
(39, 'CENTRAL BANK OF INDIA', 'K. G. ROAD', '', 'agmbang0850@centralbank.co.in', '', NULL, '2021-04-09 14:18:12'),
(40, 'KARNATAKA BANK LTD', 'BASAVANAGUDI', '', 'blr.basavanagudi@ktkbank.com', '', NULL, '2021-04-20 09:58:48'),
(41, 'KOTAK BANK', 'M. G. ROAD', '', '', '', NULL, NULL),
(42, 'BANK OF BARODA', 'JIGANI', '', 'azardeveloper@crescenttechnosofts.com', '', NULL, '2021-04-20 11:06:02'),
(43, 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', '', 'dbnhal@bankofbaroda.com', '', NULL, '2021-04-13 11:19:50'),
(44, 'BANK OF MAHARASHTRA', 'JAYANAGAR', '', 'bom1374@mahabank.co.in', '', NULL, '2021-04-13 10:52:07'),
(45, 'INDIAN OVERSEAS BANK', 'KORAMANGALA', '', 'kmglbr@bansco.iobnet.co.in', '', NULL, '2021-04-20 09:55:46'),
(46, 'THE SIRSI URBAN SAHAKARI BANK LTD', 'HUBLI', '', '', '', NULL, NULL),
(47, 'CANARA BANK (ESYND)', 'SHESHADRIPURAM', '', 'cb0794@canarabank.com', '', NULL, '2021-04-13 10:54:46'),
(48, 'IND BANK IBMBS LTD', 'CHENNAI', '', '', '', NULL, NULL),
(49, 'INDIAN BANK', 'MSME', '', '', '', NULL, '2021-04-08 13:17:27'),
(50, 'INDIAN OVERSEAS BANK', 'KUMARA PARK', '', 'kumarbr@bansco.iobnet.co.in', '', NULL, '2021-04-20 09:56:15'),
(52, 'UNION BANK OF INDIA (EANDHRA)', 'RAJAJINAGAR', '', 'bm0494@andhrabank.co.in', '', NULL, '2021-04-19 11:13:44'),
(53, 'KARNATAKA BANK LTD', 'KASTURBA ROAD', '', 'blr.kb@ktkbank.com', '', NULL, '2021-04-20 09:59:12'),
(58, 'UNION BANK OF INDIA', 'NAVARANG', '', 'navarangcircle@unionbankofindia.com', '', '2021-03-31 12:05:09', '2021-04-20 07:57:09'),
(59, 'CENTRAL BANK OF INDIA', 'RAJAJINAGAR', '', 'bmbang1200@centralbank.co.in', '', '2021-03-31 12:05:37', '2021-04-08 13:51:35'),
(60, 'INDIAN BANK', 'K. G. ROAD', '', '', '', '2021-03-31 13:17:10', '2021-03-31 13:17:10'),
(61, 'UNION BANK OF INDIA', 'KORAMANGALA', '', 'kormangala@unionbankofindia.com', '', '2021-04-01 12:04:16', '2021-04-20 07:59:33'),
(62, 'INDIAN BANK', 'KENGERI', '', 'kengeri@indianbank.co.in', '', '2021-04-02 10:41:21', '2021-04-20 09:50:58'),
(63, 'UNION BANK OF INDIA', 'SAHAKARNAGAR', '', '', '', '2021-04-02 10:49:21', '2021-04-02 10:49:21'),
(64, 'CENTRAL BANK OF INDIA', 'CCPC REGIONAL OFFICE', '', '', '', '2021-04-02 10:59:12', '2021-04-03 11:27:25'),
(65, 'KARNATAKA BANK LTD', 'NELAMANGALA', '', 'blr.nelamangala@ktkbank.com', '', '2021-04-02 11:31:52', '2021-04-20 10:00:44'),
(70, 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', '', 'cpcbangalore@unionbankofindia.com', '', '2021-04-03 10:14:07', '2021-04-03 10:14:07'),
(71, 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', '', 'ulpbengalurum@unionbankofindia.com', '', '2021-04-03 10:17:20', '2021-04-03 10:23:19'),
(73, 'INDIAN BANK', 'MALLESHWARAM', '', 'malleswaram@indianbank.co.in', '', '2021-04-03 11:51:53', '2021-04-03 11:52:47'),
(74, 'INDIAN BANK', 'HSR LAYOUT', '', 'hsrlayout@indianbank.co.in', '', '2021-04-03 11:54:02', '2021-04-03 11:54:02'),
(75, 'INDIAN BANK', 'CANTONMENT', '', 'bangalorecantt@indianbank.co.in', '', '2021-04-03 11:55:56', '2021-04-03 11:55:56'),
(76, 'INDIAN BANK', 'JAYANAGAR', '', 'jayanagar@indianbank.co.in', '', '2021-04-03 11:56:30', '2021-04-03 11:56:30'),
(77, 'INDIAN BANK', 'J. P. NAGAR', '', 'jpnagar@indianbank.co.in', '', '2021-04-03 12:00:40', '2021-04-03 12:00:40'),
(79, 'INDIAN BANK', 'BANASHANKARI', '', '', '', '2021-04-03 12:06:06', '2021-04-03 12:06:06'),
(80, 'INDIAN BANK', 'BASAVANAGUDI', '', 'basavangudi@indianbank.co.in', '', '2021-04-03 12:07:17', '2021-04-03 12:07:17'),
(82, 'INDIAN BANK', 'CHAMARAJAPETE', '', 'chamrajpet@indianbank.co.in', '', '2021-04-03 12:09:37', '2021-04-03 12:09:37'),
(83, 'INDIAN BANK', 'DODDABANASWADI', '', 'doddabanaswadi@indianbank.co.in', '', '2021-04-03 12:12:05', '2021-04-03 12:12:05'),
(85, 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', '', 'niftbng@unionbankofindia.com', '', '2021-04-07 10:41:03', '2021-04-08 14:22:54'),
(86, 'UNION BANK OF INDIA', 'MALLESHWARAM', '', 'malleswaram@unionbankofindia.com', '', '2021-04-07 10:54:05', '2021-04-08 14:21:31'),
(87, 'UNION BANK OF INDIA', 'ULP SOUTH', '', '', '', '2021-04-07 10:56:39', '2021-04-07 10:56:39'),
(88, 'UNION BANK OF INDIA', 'YELAHANKA', '', 'cbsyelhanka@unionbankofindia.com', '', '2021-04-08 11:18:07', '2021-04-08 11:18:07'),
(89, 'UNION BANK OF INDIA', 'RAJAJINAGAR', '', 'rajajinagar@unionbankofindia.com', '', '2021-04-08 11:19:17', '2021-04-08 11:19:17'),
(90, 'UNION BANK OF INDIA (ECORP)', 'KUNDANA', '', '', '', '2021-04-08 11:24:27', '2021-04-08 11:24:27'),
(91, 'CANARA BANK', 'MALLESHWARAM', '', 'cb0409@canarabank.com', '', '2021-04-08 11:26:41', '2021-04-09 14:02:05'),
(92, 'UNION BANK OF INDIA (ECORP)', 'PADMANABHANAGAR', '', 'cb704@corpbank.co.in', '', '2021-04-08 11:28:42', '2021-04-19 08:44:14'),
(93, 'CENTRAL BANK OF INDIA', 'BTM LAYOUT', '', 'cbi_btmlay@vsnl.net', '', '2021-04-08 11:30:02', '2021-04-09 14:18:39'),
(96, 'STATE BANK OF INDIA', 'IISC', '', '', '', '2021-04-08 11:50:34', '2021-04-08 11:50:34'),
(97, 'UNION BANK OF INDIA (EANDHRA)', 'NAGARABHAVI', '', 'bm1352@andhrabank.co.in', '', '2021-04-08 11:56:06', '2021-04-19 11:12:51'),
(98, 'UNION BANK OF INDIA', 'BTM LAYOUT', '', 'btmlayout@unionbankofindia.com', '', '2021-04-08 11:57:42', '2021-04-20 07:46:57'),
(99, 'STATE BANK OF INDIA', 'MALLESHWARAM', '', 'sbi.07080@sbi.co.in', '', '2021-04-08 12:04:17', '2021-04-20 10:04:15'),
(100, 'UNION BANK OF INDIA', 'CHANDAPURA', '', 'chandapura@unionbankofindia.com', '', '2021-04-08 12:05:02', '2021-04-08 14:02:28'),
(102, 'UNION BANK OF INDIA', 'INDIRANAGAR', '', 'indiranagarbng@unionbankofindia.com', '', '2021-04-08 12:48:39', '2021-04-20 07:50:21'),
(103, 'INDIAN BANK', 'R. T. NAGAR', '', '', '', '2021-04-08 12:51:52', '2021-04-08 12:51:52'),
(104, 'UNION BANK OF INDIA (ECORP)', 'BASAVESHWARANAGAR', '', 'cb0604@corpbank.co.in', '', '2021-04-08 12:52:53', '2021-04-19 11:11:59'),
(106, 'UNION BANK OF INDIA', 'BVK IYANGAR ROAD', '', 'bvkiroad@unionbankofindia.com', '', '2021-04-08 13:54:54', '2021-04-08 13:54:54'),
(107, 'UNION BANK OF INDIA', 'CANTONMENT', '', 'cantonment@unionbankofindia.com', '', '2021-04-08 13:55:35', '2021-04-08 13:55:35'),
(108, 'UNION BANK OF INDIA', 'ASSET RECOVERY BRANCH', '', 'arbbangalore@unionbankofindia.com', '', '2021-04-08 13:56:46', '2021-04-08 13:56:46'),
(109, 'UNION BANK OF INDIA', 'AVENUE ROAD', '', 'avenue@unionbankofindia.com', '', '2021-04-08 13:57:22', '2021-04-08 13:57:22'),
(110, 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', '', 'basaveshwara@unionbankofindia.com', '', '2021-04-08 13:57:59', '2021-04-20 07:42:58'),
(111, 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', '', 'cbsbhuvaneshwari@unionbankofindia.com', '', '2021-04-08 14:00:22', '2021-04-08 14:00:22'),
(112, 'UNION BANK OF INDIA', 'CHAMARAJPET', '', 'cbschamrajpet@unionbankofindia.com', '', '2021-04-08 14:01:01', '2021-04-08 14:01:01'),
(113, 'UNION BANK OF INDIA', 'C. T. STREET', '', 'ctsbangalore@unionbankofindia.com', '', '2021-04-08 14:03:14', '2021-04-08 14:03:14'),
(114, 'UNION BANK OF INDIA', 'DEVANAHALLI', '', 'cbsdevanahalli@unionbankofindia.com', '', '2021-04-08 14:03:49', '2021-04-08 14:03:49'),
(115, 'UNION BANK OF INDIA', 'DOMLUR', '', 'domlur@unionbankofindia.com', '', '2021-04-08 14:04:19', '2021-04-08 14:04:19'),
(116, 'UNION BANK OF INDIA', 'GITAM CAMPUS NAGADENAHALLI', '', 'cbsgitamcampusbranch@unionbankofindia.com', '', '2021-04-08 14:06:38', '2021-04-08 14:06:38'),
(117, 'UNION BANK OF INDIA', 'HAINES ROAD', '', 'hainesroad@unionbankofindia.com', '', '2021-04-08 14:07:34', '2021-04-08 14:07:34'),
(118, 'UNION BANK OF INDIA', 'HAINES ROAD', '', 'hennur@unionbankofindia.com', '', '2021-04-08 14:12:34', '2021-04-08 14:12:34'),
(119, 'UNION BANK OF INDIA', 'J. P. NAGAR', '', 'jpnagar@unionbankofindia.com', '', '2021-04-08 14:14:16', '2021-04-08 14:14:16'),
(120, 'UNION BANK OF INDIA', 'JAYANAGAR', '', 'jaynagar@unionbankofindia.com', '', '2021-04-08 14:14:49', '2021-04-08 14:14:49'),
(121, 'UNION BANK OF INDIA', 'KALKERE', '', 'cbskalkerebranch@unionbankofindia.com', '', '2021-04-08 14:15:50', '2021-04-08 14:15:50'),
(122, 'INDIAN BANK', 'AVENUE ROAD', '', 'avenueroad@indianbank.co.in', '', '2021-04-08 14:17:49', '2021-04-08 14:17:49'),
(123, 'INDIAN BANK', 'ASHOKA PILLAR', '', '', '', '2021-04-08 14:18:16', '2021-04-08 14:18:16'),
(124, 'INDIAN BANK', 'CANTONMENT', '', 'bangalorecantt@indianbank.co.in', '', '2021-04-08 14:21:24', '2021-04-09 14:19:33'),
(125, 'INDIAN BANK', 'BANGALORE CITY', '', 'bangalorecity@indianbank.co.in', '', '2021-04-08 14:22:27', '2021-04-09 14:20:06'),
(126, 'INDIAN BANK', 'BASAVANGUDI', '', 'basavangudi@indianbank.co.in', '', '2021-04-08 14:23:54', '2021-04-08 14:23:54'),
(127, 'UNION BANK OF INDIA', 'R. T. NAGAR', '', 'rtnagar@unionbankofindia.com', '', '2021-04-08 14:24:09', '2021-04-08 14:24:09'),
(128, 'INDIAN BANK', 'BENSON TOWN', '', 'bensontown@indianbank.co.in', '', '2021-04-08 14:24:33', '2021-04-08 14:24:33'),
(129, 'INDIAN BANK', 'BANASANKARI II STAGE', '', 'banashankari@indianbank.co.in', '', '2021-04-08 14:25:48', '2021-04-16 13:03:49'),
(130, 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURD ROAD', '', 'stjohnext@unionbankofindia.com', '', '2021-04-08 14:26:01', '2021-04-08 14:26:01'),
(131, 'INDIAN BANK', 'COMMERCIAL STREET', '', 'commercialstreet@indianbank.co.in', '', '2021-04-08 14:26:02', '2021-04-08 14:26:30'),
(132, 'UNION BANK OF INDIA', 'VIJINAPURA', '', 'vijanapura@unionbankofindia.com', '', '2021-04-08 14:26:36', '2021-04-08 14:26:36'),
(133, 'INDIAN BANK', 'BTM LAYOUT BANGALORE', '', '', '', '2021-04-08 14:27:13', '2021-04-08 14:27:13'),
(134, 'UNION BANK OF INDIA', 'VIJAYANAGAR', '', 'vijayanagar@unionbankofindia.com', '', '2021-04-08 14:27:16', '2021-04-08 14:27:16'),
(135, 'INDIAN BANK', 'BROOKFIELD BRANCH BANGALORE', '', 'brookfield@indianbank.co.in', '', '2021-04-08 14:30:06', '2021-04-08 14:30:06'),
(136, 'INDIAN BANK', 'CHAMARAJPET', '', 'chamrajpet@indianbank.co.in', '', '2021-04-08 14:31:31', '2021-04-08 14:31:31'),
(137, 'INDIAN BANK', 'CUBBONPET', '', 'cubbonpet@indianbank.co.in', '', '2021-04-08 14:32:19', '2021-04-08 14:32:19'),
(138, 'INDIAN BANK', 'CHICKPET', '', '', '', '2021-04-08 14:33:04', '2021-04-08 14:33:04'),
(139, 'INDIAN BANK', 'DODDA BANASAWADI', '', 'doddabanaswadi@indianbank.co.in', '', '2021-04-08 14:33:36', '2021-04-08 14:33:36'),
(140, 'INDIAN BANK', 'ELECTRONIC CITY', '', 'electroniccity@indianbank.co.in', '', '2021-04-08 14:34:15', '2021-04-08 14:34:15'),
(141, 'INDIAN BANK', 'GIRINAGAR', '', '', '', '2021-04-08 14:34:47', '2021-04-09 11:18:30'),
(142, 'INDIAN BANK', 'IND RETAIL BANGALORE', '', '', '', '2021-04-08 14:35:34', '2021-04-08 14:35:34'),
(143, 'INDIAN BANK', 'JAYA NAGAR', '', 'jayanagar@indianbank.co.in', '', '2021-04-08 14:36:09', '2021-04-08 14:36:09'),
(144, 'INDIAN BANK', 'J P NAGAR', '', 'jpnagar@indianbank.co.in', '', '2021-04-08 14:36:41', '2021-04-08 14:36:41'),
(145, 'INDIAN BANK', 'J P NAGAR I PHASE', '', '', '', '2021-04-08 14:37:10', '2021-04-08 14:37:10'),
(146, 'INDIAN BANK', 'KASTURI NAGAR', '', 'kasturinagar@indianbank.co.in', '', '2021-04-08 14:37:42', '2021-04-08 14:37:42'),
(147, 'INDIAN BANK', 'KODIGEHALLI', '', 'kodigehalli@indianbank.co.in', '', '2021-04-08 14:38:42', '2021-04-08 14:38:42'),
(148, 'INDIAN BANK', 'K. R. PURAM', '', 'krpuram@indianbank.co.in', '', '2021-04-08 14:39:40', '2021-04-09 11:18:44'),
(149, 'INDIAN BANK', 'MALLESWARAM', '', 'malleswaram@indianbank.co.in', '', '2021-04-08 14:40:08', '2021-04-08 14:40:08'),
(150, 'INDIAN BANK', 'M. G. ROAD', '', 'mgroadbangalore@indianbank.co.in', '', '2021-04-08 14:41:21', '2021-04-09 11:18:50'),
(151, 'INDIAN BANK', 'NEW TIMBER YARD LAYOUT', '', 'ntylayout@indianbank.co.in', '', '2021-04-08 14:42:01', '2021-04-08 14:42:01'),
(152, 'INDIAN BANK', 'NEW THIPPASANDRA', '', 'newtippasandra@indianbank.co.in', '', '2021-04-08 14:42:45', '2021-04-08 14:42:45'),
(153, 'INDIAN BANK', 'KORAMANGALA', '', 'koramangala@indianbank.co.in', '', '2021-04-08 14:43:21', '2021-04-08 14:43:21'),
(154, 'INDIAN BANK', 'NEW HORIZON COLLEGE OF ENGINEERING', '', 'newhorizoncollege@indianbank.co.in', '', '2021-04-08 14:44:12', '2021-04-08 14:44:12'),
(155, 'INDIAN BANK', 'RAJAJI NAGAR', '', 'rajajinagar@indianbank.co.in', '', '2021-04-08 14:44:55', '2021-04-08 14:44:55'),
(156, 'INDIAN BANK', 'RICHMOND CIRCLE', '', 'richmondcircle@indianbank.co.in', '', '2021-04-08 14:45:31', '2021-04-08 14:45:31'),
(157, 'INDIAN BANK', 'RMV 2ND STAGE', '', 'rmvextension@indianbank.co.in', '', '2021-04-08 14:46:05', '2021-04-09 11:19:04'),
(158, 'INDIAN BANK', 'SESHADRIPURAM', '', 'seshadripuram@indianbank.co.in', '', '2021-04-08 14:46:46', '2021-04-08 14:46:46'),
(159, 'INDIAN BANK', 'SADASHIVNAGAR', '', 'sadashivnagar@indianbank.co.in', '', '2021-04-08 14:47:16', '2021-04-08 14:47:16'),
(160, 'INDIAN BANK', 'PRASHANTH NAGAR', '', 'prashanthnagar@indianbank.co.in', '', '2021-04-08 14:47:42', '2021-04-08 14:47:42'),
(161, 'INDIAN BANK', 'HALASUR', '', 'ulsoor@indianbank.co.in', '', '2021-04-08 14:48:27', '2021-04-09 11:19:13'),
(162, 'INDIAN OVERSEAS BANK', 'SOMMANAHALLI', '', 'bommanahallibr@bansco.iobnet.co.in', '', '2021-04-09 04:24:41', '2021-04-20 09:58:05'),
(163, 'PERSONAL', 'BENGALURU', '', '', '', '2021-04-09 04:32:19', '2021-04-09 04:32:45'),
(164, 'UCO BANK', 'BANGALORE CITY', '', '', '', '2021-04-09 04:45:03', '2021-04-09 04:45:03'),
(165, 'UCO BANK', 'CANTONMENT', '', 'bancan@ucobank.co.in', '', '2021-04-09 04:45:38', '2021-04-09 04:45:38'),
(166, 'UCO BANK', 'JALAHALLI', '', 'jalaha@ucobank.co.in', '', '2021-04-09 04:46:28', '2021-04-09 04:46:28'),
(167, 'UCO BANK', 'MALLESHWARAM', '', 'malles@ucobank.co.in', '', '2021-04-09 04:47:19', '2021-04-09 04:47:19'),
(168, 'UCO BANK', 'KENGERI', '', 'kenger@ucobank.co.in', '', '2021-04-09 04:47:55', '2021-04-09 04:47:55'),
(169, 'UCO BANK', 'JAYANAGAR', '', 'jayana@ucobank.co.in', '', '2021-04-09 04:48:56', '2021-04-09 04:48:56'),
(170, 'UCO BANK', 'FRAZER TOWN', '', 'banfra@ucobank.co.in', '', '2021-04-09 04:50:01', '2021-04-09 04:50:01'),
(171, 'UCO BANK', 'INDIRANAGAR', '', 'indira@ucobank.co.in', '', '2021-04-09 04:50:48', '2021-04-09 04:50:48'),
(172, 'UCO BANK', 'KORAMANGALA', '', 'korama@ucobank.co.in', '', '2021-04-09 04:53:30', '2021-04-09 04:53:30'),
(173, 'UCO BANK', 'RAMMURTHY NAGAR', '', '', '', '2021-04-09 04:53:59', '2021-04-09 04:53:59'),
(174, 'UCO BANK', 'BANASHANKARI', '', '', '', '2021-04-09 04:54:26', '2021-04-09 04:54:26'),
(175, 'UCO BANK', 'SAHAKARANAGAR', '', 'sahaka@ucobank.co.in', '', '2021-04-09 05:00:08', '2021-04-09 05:00:08'),
(176, 'UCO BANK', 'HSR LAYOUT', '', '', '', '2021-04-09 05:00:41', '2021-04-09 05:00:41'),
(177, 'UCO BANK', 'BANNERGHATTA ROAD', '', 'banner@ucobank.co.in', '', '2021-04-09 05:01:21', '2021-04-09 05:01:21'),
(178, 'UCO BANK', 'VIJAYANAGAR', '', '', '', '2021-04-09 05:01:44', '2021-04-09 05:01:44'),
(179, 'UCO BANK', 'VASANTHNAGAR', '', 'vasban@ucobank.co.in', '', '2021-04-09 05:02:35', '2021-04-09 05:02:35'),
(180, 'UCO BANK', 'GANGANAGAR', '', '', '', '2021-04-09 05:03:05', '2021-04-09 05:03:05'),
(181, 'UCO BANK', 'HESARAGHATTA ROAD', '', '', '', '2021-04-09 05:03:38', '2021-04-09 05:03:38'),
(182, 'UCO BANK', 'YELAHANKA', '', 'yelaha@ucobank.co.in', '', '2021-04-09 05:04:08', '2021-04-09 05:04:08'),
(183, 'UCO BANK', 'BIDARAHALLI', '', 'bidara@ucobank.co.in', '', '2021-04-09 05:11:18', '2021-04-09 05:11:18'),
(184, 'UCO BANK', 'BTM LAYOUT', '', 'btmlay@ucobank.co.in', '', '2021-04-09 05:11:47', '2021-04-09 05:11:47'),
(185, 'UCO BANK', 'J. P. NAGAR', '', 'jpnaga@ucobank.co.in', '', '2021-04-09 05:12:18', '2021-04-09 05:12:18'),
(186, 'UCO BANK', 'PEENYA', '', 'peenya@ucobank.co.in', '', '2021-04-09 05:13:14', '2021-04-09 05:13:14'),
(187, 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', '080-27844626', 'cb0881@corpbank.co.in', '', '2021-04-09 05:15:07', '2021-04-09 05:15:07'),
(188, 'KARNATAKA BANK LTD', 'INDUSTRIAL FINANCE BRANCH', '', 'blr.ifb@ktkbank.com', '', '2021-04-09 05:17:18', '2021-04-09 05:17:18'),
(190, 'BANK OF BARODA', 'GANGANAGAR', '', 'gangan@bankofbaroda.com', '', '2021-04-09 13:28:49', '2021-04-09 13:28:49'),
(191, 'UNION BANK OF INDIA', 'PEENYA', '', '', '', '2021-04-09 13:44:22', '2021-04-09 13:44:22'),
(192, 'UNION BANK OF INDIA', 'RICHMOND TOWN', '', 'cbsrichmondtown@unionbankofindia.com', '', '2021-04-10 04:18:48', '2021-04-20 07:55:49'),
(193, 'INDIAN BANK', 'HOSUR', '', 'hosur@indianbank.co.in', '', '2021-04-10 04:23:52', '2021-04-20 09:47:56'),
(194, 'UNION BANK OF INDIA', 'AGB LAYOUT', '', 'gelayarabalaga@unionbankofindia.com', '', '2021-04-10 05:11:06', '2021-04-20 08:00:21'),
(195, 'CENTRAL BANK OF INDIA', 'PEENYA', '', 'bmbang1304@centralbank.co.in', '', '2021-04-10 05:12:11', '2021-04-20 09:44:16'),
(196, 'BANK OF MAHARASHTRA', 'BTM LAYOUT', '', 'bom1021@mahabank.co.in', '', '2021-04-12 04:43:12', '2021-04-20 09:39:53'),
(197, 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', '', '', '', '2021-04-12 05:57:30', '2021-04-12 06:20:17'),
(198, 'UNION BANK OF INDIA (ECORP)', 'BAGMANE  TECH  PARK', '', 'cb0835@unionbankofindia.com', '', '2021-04-15 06:25:58', '2021-04-20 07:45:14'),
(199, 'INDIAN BANK', 'J. P. NAGAR 9TH PHASE', '', 'jpnagarphase9@indianbank.co.in', '', '2021-04-15 06:51:25', '2021-04-20 09:49:33'),
(201, 'STATE BANK OF INDIA', 'RACPC MALLESHWARAM', '', '', '', '2021-04-15 09:26:38', '2021-04-15 09:26:38'),
(202, 'STATE BANK OF INDIA', 'BIDADI  BM  ROAD', '', 'sbi.40676@sbi.co.in', '', '2021-04-16 05:15:07', '2021-04-16 05:15:07'),
(203, 'BANK OF BARODA(EVIJAYA)', 'J. C. ROAD', '22226314/22224835/7022001108', 'bm1100@vijayabank.co.in', '', '2021-04-16 10:50:08', '2021-04-16 10:50:08'),
(204, 'STATE BANK OF INDIA', 'RAJAJINAGARA INDUSTRIAL ESTATE', '', '', '', '2021-04-17 04:43:19', '2021-04-17 04:43:19'),
(205, 'UNION BANK OF INDIA (ECORP)', 'CANTONMENT', '', 'cb0046@corpbank.co.in', '', '2021-04-17 07:33:49', '2021-04-20 07:53:44'),
(206, 'UNION BANK OF INDIA (ECORP)', 'JAKKUR', '', 'cb0810@corpbank.co.in', '', '2021-04-17 10:10:31', '2021-04-19 09:09:33'),
(207, 'BANK OF BARODA(EVIJAYA)', 'K. G. ROAD', '', 'vjkgro@bankofbaroda.co.in', '', '2021-04-17 10:43:50', '2021-04-17 10:43:50'),
(208, 'INDIAN OVERSEAS BANK', 'JAYANAGAR', '', 'jaya5br@bansco.iobnet.co.in', '', '2021-04-17 11:45:10', '2021-04-17 11:45:10'),
(209, 'UNION BANK OF INDIA (ECORP)', 'PEENYA 2ND STAGE', '', '', '', '2021-04-19 05:36:58', '2021-04-19 05:36:58'),
(210, 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', '', 'cb0222@corpbank.co.in', '', '2021-04-19 06:10:54', '2021-04-19 06:10:54'),
(211, 'UNION BANK OF INDIA (ECORP)', 'CHANDRA LAYOUT', '', '', '', '2021-04-19 06:39:51', '2021-04-19 06:39:51'),
(212, 'STATE BANK OF INDIA', 'RACPC  BASAVANAGUDI', '', '', '', '2021-04-19 07:27:07', '2021-04-19 07:27:07'),
(213, 'CENTRAL BANK OF INDIA', 'ABBIGERE', '', 'bmbang3585@centralbank.co.in', '', '2021-04-19 08:43:18', '2021-04-19 08:43:18'),
(214, 'BANK OF BARODA(EVIJAYA)', 'MOODALAPALYA', '', 'vjmoda@bankofbaroda.com', '', '2021-04-19 08:46:09', '2021-04-19 08:46:09'),
(215, 'BANK OF BARODA', 'VIJAYANAGAR', '', 'vijban@bankofbaroda.com', '', '2021-04-19 08:46:44', '2021-04-19 08:46:44'),
(216, 'CENTRAL BANK OF INDIA', 'SILK  BOARD', '', 'bmbang3975@centralbank.co.in', '', '2021-04-19 08:55:01', '2021-04-19 08:55:01'),
(217, 'INDIAN BANK', 'BIDADI', '', 'bidadi@indianbank.co.in', '', '2021-04-19 09:09:21', '2021-04-19 09:09:21'),
(218, 'PUNJAB NATIONAL BANK (OBC)', 'T DASARAHALLI', '', 'bm1392@obc.co.in', '', '2021-04-19 09:15:44', '2021-04-19 09:15:44'),
(219, 'BANK OF BARODA(EVIJAYA)', 'T. DASARAHALLI', '', 'vjdaha@bankofbaroda.co.in', '', '2021-04-19 09:16:39', '2021-04-19 09:16:39'),
(220, 'CANARA BANK (ESYND)', 'VIJAYANAGAR', '', '', '', '2021-04-19 09:17:24', '2021-04-19 09:17:24'),
(221, 'UNION BANK OF INDIA', 'MANGALORE', '', '', '', '2021-04-19 10:45:21', '2021-04-19 10:45:21'),
(222, 'CANARA BANK', 'AGB LAYOUT', '', 'cb5597@canarabank.com', '', '2021-04-19 10:53:07', '2021-04-19 10:53:07'),
(223, 'INDIAN OVERSEAS BANK', 'EAST  END  MAIN  ROAD', '', 'eaendbr@bansco.iobnet.co.in', '', '2021-04-19 10:53:32', '2021-04-20 09:55:05'),
(224, 'CANARA BANK (ESYND)', 'MADHAVANAGAR', '', 'cb0788@canarabank.com', '', '2021-04-19 10:53:54', '2021-04-19 10:53:54'),
(225, 'UNION BANK OF INDIA', 'C. V. RAMAN NAGAR', '', 'bm1575@unionbankofindia.com', '', '2021-04-19 10:55:24', '2021-04-19 10:55:24'),
(227, 'UNION BANK OF INDIA', 'VARTHUR', '', 'bm2487@unionbankofindia.com', '', '2021-04-19 10:59:44', '2021-04-19 10:59:44'),
(228, 'UNION BANK OF INDIA (ECORP)', 'CHIKKABANAVARA', '', 'cb2147@corpbank.co.in', '', '2021-04-19 11:02:29', '2021-04-19 11:02:29'),
(229, 'INDIAN OVERSEAS BANK', 'INDIRANAGAR', '', 'iob0604@iob.in', '', '2021-04-19 11:06:17', '2021-04-19 11:06:17'),
(230, 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', '', 'iob1537@iob.in', '', '2021-04-19 11:07:02', '2021-04-19 11:07:02'),
(231, 'STATE BANK OF INDIA', 'RACPC, KORAMANGALA', '', '', '', '2021-04-20 07:11:01', '2021-04-20 07:11:01'),
(232, 'INDIAN OVERSEAS BANK', 'C. K. PALYA', '', 'iob3745@iob.in', '', '2021-04-20 07:32:32', '2021-04-20 07:32:32'),
(233, 'INDIAN OVERSEAS BANK', 'MARASANDRA', '', 'iob3264@iob.in', '', '2021-04-20 07:33:16', '2021-04-20 07:33:16'),
(234, 'KARNATAKA BANK LTD', 'REVA UNIVERSITY', '', 'blr.reva@ktkbank.com', '', '2021-04-20 07:35:45', '2021-04-20 07:35:45'),
(235, 'UNION BANK OF INDIA (ECORP)', 'MAGADI ROAD', '', 'cb0882@unionbankofindia.com', '', '2021-04-20 07:39:07', '2021-04-20 07:39:07'),
(236, 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', '7353590357', 'cb0450@unionbankofindia.com', '', '2021-04-20 07:39:51', '2021-04-20 07:39:51'),
(237, 'UNION BANK OF INDIA (ECORP)', 'WHITEFIELD', '', 'cb0705@unionbankofindia.com', '', '2021-04-20 07:44:19', '2021-04-20 07:44:19'),
(238, 'UNION BANK OF INDIA', 'V. KOTA', '', 'bm1902@unionbankofindia.com', '', '2021-04-20 07:47:53', '2021-04-20 07:47:53'),
(239, 'DEMO', 'DEMO', '', 'subindeveloper@crescenttechnosofts.com', '', '2021-08-12 05:32:49', '2021-08-12 05:32:49'),
(240, 'BANK OF DEMO', 'BRANCH', '555', 'cb0794@canarabank.com', '', '2021-09-13 12:16:38', '2021-09-13 12:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `branch_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `created_at`, `updated_at`) VALUES
(1, 'NAVARANG', '2021-03-31 12:03:25', '2021-03-31 12:03:25'),
(2, 'RAJAJINAGAR', '2021-03-31 12:05:33', '2021-03-31 12:05:33'),
(3, 'BASAVESHWARANAGAR', '2021-03-31 13:14:51', '2021-03-31 13:14:51'),
(4, 'MALLESHWARAM', '2021-03-31 13:15:15', '2021-03-31 13:15:15'),
(5, 'HSR LAYOUT', '2021-03-31 13:16:52', '2021-03-31 13:16:52'),
(6, 'K. G. ROAD', '2021-03-31 13:17:03', '2021-03-31 13:17:03'),
(7, 'KORAMANGALA', '2021-04-01 12:02:15', '2021-04-01 12:02:15'),
(8, 'KENGERI', '2021-04-02 10:40:57', '2021-04-02 10:40:57'),
(9, 'SAHAKARNAGAR', '2021-04-02 10:49:16', '2021-04-02 10:49:16'),
(10, 'CCPC REGIONAL OFFICE', '2021-04-02 10:59:08', '2021-04-02 10:59:08'),
(11, 'NELAMANGALA', '2021-04-02 11:31:46', '2021-04-02 11:31:46'),
(12, 'PEENYA', '2021-04-02 11:45:08', '2021-04-02 11:45:08');

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
  `customer_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchaser_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `refercon` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engineer_id` int NOT NULL,
  `engnum` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_value` decimal(10,2) UNSIGNED NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_amount` decimal(8,2) NOT NULL,
  `cash_paid` decimal(8,2) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT NULL,
  `delivery_boy_id` int NOT NULL,
  `report_delivered_date` date DEFAULT NULL,
  `delivered_to` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `engineer_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_files`
--

INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(35659, 'f95f9a5f-70e8-4a78-88a0-48c4d0545768', '2020-11-03', 'INDIAN OVERSEAS BANK', 'MALLESHWARAM', 'Mr. T. S. KISHAN', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35660, 'bece97fe-c29e-4276-b3c7-3e8efba6a4e2', '2020-11-03', 'UNION BANK OF INDIA', 'JAYANAGAR', 'M/s. SAHYADRI ELECTRICALS', '', '9448260562', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35661, 'bec1e3ef-a3b6-4433-a66f-58158ebd1e29', '2020-11-03', 'UNION BANK OF INDIA (EANDHRA)', 'BTM LAYOUT', 'Mr. PRAVEEN. M', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35662, '8b26fef7-c5b4-474d-b060-c757d01aa17c', '2020-11-03', 'UNION BANK OF INDIA', 'JAYANAGAR', 'M/s. S. S. FABS', '', '9448260562', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35663, 'd74e71d6-d3c7-41bb-9105-176fc7872c9f', '2020-11-03', 'INDIAN BANK', 'HENNUR ROAD', 'Mrs. C. TEJOVATHI', '', '9886780603', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35664, '2ebe3821-339a-447f-b2ed-a7c9595772ca', '2020-11-03', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'Mr. ANJANAPPA', '', '8105534531', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35665, '06f023b2-a7cf-4314-8dc7-c2b4bfecfcf8', '2020-11-03', 'INDIAN BANK', 'KG ROAD', 'Mrs. PARIMALA. B. J @ SACHU', '', '9448318038', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35666, 'db25a9d9-29c5-44ee-9122-d219bdf86786', '2020-11-03', 'UCO BANK', 'M. G. ROAD', 'Mrs. YASHODA. M', '', '8861359997', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-03 02:35:24', '2020-11-03 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35667, '22549342-222b-425c-9c24-99c6b1b2bfd2', '2020-11-04', 'BANK OF MAHARASHTRA', 'HASSAN', 'Mr. ABHINANDAN. H. V & Mrs. NEETHU. D. S', '', '9611819888', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-04 02:35:24', '2020-11-04 02:35:24', 1, 1, 'BHASKAR'),
(35668, 'a7899688-89c6-4f99-883f-659248051be5', '2020-11-04', 'UNION BANK OF INDIA', 'VENKATAGIRI KOTA, ANDHRA PRADESH', 'Mrs. GOWRAMMA & Mr. VINOD', '', '9035155506', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-11-04 02:35:24', '2020-11-04 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35669, 'b510f68b-3b0d-4882-bbb6-9e1ea1353bdf', '2020-11-04', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. MANJUNATH. C', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-04 02:35:24', '2020-11-04 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35670, 'e24ad8e3-f1a8-4505-bd74-9768e39ebd49', '2020-11-04', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. G. JAYARAM', '', '8861214399', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-04 02:35:24', '2020-11-04 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35671, '288a85d2-bb98-4f04-890a-1a467ff6509d', '2020-11-04', 'UNION BANK OF INDIA', 'MANGALORE', 'Mr. DARSHAN SHETTY & Mr. SHANTHARAM SHETTY', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-04 02:35:24', '2020-11-04 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35672, '9d7e797c-e7f4-4989-93ea-9bf3b7d01943', '2020-11-05', 'INDIAN OVERSEAS BANK', 'MALLESHWARAM', 'M/s. CANOPY HOMES AND HOLDINGS LLP.,', '', '8861635348', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35673, '2515236c-6d8e-41db-bfe0-f3691bba1dcd', '2020-11-05', 'STATE BANK OF INDIA', 'RACPC', 'Mr. K. N. CHIDANANDA', '', '9739394839', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35674, 'eabea160-8ba0-40c9-b669-82f5681533cc', '2020-11-05', 'INDIAN BANK', 'KORAMANGALA', 'Mr. S. KRISHNAMURTHY & MRS. K. GOWRI', '', '9008009541', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35675, '881d387f-556d-4a37-bc4b-a8d738362691', '2020-11-05', 'UNION BANK OF INDIA (EANDHRA)', 'HEBBAL', 'Radha', '', '9980569937', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35676, '2b4f0938-1c05-402c-a0af-b7cd04529533', '2020-11-05', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mr. H. G. PAWAR', '', '9606678670', '', '', '', NULL, 3, NULL, '', '0.00', '', '1500.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35677, 'c72a5b9f-f706-4818-a206-6818d0ade126', '2020-11-05', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'kulakarni', '', '9986003573', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35678, '39c98c38-ebb9-4079-ad18-5105c524fa1d', '2020-11-05', 'UNION BANK OF INDIA (ECORP)', 'CITY BRANCH', 'M/s. GAYATRI SILKS', '', '9886525755', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35679, 'b08e48ba-6379-43d9-91c1-54132345e600', '2020-11-05', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Mr. G. K. KRISHNA MURTHY', '', '9731738166', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'MANJUNATH'),
(35680, '65e96569-e456-4b95-b572-ccaf56729a0a', '2020-11-05', 'INCOME TAX', 'BENGALURU', 'Mr. R. REGUNATHAN', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'MANJUNATH'),
(35681, '18f3a248-0bde-495d-80c1-aa9825be3ecb', '2020-11-05', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'Mr. PANKAJ KUMAR JAIN', '', '9741114350', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'MANJUNATH'),
(35682, '47a0eb6c-cc5c-4488-b130-538ac5a3ac5e', '2020-11-05', 'PERSONAL', 'BENGALURU', 'Mr. V. ANJANEYALU', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35683, '35a8fcc6-933a-4dfa-90e6-6f4202e8af28', '2020-11-05', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'M/s. CONFIDENT PROJECTS (INDIAN) PVT LTD.,', '', '9986924830', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35684, 'a598aef7-a255-44a5-8fd4-63f2e3f26730', '2020-11-05', 'UNION BANK OF INDIA', 'DEVANAHALLI', 'Mrs. MUBARAK', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35685, 'a778c457-7e09-4e06-a95f-4d3ab74f075e', '2020-11-05', 'UCO BANK', 'ZONAL OFFICE', 'ANU MARKETING', '', '9902579384', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35686, '67455218-1988-425e-9475-94d38fdb20aa', '2020-11-05', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'V. Geetha', '', '9845291788', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35687, '01c0f659-33be-493c-beac-8f1982a080fd', '2020-11-05', 'UCO BANK', 'YELAHANKA', 'MADHU', '', '9986253939', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35688, 'db34c42a-c838-4890-a3ed-bec742df8d50', '2020-11-05', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'RAMESH V B & Mr CHIRAN', '', '9845062126', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'BHASKAR'),
(35689, 'f6ac9071-29c0-420f-a5e4-76fda179e0b8', '2020-11-05', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'ARJUN C M', '', '9845062126', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'BHASKAR'),
(35690, 'cd4d8f0a-394b-49e6-8bd0-a0163af6a42d', '2020-11-05', 'UCO BANK', 'K. G. ROAD', 'NAGA', '', '9742816662', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '7500.00', 1, 0, '0000-00-00', '', '2020-11-05 02:35:24', '2020-11-05 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35691, 'e3cfc444-cbcf-4408-bf22-5865083c32ce', '2020-11-06', 'UNION BANK OF INDIA (EANDHRA)', 'BANASHANKARI', 'Mr. M. C. NARAYANAGOWDA', '', '7899258608', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35692, '2e79226c-c0e9-49b6-bd1d-e69f44fad43e', '2020-11-06', 'STATE BANK OF INDIA', 'KORAMANGALA', 'Nagarjuna b.', '', '7829295231', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35693, '4b912b9e-b4f0-4ead-8f2a-54dbaf459102', '2020-11-06', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mrs. TEJASWINI & Ms. SOBHASHREE', '', '9916951124', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'MANJUNATH'),
(35694, 'df8832b7-670a-4522-92c5-c046895dc932', '2020-11-06', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Ms. TOTAL ENVIRONMENT LIVING SPACES PRIVATE LIMITED.,', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'MANJUNATH'),
(35695, 'ea176c58-af90-4a95-b31a-3f3665b3efec', '2020-11-06', 'UNION BANK OF INDIA', 'HARAPANAHALLI', 'n.r.hariskumar', '', '9900114497', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'MANJUNATH'),
(35696, 'e61c16f9-4cef-4458-b136-2e58be3f2b87', '2020-11-06', 'UNION BANK OF INDIA', 'HARAPANAHALLI', 'Mr. PANKAJ KUMAR SINHA & Mrs. SHARIFA BI', '', '7353078611', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'MANJUNATH'),
(35697, '9c07069b-7d34-425e-a6e1-b40f9b683447', '2020-11-06', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'Mr. P. BABU SINGH & Mrs. VANITHA BAI', '', '9845930589', '', '', '', NULL, 2, NULL, '', '0.00', '', '5300.00', '5000.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'MANJUNATH'),
(35698, '7dbd83cf-6bf6-429a-b07e-07399ab8161f', '2020-11-06', 'UNION BANK OF INDIA (ECORP)', 'CITY BRANCH', 'M/s. GAYATHRI SILKS', '', '9886522755', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35699, '9d428714-9335-4db8-817e-6ecc9b73ea0b', '2020-11-06', 'UCO BANK', 'M. G. ROAD', 'Mr. THIRUNAVUKARASU', '', '9740638837', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35700, 'a17ef32e-e23d-44e9-a27e-5e3fd40358a3', '2020-11-06', 'UNION BANK OF INDIA (ECORP)', 'CITY BRANCH', 'M/s. TEXOFIL INDUSTRIES PRIVATE LIMITED.,', '', '9886522755', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35701, 'b1769c1b-bfb5-4884-acd5-04a23192b339', '2020-11-06', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Mrs. VIJAYALAKSHMI & Mr. ERATHIMMAIAH', '', '9448018592', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35702, '14f20dcc-009f-4ef8-85b8-1d9edf501d28', '2020-11-06', 'UCO BANK', 'JALAHALLI', 'Mr. G. LAKSHMINARAYANA', '', '9945974689', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35703, 'ff196474-a056-4511-b4aa-eaca111a27cb', '2020-11-06', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'RR SIGNATURE', '', '9342433338', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35704, '9205f141-4695-498e-9df8-207f3ad45f84', '2020-11-06', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'PRAKASH E PATEL', '', '9739098997', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '10000.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35705, '740de4dc-05e6-4244-91a6-d053843c9f64', '2020-11-06', 'STATE BANK OF INDIA', 'GADAG', 'Mr. DEEPAK. S. ALUR & Mrs. AARTI. S. ALUR', '', '9980921451', '', '', '', NULL, 1, NULL, '', '0.00', '', '2700.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35706, 'a1cf485d-24d7-4aaf-b345-ddef18f77046', '2020-11-06', 'UNION BANK OF INDIA', 'RAJARAJESHWARI NAGAR', 'M/s. BANGALORE DEVELOPMENT AUTHORITY', '', '9611510513', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-11-06 02:35:24', '2020-11-06 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35707, '2041241e-e51c-44b0-a3ab-90855445a5ec', '2020-11-07', 'STATE BANK OF INDIA', 'gAYATHRI NAGAR', 'Mr. SAMEERA. B. MARKOD & Mrs. LAKSHMI. N', '', '9886928292', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35708, '3636fd18-99f8-4d50-bc18-94ac2579c075', '2020-11-07', 'UNION BANK OF INDIA', 'RICHMOND TOWN', 'M/s. SLS DEVELOPERS', '', '9448847161', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'MANJUNATH'),
(35709, 'ec879fc8-821f-4771-b017-0326f88720b6', '2020-11-07', 'UNION BANK OF INDIA (ECORP)', 'Padmanabhanagar', 'Mr. K. VENKATESH', '', '9986775843', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'MANJUNATH'),
(35710, '39d1a0c3-c99a-46cc-a1d3-79330035d599', '2020-11-07', 'UNION BANK OF INDIA (ECORP)', 'Padmanabhanagar', 'Mr. K. V. SANTHOSH KUMAR', '', '9986775843', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'MANJUNATH'),
(35711, 'c94cd9d9-2038-4bbf-8c14-545f032cfbb9', '2020-11-07', 'UNION BANK OF INDIA (ECORP)', 'Padmanabhanagar', 'Mr. K. VENKATAIAH & Mrs. CHIKKAMUNIYAMMA', '', '9986775843', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'MANJUNATH'),
(35712, '23663e9a-26af-46d5-ab37-06cbe965da35', '2020-11-07', 'UNION BANK OF INDIA (ECORP)', 'Padmanabhanagar', 'Mrs. CHIKKA MUNIYAMMA', '', '9986775843', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'MANJUNATH'),
(35713, 'd178056d-115b-4ba4-b2f3-29885d8e6d86', '2020-11-07', 'UNION BANK OF INDIA', 'NAVARANG', 'Mr. MURALI SWAMY', '', '9972504025', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35714, '76cb0c3c-17bc-47f8-9c48-d4ff0099d059', '2020-11-07', 'UCO BANK', 'HESARAGHATTA ROAD', 'Mr. R. KUMARASWAMY', '', '9590839305', '', '', '', NULL, 3, NULL, '', '0.00', '', '3200.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35715, '49d3bd28-ad53-40bf-8f90-11292cbc55c3', '2020-11-07', 'UNION BANK OF INDIA (ECORP)', 'C.v. Raman Nagar', 'Mr. V. MANU', '', '9986088040', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35716, '4bd1d72a-79e4-47f9-98b5-27db99c1c29d', '2020-11-07', 'INCOME TAX', 'BENGALURU', 'Mr. ANAND KUMAR REDDY', '', '8971037701', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35717, '85ffb637-b992-4479-bd2e-cbc39e273246', '2020-11-07', 'BANK OF MAHARASHTRA', 'MALLESHWARAM', 'M/s. GOOD EARTH ECO DEVELOPMENTS PVT LTD.,', '', '7353922222', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35718, 'a07d892c-6ad1-4f10-a07d-52a27ae35f61', '2020-11-07', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mrs. A. C. NALINA', '', '9900400956', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35719, 'ce47f6f9-e49d-4530-b2a2-7b8f37a21d63', '2020-11-07', 'STATE BANK OF INDIA', 'RACPC', 'Mr. M. SHIVAJI RAO', '', '9739939053', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35720, '71b5b2b4-4abe-40fe-b7cd-b8e71c0706cd', '2020-11-07', 'BANK OF MAHARASHTRA', 'JAYANAGAR', 'Mr. G. HARI BABU', '', '9008009541', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35721, 'd192efad-f43c-4457-9f54-44f77e086faf', '2020-11-07', 'UNION BANK OF INDIA (ECORP)', 'Rpc Layout', 'Mr. H. N. USHA', '', '9972554896', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'MANJUNATH'),
(35722, '1994aaed-a05c-4d08-972f-6403eb9595b9', '2020-11-07', 'UNION BANK OF INDIA', 'KAMAKSHIPALYA', 'Badarinatha. N', '', '9590839305', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-07 02:35:24', '2020-11-07 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35723, '4116a7ed-ecd8-44e5-9831-c00fa9154bff', '2020-11-09', 'UNION BANK OF INDIA (EANDHRA)', 'BANASHANKARI 3RD STAGE', 'Mrs. N. BHARATHI', '', '9036615190', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35724, '3dd02216-ef1c-4ba5-bcfa-1c2030065a3b', '2020-11-09', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. R. MADAN & Mrs. USHA MADAN', '', '9845552394', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35725, '92c5e8a8-01fd-439e-9daf-d19a4ecd3bfe', '2020-11-09', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. PRADEEP KUMAR JAMPA', '', '9632890013', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35726, '63c59361-2f4f-42d2-b913-946ea652585b', '2020-11-09', 'UNION BANK OF INDIA (ECORP)', 'Padmanabhanagar', 'Mr. R. JAYACHANDRAN & Mr. K. PRAKASH', '', '9113026852', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35727, 'ffba64a9-bfad-4187-a9fc-1648ae4281b7', '2020-11-09', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mrs. NIRMALA. P. NELIVIGI & DEEPAK PRAKASH NELIVIGI', '', '9844317331', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35728, '61a71824-1fff-4993-9812-a7d8514ec5e4', '2020-11-09', 'UNION BANK OF INDIA', 'VIJAYANAGAR', 'Mrs. M. C. SUJATHA', '', '9742413366', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35729, '9b360628-c9c3-411e-8706-57da4397084e', '2020-11-09', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. T. K. SUMAN KUMAR', '', '7795902284', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35730, '8258fc9a-dbae-4a2c-a814-9fe53c1c39e1', '2020-11-09', 'INDIAN BANK', 'GIRINAGAR', 'Mrs. VANAJAKSHMI. K. J', '', '9066737807', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'MANJUNATH'),
(35731, '5d12e0a4-f1b2-41ae-94ea-39c1ae8c2214', '2020-11-09', 'UNION BANK OF INDIA', 'PADAVU KULASHEKAR MANGALORE', 'Mr. NAGANAND. R. HEGDE', '', '9986871120', '', '', '', NULL, 3, NULL, '', '0.00', '', '3500.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35732, '5fd869c3-8cf2-4d95-a199-f1f2ebd1a21c', '2020-11-09', 'UNION BANK OF INDIA', 'PADAVU KULASHEKAR MANGALORE', 'Mr. NAGANAND. R. HEGDE', '', '9986871120', '', '', '', NULL, 3, NULL, '', '0.00', '', '3500.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35733, 'fb99fdf9-fad5-4425-ac7f-211a4d097625', '2020-11-09', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. PRAPTHI NALIGE. E.', '', '9113595145', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35734, '92a3525a-ed01-4d02-9c58-7b18d79cb3bb', '2020-11-09', 'STATE BANK OF INDIA', 'RACPC', 'm/s. SRS. REALTY', '', '9845764129', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'BHASKAR'),
(35735, 'cc6bf7a4-b279-424f-8c22-517a3653bae8', '2020-11-09', 'UNION BANK OF INDIA', 'DOMLUR', 'Mr. R. NAGARAJAN', '', '9449457976', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35736, '63d398c1-e89e-4ddd-8361-9d1c0b128498', '2020-11-09', 'STATE BANK OF INDIA', 'RACPC', 'Mr. SATISH PRASAD RATH & Mrs. TANUJA MISHRA', '', '7760963746', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35737, '2f50bd27-d7ec-467b-82cd-e221bb0df47a', '2020-11-09', 'UNION BANK OF INDIA', 'SARAL', 'Mr. SOMASUNDER. P. S & Mrs. DHARINI. S', '', '9845061429', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-09 02:35:24', '2020-11-09 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35738, 'ceacfb43-f21d-479e-9d1f-aea9e22a1918', '2020-11-10', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mrs. NIRMALA. P. NELIVIGI & DEEPAK PRAKASH NELIVIGI', '', '9844317331', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'MANJUNATH'),
(35739, '63f21c2e-2c02-4ee9-8a4a-7aec19ce2f8a', '2020-11-10', 'CENTRAL BANK OF INDIA', 'RAJAJINAGAR', 'Mr. SHANMUGAM. R', '', '9341251048', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'MANJUNATH'),
(35740, '09ecfe70-d89c-4e63-adf8-e1b1e1d8c627', '2021-03-24', 'UNION BANK OF INDIA (ECORP)', 'SRINAGAR', 'Mrs. T. DHANALAKSHMI', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-03-24 02:35:24', '2021-03-24 02:35:24', 1, 1, 'Manjunath'),
(35741, 'a3035e2c-6166-48d6-89f0-b8429c317ad0', '2020-11-10', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. T. PARAMESWARAPPA & Mr. ANOOP SUGUR. P', '', '9449000414', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35742, 'cb735b26-c610-484b-820f-d7e7279f0768', '2020-11-10', 'UNION BANK OF INDIA', 'ULP WHITEFIELD', 'Mrs. R. HEMAVATHI, Mr. S. ARJUN & Mrs. S. REKHA RANI', '', '9674288300', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35743, 'f75526cf-8a27-4e19-90f6-d2b7b0e92767', '2020-11-10', 'STATE BANK OF INDIA', 'RACPC', 'Mr. PHANI SOMA RAJA SEKHARA SHIRIS CHINTA', '', '7795874029', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35744, '122d2bd1-c3b4-439a-a116-1c5942a612a5', '2020-11-10', 'STATE BANK OF INDIA', 'RACPC', 'Mr. PHANI SOMA RAJA SEKHARA SHIRIS CHINTA', '', '7795874029', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35745, 'f8db5be6-47b8-4f0f-8b0e-ac7d605b0f2e', '2020-11-10', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. C. V. KRISHNA RAJ', '', '9900201083', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35746, 'd51e6039-7f26-4861-96d3-d17170157343', '2020-11-10', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'Mrs. KOWSALYA KODAMAGANI & Mr. P. R. VIJAYASIMHA REDDY', '', '9886600698', '', '', '', NULL, 3, NULL, '', '0.00', '', '2650.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35747, '977f5c2a-5598-41a7-9b4d-92572682d0a1', '2020-11-10', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. CHANDRA SHEKAR. J', '', '7349734433', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35748, '1e00281a-be67-418e-b162-1856a0556391', '2020-11-10', 'CENTRAL BANK OF INDIA', 'ABBIGERE', 'Mrs. C. LAKSHMI', '', '8050026427', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35749, 'b3c9bd25-cef0-4b90-b97d-4ad9b7b71b09', '2020-11-10', 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURCH ROAD', 'Mr. RAM PRAKASH', '', '9902928054', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35750, '038e417f-1fc8-46bf-b82c-310e47da3420', '2020-11-10', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mrs. ANITHA. R', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35751, 'e97827f3-5210-4cd0-85b1-821da8a5c634', '2020-11-10', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. M. MAHESH', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35752, '76800158-80d7-400a-b360-ea615a2456d8', '2020-11-10', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. RUDRAMUNI. T', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35753, 'fb45a3d8-5b89-47a5-ad15-f8fdb14721a0', '2020-11-10', 'BANK OF MAHARASHTRA', 'INDIRANAGAR', 'AJMERA LUGAANO', '', '9513236600', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35754, 'de78430b-98e3-40b3-acd0-d744c786802c', '2020-11-10', 'BANK OF MAHARASHTRA', 'INDIRANAGAR', 'AJMERA FLORENZA', '', '9513263300', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-10 02:35:24', '2020-11-10 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35755, 'e2b60d1f-f97a-4418-9adf-a70f331c8879', '2020-11-11', 'BANK OF MAHARASHTRA', 'CPC BASAVANAGUDI', 'Mr. B. C. SRINIVAS', '', '9035816238', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'BHASKAR'),
(35756, '9921fa41-4d9b-4e11-8dda-7e5331ab1097', '2020-11-11', 'UNION BANK OF INDIA (ECORP)', 'ULP KORAMANGALA', 'M/s. LAKEPOINT BUILDERS PVT LTD..,', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'BHASKAR'),
(35757, 'b46a262c-02a9-4fed-94a8-91c2414360b9', '2020-11-11', 'UNION BANK OF INDIA (ECORP)', 'ULP KORAMANGALA', 'M/s. LAKEPOINT BUILDERS PVT LTD..,', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'BHASKAR'),
(35758, 'c0efd639-6e98-47db-9faa-9fb766f3e544', '2020-11-11', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mrs. K. INDRANI', '', '9686782899', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'MANJUNATH'),
(35759, '6b08385e-d043-4302-942d-5959b30a5fd3', '2020-11-11', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Ms. SJR PRIME CORPORATION PVT LTD.,', '', '9776677667', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'MANJUNATH'),
(35760, 'fbdb0b43-b40d-4eb0-b2fd-90e22c2f34b3', '2020-11-11', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. L. SRINIVASAN', '', '8105383250', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'MANJUNATH'),
(35761, '9d401837-490a-439c-b9f6-20c7ffa03bcc', '2020-11-11', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. K. KRISHNA', '', '9900993147', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'MANJUNATH'),
(35762, 'eab751bf-d438-40f3-8bd3-4264fbda2078', '2020-11-11', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. SUNIL KUMAR. N', '', '9845382225', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35763, '1416f806-0c1c-46b4-938e-7689f8e4e7fb', '2020-11-11', 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURCH ROAD', 'Mr. IQBAL AHAMED KHAN', '', '9986771015', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35764, '1e96b1a0-a75e-4697-9eda-5a9912069fcf', '2020-11-11', 'STATE BANK OF INDIA', 'ARMB', 'Mr. MADHUKAR AND Mrs. CHITRA MADHUKAR', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35765, '43ffba2a-09ec-41d8-bcbf-585f653d1e8d', '2020-11-11', 'INDIAN BANK', 'DEVANAHALLI', 'Mr. H. MAHADEV GOUD & Mrs. H. NAGARATHNA', '', '9742543455', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '7500.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35766, '78b2a4d1-b0dd-424b-b82f-9e0c30a4d719', '2020-11-11', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'Mr. G. SHIVAKUMAR', '', '9900643338', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35767, 'f06bcc01-cef9-4a10-90f0-e5db8bb2558b', '2020-11-11', 'UNION BANK OF INDIA (ECORP)', 'BASAVESHWARA NAGAR', 'Mr. N. VENKATESH', '', '9945380600', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35768, 'd28c9de0-616d-4a5d-b0eb-d5e9afef2293', '2020-11-11', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'sugandi', '', '9731549626', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-11 02:35:24', '2020-11-11 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35769, '1203fea0-427e-4599-835d-aaa836007341', '2020-11-12', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mr. MOHAMMED SHAFI & Mrs. SHAISTA BANU', '', '9902928061', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35770, '11f31c69-1694-4f16-8610-8452f2ce792e', '2020-11-12', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'M/s. VIHAAN ASSOCIATES', '', '7899999962', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35771, '477191a0-bd65-48c7-b6f4-1fb016428031', '2020-11-12', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mrs. SUSHEELA. C. G', '', '9844042336', '', '', '', NULL, 3, NULL, '', '0.00', '', '1500.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35772, '24cce8ef-5043-418e-879a-5b64c9bef304', '2020-11-12', 'UNION BANK OF INDIA', 'J. P. NAGAR', 'Mr. SOMANATH ETI', '', '9448323816', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'MANJUNATH'),
(35773, '20761157-e390-4697-84b2-83657bce56ff', '2020-11-12', 'CENTRAL BANK OF INDIA', 'NAGARBHAVI', 'Mr. RAMESH SINGH', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'MANJUNATH'),
(35774, '34c5946f-7cb6-48cf-8fa5-7be0145187f0', '2020-11-12', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. R. PANDURANGAIAH', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'MANJUNATH'),
(35775, '0a98fc89-f3a8-4bbe-8871-14e2bc2a751c', '2020-11-12', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mrs. SHOBHA K', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'MANJUNATH'),
(35776, 'b19589f7-1b6e-443e-bb44-d8724905836b', '2020-11-12', 'UNION BANK OF INDIA', 'RICHMOND TOWN', 'Mr. G. ANAND & Mrs. K. T. SUJATHA', '', '9448211852', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'MANJUNATH'),
(35777, '020c0b12-b3c0-41dd-9741-cb7173425e31', '2020-11-12', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. N. MUNIRAJU GOWDA, Mrs. ASHA. K, Master. M. ADITHYA GOWDA, Miss. M. BHOOMIKA, Mr. RAVIKUMAR. N, Mrs. SHWETHA. K & Miss. A. JANANI', '', '9379167669', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'MANJUNATH'),
(35778, '71caa1a2-c7fe-47fc-abfc-2a95bf9e9c0d', '2020-11-12', 'CENTRAL BANK OF INDIA', 'IIHR', 'Dr. RAVI BHUSHAN TIWARI', '', '9986193751', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35779, '5311ce39-a4ea-4e39-a826-fe8047bb53cf', '2020-11-12', 'STATE BANK OF INDIA', 'RACPC', 'Mr. T. IQBAL AHAMED & Mrs. Mrs. S. MUMTAZ AHAMED', '', '9731666956', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35780, '8e95dd48-e3ef-4c61-8383-8fa3d5abfbed', '2020-11-12', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. TAHASEEN ARA', '', '7200036820', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35781, '98a738a2-7c0c-4956-9c6c-2cd9ca121a6d', '2020-11-12', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. TAHASEEN ARA', '', '9902579711', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35782, 'cabfe74d-14b0-4155-829c-2a41cad606df', '2020-11-12', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'Mrs. RAJESHWARI. G. BHUYAR', '', '7760346592', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35783, '4e86bd55-db2d-4379-98be-2f418fc5895a', '2020-11-12', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. T. G. MALLI REDDY', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-12 02:35:24', '2020-11-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35784, 'edb1e4fa-3bf9-45c8-90dd-3f11a7217d4a', '2020-11-13', 'INDIAN BANK', 'MALLESHWARAM', 'Mr. S. SRINIVAS MURTHY', '', '9686838584', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'MANJUNATH'),
(35785, '8e96b513-91aa-49b1-86a0-ba17e9806f72', '2020-11-13', 'CENTRAL BANK OF INDIA', 'BTM LAYOUT', 'Mrs. N. DEVIKA', '', '9448043804', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'MANJUNATH'),
(35786, '19afc33f-d54a-4741-b9d1-6d670bcd76db', '2020-11-13', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Ramesh', '', '9962041508', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'MANJUNATH'),
(35787, '05938ff1-4d93-4043-b331-e379ffea8bdb', '2020-11-13', 'INDIAN BANK', 'CHAMARAJPETE', 'Mr. B. K. PRAVEEN', '', '9036032188', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'MANJUNATH'),
(35788, '3d5c5800-503b-4d47-ac2e-bc787a5b2248', '2020-11-13', 'INDIAN BANK (EALLAHABAD)', 'INDIRANAGAR', 'Mrs. J. PRAMILA & Mr. A. JACOB', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '7500.00', 1, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35789, '8972356f-89a4-4c75-ad67-697f3f3470d7', '2020-11-13', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mrs. V. KALA', '', '9986894589', '', '', '', NULL, 3, NULL, '', '0.00', '', '1500.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35790, 'bc375052-c8a1-40db-9fdc-53492001658a', '2020-11-13', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Damodar', '', '9900555552', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35791, '7298478a-9fea-47f9-b99a-ba3752df2241', '2020-11-13', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mrs. NANDINI. M. GHANTE', '', '8880223666', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35792, 'aa52d0a8-c1bb-42f8-8166-ff7752d09e97', '2020-11-13', 'UNION BANK OF INDIA (ECORP)', 'CHAMARAJPET', 'M/s. SATTVA DEVELOPERS PVT. LTD.,', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35793, '3812445a-96d6-443c-bf89-76e89fb0dba6', '2020-11-13', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. VITHINDRA SWAMY. V. S', '', '9845871203', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'MANJUNATH'),
(35794, 'c4a57c7e-4f15-4aba-a14c-b46e20daec4f', '2020-11-13', 'INDIAN BANK', 'K. R. PURAM', 'Mr. K. R. KESHAVA REDDY, Mrs. S. THRIPURA KESHAVA REDDY & Mr. THARUN. K', '', '7406537905', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35795, '3c985ecf-0c04-45e1-9cd9-e89d817e4e75', '2020-11-13', 'KARNATAKA BANK LTD', 'REVA COLLEGE', 'Mr. R. VENKATESHWARLU', '', '9591522315', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35796, '8bd64e27-05ef-4064-bb40-196e62daffe4', '2020-11-13', 'STATE BANK OF INDIA', 'ARMB', 'Mr. P. VENKATESH', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-13 02:35:24', '2020-11-13 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35797, '1736c14e-7c0c-478c-a185-3ce254b6afda', '2020-11-14', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'M/s. P. J. RESINS AND PLASTICISERS PRIVATE LIMITED.,', '', '9972495559', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '7000.00', 1, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35798, '7426fa5a-e52a-4a75-9de6-7a352295bbd7', '2020-11-14', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'R.MADHU', '', '9972495559', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35799, '37f5b279-5960-468b-a4e9-f539886c8fe7', '2020-11-14', 'INDIAN BANK', 'HALASUR', 'Mr. A. ANTHONY JAMES', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35800, 'bac7d591-8cab-44a1-8a0f-8728cf637930', '2020-11-14', 'STATE BANK OF INDIA', 'RACPC', 'M/s. SHRIVISION HOMES PRIVATE LIMITED .,', '', '9886591402', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35801, '67b84a91-d7fd-4573-82b1-42d3c1ef3200', '2020-11-14', 'INDIAN BANK', 'THIRUMENAHALLI', 'B,R,ANAND', '', '9844377586', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35802, '422991be-ea18-457a-8591-f4dff92ae4a4', '2020-11-14', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. NITHIN SRINIVAS', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35803, 'a862c5a5-6a60-4635-9c11-fc75ff03257d', '2020-11-14', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. P. B. SOLOMON RAJ', '', '9900462926', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35804, '75810722-bc5e-4aff-9607-58f49d97277d', '2020-11-14', 'INDIAN BANK', 'JP NAGAR 9TH PHASE', 'Mrs. VINATHA. M. REDDY, Mrs. VIJITHA SUBBIAH, Mr. VENKATARAM REDDY, Mr. JAYARAM. S. REDDY & Mr. PRATAP. S. REDDY', '', '7022078578', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-14 02:35:24', '2020-11-14 02:35:24', 1, 1, 'BHASKAR'),
(35805, '43371cf0-a2f5-4bc2-be83-3766523a6cd4', '2020-11-17', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Mrs. ASHA. K', '', '9448733933', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'MANJUNATH'),
(35806, '22329e57-a99b-49da-9176-4b77d9bed117', '2020-11-17', 'UCO BANK', 'KORAMANGALA', 'M/s. PLUTO REALTORS PRIVATE LIMITED.,', '', '9833897752', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'MANJUNATH'),
(35807, 'dfc12513-5156-4361-af8a-e23c219cee5d', '2020-11-17', 'INDIAN BANK', 'RAJAJINAGAR', 'RAMACHANDRA REDDY. K & Mrs. VASANTHA KUMARI. A. V', '', '9448826226', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'MANJUNATH'),
(35808, 'f3eac943-028e-4afe-8844-ccadc5052e3e', '2020-11-17', 'BANK OF MAHARASHTRA', 'CPC BASAVANAGUDI', 'Mr. R. S. CHANDRASEKHAR', '', '9742201302', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'BHASKAR'),
(35809, '4a378a35-cb41-4653-af20-8f8578ce2232', '2020-11-17', 'BANK OF MAHARASHTRA', 'CPC BASAVANAGUDI', 'Mr. R. S. CHANDRASEKHAR', '', '8296067431', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'BHASKAR'),
(35810, '8307ed21-7af3-44c9-8979-322674888b9a', '2020-11-17', 'BANK OF MAHARASHTRA', 'CPC BASAVANAGUDI', 'Mr. R. S. CHANDRASEKHAR', '', '9741863081', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'BHASKAR'),
(35811, '0c228b3e-9872-4bb9-b92f-1f2da9f0ac0e', '2020-11-17', 'KARNATAKA BANK LTD', 'RLPC TUMKUR', 'M/s. VINDHYA BUILDERS AND DEVELOPERS', '', '9964124875', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35812, 'd75c27fd-1860-46b4-9277-9ded35a27fc9', '2020-11-17', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mr. K. R. KRISHNACHAR', '', '8880223666', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35813, 'f7a6178b-2e6a-488c-88b1-9bbefbd3694f', '2020-11-17', 'UNION BANK OF INDIA', 'PES SCHOOL OF ENGINEERING', 'Mrs. B. K. LATHA & Mrs. B. REKHA', '', '', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35814, 'f30ad9d0-09f5-4940-b430-20648ebe8d68', '2020-11-17', 'STATE BANK OF INDIA', 'KASTURINAGAR', 'Mr. DANDE JAGADISH', '', '8088805510', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35815, '821fa78d-01cf-453c-a7ff-6543cac1c822', '2020-11-17', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. PRIYA. V. BELLUBBI & Mr. R. B. ANANTH', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-17 02:35:24', '2020-11-17 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35816, '4a4fc04e-c3ff-4227-bae9-b807432ed94c', '2020-11-18', 'INDIAN BANK', 'CUBBONPET', 'Mrs. SOUNDARYA. G', '', '9008009143', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35817, 'ff4ba4b0-b938-4619-b655-abffce1f2eb6', '2020-11-18', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mr. PAVAN KUMAR MITTA', '', '9886710123', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'MANJUNATH'),
(35818, '59e84b61-637b-47ba-8d1e-bd3e038fb751', '2020-11-18', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. ARJUN. B. V. & Mrs. CHAITHRA. A', '', '9880029313', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'MANJUNATH'),
(35819, 'dd2bdc6b-32ac-4cf3-90ee-df688879400e', '2020-11-18', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. SAMARESH SINGH', '', '9980985000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'MANJUNATH'),
(35820, 'd0391df6-aa6c-4f5a-bed1-99d7543c8d9f', '2020-11-18', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. SAZITH JOSEPH FERNANDES & Mrs. MARIA JENITHA PAIS', '', '9902076131', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'MANJUNATH'),
(35821, 'f18de4ca-e5c8-4c81-abd0-7915b8a073b9', '2020-11-18', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'M/s. ELEGANT ALTIMA', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'MANJUNATH'),
(35822, '244d9fcf-29e7-4997-a2b5-e1fc1e063e5e', '2020-11-18', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'lokesh', '', '9740222121', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35823, '4ab90257-d1c4-43d1-993a-f172640694f3', '2020-11-18', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. G. N. JAYARAMU NAIDU & Mr. PRABHAKAR. N. A', '', '8548981211', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35824, 'bda0644b-d2da-43a5-8ae7-2346ea625532', '2020-11-18', 'STATE BANK OF INDIA', 'RACPC', 'Mr. AVINASH. V.', '', '9900908500', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'RAJASHEKHAR');
INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(35825, 'a9791d4d-44c1-448f-b7c8-6ac292514e40', '2020-11-18', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mr. DEEPAK. S. C. CHANDRASHEKAR', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35826, '3fcd5ee2-89d4-436a-a5bb-7c64c538c2ac', '2020-11-18', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Mr. ADITHYA', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35827, '67401dab-18ec-4467-bcd2-8b1580dfd571', '2020-11-18', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Mr. AMBRISH. V. A', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35828, '482578cf-0300-46e0-bab4-bfa57d2b504f', '2020-11-18', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Ms. NETHRAYINI. S. P', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35829, 'afa10e04-fbaf-45c0-bd92-ab695b02970a', '2020-11-18', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Mr. NAGARAJ', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35830, '44b7a279-8e7a-4a46-9171-81a7aef0bda7', '2020-11-18', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Mr. RAKESH HONNAPPA', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35831, '7511b726-23c6-42c4-b09d-e987b8dddc27', '2020-11-18', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mrs. SUMALATA', '', '9986460516', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35832, 'de3cd67f-d1da-4e71-966f-db0c7979a432', '2020-11-18', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'supriya kumar', '', '9900407532', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35833, '0ebede79-8444-4e3b-abe8-00b424ce492c', '2020-11-18', 'INDIAN BANK', 'BANASHANKARI', 'Mr. C. P. VIJAYA SAI', '', '7760635135', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-18 02:35:24', '2020-11-18 02:35:24', 1, 1, 'BHASKAR'),
(35834, '05f84076-668e-4577-9f6d-a93ada20fe60', '2020-11-19', 'CENTRAL BANK OF INDIA', 'VIJAYANAGAR', 'Mr. G. MURALIDHAR', '', '9902299233', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35835, '7e763412-5b9a-4d5d-8534-41fda653fa98', '2020-11-19', 'STATE BANK OF INDIA', 'RACPC', 'Mr. SIMON JOHN', '', '9901356920', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35836, '1b955ecc-0103-4e67-91d4-cabd1b7b32b7', '2020-11-19', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mr. RAJ KUMAR. M. G', '', '9980157790', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35837, '7f669ac2-d67b-438a-8bc5-b7b9548cfe85', '2020-11-19', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'siv parvathi', '', '9481294813', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35838, '4673f1bc-358a-4320-83a8-47a2ac505f98', '2020-11-19', 'STATE BANK OF INDIA', 'CUBE', 'Mr. R. VENKATESH', '', '8892119971', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35839, '1b27fe2e-00d3-40a5-87a4-6d01705e8c96', '2020-11-19', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mr. RAJ KUMAR. M. G', '', '9980157790', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35840, 'f56f33df-3769-49c7-a2b1-234a3ab34063', '2020-11-19', 'UNION BANK OF INDIA (ECORP)', 'KORAMANGALA', 'Mr. VENKATA RAVI KUMAR TADEPALLI & Mrs. BALA. T', '', '9986026561', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'MANJUNATH'),
(35841, '3314b6b9-26c6-466c-828c-bf1b85bab91a', '2020-11-19', 'STATE BANK OF INDIA', 'RACPC', 'M/s. TTK PRESTIGE LIMITED & M/s. RAJMATA REALTORS PRIVATE LIMITED', '', '9588441980', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35842, 'a19972cb-60c5-46be-8d50-15718776f614', '2020-11-19', 'UNION BANK OF INDIA', 'VIJINAPURA', 'mahesh kumar', '', '8861003824', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35843, 'd6f59fbe-701c-48a8-a0fd-a3b2ec0ea5f8', '2020-11-19', 'UNION BANK OF INDIA (EANDHRA)', 'YELAHANKA', 'vijayakumar', '', '9448408536', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35844, '23a346e1-4a37-419e-97cb-aec04e1f9852', '2020-11-19', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mr. MAHESHA. C. S', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35845, '4024427b-5296-46df-a0eb-81fcac2fbb10', '2020-11-19', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mr. K. M. LOKESH', '', '9900991232', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'MANJUNATH'),
(35846, 'c7949a0e-6639-48b5-b272-39e1ee245098', '2020-11-19', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. M. UMESH', '', '8152000006', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'MANJUNATH'),
(35847, '655fa1d2-e84e-4e69-8f35-1f4c59bf54e2', '2020-11-19', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. SATHISH KUMAR. S', '', '9739555225', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'MANJUNATH'),
(35848, '4e6818aa-acb0-4264-b1b3-27f056e11aa6', '2020-11-19', 'UNION BANK OF INDIA (ECORP)', 'ATTIBELE', 'Mr. ARUNKUMAR', '', '9472858758', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'MANJUNATH'),
(35849, '515d8cf7-1166-4541-aa36-07e32f880778', '2020-11-19', 'UNION BANK OF INDIA', 'CHAMARAJAPET', 'Mr. H. K. SURESH', '', '7975337761', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'MANJUNATH'),
(35850, '9dfc6599-c9f4-4224-85ce-2278c052c853', '2020-11-19', 'INDIAN BANK', 'NEW THIPPASANDRA', 'DHARMA RAM & Mrs RUKMA DEVI', '', '9448832216', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'BHASKAR'),
(35851, '62705beb-8c50-48f0-bedb-0969da18be80', '2020-11-19', 'INDIAN BANK', 'BENSON TOWN', 'Mr. G. CHANDRASEKAR', '', '9663941269', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'BHASKAR'),
(35852, 'a3ce24c6-b79a-4ebb-8dc2-fdef0deb45d5', '2020-11-19', 'PERSONAL', 'BENGALURU', 'Mrs. CHHAYA ANANDA RAO & Mr. S. ANANDA RAO', '', '9448072740', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'BHASKAR'),
(35853, '5dd796fd-201a-4335-97b5-97a5aa615090', '2020-11-19', 'PUNJAB NATIONAL BANK', 'CIRCLE OFFICE', 'M/s. PUNJAB NATIONAL BANK', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-19 02:35:24', '2020-11-19 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35854, 'fb064477-5bdf-433d-8856-35dd57b2dd81', '2020-11-20', 'PERSONAL', 'BENGALURU', 'Mr. WING COMMANDER. S. ANANDA RAO', '', '9448072740', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35855, '76e6cfa6-4b6e-4e32-9f33-c981894f6689', '2020-11-20', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'M/s. A PEACE PROJECTS LLP.,', '', '8095168158', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'MANJUNATH'),
(35856, '9ffb98c6-95bf-4ce5-baaa-b42cd518285a', '2020-11-20', 'INDIAN BANK', 'CHAMARAJPETE', 'Mr. K. SHAKTHI', '', '9448275108', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'MANJUNATH'),
(35857, '50ebc287-b8d5-4422-aabe-58281802d957', '2020-11-20', 'UNION BANK OF INDIA', 'NAVARANG', 'Mr. MALLIKARJUNA. D. R & Mrs. SHALINI. P', '', '9886567200', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35858, '92d7c120-a602-4a52-b0dd-2df31f170674', '2020-11-20', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'Mr. SATISH DORESWAMY', '', '8971950810', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35859, 'e8aa255d-43ed-4435-aad5-e88a864aa087', '2020-11-20', 'STATE BANK OF INDIA', 'L. C. ROAD', 'Mr. KALASA VINCY', '', '9731291273', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35860, '64d7f861-c20a-4529-946e-a6f49bf28eba', '2020-11-20', 'UNION BANK OF INDIA', 'BVK IYANGAR ROAD', 'Mr. BHAWARLAL & Mr. PRATHAPRAM', '', '9449242470', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35861, '4c5d95ad-7b0b-41d8-862f-970e4e6663d8', '2020-11-20', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'Mr. ABDUL MUNAF EROOR & Mrs. BEEBI JAN EROOR', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35862, '14baf907-70ab-4d1b-a0c3-26f3c8a1262d', '2020-11-20', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'Mr. G. NANJUNDASWAMY', '', '9845028014', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35863, '0f44b849-5373-459d-a989-8cb5d42bd642', '2020-11-20', 'STATE BANK OF INDIA', 'ARMB', 'pradeep kumar agarwal', '', '9004422099', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35864, 'ee04efda-0f8e-4e36-bb3f-7db0a71dacdc', '2020-11-20', 'STATE BANK OF INDIA', 'ARMB', 'Mr. PRADEEP KUMAR AGARWAL & Mr. ANOOP KUMAR AGARWAL', '', '9004422099', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35865, '8ed91f9c-44e4-4e9b-8c53-7ce14748f1f6', '2020-11-20', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'Mr. V. M. MANOGARAN & Mr. M. KALAIVANAN', '', '8105567916', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35866, 'aa76c6c8-1c39-4506-bc97-5df694ea97b7', '2020-11-20', 'UNION BANK OF INDIA (ECORP)', 'KUNDAPURA', 'Mrs. SOWMYA. P. SOMAYAJI', '', '8105924579', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'BHASKAR'),
(35867, '808623e9-8877-450b-8a5d-4a1339fe519e', '2020-11-20', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Vanitha Shivaram', '', '9845365455', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'MANJUNATH'),
(35868, 'c6537ccc-34e6-45b3-a3f1-103a85faa3b2', '2020-11-20', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'V Satish', '', '9341232997', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35869, 'b8aef13a-4bd9-4c4e-a2b7-05f09aecc3b5', '2020-11-20', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. T. G. MALLI REDDY', '', '9884940688', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35870, '3c03f12f-5c28-4253-ba1e-1de31a0c8d6c', '2020-11-20', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mrs. B. V. AARATHI', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-20 02:35:24', '2020-11-20 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35871, '28779224-09ae-4b3c-b97b-0bcd8c0ce09b', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'M/s. HEBRON PROPERTIES PRIVATE LIMITED.,', '', '9036717880', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2300.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35872, 'e8c63df6-2fb5-4096-b37e-8f7ce74c6e5c', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'M/s. HEBRON PROPERTIES PRIVATE LIMITED.,', '', '9036717880', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2300.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35873, 'f0a6b325-c92e-4713-ad2e-6a5a23a5555e', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'M/s. HEBRON PROPERTIES PRIVATE LIMITED.,', '', '9036717880', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2300.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35874, '330e57e7-afb2-412d-97b4-309095be056e', '2020-11-21', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. VISHWANATHA REDDY. N. T', '', '9900606033', '', '', '', NULL, 2, NULL, '', '0.00', '', '5300.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'MANJUNATH'),
(35875, 'ae7f99ed-5559-4f8a-8285-9297c20f595e', '2020-11-21', 'UNION BANK OF INDIA', 'HARAPANAHALLI', 'Naveen.m', '', '9841127475', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'MANJUNATH'),
(35876, '6814ad02-7761-44d1-87c6-b2be9401c9ea', '2020-11-21', 'UNION BANK OF INDIA', 'HARAPANAHALLI', 'Mr. K. CHANDRAPPA', '', '9880735760', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'MANJUNATH'),
(35877, '1ab4e1ef-0a45-4858-a9e6-0e692aca0f6a', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Mr. VADLA RAMAKRISHNA', '', '7019987629', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'MANJUNATH'),
(35878, '0ff21b15-bf8d-48bd-a0be-416c72b8211f', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mr. V. SATISH', '', '9341232997', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'MANJUNATH'),
(35879, 'caee99cc-fcd5-49bb-8755-69322bc72bda', '2020-11-21', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', 'Mr. D. KESHAVA', '', '9448356185', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'MANJUNATH'),
(35880, '28fb2159-51bd-4731-b374-84f178fedd92', '2020-11-21', 'UNION BANK OF INDIA', 'AGB LAYOUT', 'Mr. K. N. RAMAKRISHNA', '', '9845823268', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35881, '14c470d2-b702-4891-9f2f-94625b1fc7cf', '2020-11-21', 'INDIAN BANK', 'HALASUR', 'Mrs. SOPHY SHALINI & Mr. V. S. JAYARAM', '', '9945029391', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35882, '16cbc983-ffde-426c-ab5d-4faaba820101', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mr. M. SHIVAKUMAR', '', '6362448832', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35883, '37bf2e2d-cc22-4864-932c-4bb253e592c7', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'VIJAYANAGAR', 'CHANNAVEER', '', '8073138209', '', '', '', NULL, 5, NULL, '', '0.00', '', '4000.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35884, '49a67b5f-593f-4ddb-9116-8d6de3f3d0d2', '2020-11-21', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'Mr. GOPALAKRISHNAN. K. S & Mrs. NARAMADA GOURI. G.', '', '7349511810', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35885, 'db48604a-e809-475c-b310-dac3f17b4516', '2020-11-21', 'UNION BANK OF INDIA (ECORP)', 'HRBR LAYOUT', 'HANUMANTHAGOUDA PATIL', '', '9900260123', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35886, '9e835a73-2ced-4421-a259-1c8de4cb8e1d', '2020-11-21', 'PUNJAB NATIONAL BANK', 'KORAMANGALA', 'Mrs. N. SUHASINI', '', '9739447787', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'BHASKAR'),
(35887, '47dcbcf7-4ea7-448f-ac9a-389d0cbf4a39', '2020-11-21', 'INDIAN BANK', 'AVENUE ROAD', 'Mr. MADAN GOPALAN. I. R. & Mrs. SHOBA GOPAL', '', '9902268776', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'BHASKAR'),
(35888, '41d47e07-c534-4c90-9d1d-3ba9b873910a', '2020-11-21', 'BANK OF MAHARASHTRA', 'CPC BASAVANAGUDI', 'MR. BABU GEEVARATHNAM & MR. K. PRABHAKAR NAIDU', '', '6360510369', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-21 02:35:24', '2020-11-21 02:35:24', 1, 1, 'BHASKAR'),
(35889, '0cdd2c07-cbe8-4b9e-b3b5-9577b99710b2', '2020-11-22', 'INDIAN BANK', 'RMV 2ND STAGE', 'Mr. MADDI REDDY CHALAMA REDDY', '', '9902887774', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35890, 'b4e19d3c-2bab-4185-8395-f51c1ae28773', '2020-11-22', 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', 'Mr. KESHAVAIAH', '', '9845245369', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35891, '135050fc-a72a-4114-a211-93f6761254a6', '2020-11-22', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. K. PRAKASH & Mrs. ASHA PRAKASH', '', '9448370725', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35892, '2cb62ea6-a726-4399-903d-0cfd4d91b9ad', '2020-11-22', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'srinivas', '', '9845482639', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35893, '9cf98e15-3610-44ce-b847-13f6f220bb12', '2020-11-22', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Dr. ASMA KAUSAR, Mr. C. K. COWSAR PASHA & Mrs. SALMA', '', '9880164764', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'MANJUNATH'),
(35894, '4143fed4-39cd-46b3-b7d3-568123aa32b5', '2020-11-22', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mr. S. VELMURUGAN', '', '7259019521', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'MANJUNATH'),
(35895, '762c8da2-6c72-460f-9d30-96dbe61c564e', '2020-11-22', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Mr. RAJESH SHANKARRAO MAJUMDAR', '', '9886037709', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'MANJUNATH'),
(35896, '1f4fe368-2e31-41fd-8fba-f9199e12127d', '2020-11-22', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mrs. J. VASUKI & Mr. J. NAGARAJ', '', '9900785271', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'BHASKAR'),
(35897, '517e22e7-f0b9-4f68-ba66-3440d86b848c', '2020-11-22', 'UNION BANK OF INDIA', 'NAVARANG', 'Mr. PANCHAKSHARAIAH. L. C & Mrs. CHAMPA. H. R', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35898, '386ff5e3-4d72-421f-a6eb-63e89e197c1c', '2020-11-22', 'INDIAN OVERSEAS BANK', 'COXTOWN', 'Mr. ABHIRAM NAYAK', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35899, '32693571-bbe6-46fe-b115-a5359693a42e', '2020-11-22', 'KARNATAKA BANK LTD', 'KORATAGERE', 'Mr. H. K. MAHALINGAPPA', '', '9448213936', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35900, 'cee2996e-18f0-4e96-a9a9-69756985eb4d', '2020-11-22', 'KARNATAKA BANK LTD', 'KORATAGERE', 'Mr. H. K. MAHALINGAPPA', '', '9448213936', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35901, 'f18915d1-7ec4-4737-9dd7-477c256f5f52', '2020-11-22', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'SIDDARAMAIAH', '', '9742319928', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35902, 'd48f7fa5-da86-49c3-b0b9-3c987fbfbddb', '2020-11-22', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mr. PRASHANTH. S. M & Mr. PRAMOD KUMAR. S. M', '', '9739808866', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35903, '5b3568bc-ffb5-4f4c-980b-aef6ee18a46f', '2020-11-22', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mrs. PANKAJA', '', '9483315437', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-22 02:35:24', '2020-11-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35904, 'a00c4e84-84fc-4dbd-a2fd-2f594f022e06', '2020-11-24', 'UNION BANK OF INDIA', 'J. P. NAGAR', 'M/s. BAGAMANE VENTURES PVT LTD., M/s. PRESTIGE ESTATES PROJECTS LTD., & Mr. NITIN BAGAMANE.', '', '9353237579', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35905, 'e37a00ec-4750-4c5e-a408-0929a8e4772a', '2020-11-24', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mrs. JAYALAKSHMAMMA', '', '8660899560', '', '', '', NULL, 3, NULL, '', '0.00', '', '1600.00', '500.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35906, 'db7e023d-a6bf-4186-b04d-ca998b7e2b79', '2020-11-24', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mrs. JAYALAKSHMI & Mr. RAMACHANDRA', '', '9741897762', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35907, '0eb0876a-12c6-49b0-b018-a3b94cb22b4e', '2020-11-24', 'UNION BANK OF INDIA', 'PES COLLEGE', 'alivelamma', '', '6363101515', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35908, 'fe5c955e-4372-4413-83f0-ad40c4783464', '2020-11-24', 'UNION BANK OF INDIA', 'PES COLLEGE', 'Mrs. ANURADHA HEMANTH & Mr. V. HEMANTHA KUMAR', '', '7337658066', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35909, '66ee8ae8-e327-4de3-9bbe-52eaf1b8e687', '2020-11-24', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mrs. H. VEENA', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'MANJUNATH'),
(35910, 'a053ceff-8af8-43cc-8741-e4587b89ed1c', '2020-11-24', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mr. S. R. HARSHA', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'MANJUNATH'),
(35911, '7925a8eb-ece1-4111-9ee7-0f550064d9cb', '2020-11-24', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'M/s. SUADELA CONSTRUCTIONS PRIVATE LIMITED.,', '', '9535441257', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'MANJUNATH'),
(35912, '861b2c62-b3ca-4e0f-a910-6a9603684b33', '2020-11-24', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mrs. VANITHA SHIVARAM', '', '9845365455', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'MANJUNATH'),
(35913, 'b7a5981e-e516-4b6a-b537-11943a2e81df', '2020-11-24', 'UNION BANK OF INDIA', 'RICHMOND TOWN', 'Mr. MANJUNATH. V. S', '', '9620955477', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'MANJUNATH'),
(35914, 'cd04915c-e85c-41be-b1c2-37ab4a7824fb', '2020-11-24', 'BANK OF MAHARASHTRA', 'CITY MARKET', 'Mr. N. B. CHANDRASHEKARAIAH & Mrs. K. MANJULA', '', '9900002050', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35915, '3e135ef9-908b-47d5-a151-43ef22ab8f0f', '2020-11-24', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. SREEDHAR KANDAGATLA', '', '9986081949', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35916, 'ee048c93-c366-4e8a-8123-5480c5bd8c07', '2020-11-24', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mrs mary prasad', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-24 02:35:24', '2020-11-24 02:35:24', 1, 1, 'BHASKAR'),
(35917, 'e646e1d3-8cbd-4fc5-a449-6e8f7a087f1c', '2020-11-25', 'UCO BANK', 'JALAHALLI', 'Mr. V. G. SRINIVAS MURTHY', '', '9986030197', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35918, '39000114-ca23-4d30-b591-58c179c913de', '2020-11-25', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. U. PRAVEEN KUMAR', '', '9343472360', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35919, '6fc55ffb-3700-4fc3-a6aa-970706571341', '2020-11-25', 'UNION BANK OF INDIA (EANDHRA)', 'LAKSHMIPURA', 'Mr. H. GANAPATHI', '', '9686444999', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35920, 'bd181d8e-2f69-4051-b6a4-dc0f6571895a', '2020-11-25', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. A. K. BALAKRISHNAN UNNY', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35921, '40288274-3c13-403a-bcc3-c23664109406', '2020-11-25', 'UNION BANK OF INDIA', 'HENNUR ROAD', 'AMAR', '', '7338525201', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35922, 'b6373e2f-b420-4baa-a1f9-046bbb339167', '2020-11-25', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'SHREERANGA PATIL', '', '9964065135', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35923, '275dd704-f16d-47eb-969e-e72b13d43f5e', '2020-11-25', 'INDIAN BANK', 'HALASUR', 'Mr. V. S. JAYARAM & Mrs. SOPHY SHALINI', '', '9945029391', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35924, '83c72554-2c20-456c-b10a-6118c8b131eb', '2020-11-25', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'RAJKUMAR', '', '9902626841', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35925, '083e27f5-5936-4759-a60d-ee7889bb03a2', '2020-11-25', 'INDIAN BANK', 'BROOKFIELD', 'T.v.ramkrishna', '', '9980945295', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'MANJUNATH'),
(35926, '03ed4e75-a9ea-4b39-944d-364030bf04fa', '2020-11-25', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Mrs. NITHYA. K & Mrs. NISHITHA. K', '', '9449420080', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'MANJUNATH'),
(35927, '7de74358-ca27-40b3-b213-049b12409d52', '2020-11-25', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mr. VIKAS APPAJI', '', '9880799884', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'MANJUNATH'),
(35928, '727cc765-ad38-44dd-8a54-b49c33c43cf5', '2020-11-25', 'INDIAN OVERSEAS BANK', 'BINNAMANGALA', 'naresh', '', '9844131651', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35929, '0ae4e357-87e5-4a9f-b458-971fd6cf60f4', '2020-11-25', 'INDIAN OVERSEAS BANK', 'BINNAMANGALA', 'latha', '', '9742695845', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35930, 'c259c6cb-9222-4864-ad4e-a803822a71ce', '2020-11-25', 'UNION BANK OF INDIA (ECORP)', 'KAMAKSHIPALYA', 'Mr. CHANDAN KUMAR. A. N', '', '9980809599', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35931, 'b6369535-ed3f-4978-8bd9-d97006bac876', '2020-11-25', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mr. MUNIKUMAR. G & Mr. VINOD. G', '', '9686448914', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1500.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35932, 'a515d883-8d76-4e33-8571-0295426e7f2f', '2020-11-25', 'INDIAN BANK', 'ELECTRONIC CITY', 'Mrs. PRAJWAL MATHIAS & Mr. SANTHOSH MATHIAS', '', '9880005120', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-25 02:35:24', '2020-11-25 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35933, 'ed2b2071-4b1b-4656-8630-f8ea73785132', '2020-11-26', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mr. VIJAYA KUMAR', '', '9164034840', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'BHASKAR'),
(35934, '973c8558-5b80-4ae8-8bbf-c32e1707ff15', '2020-11-26', 'BANK OF MAHARASHTRA', 'CITY MARKET', 'SUMAN LUNKAR', '', '9886213071', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'BHASKAR'),
(35935, '121d2ed7-dbc9-4bf5-b2bc-08698979a959', '2020-11-26', 'BANK OF MAHARASHTRA', 'CITY MARKET', 'R CHETAN KUMAR LUNKAR', '', '9886213071', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'BHASKAR'),
(35936, '02abf3b1-7f1e-4bb0-82ea-7b6c883f63e9', '2020-11-26', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'NAINA HEGDE', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'BHASKAR'),
(35937, 'd9b1f53c-ec65-45d4-b58d-0168bddd0886', '2020-11-26', 'UNION BANK OF INDIA', 'BANGALORE CITY', 'V GAYATRI', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'BHASKAR'),
(35938, 'a2211be7-863b-4c3e-8265-6d6d6bffc63d', '2020-11-26', 'UCO BANK', 'JALAHALLI', 'Jayaramu. M. H', '', '9740743885', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3800.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35939, '8205c695-26b5-4fd6-9ca7-4e9f96714fec', '2020-11-26', 'INDIAN BANK', 'KG ROAD', 'M/s. RAJARAJESHWARE BUILDCON PVT LTD.,', '', '7022603760', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'MANJUNATH'),
(35940, 'dffd7821-2336-44e8-a319-65e3a75eea6c', '2020-11-26', 'UNION BANK OF INDIA', 'CHANDAPURA', 'p.venkataswamy reddy', '', '9845172839', '', '', '', NULL, 2, NULL, '', '0.00', '', '10000.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'MANJUNATH'),
(35941, '69a65901-1542-40f5-abc6-7231c5cf9bbe', '2020-11-26', 'UNION BANK OF INDIA', 'CHANDAPURA', 'punitha h s', '', '7411221247', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'MANJUNATH'),
(35942, '9ac4d4c4-e59a-4dbd-b65d-f269cc9e13fe', '2020-11-26', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'jayachandra', '', '9844091720', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35943, '5ec88677-e66d-4b4f-8b26-b97b2f7be431', '2020-11-26', 'STATE BANK OF INDIA', 'RACPC', 'ajai', '', '8879221591', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2650.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35944, 'e7de7cd2-95ef-4fed-98d9-1537d45c554c', '2020-11-26', 'UCO BANK', 'JAYANAGAR', 'Mrs. PREMA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35945, 'ff6efaab-193a-417b-9222-e553484969b9', '2020-11-26', 'BANK OF BARODA (EVIJAYA)', 'GANGANAGAR', 'kumar', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35946, 'e5de4a84-b4fb-45b5-a03c-b332076fdd4a', '2020-11-26', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'kamala bai', '', '9845919837', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35947, 'e09ca154-80f9-449c-9dbe-114ea08ef6df', '2020-11-26', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'sujatha', '', '9036027182', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35948, '73792685-f190-457f-89f2-2a2e1f95298a', '2020-11-26', 'STATE BANK OF INDIA', 'RACPC', 'SUPRIYA SENGUPTA', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35949, '65f71bea-14b9-4d1b-a6c5-77bc51403814', '2020-11-26', 'INDIAN BANK', 'MALLESHWARAM', 'thirumalappa chowdary', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35950, '1dea8239-f90c-4678-bc85-ccad3bddc179', '2020-11-27', 'CANARA BANK', 'BALANAGAR', 'M/s. COUNTRY CLUB ( INDIA ) LIMITED.,', '', '9880767876', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-27 02:35:24', '2020-11-27 02:35:24', 1, 1, 'BHASKAR'),
(35951, 'ef8c3f3a-2df1-4ec8-8dc8-519aac613bdb', '2020-11-26', 'UNION BANK OF INDIA', 'CANTONMENT', 'Mrs. SAVITHRI', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-11-26 02:35:24', '2020-11-26 02:35:24', 1, 1, 'MANJUNATH'),
(35952, '819c9fce-41a9-474a-a3c0-5a0ff7ed8d43', '2020-12-12', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'Mr. B. S. RAMESH', '', '9449671007', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'BHASKAR'),
(35953, 'c85cdc74-30a8-4270-a4be-bdd75fc6df79', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Mr. C. V. REDDY', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35954, 'e6ecc419-c23d-46a0-b117-5f57a86b500f', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'Mr. ARUN HIRIANNAIAH & Mrs. DEVIKA. M. A', '', '9538468139', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35955, '15501e1e-efa0-4528-83f2-e4903bc38fe1', '2020-12-12', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'Mr. RAJU PREM AHUJA', '', '9880581854', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35956, 'ad975730-1301-4518-8913-4f0647660b24', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'mahalakshmi', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35957, 'd4755294-4102-4d01-9957-0d4d220ca93a', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mrs. PRATHIBA ARUN', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35958, 'e12c109a-8402-4977-8fd1-3cf7b66a3d3d', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mr. PRAVEEN KUMAR. G. S', '', '9886927654', '', '', '', NULL, 5, NULL, '', '0.00', '', '3200.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35959, '2e6115af-1dfa-49e0-b475-f91d970b4699', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'm', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35960, 'f3e87743-e392-4d60-a0c6-f2095091b039', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'a', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35961, 'de68da0b-1551-4570-a797-4d4cf9125741', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'g', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35962, '0e85ab2f-1390-4196-96f4-e7dc3a8e6bab', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'kj', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35963, 'cf913622-cb69-4062-a1c8-d9db1a7dc635', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'jg', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35964, '19fb0579-b227-4a3f-a13e-30179f0ef187', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'm', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35965, 'f6794be9-eeca-40fd-9fd4-afa9b72c973f', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mr. M. C. UMESH & Mrs. BHANUSHREE UMESH', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35966, 'd01620cc-39a7-464f-b537-409a89a71e05', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'KUDLU', 'Mr. D. K. MADHU', '', '9980601387', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35967, 'e31bdd8b-a13d-41ca-adef-01f202db3000', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'ULP KORAMANGALA', 'Mrs. USHA JAGANNATHA & Mr. JAGANNATHAN RAGHAVAN', '', '8094030888', '', '', '', NULL, 1, NULL, '', '0.00', '', '3000.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35968, 'ffd7b76e-5dd7-46c0-84a3-0970518c5c91', '2020-12-12', 'INDIAN OVERSEAS BANK', 'MALLESHWARAM', 'Mrs. SUSHILA. K. RAO', '', '9866071746', '', '', '', NULL, 0, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, NULL),
(35969, '93d05f26-6743-4789-b951-d4b983de1024', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'f', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35970, '0b7490be-9060-4cad-a1db-41162ac92fa4', '2020-12-12', 'STATE BANK OF INDIA', 'ARMB', 'Mr. AVANISH KUMAR OJHA', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35971, '0e732dc2-5e83-4de1-849d-75b6830d0da3', '2020-12-12', 'INDIAN BANK', 'RAJAJINAGAR', 'Mrs. A. R. SHARADAMANI', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35972, '80d62d8f-9751-42a9-ab79-34ca098a1e8b', '2020-12-12', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. KARIBASAPPA MAMADAPURA', '', '9964060547', '', '', '', NULL, 2, NULL, '', '0.00', '', '3000.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35973, 'ba047e23-9db0-4097-bfeb-3e7ab4c93400', '2020-12-12', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. T. MANIVEL', '', '7353778484', '', '', '', NULL, 2, NULL, '', '0.00', '', '3000.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35974, 'a8d4c665-ca61-4d6e-a313-f0db727fa168', '2020-12-12', 'UNION BANK OF INDIA', 'CHANDAPURA', 'Mr. RAMASWAMY. G', '', '9480941827', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35975, 'd49d029d-f9d7-45f5-ae42-b826afdb2022', '2020-12-12', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. N. NAZARUL HUSSIAN', '', '9739999314', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35976, 'a5b18cd7-8cf3-4291-895b-f9328dcddd4d', '2020-12-12', 'UNION BANK OF INDIA', 'JAKKUR', 'Mr. M. B. LINGARAJU', '', '9986330779', '', '', '', NULL, 5, NULL, '', '0.00', '', '4300.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35977, '67abd807-e61d-41f0-af15-256ab09615a9', '2020-12-12', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mr. S. RAGHOTHAMAN', '', '9902813696', '', '', '', NULL, 3, NULL, '', '0.00', '', '1000.00', '1000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35978, 'd17ce110-8d7d-4ab5-9cb4-ece319fdbea0', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. SRIDEVI. S', '', '9448844353', '', '', '', NULL, 3, NULL, '', '0.00', '', '2500.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35979, 'a53b977c-2d76-4971-85bb-9248efad5965', '2020-12-12', 'CANARA BANK (SYNDICATE)', 'SHESHADRIPURAM', 'Dr. S. RAJU & Dr. SHREYAS. R', '', '9036057837', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35980, '3ec8115d-c843-4b85-a431-8a30cad155af', '2020-12-12', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. SHIVASWAMY NIRANJANA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '4000.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35981, '561c6c29-ed66-4361-af45-afccad186ff5', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'RAJAJINAGAR', 'Mr. N. NARASIMHAMURTHY', '', '8088800999', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35982, '7d557c16-1ce8-43a9-9bda-ec5b3c5f49c5', '2020-12-12', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'Mrs. UMA', '', '9742607177', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35983, '44dd22b5-d846-4cb8-90aa-87fd79dfbcd9', '2020-12-12', 'KARNATAKA BANK LTD', 'INDIRANAGAR', 'Mrs. G. VANITHA', '', '9972454772', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'BHASKAR'),
(35984, '46697f00-c296-4da0-a1ba-357cd3d9784e', '2020-12-12', 'BANK OF MAHARASHTRA', 'CITY MARKET', 'Mr. PRAVEEN KUMAR BHANDARI', '', '9448001234', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'BHASKAR'),
(35985, '12766a1a-f6fe-4d1c-a5c3-3489b6258ac3', '2020-12-12', 'INDIAN BANK', 'J. P. NAGAR', 'Mrs. D. NANDINI & Mr. B. KIRAN', '', '9945012423', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'BHASKAR'),
(35986, 'd2d1b9b8-bf2d-45f7-ad6f-18ffc92dab65', '2020-12-12', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'M/s. KLASSIK ENTERPRISES PVT LTD.,', '', '9000980154', '', '', '', NULL, 1, NULL, '', '0.00', '', '4300.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(35987, '0c7e8a07-e013-44b0-a3c5-340bc37b711a', '2020-12-12', 'UNION BANK OF INDIA', 'PES COLLEGE', 'Mr. GOVINDARAJ. M', '', '9880650150', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35988, '9561b449-1fb2-4080-8540-d14eb0b3b3c0', '2020-12-12', 'UNION BANK OF INDIA', 'CHAMARAJAPET', 'M/s. V2. Holdings Housing Development Pvt Ltd 9980018143', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35989, 'a13f80d6-b645-4e44-9a4c-20d6512fbe10', '2020-12-12', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. SHARATH CHANDRA. B. M', '', '9738880685', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35990, '20dd6cf2-0583-42b0-8705-196f72851784', '2020-12-12', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'Mrs. K. SUJADHA', '', '9886329799', '', '', '', NULL, 2, NULL, '', '0.00', '', '5000.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35991, '554102ed-5571-4442-a558-f652685efffd', '2020-12-12', 'CENTRAL BANK OF INDIA', 'BTM LAYOUT', 'Mr. K. M. MANJUNATH', '', '9886553230', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35992, 'de0cfb8f-87b3-49af-9a2e-4f2b2b4d0e10', '2020-12-12', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'Mr. MOHAMED NOOR ULLAH SHAH', '', '9036957541', '', '', '', NULL, 2, NULL, '', '0.00', '', '3000.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH');
INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(35993, 'dcd8a801-fe70-45b6-8deb-cb15b9666e3d', '2020-12-12', 'UCO BANK', 'JAYANAGAR', 'Mr. V. VINOD KUMAR', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35994, '0024289c-5801-4094-bab8-e83f6e86644a', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Mr. N. GOPALA KRISHNA', '', '7204920315', '', '', '', NULL, 3, NULL, '', '0.00', '', '1500.00', '1500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(35995, '47bb01b0-11ef-404d-b11e-a2fbbe2d0556', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Dr. SHAMASUNDER ACHARYA HALADY & Mrs. PRASEETHA SHAMASUNDER 61 4665759', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(35996, '127cbb58-5abf-442a-8af5-61e591acdc23', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mr. A. V. VIJAY KUMAR', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35997, '5585fc0e-92db-44c4-9328-0c9852fbd99e', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'm', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35998, 'fec8f8e2-747e-4697-b7d8-21d3941a109c', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mrs. N. SRIDEVI', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(35999, '7909634e-9255-4555-aed1-ceaa57c5b7c2', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mr. S. RAJA MOHAMED & Mrs. S. CHAND BEEVI', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36000, '0bfab80f-96a3-4c5e-8fb8-36b963e9d5c7', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'j', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36001, 'c59508b5-7e9c-4237-8508-977b22ab8713', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'k', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36002, 'c9ae4f6e-dc79-4926-8544-93bced2d0506', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'j', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36003, 'fa5a7d70-79ab-427a-9910-f7733ecc72f9', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'hrfh', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36004, 'ae155a8c-cb79-4b94-b9fd-31981ca1779f', '2020-12-12', 'UNION BANK OF INDIA', 'NAVARANG', 'Mr. SYED ADAM', '', '8971602329', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36005, '7dd80b3a-1801-4abf-9374-7101d137d882', '2020-12-12', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'Mr. MOHAN KUMAR. N', '', '8105933345', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36006, '1c98c6c1-b304-435f-96e4-5e565d52d2b4', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'M/s. MITTAL TRADING COMPANY', '', '8880955874', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36007, '18ebe1d1-8500-4879-adb4-d2a05d0fe193', '2020-12-12', 'INDIAN BANK', 'KENGERI', 'Mr. VIJAYENDRA. K. HEBLIKAR', '', '9844706638', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36008, '692f8176-bf7b-4dd3-886e-125d1e1b2ad7', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mr. KARTHIKEYAN', '', '9611621282', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36009, '2211e162-d260-41fc-9bf9-2dffb4a3238f', '2020-12-12', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. P. S. SHIVA RAJ & Mrs. DEVIKA. S', '', '9845120277', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36010, 'f4665e84-3688-4ab4-875c-0094590e70fb', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SRINAGAR', 'M/s. GRIHA MITHRA CONSTRUCTION', '', '9481487778', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36011, 'ba5597f3-2d32-4ce8-b724-3b65d0f75e42', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'Mr. P. VIJAYA SEKHAR', '', '9538833220', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36012, 'b1c548be-7957-4999-8ea6-21d6fcb7b22b', '2020-12-12', 'INDIAN BANK', 'BTM LAYOUT', 'Mrs. SAFEENA ANJUM', '', '9845947890', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36013, 'bf11b62f-ecd9-4bba-b8a4-2163ab8c33db', '2020-12-12', 'UNION BANK OF INDIA', 'A-TEMPORARY', 'rgfg', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36014, 'ef9b2890-4ab8-4cbb-9b26-2334a5a9f9bc', '2020-12-12', 'STATE BANK OF INDIA', 'ARMB', 'Mr. B. CHAKRADHAR Mrs. B. C. SHANTHI', '', '9448139689', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'BHASKAR'),
(36015, 'f54eb799-a63c-4027-bdde-9792a4627ad9', '2020-12-12', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mr. GUMMADI NAGESHWARA RAO & Mrs. GUMMADI SARITHA', '', '7204144690', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36016, '64ef6e68-2d28-4b6c-b532-08c7602a9cbf', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'M/s. SIRI GROUP', '', '9448644049', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36017, 'a1ac4dcb-b51f-4941-867a-d0ba8cb6e80b', '2020-12-12', 'PERSONAL', 'BENGALURU', 'M/s. VRKP REROLLING MILLS PVT LTD.,', '', '8971950700', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36018, '47bf4fd1-f9c6-44ac-983c-15afb7ed1d06', '2020-12-12', 'PERSONAL', 'BENGALURU', 'M/s. VRKP REROLLING MILLS PVT LTD.,', '', '8971950700', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36019, 'eea6c2c8-ae6f-4b0d-8ea7-27b1174b846b', '2020-12-12', 'PERSONAL', 'BENGALURU', 'M/s. VRKP REROLLING MILLS PVT LTD.,', '', '8971950700', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36020, '949c7a85-0e9e-4e3f-ba42-5575c02eb9d6', '2020-12-12', 'STATE BANK OF INDIA', 'HLST', 'Mr. SATHEESH. E. M', '', '9916171172', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36021, '3007623f-49ec-4437-9bfd-9562aa6968ae', '2020-12-12', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'M/s. SNN PROPERTIES(LLP)', '', '9844357334', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36022, '121baa30-4726-4899-8409-39ca3dff870d', '2020-12-12', 'CENT BANK HOME FINANCE LIMITED', 'BENGALURU', 'grfg', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36023, 'b6bfdbae-be64-492d-aa51-fef37a51058e', '2020-12-12', 'KARNATAKA BANK LTD', 'MARATHAHALLI', 'Mr. HONNAPPA. R', '', '9060901304', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36024, '988f52be-6633-4b26-8107-3a3754ca3b83', '2020-12-12', 'INDIAN BANK (EALLAHABAD)', 'SAHAKARNAGAR', 'Mrs. G. PRAMILA', '', '9739442181', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36025, 'bd3e8f18-2393-4e66-8eb2-6df1b9563fe1', '2020-12-12', 'INDIAN BANK (EALLAHABAD)', 'SAHAKARNAGAR', 'Mr. G. NAGESWARA RAO', '', '9739442181', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36026, '99e6103a-33c3-4d4b-b6c6-1572d78c2fa5', '2020-12-12', 'INDIAN BANK (EALLAHABAD)', 'SAHAKARNAGAR', 'Mrs. G. PRAMILA', '', '9739442181', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36027, '4690696c-72b8-4fb5-be5a-da7e1d32738b', '2020-12-12', 'INDIAN BANK', 'KALYAN NAGAR', 'Mr. SUSHEELAMMA, Mr. BYRAPPA. C, Mrs. MANJULA & Mrs. ROOPA. C', '', '8861989808', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36028, 'f91c6d65-43fc-4cef-95b1-f434d5f5dc74', '2020-12-12', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mrs. NUSRATH BAIG, Mr. SAIFULLA BAIG & MASTER. KAIFILLA BAIG', '', '8610459693', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36029, '2fbd16cc-642a-4994-8689-1694404b1c20', '2020-12-12', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Mr. L. HARSHAVARDHANA', '', '9912223832', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36030, '1781c0b5-d3eb-4af4-a60d-a6fdcc7d1922', '2020-12-12', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Dr. LAVANYA', '', '9912223832', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36031, 'df5a414b-4368-44fa-9a4b-75c2d73b97fe', '2020-12-12', 'BANK OF BARODA', 'M. G. ROAD', 'M/s. RAJA HOUSING LTD.,', '', '7892810702', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '40000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36032, 'ab2af03b-9006-4d69-ba9b-e8eb5fea1f41', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'Mrs. A. S. SHEELA KUMARI, Mr. A. S. SUSHANTH & Mrs. VAISHNAVI. P. E', '', '9342233246', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36033, '32229e56-4a3d-4c11-b3bf-9d3bcf1862a3', '2020-12-12', 'INDIAN BANK', 'MALLESHWARAM', 'Mrs. T. R. MANJULA', '', '7892332119', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36034, '771f466b-e20d-40ea-925c-526b756d3883', '2020-12-12', 'INDIAN BANK', 'KALYAN NAGAR', 'Mr. HARRSHA KRISHNA MURTHY', '', '9632521830', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36035, '2507f4b7-14af-4b1f-957c-dc6da31d6a00', '2020-12-12', 'INDIAN BANK', 'SSI PEENYA IND ESTATE', 'M/s. ZONASHA ESTATES & PROJECTS', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36036, '90141fa3-7216-4fdc-b7c5-893a603d4edb', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'Mr. JAFFAR ABDUL RAHAMAN SHAIKH & Mrs. RESHMA SHAIKH', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36037, '1b8ff2a8-c4d4-4f0b-a5d5-276bb9027266', '2020-12-12', 'UNION BANK OF INDIA (EANDHRA)', 'HEBBAL', 'M/s. VAJRAM ORCHID', '', '9902051794', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36038, '68b354dc-77d4-46f6-832a-e6f017e57fbf', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Mr. M. ASHOK', '', '7892164158', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36039, 'd7bbf9c5-fc68-4e80-ae66-ccb0545c03c3', '2020-12-12', 'INDIAN BANK', 'MALLESHWARAM', 'Mr. V. VASUDEVA', '', '9341222191', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36040, 'b5bf48b3-12e0-47a2-971a-fbd99645e111', '2020-12-12', 'INDIAN BANK', 'COMMERCIAL STREET', 'Mr. S. N. SHIVASHANKAR', '', '9900238912', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36041, '7968ed56-6f81-4848-85b4-1ee6a403f2b3', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'Mr. T. RAJENDRA PRASAD', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36042, '5b8d1824-08f5-450f-8311-694923d32bc2', '2020-12-12', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Dr. M. MUNIRAJU & Mrs. R. KAVITHA RANI', '', '9481425771', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36043, 'e6592197-0f74-4c47-af41-e9b8e88fe768', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Mr. P. MURUGESHAN', '', '9880204951', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'BHASKAR'),
(36044, '2306bc83-8097-47d0-b6b1-9344c2c5f630', '2020-12-12', 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', 'Mr. MALLIKARJUNA. B. E & Mrs. GEETHAMMA. K. V', '', '9448417847', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36045, 'd5e44eee-c3cd-4c14-bca9-16962864907a', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mrs. M. SUNITHA', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36046, 'd6ff0fdd-732e-4154-84f2-6784daeddfca', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36047, 'f348a7d0-8077-4687-ac3e-b2bf6675b5ff', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36048, 'ef4a80aa-5ff0-4ed6-b685-1f6d383a32fa', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36049, '1242e133-63f5-4e39-bd10-7642a494f191', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36050, 'a2a7bf3d-dc1f-43d4-93d0-e204d95c377d', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36051, 'aba61e78-755a-4a5c-847b-fb9f8abe55c3', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36052, '3f413cff-7c8e-4efe-83b4-d8541a02f150', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36053, '30fdd545-bfa2-4ac9-a739-a74f2a65083c', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mr. M. SANJEEVA RAJU', '', '9902004057', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36054, '6aea5c70-8ebc-487b-9560-c839b61bc525', '2020-12-12', 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURCH ROAD', 'Mr. ANANTHA. A', '', '8892683942', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36055, '26c32a44-1273-4a0e-91d8-15d023d65c01', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'Dr. KIRAN. J & Dr. MAMATHA KIRAN', '', '9972423322', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36056, '8d9484d7-3657-4d94-96d0-1967c192bd87', '2020-12-12', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'Mr. D. G. JAYARAMA & Mrs. V. CHETHANA', '', '9964186999', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36057, 'bbb99991-df1f-4400-a066-9ca66c1283c3', '2020-12-12', 'KARNATAKA BANK LTD', 'INDIRANAGAR', 'MR. MURTHY', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36058, 'ee4624b3-dfa4-452c-b4e4-baef6ca21e0f', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Mr. G. HARI MURTHY @ GOPALAIAH HARIMURTHY, Mr. M. SANDEEP @ SANDEEP MOHAN & Mr. C. VIVEK', '', '9483181293', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36059, '79b63738-4ccb-4f73-af1e-cfeefe4c9ffc', '2020-12-12', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'Mr. THEJESH', '', '8904282272', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36060, 'c8008724-88fa-4aae-8fc6-10b208fcf42a', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SRINAGAR', 'M/s. SRIVARA CONSTRUCTIONS', '', '9986196649', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36061, 'c3a40965-e134-4850-b892-475c95726cc9', '2020-12-12', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'a', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36062, '00d76f7f-0d96-4e99-898c-629452451713', '2020-12-12', 'BANK OF BARODA', 'M. G. ROAD', 'Mrs. SHIBANI. R. DATTA', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '20000.00', '20000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36063, '8f6b3101-5729-4511-abac-fcd82cf51a1e', '2020-12-12', 'BANK OF BARODA', 'M. G. ROAD', 'Mrs. SHIBANI. R. DATTA', '', '9535930870', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '20000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36064, 'fe346f9e-b5ea-4376-8752-fc844fd30427', '2020-12-12', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'RAVEENDRA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36065, '93766a84-5d3e-4471-bf21-46a40dd0e12f', '2020-12-12', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'SOBHA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36066, '73ff542f-8e24-4e33-9794-2d470dadd505', '2020-12-12', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'M/s. SBR HABITAT LLP', '', '9903332457', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36067, 'f289b13a-cd21-48da-8621-a5ea1d0ccceb', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'WHITEFIELD', 'M/s. LINEN ART PVT LTD.,', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36068, 'a55de054-4358-447e-93f4-c8afd5d36f2e', '2020-12-12', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. M. S. GANGADHARA MURTHY & Mrs. S. ASHA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36069, '5c120263-6065-4306-b87c-b334d952f0a4', '2020-12-12', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. H. L. BYRAPPA', '', '8217719678', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36070, '846899b0-75e1-44f4-aa7e-8a73aad9b3fc', '2020-12-12', 'STATE BANK OF INDIA', 'J. P. NAGAR', 'Mr. PRAVEEN KUMAR', '', '8050607731', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36071, '9423d25b-d5f3-48dd-9e59-8d5910e3c17a', '2020-12-12', 'UNION BANK OF INDIA', 'KORAMANAGALA', 'Mr. T. D. RAMAKRISHNA', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36072, '7d6eccf3-f967-4e24-a0b3-ff33863caaba', '2020-12-12', 'INDIAN BANK', 'M. G. ROAD', 'M/s. SAI PROPERTIES', '', '8296270080', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36073, '736f5253-1046-4b44-9653-e414e814055e', '2020-12-12', 'BANK OF BARODA (EVIJAYA)', 'T. DASARAHALLI', 'Mr. K. B. THIPPE SWAMY', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36074, '701b4c58-0bfb-486e-95b8-3b895a29d1d8', '2020-12-12', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', 'Mrs. VASANTHAMMA & Mr. NARAYANAPPA', '', '0000000000', '', '', '', NULL, 6, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'VENKATESH'),
(36075, 'aa375d4a-89eb-4fc5-9c5d-ae1d1f1cd8ee', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'Mr. THEJEGOWDA. K. R. & Mrs. TULSI THEJEGOWDA', '', '9838136111', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36076, 'b18c8981-578a-4621-ac11-9e2ce2cb1d53', '2020-12-12', 'PERSONAL', 'BENGALURU', 'Mr. C. V. REDDY', '', '9880889548', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36077, 'f3ad34ba-bf42-4a40-96e5-0d1eeabf9fdb', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. THILAKAVATHI', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36078, '1a229a1a-b454-4588-a7da-2bc999f05a5f', '2020-12-12', 'UNION BANK OF INDIA', 'ULP SOUTH', 'Mr. CHIKKANNA & Mrs. BHAGYAMMA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36079, '477fa61f-de4d-4230-ba13-a1910ad3f551', '2020-12-12', 'UNION BANK OF INDIA', 'HSR LAYOUT', 'Mr. P. PRANEETH', '', '9886768164', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36080, 'cb7e8122-efc6-4181-979c-b5b022e6c805', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'Mr. MANJUNATHA. M', '', '9886292260', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36081, '5601e155-286a-4a9e-b940-b2bd1cd65098', '2020-12-12', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. K. ARUNACHALAM', '', '9845045316', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36082, 'dc21ab62-eb88-4048-9eb2-427910e6c4b0', '2020-12-12', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. RUDRAMUNI. T', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36083, '056fb24e-d398-44eb-a5fa-1f05abdb2c16', '2020-12-12', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. B. M. KRISHNA', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36084, 'b78d011c-f842-4ae5-a7ab-5a8f29d0abf8', '2020-12-12', 'BANK OF BARODA', 'K. G. ROAD', 'Mr. SURENDRA', '', '9900996699', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36085, '0b6416a7-1203-4199-ba54-ecd083d26a0f', '2020-12-12', 'BANK OF BARODA', 'K. G. ROAD', 'MR. SUNDER', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36086, '493900ed-12aa-468c-8faa-82e9463deb53', '2020-12-12', 'UNION BANK OF INDIA', 'YELAHANKA', 'Mr. MANJUNATH REDDY. S', '', '9480580240', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36087, 'f2a61344-b821-4c4f-838f-40b3075e8baa', '2020-12-12', 'UNION BANK OF INDIA', 'YELAHANKA', 'Mr. V. N. RAMESH & Mrs. R. SAVITHRI', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36088, '5617e12e-45b6-49c7-8a63-d4df13fd9b06', '2020-12-12', 'UNION BANK OF INDIA', 'DOMLUR', 'M/s. BANGALORE DEVELOPMENT AUTHORITY.,', '', '9742151333', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36089, '787d5de9-21a2-42cb-8098-917f4b58374a', '2020-12-12', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. SANTHOSH KUMAR. K', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36090, '8e973b1a-e0e4-4a3b-a115-47b90ed43d94', '2020-12-12', 'INDIAN BANK', 'KENGERI', 'Mr. CHAKRAPANI & Mr. V. N. SIMHA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36091, 'c0eea392-04a8-43af-bf40-ebaf25e4880c', '2020-12-12', 'INDIAN BANK', 'ELECTRONIC CITY', 'Mrs. NETRAVATHI. M & Mr. PRABHAKARA.H.', '', '9241130557', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36092, '5f205802-a7eb-44e4-ba01-2fb9f1741024', '2020-12-12', 'INDIAN BANK', 'HALASUR', 'Mrs. PRAMILA M. SHETTY', '', '9845026376', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36093, '7e643d99-6c9e-49f5-a87f-c80551bbdf6f', '2020-12-12', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'M/s. RAJA HOUSING LTD.,', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36094, '92c10b39-4caf-4ed7-b6ec-a48bdea57bd5', '2020-12-12', 'UNION BANK OF INDIA', 'BVK IYANGAR ROAD', 'Mr. SAMPATH KUMAR & Mrs. VEERAMMA. R', '', '9448065577', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36095, 'f24fc84d-54c9-4a49-8bb0-42666ba47238', '2020-12-12', 'UNION BANK OF INDIA', 'RAJAJINAGAR', 'M/s. SURFA COATS BANGALORE (LTD).,,', '', '9901667133', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36096, '1e5f878f-ba42-4684-a876-079e9a778e46', '2020-12-12', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'M/s. PRESTIGE ESTATES PROJECTS LTD & M/s. ANUSHKA INVESTMENTS', '', '9972980555', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36097, '937550e3-e3f0-4e23-81b6-0361f15ffeee', '2020-12-12', 'UNION BANK OF INDIA', 'AGB LAYOUT', 'Mr. K. N. RAMAKRISHNA', '', '9845823268', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36098, '443b3ad3-9186-4afe-8729-b2a4000df573', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'M/s. ASHWASURYA REALITIES INDIA PVT LTD.,', '', '9448372393', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36099, 'be55d0e9-3bf3-42b7-bde8-db2157697624', '2020-12-12', 'UNION BANK OF INDIA', 'VIJAYANAGAR', 'Mrs. BHAGYALAKSHMI. A', '', '9008028611', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36100, '2b94ee99-0bf1-47ce-96c5-42b38eb2f7cb', '2020-12-12', 'UNION BANK OF INDIA', 'DOMLUR', 'Mrs. JACQUALINE DEEPANJALI NELSON', '', '9008001787', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36101, 'c54f1b43-3ebd-4024-acbe-f9ac1afd8276', '2020-12-12', 'INDIAN BANK', 'JAYANAGAR', 'Mr. A. R. SRINIVAS H U F & Mr. A. S. TEJAS', '', '9845357598', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36102, 'b1febe14-277a-4c65-b11f-ea60303c185a', '2020-12-12', 'INDIAN BANK', 'KORAMANGALA', 'Mr. PRAVEEN. M. JOIS', '', '9945677599', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36103, 'e02ccf9e-80cb-43ed-b5db-656f875bc865', '2020-12-12', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. PRADEEP VEDAGIRI & Mrs. DIVYA YELLENKI', '', '9886426130', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36104, 'f312a8b9-dd8c-4725-98dc-8005c881a7b8', '2020-12-12', 'UCO BANK', 'JAYANAGAR', 'MISTY CHARM', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36105, '51c632c6-9151-4320-a519-3da8fcf9e319', '2020-12-12', 'CENTRAL BANK OF INDIA', 'YELAHANKA', 'Mr. ANUPAM KUMAR SINHA & Mrs. PAYAL SINHA', '', '9900058178', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36106, '14ec14ea-7f3c-4d48-9744-5fbb5f5a3a4e', '2020-12-12', 'UNION BANK OF INDIA', 'HENNUR ROAD', 'Mr. M. S. VINAYAKA HEGDE', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36107, 'e7141a5a-d0e3-4934-b3e0-2a2224c94fb5', '2020-12-12', 'UNION BANK OF INDIA', 'JAKKUR', 'Mrs. ANJALI. B. SHETTY & Mr. BHAVANI SHANKAR. K. SHETTY', '', '9916542299', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36108, 'ca1e3980-5b53-4b54-a91d-0ee9129a49c6', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'ULP KORAMANGALA', 'Mr. S. SURESH', '', '9341122659', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '6000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36109, '4454f8f2-e17f-48cd-b13f-382a162231d9', '2020-12-12', 'STATE BANK OF INDIA', 'ARMB', 'Mr. KARTHIK RAJU', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36110, '2cd7b1da-eb63-495c-a2a5-887621696b7f', '2020-12-12', 'STATE BANK OF INDIA', 'RACPC', 'M/s. GREEN MANSHION BUILDERS', '', '9654100829', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2700.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36111, '62a529ef-7874-465e-ac30-e11283612060', '2020-12-12', 'INDIAN BANK', 'KORAMANGALA', 'M/s. PRESTIGE ESTATE PROJECTS LTD.,', '', '6364915162', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36112, '1c856c2e-d54b-4874-a19e-fdc7d70ac417', '2020-12-12', 'UNION BANK OF INDIA', 'DOMLUR', 'Mr. SUBBIN BASTIAN & Mrs. SUSAN MARIA SUBBIN', '', '8095953289', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36113, '716bf157-79c4-4221-b543-aab623f84eaa', '2020-12-12', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mrs. VEENA. J', '', '9448532966', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36114, 'f77fcbd0-099e-46d4-b308-3c159e3a5c29', '2020-12-12', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. S. RAJESH', '', '8431603168', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36115, '6e4345e6-d054-46c5-ab23-e4c4fb63fcd7', '2020-12-12', 'UNION BANK OF INDIA', 'HSR LAYOUT', 'Mr. PRADEEP KUMAR JAMPA', '', '9686699029', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'MANJUNATH'),
(36116, 'a61dbb3f-880f-4afe-8642-a6f104034819', '2020-12-12', 'INDIAN BANK', 'KALYAN NAGAR', 'Mrs. MANJULA. M', '', '9035752180', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36117, 'b57d3f95-033d-487e-beef-7cc8b14b4d70', '2020-12-12', 'UNION BANK OF INDIA', 'VIJINAPURA', 'Mr. NAZIR AHMED', '', '9036572643', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36118, '8647db4c-75bd-40e9-9e30-84776681762c', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'BYADARAHALLI', 'Mrs. PADMA GURURAJAN', '', '9845095715', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36119, '4a458244-c70c-4966-9cfd-7d900f99b40e', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'Mr. KRISHNA MURTHY. K. A', '', '9900205944', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36120, '736c58a6-f6d3-4166-9262-b56064e3dc26', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'Mr. D. L. PRASAD', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36121, 'a549d7e1-bd68-49ed-aba1-d87c3fc35e67', '2020-12-12', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'Mr. D. L. PRASAD', '', '9880696694', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36122, '469c70e5-3a90-41aa-a1bf-9e662f9c0038', '2020-12-12', 'KARNATAKA BANK LTD', 'NELAMANGALA', 'sujatha krishna', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-12 02:35:24', '2020-12-12 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36123, 'c6241122-dee1-4ee8-a0b3-46522a82b03f', '2020-12-14', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. J. PRAVEEN KUMAR SINGH & Mrs. R. SUMAN', '', '7259649914', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36124, '8bada6e0-566c-457f-ae08-c8a62a5ccb93', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'SAHAKAR NAGAR', 'Mrs. SOWJANYA VORUGANTI', '', '9885518550', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36125, 'ab9f9f35-0163-44e0-a515-8de349ea287d', '2020-12-14', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'aditya tranquil', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36126, '3dd3b7a3-46b0-49e0-a978-ef3467c1c679', '2020-12-14', 'INDIAN BANK', 'SSI PEENYA IND ESTATE', 'Mr. G. S. SATHYA MURTHY', '', '9845256298', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36127, '051eaed3-0baa-4dbc-a82b-803c6108f07a', '2020-12-14', 'INDIAN BANK', 'SHESHADRIPURAM', 'Mr. NARAYANASA', '', '9980539194', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36128, '827a9731-aebd-4305-a63d-eff35d9cdf19', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Mrs. B. V. AARATHI', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36129, 'dff011f9-14db-4d51-8acf-492d64fa88d3', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36130, '90660615-4036-4f81-a369-688b3f68102b', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36131, '898a013d-a932-45f5-91cc-05b217184d2f', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36132, 'e94c960f-da8a-42e9-ae52-cf245307fb88', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36133, '44bad41c-b591-4461-9b42-769526419328', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36134, 'eef1e2cd-3c5a-400a-99bb-72630df1a22a', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36135, '21652fb8-6cf0-4f66-9979-1a695edd05e1', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36136, 'e911f8be-8fba-4738-aaa3-4a613c090bcb', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36137, '99a1cdc3-266a-40d0-b896-ac086e359360', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36138, '8759d27c-2b98-49ac-98c7-023ebcfb0a68', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36139, '13b0af7b-3f7c-4b81-8bdf-24408fb8e60e', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MALLESHWARAM', 'Mr. D. V. HARISH', '', '9980333555', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3180.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36140, '3ca1d1af-80aa-4d97-aff6-f9f48be5d3a2', '2020-12-14', 'KARNATAKA BANK LTD', 'NELAMANGALA', 'Mrs. ANUSUYA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36141, 'e6ec328f-5298-4314-ac60-ebc4037a5be6', '2020-12-14', 'KARNATAKA BANK LTD', 'NELAMANGALA', 'Mr. U. S. NARASIMHA MURTHY', '', '9916956144', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36142, '35782d6f-a4e9-481c-90b3-b19861248bd1', '2020-12-14', 'KARNATAKA BANK LTD', 'NELAMANGALA', 'Mr. R. NARENDRA', '', '9980043504', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36143, 'c62bcca6-4a16-43f4-ae14-11bc39c11e1b', '2020-12-14', 'INDIAN BANK', 'NTY LAYOUT', 'Mr. HASMUKHLAL AMRUTLAL PATEL & Mr. PATEL RAMESH AMRUTLAL', '', '9448454249', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36144, 'fe3a6c94-f4e5-4bc8-9b7b-e0279919c18b', '2020-12-14', 'UNION BANK OF INDIA', 'ASSET RECOVERY BRANCH', 'Mrs. PADMA. K. BHAT', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36145, '1d4f437d-0c32-48de-be72-5a77323c0a24', '2020-12-14', 'UNION BANK OF INDIA', 'ASSET RECOVERY BRANCH', 'PADMA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36146, '7fb6b7b3-2737-451b-a650-eab76761213a', '2020-12-14', 'INDIAN BANK', 'DODDABANASWADI', 'M/s. DS MAX PROPERTIES LTD.,', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36147, '0622810c-00cd-4ba7-bc0d-73f057bfbb91', '2020-12-14', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. R. SHANKARAGOWDA PATIL', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36148, 'e3283917-860e-49e5-b557-7eee5495fee5', '2020-12-14', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. SHANKARAGOWDA. R. PATIL', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36149, '15b7f460-4171-4521-9a44-29df2910a42f', '2020-12-14', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mr. SHANKARAGOWDA PATIL', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36150, 'c8276a36-733f-4ec8-b608-a2af3defe82f', '2020-12-14', 'UNION BANK OF INDIA', 'JAYANAGAR', 'M/s. CONCEPT CITY DEVELOPERS.,', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36151, 'b17ae937-e45d-41fd-a6d5-e419ccf3c107', '2020-12-14', 'UNION BANK OF INDIA', 'JAYANAGAR', 'M/s. CONCEPT CITY DEVELOPERS.,', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36152, 'd28a5415-8c2d-4886-976a-c2b19fea9840', '2020-12-14', 'UNION BANK OF INDIA', 'JAYANAGAR', 'M/s. CONCEPT CITY DEVELOPERS.,', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36153, '70c2539a-302c-4dc1-8029-be5869ec79a0', '2020-12-14', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mrs. M. RENUKA', '', '8970897933', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36154, 'f18128d6-101e-469d-9567-875aae4d4b27', '2020-12-14', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mrs. M. RENUKA', '', '8970897933', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36155, '741e4f26-a335-4c59-b0b7-5748b7a25c97', '2020-12-14', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mrs. RENUKA & Mr. M. VENKATESHULU', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36156, 'e7d834e8-59d2-408d-b19b-f5c5d74f2a41', '2020-12-14', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mrs. M. RENUKA', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36157, '2436aa37-c525-4c5d-a2f7-71c2d9205015', '2020-12-14', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mrs. M. RENUKA & Mr. M. VENKATESHULU', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36158, '6bbb3a6b-5202-4f9c-b1ea-f1df3964ed33', '2020-12-14', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mrs. RENUKA', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36159, '1298278f-0923-4ed9-bd72-6332d0ae0fe2', '2020-12-14', 'INDIAN BANK', 'ELECTRONIC CITY', 'Mrs. MARYAMMA THOMAS', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH');
INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(36160, '6514fd1a-d879-46d3-b0b1-2c144719c660', '2020-12-14', 'STATE BANK OF INDIA', 'HESARAGHATTA ROAD', 'Dr. NARAYANA. S. K', '', '7411698320', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36161, 'f8476765-7ac5-4c99-ada3-52dfeeabc71a', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'VIJAYANAGAR', 'Mrs. PADMA. R. KUMAR & Mr. R. S. RAVISHKUMAR', '', '9449671007', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36162, '4914ff2e-425c-49b9-8272-1378b8dd0229', '2020-12-14', 'STATE BANK OF INDIA', 'RACPC', 'CHANDINI', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1500.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36163, 'c17c9603-477a-4238-94a6-b54e2a2f48b7', '2020-12-14', 'STATE BANK OF INDIA', 'RACPC', 'M/s. BANGALORE DEVELOPMENT AUTHORITY', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36164, '8779e677-7cac-4bc3-93c6-43207237eb19', '2020-12-14', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Dr. K. RAMESH & Mrs. CHANDRAKALA', '', '9448700818', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36165, '753acd3d-9f01-4b5e-a941-1b97f55833d5', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'MYSORE ROAD', 'Mr. ASHFAK NASIR SHARIF & Mrs. HAFSA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36166, '007261c0-8921-4cd1-8018-8b91a5a340fb', '2020-12-14', 'INDIAN BANK (EALLAHABAD)', 'JAYANAGAR 9TH BLOCK', 'Mr. B. GANGADHAR', '', '9448019016', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36167, 'bccf1f58-ba48-424e-af6d-e23cc7f4a9df', '2020-12-14', 'UNION BANK OF INDIA', 'SRINAGAR', 'M/s. THERMODYNE BAKERY & INDUSTRIAL EQUIPMENTS PVT LTD.,', '', '9964911110', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'MANJUNATH'),
(36168, 'ddb779dd-8cc7-4721-aa7b-56fc392c0916', '2020-12-14', 'UNION BANK OF INDIA (ECORP)', 'CHANNENAHALLI', 'Mr. R. JAGADEESH', '', '9945844882', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36169, '7b9f65e8-15af-4121-a282-8c0aa6eb7694', '2020-12-14', 'INDIAN BANK', 'NTY LAYOUT', 'M/s. RAJALAKSHMI SAW MILL', '', '9845654888', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36170, '663f235b-92b0-4128-a9bd-72a46bc7ee0f', '2020-12-14', 'INDIAN BANK', 'K. R. PURAM', 'M/s. BANGALORE DEVELOPMENT AUTHORITY', '', '9740189101', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36171, 'fa883d9c-498c-4c8a-a325-a6084c58d70e', '2020-12-14', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'narayanamurthy', '', '9945898249', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36172, '66a3e6c3-a469-4302-95fb-483896e8dd75', '2020-12-14', 'CENTRAL BANK OF INDIA', 'IISC', 'Mr. TRIMURTHY. P & Mrs. T. K. VISHALAKSHAMMA', '', '9945605535', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36173, '73f1ef14-671a-496f-a9da-5f8dab0f7fa5', '2020-12-14', 'PERSONAL', 'BENGALURU', 'Mrs. MIRA MALLAPUR', '', '7483540315', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'BHASKAR'),
(36174, '1658c6bc-4329-4369-8bc4-fdf908ff2717', '2020-12-14', 'UNION BANK OF INDIA', 'HEBBAL', 'Mr. K. M. M. ABDUL KADAR', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36175, 'a6f2270c-bc74-4635-a364-b8f28a7251e8', '2020-12-14', 'STATE BANK OF INDIA', 'KORAMANGALA', 'M/s. ACTO PROJECTS PRIVATE LIMITED', '', '8553333565', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2700.00', 1, 0, '0000-00-00', '', '2020-12-14 02:35:24', '2020-12-14 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36176, '77601285-074e-4ca7-a239-d2871e3dbbc5', '2020-12-15', 'UNION BANK OF INDIA (EANDHRA)', 'HEBBAL', 'seshareddy', '', '9742695845', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36177, '61f55811-f3e2-48ac-99ae-00e92970604b', '2020-12-15', 'UNION BANK OF INDIA (EANDHRA)', 'HEBBAL', 'seshareddy', '', '9742695845', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36178, '0f2bb43c-235a-4a6e-b5a6-99213eea652e', '2020-12-15', 'INDIAN BANK', 'BASAVANAGUDI', 'Mr. K. L. ANAND', '', '9844018332', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'BHASKAR'),
(36179, 'afdba75c-c2f1-4fcd-b5ca-b7c20f048062', '2020-12-15', 'UNION BANK OF INDIA (ECORP)', 'HEBBAL', 'Mrs. ASHA', '', '9035822899', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36180, 'b0611b44-e686-474f-aa84-21999879f4be', '2020-12-15', 'UNION BANK OF INDIA', 'HEBBAL', 'v.umadevi', '', '9632827306', '', '', '', NULL, 5, NULL, '', '0.00', '', '3000.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36181, 'bfb8532b-a6d6-4eb0-834d-bfd894389cf3', '2020-12-15', 'KARNATAKA BANK LTD', 'IFB', 'Mr. R. MURTHY', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36182, '76871949-eb78-4706-84cb-bb642d2fc236', '2020-12-15', 'STATE BANK OF INDIA', 'IISC', 'dr arun', '', '9686816719', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '1500.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36183, 'f76a983b-09b3-4589-b62b-fc6a00915ca5', '2020-12-15', 'INDIAN BANK (EALLAHABAD)', 'R. T. NAGAR', 'Mrs. S. PUSHPA', '', '9535612549', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'MANJUNATH'),
(36184, '290f9b0e-467c-4c86-8ac9-b087ff48ad4a', '2020-12-15', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'KAPIL SINGHI', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'BHASKAR'),
(36185, '7e7b0dca-4dec-403c-8453-60bffd537e95', '2020-12-15', 'INDIAN BANK', 'CHENGALPATTU', 'DR R ANITA & DR N SIDDHARTH', '', '9444379359', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'BHASKAR'),
(36186, '1731bf51-ceb1-4d17-bb75-ac06d8c2e4d9', '2020-12-15', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Dr. ASHOK GURUDAS', '', '9980098749', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'BHASKAR'),
(36187, '908c55b1-f5f3-4039-826b-86c4623dc9db', '2020-12-15', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'M/s. BHAGAVAN TIMBERS', '', '9740700998', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'BHASKAR'),
(36188, '04fdb7a0-91bf-4238-9e22-009f02ddba69', '2020-12-15', 'UNION BANK OF INDIA', 'BVK IYANGAR ROAD', 'Mr. K. R. VENKATESWARA RAO, Mr. K. V. RAGHAVENDRA, Miss. V. RAJESWARY, Mrs. BHAVANI. K, Miss. PUSHPHALATHA. K. N, Miss. NALINI & Mrs. MANJULA. R', '', '9341816661', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-15 02:35:24', '2020-12-15 02:35:24', 1, 1, 'BHASKAR'),
(36189, 'e674157d-3af1-42f5-b925-b6f9005fb6a6', '2020-12-16', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Ms. MEHJABEEN. A 0⁰00000⁰00', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'MANJUNATH'),
(36190, 'a928b1e3-5afa-4f2b-9b6b-44cd0c3eb11a', '2020-12-16', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mrs. ROOPA', '', '9448455690', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'MANJUNATH'),
(36191, '9bce9c3b-ed7f-4244-b040-9349ce552ba4', '2020-12-16', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mrs. ROOPA DODDAMANI', '', '9448455690', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'MANJUNATH'),
(36192, 'c39df51b-0bd6-4c2e-b5fa-78a57c1ffa53', '2020-12-16', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'M/s. PRATHAMM DEVELOPERS.,', '', '9108682516', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36193, '8b0b4b53-1c08-4d47-b9cb-9b07650ec4c7', '2020-12-16', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mrs. SARITA GUPTA', '', '9243136211', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36194, '9f35860f-1e5c-41d4-a31c-066664e33f4e', '2020-12-16', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', 'Mr. GANGAIAH', '', '9844192879', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'MANJUNATH'),
(36195, '62429e04-5a69-47c5-ac02-9ef9f7e1d117', '2020-12-16', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'harshad vora', '', '8095555840', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36196, 'bf599adb-63d9-4da3-a3c7-cf204e91eb29', '2020-12-16', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mrs. B. P. GEETHA', '', '9880191995', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36197, 'b0abf3bb-b42c-4958-a58b-70b57687d520', '2020-12-16', 'INDIAN BANK (EALLAHABAD)', 'VIJAYANAGAR', 'vazeeruddin', '', '9036422412', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36198, '415bb9bf-5869-468d-ae61-4e71f561ab89', '2020-12-16', 'UNION BANK OF INDIA', 'NAVARANG', 'Mr. SHIVAKUMAR. Y. M & Mrs. DAKSHAYANAMMA', '', '9448560753', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36199, '27697d2a-c191-4e83-9d9c-dfdf838d7d56', '2020-12-16', 'KARNATAKA BANK LTD', 'HESARAGHATTA ROAD', 'Mr. G. SATISH KUMAR', '', '9880666554', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36200, '7334bbb6-3b20-44cf-8430-a4d2727a3748', '2020-12-16', 'BANK OF MAHARASHTRA', 'WORLI MUMBAI', 'Ms. KAVITHA BABU', '', '8050088465', '', '', '', NULL, 4, NULL, '', '0.00', '', '7500.00', '6250.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'BHASKAR'),
(36201, '60a3974f-3c74-42d3-93cb-c2c3ecdc6570', '2020-12-16', 'BANK OF MAHARASHTRA', 'WORLI MUMBAI', 'GOVIND SHIVKUMAR', '', '8050088465', '', '', '', NULL, 4, NULL, '', '0.00', '', '5000.00', '6250.00', 1, 0, '0000-00-00', '', '2020-12-16 02:35:24', '2020-12-16 02:35:24', 1, 1, 'BHASKAR'),
(36202, 'a488794c-53c8-493d-9955-939b586caf39', '2020-12-17', 'INDIAN BANK', 'J. P. NAGAR', 'Dhaval Patel', '', '9742897979', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36203, 'c039c68f-ab17-4c8a-8ea6-f2261f0f9327', '2020-12-17', 'INDIAN BANK', 'J. P. NAGAR', 'Dhaval Patel', '', '9742897979', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36204, 'ee2613d6-07da-422d-bd01-d9c70b52724f', '2020-12-17', 'INDIAN BANK', 'J. P. NAGAR', 'Mr. RAMESH V. PATEL & Mrs. KALA BEN PATEL', '', '9742897979', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36205, '286d5b39-5562-4761-817f-75f7822d77bd', '2020-12-17', 'BANK OF BARODA', 'JAYANAGAR', 'Mr. P. M. MURUGAN', '', '9844906042', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36206, '1a112ed5-ec45-4254-b449-3ac5a8663b0f', '2020-12-17', 'INDIAN BANK', 'AVENUE ROAD', 'Mr. R. KRISHNA MURTHY & Mrs. MANJULA. K', '', '9538026001', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36207, '3291951b-066a-4ba1-85d4-542be2aab2f3', '2020-12-17', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Mr. N. CHANDRASHEKAR', '', '7892824892', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36208, '10bfd86f-0458-4580-bba9-6e9c8783de91', '2020-12-17', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'Mr. K. R. BHATI', '', '9448225101', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36209, 'eb56d6c9-b4f5-42b8-87f0-d219a5a37d83', '2020-12-17', 'INDIAN BANK', 'IND RETAIL PROCESSING CENTRE', 'Mrs. GEETHA. J. KADUR', '', '8088530434', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'MANJUNATH'),
(36210, '0282fb7d-3bd1-4f6f-9a01-36d357178321', '2020-12-17', 'STATE BANK OF INDIA', 'IISC', 'Mr. C. MANJUNATH', '', '9717814790', '', '', '', NULL, 1, NULL, '', '0.00', '', '2700.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36211, '2f33f422-cde7-462b-b483-c08b07781f63', '2020-12-17', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. G. Y. MURTHY', '', '9844000220', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36212, 'e35a5051-5df7-43d5-b243-7678350db127', '2020-12-17', 'UNION BANK OF INDIA (EANDHRA)', 'RAJARAJESHWARI NAGAR', 'Mr. RAGHAVENDRA PRASHANTH. M', '', '9880290001', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36213, '6db32569-0bca-49a1-baf0-ccbe9227039c', '2020-12-17', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'HALASUR', 's.basavaraju', '', '9844488550', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36214, '6839df67-7583-4a48-9011-bc6b08b6b42d', '2020-12-17', 'UNION BANK OF INDIA (EANDHRA)', 'KAGGADASAPURA', 's.ramachandra', '', '8197800585', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36215, '80be4101-1d31-42a1-b0db-50796372c841', '2020-12-17', 'STATE BANK OF INDIA', 'IISC', 'Mr. C. PRAKASH, Mrs. NIKITHA & Mr. DARSHAN', '', '9980157790', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36216, '31589beb-cbff-43fd-8b06-261860650aa2', '2020-12-17', 'INCOME TAX', 'BENGALURU', 'Mrs. PAMELA OBEROI', '', '9845028255', '', '', '', NULL, 5, NULL, '', '0.00', '', '5000.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36217, '2b6be957-612b-4439-ab15-1a8b46f40ac9', '2020-12-17', 'UNION BANK OF INDIA', 'PES SCHOOL OF ENGINEERING', 'SLV STRUCTURES.,', '', '8217669082', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36218, '5da14fe9-0e14-4bf0-81ad-df576d952e4a', '2020-12-17', 'STATE BANK OF INDIA', 'IISC', 'Mr. C. PRAKASH, Mrs. NIKITHA & Mr. DARSHAN', '', '9650655980', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-17 02:35:24', '2020-12-17 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36219, '6d7e9269-355d-498d-ab0b-0180d251c550', '2020-12-18', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mr. ENABOTHALA VAMSHI KRISHNA & Mrs. NATTE SHARMILA', '', '7259786398', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'MANJUNATH'),
(36220, '74598606-404a-4d60-99e9-6aef053af38a', '2020-12-18', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mr. B. VIJAY KUMAR', '', '9164400949', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'MANJUNATH'),
(36221, 'e2c1f737-8529-4878-a941-d72aa9e927e0', '2020-12-18', 'UNION BANK OF INDIA', 'PES COLLEGE', 'Mrs. SHOBHA BAI', '', '9900499882', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36222, '4368550b-8218-4b5f-82ac-76d2f3855143', '2020-12-18', 'STATE BANK OF INDIA', 'RACPC', 'Mr. JAYANTH. R & Mrs. KUMARI. H. R. D', '', '9900585456', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36223, '243ee782-77fd-4ae6-91a0-3fe8e663e91f', '2020-12-18', 'INDIAN BANK', 'ARMB', 'Mr. JUTHARAM', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36224, '2a2683cb-2e8b-46ce-8f05-7676d06d92b6', '2020-12-18', 'INDIAN OVERSEAS BANK', 'C. K. PALYA', 'Mr. T. SRINIVASA REDDY', '', '9900126640', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36225, '730920cc-72f2-427d-86cb-d18e12240977', '2020-12-18', 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', 'Mr. B. NEHRU ALOY JOSEPH & Mrs. ANITHA JOSEPH', '', '8050009112', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36226, 'f695d246-21b6-4553-8eae-0facdc35a04f', '2020-12-18', 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', 'Mr. BRUNO NEHRU ALOY JOSEPH', '', '8050009112', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36227, '36d8e4e2-73be-4ba6-9a51-43acca0fdaac', '2020-12-18', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'LATHA', '', '9880111252', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36228, '4333d9ba-8dc9-40a7-833f-eee7de99d1c9', '2020-12-18', 'INDIAN BANK', 'CANTONMENT', 'Mr. S. T. SELVAN', '', '9980474888', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'BHASKAR'),
(36229, '84befa6c-6aa9-4b9b-8a0a-96166b3fbd76', '2020-12-18', 'INDIAN BANK', 'CANTONMENT', 'Mr. S. V. KIRANRAJU & Mrs. VANAJA. H. N', '', '9845280499', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36230, 'd7bac8e2-b91c-4d14-9f0e-0a2f801a3bd9', '2020-12-18', 'INDIAN BANK', 'CANTONMENT', 'mr. s. shyama raju', '', '9343322999', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36231, '93308b67-324e-4248-b62a-8c18ddc23f06', '2020-12-18', 'INDIAN BANK', 'CANTONMENT', 'Mrs. B. N. KAMALAMMA', '', '9916575302', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36232, 'bac6ce40-67f8-4fe1-8d0b-0696292916b4', '2020-12-18', 'UNION BANK OF INDIA', 'CHAMARAJAPET', 'Mr. GURURAJA RAO DANDINA', '', '9110492750', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4200.00', 1, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'MANJUNATH'),
(36233, '74219e9c-8660-4bf0-85ff-285e1858a33e', '2020-12-18', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. LAKSHMI NARAYANA', '', '9035429481', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'MANJUNATH'),
(36234, '51a12a1c-771d-4723-b47d-1b850a5ad495', '2020-12-18', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. MUNIRAJU GOWDA. N, Mrs. ASHA. K, Mr. M. ADITYA GOWDA, M. BHOOMIKA, Mr. N. RAVIKUMAR, Mrs. SHWETHA. K, & M. JANANI.', '', '9379167669', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'MANJUNATH'),
(36235, '0b03f631-0f11-41a2-9bd5-d481ee8d7d9c', '2020-12-18', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. VENKATESH. R & M/s. SRIVEN PROPERTIES.,', '', '9741832215', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-18 02:35:24', '2020-12-18 02:35:24', 1, 1, 'MANJUNATH'),
(36236, '51a839b0-53c5-4055-a871-cc6011537fce', '2020-12-19', 'UNION BANK OF INDIA', 'ASSET RECOVERY BRANCH', 'Mrs. PADMA K. BHAT', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36237, 'f832404e-515d-4ed1-b709-694913b34df4', '2020-12-19', 'UNION BANK OF INDIA', 'ASSET RECOVERY BRANCH', 'Mr. K. T. SHIVANANDA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36238, '4d3336fb-1d92-4b97-8400-f65d8b43f532', '2020-12-19', 'BANK OF MAHARASHTRA', 'KORAMANGALA', 'Mr. A. V. SATISH KUMAR', '', '9148820189', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36239, 'e0e61393-b5d4-4682-8c6b-a5db9622aa1f', '2020-12-19', 'UNION BANK OF INDIA', 'RAJARAJESHWARI NAGAR', 'Mrs. RANJULATA TOSHNIWAL & Mr. DEEPAK TOSHNIWAL', '', '7892584819', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36240, '843d7e15-ba8f-4f01-92ad-d4a6c843257e', '2020-12-19', 'INDIAN BANK', 'SHESHADRIPURAM', 'Mrs. PARVATHI', '', '8762633454', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36241, '1d483660-3df5-4e2f-9f49-fa33992ad03b', '2020-12-19', 'UNION BANK OF INDIA', 'ASSET RECOVERY BRANCH', 'Mr. PRAVEEN. K. J & Mrs. DANYA. M. V & Mrs. JAGADAMBA. H. C', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36242, '174a1fdb-bcd6-44ec-b854-ae0e682e82ec', '2020-12-19', 'UNION BANK OF INDIA', 'CHAMARAJAPET', 'Mr. C. GOVINDARAJU', '', '8095016337', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36243, 'e729997b-4839-4f1e-8c37-6e4c7fbf3166', '2020-12-19', 'BANK OF BARODA', 'K. G. ROAD', 'NANDAN', '', '9035735754', '', '', '', NULL, 6, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'VENKATESH'),
(36244, 'ad889c64-1b38-4198-90d1-f6b2a65c9c2f', '2020-12-19', 'UNION BANK OF INDIA (ECORP)', 'SRINAGAR', 'Mr. B. NAGARAJA', '', '9900788670', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'MANJUNATH'),
(36245, '8e30068f-f433-406d-98a7-06bd037bf9bc', '2020-12-19', 'INDIAN BANK', 'J. P. NAGAR', 'Mr. PADMANABHA. C. R', '', '9845620796', '', '', '', NULL, 2, NULL, '', '0.00', '', '5300.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-19 02:35:24', '2020-12-19 02:35:24', 1, 1, 'MANJUNATH'),
(36246, '91670c3a-1eae-4da8-b0a7-86fc19e204d0', '2020-12-20', 'UNION BANK OF INDIA', 'CHANDAPURA', 'Mr. ASHOK KUMAR', '', '9243186488', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-20 02:35:24', '2020-12-20 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36247, '6a6564e8-5638-43be-9edb-dee5359b4e68', '2020-12-21', 'STATE BANK OF INDIA', 'RACPC', 'neha singh', '', '9916601598', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-21 02:35:24', '2020-12-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36248, '637c59f7-dfa0-4bbe-9bbf-952849f2d1b1', '2020-12-21', 'PERSONAL', 'BENGALURU', 'Mr. BALAKRISHNA. H. K', '', '9900225994', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-12-21 02:35:24', '2020-12-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36249, '13a43b21-c168-43dc-aaa6-8c8302c6a5b0', '2020-12-21', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'manikandan', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-21 02:35:24', '2020-12-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36250, '257bad8f-8278-4d83-ae84-fca7f40e998e', '2020-12-21', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mrs. TAMILARASI. S', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-21 02:35:24', '2020-12-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36251, '6c1a021f-5812-41e1-bd7c-daf6bb17bfb8', '2020-12-21', 'BANK OF BARODA', 'VONDARAGUPPE', 'Mr. JAIDEV', '', '9448069436', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-21 02:35:24', '2020-12-21 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36252, 'b36f142a-cd11-4df4-8675-a66f91b06377', '2020-12-22', 'CENTRAL BANK OF INDIA', 'RAJAJINAGAR', 'Mrs. RADHAMMA', '', '9480490047', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36253, '87343800-cf3c-4c7b-ab21-d9da830855e0', '2020-12-22', 'PUNJAB NATIONAL BANK', 'LALBAGH FORT', 'Mr. C. GOVINDARAJU', '', '8095016337', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36254, '6c613e05-29f1-4d3a-a92e-c8fda22ef976', '2020-12-22', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', 'M/s. S & S BUILDERS & DEVELOPERS', '', '9840953574', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'BHASKAR'),
(36255, '5d8b3997-5ac6-492a-8d1f-fc2641921fa4', '2020-12-22', 'INDIAN BANK', 'JAYANAGAR', 'Mrs. A. R. PARIMALA & Mrs. SHILPA NAVEEN', '', '9448230182', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'BHASKAR'),
(36256, 'd1ddfba0-16a2-439c-993a-aaea7320decf', '2020-12-22', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. T. J. RAGHAVENDRA MURTHY', '', '9900238880', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36257, 'b2bd31e5-8b59-415e-8d10-23dcf23e3c1c', '2020-12-22', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mrs. C. R. MADHU', '', '9900238880', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36258, 'faf89f08-5a57-4eec-9665-b9bb2d99a3a3', '2020-12-22', 'UNION BANK OF INDIA', 'DOMLUR', 'Mr. JAGADISH. M & Mrs. SOWMYA', '', '9844495539', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36259, '635417f6-e838-4ea5-88a7-aa42b43a9101', '2020-12-22', 'PERSONAL', 'BENGALURU', 'M/s. WHITEFIELD TECHNO ENTERPRISES PVT LTD.,', '', '9880562138', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'BHASKAR'),
(36260, 'b91b27aa-0f46-4e82-a65b-bedd4bc56bab', '2020-12-22', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'M/S REDDY STRUCTURES PVT LTD', '', '9343834730', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'BHASKAR'),
(36261, 'e45cd510-930b-4aa7-8b24-b456f2cc535d', '2020-12-22', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'M/s. REDDY STRUCTURES PRIVATE LIMITED.,', '', '9343834730', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-22 02:35:24', '2020-12-22 02:35:24', 1, 1, 'BHASKAR'),
(36262, '2f77a5a5-38ce-42a5-9bfa-0a8cbb027beb', '2020-12-23', 'UNION BANK OF INDIA', 'HENNUR ROAD', 'M/s. DS MAX PROPERTIES PVT LTD.,', '', '9980863727', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36263, '9ac736f0-af22-49ca-8965-e9f3615ca3ac', '2020-12-23', 'BANK OF MAHARASHTRA', 'BANASWADI', 's.v.elegant', '', '7795000069', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36264, '579b446e-6a78-42c5-bb90-2fcd62d27a67', '2020-12-23', 'INDIAN BANK', 'NTY LAYOUT', 'Mr. SRINIVAS', '', '9632424786', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36265, 'ca47f30c-1f33-49fc-8cf2-83556aced532', '2020-12-23', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'SIKANTH', '', '9341953151', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36266, '90975aa6-b466-4061-be2a-f249ee0f2bd1', '2020-12-23', 'UNION BANK OF INDIA', 'REGIONAL OFFICE', 'M/s. PRATHAMM DEVELOPERS', '', '9141383578', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36267, 'b6a11611-f548-48bd-82cf-64b8646fb62b', '2020-12-23', 'UNION BANK OF INDIA', 'HSR LAYOUT', 'M/s. TOTAL ENVIRONMENT HABITAT PRIVATE LIMITED.,', '', '9036893696', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36268, '0d90a4eb-d568-450e-8e3b-eb2892e0c172', '2020-12-23', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', 'Venkata', '', '9448728859', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'MANJUNATH'),
(36269, '3bd14020-09f5-45f0-9b84-a8a69dbb2478', '2020-12-23', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', 'Venkata', '', '9448728859', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'MANJUNATH'),
(36270, 'cf41fe5d-5f3a-4031-aba7-09a836f07726', '2020-12-23', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. BINOY K. MATHEW & Mrs. REEMA. K. M', '', '9870107072', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'MANJUNATH'),
(36271, '402e1b0c-c55f-4a98-b9fb-9833d8dad46b', '2020-12-23', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. SOMASHEKAR', '', '9916220202', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'MANJUNATH'),
(36272, '2d1eecae-ecf4-4210-a427-8f5d80e2e7f1', '2020-12-23', 'BANK OF BARODA', 'JAYANAGAR', 'Mrs. C. S. ANURADHA', '', '9740850981', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'MANJUNATH'),
(36273, '12faa5e6-79a6-44ac-b77b-9192f03bb19d', '2020-12-23', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'M/s. SHIVAS A. R. HOTELS & RESTAURANTS PVT LTD.,', '', '9448512378', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36274, 'fa855a23-19da-4e4d-b711-0b755849c7c7', '2020-12-23', 'UNION BANK OF INDIA', 'KALKERE', 'Mr. PRAVEEN VENUGOPALAN', '', '7066130666', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36275, '7de8e949-a347-4829-b0d5-50feac8ebc49', '2020-12-23', 'UNION BANK OF INDIA', 'BVK IYANGAR ROAD', 'Mr. K. S. NAGENDRA', '', '9844065718', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36276, '3f9076ae-987e-4988-9c2c-ea2fbaca8e0f', '2020-12-23', 'UCO BANK', 'BASAVESHWARANAGAR', 'mrs .selvi', '', '9343517227', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-23 02:35:24', '2020-12-23 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36277, '56cd5137-fb74-4258-b29a-5a46cb99fefd', '2020-12-24', 'INDIAN BANK', 'RMV 2ND STAGE', 'Mr. G. MANI', '', '9663425543', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36278, '2f60f8da-6a6a-4dae-a502-8fa5993e39cc', '2020-12-24', 'UNION BANK OF INDIA', 'LOAN POINT RAJAJINAGAR', 'Mrs. J. RATHNA NARAYAN', '', '9980868798', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36279, 'a3c54c56-1ebd-4806-80be-0ed970d17007', '2020-12-24', 'UNION BANK OF INDIA', 'PES COLLEGE', 'Mrs. K. PREMA BAI', '', '9743444763', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36280, 'edd29d42-faa2-4ad3-b79e-875ed1835dcc', '2020-12-24', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. BHASKAR. P', '', '9844080855', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36281, '2f21ede7-04b8-4ffe-951b-0cbf2a05347f', '2020-12-24', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mrs. SHUBHA. S', '', '9845196863', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36282, '11523664-7bd4-4419-9e6a-f24c615e5964', '2020-12-24', 'STATE BANK OF INDIA', 'TAVAREKERE', 'Mrs. N. PADMAVATHI', '', '7259373038', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'MANJUNATH'),
(36283, '61b614fc-a1b2-46c3-b269-b8fea6da8a8b', '2020-12-24', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'Mr. K. SASIDHAR', '', '9448032304', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'MANJUNATH'),
(36284, '18dcf7dc-52a7-4a0c-8200-23bce4bd1ab3', '2020-12-24', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. PRASAD', '', '9448266465', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36285, 'a33709c3-51e5-4598-a287-4a979cfffd2b', '2020-12-24', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. S. SHASHIDHARA', '', '9844092411', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36286, '1329dd26-c5c1-4478-a5bb-0c77389a82c4', '2020-12-24', 'INDIAN BANK', 'NTY LAYOUT', 'vinod patel', '', '9945654888', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36287, 'f3d6cd35-95a7-48e2-adcd-01f5de8b00b4', '2020-12-24', 'STATE BANK OF INDIA', 'RACPC', 'Mr. JAYANTH. R & Mrs. KUMARI. H. R. D', '', '9900585456', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36288, '2f2fae8b-2c7b-41bc-9a91-a05daef07fa2', '2020-12-24', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'SHANTHI', '', '9880581854', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36289, 'b408c35b-6659-4cec-a37f-a03bc0217f8d', '2020-12-24', 'UNION BANK OF INDIA', 'HENNUR ROAD', 'Mr. K. S. RANGARAJ & Mrs. ANITHA RANGARAJ', '', '9535475616', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-24 02:35:24', '2020-12-24 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36290, 'a2e05d4a-6654-40af-9ddc-9ffe6ea63c44', '2020-12-25', 'UNION BANK OF INDIA (ECORP)', 'CANTONMENT', 'M/s. SRIVARA CONSTRUCTIONS.,', '', '9449851207', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-25 02:35:24', '2020-12-25 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36291, 'dc69d739-7bf7-4726-b3bc-31a832343cbe', '2020-12-25', 'UNION BANK OF INDIA (ECORP)', 'RAJAJINAGAR', 'Mr. K. KEMPEGOWDA', '', '9663368274', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-25 02:35:24', '2020-12-25 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36292, '3ceb25f6-5e18-435b-8755-0e391fd21c19', '2020-12-25', 'UNION BANK OF INDIA (ECORP)', 'RAJAJINAGAR', 'Mr. RATHNA', '', '9663368274', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-25 02:35:24', '2020-12-25 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36293, '160cc486-18ac-46b8-a535-cfb8d46031be', '2020-12-26', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. C. RAMU & Mrs. K. JAYASHREE', '', '8073018866', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36294, 'd96e1b14-9f02-43cf-be10-845ac75cf24e', '2020-12-26', 'UNION BANK OF INDIA', 'REGIONAL OFFICE', 'M/s. PRESTIGE ESTATES PROJECTS LIMITED.,', '', '9900243904', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36295, 'd8b592ea-4dc4-4bc4-a93a-a0674d03f919', '2020-12-26', 'INDIAN BANK', 'J. P. NAGAR', 'Mrs. K. MAMATHA', '', '9008103103', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36296, 'c0f4994c-4685-4e65-94ac-a76dab6c99cf', '2020-12-26', 'INDIAN BANK', 'BANNERGHATTA ROAD', 'Mr. ANAND SUBRAMANIAN & Mrs. VEENA ANAND', '', '8105800933', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36297, 'e399a94d-26fd-40b4-8eb8-ef083f0c9f2d', '2020-12-26', 'INDIAN BANK', 'KORAMANGALA', 'Mr. PARAMESH. C.B & Mr. MOHAN KUMAR. H.R', '', '9739525599', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36298, 'c94027ae-3b77-4623-a40e-7c873635d406', '2020-12-26', 'PERSONAL', 'BENGALURU', 'SHIVKUMAR', '', '9480272072', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36299, '733e1f16-964b-4fb0-9c98-d04d56984c5c', '2020-12-26', 'INCOME TAX', 'BENGALURU', 'ANAND', '', '8884652202', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'MANJUNATH'),
(36300, '450ad777-94f1-4e06-881e-9e7bd60e44a3', '2020-12-26', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'M/s. INR PROPERTY HOLDINGS & M/s. PRESTIGE ESTATES PROJECTS LIMITED', '', '9341211072', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36301, '502a8ed4-bd7c-4b2d-9e6b-22f80ef2662e', '2020-12-26', 'UNION BANK OF INDIA', 'COMMERCIAL STREET', 'Mrs. SHASHIKALA. R', '', '6366144131', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36302, 'ec81bb09-3dfd-4d7e-99fa-1b4ddda110c0', '2020-12-26', 'STATE BANK OF INDIA', 'RACPC', 'radhakrishna', '', '9845026579', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36303, 'e01dbe13-4773-49dc-b677-9bf0a3cf8a3f', '2020-12-26', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mrs. SHASHIKALA & Mr. PRIYANK JAGANNATHA', '', '9731377522', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36304, 'af15f106-0c74-46a1-97b2-9dd8b4c4d160', '2020-12-26', 'INDIAN BANK', 'SHESHADRIPURAM', 'Prakash', '', '8073697434', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '7000.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36305, '55dd61b1-b40a-462f-a093-45e054b06120', '2020-12-26', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Dr. J. DENNIS RAJKUMAR', '', '9449114232', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'BHASKAR'),
(36306, '66b109e1-3f8e-435c-ace6-7da399c6baa9', '2020-12-26', 'INDIAN BANK', 'DODDABANASWADI', 'M/s. GRIHA PROMOTERS PRIVATE LIMITED.,', '', '9972327799', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'BHASKAR'),
(36307, '841b257a-ba3b-492c-8337-a8c146ef48db', '2020-12-26', 'INDIAN BANK', 'DODDABANASWADI', 'M/s. GRIHA PROMOTERS PRIVATE LIMITED.', '', '9916954260', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'BHASKAR'),
(36308, 'cb3be8d1-fac4-403e-bedc-9e8e8e70393a', '2020-12-26', 'UNION BANK OF INDIA', 'C. T. STREET', 'Mr. SACHIN KUMAR. N. K', '', '9620082222', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'BHASKAR'),
(36309, 'e50334e2-1de0-46cb-ac99-bc828ce5665d', '2020-12-26', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mr. M. DINAKAR', '', '9845073577', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'BHASKAR'),
(36310, '8d21fa42-283d-4b13-871e-48d9669c8ad4', '2020-12-26', 'KARNATAKA BANK LTD', 'MINERVA CIRCLE', 'Mr. K. RAJAGOPAL, Mrs. RAGINI. S. P & Mr. AKSHAYA. R', '', '9448071386', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'BHASKAR'),
(36311, '8cd73656-40c7-4126-9bea-c2afd6a00d43', '2020-12-26', 'INDIAN BANK', 'BROOKFIELD', 'Mr. PARIMAL ASWANI', '', '9538995155', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36312, '65351d15-bee1-4701-a613-f4a3313d9084', '2020-12-26', 'INDIAN BANK', 'BROOKFIELD', 'Mrs. JAYA REDDY', '', '9880391567', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36313, 'd35e9d75-9f3e-4eab-bc3c-560558497bc6', '2020-12-26', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Mrs. B. V. RAJASULOCHANA DEVI', '', '9900187375', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-26 02:35:24', '2020-12-26 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36314, 'cbce28f5-42b8-4d78-a0d1-4b34f272a9fc', '2020-12-28', 'PUNJAB NATIONAL BANK', 'ANANDNAGAR', 'Mr. B. SURESH KUMAR & Mrs. S. K. KAVITHA', '', '9773969996', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36315, '34bee89e-27aa-4a2a-81fb-b88dc32e644f', '2020-12-28', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mr. GIRISH GUPTA @ GIRISH KUMAR. R. GUPTA', '', '9066727004', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36316, '1945b043-ede4-4ed2-a7fb-7b817466c836', '2020-12-28', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. PARIMAL KUMAR & Mrs. ASTHA SINHA', '', '7026789466', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36317, '335f31ff-4b73-4b4a-8825-d42b487a1130', '2020-12-28', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'M/s. IACETE & KWF TRUST ® BANGALORE & Mr. B. K. SHIVASHANKAR', '', '9341953151', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36318, 'af46fa9b-5865-4934-8fb0-e51e94f675ed', '2020-12-28', 'INDIAN BANK', 'PRASHANTHNAGAR', 'raja sulochana', '', '9900187375', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'MANJUNATH'),
(36319, '50e90cfc-6f56-45db-b3f3-387a7870e8b6', '2020-12-28', 'INDIAN BANK', 'BTM LAYOUT', 'Mrs. CHITRA SIVAKUMAR', '', '9873048030', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'MANJUNATH'),
(36320, 'dd5c03a6-748e-4380-9539-6a307ea9c2ee', '2020-12-28', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'Mrs. AMRITA KOLEY & Mr. SHASHANK SINGH', '', '9632538133', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'MANJUNATH'),
(36321, '18731b7f-c61c-471f-b36b-24b490ee95a9', '2020-12-28', 'INDIAN BANK', 'GIRINAGAR', 'Mr. NAGACHANDRA RAO. P. S', '', '9449290022', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'MANJUNATH'),
(36322, '33dc0378-1f9b-4a02-af99-07de35be90f7', '2020-12-28', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'M/s. PRIDE & EXPERT PROPERTIES PVT LTD', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-28 02:35:24', '2020-12-28 02:35:24', 1, 1, 'MANJUNATH'),
(36323, '6ec052f1-5fa8-4630-8ce2-15b716354780', '2020-12-29', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'M/s. BANGALORE DEVELOPMENT AUTHORITY', '', '9343114787', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-29 02:35:24', '2020-12-29 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36324, 'cc56701d-8aee-4595-b6fb-15a346871150', '2020-12-29', 'INDIAN BANK', 'RMV 2ND STAGE', 'Mr. DASHARATHI. B. V & Mrs. SUSHMA DASHARATHI', '', '9130005836', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2000.00', 1, 0, '0000-00-00', '', '2020-12-29 02:35:24', '2020-12-29 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36325, 'b7b13b25-94db-4c39-8c80-2e762202d26e', '2020-12-29', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. ARUN KUMAR. K. L', '', '9066795953', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-29 02:35:24', '2020-12-29 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36326, '931bb0bb-e554-4d2a-a348-f0f5ef746eb7', '2020-12-29', 'INDIAN BANK', 'HALASUR', 'YASHODA', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-29 02:35:24', '2020-12-29 02:35:24', 1, 1, 'SUNIL KUMAR');
INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(36327, '3d981a7c-de0d-4c9d-a3d0-7ccadff45f88', '2020-12-30', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'Mr. VARAPRASAD. K', '', '9036608406', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'MANJUNATH'),
(36328, 'e77016d5-13c8-4346-b1dc-49513c4c5ba7', '2020-12-30', 'STATE BANK OF INDIA', 'MES COLLEGE', 'Poornima harish', '', '7996350383', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'MANJUNATH'),
(36329, '000b6ebd-a7fd-43ae-b1ad-fef7b749562b', '2020-12-30', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'Subram naidu', '', '8105543444', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'MANJUNATH'),
(36330, '161e796e-52ef-4568-946e-82694c4a269c', '2020-12-30', 'UNION BANK OF INDIA', 'REGIONAL OFFICE', 'M/s. BRIGADE ENTERPRISES LTD.,', '', '9940093332', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2000.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'MANJUNATH'),
(36331, '8a86b7a2-d0a3-4d1d-a80d-844b7c748cc9', '2020-12-30', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Prakash', '', '7829958687', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'MANJUNATH'),
(36332, '64a2cf45-24d9-44bc-ba9f-4ef19d0fd873', '2020-12-30', 'STATE BANK OF INDIA', 'PADMANABHANAGAR', 'Mrs. R. SUMA', '', '9449225539', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'MANJUNATH'),
(36333, '694976b9-b699-414d-ab41-d2454ea6a762', '2020-12-30', 'UNION BANK OF INDIA (ECORP)', 'BASAVESHWARA NAGAR', 'Mrs. R. GIRIJA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36334, 'bcb90f24-78f2-40fd-93ea-e39f0084cc85', '2020-12-30', 'KARNATAKA BANK LTD', 'MARATHAHALLI', 'Mr. P. RAMESH REDDY & Mrs. P. VEDA KUMARI', '', '7829296296', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36335, '773ba989-40c3-4949-a27b-0e98dc1b2a33', '2020-12-30', 'PERSONAL', 'BENGALURU', 'Vasu che mi icals', '', '9844009290', '', '', '', NULL, 3, NULL, '', '0.00', '', '10600.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36336, 'ada4b480-f19b-4192-8c67-14bdfc01196c', '2020-12-30', 'UNION BANK OF INDIA', 'RAJARAJESHWARINAGAR', 'Mr. M. N. REDDY ANAND', '', '9900240176', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36337, 'd37740b3-594b-4f60-b4b8-4c14d4c77939', '2020-12-30', 'UNION BANK OF INDIA', 'YELAHANKA', 'sreeramu', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36338, 'c59950f1-c342-4ca1-b51f-0f3ab21ee3c9', '2020-12-30', 'UNION BANK OF INDIA', 'CANTONMENT', 'Mr. CHANDRASHEKHARA CHARY', '', '9845804027', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36339, 'fadad3ec-2893-432e-b60a-87c2dcf3910c', '2020-12-30', 'BANK OF MAHARASHTRA', 'BANASWADI', 'chandrasekhar', '', '9845207240', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36340, 'c4bfd5d1-9a75-44da-b991-6b807498d8cd', '2020-12-30', 'INDIAN BANK', 'HALASUR', 'jayashankar', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-30 02:35:24', '2020-12-30 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36341, '60a7e58b-fd69-41dc-bd2c-c511be0191dc', '2020-12-31', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mr. SURESH KUMAR. N', '', '9900108944', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'MANJUNATH'),
(36342, '572be1dd-b050-4664-8990-1de237ccd0d7', '2020-12-31', 'UNION BANK OF INDIA', 'JAKKUR', 'Mr. MANJU. N. & Mrs. KANTHAMMA. N', '', '8088438969', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36343, '3d2b7ef0-1b0f-443e-835c-7e1882295adc', '2020-12-31', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. TARAL GUPTA & Mr. SARAL GUPTA', '', '9886539113', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'MANJUNATH'),
(36344, '817a589b-4121-4c50-b92f-b141dc25b1d8', '2020-12-31', 'INDIAN BANK', 'BENSON TOWN', 'SUDARSHAN BABU', '', '9341224250', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36345, 'ec3b4fd0-d8e6-499e-bac6-cd79ffd588f0', '2020-12-31', 'UNION BANK OF INDIA', 'JAYANAGAR', 'raghv', '', '9148986252', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'MANJUNATH'),
(36346, 'cb724bcc-9822-4aed-a938-dfbe741ee713', '2020-12-31', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. S. G. KULKARNI', '', '9008112457', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36347, '55926586-8db0-429d-b3ed-2a80241aaf4a', '2020-12-31', 'UNION BANK OF INDIA', 'JAYANAGAR', 'k.subramani', '', '9845776140', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'MANJUNATH'),
(36348, '0e3a08ba-1a4e-4497-8bb8-455de5ebac82', '2020-12-31', 'INDIAN BANK', 'THIRUMENAHALLI', 'Mr. VENKATESH. D', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36349, '793a2e40-361b-4f0f-8ce8-75dd40cf7008', '2020-12-31', 'BANK OF BARODA', 'INDIRANAGAR', 'Mr. V. JAIN KUMAR & Mr. V. MADHIYALAGAN.', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36350, 'a4a62497-7f5b-4fcd-829e-cb02683f7593', '2020-12-31', 'INDIAN BANK', 'AVENUE ROAD', 'H NARAYAN LAL CHOUDHRY & Mrs w panidevi', '', '9845247834', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'BHASKAR'),
(36351, 'ff9cfc1b-3396-4c35-bd2d-94648cc82b66', '2020-12-31', 'INDIAN BANK', 'AVENUE ROAD', 'Mr. NARAYAN LAL CHOUDHARY', '', '9845247834', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'BHASKAR'),
(36352, '833cc36b-2bc5-4dcc-b747-a41aa6b184a5', '2020-12-31', 'INDIAN BANK', 'AVENUE ROAD', 'Mrs kamala devi', '', '9845247834', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'BHASKAR'),
(36353, 'a9d19966-0a9e-410c-bb80-182cfb577b88', '2020-12-31', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'MRS VIDYA I & MR SUDHENDRA KULKARNI', '', '8073434373', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'BHASKAR'),
(36354, '563e9289-e953-4149-a679-9e9f0c6726b8', '2020-12-31', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'PRAVEEN', '', '9742695845', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36355, '35b55cbb-9a46-4b22-a0a1-20a6315b978b', '2020-12-31', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. RAVIKUMAR', '', '9845054708', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36356, '05292d6f-0722-43df-9b88-61187c1f3203', '2020-12-31', 'PERSONAL', 'BENGALURU', 'Mr. A. GANESH', '', '7624927838', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '7500.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36357, 'fc534562-5479-4ea6-9cfc-8adb81c50da1', '2020-12-31', 'INDIAN BANK', 'AVENUE ROAD', 'NARAYANLAL CHOUDHARY MR JAGADISH KUMAR CHOUDHARY & MR RONITH', '', '9845247834', '', '', '', NULL, 4, NULL, '', '0.00', '', '4250.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'BHASKAR'),
(36358, '313e42db-de61-4be1-8520-c5771c315fcc', '2020-12-31', 'UNION BANK OF INDIA', 'PES SCHOOL OF ENGINEERING', 'Mr. SREEDHAR VENKATARAMAN', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'MANJUNATH'),
(36359, '17103b20-06b5-48d1-8832-7404dd120835', '2020-12-31', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Rishab kumar', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36360, '04057868-d2b3-4733-8672-daf2d600ffe6', '2020-12-31', 'BANK OF MAHARASHTRA', 'KORAMANGALA', 'Venkatesh', '', '9148820189', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36361, '4e5ece20-0312-4c1d-8aea-16e1ebb706e6', '2020-12-31', 'STATE BANK OF INDIA', 'RACPC', 'Aadimurthy', '', '9886969253', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2020-12-31 02:35:24', '2020-12-31 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36362, '537f220a-278a-4356-b834-e77a8ea34337', '2021-01-01', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. S. VIJAY', '', '8050994262', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'MANJUNATH'),
(36363, 'cd0fb8e1-64a0-47e7-b236-440eb36f4945', '2021-01-01', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'Ramesh reddy', '', '9972311155', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'MANJUNATH'),
(36364, 'f264aca4-0a47-44d2-aae4-1666f3205c51', '2021-01-01', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Natraj', '', '8722100021', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'MANJUNATH'),
(36365, '3d24385c-f96c-4a66-b7e3-493a95b2f9a6', '2021-01-01', 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURCH ROAD', 'Mr. G. MADHU', '', '9880140949', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36366, '84dcc594-2267-496f-8fe4-b638bdb75bd4', '2021-01-01', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'ARUN ULLAS', '', '9901900773', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36367, '88def7e3-d16f-420c-85fc-af652d6058dd', '2021-01-01', 'STATE BANK OF INDIA', 'RACPC', 'Mr. ANAND. N. BHATIA', '', '9900433361', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36368, '2de14e47-2de7-4b1c-94eb-5ea2ee40f53b', '2021-01-01', 'STATE BANK OF INDIA', 'RACPC', 'Mr. PREM BHATIA & Mrs. ANAHITA BHATIA', '', '9900433361', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36369, '81cd17bb-73b4-41ca-9a81-d42621f2abd5', '2021-01-01', 'PERSONAL', 'BENGALURU', 'UMESH', '', '7975105150', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'MANJUNATH'),
(36370, 'ff5b992a-bcaf-4564-9211-d840e83ce5b2', '2021-01-01', 'INDIAN BANK', 'HALASUR', 'Mr. D. HEMANTH KUMAR & Mrs. PADMA HEMANTH', '', '8861330849', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2021-01-01 02:35:24', '2021-01-01 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36371, '2143e150-ba96-4a21-bc22-7c555dcd9cd5', '2021-01-01', 'UNION BANK OF INDIA', 'ULP JAYANAGAR', 'Mr. CHANDRU. R', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'MANJUNATH'),
(36372, 'f8d019fd-b2d2-4541-9170-7eb269d61c8a', '2021-01-01', 'UNION BANK OF INDIA', 'ULP JAYANAGAR', 'Mr. SARAVANAN. V', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'MANJUNATH'),
(36373, '8e50c49f-d053-4bde-8721-8f323247315c', '2021-01-15', 'INDIAN BANK', 'KG ROAD', 'Mr. H. NARASIMHA', '', '7892572061', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36374, 'd6ce6431-01aa-44a1-adf4-000e34aadc63', '2021-01-01', 'UNION BANK OF INDIA', 'JAKKUR', 'Mr. SRINIVASA', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'SUNIL KUMAR '),
(36375, 'c0beac54-d167-4a9e-ad7b-786c0bcb8af8', '2021-01-01', 'UNION BANK OF INDIA (ECORP)', 'KAMAKSHIPALYA', 'Mr. N. BALASUBRAMANI', '', '', '', '', '', NULL, 7, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'Rajashekhar.c '),
(36376, 'd0a495c7-9ee1-47e6-8d23-0bd5b3617da9', '2021-01-01', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mrs. A. C. NALINA', '', '', '', '', '', NULL, 7, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'Rajashekhar.c '),
(36377, 'afc650c2-09af-40cd-addd-4b328115d5cd', '2021-01-01', 'PERSONAL', 'BENGALURU', 'Mr. A. U. THAMMAIAH', '', '', '', '', '', NULL, 4, NULL, '', '0.00', '', '3000.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'BHASKAR'),
(36378, 'f229179f-f0fb-4932-a4a1-4e43fabaa7d5', '2021-01-15', 'INDIAN BANK', 'SHESHADRIPURAM', 'Mr. V. K. C. UNNI & Mr. SADASHIVAN. C. UNNI', '', '9986354018', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36379, 'c867e512-6520-4ead-ab1b-09f9950e4e5a', '2021-01-15', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mrs. N. VANISHREE', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36380, '6b95ac00-6ab6-4e06-ba66-5ebed994bcba', '2021-01-01', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', '', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'MANJUNATH'),
(36381, '762509ed-d3b4-497a-8dba-c9ca9e9911ea', '2021-01-01', 'INDIAN BANK', 'GIRINAGAR', 'Mr. ANAND. M. N', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'MANJUNATH'),
(36382, 'd8f27e5f-af67-4eb6-9c30-841493a2a07f', '2021-01-15', 'UNION BANK OF INDIA', 'KORAMANAGALA', 'Mr. PIYUSH PRIYADARSHI & Mrs. SUPRIYA KUMARI', '', '9538887909', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36383, '55429312-aa55-41cb-87d8-4287b7f7b09f', '2021-01-01', 'INDIAN BANK', 'BASAVANAGUDI', 'Mr. NAGARAJU. M', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'MANJUNATH'),
(36384, '791fa387-1711-4567-89d3-7bc3fd1b8331', '2021-01-15', 'PUNJAB NATIONAL BANK', 'ZONAL SASTRA CENTRE DELHI', 'Mr. MANOJ KUMAR', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36385, '159b2663-7b29-4bb0-be06-a397f3426cec', '2021-01-01', 'INDIAN BANK', 'JUDICIAL LAYOUT', 'Mr. RAVI KUMAR. P. T', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2000.00', 1, 0, '0000-00-00', '', '2020-12-31 18:30:00', '2020-12-31 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36386, '44d6e045-e1cc-4412-8235-a40b55a4ddae', '2021-01-04', 'STATE BANK OF INDIA', 'KATHARIGUPPE', 'Mr. LOKESHAIAH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'MANJUNATH'),
(36387, 'bcf6a93f-8efc-4d3b-94e5-2ce60325686b', '2021-01-15', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mr. G. SUNDARA REDDY', '', '9731647438', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36388, 'fef485d2-c9ce-442b-9a96-289bad21fcd4', '2021-01-04', 'STATE BANK OF INDIA', 'RACPC', 'Mr. VENKAT RAJU', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '2700.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'MANJUNATH'),
(36389, '51e77ae5-c249-4d2c-99ba-6bc6cca32c4c', '2021-01-15', 'INDIAN BANK', 'KODIGEHALLI', 'Mr. SURESH KUMAR. K. V', '', '9901155466', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36390, '489793ad-0186-426b-8cd1-9c9a180cf135', '2021-01-15', 'UNION BANK OF INDIA', 'REGIONAL OFFICE', 'M/s. BRIGADE ENTERPRISES LTD., & M/s. R. K. REALTY VENTURES,', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36391, '01ba4921-b678-43f6-83ff-ac4be5dca428', '2021-01-15', 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', 'Mr. ANAND. G & Mrs. RADHAMANI ANAND', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36392, 'f758a537-6837-477d-bd7e-b5e6e96882b5', '2021-01-04', 'BANK OF BARODA', 'VIJAYANAGAR', 'Mrs. B. CHAMPAKAMALINI', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36393, '8a657e17-4e13-4525-b389-f4e9538c01e4', '2021-01-15', 'BANK OF BARODA', 'J. C. ROAD', 'Mr. C. A. MANJUNATH', '', '9880493837', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36394, 'adcf0a5c-87ba-45d1-a2b4-3ea4e4497084', '2021-01-04', 'INDIAN BANK', 'NTY LAYOUT', 'Mr. SUPRIT. D. K', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36395, '0ff9041d-5299-4cc7-afbe-2d90e4df98e9', '2021-01-04', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. THARA. S', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36396, '3943b124-c9d3-470d-875a-5dda80bc99fc', '2021-01-04', 'STATE BANK OF INDIA', 'RACPC', 'Mr. SHARANAPPA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36397, '87db14ce-e087-4681-9aea-fbd2c2feb5f7', '2021-01-15', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mr. T. RAMESH', '', '7353176666', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36398, 'a75109f3-8bfe-4e74-b414-752470b007df', '2021-01-15', 'BANK OF MAHARASHTRA', 'YELAHANKA', 'Mr. R. S. CHANDRASEKAR', '', '9739504304', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36399, '8cef2f1c-79c3-4d07-b82d-750f51185c0c', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36400, 'cd41dec1-d6ce-4d79-82f4-3606be92110a', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36401, '5f20225c-9daa-4d7f-bc2c-1eebc8238a9b', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36402, 'a48c9d6d-fa3a-4277-8fd2-a0beee7e2134', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36403, '8d9fc33d-6279-473f-b7cc-726cf82b5b22', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36404, '8a658199-1cf4-466d-a6c5-7eee1a39b322', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36405, '953bf36f-5bc6-42ed-886c-66149aa252c1', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36406, 'f4ca8b2e-f4e8-457a-8189-514426d9b1e4', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36407, '1d2c3116-ebe6-45d0-a820-01240c79c27f', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36408, 'ea71f631-e326-4335-a5c5-cf2588b3f3c5', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36409, 'b6dc458b-7ae5-4d2d-933d-625699fe7ddd', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36410, '27c68552-de8e-4e56-8963-a988f0dec4ca', '2021-01-04', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'M/s. LTG INFRASTRUCTURE LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2945.00', 1, 0, '0000-00-00', '', '2021-01-03 18:30:00', '2021-01-03 18:30:00', 1, 1, 'RAJASHEKAR'),
(36411, '31ba12f2-967e-4456-89c8-9f119909c645', '2021-01-15', 'INDIAN BANK', 'PEENYA SSI', 'Mr. M. K. VENKATESH', '', '9900991404', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36412, '4e7871d5-8984-43c2-9a76-222ab67c40aa', '2021-01-05', 'UNION BANK OF INDIA', 'SARAL', 'Mr. SYED FAROOK & Mr. SYED MUKARRAM', '', '', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-04 18:30:00', '2021-01-04 18:30:00', 1, 1, 'BHASKAR'),
(36413, '61da2cc3-b9ac-461b-8326-99f6ea0dfab5', '2021-01-05', 'INDIAN BANK', 'MALLESHWARAM', 'Mr. S. R. SENDIL KUMAR', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2021-01-04 18:30:00', '2021-01-04 18:30:00', 1, 1, 'MANJUNATH'),
(36414, '7e174e81-db7a-4bca-9623-b468fb7d4ebc', '2021-01-05', 'INDIAN BANK', 'MALLESHWARAM', 'Mr. S. R. SENDIL KUMAR', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-04 18:30:00', '2021-01-04 18:30:00', 1, 1, 'MANJUNATH'),
(36415, 'bf7af907-22f0-45d1-a4b1-38971f3bcb07', '2021-01-15', 'STATE BANK OF INDIA', 'J. P. NAGAR', 'Mr. H. T. SHANKAR', '', '9886042986', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36416, '997dd2d4-fb07-4c14-835b-f33d53e98da8', '2021-01-15', 'CENTRAL BANK OF INDIA', 'RAJARAJESHWARINAGAR', 'Mrs. K. SHANTHAMMA', '', '9686578222', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36417, '8192eb8e-269f-4d2c-acb0-1ea0d223bf0f', '2021-01-15', 'DUMMY', 'DUMMY', 'd', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36418, '11296817-1e10-4d65-a090-3d5f627680f5', '2021-01-05', 'STATE BANK OF INDIA', 'RACPC', 'Dr. M. SRIKANTHA', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-04 18:30:00', '2021-01-04 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36419, '9c00410e-fc29-47de-8b90-5913b5ddfdce', '2021-01-15', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. B. R. INDRA SHEKAR REDDY & Mrs. ADILAKSHMAMMA', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36420, '16e1ea79-ecf6-4861-880b-603b9a1587a6', '2021-01-15', 'INDIAN BANK', 'KASTURINAGAR', 'Mr. G. ARUL ROBIN DHAS', '', '9686911254', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36421, 'eb0c78e4-02de-4619-8562-335e9ca58f56', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'R. T. NAGAR', 'Mr ANAND PRAMODH, Mr. PRADEEP. R. A, Mr. VELUSWAMY. P & M/s. VDB INFRA & REALITY PVT LTD.,', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36422, 'f6a2bc6e-4726-41e6-bfc8-343bbe7bd6e9', '2021-01-15', 'UNION BANK OF INDIA', 'REGIONAL OFFICE MYSORE', 'M/s. CENTURY REAL ESTATE HOLDINGS PRIVATE LIMITED.,', '', '9880111252', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36423, 'e0dcf8db-9793-4979-a939-fcb4300a7dc7', '2021-01-15', 'UNION BANK OF INDIA', 'PES COLLEGE', 'Mr. MITHUN KUMAR. H', '', '9141703419', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36424, '652b4372-3185-4849-a248-1c5b18136f25', '2021-01-05', 'UNION BANK OF INDIA', 'RAJARAJESHWARINAGAR', 'Dr. BHARATH BHOOSHAN & Dr. BHARGAVI VATTEM', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-04 18:30:00', '2021-01-04 18:30:00', 1, 1, 'RAJASHEKAR'),
(36425, 'db6dc753-f597-490f-9862-ecea830651d8', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'M/s. BANGALORE DEVELOPMENT AUTHORITY', '', '9008073906', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36426, 'b0a0e5b0-008f-4bd9-bfac-ef20da5303e6', '2021-01-05', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Mr. KUMAR. C. M & Mrs. ANITHA. S. M', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-04 18:30:00', '2021-01-04 18:30:00', 1, 1, 'RAJASHEKAR'),
(36427, '62001a96-30c6-4cb2-a2a8-788a6a3620d2', '2021-01-15', 'DUMMY', 'DUMMY', 'D', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36428, '4827ef2a-4b82-44cb-ac87-9f8cb348f0f0', '2021-01-15', 'KARNATAKA BANK LTD', 'MAHALAKSHMI LAYOUT', 'Mr. UDAYASHANKAR. M', '', '9945452628', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36429, 'e94c5ef5-0d29-4ea8-a604-0adb33ce4e57', '2021-01-15', 'KARNATAKA BANK LTD', 'MAHALAKSHMI LAYOUT', 'Mr. UDAYASHANKAR. M', '', '9945452628', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36430, '10b2149f-b82c-4f6a-a055-6297346f4990', '2021-01-06', 'STATE BANK OF INDIA', 'RACPC', 'Mr. L. N. NARASIMHA MURTHY', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'RAJASHEKAR'),
(36431, 'b0f3a327-d7c2-4533-bdc7-0774b82b1f92', '2021-01-15', 'INCOME TAX', 'BENGALURU', 'Mrs. S. K. PEERAN', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36432, '2eb6e736-58a1-42e4-b957-5355fe234a72', '2021-01-15', 'UNION BANK OF INDIA', 'YELAHANKA', 'M/s. STANDARD BRICK & TILES (YELAHANKA) PVT LTD.,', '', '9663145145', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36433, '45400443-1c7e-4cc4-b571-f618cd5eda94', '2021-01-06', 'INDIAN BANK', 'YELAHANKA', 'Mr. P. N. NAGARAJA SWAMY', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'RAJASHEKAR'),
(36434, '1fe35c88-6763-4344-9089-82ad3c3e365f', '2021-01-15', 'UNION BANK OF INDIA', 'YELAHANKA', 'Mr. M. S. VENKATESH', '', '9448042867', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36435, '4485a6f1-abc7-4448-b2e2-05eea005c00d', '2021-01-06', 'UNION BANK OF INDIA (EANDHRA)', 'MYDUKUR KADAPA DISTRICT MYSORE', 'M/s. MALT SPIRITS INDIA PVT LTD.,', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '15000.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'RAJASHEKAR'),
(36436, 'bbd58d1f-296a-4236-a034-f1910c9717a8', '2021-01-06', 'INDIAN BANK', 'HYDERABAD', 'Mrs. CHERUKURI HIMA BINDU', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'MANJUNATH'),
(36437, '3b07558f-1c4d-47c9-8a0d-9a9799c549b9', '2021-01-06', 'INDIAN BANK', 'J. P. NAGAR', 'Mr. A. PARANDAMAIAH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'MANJUNATH'),
(36438, '17f7c562-671c-4997-88ea-59c61442bff8', '2021-01-06', 'UNION BANK OF INDIA', 'PES COLLEGE', 'Mr. GIRISH. V. R', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'MANJUNATH'),
(36439, 'a436f805-85aa-42b6-a908-6b6438a11e6d', '2021-01-06', 'UNION BANK OF INDIA', 'JAYANAGAR', 'r. SALMAN NAVEED DALVI', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-05 18:30:00', '2021-01-05 18:30:00', 1, 1, 'MANJUNATH'),
(36440, 'f18e2cb8-4988-4d74-81b9-2e55ed9ea0d5', '2021-01-08', 'UNION BANK OF INDIA (ECORP)', 'K. R. PETE', 'Mr. SUDARSHAN. C. S', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36441, '21e2e0ff-8a72-4270-afac-4f3fa0071f08', '2021-01-08', 'STATE BANK OF INDIA', 'JAYANAGAR', 'Mr. SUNIL KUMAR. R. K', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36442, 'eb538ec0-c393-47c2-9ccd-3eb8c55885cf', '2021-01-08', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. MANISH. K. GADIA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36443, '787800ab-4e08-4080-9fdd-2ce039b6b7c7', '2021-01-08', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. VINAY. K. GADIA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36444, '0685b74d-7a84-412a-aa7a-72f159f5d72c', '2021-01-08', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. AMIT. K. GADIA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36445, '5693e417-da27-46e8-a69d-ffd6d0607972', '2021-01-15', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'M/s. PROVIDENT HOUSING LIMITED.,', '', '7848002051', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36446, '989bd815-6295-4d63-a03e-cde024f9e0eb', '2021-01-08', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'Mr. MALLESHAIAH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'MANJUNATH'),
(36447, '43fed5fa-b36e-407c-9a54-f0fc9a7da623', '2021-01-08', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'Mr. GOVINDARAJ. E & Mrs. R. SARITHA', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'MANJUNATH'),
(36448, '29523779-ba8c-4e23-87ee-5b2102000ef0', '2021-01-08', 'INDIAN BANK', 'R. T. NAGAR', 'Mr. ARAVIND KUMAR & Mrs. REKHA JAIN', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'MANJUNATH'),
(36449, '2e6c8f7e-d05b-4d86-8664-5b50a37f4a30', '2021-01-15', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. RAHUL RAVINDRAN', '', '9886191750', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36450, 'aeb818f1-f440-4799-a2a0-12162e2c6f5e', '2021-01-15', 'UNION BANK OF INDIA', 'KOLAR', 'Mr. V. N. RAVI KUMAR', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '4000.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36451, '41e7f1fc-f54f-4d9a-ae4d-86e930c41d14', '2021-01-15', 'UNION BANK OF INDIA', 'MALLESHWARAM', 'Mr. THIMME GOWDA. T. D', '', '9448323602', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36452, 'd18f41b7-d141-40ae-bb65-af58d316d203', '2021-01-15', 'UNION BANK OF INDIA', 'RICHMOND TOWN', 'Mr. P. P. BOPAIAH', '', '9945298243', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36453, 'a2c60858-a0a7-4406-9620-f5b9fe493754', '2021-01-15', 'DUMMY', 'DUMMY', 'D', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36454, '3c1ad061-f4cf-4128-9107-b53a8eb187d3', '2021-01-15', 'DUMMY', 'DUMMY', 'D', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36455, '37a089c9-f967-46b3-8d4e-5c8a5fff9c0f', '2021-01-08', 'INDIAN BANK', 'KENGERI', 'Mr. K. R. DHANANJAYA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'RAJASHEKAR'),
(36456, '5622867d-ad8d-4fc5-b776-ff2c3a24e45d', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mr. K. H. S. RAVINDRA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36457, '9c689b41-7017-4c76-a70c-31c250e0c01c', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mrs. LALITHA & Mr. SHEKAR', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36458, '36f995f3-10a9-4f73-a1df-a6b0db712737', '2021-01-08', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. VINAY. K. GADIA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36459, '5ca4c029-3a93-42d1-8c1f-5c5aa077f42b', '2021-01-08', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. AMIT. K. GADIA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-07 18:30:00', '2021-01-07 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36460, '39de7954-c313-49a7-aac4-7cf819e0a6c7', '2021-01-15', 'INDIAN BANK', 'J. P. NAGAR 1ST PHASE', 'Mr. J. PURUSHOTHAM NAIDU', '', '9845949967', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36461, '0849637b-6229-42f8-ba74-2beaa8ddd3c9', '2021-01-15', 'INDIAN BANK', 'JP NAGAR 9TH PHASE', 'Mrs. LALITHA. M. V', '', '9845949967', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36462, 'b7ef360d-9150-4614-9b43-23857d755afd', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'RAJAJINAGAR', 'Mrs. ASHA. B. SHETTY', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36463, '173a205f-3e2a-4e7b-96e2-e130d866a5be', '2021-01-15', 'INDIAN BANK', 'INDUSTRIAL FINANCE BRANCH', 'M/s. GLOBAL TECH PARK PRIVATE LIMITED.,', '', '9980165935', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36464, '36ab8f5f-1e43-4353-8055-db624b603775', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'RAJAJINAGAR', 'Mr. D. RAVI', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36465, '6000705d-a72c-4856-9a23-e2509db4785e', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'RAJAJINAGAR', 'Mr. D. RAVI', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36466, 'df885691-9bcb-4beb-b4ff-4b9045e7ce01', '2021-01-09', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mr. G. ROYAL RICHARD', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-08 18:30:00', '2021-01-08 18:30:00', 1, 1, 'MANJUNATH'),
(36467, '6376c566-5a34-4849-b850-d407aeab58b0', '2021-01-09', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mrs. P. G. SABITHA & Mr. C. S. MAHENDRA', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-08 18:30:00', '2021-01-08 18:30:00', 1, 1, 'MANJUNATH'),
(36468, '364c9a58-1a4e-4174-a392-37f185d9df11', '2021-01-09', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mr. M. K. RAGHAVENDRA', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-08 18:30:00', '2021-01-08 18:30:00', 1, 1, 'MANJUNATH'),
(36469, 'e54ab9f6-58bb-4d94-872b-f2fc2f10bd10', '2021-01-15', 'INCOME TAX', 'BENGALURU', 'Mr. N. SATISH', '', '9972088228', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36470, 'e6a5967c-5392-4279-826a-9f4c3e59239f', '2021-01-09', 'BANK OF BARODA', 'INDIRANAGAR', 'Mrs. EL. CHITRA', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '10000.00', 1, 0, '0000-00-00', '', '2021-01-08 18:30:00', '2021-01-08 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36471, '554516e5-39e3-4e84-8c6c-2cb9b66507a9', '2021-01-15', 'UNION BANK OF INDIA', 'VIJINAPURA', 'Mr. KALEEM. S', '', '9742791112', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36472, 'ddd7048d-2479-480b-b8f7-f5a366ee921c', '2021-01-09', 'UNION BANK OF INDIA', 'ULP SOUTH', 'Mr. M. MAHESH & Mrs. LAKSHMI. N', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-08 18:30:00', '2021-01-08 18:30:00', 1, 1, 'RAJASHEKAR'),
(36473, '42bb9452-6ae0-4f8d-883e-4acfe59d9d2f', '2021-01-15', 'UNION BANK OF INDIA', 'CANTONMENT', 'Mr. N. A. VENKATAREDDY', '', '9741900160', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36474, 'ca2bc7e8-49a2-4613-ae08-ce9d62814609', '2021-01-09', 'UNION BANK OF INDIA', 'NAVARANG', 'Mr. B. K. SHIVAKUMAR', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-08 18:30:00', '2021-01-08 18:30:00', 1, 1, 'RAJASHEKAR'),
(36475, '507a3290-9577-48ca-944d-a20409058964', '2021-01-15', 'DUMMY', 'DUMMY', 'GF', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36476, '3365aacb-98e7-4c53-9298-370e37c1d83b', '2021-01-15', 'DUMMY', 'DUMMY', 'Mr. V. K. C. UNNI & Mr. SADASHIVAN. C. UNNI', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36477, '82153e61-a3a6-47c1-ac93-fffd95d3adaa', '2021-01-15', 'KARNATAKA BANK LTD', 'MARATHAHALLI', 'Mr. SUDARSHAN. H. T', '', '9739989066', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36478, 'd3ebf0e6-beae-43a2-8d54-ab23936f50d1', '2021-01-15', 'DUMMY', 'DUMMY', 'S', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36479, '6a2ec346-a957-4bf2-8a64-7526a04dde09', '2021-01-15', 'INDIAN BANK', 'IND RETAIL PROCESSING CENTRE', 'Mr. KIRAN SHAGLE CHIKKAPPA', '', '9845002816', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36480, '827b03cb-681a-4f61-b627-897053090b95', '2021-01-15', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'HALASUR', 'Mr. K. V. SRINIVAS & SHARATH BABU. K. S', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36481, 'a7552ba2-a3e6-4f6d-91ac-9443e64458fa', '2021-01-10', 'UNION BANK OF INDIA', 'ULP RAJAJINAGAR', 'Mr. RANJITHA. H. S & Mrs. SHRUTHI. G. N', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2021-01-09 18:30:00', '2021-01-09 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36482, '9a721ead-6932-40ba-9532-8f4c23503c97', '2021-01-15', 'INDIAN BANK', 'RMV 2ND STAGE', 'Mrs. GEETHA KUMAR alias JAYALAKSHMI. S', '', '9845148765', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36483, '6422ec42-5db3-42fd-afde-73ccc63250cd', '2021-01-15', 'INDIAN BANK', 'RMV 2ND STAGE', 'Mr. VENKATRAMAN. T. S', '', '9845148765', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36484, '8b36f909-530e-4f17-8770-95e30bad8660', '2021-01-10', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'Mr. M. NAGARAJ', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-09 18:30:00', '2021-01-09 18:30:00', 1, 1, 'MANJUNATH'),
(36485, 'cf2c4a5d-66bd-4ae6-a37d-990ca656ed8e', '2021-01-10', 'UNION BANK OF INDIA', 'BTM LAYOUT', '', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-09 18:30:00', '2021-01-09 18:30:00', 1, 1, 'MANJUNATH'),
(36486, 'c7431f67-8534-4242-9dcb-c89f8899228b', '2021-01-15', 'INDIAN BANK', 'BASAVANAGUDI', 'Mr. VINOTHKUMAR. V', '', '7353971907', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36487, '8d13f37a-eae9-49b1-a662-c35dee1c43a5', '2021-01-15', 'DUMMY', 'DUMMY', 'DS', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36488, 'd8dc1259-15c6-456b-8068-f6d05e967473', '2021-01-15', 'DUMMY', 'DUMMY', 'S', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36489, '6a0d0ebc-44eb-4fdd-a612-665f5de6dda0', '2021-01-15', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mr. B. S. AMALANATH KUMAR', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36490, 'e7072ec7-b948-41cf-9946-138a93865425', '2021-01-15', 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURCH ROAD', 'Mrs. SHABANA MOHAMMED SHANI', '', '9886763751', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36491, 'f1322395-66ab-4a32-b2ee-c09d3c2db218', '2021-01-15', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. RAVI VARMA. S', '', '9900417263', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36492, 'd67c3d5b-ac57-41c3-af04-4e526bcb8ca0', '2021-01-15', 'UNION BANK OF INDIA', 'KORAMANAGALA', 'Mr. SHARATH SHIVANANDAMURTHY', '', '9900103039', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36493, 'eccfe133-3fa7-402b-9048-0aeb10729401', '2021-01-15', 'DUMMY', 'DUMMY', 'S', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36494, 'c7efb8f3-f1e4-4ea3-961e-3bdd6e73d936', '2021-01-15', 'KARNATAKA BANK LTD', 'KASTURBA ROAD', 'Mr. K. N. UMESH & Mrs. MANJULA', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'BHASKAR'),
(36495, '879ee5ef-2aae-446e-b24e-b0b43eaed913', '2021-01-10', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'Mr. N. M. NARASIMHAN', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2021-01-09 18:30:00', '2021-01-09 18:30:00', 1, 1, 'RAJASHEKAR'),
(36496, '97d5c42f-925f-45c5-887f-cc074b377506', '2021-01-15', 'THE SIRSI URBAN SAHAKARI BANK LTD', 'RAJAJINAGAR', 'Mr. ULLAS RAMANANDPAI & Mrs. VANDANA U PAI', '', '9845465221', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36497, '4979b057-f951-4263-8a7b-6a68110f6059', '2021-01-13', 'INCOME TAX', 'BENGALURU', 'Mr. S. N. RAMACHANDRA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '20000.00', 1, 0, '0000-00-00', '', '2021-01-12 18:30:00', '2021-01-12 18:30:00', 1, 1, 'RAJASHEKAR');
INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(36498, '356e4115-edcb-4938-9c78-47130a5da8e1', '2021-01-15', 'DUMMY', 'DUMMY', 'D', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36499, 'b27823b2-5251-49e5-88f5-2e4da1e11488', '2021-01-15', 'DUMMY', 'DUMMY', 'D', '', '0000000000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36500, '3d19a142-4435-43b1-bdfe-37379f7411ca', '2021-01-13', 'UNION BANK OF INDIA', 'BTM LAYOUT', 'Mr. K. SRINIKESH ACHARYA', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-12 18:30:00', '2021-01-12 18:30:00', 1, 1, 'MANJUNATH'),
(36501, 'ee266525-e5b0-4446-bcb3-adc62728045f', '2021-01-13', 'UNION BANK OF INDIA', 'CHANDAPURA', 'Mr. A. GOVINDAIAH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2021-01-12 18:30:00', '2021-01-12 18:30:00', 1, 1, 'MANJUNATH'),
(36502, '4dcf80c1-26fc-486e-9497-8a19f3de37ae', '2021-01-13', 'UNION BANK OF INDIA', 'CHANDAPURA', 'Mr. UTTAM DEBNATH & Mrs. RUPA DEBNATH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-12 18:30:00', '2021-01-12 18:30:00', 1, 1, 'MANJUNATH'),
(36503, 'ad0a7b22-e88b-4047-b2bb-ec57f3007cd8', '2021-01-15', 'PUNJAB NATIONAL BANK', 'ZONAL SASTRA CENTRE DELHI', 'Mr. MANOJ KUMAR', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36504, '3b2f6942-4b9a-4311-bf81-d96d5a179e2c', '2021-01-13', 'UNION BANK OF INDIA', 'HARAGADDE', '', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2021-01-12 18:30:00', '2021-01-12 18:30:00', 1, 1, 'MANJUNATH'),
(36505, '093191f6-6589-4849-b83d-d5760b50d941', '2021-01-15', 'UNION BANK OF INDIA', 'CHAMARAJAPET', 'M/s. NAVANITHA HOMES', '', '8073725664', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36506, 'f1078a47-8634-4447-8f77-8900a2eb429e', '2021-01-15', 'CENTRAL BANK OF INDIA', 'RAJARAJESHWARINAGAR', 'Mr. LOKESH. H. B', '', '9945003219', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36507, '91ae1168-dd89-43fb-afe7-ca97b6492896', '2021-01-15', 'UNION BANK OF INDIA', 'HARAGADDE', 'Mr. N. M. KALYANI', '', '9901422243', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'MANJUNATH'),
(36508, 'e29a7fec-6c75-4c9c-b19f-589b8b048aea', '2021-01-14', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'Mr. K. GOPALA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36509, 'f54892d7-e3d4-49f2-bd99-7b771fb43554', '2021-01-14', 'STATE BANK OF INDIA', 'RACPC', 'Mr. G. M. MANJUNATH', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36510, '88cac195-ee25-4541-8910-acb41fa4d3bd', '2021-01-14', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. IBRAHIM KHAN & Mrs. JABEEN ARA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36511, 'c77dc8ee-740c-4cb3-b869-12b47cacaf0b', '2021-01-15', 'UNION BANK OF INDIA', 'YELAHANKA', 'Mr. M. L. SATYANARAYANA', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36512, '3acb1343-5573-432a-8010-e814b5b7be2a', '2021-01-15', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mr. RAGHU', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36513, '7353592e-8941-4596-bf67-0b230ae3db6c', '2021-01-15', 'KARNATAKA BANK LTD', 'MARATHAHALLI', 'Mr. HONNAPPA. R', '', '9060901304', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-15 02:35:24', '2021-01-15 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36514, '2c13d626-af90-482f-ad29-d0f41705ab1b', '2021-01-14', 'UCO BANK', 'BASAVESHWARANAGAR', 'Mrs. DEVEERAMMA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36515, 'b6bbb572-b2ef-4772-b4b5-c7b6da95430d', '2021-01-14', 'STATE BANK OF INDIA', 'RACPC', 'Dr. AMARESH GADDI', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36516, 'ee83c0cf-a05c-4145-a119-8313be1c6455', '2021-01-14', 'PERSONAL', 'BENGALURU', 'Mrs. MAMATHA. J', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36517, 'ab17dda9-e4cd-4b8b-bc6e-b071eb85e291', '2021-01-14', 'UNION BANK OF INDIA', 'HAINES ROAD', 'Mr. EMMANUEL JOSEPH', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'RAJASHEKAR'),
(36518, 'a6e4acc5-55d4-4512-8aea-db3497b72d1c', '2021-01-14', 'INDIAN BANK', 'MALLESHWARAM', 'M/s. AISHWARYAM CONCEPT HOMES.,', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'MANJUNATH'),
(36519, 'ecb49f5d-4e48-4dd9-8171-f988213ab8f9', '2021-01-16', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mrs. K. VYDEHI', '', '9900638383', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-16 02:35:24', '2021-01-16 02:35:24', 1, 1, 'MANJUNATH'),
(36520, '55f814a5-ee86-4809-a617-2a0bd60a801e', '2021-01-14', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. ADITI & Mr. SUNIL KUMAR', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2600.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36521, '359b5bde-a832-4111-86d5-79dc64664bd6', '2021-01-14', 'UNION BANK OF INDIA', 'JAKKUR', 'Mrs. SHASHIKALA', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2021-01-13 18:30:00', '2021-01-13 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36522, '986a5f91-7cb7-4f24-8d79-872e8844c14f', '2021-01-16', 'INDIAN BANK', 'ELECTRONIC CITY', 'KARTHIKEYAN', '', '9962249306', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-16 02:35:24', '2021-01-16 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36523, 'a8d49e21-5d44-4393-a63d-8859afbf34e9', '2021-01-16', 'UNION BANK OF INDIA', 'CHAMARAJAPET', 'Mr. M. G. RANGANATH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'MANJUNATH'),
(36524, 'c0f0f807-d8f2-4bf4-8219-62a21690a5e6', '2021-01-16', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'Mr. M. G. RANGANATH', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'MANJUNATH'),
(36525, '5c6031f3-b0cd-4922-b03b-be683e5c55f3', '2021-01-18', 'UNION BANK OF INDIA (EANDHRA)', 'BANASHANKARI', 'Mrs. MEENAL TAK & Mr. T. DHEERAJ KUMAR TAK', '', '9449113664', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-18 02:35:24', '2021-01-18 02:35:24', 1, 1, 'MANJUNATH'),
(36526, '58cdfe86-74b0-4fb1-ad01-8d5e44129ee8', '2021-01-18', 'UNION BANK OF INDIA (EANDHRA)', 'BANASHANKARI', 'Mrs. SHARMITA TAK & Mr. VIKAS TAK', '', '9449113664', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-18 02:35:24', '2021-01-18 02:35:24', 1, 1, 'MANJUNATH'),
(36527, 'f296f194-53e4-4514-ae5b-30d859fd1b6c', '2021-01-16', 'UNION BANK OF INDIA', 'MALLESHWARAM', 'Mr. MOHAN RANGA. K. L & Mrs. VEENA. S', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'RAJASHEKAR'),
(36528, 'e666659c-3c13-4eea-9375-801862ed426c', '2021-01-18', 'UNION BANK OF INDIA (EANDHRA)', 'HEBBAL', 'Mr. HANUMEGOWDA', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-18 02:35:24', '2021-01-18 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36529, '69908129-66ee-4cf0-ac22-8d6c306ba0cd', '2021-01-16', 'UNION BANK OF INDIA (ECORP)', 'SRINAGAR', 'Dr. VIVEK. J', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'RAJASHEKAR'),
(36530, 'f58f33e6-239b-44b9-a127-1ca1226ea5cc', '2021-01-16', 'STATE BANK OF INDIA', 'RACPC', '', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '1000.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'RAJASHEKAR'),
(36531, '5c270e70-5409-4a01-b6bb-688cd4ba375a', '2021-01-16', 'UNION BANK OF INDIA', 'JAKKUR', 'Mr. ASHWIN JAKKUR SRIKANTA & Mrs. MITHAISHI. N', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36532, '6f879c32-3e17-4531-a217-8da461bce655', '2021-01-18', 'UNION BANK OF INDIA', 'DEVANAHALLI', 'Mrs. S. V. DEVARATHNAMMA', '', '8095149484', '', '', '', NULL, 5, NULL, '', '0.00', '', '4000.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-18 02:35:24', '2021-01-18 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36533, '8c469742-45ec-479b-aa1a-012b0c4c69b2', '2021-01-18', 'UNION BANK OF INDIA (ECORP)', 'WHITEFIELD', 'AARTI.M. LOKAPUR', '', '9538859000', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-18 02:35:24', '2021-01-18 02:35:24', 1, 1, 'LAKSHMIKANTH'),
(36534, '2a656a60-700e-416f-83e8-62f198f11c58', '2021-01-16', 'INDIAN BANK', 'BASAVANAGUDI', 'Mr. RAVI GHATIKAR', '', '', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-15 18:30:00', '2021-01-15 18:30:00', 1, 1, 'BHASKAR'),
(36535, 'd77e27e9-e588-4245-94c5-590eaa20c6e3', '2021-01-18', 'INDIAN BANK', 'SAM BRANCH', 'M/s. SUKRITHA BUILDMANN (P) LTD., & Mrs. N. VANISHREE', '', '0000000000', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-18 02:35:24', '2021-01-18 02:35:24', 1, 1, 'BHASKAR'),
(36536, '2d490cef-2ddc-4660-9217-96f17c1825ac', '2021-01-19', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'Mr. JHONY. G & Mrs. ANITHA. K. R', '', '9036099706', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36537, '643ff1a7-3651-4aab-b5ce-7782afaffa5c', '2021-01-19', 'CENTRAL BANK OF INDIA', 'CANTONMENT', 'Mr. AMARCHAND', '', '9008473777', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36538, 'a92912ac-4034-494b-88c6-955ff7579c9d', '2021-01-19', 'CENTRAL BANK OF INDIA', 'CANTONMENT', 'Mr. AMARCHAND', '', '9008473777', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36539, '8159edc4-37de-4e88-9fb8-b2b8210af125', '2021-01-19', 'INDIAN BANK', 'BENSON TOWN', 'Mrs. B. R. VEENA RANI @ B. R. VEENA', '', '9980499227', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36540, 'fa24cfb9-22e7-4d56-a0b5-8f5ce47c25ad', '2021-01-19', 'UNION BANK OF INDIA (ECORP)', 'BASAVESHWARA NAGAR', 'ramesh', '', '7760044165', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36541, 'a0d81e57-2f9b-46e6-979e-31ee8344111c', '2021-01-19', 'UNION BANK OF INDIA', 'RAJAJINAGAR', 'Mr. VELARAM PREMARAMJI CHOUDHARY & Mrs. GOWRIDEVI', '', '9448735762', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36542, '4762bf4f-d3f2-413c-9662-2760822daeb5', '2021-01-18', 'UNION BANK OF INDIA (ECORP)', 'SHANTHINAGAR', '', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-17 18:30:00', '2021-01-17 18:30:00', 1, 1, 'MANJUNATH'),
(36543, '64c16586-8dd5-4be8-8052-701755d8c83f', '2021-01-18', 'UNION BANK OF INDIA', 'ANDHRAHALLI', 'Mrs. K. BHAVISHYA', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-17 18:30:00', '2021-01-17 18:30:00', 1, 1, 'MANJUNATH'),
(36544, '864ae403-97c9-43d8-a0cc-34e6b02ee8ae', '2021-01-18', 'UNION BANK OF INDIA', 'ANDHRAHALLI', 'Mrs. GEETHA MOHAN', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-17 18:30:00', '2021-01-17 18:30:00', 1, 1, 'MANJUNATH'),
(36545, '6631ce47-bd88-4cd0-85e9-88e544278707', '2021-01-19', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'M/s. ADITHYA DEVELOPERS', '', '9845832768', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36546, '066a1d53-c658-4182-9e06-bca539958b3d', '2021-01-19', 'STATE BANK OF INDIA', 'M. G. ROAD', 'Mr. SHARANABASAPPA & Mrs. RENUKA PATIL', '', '9243227822', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-19 02:35:24', '2021-01-19 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36547, '01a98a0f-5c39-4012-815c-b0ffef866f69', '2021-01-19', 'UNION BANK OF INDIA', 'HENNUR ROAD', 'Mrs. PRERNA DONGRE & Mr. SHIRISH BILLORE', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3750.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36548, '3d17b4c2-35e1-433d-ac9a-831684d1a49c', '2021-01-20', 'CENTRAL BANK OF INDIA', 'K. G. ROAD', 'mohammed suhaib', '', '9880423819', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36549, 'ab52436e-c77c-4946-a4f2-a0fbb1f89540', '2021-01-20', 'STATE BANK OF INDIA', 'ARMB', 'Mrs. R. BHUVANESHWARI', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36550, 'fc4ad123-eaff-46fb-9adc-c3bec9811220', '2021-01-20', 'KARNATAKA BANK LTD', 'HESARAGHATTA ROAD', 'Mrs. KALAVATHI', '', '9483514330', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36551, 'e05df5a8-d54b-48f2-93df-81f47d29032e', '2021-01-20', 'KARNATAKA BANK LTD', 'HESARAGHATTA ROAD', 'Mr. B. J. VENKATESH', '', '9845937211', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36552, '5f39fd78-44fb-45de-84b2-d5064d175766', '2021-01-19', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. K. N. VENKATACHALAPATHI', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'RAJASHEKAR'),
(36553, 'e0cef898-cfed-4308-914f-a51eb3133a41', '2021-01-20', 'STATE BANK OF INDIA', 'RACPC', 'Mr. MANOJ KUMAR. D & Mrs. VAIDEHI. J', '', '9972291291', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36554, 'b45f83df-fe30-455a-a847-c2e54a1c2838', '2021-01-19', 'UNION BANK OF INDIA', 'SAHAKARNAGAR', 'Mr. GEORGE KOSHY. K', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36555, '2b14ba6b-5e45-44c3-8373-c0e14d997ebd', '2021-01-19', 'UNION BANK OF INDIA', 'RAJANAKUNTE', 'Mr. R. PRAKASH', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36556, '3436a997-e378-48f3-bf39-9d4ec6e9b502', '2021-01-19', 'UNION BANK OF INDIA', 'BASAVANAGUDI', 'Mr. Y. SHYLENDRA PRASAD & Mrs. C. S. ROOPASHREE', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'MANJUNATH'),
(36557, '8b32f935-f553-4467-8854-10c54f72d7e6', '2021-01-20', 'STATE BANK OF INDIA', 'IISC', 'Mr. BIRAJA PRASAD MOHAPATRA', '', '8971300100', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'MANJUNATH'),
(36558, '21cbfb88-ec7f-41a5-98f9-f020c3c336c4', '2021-01-20', 'INDIAN BANK', 'J. P. NAGAR', 'Mr. SUBRAMANI. L', '', '9448088499', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 02:35:24', '2021-01-20 02:35:24', 1, 1, 'MANJUNATH'),
(36559, 'a4d333ed-2bf6-4fb6-98db-9bbf3526022d', '2021-01-19', 'INDIAN BANK', 'CUBBONPET', 'Mr. VALE MOHAMMED HASEEB', '', '', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'BHASKAR'),
(36560, 'cd101d9d-f54f-450e-ba98-617d57b8b02b', '2021-01-19', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mr. NITHIN. M. G', '', '', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'BHASKAR'),
(36561, '9605b13d-e0b2-46f3-8321-28a429cda125', '2021-01-21', 'UNION BANK OF INDIA', 'CHANDRA LAYOUT', 's.v.nagaraj', '', '9632391932', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36562, 'f32f69d6-d6c4-415a-8273-24b5fbde7a87', '2021-01-21', 'INDIAN BANK', 'HALASUR', 'kannan p', '', '9945055441', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36563, 'cae5688a-93b6-4185-b90a-1e4479702c5e', '2021-01-21', 'UNION BANK OF INDIA', 'PES COLLEGE', 'naveen', '', '8732821271', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36564, 'e6e449e6-98b6-484b-b03a-744a1c87e009', '2021-01-21', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'raghuprakash', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36565, '011cdeed-6527-4b5a-9314-a0eb2f579e5e', '2021-01-19', 'UNION BANK OF INDIA (EANDHRA)', 'BHARATH NAGAR', 'Mr. ABHISHEK. G', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2021-01-18 18:30:00', '2021-01-18 18:30:00', 1, 1, 'RAJASHEKAR'),
(36566, '00eff102-898b-4412-869e-307157371984', '2021-01-21', 'UNION BANK OF INDIA (EANDHRA)', 'YESHWANTHPUR', 'ganesh', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36567, 'ec61ddb0-9080-4ab8-a3be-6c52fb46afd9', '2021-01-21', 'UNION BANK OF INDIA (EANDHRA)', 'YESHWANTHPUR', 'manjula', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36568, 'd08699a5-8ec1-4bfa-b863-2d9d16e48096', '2021-01-21', 'UNION BANK OF INDIA', 'AGB LAYOUT', 'Mrs. JAHNAVI GOKULAKRISHNA', '', '7892580347', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'MANJUNATH'),
(36569, 'e28ced52-ba39-4c5b-8daf-beb63f577dde', '2021-01-21', 'INCOME TAX', 'BENGALURU', 'j.b.patel', '', '9844084603', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'MANJUNATH'),
(36570, 'ecf8b043-d43d-446f-84af-16980204ec71', '2021-01-21', 'BANK OF MAHARASHTRA', 'B T M LAYOUT', 'kishor', '', '8800537008', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-21 02:35:24', '2021-01-21 02:35:24', 1, 1, 'MANJUNATH'),
(36571, 'f18c8837-f4c6-454f-adf9-1d7f2800de95', '2021-01-22', 'UNION BANK OF INDIA (ECORP)', 'BTM LAYOUT', 'Mr. OGGU SUDHAKAR', '', '9717479795', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'MANJUNATH'),
(36572, 'bd1a714e-2ddb-4b12-9217-c7c7acf59859', '2021-01-22', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Mr. JOSE ANTONY. A', '', '9880322841', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'MANJUNATH'),
(36573, 'f64fad25-2838-45b7-9fa2-56e3bfe11104', '2021-01-22', 'UNION BANK OF INDIA (ECORP)', 'BASAVANAGUDI', 'Manjunath', '', '9845549468', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'MANJUNATH'),
(36574, 'd4af972d-291f-44e6-bb6b-c82bca6a6d3e', '2021-01-21', 'INDIAN BANK', 'BANASHANKARI', 'Mr. M. R. CHIRANJEEVI', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'MANJUNATH'),
(36575, 'd6c6592f-b515-468e-b5d1-bce27f3b82b8', '2021-01-22', 'BANK OF MAHARASHTRA', 'BASAVANAGUDI', 'Mrs. K. SHILPA', '', '9886584194', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36576, '3292f7e5-c7c3-4d53-9096-54736070e2f2', '2021-01-22', 'STATE BANK OF INDIA', 'RACPC', 'raghavi', '', '9986668888', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36577, 'ff43c253-0072-4f3e-80c3-aeeeeee24f96', '2021-01-22', 'INDIAN BANK', 'HALASUR', 'girish babu', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36578, 'b6304161-e4ce-41a0-b691-69c6888c6175', '2021-01-21', 'UNION BANK OF INDIA', 'HAINES ROAD', 'Mr. MUNEER AHMED. S', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'RAJASHEKAR'),
(36579, 'd23a5eba-946c-41f9-81ea-aa5bbc37a831', '2021-01-22', 'KARNATAKA BANK LTD', 'MARATHAHALLI', 'Mr. R. LAKSHMANA REDDY', '', '9448703492', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36580, '7f1b37a4-1519-4a95-b526-ce3909fda163', '2021-01-22', 'CENTRAL BANK OF INDIA', 'SOPHIA SCHOOL', 'jagadeesh', '', '9448036696', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36581, '974085f6-b04c-4b18-9516-d0d8d90db98f', '2021-01-22', 'CENTRAL BANK OF INDIA', 'SOPHIA SCHOOL', 'jagadeesh', '', '9448036696', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36582, '3f54481c-f19b-4d40-bbaf-00600585f3bb', '2021-01-21', 'KARNATAKA BANK LTD', 'BANJARAHILLS, HYDERABAD', 'Mrs. R. SAILAZA & Mr. R. MAHESHWARA NAIDU', '', '', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'BHASKAR'),
(36583, '79e57d02-110b-4eaf-a927-0660f721bc2c', '2021-01-22', 'PERSONAL', 'BENGALURU', 'M/s. GOKULDAS IMAGES LIMITED.,', '', '9945666055', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'BHASKAR'),
(36584, '5acccc3f-4aa1-4c57-9918-874283f0095c', '2021-01-22', 'KARNATAKA BANK LTD', 'BANJARAHILLS, HYDERABAD', 'mr. shivaprasad', '', '9686691117', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-22 02:35:24', '2021-01-22 02:35:24', 1, 1, 'BHASKAR'),
(36585, 'aafcd1f4-89ff-4560-8feb-cfadcfddf870', '2021-01-21', 'CANARA BANK', 'SOUTH END CIRCLE', 'Mr. B. G. KAMALAKARA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'RAJASHEKAR'),
(36586, 'e36afdc1-03b4-4c2b-8ff3-abd31c69d83b', '2021-01-23', 'UNION BANK OF INDIA (ECORP)', 'KENGERI', 'Mr. T. SELVARASU & Mrs. S. VIJAYALAKSHMI', '', '8123430315', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-23 02:35:24', '2021-01-23 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36587, '7463b731-9b61-47a8-aed0-32c46bdbaef4', '2021-01-21', 'INDIAN BANK', 'PEENYA', 'Mr. RAJENDRA KUMAR. A', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'RAJASHEKAR'),
(36588, 'f5d14057-58b7-4bb8-8b05-6ee7aaae4ea1', '2021-01-23', 'UNION BANK OF INDIA', 'BASAVESHWARANAGAR', 'Mr. K. G. BABU', '', '9902827332', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-23 02:35:24', '2021-01-23 02:35:24', 1, 1, 'MANJUNATH'),
(36589, '647d6eee-5df3-464d-afc5-299338898f6a', '2021-01-21', 'INDIAN BANK', 'NEW THIPPASANDRA', 'Mrs. ARATHI RANGAN IYER & Mr. V. NARASIMHAN', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '2000.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'MANJUNATH'),
(36590, '2d24f25e-f578-4346-8728-7ef7d508c58f', '2021-01-21', 'INDIAN BANK', 'BTM LAYOUT', 'Mrs. MAHALAKSHMI. U', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'MANJUNATH'),
(36591, '5dce845e-e29d-4888-ab68-62773892bb9e', '2021-01-21', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. BALAJI PARTHASARATHY & Mrs. TANUJA BALAJI', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '10600.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-20 18:30:00', '2021-01-20 18:30:00', 1, 1, 'MANJUNATH'),
(36592, '69197c43-3dd7-4f46-89b6-dd7495595838', '2021-01-23', 'INDIAN BANK', 'BASAVANAGUDI', 'Mrs. V. SHOBHA', '', '9901585432', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-23 02:35:24', '2021-01-23 02:35:24', 1, 1, 'BHASKAR'),
(36593, '4d2702e4-bdef-4d6e-bbb6-6822103c8b4c', '2021-01-23', 'KARNATAKA BANK LTD', 'BASAVANAGUDI', 'Mr. C. R. GOPALAKRISHNA, Mr. C. G. GURU CHARAN, Mrs. C. G. SOUMYA & Mr. C. R. SAMPATH KUMAR', '', '9341239775', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-23 02:35:24', '2021-01-23 02:35:24', 1, 1, 'BHASKAR'),
(36594, 'c595fe1c-5dc2-4271-8e19-c5af7506d25f', '2021-01-23', 'STATE BANK OF INDIA', 'R. T. NAGAR', 'Mr. K. EMAM SABI', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36595, '003e8fbe-72b4-439b-ab67-a2650cb5a4a0', '2021-01-23', 'BANK OF BARODA', 'PAVAGADA', 'Mr. MOHAMMED ATHAULLA', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5000.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36596, '57f47ce4-e8f1-4765-b341-f07087e5623e', '2021-01-23', 'UNION BANK OF INDIA', 'MAHALAKSHMI LAYOUT', 'Mr. BERI AIMALAI CHETTY', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '5500.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36597, '491a6d00-4f61-4481-ad82-309c9b2e27d6', '2021-01-25', 'INDIAN BANK', 'RMV 2ND STAGE', 'T.M.SRINIVAS', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-25 02:35:24', '2021-01-25 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36598, 'de314d3f-8b68-4062-a657-cfd2a378b72b', '2021-01-25', 'UNION BANK OF INDIA', 'AVENUE ROAD', 'Mrs. SHASHIKALA. H', '', '9742776662', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-25 02:35:24', '2021-01-25 02:35:24', 1, 1, 'MANJUNATH'),
(36599, 'e71eaa62-dcdc-4498-8f72-90686b4c1a9f', '2021-01-25', 'INDIAN BANK', 'BANASHANKARI 2ND STAGE', 'prakash babu', '', '9980304249', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-25 02:35:24', '2021-01-25 02:35:24', 1, 1, 'MANJUNATH'),
(36600, '672666b1-87e5-4a76-84ef-8a44a18d3890', '2021-01-25', 'UNION BANK OF INDIA', 'AVENUE ROAD', 'Mr. CHANDAN MALHOTRA', '', '9886163613', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-25 02:35:24', '2021-01-25 02:35:24', 1, 1, 'MANJUNATH'),
(36601, 'd4df5822-18f0-437e-8a20-506e6d20fd06', '2021-01-25', 'UNION BANK OF INDIA', 'AVENUE ROAD', 'Mr. GAUTAM H. MALHOTRA', '', '9886163613', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-25 02:35:24', '2021-01-25 02:35:24', 1, 1, 'MANJUNATH'),
(36602, '09d49966-4e25-467a-abd4-3e8f759fff12', '2021-01-23', 'INDIAN BANK', 'JAYANAGAR 9TH PHASE', 'Mrs. NANDINI SRIDHARAN & Mr. M. SRIDHARAN', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'MANJUNATH'),
(36603, '0db307f3-9ea2-4108-a9aa-67fe098edfaf', '2021-01-23', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mr. K. H. GOPAL', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36604, '2092b8b4-3d0e-4516-823a-3cc6af23f3bb', '2021-01-23', 'STATE BANK OF INDIA', 'MALLESHWARAM', 'Mrs. MANGALA. S. PAWAR & Mr. SHIVAJI RAO PAWAR', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36605, '5fa65252-70ef-4086-845d-094000228582', '2021-01-23', 'UNION BANK OF INDIA', 'BHUVANESHWARINAGAR', 'Mr. B. V. PRAKASH ANGADI', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36606, '13e99429-a925-4ed5-892e-2f459ad8c738', '2021-01-27', 'UNION BANK OF INDIA', 'R. T. NAGAR', 'chinnappa.t', '', '9448045537', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 02:35:24', '2021-01-27 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36607, '716c9614-0700-495b-9fed-d11476bfe073', '2021-01-23', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Miss. S. G. ASHWINI', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'RAJASHEKAR'),
(36608, '9de13b19-13ce-487e-9fe9-deaef01087e1', '2021-01-27', 'KARNATAKA BANK LTD', 'HESARAGHATTA ROAD', 'mR. M. H. NANDISH', '', '7975072473', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 1, 0, '0000-00-00', '', '2021-01-27 02:35:24', '2021-01-27 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36609, '3fa6fa82-296e-453a-8b28-66cad2e47564', '2021-01-23', 'INDIAN BANK', 'PRASHANTHNAGAR', 'Mr. MAHAVEER KUMAR SURANA & Mrs. INDIRA DEVI SURANA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-22 18:30:00', '2021-01-22 18:30:00', 1, 1, 'RAJASHEKAR'),
(36610, 'f3577879-11fb-4fb4-a5b0-7c7c3bf86140', '2021-01-27', 'INDIAN BANK', 'PRASHANTHNAGAR', 'naadfsf', '', '9845081686', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 02:35:24', '2021-01-27 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36611, '05b59459-9ca7-46be-892d-9aaf8760b1a5', '2021-01-27', 'BANK OF MAHARASHTRA', 'SHIVAJINAGARR', 'aleem', '', '9611401014', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 02:35:24', '2021-01-27 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36612, 'e311797e-170f-4894-8d1d-ec36662c622c', '2021-01-26', 'INDIAN OVERSEAS BANK', 'SRIRAMPURA MYSORE', 'Mr. M. A. SHEKHAR & Mrs. M. S. USHA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36613, '065d8922-c9e8-42bb-9504-221c1b7dc818', '2021-01-27', 'INDIAN BANK', 'DODDABANASWADI', 'Mrs. NAGARATHNA. T. M', '', '9901654104', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 02:35:24', '2021-01-27 02:35:24', 1, 1, 'BHASKAR'),
(36614, 'b11c11ea-469b-4fcc-9d88-cab83f44bd65', '2021-01-27', 'INDIAN BANK', 'JAYANAGAR', 'M/s. SOORYA PROPERTIES.,', '', '9492050075', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 02:35:24', '2021-01-27 02:35:24', 1, 1, 'BHASKAR'),
(36615, '6d6e2b81-abd7-4bc2-8b86-326cbe0d9d33', '2021-01-28', 'UNION BANK OF INDIA', 'JAYANAGAR', 'ANIL BHARGVA', '', '9740418210', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'MANJUNATH'),
(36616, '2c723de7-2873-4bc2-8076-2bd87a2371a7', '2021-01-26', 'UNION BANK OF INDIA', 'JAYANAGAR', 'Mrs. VIRAJA ANILA GARIMELLA & Mr. ANIL BHARGAVA MULUKUTLA', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'MANJUNATH'),
(36617, 'f95d09a3-01e0-400b-832b-68cd2dc0ebc4', '2021-01-28', 'INDIAN OVERSEAS BANK', 'BILEKAHALLI', 'Mr. SUBHASCHANDRA SHETTY', '', '9845296028', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3200.00', 1, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'MANJUNATH'),
(36618, '2b292376-640c-4e52-8525-c5e0c4fb0b63', '2021-01-28', 'UNION BANK OF INDIA', 'RICHMOND TOWN', 'Mr. V. H. MAHESHA', '', '9448024324', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'MANJUNATH'),
(36619, '3fdc811b-0020-492a-ba49-5bb37850a76f', '2021-01-26', 'UNION BANK OF INDIA', 'RAJARAJESHWARINAGAR', 'Mr. D. SURENDRA BABU & Mr. SRIKAR. D. S', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4200.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'MANJUNATH'),
(36620, '4db3ec03-1e60-43e0-bbd7-56078623146c', '2021-01-28', 'KARNATAKA BANK LTD', 'RLPC TUMKUR', 'ganesh', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36621, 'ce10ee8e-e682-4280-9ace-299f865b8fc7', '2021-01-26', 'UNION BANK OF INDIA (ECORP)', 'MYSORE ROAD', 'Mrs. LAVANYA MADAPPA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3500.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'RAJASHEKAR'),
(36622, '0a836ef0-3ba7-4611-a8d4-93fffb72c6ee', '2021-01-26', 'STATE BANK OF INDIA', 'RACPC', 'Mrs. H. L. SOWBHAGYAMMA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'RAJASHEKAR'),
(36623, 'e17d65e3-5b0d-48a6-b387-a3f3fd973ebe', '2021-01-26', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. D. A. SATHISH', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'RAJASHEKAR'),
(36624, 'ee0cf949-f4cb-48f1-be91-f57d7fc99326', '2021-01-26', 'UNION BANK OF INDIA', 'CANTONMENT', 'Mrs. PRIYANKA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'RAJASHEKAR'),
(36625, '8bbeafa9-9900-4f12-84eb-6348da5c64fe', '2021-01-28', 'UNION BANK OF INDIA', 'DOMLUR', 'Mr. VILAS PRABHARA KINI', '', '9448061966', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36626, '99a5a8a8-dded-4dd7-bcb6-b9b8b3fdcdd0', '2021-01-28', 'CANARA BANK (SYNDICATE)', 'T. BEGUR', 'Mrs. G. LAKSHMI', '', '9880937074', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36627, '573a8552-10d2-44a0-9eeb-18ee558ec942', '2021-01-27', 'INCOME TAX', 'BENGALURU', 'Mrs. THARA', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '10000.00', 1, 0, '0000-00-00', '', '2021-01-26 18:30:00', '2021-01-26 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36628, '07db99e7-07a3-4f9a-bf1c-327a8f768c06', '2021-01-28', 'INDIAN BANK', 'SHESHADRIPURAM', 'M/s. L & T CONSTRUCTION EQUIPMENT LIMITED.,', '', '8884180641', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'BHASKAR'),
(36629, 'e7a4c80e-f2b6-4675-a853-1bda73ee948c', '2021-01-28', 'UNION BANK OF INDIA', 'INDIRANAGAR', 'krishnappa', '', '0000000000', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-28 02:35:24', '2021-01-28 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36630, 'e297699d-f673-4ed5-a0cc-f4d3c44186a9', '2021-01-28', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. MANOJ KUMAR. R. P', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36631, 'aee71a0a-ffa5-4dcf-ab0a-856a52f03105', '2021-01-28', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. MANOJ KUMAR. R. P', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36632, '0d79dfcc-b913-4bc8-8b39-48f87f523f28', '2021-01-28', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. MANOJ KUMAR. R. P', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36633, 'fccaa0fa-1af2-4270-86ab-d13a5d013eba', '2021-01-28', 'UNION BANK OF INDIA', 'NIFT HSR LAYOUT', 'Mr. MANOJ KUMAR. R. P', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '14000.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36634, 'a822015a-2325-492b-a1e0-2662cf000566', '2021-01-29', 'INDIAN BANK', 'BANASHANKARI 2ND STAGE', 'Mr. VENKATESH. S', '', '0000000000', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'MANJUNATH'),
(36635, 'f9b846d7-4a87-4da3-96d9-468f0a13616b', '2021-01-29', 'INDIAN BANK', 'BANASHANKARI 2ND STAGE', 'Mrs. N. VIDYA & Mr. NAGARAJAN', '', '9341572001', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'MANJUNATH'),
(36636, 'd8ed628c-3264-4446-9939-bcc9174fb9ed', '2021-01-29', 'UNION BANK OF INDIA', 'ST. JOHN\'S CHURCH ROAD', 'Mrs. AARSHI JAIN & Mr. PRATEEK JAIN', '', '9008083533', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'MANJUNATH'),
(36637, '78077c54-b964-48f0-b5af-316147612366', '2021-01-29', 'UNION BANK OF INDIA (ECORP)', 'HSR LAYOUT', 'VENKTESH', '', '9620672722', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'MANJUNATH'),
(36638, 'a4c7b7e3-2d5b-4e72-8c69-a8950472fa53', '2021-01-28', 'INDIAN BANK', 'AVENUE ROAD', 'Mr. MANAKNATH. L & Mr. MADAN NATH. L', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'MANJUNATH'),
(36639, '9e92d1e6-5b01-4e56-8fd5-e9eabe2184bf', '2021-01-28', 'INDIAN OVERSEAS BANK', 'R. T. NAGAR', 'Mrs. SHEETAL JAICHAND & Mr. NITHIN JANGRA', '', '', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'SUNIL KUMAR'),
(36640, 'e7a04326-e93a-42b6-977b-1a96119c719a', '2021-01-28', 'STATE BANK OF INDIA', 'RACPC', 'Mr. KISHORE REDDY LAKSHMANNAGARI', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2650.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'RAJASHEKAR'),
(36641, '07a5d2c4-3f3d-4692-9bed-d6eacad38860', '2021-01-28', 'STATE BANK OF INDIA', 'RAJAJINAGAR INDUSTRIAL AREA', 'Mr. P. S. RANGANATHA', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '2500.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'RAJASHEKAR'),
(36642, '28b3726e-1482-4875-8301-3ff5485114a5', '2021-01-28', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. VIJAY KUMAR', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'RAJASHEKAR'),
(36643, '204957cb-6289-4823-97f3-f39d9aa9d967', '2021-01-28', 'CENTRAL BANK OF INDIA', 'KODIGEHALLI', 'Mr. RAMJIRAM', '', '', '', '', '', NULL, 8, NULL, '', '0.00', '', '0.00', '4500.00', 1, 0, '0000-00-00', '', '2021-01-27 18:30:00', '2021-01-27 18:30:00', 1, 1, 'RAJASHEKAR'),
(36644, '3c90c4be-f8df-43fe-ab0d-0265e68ebd79', '2021-01-29', 'UNION BANK OF INDIA', 'AGB LAYOUT', 'indudhar', '', '9902666553', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36645, 'd2a93bd9-689f-41f0-8e0a-7fbce14c4eac', '2021-01-26', 'INCOME TAX', 'BENGALURU', 'Mr. C. KARTHIK REDDY', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '7500.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36646, 'e931b59f-70d8-4941-b8aa-f1754c8ea5cb', '2021-01-26', 'INCOME TAX', 'BENGALURU', 'Mr. C. KARTHIK REDDY', '', '', '', '', '', NULL, 1, NULL, '', '0.00', '', '0.00', '7500.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'LAKSHMIKANTH'),
(36647, '3d80c49a-6471-4663-96af-0950379d22a7', '2021-01-29', 'UNION BANK OF INDIA', 'LOAN POINT HSR LAYOUT', 'Mr. ANAND SUBRAMANIAM & Mrs. SUNANDA RAMAKRISHNAN', '', '9916737777', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36648, '5ec6a917-8643-412f-b09e-d5baf5a27327', '2021-01-29', 'INDIAN BANK', 'J. P. NAGAR 1ST PHASE', 'Mr. N. SHANKARA', '', '9620998652', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'BHASKAR'),
(36649, '4224f3ab-260f-462a-b915-b5834ae60b25', '2021-01-29', 'INDIAN BANK', 'BASAVANAGUDI', 'Mr. A. VASUDEVA', '', '9880137031', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'BHASKAR'),
(36650, 'ab4e0916-8cce-4184-b6c8-8ce5406349ff', '2021-01-29', 'INDIAN BANK', 'J. P. NAGAR 1ST PHASE', 'MR. SHANKARA', '', '9620998652', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'BHASKAR'),
(36651, '73956e01-6e2e-421f-95cf-60f5691abb97', '2021-01-29', 'INDIAN BANK', 'M. G. ROAD', 'Mrs. VIJAYALAKSHMI RAJARAM', '', '0804178332', '', '', '', NULL, 4, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-29 02:35:24', '2021-01-29 02:35:24', 1, 1, 'BHASKAR'),
(36652, '99af0560-4532-4d25-a811-69ee9c6b21e5', '2021-01-30', 'CENTRAL BANK OF INDIA', 'CCPC, REGIONAL OFFICE', 'Mr. T. MOHAMMED ISHAQ & Mrs. SUMAYA IBRAHIM', '', '9845033878', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-30 02:35:24', '2021-01-30 02:35:24', 1, 1, 'MANJUNATH'),
(36653, '643c0832-de22-4005-b1ef-6d87a59eeecd', '2021-01-26', 'UNION BANK OF INDIA', 'CANTONMENT', 'Mr. PEKETI SAI KIRAN', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '3000.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'MANJUNATH'),
(36654, '3d005140-c130-455c-a521-a4536b283520', '2021-01-26', 'UNION BANK OF INDIA', 'BANASHANKARI 2ND STAGE', 'Mr. T. GOVINDARAJU', '', '', '', '', '', NULL, 2, NULL, '', '0.00', '', '0.00', '4000.00', 1, 0, '0000-00-00', '', '2021-01-25 18:30:00', '2021-01-25 18:30:00', 1, 1, 'MANJUNATH'),
(36655, '9c89ce12-4ffc-4e2e-a597-60e4f35b283a', '2021-01-30', 'UNION BANK OF INDIA', 'LOAN POINT CHANDRA LAYOUT', 'Mr. KRISHAN KUMAR RAJWAR', '', '7019780945', '', '', '', NULL, 5, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-30 02:35:24', '2021-01-30 02:35:24', 1, 1, 'SUNIL KUMAR'),
(36656, '85397ec9-59c0-4787-997f-c99466f79f69', '2021-01-30', 'UNION BANK OF INDIA (EANDHRA)', 'YESHWANTHPUR', 'MS. GOPALA INTERNATIONAL', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-30 02:35:24', '2021-01-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36657, 'ed5ff494-a59b-4737-97c8-928c3176e5ed', '2021-01-30', 'UNION BANK OF INDIA', 'BVK IYANGAR ROAD', 'Mr. RANGASWAMY', '', '0000000000', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-30 02:35:24', '2021-01-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(36658, 'e0ca3b68-8543-42a5-8372-3a5c4a737da1', '2021-01-30', 'UNION BANK OF INDIA (ECORP)', 'MAHALAKSHMI LAYOUT', 'narasimhan', '', '8880805598', '', '', '', NULL, 3, NULL, '', '0.00', '', '0.00', '0.00', 0, 0, '0000-00-00', '', '2021-01-30 02:35:24', '2021-01-30 02:35:24', 1, 1, 'RAJASHEKHAR'),
(37659, '4ad2d9d6-4733-4e28-ac36-bd6acd8bb949', '2023-04-11', 'BANK OF BARODA', 'GANGANAGAR', 'DEMO', 'ASDA', '7019780945', 'ASDASD', 'ASDAD', 'ADASD', NULL, 4, '9448161191', 'ADAD', '1000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '2000.00', '1500.00', 1, 4, '2023-04-11', '', '2023-04-11 04:10:40', '2023-04-11 05:55:08', 1, 1, NULL),
(37660, 'e751171d-6e58-43ce-89d5-05cd334fa7d4', '2023-04-11', 'BANK OF BARODA', 'GANGANAGAR', 'BANKDEMO', 'ADASD', '7019780945', 'ASD', 'ADASD', 'SDAD', NULL, 4, '7019780945', 'SDAS', '1000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '2000.00', '0.00', 0, 4, '2023-04-05', '', '2023-04-11 05:27:00', '2023-04-11 05:27:00', 1, 1, NULL),
(37661, '21c3ec29-d9df-4513-8c8c-9c56fc549ba8', '2023-06-21', 'BANK OF DEMO', 'BRANCH', 'DEMO', 'ADASD', '', '', '', '8880805598', NULL, 0, '', '', '0.00', '', '0.00', '0.00', 0, 0, NULL, '', '2023-06-21 12:10:24', '2023-06-21 12:10:24', 1, 1, NULL),
(37662, 'f140b29f-ff04-4978-9bc7-61715389d992', '2023-06-22', 'BANK OF MAHARASHTRA', 'SHIVAJINAGAR', 'HELLO', 'AAAA', '7777777777', 'ASDAD', 'ADASD', '', NULL, 0, '', '', '0.00', '', '0.00', '0.00', 0, 0, NULL, '', '2023-06-22 04:17:56', '2023-06-22 04:17:56', 1, 1, NULL),
(37663, 'c91b0098-b634-401d-94c1-1a8607250a2b', '2023-06-23', 'BANK OF BARODA(EVIJAYA)', 'MICO  LAYOUT', 'MMM', 'ADASD', '7845124578', 'ADAD', 'ADAD', '', NULL, 1, '7022722621', '', '0.00', '', '0.00', '0.00', 0, 2, '2023-06-01', '', '2023-06-23 10:01:18', '2023-06-23 10:01:18', 1, 1, NULL),
(37664, 'a4f525b3-26aa-4b8a-aa6f-0241e5aef2a7', '2023-06-23', 'BANK OF BARODA(EVIJAYA)', 'MOODALAPALYA', 'SDFSDF', 'DSF', '', 'SD', 'SDF', '', NULL, 0, '', '', '0.00', '', '0.00', '0.00', 0, 0, NULL, '', '2023-06-23 12:10:10', '2023-06-23 12:10:10', 1, 1, NULL),
(37665, '1d769078-3dd2-4b03-b1de-beb06d1306ed', '2023-07-18', 'BANK OF BARODA', 'GANGANAGAR', 'ADAD', 'ASDA', 'DAD', 'AD', 'ADAD', 'ADAD', NULL, 1, '7022722621', 'ASDAD', '0.00', '', '0.00', '0.00', 0, 0, NULL, '', '2023-07-18 04:41:12', '2023-07-18 04:41:12', 1, 1, NULL),
(37666, '52746ec6-a06d-41ce-842d-91982444c8f2', '2023-07-18', 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'SDFSD', 'FS', 'SDF', 'FSD', 'FSF', 'SDF', NULL, 0, 'sdfsdf', 'SDF', '1000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '1100.00', '0.00', 0, 4, '2023-07-01', '', '2023-07-18 04:44:16', '2023-07-18 04:44:16', 1, 1, NULL),
(37667, '1f6a59b4-040d-440d-a154-89cf67200435', '2023-07-18', 'BANK OF BARODA(EVIJAYA)', 'K. G. ROAD', 'ASDASD', 'ADASD', 'ADASD', 'ASDAS', 'DADA', 'ASDASD', NULL, 1, '7022722621', 'ASDASD', '1000.00', 'VALUATION CANCELLED', '1100.00', '0.00', 0, 1, '2023-07-01', '', '2023-07-18 04:45:36', '2023-07-18 04:45:36', 1, 1, NULL),
(37668, 'c63ff4f5-1d77-4f28-823f-271e0f5446d8', '2023-07-18', 'BANK OF DEMO', 'BRANCH', 'HELLO', 'AAAAA', '7845124578', 'ADASD', 'ADA', 'SDAD', NULL, 1, '7022722621', 'ADASD', '1000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '2000.00', '0.00', 0, 1, '2023-07-01', '', '2023-07-18 07:14:26', '2023-07-18 07:14:26', 1, 1, NULL);
INSERT INTO `customer_files` (`id`, `uuid`, `file_date`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refercon`, `engineer_id`, `engnum`, `apartment_name`, `total_value`, `status`, `bill_amount`, `cash_paid`, `is_approved`, `delivery_boy_id`, `report_delivered_date`, `delivered_to`, `created_at`, `updated_at`, `created_by`, `updated_by`, `engineer_name`) VALUES
(37669, '37d2209c-75c7-4dff-9eab-8daa9934ff63', '2023-08-07', 'STATE BANK OF INDIA', 'RACPC MALLESHWARAM', 'RIYAZ', 'DEMO', '7845124576', 'BANGALORE', '', '7019780945', 'Akheebjaved', 1, '7022722621', 'DSFSDF', '10000.00', 'VALUATION CANCELLED', '100000.00', '50000.00', 1, 2, '2023-08-07', 'HI', '2023-08-07 10:55:47', '2023-08-09 06:36:53', 1, 1, NULL),
(37670, '984bf6a2-a0a6-4cbb-95ca-c16124aceffd', '2023-08-07', 'CANARA BANK', 'BALANAGAR', 'HAFIZ', 'PATEL', '7019780945', 'BANGALORE', '', '7019780945', 'AKHEEBJAVED MULLA', 2, '9035735744', 'AD', '100000.00', 'VALUATION COMPLETED', '10000.00', '5000.00', 0, 4, '2023-08-07', '', '2023-08-07 10:59:23', '2023-08-08 04:45:08', 1, 1, NULL),
(37671, '2e07e999-0662-467a-b22b-01808ded1d25', '2023-08-08', 'BANK OF BARODA', 'JIGANI', 'DEMO', '25', '7845124578', 'ZCZXC', 'ZXCZC', '7019780947', 'SYED', 1, '7022722621', 'SSFSD', '10000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '5000.00', '10000.00', 0, 1, '2023-08-08', 'SDFS', '2023-08-08 06:15:33', '2023-08-08 06:15:33', 1, 1, NULL),
(37672, 'f73e79f0-a514-4edf-9aac-b7fc0a477417', '2023-08-14', 'INDIAN OVERSEAS BANK', 'JAYANAGAR', 'ASD', 'ADASD', '7845124578`', 'ADAS', 'ASDASD', 'AAAAAA', '777777', 0, '', '', '0.00', '', '0.00', '0.00', 0, 0, NULL, '', '2023-08-14 06:12:47', '2023-08-14 06:12:47', 1, 1, NULL),
(37673, '2f5aa002-83e3-48df-b3c8-f8cf1f7e1cc3', '2023-08-14', 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'SSFS', 'SDFSF', '7845124578', 'CCVB', 'CVBCV', 'BCVB', '7845124578', 1, '7022722621', 'ZXC', '450.00', 'VALUATION CANCELLED', '4545.00', '4000.00', 1, 4, '2023-08-01', '', '2023-08-14 06:30:21', '2023-08-16 06:26:27', 1, 1, NULL),
(37674, '2c479057-2ce7-42cc-8a4b-448e5b832873', '2023-08-14', 'BANK OF BARODA(EVIJAYA)', 'MICO  LAYOUT', 'ADAS', 'ASDASD', '555555', 'ASDASD', 'ASDAS', 'ADASD', '7845124578', 1, '7022722621', 'AADS', '1000.00', 'VALUATION CANCELLED', '1000.00', '100000.00', 1, 4, '2023-08-02', '', '2023-08-14 09:00:24', '2023-08-16 06:26:27', 1, 1, NULL),
(37675, '3b3314f7-4074-4abd-bf03-39bc1250c67b', '2023-08-14', 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'ADASD', 'ASDA', '7845124578', 'ADA', 'AD', 'ASD', '7845124578', 4, '8880805598', 'ASDASD', '10000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '10000.00', '100000.00', 1, 4, '2023-08-01', '', '2023-08-14 09:01:06', '2023-08-16 06:32:13', 1, 1, NULL),
(37676, '23e92f48-d04d-441d-9bc9-60619930a060', '2023-08-16', 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'AKHEEBJAVED', 'AAA', '7845124578', 'ASDADAD', 'ASDAD', 'AAA', '7845124578', 1, '7022722621', '', '10000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '10000.00', '10000.00', 0, 4, '2023-08-10', '', '2023-08-16 04:33:13', '2023-08-16 04:33:13', 1, 1, NULL),
(37677, '0a378fd0-8e0d-4858-98f8-be0b8228cf00', '2023-08-16', 'BANK OF MAHARASHTRA', 'BANASWADI', 'DEMOS', 'ASZXZC', '785124578', 'ASDF', 'SDFSDF', 'SDFSDF', '7845124578', 2, '9035735744', 'SSFSD', '10000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '100000.00', '10000.00', 0, 4, '2023-08-15', '', '2023-08-16 08:44:07', '2023-08-16 08:44:07', 1, 1, NULL),
(37678, '9dfcce33-e185-4ddb-8439-a012e97e9a51', '2023-08-16', 'BANK OF DEMO', 'BRANCH', 'HELLO', 'SYED', '7845124578', 'SFSDF', 'SDFSDF', 'FSDF', '77777777', 1, '7022722621', 'SDFSDF', '10000.00', 'VALUATION CANCELLED', '10000.00', '100000.00', 0, 1, '2023-08-15', '', '2023-08-16 08:45:36', '2023-08-16 08:45:36', 1, 1, NULL),
(37679, '964a26e9-22a7-4e67-855a-5ead5c300438', '2023-08-16', 'IND BANK IBMBS LTD', 'CHENNAI', 'ASDASD', 'ASDASD', '7777777', 'ASFASD', 'ASDAS', 'ASDAS', '777777777', 5, '9035735745', 'ADADSAS', '111111.00', 'VALUATION CANCELLED', '111111.00', '10000.00', 1, 2, '2023-08-15', '', '2023-08-16 08:46:26', '2023-08-16 08:48:31', 1, 1, NULL),
(37680, 'ea5bc3b4-1eff-4e53-bcb5-2b8598997676', '2023-08-17', 'PUNJAB NATIONAL BANK', 'CIRCLE OFFICE', 'FJ', 'FJ', '445554', 'FG', 'HDGHD', 'DHGD', '7845124578', 2, '9035735744', 'SSFSD', '100000.00', 'VALUATION COMPLETED BUT DOCUMENT PENDING', '100000.00', '10000.00', 0, 1, '2023-08-15', '', '2023-08-17 04:29:28', '2023-08-17 04:29:28', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boys`
--

CREATE TABLE `delivery_boys` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_boys`
--

INSERT INTO `delivery_boys` (`id`, `name`, `contact_no`, `email_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 'MR. SUNIL K . R', '7892253033', '', '', '2021-03-31 12:29:04', '2021-03-31 12:57:03'),
(2, 'SHARATH', '9916170033', '', '', '2021-03-31 12:56:23', '2021-03-31 12:56:23'),
(4, 'ABDULLAH', '9600187001', '-', 'Alexander Road,\nDashamakkan,\nch-12', '2021-05-05 12:16:40', '2021-05-05 12:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `email_accounts`
--

CREATE TABLE `email_accounts` (
  `id` int UNSIGNED NOT NULL,
  `sender_name` varchar(150) DEFAULT NULL,
  `email_address` varchar(150) DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `is_default` tinyint UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `email_accounts`
--

INSERT INTO `email_accounts` (`id`, `sender_name`, `email_address`, `password`, `is_default`, `created_at`, `updated_at`) VALUES
(6, 'Crescent Demo', 'demo@crescenttechnosofts.com', 'eyJpdiI6ImQ1aFZSb2dMMkRVTFlKSHhiZVNaN1E9PSIsInZhbHVlIjoia1UxSnBpMTZJZWJRcnZ2WTNRc1liUT09IiwibWFjIjoiMWZiN2JmZmIxZDc1N2FiZTUyMDQzOWIxZDAzMzVhNDIwMDU0NGY0NWYyNTliYTRiMzlmNDRkOWM3MTEyYjRiYyJ9', 0, '2021-04-21 11:39:05', '2021-08-12 11:45:40'),
(9, 'developer', 'subindeveloper@crescenttechnosofts.com', 'eyJpdiI6IklFUlRwbUN5OXdDdys0aG56aFJDa0E9PSIsInZhbHVlIjoiRkhVTi9uc3ovVWNiRCtSUEkrdkhRckpBcE5iNi9NZ25HR2hiZjQ5NFZRcz0iLCJtYWMiOiJhOTAzMjEzYWU2MTA5Y2U0NTUzNjlkNzRjMDY5YmRiY2MzZjlkOWFkYWNiZGJkNjkzZDlhMzNmM2NlYzZlOTRkIn0=', 1, '2021-08-11 19:45:07', '2021-08-12 11:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `engineers`
--

CREATE TABLE `engineers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineers`
--

INSERT INTO `engineers` (`id`, `name`, `contact_no`, `email_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 'MR. LAKSHMIKANTH', '7022722621', 'shamuappu947@gmail.com', '', '2021-04-07 07:46:40', '2021-04-07 07:46:40'),
(2, 'MR. MANJUNATH', '9035735744', 'manjunathvaluer@gmail.com', '', '2021-04-07 07:46:40', '2021-04-07 07:46:40'),
(3, 'MR. RAJASHEKHAR', '9035735748', '', '', '2021-04-07 07:46:40', '2021-04-07 07:46:40'),
(4, 'MR. BHASKAR', '8880805598', '', '', '2021-04-07 07:46:40', '2021-04-07 07:46:40'),
(5, 'MR. SUNIL KUMAR', '9035735745', 'sunil.valuer@gmail.com', '', '2021-04-07 07:46:40', '2021-04-07 07:46:40'),
(6, 'VENKATESH N', '9844011655', 'venkatvaluer@yahoo.com', '2985 a  1st a Main\r\n2nd Stage\r\nRajajinagar', '2021-04-07 07:46:40', '2021-04-07 07:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `file_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_file_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_file` tinyint(1) DEFAULT NULL,
  `bank_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchaser_name` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `referred_by` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refeerMob` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engineer_id` int DEFAULT NULL,
  `apartment_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_value` decimal(10,2) DEFAULT NULL,
  `report_delivery_date` date DEFAULT NULL,
  `delivered_to` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` json DEFAULT NULL,
  `bill_amount` decimal(8,2) NOT NULL,
  `gst_percentage` int DEFAULT NULL,
  `gst_amount` decimal(10,2) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `initial_amount` decimal(8,2) NOT NULL,
  `paying_amt` decimal(8,2) NOT NULL,
  `due_amt` decimal(8,2) NOT NULL,
  `payment_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` bigint NOT NULL,
  `GstNo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IGST` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `uuid`, `invoice_date`, `file_id`, `invoice_file_id`, `has_file`, `bank_name`, `branch_name`, `customer_name`, `purchaser_name`, `contact_no`, `address`, `remarks`, `referred_by`, `refeerMob`, `engineer_id`, `apartment_name`, `status`, `total_value`, `report_delivery_date`, `delivered_to`, `descriptions`, `bill_amount`, `gst_percentage`, `gst_amount`, `total_amount`, `initial_amount`, `paying_amt`, `due_amt`, `payment_type`, `bank_id`, `GstNo`, `IGST`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(16, 'd3e602e2-d180-456b-aadc-eee62625a094', '2021-04-07', 37509, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '7500.00', 18, '1350.00', '8850.00', '0.00', '0.00', '7500.00', 'CASH', 1, NULL, NULL, '2021-04-09 11:33:09', '2021-04-15 11:28:29', 5, 5),
(17, '9a8f9209-c8bb-464d-9929-7ab83ed1affd', '2021-04-07', 37492, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 4, NULL, NULL, '2021-04-09 11:44:09', '2021-04-15 11:29:18', 5, 5),
(18, 'd6ed7e07-8a0b-4f54-bdeb-a229da8a7fc7', '2021-04-07', 37523, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-09 11:45:00', '2021-04-15 11:29:27', 5, 5),
(19, 'd265437f-be31-463d-a960-31da1dbfe4e1', '2021-04-07', 37518, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-09 11:46:07', '2021-04-15 11:29:43', 5, 5),
(20, '48935eca-b14e-4567-98d1-86176e4beb6f', '2021-04-07', 37524, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2500.00', 18, '450.00', '2950.00', '0.00', '0.00', '2500.00', 'CASH', 2, NULL, NULL, '2021-04-09 11:46:53', '2021-04-15 11:30:01', 5, 5),
(21, '7d057eb4-cc23-4424-ab0e-14b894efb747', '2021-04-07', 37510, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:17:11', '2021-04-15 11:30:12', 5, 5),
(22, '186090d5-88e2-4a30-a59c-8a94b48bc72a', '2021-04-07', 37519, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 3, NULL, NULL, '2021-04-09 13:17:54', '2021-04-15 11:30:22', 5, 5),
(23, '237ac472-1610-4692-9ea2-a66eb12c0639', '2021-04-08', 37538, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:18:26', '2021-04-15 11:30:40', 5, 5),
(24, '79c8ff16-a8d9-4fa0-a249-5c59082fa526', '2021-04-08', 37527, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:19:02', '2021-04-15 11:30:50', 5, 5),
(25, '47841b5a-dcfd-4597-88df-5abd45ee2755', '2021-04-09', 37508, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2000.00', 18, '360.00', '2360.00', '0.00', '0.00', '2000.00', 'CASH', 2, NULL, NULL, '2021-04-09 13:19:41', '2021-04-09 13:19:41', 5, 5),
(26, 'bbbba0e7-1a15-4429-acf0-81e22b4878cd', '2021-04-09', 37506, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:20:44', '2021-04-09 13:20:44', 5, 5),
(27, 'ce7dcc7c-2cdc-470b-ba02-57852edc3ff9', '2021-04-09', 37468, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-09 13:21:23', '2021-04-09 13:21:23', 5, 5),
(28, '20cd6740-910b-4cb1-a6d3-2e0a69b2cebd', '2021-04-09', 37543, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:21:54', '2021-04-09 13:21:54', 5, 5),
(29, '1be5ce2b-7027-44c2-b78f-29b7ba201126', '2021-04-09', 37504, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"COMPLETION REPORT OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 2, NULL, NULL, '2021-04-09 13:22:33', '2021-04-09 13:22:33', 5, 5),
(30, 'cffe0f66-604f-460e-9107-a16c06a26529', '2021-04-09', 37244, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '4500.00', 18, '810.00', '5310.00', '0.00', '0.00', '4500.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:23:02', '2021-04-09 13:23:02', 5, 5),
(31, 'a7f9fad4-561b-4adb-86f4-46010140a1e0', '2021-04-09', 37496, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"ESTIMATION OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 6, NULL, NULL, '2021-04-09 13:23:42', '2021-04-09 13:23:42', 5, 5),
(32, '1067ccaa-862e-4683-96f0-47cc49cc079d', '2021-04-09', 37447, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 1, NULL, NULL, '2021-04-09 13:24:11', '2021-04-09 13:24:11', 5, 5),
(33, 'a90d0720-7cf9-4366-b384-debc4bdf63c9', '2021-04-10', 37483, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2000.00', 18, '360.00', '2360.00', '0.00', '0.00', '2000.00', 'CASH', 2, NULL, NULL, '2021-04-12 07:25:40', '2021-04-15 11:31:45', 5, 5),
(34, '795cd043-3eea-4f9a-88cc-1565d78574d6', '2021-04-12', 35500, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"ESTIMATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 2, NULL, NULL, '2021-04-15 05:40:55', '2021-04-15 11:32:14', 5, 5),
(35, 'eb5e8feb-8a70-463a-97b3-06040da89814', '2021-04-12', 35501, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 5, NULL, NULL, '2021-04-15 05:42:23', '2021-04-15 11:32:29', 5, 5),
(36, '3d293760-ee46-4805-800d-3ef692f469d1', '2021-04-12', 35509, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '750.00', 0, '0.00', '750.00', '0.00', '0.00', '750.00', 'CASH', 2, NULL, NULL, '2021-04-15 05:43:50', '2021-04-15 11:32:40', 5, 5),
(37, '8ac90712-7262-4815-825c-5dd94ecfeaa9', '2021-04-12', 35512, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '750.00', 0, '0.00', '750.00', '0.00', '0.00', '750.00', 'CASH', 2, NULL, NULL, '2021-04-15 05:44:25', '2021-04-15 11:33:30', 5, 5),
(38, 'be023688-46af-457e-992e-a9fca23b0e97', '2021-04-15', 37562, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '4000.00', 18, '720.00', '4720.00', '0.00', '0.00', '4000.00', 'CASH', 4, NULL, NULL, '2021-04-15 08:26:50', '2021-04-15 08:26:50', 5, 5),
(39, '89996837-0ed7-4fa1-aeee-da1faedf4736', '2021-04-16', 37378, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-16 09:36:04', '2021-04-16 09:36:04', 5, 5),
(40, '54d2a9a0-df40-40a1-bb52-226d6d0afdf8', '2021-04-16', 37575, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '4500.00', 18, '810.00', '5310.00', '0.00', '0.00', '4500.00', 'CASH', 1, NULL, NULL, '2021-04-16 09:36:42', '2021-04-16 09:36:42', 5, 5),
(41, 'f5a7bef5-e47d-4411-9733-8cf10402ec09', '2021-04-16', 37578, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '4000.00', 18, '720.00', '4720.00', '0.00', '0.00', '4000.00', 'CASH', 4, NULL, NULL, '2021-04-16 09:37:48', '2021-04-16 09:37:48', 5, 5),
(42, 'f8610db7-e195-4ad8-a96e-40b866c58556', '2021-04-16', 37570, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-16 09:43:25', '2021-04-16 09:43:25', 5, 5),
(43, '70f16140-4987-4d2b-be1a-2ad785ee2af6', '2021-04-16', 37571, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-16 09:43:47', '2021-04-16 09:43:47', 5, 5),
(44, '7581b482-b7a8-4904-b490-c659d81cbab4', '2021-04-16', 37551, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-16 09:45:52', '2021-04-16 09:45:52', 5, 5),
(45, 'ea3b7776-c16a-4a20-991a-0ada7cd46cf3', '2021-04-16', 37573, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2500.00', 18, '450.00', '2950.00', '0.00', '0.00', '2500.00', 'CASH', 2, NULL, NULL, '2021-04-16 09:47:03', '2021-04-16 09:47:03', 5, 5),
(46, '44b40cbc-a5f1-4f95-ad60-38747b20fcb0', '2021-04-16', 37579, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-16 09:49:50', '2021-04-16 09:49:50', 5, 5),
(47, '8d98832f-218b-4d70-8d15-728ac13f79a9', '2021-04-17', 37588, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-17 08:34:22', '2021-04-17 08:34:22', 5, 5),
(48, 'abe6971f-cadc-42b7-b106-5cd194b11552', '2021-04-17', 37593, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 2, NULL, NULL, '2021-04-17 08:36:30', '2021-04-17 08:36:30', 5, 5),
(49, '9c86e691-e49b-4d42-a998-73eb61b5492e', '2021-04-17', 37591, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-17 08:38:24', '2021-04-17 08:38:24', 5, 5),
(50, '2c411ed7-11a3-4c39-98d9-f21dfc4f5a54', '2021-04-17', 37587, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-17 08:39:58', '2021-04-17 08:39:58', 5, 5),
(51, '100c2786-f5ff-49ca-9259-c67a74363330', '2021-04-17', 37589, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 2, NULL, NULL, '2021-04-17 08:40:36', '2021-04-17 08:40:36', 5, 5),
(52, '713d76c6-9030-483a-b6a1-591bf94d047b', '2021-04-19', 37594, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-19 08:59:44', '2021-04-19 08:59:44', 5, 5),
(53, '7976f160-b332-4056-b920-8e981892c677', '2021-04-19', 37603, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 1, NULL, NULL, '2021-04-19 09:06:55', '2021-04-19 09:06:55', 5, 5),
(54, '683195fe-6086-41b5-9295-536f546f3009', '2021-04-19', 37610, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 0, NULL, NULL, '2021-04-19 09:48:51', '2021-04-19 09:48:51', 5, 5),
(55, '86f0409c-92d5-4a79-abc9-98be4b381ca1', '2021-04-19', 37595, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 2, NULL, NULL, '2021-04-19 12:58:00', '2021-04-19 12:58:00', 5, 5),
(56, 'd72505b9-9a08-4910-86a4-13dcd10705e9', '2021-04-20', 37614, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 2, NULL, NULL, '2021-04-20 07:19:39', '2021-04-20 07:19:39', 5, 5),
(57, 'bee9bc4b-89f0-41d7-b812-fbddb1940c1c', '2021-04-20', 37617, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 3, NULL, NULL, '2021-04-20 07:20:54', '2021-04-20 07:20:54', 5, 5),
(58, '01cd0278-2dcd-41d4-99bf-0504afdac516', '2021-04-20', 37615, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 4, NULL, NULL, '2021-04-20 07:21:29', '2021-04-20 10:26:32', 5, 5),
(59, '4ef83b48-fe07-4514-bccc-3c46e3c2494a', '2021-04-20', 37620, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-04-20 07:22:46', '2021-04-20 10:26:54', 5, 5),
(60, '36ac6be5-b9d9-4053-906f-5676ae7cdb8f', '2021-04-20', 37564, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 3, NULL, NULL, '2021-04-20 08:29:43', '2021-04-20 08:29:43', 5, 5),
(61, 'd7ac5ac3-01ad-4cc1-8f6c-79d7079ae3aa', '2021-04-20', NULL, 'INV1091', 0, 'BANK OF BARODA', 'JIGANI', 'De', '', '', '', '', '', NULL, 1, '', '', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 0, NULL, NULL, '2021-04-20 11:23:11', '2021-04-20 11:26:17', 1, 1),
(64, 'b616aa04-8c54-433e-9d12-0e62705b67d7', '2021-04-21', 37621, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 0, NULL, NULL, '2021-04-21 10:53:34', '2021-04-21 10:53:34', 1, 1),
(65, 'e99c1deb-7973-45a7-8e4b-f19905bb2757', '2021-04-21', 37616, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 0, NULL, NULL, '2021-04-21 10:55:45', '2021-04-22 09:47:33', 1, 1),
(66, '0582861a-c535-4ef5-af86-5a631b698379', '2021-04-21', NULL, 'INV1095', 0, 'BANK OF BARODA', 'JIGANI', 'Demo Cust', 'Demo Pur', '9944992460', '', '', '', NULL, 3, '', 'VALUATION COMPLETED', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '0.00', '0.00', '5000.00', 'CASH', 0, NULL, NULL, '2021-04-21 11:01:11', '2021-04-22 09:47:17', 1, 1),
(67, '08a7e6a5-b242-4ee5-9b68-f74e689abf4b', '2021-08-12', 37624, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 4, NULL, NULL, '2021-08-12 06:05:45', '2021-08-12 06:05:45', 1, 1),
(68, '6c81744c-b14c-4fc0-81ac-ea559dcb6ef6', '2021-08-12', NULL, 's', 0, 'BANK OF BARODA', 'GANGANAGAR', 's', 's', '9944992460', 'fg', 'f', 'e', NULL, 4, 'e', '', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 0, NULL, NULL, '2021-08-12 07:03:52', '2021-08-12 07:05:13', 1, 1),
(69, 'b97f7d0f-feaa-42bf-9699-5b9667ceb146', '2021-08-12', NULL, '1', 0, 'DEMO', 'DEMO', 's', 's', '7019780945', 's', 's', 's', NULL, 1, 's', '', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 0, NULL, NULL, '2021-08-12 07:12:17', '2021-08-12 07:12:17', 1, 1),
(70, 'b364bbd9-1bc3-425b-96b6-1a769750e338', '2021-08-31', 37613, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '7500.00', 18, '1350.00', '8850.00', '0.00', '0.00', '7500.00', 'CASH', 5, NULL, NULL, '2021-08-31 12:01:03', '2021-08-31 12:01:03', 1, 1),
(71, '2e30e1b6-d383-47c9-8b1f-ecea880d5549', '2021-08-31', NULL, '37627', 0, 'BANK OF MAHARASHTRA', 'BTM LAYOUT', 'demo2', 'demo2', '2\\\\', 'vsdvs', 'vsdvds', 'sdvdsv', NULL, 1, 'dsvds', 'VALUATION COMPLETED', NULL, NULL, 'dgedhg', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 12, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 6, NULL, NULL, '2021-08-31 12:09:00', '2021-08-31 12:09:00', 1, 1),
(72, '3b90ef58-23e3-47b8-a46c-170fbea18f5e', '2021-08-31', NULL, '1242', 0, 'CANARA BANK', 'BALANAGAR', 'demo3', 'demo4', '12459874547', 'scsacsc', 'csasac', 'csacs', NULL, 4, 'dsvds', 'VALUATION COMPLETED', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 7, NULL, NULL, '2021-08-31 12:36:40', '2021-08-31 12:43:04', 1, 1),
(73, 'a517c946-fcc1-421c-b2b0-507dee21adeb', '2021-09-13', NULL, '37634', 0, 'BANK OF DEMO', 'BRANCH', 'deo', 'demo', '45', '', '', '', NULL, 1, 'jfymrm', 'VALUATION COMPLETED BUT DOCUMENT PENDING', NULL, NULL, '11', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 6, NULL, NULL, '2021-09-13 12:19:57', '2021-09-13 12:19:57', 1, 1),
(74, 'c9dc6972-7a08-4672-b6de-145fee278b58', '2021-10-12', 37608, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '3000.00', 0, '0.00', '3000.00', '0.00', '0.00', '3000.00', 'CASH', 6, NULL, NULL, '2021-10-12 08:12:54', '2021-10-12 08:12:54', 1, 1),
(75, '35f6c799-74be-401c-89b2-03384911ef03', '2021-10-12', 37609, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"COMPLETION REPORT OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 3, NULL, NULL, '2021-10-12 08:18:23', '2021-10-12 08:18:23', 1, 1),
(76, '27e4375a-0fed-4fa0-9c07-3fcf193ba04b', '2021-10-12', 37607, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 6, NULL, NULL, '2021-10-12 12:04:44', '2021-10-12 12:04:44', 1, 1),
(77, 'c703dc6b-a59a-4e0f-b2cb-a32b52eaeeeb', '2021-10-12', 37606, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"COMPLETION REPORT OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 7, NULL, NULL, '2021-10-12 12:32:25', '2021-10-12 12:32:25', 1, 1),
(78, '68e6e915-d620-404d-826d-4dcf5bc991db', '2021-10-13', 37541, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 3, NULL, NULL, '2021-10-13 07:37:30', '2021-10-13 07:37:30', 1, 1),
(79, '48058418-2754-4bc3-a063-a598aec685f0', '2021-10-13', 37456, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"COMPLETION REPORT OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 3, NULL, NULL, '2021-10-13 07:37:51', '2021-10-13 07:37:51', 1, 1),
(80, 'b0f44dd2-fb4c-4b60-bdfe-f7a7ba2f4a79', '2021-10-13', 37314, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 3, NULL, NULL, '2021-10-13 07:39:01', '2021-10-13 07:39:01', 1, 1),
(81, '2fdef192-be7a-4355-bb45-d52b0f21cace', '2021-10-26', 37499, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\", \"COMPLETION REPORT OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 6, NULL, NULL, '2021-10-26 05:55:11', '2021-10-26 05:55:11', 1, 1),
(82, '071e2699-d243-4d3a-8080-8e1e21dfc8cc', '2021-10-26', 37605, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '2500.00', 18, '450.00', '2950.00', '0.00', '0.00', '2500.00', 'CASH', 6, NULL, NULL, '2021-10-26 05:59:15', '2021-10-26 05:59:15', 1, 1),
(83, '4026097a-4251-4df1-9c6d-786b07d5ead5', '2021-11-24', 37641, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2222.00', 18, '399.96', '2621.96', '0.00', '0.00', '2222.00', 'CASH', 3, NULL, NULL, '2021-11-24 09:21:45', '2021-11-24 09:21:45', 1, 1),
(84, '718e58da-a6bb-4770-9d79-e48a500e7484', '2021-11-24', 37600, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '5000.00', 18, '900.00', '5900.00', '333.00', '333.00', '4667.00', 'CASH', 0, NULL, NULL, '2021-11-24 09:22:56', '2021-11-24 09:22:56', 1, 1),
(85, 'ab67c2f5-4e59-427a-9584-eaf467eca524', '2021-11-24', 37601, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"ESTIMATION OF PROPERTY BELONGING TO\"]', '5000.00', 0, '0.00', '5000.00', '5000.00', '5000.00', '0.00', 'CASH', 3, NULL, NULL, '2021-11-24 09:34:57', '2021-11-24 09:34:57', 1, 1),
(86, '7c9a7c21-eff2-4f5f-8863-dc5d0f7dc5b1', '2021-11-24', 37597, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"COMPLETION REPORT OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 6, NULL, NULL, '2021-11-24 09:36:03', '2021-11-24 09:36:03', 1, 1),
(87, '6a6fe504-d7ec-43c7-bb63-146c585f58a8', '2021-11-24', 37576, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3200.00', 18, '576.00', '3776.00', '0.00', '0.00', '3200.00', 'CASH', 6, NULL, NULL, '2021-11-24 09:37:22', '2021-11-24 09:37:22', 1, 1),
(88, '6852b1d2-7844-4618-b671-a5999b4be1e8', '2021-11-24', 37478, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 4, NULL, NULL, '2021-11-24 10:10:55', '2021-11-24 10:10:55', 1, 1),
(89, '2a9eacbb-e7fa-40af-8d6c-789186b00f9c', '2021-11-24', NULL, '4444', 0, 'BANK OF BARODA(EVIJAYA)', 'J. C. ROAD', 'dasdsda', 'sadsad', '434434', 'fds', 'ffs', 'dsfsd', NULL, 4, 'dfsf', 'VALUATION COMPLETED', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2500.00', 18, '450.00', '2950.00', '0.00', '0.00', '2500.00', 'CASH', 6, NULL, NULL, '2021-11-24 10:13:47', '2021-11-24 10:13:47', 1, 1),
(90, 'fabb3234-fc86-48ff-9603-398b329b7bc2', '2021-11-24', NULL, '3444', 0, 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'xsaxs', 'xsax', 'xs', '', '', '', NULL, 1, '', 'VALUATION COMPLETED BUT DOCUMENT PENDING', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 3, NULL, NULL, '2021-11-24 10:16:24', '2021-11-24 10:16:24', 1, 1),
(91, 'd3a0f19e-9e9b-4a7a-9340-98b470e81feb', '2021-11-25', NULL, '12343', 0, 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'demo cust2', 'demo cust2', '7353590357', 'Kudlu Gate 560068', 'csaasc', 'acsac', NULL, 4, '', 'VALUATION COMPLETED', NULL, '2021-11-10', '11', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '3540.00', '3540.00', '-540.00', 'CASH', 6, NULL, NULL, '2021-11-25 06:10:29', '2021-11-25 06:10:29', 1, 1),
(92, '222bf732-c144-40b8-9a29-4cba550e9342', '2021-11-25', 37650, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '111.00', 18, '19.98', '130.98', '0.00', '0.00', '111.00', 'CASH', 6, NULL, NULL, '2021-11-25 06:19:56', '2021-11-25 06:19:56', 1, 1),
(93, '83cea95e-2576-4b24-97c4-b9dd0c3870b5', '2021-11-25', 37651, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 1, NULL, NULL, '2021-11-25 08:35:30', '2021-11-25 08:35:30', 1, 1),
(94, 'cdef100c-2d19-42c9-a5d2-ea46bba53fd9', '2021-11-25', 37653, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3221.00', 18, '579.78', '3800.78', '0.00', '0.00', '3221.00', 'CASH', 3, NULL, NULL, '2021-11-25 09:47:28', '2021-11-25 09:47:28', 1, 1),
(95, '4267d0bd-013f-4a84-943b-a0c98de8e99b', '2023-02-14', 37604, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '3000.00', 18, '540.00', '3540.00', '0.00', '0.00', '3000.00', 'CASH', 6, NULL, NULL, '2023-02-14 09:13:47', '2023-02-14 09:13:47', 1, 1),
(96, '79bcfe41-4c32-4229-a4d2-7a688ea92f6e', '2023-04-11', 36658, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 6, NULL, NULL, '2023-04-11 05:27:23', '2023-04-11 05:27:23', 1, 1),
(97, '8741df86-94b0-48af-8881-d483ad32ed31', '2023-06-20', 37660, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2000.00', 18, '360.00', '2360.00', '0.00', '0.00', '2000.00', 'CASH', 0, '29ABPPV0384E3Z4', NULL, '2023-06-20 08:40:45', '2023-06-20 09:22:58', 1, 1),
(98, '88596dad-4dc6-4731-87e4-6bcbfb84131a', '2023-06-21', 37661, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7019780945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\", \"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 0, '', NULL, '2023-06-21 12:10:49', '2023-06-21 12:10:49', 1, 1),
(99, '7fc4cb74-0806-4c0d-91fc-2a9b1695ca61', '2023-06-22', 37662, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 0, '', NULL, '2023-06-22 04:18:07', '2023-06-22 04:18:07', 1, 1),
(100, 'ebdf1880-2066-4572-b8ba-160b74a5af4c', '2023-06-23', 37663, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '300.00', 18, '54.00', '354.00', '0.00', '0.00', '300.00', 'CASH', 3, '29ABPPV0384E3Z4', NULL, '2023-06-23 10:01:48', '2023-06-23 11:38:24', 1, 1),
(101, '28cdbb07-acd1-4f6b-b0ea-5879725519db', '2023-06-23', 37664, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 0, '29ABPPV0384E3Z4', NULL, '2023-06-23 12:10:45', '2023-06-23 12:12:07', 1, 1),
(102, '6e4b7375-f835-464a-93b0-38ce9670a143', '2023-06-30', 36654, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 4, '', 1, '2023-06-30 06:29:33', '2023-06-30 06:29:33', 1, 1),
(103, '9a27c1df-de36-435e-815a-e3d6316e43f5', '2023-06-30', 36655, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 12, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 3, '', 1, '2023-06-30 06:31:09', '2023-06-30 06:49:14', 1, 1),
(104, 'e76ed1a7-9e20-429d-8c34-297d4b477e9e', '2023-06-30', 36574, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 6, '29ABPPV0384E3Z4', 1, '2023-06-30 08:33:56', '2023-06-30 12:47:31', 1, 1),
(105, '6ef8c823-6899-4d37-8b26-32c67101ce7d', '2023-06-30', 36471, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 3, '', 1, '2023-06-30 12:56:00', '2023-06-30 12:56:32', 1, 1),
(106, '2a676bce-a77b-4cbe-b34f-3c40ddf99582', '2023-07-01', 36645, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7019780945', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 3, '30ABPPV0384E3Z4', 1, '2023-07-01 05:55:15', '2023-07-01 06:01:27', 1, 1),
(107, '02a633cb-1e0a-4c8b-a87c-b181f943c57d', '2023-07-01', NULL, '37659', 0, 'BANK OF BARODA(EVIJAYA)', 'K. G. ROAD', 'xvcxvxc', 'zxczxc', '7845124578', 'zczxc', 'xcvxc', 'xcvxc', NULL, 1, 'ssfsd', 'VALUATION COMPLETED BUT DOCUMENT PENDING', NULL, NULL, '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 0, '', 1, '2023-07-01 06:36:54', '2023-07-01 06:38:02', 1, 1),
(108, '04890d60-55b3-46d7-9d1f-b89011e1afac', '2023-07-01', NULL, '878454', 0, 'BANK OF BARODA(EVIJAYA)', 'MICO  LAYOUT', 'asa', 'aA', '7845454545', 'dsad', 'asdas', 'sdfsdf', NULL, 1, 'xczxczx', 'VALUATION COMPLETED BUT DOCUMENT PENDING', NULL, NULL, 'fdsfsd', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 0, '', 0, '2023-07-01 09:30:27', '2023-07-01 09:30:27', 1, 1),
(109, 'd70ceab5-57c8-45d7-9c7f-a6b67e219462', '2023-07-01', 36644, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 6, '30BPPV0384E3Z4', 1, '2023-07-01 10:06:04', '2023-07-01 10:06:04', 1, 1),
(110, 'c6fa65b0-7d25-4281-ba5a-1d90c91af5e4', '2023-07-01', NULL, '0786', 0, 'BANK OF BARODA', 'JIGANI', 'FFF', 'GGG', '7845124578', 'adad', 'asd', 'asd', NULL, 1, 'asdsa', 'VALUATION COMPLETED', NULL, NULL, 'adadsd', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 3, '', 0, '2023-07-01 10:08:14', '2023-07-01 10:08:14', 1, 1),
(111, '544797b9-b57b-4d0b-ad9d-5505ec084586', '2023-07-01', NULL, '585854', 0, 'BANK OF MAHARASHTRA', 'BANASWADI', 'GG', 'HH', '7845124578', 'jhh', 'ghhgg', 'nbnbn', NULL, 1, 'b bn', 'VALUATION COMPLETED BUT DOCUMENT PENDING', NULL, '2023-07-01', 'bvvvbbv', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 3, '29mhghj', 0, '2023-07-01 10:19:15', '2023-07-01 10:19:15', 1, 1),
(112, 'e5a18cca-c173-417d-a092-c5e1a00e583d', '2023-07-03', 36586, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 3, '', 0, '2023-07-03 06:07:51', '2023-07-03 06:07:51', 1, 1),
(113, 'e9ba94c5-37f7-4536-943b-a69458e11bc2', '2023-07-03', 36622, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 3, '30ABPPV0384E3Z4', 1, '2023-07-03 07:44:05', '2023-07-03 07:44:05', 1, 1),
(114, '405ae1cb-2996-4d82-b9c0-9709176e66fc', '2023-07-03', 36579, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1500.00', 18, '270.00', '1770.00', '0.00', '0.00', '1500.00', 'CASH', 3, '', 1, '2023-07-03 11:51:02', '2023-07-03 11:52:35', 1, 1),
(115, 'e34b6f5c-12f9-4fd5-bfc3-c21333e21261', '2023-07-04', 36561, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 7, '29ABPPV0384E3Z4', 0, '2023-07-04 05:03:49', '2023-07-17 07:08:06', 1, 1),
(116, '0e2e5753-6df6-440e-b4b9-e7e3c858f1e2', '2023-07-18', 37665, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 3, '', 0, '2023-07-18 04:41:32', '2023-07-18 04:41:32', 1, 1),
(117, '5c4e56c7-f05b-41cc-807c-95b99b409c64', '2023-07-18', 37666, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1100.00', 18, '198.00', '1298.00', '0.00', '0.00', '1100.00', 'CASH', 4, '', 0, '2023-07-18 04:44:29', '2023-07-18 04:44:29', 1, 1),
(118, '229145b8-0ae7-4110-9815-782cc1f672f8', '2023-07-18', 37667, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1100.00', 18, '198.00', '1298.00', '0.00', '0.00', '1100.00', 'CASH', 4, '', 0, '2023-07-18 04:45:46', '2023-07-18 04:45:46', 1, 1),
(119, '7dd2ec6b-98c2-4a7a-8d85-cb7ca26b6608', '2023-07-18', 37668, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2000.00', 18, '360.00', '2360.00', '0.00', '0.00', '2000.00', 'CASH', 3, '', 0, '2023-07-18 07:15:29', '2023-07-18 07:15:29', 1, 1),
(120, '12f3df54-7c21-4fa2-bd69-c8afdd852101', '2023-08-02', 36600, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '0.00', 18, '0.00', '0.00', '0.00', '0.00', '0.00', 'CASH', 4, '29ABPPV0384E3Z4', 0, '2023-08-02 09:48:30', '2023-08-03 06:34:14', 1, 1),
(121, 'd38197f3-62cf-4b1b-b14e-6e8711ec1b99', '2023-08-02', 36470, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '0.00', 'CASH', 4, '30ABPPV0384E3Z4', 1, '2023-08-02 09:51:29', '2023-08-02 12:25:57', 1, 1),
(122, '69a7869a-c533-42d2-9e63-bd8fe1cd3152', '2023-08-03', 36601, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '0.00', 'CASH', 5, '30ABPPV0384E3Z4', 0, '2023-08-03 06:31:55', '2023-08-03 06:34:31', 1, 1),
(123, '10f6388c-8572-4335-9ac2-725c65fdfe94', '2023-08-04', 36508, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2000.00', 18, '360.00', '2360.00', '0.00', '0.00', '2000.00', 'CASH', 6, '', 0, '2023-08-04 05:00:02', '2023-08-04 05:00:02', 1, 1),
(124, 'a4c496f8-76d1-472d-befa-26ddf747c736', '2023-08-04', 35737, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2500.00', 18, '450.00', '2950.00', '0.00', '0.00', '2500.00', 'CASH', 5, '29ABPPV0384E3Z4', 0, '2023-08-04 05:01:45', '2023-08-04 05:09:58', 1, 1),
(125, 'a2dfae6d-317d-45ca-aa3f-90681742de6d', '2023-08-04', 36512, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2450.00', 18, '441.00', '2891.00', '0.00', '0.00', '2450.00', 'CASH', 4, '29ABPPV0384E3Z4', 1, '2023-08-04 05:15:20', '2023-08-04 12:04:30', 1, 1),
(126, '0872f6e0-4645-4cf2-88f0-a8c41b6c3e4b', '2023-08-08', 37670, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7019780945', 'AKHEEBJAVED MULLA', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\", \"INSPECTION REPORT OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 2, '30ABPPV0384E3Z4', 1, '2023-08-08 04:47:17', '2023-08-08 05:16:18', 1, 1),
(127, 'c49912bf-96f2-4496-bae7-89d231ff0a6b', '2023-08-08', 37671, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SYED', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '6000.00', 18, '1080.00', '7080.00', '0.00', '0.00', '5000.00', 'CASH', 5, '30ABPPV0384E3Z5', 1, '2023-08-08 06:16:14', '2023-08-08 06:20:54', 1, 1),
(128, '5fa2600c-f8c8-4824-8d3b-c5da550e7cad', '2023-08-08', NULL, '37659', 0, 'BANK OF BARODA(EVIJAYA)', 'K. G. ROAD', 'AA', 'BB', 'CC', 'DD', 'EE', '7845124578', 'FF', 1, 'sfddsf', 'VALUATION COMPLETED BUT DOCUMENT PENDING', NULL, '2023-08-07', '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '0.00', 'CASH', 4, '', 1, '2023-08-08 07:14:55', '2023-08-08 07:15:15', 1, 1),
(129, '3d343c51-451c-423f-9a5d-ba4ef5bb0682', '2023-08-11', NULL, '0786', 0, 'BANK OF BARODA (EDENA)', 'NAGASHETTYHALLI', 'FFFF', 'FFFF', '7845124578', 'bxbc', 'xbxbx', '7845124578', 'xcvxc', 4, 'xbxbx', 'TYPING COMPLETED', NULL, '2023-08-03', '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '20000.00', 18, '3600.00', '23600.00', '0.00', '0.00', '20000.00', 'CASH', 3, '29', 0, '2023-08-11 05:58:58', '2023-08-11 05:58:58', 1, 1),
(130, 'bc484a72-9311-4768-af46-fd42cfb3ba3a', '2023-08-14', NULL, '02314', 0, 'CANARA BANK', 'MALLESHWARAM', 'sdfsd', 'sdf', '7845124578', 'cvb', 'cvb', '7845124578', 'xcvxc', 1, 'dsfsdf', 'VALUATION CANCELLED', NULL, '2023-08-01', '', '[\"VALUATION OF PROPERTY BELONGING TO\"]', '2000.00', 18, '360.00', '2360.00', '0.00', '0.00', '2000.00', 'CASH', 4, '304578', 1, '2023-08-14 07:12:46', '2023-08-14 07:12:46', 1, 1),
(131, 'df88f301-def9-4d3b-9cab-575c17a32add', '2023-08-16', 37676, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7845124578', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 6, '29ABPPV0384E3Z4', 0, '2023-08-16 04:33:42', '2023-08-16 04:33:42', 1, 1),
(132, '56eab680-ca7a-4ace-b7a8-11ff4bc8e7a9', '2023-08-16', 36593, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '1000.00', 18, '180.00', '1180.00', '0.00', '0.00', '1000.00', 'CASH', 6, '', 0, '2023-08-16 04:35:11', '2023-08-16 04:35:11', 1, 1),
(133, '4094dfca-d7e0-415d-9660-fd45ac6c74cf', '2023-08-16', 36646, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '20000.00', 18, '3600.00', '23600.00', '0.00', '0.00', '20000.00', 'CASH', 4, '', 0, '2023-08-16 04:37:43', '2023-08-16 04:37:43', 1, 1),
(134, 'c13047fc-3a33-4575-8256-937619a087fc', '2023-08-16', 36510, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '20000.00', 18, '3600.00', '23600.00', '0.00', '0.00', '20000.00', 'CASH', 3, '', 0, '2023-08-16 04:42:45', '2023-08-16 04:42:45', 1, 1),
(135, '10553f0b-4dbc-485e-b416-89a20ea8aaed', '2023-08-16', 36382, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 3, '29ABPPV0384E3Z4', 0, '2023-08-16 04:46:49', '2023-08-16 04:46:49', 1, 1),
(136, '02a4f570-b50d-4003-9f30-0551a2dc8ec7', '2023-08-16', 36527, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 4, '', 0, '2023-08-16 06:25:16', '2023-08-16 06:25:16', 1, 1),
(137, '5a11137b-33c7-4bff-8d78-70fd7ac2507a', '2023-08-16', 36458, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '200000.00', 18, '36000.00', '236000.00', '0.00', '0.00', '200000.00', 'CASH', 4, '', 0, '2023-08-16 06:25:50', '2023-08-16 06:25:50', 1, 1),
(138, '340632dd-5094-4601-9348-24129b1ad59f', '2023-08-16', 35809, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 3, '', 0, '2023-08-16 06:30:25', '2023-08-16 06:30:25', 1, 1),
(139, 'abe6e621-01d9-4738-9691-98ac3d41e719', '2023-08-16', 37677, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '7845124578', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '100000.00', 18, '18000.00', '118000.00', '0.00', '0.00', '100000.00', 'CASH', 7, '', 0, '2023-08-16 08:44:31', '2023-08-16 08:44:31', 1, 1),
(140, '6f55f4a3-1068-4027-969d-996c9230f18f', '2023-08-16', 35696, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 7, '', 0, '2023-08-16 08:46:57', '2023-08-16 08:46:57', 1, 1),
(141, 'fc0d4feb-ed01-4ad7-9b16-c2732f54c669', '2023-08-16', 36564, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 5, '', 0, '2023-08-16 08:47:46', '2023-08-16 08:47:46', 1, 1),
(142, '802f8ff0-3114-45ea-bd56-4f01f820ffb3', '2023-08-16', 35908, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '[\"VALUATION OF PROPERTY BELONGING TO\"]', '10000.00', 18, '1800.00', '11800.00', '0.00', '0.00', '10000.00', 'CASH', 3, '30ABPPV0384E3Z4', 1, '2023-08-16 11:31:21', '2023-08-16 11:31:21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `is_approved` tinyint(1) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `file_id`, `amount_paid`, `paid_date`, `bank_id`, `remarks`, `received_by`, `is_paid`, `is_approved`, `InvoiceDate`, `bill_no`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(194, 21, 37510, 0, '2021-04-09', 0, '', 0, 0, 1, NULL, NULL, '2021-04-09 19:04:44', '2021-04-09 19:04:44', 5, 5),
(195, 34, 35500, 0, '2021-04-15', 2, '', 0, 0, 1, NULL, NULL, '2021-04-15 11:15:42', '2021-10-12 16:10:59', 5, 1),
(196, 35, 35501, 0, '2021-04-15', 2, '', 0, 0, 1, NULL, NULL, '2021-04-15 11:16:03', '2021-04-15 11:16:03', 5, 5),
(197, 36, 35509, 0, '2021-04-15', 2, '', 0, 0, 1, NULL, NULL, '2021-04-15 11:16:17', '2021-04-15 11:16:17', 5, 5),
(198, 37, 35512, 0, '2021-04-15', 3, '', 0, 0, 1, NULL, NULL, '2021-04-15 11:16:31', '2021-04-15 11:16:31', 5, 5),
(199, 57, NULL, 1000, '2021-04-21', 0, '', 2, 1, 1, NULL, NULL, '2021-04-21 13:20:53', '2021-04-21 15:32:14', 1, 1),
(201, 64, NULL, 3540, '2021-04-21', 4, '', 1, 1, 1, NULL, NULL, '2021-04-21 16:23:48', '2021-08-31 17:29:23', 1, 1),
(203, 65, NULL, 3540, '2021-04-21', 0, '', 1, 1, 1, NULL, NULL, '2021-04-21 16:26:00', '2021-10-12 17:57:44', 1, 1),
(204, 70, NULL, 0, '2021-08-31', 7, 'nklnn', 0, 0, 0, NULL, NULL, '2021-08-31 17:31:50', '2021-08-31 17:31:50', 1, 1),
(205, 71, NULL, 100, '2021-08-31', 6, 'jdrydjy', 2, 0, 0, NULL, NULL, '2021-08-31 17:39:44', '2021-08-31 17:39:44', 1, 1),
(206, 72, NULL, 0, '2021-08-31', 6, '', 2, 0, 0, NULL, NULL, '2021-08-31 18:12:06', '2021-08-31 18:12:06', 1, 1),
(207, 67, NULL, 0, '2021-10-11', 6, '', 2, 1, 1, NULL, NULL, '2021-10-11 15:25:30', '2021-11-25 11:33:45', 1, 1),
(208, 75, NULL, 0, '2021-10-12', 0, '', 0, 0, 0, NULL, NULL, '2021-10-12 13:48:45', '2021-10-12 13:48:45', 1, 1),
(209, 74, NULL, 0, '2021-10-12', 6, '', 0, 0, 0, NULL, NULL, '2021-10-12 16:09:42', '2021-10-12 16:09:42', 1, 1),
(210, 45, NULL, 0, '2021-10-12', 0, '', 0, 0, 0, NULL, NULL, '2021-10-12 16:10:41', '2021-10-12 16:10:41', 1, 1),
(211, 32, NULL, 0, '2021-10-12', 0, '', 0, 1, 1, NULL, NULL, '2021-10-12 16:10:47', '2021-10-13 13:06:21', 1, 1),
(212, 82, NULL, 2950, '2021-10-26', 6, '', 2, 1, 1, NULL, NULL, '2021-10-26 11:34:44', '2021-11-24 14:35:22', 1, 1),
(213, 81, NULL, 1770, '2021-10-26', 6, '', 2, 1, 1, NULL, NULL, '2021-10-26 11:37:30', '2021-11-24 14:47:21', 1, 1),
(214, 83, NULL, 11, '2021-11-24', 6, '', 0, 1, 1, NULL, NULL, '2021-11-24 14:52:18', '2021-11-24 15:44:28', 1, 1),
(215, 85, NULL, 5000, '2021-11-24', 3, '', 0, 1, 1, NULL, NULL, '2021-11-24 15:05:28', '2021-11-24 16:53:53', 1, 1),
(216, 90, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 15:47:01', '2021-11-24 15:47:26', 1, 1),
(217, 88, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 15:50:46', '2021-11-24 16:13:08', 1, 1),
(218, 79, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 16:14:51', '2021-11-24 16:18:03', 1, 1),
(219, 77, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 16:22:21', '2021-11-24 16:23:24', 1, 1),
(220, 76, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 16:24:39', '2021-11-24 16:39:38', 1, 1),
(221, 89, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, '2023-06-22', '8224', '2021-11-24 16:40:43', '2023-06-22 16:06:33', 1, 1),
(222, 87, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 16:54:39', '2021-11-24 16:54:46', 1, 1),
(223, 86, NULL, 0, '2021-11-24', 0, '', 0, 1, 1, NULL, NULL, '2021-11-24 17:32:13', '2021-11-25 11:10:11', 1, 1),
(224, 91, NULL, 0, '2021-11-25', 0, '', 0, 1, 1, NULL, NULL, '2021-11-25 11:40:56', '2021-11-25 11:41:57', 1, 1),
(225, 92, NULL, 0, '2021-11-25', 0, '', 0, 1, 1, NULL, NULL, '2021-11-25 11:50:24', '2021-11-25 12:07:24', 1, 1),
(226, 59, NULL, 3540, '2021-11-25', 0, '', 0, 1, 1, NULL, NULL, '2021-11-25 11:57:49', '2021-11-25 14:09:30', 1, 1),
(227, 93, NULL, 0, '2021-11-25', 0, '', 0, 1, 1, NULL, NULL, '2021-11-25 14:05:56', '2021-11-25 14:07:02', 1, 1),
(228, 94, NULL, 1000, '2021-11-25', 6, 'hh', 2, 1, 1, NULL, NULL, '2021-11-25 15:17:38', '2023-02-14 14:44:33', 1, 1),
(229, 97, NULL, 2360, '2023-06-20', 3, '', 0, 1, 1, '2023-06-21', '8223', '2023-06-20 15:44:13', '2023-08-14 15:11:05', 1, 1),
(230, 98, NULL, 0, '2023-06-21', 0, '', 0, 0, 0, '2023-06-22', '8222', '2023-06-21 17:41:19', '2023-06-22 15:48:45', 1, 1),
(231, 99, NULL, 1000, '2023-06-22', 0, '', 0, 0, 0, '2023-06-22', '8221', '2023-06-22 09:50:54', '2023-06-22 09:56:47', 1, 1),
(232, 100, NULL, 354, '2023-06-23', 6, '', 0, 1, 1, '2023-06-21', '8225', '2023-06-23 15:32:07', '2023-08-14 15:20:31', 1, 1),
(233, 101, NULL, 1180, '2023-06-23', 5, '', 0, 1, 1, '2023-06-23', '8231', '2023-06-23 17:41:05', '2023-08-10 14:36:42', 1, 1),
(234, 112, NULL, 0, '2023-07-03', 0, '', 0, 1, 1, '2023-07-03', '8227', '2023-07-03 12:18:01', '2023-08-14 15:32:26', 1, 1),
(235, 113, NULL, 1180, '2023-07-03', 3, '', 2, 1, 1, '2023-07-03', '8228', '2023-07-03 13:15:33', '2023-08-10 14:36:49', 1, 1),
(236, 114, NULL, 1770, '2023-07-03', 3, '', 0, 1, 1, '2023-07-03', '8229', '2023-07-03 17:21:34', '2023-08-14 15:40:17', 1, 1),
(237, 115, NULL, 1000, '2023-07-04', 4, '', 2, 1, 1, '2023-07-01', '8230', '2023-07-04 10:35:09', '2023-08-10 15:18:27', 1, 1),
(238, 116, NULL, 0, '2023-07-18', 0, '', 0, 1, 1, '2023-07-18', '8232', '2023-07-18 10:11:59', '2023-08-14 15:40:50', 1, 1),
(239, 117, NULL, 500, '2023-07-18', 0, '', 0, 1, 1, '2023-07-18', '8233', '2023-07-18 10:14:50', '2023-08-10 14:36:54', 1, 1),
(240, 118, NULL, 1298, '2023-07-18', 0, '', 0, 1, 1, '2023-07-18', NULL, '2023-07-18 10:16:37', '2023-08-10 15:19:58', 1, 1),
(241, 119, NULL, 200, '2023-07-18', 0, '', 0, 1, 1, '2023-07-18', '', '2023-07-18 12:46:22', '2023-08-10 15:20:11', 1, 1),
(242, 120, NULL, 0, '2023-08-02', 0, '', 0, 1, 1, '2023-08-02', '8234', '2023-08-02 15:18:57', '2023-08-10 12:54:47', 1, 1),
(243, 121, NULL, 1000, '2023-08-02', 0, '', 0, 0, 0, '2023-08-02', '8235', '2023-08-02 15:22:00', '2023-08-02 15:59:08', 1, 1),
(244, 122, NULL, 1000, '2023-08-03', 0, '', 0, 0, 0, '2023-08-03', '8236', '2023-08-03 12:02:34', '2023-08-03 12:02:34', 1, 1),
(245, 123, NULL, 2000, '2023-08-04', 0, '', 0, 0, 0, '2023-08-04', '8237', '2023-08-04 10:30:36', '2023-08-04 10:31:10', 1, 1),
(246, 124, NULL, 1000, '2023-08-04', 0, '', 2, 1, 1, '2023-08-04', '8238', '2023-08-04 10:32:09', '2023-08-10 17:50:11', 1, 1),
(247, 125, NULL, 2000, '2023-08-04', 0, '', 0, 0, 0, '2023-08-04', '8239', '2023-08-04 10:46:45', '2023-08-04 10:46:45', 1, 1),
(248, 128, NULL, 1000, '2023-08-08', 0, '', 0, 0, 0, '2023-08-08', '8240', '2023-08-08 15:57:06', '2023-08-08 15:57:06', 1, 1),
(249, 129, NULL, 2000, '2023-08-11', 0, '', 0, 1, 1, '2023-08-11', '8241', '2023-08-11 11:29:43', '2023-08-16 09:59:15', 1, 1),
(250, 131, NULL, 10000, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8242', '2023-08-16 10:04:05', '2023-08-16 10:06:19', 1, 1),
(251, 132, NULL, 111, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8243', '2023-08-16 10:05:23', '2023-08-16 10:08:09', 1, 1),
(252, 133, NULL, 10000, '2023-08-16', 3, '', 2, 1, 1, '2023-08-16', '8244', '2023-08-16 10:08:00', '2023-08-16 10:13:09', 1, 1),
(253, 134, NULL, 10000, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8245', '2023-08-16 10:12:56', '2023-08-16 11:06:15', 1, 1),
(254, 135, NULL, 10000, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8246', '2023-08-16 10:17:17', '2023-08-16 11:06:15', 1, 1),
(255, 136, NULL, 100, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8247', '2023-08-16 11:55:27', '2023-08-16 11:56:21', 1, 1),
(256, 137, NULL, 1000, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8248', '2023-08-16 11:55:58', '2023-08-16 11:56:21', 1, 1),
(257, 138, NULL, 100, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8249', '2023-08-16 12:00:39', '2023-08-16 14:13:03', 1, 1),
(258, 139, NULL, 10100, '2023-08-16', 0, '', 0, 1, 0, '2023-08-16', '8250', '2023-08-16 14:14:49', '2023-08-16 14:14:49', 1, 1),
(259, 140, NULL, 1000, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8251', '2023-08-16 14:17:07', '2023-08-16 14:25:05', 1, 1),
(260, 141, NULL, 1000, '2023-08-16', 0, '', 0, 1, 1, '2023-08-16', '8252', '2023-08-16 14:17:55', '2023-08-16 14:18:43', 1, 1),
(261, 142, NULL, 11800, '2023-08-16', 0, '', 0, 1, 0, '2023-08-16', '8253', '2023-08-16 17:01:37', '2023-08-16 17:01:37', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$be2cDHYzBiZpEFIZHyHUjOB9lYZe9tLorKK7e58AVWlc4YgIWC1HS', 'admin', '2021-03-16 06:55:09', '2021-04-12 12:16:41'),
(4, 'demo', '$2y$10$t7vVoEke05PmPTUJ.SpimeZNyH0AhjCaL4pNNs8BduE16yDwOBxyS', 'user', '2021-03-24 08:50:35', '2021-03-24 08:50:35'),
(5, 'user', '$2y$10$LTXrUaeKIifYu9gNWmripubT3I/vEmE6JbtsFd/eZPVM74vrz2jdS', 'user', '2021-04-01 12:06:02', '2021-04-01 12:06:02'),
(6, 'sunil', '$2y$10$dM0Hy40OCVGtBZuXXrGAIe83FIBAPZktDAYsrsPAhvb1DGyPqTxz.', 'user', '2021-04-01 12:06:39', '2021-04-01 12:06:39'),
(7, 'kantha', '$2y$10$G2rcRB1HubiZ8RhT4nn9T.HRSWICu06Bmy/OJeQRpZcJ/0.OLHWVW', 'user', '2021-04-09 13:07:22', '2021-04-09 13:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_banks`
--

CREATE TABLE `user_banks` (
  `id` bigint UNSIGNED NOT NULL,
  `bank_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ifsc_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
(7, 'PUNJAB NATIONAL  BANK', 'Mahalakshmi Layout', 'N. Venkateshs', 'SB A/c. No.  39250001001293877', 'PUNB03925000', '', '2021-03-20 06:04:35', '2023-07-07 05:31:51');

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
-- Indexes for table `email_accounts`
--
ALTER TABLE `email_accounts`
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
  ADD UNIQUE KEY `file_id` (`file_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_files`
--
ALTER TABLE `customer_files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37681;

--
-- AUTO_INCREMENT for table `delivery_boys`
--
ALTER TABLE `delivery_boys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_accounts`
--
ALTER TABLE `email_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `engineers`
--
ALTER TABLE `engineers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_banks`
--
ALTER TABLE `user_banks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_foreign_key` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
