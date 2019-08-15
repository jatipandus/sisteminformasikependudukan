-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2019 at 03:25 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(15, 'superadmin', '21232f297a57a5a743894a0e4a801fc3', 'superadmin', 'gambar_admin/a.jpg'),
(20, 'yuda', '0cc175b9c0f1b6a831c399e269772661', 'Gilang yuda ', 'gambar_admin/download (9).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_kematian`
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

--
-- Dumping data for table `data_kematian`
--

INSERT INTO `data_kematian` (`id_kematian`, `tgl_mati`, `tmpt_makam`, `nama_pelapor`, `nik_pelapor`, `hubungan_pelapor`, `nik`, `bln_create`, `thn_create`, `tgl_create`, `tgl_edit`, `admin`) VALUES
(1, '2019-01-16', 'mana', 'iaoaoa', '87766', 'hahah', '3512114254905098', '01', '2019', '2019-01-16', '2019-01-16', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `data_kk`
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
-- Dumping data for table `data_kk`
--

INSERT INTO `data_kk` (`no_kk`, `nama_kepalakeluarga`, `alamat`, `desakelurahan`, `rtrw`, `kecamatan`, `kabupatenkota`, `kodepos`, `provinsi`, `nik`, `tgl_create`, `tgl_edit`, `admin`) VALUES
('65489003', 'Masruri', 'Kelayu Presak Barat', 'Kelayu', '04/09', 'Selong', 'Lombok Timur', 98632, 'NTB', '3512114254931128', '2018-01-19', '0000-00-00', 'yuda');

-- --------------------------------------------------------

--
-- Table structure for table `data_migrasi`
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
  `tgl_masuk` date NOT NULL,
  `rtrw_domisili` varchar(50) NOT NULL,
  `desa_domisili` varchar(50) NOT NULL,
  `kecamatan_domisili` varchar(50) NOT NULL,
  `kabupaten_domisili` varchar(50) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_mutasi`
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
  `tanggal_keluar` date NOT NULL,
  `rtrw_domisili` varchar(50) NOT NULL,
  `desa_domisili` varchar(50) NOT NULL,
  `kecamatan_domisili` varchar(50) NOT NULL,
  `kabupaten_domisili` varchar(50) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_mutasi`
--

INSERT INTO `data_mutasi` (`id_mutasi`, `nik`, `nama`, `tempat_lahir`, `agama`, `jk`, `status`, `pekerjaan`, `kewarganegaraan`, `tanggal_lahir`, `rtrw_mutasi`, `desa_mutasi`, `kecamatan_mutasi`, `kabupaten_mutasi`, `tanggal_keluar`, `rtrw_domisili`, `desa_domisili`, `kecamatan_domisili`, `kabupaten_domisili`, `tgl_create`, `tgl_edit`, `admin`) VALUES
(1, '3512637311425490', 'Daswan', 'Yogyakarta', 'islam', 'laki-laki', 'belum_kawin', 'Perancang Grafis', 'wni', '1992-05-02', '12/78', 'huhh', 'vvvv', 'ggg', '2019-01-16', '01/08', 'Warungboto', 'Umbulharjo', 'Yogyakarta', '2019-01-16', '0000-00-00', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `data_penduduk`
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
  `nomor_kk` int(20) NOT NULL,
  `no_paspor` varchar(50) NOT NULL,
  `no_kitaskitap` varchar(50) NOT NULL,
  `tgl_create` date NOT NULL,
  `tgl_edit` date NOT NULL,
  `admin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_penduduk`
--

INSERT INTO `data_penduduk` (`nik`, `nama`, `tempat_lahir`, `tgl_lahir`, `jk`, `alamat`, `rtrw`, `desa`, `kecamatan`, `agama`, `pekerjaan`, `pendidikan`, `kewarganegaraan`, `status`, `status_keluarga`, `ket`, `asal`, `nama_ibu`, `pekerjaan_ibu`, `nama_ayah`, `pekerjaan_ayah`, `nomor_kk`, `no_paspor`, `no_kitaskitap`, `tgl_create`, `tgl_edit`, `admin`) VALUES
('145', 'Habibi', 'Yogyakarta', '1967-07-01', '', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'mati', 'asli', 'Fatimah', 'Karyawan', 'Umar Sidik', 'Wirausahawan', 0, '', '', '0000-00-00', '2018-01-17', 'superadmin'),
('146', 'Julani Faturahman', 'Yogyakarta', '2001-01-01', 'perempuan', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Arsitek', 's1', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Fatmah Rita', 'Guru', 'Fuadi Ibrahim', 'Politikus', 0, '-', '-', '0000-00-00', '2019-01-16', 'superadmin'),
('147', 'Dwi Handayani', 'Bandung', '2002-03-10', '', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Eka Handayani', 'Konsultan', 'Hermansyah', 'Dosen', 0, '', '', '0000-00-00', '0000-00-00', ''),
('148', 'Muhammad Putra Rusdin', 'Yogyakarta', '2011-11-11', '', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Kurnia Wati', 'Guru', 'Rusdin Ahmad', 'Dosen', 0, '', '', '0000-00-00', '0000-00-00', ''),
('149', 'Asri Tyas Melody', 'Bandung', '1966-05-10', '', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Wiwin Asri', 'Guru', 'Wibowo Suwanto', 'Politikus', 0, '', '', '0000-00-00', '0000-00-00', ''),
('150', 'Adi Jayadi', 'Yogyakarta', '1998-07-11', '', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Mahasiswa', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Sumiarti', 'IRT', 'Jumaidin', 'Wirausahawan', 0, '', '', '0000-00-00', '0000-00-00', ''),
('151', 'Adi Pratama Wanto', 'Yogyakarta', '2003-12-02', '', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Mutia Astuti', 'IRT', 'Sosilo Suwanto', 'Guru', 0, '', '', '0000-00-00', '2017-12-19', 'yuda'),
('152', 'Putra Wibowo Reina', 'Yogyakarta', '2002-10-11', '', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'hindu', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Raina Adelia', 'Karyawan', 'Wibowo', 'Pengecara', 0, '', '', '0000-00-00', '0000-00-00', ''),
('153', 'Ainun ', 'Yogyakarta', '2001-04-11', '', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Atun Kaltum', 'IRT', 'Rusdin Mahruf', 'Wirausahawan', 0, '', '', '0000-00-00', '0000-00-00', ''),
('154', 'Dinda Adelia', 'Bandung', '1989-12-06', '', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'budha', 'Apoteker', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Melinda Dindaniarti', 'Wirausahawan', 'Abdul Malik', 'Polisi', 0, '', '', '0000-00-00', '2017-12-19', 'superadmin'),
('155', 'Fauzi Rahman Setiawan', 'Batang', '1996-10-11', '', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'konghuchu', 'Mahasiswa', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Atun Sholiha', 'Guru', 'Heri Rahman ', 'Politikus', 0, '', '', '0000-00-00', '2017-12-19', 'superadmin'),
('156', 'Mahruf Alayubi', 'Malang', '1998-12-05', '', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'budha', 'Mahasiswa', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Yuni Sani', 'Perawat', 'Fajar Mahruf', 'TNI', 0, '', '', '0000-00-00', '2017-12-19', 'superadmin'),
('157', 'Aning Sheila Melinda', 'Bali', '1996-09-06', '', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'hindu', 'Mahasiswa', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Melinda ', 'Karyawan', 'Susilo', 'Pengecara', 0, '', '', '0000-00-00', '0000-00-00', ''),
('158', 'Putri Pertiwi Purnama', 'Yogyakarta', '1999-10-11', '', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Nurma Faizah', 'IRT', 'M.Said', 'Manajer', 0, '', '', '0000-00-00', '0000-00-00', ''),
('160', 'Ozan Fauzi', 'Yogyakarta', '1991-12-10', '', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'pergi', 'Sumarni Rozak', 'Wirausahawan', 'Fauzan Safi', 'Wirausahawan', 0, '', '', '0000-00-00', '0000-00-00', ''),
('165', 'Justin Bieber', 'Jakarta', '2000-12-21', '', 'Jakarta pusat', '08/09', 'Jakarta', '07/06', 'katolik', 'Penyanyi', '', 'wni', '', 'kepala keluarga', 'mati', 'asli', 'Ibu Justin', 'Petani', 'Bapak Justin', 'Petani', 9909090, '', '', '2017-12-13', '2018-01-17', 'superadmin'),
('3512114254905075', 'Yani Putri Aisyah', 'Yogyakarta', '2002-12-07', 'laki-laki', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Nur Hasana', 'Wirausahawan', 'Samsudin', 'Guru', 0, '', '', '2017-12-29', '2018-01-20', 'yuda'),
('3512114254905098', 'Bilal Faisal', 'Jakarta', '2000-08-12', 'perempuan', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'mati', 'pendatang', 'Ratna Ayu', 'Konsultan', 'Sosilo', 'Pilot', 0, '', '', '2017-12-25', '2019-01-16', 'superadmin'),
('3512114254905135', 'Putra Wibowo Reina', 'Yogyakarta', '1990-11-02', 'laki-laki', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Fotografer', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Raina Putri', 'Koki', 'Rahman', 'Desainer', 0, '', '', '2017-12-26', '2017-12-27', ''),
('3512114254905136', 'Fatimah Mutmainah', 'Bandung', '2008-02-03', 'perempuan', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Fatimah', 'Karyawan', 'Fuadi Ibrahim', 'Insinyur', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905137', 'Nurul Rahmi', 'Yogyakarta', '1998-10-02', 'perempuan', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Nurmi Yanti', 'IRT', 'Nurdin Arifin', 'Lurah', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905138', 'Muhammad Yusran Ahmad', 'Medan', '1989-08-11', 'perempuan', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Apoteker', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Kurnia Wati', 'IRT', 'Yusran Faisal', 'Kondektur', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905139', 'Neneng Ardianti', 'Yogyakarta', '1994-06-08', 'perempuan', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'protestan', 'Pramugari', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Asril Yusril', 'Perawat', 'Yusril Mahmud', 'TNI', 0, '', '', '0000-00-00', '2017-12-19', 'superadmin'),
('3512114254905140', 'Windi Sheila Ramadhani', 'Yogyakarta', '1979-07-06', 'laki-laki', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Apoteker', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Miranti Uswatun', 'Guru', 'Yusuf Wibowo', 'Polisi', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905141', 'Liska Fitrianingsi', 'Surabaya', '2012-03-07', 'perempuan', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'protestan', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Mutia Astuti', 'Bidan', 'Faisal', 'Guru', 0, '', '', '0000-00-00', '2017-12-19', 'superadmin'),
('3512114254905142', 'Rada Arpica', 'Medan', '1996-01-01', 'perempuan', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', '', 'Pramugari', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Martanus', 'Bidan', 'Yosep', 'Insinyur', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905143', 'Melinda Putri Sukmawati', 'Yogyakarta', '1967-11-10', 'perempuan', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'pergi', 'Melinda Yuarti', 'IRT', 'Sudirman Cahyo', 'Guru', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905144', 'Fitri Awaliya', 'Surabaya', '1995-10-03', 'perempuan', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Aulyati', 'Guru', 'Fuadi Ibrahim', 'Wirausahawan', 0, '', '', '0000-00-00', '0000-00-00', ''),
('3512114254905271', 'Ummul Fadilah', 'Yogyakarta', '1990-12-10', 'perempuan', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Junari', 'IRT', 'Arahaman', 'Guru', 0, '', '', '2017-12-25', '2017-12-26', ''),
('3512114254905365', 'pandu jati', 'Yogyakarta', '2018-12-30', 'laki-laki', 'Yogyakarta', '12/21', 'Warungboto', 'Umbulharjo', 'protestan', 'Pelajar', 's1', 'wna', 'kawin', 'istri', 'hidup', 'pendatang', 'Zubaida', 'Pengusaha', 'Amrullah', 'Pengusaha', 15000, '-', '-', '2018-01-19', '2018-01-19', 'yuda'),
('3512114254905367', 'Aninda Latifah', 'Jakarta', '1997-05-10', 'perempuan', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Mahasiswa', 'PNS', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Fatimah Haris', 'Wirausahawan', 'HARIS', 'Wirausahawan', 0, '-', '-', '2017-12-25', '2018-01-19', 'yuda'),
('3512114254905368', 'Rahmat Karmila', 'Yogyakarta', '2012-10-10', 'perempuan', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', 'SMA', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Rahma ', 'IRT', 'Rosihin', 'Wirausahawan', 0, '-', '-', '0000-00-00', '2018-01-19', 'yuda'),
('3512114254905387', 'Yuli Yanto', 'Papua', '2003-09-04', 'laki-laki', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'mati', 'pendatang', 'Melinda Yuarti', 'Karyawan', 'Faisal', 'Wartawan', 0, '', '', '2017-12-25', '2018-01-17', 'superadmin'),
('3512114254905389', 'Astuti Putri  Anik ', 'Yogyakarta', '1999-12-11', '', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Mahasiswa', 'S1', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Asma Anik', 'Perawat', 'Yosep', 'Wirausahawan', 0, '-', '-', '2017-12-20', '2018-01-19', 'yuda'),
('3512114254905475', 'Bayu Krismantara', 'Yogyakarta', '1980-06-11', 'laki-laki', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Guru', '', 'wni', 'kawin', 'kepala keluarga', 'mati', 'asli', 'Wiwin Asri', 'Kasir', 'Umar Sidik', 'Guru', 0, '', '', '2017-12-25', '2018-01-17', 'superadmin'),
('3512114254905476', 'Wawan Setiwan', 'Yogyakarta', '1979-07-12', 'laki-laki', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Nur', 'Kasir', 'Samsudin Setiawan', 'Petani', 0, '', '', '2017-12-29', '2017-12-31', ''),
('3512114254905487', 'Dewi Susilawati', 'Bandung', '2000-12-03', 'perempuan', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'konghuchu', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Dewi Tulah', 'Guru', 'Abdullah', 'TNI', 0, '', '', '2017-12-18', '2017-12-19', 'superadmin'),
('3512114254905497', 'Reza Putra Latif', 'Yogyakarta', '1994-08-12', 'perempuan', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Guru', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Linda', 'IRT', 'Latif Supratman', 'Guru', 0, '', '', '2017-12-29', '2017-12-31', ''),
('3512114254905567', 'Rizki Rahmat Putri', 'Yogyakarta', '1995-12-02', 'laki-laki', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Mahasiswa', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Rahma', 'IRT', 'Rahman', 'Guru', 0, '', '', '2017-12-25', '2017-12-26', ''),
('3512114254905587', 'Ainun Jariya', 'Bandung', '2002-03-08', 'perempuan', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'mati', 'pendatang', 'Siti Hasanah', 'Wirausahawan', 'Umar Sidik', 'Wirausahawan', 0, '', '', '2017-12-20', '2018-01-18', 'superadmin'),
('3512114254905642', 'Fatur Hariyanto', 'Bandung', '2000-07-11', 'laki-laki', 'Yogyakarta', '03/05', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Nur Yamahani', 'IRT', 'Edi Suprianto', 'Wirausahawan', 0, '', '', '2017-12-28', '2017-12-29', ''),
('3512114254905769', 'Yaumul Fadli', 'Yogyakarta', '1998-03-08', 'laki-laki', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Mahasiswa', 'mahasiswi', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Nur Hasana', 'Bidan', 'Fadlin', 'Politikus', 0, '-', '-', '2017-12-25', '2018-01-19', 'yuda'),
('3512114254905786', 'Rizal Hamude', 'Yogyakarta', '2008-11-10', 'laki-laki', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Pelajar', '', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'asli', 'Nurma Faizah', 'IRT', 'Mahmud', 'Wirausahawan', 0, '', '', '2017-12-22', '2017-12-24', ''),
('3512114254905907', 'Afief Mahruf', 'Yogyakarta', '1979-07-11', 'laki-laki', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'islam', 'Pegawai Swasta', '', 'wni', 'kawin', 'kepala keluarga', 'mati', 'asli', 'Yulinda Meita', 'Perawat', 'Yusuf Wibowo', 'PNS', 0, '', '', '2017-12-20', '2018-01-19', 'yuda'),
('3512114254905985', 'Eka Putri Lestari', 'Cirebon', '1981-10-03', 'perempuan', 'Yogyakarta', '02/01', 'Warungboto', 'Umbulharjo', 'konghuchu', 'Apoteker', '', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'pendatang', 'Raina Putri', 'Bidan', 'Sosilo', 'Pengecara', 0, '', '', '2017-12-18', '2017-12-22', 'superadmin'),
('3512114254931128', 'Masruri', 'Kelayu', '1967-12-31', 'laki-laki', 'Kelayu Presak Barat', '04/09', 'Kelayu', 'Selong', 'islam', 'PNS', 'S1', 'wni', 'kawin', 'kepala keluarga', 'hidup', 'asli', 'Zuhria', 'Petani', 'Hudai', 'Petani', 65489003, '-', '-', '2018-01-19', '0000-00-00', 'yuda'),
('3512637311425490', 'Daswan', 'Yogyakarta', '1992-05-02', 'laki-laki', 'Yogyakarta', '01/08', 'Warungboto', 'Umbulharjo', 'islam', 'Perancang Grafis', 'guru', 'wni', 'belum_kawin', 'kepala keluarga', 'hidup', 'pergi', 'Nur', 'Guru', 'Wibowo', 'Dosen', 0, '-', '-', '2017-12-29', '2019-01-16', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(225) NOT NULL,
  `task` varchar(200) NOT NULL,
  `tutorial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `task`, `tutorial`) VALUES
(1, 'demo', 'http://www.youtube.com');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(225) NOT NULL,
  `action` text NOT NULL,
  `waktu` datetime NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `action`, `waktu`, `user`) VALUES
(1, 'update tes', '2017-12-13 10:14:08', 'admin'),
(2, 'input anggota KK', '2017-12-13 14:30:31', 'admin'),
(3, 'Edit penduduk', '2017-12-13 20:42:46', 'admin'),
(4, 'Edit KK', '2017-12-13 20:43:11', 'admin'),
(5, 'update anggota KK', '2017-12-13 20:43:23', 'admin'),
(6, 'Edit kelahiran', '2017-12-13 20:43:44', 'admin'),
(7, 'Edit kematian', '2017-12-13 20:44:53', 'admin'),
(8, 'Edit Migrasi', '2017-12-13 20:45:13', 'admin'),
(9, 'Edit Mutasi', '2017-12-13 20:45:35', 'admin'),
(10, 'Edit penduduk', '2017-12-13 20:50:07', 'admin'),
(11, 'update anggota KK', '2017-12-13 21:10:08', 'admin'),
(12, 'uinput data kelahiran', '2017-12-13 21:10:57', 'admin'),
(13, 'input data kelahiran', '2017-12-13 21:13:05', 'admin'),
(14, 'Edit penduduk', '2017-12-13 21:19:10', 'yuda'),
(15, 'Edit penduduk', '2017-12-19 07:38:44', 'superadmin'),
(16, 'Edit penduduk', '2017-12-19 07:41:42', 'superadmin'),
(17, 'Edit penduduk', '2017-12-19 07:42:08', 'superadmin'),
(18, 'Edit penduduk', '2017-12-19 07:43:06', 'superadmin'),
(19, 'Edit penduduk', '2017-12-19 07:43:41', 'superadmin'),
(20, 'Edit penduduk', '2017-12-19 07:44:38', 'superadmin'),
(21, 'Edit penduduk', '2017-12-19 07:45:15', 'superadmin'),
(22, 'Edit penduduk', '2017-12-19 08:04:56', 'superadmin'),
(23, 'Edit penduduk', '2017-12-19 08:07:16', 'yuda'),
(24, 'Edit kelahiran', '2017-12-19 08:09:09', 'yuda'),
(25, 'Edit penduduk', '2017-12-19 08:10:11', 'yuda'),
(26, 'Edit penduduk', '2017-12-19 08:11:35', 'yuda'),
(27, 'update anggota KK', '2018-01-10 17:08:50', 'yuda'),
(28, 'update anggota KK', '2018-01-10 17:17:05', 'yuda'),
(29, 'update anggota KK', '2018-01-17 04:44:37', 'superadmin'),
(30, 'update anggota KK', '2018-01-17 04:45:10', 'superadmin'),
(31, 'update anggota KK', '2018-01-17 04:59:23', 'superadmin'),
(32, 'update anggota KK', '2018-01-17 05:00:07', 'superadmin'),
(33, 'Edit kematian', '2018-01-17 05:23:28', 'superadmin'),
(34, 'Edit kematian', '2018-01-17 05:23:46', 'superadmin'),
(35, 'Edit kematian', '2018-01-17 05:27:09', 'superadmin'),
(36, 'Edit kematian', '2018-01-17 05:30:37', 'superadmin'),
(37, 'Edit kematian', '2018-01-17 05:31:02', 'superadmin'),
(38, 'update anggota KK', '2018-01-17 05:31:57', 'superadmin'),
(39, 'update anggota KK', '2018-01-17 05:36:44', 'superadmin'),
(40, 'update anggota KK', '2018-01-17 06:41:30', 'superadmin'),
(41, 'update anggota KK', '2018-01-17 06:49:32', 'superadmin'),
(42, 'update anggota KK', '2018-01-17 06:51:34', 'superadmin'),
(43, 'update anggota KK', '2018-01-17 06:52:02', 'superadmin'),
(44, 'update anggota KK', '2018-01-17 06:57:04', 'superadmin'),
(45, 'update anggota KK', '2018-01-17 06:57:23', 'superadmin'),
(46, 'update anggota KK', '2018-01-17 07:06:39', 'superadmin'),
(47, 'update anggota KK', '2018-01-17 07:06:58', 'superadmin'),
(48, 'update anggota KK', '2018-01-17 07:08:08', 'superadmin'),
(49, 'update anggota KK', '2018-01-17 07:18:48', 'superadmin'),
(50, 'update anggota KK', '2018-01-17 07:50:19', 'superadmin'),
(51, 'update anggota KK', '2018-01-17 07:50:52', 'superadmin'),
(52, 'update anggota KK', '2018-01-17 07:53:51', 'superadmin'),
(53, 'update anggota KK', '2018-01-17 14:45:05', 'superadmin'),
(54, 'update anggota KK', '2018-01-17 16:30:42', 'superadmin'),
(55, 'update anggota KK', '2018-01-18 18:09:59', 'superadmin'),
(56, 'Input Kematiaan', '2018-01-18 19:31:01', 'superadmin'),
(57, 'Update Kematiaan', '2018-01-18 19:31:01', 'superadmin'),
(58, 'update anggota KK', '2018-01-18 19:53:44', 'superadmin'),
(59, 'update anggota KK', '2018-01-19 05:20:05', 'superadmin'),
(60, 'Edit penduduk', '2018-01-19 15:07:58', 'yuda'),
(61, 'Edit penduduk', '2018-01-19 15:08:06', 'yuda'),
(62, 'Edit penduduk', '2018-01-19 15:08:28', 'yuda'),
(63, 'update anggota KK', '2018-01-19 15:12:38', 'yuda'),
(64, 'Edit profil desa', '2018-01-19 15:15:14', 'yuda'),
(65, 'Edit kelahiran', '2018-01-19 15:21:16', 'yuda'),
(66, 'Edit kelahiran', '2018-01-19 15:21:29', 'yuda'),
(67, 'update anggota KK', '2018-01-19 15:56:18', 'yuda'),
(68, 'update anggota KK', '2018-01-19 16:02:23', 'yuda'),
(69, 'Edit penduduk', '2018-01-19 16:33:02', 'yuda'),
(70, 'Edit penduduk', '2018-01-19 16:45:20', 'yuda'),
(71, 'Edit penduduk', '2018-01-19 16:51:24', 'yuda'),
(72, 'Edit penduduk', '2018-01-19 16:55:03', 'yuda'),
(73, 'Edit penduduk', '2018-01-19 17:02:08', 'yuda'),
(74, 'update anggota KK', '2018-01-19 17:26:45', 'yuda'),
(75, 'Edit penduduk', '2018-01-19 17:30:02', 'yuda'),
(76, 'Edit penduduk', '2018-01-19 17:30:40', 'yuda'),
(77, 'Edit penduduk', '2018-01-19 17:31:06', 'yuda'),
(78, 'Edit penduduk', '2018-01-19 17:31:23', 'yuda'),
(79, 'Edit penduduk', '2018-01-19 17:34:42', 'yuda'),
(80, 'Edit penduduk', '2018-01-19 17:36:38', 'yuda'),
(81, 'Edit penduduk', '2018-01-19 17:37:22', 'yuda'),
(82, 'Edit penduduk', '2018-01-19 17:42:29', 'yuda'),
(83, 'Edit penduduk', '2018-01-19 18:14:27', 'yuda'),
(84, 'Edit penduduk', '2018-01-19 18:16:01', 'yuda'),
(85, 'Edit penduduk', '2018-01-19 18:16:55', 'yuda'),
(86, 'Edit penduduk', '2018-01-19 18:18:21', 'yuda'),
(87, 'Edit penduduk', '2018-01-19 18:19:48', 'yuda'),
(88, 'Edit penduduk', '2018-01-19 18:20:36', 'yuda'),
(89, 'Edit penduduk', '2018-01-19 18:21:50', 'yuda'),
(90, 'Edit penduduk', '2018-01-19 18:22:05', 'yuda'),
(91, 'Edit penduduk', '2018-01-19 18:22:41', 'yuda'),
(92, 'Edit penduduk', '2018-01-19 18:30:38', 'yuda'),
(93, 'update anggota KK', '2018-01-19 18:46:01', 'yuda'),
(94, 'Edit penduduk', '2018-01-19 18:46:55', 'yuda'),
(95, 'Edit penduduk', '2018-01-19 18:48:26', 'yuda'),
(96, 'Edit penduduk', '2018-01-19 18:49:04', 'yuda'),
(97, 'input penduduk', '2018-01-19 19:44:29', 'yuda'),
(98, 'input penduduk', '2018-01-19 19:53:38', 'yuda'),
(99, 'Edit penduduk', '2018-01-19 20:05:53', 'yuda'),
(100, 'Edit penduduk', '2018-01-19 20:07:09', 'yuda'),
(101, 'Edit KK', '2018-01-19 20:16:12', 'yuda'),
(102, 'Edit KK', '2018-01-19 20:16:20', 'yuda'),
(103, 'Edit KK', '2018-01-19 20:22:11', 'yuda'),
(104, 'Edit KK', '2018-01-19 20:22:24', 'yuda'),
(105, 'Edit KK', '2018-01-19 20:22:32', 'yuda'),
(106, 'Edit KK', '2018-01-19 20:25:20', 'yuda'),
(107, 'Edit KK', '2018-01-19 20:25:26', 'yuda'),
(108, 'Edit KK', '2018-01-19 20:25:34', 'yuda'),
(109, 'Edit KK', '2018-01-19 20:26:30', 'yuda'),
(110, 'Edit KK', '2018-01-19 20:28:26', 'yuda'),
(111, 'Edit KK', '2018-01-19 20:28:33', 'yuda'),
(112, 'Edit KK', '2018-01-19 20:29:07', 'yuda'),
(113, 'Edit KK', '2018-01-19 20:30:40', 'yuda'),
(114, 'Edit KK', '2018-01-19 20:33:59', 'yuda'),
(115, 'Edit KK', '2018-01-19 20:34:34', 'yuda'),
(116, 'Edit KK', '2018-01-19 20:35:51', 'yuda'),
(117, 'Edit KK', '2018-01-19 20:36:40', 'yuda'),
(118, 'Edit penduduk', '2018-01-19 20:37:39', 'yuda'),
(119, 'Edit KK', '2018-01-19 20:38:34', 'yuda'),
(120, 'Edit penduduk', '2018-01-19 20:39:53', 'yuda'),
(121, 'Edit penduduk', '2018-01-19 20:41:35', 'yuda'),
(122, 'Edit penduduk', '2018-01-19 20:44:12', 'yuda'),
(123, 'Edit penduduk', '2018-01-19 20:45:45', 'yuda'),
(124, 'Edit penduduk', '2018-01-19 21:07:33', 'yuda'),
(125, 'update anggota KK', '2018-01-19 21:17:25', 'yuda'),
(126, 'input penduduk', '2018-01-19 21:35:54', 'yuda'),
(127, 'input anggota KK', '2018-01-19 21:40:05', 'yuda'),
(128, 'input anggota KK', '2018-01-19 21:41:11', 'yuda'),
(129, 'input anggota KK', '2018-01-19 21:41:56', 'yuda'),
(130, 'Edit penduduk', '2018-01-19 21:47:25', 'yuda'),
(131, 'Edit penduduk', '2018-01-19 21:48:26', 'yuda'),
(132, 'Edit penduduk', '2018-01-19 21:49:45', 'yuda'),
(133, 'Edit penduduk', '2018-01-19 21:51:53', 'yuda'),
(134, 'Edit penduduk', '2018-01-19 21:52:44', 'yuda'),
(135, 'Edit profil desa', '2018-01-20 16:17:23', 'yuda'),
(136, 'Edit penduduk', '2018-01-20 16:50:13', 'yuda'),
(137, 'Edit penduduk', '2018-01-20 16:50:47', 'yuda'),
(138, 'Edit penduduk', '2018-01-20 16:51:21', 'yuda'),
(139, 'Edit penduduk', '2018-01-20 16:51:57', 'yuda'),
(140, 'Edit penduduk', '2018-01-20 16:52:28', 'yuda'),
(141, 'Edit penduduk', '2018-01-20 16:53:19', 'yuda'),
(142, 'Edit penduduk', '2018-01-20 16:54:11', 'yuda'),
(143, 'Edit kelahiran', '2018-01-20 16:57:06', 'yuda'),
(144, 'Edit kelahiran', '2018-01-20 16:57:39', 'yuda'),
(145, 'Edit kelahiran', '2018-01-20 16:57:50', 'yuda'),
(146, 'Edit penduduk', '2019-01-16 10:52:56', 'superadmin'),
(147, 'Edit penduduk', '2019-01-16 10:56:01', 'superadmin'),
(148, 'Input Kematiaan', '2019-01-16 12:52:28', 'superadmin'),
(149, 'Update Kematiaan', '2019-01-16 12:52:28', 'superadmin'),
(150, 'Edit kematian', '2019-01-16 12:54:34', 'superadmin'),
(151, 'Edit kematian', '2019-01-16 12:54:45', 'superadmin'),
(152, 'update anggota KK', '2019-01-16 12:59:45', 'superadmin');

-- --------------------------------------------------------

--
-- Table structure for table `profil_desa`
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
-- Dumping data for table `profil_desa`
--

INSERT INTO `profil_desa` (`id`, `kepaladesa`, `desa`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`, `tgl_edit`, `admin`) VALUES
(14, 'salman', 'warungboto', 'jl veteran no 3', 'umbulharjo', 'Yogyakarta', 'DIY', '2019-01-17', 'yuda');

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
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `data_kematian`
--
ALTER TABLE `data_kematian`
  MODIFY `id_kematian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `data_migrasi`
--
ALTER TABLE `data_migrasi`
  MODIFY `id_migrasi` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `profil_desa`
--
ALTER TABLE `profil_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_kematian`
--
ALTER TABLE `data_kematian`
  ADD CONSTRAINT `data_kematian_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_kk`
--
ALTER TABLE `data_kk`
  ADD CONSTRAINT `data_kk_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_migrasi`
--
ALTER TABLE `data_migrasi`
  ADD CONSTRAINT `data_migrasi_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_mutasi`
--
ALTER TABLE `data_mutasi`
  ADD CONSTRAINT `data_mutasi_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_penduduk` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
