-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 16, 2026 at 02:35 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pwd_2611500008`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak_2611500008`
--

CREATE TABLE `tbl_kontak_2611500008` (
  `id` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `semester` tinyint DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_pesan` varchar(20) DEFAULT NULL,
  `minat` varchar(50) DEFAULT NULL,
  `prodi` varchar(2) DEFAULT NULL,
  `pesan` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_kontak_2611500008`
--

INSERT INTO `tbl_kontak_2611500008` (`id`, `nama`, `email`, `semester`, `tanggal`, `jenis_pesan`, `minat`, `prodi`, `pesan`) VALUES
(1, 'Budi Santoso', 'budi@mail.com', 1, '2026-11-16', 'pertanyaan', 'HTML, CSS', 'TI', 'Halo, ini percobaan'),
(2, 'Andi', 'andi@example.com', 2, '2026-11-15', 'pertanyaan', 'HTML, CSS', 'TI', 'Saya ingin belajar pemrograman web.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kontak_2611500008`
--
ALTER TABLE `tbl_kontak_2611500008`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kontak_2611500008`
--
ALTER TABLE `tbl_kontak_2611500008`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
