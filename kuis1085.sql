-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 13 Des 2017 pada 16.37
-- Versi Server: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuis1085`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas_1085`
--

CREATE TABLE `identitas_1085` (
  `id` bigint(20) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `nohp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `identitas_1085`
--

INSERT INTO `identitas_1085` (`id`, `alamat`, `kelas`, `nama`, `nohp`) VALUES
(1, 'Jl. Rowo Sari ', '3 TI A ', 'Wahyu ', '085363624624');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ipk_1085`
--

CREATE TABLE `ipk_1085` (
  `id` bigint(20) NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `identitas_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ipk_1085`
--

INSERT INTO `ipk_1085` (`id`, `jurusan`, `nama`, `prodi`, `identitas_id`) VALUES
(1, 'Komputer', 'Wahyu', 'Teknik Informatika', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `identitas_1085`
--
ALTER TABLE `identitas_1085`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_knyp738uuu4peq0is3tihg4jl` (`nama`);

--
-- Indexes for table `ipk_1085`
--
ALTER TABLE `ipk_1085`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_lhfcurg5v0ti57ncgoy1d4eou` (`nama`),
  ADD KEY `FKoli19fyy5o4xqwnwjowe9enjk` (`identitas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas_1085`
--
ALTER TABLE `identitas_1085`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ipk_1085`
--
ALTER TABLE `ipk_1085`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ipk_1085`
--
ALTER TABLE `ipk_1085`
  ADD CONSTRAINT `FKoli19fyy5o4xqwnwjowe9enjk` FOREIGN KEY (`identitas_id`) REFERENCES `identitas_1085` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
