-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 04:39 PM
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
-- Database: `simadu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(5) NOT NULL,
  `id_perusahaan` int(5) NOT NULL,
  `nama_fasilitas` varchar(30) DEFAULT NULL,
  `jenis_fasilitas` varchar(20) DEFAULT NULL,
  `ketersediaan` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id_level` int(3) NOT NULL,
  `access` varchar(15) DEFAULT NULL,
  `level_access` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peraturan_perusahaan`
--

CREATE TABLE `peraturan_perusahaan` (
  `id_pp` int(5) NOT NULL,
  `id_perusahaan` int(5) NOT NULL,
  `no_register` varchar(15) DEFAULT NULL,
  `masa_berlaku` date DEFAULT NULL,
  `no_pencatatan` varchar(15) DEFAULT NULL,
  `tanggal_berlaku` date DEFAULT NULL,
  `file` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perjanjian_kerja`
--

CREATE TABLE `perjanjian_kerja` (
  `id_pk` int(5) NOT NULL,
  `id_perusahaan` int(5) NOT NULL,
  `nama_tk` varchar(30) DEFAULT NULL,
  `lokasi_kerja` varchar(30) DEFAULT NULL,
  `alamat_tk` varchar(50) DEFAULT NULL,
  `nik_tk` int(16) DEFAULT NULL,
  `bpjs_tk` varchar(20) DEFAULT NULL,
  `bpjs_k` varchar(20) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `upah` int(10) DEFAULT NULL,
  `masa_berlaku_pk` date DEFAULT NULL,
  `pencatatan_awal` date DEFAULT NULL,
  `status_pk` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perselisihan`
--

CREATE TABLE `perselisihan` (
  `id_perselisihan` int(5) NOT NULL,
  `tanggal_aduan` date DEFAULT NULL,
  `id_perusahaan` int(5) NOT NULL,
  `nama_pelapor` varchar(30) DEFAULT NULL,
  `no_hp_pelapor` int(15) DEFAULT NULL,
  `jumlah_laki` int(5) DEFAULT NULL,
  `jumlah_perempuan` int(5) DEFAULT NULL,
  `jenis_perselisihan` varchar(15) DEFAULT NULL,
  `tanggal_klarifikasi` date DEFAULT NULL,
  `tanggal_mediasi` date DEFAULT NULL,
  `hasil_mediasi` varchar(15) DEFAULT NULL,
  `id_staff` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(5) NOT NULL,
  `nama_perusahaan` varchar(35) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `jenis_usaha` varchar(30) DEFAULT NULL,
  `status_kantor` varchar(15) DEFAULT NULL,
  `no_hp_perusahaan` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phk`
--

CREATE TABLE `phk` (
  `id_phk` int(5) NOT NULL,
  `id_perusahaan` int(5) NOT NULL,
  `no_register` varchar(15) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlah_phk` int(5) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `keterangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serikat_pekerja`
--

CREATE TABLE `serikat_pekerja` (
  `id_sp` int(5) NOT NULL,
  `id_perusahaan` int(5) NOT NULL,
  `nama_sp` varchar(30) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `jumlah` int(5) DEFAULT NULL,
  `file_ad` varchar(10) DEFAULT NULL,
  `file_sk` varchar(10) DEFAULT NULL,
  `file_ba` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(5) NOT NULL,
  `nama_staff` int(30) DEFAULT NULL,
  `id_level` int(3) NOT NULL,
  `jabatan_staff` int(30) DEFAULT NULL,
  `password` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_sk` int(5) NOT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `perihal_surat` varchar(50) DEFAULT NULL,
  `tujuan_surat` varchar(30) DEFAULT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `id_staff` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_sm` int(5) NOT NULL,
  `asal_surat` varchar(30) DEFAULT NULL,
  `perihal_surat` varchar(50) DEFAULT NULL,
  `no_surat` varchar(20) DEFAULT NULL,
  `tanggal_terima` date DEFAULT NULL,
  `id_staff` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `peraturan_perusahaan`
--
ALTER TABLE `peraturan_perusahaan`
  ADD PRIMARY KEY (`id_pp`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `perjanjian_kerja`
--
ALTER TABLE `perjanjian_kerja`
  ADD PRIMARY KEY (`id_pk`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `perselisihan`
--
ALTER TABLE `perselisihan`
  ADD PRIMARY KEY (`id_perselisihan`),
  ADD KEY `id_staff` (`id_staff`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `phk`
--
ALTER TABLE `phk`
  ADD PRIMARY KEY (`id_phk`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `serikat_pekerja`
--
ALTER TABLE `serikat_pekerja`
  ADD PRIMARY KEY (`id_sp`),
  ADD KEY `id_perusahaan` (`id_perusahaan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_sk`),
  ADD KEY `id_staff` (`id_staff`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_sm`),
  ADD KEY `id_staff` (`id_staff`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_sk` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_sm` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD CONSTRAINT `fasilitas_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`);

--
-- Constraints for table `peraturan_perusahaan`
--
ALTER TABLE `peraturan_perusahaan`
  ADD CONSTRAINT `peraturan_perusahaan_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`);

--
-- Constraints for table `perjanjian_kerja`
--
ALTER TABLE `perjanjian_kerja`
  ADD CONSTRAINT `perjanjian_kerja_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`);

--
-- Constraints for table `perselisihan`
--
ALTER TABLE `perselisihan`
  ADD CONSTRAINT `perselisihan_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`),
  ADD CONSTRAINT `perselisihan_ibfk_2` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`);

--
-- Constraints for table `phk`
--
ALTER TABLE `phk`
  ADD CONSTRAINT `phk_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`);

--
-- Constraints for table `serikat_pekerja`
--
ALTER TABLE `serikat_pekerja`
  ADD CONSTRAINT `serikat_pekerja_ibfk_1` FOREIGN KEY (`id_perusahaan`) REFERENCES `perusahaan` (`id_perusahaan`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `level` (`id_level`);

--
-- Constraints for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `surat_keluar_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`);

--
-- Constraints for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD CONSTRAINT `surat_masuk_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id_staff`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
