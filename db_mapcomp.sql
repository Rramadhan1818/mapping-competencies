-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 02:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mapcomp`
--

-- --------------------------------------------------------

--
-- Table structure for table `cg`
--

CREATE TABLE `cg` (
  `id_cg` char(8) NOT NULL,
  `nama_cg` varchar(255) NOT NULL,
  `id_department` char(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cg`
--

INSERT INTO `cg` (`id_cg`, `nama_cg`, `id_department`, `created_at`, `updated_at`) VALUES
('CG_0001', 'Macgyver', 'DP-0004', '2022-03-07 03:44:27', '2022-03-07 10:44:27'),
('CG_0002', 'Horenso', 'DP-0004', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0003', 'U-Vespa', 'DP-0004', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0004', 'Bimasakti', 'DP-0007', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0005', 'Sauberpro', 'DP-0005', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0006', 'Finish Good', 'DP-0006', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0007', 'Avatar', 'DP-0003', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0008', 'Planner', 'DP-0009', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0009', 'I2C', 'DP-0002', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0010', 'Shinning', 'DP-0003', '2022-03-07 03:51:57', '2022-03-07 10:51:57'),
('CG_0011', 'SALT', 'DP-0008', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0012', 'Metamorphosis', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0013', 'Superbin', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0014', 'Hybrid', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0015', 'Gemasd', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0016', 'Ganimeda', 'DP-0007', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0017', 'Cepot Warrior', 'DP-0005', '2022-03-07 04:32:41', '2022-05-19 03:34:27'),
('CG_0018', 'RM', 'DP-0006', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0019', 'Matrix', 'DP-0009', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0020', 'Rising Star', 'DP-0002', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0021', 'TPM', 'DP-0002', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0022', 'Effervescent', 'DP-0008', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0023', 'Office PRD', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0024', 'RM', 'DP-0006', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0025', 'PM', 'DP-0006', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0026', 'E-Max', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `competencies_directory`
--

CREATE TABLE `competencies_directory` (
  `id_directory` int(11) NOT NULL,
  `id_curriculum` int(11) NOT NULL,
  `id_job_title` char(8) NOT NULL,
  `between_year` enum('0','1','2','3','4','5') NOT NULL,
  `target` tinyint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `competencies_directory`
--

INSERT INTO `competencies_directory` (`id_directory`, `id_curriculum`, `id_job_title`, `between_year`, `target`) VALUES
(132, 3, 'JT-0049', '0', 0),
(133, 3, 'JT-0049', '1', 1),
(134, 3, 'JT-0049', '2', 2),
(135, 3, 'JT-0049', '3', 3),
(136, 3, 'JT-0049', '4', 4),
(137, 3, 'JT-0049', '5', 5),
(138, 3, 'JT-0013', '0', 0),
(139, 3, 'JT-0013', '1', 1),
(140, 3, 'JT-0013', '2', 2),
(141, 3, 'JT-0013', '3', 3),
(142, 3, 'JT-0013', '4', 4),
(143, 3, 'JT-0013', '5', 5),
(144, 3, 'JT-0015', '0', 0),
(145, 3, 'JT-0015', '1', 1),
(146, 3, 'JT-0015', '2', 2),
(147, 3, 'JT-0015', '3', 3),
(148, 3, 'JT-0015', '4', 4),
(149, 3, 'JT-0015', '5', 5),
(150, 7, 'JT-0049', '0', 0),
(151, 7, 'JT-0049', '1', 1),
(152, 7, 'JT-0049', '2', 2),
(153, 7, 'JT-0049', '3', 3),
(154, 7, 'JT-0049', '4', 4),
(155, 7, 'JT-0049', '5', 5),
(156, 6, 'JT-0153', '0', 0),
(157, 6, 'JT-0153', '1', 1),
(158, 6, 'JT-0153', '2', 2),
(159, 6, 'JT-0153', '3', 3),
(160, 6, 'JT-0153', '4', 4),
(161, 6, 'JT-0153', '5', 5),
(198, 36, 'JT-0049', '0', 0),
(199, 36, 'JT-0049', '1', 1),
(200, 36, 'JT-0049', '2', 2),
(201, 36, 'JT-0049', '3', 3),
(202, 36, 'JT-0049', '4', 4),
(203, 36, 'JT-0049', '5', 5),
(204, 36, 'JT-0153', '0', 5),
(205, 36, 'JT-0153', '1', 1),
(206, 36, 'JT-0153', '2', 2),
(207, 36, 'JT-0153', '3', 3),
(208, 36, 'JT-0153', '4', 4),
(209, 36, 'JT-0153', '5', 5),
(210, 37, 'JT-0006', '0', 3),
(211, 37, 'JT-0006', '1', 4),
(212, 37, 'JT-0006', '2', 4),
(213, 37, 'JT-0006', '3', 5),
(214, 37, 'JT-0006', '4', 5),
(215, 37, 'JT-0006', '5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `id_curriculum` int(11) NOT NULL,
  `no_training_module` varchar(150) NOT NULL,
  `id_skill_category` int(11) NOT NULL,
  `training_module` varchar(150) NOT NULL,
  `level` char(5) NOT NULL,
  `type_curriculum` varchar(255) NOT NULL,
  `training_module_group` varchar(255) NOT NULL,
  `training_module_desc` text NOT NULL,
  `id_job_title` char(8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_At` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`id_curriculum`, `no_training_module`, `id_skill_category`, `training_module`, `level`, `type_curriculum`, `training_module_group`, `training_module_desc`, `id_job_title`, `created_at`, `updated_At`) VALUES
(38, '123', 1, 'Belajar Ngoding', 'B', '', '4.0', 'Mantap', '', '2022-05-18 21:17:16', '2022-05-18 21:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_to_job`
--

CREATE TABLE `curriculum_to_job` (
  `id_ctb` int(10) UNSIGNED NOT NULL,
  `id_curriculum` int(11) NOT NULL,
  `id_job_title` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curriculum_to_job`
--

INSERT INTO `curriculum_to_job` (`id_ctb`, `id_curriculum`, `id_job_title`) VALUES
(21, 38, 'JT-0049'),
(22, 38, 'JT-0055');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id_department` char(8) NOT NULL,
  `id_divisi` char(8) NOT NULL,
  `nama_department` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id_department`, `id_divisi`, `nama_department`, `created_at`, `updated_at`) VALUES
('DP-0001', 'DV-0001', 'MNF', '0000-00-00 00:00:00', '2020-10-20 09:21:23'),
('DP-0002', 'DV-0001', 'IOS', '0000-00-00 00:00:00', '2020-10-20 09:21:30'),
('DP-0003', 'DV-0002', 'BDA', '0000-00-00 00:00:00', '2021-01-26 21:23:26'),
('DP-0004', 'DV-0001', 'PRD', '0000-00-00 00:00:00', '2020-10-20 09:21:32'),
('DP-0005', 'DV-0001', 'ENG', '0000-00-00 00:00:00', '2021-06-17 23:09:29'),
('DP-0006', 'DV-0001', 'WHS', '0000-00-00 00:00:00', '2020-10-20 09:21:36'),
('DP-0007', 'DV-0001', 'QA', '0000-00-00 00:00:00', '2020-10-20 09:21:38'),
('DP-0008', 'DV-0002', 'HC', '0000-00-00 00:00:00', '2021-01-26 21:24:33'),
('DP-0009', 'DV-0001', 'MDP', '0000-00-00 00:00:00', '2020-10-20 09:21:41'),
('DP-0010', 'DV-0003', 'BOD', '0000-00-00 00:00:00', '2020-10-20 09:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` char(8) NOT NULL,
  `nama_divisi` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`, `created_at`, `updated_at`) VALUES
('DV_0001', 'Manufacturing', '2022-01-31 02:15:13', '2022-01-31 02:15:13'),
('DV_0002', 'Supporting', '2022-01-31 02:15:13', '2022-01-31 02:15:13'),
('DV_0003', 'BOD', '2022-01-31 02:15:13', '2022-01-31 02:15:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `id_grade` int(11) NOT NULL,
  `tingkatan` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `persen` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `bg_color` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job_title`
--

CREATE TABLE `job_title` (
  `id_job_title` char(8) NOT NULL,
  `id_department` char(8) NOT NULL,
  `nama_job_title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_title`
--

INSERT INTO `job_title` (`id_job_title`, `id_department`, `nama_job_title`, `created_at`, `updated_at`) VALUES
('JT-0001', 'DP-0005', 'Advisor Engineering', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0002', 'DP-0009', 'Application & Development Support Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0003', 'DP-0004', 'Bin Filling Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0004', 'DP-0004', 'Bin Filling Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0005', 'DP-0004', 'Bin Washing Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0006', 'DP-0004', 'Bin Washing Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0007', 'DP-0004', 'Bin Washing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0008', 'DP-0004', 'Blending Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0009', 'DP-0004', 'Blending Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0010', 'DP-0005', 'Building Maintenance', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0011', 'DP-0004', 'Can Filling Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0012', 'DP-0004', 'Can Packing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0013', 'DP-0004', 'CIP Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0014', 'DP-0008', 'Cleaning Service', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0015', 'DP-0004', 'Compounding Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0016', 'DP-0002', 'Document Controller', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0017', 'DP-0004', 'Drier Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0018', 'DP-0004', 'Drier Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0019', 'DP-0004', 'Drier Continous Cleaner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0020', 'DP-0004', 'Drier Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0021', 'DP-0004', 'Drier Roving Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0022', 'DP-0008', 'Driver', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0023', 'DP-0004', 'Dry Sachet Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0024', 'DP-0004', 'Dry Sachet Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0025', 'DP-0004', 'Dry Sachet Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0026', 'DP-0004', 'Dry Sachet Packing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0027', 'DP-0004', 'Dumping Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0028', 'DP-0004', 'Dumping Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0029', 'DP-0004', 'Dumping Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0030', 'DP-0004', 'Eductor Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0031', 'DP-0004', 'Eductor Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0032', 'DP-0005', 'Electrical Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0033', 'DP-0005', 'Engineering Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0034', 'DP-0005', 'Engineering Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0035', 'DP-0005', 'Engineering Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0036', 'DP-0004', 'Evaporator Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0037', 'DP-0003', 'FA & IT Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0038', 'DP-0004', 'Fat Blend & Mixing Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0039', 'DP-0004', 'Fat Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0040', 'DP-0004', 'Filling & Packing Coordinator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0041', 'DP-0004', 'Filling & Packing Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0042', 'DP-0003', 'Finance & Accounting Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0043', 'DP-0003', 'Finance & Accounting Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0044', 'DP-0003', 'Finance & Accounting Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0045', 'DP-0005', 'Forklift Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0046', 'DP-0008', 'General Affair Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0047', 'DP-0008', 'General Affair Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0048', 'DP-0008', 'Human Capital Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0049', 'DP-0008', 'HRD Administration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0050', 'DP-0005', 'HVAC Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0051', 'DP-0002', 'Improvement Facilitator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0052', 'DP-0002', 'Improvement Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0053', 'DP-0002', 'Integrated Operation System Dept. Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0054', 'DP-0008', 'IR & GA Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0055', 'DP-0009', 'IT Infrastructure & Security Management', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0056', 'DP-0009', 'Information Technology Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0057', 'DP-0008', 'Komandan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0058', 'DP-0005', 'Maintenance Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0059', 'DP-0005', 'Maintenance Planner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0060', 'DP-0005', 'Maintenance System Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0061', 'DP-0009', 'Manufacturing Development & Planning Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0062', 'DP-0001', 'Manufacturing Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0063', 'DP-0001', 'Manufacturing Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0064', 'DP-0005', 'Mechanic Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0065', 'DP-0005', 'Mechanical Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0066', 'DP-0005', 'Mechanical Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0067', 'DP-0008', 'Mnf Human Capital Dev Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0068', 'DP-0005', 'Operational Maintenance Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0069', 'DP-0008', 'Payroll & Personnel Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0070', 'DP-0008', 'Payroll & Secretary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0071', 'DP-0008', 'Personel Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0072', 'DP-0004', 'Powder Mixer Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0073', 'DP-0009', 'PPIC Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0074', 'DP-0009', 'PPIC Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0075', 'DP-0009', 'PPIC Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0076', 'DP-0010', 'President Director', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0077', 'DP-0005', 'Preventive Maintenance Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0078', 'DP-0004', 'Process & Drier  Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0079', 'DP-0004', 'Processing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0080', 'DP-0004', 'Production Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0081', 'DP-0004', 'Production Admin 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0082', 'DP-0004', 'Production Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0083', 'DP-0004', 'Production Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0084', 'DP-0004', 'Production Store Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0085', 'DP-0004', 'Production Store Keeper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0086', 'DP-0003', 'Purchasing Administration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0087', 'DP-0003', 'Purchasing Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0088', 'DP-0003', 'Purchasing, Legal & Regulator Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0089', 'DP-0007', 'QA Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0090', 'DP-0007', 'QA Laboratory Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0091', 'DP-0007', 'QA Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0092', 'DP-0007', 'QC Chemphys Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0093', 'DP-0007', 'QC In Line Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0094', 'DP-0007', 'QC In Line Field', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0095', 'DP-0007', 'QC In Line Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0096', 'DP-0007', 'QC In Line Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0097', 'DP-0007', 'QC Incoming Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0098', 'DP-0007', 'QC Microbiology Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0099', 'DP-0007', 'QC Microbiology Field', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0100', 'DP-0007', 'Quality Assurance Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0101', 'DP-0008', 'Receptionist', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0102', 'DP-0008', 'Recruitment & Learning Development Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0103', 'DP-0004', 'Sachet Filling Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0104', 'DP-0004', 'Sachet Packing Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0105', 'DP-0004', 'Sachet Packing Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0106', 'DP-0008', 'Security', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0107', 'DP-0008', 'Serikat Pekerja', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0108', 'DP-0005', 'Sparepart Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0109', 'DP-0005', 'Store Keeper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0110', 'DP-0002', 'System Inspector', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0111', 'DP-0002', 'System Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0112', 'DP-0002', 'System Management Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0113', 'DP-0001', 'Technical Advisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0114', 'DP-0004', 'Tipping Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0115', 'DP-0004', 'Tipping Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0116', 'DP-0004', 'Tote Bin Washing Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0117', 'DP-0002', 'TPM Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0118', 'DP-0002', 'TPM Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0119', 'DP-0005', 'Utility Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0120', 'DP-0005', 'Utility Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0121', 'DP-0006', 'Warehouse Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0122', 'DP-0006', 'Warehouse Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0123', 'DP-0006', 'Warehouse FG Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0124', 'DP-0006', 'Warehouse FG Checker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0125', 'DP-0006', 'Warehouse FG Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0126', 'DP-0006', 'Warehouse FG Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0127', 'DP-0006', 'Warehouse PM Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0128', 'DP-0006', 'Warehouse PM Checker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0129', 'DP-0006', 'Warehouse PM Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0130', 'DP-0006', 'Warehouse RM Major Checker', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0131', 'DP-0006', 'Warehouse RM Major Forklift Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0132', 'DP-0006', 'Warehouse RM Major Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0133', 'DP-0006', 'Warehouse RM Major Preparator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0134', 'DP-0006', 'Warehouse RM Major Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0135', 'DP-0006', 'Warehouse RM Minor Assistant', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0136', 'DP-0006', 'Warehouse RM Minor Helper', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0137', 'DP-0006', 'Warehouse RM Minor Preparator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0138', 'DP-0006', 'Warehouse RM Minor Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0139', 'DP-0004', 'Wet Canning Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0140', 'DP-0004', 'Wet Canning Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0141', 'DP-0004', 'Wet Canning Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0142', 'DP-0004', 'Wet Sachet Circle Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0143', 'DP-0004', 'Wet Sachet Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0144', 'DP-0004', 'Wet Sachet Group Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0145', 'DP-0005', 'WWTP Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0146', 'DP-0005', 'Admin Utility', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0147', 'DP-0004', 'Bin Washing, Fat Blend & Mixing Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0148', 'DP-0004', 'Blending & Dumping Circle Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0149', 'DP-0003', 'Business Development & Analysis Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0150', 'DP-0008', 'Cleaning Service Leader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0151', 'DP-0001', 'Deputy Manufacturing Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0152', 'DP-0004', 'Dry Sachet Tipping Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0153', 'DP-0008', 'HRD Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0154', 'DP-0009', 'Manufacturing Development & Planing Administation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0155', 'DP-0009', 'Manufacturing Development & Planing Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0156', 'DP-0005', 'Mechanical Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0157', 'DP-0005', 'PM Technician', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0158', 'DP-0004', 'Process & Drier Coordinator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0159', 'DP-0004', 'Production Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0160', 'DP-0007', 'QA In Line Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0161', 'DP-0007', 'QA Junior Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0162', 'DP-0003', 'Secretary & Management System', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0163', 'DP-0002', 'TPM & Focus Improvement Supervisor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0164', 'DP-0005', 'Utility Analyst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('JT-0165', 'DP-0012', 'Paramedik', '2021-06-17 23:07:51', '2021-06-17 23:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `job_title_users`
--

CREATE TABLE `job_title_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_title_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_title_users`
--

INSERT INTO `job_title_users` (`id`, `user_id`, `job_title_id`, `value`, `created_at`, `updated_at`) VALUES
(2, 1, 'JT-0055', 4, '2022-05-11 01:56:00', '2022-05-11 01:56:00'),
(3, 1, 'JT-0069', 2, '2022-05-18 01:09:38', '2022-05-18 01:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` char(8) NOT NULL,
  `nama_level` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`, `created_at`, `updated_at`) VALUES
('LV-0001', 'Director', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0002', 'Division Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0003', 'Dept Head', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0004', 'SPV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0005', 'Staff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0006', 'Coordinator Covid', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0007', 'Security', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0008', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('LV-0009', 'Admin', '2020-10-03 08:45:07', '2020-10-03 08:45:07'),
('LV-0010', 'Gudang', '2020-10-26 03:20:10', '2020-10-26 20:39:26'),
('LV-0012', 'Super Admin', '2020-11-23 07:51:58', '2020-11-23 07:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2022_05_09_050852_create_job_title_users_table', 2),
(6, '2022_05_13_035113_change_updatedad_from_cg_table', 3),
(7, '2022_05_17_074159_add_bgcolor_from_grade_table', 3),
(8, '2022_05_17_084953_change_edited_from_sub_department_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rekap_mapping`
--

CREATE TABLE `rekap_mapping` (
  `id_rekap` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `module_selesai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` char(2) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
('1', 'Admin'),
('2', 'CG Leader');

-- --------------------------------------------------------

--
-- Table structure for table `skill_category`
--

CREATE TABLE `skill_category` (
  `id_skill_category` int(11) NOT NULL,
  `skill_category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill_category`
--

INSERT INTO `skill_category` (`id_skill_category`, `skill_category`) VALUES
(1, 'Technical Skills'),
(2, 'General Skills');

-- --------------------------------------------------------

--
-- Table structure for table `sub_department`
--

CREATE TABLE `sub_department` (
  `id_subdepartment` char(8) NOT NULL,
  `id_department` char(8) NOT NULL,
  `nama_subdepartment` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_department`
--

INSERT INTO `sub_department` (`id_subdepartment`, `id_department`, `nama_subdepartment`, `created_at`, `updated_at`) VALUES
('SDP-0001', 'DP-0001', 'MNF subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0002', 'DP-0002', 'IOS subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0003', 'DP-0002', 'IOS-SYS subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0004', 'DP-0002', 'IOS-IMP subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0008', 'DP-0004', 'PRD subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0009', 'DP-0004', 'PRD-P&D subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0010', 'DP-0004', 'PRD-F&P subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0011', 'DP-0005', 'MM subdept', '0000-00-00 00:00:00', '2021-02-09 03:12:11'),
('SDP-0012', 'DP-0005', 'MM-OPM subdept', '0000-00-00 00:00:00', '2021-02-09 03:12:25'),
('SDP-0013', 'DP-0005', 'MM-MTS subdept', '0000-00-00 00:00:00', '2021-02-09 03:12:37'),
('SDP-0014', 'DP-0006', 'WHS subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0015', 'DP-0006', 'WHS-RM subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0016', 'DP-0006', 'WHS-PM subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0017', 'DP-0006', 'WHS-FG subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0018', 'DP-0007', 'QA subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0019', 'DP-0007', 'QA-QC subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0020', 'DP-0007', 'QA-MCO subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0021', 'DP-0008', 'HC subdept', '0000-00-00 00:00:00', '2021-02-22 01:44:49'),
('SDP-0022', 'DP-0008', 'HC-GA subdept', '0000-00-00 00:00:00', '2021-02-22 01:45:01'),
('SDP-0023', 'DP-0008', 'HC-HRD subdept', '0000-00-00 00:00:00', '2021-02-22 01:45:15'),
('SDP-0025', 'DP-0009', 'MDP subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0026', 'DP-0009', 'MDP-PPIC subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0027', 'DP-0010', 'BOD subdept', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
('SDP-0028', 'DP-0012', 'Klinik subdept', '2020-11-04 20:43:49', '2020-11-05 03:43:49'),
('SDP-0029', 'DP-0003', 'BDA subdept', '2021-01-26 21:32:37', '2021-01-27 04:32:37'),
('SDP-0030', 'DP-0003', 'BDA-PRC', '2021-01-26 21:40:45', '2021-01-27 04:40:45'),
('SDP-0031', 'DP-0003', 'BDA-FA', '2021-01-26 21:41:13', '2021-01-27 04:41:13'),
('SDP-0032', 'DP-0009', 'MDP-IT subdept', '2021-01-26 23:33:33', '2021-01-27 06:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `taging_reason`
--

CREATE TABLE `taging_reason` (
  `id_taging_reason` int(255) UNSIGNED NOT NULL,
  `id_white_tag` varchar(15) DEFAULT NULL,
  `no_taging` varchar(25) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `date_open` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `learning_method` enum('0','1','2','3','4') DEFAULT NULL COMMENT '0:internal 1:external 2:inhouse 3:online 4:readbook',
  `trainer` varchar(50) DEFAULT NULL,
  `date_plan_implementation` date DEFAULT NULL,
  `notes_learning_implementation` text DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `start` time DEFAULT NULL,
  `finish` time DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `date_verified` date DEFAULT NULL,
  `id_verified_by` int(255) UNSIGNED DEFAULT NULL,
  `result_score` double DEFAULT NULL,
  `notes_for_result` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taging_reason`
--

INSERT INTO `taging_reason` (`id_taging_reason`, `id_white_tag`, `no_taging`, `year`, `period`, `date_open`, `due_date`, `learning_method`, `trainer`, `date_plan_implementation`, `notes_learning_implementation`, `date_closed`, `start`, `finish`, `duration`, `date_verified`, `id_verified_by`, `result_score`, `notes_for_result`) VALUES
(15, 'SWrxk1649384942', '00001', 2022, 'April', '2022-04-08', '2022-04-08', '0', 'Example', '2022-04-09', NULL, '2022-04-10', '16:03:00', '04:03:00', '12 Jam : 0 Menit', '2022-04-08', 1, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pengguna` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peran_pengguna` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_masuk` date NOT NULL,
  `id_job_title` char(8) CHARACTER SET utf8mb4 NOT NULL,
  `id_divisi` char(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_cg` char(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_department` char(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_sub_department` char(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `id_level` char(8) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `nama_pengguna`, `peran_pengguna`, `email`, `email_verified_at`, `password`, `tgl_masuk`, `id_job_title`, `id_divisi`, `id_cg`, `id_department`, `id_sub_department`, `id_level`, `status`, `gambar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'K210300063', 'REZKI RAMADHAN', '1', 'rramadhan1818@gmail.com', '2022-03-01 09:58:33', '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-03-01', 'JT-0049', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0023', 'LV-0009', 1, '4gJ3GOQqTuWsDtj.png', NULL, '2022-03-05 09:58:33', '2022-05-18 00:00:35'),
(2, 'K200900257', 'CHANDRA PRAWIRA', '1', 'chandra@gmail.com', '2022-03-01 09:58:33', '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-03-11', 'JT-0049', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0023', 'LV-0009', 1, 'E72Vo5k8MkUKjCm.png', NULL, '2022-03-11 01:46:24', '2022-05-18 00:01:32'),
(3, '050700014', 'DIDIK BUDIARTO', NULL, 'didik.budiarto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0149', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '051000017', 'I GEDE PUTU EKA PUTRA', NULL, 'igedeputu.ekaputra@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0076', NULL, NULL, 'DP-0010', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '060500014', 'YUDHA AGUS TRI BASUKI', NULL, 'yud.agus@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0062', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '060500015', 'APOLONIA LAURENSIA LUNAWATI. N', NULL, 'laurensia.lunawati2007@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0067', NULL, NULL, 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '060700017', 'SRI REJEKI', NULL, 'jeckie78@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0163', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '060800020', 'YUNIARTO', NULL, 'yuniartorasian72@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0068', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '060800022', 'YAYAN', NULL, 'yayan.jan123@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0109', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '060900024', 'NURHASAN', NULL, 'bungzoe83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0020', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '060900025', 'DENY MUHAMAD MULYADI', NULL, 'muhamadmulyadi80@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0119', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '061000028', 'SUHATMAN', '1', 'suhatman7@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0144', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:12:36'),
(13, '061100030', 'AFRIAN CHANDRA IDRIS', NULL, 'afrian81@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0066', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '061100031', 'DARYONO', NULL, 'daryono7706@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0003', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '061100032', 'MUHAMAD EFENDI', '1', 'efendimuhamad7608@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0018', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:29:28'),
(16, '061100033', 'USEP JAYADI', NULL, 'jayadiusep3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0025', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '061100034', 'TIWIK SUYANTI', NULL, 'tiwik.suyanti@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0160', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '061100035', 'MAMAN SULAEMAN', NULL, 'kang.maman24@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0164', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '061200036', 'ADE SAPRUDIN', NULL, 'adesfadil123@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0015', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '061200037', 'ASEP CAHYAN', '1', 'asepcahyan9@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0114', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:04:28'),
(21, '061200038', 'SAMIDI', '1', 'samidiasemo@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0020', 'DV_0002', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:29:13'),
(22, '061200039', 'SUNGATNO', NULL, 'sungatnohadi76@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0096', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '061200040', 'ZAINI', NULL, 'zaeniaja66@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0040', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '061200041', 'MUNADIH', '1', 'munadihmumun@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0140', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:11:45'),
(25, '061200042', 'NANDANG SUTISNA', NULL, 'nsanandangsutisna@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0020', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '061200043', 'YUNUS JOHN BILORO', '1', 'yunusjohn50@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0024', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 03:03:56'),
(27, '061200045', 'KUSNADI RUDI', NULL, 'k.rudikri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '070100001', 'ADI SETIAHADI', NULL, 'this1s4di@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0159', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '070100004', 'AGUS TURANTO', NULL, 'aturanto2007@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0078', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '070100007', 'EKO WAHYUDI', NULL, 'echowahyudi32@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0156', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '070100012', 'EDI WIBOWO JOKO PRASETYO', NULL, 'ofalputra30@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0158', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '070100013', 'AGUS RIYANTO', NULL, 'aroryoto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0088', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '070100015', 'RADEN ABBAS FAUZI', '1', 'fauzibbas@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:19:17'),
(34, '070100024', 'YUSUF HAMDANI', NULL, 'yusufarfan030284@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0036', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '070200028', 'JAKARIA (SK)', NULL, 'skjakaria027@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0147', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '070200029', 'RAHMAT NURHIDAYAT', NULL, 'rahmatar315@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0013', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '070200030', 'ARDIAN', NULL, 'ardian.kmi.wh@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0133', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '070200031', 'YULIANTO', NULL, 'bombersolokrajan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0138', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '070300033', 'ASEP HAEDAR', NULL, 'haedar0210@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0036', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '070300036', 'JOJON DARSONO YOGA JAYA', NULL, 'jojondarsono11@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '070400065', 'MARLENY PATANDUNG', NULL, 'mpatandung@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0122', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '070400068', 'DWI ISDARYANTO', NULL, 'dwi2.isdaryanto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0134', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '070500078', 'NAFIS SURACHMAN', NULL, 'nafis_lopon@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0066', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '070600083', 'HENDI ISKANDAR', NULL, 'hendi.iskandar.umb12@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0090', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '080900029', 'ADE NANDAR', '1', 'adenandar78@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0025', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 02:17:26'),
(46, '080900030', 'BUGI NOVRIYANTO', NULL, 'bubugigi17@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0041', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '080900031', 'DWI KURNIAWAN', NULL, 'dwi_kmi@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0161', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '080900032', 'FEBI DIANA', NULL, 'febidiana3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0042', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '080900033', 'LINDA LABORA', '1', 'ndalabora1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0141', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:05:07'),
(50, '081000037', 'DIAWAN', NULL, 'diawan.only86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0129', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '081000038', 'AGUS FIRMANSYAH', NULL, 'agus_k99@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0100', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '090593002', 'HALILY SOFYAN AL HASAN', NULL, 'halleymalmsteen@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0111', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '100192702', 'AGUNG HARTANTO', NULL, 'agunghartanto83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '100192704', 'IKA OKTAFIANTI', NULL, 'okta.arisandy01@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0087', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '100192705', 'SAEPULLAH', NULL, 'saepullahsaepullah8@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0013', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '100200007', 'BURHANUDIN', NULL, 'pay.burhan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0068', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '100300009', 'NAZARUDIN RACHMAN SIDIK', NULL, 'fiasco.missing@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0061', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '100492706', 'SEPTIAN EKO PRIATNA', NULL, 'septian.gates@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0095', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '100692707', 'IWAN HERMAWAN', NULL, 'iwan.hermawan963@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '100892708', 'DEDE DODI GINANJAR', NULL, 'd2ginanjar@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0083', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '100892709', 'RAHMAT KURNIAWAN', '1', 'zikrikurniawan08@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0025', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:16:30'),
(62, '100892710', 'SOLEHUDIN', NULL, 'solehudinkmi1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0025', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '100992711', 'SITI RIZKIANA NURANNISA', NULL, 'nurannisarizkiana@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '110191206', 'AGA WALESSA', NULL, 'walessaaga@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0118', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '110191207', 'MAULANA ABDUL SALIM', '1', 'muhammadkarim354@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0008', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:51:13'),
(66, '110191208', 'UUM UMBARA', '1', 'umbarathea722@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0009', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:48:01'),
(67, '110191209', 'YERI KUSNADI', NULL, 'yerikusnadi888@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0079', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '110891211', 'ADE HUMAENI', '1', 'leaderpacking40@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0144', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 03:14:52'),
(69, '110891212', 'MARKUS', NULL, 'markusmuji8179@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0004', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '110900055', 'HERMANSYAH', NULL, 'h3rm4n21@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0053', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '111200086', 'SADHU PUTRI SUSANTI', NULL, 'sadhuputri0405@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0044', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '120192502', 'ADRI FIRMANSYAH', '1', 'adrifirmansyah16@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0148', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-17 22:53:41'),
(73, '120192503', 'ARDISON', NULL, 'ardison0984@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0005', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '120192504', 'EKO ARIES SANTOSO', NULL, 'arieseko98@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0109', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '120192505', 'JAJANG ABDUL ROHMAN', NULL, 'zikrakhalida28@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0031', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '120192506', 'NURJANAH', '1', 'noerjhen@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0152', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:01:54'),
(77, '120192507', 'SAEPUDIN', '1', 'saepudina631@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0072', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:36:13'),
(78, '120192508', 'TARMAN SUTISNA', '1', 'tarman.sutisna84@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0012', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:10:07'),
(79, '120192509', 'USEP YUSEPA', '1', 'usepyusepa66@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0114', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:14:15'),
(80, '120192510', 'YAYAT HIDAYAT', '1', 'yayat2836@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0024', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 02:15:35'),
(81, '120200010', 'AGUNG JOKO SUPRIHANTO', NULL, 'agung.joko.tin42@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0112', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '120292511', 'AHMAD SAHRONI', NULL, 'assahroni78@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0083', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '120292512', 'DENY SUPRAPTO', NULL, 'dhenysoeprapto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0097', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '120292513', 'DIAN SANJAYA', '1', 'diansanjaya1984@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0072', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 02:35:42'),
(85, '120292514', 'HERMAWAN', NULL, 'hermawan2231@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0013', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '120292515', 'RUDI SUGIARTO', NULL, 'tabotie88@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0052', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '120292516', 'YAYAT NURHIDAYAT', NULL, 'ynurhidayat321@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0036', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '120292517', 'YUANITA JOHAN', NULL, 'yuanita.johan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0075', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '120292518', 'ZAINI ARDHIANSYAH', NULL, 'zainiardhiansyah@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0042', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '120500031', 'AKHMAD MAKHALI', NULL, 'ommak82@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0056', NULL, NULL, 'DP-0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '120692519', 'DINA MUSTIKA WENI', NULL, 'dina.desu@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '120692521', 'WEMPI NUR HIDAYAT', NULL, 'wempinur@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0133', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '120892522', 'KARYA SETIAWAN', NULL, 'karyastiawan07@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0015', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '120892523', 'MUKTI WIBOWO', NULL, 'wibowomukti26@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0121', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '120892524', 'VICKRY JANI HARIYANTO', NULL, 'vickryjani@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0032', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '120992525', 'ARDIKA FAUDIN', '1', 'ardika.f.89@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0080', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:13:25'),
(97, '120992526', 'BAYU SEPTO PRASETYO', NULL, 'bayusepto16@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0137', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '121092527', 'BUDI MAULANA NUGRAHA', NULL, 'budimaulananugraha@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0066', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '121092528', 'DODI ISKANDAR', NULL, 'reisyhafebkiranicuakep@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '121092529', 'SUSANTO RONNI', NULL, 'daffasusanto20@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0003', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '121192530', 'DEDE KUSNANDAR', '1', 'dedekusnandarinsun@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:08:32'),
(102, '121192531', 'GUMILAR INDRA FEBRIANSYAH', '1', 'gumilarif@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0029', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:51:46'),
(103, '121192532', 'KARNAEN', NULL, 'karnaen1976@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0103', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '121192533', 'MUHAMMAD SHANDI SUMANTRI', '1', 'shand.milano@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:21:00'),
(105, '121192534', 'ONDI NUGROHO', NULL, 'ondix.lau@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '121192535', 'RISNAWATI', '1', 'wrisna97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0115', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:58:03'),
(107, '121192536', 'RUDI RAHMAN', '1', 'rudirahman0879@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:07:35'),
(108, '121192537', 'SUGIANTO', NULL, 'zhie46@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0114', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '121192538', 'SULISWANTO', '1', 'suliswanto1503@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:37:32'),
(110, '121192539', 'YUSUP SYAHRONI', '1', 'yusufsyahroni4787@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0072', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:18:27'),
(111, '121192540', 'ZENAL MULYANA', '1', 'zenal.kenil83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:05:22'),
(112, '121192541', 'RIESTA SHASYA FAUZIAH', NULL, 'riestashasya@ymail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '130100005', 'AMBAR KUSUMO NUGROHO', NULL, 'aknugroho@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0082', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '130193003', 'ADE NANA SUMARNA', NULL, 'andealova77@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0005', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '130193004', 'AGUS AKBAR', NULL, 'agus.akbar1986@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0131', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '130193005', 'AGUS PRASETIYO', NULL, 'prast.we@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0145', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '130193006', 'APANDI', NULL, 'apandialfathar34@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0004', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '130193007', 'ASMI LASARI', '1', 'asmilasari23@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0115', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:17:16'),
(119, '130193008', 'DANI PURWANEGARA', NULL, 'danipurwanegara7@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0128', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '130193009', 'DEDEN SETIA JAYA SOMANTRI', NULL, 'dedensetiajaya09747@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0031', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '130193010', 'DEVI SAFITRI SUNDARI', '1', 'devisafitri798@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0115', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:01:07'),
(122, '130193011', 'DIDI SUPRIADI', NULL, 'didi_supriadi@live.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0007', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '130193012', 'DWIKI ARIA DARMAWAN', '1', 'wickyarya17@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:36:56'),
(124, '130193013', 'ERFAN KIMA BAHTERA', NULL, 'bahteraerfan87@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '130193014', 'ERIS MOCHAMAD FIRDAUS', NULL, 'erisfirdaus@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0097', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '130193015', 'FARIZ FAUZI PRATAMA', NULL, 'farizfauzipratama@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0095', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '130193016', 'FEBRIANGGONO DANNY SETIYADI', '1', 'dannyarieanti@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:06:02'),
(128, '130193017', 'HADI', NULL, 'hadi180286@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0125', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '130193018', 'HERU AHMAD SAPRUDIN', '1', 'ureh.rafael46@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:25:18'),
(130, '130193019', 'JAKARIA (CK)', NULL, 'zakariyahck@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0079', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '130193020', 'KANDA', NULL, 'kandadoank69@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0124', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '130193021', 'KUSNADI', NULL, 'koesdoank77@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0131', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '130193022', 'MADA', '1', 'madamoza39@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:38:08'),
(134, '130193023', 'MUHAMAD SYAIFUL ANWAR', NULL, 'evfuel@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0031', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '130193024', 'NUR FAJRI', NULL, 'nurf99732@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0004', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '130193025', 'PRIYANTO', NULL, 'priyanto2687@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '130193026', 'RIDWAN', '1', 'kiansantang934@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0017', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:29:44'),
(138, '130193027', 'RUDI SETIAWAN', '1', 'rudisuhu3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0115', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:49:40'),
(139, '130193028', 'SAMSIANTO', NULL, 'antohukl@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '130193029', 'SHANDY ASMARA', NULL, 'asmarashandy@ymail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0005', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '130193030', 'SUDARWANTO', '1', 'sudarwantobapakebilqis@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0139', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:04:31'),
(142, '130193031', 'SUHERI', NULL, 'suheri89.sh@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0137', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '130193033', 'SYAHRUL HIDAYAT', '1', 'syahrulhidayat92@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0011', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:07:25'),
(144, '130193034', 'WARDI SAEPUDIN', NULL, 'wardisaepudin007@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '130393035', 'BOBBY FAHMI FARHANUDIN', NULL, 'farhan.bobbyfahmi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '130793036', 'ADNAN SAMSULEH', NULL, 'adnan.holic@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0110', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '130793037', 'AEP SAEPUDIN', NULL, 'aep198509@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0007', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '130793038', 'AJAT JAPAR', '1', 'jattz87lfr@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'undefine', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:43:54'),
(149, '130793039', 'ALI ROHMAN', NULL, 'alirohman5728@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0137', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '130793040', 'AMRIH PANUNTUN', NULL, 'amrihpanuntun@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0103', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '130793041', 'ANDI KUSUMA', '3', 'kandi5625@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0008', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:50:19'),
(152, '130793042', 'ANGGA CHRISTIAN YONATHAN', NULL, 'angga.christian08@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0128', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '130793043', 'ASEP ROBAN', NULL, 'roben765@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '130793044', 'DAIKIN PURNA YUDHA', NULL, 'daikinvina21@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0029', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '130793045', 'DARMA ARDHI', '1', 'darmaardhi69@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:39:01'),
(156, '130793046', 'DIDIK PURWANTO', '1', 'didikpurwantojowo81@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-18', 'JT-0027', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:52:22'),
(157, '130793047', 'HERI KURNIAWAN', '1', 'kurniawanheri449@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:19:50'),
(158, '130793048', 'HERIYANA', NULL, 'boyzheriyana@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '130793049', 'IKMAL MAULANA', NULL, 'ikmalmaulana708@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '130793050', 'IRFAN HIMAWAN', NULL, 'himawanirfan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '130793051', 'JOHAN KERTIONO', '1', 'johanbismillah99@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0012', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:05:48'),
(162, '130793052', 'MOHAMMAD DWI ADHITYA', NULL, 'dwiadityamail@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0125', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '130793053', 'SAMROJI', NULL, 'samroji118@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0015', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '130793055', 'JUJUN SIROJUDIN', NULL, 'jujunsirojudin1502@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0003', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '130793056', 'NOVAN TRIANTO', NULL, 'vanstryan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '130793058', 'SANNI SUTIADI', '1', 'sannisutiadi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0114', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:03:50'),
(167, '130900125', 'INSANI GUSTRIANJAR MUHAROM', NULL, 'insanianjar@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '130900126', 'KASTOLANI', NULL, 'kastolanikmi86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0077', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '140192908', 'JEPRI HAERUDIN', NULL, 'haerudin24@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0074', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '140292909', 'TRI AGUSTIARTY WARDHANY', NULL, 'triagustiarty@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '140700131', 'PUTRI PUSPITA SARI', NULL, 'putripuspitasari55@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0043', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '140792910', 'AGUS NUGROHO', '1', 'nugrohofaiz14@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0012', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:09:36'),
(173, '140792911', 'ARIYANTO', '1', 'ariyanto88974@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0011', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:08:58'),
(174, '140792913', 'BAHRUDIN', NULL, 'abahudin83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0145', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '140792914', 'BENI SETIYAWAN', '1', 'benn.john.bj@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:39:29'),
(176, '140792915', 'CECEP SUPRIADI', '1', 'mibnu298@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0029', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:17:59'),
(177, '140792916', 'IRPAN HIDAYAT PAMIL', NULL, 'irpanhidayatpamil.ip@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '140792918', 'MOKHAMAD MUSLIH', '1', 'musliehneutron53@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:09:53'),
(179, '140792919', 'R HAERUL SEJATI', NULL, 'haerulsintauna@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0095', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '140792920', 'TAUFIK FARIDZAL', NULL, 'faridzal83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0039', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '140792921', 'ZAENUDDIN', '1', 'zaenuddintan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:21:45'),
(182, '141092923', 'FITRIYANI', NULL, 'hi.fitriyani@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0162', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '141092924', 'PANDU WIJAYADI', NULL, 'telurpanda@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0065', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '150191702', 'MOEHAMMAD FADJAR FADHILAH', NULL, 'fadjar.crotcrew@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0032', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '150291703', 'ALI NURDIN', NULL, 'ali.nurdin.hidayat@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0137', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '150291704', 'BAGUS SANTOSO', NULL, 'santosobagus809@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0128', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '150291705', 'HERI HENDRIANA', NULL, 'herry.hendriana@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0124', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '150491706', 'SUMARNA', NULL, 'sumarna926@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0073', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '150600127', 'YOPPY SUKMANDAR', NULL, 'sukmandar.yoppy@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0035', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '150791707', 'ADI AMRAN SUKARYA', '1', 'adiamran88@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:22:55'),
(191, '150791708', 'BAMBANG RISTYANTO', NULL, 'mbengristyan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0021', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '150791709', 'HAPPY SUGESTIE PRAHARA', '1', 'happysugestie@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-02', 'JT-0046', 'DV_0002', 'CG_0022', 'DP-0008', 'SDP-0022', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-17 19:46:29'),
(193, '150791710', 'RIRIS PURWANTO', NULL, 'ririspurwanto33@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0021', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '150800189', 'BAHRUDIN DWI NURYANTO', NULL, 'dwinuryantob@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0032', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '160192705', 'AHMAD SAEPUDIN', NULL, 'asaepudin511@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0066', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '160192706', 'YUNIAR TRI PRAKOSO', NULL, 'triprakoso777@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '160200097', 'ALIT PRADANA', NULL, 'alitpradana52@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0041', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '160792707', 'ADI SOPANA', NULL, 'sopanaadi25@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0007', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '170122440', 'FAJAR MAULANA', NULL, 'fajarmaulana638@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0137', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '170122441', 'MUHAMMAD IQBAL FAUZY', NULL, 'iqbalfauzysinkas@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0120', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '170122442', 'SAIFUL BAHRI', NULL, 'sbahriel198@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0137', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '170700031', 'ARIS SUPARLI', '3', 'arissuparli9@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:12:09'),
(203, '170700032', 'HERU HAERUDIN', '1', 'heruhaerudin11@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:10:32'),
(204, '170700033', 'PEBI', '1', 'pebipebi52@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:23:46'),
(205, '171122509', 'MOCHAMAD FADDLY ADI', NULL, 'mochfaddly@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0021', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '180100012', 'RUDI ROSIDIN', NULL, 'rudirosidin1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0059', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '180100013', 'SIDIK TRIPAMBUDI', NULL, 'sidiktrii@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0066', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '180100014', 'DERI INDRIANI', NULL, 'indrianiderry@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0042', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `nik`, `nama_pengguna`, `peran_pengguna`, `email`, `email_verified_at`, `password`, `tgl_masuk`, `id_job_title`, `id_divisi`, `id_cg`, `id_department`, `id_sub_department`, `id_level`, `status`, `gambar`, `remember_token`, `created_at`, `updated_at`) VALUES
(209, '180100015', 'RIO ANGGARA', '1', 'ri.ironpeg@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0009', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:48:58'),
(210, '180100016', 'ABDUL MUJIB MUSTOPA', '1', 'abdulmujib4994@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:12:49'),
(211, '180100017', 'SANIP KOMARUDIN', '1', 'sanip.komarudin@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0011', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:08:02'),
(212, '180100018', 'EDI SAPUTRA', '1', '94edisaputra@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:39:58'),
(213, '180100019', 'DANIS SENO PRABOWO', '1', 'danissenoprabowo@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:14:14'),
(214, '180100020', 'HERMAN RESTU FAUZI', '1', 'herman.ybgi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:24:31'),
(215, '180100021', 'WULAN NUR FATIMAH', '1', 'nurfatimahwulan1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-09', 'JT-0142', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:03:05'),
(216, '180100022', 'FATONI', NULL, 'fatoniad4661ep@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0131', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '180300062', 'BAGUS AJIE WICAKSONO', '1', 'baguswicaksono.ajie@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-02', 'JT-0047', 'DV_0002', 'CG_0022', 'DP-0008', 'SDP-0022', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-17 19:44:18'),
(218, '180500114', 'EUIS DIAN ANGGRAENI', NULL, 'diandie20@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '180500115', 'RIDWAN NUGRAHA', NULL, 'iniridwan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0089', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '180500116', 'MUHAMAD ALFIAN', '1', 'alfianneivi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-08', 'JT-0029', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:18:36'),
(221, '180600122', 'BERNADHETA RISMISARI HANDAYANI', NULL, 'chalierismisari8870@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0048', NULL, NULL, 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '180700142', 'SANITA', NULL, 'asanita100@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0079', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '180700143', 'AKHMAD YUNUS YULIANTO', NULL, 'yunusrasta.ay@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0131', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '190100054', 'TATA TAOFIK QUROHMAN', NULL, 'tatataofik77@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '190700187', 'MAHMUD FAUJI TANJUNG', NULL, 'mochi191191@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0040', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '200100017', 'TEGUH SEJATI', NULL, 'blinyob@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '200100031', 'WINDY ADRIANY KACARIBU', NULL, 'windykacaribu23@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0102', NULL, 'CG_0011', 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '200100042', 'MUSTAGHBIRIN', NULL, 'mustaghbirin@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0125', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '200200053', 'MUHAMAD MISBAH', NULL, 'muhamadmisbah96@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '200300076', 'MARIA KURNIATI GEDI RAYA', NULL, 'maria.kurniati04@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0069', NULL, 'CG_0011', 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '200500092', 'IRVAN HASAN', NULL, 'irvanhasan18@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0068', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '200700143', 'TENDI SOBARNANSYAH', NULL, 'sobarnansyah@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0064', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '200700144', 'MUHAMAD RIDWAN', NULL, 'muhamadridwan133@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0130', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '201200194', 'DENLEI DIYOROSSI', NULL, 'diyorossi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0009', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '210100004', 'SETYO DEWI UTARI', NULL, 'setyod@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-04-06', 'JT-0153', NULL, 'CG_0011', 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '210100024', 'SARI DIYAH PALUPY', NULL, 'saridpha@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0016', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '211200171', 'TOSHIHITO  ABE', NULL, 'abe@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0113', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '220100111', 'KUKUH GUMILANG', NULL, 'kukuh_gumilDP-0001@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0033', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '220100112', 'HENDY CAHYA SUWANDI', NULL, 'hendy.cahya18@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'K180700223', 'NATALIA SUMANTO SIHOMBING', NULL, 'natalie.magdalena@ymail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0071', NULL, 'CG_0011', 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'K190100004', 'DIANTO', NULL, 'diantoasgar@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'K190400185', 'BASUKI', NULL, 'masuki843@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'K190600252', 'AHMAD LUKMAN HATAMI', NULL, 'ahmadlkm24@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'K190800327', 'MUHAMMAD RIZQY FIRDAUS', NULL, 'm.rizqyfirdaus23@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0050', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'K190900331', 'RAKHA ADI PUTRA', NULL, 'adiputrarakha@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0086', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'K191000365', 'SAIDIN IMRON WIJAYA', NULL, 'saidinimronwijaya1213@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0135', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'K191100391', 'ANJAR SUDRAJAT', NULL, 'anjar.sudrajat378@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'K191100397', 'BIMA DWI ATMAJA', NULL, 'bimaatmaja699@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'K200200052', 'DANANG PRASETIYO', NULL, 'danangpras2105@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'K200300084', 'DANIEL ABRAHAM SINAMBELA', NULL, 'danielabraham0880@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'K200300085', 'NUR AHMAD BUKHORI AINUL YAQIN AL FAIZ', NULL, 'faizbukhori82@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0127', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'K200300088', 'ANGGA SAEPUL HAJAN', NULL, 'wawankurnia869@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'K200300089', 'DEDEN JAELANI', NULL, 'dedenjaelani95@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'K200400107', 'ILHAM COKRO BASKORO', NULL, 'ilhamcokrobaskoro@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'K200400108', 'ZAENUDIN', NULL, 'zaenudinzae86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'K200500146', 'DIKA LESMANA', NULL, 'dikalesmana1402@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0127', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'K200600145', 'DIAN HADIAN', NULL, 'dhadian08@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'K200600151', 'NUKMANUL ANWAR', NULL, 'nukman02pai@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'K200600153', 'TODO ARDO SINAGA', NULL, 'todoardosinaga@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'K200600174', 'DENI HIMAWAN SUTANTO', NULL, 'dhenny.hiimawan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'K200600176', 'RINO', NULL, 'rinoreva2@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'K200700207', 'ADE RAHMAN', NULL, 'aderahman690@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0109', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'K200700231', 'BUDI UTOYO', NULL, 'budi.utoyo29@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0151', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'K200800227', 'M. ALDI LA MUCHTAR', NULL, 'utiahafajar21@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0009', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'K200800232', 'ADIKA TRYPUTRANTO', NULL, 'adikatry74@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'K200800233', 'DEDE ISKANDAR', NULL, 'iskandardede400@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'K200800240', 'GUSTINA LASMAYANTI', NULL, 'gustinalasmayanti@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'K200800241', 'AJI APRIALDI', NULL, 'aji98sarah97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0064', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'K200900258', 'DIKI MAULANA', NULL, 'dikim2331@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'K200900259', 'MOHAMAD YUDI PERMANA', NULL, 'mohamadyudipermana97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'K200900262', 'AHMAD MUDDAI', NULL, 'ahmadmuddai.am@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'K201000279', 'EKKY MUHAMMAD RIZKULLAH', NULL, 'ekkymuhammad1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'K201000285', 'DAVIDS', NULL, 'davidssiburian25@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'K201000286', 'IQBAL SYAHRINDRA MUSTOPA', NULL, 'iqbalsyahrindra00@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'K201000287', 'DWI KARTIKA', '1', 'dwikartika165@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-05-02', 'JT-0101', 'DV_0002', 'CG_0022', 'DP-0008', 'SDP-0022', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-17 19:47:12'),
(402, 'K201000295', 'ANGGRI PRIWANDA', NULL, 'crossanggri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'K201000296', 'AHMAD KHAERUL FIKRI', NULL, 'ahmadkhaerulfikri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'K201000297', 'DENDI PRIMADI', NULL, 'dendiprimadi94@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'K201100303', 'AGUS WIDIYANTO', NULL, 'widiyantoagus0@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'K201100306', 'SARAH SANUBARI', NULL, 'sanubarisarah85@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'K201100308', 'MASTANI', NULL, 'mastani925@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'K201100309', 'MUHAMAD AKMAL AZIIZ', NULL, 'm.akmal11a@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'K201100311', 'ARI DESAR PAMUNGKAS', NULL, 'aridesar1995@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0028', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'K201200336', 'HERU TRI MARDIAN', NULL, 'heruezt3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0135', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'K210100001', 'ZAKARIA', NULL, 'zakariabrebes@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0127', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'K210100003', 'DINA OKTAVIA PUTRI', NULL, 'dinaoktaviaputri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0117', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'K210100026', 'GITA SYEMA DEWI', NULL, 'gitasyemad@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'K210200048', 'SETIA MAULANA', NULL, 'setiamaulana81@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'K210200049', 'ABI YOGA ASMARA', NULL, 'abiyogaasmara4@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'K210200050', 'HISAR DESMON SINAGA', NULL, 'hisardesmonsinaga@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'K210200054', 'AHMAD', NULL, 'ahmaddoang912@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'K210200062', 'DEDEN RUHDIANTO', NULL, 'dedenruhdianto07@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'K210300077', 'KHONSA', NULL, 'khonsa.sasa@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0139', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'K210300079', 'RUSTA RUSDIANTO', NULL, 'rustarusdianto295@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'K210300080', 'ABDUL KHARIS', NULL, 'abdulkharis994@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'K210300086', 'ENJAY ZARKASIH', NULL, 'enjayzarkasih100@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'K210300098', 'LUKMAN NULHAKIM', NULL, 'lukmann275@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'K210300099', 'SAUD SIHOMBING', NULL, 'joshuasniky24@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'K210400104', 'ODI NANDANG SOMANTRI', NULL, 'odinandang43@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'K210400107', 'ALI RAMDANI', NULL, 'aramdani312@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'K210400108', 'MUHAMAD ADE SUJAI', NULL, 'muhamadadesujai12@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'K210500153', 'DIKA SUHARTA', NULL, 'dika.suharta@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'K210500154', 'IMAN SANDI', NULL, 'imansandi97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'K210500161', 'ANGGI IRWANSYAH', NULL, 'anggiirwansyah86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'K210600175', 'UBAIDILAH ALI MURTADHO', NULL, 'ubaidilahalimurtadho@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0084', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'K210600177', 'TAUFIK HIDAYAT TUMARUF', NULL, 'taufikhidayatumaruf92@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'K210700205', 'DANI ENDAR MULYANA', NULL, 'daniendar12@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'K210700211', 'MUHAMMAD ALFIN BASYAR', NULL, 'alvinbasyar1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'K210900224', 'IRFAN SUHEGAR', NULL, 'irfansiregar220518@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', '', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'K210900227', 'YOSA NIZAR FERNANTA', NULL, 'yosanizar06@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'K211000233', 'ANDI MUNTAHA', NULL, 'andimuntaha26@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'K211100249', 'ALI DAVIT', NULL, 'alidavit85@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0049', NULL, NULL, 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'K211200252', 'NASRULLOH', NULL, 'nasrulloh580@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0099', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'K220200009', 'DEDE HERIYANTO', NULL, 'deheriyanto01@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'K220200017', 'MULYANA', NULL, 'akewcsipittea@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'K220200018', 'HENDI', NULL, 'hendisuhendix@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'K220200025', 'ROBI SUPRIADI', NULL, 'robisupriadi185@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'K220200026', 'ASEP JAMALUDIN', NULL, 'asepjamaludin454@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'K220300040', 'ASEP SETIAWAN', NULL, 'im.asepsetiawan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '0000-00-00', 'JT-0086', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, '123', 'Admin', NULL, 'admin@gmail.com', NULL, 'admin', '1970-01-01', 'JT-0049', 'DV_0002', 'CG_0011', 'DP-0008', NULL, 'LV-0009', NULL, NULL, NULL, '2022-04-21 21:16:17', '2022-04-21 21:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `white_tag`
--

CREATE TABLE `white_tag` (
  `id_white_tag` varchar(15) NOT NULL,
  `id_directory` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `start` tinyint(2) NOT NULL,
  `actual` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `white_tag`
--

INSERT INTO `white_tag` (`id_white_tag`, `id_directory`, `id_user`, `start`, `actual`) VALUES
('7eeXy1649145212', 134, 1, 0, 1),
('asePq1650418519', 204, 361, 1, 4),
('II1oM1650338788', 198, 2, 2, 3),
('p2co41649145212', 152, 1, 0, 1),
('SWrxk1649384942', 200, 1, 0, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cg`
--
ALTER TABLE `cg`
  ADD PRIMARY KEY (`id_cg`),
  ADD KEY `id_department` (`id_department`);

--
-- Indexes for table `competencies_directory`
--
ALTER TABLE `competencies_directory`
  ADD PRIMARY KEY (`id_directory`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id_curriculum`);

--
-- Indexes for table `curriculum_to_job`
--
ALTER TABLE `curriculum_to_job`
  ADD PRIMARY KEY (`id_ctb`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id_department`),
  ADD KEY `id_divisi` (`id_divisi`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id_grade`);

--
-- Indexes for table `job_title`
--
ALTER TABLE `job_title`
  ADD PRIMARY KEY (`id_job_title`),
  ADD KEY `id_department` (`id_department`);

--
-- Indexes for table `job_title_users`
--
ALTER TABLE `job_title_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekap_mapping`
--
ALTER TABLE `rekap_mapping`
  ADD PRIMARY KEY (`id_rekap`);

--
-- Indexes for table `skill_category`
--
ALTER TABLE `skill_category`
  ADD PRIMARY KEY (`id_skill_category`);

--
-- Indexes for table `sub_department`
--
ALTER TABLE `sub_department`
  ADD PRIMARY KEY (`id_subdepartment`),
  ADD KEY `id_department` (`id_department`);

--
-- Indexes for table `taging_reason`
--
ALTER TABLE `taging_reason`
  ADD PRIMARY KEY (`id_taging_reason`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `white_tag`
--
ALTER TABLE `white_tag`
  ADD PRIMARY KEY (`id_white_tag`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competencies_directory`
--
ALTER TABLE `competencies_directory`
  MODIFY `id_directory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id_curriculum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `curriculum_to_job`
--
ALTER TABLE `curriculum_to_job`
  MODIFY `id_ctb` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_title_users`
--
ALTER TABLE `job_title_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rekap_mapping`
--
ALTER TABLE `rekap_mapping`
  MODIFY `id_rekap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skill_category`
--
ALTER TABLE `skill_category`
  MODIFY `id_skill_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taging_reason`
--
ALTER TABLE `taging_reason`
  MODIFY `id_taging_reason` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
