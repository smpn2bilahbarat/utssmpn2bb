-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 Mar 2024 pada 16.35
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbt_uts`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `nama_user` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nama_user`, `username`, `password`) VALUES
(1, 'ADMIN', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `username`, `password`) VALUES
(1211029384, 'Raja Rambe', 'rajarambe', 'guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jawaban`
--

CREATE TABLE `tb_jawaban` (
  `id_jawaban` int(5) NOT NULL,
  `id_peserta` int(5) NOT NULL,
  `id_soal_ujian` int(5) NOT NULL,
  `jawaban` varchar(15) NOT NULL,
  `skor` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jawaban`
--

INSERT INTO `tb_jawaban` (`id_jawaban`, `id_peserta`, `id_soal_ujian`, `jawaban`, `skor`) VALUES
(1, 2, 1, 'A', '1'),
(2, 2, 1, 'A', '1'),
(3, 2, 1, 'A', '1'),
(4, 7, 1, 'A', '1'),
(5, 7, 2, 'B', '0'),
(6, 9, 1, 'D', '0'),
(7, 10, 1, 'C', '1'),
(8, 10, 2, 'A', '1'),
(9, 13, 7, 'A', '1'),
(10, 13, 6, 'B', '0'),
(11, 15, 7, 'A', '1'),
(12, 15, 8, 'D', '1'),
(13, 15, 6, 'A', '1'),
(14, 17, 9, 'A', '1'),
(15, 17, 8, 'D', '1'),
(16, 17, 7, 'A', '1'),
(17, 17, 6, 'E', '0'),
(18, 14, 8, 'E', '0'),
(19, 14, 6, 'E', '0'),
(20, 14, 7, 'A', '1'),
(21, 14, 9, 'E', '0'),
(22, 24, 17, 'D', '1'),
(23, 24, 19, 'B', '1'),
(24, 24, 18, 'B', '1'),
(25, 24, 20, 'B', '0'),
(26, 24, 16, 'C', '1'),
(27, 25, 18, 'A', '0'),
(28, 25, 16, 'C', '1'),
(29, 25, 17, 'B', '0'),
(30, 25, 19, 'C', '0'),
(31, 25, 20, 'C', '1'),
(32, 26, 19, 'B', '1'),
(33, 26, 20, 'C', '1'),
(34, 26, 18, 'B', '1'),
(35, 26, 16, 'C', '1'),
(36, 26, 17, 'D', '1'),
(37, 27, 23, 'D', '1'),
(38, 27, 24, 'E', '0'),
(39, 28, 23, 'D', '1'),
(40, 28, 24, 'D', '0'),
(41, 29, 27, 'C', '0'),
(42, 29, 25, 'A', '1'),
(43, 29, 30, 'A', '0'),
(44, 29, 29, 'C', '0'),
(45, 29, 28, 'A', '1'),
(46, 29, 26, 'A', '0'),
(47, 29, 31, 'B', '1'),
(48, 30, 25, 'A', '1'),
(49, 30, 29, 'C', '0'),
(50, 30, 30, 'D', '0'),
(51, 30, 27, 'A', '1'),
(52, 30, 31, 'B', '1'),
(53, 30, 26, 'C', '1'),
(54, 30, 28, 'A', '1'),
(55, 31, 27, 'A', '1'),
(56, 31, 28, 'A', '1'),
(57, 31, 30, 'C', '1'),
(58, 31, 29, 'D', '1'),
(59, 31, 31, 'B', '1'),
(60, 31, 26, 'C', '1'),
(61, 31, 25, 'A', '1'),
(62, 32, 25, 'A', '1'),
(63, 32, 26, 'C', '1'),
(64, 32, 29, 'D', '1'),
(65, 32, 28, 'A', '1'),
(66, 32, 30, 'B', '0'),
(67, 32, 31, 'B', '1'),
(68, 32, 27, 'A', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_ujian`
--

CREATE TABLE `tb_jenis_ujian` (
  `id_jenis_ujian` int(11) NOT NULL,
  `jenis_ujian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis_ujian`
--

INSERT INTO `tb_jenis_ujian` (`id_jenis_ujian`, `jenis_ujian`) VALUES
(1, 'UTS Ganjil '),
(3, 'UTS Genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`) VALUES
(7, '71'),
(8, '72'),
(9, '73');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matapelajaran`
--

CREATE TABLE `tb_matapelajaran` (
  `id_matapelajaran` int(11) NOT NULL,
  `kode_matapelajaran` varchar(10) NOT NULL,
  `nama_matapelajaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_matapelajaran`
--

INSERT INTO `tb_matapelajaran` (`id_matapelajaran`, `kode_matapelajaran`, `nama_matapelajaran`) VALUES
(27, '12', 'Teknologi Informasi dan Komunikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peserta`
--

CREATE TABLE `tb_peserta` (
  `id_peserta` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jenis_ujian` int(11) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `jam_ujian` time NOT NULL,
  `durasi_ujian` int(11) NOT NULL,
  `timer_ujian` int(11) NOT NULL,
  `status_ujian` tinyint(1) NOT NULL,
  `status_ujian_ujian` int(11) NOT NULL,
  `benar` varchar(20) NOT NULL,
  `salah` varchar(20) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_peserta`
--

INSERT INTO `tb_peserta` (`id_peserta`, `id_matapelajaran`, `id_siswa`, `id_jenis_ujian`, `tanggal_ujian`, `jam_ujian`, `durasi_ujian`, `timer_ujian`, `status_ujian`, `status_ujian_ujian`, `benar`, `salah`, `nilai`) VALUES
(28, 28, 15, 1, '2024-03-17', '14:43:00', 40, 2400, 2, 2, '1', '1', '50'),
(29, 27, 4, 1, '2024-03-20', '01:42:00', 20, 1200, 2, 2, '3', '4', '42.8571428'),
(30, 27, 16, 1, '2024-03-20', '01:57:00', 20, 1200, 2, 2, '5', '2', '71.4285714'),
(31, 27, 47, 1, '2024-03-27', '01:44:00', 15, 900, 2, 2, '7', '0', '100'),
(32, 27, 48, 1, '2024-03-27', '01:44:00', 15, 900, 2, 2, '6', '1', '85.7142857'),
(33, 27, 49, 1, '2024-03-27', '01:44:00', 15, 900, 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `nis` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `id_kelas`, `nama_siswa`, `nis`, `username`, `password`) VALUES
(4, 7, 'Andika Septihadi Ritonga', 116670498, 'andika_septihadi', 'password02'),
(15, 7, 'Ayatullah Abidun Bakri', 116081889, 'ayatullah', 'password03'),
(16, 7, 'Aldiansyah Harahap', 116157868, 'aldiansyah', 'password01'),
(17, 7, 'Arini Pratiwi Ritonga', 116104372, 'arini_pratiwi', 'password04'),
(18, 7, 'Dani Syahputra', 107378149, 'dani_syahputra', 'password05'),
(19, 7, 'Dita Pratiwi Munthe', 106718085, 'dita_pratiwi', 'password06'),
(20, 7, 'Farhan Putra Natama Ritonga', 119102186, 'farhan_putra', 'password07'),
(21, 7, 'Hentina Putri Ritonga', 113936932, 'hentina_putri', 'password08'),
(22, 7, 'Imam R Hamoraon Rambe', 109253596, 'imam_rambe', 'password09'),
(23, 7, 'Jihansyah Fira Harahap', 113390452, 'fira_harahap', 'password10'),
(24, 7, 'Khairul Akbar Siregar', 108847619, 'khairul_akbar', 'password11'),
(25, 7, 'Maisaroh Ritonga', 124600726, 'maisaroh_ritonga', 'password12'),
(26, 7, 'Minda Permata Ritonga', 116858336, 'minda_permata', 'password13'),
(27, 7, 'Muhammad Fazri Ritonga', 103743542, 'mhd_fazri', 'password14'),
(28, 7, 'Muhammad Naek Ritonga', 115928050, 'naek_ritonga', 'password15'),
(29, 7, 'Muhammad Syahril Ritonga', 101577447, 'syahril_ritonga', 'password16'),
(30, 7, 'Nasrah Aulia Fataya Ritonga', 114893948, 'nasrah_aulia', 'password17'),
(31, 7, 'Nur Aini Rambe', 95420382, 'nur_aini', 'password18'),
(32, 7, 'Nurhabibah Rambe', 105333259, 'nur_habibah', 'password19'),
(33, 7, 'Nur Sakinah Rambe', 101856454, 'nur_sakinah', 'password20'),
(34, 7, 'Nursaida Ritonga', 1627362, 'nursaida', 'password21'),
(35, 7, 'Nurul Asmita Rambe', 129741899, 'nurul_asmita', 'password22'),
(36, 7, 'Putri Rahmayani Ritonga', 102097625, 'putri_ritonga', 'password23'),
(37, 7, 'Rapida Ritonga', 118517120, 'rapida_ritonga', 'password24'),
(38, 7, 'Reza Rahadian Al-Fandi', 117547831, 'reza_rahardian', 'password25'),
(39, 7, 'Ridha Al-Risky Dongoran', 113104716, 'ridha_dongoran', 'password26'),
(40, 7, 'Rifki Partalian Rambe', 113664102, 'rifki_rambe', 'password27'),
(41, 7, 'Salfa Januariska Ritonga', 111809174, 'salfa_ritonga', 'password28'),
(42, 7, 'Santia Ritonga', 118305818, 'santia_ritonga', 'password29'),
(43, 7, 'Sawaludin Pasaribu', 118827573, 'sawaludin_pasaribu', 'password30'),
(44, 7, 'Sisih Ritonga', 114638317, 'sisih_ritonga', 'password31'),
(45, 7, 'Bakriansah Hasibuan', 116516697, 'bakriansah_hsb', 'password32'),
(46, 8, 'Adawiyah Ritonga', 112390932, 'adawiyah_rit', 'password001'),
(47, 8, 'Ade Pohan', 111372281, 'ade_pohan', 'password002'),
(48, 8, 'Arif Pramona Ritonga', 99731401, 'arif_ritonga', 'password003'),
(49, 8, 'Aris Sitorus', 113987879, 'aris_sitorus', 'password004'),
(50, 8, 'Arnisa Rambe', 117865755, 'arnisa_rambe', 'password005'),
(51, 8, 'Azmil Mashuri', 101152645, 'azmil_mashuri', 'password006'),
(52, 8, 'Citra Angguna Pasaribu', 119844966, 'citra_angguna', 'password007'),
(53, 8, 'Deviana Ritonga', 108011896, 'deviana_ritonga', 'password008'),
(54, 8, 'Dika Rezeki Anugrah Munthe', 106696054, 'dika_rezki', 'password009'),
(55, 8, 'Dwi Putri Septiani Ritonga', 108743012, 'dwi_putri', 'password010'),
(56, 8, 'Erdiansyah Munthe', 106035629, 'erdiansyah_munthe', 'password011'),
(57, 8, 'Indra Aldiansah', 114323727, 'indra_aldiansah', 'password012'),
(58, 8, 'Khadizah Azzahra Siregar', 111014761, 'khadizah_siregar', 'password013'),
(59, 8, 'Laung Hasibuan', 107502672, 'laung_hsb', ''),
(60, 8, 'Liana Fitri Rambe', 106958083, 'liana_rambe', 'password015'),
(61, 8, 'Lisa Novita Lubis', 345678887, 'lisa_novita', 'password016'),
(62, 8, 'Mauli Dinal Husna Rambe', 118001999, 'mauli_rambe', 'password017'),
(63, 8, 'Muhammad Akbar Rambe', 85095515, 'akbar_rambe', 'password018'),
(64, 8, 'Muhammad Gadapi Hasibuan', 106865264, 'gadapi_hasibuan', 'password019'),
(65, 8, 'Muhammad RIzky Natama Ritonga', 101769291, 'rizky_natama', 'password020'),
(66, 8, 'Untung Suropati Hasibuan', 117835799, 'untung_hasibuan', 'password021'),
(67, 8, 'Muhammad Yusril Ritonga', 117395790, 'yusril_ritonga', 'password022'),
(68, 8, 'Mulia Riski Ritonga', 97571359, 'mulia_riski', 'password023'),
(69, 8, 'Nelma Aulia Ritonga', 111373203, 'nelma_aulia', 'password024'),
(70, 8, 'Nopri Siregar', 102725138, 'nopri_siregar', 'password025'),
(71, 8, 'Nurpita Sari Ritonga', 117155929, 'nurpita_sari', 'password026'),
(72, 8, 'Putri Gadis Hasibuan', 111503284, 'putri_gadis', 'password027'),
(73, 8, 'Rapi Andi Sitorus', 109469585, 'rapi_andi', 'password028'),
(74, 8, 'Refan Fahrizal Ritonga', 109437445, 'refan_ritonga', 'passwprd029'),
(75, 8, 'Rizky Ardiansyah Rambe', 101900664, 'rizky_ardiansyah', 'password030'),
(76, 8, 'Suci Adinda Sari Munthe', 104322077, 'suci_adinda', 'password031'),
(77, 8, 'Aulya Fitri Sitompul', 7458436, 'aulya_sitompul', 'password032'),
(78, 9, 'Aldi Surya Pratama', 114083175, 'aldi_surya', 'password033'),
(79, 9, 'Aira Parhani Munthe', 118514781, 'aira_munthe', 'password034'),
(80, 9, 'Arif Armansyah Harahap', 108384412, 'arif_harahap', 'password035'),
(81, 9, 'Atika Aulia Ritonga', 114086136, 'atika_aulia', 'password036'),
(82, 9, 'Bima Ritonga', 117372347, 'bima_ritonga', 'password037'),
(83, 9, 'Dana Syamudra Munthe', 103362371, 'dana_munthe', 'password038'),
(84, 9, 'Dani Rambe', 107585582, 'dani_rambe', 'password039'),
(110, 9, 'Destia Ritonga', 106768133, 'destia_ritonga', 'password040'),
(111, 9, 'Edison Syahputra', 113467783, 'edison_syahputra', 'password041'),
(112, 9, 'Fiza Nazah', 106318319, 'fiza_nazah', 'password042'),
(113, 9, 'Gabe Ichoiri Ritonga', 115136889, 'gabe_ritonga', 'password043'),
(114, 9, 'Holong Wirda Ritonga', 117019378, 'holong_ritonga', 'password044'),
(115, 9, 'Indah Rambe', 116750317, 'indah_rambe', 'passsword045'),
(116, 9, 'Malik Irawan Sipahutar', 101338775, 'malik_irawan', 'password046'),
(117, 9, 'Muda Ritonga', 111002480, 'muda_ritonga', 'password047'),
(118, 9, 'Muhammad Adi Ritonga', 91394344, 'adi_ritonga', 'password048'),
(119, 9, 'Muhammad Arifin Rambe', 101569659, 'arifin_rambe', 'password049'),
(120, 9, 'Muhammad Toat Ritonga', 119553420, 'toat_ritonga', 'password050'),
(121, 9, 'Nazaruddin Pasaribu', 118175580, 'nazarudin', 'password051'),
(122, 9, 'Najwa Amanda Ritonga', 114679205, 'nazwa_amanda', 'password052'),
(123, 9, 'Nur Aini Dalimunthe', 105326331, 'aini_dalimunthe', 'password052'),
(124, 9, 'Nur Ainun Munthe', 109374796, 'ainun_munthe', 'password053'),
(125, 9, 'Nadya Ayuk Anggraini', 128186305, 'nadiya_ayu', 'password054'),
(126, 9, 'Paralehan Pohan', 116825386, 'paralehan_pohan', 'password055'),
(127, 9, 'Peli Syapita Ritonga', 117652124, 'peli_ritonga', 'password056'),
(128, 9, 'Repi Rajasa Munthe', 112809006, 'repi_razaresa', 'password057'),
(129, 9, 'Sifa Aziza Rambe', 119161013, 'sifa_aziza', 'password058'),
(130, 9, 'Sukma Aulia Hasibuan', 103226567, 'sukma_aulia', 'password059'),
(131, 9, 'Uki Septiansa Ritonga', 102308100, 'uki_septiansa', 'password060'),
(132, 9, 'Yuda Pratama', 112580406, 'yuda_pratama', 'password061'),
(133, 9, 'Putri Aira Riski', 113031655, 'putri_aira', 'password062'),
(134, 9, 'Wina Alfarinza', 116355873, 'wina', 'password063');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal_ujian`
--

CREATE TABLE `tb_soal_ujian` (
  `id_soal_ujian` int(11) NOT NULL,
  `id_matapelajaran` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `kunci_jawaban` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_soal_ujian`
--

INSERT INTO `tb_soal_ujian` (`id_soal_ujian`, `id_matapelajaran`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `kunci_jawaban`) VALUES
(23, 28, '<p>3+3=</p>\r\n', '3', '4', '7', '6', '8', 'D'),
(24, 28, '<p>18+8=</p>\r\n', '20', '26', '30', '28', '25', 'B'),
(25, 27, '<p>Laptop bisa terhubung dengan internet melalui media apa?</p>\r\n', 'Wireless LAN', 'Blueray', 'Hard Disk', 'Motherboard', 'Wan', 'A'),
(26, 27, '<p>Proses mengubah teks asli menjadi ciphertext disebut dengan istilah...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Decrypt', 'Cipher', 'Encrypt', 'Elgoritma', 'Enkrinsip', 'C'),
(27, 27, '<p>Proses mengubah ciphertext menjadi teks asli adala</p>\r\n', 'Deskripsi', 'Algoritma', 'Enkrinpsi', 'Chipher', 'Text', 'A'),
(28, 27, '<p>Internet bekerja dengan protokol komunikasi yang dinamakan....</p>\r\n', 'TCP/IP', 'WWW', 'WLAN', 'WIFI', 'MAN', 'A'),
(29, 27, '<p>Enkripsi memungkinkan data yang menyebar dalam Jaringan Komputer tidak dapat dibaca tanpa proses...</p>\r\n', 'Password', 'Pwngkodean', 'Encrypt', 'Decrypt', 'Perkalian', 'D'),
(30, 27, '<p>Enkripsi menggunakan algoritma tertentu yang mengubah data asli menjadi data yang terenkripsi.&nbsp;<a href=\"https://tirto.id/algoritma-definisi-ciri-jenis-struktur-dan-contohnya-gjgn\" rel=\"noopener\" target=\"_blank\">Algoritma</a>&nbsp;tersebut biasa disebut....</p>\r\n', 'Encrypt', 'Decrypt', 'Cipher', 'Logaritma', 'Algoritma', 'C'),
(31, 27, '<p>Jika teks &lsquo;saya&rsquo; dienkripsi dengan Caesar&rsquo;s cipher geser satu ke kanan, di mana a -&gt; z, dan b -&gt; a, dst..., menjadi....</p>\r\n', 'rzyz', 'tbzb', 'rbxb', 'tzxz', 'afta', 'B');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  ADD PRIMARY KEY (`id_jawaban`),
  ADD KEY `id_soal_ujian` (`id_soal_ujian`),
  ADD KEY `id_peserta` (`id_peserta`);

--
-- Indexes for table `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  ADD PRIMARY KEY (`id_jenis_ujian`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  ADD PRIMARY KEY (`id_matapelajaran`);

--
-- Indexes for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  ADD PRIMARY KEY (`id_peserta`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`),
  ADD KEY `id_mahasiswa` (`id_siswa`),
  ADD KEY `id_jenis_ujian` (`id_jenis_ujian`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `nim` (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  ADD PRIMARY KEY (`id_soal_ujian`),
  ADD KEY `id_matakuliah` (`id_matapelajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_jawaban`
--
ALTER TABLE `tb_jawaban`
  MODIFY `id_jawaban` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tb_jenis_ujian`
--
ALTER TABLE `tb_jenis_ujian`
  MODIFY `id_jenis_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_matapelajaran`
--
ALTER TABLE `tb_matapelajaran`
  MODIFY `id_matapelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb_peserta`
--
ALTER TABLE `tb_peserta`
  MODIFY `id_peserta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `tb_soal_ujian`
--
ALTER TABLE `tb_soal_ujian`
  MODIFY `id_soal_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
