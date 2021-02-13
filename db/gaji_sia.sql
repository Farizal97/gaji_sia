-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Mei 2020 pada 07.37
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abs`
--

CREATE TABLE IF NOT EXISTS `abs` (
  `abs_id` int(11) NOT NULL,
  `abs_bln` varchar(20) NOT NULL,
  `abs_bl` varchar(5) NOT NULL,
  `abs_th` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `abs`
--

INSERT INTO `abs` (`abs_id`, `abs_bln`, `abs_bl`, `abs_th`) VALUES
(2, 'Mei', '05', 2020);

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE IF NOT EXISTS `absensi` (
  `absensi_id` int(11) NOT NULL,
  `abs_id` int(11) NOT NULL,
  `karyawan_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `absensi_h` int(2) NOT NULL,
  `absensi_s` int(2) NOT NULL,
  `absensi_i` int(2) NOT NULL,
  `absensi_a` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`absensi_id`, `abs_id`, `karyawan_id`, `absensi_h`, `absensi_s`, `absensi_i`, `absensi_a`) VALUES
(2, 2, 'TST001', 20, 0, 0, 0),
(3, 2, 'KRY00001', 19, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_adm` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `foto_adm` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_adm`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto_adm`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@hondaprima.com', '0123456789', '05032020120712r.jpg'),
(2, 'manager', '1d0258c2440a8d19e716292b231e3190', 'Manager', 'manager@hondaprima.com', '08238923848', 'user.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
  `akun_kode` varchar(20) NOT NULL,
  `akun_nama` varchar(50) NOT NULL,
  `akun_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`akun_kode`, `akun_nama`, `akun_jenis`) VALUES
('K0001', 'Beban Gaji', 'Debet'),
('K0002', 'Pembayaran Client', 'Kredit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian`
--

CREATE TABLE IF NOT EXISTS `bagian` (
  `bagian_id` varchar(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bagian_nama` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bagian_gaji` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `bagian_lembur` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bagian`
--

INSERT INTO `bagian` (`bagian_id`, `bagian_nama`, `bagian_gaji`, `bagian_lembur`) VALUES
('BGN01', 'Cleaning Service', '2700000', '25000'),
('BGN02', 'IT', '3400000', '75000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `direktur`
--

CREATE TABLE IF NOT EXISTS `direktur` (
  `id_dir` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `foto_dir` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `direktur`
--

INSERT INTO `direktur` (`id_dir`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto_dir`) VALUES
(1, 'direktur', '4fbfd324f5ffcdff5dbf6f019b02eca8', 'Direktur', 'direktur@hondaprima.com', '08238923848', '05112020112513r.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_karyawan`
--

CREATE TABLE IF NOT EXISTS `gaji_karyawan` (
  `gaj_no` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `karyawan_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `abs_id` int(11) NOT NULL,
  `gaj_lembur` int(11) NOT NULL,
  `gaj_tjg` int(11) NOT NULL,
  `gaj_pot` int(11) NOT NULL,
  `gaj_stt` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gaj_pok` int(11) NOT NULL,
  `gaj_bersih` int(11) NOT NULL,
  `gaj_pay` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gaj_tgl` date NOT NULL,
  `gaj_ket` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaji_karyawan`
--

INSERT INTO `gaji_karyawan` (`gaj_no`, `karyawan_id`, `abs_id`, `gaj_lembur`, `gaj_tjg`, `gaj_pot`, `gaj_stt`, `gaj_pok`, `gaj_bersih`, `gaj_pay`, `gaj_tgl`, `gaj_ket`) VALUES
('KRY00001-052020', 'KRY00001', 2, 90000, 170000, 0, 'Approved', 3400000, 3660000, 'Cash', '2020-05-10', 'ulang'),
('TST001-052020', 'TST001', 2, 52500, 0, 130000, 'Approved', 2700000, 2622500, 'Transfer', '2020-05-10', 'ulang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE IF NOT EXISTS `jurnal` (
  `jurnal_trx` varchar(8) NOT NULL,
  `jurnal_reff` varchar(50) NOT NULL,
  `akun_kode` varchar(20) NOT NULL,
  `jurnal_tgl` date NOT NULL,
  `jurnal_jml` int(11) NOT NULL,
  `jurnal_ket` text NOT NULL,
  `jurnal_bl` varchar(5) NOT NULL,
  `jurnal_th` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurnal`
--

INSERT INTO `jurnal` (`jurnal_trx`, `jurnal_reff`, `akun_kode`, `jurnal_tgl`, `jurnal_jml`, `jurnal_ket`, `jurnal_bl`, `jurnal_th`) VALUES
('TRX00002', '-', 'K0001', '2020-05-11', 153000000, 'Beban gaji bulan mei', '05', '2020'),
('TRX00003', '11111', 'K0002', '2020-05-14', 150000000, 'Pembayaran client', '05', '2020'),
('TRX00004', '1212121', 'K0002', '2020-05-11', 130000000, 'pembayaran client', '05', '2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `karyawan_id` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `karyawan_nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `karyawan_jk` enum('Laki-Laki','Perempuan') COLLATE latin1_general_ci NOT NULL,
  `karyawan_alamat` text COLLATE latin1_general_ci NOT NULL,
  `karyawan_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `karyawan_tgllhr` date NOT NULL,
  `karyawan_tptlhr` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `karyawan_foto` text COLLATE latin1_general_ci NOT NULL,
  `karyawan_masuk` date NOT NULL,
  `bagian_id` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `karyawan_status` enum('Aktif','Nonaktif') COLLATE latin1_general_ci NOT NULL,
  `karyawan_create` date NOT NULL,
  `karyawan_pass` text COLLATE latin1_general_ci NOT NULL,
  `id_adm` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`karyawan_id`, `karyawan_nama`, `karyawan_jk`, `karyawan_alamat`, `karyawan_telp`, `karyawan_tgllhr`, `karyawan_tptlhr`, `karyawan_foto`, `karyawan_masuk`, `bagian_id`, `karyawan_status`, `karyawan_create`, `karyawan_pass`, `id_adm`) VALUES
('TST001', 'Test', 'Laki-Laki', 'Jakarta', '081239898', '2000-01-01', 'Jakarta', '28042020130440r.jpg', '2020-01-01', 'BGN01', 'Aktif', '2020-04-28', '1507837d82a39c979356fedec40c3aee', 1),
('KRY00001', 'Testing', 'Laki-Laki', 'Jakarta', '0812831981', '2000-01-01', 'Jakarta', '05112020120432r.jpg', '2019-01-01', 'BGN02', 'Aktif', '2020-05-09', 'dc2ca2be3bbc18d2554b30717869531b', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lembur`
--

CREATE TABLE IF NOT EXISTS `lembur` (
  `lembur_id` int(11) NOT NULL,
  `lembur_tgl` date NOT NULL,
  `lembur_jam` double(2,1) NOT NULL,
  `karyawan_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lembur_mulai` time NOT NULL,
  `lembur_selesai` time NOT NULL,
  `lembur_bl` varchar(5) NOT NULL,
  `lembur_th` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lembur`
--

INSERT INTO `lembur` (`lembur_id`, `lembur_tgl`, `lembur_jam`, `karyawan_id`, `lembur_mulai`, `lembur_selesai`, `lembur_bl`, `lembur_th`) VALUES
(1, '2020-05-09', 1.2, 'KRY00001', '10:30:00', '11:45:00', '05', '2020'),
(2, '2020-05-08', 0.8, 'TST001', '10:35:00', '11:20:00', '05', '2020'),
(3, '2020-05-08', 1.3, 'TST001', '10:25:00', '11:45:00', '05', '2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id_mng` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `foto_mng` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `manager`
--

INSERT INTO `manager` (`id_mng`, `username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto_mng`) VALUES
(2, 'manager', '1d0258c2440a8d19e716292b231e3190', 'Manager', 'manager@hondaprima.com', '08238923848', '05112020093141r.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `potongan`
--

CREATE TABLE IF NOT EXISTS `potongan` (
  `pot_id` int(11) NOT NULL,
  `karyawan_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `pot_tgl` date NOT NULL,
  `pot_jml` int(11) NOT NULL,
  `pot_ket` text NOT NULL,
  `pot_bl` varchar(5) NOT NULL,
  `pot_th` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `potongan`
--

INSERT INTO `potongan` (`pot_id`, `karyawan_id`, `pot_tgl`, `pot_jml`, `pot_ket`, `pot_bl`, `pot_th`) VALUES
(2, 'TST001', '2020-05-09', 130000, 'kasbon', '05', '2020');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tunjangan`
--

CREATE TABLE IF NOT EXISTS `tunjangan` (
  `tjg_id` int(11) NOT NULL,
  `karyawan_id` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tjg_tgl` date NOT NULL,
  `tjg_jml` int(11) NOT NULL,
  `tjg_ket` text NOT NULL,
  `tjg_bl` varchar(5) NOT NULL,
  `tjg_th` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tunjangan`
--

INSERT INTO `tunjangan` (`tjg_id`, `karyawan_id`, `tjg_tgl`, `tjg_jml`, `tjg_ket`, `tjg_bl`, `tjg_th`) VALUES
(2, 'KRY00001', '2020-05-09', 120000, 'Tunjangan pulsa', '05', '2020'),
(3, 'KRY00001', '2020-05-09', 50000, 'Tunjangan Perjalanan', '05', '2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abs`
--
ALTER TABLE `abs`
  ADD PRIMARY KEY (`abs_id`);

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`absensi_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`akun_kode`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`bagian_id`);

--
-- Indexes for table `direktur`
--
ALTER TABLE `direktur`
  ADD PRIMARY KEY (`id_dir`);

--
-- Indexes for table `gaji_karyawan`
--
ALTER TABLE `gaji_karyawan`
  ADD PRIMARY KEY (`gaj_no`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`jurnal_trx`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

--
-- Indexes for table `lembur`
--
ALTER TABLE `lembur`
  ADD PRIMARY KEY (`lembur_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id_mng`);

--
-- Indexes for table `potongan`
--
ALTER TABLE `potongan`
  ADD PRIMARY KEY (`pot_id`);

--
-- Indexes for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`tjg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abs`
--
ALTER TABLE `abs`
  MODIFY `abs_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `absensi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `direktur`
--
ALTER TABLE `direktur`
  MODIFY `id_dir` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lembur`
--
ALTER TABLE `lembur`
  MODIFY `lembur_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id_mng` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `potongan`
--
ALTER TABLE `potongan`
  MODIFY `pot_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tunjangan`
--
ALTER TABLE `tunjangan`
  MODIFY `tjg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
