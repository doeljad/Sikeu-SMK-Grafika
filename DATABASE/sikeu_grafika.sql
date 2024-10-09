-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 04:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikeu_grafika`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username`, `password`, `role`) VALUES
(1, 'Abigail Asa Putri Mutiakasih', '0061332672', 'grafika2024', 'siswa'),
(2, 'Adit Sander Buaton', '0068844716', 'grafika2024', 'siswa'),
(3, 'Agustinus Fransena Perangin Angin', '0064208530', 'grafika2024', 'siswa'),
(4, 'Alvensius Simarmata', '0055365212', 'grafika2024', 'siswa'),
(5, 'Angga Dwi Vianto', '0064072603', 'grafika2024', 'siswa'),
(6, 'Daniel Sidabutar', '0056896332', 'grafika2024', 'siswa'),
(7, 'Florentina Apolonia Sina', '0068304861', 'grafika2024', 'siswa'),
(8, 'Hieronymus Febrian Kusumadinata', '0069359901', 'grafika2024', 'siswa'),
(9, 'Jonathan Pradana Adi Wibawa', '0065264066', 'grafika2024', 'siswa'),
(10, 'Nicolaus Erlangga Arya Sena', '0066137665', 'grafika2024', 'siswa'),
(11, 'Purba Roganda Barasa', '0054573830', 'grafika2024', 'siswa'),
(12, 'Robert Maleakhi Tarigan', '0062649411', 'grafika2024', 'siswa'),
(13, 'Romeo Aryo Alexander', '0061430698', 'grafika2024', 'siswa'),
(14, 'Regina Kusuma Wardhani Wisnumurti', '0044016810', 'grafika2024', 'siswa'),
(15, 'A. A. C. Kenneth Haagen K. D.', '0058888931', 'grafika2024', 'siswa'),
(16, 'Aditya Galih', '0069106259', 'grafika2024', 'siswa'),
(17, 'Andrias Budi Nugroho', '0078610869', 'grafika2024', 'siswa'),
(18, 'Bonaventura Sarubei', '0074497127', 'grafika2024', 'siswa'),
(19, 'Emmanuel Andes Sabambam', '0067213734', 'grafika2024', 'siswa'),
(20, 'Fransiskus Galen Stefi', '0062697790', 'grafika2024', 'siswa'),
(21, 'Genoveva Giuseppina Rosalin', '0072232993', 'grafika2024', 'siswa'),
(22, 'Immanuel Abner Enriko Putra', '0074567304', 'grafika2024', 'siswa'),
(23, 'Ispan Hamat Pajar', '0053329663', 'grafika2024', 'siswa'),
(24, 'Julmes Samaloisa', '0073273657', 'grafika2024', 'siswa'),
(25, 'Marcellinus Rangga Nagata', '0069670307', 'grafika2024', 'siswa'),
(26, 'Nesron Purba', '0078063219', 'grafika2024', 'siswa'),
(27, 'Raca Surya Alam', '0078636945', 'grafika2024', 'siswa'),
(28, 'Reonaldo Tarigan', '0061986825', 'grafika2024', 'siswa'),
(29, 'Stansa Diva Prastya', '0061986825', 'grafika2024', 'siswa'),
(30, 'Valens Andrian Saputra', '0078977693', 'grafika2024', 'siswa'),
(31, 'Yependi Munthe', '0054904841', 'grafika2024', 'siswa'),
(32, 'Yohanes Prama Wicaksono Adi', '0062021770', 'grafika2024', 'siswa'),
(33, 'Andini Susanti', '0066183645', 'grafika2024', 'siswa'),
(34, 'Advent Kusuma Ardanni', '57660407', 'grafika2024', 'siswa'),
(35, 'Arum Setyawati', '79279703', 'grafika2024', 'siswa'),
(36, 'Benediktus Sakoikoi', '38603171', 'grafika2024', 'siswa'),
(37, 'Benediktus Yobel Wibawanto', '83175248', 'grafika2024', 'siswa'),
(38, 'Christopher Oliver Rogi', '64307696', 'grafika2024', 'siswa'),
(39, 'Daniel Bayu Widiarto', '84548707', 'grafika2024', 'siswa'),
(40, 'David Bachtiar', '81950115', 'grafika2024', 'siswa'),
(41, 'Eklessia Dewi Asyera', '74746726', 'grafika2024', 'siswa'),
(42, 'Finsensius Alfian Helu', '77971835', 'grafika2024', 'siswa'),
(43, 'Helvinalis Obiora Gayatri', '81646292', 'grafika2024', 'siswa'),
(44, 'Jineli', '67510116', 'grafika2024', 'siswa'),
(45, 'Kanzha Adivia', '89407714', 'grafika2024', 'siswa'),
(46, 'Klemens Agung Setia Adhi', '88088561', 'grafika2024', 'siswa'),
(47, 'Krisanto Sakoikoi', '45320319', 'grafika2024', 'siswa'),
(48, 'Kristina Juli', '77403505', 'grafika2024', 'siswa'),
(49, 'Maria Magdalena Jesanti Makayla Adyarani', '88200056', 'grafika2024', 'siswa'),
(50, 'Michelle Gratia Rahajeng', '85284004', 'grafika2024', 'siswa'),
(51, 'Miracle Cecil Augya', '73928761', 'grafika2024', 'siswa'),
(52, 'Nova Dwi Armando', '72137410', 'grafika2024', 'siswa'),
(53, 'Relo Arroja Sena', '77967670', 'grafika2024', 'siswa'),
(54, 'Sakti Tri Aji Pamungkas', '87814568', 'grafika2024', 'siswa'),
(55, 'Sekaring Dyah Hartini Pudjowati', '87527450', 'grafika2024', 'siswa'),
(56, 'Shallom Asarela Melodia', '77078132', 'grafika2024', 'siswa'),
(57, 'Sheryl Gadiza Piontek', '64355799', 'grafika2024', 'siswa'),
(58, 'Sisilia Mia Eliyanti', '88779362', 'grafika2024', 'siswa'),
(59, 'Tesalonika Aurora Harrianto', '82525689', 'grafika2024', 'siswa'),
(60, 'Veronika Sila', '85706058', 'grafika2024', 'siswa'),
(61, 'Viga Wahyu Pratama', '71540896', 'grafika2024', 'siswa'),
(62, 'Vinencius Riesky Yoga P.', '79409927', 'grafika2024', 'siswa'),
(63, 'Vinzensius Ferery Paskalis Pereginus', '62323602', 'grafika2024', 'siswa'),
(64, 'Xaveria Destri Vepnasari', '79521934', 'grafika2024', 'siswa'),
(65, 'Ivan Kurnia W', 'admin', '123', 'admin'),
(66, 'Admin TU', 'admin', 'tes123', 'admin'),
(67, 'Kepala Sekolah', 'kepsek', 'tes123', 'kepsek'),
(68, 'Zahra Puspa', '48579613', 'grafika2024', 'siswa'),
(69, 'Percobaan Siswa', '200100999', 'grafika2024', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_arus_keuangan`
--

CREATE TABLE `tb_arus_keuangan` (
  `id_arus_uang` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `total_pemasukan` int(11) NOT NULL,
  `total_pengeluran` int(11) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar_bebas`
--

CREATE TABLE `tb_bayar_bebas` (
  `id_bayar_bebas` int(11) NOT NULL,
  `id_tagihan_bebas_siswa` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar_pemasukan`
--

CREATE TABLE `tb_bayar_pemasukan` (
  `id_bayar_pemasukan` int(11) NOT NULL,
  `id_pemasukan` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar_pengeluaran`
--

CREATE TABLE `tb_bayar_pengeluaran` (
  `id_bayar_pengeluaran` int(11) NOT NULL,
  `id_pengeluaran` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bulan`
--

CREATE TABLE `tb_bulan` (
  `id_bulan` int(11) NOT NULL,
  `nama_bulan` varchar(20) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_bulan`
--

INSERT INTO `tb_bulan` (`id_bulan`, `nama_bulan`, `urutan`) VALUES
(1, 'Januari', 1),
(2, 'Februari', 2),
(3, 'Maret', 3),
(4, 'April', 4),
(5, 'Mei', 5),
(6, 'Juni', 6),
(7, 'Juli', 7),
(8, 'Agustus', 8),
(9, 'September', 9),
(10, 'Oktober', 10),
(11, 'November', 11),
(12, 'Desember', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nik_guru` varchar(20) NOT NULL,
  `nama_guru` varchar(200) NOT NULL,
  `jabatan_guru` varchar(200) NOT NULL,
  `alamat_guru` varchar(100) NOT NULL,
  `telepon_guru` varchar(20) NOT NULL,
  `status_guru` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nik_guru`, `nama_guru`, `jabatan_guru`, `alamat_guru`, `telepon_guru`, `status_guru`) VALUES
(1, '1111222299990001', 'Abdullah Sajad', 'Guru Tetap (Bahasa PHP)', 'Wonogiri', '0813123456', 'Aktif'),
(3, '1111222299990002', 'Bagas Setiadi', 'WAKEPSEK', 'Sidorejo', '081331801234', 'Aktif'),
(4, '123456987', 'Mikaela Putri', 'Bendahara', 'Solo', '081312345678', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_bayar_guru`
--

CREATE TABLE `tb_jenis_bayar_guru` (
  `id_jenis_bayar_guru` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nama_bayar_guru` varchar(200) NOT NULL,
  `tipe_jenis_bayar_guru` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_bayar_siswa`
--

CREATE TABLE `tb_jenis_bayar_siswa` (
  `id_jenis_bayar_siswa` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nama_bayar_siswa` varchar(200) NOT NULL,
  `tipe_jenis_bayar_siswa` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jenis_bayar_siswa`
--

INSERT INTO `tb_jenis_bayar_siswa` (`id_jenis_bayar_siswa`, `id_tahun_ajaran`, `nama_bayar_siswa`, `tipe_jenis_bayar_siswa`) VALUES
(8, 18, 'SPP', 'Bulanan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(19, 'DKV'),
(20, 'Teknik Grafika');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(2, 'X'),
(3, 'XI'),
(4, 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemasukan_lain`
--

CREATE TABLE `tb_pemasukan_lain` (
  `id_pemasukan` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nama_pemasukan` varchar(300) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengeluaran_lain`
--

CREATE TABLE `tb_pengeluaran_lain` (
  `id_pengeluaran` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `nama_pengeluaran` varchar(300) NOT NULL,
  `jenis_pengeluaran` varchar(300) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(200) NOT NULL,
  `yayasan_sekolah` varchar(300) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `kec_sekolah` varchar(200) NOT NULL,
  `kab_sekolah` varchar(100) NOT NULL,
  `prov_sekolah` varchar(200) NOT NULL,
  `telepon_sekolah` varchar(20) NOT NULL,
  `nama_bendahara` varchar(200) NOT NULL,
  `nip_bendahara` varchar(20) NOT NULL,
  `nama_kepalasekolah` varchar(200) NOT NULL,
  `nip_kepalasekolah` varchar(20) NOT NULL,
  `gambar_sekolah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_sekolah`
--

INSERT INTO `tb_sekolah` (`id_sekolah`, `nama_sekolah`, `yayasan_sekolah`, `alamat_sekolah`, `kec_sekolah`, `kab_sekolah`, `prov_sekolah`, `telepon_sekolah`, `nama_bendahara`, `nip_bendahara`, `nama_kepalasekolah`, `nip_kepalasekolah`, `gambar_sekolah`) VALUES
(1, 'SMK Grafika Ignatius Slamet Riyadi', 'YAYASAN IGNATIUS SLAMET RIYADI SURAKARTA', 'Jl. Alor No.3, Kampung Baru ', 'Banjarsari', 'Surakarta', 'Jawa Tengah', '(0271) 644829', 'Mikaela Putri', '1968890993933434', 'Dra. Caecilia Sri Mulyanii', '', 'logooo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  `nama_siswa` varchar(200) NOT NULL,
  `jenis_kelamin` varchar(200) NOT NULL,
  `telepon_siswa` varchar(200) DEFAULT NULL,
  `alamat_siswa` varchar(200) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `status_siswa` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `id_user`, `nisn`, `nama_siswa`, `jenis_kelamin`, `telepon_siswa`, `alamat_siswa`, `id_kelas`, `id_jurusan`, `status_siswa`) VALUES
(1, 1, '0061332672', 'Abigail Asa Putri Mutiakasih', 'Perempuan', '085640293376', 'Pepe RT 2 RW 5 Dusun Pepe, Langenharjo, Grogol, Sukoharjo', 2, 19, 'Aktif'),
(2, 2, '0068844716', 'Adit Sander Buaton', 'Laki-Laki', '082366646952', 'Tumbajae, Kec. Manduamas, Tapanuli Tengah, Sumatra Utara', 2, 20, 'Aktif'),
(3, 3, '0064208530', 'Agustinus Fransena Perangin Angin', 'Laki-Laki', '082289109567', 'Panribuan Jahean, Dolok Silau, Sumatra Utara', 2, 19, 'Aktif'),
(4, 4, '0055365212', 'Alvensius Simarmata', 'Laki-Laki', '081278703030', 'Tigadolok, Simalungun, Sumatra Utara', 2, 19, 'Aktif'),
(5, 5, '0064072603', 'Angga Dwi Vianto', 'Laki-Laki', '085765126603', 'RT 09 RW 04 Kel. Bagan Besar, Bukit Kapur, Dumai', 2, 20, 'Aktif'),
(6, 6, '0056896332', 'Daniel Sidabutar', 'Laki-Laki', '081210365178', 'Hutajulu, Huta Paung, Pangururan, Samosir, Sumatra Utara', 2, 20, 'Aktif'),
(7, 7, '0068304861', 'Florentina Apolonia Sina', 'Perempuan', '085620098537', 'Bakunase, Kel. Bakunase 2, Kec. Kota Raja, Kupang, Nusa Tenggara Timur', 2, 19, 'Aktif'),
(8, 8, '0069359901', 'Hieronymus Febrian Kusumadinata', 'Laki-Laki', '082143898915', 'Perumnas Kencana RT 04 RW 14, Kebon Jeruk, Tangerang', 2, 20, 'Aktif'),
(9, 9, '0065264066', 'Jonathan Pradana Adi Wibawa', 'Laki-Laki', '085740291369', 'Jl. Jelutung No. 89 RT 03 RW 05, Kel. Jelutung, Kec. Jelutung, Jambi', 2, 19, 'Aktif'),
(10, 10, '0066137665', 'Nicolaus Erlangga Arya Sena', 'Laki-Laki', '085230120356', 'Pandanwangi, Blimbing, Malang', 2, 19, 'Aktif'),
(11, 11, '0054573830', 'Purba Roganda Barasa', 'Laki-Laki', '082293071234', 'Bonalumban Barasa, Lumban Pea, Balige, Toba Samosir, Sumatra Utara', 2, 20, 'Aktif'),
(12, 12, '0062649411', 'Robert Maleakhi Tarigan', 'Laki-Laki', '085649731702', 'Lingga, Simpang Empat, Karo, Sumatra Utara', 2, 19, 'Aktif'),
(13, 13, '0061430698', 'Romeo Aryo Alexander', 'Laki-Laki', '082340985171', 'Jl. Pahlawan No. 46, Kota Mungkid, Magelang', 2, 20, 'Aktif'),
(14, 14, '0044016810', 'Regina Kusuma Wardhani Wisnumurti', 'Perempuan', '085269871654', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 2, 20, 'Aktif'),
(15, 15, '0058888931', 'A. A. C. Kenneth Haagen K. D.', 'Laki-Laki', '081278902153', 'Lingga, Simpang Empat, Karo, Sumatra Utara', 3, 19, 'Aktif'),
(16, 16, '0069106259', 'Aditya Galih', 'Laki-Laki', '085641239065', 'Gumukrejo, Mertoyudan, Magelang', 3, 20, 'Aktif'),
(17, 17, '0078610869', 'Andrias Budi Nugroho', 'Laki-Laki', '081287403030', 'JL KAKI KULU 1 / 9 BAKUNASE KUPANG 85000, Nusa Tenggara Timur', 2, 19, 'Aktif'),
(18, 18, '0074497127', 'Bonaventura Sarubei', 'Laki-Laki', '081277850303', 'Perumnas Kencana RT 04 RW 14, Kebon Jeruk, Tangerang', 2, 19, 'Aktif'),
(19, 19, '0067213734', 'Emmanuel Andes Sabambam', 'Laki-Laki', '085647901326', 'Bakunase, Kel. Bakunase 2, Kec. Kota Raja, Kupang, Nusa Tenggara Timur', 2, 20, 'Aktif'),
(20, 20, '0062697790', 'Fransiskus Galen Stefi', 'Laki-Laki', '085630209365', 'Pepe RT 2 RW 5 Dusun Pepe, Langenharjo, Grogol, Sukoharjo', 2, 19, 'Aktif'),
(21, 21, '0072232993', 'Genoveva Giuseppina Rosalin', 'Perempuan', '085720390165', 'Tumbajae, Kec. Manduamas, Tapanuli Tengah, Sumatra Utara', 2, 20, 'Aktif'),
(22, 22, '0074567304', 'Immanuel Abner Enriko Putra', 'Laki-Laki', '085920381265', 'Panribuan Jahean, Dolok Silau, Sumatra Utara', 2, 19, 'Aktif'),
(23, 23, '0053329663', 'Ispan Hamat Pajar', 'Laki-Laki', '085641028365', 'Tigadolok, Simalungun, Sumatra Utara', 2, 20, 'Aktif'),
(24, 24, '0073273657', 'Julmes Samaloisa', 'Laki-Laki', '085927012365', 'RT 09 RW 04 Kel. Bagan Besar, Bukit Kapur, Dumai', 2, 19, 'Aktif'),
(25, 25, '0069670307', 'Marcellinus Rangga Nagata', 'Laki-Laki', '081278903030', 'Hutajulu, Huta Paung, Pangururan, Samosir, Sumatra Utara', 2, 20, 'Aktif'),
(26, 26, '0078063219', 'Nesron Purba', 'Laki-Laki', '082140989165', 'Bakunase, Kel. Bakunase 2, Kec. Kota Raja, Kupang, Nusa Tenggara Timur', 2, 19, 'Aktif'),
(27, 27, '0078636945', 'Raca Surya Alam', 'Laki-Laki', '085770391265', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 2, 20, 'Aktif'),
(28, 28, '0061986825', 'Reonaldo Tarigan', 'Laki-Laki', '081210398567', 'Lingga, Simpang Empat, Karo, Sumatra Utara', 2, 19, 'Aktif'),
(29, 29, '0061986825', 'Stansa Diva Prastya', 'Laki-Laki', '085740298567', 'JL KAKI KULU 1 / 9 BAKUNASE KUPANG 85000, Nusa Tenggara Timur', 2, 20, 'Aktif'),
(30, 30, '0078977693', 'Valens Andrian Saputra', 'Laki-Laki', '081227890123', 'Perumnas Kencana RT 04 RW 14, Kebon Jeruk, Tangerang', 2, 19, 'Aktif'),
(31, 31, '0054904841', 'Yependi Munthe', 'Laki-Laki', '081210365967', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 2, 20, 'Aktif'),
(32, 32, '0062021770', 'Yohanes Prama Wicaksono Adi', 'Laki-Laki', '085647901265', 'JL KAKI KULU 1 / 9 BAKUNASE KUPANG 85000, Nusa Tenggara Timur', 2, 19, 'Aktif'),
(33, 33, '0066183645', 'Andini Susanti', 'Perempuan', '085647901298', 'Bakunase, Kel. Bakunase 2, Kec. Kota Raja, Kupang, Nusa Tenggara Timur', 2, 20, 'Aktif'),
(34, 34, '57660407', 'Advent Kusuma Ardanni', 'Perempuan', '081210390321', 'Panribuan Jahean, Dolok Silau, Sumatra Utara', 2, 19, 'Aktif'),
(35, 35, '79279703', 'Arum Setyawati', 'Perempuan', '081210390212', 'Hutajulu, Huta Paung, Pangururan, Samosir, Sumatra Utara', 2, 20, 'Aktif'),
(36, 36, '73934593', 'Cecilia Fitriani', 'Perempuan', '085740298361', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 2, 19, 'Aktif'),
(37, 37, '13652479', 'Gabriella Amelia V', 'Perempuan', '081210365901', 'Perumnas Kencana RT 04 RW 14, Kebon Jeruk, Tangerang', 2, 20, 'Aktif'),
(38, 38, '18702603', 'Karina Sagita', 'Perempuan', '085741238974', 'JL KAKI KULU 1 / 9 BAKUNASE KUPANG 85000, Nusa Tenggara Timur', 2, 19, 'Aktif'),
(39, 39, '30212403', 'Laksmi Anggun W', 'Perempuan', '081278390123', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 2, 20, 'Aktif'),
(40, 40, '39598123', 'Latanya Hanjani', 'Perempuan', '085741234567', 'Lingga, Simpang Empat, Karo, Sumatra Utara', 2, 19, 'Aktif'),
(41, 41, '46250233', 'Marsha Aliya', 'Perempuan', '081234567890', 'Bakunase, Kel. Bakunase 2, Kec. Kota Raja, Kupang, Nusa Tenggara Timur', 2, 20, 'Aktif'),
(42, 42, '50367217', 'Nadira Farzana', 'Perempuan', '085741234890', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 2, 19, 'Aktif'),
(43, 43, '67891234', 'Rahma Awliyah', 'Perempuan', '081234567123', 'JL KAKI KULU 1 / 9 BAKUNASE KUPANG 85000, Nusa Tenggara Timur', 2, 20, 'Aktif'),
(44, 44, '76302814', 'Sheila Azzahra', 'Perempuan', '085741234563', 'Perumnas Kencana RT 04 RW 14, Kebon Jeruk, Tangerang', 2, 19, 'Aktif'),
(45, 45, '83941506', 'Sierra Wardani', 'Perempuan', '081234567456', 'Tigadolok, Simalungun, Sumatra Utara', 2, 20, 'Aktif'),
(46, 46, '91834527', 'Syifa Harlina', 'Perempuan', '085741234789', 'Lingga, Simpang Empat, Karo, Sumatra Utara', 2, 19, 'Aktif'),
(47, 47, '13245678', 'Vira Wulansari', 'Perempuan', '081234567951', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 3, 20, 'Aktif'),
(48, 48, '25416328', 'Yasmine Alara', 'Perempuan', '085741239652', 'JL KAKI KULU 1 / 9 BAKUNASE KUPANG 85000, Nusa Tenggara Timur', 4, 19, 'Aktif'),
(49, 49, '36958274', 'Yulia Cahya', 'Perempuan', '081234569821', 'Perumnas Kencana RT 04 RW 14, Kebon Jeruk, Tangerang', 4, 20, 'Aktif'),
(50, 50, '48579613', 'Zahra Puspa', 'Perempuan', '085741234369', 'RT 02 RW 03, Sabrang Wetan, Girirejo, Imogiri, Bantul', 4, 19, 'Aktif'),
(51, 69, '200100999', 'Percobaan Siswa', 'Laki-Laki', '08133180000', 'Punggawan', 2, 19, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan_bebas_siswa`
--

CREATE TABLE `tb_tagihan_bebas_siswa` (
  `id_tagihan_bebas_siswa` int(11) NOT NULL,
  `id_jenis_bayar_siswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `total_tagihan` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan_bulanan_guru`
--

CREATE TABLE `tb_tagihan_bulanan_guru` (
  `id_tagihan_bulanan_guru` int(11) NOT NULL,
  `id_jenis_bayar_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_bulan` int(11) NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `cara_bayar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan_bulanan_siswa`
--

CREATE TABLE `tb_tagihan_bulanan_siswa` (
  `id_tagihan_bulanan_siswa` int(11) NOT NULL,
  `id_jenis_bayar_siswa` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_bulan` int(11) NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `cara_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_tagihan_bulanan_siswa`
--

INSERT INTO `tb_tagihan_bulanan_siswa` (`id_tagihan_bulanan_siswa`, `id_jenis_bayar_siswa`, `id_siswa`, `id_kelas`, `id_bulan`, `jml_bayar`, `terbayar`, `tgl_bayar`, `status_bayar`, `cara_bayar`) VALUES
(1, 8, 1, 2, 1, 100000, 100000, '2024-08-21', 1, 'Transfer'),
(2, 8, 1, 2, 2, 100000, 100000, '2024-08-13', 1, 'Transfer'),
(3, 8, 1, 2, 3, 100000, 100000, '2024-08-12', 1, 'Cash'),
(4, 8, 1, 2, 4, 100000, 100000, '2024-08-12', 1, 'Cash'),
(5, 8, 1, 2, 5, 100000, 100000, '2024-08-01', 1, 'Transfer'),
(6, 8, 1, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(7, 8, 1, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(8, 8, 1, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(9, 8, 1, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(10, 8, 1, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(11, 8, 1, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(12, 8, 1, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(13, 8, 2, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(14, 8, 2, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(15, 8, 2, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(16, 8, 2, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(17, 8, 2, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(18, 8, 2, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(19, 8, 2, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(20, 8, 2, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(21, 8, 2, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(22, 8, 2, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(23, 8, 2, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(24, 8, 2, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(25, 8, 3, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(26, 8, 3, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(27, 8, 3, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(28, 8, 3, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(29, 8, 3, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(30, 8, 3, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(31, 8, 3, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(32, 8, 3, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(33, 8, 3, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(34, 8, 3, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(35, 8, 3, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(36, 8, 3, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(37, 8, 4, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(38, 8, 4, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(39, 8, 4, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(40, 8, 4, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(41, 8, 4, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(42, 8, 4, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(43, 8, 4, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(44, 8, 4, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(45, 8, 4, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(46, 8, 4, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(47, 8, 4, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(48, 8, 4, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(49, 8, 5, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(50, 8, 5, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(51, 8, 5, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(52, 8, 5, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(53, 8, 5, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(54, 8, 5, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(55, 8, 5, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(56, 8, 5, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(57, 8, 5, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(58, 8, 5, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(59, 8, 5, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(60, 8, 5, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(61, 8, 6, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(62, 8, 6, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(63, 8, 6, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(64, 8, 6, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(65, 8, 6, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(66, 8, 6, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(67, 8, 6, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(68, 8, 6, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(69, 8, 6, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(70, 8, 6, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(71, 8, 6, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(72, 8, 6, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(73, 8, 7, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(74, 8, 7, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(75, 8, 7, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(76, 8, 7, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(77, 8, 7, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(78, 8, 7, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(79, 8, 7, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(80, 8, 7, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(81, 8, 7, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(82, 8, 7, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(83, 8, 7, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(84, 8, 7, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(85, 8, 8, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(86, 8, 8, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(87, 8, 8, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(88, 8, 8, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(89, 8, 8, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(90, 8, 8, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(91, 8, 8, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(92, 8, 8, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(93, 8, 8, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(94, 8, 8, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(95, 8, 8, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(96, 8, 8, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(97, 8, 9, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(98, 8, 9, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(99, 8, 9, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(100, 8, 9, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(101, 8, 9, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(102, 8, 9, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(103, 8, 9, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(104, 8, 9, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(105, 8, 9, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(106, 8, 9, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(107, 8, 9, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(108, 8, 9, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(109, 8, 10, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(110, 8, 10, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(111, 8, 10, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(112, 8, 10, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(113, 8, 10, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(114, 8, 10, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(115, 8, 10, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(116, 8, 10, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(117, 8, 10, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(118, 8, 10, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(119, 8, 10, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(120, 8, 10, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(121, 8, 11, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(122, 8, 11, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(123, 8, 11, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(124, 8, 11, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(125, 8, 11, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(126, 8, 11, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(127, 8, 11, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(128, 8, 11, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(129, 8, 11, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(130, 8, 11, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(131, 8, 11, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(132, 8, 11, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(133, 8, 12, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(134, 8, 12, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(135, 8, 12, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(136, 8, 12, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(137, 8, 12, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(138, 8, 12, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(139, 8, 12, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(140, 8, 12, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(141, 8, 12, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(142, 8, 12, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(143, 8, 12, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(144, 8, 12, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(145, 8, 13, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(146, 8, 13, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(147, 8, 13, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(148, 8, 13, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(149, 8, 13, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(150, 8, 13, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(151, 8, 13, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(152, 8, 13, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(153, 8, 13, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(154, 8, 13, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(155, 8, 13, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(156, 8, 13, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(157, 8, 14, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(158, 8, 14, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(159, 8, 14, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(160, 8, 14, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(161, 8, 14, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(162, 8, 14, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(163, 8, 14, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(164, 8, 14, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(165, 8, 14, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(166, 8, 14, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(167, 8, 14, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(168, 8, 14, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(169, 8, 17, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(170, 8, 17, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(171, 8, 17, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(172, 8, 17, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(173, 8, 17, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(174, 8, 17, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(175, 8, 17, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(176, 8, 17, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(177, 8, 17, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(178, 8, 17, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(179, 8, 17, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(180, 8, 17, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(181, 8, 18, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(182, 8, 18, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(183, 8, 18, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(184, 8, 18, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(185, 8, 18, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(186, 8, 18, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(187, 8, 18, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(188, 8, 18, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(189, 8, 18, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(190, 8, 18, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(191, 8, 18, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(192, 8, 18, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(193, 8, 19, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(194, 8, 19, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(195, 8, 19, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(196, 8, 19, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(197, 8, 19, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(198, 8, 19, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(199, 8, 19, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(200, 8, 19, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(201, 8, 19, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(202, 8, 19, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(203, 8, 19, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(204, 8, 19, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(205, 8, 20, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(206, 8, 20, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(207, 8, 20, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(208, 8, 20, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(209, 8, 20, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(210, 8, 20, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(211, 8, 20, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(212, 8, 20, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(213, 8, 20, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(214, 8, 20, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(215, 8, 20, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(216, 8, 20, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(217, 8, 21, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(218, 8, 21, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(219, 8, 21, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(220, 8, 21, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(221, 8, 21, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(222, 8, 21, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(223, 8, 21, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(224, 8, 21, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(225, 8, 21, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(226, 8, 21, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(227, 8, 21, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(228, 8, 21, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(229, 8, 22, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(230, 8, 22, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(231, 8, 22, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(232, 8, 22, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(233, 8, 22, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(234, 8, 22, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(235, 8, 22, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(236, 8, 22, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(237, 8, 22, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(238, 8, 22, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(239, 8, 22, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(240, 8, 22, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(241, 8, 23, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(242, 8, 23, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(243, 8, 23, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(244, 8, 23, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(245, 8, 23, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(246, 8, 23, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(247, 8, 23, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(248, 8, 23, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(249, 8, 23, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(250, 8, 23, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(251, 8, 23, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(252, 8, 23, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(253, 8, 24, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(254, 8, 24, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(255, 8, 24, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(256, 8, 24, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(257, 8, 24, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(258, 8, 24, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(259, 8, 24, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(260, 8, 24, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(261, 8, 24, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(262, 8, 24, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(263, 8, 24, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(264, 8, 24, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(265, 8, 25, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(266, 8, 25, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(267, 8, 25, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(268, 8, 25, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(269, 8, 25, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(270, 8, 25, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(271, 8, 25, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(272, 8, 25, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(273, 8, 25, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(274, 8, 25, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(275, 8, 25, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(276, 8, 25, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(277, 8, 26, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(278, 8, 26, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(279, 8, 26, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(280, 8, 26, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(281, 8, 26, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(282, 8, 26, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(283, 8, 26, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(284, 8, 26, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(285, 8, 26, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(286, 8, 26, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(287, 8, 26, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(288, 8, 26, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(289, 8, 27, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(290, 8, 27, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(291, 8, 27, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(292, 8, 27, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(293, 8, 27, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(294, 8, 27, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(295, 8, 27, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(296, 8, 27, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(297, 8, 27, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(298, 8, 27, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(299, 8, 27, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(300, 8, 27, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(301, 8, 28, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(302, 8, 28, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(303, 8, 28, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(304, 8, 28, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(305, 8, 28, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(306, 8, 28, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(307, 8, 28, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(308, 8, 28, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(309, 8, 28, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(310, 8, 28, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(311, 8, 28, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(312, 8, 28, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(313, 8, 29, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(314, 8, 29, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(315, 8, 29, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(316, 8, 29, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(317, 8, 29, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(318, 8, 29, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(319, 8, 29, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(320, 8, 29, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(321, 8, 29, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(322, 8, 29, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(323, 8, 29, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(324, 8, 29, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(325, 8, 30, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(326, 8, 30, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(327, 8, 30, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(328, 8, 30, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(329, 8, 30, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(330, 8, 30, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(331, 8, 30, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(332, 8, 30, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(333, 8, 30, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(334, 8, 30, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(335, 8, 30, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(336, 8, 30, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(337, 8, 31, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(338, 8, 31, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(339, 8, 31, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(340, 8, 31, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(341, 8, 31, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(342, 8, 31, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(343, 8, 31, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(344, 8, 31, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(345, 8, 31, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(346, 8, 31, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(347, 8, 31, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(348, 8, 31, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(349, 8, 32, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(350, 8, 32, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(351, 8, 32, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(352, 8, 32, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(353, 8, 32, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(354, 8, 32, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(355, 8, 32, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(356, 8, 32, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(357, 8, 32, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(358, 8, 32, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(359, 8, 32, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(360, 8, 32, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(361, 8, 33, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(362, 8, 33, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(363, 8, 33, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(364, 8, 33, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(365, 8, 33, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(366, 8, 33, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(367, 8, 33, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(368, 8, 33, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(369, 8, 33, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(370, 8, 33, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(371, 8, 33, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(372, 8, 33, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(373, 8, 34, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(374, 8, 34, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(375, 8, 34, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(376, 8, 34, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(377, 8, 34, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(378, 8, 34, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(379, 8, 34, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(380, 8, 34, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(381, 8, 34, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(382, 8, 34, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(383, 8, 34, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(384, 8, 34, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(385, 8, 35, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(386, 8, 35, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(387, 8, 35, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(388, 8, 35, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(389, 8, 35, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(390, 8, 35, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(391, 8, 35, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(392, 8, 35, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(393, 8, 35, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(394, 8, 35, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(395, 8, 35, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(396, 8, 35, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(397, 8, 36, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(398, 8, 36, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(399, 8, 36, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(400, 8, 36, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(401, 8, 36, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(402, 8, 36, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(403, 8, 36, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(404, 8, 36, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(405, 8, 36, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(406, 8, 36, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(407, 8, 36, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(408, 8, 36, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(409, 8, 37, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(410, 8, 37, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(411, 8, 37, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(412, 8, 37, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(413, 8, 37, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(414, 8, 37, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(415, 8, 37, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(416, 8, 37, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(417, 8, 37, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(418, 8, 37, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(419, 8, 37, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(420, 8, 37, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(421, 8, 38, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(422, 8, 38, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(423, 8, 38, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(424, 8, 38, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(425, 8, 38, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(426, 8, 38, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(427, 8, 38, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(428, 8, 38, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(429, 8, 38, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(430, 8, 38, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(431, 8, 38, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(432, 8, 38, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(433, 8, 39, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(434, 8, 39, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(435, 8, 39, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(436, 8, 39, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(437, 8, 39, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(438, 8, 39, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(439, 8, 39, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(440, 8, 39, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(441, 8, 39, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(442, 8, 39, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(443, 8, 39, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(444, 8, 39, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(445, 8, 40, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(446, 8, 40, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(447, 8, 40, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(448, 8, 40, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(449, 8, 40, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(450, 8, 40, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(451, 8, 40, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(452, 8, 40, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(453, 8, 40, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(454, 8, 40, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(455, 8, 40, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(456, 8, 40, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(457, 8, 41, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(458, 8, 41, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(459, 8, 41, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(460, 8, 41, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(461, 8, 41, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(462, 8, 41, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(463, 8, 41, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(464, 8, 41, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(465, 8, 41, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(466, 8, 41, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(467, 8, 41, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(468, 8, 41, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(469, 8, 42, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(470, 8, 42, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(471, 8, 42, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(472, 8, 42, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(473, 8, 42, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(474, 8, 42, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(475, 8, 42, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(476, 8, 42, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(477, 8, 42, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(478, 8, 42, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(479, 8, 42, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(480, 8, 42, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(481, 8, 43, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(482, 8, 43, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(483, 8, 43, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(484, 8, 43, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(485, 8, 43, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(486, 8, 43, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(487, 8, 43, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(488, 8, 43, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(489, 8, 43, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(490, 8, 43, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(491, 8, 43, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(492, 8, 43, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(493, 8, 44, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(494, 8, 44, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(495, 8, 44, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(496, 8, 44, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(497, 8, 44, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(498, 8, 44, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(499, 8, 44, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(500, 8, 44, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(501, 8, 44, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(502, 8, 44, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(503, 8, 44, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(504, 8, 44, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(505, 8, 45, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(506, 8, 45, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(507, 8, 45, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(508, 8, 45, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(509, 8, 45, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(510, 8, 45, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(511, 8, 45, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(512, 8, 45, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(513, 8, 45, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(514, 8, 45, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(515, 8, 45, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(516, 8, 45, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(517, 8, 46, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(518, 8, 46, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(519, 8, 46, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(520, 8, 46, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(521, 8, 46, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(522, 8, 46, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(523, 8, 46, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(524, 8, 46, 2, 8, 100000, 0, '0000-00-00', 0, ''),
(525, 8, 46, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(526, 8, 46, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(527, 8, 46, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(528, 8, 46, 2, 12, 100000, 0, '0000-00-00', 0, ''),
(529, 8, 15, 3, 1, 125000, 0, '0000-00-00', 0, ''),
(530, 8, 15, 3, 2, 125000, 0, '0000-00-00', 0, ''),
(531, 8, 15, 3, 3, 125000, 0, '0000-00-00', 0, ''),
(532, 8, 15, 3, 4, 125000, 0, '0000-00-00', 0, ''),
(533, 8, 15, 3, 5, 125000, 0, '0000-00-00', 0, ''),
(534, 8, 15, 3, 6, 125000, 0, '0000-00-00', 0, ''),
(535, 8, 15, 3, 7, 125000, 0, '0000-00-00', 0, ''),
(536, 8, 15, 3, 8, 125000, 0, '0000-00-00', 0, ''),
(537, 8, 15, 3, 9, 125000, 0, '0000-00-00', 0, ''),
(538, 8, 15, 3, 10, 125000, 0, '0000-00-00', 0, ''),
(539, 8, 15, 3, 11, 125000, 0, '0000-00-00', 0, ''),
(540, 8, 15, 3, 12, 125000, 0, '0000-00-00', 0, ''),
(541, 8, 16, 3, 1, 125000, 0, '0000-00-00', 0, ''),
(542, 8, 16, 3, 2, 125000, 0, '0000-00-00', 0, ''),
(543, 8, 16, 3, 3, 125000, 0, '0000-00-00', 0, ''),
(544, 8, 16, 3, 4, 125000, 0, '0000-00-00', 0, ''),
(545, 8, 16, 3, 5, 125000, 0, '0000-00-00', 0, ''),
(546, 8, 16, 3, 6, 125000, 0, '0000-00-00', 0, ''),
(547, 8, 16, 3, 7, 125000, 0, '0000-00-00', 0, ''),
(548, 8, 16, 3, 8, 125000, 0, '0000-00-00', 0, ''),
(549, 8, 16, 3, 9, 125000, 0, '0000-00-00', 0, ''),
(550, 8, 16, 3, 10, 125000, 0, '0000-00-00', 0, ''),
(551, 8, 16, 3, 11, 125000, 0, '0000-00-00', 0, ''),
(552, 8, 16, 3, 12, 125000, 0, '0000-00-00', 0, ''),
(553, 8, 47, 3, 1, 125000, 0, '0000-00-00', 0, ''),
(554, 8, 47, 3, 2, 125000, 0, '0000-00-00', 0, ''),
(555, 8, 47, 3, 3, 125000, 0, '0000-00-00', 0, ''),
(556, 8, 47, 3, 4, 125000, 0, '0000-00-00', 0, ''),
(557, 8, 47, 3, 5, 125000, 0, '0000-00-00', 0, ''),
(558, 8, 47, 3, 6, 125000, 0, '0000-00-00', 0, ''),
(559, 8, 47, 3, 7, 125000, 0, '0000-00-00', 0, ''),
(560, 8, 47, 3, 8, 125000, 0, '0000-00-00', 0, ''),
(561, 8, 47, 3, 9, 125000, 0, '0000-00-00', 0, ''),
(562, 8, 47, 3, 10, 125000, 0, '0000-00-00', 0, ''),
(563, 8, 47, 3, 11, 125000, 0, '0000-00-00', 0, ''),
(564, 8, 47, 3, 12, 125000, 0, '0000-00-00', 0, ''),
(565, 8, 48, 4, 1, 150000, 0, '0000-00-00', 0, ''),
(566, 8, 48, 4, 2, 150000, 0, '0000-00-00', 0, ''),
(567, 8, 48, 4, 3, 150000, 0, '0000-00-00', 0, ''),
(568, 8, 48, 4, 4, 150000, 0, '0000-00-00', 0, ''),
(569, 8, 48, 4, 5, 150000, 0, '0000-00-00', 0, ''),
(570, 8, 48, 4, 6, 150000, 0, '0000-00-00', 0, ''),
(571, 8, 48, 4, 7, 150000, 0, '0000-00-00', 0, ''),
(572, 8, 48, 4, 8, 150000, 0, '0000-00-00', 0, ''),
(573, 8, 48, 4, 9, 150000, 0, '0000-00-00', 0, ''),
(574, 8, 48, 4, 10, 150000, 0, '0000-00-00', 0, ''),
(575, 8, 48, 4, 11, 150000, 0, '0000-00-00', 0, ''),
(576, 8, 48, 4, 12, 150000, 0, '0000-00-00', 0, ''),
(577, 8, 50, 4, 1, 150000, 0, '0000-00-00', 0, ''),
(578, 8, 50, 4, 2, 150000, 0, '0000-00-00', 0, ''),
(579, 8, 50, 4, 3, 150000, 0, '0000-00-00', 0, ''),
(580, 8, 50, 4, 4, 150000, 0, '0000-00-00', 0, ''),
(581, 8, 50, 4, 5, 150000, 0, '0000-00-00', 0, ''),
(582, 8, 50, 4, 6, 150000, 0, '0000-00-00', 0, ''),
(583, 8, 50, 4, 7, 150000, 0, '0000-00-00', 0, ''),
(584, 8, 50, 4, 8, 150000, 150000, '2024-08-09', 1, 'Cash'),
(585, 8, 50, 4, 9, 150000, 0, '0000-00-00', 0, ''),
(586, 8, 50, 4, 10, 150000, 0, '0000-00-00', 0, ''),
(587, 8, 50, 4, 11, 150000, 0, '0000-00-00', 0, ''),
(588, 8, 50, 4, 12, 150000, 0, '0000-00-00', 0, ''),
(589, 8, 49, 4, 1, 150000, 0, '0000-00-00', 0, ''),
(590, 8, 49, 4, 2, 150000, 0, '0000-00-00', 0, ''),
(591, 8, 49, 4, 3, 150000, 0, '0000-00-00', 0, ''),
(592, 8, 49, 4, 4, 150000, 0, '0000-00-00', 0, ''),
(593, 8, 49, 4, 5, 150000, 0, '0000-00-00', 0, ''),
(594, 8, 49, 4, 6, 150000, 0, '0000-00-00', 0, ''),
(595, 8, 49, 4, 7, 150000, 0, '0000-00-00', 0, ''),
(596, 8, 49, 4, 8, 150000, 0, '0000-00-00', 0, ''),
(597, 8, 49, 4, 9, 150000, 0, '0000-00-00', 0, ''),
(598, 8, 49, 4, 10, 150000, 0, '0000-00-00', 0, ''),
(599, 8, 49, 4, 11, 150000, 0, '0000-00-00', 0, ''),
(600, 8, 49, 4, 12, 150000, 0, '0000-00-00', 0, ''),
(601, 8, 51, 2, 1, 100000, 0, '0000-00-00', 0, ''),
(602, 8, 51, 2, 2, 100000, 0, '0000-00-00', 0, ''),
(603, 8, 51, 2, 3, 100000, 0, '0000-00-00', 0, ''),
(604, 8, 51, 2, 4, 100000, 0, '0000-00-00', 0, ''),
(605, 8, 51, 2, 5, 100000, 0, '0000-00-00', 0, ''),
(606, 8, 51, 2, 6, 100000, 0, '0000-00-00', 0, ''),
(607, 8, 51, 2, 7, 100000, 0, '0000-00-00', 0, ''),
(608, 8, 51, 2, 8, 100000, 100000, '2024-08-09', 1, 'Cash'),
(609, 8, 51, 2, 9, 100000, 0, '0000-00-00', 0, ''),
(610, 8, 51, 2, 10, 100000, 0, '0000-00-00', 0, ''),
(611, 8, 51, 2, 11, 100000, 0, '0000-00-00', 0, ''),
(612, 8, 51, 2, 12, 100000, 0, '0000-00-00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tahun_ajaran`
--

CREATE TABLE `tb_tahun_ajaran` (
  `id_tahun_ajaran` int(11) NOT NULL,
  `tahun_ajaran` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_tahun_ajaran`
--

INSERT INTO `tb_tahun_ajaran` (`id_tahun_ajaran`, `tahun_ajaran`, `status`) VALUES
(16, '2022/2023', 'tidak'),
(17, '2023/2024', 'tidak'),
(18, '2024/2025', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_arus_keuangan`
--
ALTER TABLE `tb_arus_keuangan`
  ADD PRIMARY KEY (`id_arus_uang`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_bayar_bebas`
--
ALTER TABLE `tb_bayar_bebas`
  ADD PRIMARY KEY (`id_bayar_bebas`),
  ADD KEY `id_tagihan_bebas_siswa` (`id_tagihan_bebas_siswa`);

--
-- Indexes for table `tb_bayar_pemasukan`
--
ALTER TABLE `tb_bayar_pemasukan`
  ADD PRIMARY KEY (`id_bayar_pemasukan`),
  ADD KEY `id_pemasukan` (`id_pemasukan`);

--
-- Indexes for table `tb_bayar_pengeluaran`
--
ALTER TABLE `tb_bayar_pengeluaran`
  ADD PRIMARY KEY (`id_bayar_pengeluaran`),
  ADD KEY `id_pengeluaran` (`id_pengeluaran`);

--
-- Indexes for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  ADD PRIMARY KEY (`id_bulan`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_jenis_bayar_guru`
--
ALTER TABLE `tb_jenis_bayar_guru`
  ADD PRIMARY KEY (`id_jenis_bayar_guru`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_jenis_bayar_siswa`
--
ALTER TABLE `tb_jenis_bayar_siswa`
  ADD PRIMARY KEY (`id_jenis_bayar_siswa`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_pemasukan_lain`
--
ALTER TABLE `tb_pemasukan_lain`
  ADD PRIMARY KEY (`id_pemasukan`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_pengeluaran_lain`
--
ALTER TABLE `tb_pengeluaran_lain`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_tahun_ajaran` (`id_tahun_ajaran`);

--
-- Indexes for table `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`,`id_jurusan`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `tb_tagihan_bebas_siswa`
--
ALTER TABLE `tb_tagihan_bebas_siswa`
  ADD PRIMARY KEY (`id_tagihan_bebas_siswa`),
  ADD KEY `id_jenis_bayar_siswa` (`id_jenis_bayar_siswa`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tb_tagihan_bulanan_guru`
--
ALTER TABLE `tb_tagihan_bulanan_guru`
  ADD PRIMARY KEY (`id_tagihan_bulanan_guru`),
  ADD KEY `id_jenis_bayar_guru` (`id_jenis_bayar_guru`),
  ADD KEY `id_guru` (`id_guru`,`id_bulan`),
  ADD KEY `id_bulan` (`id_bulan`);

--
-- Indexes for table `tb_tagihan_bulanan_siswa`
--
ALTER TABLE `tb_tagihan_bulanan_siswa`
  ADD PRIMARY KEY (`id_tagihan_bulanan_siswa`),
  ADD KEY `id_jenis_bayar_siswa` (`id_jenis_bayar_siswa`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_bulan` (`id_bulan`);

--
-- Indexes for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tb_arus_keuangan`
--
ALTER TABLE `tb_arus_keuangan`
  MODIFY `id_arus_uang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_bayar_bebas`
--
ALTER TABLE `tb_bayar_bebas`
  MODIFY `id_bayar_bebas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_bayar_pemasukan`
--
ALTER TABLE `tb_bayar_pemasukan`
  MODIFY `id_bayar_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_bayar_pengeluaran`
--
ALTER TABLE `tb_bayar_pengeluaran`
  MODIFY `id_bayar_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_bulan`
--
ALTER TABLE `tb_bulan`
  MODIFY `id_bulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_jenis_bayar_guru`
--
ALTER TABLE `tb_jenis_bayar_guru`
  MODIFY `id_jenis_bayar_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_jenis_bayar_siswa`
--
ALTER TABLE `tb_jenis_bayar_siswa`
  MODIFY `id_jenis_bayar_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_pemasukan_lain`
--
ALTER TABLE `tb_pemasukan_lain`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_pengeluaran_lain`
--
ALTER TABLE `tb_pengeluaran_lain`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tb_tagihan_bebas_siswa`
--
ALTER TABLE `tb_tagihan_bebas_siswa`
  MODIFY `id_tagihan_bebas_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tagihan_bulanan_guru`
--
ALTER TABLE `tb_tagihan_bulanan_guru`
  MODIFY `id_tagihan_bulanan_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_tagihan_bulanan_siswa`
--
ALTER TABLE `tb_tagihan_bulanan_siswa`
  MODIFY `id_tagihan_bulanan_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=613;

--
-- AUTO_INCREMENT for table `tb_tahun_ajaran`
--
ALTER TABLE `tb_tahun_ajaran`
  MODIFY `id_tahun_ajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_arus_keuangan`
--
ALTER TABLE `tb_arus_keuangan`
  ADD CONSTRAINT `tb_arus_keuangan_ibfk_1` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_bayar_bebas`
--
ALTER TABLE `tb_bayar_bebas`
  ADD CONSTRAINT `tb_bayar_bebas_ibfk_1` FOREIGN KEY (`id_tagihan_bebas_siswa`) REFERENCES `tb_tagihan_bebas_siswa` (`id_tagihan_bebas_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_bayar_pemasukan`
--
ALTER TABLE `tb_bayar_pemasukan`
  ADD CONSTRAINT `tb_bayar_pemasukan_ibfk_1` FOREIGN KEY (`id_pemasukan`) REFERENCES `tb_pemasukan_lain` (`id_pemasukan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_bayar_pengeluaran`
--
ALTER TABLE `tb_bayar_pengeluaran`
  ADD CONSTRAINT `tb_bayar_pengeluaran_ibfk_1` FOREIGN KEY (`id_pengeluaran`) REFERENCES `tb_pengeluaran_lain` (`id_pengeluaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jenis_bayar_guru`
--
ALTER TABLE `tb_jenis_bayar_guru`
  ADD CONSTRAINT `tb_jenis_bayar_guru_ibfk_1` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_jenis_bayar_siswa`
--
ALTER TABLE `tb_jenis_bayar_siswa`
  ADD CONSTRAINT `tb_jenis_bayar_siswa_ibfk_1` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pemasukan_lain`
--
ALTER TABLE `tb_pemasukan_lain`
  ADD CONSTRAINT `tb_pemasukan_lain_ibfk_1` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tb_tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_siswa_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_jurusan` (`id_jurusan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_tagihan_bebas_siswa`
--
ALTER TABLE `tb_tagihan_bebas_siswa`
  ADD CONSTRAINT `kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`);

--
-- Constraints for table `tb_tagihan_bulanan_guru`
--
ALTER TABLE `tb_tagihan_bulanan_guru`
  ADD CONSTRAINT `guru` FOREIGN KEY (`id_guru`) REFERENCES `tb_guru` (`id_guru`),
  ADD CONSTRAINT `tb_tagihan_bulanan_guru_ibfk_1` FOREIGN KEY (`id_bulan`) REFERENCES `tb_bulan` (`id_bulan`);

--
-- Constraints for table `tb_tagihan_bulanan_siswa`
--
ALTER TABLE `tb_tagihan_bulanan_siswa`
  ADD CONSTRAINT `tb_tagihan_bulanan_siswa_ibfk_1` FOREIGN KEY (`id_bulan`) REFERENCES `tb_bulan` (`id_bulan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
