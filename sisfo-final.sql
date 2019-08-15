-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Agu 2019 pada 12.26
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `nim` varchar(5) NOT NULL,
  `namamhs` varchar(20) DEFAULT NULL,
  `alamat` text,
  `tgllhr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`nim`, `namamhs`, `alamat`, `tgllhr`) VALUES
('MHS00', 'Jati Pandu Saputra', 'Yogyakarta', '1996-07-13'),
('MHS01', 'Jati Pandu Saputra', 'Yogyakarta', '1996-07-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"snap_to_grid":"off","angular_direct":"direct","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"rencana_studi","table":"rencana_studi"},{"db":"rencana_studi","table":"mahasiswa"},{"db":"rencana_studi","table":"dosen"},{"db":"rencana_studi","table":"krs"},{"db":"rencana_studi","table":"mata_kuliah"},{"db":"rencana_studi","table":"login"},{"db":"sisfo","table":"data_penduduk"},{"db":"sisfo","table":"data_kk"},{"db":"sisfo","table":"data_migrasi"},{"db":"sisfo","table":"data_kematian"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-10-04 04:19:12', '{"collation_connection":"utf8mb4_unicode_ci","lang":"id"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `pwd`
--
CREATE DATABASE IF NOT EXISTS `pwd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pwd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`) VALUES
('001', 'jatipandus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password`
--

CREATE TABLE `password` (
  `id_password` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `password`
--

INSERT INTO `password` (`id_password`, `pw`) VALUES
('001', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id_password`);
--
-- Database: `rencana_studi`
--
CREATE DATABASE IF NOT EXISTS `rencana_studi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rencana_studi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `alamat`, `no_telp`) VALUES
('001', 'aldoa', 'sleman', '08988983883'),
('002', 'udin', 'bantul', '089884848923');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `npm` varchar(100) NOT NULL,
  `makul` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`npm`, `makul`, `kelas`) VALUES
('003', '', ''),
('1500018108', 'pwd', 'A'),
('1500018108', 'pwd', 'C'),
('1500018108', 'pweb', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`, `status`) VALUES
('tatausaha', 'uad', 'tatausaha'),
('1500018108', 'uad', 'mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tmpt_lahir` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `thn_masuk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `tmpt_lahir`, `tgl_lahir`, `alamat`, `jurusan`, `thn_masuk`) VALUES
('1500018000', 'andi', 'sleman', '09 08 1990', 'GK', 'T. informatika', '2015'),
('1500018108', 'jati', 'yk', '13 09 1998', 'sleman', 'T. informatika', '2015');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(100) NOT NULL,
  `makul` varchar(100) NOT NULL,
  `sks` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `makul`, `sks`) VALUES
('003', 'alpro', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rencana_studi`
--

CREATE TABLE `rencana_studi` (
  `npm` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `kode_mk` varchar(100) NOT NULL,
  `nilai_uts` float NOT NULL,
  `nilai_uas` float NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `thn_ajar` varchar(100) NOT NULL,
  `nilai_ipk` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rencana_studi`
--

INSERT INTO `rencana_studi` (`npm`, `nip`, `kode_mk`, `nilai_uts`, `nilai_uas`, `kelas`, `thn_ajar`, `nilai_ipk`) VALUES
('1500018000', '001', '003', 100, 100, 'A', '2017', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`npm`,`makul`,`kelas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `rencana_studi`
--
ALTER TABLE `rencana_studi`
  ADD PRIMARY KEY (`npm`,`nip`,`kode_mk`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `nip` (`nip`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rencana_studi`
--
ALTER TABLE `rencana_studi`
  ADD CONSTRAINT `rencana_studi_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rencana_studi_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rencana_studi_ibfk_3` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `sisfo`
--
CREATE DATABASE IF NOT EXISTS `sisfo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sisfo`;

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
  MODIFY `id_kematian` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_migrasi`
--
ALTER TABLE `data_migrasi`
  MODIFY `id_migrasi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_mutasi`
--
ALTER TABLE `data_mutasi`
  MODIFY `id_mutasi` int(11) NOT NULL AUTO_INCREMENT;
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
--
-- Database: `stbi`
--
CREATE DATABASE IF NOT EXISTS `stbi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stbi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbberita`
--

CREATE TABLE `tbberita` (
  `Id` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Berita` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbberita`
--

INSERT INTO `tbberita` (`Id`, `Judul`, `Berita`) VALUES
(1, 'CR9 Bikin Mourinho Tak Sabar ke Madrid', 'Yang spesial dari rencana kepindahan Jose Mourinho ke Real Madrid adalah pertemuan dia dengan Cristiano Ronaldo. Mengaku tak sabar bertemu rekan senegaranya itu, Mourinho juga berharap banyak gol dari CR9. '),
(2, 'Jepang Mau Sampai Semifinal', 'Kalah atas Korea Selatan tak membuat kepercayaan diri Jepang menyusut. Pelatih ''Samurai Biru'', Takeshi Okada, malah memasang target tinggi dengan menembus babak semifinal. '),
(3, 'Simpati Milito untuk Cambiasso & Zanetti', 'Diego Milito mengungkapkan rasa simpatinya kepada rekannya di Inter Milan. Meski sama-sama meraih treble di Inter namun Esteban Cambiasso dan Javier Zanetti tak masuk skuad Argentina. '),
(4, 'Neville Belum Berencana Pensiun', 'Gary Neville bersikukuh belum mau pensiun dari timnas Inggris. Meskipun sudah jarang dipanggil memperkuat The Three Lions, bek 35 tahun ini mengaku siap bermain saat negerinya membutuhkan jasanya'),
(5, 'Lawan Meksiko, Capello Banyak Belajar', 'Inggris tampil meyakinkan saat mengalahkan Meksiko 3-1. Namun manajer Inggris Fabio Capello mengaku bahwa mendapatkan banyak pelajaran dalam laga ujicoba tersebut.'),
(6, 'Maradona Hapus Kekhawatiran', 'Tanpa diperkuat beberapa bintang besarnya, Argentina sukses menghajar Kanada dengan skor telak 5-0. Atas hasil tersebut Diego Maradona yakin kalau publik negaranya bakal berhenti khawatir.'),
(7, ' Giuseppe Meazza Tak Tidur ', 'Sebuah malam bersejarah telah diraih Inter Milan, ketika mereka kembali menjadi juara Eropa untuk kali pertama dalam 45 tahun. Puluhan ribu tifosinya pun tidak mau melewatkan malam besar itu. '),
(8, 'Cambiasso: Selamat Jalan, Mourinho', 'Rumor hijrahnya Jose Mourinho dari Inter Milan ke Real Madrid sudah kian santer. Esteban Cambiasso pun memberi pernyataan yang secara tak langsung seperti membenarkan spekulasi yang ada.'),
(9, 'Seandainya Ribery Bisa Tampil', 'Franck Ribery terpaksa hanya menonton laga final Liga Champions dari bangku cadangan. Akibatnya, strategi yang dijalankan Bayern Muenchen tidak sesuai yang diharapkan sehingga mereka menelan kekalahan. '),
(10, 'Sneijder: Semua karena Mourinho', 'Trofi pertama Liga Champions sejak 45 tahun silam berhasil diraih oleh skuad terkini Inter Milan. Sukses itu boleh disebabkan oleh banyak hal, tapi sosok Jose Mourinho-lah yang dinilai sebagai aspek terpenting.'),
(11, 'Reina: Torres Bertahan di Anfield', 'Spekulasi masa depan Fernando Torres di Liverpool masih terus menghangat. Namun kiper Pepe Reina yakin rekan senegaranya tersebut akan tetap bertahan di Anfield musim depan. '),
(12, 'Liverpool Buruk karena Dana Minim', 'Musim 2009/2010 boleh disebut sebagai musim paling buruk yang pernah dialami Liverpool. Manajer Rafael Benitez "mendakwa" faktor minimnya dana sebagai penyebabnya. '),
(13, 'Fergie: Hargreaves Harus Berani', 'Owen Hargreaves mengalami krisis kepercayaan diri pasca comeback dari cedera panjang. Sir Alex Ferguson menyarankan anak buahnya itu harus memiliki mental baja agar bisa kembali ke permainan terbaiknya. '),
(14, 'Blackpool Raih Tiket Terakhir Premier League', 'Setelah menanti hampir selama empat dasawarsa, Blackpool kembali ke top-flight usai mengalahkan Cardiff di laga playoff penentuan tiket promosi ke Premier League. '),
(15, 'West Ham Bidik Henry', 'Nasib Thierry Henry di Barcelona menjadi tak pasti sejak jawara Spanyol itu mendatangkan David Villa. West Ham United melihat peluang itu dan mencoba menggaetnya. '),
(16, ' ''Liverpool Tetap Kompetitif!''', 'Rafael Benitez kembali mengungkapkan pembelaan terhadap dirinya, yang dituding gagal memberikan prestasi bagi Liverpool. Manajer Spanyol itu mengatakan Si Merah tetap kompetitif. Buktinya?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcache`
--

CREATE TABLE `tbcache` (
  `Id` int(11) NOT NULL,
  `Query` varchar(100) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Value` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbcache`
--

INSERT INTO `tbcache` (`Id`, `Query`, `DocId`, `Value`) VALUES
(1, 'liverpool', 0, 0),
(2, 'cristiano ronaldo tidak di real madrid', 0, 0),
(3, 'real madrid', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbindex`
--

CREATE TABLE `tbindex` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `DocId` int(11) NOT NULL,
  `Count` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbindex`
--

INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(1, 'spesial', 1, 1, 0),
(2, 'rencana', 1, 1, 0),
(3, 'pindahan', 1, 1, 0),
(4, 'jose', 1, 1, 0),
(5, 'mourinho', 1, 2, 0),
(6, 'real', 1, 1, 0),
(7, 'madrid', 1, 1, 0),
(8, 'temu', 1, 2, 0),
(9, 'cristiano', 1, 2, 0),
(10, 'ronaldo', 1, 2, 0),
(11, 'mengaku', 1, 1, 0),
(12, 'tak', 1, 1, 0),
(13, 'sabar', 1, 1, 0),
(14, 'rekan', 1, 1, 0),
(15, 'senegaranya', 1, 1, 0),
(16, 'berharap', 1, 1, 0),
(17, 'banyak', 1, 1, 0),
(18, 'gol', 1, 1, 0),
(19, 'kalah', 2, 1, 0),
(20, 'atas', 2, 1, 0),
(21, 'korea', 2, 1, 0),
(22, 'selatan', 2, 1, 0),
(23, 'tak', 2, 1, 0),
(24, 'membuat', 2, 1, 0),
(25, 'percayaan', 2, 1, 0),
(26, 'diri', 2, 1, 0),
(27, 'jepang', 2, 1, 0),
(28, 'susut', 2, 1, 0),
(29, 'pelatih', 2, 1, 0),
(30, 'samurai', 2, 1, 0),
(31, 'biru', 2, 1, 0),
(32, 'tashi', 2, 1, 0),
(33, 'okada', 2, 1, 0),
(34, 'malah', 2, 1, 0),
(35, 'memasang', 2, 1, 0),
(36, 'target', 2, 1, 0),
(37, 'tinggi', 2, 1, 0),
(38, 'tembus', 2, 1, 0),
(39, 'babak', 2, 1, 0),
(40, 'semifinal', 2, 1, 0),
(41, 'diego', 3, 1, 0),
(42, 'milito', 3, 1, 0),
(43, 'mengungkapkan', 3, 1, 0),
(44, 'rasa', 3, 1, 0),
(45, 'simpatinya', 3, 1, 0),
(46, 'rekannya', 3, 1, 0),
(47, 'di', 3, 2, 0),
(48, 'inter', 3, 2, 0),
(49, 'milan', 3, 1, 0),
(50, 'meski', 3, 1, 0),
(51, 'sama', 3, 2, 0),
(52, 'meraih', 3, 1, 0),
(53, 'treble', 3, 1, 0),
(54, 'namun', 3, 1, 0),
(55, 'esteban', 3, 1, 0),
(56, 'cambiasso', 3, 1, 0),
(57, 'javier', 3, 1, 0),
(58, 'zanetti', 3, 1, 0),
(59, 'tak', 3, 1, 0),
(60, 'masuk', 3, 1, 0),
(61, 'skuad', 3, 1, 0),
(62, 'argentina', 3, 1, 0),
(63, 'gary', 4, 1, 0),
(64, 'neville', 4, 1, 0),
(65, 'bersikukuh', 4, 1, 0),
(66, 'belum', 4, 1, 0),
(67, 'mau', 4, 1, 0),
(68, 'pensiun', 4, 1, 0),
(69, 'timnas', 4, 1, 0),
(70, 'inggris', 4, 1, 0),
(71, 'meskipun', 4, 1, 0),
(72, 'sudah', 4, 1, 0),
(73, 'jarang', 4, 1, 0),
(74, 'dipanggil', 4, 1, 0),
(75, 'memperkuat', 4, 1, 0),
(76, 'the', 4, 1, 0),
(77, 'three', 4, 1, 0),
(78, 'lions', 4, 1, 0),
(79, 'bek', 4, 1, 0),
(80, '35', 4, 1, 0),
(81, 'tahun', 4, 1, 0),
(82, 'mengaku', 4, 1, 0),
(83, 'siap', 4, 1, 0),
(84, 'bermain', 4, 1, 0),
(85, 'saat', 4, 1, 0),
(86, 'negerinya', 4, 1, 0),
(87, 'membutuhkan', 4, 1, 0),
(88, 'jasanya', 4, 1, 0),
(89, 'inggris', 5, 2, 0),
(90, 'tampil', 5, 1, 0),
(91, 'meyakinkan', 5, 1, 0),
(92, 'saat', 5, 1, 0),
(93, 'mengalahkan', 5, 1, 0),
(94, 'meksiko', 5, 1, 0),
(95, '3', 5, 1, 0),
(96, '1', 5, 1, 0),
(97, 'namun', 5, 1, 0),
(98, 'manajer', 5, 1, 0),
(99, 'fabio', 5, 1, 0),
(100, 'capello', 5, 1, 0),
(101, 'mengaku', 5, 1, 0),
(102, 'bahwa', 5, 1, 0),
(103, 'mendapatkan', 5, 1, 0),
(104, 'banyak', 5, 1, 0),
(105, 'pelajaran', 5, 1, 0),
(106, 'dalam', 5, 1, 0),
(107, 'laga', 5, 1, 0),
(108, 'ujicoba', 5, 1, 0),
(109, 'tanpa', 6, 1, 0),
(110, 'diperkuat', 6, 1, 0),
(111, 'beberapa', 6, 1, 0),
(112, 'bintang', 6, 1, 0),
(113, 'besarnya', 6, 1, 0),
(114, 'argentina', 6, 1, 0),
(115, 'sukses', 6, 1, 0),
(116, 'menghajar', 6, 1, 0),
(117, 'kanada', 6, 1, 0),
(118, 'skor', 6, 1, 0),
(119, 'telak', 6, 1, 0),
(120, '5', 6, 1, 0),
(121, '0', 6, 1, 0),
(122, 'atas', 6, 1, 0),
(123, 'hasil', 6, 1, 0),
(124, 'diego', 6, 1, 0),
(125, 'maradona', 6, 1, 0),
(126, 'yakin', 6, 1, 0),
(127, 'kalau', 6, 1, 0),
(128, 'publik', 6, 1, 0),
(129, 'negaranya', 6, 1, 0),
(130, 'bakal', 6, 1, 0),
(131, 'berhenti', 6, 1, 0),
(132, 'khawatir', 6, 1, 0),
(133, 'sebuah', 7, 1, 0),
(134, 'malam', 7, 2, 0),
(135, 'bersejarah', 7, 1, 0),
(136, 'telah', 7, 1, 0),
(137, 'diraih', 7, 1, 0),
(138, 'inter', 7, 1, 0),
(139, 'milan', 7, 1, 0),
(140, 'tika', 7, 1, 0),
(141, 'mereka', 7, 1, 0),
(142, 'mbali', 7, 1, 0),
(143, 'menjadi', 7, 1, 0),
(144, 'juara', 7, 1, 0),
(145, 'eropa', 7, 1, 0),
(146, 'untuk', 7, 1, 0),
(147, 'kali', 7, 1, 0),
(148, 'pertama', 7, 1, 0),
(149, 'dalam', 7, 1, 0),
(150, '45', 7, 1, 0),
(151, 'tahun', 7, 1, 0),
(152, 'puluhan', 7, 1, 0),
(153, 'ribu', 7, 1, 0),
(154, 'tifosinya', 7, 1, 0),
(155, 'pun', 7, 1, 0),
(156, 'tidak', 7, 1, 0),
(157, 'mau', 7, 1, 0),
(158, 'melewatkan', 7, 1, 0),
(159, 'besar', 7, 1, 0),
(160, 'rumor', 8, 1, 0),
(161, 'hijrahnya', 8, 1, 0),
(162, 'jose', 8, 1, 0),
(163, 'mourinho', 8, 1, 0),
(164, 'inter', 8, 1, 0),
(165, 'milan', 8, 1, 0),
(166, 'real', 8, 1, 0),
(167, 'madrid', 8, 1, 0),
(168, 'sudah', 8, 1, 0),
(169, 'kian', 8, 1, 0),
(170, 'santer', 8, 1, 0),
(171, 'esteban', 8, 1, 0),
(172, 'cambiasso', 8, 1, 0),
(173, 'pun', 8, 1, 0),
(174, 'memberi', 8, 1, 0),
(175, 'pernyataan', 8, 1, 0),
(176, 'secara', 8, 1, 0),
(177, 'tak', 8, 1, 0),
(178, 'langsung', 8, 1, 0),
(179, 'seperti', 8, 1, 0),
(180, 'membenarkan', 8, 1, 0),
(181, 'spekulasi', 8, 1, 0),
(182, 'ada', 8, 1, 0),
(183, 'franck', 9, 1, 0),
(184, 'ribery', 9, 1, 0),
(185, 'terpaksa', 9, 1, 0),
(186, 'hanya', 9, 1, 0),
(187, 'menonton', 9, 1, 0),
(188, 'laga', 9, 1, 0),
(189, 'final', 9, 1, 0),
(190, 'liga', 9, 1, 0),
(191, 'champions', 9, 1, 0),
(192, 'bangku', 9, 1, 0),
(193, 'cagan', 9, 1, 0),
(194, 'akibatnya', 9, 1, 0),
(195, 'strategi', 9, 1, 0),
(196, 'dijalankan', 9, 1, 0),
(197, 'bayern', 9, 1, 0),
(198, 'muenchen', 9, 1, 0),
(199, 'tidak', 9, 1, 0),
(200, 'sesuai', 9, 1, 0),
(201, 'diharapkan', 9, 1, 0),
(202, 'sehingga', 9, 1, 0),
(203, 'mereka', 9, 1, 0),
(204, 'menelan', 9, 1, 0),
(205, 'kalahan', 9, 1, 0),
(206, 'trofi', 10, 1, 0),
(207, 'pertama', 10, 1, 0),
(208, 'liga', 10, 1, 0),
(209, 'champions', 10, 1, 0),
(210, 'sejak', 10, 1, 0),
(211, '45', 10, 1, 0),
(212, 'tahun', 10, 1, 0),
(213, 'silam', 10, 1, 0),
(214, 'berhasil', 10, 1, 0),
(215, 'diraih', 10, 1, 0),
(216, 'oleh', 10, 2, 0),
(217, 'skuad', 10, 1, 0),
(218, 'terk', 10, 1, 0),
(219, 'inter', 10, 1, 0),
(220, 'milan', 10, 1, 0),
(221, 'sukses', 10, 1, 0),
(222, 'boleh', 10, 1, 0),
(223, 'disebabkan', 10, 1, 0),
(224, 'banyak', 10, 1, 0),
(225, 'hal', 10, 1, 0),
(226, 'tapi', 10, 1, 0),
(227, 'sosok', 10, 1, 0),
(228, 'jose', 10, 1, 0),
(229, 'mourinho', 10, 1, 0),
(230, 'lah', 10, 1, 0),
(231, 'dlai', 10, 1, 0),
(232, 'sebagai', 10, 1, 0),
(233, 'aspek', 10, 1, 0),
(234, 'terpenting', 10, 1, 0),
(235, 'spekulasi', 11, 1, 0),
(236, 'masa', 11, 1, 0),
(237, 'depan', 11, 2, 0),
(238, 'fernando', 11, 1, 0),
(239, 'torres', 11, 1, 0),
(240, 'di', 11, 2, 0),
(241, 'liverpool', 11, 1, 0),
(242, 'masih', 11, 1, 0),
(243, 'terus', 11, 1, 0),
(244, 'menghangat', 11, 1, 0),
(245, 'namun', 11, 1, 0),
(246, 'kiper', 11, 1, 0),
(247, 'pepe', 11, 1, 0),
(248, 'reina', 11, 1, 0),
(249, 'yakin', 11, 1, 0),
(250, 'rekan', 11, 1, 0),
(251, 'senegaranya', 11, 1, 0),
(252, 'akan', 11, 1, 0),
(253, 'tetap', 11, 1, 0),
(254, 'bertahan', 11, 1, 0),
(255, 'anfield', 11, 1, 0),
(256, 'musim', 11, 1, 0),
(257, 'musim', 12, 2, 0),
(258, '2009', 12, 1, 0),
(259, '2010', 12, 1, 0),
(260, 'boleh', 12, 1, 0),
(261, 'disebut', 12, 1, 0),
(262, 'sebagai', 12, 2, 0),
(263, 'paling', 12, 1, 0),
(264, 'buruk', 12, 1, 0),
(265, 'pernah', 12, 1, 0),
(266, 'lami', 12, 1, 0),
(267, 'liverpool', 12, 1, 0),
(268, 'manajer', 12, 1, 0),
(269, 'rafael', 12, 1, 0),
(270, 'benitez', 12, 1, 0),
(271, 'mendakwa', 12, 1, 0),
(272, 'faktor', 12, 1, 0),
(273, 'mmnya', 12, 1, 0),
(274, 'a', 12, 1, 0),
(275, 'penyebabnya', 12, 1, 0),
(276, 'owen', 13, 1, 0),
(277, 'hargreaves', 13, 1, 0),
(278, 'mengalami', 13, 1, 0),
(279, 'krisis', 13, 1, 0),
(280, 'percayaan', 13, 1, 0),
(281, 'diri', 13, 1, 0),
(282, 'pasca', 13, 1, 0),
(283, 'comeback', 13, 1, 0),
(284, 'cedera', 13, 1, 0),
(285, 'panjang', 13, 1, 0),
(286, 'sir', 13, 1, 0),
(287, 'alex', 13, 1, 0),
(288, 'ferguson', 13, 1, 0),
(289, 'menyarankan', 13, 1, 0),
(290, 'anak', 13, 1, 0),
(291, 'buahnya', 13, 1, 0),
(292, 'harus', 13, 1, 0),
(293, 'memiliki', 13, 1, 0),
(294, 'mental', 13, 1, 0),
(295, 'baja', 13, 1, 0),
(296, 'agar', 13, 1, 0),
(297, 'bisa', 13, 1, 0),
(298, 'mbali', 13, 1, 0),
(299, 'permainan', 13, 1, 0),
(300, 'terbaiknya', 13, 1, 0),
(301, 'setelah', 14, 1, 0),
(302, 'menanti', 14, 1, 0),
(303, 'hampir', 14, 1, 0),
(304, 'selama', 14, 1, 0),
(305, 'empat', 14, 1, 0),
(306, 'dasawarsa', 14, 1, 0),
(307, 'blackpool', 14, 1, 0),
(308, 'mbali', 14, 1, 0),
(309, 'top', 14, 1, 0),
(310, 'flight', 14, 1, 0),
(311, 'usai', 14, 1, 0),
(312, 'mengalahkan', 14, 1, 0),
(313, 'cardiff', 14, 1, 0),
(314, 'di', 14, 1, 0),
(315, 'laga', 14, 1, 0),
(316, 'playoff', 14, 1, 0),
(317, 'penentuan', 14, 1, 0),
(318, 'tit', 14, 1, 0),
(319, 'promosi', 14, 1, 0),
(320, 'premier', 14, 1, 0),
(321, 'league', 14, 1, 0),
(322, 'nasib', 15, 1, 0),
(323, 'thierry', 15, 1, 0),
(324, 'henry', 15, 1, 0),
(325, 'di', 15, 1, 0),
(326, 'barcelona', 15, 1, 0),
(327, 'menjadi', 15, 1, 0),
(328, 'tak', 15, 1, 0),
(329, 'pasti', 15, 1, 0),
(330, 'sejak', 15, 1, 0),
(331, 'jawara', 15, 1, 0),
(332, 'spanyol', 15, 1, 0),
(333, 'mendatangkan', 15, 1, 0),
(334, 'david', 15, 1, 0),
(335, 'villa', 15, 1, 0),
(336, 'west', 15, 1, 0),
(337, 'ham', 15, 1, 0),
(338, 'united', 15, 1, 0),
(339, 'melihat', 15, 1, 0),
(340, 'peluang', 15, 1, 0),
(341, 'mencoba', 15, 1, 0),
(342, 'menggaetnya', 15, 1, 0),
(343, 'rafael', 16, 1, 0),
(344, 'benitez', 16, 1, 0),
(345, 'mbali', 16, 1, 0),
(346, 'mengungkapkan', 16, 1, 0),
(347, 'pembelaan', 16, 1, 0),
(348, 'terhadap', 16, 1, 0),
(349, 'dirinya', 16, 1, 0),
(350, 'dding', 16, 1, 0),
(351, 'gagal', 16, 1, 0),
(352, 'memberikan', 16, 1, 0),
(353, 'prestasi', 16, 1, 0),
(354, 'bagi', 16, 1, 0),
(355, 'liverpool', 16, 1, 0),
(356, 'manajer', 16, 1, 0),
(357, 'spanyol', 16, 1, 0),
(358, 'mengatakan', 16, 1, 0),
(359, 'si', 16, 1, 0),
(360, 'merah', 16, 1, 0),
(361, 'tetap', 16, 1, 0),
(362, 'kompetitif', 16, 1, 0),
(363, 'buktinya', 16, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbstem`
--

CREATE TABLE `tbstem` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `Stem` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbstem`
--

INSERT INTO `tbstem` (`Id`, `Term`, `Stem`) VALUES
(1, 'pertemuan', 'temu'),
(2, 'bertemu', 'temu'),
(3, 'cr9', 'cristiano ronaldo'),
(4, 'kepindahan', 'pindah'),
(5, 'menembus', 'tembus'),
(6, 'menyusut', 'susut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbvektor`
--

CREATE TABLE `tbvektor` (
  `DocId` int(11) NOT NULL,
  `Panjang` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbvektor`
--

INSERT INTO `tbvektor` (`DocId`, `Panjang`) VALUES
(1, 13.2904),
(2, 12.357),
(3, 12.4506),
(4, 13.2908),
(5, 11.3507),
(6, 12.9491),
(7, 13.3479),
(8, 11.2084),
(9, 12.5885),
(10, 13.4644),
(11, 12.737),
(12, 12.0589),
(13, 13.4048),
(14, 11.9018),
(15, 11.8001),
(16, 11.3614);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbberita`
--
ALTER TABLE `tbberita`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbcache`
--
ALTER TABLE `tbcache`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbindex`
--
ALTER TABLE `tbindex`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbstem`
--
ALTER TABLE `tbstem`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbvektor`
--
ALTER TABLE `tbvektor`
  ADD PRIMARY KEY (`DocId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbberita`
--
ALTER TABLE `tbberita`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbcache`
--
ALTER TABLE `tbcache`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbindex`
--
ALTER TABLE `tbindex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;
--
-- AUTO_INCREMENT for table `tbstem`
--
ALTER TABLE `tbstem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
-- Database: `tesss`
--
CREATE DATABASE IF NOT EXISTS `tesss` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tesss`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
