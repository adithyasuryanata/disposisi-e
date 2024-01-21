-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 06:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_from` varchar(100) NOT NULL,
  `surat_to` varchar(100) NOT NULL,
  `tgl_terima` timestamp NOT NULL DEFAULT current_timestamp(),
  `perihal` text NOT NULL,
  `keterangan` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'no_image.jpg',
  `status` varchar(30) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_surat_masuk`
--

INSERT INTO `tb_surat_masuk` (`id`, `no_surat`, `tgl_surat`, `surat_from`, `surat_to`, `tgl_terima`, `perihal`, `keterangan`, `image`, `status`, `user_id`, `is_active`) VALUES
(1, '01/I/2024', '2024-01-14', 'SMK 2 Banjarmasin', 'Pimpinan PT', '2024-01-13 16:00:00', 'Pengajuan Dana', 'Bantuan Sosial', '01I2024.png', '', 0, 1),
(2, '02/I/2024', '2024-01-14', 'PT. KDP', 'Pimpinan PT. Sukses Lestari', '2024-01-13 16:00:00', 'Pengajuan Kerjasama', 'Kerjasama Dalam Rangka Sumber Daya Karyawan', '02I2024.png', '', 0, 1),
(3, '03/I/2024', '2024-01-16', 'adsasdas', 'asdasda', '2024-01-15 16:00:00', 'Kerjasama Tingkat Lanjut', 'Kunjungan Sekolah SMK', '03I2024.jpg', '', 0, 1),
(4, '04/I/2024', '2024-01-15', 'PT. KDP', 'PT. Agro Lestari', '2024-01-14 16:00:00', 'Permohonan Bantuan', 'Permohonan Bantuan', '04I2024.jpg', '', 0, 1),
(6, '05/I/2024', '2024-01-17', 'PT. MPP', 'Sembarang', '2024-01-16 16:00:00', 'Pengajuan Kerjasama', 'Sudah Oke', '05I2024.png', '', 0, 1),
(15, '06/I/2024', '2024-01-18', 'dassdada', 'asdadsa', '2024-01-17 16:00:00', 'sdadasdas', 'asdada', '06I2024.png', NULL, 1, 1),
(21, '07/I/2024', '2024-01-19', 'Saya', 'Dia', '2024-01-18 16:00:00', 'Test', 'Cukup', '07I2024.jpg', NULL, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_template_surat`
--

CREATE TABLE `tb_template_surat` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tujuan_surat` varchar(60) NOT NULL,
  `tgl_kirim` datetime NOT NULL,
  `perihal` varchar(150) NOT NULL,
  `keterangan` text NOT NULL,
  `is_active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `role` enum('Admin','Sekretaris') NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `email`, `full_name`, `phone`, `role`, `last_login`, `is_active`) VALUES
(1, 'Adithya', '$2y$10$gE70ynCtzZVBuGga0MYKxOU5i35dgpogGOK6WcVwB9HpN1ClFqFXC', 'adithya@gmail.com', 'Adithya Suryanata Winardi', '089523236137', 'Admin', '2024-01-19 08:52:01', 1),
(2, 'Sya', '$2y$10$dlecGVEDysjEaC9ZQF.kOOMpVWCpxVMFWqdlhSWHhQTbe8RvwJ4xm', 'sya@gmail.com', 'Syaaa', '089537128123', 'Sekretaris', '2024-01-19 08:04:02', 1),
(5, 'Ujang', '$2y$10$gE70ynCtzZVBuGga0MYKxOU5i35dgpogGOK6WcVwB9HpN1ClFqFXC', 'ujang@gmail.com', 'Ujang Jee', '213213123217', 'Admin', '2024-01-19 08:37:32', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_template_surat`
--
ALTER TABLE `tb_template_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_template_surat`
--
ALTER TABLE `tb_template_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
