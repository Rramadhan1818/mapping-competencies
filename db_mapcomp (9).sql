-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 03:15 AM
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
('CG_0018', 'RM-MAJOR', 'DP-0006', '2022-03-07 04:32:41', '2022-05-22 12:11:50'),
('CG_0019', 'Matrix', 'DP-0009', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0020', 'Rising Star', 'DP-0002', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0021', 'TPM', 'DP-0002', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0022', 'Effervescent', 'DP-0008', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0023', 'Office PRD', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0024', 'RM-MINOR', 'DP-0006', '2022-03-07 04:32:41', '2022-05-22 11:36:34'),
('CG_0025', 'PM', 'DP-0006', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0026', 'E-Max', 'DP-0004', '2022-03-07 04:32:41', '2022-03-07 11:32:41'),
('CG_0027', 'FI', 'DP-0002', '2022-05-22 21:28:17', '2022-05-23 04:28:17');

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
(252, 1, 'JT-0049', '0', 0),
(253, 1, 'JT-0049', '1', 2),
(254, 1, 'JT-0049', '2', 2),
(255, 1, 'JT-0049', '3', 3),
(256, 1, 'JT-0049', '4', 4),
(257, 1, 'JT-0049', '5', 5),
(258, 1, 'JT-0069', '0', 0),
(259, 1, 'JT-0069', '1', 3),
(260, 1, 'JT-0069', '2', 3),
(261, 1, 'JT-0069', '3', 3),
(262, 1, 'JT-0069', '4', 4),
(263, 1, 'JT-0069', '5', 4),
(264, 1, 'JT-0102', '0', 0),
(265, 1, 'JT-0102', '1', 1),
(266, 1, 'JT-0102', '2', 2),
(267, 1, 'JT-0102', '3', 3),
(268, 1, 'JT-0102', '4', 3),
(269, 1, 'JT-0102', '5', 4),
(270, 50, 'JT-0069', '0', 0),
(271, 50, 'JT-0069', '1', 2),
(272, 50, 'JT-0069', '2', 3),
(273, 50, 'JT-0069', '3', 3),
(274, 50, 'JT-0069', '4', 4),
(275, 50, 'JT-0069', '5', 5),
(276, 50, 'JT-0102', '0', 1),
(277, 50, 'JT-0102', '1', 3),
(278, 50, 'JT-0102', '2', 3),
(279, 50, 'JT-0102', '3', 4),
(280, 50, 'JT-0102', '4', 4),
(281, 50, 'JT-0102', '5', 5),
(282, 161, 'JT-0049', '0', 2),
(283, 161, 'JT-0049', '1', 2),
(284, 161, 'JT-0049', '2', 3),
(285, 161, 'JT-0049', '3', 4),
(286, 161, 'JT-0049', '4', 4),
(287, 161, 'JT-0049', '5', 5),
(288, 161, 'JT-0069', '0', 3),
(289, 161, 'JT-0069', '1', 4),
(290, 161, 'JT-0069', '2', 4),
(291, 161, 'JT-0069', '3', 5),
(292, 161, 'JT-0069', '4', 5),
(293, 161, 'JT-0069', '5', 5),
(294, 161, 'JT-0102', '0', 2),
(295, 161, 'JT-0102', '1', 3),
(296, 161, 'JT-0102', '2', 3),
(297, 161, 'JT-0102', '3', 4),
(298, 161, 'JT-0102', '4', 4),
(299, 161, 'JT-0102', '5', 5),
(300, 161, 'JT-0153', '0', 1),
(301, 161, 'JT-0153', '1', 2),
(302, 161, 'JT-0153', '2', 3),
(303, 161, 'JT-0153', '3', 4),
(304, 161, 'JT-0153', '4', 5),
(305, 161, 'JT-0153', '5', 5),
(306, 15, 'JT-0049', '0', 1),
(307, 15, 'JT-0049', '1', 2),
(308, 15, 'JT-0049', '2', 3),
(309, 15, 'JT-0049', '3', 4),
(310, 15, 'JT-0049', '4', 4),
(311, 15, 'JT-0049', '5', 5),
(312, 15, 'JT-0069', '0', 1),
(313, 15, 'JT-0069', '1', 2),
(314, 15, 'JT-0069', '2', 4),
(315, 15, 'JT-0069', '3', 4),
(316, 15, 'JT-0069', '4', 4),
(317, 15, 'JT-0069', '5', 5),
(318, 15, 'JT-0102', '0', 2),
(319, 15, 'JT-0102', '1', 3),
(320, 15, 'JT-0102', '2', 3),
(321, 15, 'JT-0102', '3', 4),
(322, 15, 'JT-0102', '4', 4),
(323, 15, 'JT-0102', '5', 5),
(324, 15, 'JT-0153', '0', 2),
(325, 15, 'JT-0153', '1', 3),
(326, 15, 'JT-0153', '2', 3),
(327, 15, 'JT-0153', '3', 3),
(328, 15, 'JT-0153', '4', 4),
(329, 15, 'JT-0153', '5', 5),
(330, 4, 'JT-0049', '0', 1),
(331, 4, 'JT-0049', '1', 2),
(332, 4, 'JT-0049', '2', 3),
(333, 4, 'JT-0049', '3', 3),
(334, 4, 'JT-0049', '4', 5),
(335, 4, 'JT-0049', '5', 5),
(336, 16, 'JT-0049', '0', 1),
(337, 16, 'JT-0049', '1', 2),
(338, 16, 'JT-0049', '2', 3),
(339, 16, 'JT-0049', '3', 4),
(340, 16, 'JT-0049', '4', 5),
(341, 16, 'JT-0049', '5', 5),
(342, 16, 'JT-0102', '0', 2),
(343, 16, 'JT-0102', '1', 3),
(344, 16, 'JT-0102', '2', 3),
(345, 16, 'JT-0102', '3', 4),
(346, 16, 'JT-0102', '4', 5),
(347, 16, 'JT-0102', '5', 5),
(348, 16, 'JT-0153', '0', 2),
(349, 16, 'JT-0153', '1', 3),
(350, 16, 'JT-0153', '2', 3),
(351, 16, 'JT-0153', '3', 4),
(352, 16, 'JT-0153', '4', 5),
(353, 16, 'JT-0153', '5', 5),
(354, 16, 'JT-0069', '0', 2),
(355, 16, 'JT-0069', '1', 3),
(356, 16, 'JT-0069', '2', 3),
(357, 16, 'JT-0069', '3', 4),
(358, 16, 'JT-0069', '4', 5),
(359, 16, 'JT-0069', '5', 5),
(360, 196, 'JT-0069', '0', 1),
(361, 196, 'JT-0069', '1', 2),
(362, 196, 'JT-0069', '2', 3),
(363, 196, 'JT-0069', '3', 3),
(364, 196, 'JT-0069', '4', 4),
(365, 196, 'JT-0069', '5', 5),
(366, 196, 'JT-0102', '0', 2),
(367, 196, 'JT-0102', '1', 3),
(368, 196, 'JT-0102', '2', 3),
(369, 196, 'JT-0102', '3', 3),
(370, 196, 'JT-0102', '4', 4),
(371, 196, 'JT-0102', '5', 5),
(372, 197, 'JT-0102', '0', 1),
(373, 197, 'JT-0102', '1', 2),
(374, 197, 'JT-0102', '2', 3),
(375, 197, 'JT-0102', '3', 3),
(376, 197, 'JT-0102', '4', 4),
(377, 197, 'JT-0102', '5', 5),
(378, 197, 'JT-0069', '0', 1),
(379, 197, 'JT-0069', '1', 2),
(380, 197, 'JT-0069', '2', 3),
(381, 197, 'JT-0069', '3', 4),
(382, 197, 'JT-0069', '4', 5),
(383, 197, 'JT-0069', '5', 5),
(384, 198, 'JT-0069', '0', 1),
(385, 198, 'JT-0069', '1', 2),
(386, 198, 'JT-0069', '2', 3),
(387, 198, 'JT-0069', '3', 3),
(388, 198, 'JT-0069', '4', 4),
(389, 198, 'JT-0069', '5', 5),
(390, 198, 'JT-0102', '0', 1),
(391, 198, 'JT-0102', '1', 2),
(392, 198, 'JT-0102', '2', 3),
(393, 198, 'JT-0102', '3', 3),
(394, 198, 'JT-0102', '4', 4),
(395, 198, 'JT-0102', '5', 5),
(396, 199, 'JT-0049', '0', 1),
(397, 199, 'JT-0049', '1', 2),
(398, 199, 'JT-0049', '2', 3),
(399, 199, 'JT-0049', '3', 4),
(400, 199, 'JT-0049', '4', 5),
(401, 199, 'JT-0049', '5', 5),
(402, 199, 'JT-0069', '0', 2),
(403, 199, 'JT-0069', '1', 2),
(404, 199, 'JT-0069', '2', 3),
(405, 199, 'JT-0069', '3', 4),
(406, 199, 'JT-0069', '4', 5),
(407, 199, 'JT-0069', '5', 5),
(408, 199, 'JT-0102', '0', 2),
(409, 199, 'JT-0102', '1', 2),
(410, 199, 'JT-0102', '2', 3),
(411, 199, 'JT-0102', '3', 4),
(412, 199, 'JT-0102', '4', 5),
(413, 199, 'JT-0102', '5', 5),
(414, 199, 'JT-0153', '0', 1),
(415, 199, 'JT-0153', '1', 3),
(416, 199, 'JT-0153', '2', 4),
(417, 199, 'JT-0153', '3', 5),
(418, 199, 'JT-0153', '4', 5),
(419, 199, 'JT-0153', '5', 5),
(420, 200, 'JT-0102', '0', 1),
(421, 200, 'JT-0102', '1', 2),
(422, 200, 'JT-0102', '2', 3),
(423, 200, 'JT-0102', '3', 3),
(424, 200, 'JT-0102', '4', 4),
(425, 200, 'JT-0102', '5', 5),
(426, 200, 'JT-0069', '0', 1),
(427, 200, 'JT-0069', '1', 2),
(428, 200, 'JT-0069', '2', 3),
(429, 200, 'JT-0069', '3', 3),
(430, 200, 'JT-0069', '4', 4),
(431, 200, 'JT-0069', '5', 5);

-- --------------------------------------------------------

--
-- Table structure for table `competencie_groups`
--

CREATE TABLE `competencie_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_skill_category` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competencie_groups`
--

INSERT INTO `competencie_groups` (`id`, `id_skill_category`, `name`, `created_at`, `updated_at`) VALUES
(4, 2, 'General MNF', '2022-05-22 08:30:09', '2022-05-22 08:30:09'),
(5, 2, 'General Corporate', '2022-05-22 08:30:26', '2022-05-22 08:30:26'),
(6, 2, 'TPM', '2022-05-22 08:30:38', '2022-05-22 08:30:38'),
(7, 2, 'Focus Improvement', '2022-05-22 08:30:54', '2022-05-22 08:30:54'),
(8, 1, 'Technical', '2022-05-22 08:31:10', '2022-05-22 08:31:10'),
(9, 1, 'Basic Maintenance', '2022-05-22 08:31:24', '2022-05-22 08:31:24');

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
(1, '1/KMI/GEN', 2, 'Company Strategy', 'B', '', '4', '\"Berisi penjelasan mengenai Sejarah Berdiri Perusahaan', '', '2022-05-30 01:44:15', '2022-05-29 18:44:15'),
(2, '2/KMI/GEN', 2, 'Orientation Department', 'B', '', '4', 'Berisi penjelasan mengenai tugas dan tanggung jawab dari masing-masing departemen dan struktur organisasi perusahaan', '', '2022-05-30 01:46:22', '2022-05-29 18:46:22'),
(3, '3/KMI/GEN', 2, 'KALBE Business Ethic', 'B', '', '4', 'Berisi tentang tata kelola etika bisnis di KALBE Group', '', '2022-05-30 01:46:48', '2022-05-29 18:46:48'),
(4, '4/KMI/GEN', 2, 'Company Regulation', 'B', '', '4', '\"Berisi penjelasan mengenai peraturan perusahaan yang berlaku yaitu Perjanjian Kerja Bersama yang sudah disepakati oleh Serikat Pekerja dan Manajemen mengenai kewajiban', '', '2022-05-30 01:47:17', '2022-05-29 18:47:17'),
(5, '5/KMI/GEN', 2, 'Others Information', 'B', '', '4', '\"Berisi tentang informasi tambahan mengenai BPJS Ketenagakerjaan', '', '2022-05-30 23:07:19', '2022-05-30 16:07:19'),
(6, '6/KMI/GEN', 2, 'HRIS (Human Resources Information System)', 'B', '', '4', '\"Berisi tentang tata cara melakukan update informasi data pribadi', '', '2022-05-30 23:07:52', '2022-05-30 16:07:52'),
(7, '7/KMI/GEN', 2, 'GMP (Good Manufacturing Practices)', 'B', '', '4', '\"Berisi penjelasan mengenai tujuan penerapan dan prinsip GMP', '', '2022-05-30 23:08:16', '2022-05-30 16:08:16'),
(8, '8/KMI/GEN', 2, '5P (Pemilahan, Penataan, Pembersihan, Penstandarisasian, Pembiasaan)', 'B', '', '4', 'Berisi penjelasan mengenai tujuan penerapan dan prinsip 5P dan kaitannya dengan GMP, perilaku 5P, 5P culture di perusahaan (target, audit, dll)', '', '2022-05-30 23:08:36', '2022-05-30 16:08:36'),
(9, '9/KMI/GEN', 2, 'Microbiology', 'B', '', '4', '\"Berisi penjelasan mengenai berbagai jenis mikroba yang dapat berdampak pada food safety', '', '2022-05-30 23:08:52', '2022-05-30 16:08:52'),
(10, '10/KMI/GEN', 2, 'ISO & FSSC (International Organization for Standardization & Food Safety System Certification)', 'B', '', '4', '\"Berisi penjelasan mengenai kebijakan Management terkait dengan sistem ISO & FSSC yang diterapkan di perusahaan', '', '2022-05-30 23:09:24', '2022-05-30 16:09:24'),
(11, '11/KMI/GEN', 2, 'SJH (Sistem Jaminan Halal / Halal Assurance System)', 'B', '', '4', '\"Berisi penjelasan mengenai kebijakan Management terkait dengan sistem SJH yang diterapkan di perusahaan', '', '2022-05-30 22:59:53', '2022-05-30 15:59:53'),
(12, '12/KMI/GEN', 2, 'TPM (Total Productive Management)', 'B', '', '4', '\"Berisi penjelasan mengenai tujuan penerapan TPM', '', '2022-05-31 01:26:42', '2022-05-31 01:26:42'),
(13, '13/KMI/GEN', 2, 'SMK3 (Sistem Manajemen Keselamatan & Kesehatan Kerja)', 'B', '', '4', '\"Berisi penjelasan mengenai kebijakan Management terkait dengan sistem SMK3 yang diterapkan di perusahaan', '', '2022-05-31 01:26:45', '2022-05-31 01:26:45'),
(14, '14/KMI/GEN', 2, 'I2C (Innovation & Improvement Culture)', 'B', '', '4', '\"Berisi penjelasan mengenai CONIM culture', '', '2022-05-31 01:26:48', '2022-05-31 01:26:48'),
(15, '15/KMI/GEN', 2, 'Suggestion System', 'B', '', '7', '- Penjelasan pentingnya SS - Contoh2 SS - Membuat laporan SS\"', '', '2022-05-29 21:58:43', '2022-05-29 14:58:43'),
(16, '16/KMI/GEN', 2, 'Quality Control Circle - DELTA', 'B', '', '7', '\"- Materi delapan langkah-tujuh alat - Contoh2 QCC - Menyusun makalah QCC\"', '', '2022-05-29 21:59:49', '2022-05-29 14:59:49'),
(17, '17/KMI/GEN', 2, 'Practical Problem Solving', 'I', '', '7', '\"- Materi practical problem solving - Contoh2 PPS - Menyusun makalah PPS\"', '', '2022-05-29 22:02:13', '2022-05-29 15:02:13'),
(18, '18/KMI/GEN', 2, 'New 7 Management Tools', 'I', '', '7', '\"- Materi new 7 Management Tools - Contoh penerapan new 7 management tools\"', '', '2022-05-29 22:03:06', '2022-05-29 15:03:06'),
(19, '19/KMI/GEN', 2, 'Konsep Smart Improvement', 'I', '', '7', '\"- Materi Smart Improvement - Contoh-contoh smart improvement\"', '', '2022-05-29 22:03:36', '2022-05-29 15:03:36'),
(20, '20/KMI/GEN', 2, 'Karakuri Kaizen', 'I', '', '7', '\"- Materi Karakuri Kaizen - Contoh-contoh Karakuri Kaizen\"', '', '2022-05-29 22:06:04', '2022-05-29 15:06:04'),
(21, '21/KMI/GEN', 2, 'Konsep MUDA, MURI, MURA', 'A', '', '7', '\'- Konsep MUDA, MURI, MURA - Workshop bentuk loss di area kerja', '', '2022-05-29 22:07:18', '2022-05-29 15:07:18'),
(22, '22/KMI/GEN', 2, 'PM Analysis', 'I', '', '7', '\"- Materi PM Analysis - Contoh penerapan PM Analysis\"', '', '2022-05-29 22:07:52', '2022-05-29 15:07:52'),
(23, '23/KMI/GEN', 2, 'Red Zone Analysis', 'A', '', '7', '\"- Materi Red Zone Analaysis - Contoh2 RZA - Menyusun makalah RZA\"', '', '2022-05-29 22:08:31', '2022-05-29 15:08:31'),
(24, '24/KMI/GEN', 2, 'SMED', 'A', '', '7', '\"- Materi Karakuri Kaizen - Contoh-contoh Karakuri Kaizen\"', '', '2022-05-29 22:09:41', '2022-05-29 15:09:41'),
(25, '25/KMI/GEN', 2, 'Penjurian QCC', 'I', '', '7', '\"- Menjadi juri yang baik - Form penilaian QCC\"', '', '2022-05-29 22:10:56', '2022-05-29 15:10:56'),
(26, '26/KMI/GEN', 2, 'Penjurian PPS', 'I', '', '7', '\"- Menjadi juri yang baik - Form penilaian PPS\"', '', '2022-05-29 22:11:35', '2022-05-29 15:11:35'),
(27, '27/KMI/GEN', 2, 'Improvement Web registration', 'B', '', '7', '\"- i2c Web - Menarik data dari web - Problem solving web\"', '', '2022-05-29 22:12:28', '2022-05-29 15:12:28'),
(28, '28/KMI/GEN', 2, '\"Evaluasi Improvement : - Pencapaian - Analisa - Saving Cost - Level Improvement\"', 'B', '', '7', '\"Evaluasi Improvement : - Pencapaian - Analisa - Saving Cost - Level Improvement\"', '', '2022-05-29 22:13:32', '2022-05-29 15:13:32'),
(29, '29/KMI/FUNC', 1, 'Organizational Design', 'B', '', '8', 'Berisi penjelasan mengenai Desain Organisasi', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(30, '30/KMI/FUNC', 1, 'Job analysis', 'I', '', '8', 'Berisi penjelasan mengenai analisa pekerjaan per jabatan', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(31, '31/KMI/FUNC', 1, 'Job evaluation', 'I', '', '8', 'Berisi penjelasan mengenai evalausi pekerjaan', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(32, '32/KMI/FUNC', 1, 'Competency Based Management', 'I', '', '8', 'Berisi penjelasan mengenai Kompetensi', '', '2022-05-29 22:18:29', '2022-05-29 15:18:29'),
(33, '33/KMI/FUNC', 1, 'Change Management', 'A', '', '8', 'Berisi penjelasan mengenai perubahan manajemen', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(34, '34/KMI/FUNC', 1, 'Employee Satisfaction Index', 'B', '', '8', 'Berisi mengenai cara melakukan survey untuk kepuasan karyawan terhadap perusahaan', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(35, '35/KMI/FUNC', 1, 'Customer Satisfaction Index', 'B', '', '8', 'Berisi mengenai cara melakukan survey untuk kepuasan karyawan terhadap departemen', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(36, '36/KMI/FUNC', 1, 'Proses Seleksi Karyawan Non Tetap', 'B', '', '8', 'Berisi penjelasan mengenai proses seleksi karyawan non-tetap', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(37, '37/KMI/FUNC', 1, 'Basic Interviewing Skill', 'B', '', '8', 'Berisi penjelasan mengenai Basic Interviewing Skill', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(38, '38/KMI/FUNC', 1, 'Input Data Karyawan ke HRIS (Pro Int)', 'B', '', '8', 'Berisi penjelasan mengenai Input Data Karyawan ke HRIS (Pro Int)', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(39, '39/KMI/FUNC', 1, 'Perpanjangan Kontrak Karyawan', 'B', '', '8', 'Berisi penjelasan mengenai Perpanjangan Kontrak Karyawan', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(40, '40/KMI/FUNC', 1, 'Input Data Perpanjangan Kontrak Kary ke HRIS (Pro Int)', 'B', '', '8', 'Berisi penjelasan mengenai Input Data Perpanjangan Kontrak Kary ke HRIS (Pro Int)', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(41, '41/KMI/FUNC', 1, 'Prosedur Karyawan Habis Kontrak', 'B', '', '8', 'Berisi penjelasan mengenai Prosedur Karyawan Habis Kontrak', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(42, '42/KMI/FUNC', 1, 'Proses Seleksi Karyawan Tetap', 'B', '', '8', 'Berisi penjelasan mengenai Proses Seleksi Karyawan Tetap', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(43, '43/KMI/FUNC', 1, 'Prosedur Penerimaan Karyawan Magang/PKL', 'B', '', '8', 'Berisi penjelasan mengenai Prosedur Penerimaan Karyawan Magang/PKL', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(44, '44/KMI/FUNC', 1, 'Targeted Selection Interview (Competency Based Interview )', 'I', '', '8', 'Berisi penjelasan mengenai Targeted Selection Interview (Competency Based Interview )', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(45, '45/KMI/FUNC', 1, 'HRIS (Pro Int) Modul Recruitment', 'I', '', '8', 'Berisi penjelasan mengenai HRIS (Pro Int) Modul Recruitment', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(46, '46/KMI/FUNC', 1, 'Recruitment Report', 'I', '', '8', 'Berisi penjelasan mengenai Recruitment Report', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(47, '47/KMI/FUNC', 1, 'Prosedur Evaluasi Masa Percobaan/Pelatihan', 'I', '', '8', 'Berisi penjelasan mengenai Prosedur Evaluasi Masa Percobaan/Pelatihan', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(48, '48/KMI/FUNC', 1, 'Corporate Culture', 'I', '', '8', 'Berisi penjelasan mengenai Corporate Culture', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(49, '49/KMI/FUNC', 1, 'Man Power Planning', 'A', '', '8', 'Berisi penjelasan mengenai Man Power Planning', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(50, '50/KMI/FUNC', 1, 'Penawaran Gaji', 'A', '', '8', 'Berisi penjelasan mengenai Penawaran Gaji', '', '2022-05-29 12:48:58', '2022-05-29 05:48:58'),
(89, '39/KMI/FUNC', 1, 'Perpanjangan Kontrak Karyawan', 'B', '', '8', 'Berisi penjelasan mengenai Perpanjangan Kontrak Karyawan', '', '2022-05-30 03:02:02', '2022-05-30 03:02:02'),
(103, '53/KMI/FUNC', 1, 'Organize training', 'B', '', '8', 'Berisi penjelasan mengenai Organize training', '', '2022-05-31 01:22:50', '2022-05-31 01:22:50'),
(104, '54/KMI/FUNC', 1, 'Training for New Employee (NEOP)', 'B', '', '8', 'Berisi penjelasan mengenai Training for New Employee (NEOP)', '', '2022-05-31 01:22:53', '2022-05-31 01:22:53'),
(105, '55/KMI/FUNC', 1, 'HRIS (Pro Int) Modul Training', 'I', '', '8', 'Berisi penjelasan mengenai HRIS (Pro Int) Modul Training', '', '2022-05-31 01:22:55', '2022-05-31 01:22:55'),
(106, '56/KMI/FUNC', 1, 'Kemampuan sebagai  trainer (TFT)', 'I', '', '8', 'Berisi penjelasan mengenai Kemampuan sebagai  trainer (TFT)', '', '2022-05-31 01:22:58', '2022-05-31 01:22:58'),
(107, '57/KMI/FUNC', 2, 'Training Evaluation', 'I', '', '5', 'Berisi penjelasan mengenai Training Evaluation', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(108, '58/KMI/FUNC', 2, 'Membuat Skill Matriks', 'I', '', '5', 'Berisi penjelasan mengenai Membuat Skill Matriks', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(109, '59/KMI/FUNC', 2, 'Training Report', 'I', '', '5', 'Berisi penjelasan mengenai Training Report', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(110, '60/KMI/FUNC', 2, 'Analisa Kebutuhan Pelatihan', 'A', '', '5', 'Berisi penjelasan mengenai Analisa Kebutuhan Pelatihan', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(111, '61/KMI/FUNC', 2, 'Follow up Training Effectiveness', 'A', '', '5', 'Berisi penjelasan mengenai Follow up Training Effectiveness', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(112, '62/KMI/FUNC', 2, 'Membuat Training Matrix (Competency vs Trn )  ', 'A', '', '5', 'Berisi penjelasan mengenai Membuat Training Matrix (Competency vs Trn )  ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(113, '63/KMI/FUNC', 2, 'Prosedur Mutasi Internal', 'B', '', '5', 'Berisi penjelasan mengenai Prosedur Mutasi Internal', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(114, '64/KMI/FUNC', 2, 'Survey 3 Sun Credo', 'B', '', '5', 'Berisi penjelasan mengenai Survey 3 Sun Credo', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(115, '65/KMI/FUNC', 2, 'Prosedur Promosi/Demosi', 'I', '', '5', 'Berisi penjelasan mengenai Prosedur Promosi/Demosi', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(116, '66/KMI/FUNC', 2, 'Prosedur People Review', 'I', '', '5', 'Berisi penjelasan mengenai Prosedur People Review', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(117, '67/KMI/FUNC', 2, 'Prosedur Appraisal', 'I', '', '5', 'Berisi penjelasan mengenai Prosedur Appraisal', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(118, '68/KMI/FUNC', 2, 'HRIS (Pro Int) Modul Performance Management', 'I', '', '5', 'Berisi penjelasan mengenai HRIS (Pro Int) Modul Performance Management', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(119, '69/KMI/FUNC', 2, 'Prosedur Mutasi antar Perusahaan', 'A', '', '5', 'Berisi penjelasan mengenai Prosedur Mutasi antar Perusahaan', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(120, '70/KMI/FUNC', 2, 'Performance Management', 'A', '', '5', 'Berisi penjelasan mengenai Performance Management', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(121, '71/KMI/FUNC', 2, 'Membuat Individual Development Plan (IDP) ', 'A', '', '5', 'Berisi penjelasan mengenai Membuat Individual Development Plan (IDP) ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(122, '72/KMI/FUNC', 2, 'Membuat Individual Career Plan (ICP)', 'A', '', '5', 'Berisi penjelasan mengenai Membuat Individual Career Plan (ICP)', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(123, '73/KMI/FUNC', 2, 'Membuat Replacement Table Chart (RTC)', 'A', '', '5', 'Berisi penjelasan mengenai Membuat Replacement Table Chart (RTC)', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(124, '74/KMI/FUNC', 2, 'Prosedur Termination Karyawan Non Tetap', 'B', '', '5', 'Berisi penjelasan mengenai Prosedur Termination Karyawan Non Tetap', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(125, '75/KMI/FUNC', 2, 'Prosedur Termination Karyawan Tetap', 'B', '', '5', 'Berisi penjelasan mengenai Prosedur Termination Karyawan Tetap', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(126, '76/KMI/FUNC', 2, 'HRIS Modul Termination', 'B', '', '5', 'Berisi penjelasan mengenai HRIS Modul Termination', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(127, '77/KMI/FUNC', 2, 'Exit Interview', 'B', '', '5', 'Berisi penjelasan mengenai Exit Interview', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(128, '78/KMI/FUNC', 2, 'Manage termination', 'I', '', '5', 'Berisi penjelasan mengenai Manage termination', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(129, '79/KMI/FUNC', 2, 'Perhitungan Pesangon', 'I', '', '5', 'Berisi penjelasan mengenai Perhitungan Pesangon', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(130, '80/KMI/FUNC', 2, 'Prosedur Pengajuan Cuti', 'B', '', '5', 'Berisi penjelasan mengenai Prosedur Pengajuan Cuti', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(131, '81/KMI/FUNC', 2, 'Prosedur Claim Medical', 'B', '', '5', 'Berisi penjelasan mengenai Prosedur Claim Medical', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(132, '82/KMI/FUNC', 2, 'Perhitungan Perjalanan Dinas', 'B', '', '5', 'Berisi penjelasan mengenai Perhitungan Perjalanan Dinas', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(133, '83/KMI/FUNC', 2, 'Pemberian Sumbangan Duka & Nikah', 'B', '', '5', 'Berisi penjelasan mengenai Pemberian Sumbangan Duka & Nikah', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(134, '84/KMI/FUNC', 2, 'HRIS (Pro Int) Modul Personnel Management ', 'B', '', '5', 'Berisi penjelasan mengenai HRIS (Pro Int) Modul Personnel Management ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(135, '85/KMI/FUNC', 2, 'Absensi & masalah SPL', 'B', '', '5', 'Berisi penjelasan mengenai Absensi & masalah SPL', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(136, '86/KMI/FUNC', 2, 'Proses Gaji Karyawan tetap', 'B', '', '5', 'Berisi penjelasan mengenai Proses Gaji Karyawan tetap', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(137, '87/KMI/FUNC', 2, 'Proses Gaji Karyawan Outsource', 'B', '', '5', 'Berisi penjelasan mengenai Proses Gaji Karyawan Outsource', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(138, '88/KMI/FUNC', 2, 'Proses Gaji Expatriate', 'B', '', '5', 'Berisi penjelasan mengenai Proses Gaji Expatriate', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(139, '89/KMI/FUNC', 2, 'Klik BCA untuk gaji', 'B', '', '5', 'Berisi penjelasan mengenai Klik BCA untuk gaji', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(140, '90/KMI/FUNC', 2, 'Proses THR/TAT', 'B', '', '5', 'Berisi penjelasan mengenai Proses THR/TAT', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(141, '91/KMI/FUNC', 2, 'Proses Bonus', 'B', '', '5', 'Berisi penjelasan mengenai Proses Bonus', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(142, '92/KMI/FUNC', 2, 'Peraturan Jamsostek & Perhitungannya', 'B', '', '5', 'Berisi penjelasan mengenai Peraturan Jamsostek & Perhitungannya', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(143, '93/KMI/FUNC', 2, 'HRIS (Pro Int) Modul Time Management ', 'B', '', '5', 'Berisi penjelasan mengenai HRIS (Pro Int) Modul Time Management ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(144, '94/KMI/FUNC', 2, 'HRIS (Pro Int) Modul Payroll Management ', 'B', '', '5', 'Berisi penjelasan mengenai HRIS (Pro Int) Modul Payroll Management ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(145, '95/KMI/FUNC', 2, 'Prosedur Pengangkatan Karyawan', 'B', '', '5', 'Berisi penjelasan mengenai Prosedur Pengangkatan Karyawan', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(146, '96/KMI/FUNC', 2, 'Ketentuan Pajak Penghasilan (PPh21)', 'I', '', '5', 'Berisi penjelasan mengenai Ketentuan Pajak Penghasilan (PPh21)', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(147, '97/KMI/FUNC', 2, 'Dana Pensiun', 'I', '', '5', 'Berisi penjelasan mengenai Dana Pensiun', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(148, '98/KMI/FUNC', 2, 'Troubleshooting HRIS (Pro Int) Modul Time Management ', 'I', '', '5', 'Berisi penjelasan mengenai Troubleshooting HRIS (Pro Int) Modul Time Management ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(149, '99/KMI/FUNC', 2, 'Membuat salary report', 'I', '', '5', 'Berisi penjelasan mengenai Membuat salary report', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(150, '100/KMI/FUNC', 2, 'Troubleshooting HRIS (Pro Int) Modul Payroll Management ', 'A', '', '5', 'Berisi penjelasan mengenai Troubleshooting HRIS (Pro Int) Modul Payroll Management ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(151, '101/KMI/FUNC', 2, 'Analisa biaya ', 'A', '', '5', 'Berisi penjelasan mengenai Analisa biaya ', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(152, '102/KMI/FUNC', 2, 'Budgeting & Controlling', 'A', '', '5', 'Berisi penjelasan mengenai Budgeting & Controlling', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(153, '103/KMI/FUNC', 2, 'Compensation Management System', 'A', '', '5', 'Berisi penjelasan mengenai Compensation Management System', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(154, '104/KMI/FUNC', 2, 'Membuat Salary Structure', 'A', '', '5', 'Berisi penjelasan mengenai Membuat Salary Structure', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(155, '105/KMI/FUNC', 2, 'Pengetahuan Program komputer (Ms.Office)', 'B', '', '5', 'Berisi penjelasan mengenai Pengetahuan Program komputer (Ms.Office)', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(156, '106/KMI/FUNC', 2, 'Effective Communication Skill', 'I', '', '5', 'Berisi penjelasan mengenai Communication Skill', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(157, '107/KMI/FUNC', 2, 'Presentation Skill', 'I', '', '5', 'Berisi penjelasan mengenai Presentation Skill', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(158, '108/KMI/FUNC', 2, 'Negotiation Skill', 'I', '', '5', 'Berisi penjelasan mengenai Negotiation Skill', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(159, '109/KMI/FUNC', 2, 'Leadership', 'I', '', '5', 'Berisi penjelasan mengenai Leadership', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(160, '110/KMI/FUNC', 2, 'Bahasa Inggris', 'B', '', '5', 'Berisi penjelasan mengenai Bahasa Inggris', '', '2022-05-30 03:01:11', '2022-05-30 03:01:11'),
(161, '111/KMI/FUNC', 1, 'Penanganan Surat/Dokumen', 'B', '', '8', 'Berisi penjelasan mengenai Penanganan Surat/Dokumen', '', '2022-05-30 03:21:32', '2022-05-29 20:21:32'),
(162, '112/KMI/FUNC', 1, 'Membuat Calendar of Event', 'I', '', '8', 'Berisi penjelasan mengenai Membuat Calendar of Event', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(163, '113/KMI/FUNC', 1, 'Handle and Prepare Meeting', 'I', '', '8', 'Berisi penjelasan mengenai Handle and Prepare Meeting', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(164, '114/KMI/FUNC', 1, 'Prosedur Pengajuan Kas Bon', 'B', '', '8', 'Berisi penjelasan mengenai Prosedur Pengajuan Kas Bon', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(165, '115/KMI/FUNC', 1, 'Prosedur Permintaan Barang di HR', 'B', '', '8', 'Berisi penjelasan mengenai Prosedur Permintaan Barang di HR', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(166, '116/KMI/FUNC', 1, 'Pembuatan & Follow up NCR', 'I', '', '8', 'Berisi penjelasan mengenai Pembuatan & Follow up NCR', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(167, '117/KMI/FUNC', 1, 'Prosedur Peminjaman Kendaraan Operasional', 'B', '', '8', 'Berisi penjelasan mengenai Prosedur Peminjaman Kendaraan Operasional', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(168, '118/KMI/FUNC', 1, 'UU Ketenagakerjaan', 'I', '', '8', 'Berisi penjelasan mengenai UU Ketenagakerjaan', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(169, '119/KMI/FUNC', 1, 'IK Proses Seleksi Karyawan Tetap', 'B', '', '8', 'Berisi penjelasan mengenai IK Proses Seleksi Karyawan Tetap', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(170, '120/KMI/FUNC', 1, 'IK Proses Seleksi Karyawan Kontrak', 'B', '', '8', 'Berisi penjelasan mengenai IK Proses Seleksi Karyawan Kontrak', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(171, '121/KMI/FUNC', 1, 'IK Persiapan dan Penerimaan Karyawan Baru', 'B', '', '8', 'Berisi penjelasan mengenai IK Persiapan dan Penerimaan Karyawan Baru', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(172, '122/KMI/FUNC', 1, 'IK Penerimaan Karyawan Magang/PKL', 'B', '', '8', 'Berisi penjelasan mengenai IK Penerimaan Karyawan Magang/PKL', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(173, '123/KMI/FUNC', 1, 'IK Perpanjangan Kontrak Alih Daya', 'B', '', '8', 'Berisi penjelasan mengenai IK Perpanjangan Kontrak Alih Daya', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(174, '124/KMI/FUNC', 1, 'IK Pengisian Kinerja Karyawan', 'B', '', '8', 'Berisi penjelasan mengenai IK Pengisian Kinerja Karyawan', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(175, '125/KMI/FUNC', 1, 'IK Performance Management', 'B', '', '8', 'Berisi penjelasan mengenai IK Performance Management', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(176, '126/KMI/FUNC', 1, 'IK People Review', 'B', '', '8', 'Berisi penjelasan mengenai IK People Review', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(177, '127/KMI/FUNC', 1, 'IK Rencana Pengembangan Tahunan', 'B', '', '8', 'Berisi penjelasan mengenai IK Rencana Pengembangan Tahunan', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(178, '128/KMI/FUNC', 1, 'IK Pelatihan Eksternal', 'B', '', '8', 'Berisi penjelasan mengenai IK Pelatihan Eksternal', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(179, '129/KMI/FUNC', 1, 'IK Pelatihan Internal', 'B', '', '8', 'Berisi penjelasan mengenai IK Pelatihan Internal', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(180, '130/KMI/FUNC', 1, 'IK Pelatihan In-House', 'B', '', '8', 'Berisi penjelasan mengenai IK Pelatihan In-House', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(181, '131/KMI/FUNC', 2, '\"IK Pengangkatan Promosi', 'B', '', '8', 'DECS', '', '2022-05-31 01:26:23', '2022-05-31 01:26:23'),
(182, '132/KMI/FUNC', 1, 'IK Evaluasi Vendor Alih Daya', 'B', '', '8', 'Berisi penjelasan mengenai IK Evaluasi Vendor Alih Daya', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(183, '133/KMI/FUNC', 1, 'IK Proses Seleksi Karyawan Alih Daya', 'B', '', '8', 'Berisi penjelasan mengenai IK Proses Seleksi Karyawan Alih Daya', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(184, '134/KMI/FUNC', 1, 'IK Pengisian ESI dan CSI', 'B', '', '8', 'Berisi penjelasan mengenai IK Pengisian ESI dan CSI', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(185, '135/KMI/FUNC', 1, 'IK Perpanjangan Kontrak Karyawan PKWT', 'B', '', '8', 'Berisi penjelasan mengenai IK Perpanjangan Kontrak Karyawan PKWT', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(186, '136/KMI/FUNC', 1, 'IK Mapping Competency', 'B', '', '8', 'Berisi penjelasan mengenai IK Mapping Competency', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(187, '137/KMI/FUNC', 1, 'Pembuatan SPL', 'B', '', '8', 'Berisi penjelasan mengenai Pembuatan SPL', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(188, '138/KMI/FUNC', 1, 'Approve SPL', 'B', '', '8', 'Berisi penjelasan mengenai Approve SPL', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(189, '139/KMI/FUNC', 1, 'Pengajuan Cuti & Ijin Upah Dibayar', 'B', '', '8', 'Berisi penjelasan mengenai Pengajuan Cuti & Ijin Upah Dibayar', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(190, '140/KMI/FUNC', 1, 'Pengajuan Cuti Diluar Tanggungan (CDT)', 'B', '', '8', 'Berisi penjelasan mengenai Pengajuan Cuti Diluar Tanggungan (CDT)', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(191, '141/KMI/FUNC', 1, 'Approval Cuti - Ijin Upah Diayar - CDT', 'B', '', '8', 'Berisi penjelasan mengenai Approval Cuti - Ijin Upah Diayar - CDT', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(192, '142/KMI/FUNC', 1, 'ISO 45001:2018', 'I', '', '8', 'Berisi penjelasan mengenai perubahan ISO beserta dengan penambahan klausul terupdate', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(193, '143/KMI/FUNC', 1, 'Coaching Skill', 'B', '', '8', '\"Metode pengembangan karyawan dengan cara transfer ilmu', '', '2022-05-31 01:26:07', '2022-05-31 01:26:07'),
(194, '144/KMI/FUNC', 1, 'BPJS Ketenagakerjaan ', 'B', '', '8', 'Mengenai cara pelaporan kecelakaan kerja serta dokumen-dokumen yang dibutuhkan', '', '2022-05-29 14:03:51', '2022-05-29 14:03:51'),
(195, '011/KMI/FUNC', 1, 'Prosedur pengajuan training', 'B', '', '8', 'Berisi penjelasan mengenai Prosedur pengajuan training', '', '2022-05-31 01:23:03', '2022-05-31 01:23:03'),
(196, '057/KMI/GEN', 2, 'CUSTOMER ORIENTATION', 'B', '', '5', 'Menempatkan prioritas tinggi pada perspektif pelanggan internal atau eksternal saat mengambil keputusan maupun mengambil tindakan; menerapkan praktik layanan yang memenuhi kebutuhan pelanggan dan organisasi.', '', '2022-05-31 01:21:31', '2022-05-31 01:21:31'),
(198, '015/KMI/GEN', 2, 'CONTINUOUS LEARNING AND IMPROVEMENT', 'B', '', '5', 'Secara aktif menggunakan pengetahuan dan keterampilan yang baru diperoleh; memulai tindakan untuk memperbaiki kondisi dan proses yang ada; mengidentifikasi peluang perbaikan, menghasilkan ide, dan menerapkan solusi.', '', '2022-05-31 01:29:48', '2022-05-31 01:29:48'),
(199, '016/KMI/GEN', 2, 'TPM Basic', 'B', '', '6', 'Metode untuk meningkatkan produktivitas di area kerja dengan cara membuat proses tersebut lebih reliable dan lebih efisien energi', '', '2022-05-31 01:43:40', '2022-05-31 01:43:40'),
(200, '017/KMI/GEN', 2, 'TPM PM', 'I', '', '6', 'Jadwal tugas pemeliharaan berdasarkan tingkat kegagalan yang diprediksi dan / atau diukur.', '', '2022-05-31 02:17:43', '2022-05-31 02:17:43');

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
(31, 1, 'JT-0049'),
(32, 1, 'JT-0069'),
(33, 1, 'JT-0102'),
(34, 1, 'JT-0153'),
(35, 2, 'JT-0049'),
(36, 2, 'JT-0069'),
(37, 2, 'JT-0102'),
(38, 2, 'JT-0153'),
(39, 3, 'JT-0049'),
(40, 3, 'JT-0069'),
(41, 3, 'JT-0102'),
(42, 3, 'JT-0153'),
(43, 4, 'JT-0049'),
(44, 4, 'JT-0069'),
(45, 4, 'JT-0102'),
(46, 4, 'JT-0153'),
(47, 5, 'JT-0049'),
(48, 5, 'JT-0069'),
(49, 5, 'JT-0102'),
(50, 5, 'JT-0153'),
(51, 6, 'JT-0049'),
(52, 6, 'JT-0069'),
(53, 6, 'JT-0102'),
(54, 6, 'JT-0153'),
(55, 7, 'JT-0049'),
(56, 7, 'JT-0069'),
(57, 7, 'JT-0102'),
(58, 7, 'JT-0153'),
(59, 8, 'JT-0049'),
(60, 8, 'JT-0069'),
(61, 8, 'JT-0102'),
(62, 8, 'JT-0153'),
(63, 9, 'JT-0049'),
(64, 9, 'JT-0069'),
(65, 9, 'JT-0102'),
(66, 9, 'JT-0153'),
(67, 10, 'JT-0049'),
(68, 10, 'JT-0069'),
(69, 10, 'JT-0102'),
(70, 10, 'JT-0153'),
(71, 11, 'JT-0049'),
(72, 11, 'JT-0069'),
(73, 11, 'JT-0102'),
(74, 11, 'JT-0153'),
(75, 12, 'JT-0049'),
(76, 12, 'JT-0069'),
(77, 12, 'JT-0102'),
(78, 12, 'JT-0153'),
(79, 13, 'JT-0049'),
(80, 13, 'JT-0069'),
(81, 13, 'JT-0102'),
(82, 13, 'JT-0153'),
(83, 14, 'JT-0049'),
(84, 14, 'JT-0069'),
(85, 14, 'JT-0102'),
(86, 14, 'JT-0153'),
(87, 15, 'JT-0049'),
(88, 15, 'JT-0069'),
(89, 15, 'JT-0102'),
(90, 15, 'JT-0153'),
(91, 16, 'JT-0049'),
(93, 16, 'JT-0102'),
(94, 16, 'JT-0153'),
(95, 17, 'JT-0069'),
(96, 17, 'JT-0102'),
(97, 17, 'JT-0153'),
(98, 18, 'JT-0049'),
(99, 18, 'JT-0069'),
(100, 18, 'JT-0102'),
(101, 18, 'JT-0153'),
(102, 16, 'JT-0069'),
(103, 19, 'JT-0049'),
(104, 19, 'JT-0069'),
(105, 19, 'JT-0102'),
(106, 19, 'JT-0153'),
(107, 20, 'JT-0049'),
(108, 20, 'JT-0069'),
(109, 20, 'JT-0102'),
(110, 20, 'JT-0153'),
(117, 26, 'JT-0153'),
(118, 25, 'JT-0153'),
(119, 24, 'JT-0153'),
(120, 23, 'JT-0153'),
(121, 22, 'JT-0153'),
(122, 21, 'JT-0153'),
(123, 27, 'JT-0153'),
(124, 28, 'JT-0153'),
(125, 29, 'JT-0069'),
(126, 29, 'JT-0153'),
(127, 30, 'JT-0069'),
(128, 30, 'JT-0153'),
(129, 31, 'JT-0069'),
(130, 31, 'JT-0153'),
(131, 32, 'JT-0102'),
(132, 32, 'JT-0153'),
(133, 33, 'JT-0153'),
(134, 34, 'JT-0049'),
(135, 34, 'JT-0069'),
(136, 34, 'JT-0102'),
(137, 34, 'JT-0153'),
(138, 35, 'JT-0049'),
(139, 35, 'JT-0069'),
(140, 35, 'JT-0102'),
(141, 35, 'JT-0153'),
(142, 36, 'JT-0049'),
(143, 36, 'JT-0069'),
(144, 36, 'JT-0102'),
(145, 36, 'JT-0153'),
(146, 37, 'JT-0049'),
(147, 37, 'JT-0069'),
(148, 37, 'JT-0102'),
(149, 37, 'JT-0153'),
(150, 38, 'JT-0049'),
(151, 38, 'JT-0069'),
(152, 38, 'JT-0102'),
(153, 38, 'JT-0153'),
(154, 39, 'JT-0049'),
(155, 39, 'JT-0069'),
(156, 39, 'JT-0102'),
(157, 39, 'JT-0153'),
(158, 40, 'JT-0049'),
(159, 40, 'JT-0069'),
(160, 40, 'JT-0102'),
(161, 40, 'JT-0153'),
(162, 41, 'JT-0049'),
(163, 41, 'JT-0069'),
(164, 41, 'JT-0102'),
(165, 41, 'JT-0153'),
(166, 42, 'JT-0049'),
(167, 42, 'JT-0069'),
(168, 42, 'JT-0102'),
(169, 42, 'JT-0153'),
(170, 43, 'JT-0049'),
(171, 43, 'JT-0069'),
(172, 43, 'JT-0102'),
(173, 43, 'JT-0153'),
(174, 44, 'JT-0049'),
(175, 44, 'JT-0069'),
(176, 44, 'JT-0102'),
(177, 44, 'JT-0153'),
(178, 45, 'JT-0049'),
(179, 45, 'JT-0069'),
(180, 45, 'JT-0102'),
(181, 45, 'JT-0153'),
(182, 46, 'JT-0049'),
(183, 46, 'JT-0070'),
(184, 46, 'JT-0102'),
(185, 46, 'JT-0153'),
(186, 47, 'JT-0049'),
(187, 47, 'JT-0069'),
(188, 47, 'JT-0102'),
(189, 47, 'JT-0153'),
(190, 48, 'JT-0049'),
(191, 48, 'JT-0069'),
(192, 48, 'JT-0102'),
(193, 48, 'JT-0153'),
(194, 49, 'JT-0049'),
(195, 49, 'JT-0069'),
(196, 49, 'JT-0102'),
(197, 49, 'JT-0153'),
(198, 50, 'JT-0049'),
(199, 50, 'JT-0069'),
(200, 50, 'JT-0102'),
(201, 50, 'JT-0153'),
(202, 89, 'JT-0049'),
(203, 89, 'JT-0069'),
(204, 89, 'JT-0102'),
(205, 89, 'JT-0153'),
(206, 161, 'JT-0049'),
(207, 161, 'JT-0069'),
(208, 161, 'JT-0102'),
(209, 161, 'JT-0153'),
(210, 195, 'JT-0049'),
(211, 195, 'JT-0069'),
(212, 195, 'JT-0102'),
(213, 195, 'JT-0153'),
(214, 103, 'JT-0049'),
(215, 103, 'JT-0069'),
(216, 103, 'JT-0102'),
(217, 103, 'JT-0153'),
(218, 104, 'JT-0049'),
(219, 104, 'JT-0069'),
(220, 104, 'JT-0102'),
(221, 104, 'JT-0153'),
(222, 105, 'JT-0049'),
(223, 105, 'JT-0069'),
(224, 105, 'JT-0102'),
(225, 105, 'JT-0153'),
(226, 106, 'JT-0049'),
(227, 106, 'JT-0069'),
(228, 106, 'JT-0102'),
(229, 106, 'JT-0153'),
(230, 196, 'JT-0069'),
(231, 196, 'JT-0102'),
(232, 197, 'JT-0069'),
(233, 197, 'JT-0102'),
(234, 198, 'JT-0069'),
(235, 198, 'JT-0102'),
(236, 199, 'JT-0049'),
(237, 199, 'JT-0069'),
(238, 199, 'JT-0071'),
(239, 199, 'JT-0102'),
(240, 199, 'JT-0153'),
(241, 200, 'JT-0049'),
(242, 200, 'JT-0069'),
(243, 200, 'JT-0102'),
(244, 200, 'JT-0153');

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

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`id_grade`, `tingkatan`, `level`, `persen`, `grade`, `bg_color`, `created_at`, `updated_at`) VALUES
(8, 'Operator', 'B', 100, 'SERSAN DUA', 'badge badge-secondary', '2022-05-22 14:54:41', '2022-05-22 08:20:21'),
(9, 'Operator', 'I', 85, 'SERSAN SATU', 'badge badge-danger', '2022-05-22 14:54:41', '2022-05-22 14:54:41'),
(10, 'Operator', 'A', 75, 'SERSAN KEPALA', 'badge badge-warning', '2022-05-22 14:54:41', '2022-05-22 14:54:41'),
(11, 'Technician', 'B', 100, 'SERSAN DUA', 'badge badge-secondary', '2022-05-22 15:02:13', '2022-05-22 08:20:32'),
(12, 'Technician', 'I', 85, 'SERSAN SATU', 'badge badge-danger', '2022-05-22 15:02:13', '2022-05-22 15:02:13'),
(13, 'Technician', 'A', 75, 'SERSAN KEPALA', 'badge badge-warning', '2022-05-22 15:02:13', '2022-05-22 15:02:13'),
(14, 'Analyst', 'B', 100, 'SERSAN DUA', 'badge badge-secondary', '2022-05-22 15:11:56', '2022-05-22 08:20:42'),
(15, 'Analyst', 'I', 85, 'SERSAN SATU', 'badge badge-danger', '2022-05-22 15:11:56', '2022-05-22 08:12:11'),
(16, 'Analyst', 'A', 75, 'SERSAN KEPALA', 'badge badge-warning', '2022-05-22 15:11:56', '2022-05-22 08:17:38'),
(17, 'Admin', 'B', 100, 'SERSAN DUA', 'badge badge-secondary', '2022-05-22 15:15:43', '2022-05-22 08:20:51'),
(18, 'Admin', 'I', 85, 'SERSAN SATU', 'badge badge-danger', '2022-05-22 15:15:43', '2022-05-22 15:15:43'),
(19, 'Admin', 'A', 75, 'SERSAN KEPALA', 'badge badge-warning', '2022-05-22 15:15:43', '2022-05-22 08:17:46'),
(20, 'LEADER', 'B', 100, 'LETNAN DUA', 'badge badge-success', '2022-05-22 15:19:14', '2022-05-22 08:19:35'),
(21, 'LEADER', 'I', 85, 'LETNAN SATU', 'badge badge-info', '2022-05-22 15:19:14', '2022-05-22 08:22:31'),
(22, 'LEADER', 'A', 75, 'KAPTEN', 'badge badge-primary', '2022-05-22 15:19:14', '2022-05-22 15:19:14'),
(23, 'STAFF', 'B', 100, 'LETNAN DUA', 'badge badge-success', '2022-05-22 15:22:14', '2022-05-22 08:22:53'),
(24, 'STAFF', 'I', 85, 'LETNAN SATU', 'badge badge-info', '2022-05-22 15:22:14', '2022-05-22 15:22:14'),
(25, 'STAFF', 'I', 75, 'KAPTEN', 'badge badge-primary', '2022-05-22 15:22:14', '2022-05-22 15:22:14'),
(26, 'Supervisor', 'B', 100, 'MAYOR', 'badge badge-dark', '2022-05-22 08:24:32', '2022-05-22 08:24:32'),
(27, 'Supervisor', 'I', 85, 'LETNAN KOLONEL', 'badge badge-dark', '2022-05-22 08:25:03', '2022-05-22 08:25:03'),
(28, 'Supervisor', 'A', 75, 'KOLONEL', 'badge badge-dark', '2022-05-22 08:26:01', '2022-05-22 08:26:01'),
(29, 'DEPT HEAD', 'B', 100, 'PANGLIMA', 'badge badge-light', '2022-05-22 08:26:53', '2022-05-22 08:26:53'),
(30, 'DEPT HEAD', 'I', 85, 'PANGLIMA', 'badge badge-light', '2022-05-22 08:27:10', '2022-05-22 08:27:10'),
(31, 'DEPT HEAD', 'A', 75, 'PANGLIMA', 'badge badge-light', '2022-05-22 08:27:25', '2022-05-22 08:27:25');

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
(3, 1, 'JT-0069', 2, '2022-05-18 01:09:38', '2022-05-18 01:09:38'),
(4, 1, 'JT-0086', 4, '2022-05-23 19:18:36', '2022-05-23 19:18:36'),
(5, 366, 'JT-0049', 3, '2022-05-24 21:09:22', '2022-05-24 21:09:22'),
(6, 230, 'JT-0071', 4, '2022-05-29 20:29:43', '2022-05-29 20:29:43'),
(7, 230, 'JT-0101', 4, '2022-05-29 20:30:01', '2022-05-29 20:30:01'),
(8, 230, 'JT-0162', 4, '2022-05-29 20:30:18', '2022-05-29 20:30:18'),
(9, 227, 'JT-0069', 4, '2022-05-29 20:30:45', '2022-05-29 20:30:45'),
(10, 227, 'JT-0162', 4, '2022-05-29 20:30:59', '2022-05-29 20:30:59'),
(11, 227, 'JT-0047', 4, '2022-05-29 20:31:21', '2022-05-29 20:31:21');

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
(8, '2022_05_17_084953_change_edited_from_sub_department_table', 3),
(9, '2022_05_19_042606_create_competentie_groups_table', 4),
(10, '2022_05_26_035117_create_targets_table', 5);

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
('2', 'CG Leader'),
('3', 'Pengguna');

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
(1, 'Functional Skills'),
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
(15, 'SWrxk1649384942', '00001', 2022, 'April', '2022-04-08', '2022-04-08', '0', 'Example', '2022-04-09', NULL, '2022-04-10', '16:03:00', '04:03:00', '12 Jam : 0 Menit', '2022-04-08', 1, 5, NULL),
(16, '6ANsm1653451601', '00002', 2022, 'May', '2022-05-25', '2022-05-26', '1', 'Buddy Gummy', '2022-05-24', 'Mantap tingkatkan', '2022-05-25', '16:30:00', '17:00:00', '0 Jam : 30 Menit', '2022-05-25', 1, 4, 'mantap'),
(17, 'CQLn11653623020', '00003', 2022, 'May', '2022-05-27', '2022-05-28', '4', 'Rezki', '2022-05-27', 'baik', '2022-05-27', '09:00:00', '10:00:00', '1 Jam : 0 Menit', '2022-05-27', 1, 3, 'baik');

-- --------------------------------------------------------

--
-- Table structure for table `targets`
--

CREATE TABLE `targets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `targets`
--

INSERT INTO `targets` (`id`, `id_job_title`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'JT-0049', 'Target Basic', 100, '2022-05-26 20:38:30', '2022-05-26 20:38:30');

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
(1, 'K210300063', 'REZKI RAMADHAN', '1', 'rramadhan1818@gmail.com', '2022-03-01 09:58:33', '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-08', 'JT-0049', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0023', 'LV-0009', 1, 'yMDxdbaygCYVXzM.png', NULL, '2022-03-05 09:58:33', '2022-05-29 21:01:08'),
(2, 'K200900257', 'CHANDRA PRAWIRA', '1', 'chandra@gmail.com', '2022-03-01 09:58:33', '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-09-01', 'JT-0049', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0023', 'LV-0009', 1, 'E72Vo5k8MkUKjCm.png', NULL, '2022-03-11 01:46:24', '2022-06-01 18:53:54'),
(3, '050700014', 'DIDIK BUDIARTO', '1', 'didik.budiarto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2005-07-01', 'JT-0149', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '051000017', 'I GEDE PUTU EKA PUTRA', '1', 'igedeputu.ekaputra@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2005-10-10', 'JT-0076', NULL, NULL, 'DP-0010', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '060500014', 'YUDHA AGUS TRI BASUKI', '1', 'yud.agus@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-05-01', 'JT-0062', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '060500015', 'APOLONIA LAURENSIA LUNAWATI. N', '1', 'laurensia.lunawati2007@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-05-29', 'JT-0067', NULL, NULL, 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '060700017', 'SRI REJEKI', '1', 'jeckie78@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-07-03', 'JT-0163', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '060800020', 'YUNIARTO', '1', 'yuniartorasian72@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-08-01', 'JT-0068', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '060800022', 'YAYAN', '1', 'yayan.jan123@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-08-14', 'JT-0109', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '060900024', 'NURHASAN', '1', 'bungzoe83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-09-04', 'JT-0020', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:37:19'),
(11, '060900025', 'DENY MUHAMAD MULYADI', '2', 'muhamadmulyadi80@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-09-05', 'JT-0119', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:33:02'),
(12, '061000028', 'SUHATMAN', '1', 'suhatman7@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-10-02', 'JT-0144', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:12:36'),
(13, '061100030', 'AFRIAN CHANDRA IDRIS', '1', 'afrian81@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-11-06', 'JT-0066', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:43:37'),
(14, '061100031', 'DARYONO', '1', 'daryono7706@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-11-06', 'JT-0003', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:48:03'),
(15, '061100032', 'MUHAMAD EFENDI', '2', 'efendimuhamad7608@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-11-06', 'JT-0018', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:43:34'),
(16, '061100033', 'USEP JAYADI', '1', 'jayadiusep3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-11-06', 'JT-0025', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '061100034', 'TIWIK SUYANTI', '2', 'tiwik.suyanti@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-11-13', 'JT-0160', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:35:31'),
(18, '061100035', 'MAMAN SULAEMAN', '1', 'kang.maman24@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-11-22', 'JT-0164', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:13:21'),
(19, '061200036', 'ADE SAPRUDIN', '1', 'adesfadil123@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-04', 'JT-0015', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:26:27'),
(20, '061200037', 'ASEP CAHYAN', '1', 'asepcahyan9@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-04', 'JT-0114', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:04:28'),
(21, '061200038', 'SAMIDI', '1', 'samidiasemo@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-04', 'JT-0020', 'DV_0002', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:29:13'),
(22, '061200039', 'SUNGATNO', '2', 'sungatnohadi76@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-04', 'JT-0096', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0004', NULL, NULL, NULL, NULL, '2022-05-20 00:53:16'),
(23, '061200040', 'ZAINI', '1', 'zaeniaja66@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-04', 'JT-0040', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '061200041', 'MUNADIH', '2', 'munadihmumun@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-06', 'JT-0140', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-22 21:32:45'),
(25, '061200042', 'NANDANG SUTISNA', '1', 'nsanandangsutisna@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-11', 'JT-0020', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-19 23:38:11'),
(26, '061200043', 'YUNUS JOHN BILORO', '2', 'yunusjohn50@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-11', 'JT-0024', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:32:28'),
(27, '061200045', 'KUSNADI RUDI', '1', 'k.rudikri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2006-12-18', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:29:37'),
(28, '070100001', 'ADI SETIAHADI', '2', 'this1s4di@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-02', 'JT-0159', 'DV_0002', 'CG_0023', 'DP-0004', 'SDP-0008', 'LV-0004', NULL, NULL, NULL, NULL, '2022-05-22 21:40:35'),
(29, '070100004', 'AGUS TURANTO', '1', 'aturanto2007@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-02', 'JT-0078', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '070100007', 'EKO WAHYUDI', '1', 'echowahyudi32@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-02', 'JT-0156', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:08:11'),
(31, '070100012', 'EDI WIBOWO JOKO PRASETYO', '1', 'ofalputra30@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-03', 'JT-0158', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '070100013', 'AGUS RIYANTO', '1', 'aroryoto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-08', 'JT-0088', 'DV_0001', 'CG_0010', 'DP-0003', 'SDP-0030', 'LV-0004', NULL, NULL, NULL, NULL, '2022-05-22 05:01:14'),
(33, '070100015', 'RADEN ABBAS FAUZI', '1', 'fauzibbas@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-15', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:19:17'),
(34, '070100024', 'YUSUF HAMDANI', '1', 'yusufarfan030284@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-01-22', 'JT-0036', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:08:51'),
(35, '070200028', 'JAKARIA (SK)', '2', 'skjakaria027@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-02-05', 'JT-0147', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:26:04'),
(36, '070200029', 'RAHMAT NURHIDAYAT', '1', 'rahmatar315@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-02-05', 'JT-0013', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:39:06'),
(37, '070200030', 'ARDIAN', '1', 'ardian.kmi.wh@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-02-12', 'JT-0133', 'DV_0001', 'CG_0006', 'DP-0006', 'SDP-0017', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:29:26'),
(38, '070200031', 'YULIANTO', '2', 'bombersolokrajan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-02-12', 'JT-0138', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:51:47'),
(39, '070300033', 'ASEP HAEDAR', '1', 'haedar0210@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-03-01', 'JT-0036', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:08:01'),
(40, '070300036', 'JOJON DARSONO YOGA JAYA', '1', 'jojondarsono11@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-03-20', '', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '070400065', 'MARLENY PATANDUNG', '1', 'mpatandung@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-04-23', 'JT-0122', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '070400068', 'DWI ISDARYANTO', '2', 'dwi2.isdaryanto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-04-25', 'JT-0134', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:40:30'),
(43, '070500078', 'NAFIS SURACHMAN', '1', 'nafis_lopon@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-05-28', 'JT-0066', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:17:33'),
(44, '070600083', 'HENDI ISKANDAR', '1', 'hendi.iskandar.umb12@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2007-06-25', 'JT-0090', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '080900029', 'ADE NANDAR', '1', 'adenandar78@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-09-01', 'JT-0025', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 02:17:26'),
(46, '080900030', 'BUGI NOVRIYANTO', '1', 'bubugigi17@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-09-01', 'JT-0041', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '080900031', 'DWI KURNIAWAN', '1', 'dwi_kmi@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-09-01', 'JT-0161', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0019', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:26:31'),
(48, '080900032', 'FEBI DIANA', '2', 'febidiana3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-09-01', 'JT-0042', 'DV_0002', 'CG_0007', 'DP-0003', 'SDP-0031', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:25:15'),
(49, '080900033', 'LINDA LABORA', '1', 'ndalabora1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-09-01', 'JT-0141', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:05:07'),
(50, '081000037', 'DIAWAN', '2', 'diawan.only86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-10-01', 'JT-0129', 'DV_0001', 'CG_0025', 'DP-0006', 'SDP-0017', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:33:40'),
(51, '081000038', 'AGUS FIRMANSYAH', '1', 'agus_k99@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2008-10-06', 'JT-0100', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '090593002', 'HALILY SOFYAN AL HASAN', '2', 'halleymalmsteen@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2009-05-01', 'JT-0111', 'DV_0002', 'CG_0020', 'DP-0002', 'SDP-0004', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:29:05'),
(53, '100192702', 'AGUNG HARTANTO', '1', 'agunghartanto83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-01-01', 'JT-0155', 'DV_0002', 'CG_0019', 'DP-0009', 'SDP-0025', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:24:22'),
(54, '100192704', 'IKA OKTAFIANTI', '2', 'okta.arisandy01@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-01-01', 'JT-0087', 'DV_0001', 'CG_0010', 'DP-0003', 'SDP-0030', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:25:31'),
(55, '100192705', 'SAEPULLAH', '1', 'saepullahsaepullah8@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-01-01', 'JT-0013', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:44:18'),
(56, '100200007', 'BURHANUDIN', '1', 'pay.burhan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-02-01', 'JT-0068', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '100300009', 'NAZARUDIN RACHMAN SIDIK', '1', 'fiasco.missing@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-03-01', 'JT-0061', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '100492706', 'SEPTIAN EKO PRIATNA', '1', 'septian.gates@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-04-01', 'JT-0095', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 00:55:21'),
(59, '100692707', 'IWAN HERMAWAN', '1', 'iwan.hermawan963@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-06-01', 'JT-0126', 'DV_0001', 'CG_0006', 'DP-0006', 'SDP-0017', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:36:03'),
(60, '100892708', 'DEDE DODI GINANJAR', '1', 'd2ginanjar@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-08-01', 'JT-0083', 'DV_0002', 'CG_0023', 'DP-0004', 'SDP-0008', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:47:23'),
(61, '100892709', 'RAHMAT KURNIAWAN', '1', 'zikrikurniawan08@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-08-01', 'JT-0025', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:16:30'),
(62, '100892710', 'SOLEHUDIN', '1', 'solehudinkmi1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-08-01', 'JT-0025', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '100992711', 'SITI RIZKIANA NURANNISA', '2', 'nurannisarizkiana@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2010-09-01', 'JT-0091', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:20:38'),
(64, '110191206', 'AGA WALESSA', '2', 'walessaaga@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-01-01', 'JT-0118', 'DV_0002', 'CG_0021', 'DP-0002', 'SDP-0002', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:27:53'),
(65, '110191207', 'MAULANA ABDUL SALIM', '1', 'muhammadkarim354@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-01-01', 'JT-0008', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:51:13'),
(66, '110191208', 'UUM UMBARA', '1', 'umbarathea722@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-01-01', 'JT-0009', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:48:01'),
(67, '110191209', 'YERI KUSNADI', '1', 'yerikusnadi888@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-01-01', 'JT-0079', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:10:14'),
(68, '110891211', 'ADE HUMAENI', '1', 'leaderpacking40@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-08-01', 'JT-0144', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 03:14:52'),
(69, '110891212', 'MARKUS', '1', 'markusmuji8179@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-08-01', 'JT-0004', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:06:30'),
(70, '110900055', 'HERMANSYAH', '1', 'h3rm4n21@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-09-12', 'JT-0053', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '111200086', 'SADHU PUTRI SUSANTI', '2', 'sadhuputri0405@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2011-12-19', 'JT-0044', 'DV_0002', 'CG_0007', 'DP-0003', 'SDP-0031', 'LV-0004', NULL, NULL, NULL, NULL, '2022-05-22 05:04:34'),
(72, '120192502', 'ADRI FIRMANSYAH', '2', 'adrifirmansyah16@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0148', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:22:05'),
(73, '120192503', 'ARDISON', '1', 'ardison0984@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0005', 'DV_0001', 'CG_0013', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:49:17'),
(74, '120192504', 'EKO ARIES SANTOSO', '1', 'arieseko98@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0109', 'DV_0001', 'CG_0017', 'DP-0005', 'undefine', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:11:16'),
(75, '120192505', 'JAJANG ABDUL ROHMAN', '1', 'zikrakhalida28@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0031', 'DV_0001', 'CG_0012', 'DP-0004', 'undefine', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:30:14'),
(76, '120192506', 'NURJANAH', '1', 'noerjhen@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0152', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:01:54'),
(77, '120192507', 'SAEPUDIN', '1', 'saepudina631@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0072', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:36:13'),
(78, '120192508', 'TARMAN SUTISNA', '1', 'tarman.sutisna84@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0012', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:10:07'),
(79, '120192509', 'USEP YUSEPA', '1', 'usepyusepa66@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0114', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:14:15'),
(80, '120192510', 'YAYAT HIDAYAT', '2', 'yayat2836@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-01-01', 'JT-0024', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:32:05'),
(81, '120200010', 'AGUNG JOKO SUPRIHANTO', '1', 'agung.joko.tin42@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-06', 'JT-0112', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '120292511', 'AHMAD SAHRONI', '1', 'assahroni78@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0083', 'DV_0002', 'CG_0023', 'DP-0004', 'SDP-0008', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:46:54'),
(83, '120292512', 'DENY SUPRAPTO', '1', 'dhenysoeprapto@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0097', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:32:54'),
(84, '120292513', 'DIAN SANJAYA', '1', 'diansanjaya1984@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0072', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 02:35:42'),
(85, '120292514', 'HERMAWAN', '1', 'hermawan2231@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0013', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:43:14'),
(86, '120292515', 'RUDI SUGIARTO', '2', 'tabotie88@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0052', 'DV_0002', 'CG_0027', 'DP-0002', 'SDP-0003', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:30:13'),
(87, '120292516', 'YAYAT NURHIDAYAT', '1', 'ynurhidayat321@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0036', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:09:22'),
(88, '120292517', 'YUANITA JOHAN', '2', 'yuanita.johan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0075', 'DV_0002', 'CG_0008', 'DP-0001', 'SDP-0001', 'LV-0004', NULL, NULL, NULL, NULL, '2022-05-22 05:15:19'),
(89, '120292518', 'ZAINI ARDHIANSYAH', '1', 'zainiardhiansyah@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-02-01', 'JT-0042', 'DV_0002', 'CG_0007', 'DP-0003', 'SDP-0031', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:08:24'),
(90, '120500031', 'AKHMAD MAKHALI', '2', 'ommak82@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-05-01', 'JT-0056', 'DV_0002', 'CG_0019', 'DP-0009', 'SDP-0032', 'LV-0004', NULL, NULL, NULL, NULL, '2022-05-22 05:19:10'),
(91, '120692519', 'DINA MUSTIKA WENI', '1', 'dina.desu@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-06-01', 'JT-0108', 'DV_0001', 'CG_0010', 'DP-0003', 'SDP-0029', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:31:23'),
(92, '120692521', 'WEMPI NUR HIDAYAT', '1', 'wempinur@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-06-11', 'JT-0133', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:42:09'),
(93, '120892522', 'KARYA SETIAWAN', '1', 'karyastiawan07@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-08-01', 'JT-0015', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:28:07'),
(94, '120892523', 'MUKTI WIBOWO', '1', 'wibowomukti26@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-08-01', 'JT-0121', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '120892524', 'VICKRY JANI HARIYANTO', '1', 'vickryjani@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-08-01', 'JT-0032', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:19:24'),
(96, '120992525', 'ARDIKA FAUDIN', '1', 'ardika.f.89@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-09-01', 'JT-0080', 'DV_0001', 'CG_0023', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-22 23:11:32'),
(97, '120992526', 'BAYU SEPTO PRASETYO', '1', 'bayusepto16@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-09-01', 'JT-0137', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:58:17'),
(98, '121092527', 'BUDI MAULANA NUGRAHA', '1', 'budimaulananugraha@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-10-01', 'JT-0066', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:45:44'),
(99, '121092528', 'DODI ISKANDAR', '1', 'reisyhafebkiranicuakep@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-10-01', 'JT-0098', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:27:47'),
(100, '121092529', 'SUSANTO RONNI', '1', 'daffasusanto20@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-10-01', 'JT-0003', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:06:57'),
(101, '121192530', 'DEDE KUSNANDAR', '1', 'dedekusnandarinsun@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:08:32'),
(102, '121192531', 'GUMILAR INDRA FEBRIANSYAH', '1', 'gumilarif@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0029', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:51:46'),
(103, '121192532', 'KARNAEN', '1', 'karnaen1976@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0103', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '121192533', 'MUHAMMAD SHANDI SUMANTRI', '1', 'shand.milano@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:21:00'),
(105, '121192534', 'ONDI NUGROHO', '1', 'ondix.lau@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0098', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:29:57'),
(106, '121192535', 'RISNAWATI', '1', 'wrisna97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0115', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:58:03'),
(107, '121192536', 'RUDI RAHMAN', '1', 'rudirahman0879@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:07:35'),
(108, '121192537', 'SUGIANTO', '1', 'zhie46@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0114', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '121192538', 'SULISWANTO', '1', 'suliswanto1503@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0103', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:37:32'),
(110, '121192539', 'YUSUF SYAHRONI', '1', 'yusufsyahroni4787@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0072', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:32:50'),
(111, '121192540', 'ZENAL MULYANA', '1', 'zenal.kenil83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-01', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:05:22'),
(112, '121192541', 'RIESTA SHASYA FAUZIAH', '1', 'riestashasya@ymail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2012-11-12', 'JT-0093', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:13:02'),
(113, '130100005', 'AMBAR KUSUMO NUGROHO', '1', 'aknugroho@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-08', 'JT-0082', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '130193003', 'ADE NANA SUMARNA', '1', 'andealova77@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0005', 'DV_0001', 'CG_0013', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:48:28'),
(115, '130193004', 'AGUS AKBAR', '1', 'agus.akbar1986@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0131', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:43:47'),
(116, '130193005', 'AGUS PRASETIYO', '1', 'prast.we@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0145', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:27:33'),
(117, '130193006', 'APANDI', '1', 'apandialfathar34@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0004', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:51:56'),
(118, '130193007', 'ASMI LASARI', '1', 'asmilasari23@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0115', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:17:16'),
(119, '130193008', 'DANI PURWANEGARA', '1', 'danipurwanegara7@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0128', 'DV_0001', 'CG_0025', 'DP-0006', 'SDP-0016', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:34:22'),
(120, '130193009', 'DEDEN SETIA JAYA SOMANTRI', '1', 'dedensetiajaya09747@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0031', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:31:31'),
(121, '130193010', 'DEVI SAFITRI SUNDARI', '1', 'devisafitri798@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0115', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:01:07'),
(122, '130193011', 'DIDI SUPRIADI', '1', 'didi_supriadi@live.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0007', 'DV_0001', 'CG_0013', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:51:40'),
(123, '130193012', 'DWIKI ARIA DARMAWAN', '1', 'wickyarya17@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0103', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:36:56'),
(124, '130193013', 'ERFAN KIMA BAHTERA', '1', 'bahteraerfan87@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 02:37:12'),
(125, '130193014', 'ERIS MOCHAMAD FIRDAUS', '1', 'erisfirdaus@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0097', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:33:14'),
(126, '130193015', 'FARIZ FAUZI PRATAMA', '1', 'farizfauzipratama@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0095', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 00:56:16'),
(127, '130193016', 'FEBRIANGGONO DANNY SETIYADI', '1', 'dannyarieanti@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:06:02'),
(128, '130193017', 'HADI', '1', 'hadi180286@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0125', 'DV_0001', 'CG_0006', 'DP-0006', 'SDP-0017', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 03:36:42'),
(129, '130193018', 'HERU AHMAD SAPRUDIN', '1', 'ureh.rafael46@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:25:18'),
(130, '130193019', 'JAKARIA (CK)', '1', 'zakariyahck@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0079', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:11:13'),
(131, '130193020', 'KANDA', '1', 'kandadoank69@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0124', 'DV_0001', 'CG_0006', 'DP-0006', 'SDP-0017', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:28:15'),
(132, '130193021', 'KUSNADI', '1', 'koesdoank77@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0131', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:41:33'),
(133, '130193022', 'MADA', '1', 'madamoza39@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0103', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:38:08'),
(134, '130193023', 'MUHAMAD SYAIFUL ANWAR', '1', 'evfuel@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0031', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:32:41'),
(135, '130193024', 'NUR FAJRI', '1', 'nurf99732@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0004', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:07:33'),
(136, '130193025', 'PRIYANTO', '1', 'priyanto2687@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:38:23'),
(137, '130193026', 'RIDWAN', '1', 'kiansantang934@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0017', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:29:44'),
(138, '130193027', 'RUDI SETIAWAN', '1', 'rudisuhu3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0115', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:49:40'),
(139, '130193028', 'SAMSIANTO', '1', 'antohukl@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:37:50'),
(140, '130193029', 'SHANDY ASMARA', '1', 'asmarashandy@ymail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0005', 'DV_0001', 'CG_0013', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:49:53'),
(141, '130193030', 'SUDARWANTO', '1', 'sudarwantobapakebilqis@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0139', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:04:31'),
(142, '130193031', 'SUHERI', '1', 'suheri89.sh@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0137', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:54:07'),
(143, '130193033', 'SYAHRUL HIDAYAT', '1', 'syahrulhidayat92@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0011', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:07:25'),
(144, '130193034', 'WARDI SAEPUDIN', '1', 'wardisaepudin007@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-01-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:26:27'),
(145, '130393035', 'BOBBY FAHMI FARHANUDIN', '1', 'farhan.bobbyfahmi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-03-01', 'JT-0093', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:16:18'),
(146, '130793036', 'ADNAN SAMSULEH', '1', 'adnan.holic@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0110', NULL, NULL, 'DP-0002', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '130793037', 'AEP SAEPUDIN', '1', 'aep198509@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0007', 'DV_0001', 'CG_0013', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:51:11'),
(148, '130793038', 'AJAT JAPAR', '1', 'jattz87lfr@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'undefine', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:43:54'),
(149, '130793039', 'ALI ROHMAN', '1', 'alirohman5728@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0137', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:55:21'),
(150, '130793040', 'AMRIH PANUNTUN', '1', 'amrihpanuntun@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0103', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '130793041', 'ANDI KUSUMA', '3', 'kandi5625@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0008', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:50:19'),
(152, '130793042', 'ANGGA CHRISTIAN YONATHAN', '1', 'angga.christian08@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0128', 'DV_0001', 'CG_0025', 'DP-0006', 'SDP-0016', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:35:39'),
(153, '130793043', 'ASEP ROBAN', '1', 'roben765@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:25:25'),
(154, '130793044', 'DAIKIN PURNA YUDHA', '1', 'daikinvina21@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0029', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '130793045', 'DARMA ARDHI', '1', 'darmaardhi69@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:39:01'),
(156, '130793046', 'DIDIK PURWANTO', '1', 'didikpurwantojowo81@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0027', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:52:22'),
(157, '130793047', 'HERI KURNIAWAN', '1', 'kurniawanheri449@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0103', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:19:50'),
(158, '130793048', 'HERIYANA', '1', 'boyzheriyana@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0098', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:30:32'),
(159, '130793049', 'IKMAL MAULANA', '1', 'ikmalmaulana708@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-22 03:28:39'),
(160, '130793050', 'IRFAN HIMAWAN', '1', 'himawanirfan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0093', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:14:50'),
(161, '130793051', 'JOHAN KERTIONO', '1', 'johanbismillah99@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0012', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:05:48'),
(162, '130793052', 'MOHAMMAD DWI ADHITYA', '1', 'dwiadityamail@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0125', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:43:13'),
(163, '130793053', 'SAMROJI', '1', 'samroji118@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-01', 'JT-0015', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:27:24'),
(164, '130793055', 'JUJUN SIROJUDIN', '1', 'jujunsirojudin1502@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-16', 'JT-0003', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:05:55'),
(165, '130793056', 'NOVAN TRIANTO', '2', 'vanstryan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-16', 'JT-0055', 'DV_0002', 'CG_0019', 'DP-0009', 'SDP-0032', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:29:32'),
(166, '130793058', 'SANNI SUTIADI', '1', 'sannisutiadi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-07-16', 'JT-0114', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:03:50'),
(167, '130900125', 'INSANI GUSTRIANJAR MUHAROM', '1', 'insanianjar@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-09-09', 'JT-0157', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:12:55'),
(168, '130900126', 'KASTOLANI', '2', 'kastolanikmi86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2013-09-09', 'JT-0077', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0013', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:25:44'),
(169, '140192908', 'JEPRI HAERUDIN', '2', 'haerudin24@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-01-01', 'JT-0074', 'DV_0002', 'CG_0008', 'DP-0001', 'SDP-0001', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:30:29'),
(170, '140292909', 'TRI AGUSTIARTY WARDHANY', '1', 'triagustiarty@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-02-01', 'JT-0093', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:13:34'),
(171, '140700131', 'PUTRI PUSPITA SARI', '1', 'putripuspitasari55@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-07', 'JT-0043', 'DV_0001', 'CG_0007', 'DP-0003', 'SDP-0031', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:06:25'),
(172, '140792910', 'AGUS NUGROHO', '1', 'nugrohofaiz14@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0012', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:09:36'),
(173, '140792911', 'ARIYANTO', '1', 'ariyanto88974@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0011', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:08:58'),
(174, '140792913', 'BAHRUDIN', '1', 'abahudin83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0145', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:25:56'),
(175, '140792914', 'BENI SETIYAWAN', '1', 'benn.john.bj@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:39:29'),
(176, '140792915', 'CECEP SUPRIADI', '1', 'mibnu298@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0029', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:17:59'),
(177, '140792916', 'IRPAN HIDAYAT PAMIL', '1', 'irpanhidayatpamil.ip@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0154', 'DV_0002', 'CG_0019', 'DP-0009', 'SDP-0025', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:26:14'),
(178, '140792918', 'MOKHAMAD MUSLIH', '1', 'musliehneutron53@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:09:53'),
(179, '140792919', 'R HAERUL SEJATI', '1', 'haerulsintauna@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0095', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 00:54:52'),
(180, '140792920', 'TAUFIK FARIDZAL', '1', 'faridzal83@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0039', 'DV_0001', 'CG_0012', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:29:05'),
(181, '140792921', 'ZAENUDDIN', '1', 'zaenuddintan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-07-01', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:21:45'),
(182, '141092923', 'FITRIYANI', '1', 'hi.fitriyani@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-10-01', 'JT-0162', 'DV_0002', 'CG_0010', 'DP-0003', 'SDP-0029', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:02:37'),
(183, '141092924', 'PANDU WIJAYADI', '1', 'telurpanda@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2014-10-01', 'JT-0065', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:17:56'),
(184, '150191702', 'MOEHAMMAD FADJAR FADHILAH', '1', 'fadjar.crotcrew@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-01-01', 'JT-0032', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:13:57'),
(185, '150291703', 'ALI NURDIN', '1', 'ali.nurdin.hidayat@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-02-16', 'JT-0137', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:53:22'),
(186, '150291704', 'BAGUS SANTOSO', '1', 'santosobagus809@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-02-16', 'JT-0128', 'DV_0001', 'CG_0025', 'DP-0006', 'SDP-0016', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:35:00'),
(187, '150291705', 'HERI HENDRIANA', '1', 'herry.hendriana@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-02-16', 'JT-0124', 'DV_0001', 'CG_0006', 'DP-0006', 'SDP-0014', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:27:32'),
(188, '150491706', 'SUMARNA', '1', 'sumarna926@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-04-01', 'JT-0073', 'DV_0002', 'CG_0008', 'DP-0001', 'SDP-0001', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-22 05:16:55'),
(189, '150600127', 'YOPPY SUKMANDAR', '1', 'sukmandar.yoppy@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-06-01', 'JT-0035', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '150791707', 'ADI AMRAN SUKARYA', '1', 'adiamran88@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-07-01', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:22:55'),
(191, '150791708', 'BAMBANG RISTYANTO', '1', 'mbengristyan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-07-01', 'JT-0021', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:45:35');
INSERT INTO `users` (`id`, `nik`, `nama_pengguna`, `peran_pengguna`, `email`, `email_verified_at`, `password`, `tgl_masuk`, `id_job_title`, `id_divisi`, `id_cg`, `id_department`, `id_sub_department`, `id_level`, `status`, `gambar`, `remember_token`, `created_at`, `updated_at`) VALUES
(192, '150791709', 'HAPPY SUGESTIE PRAHARA', '1', 'happysugestie@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-07-01', 'JT-0046', 'DV_0002', 'CG_0022', 'DP-0008', 'SDP-0022', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-17 19:46:29'),
(193, '150791710', 'RIRIS PURWANTO', '1', 'ririspurwanto33@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-07-01', 'JT-0021', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:46:06'),
(194, '150800189', 'BAHRUDIN DWI NURYANTO', '1', 'dwinuryantob@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2015-08-03', 'JT-0032', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:03:18'),
(195, '160192705', 'AHMAD SAEPUDIN', '1', 'asaepudin511@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2016-01-01', 'JT-0066', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:28:02'),
(196, '160192706', 'YUNIAR TRI PRAKOSO', '1', 'triprakoso777@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2016-01-01', 'JT-0093', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:15:28'),
(197, '160200097', 'ALIT PRADANA', '1', 'alitpradana52@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2016-02-22', 'JT-0041', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '160792707', 'ADI SOPANA', '1', 'sopanaadi25@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2016-07-01', 'JT-0007', 'DV_0001', 'CG_0013', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:50:40'),
(199, '170122440', 'FAJAR MAULANA', '1', 'fajarmaulana638@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-01-01', 'JT-0137', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:56:05'),
(200, '170122441', 'MUHAMMAD IQBAL FAUZY', '1', 'iqbalfauzysinkas@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-01-01', 'JT-0120', 'DV_0001', 'CG_0005', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 03:27:05'),
(201, '170122442', 'SAIFUL BAHRI', '1', 'sbahriel198@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-01-01', 'JT-0137', 'DV_0001', 'CG_0024', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:56:47'),
(202, '170700031', 'ARIS SUPARLI', '3', 'arissuparli9@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-07-01', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:12:09'),
(203, '170700032', 'HERU HAERUDIN', '1', 'heruhaerudin11@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-07-01', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:10:32'),
(204, '170700033', 'PEBI', '1', 'pebipebi52@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-07-01', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:23:46'),
(205, '171122509', 'MOCHAMAD FADDLY ADI', '1', 'mochfaddly@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2017-11-01', 'JT-0021', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-19 23:45:06'),
(206, '180100012', 'RUDI ROSIDIN', '1', 'rudirosidin1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0059', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:18:19'),
(207, '180100013', 'SIDIK TRIPAMBUDI', '1', 'sidiktrii@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0066', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:18:46'),
(208, '180100014', 'DERI INDRIANI', '1', 'indrianiderry@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0042', 'DV_0002', 'CG_0007', 'DP-0003', 'SDP-0031', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:09:03'),
(209, '180100015', 'RIO ANGGARA', '1', 'ri.ironpeg@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0009', 'DV_0001', 'CG_0003', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-18 01:48:58'),
(210, '180100016', 'ABDUL MUJIB MUSTOPA', '1', 'abdulmujib4994@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0105', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:12:49'),
(211, '180100017', 'SANIP KOMARUDIN', '1', 'sanip.komarudin@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0011', 'DV_0001', 'CG_0002', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:08:02'),
(212, '180100018', 'EDI SAPUTRA', '1', '94edisaputra@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0105', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:39:58'),
(213, '180100019', 'DANIS SENO PRABOWO', '1', 'danissenoprabowo@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0103', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:14:14'),
(214, '180100020', 'HERMAN RESTU FAUZI', '1', 'herman.ybgi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0105', 'DV_0001', 'CG_0014', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 03:24:31'),
(215, '180100021', 'WULAN NUR FATIMAH', '1', 'nurfatimahwulan1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0142', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:03:05'),
(216, '180100022', 'FATONI', '1', 'fatoniad4661ep@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-01-01', 'JT-0131', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:44:53'),
(217, '180300062', 'BAGUS AJIE WICAKSONO', '2', 'baguswicaksono.ajie@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-03-14', 'JT-0047', 'DV_0002', 'CG_0022', 'DP-0008', 'SDP-0022', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:26:22'),
(218, '180500114', 'EUIS DIAN ANGGRAENI', '1', 'diandie20@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-05-01', 'JT-0093', 'DV_0001', 'CG_0016', 'DP-0007', 'SDP-0019', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:14:18'),
(219, '180500115', 'RIDWAN NUGRAHA', '1', 'iniridwan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-05-01', 'JT-0089', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 01:27:04'),
(220, '180500116', 'MUHAMAD ALFIAN', '1', 'alfianneivi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-05-01', 'JT-0029', 'DV_0001', 'CG_0026', 'DP-0004', 'SDP-0010', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-18 02:18:36'),
(221, '180600122', 'BERNADHETA RISMISARI HANDAYANI', '1', 'chalierismisari8870@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-06-04', 'JT-0048', NULL, NULL, 'DP-0008', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '180700142', 'SANITA', '1', 'asanita100@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-07-01', 'JT-0079', 'DV_0001', 'CG_0001', 'DP-0004', 'SDP-0009', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-20 00:09:44'),
(223, '180700143', 'AKHMAD YUNUS YULIANTO', '1', 'yunusrasta.ay@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-07-01', 'JT-0131', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:50:08'),
(224, '190100054', 'TATA TAOFIK QUROHMAN', '1', 'tatataofik77@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-01-01', 'JT-0098', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:31:47'),
(225, '190700187', 'MAHMUD FAUJI TANJUNG', '2', 'mochi191191@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-08-19', 'JT-0040', 'DV_0001', 'CG_0015', 'DP-0004', 'SDP-0010', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:31:30'),
(226, '200100017', 'TEGUH SEJATI', '1', 'blinyob@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-01-02', 'JT-0055', 'DV_0002', 'CG_0019', 'DP-0009', 'SDP-0032', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:23:29'),
(227, '200100031', 'WINDY ADRIANY KACARIBU', '3', 'windykacaribu23@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-01-20', 'JT-0102', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0023', 'LV-0005', NULL, 'JeoX1pP9wIP0B3n.png', NULL, NULL, '2022-05-22 06:52:17'),
(228, '200100042', 'MUSTAGHBIRIN', '1', 'mustaghbirin@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-01-01', 'JT-0125', 'DV_0001', 'CG_0006', 'DP-0006', 'SDP-0017', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 04:30:00'),
(229, '200200053', 'MUHAMAD MISBAH', '1', 'muhamadmisbah96@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-02-01', 'JT-0098', 'DV_0001', 'CG_0004', 'DP-0007', 'SDP-0020', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 01:32:23'),
(230, '200300076', 'MARIA KURNIATI GEDI RAYA', '3', 'maria.kurniati04@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-03-26', 'JT-0069', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0021', 'LV-0005', NULL, '0p0aUj5lyq9j05L.png', NULL, NULL, '2022-05-29 20:14:27'),
(231, '200500092', 'IRVAN HASAN', '1', 'irvanhasan18@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-05-15', 'JT-0068', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '200700143', 'TENDI SOBARNANSYAH', '1', 'sobarnansyah@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-10-15', 'JT-0064', 'DV_0001', 'CG_0017', 'DP-0005', 'SDP-0011', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-20 02:19:56'),
(233, '200700144', 'MUHAMAD RIDWAN', '1', 'muhamadridwan133@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-11-15', 'JT-0130', 'DV_0001', 'CG_0018', 'DP-0006', 'SDP-0015', 'LV-0010', NULL, NULL, NULL, NULL, '2022-05-22 04:49:28'),
(234, '201200194', 'DENLEI DIYOROSSI', '1', 'diyorossi@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-12-29', 'JT-0055', 'DV_0002', 'CG_0019', 'DP-0009', 'SDP-0032', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 05:21:53'),
(361, '210100004', 'SETYO DEWI UTARI', '2', 'setyod@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-01-01', 'JT-0153', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0023', 'LV-0004', NULL, '0AC1PXZek3D8gnI.png', NULL, NULL, '2022-06-01 18:49:13'),
(362, '210100024', 'SARI DIYAH PALUPY', '1', 'saridpha@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-01-15', 'JT-0016', 'DV_0002', 'CG_0020', 'DP-0002', 'SDP-0003', 'LV-0005', NULL, NULL, NULL, NULL, '2022-05-22 21:44:10'),
(363, '211200171', 'TOSHIHITO  ABE', '1', 'abe@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-01-05', 'JT-0113', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '220100111', 'KUKUH GUMILANG', '1', 'kukuh_gumilDP-0001@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-01-01', 'JT-0033', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '220100112', 'HENDY CAHYA SUWANDI', '1', 'hendy.cahya18@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-01-01', 'JT-0098', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'K180700223', 'NATALIA SUMANTO SIHOMBING', '3', 'natalie.magdalena@ymail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2018-07-01', 'JT-0071', 'DV_0002', 'CG_0011', 'DP-0008', 'SDP-0021', 'LV-0009', NULL, 'ujYZUDH9H04HR91.png', NULL, NULL, '2022-05-29 20:15:35'),
(367, 'K190100004', 'DIANTO', '1', 'diantoasgar@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-01-07', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'K190400185', 'BASUKI', '1', 'masuki843@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-04-22', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'K190600252', 'AHMAD LUKMAN HATAMI', '1', 'ahmadlkm24@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-06-17', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'K190800327', 'MUHAMMAD RIZQY FIRDAUS', '1', 'm.rizqyfirdaus23@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-08-26', 'JT-0050', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'K190900331', 'RAKHA ADI PUTRA', '1', 'adiputrarakha@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-09-09', 'JT-0086', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'K191000365', 'SAIDIN IMRON WIJAYA', '1', 'saidinimronwijaya1213@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-10-14', 'JT-0135', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'K191100391', 'ANJAR SUDRAJAT', '1', 'anjar.sudrajat378@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-11-04', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'K191100397', 'BIMA DWI ATMAJA', '1', 'bimaatmaja699@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2019-11-18', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'K200200052', 'DANANG PRASETIYO', '1', 'danangpras2105@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-02-10', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'K200300084', 'DANIEL ABRAHAM SINAMBELA', '1', 'danielabraham0880@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-03-16', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'K200300085', 'NUR AHMAD BUKHORI AINUL YAQIN AL FAIZ', '1', 'faizbukhori82@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-03-16', 'JT-0127', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'K200300088', 'ANGGA SAEPUL HAJAN', '1', 'wawankurnia869@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-03-16', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'K200300089', 'DEDEN JAELANI', '1', 'dedenjaelani95@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-03-16', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'K200400107', 'ILHAM COKRO BASKORO', '1', 'ilhamcokrobaskoro@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-04-14', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'K200400108', 'ZAENUDIN', '1', 'zaenudinzae86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-04-14', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'K200500146', 'DIKA LESMANA', '1', 'dikalesmana1402@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-05-18', 'JT-0127', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'K200600145', 'DIAN HADIAN', '1', 'dhadian08@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-06-02', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'K200600151', 'NUKMANUL ANWAR', '1', 'nukman02pai@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-06-02', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'K200600153', 'TODO ARDO SINAGA', '1', 'todoardosinaga@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-06-02', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'K200600174', 'DENI HIMAWAN SUTANTO', '1', 'dhenny.hiimawan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-06-15', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'K200600176', 'RINO', '1', 'rinoreva2@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-06-12', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'K200700207', 'ADE RAHMAN', '1', 'aderahman690@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-07-10', 'JT-0109', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'K200700231', 'BUDI UTOYO', '1', 'budi.utoyo29@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-07-30', 'JT-0151', NULL, NULL, 'DP-0001', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'K200800227', 'M. ALDI LA MUCHTAR', '1', 'utiahafajar21@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-08-03', 'JT-0009', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'K200800232', 'ADIKA TRYPUTRANTO', '1', 'adikatry74@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-08-18', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'K200800233', 'DEDE ISKANDAR', '1', 'iskandardede400@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-08-18', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'K200800240', 'GUSTINA LASMAYANTI', '1', 'gustinalasmayanti@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-08-18', '', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'K200800241', 'AJI APRIALDI', '1', 'aji98sarah97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-08-18', 'JT-0064', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'K200900258', 'DIKI MAULANA', '1', 'dikim2331@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-09-10', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'K200900259', 'MOHAMAD YUDI PERMANA', '1', 'mohamadyudipermana97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-09-14', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'K200900262', 'AHMAD MUDDAI', '1', 'ahmadmuddai.am@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-09-15', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'K201000279', 'EKKY MUHAMMAD RIZKULLAH', '1', 'ekkymuhammad1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-09', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'K201000285', 'DAVIDS', '1', 'davidssiburian25@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-16', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'K201000286', 'IQBAL SYAHRINDRA MUSTOPA', '1', 'iqbalsyahrindra00@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-16', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'K201000287', 'DWI KARTIKA', '1', 'dwikartika165@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-15', 'JT-0101', 'DV_0002', 'CG_0022', 'DP-0008', 'SDP-0022', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-17 19:47:12'),
(402, 'K201000295', 'ANGGRI PRIWANDA', '1', 'crossanggri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-26', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'K201000296', 'AHMAD KHAERUL FIKRI', '1', 'ahmadkhaerulfikri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-26', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'K201000297', 'DENDI PRIMADI', '1', 'dendiprimadi94@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-10-26', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'K201100303', 'AGUS WIDIYANTO', '1', 'widiyantoagus0@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-11-16', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'K201100306', 'SARAH SANUBARI', '1', 'sanubarisarah85@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-11-09', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'K201100308', 'MASTANI', '1', 'mastani925@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-11-16', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'K201100309', 'MUHAMAD AKMAL AZIIZ', '1', 'm.akmal11a@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-11-16', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'K201100311', 'ARI DESAR PAMUNGKAS', '1', 'aridesar1995@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-11-23', 'JT-0028', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'K201200336', 'HERU TRI MARDIAN', '1', 'heruezt3@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2020-12-16', 'JT-0135', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'K210100001', 'ZAKARIA', '1', 'zakariabrebes@yahoo.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-01-11', 'JT-0127', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'K210100003', 'DINA OKTAVIA PUTRI', '1', 'dinaoktaviaputri@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-01-11', 'JT-0117', 'DV_0002', 'CG_0021', 'DP-0002', 'SDP-0002', 'LV-0009', NULL, NULL, NULL, NULL, '2022-05-22 21:45:34'),
(413, 'K210100026', 'GITA SYEMA DEWI', '1', 'gitasyemad@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-01-25', 'JT-0093', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'K210200048', 'SETIA MAULANA', '1', 'setiamaulana81@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-02-16', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'K210200049', 'ABI YOGA ASMARA', '1', 'abiyogaasmara4@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-02-16', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'K210200050', 'HISAR DESMON SINAGA', '1', 'hisardesmonsinaga@yahoo.co.id', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-02-16', 'JT-0019', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'K210200054', 'AHMAD', '1', 'ahmaddoang912@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-02-22', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'K210200062', 'DEDEN RUHDIANTO', '1', 'dedenruhdianto07@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-02-22', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'K210300077', 'KHONSA', '1', 'khonsa.sasa@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-10', 'JT-0139', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'K210300079', 'RUSTA RUSDIANTO', '1', 'rustarusdianto295@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-10', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'K210300080', 'ABDUL KHARIS', '1', 'abdulkharis994@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-10', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'K210300086', 'ENJAY ZARKASIH', '1', 'enjayzarkasih100@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-23', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'K210300098', 'LUKMAN NULHAKIM', '1', 'lukmann275@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-24', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'K210300099', 'SAUD SIHOMBING', '1', 'joshuasniky24@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-03-24', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'K210400104', 'ODI NANDANG SOMANTRI', '1', 'odinandang43@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-04-05', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'K210400107', 'ALI RAMDANI', '1', 'aramdani312@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-04-05', 'JT-0030', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'K210400108', 'MUHAMAD ADE SUJAI', '1', 'muhamadadesujai12@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-04-07', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'K210500153', 'DIKA SUHARTA', '1', 'dika.suharta@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-05-18', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'K210500154', 'IMAN SANDI', '1', 'imansandi97@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-05-18', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'K210500161', 'ANGGI IRWANSYAH', '1', 'anggiirwansyah86@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-05-19', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'K210600175', 'UBAIDILAH ALI MURTADHO', '1', 'ubaidilahalimurtadho@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-06-07', 'JT-0084', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'K210600177', 'TAUFIK HIDAYAT TUMARUF', '1', 'taufikhidayatumaruf92@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-06-11', 'JT-0136', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'K210700205', 'DANI ENDAR MULYANA', '1', 'daniendar12@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-07-08', 'JT-0132', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'K210700211', 'MUHAMMAD ALFIN BASYAR', '1', 'alvinbasyar1@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-07-19', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'K210900224', 'IRFAN SUHEGAR', '1', 'irfansiregar220518@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-09-01', '', NULL, NULL, 'DP-0005', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'K210900227', 'YOSA NIZAR FERNANTA', '1', 'yosanizar06@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-09-13', 'JT-0006', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'K211000233', 'ANDI MUNTAHA', '1', 'andimuntaha26@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-10-13', 'JT-0123', NULL, NULL, 'DP-0006', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'K211200252', 'NASRULLOH', '1', 'nasrulloh580@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2021-12-01', 'JT-0099', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'K220200009', 'DEDE HERIYANTO', '1', 'deheriyanto01@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-02-03', 'JT-0094', NULL, NULL, 'DP-0007', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'K220200017', 'MULYANA', '1', 'akewcsipittea@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-02-07', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'K220200018', 'HENDI', '1', 'hendisuhendix@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-02-07', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'K220200025', 'ROBI SUPRIADI', '1', 'robisupriadi185@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-02-24', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'K220200026', 'ASEP JAMALUDIN', '1', 'asepjamaludin454@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-02-24', 'JT-0104', NULL, NULL, 'DP-0004', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'K220300040', 'ASEP SETIAWAN', '1', 'im.asepsetiawan@gmail.com', NULL, '$2a$10$kQdT1DPvsC6WLFqc7gLOd.VNmc1bKPkhoL0.f97x13qzaaw3R8/VC', '2022-03-07', 'JT-0086', NULL, NULL, 'DP-0003', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
('0SYEC1653278362', 218, 2, 0, 1),
('1IAH81653951932', 338, 2, 1, 3),
('2fwyz1653961584', 356, 230, 2, 4),
('2jV3l1653961584', 260, 230, 1, 3),
('6ANsm1653451601', 253, 1, 1, 4),
('71nFb1653963523', 368, 227, 1, 3),
('7eeXy1649145212', 134, 1, 0, 1),
('Apik61653961553', 337, 1, 1, 4),
('asePq1650418519', 204, 361, 1, 4),
('bOaAZ1653961533', 325, 361, 2, 4),
('CQLn11653623020', 266, 227, 0, 3),
('dNlBX1653961533', 349, 361, 2, 3),
('EffT91653951932', 284, 2, 1, 3),
('esDzM1653963523', 296, 227, 4, 4),
('G19xV1653961533', 415, 361, 2, 3),
('GCCjS1653961553', 307, 1, 1, 3),
('huRdS1653961533', 301, 361, 3, 4),
('II1oM1650338788', 198, 2, 2, 3),
('k06UO1653963523', 320, 227, 2, 4),
('K7ZBD1653961584', 386, 230, 2, 4),
('lA6JP1653951932', 308, 2, 1, 3),
('LegQz1653961553', 397, 1, 2, 2),
('mo8B61653961553', 283, 1, 2, 3),
('NGzoF1653961584', 404, 230, 2, 4),
('Nkip51653961584', 314, 230, 2, 4),
('p2co41649145212', 152, 1, 0, 1),
('PjwL21653963523', 422, 227, 1, 3),
('R5fuv1653961584', 272, 230, 1, 4),
('SHkcx1653358498', 229, 1, 0, 1),
('SWrxk1649384942', 200, 1, 0, 5),
('u2lnE1653961584', 290, 230, 2, 4),
('vG4dv1653278340', 217, 1, 3, 5),
('vuXTa1653963523', 410, 227, 2, 3),
('W23B81653963523', 278, 227, 2, 4),
('waF7h1653963523', 344, 227, 2, 3),
('Wh6jb1653963523', 392, 227, 2, 4),
('wld2O1653951932', 332, 2, 2, 4),
('Y2Ygk1653961553', 331, 1, 1, 3),
('yb6bI1653951932', 254, 2, 0, 3),
('Zj4bu1653961584', 362, 230, 3, 4);

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
-- Indexes for table `competencie_groups`
--
ALTER TABLE `competencie_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competencie_groups_id_skill_category_foreign` (`id_skill_category`);

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
-- Indexes for table `targets`
--
ALTER TABLE `targets`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id_directory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT for table `competencie_groups`
--
ALTER TABLE `competencie_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id_curriculum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `curriculum_to_job`
--
ALTER TABLE `curriculum_to_job`
  MODIFY `id_ctb` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `job_title_users`
--
ALTER TABLE `job_title_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id_taging_reason` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `targets`
--
ALTER TABLE `targets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `competencie_groups`
--
ALTER TABLE `competencie_groups`
  ADD CONSTRAINT `competencie_groups_id_skill_category_foreign` FOREIGN KEY (`id_skill_category`) REFERENCES `skill_category` (`id_skill_category`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
