-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jan 2019 pada 13.29
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'superadmin', '21232F297A57A5A743894A0E4A801FC3', 'superadmin', ''),
(2, 'penduduk', '0ae60711d957cb3539d536bf9d5693e1', 'penduduk', 'gambar_admin/_DSC0111.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kematian`
--

CREATE TABLE `data_kematian` (
  `id_kematian` int(11) NOT NULL,
  `tgl_mati` date NOT NULL,
  `tmpt_makam` text NOT NULL,
  `nama_pelapor` varchar(50) NOT NULL,
  `nik_pelapor` varchar(50) NOT NULL,
  `hubungan_pelapor` varchar(50) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `bln_create` varchar(10) NOT NULL,
  `thn_create` varchar(10) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kk`
--

CREATE TABLE `data_kk` (
  `no_kk` varchar(20) NOT NULL,
  `nama_kepalakeluarga` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `desakelurahan` varchar(50) NOT NULL,
  `rtrw` varchar(10) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupatenkota` varchar(50) NOT NULL,
  `kodepos` int(6) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_kk`
--

INSERT INTO `data_kk` (`no_kk`, `nama_kepalakeluarga`, `alamat`, `desakelurahan`, `rtrw`, `kecamatan`, `kabupatenkota`, `kodepos`, `provinsi`, `nik`, `tgl_create`, `tgl_edit`, `admin`) VALUES
('121111', 'uuett', 'dgdggd', 'dggddg', 'dfd', 'dgdgdg', 'dfdf', 0, 'dsdsd', '3910029919911', '0000-00-00', '0000-00-00', 'superadmin'),
('2323232323', 'masrurio', 'erere', 'dsdsdsd', 'dsdsdsd', '87987897', 'dssdsdsd', 0, 'dsdssdsd', '12121', '2019-01-21', '2019-01-21', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_migrasi`
--

CREATE TABLE `data_migrasi` (
  `id_migrasi` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `agama` enum('islam','protestan','katolik','hindu','budha','konghuchu','lain') NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `status` enum('kawin','belum_kawin','duda','janda') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kewarganegaraan` enum('wni','wna') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `rtrw_asal` varchar(50) NOT NULL,
  `desa_asal` varchar(50) NOT NULL,
  `kecamatan_asal` varchar(50) NOT NULL,
  `kabupaten_asal` varchar(50) NOT NULL,
  `provinsi_asal` varchar(100) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `rtrw_domisili` varchar(50) NOT NULL,
  `desa_domisili` varchar(50) NOT NULL,
  `kecamatan_domisili` varchar(50) NOT NULL,
  `kabupaten_domisili` varchar(50) NOT NULL,
  `provinsi_domisili` varchar(100) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_mutasi`
--

CREATE TABLE `data_mutasi` (
  `id_mutasi` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `agama` enum('islam','protestan','katolik','hindu','budha','konghuchu','lain') NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `status` enum('kawin','belum_kawin','duda','janda') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kewarganegaraan` enum('wni','wna') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `rtrw_mutasi` varchar(50) NOT NULL,
  `desa_mutasi` varchar(50) NOT NULL,
  `kecamatan_mutasi` varchar(50) NOT NULL,
  `kabupaten_mutasi` varchar(50) NOT NULL,
  `provinsi_mutasi` varchar(100) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `rtrw_domisili` varchar(50) NOT NULL,
  `desa_domisili` varchar(50) NOT NULL,
  `kecamatan_domisili` varchar(50) NOT NULL,
  `kabupaten_domisili` varchar(50) NOT NULL,
  `provinsi_domisili` varchar(100) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penduduk`
--

CREATE TABLE `data_penduduk` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `rtrw` varchar(10) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupatenkota` varchar(100) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `agama` enum('islam','protestan','katolik','hindu','budha','konghuchu','lain') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `pendidikan` text NOT NULL,
  `kewarganegaraan` enum('wni','wna') NOT NULL,
  `status` enum('kawin','belum_kawin') NOT NULL,
  `status_keluarga` enum('kepala keluarga','istri','anak','famili lain') NOT NULL,
  `ket` varchar(20) NOT NULL DEFAULT 'hidup',
  `asal` enum('asli','pendatang','pergi') NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `nomor_kk` varchar(100) NOT NULL,
  `no_paspor` varchar(50) NOT NULL,
  `no_kitaskitap` varchar(50) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_penduduk`
--

INSERT INTO `data_penduduk` (`nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `rtrw`, `desa`, `kecamatan`, `kabupatenkota`, `provinsi`, `agama`, `pekerjaan`, `pendidikan`, `kewarganegaraan`, `status`, `status_keluarga`, `ket`, `asal`, `nama_ibu`, `pekerjaan_ibu`, `nama_ayah`, `pekerjaan_ayah`, `nomor_kk`, `no_paspor`, `no_kitaskitap`, `tgl_create`, `tgl_edit`, `admin`) VALUES
('12121', 'masrurii', 'trgfg', '2017-11-19', 'laki-laki', 'erere', 'dsdsdsd', 'dsdsdsd', '87987897', 'dssdsdsd', 'dsdssdsd', 'protestan', 'reererer', 'sad', 'wna', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'rerer', 'dsds', 'reere', 'rerer', '2323232323', 'dsdsd', 'dsds', '2019-01-21', '2019-01-21', 'superadmin'),
('26188201002919', 'Dimas', 'Kebumen', '1996-10-19', 'laki-laki', 'jalan kebangsaan', '09/01', 'kelepu', 'kebumen', 'kebumen', 'kebumen', 'islam', 'Buruh', 'SMK', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'asminah', 'IRT', 'kolidin', 'petani', '32322', '-', '-', '2019-01-21', '2019-01-21', 'superadmin'),
('3891971793083', 'budi', 'Bantul', '1995-11-10', 'laki-laki', 'jalan bantul', '07/09', 'panggang', 'bantul', 'bantul', 'bantul', 'hindu', 'dagang', 'SMP', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'tini', 'IRT', 'herman', 'dosen', '98989', '-', '-', '2019-01-21', '2019-01-21', 'superadmin'),
('3910029919911', 'Firman', 'Sleman', '1995-11-08', 'laki-laki', 'jalan kaliurang', '08/01', 'gumbbung', 'patuk', 'Sleman', 'DIY', 'protestan', 'Buruh', 'SMK', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'minah', 'IRT', 'saidin', 'nelayan', '121111', '-', '-', '2019-01-21', '2019-01-21', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `help`
--

CREATE TABLE `help` (
  `id` int(225) NOT NULL,
  `task` varchar(200) NOT NULL,
  `tutorial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `help`
--

INSERT INTO `help` (`id`, `task`, `tutorial`) VALUES
(1, 'demo', 'http://www.youtube.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(225) NOT NULL,
  `action` text NOT NULL,
  `waktu` datetime NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `action`, `waktu`, `user`) VALUES
(1, 'update anggota KK', '2019-01-21 09:41:55', 'superadmin'),
(2, 'update anggota KK', '2019-01-21 09:43:38', 'superadmin'),
(3, 'input anggota KK', '2019-01-21 09:44:13', 'superadmin'),
(4, 'Edit penduduk', '2019-01-21 09:47:51', 'superadmin'),
(5, 'Edit penduduk', '2019-01-21 09:48:01', 'superadmin'),
(6, 'Edit penduduk', '2019-01-21 10:02:47', 'superadmin'),
(7, 'Edit penduduk', '2019-01-21 10:02:57', 'superadmin'),
(8, 'Edit penduduk', '2019-01-21 10:03:31', 'superadmin'),
(9, 'Edit penduduk', '2019-01-21 10:49:24', 'superadmin'),
(10, 'Edit penduduk', '2019-01-21 10:50:37', 'superadmin'),
(11, 'Edit KK', '2019-01-21 10:55:12', 'superadmin'),
(12, 'Edit KK', '2019-01-21 10:57:04', 'superadmin'),
(13, 'Edit kelahiran', '2019-01-21 11:04:22', 'superadmin'),
(14, 'Edit kelahiran', '2019-01-21 11:05:10', 'superadmin'),
(15, 'Edit kelahiran', '2019-01-21 11:05:45', 'superadmin'),
(16, 'Edit kelahiran', '2019-01-21 11:05:57', 'superadmin'),
(17, 'input data kelahiran', '2019-01-21 11:07:55', 'superadmin'),
(18, 'Input Kematiaan', '2019-01-21 11:09:45', 'superadmin'),
(19, 'Update Kematiaan', '2019-01-21 11:09:45', 'superadmin'),
(20, 'Input Kematiaan', '2019-01-21 11:40:26', 'superadmin'),
(21, 'Update Kematiaan', '2019-01-21 11:40:26', 'superadmin'),
(22, 'Input Kematiaan', '2019-01-21 11:49:38', 'superadmin'),
(23, 'Update Kematiaan', '2019-01-21 11:49:38', 'superadmin'),
(24, 'Input Kematiaan', '2019-01-21 11:51:49', 'superadmin'),
(25, 'Update Kematiaan', '2019-01-21 11:51:49', 'superadmin'),
(26, 'Input Kematiaan', '2019-01-21 11:55:14', 'superadmin'),
(27, 'Update Kematiaan', '2019-01-21 11:55:14', 'superadmin'),
(28, 'Input Kematiaan', '2019-01-21 11:56:26', 'superadmin'),
(29, 'Update Kematiaan', '2019-01-21 11:56:26', 'superadmin'),
(30, 'Input Kematiaan', '2019-01-21 12:09:43', 'superadmin'),
(31, 'Update Kematiaan', '2019-01-21 12:09:43', 'superadmin'),
(32, 'Input Kematiaan', '2019-01-21 12:11:24', 'superadmin'),
(33, 'Update Kematiaan', '2019-01-21 12:11:24', 'superadmin'),
(34, 'Input Kematiaan', '2019-01-21 12:12:59', 'superadmin'),
(35, 'Update Kematiaan', '2019-01-21 12:12:59', 'superadmin'),
(36, 'Input Kematiaan', '2019-01-21 12:21:17', 'superadmin'),
(37, 'Update Kematiaan', '2019-01-21 12:21:17', 'superadmin'),
(38, 'Edit kematian', '2019-01-21 12:24:36', 'superadmin'),
(39, 'Input Migrasi', '2019-01-21 12:39:59', 'superadmin'),
(40, 'Input Migrasi', '2019-01-21 12:53:04', 'superadmin'),
(41, 'Edit Migrasi', '2019-01-21 12:58:28', 'superadmin'),
(42, 'update anggota KK', '2019-01-21 13:00:44', 'superadmin'),
(43, 'Edit Mutasi', '2019-01-21 13:05:39', 'superadmin'),
(44, 'Edit profil desa', '2019-01-21 13:05:53', 'superadmin'),
(45, 'Edit penduduk', '2019-01-21 13:17:41', 'superadmin'),
(46, 'Edit penduduk', '2019-01-21 13:20:14', 'superadmin'),
(47, 'Edit penduduk', '2019-01-21 13:23:07', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_desa`
--

CREATE TABLE `profil_desa` (
  `id` int(11) NOT NULL,
  `kepaladesa` varchar(200) NOT NULL,
  `desa` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kecamatan` varchar(250) NOT NULL,
  `kabupaten` varchar(250) NOT NULL,
  `provinsi` varchar(250) NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil_desa`
--

INSERT INTO `profil_desa` (`id`, `kepaladesa`, `desa`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`, `tgl_edit`, `admin`) VALUES
(14, 'salman', 'warungboto', 'jl veteran no 30', 'umbulharjo', 'Yogyakarta', 'DIY', '2019-01-21', 'superadmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `data_kematian`
--
ALTER TABLE `data_kematian`
  ADD PRIMARY KEY (`id_kematian`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `data_kk`
--
ALTER TABLE `data_kk`
  ADD PRIMARY KEY (`no_kk`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `data_migrasi`
--
ALTER TABLE `data_migrasi`
  ADD PRIMARY KEY (`id_migrasi`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `data_mutasi`
--
ALTER TABLE `data_mutasi`
  ADD PRIMARY KEY (`id_mutasi`),
  ADD KEY `nik` (`nik`);

--
-- Indexes for table `data_penduduk`
--
ALTER TABLE `data_penduduk`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil_desa`
--
ALTER TABLE `profil_desa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_kematian`
--
ALTER TABLE `data_kematian`
  MODIFY `id_kematian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `data_migrasi`
--
ALTER TABLE `data_migrasi`
  MODIFY `id_migrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_mutasi`
--
ALTER TABLE `data_mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `profil_desa`
--
ALTER TABLE `profil_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_kematian`
--
ALTER TABLE `data_kematian`
  ADD CONSTRAINT `data_kematian_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_kk`
--
ALTER TABLE `data_kk`
  ADD CONSTRAINT `data_kk_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_migrasi`
--
ALTER TABLE `data_migrasi`
  ADD CONSTRAINT `data_migrasi_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_mutasi`
--
ALTER TABLE `data_mutasi`
  ADD CONSTRAINT `data_mutasi_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
