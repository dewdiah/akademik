-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 08:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `siswa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nominal_bayar` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `id_rombel` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `nama_rombel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `jurusan` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nama_wali_kelas` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rombel`
--

INSERT INTO `rombel` (`id_rombel`, `nama_rombel`, `jurusan`, `nama_wali_kelas`) VALUES
('x101', 'X TKJ 1', 'TKJ', 'Slamet Riyadi'),
('x102', 'X TKJ 2', 'TKJ', 'Suparno'),
('x201', 'X TOI 1', 'TOI', 'Sahlan'),
('x202', 'X TOI 2', 'TOI', 'Sudiyono'),
('x301', 'X Multimedia 1', 'Multimedia', 'Arif Jumarwanto'),
('x302', 'X Multimedia 2', 'Multimedia', 'Zaenal Abidin'),
('x401', 'X TKR 1', 'TKR', 'Wahyu Triambodo'),
('x402', 'X TKR 2', 'TKR', 'Doni Irnawan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `nama_siswa` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `alamat_siswa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nama_ortu` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `asal_smp` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `alamat_siswa`, `nama_ortu`, `asal_smp`) VALUES
('1401', 'Angga Irwana', 'Pati', 'Budi', 'SMP 2 Gunungwungkal'),
('1402', 'Anggi Puspita', 'Pati', 'Wawan', 'SMP 2 Gunungwungkal'),
('1403', 'Alan Wicaksono', 'Pati', 'Surya', 'SMP 2 Gunungwungkal'),
('1404', 'Budi Dayan', 'Pati', 'Danang', 'SMP 2 N Pati'),
('1405', 'Bagus', 'Pati', 'Arif', 'SMP 3 N Pati'),
('1406', 'Bagas', 'Demak', 'Chandra', 'SMP 4 N Pati'),
('1407', 'Citra Kamilia', 'Pati', 'Sudrajat', 'SMP 3 N Pati'),
('1408', 'Cindy Eka', 'Pati', 'Rohman', 'SMP 4 N Pati'),
('1409', 'Doni Winarta', 'Pati', 'Johan Winarta', 'SMP 3 N Pati'),
('1410', 'Dita Puspita', 'Pati', 'Firman', 'SMP 6 N Pati');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`id_rombel`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
