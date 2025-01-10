-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2022 at 05:22 AM
-- Server version: 10.3.36-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngua4317_ngulemind`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id_acara` int(11) NOT NULL,
  `nama_acara` varchar(50) NOT NULL,
  `tgl_acara` varchar(20) DEFAULT NULL,
  `waktu_mulai` varchar(10) NOT NULL,
  `waktu_akhir` varchar(10) NOT NULL,
  `tempat_acara` varchar(100) NOT NULL,
  `alamat_acara` text NOT NULL,
  `maps` longtext DEFAULT NULL,
  `set_countdown` enum('Y','N') DEFAULT 'N',
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id_acara`, `nama_acara`, `tgl_acara`, `waktu_mulai`, `waktu_akhir`, `tempat_acara`, `alamat_acara`, `maps`, `set_countdown`, `id_user`) VALUES
(35, 'Akad Nikah', '2022/12/23', '07:00', '08:00', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '', 'N', 1),
(36, 'Resepsi', '2022/12/24', '08:00', '22:00', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'Y', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `hp`, `nama_lengkap`, `created_at`, `token`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin@ngulemind.com', '089659687659', 'Agus Sukamto', '2020-08-27 04:38:43', '5324');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `album` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `id_user`, `album`) VALUES
(1, 1, 'album1'),
(2, 1, 'album2'),
(3, 1, 'album3'),
(4, 1, 'album4'),
(5, 1, 'album5'),
(6, 1, 'album6'),
(7, 1, 'album7'),
(8, 1, 'album8'),
(9, 1, 'album9'),
(10, 1, 'album10');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_cerita` varchar(50) NOT NULL,
  `judul_cerita` text NOT NULL,
  `isi_cerita` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `id_user`, `tanggal_cerita`, `judul_cerita`, `isi_cerita`, `created_at`, `updated_at`) VALUES
(1, 1, '14 Januari 2021', 'Pertama Bertemu', 'Waktu Pertama Kali\r\nKulihat Dirimu Hadir\r\nRasa hati ini inginkan dirimu ', '2022-03-30 05:10:12', '2022-03-30 12:10:12'),
(2, 1, '16 Juni 2021', 'Jatuh Cinta', 'Hati tenang mendengar \r\nsuara indah menyapa\r\nGeloranya hati ini\r\nTak ku sangka..', '2022-03-30 05:10:12', '2022-03-30 12:10:12'),
(3, 1, '18 Juni 2021', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\r\nHati ini..slalu untukmu..', '2022-03-30 05:10:12', '2022-03-30 12:10:12'),
(4, 1, '20 Desember 2021', 'Khitbah', 'Terimalah lagu ini dari orang biasa\r\nTapi cintaku padamu luar biasa\r\nAku tak punya bunga\r\nAku tak punya harta\r\nYang ku punya hanyalah\r\nHati yang setia.. Tulus.. Padamu.. :)', '2022-03-30 05:10:12', '2022-03-30 12:10:12'),
(5, 1, '02 Januari 2022', 'Pertemuan Antar Keluarga Besar', 'Membicarakan Tanggal dan Waktu Pernikahan', '2022-03-30 05:10:12', '2022-03-30 12:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto_pria` varchar(50) NOT NULL DEFAULT '0',
  `foto_wanita` varchar(50) NOT NULL DEFAULT '0',
  `video` varchar(100) NOT NULL,
  `kunci` varchar(100) NOT NULL,
  `id_musik` int(11) NOT NULL,
  `salam_pembuka` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_wa` varchar(255) DEFAULT NULL,
  `pesan_wa` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `id_user`, `foto_pria`, `foto_wanita`, `video`, `kunci`, `id_musik`, `salam_pembuka`, `token_wa`, `pesan_wa`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', 'https://youtu.be/PjHqsdT8pJQ', '02771247e690f3137c692a8f54ff1175', 15, 'Assalamu\'alaikum Warahmatullahi Wabarakatuh.\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', NULL, 'Kepada Yth. =tamu=\n\nAssalamualaikum Wr. Wb.\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT.\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.\n\n=mempelai_pria=\nPutra Bpk =ayah_mempelai_pria= dan Ibu =ibu_mempelai_pria=\ndengan\n=mempelai_wanita=\nPutri Bpk =ayah_mempelai_wanita= dan Ibu =ibu_mempelai_wanita=\n\nMerupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih.\n\nWassalamualaikum Wr. Wb.', '2022-03-30 05:10:12', '2022-10-11 04:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_komentar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_komentar` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `id_user`, `nama_komentar`, `isi_komentar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bagus Jumawan', 'Selamat menempuh hidup baru... semoga langgeng...', '2022-03-30 12:35:34', '2022-03-30 19:35:34'),
(2, 1, 'Sahal Masykur', 'Selamat menikah ya bro.. sakinah mawadah warahmah', '2022-03-30 12:37:13', '2022-03-30 19:37:13'),
(12, 1, 'Tamu Undangan', '', '2022-08-29 18:48:13', '2022-08-30 01:48:13'),
(13, 1, 'Wahyu Aja', 'Keren\n', '2022-09-12 00:18:00', '2022-09-12 07:18:00'),
(14, 1, 'Tamu Undangan', '', '2022-10-02 03:16:54', '2022-10-02 10:16:54');

-- --------------------------------------------------------

--
-- Table structure for table `live_stream`
--

CREATE TABLE `live_stream` (
  `id_stream` int(11) NOT NULL,
  `youtube` text NOT NULL,
  `facebook` text NOT NULL,
  `instagram` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_stream`
--

INSERT INTO `live_stream` (`id_stream`, `youtube`, `facebook`, `instagram`, `id_user`) VALUES
(1, 'https://youtube.com', 'https://facebook.com', 'https://instagram.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mempelai`
--

CREATE TABLE `mempelai` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pria` varchar(50) NOT NULL,
  `nama_panggilan_pria` varchar(50) NOT NULL,
  `nama_ibu_pria` varchar(50) NOT NULL,
  `nama_ayah_pria` varchar(50) NOT NULL,
  `nama_wanita` varchar(50) NOT NULL,
  `nama_panggilan_wanita` varchar(50) NOT NULL,
  `nama_ibu_wanita` varchar(50) NOT NULL,
  `nama_ayah_wanita` varchar(50) NOT NULL,
  `posisi_mempelai` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mempelai`
--

INSERT INTO `mempelai` (`id`, `id_user`, `nama_pria`, `nama_panggilan_pria`, `nama_ibu_pria`, `nama_ayah_pria`, `nama_wanita`, `nama_panggilan_wanita`, `nama_ibu_wanita`, `nama_ayah_wanita`, `posisi_mempelai`, `created_at`, `updated_at`) VALUES
(1, 1, 'Andra Leksmana', 'Andra', 'Muslimah', 'Muslimin', 'Nadhifha Nukma Yasmine', 'Nadhifha', 'Sholehatun', 'Miftahuddin', '1', '2022-03-30 05:10:12', '2022-08-07 20:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `musik`
--

CREATE TABLE `musik` (
  `id_musik` int(11) NOT NULL,
  `judul_musik` varchar(200) NOT NULL,
  `source_musik` text NOT NULL,
  `set_default` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musik`
--

INSERT INTO `musik` (`id_musik`, `judul_musik`, `source_musik`, `set_default`, `created_at`) VALUES
(3, 'Tyok Satrio - Ada Untukmu', 'http://docs.google.com/uc?export=open&id=11zIlHxpSYitA43bnGcKn9llQDA7F-oq6', 1, '2022-06-25 20:22:22'),
(4, 'Kahitna - Menikahimu', 'http://docs.google.com/uc?export=open&id=15aOrl_rH68YJ8T7qzG2uKrnH5pojjoCr', 0, '2022-06-25 20:25:55'),
(5, 'Seventeen - Menemukanmu', 'http://docs.google.com/uc?export=open&amp;id=1vPDpMi6VfrDMhRjHJgPjMWyjHSzr4g6J', 0, '2022-06-25 20:32:20'),
(6, 'Tulus - Teman Hidup', 'http://docs.google.com/uc?export=open&amp;id=1CfhHRpMRO0J5KP_UuFHJ-E5XhobpiI6j', 0, '2022-06-25 20:35:33'),
(14, 'Andity - Semenjak Ada Dirimu', 'http://docs.google.com/uc?export=open&id=1KQtx3b1o9f2fTwcrbQ-BYU-oG0vX96Q8', 0, '2022-06-27 21:08:55'),
(15, 'Rio Febrian ft. Margareth - Kharisma Cinta', 'http://docs.google.com/uc?export=open&id=1j-g2iIC063U0BmRYpGqd_v4Vf2wjHyB0', 0, '2022-06-27 21:18:54'),
(16, 'Alief (Nasyid) - Maharku Untukmu', 'http://docs.google.com/uc?export=open&id=1ka8MOMzg8TpQmqwMAYTp1PMLMI2C8UsH', 0, '2022-06-27 21:22:42'),
(17, 'Sigma - Istikharah Cinta', 'http://docs.google.com/uc?export=open&id=1iLD2QOiNHqeGD4PlpfWxUfrN9qSrxAAk', 0, '2022-06-27 21:26:28'),
(18, 'Yovie & Nuno - Janji Suci', 'http://docs.google.com/uc?export=open&id=1dmbduf_t8-Mki97_DoR-Vcer3mED3REb', 0, '2022-06-27 21:27:38'),
(19, 'Andrew Garcia - Crazy', 'http://docs.google.com/uc?export=open&id=1cbc0RdTzl2wyB0DnnEWKPyo-pM_I7abP', 0, '2022-06-27 21:36:19'),
(20, 'Shane Filan - Beautiful In White', 'http://docs.google.com/uc?export=open&id=1u1Q6hP91b_KKXQghi0hwg7b_Pu67TZMU', 0, '2022-06-27 21:37:32'),
(21, 'Frank Sinatra - Fly Me To The Moon', 'http://docs.google.com/uc?export=open&id=1_roXNvcv7qh5SY20wLniup7mUP3mQxSo', 0, '2022-06-27 21:39:08'),
(22, 'Payung Teduh - Akad', 'http://docs.google.com/uc?export=open&id=1qdIjw-rzZa53TPdi4pHD5Vq0zdfptOwd', 0, '2022-06-27 21:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_user`, `domain`, `theme`, `id_paket`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo', '72', 3, 1, '2022-09-22 09:08:40', '2022-10-10 20:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga_paket` varchar(100) NOT NULL,
  `masa_aktif` int(11) NOT NULL,
  `buku_tamu` int(11) NOT NULL,
  `kirim_whatsapp` int(11) NOT NULL,
  `tema_bebas` int(11) NOT NULL,
  `kirim_hadiah` int(11) NOT NULL,
  `import_datatamu` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga_paket`, `masa_aktif`, `buku_tamu`, `kirim_whatsapp`, `tema_bebas`, `kirim_hadiah`, `import_datatamu`, `diskon`) VALUES
(1, 'Silver', '70000', 30, 0, 0, 0, 0, 0, 30),
(2, 'Gold', '150000', 60, 0, 0, 1, 1, 0, 34),
(3, 'Diamond', '200000', 90, 1, 1, 1, 1, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metode_bayar` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `va_number` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `harga` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `transaction_expired` datetime DEFAULT NULL,
  `biller_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_order` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_user`, `invoice`, `nama_lengkap`, `metode_bayar`, `bukti`, `nama_bank`, `va_number`, `status`, `created_at`, `harga`, `payment_type`, `transaction_status`, `transaction_time`, `transaction_expired`, `biller_code`, `instruction`, `status_order`) VALUES
(1, 1, '2207165', NULL, 'tripay', NULL, 'BNI Virtual Account', '9883033304066901', 2, '2022-09-09 09:36:48', 150000, 'bank transfer', 'pending', '2022-09-09 14:44:59', '2022-09-09 15:44:59', '', '[{\"title\":\"Internet Banking\",\"steps\":[\"Login ke internet banking Bank BNI Anda\",\"Pilih menu <b>Transaksi<\\/b> lalu klik menu <b>Virtual Account Billing<\\/b>\",\"Masukkan Nomor VA (<b>9883033304066901<\\/b>) lalu pilih <b>Rekening Debit<\\/b>\",\"Detail transaksi akan ditampilkan, pastikan data sudah sesuai\",\"Masukkan respon key BNI appli 2\",\"Transaksi sukses, simpan bukti transaksi Anda\"]},{\"title\":\"ATM BNI\",\"steps\":[\"Masukkan kartu Anda\",\"Pilih Bahasa\",\"Masukkan PIN ATM Anda\",\"Kemudian, pilih <b>Menu Lainnya<\\/b>\",\"Pilih <b>Transfer<\\/b> dan pilih jenis rekening yang akan digunakan (Contoh: Dari rekening Tabungan)\",\"Pilih <b>Virtual Account Billing<\\/b>. Masukkan Nomor VA (<b>9883033304066901<\\/b>)\",\"Tagihan yang harus dibayarkan akan muncul pada layar konfirmasi\",\"Konfirmasi, apabila telah selesai, lanjutkan transaksi\",\"Transaksi Anda telah selesai\"]}]', '0'),
(26, 1, '2209169', 'test', 'manual', '2209169.png', 'bri', '', 2, '2022-09-25 05:08:30', 150000, '', '', NULL, NULL, NULL, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pengunjung` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addr` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tamu Undangan', '182.1.69.101', '2022-03-30 12:34:25', '2022-03-30 19:34:25'),
(2, 1, 'Bagus Jumawan', '182.1.69.101', '2022-03-30 12:34:30', '2022-03-30 19:34:30'),
(3, 1, 'Bagus Jumawan', '182.1.69.101', '2022-03-30 12:34:47', '2022-03-30 19:34:47'),
(4, 1, 'Tamu Undangan', '182.1.79.211', '2022-03-31 00:23:34', '2022-03-31 07:23:34'),
(5, 1, 'Bagus Jumawan', '182.1.79.211', '2022-03-31 00:23:38', '2022-03-31 07:23:38'),
(6, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 22:55:50', '2022-04-04 05:55:50'),
(7, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:00:35', '2022-04-04 06:00:35'),
(8, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:02:27', '2022-04-04 06:02:27'),
(9, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:02:59', '2022-04-04 06:02:59'),
(10, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:05:31', '2022-04-04 06:05:31'),
(11, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:05:38', '2022-04-04 06:05:38'),
(12, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:05:38', '2022-04-04 06:05:38'),
(13, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:08:54', '2022-04-04 06:08:54'),
(14, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:10:10', '2022-04-04 06:10:10'),
(15, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:20:15', '2022-04-04 06:20:15'),
(16, 1, 'Tamu Undangan', '103.105.35.71', '2022-04-03 23:38:11', '2022-04-04 06:38:11'),
(17, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:39:26', '2022-04-04 06:39:26'),
(18, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:39:33', '2022-04-04 06:39:33'),
(19, 1, 'Bagus Jumawan', '149.154.161.7', '2022-04-03 23:40:09', '2022-04-04 06:40:09'),
(20, 1, 'Bagus Jumawan', '114.122.72.125', '2022-04-03 23:40:27', '2022-04-04 06:40:27'),
(21, 1, 'Bagus Jumawan', '110.50.81.203', '2022-04-03 23:40:29', '2022-04-04 06:40:29'),
(22, 1, 'Bagus Jumawan', '114.122.72.125', '2022-04-03 23:40:41', '2022-04-04 06:40:41'),
(23, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:40:50', '2022-04-04 06:40:50'),
(24, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:40:54', '2022-04-04 06:40:54'),
(25, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:41:25', '2022-04-04 06:41:25'),
(26, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:43:21', '2022-04-04 06:43:21'),
(27, 1, 'Bagus Jumawan', '114.122.72.125', '2022-04-03 23:44:29', '2022-04-04 06:44:29'),
(28, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:45:11', '2022-04-04 06:45:11'),
(29, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:45:29', '2022-04-04 06:45:29'),
(30, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:46:38', '2022-04-04 06:46:38'),
(31, 1, 'Bagus Jumawan', '114.122.72.125', '2022-04-03 23:47:00', '2022-04-04 06:47:00'),
(32, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:48:40', '2022-04-04 06:48:40'),
(33, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:49:05', '2022-04-04 06:49:05'),
(34, 1, 'Tamu Undangan', '149.154.161.15', '2022-04-03 23:49:55', '2022-04-04 06:49:55'),
(35, 1, 'Bagus Jumawan', '149.154.161.3', '2022-04-03 23:49:57', '2022-04-04 06:49:57'),
(36, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:51:30', '2022-04-04 06:51:30'),
(37, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:51:43', '2022-04-04 06:51:43'),
(38, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:52:21', '2022-04-04 06:52:21'),
(39, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:52:44', '2022-04-04 06:52:44'),
(40, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:52:50', '2022-04-04 06:52:50'),
(41, 1, 'Tamu Undangan', '175.45.186.197', '2022-04-03 23:52:52', '2022-04-04 06:52:52'),
(42, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:52:58', '2022-04-04 06:52:58'),
(43, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:52:59', '2022-04-04 06:52:59'),
(44, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:53:13', '2022-04-04 06:53:13'),
(45, 1, 'Tamu Undangan', '114.4.4.133', '2022-04-03 23:53:15', '2022-04-04 06:53:15'),
(46, 1, 'Tamu Undangan', '149.154.161.1', '2022-04-03 23:57:03', '2022-04-04 06:57:03'),
(47, 1, 'Tamu Undangan', '114.122.72.125', '2022-04-03 23:57:34', '2022-04-04 06:57:34'),
(48, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-03 23:57:34', '2022-04-04 06:57:34'),
(49, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:58:10', '2022-04-04 06:58:10'),
(50, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-03 23:58:21', '2022-04-04 06:58:21'),
(51, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:01:00', '2022-04-04 07:01:00'),
(52, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:01:53', '2022-04-04 07:01:53'),
(53, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:02:57', '2022-04-04 07:02:57'),
(54, 1, 'Tamu Undangan', '114.122.72.125', '2022-04-04 00:04:37', '2022-04-04 07:04:37'),
(55, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:11:31', '2022-04-04 07:11:31'),
(56, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:11:37', '2022-04-04 07:11:37'),
(57, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:11:53', '2022-04-04 07:11:53'),
(58, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:12:03', '2022-04-04 07:12:03'),
(59, 1, 'Tamu Undangan', '114.4.4.197', '2022-04-04 00:12:05', '2022-04-04 07:12:05'),
(60, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:12:17', '2022-04-04 07:12:17'),
(61, 1, 'Tamu Undangan', '175.45.186.196', '2022-04-04 00:12:18', '2022-04-04 07:12:18'),
(62, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:12:26', '2022-04-04 07:12:26'),
(63, 1, 'Tamu Undangan', '202.43.172.4', '2022-04-04 00:12:28', '2022-04-04 07:12:28'),
(64, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:12:35', '2022-04-04 07:12:35'),
(65, 1, 'Tamu Undangan', '110.50.81.196', '2022-04-04 00:12:37', '2022-04-04 07:12:37'),
(66, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:12:42', '2022-04-04 07:12:42'),
(67, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:17:40', '2022-04-04 07:17:40'),
(68, 1, 'Tamu Undangan', '114.4.4.200', '2022-04-04 00:17:41', '2022-04-04 07:17:41'),
(69, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:17:57', '2022-04-04 07:17:57'),
(70, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:18:17', '2022-04-04 07:18:17'),
(71, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:18:38', '2022-04-04 07:18:38'),
(72, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:18:56', '2022-04-04 07:18:56'),
(73, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:19:07', '2022-04-04 07:19:07'),
(74, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:19:13', '2022-04-04 07:19:13'),
(75, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:20:17', '2022-04-04 07:20:17'),
(76, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:20:43', '2022-04-04 07:20:43'),
(77, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:20:49', '2022-04-04 07:20:49'),
(78, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:20:55', '2022-04-04 07:20:55'),
(79, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:21:00', '2022-04-04 07:21:00'),
(80, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:21:21', '2022-04-04 07:21:21'),
(81, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:21:24', '2022-04-04 07:21:24'),
(82, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:21:29', '2022-04-04 07:21:29'),
(83, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:24:14', '2022-04-04 07:24:14'),
(84, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:24:16', '2022-04-04 07:24:16'),
(85, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:30:41', '2022-04-04 07:30:41'),
(86, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:31:11', '2022-04-04 07:31:11'),
(87, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:31:21', '2022-04-04 07:31:21'),
(88, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:31:33', '2022-04-04 07:31:33'),
(89, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:31:43', '2022-04-04 07:31:43'),
(90, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:31:51', '2022-04-04 07:31:51'),
(91, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:31:56', '2022-04-04 07:31:56'),
(92, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:33:02', '2022-04-04 07:33:02'),
(93, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:34:14', '2022-04-04 07:34:14'),
(94, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:34:24', '2022-04-04 07:34:24'),
(95, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:39:57', '2022-04-04 07:39:57'),
(96, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:39:57', '2022-04-04 07:39:57'),
(97, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:40:04', '2022-04-04 07:40:04'),
(98, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:40:51', '2022-04-04 07:40:51'),
(99, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:42:53', '2022-04-04 07:42:53'),
(100, 1, 'Bagus Jumawan', '182.1.105.233', '2022-04-04 00:43:00', '2022-04-04 07:43:00'),
(101, 1, 'Tamu Undangan', '182.1.105.233', '2022-04-04 00:43:14', '2022-04-04 07:43:14'),
(102, 1, 'Tamu Undangan', '103.105.28.153', '2022-04-04 06:42:25', '2022-04-04 13:42:25'),
(103, 1, 'Bagus Jumawan', '103.105.28.153', '2022-04-04 06:42:51', '2022-04-04 13:42:51'),
(104, 1, 'Bagus Jumawan', '103.105.28.188', '2022-04-04 07:00:00', '2022-04-04 14:00:00'),
(105, 1, 'Tamu Undangan', '103.105.28.188', '2022-04-04 07:02:47', '2022-04-04 14:02:47'),
(106, 1, 'Tamu Undangan', '110.50.81.200', '2022-04-04 07:02:49', '2022-04-04 14:02:49'),
(107, 1, 'Tamu Undangan', '103.105.28.164', '2022-04-04 09:00:07', '2022-04-04 16:00:07'),
(108, 1, 'Maulana Arifin', '103.105.35.110', '2022-04-04 13:42:33', '2022-04-04 20:42:33'),
(109, 1, 'Bayu Sutrisno', '103.105.35.110', '2022-04-04 13:48:08', '2022-04-04 20:48:08'),
(110, 1, 'Bayu Sutrisno', '103.105.35.110', '2022-04-04 13:48:43', '2022-04-04 20:48:43'),
(111, 1, 'Bayu Sutrisno', '103.105.35.110', '2022-04-04 13:52:27', '2022-04-04 20:52:27'),
(112, 1, 'Maulana Arifin', '103.105.35.110', '2022-04-04 13:56:08', '2022-04-04 20:56:08'),
(113, 1, 'Tamu Undangan', '103.105.35.110', '2022-04-04 14:10:49', '2022-04-04 21:10:49'),
(114, 1, 'Bagus Jumawan', '103.105.35.110', '2022-04-04 14:11:18', '2022-04-04 21:11:18'),
(115, 1, 'Tamu Undangan', '103.105.35.110', '2022-04-04 14:11:28', '2022-04-04 21:11:28'),
(116, 1, 'Maulana Arifin', '103.105.35.110', '2022-04-04 14:15:28', '2022-04-04 21:15:28'),
(117, 1, 'Tamu Undangan', '103.105.28.131', '2022-04-06 03:11:58', '2022-04-06 10:11:58'),
(118, 1, 'Tamu Undangan', '103.105.28.170', '2022-04-06 23:38:25', '2022-04-07 06:38:25'),
(119, 1, 'Tamu Undangan', '103.105.35.81', '2022-04-10 03:49:13', '2022-04-10 10:49:13'),
(120, 1, 'Tamu Undangan', '103.105.35.99', '2022-04-14 21:45:45', '2022-04-15 04:45:45'),
(121, 1, 'Bagus Jumawan', '103.105.35.99', '2022-04-14 21:46:04', '2022-04-15 04:46:04'),
(122, 1, 'Bagus Jumawan', '110.50.81.200', '2022-04-14 21:46:07', '2022-04-15 04:46:07'),
(123, 1, 'Tamu Undangan', '103.105.35.99', '2022-04-14 21:47:27', '2022-04-15 04:47:27'),
(124, 1, 'Sofiatun', '103.105.35.99', '2022-04-14 21:49:56', '2022-04-15 04:49:56'),
(125, 1, 'Bayu Sutrisno', '103.105.28.139', '2022-04-15 21:50:19', '2022-04-16 04:50:19'),
(128, 1, 'Tamu Undangan', '103.105.27.113', '2022-04-20 21:21:16', '2022-04-21 04:21:16'),
(129, 1, 'Tamu Undangan', '103.105.27.113', '2022-04-20 21:21:56', '2022-04-21 04:21:56'),
(130, 1, 'Tamu Undangan', '103.105.27.113', '2022-04-20 21:23:39', '2022-04-21 04:23:39'),
(133, 1, 'Tamu Undangan', '103.105.27.64', '2022-04-24 08:38:55', '2022-04-24 15:38:55'),
(134, 1, 'Tamu Undangan', '103.105.27.64', '2022-04-24 08:41:57', '2022-04-24 15:41:57'),
(135, 1, 'Tamu Undangan', '103.105.27.64', '2022-04-24 08:46:12', '2022-04-24 15:46:12'),
(136, 1, 'Tamu Undangan', '103.105.27.115', '2022-05-05 14:07:47', '2022-05-05 21:07:47'),
(137, 1, 'Bagus Jumawan', '103.105.27.115', '2022-05-05 14:08:13', '2022-05-05 21:08:13'),
(138, 1, 'Tamu Undangan', '103.105.35.68', '2022-05-06 00:29:13', '2022-05-06 07:29:13'),
(139, 1, 'Tamu Undangan', '182.1.76.95', '2022-05-10 16:00:43', '2022-05-10 23:00:43'),
(140, 1, 'Tamu Undangan', '182.1.77.75', '2022-05-10 22:51:12', '2022-05-11 05:51:12'),
(141, 1, 'Tamu Undangan', '103.105.35.100', '2022-05-14 11:07:33', '2022-05-14 18:07:33'),
(142, 1, 'Tamu Undangan', '182.1.114.170', '2022-05-15 01:09:10', '2022-05-15 08:09:10'),
(143, 1, 'Tamu Undangan', '182.1.114.170', '2022-05-15 01:19:34', '2022-05-15 08:19:34'),
(144, 1, 'Tamu Undangan', '103.105.35.119', '2022-05-16 12:27:41', '2022-05-16 19:27:41'),
(145, 1, 'Tamu Undangan', '182.1.97.46', '2022-05-21 14:18:40', '2022-05-21 21:18:40'),
(146, 1, 'Tamu Undangan', '182.1.97.46', '2022-05-21 15:02:33', '2022-05-21 22:02:33'),
(147, 1, 'Tamu Undangan', '114.125.111.40', '2022-05-22 07:51:13', '2022-05-22 14:51:13'),
(148, 1, 'Tamu Undangan', '114.125.111.40', '2022-05-22 07:53:01', '2022-05-22 14:53:01'),
(149, 1, 'Tamu Undangan', '114.125.111.40', '2022-05-22 08:00:19', '2022-05-22 15:00:19'),
(150, 1, 'Tamu Undangan', '114.125.111.40', '2022-05-22 08:03:34', '2022-05-22 15:03:34'),
(151, 1, 'Tamu Undangan', '114.125.111.40', '2022-05-22 08:15:12', '2022-05-22 15:15:12'),
(152, 1, 'Tamu Undangan', '182.1.89.71', '2022-05-27 14:48:22', '2022-05-27 21:48:22'),
(153, 1, 'Tamu Undangan', '103.105.28.191', '2022-05-28 08:05:14', '2022-05-28 15:05:14'),
(154, 1, 'Tamu Undangan', '103.105.28.191', '2022-05-28 08:05:23', '2022-05-28 15:05:23'),
(155, 1, 'Tamu Undangan', '103.105.28.142', '2022-05-28 15:17:04', '2022-05-28 22:17:04'),
(156, 1, 'Tamu Undangan', '114.125.125.237', '2022-05-28 15:17:16', '2022-05-28 22:17:16'),
(157, 1, 'Tamu Undangan', '110.50.81.199', '2022-05-28 15:17:18', '2022-05-28 22:17:18'),
(158, 1, 'Tamu Undangan', '103.105.28.142', '2022-05-28 15:18:14', '2022-05-28 22:18:14'),
(159, 1, 'Bagus Jumawan', '103.105.28.142', '2022-05-28 15:18:23', '2022-05-28 22:18:23'),
(160, 1, 'Bagus Jumawan', '175.45.186.196', '2022-05-28 15:18:26', '2022-05-28 22:18:26'),
(161, 1, 'Tamu Undangan', '114.125.125.237', '2022-05-28 15:21:44', '2022-05-28 22:21:44'),
(162, 1, 'Tamu Undangan', '36.69.7.126', '2022-05-29 04:19:46', '2022-05-29 11:19:46'),
(163, 1, 'Tamu Undangan', '182.1.94.132', '2022-05-29 04:21:00', '2022-05-29 11:21:00'),
(164, 1, 'Tamu Undangan', '182.1.94.132', '2022-05-29 04:27:07', '2022-05-29 11:27:07'),
(165, 1, 'Tamu Undangan', '182.1.113.201', '2022-05-31 22:36:38', '2022-06-01 05:36:38'),
(166, 1, 'Tamu Undangan', '103.26.211.5', '2022-05-31 22:36:40', '2022-06-01 05:36:40'),
(167, 1, 'Tamu Undangan', '205.210.31.129', '2022-06-04 04:22:41', '2022-06-04 11:22:41'),
(168, 1, 'Tamu Undangan', '205.210.31.24', '2022-06-05 21:02:25', '2022-06-06 04:02:25'),
(169, 1, 'Tamu Undangan', '182.1.127.87', '2022-06-07 12:15:46', '2022-06-07 19:15:46'),
(170, 1, 'Tamu Undangan', '182.1.127.87', '2022-06-07 12:15:46', '2022-06-07 19:15:46'),
(171, 1, 'Tamu Undangan', '182.1.127.87', '2022-06-07 12:27:33', '2022-06-07 19:27:33'),
(172, 1, 'Tamu Undangan', '182.1.127.87', '2022-06-07 13:13:42', '2022-06-07 20:13:42'),
(173, 1, 'Tamu Undangan', '182.1.127.87', '2022-06-07 13:31:33', '2022-06-07 20:31:33'),
(174, 1, 'Tamu Undangan', '182.1.110.71', '2022-06-07 14:45:37', '2022-06-07 21:45:37'),
(175, 1, 'Tamu Undangan', '205.210.31.12', '2022-06-08 21:59:02', '2022-06-09 04:59:02'),
(176, 1, 'Tamu Undangan', '205.210.31.152', '2022-06-09 00:19:54', '2022-06-09 07:19:54'),
(177, 1, 'Tamu Undangan', '205.210.31.13', '2022-06-09 00:39:45', '2022-06-09 07:39:45'),
(178, 1, 'Tamu Undangan', '198.235.24.132', '2022-06-09 02:22:06', '2022-06-09 09:22:06'),
(179, 1, 'Tamu Undangan', '198.235.24.32', '2022-06-10 19:30:04', '2022-06-11 02:30:04'),
(180, 1, 'Tamu Undangan', '198.235.24.152', '2022-06-12 21:35:49', '2022-06-13 04:35:49'),
(181, 1, 'Tamu Undangan', '180.253.68.220', '2022-06-13 09:55:08', '2022-06-13 16:55:08'),
(182, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 10:36:44', '2022-06-13 17:36:44'),
(183, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 11:17:15', '2022-06-13 18:17:15'),
(184, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 11:17:27', '2022-06-13 18:17:27'),
(185, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 11:18:26', '2022-06-13 18:18:26'),
(186, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 11:20:00', '2022-06-13 18:20:00'),
(187, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 11:20:13', '2022-06-13 18:20:13'),
(188, 1, 'Tamu Undangan', '103.105.35.97', '2022-06-13 11:20:37', '2022-06-13 18:20:37'),
(189, 1, 'Tamu Undangan', '103.105.35.89', '2022-06-13 13:06:26', '2022-06-13 20:06:26'),
(190, 1, 'Tamu Undangan', '103.105.35.89', '2022-06-13 13:06:56', '2022-06-13 20:06:56'),
(191, 1, 'Tamu Undangan', '13.38.86.149', '2022-06-13 19:24:17', '2022-06-14 02:24:17'),
(192, 1, 'Tamu Undangan', '103.105.28.129', '2022-06-13 22:46:08', '2022-06-14 05:46:08'),
(193, 1, 'Tamu Undangan', '149.154.161.214', '2022-06-14 04:44:20', '2022-06-14 11:44:20'),
(194, 1, 'Tamu Undangan', '140.213.136.221', '2022-06-14 04:52:25', '2022-06-14 11:52:25'),
(195, 1, 'Bagus Jumawan', '149.154.161.7', '2022-06-14 04:57:40', '2022-06-14 11:57:40'),
(196, 1, 'Bagus Jumawan', '140.213.136.221', '2022-06-14 04:57:59', '2022-06-14 11:57:59'),
(197, 1, 'Tamu Undangan', '198.235.24.140', '2022-06-15 01:36:16', '2022-06-15 08:36:16'),
(198, 1, 'Tamu Undangan', '36.69.5.85', '2022-06-16 09:29:20', '2022-06-16 16:29:20'),
(199, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 15:28:12', '2022-06-18 22:28:12'),
(200, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 15:57:19', '2022-06-18 22:57:19'),
(201, 1, 'Tamu Undangan', '66.96.224.197', '2022-06-18 15:57:20', '2022-06-18 22:57:20'),
(202, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 15:58:42', '2022-06-18 22:58:42'),
(203, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 16:01:09', '2022-06-18 23:01:09'),
(204, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 16:01:44', '2022-06-18 23:01:44'),
(205, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 16:01:59', '2022-06-18 23:01:59'),
(206, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 16:03:33', '2022-06-18 23:03:33'),
(207, 1, 'Tamu Undangan', '103.105.27.66', '2022-06-18 16:05:08', '2022-06-18 23:05:08'),
(208, 1, 'Tamu Undangan', '205.210.31.28', '2022-06-18 18:05:33', '2022-06-19 01:05:33'),
(209, 1, 'Tamu Undangan', '205.210.31.27', '2022-06-18 19:12:56', '2022-06-19 02:12:56'),
(210, 1, 'Tamu Undangan', '198.235.24.33', '2022-06-18 21:20:44', '2022-06-19 04:20:44'),
(211, 1, 'Tamu Undangan', '205.210.31.28', '2022-06-18 21:46:38', '2022-06-19 04:46:38'),
(212, 1, 'Tamu Undangan', '103.105.35.68', '2022-06-18 22:05:07', '2022-06-19 05:05:07'),
(213, 1, 'Tamu Undangan', '198.235.24.21', '2022-06-18 22:39:13', '2022-06-19 05:39:13'),
(214, 1, 'Tamu Undangan', '140.213.130.119', '2022-06-19 02:42:26', '2022-06-19 09:42:26'),
(215, 1, 'Tamu Undangan', '182.1.127.130', '2022-06-19 15:11:47', '2022-06-19 22:11:47'),
(216, 1, 'Tamu Undangan', '182.1.127.130', '2022-06-19 15:12:31', '2022-06-19 22:12:31'),
(217, 1, 'Tamu Undangan', '182.1.127.130', '2022-06-19 15:14:11', '2022-06-19 22:14:11'),
(218, 1, 'Tamu Undangan', '198.235.24.14', '2022-06-20 09:33:09', '2022-06-20 16:33:09'),
(219, 5, 'Tamu Undangan', '36.69.3.104', '2022-06-20 10:23:41', '2022-06-20 17:23:41'),
(220, 1, 'Tamu Undangan', '114.125.93.204', '2022-06-20 13:07:42', '2022-06-20 20:07:42'),
(221, 1, 'Tamu Undangan', '184.72.6.143', '2022-06-20 14:45:14', '2022-06-20 21:45:14'),
(222, 1, 'Tamu Undangan', '205.210.31.19', '2022-06-20 15:45:37', '2022-06-20 22:45:37'),
(223, 1, 'Tamu Undangan', '35.206.76.17', '2022-06-22 23:52:25', '2022-06-23 06:52:25'),
(224, 1, 'Tamu Undangan', '182.1.67.10', '2022-06-24 13:22:40', '2022-06-24 20:22:40'),
(225, 1, 'Tamu Undangan', '182.1.67.10', '2022-06-24 14:40:53', '2022-06-24 21:40:53'),
(226, 1, 'Tamu Undangan', '182.1.67.10', '2022-06-24 15:05:27', '2022-06-24 22:05:27'),
(227, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 13:42:06', '2022-06-25 20:42:06'),
(228, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 13:48:04', '2022-06-25 20:48:04'),
(229, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 13:49:13', '2022-06-25 20:49:13'),
(230, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 13:51:49', '2022-06-25 20:51:49'),
(231, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 13:52:44', '2022-06-25 20:52:44'),
(232, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:05:33', '2022-06-25 21:05:33'),
(233, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:05:41', '2022-06-25 21:05:41'),
(234, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:05:45', '2022-06-25 21:05:45'),
(235, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:06:02', '2022-06-25 21:06:02'),
(236, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:06:38', '2022-06-25 21:06:38'),
(237, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:06:49', '2022-06-25 21:06:49'),
(238, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 14:07:16', '2022-06-25 21:07:16'),
(239, 1, 'Tamu Undangan', '114.125.93.206', '2022-06-25 15:27:08', '2022-06-25 22:27:08'),
(240, 1, 'Tamu Undangan', '182.1.105.217', '2022-06-26 01:28:56', '2022-06-26 08:28:56'),
(241, 1, 'Tamu Undangan', '182.1.80.22', '2022-06-26 05:33:19', '2022-06-26 12:33:19'),
(242, 1, 'Tamu Undangan', '182.1.80.22', '2022-06-26 05:33:20', '2022-06-26 12:33:20'),
(243, 1, 'Tamu Undangan', '182.1.83.6', '2022-06-26 07:10:45', '2022-06-26 14:10:45'),
(246, 1, 'Tamu Undangan', '103.9.145.66', '2022-07-03 10:17:44', '2022-07-03 17:17:44'),
(247, 1, 'Bagus Jumawan', '173.252.107.8', '2022-07-03 11:43:17', '2022-07-03 18:43:17'),
(248, 1, 'Bagus Jumawan', '173.252.79.120', '2022-07-03 11:43:26', '2022-07-03 18:43:26'),
(249, 1, 'Bagus Jumawan', '173.252.107.5', '2022-07-03 11:43:27', '2022-07-03 18:43:27'),
(250, 1, 'Bagus Jumawan', '173.252.111.2', '2022-07-03 12:08:30', '2022-07-03 19:08:30'),
(251, 1, 'Bagus Jumawan', '202.67.37.228', '2022-07-03 12:39:19', '2022-07-03 19:39:19'),
(252, 1, 'Bagus Jumawan', '66.220.149.117', '2022-07-03 12:40:21', '2022-07-03 19:40:21'),
(253, 1, 'Tamu Undangan', '66.220.149.17', '2022-07-03 12:40:38', '2022-07-03 19:40:38'),
(254, 1, 'Tamu Undangan', '66.220.149.2', '2022-07-03 12:40:39', '2022-07-03 19:40:39'),
(255, 1, 'Tamu Undangan', '202.67.37.228', '2022-07-03 12:40:50', '2022-07-03 19:40:50'),
(256, 1, 'Tamu Undangan', '31.13.127.19', '2022-07-03 13:03:21', '2022-07-03 20:03:21'),
(257, 1, 'Tamu Undangan', '173.252.127.13', '2022-07-03 13:31:25', '2022-07-03 20:31:25'),
(258, 1, 'Tamu Undangan', '69.63.184.120', '2022-07-03 13:32:04', '2022-07-03 20:32:04'),
(259, 1, 'Tamu Undangan', '103.153.34.30', '2022-07-03 13:36:24', '2022-07-03 20:36:24'),
(260, 1, 'Tamu Undangan', '103.153.34.30', '2022-07-03 13:37:06', '2022-07-03 20:37:06'),
(261, 1, 'Bagus Jumawan', '36.73.88.212', '2022-07-03 13:38:48', '2022-07-03 20:38:48'),
(262, 1, 'Bagus Jumawan', '36.68.220.37', '2022-07-03 14:13:35', '2022-07-03 21:13:35'),
(263, 1, 'Bagus Jumawan', '182.3.41.245', '2022-07-03 14:29:48', '2022-07-03 21:29:48'),
(264, 1, 'Tamu Undangan', '69.171.251.117', '2022-07-03 16:31:37', '2022-07-03 23:31:37'),
(265, 1, 'Tamu Undangan', '69.63.184.5', '2022-07-03 16:32:18', '2022-07-03 23:32:18'),
(266, 1, 'Bagus Jumawan', '180.254.135.91', '2022-07-03 17:16:55', '2022-07-04 00:16:55'),
(267, 1, 'Bagus Jumawan', '36.68.53.50', '2022-07-03 23:11:26', '2022-07-04 06:11:26'),
(268, 1, 'Tamu Undangan', '114.5.212.140', '2022-07-04 00:04:45', '2022-07-04 07:04:45'),
(269, 1, 'Tamu Undangan', '104.248.75.7', '2022-07-04 00:05:28', '2022-07-04 07:05:28'),
(270, 1, 'Bagus Jumawan', '36.68.127.59', '2022-07-04 03:34:00', '2022-07-04 10:34:00'),
(271, 1, 'Bagus Jumawan', '120.188.36.238', '2022-07-04 11:33:19', '2022-07-04 18:33:19'),
(272, 1, 'Tamu Undangan', '173.252.95.117', '2022-07-05 01:02:57', '2022-07-05 08:02:57'),
(273, 1, 'Tamu Undangan', '173.252.95.113', '2022-07-05 01:02:57', '2022-07-05 08:02:57'),
(274, 1, 'Tamu Undangan', '69.171.251.14', '2022-07-05 10:02:59', '2022-07-05 17:02:59'),
(275, 1, 'Tamu Undangan', '69.63.189.3', '2022-07-05 10:03:34', '2022-07-05 17:03:34'),
(276, 1, 'Bagus Jumawan', '103.180.119.66', '2022-07-05 13:25:14', '2022-07-05 20:25:14'),
(277, 8, 'Tamu Undangan', '182.3.73.126', '2022-07-06 11:56:00', '2022-07-06 18:56:00'),
(278, 8, 'Tamu Undangan', '182.3.73.130', '2022-07-06 12:00:45', '2022-07-06 19:00:45'),
(279, 8, 'Tamu Undangan', '182.3.73.154', '2022-07-06 12:01:18', '2022-07-06 19:01:18'),
(280, 8, 'Tamu Undangan', '182.3.72.42', '2022-07-06 12:01:40', '2022-07-06 19:01:40'),
(281, 8, 'Tamu Undangan', '182.3.73.102', '2022-07-06 12:01:44', '2022-07-06 19:01:44'),
(282, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:05:50', '2022-07-06 19:05:50'),
(283, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:06:03', '2022-07-06 19:06:03'),
(284, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:06:56', '2022-07-06 19:06:56'),
(285, 8, 'Tamu Undangan', '140.213.230.129', '2022-07-06 12:07:21', '2022-07-06 19:07:21'),
(286, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:10:39', '2022-07-06 19:10:39'),
(287, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:15:34', '2022-07-06 19:15:34'),
(288, 8, 'Tamu Undangan', '140.213.70.221', '2022-07-06 12:31:01', '2022-07-06 19:31:01'),
(289, 8, 'Tamu Undangan', '103.105.28.149', '2022-07-06 12:42:54', '2022-07-06 19:42:54'),
(290, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:51:47', '2022-07-06 19:51:47'),
(291, 8, 'Tamu Undangan', '116.206.39.83', '2022-07-06 12:53:37', '2022-07-06 19:53:37'),
(292, 8, 'Tamu Undangan', '140.213.132.223', '2022-07-06 13:16:22', '2022-07-06 20:16:22'),
(293, 1, 'Bagus Jumawan', '125.162.214.34', '2022-07-06 14:47:36', '2022-07-06 21:47:36'),
(294, 8, 'Tamu Undangan', '182.3.73.126', '2022-07-06 15:57:35', '2022-07-06 22:57:35'),
(295, 8, 'Tamu Undangan', '66.220.149.7', '2022-07-06 15:58:18', '2022-07-06 22:58:18'),
(296, 8, 'Tamu Undangan', '66.220.149.15', '2022-07-06 15:58:19', '2022-07-06 22:58:19'),
(297, 8, 'Tamu Undangan', '66.220.149.12', '2022-07-06 15:58:25', '2022-07-06 22:58:25'),
(298, 8, 'Tamu Undangan', '182.3.72.54', '2022-07-06 16:00:13', '2022-07-06 23:00:13'),
(299, 1, 'Bagus Jumawan', '103.111.143.58', '2022-07-06 17:41:46', '2022-07-07 00:41:46'),
(300, 8, 'Tamu Undangan', '182.1.232.119', '2022-07-06 21:47:56', '2022-07-07 04:47:56'),
(301, 8, 'Tamu Undangan', '182.1.232.119', '2022-07-06 21:51:20', '2022-07-07 04:51:20'),
(302, 8, 'Tamu Undangan', '182.1.119.33', '2022-07-07 14:37:44', '2022-07-07 21:37:44'),
(306, 8, 'Tamu Undangan', '182.1.119.33', '2022-07-07 15:05:40', '2022-07-07 22:05:40'),
(307, 8, 'Tamu Undangan', '182.1.119.33', '2022-07-07 15:07:30', '2022-07-07 22:07:30'),
(308, 8, 'Tamu Undangan', '140.213.130.62', '2022-07-07 16:09:43', '2022-07-07 23:09:43'),
(309, 8, 'Tamu Undangan', '116.206.43.120', '2022-07-07 16:24:08', '2022-07-07 23:24:08'),
(310, 8, 'Tamu Undangan', '116.206.43.120', '2022-07-07 16:24:22', '2022-07-07 23:24:22'),
(311, 1, 'Bagus Jumawan', '180.254.224.29', '2022-07-08 02:01:42', '2022-07-08 09:01:42'),
(312, 1, 'Tamu Undangan', '31.13.127.13', '2022-07-08 12:15:34', '2022-07-08 19:15:34'),
(313, 1, 'Tamu Undangan', '173.252.79.118', '2022-07-08 12:15:34', '2022-07-08 19:15:34'),
(314, 1, 'Tamu Undangan', '173.252.79.2', '2022-07-08 12:15:34', '2022-07-08 19:15:34'),
(315, 1, 'Tamu Undangan', '31.13.127.1', '2022-07-08 12:16:19', '2022-07-08 19:16:19'),
(316, 8, 'Tamu Undangan', '182.3.68.57', '2022-07-08 12:27:26', '2022-07-08 19:27:26'),
(317, 8, 'Tamu Undangan', '182.3.69.37', '2022-07-08 12:27:39', '2022-07-08 19:27:39'),
(318, 1, 'Tamu Undangan', '35.210.151.25', '2022-07-08 15:05:00', '2022-07-08 22:05:00'),
(320, 8, 'Tamu Undangan', '182.1.124.172', '2022-07-09 02:44:50', '2022-07-09 09:44:50'),
(321, 8, 'Tamu Undangan', '182.1.124.172', '2022-07-09 02:45:55', '2022-07-09 09:45:55'),
(322, 1, 'Tamu Undangan', '69.171.251.5', '2022-07-09 03:04:37', '2022-07-09 10:04:37'),
(323, 1, 'Tamu Undangan', '173.252.127.22', '2022-07-09 03:05:13', '2022-07-09 10:05:13'),
(324, 1, 'Tamu Undangan', '182.1.110.36', '2022-07-09 07:32:45', '2022-07-09 14:32:45'),
(325, 1, 'Bagus Jumawan', '114.122.105.255', '2022-07-09 09:01:30', '2022-07-09 16:01:30'),
(326, 8, 'Tamu Undangan', '116.206.43.96', '2022-07-09 09:18:26', '2022-07-09 16:18:26'),
(327, 1, 'Tamu Undangan', '182.1.110.36', '2022-07-09 09:28:38', '2022-07-09 16:28:38'),
(328, 1, 'Bagus Jumawan', '180.251.204.164', '2022-07-09 10:59:29', '2022-07-09 17:59:29'),
(329, 8, 'Tamu Undangan', '182.1.110.48', '2022-07-09 11:33:05', '2022-07-09 18:33:05'),
(330, 1, 'Tamu Undangan', '182.1.110.48', '2022-07-09 11:48:10', '2022-07-09 18:48:10'),
(331, 1, 'Bagus Jumawan', '180.252.81.189', '2022-07-09 12:37:44', '2022-07-09 19:37:44'),
(332, 1, 'Tamu Undangan', '69.171.249.15', '2022-07-09 14:53:46', '2022-07-09 21:53:46'),
(333, 1, 'Tamu Undangan', '69.171.251.8', '2022-07-09 14:57:22', '2022-07-09 21:57:22'),
(334, 1, 'Tamu Undangan', '69.171.249.15', '2022-07-09 14:58:00', '2022-07-09 21:58:00'),
(335, 8, 'Tamu Undangan', '116.206.43.110', '2022-07-10 16:32:37', '2022-07-10 23:32:37'),
(336, 8, 'Tamu Undangan', '116.206.43.110', '2022-07-10 16:32:37', '2022-07-10 23:32:37'),
(337, 8, 'Tamu Undangan', '116.206.43.110', '2022-07-10 16:32:39', '2022-07-10 23:32:39'),
(338, 1, 'Tamu Undangan', '173.252.79.13', '2022-07-10 22:13:06', '2022-07-11 05:13:06'),
(339, 1, 'Tamu Undangan', '173.252.79.20', '2022-07-10 22:13:06', '2022-07-11 05:13:06'),
(340, 1, 'Bagus Jumawan', '173.252.79.22', '2022-07-11 02:24:12', '2022-07-11 09:24:12'),
(341, 1, 'Tamu Undangan', '173.252.79.19', '2022-07-11 02:24:13', '2022-07-11 09:24:13'),
(342, 1, 'Bagus Jumawan', '173.252.79.117', '2022-07-11 02:24:13', '2022-07-11 09:24:13'),
(343, 1, 'Bagus Jumawan', '173.252.79.4', '2022-07-11 02:25:11', '2022-07-11 09:25:11'),
(344, 1, 'Bagus Jumawan', '173.252.79.24', '2022-07-11 02:25:12', '2022-07-11 09:25:12'),
(345, 1, 'Bagus Jumawan', '114.10.16.210', '2022-07-11 02:58:14', '2022-07-11 09:58:14'),
(346, 8, 'Tamu Undangan', '116.206.39.127', '2022-07-11 04:16:02', '2022-07-11 11:16:02'),
(347, 8, 'Tamu Undangan', '116.206.39.127', '2022-07-11 04:16:21', '2022-07-11 11:16:21'),
(348, 1, 'Tamu Undangan', '66.220.149.1', '2022-07-11 06:56:23', '2022-07-11 13:56:23'),
(349, 1, 'Tamu Undangan', '69.63.189.1', '2022-07-11 06:56:55', '2022-07-11 13:56:55'),
(350, 8, 'Tamu Undangan', '110.137.38.13', '2022-07-11 13:56:02', '2022-07-11 20:56:02'),
(351, 8, 'Tamu Undangan', '114.4.4.134', '2022-07-11 13:56:05', '2022-07-11 20:56:05'),
(352, 8, 'Tamu Undangan', '110.137.38.13', '2022-07-11 13:56:13', '2022-07-11 20:56:13'),
(353, 1, 'Bagus Jumawan', '103.124.138.136', '2022-07-11 16:04:07', '2022-07-11 23:04:07'),
(354, 1, 'Tamu Undangan', '182.1.74.127', '2022-07-11 22:45:02', '2022-07-12 05:45:02'),
(355, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-12 00:50:32', '2022-07-12 07:50:32'),
(356, 1, 'Bagus Jumawan', '173.252.79.118', '2022-07-12 01:24:21', '2022-07-12 08:24:21'),
(357, 1, 'Tamu Undangan', '173.252.79.24', '2022-07-12 01:24:22', '2022-07-12 08:24:22'),
(358, 1, 'Bagus Jumawan', '173.252.79.15', '2022-07-12 01:24:36', '2022-07-12 08:24:36'),
(359, 1, 'Bagus Jumawan', '180.246.87.38', '2022-07-12 02:28:30', '2022-07-12 09:28:30'),
(360, 1, 'Bagus Jumawan', '66.96.237.5', '2022-07-12 15:34:26', '2022-07-12 22:34:26'),
(361, 1, 'Bagus Jumawan', '66.96.237.8', '2022-07-12 15:35:03', '2022-07-12 22:35:03'),
(362, 1, 'Tamu Undangan', '69.171.249.12', '2022-07-13 05:30:07', '2022-07-13 12:30:07'),
(363, 1, 'Tamu Undangan', '69.171.249.119', '2022-07-13 05:30:07', '2022-07-13 12:30:07'),
(364, 1, 'Tamu Undangan', '173.252.127.19', '2022-07-13 06:20:16', '2022-07-13 13:20:16'),
(365, 1, 'Tamu Undangan', '173.252.107.118', '2022-07-13 06:20:51', '2022-07-13 13:20:51'),
(366, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-13 08:49:06', '2022-07-13 15:49:06'),
(367, 8, 'Tamu Undangan', '182.1.71.152', '2022-07-13 22:32:46', '2022-07-14 05:32:46'),
(368, 1, 'Bagus Jumawan', '114.79.20.8', '2022-07-14 02:17:33', '2022-07-14 09:17:33'),
(369, 1, 'Tamu Undangan', '173.252.111.120', '2022-07-14 08:51:28', '2022-07-14 15:51:28'),
(370, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-14 09:40:27', '2022-07-14 16:40:27'),
(371, 1, 'Bagus Jumawan', '112.215.173.47', '2022-07-14 13:13:33', '2022-07-14 20:13:33'),
(372, 1, 'Bagus Jumawan', '140.213.11.254', '2022-07-14 15:25:46', '2022-07-14 22:25:46'),
(373, 1, 'Bagus Jumawan', '140.213.11.254', '2022-07-14 15:25:53', '2022-07-14 22:25:53'),
(374, 8, 'Tamu Undangan', '182.3.70.213', '2022-07-15 00:37:58', '2022-07-15 07:37:58'),
(375, 8, 'Tamu Undangan', '182.3.70.213', '2022-07-15 00:38:03', '2022-07-15 07:38:03'),
(376, 8, 'Tamu Undangan', '182.3.71.57', '2022-07-15 00:38:43', '2022-07-15 07:38:43'),
(377, 1, 'Tamu Undangan', '173.252.111.21', '2022-07-15 09:30:56', '2022-07-15 16:30:56'),
(378, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-15 12:35:21', '2022-07-15 19:35:21'),
(379, 1, 'Bagus Jumawan', '180.251.88.237', '2022-07-16 03:36:45', '2022-07-16 10:36:45'),
(380, 1, 'Bagus Jumawan', '180.251.88.237', '2022-07-16 03:41:32', '2022-07-16 10:41:32'),
(381, 1, 'Bagus Jumawan', '125.167.34.160', '2022-07-16 03:42:43', '2022-07-16 10:42:43'),
(382, 1, 'Bagus Jumawan', '182.1.126.100', '2022-07-16 04:12:17', '2022-07-16 11:12:17'),
(383, 1, 'Bagus Jumawan', '182.1.126.100', '2022-07-16 04:17:10', '2022-07-16 11:17:10'),
(384, 1, 'Bagus Jumawan', '103.144.175.226', '2022-07-16 04:27:09', '2022-07-16 11:27:09'),
(385, 1, 'Bagus Jumawan', '103.26.211.5', '2022-07-16 04:27:10', '2022-07-16 11:27:10'),
(386, 1, 'Bagus Jumawan', '114.125.118.69', '2022-07-16 04:39:36', '2022-07-16 11:39:36'),
(387, 1, 'Bagus Jumawan', '114.125.119.106', '2022-07-16 05:36:14', '2022-07-16 12:36:14'),
(388, 1, 'Bagus Jumawan', '114.125.102.41', '2022-07-16 05:37:49', '2022-07-16 12:37:49'),
(389, 8, 'Tamu Undangan', '182.1.120.73', '2022-07-16 13:24:16', '2022-07-16 20:24:16'),
(390, 8, 'Tamu Undangan', '182.3.100.74', '2022-07-16 13:35:17', '2022-07-16 20:35:17'),
(391, 8, 'Tamu Undangan', '182.3.100.86', '2022-07-16 13:36:36', '2022-07-16 20:36:36'),
(392, 8, 'Tamu Undangan', '182.3.100.74', '2022-07-16 13:36:43', '2022-07-16 20:36:43'),
(393, 8, 'Tamu Undangan', '182.3.100.86', '2022-07-16 13:37:48', '2022-07-16 20:37:48'),
(394, 8, 'Tamu Undangan', '182.3.100.86', '2022-07-16 13:37:52', '2022-07-16 20:37:52'),
(395, 8, 'Tamu Undangan', '182.3.101.106', '2022-07-16 13:39:29', '2022-07-16 20:39:29'),
(396, 8, 'Tamu Undangan', '116.206.43.110', '2022-07-16 13:43:08', '2022-07-16 20:43:08'),
(397, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:43:47', '2022-07-16 20:43:47'),
(398, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:49:27', '2022-07-16 20:49:27'),
(399, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:51:29', '2022-07-16 20:51:29'),
(400, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:52:18', '2022-07-16 20:52:18'),
(401, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:52:50', '2022-07-16 20:52:50'),
(402, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:53:12', '2022-07-16 20:53:12'),
(403, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:53:32', '2022-07-16 20:53:32'),
(404, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:55:03', '2022-07-16 20:55:03'),
(405, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:55:34', '2022-07-16 20:55:34'),
(406, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:55:58', '2022-07-16 20:55:58'),
(407, 8, 'Tamu Undangan', '182.1.111.158', '2022-07-16 13:56:00', '2022-07-16 20:56:00'),
(408, 8, 'Tamu Undangan', '116.206.39.126', '2022-07-16 14:42:37', '2022-07-16 21:42:37'),
(409, 8, 'Tamu Undangan', '116.206.39.126', '2022-07-16 14:42:53', '2022-07-16 21:42:53'),
(410, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-16 15:45:17', '2022-07-16 22:45:17'),
(411, 8, 'Tamu Undangan', '116.206.39.126', '2022-07-16 16:07:43', '2022-07-16 23:07:43'),
(412, 1, 'Tamu Undangan', '182.1.125.201', '2022-07-16 22:44:00', '2022-07-17 05:44:00'),
(414, 8, 'Tamu Undangan', '182.1.125.201', '2022-07-16 23:04:30', '2022-07-17 06:04:30'),
(415, 1, 'Tamu Undangan', '69.171.249.20', '2022-07-17 02:34:55', '2022-07-17 09:34:55'),
(416, 1, 'Tamu Undangan', '101.128.125.98', '2022-07-17 03:00:14', '2022-07-17 10:00:14'),
(417, 1, 'Bagus Jumawan', '202.67.38.12', '2022-07-17 03:26:41', '2022-07-17 10:26:41'),
(418, 1, 'Bagus Jumawan', '101.128.125.98', '2022-07-17 04:15:26', '2022-07-17 11:15:26'),
(419, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:06:15', '2022-07-17 12:06:15'),
(420, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:13:43', '2022-07-17 12:13:43'),
(421, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:14:55', '2022-07-17 12:14:55'),
(422, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:15:09', '2022-07-17 12:15:09'),
(423, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:17:54', '2022-07-17 12:17:54'),
(424, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:18:08', '2022-07-17 12:18:08'),
(425, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 05:18:22', '2022-07-17 12:18:22'),
(426, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 05:27:47', '2022-07-17 12:27:47'),
(427, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 05:27:58', '2022-07-17 12:27:58'),
(428, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 05:28:04', '2022-07-17 12:28:04'),
(429, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 05:29:28', '2022-07-17 12:29:28'),
(430, 8, 'Ety Wahyuningsih', '110.137.36.197', '2022-07-17 05:35:10', '2022-07-17 12:35:10'),
(431, 8, 'Ety Wahyuningsih', '110.137.36.197', '2022-07-17 05:41:36', '2022-07-17 12:41:36'),
(432, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 06:06:11', '2022-07-17 13:06:11'),
(433, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 06:11:21', '2022-07-17 13:11:21'),
(434, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 06:15:36', '2022-07-17 13:15:36'),
(435, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 06:22:37', '2022-07-17 13:22:37'),
(436, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 06:22:38', '2022-07-17 13:22:38'),
(437, 8, 'Ety Wahyuningsih', '182.1.230.64', '2022-07-17 06:22:39', '2022-07-17 13:22:39'),
(438, 8, 'Tamu Undangan', '182.1.230.64', '2022-07-17 06:50:27', '2022-07-17 13:50:27'),
(439, 1, 'Bagus Jumawan', '182.2.38.122', '2022-07-17 10:30:09', '2022-07-17 17:30:09'),
(440, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-17 12:09:23', '2022-07-17 19:09:23'),
(441, 8, 'Tamu Undangan', '182.1.108.213', '2022-07-17 13:08:04', '2022-07-17 20:08:04'),
(442, 8, 'Tamu Undangan', '182.1.108.213', '2022-07-17 13:15:06', '2022-07-17 20:15:06'),
(443, 8, 'Tamu Undangan', '182.1.108.213', '2022-07-17 13:15:58', '2022-07-17 20:15:58'),
(444, 8, 'Tamu Undangan', '182.1.108.213', '2022-07-17 13:17:09', '2022-07-17 20:17:09'),
(445, 8, 'Tamu Undangan', '54.87.12.47', '2022-07-17 13:21:22', '2022-07-17 20:21:22'),
(446, 8, 'Tamu Undangan', '79.104.53.14', '2022-07-17 13:37:12', '2022-07-17 20:37:12'),
(447, 8, 'Tamu Undangan', '162.142.125.8', '2022-07-17 13:41:07', '2022-07-17 20:41:07'),
(448, 8, 'Tamu Undangan', '162.142.125.8', '2022-07-17 13:41:07', '2022-07-17 20:41:07'),
(449, 8, 'Tamu Undangan', '140.213.65.71', '2022-07-18 00:07:46', '2022-07-18 07:07:46'),
(450, 8, 'Tamu Undangan', '140.213.65.71', '2022-07-18 00:14:38', '2022-07-18 07:14:38'),
(451, 8, 'Ety Wahyuningsih', '114.125.228.125', '2022-07-18 00:28:57', '2022-07-18 07:28:57'),
(452, 8, 'Ety Wahyuningsih', '114.125.228.125', '2022-07-18 00:29:03', '2022-07-18 07:29:03'),
(453, 8, 'Ety Wahyuningsih', '114.125.228.125', '2022-07-18 00:29:25', '2022-07-18 07:29:25'),
(454, 8, 'Ety Wahyuningsih', '114.125.244.233', '2022-07-18 03:21:46', '2022-07-18 10:21:46'),
(455, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-18 03:35:24', '2022-07-18 10:35:24'),
(456, 1, 'Tamu Undangan', '36.90.60.240', '2022-07-18 04:10:58', '2022-07-18 11:10:58'),
(457, 8, 'Tamu Undangan', '65.154.226.168', '2022-07-18 06:32:57', '2022-07-18 13:32:57'),
(458, 8, 'Ety Wahyuningsih', '110.137.38.51', '2022-07-18 07:41:05', '2022-07-18 14:41:05'),
(459, 8, 'Ety Wahyuningsih', '110.137.38.51', '2022-07-18 07:42:07', '2022-07-18 14:42:07'),
(460, 8, 'Ety Wahyuningsih', '110.137.38.51', '2022-07-18 07:42:16', '2022-07-18 14:42:16'),
(461, 8, 'Putra Sanjaya', '114.125.244.37', '2022-07-18 07:43:42', '2022-07-18 14:43:42'),
(462, 8, 'Ety Wahyuningsih', '110.137.38.51', '2022-07-18 07:46:53', '2022-07-18 14:46:53'),
(463, 8, 'Ety Wahyuningsih', '110.137.38.51', '2022-07-18 07:48:45', '2022-07-18 14:48:45'),
(464, 1, 'Bagus Jumawan', '180.244.113.76', '2022-07-18 10:55:55', '2022-07-18 17:55:55'),
(465, 1, 'Bagus Jumawan', '180.244.113.76', '2022-07-18 10:57:31', '2022-07-18 17:57:31'),
(466, 8, 'Ajeng Dwi Resti', '120.188.66.6', '2022-07-18 11:58:26', '2022-07-18 18:58:26'),
(467, 8, 'Ajeng Dwi Resti', '120.188.66.6', '2022-07-18 11:58:40', '2022-07-18 18:58:40'),
(468, 8, 'Putra Sanjaya', '114.125.228.165', '2022-07-18 11:59:48', '2022-07-18 18:59:48'),
(469, 8, 'Putra Sanjaya', '114.125.228.165', '2022-07-18 12:00:34', '2022-07-18 19:00:34'),
(470, 8, 'Putra Sanjaya', '114.125.228.165', '2022-07-18 12:01:07', '2022-07-18 19:01:07'),
(471, 8, 'Tamu Undangan', '114.125.228.165', '2022-07-18 12:02:29', '2022-07-18 19:02:29'),
(472, 8, 'Tamu Undangan', '114.125.228.165', '2022-07-18 12:06:59', '2022-07-18 19:06:59'),
(473, 8, 'Tamu Undangan', '114.125.228.165', '2022-07-18 12:06:59', '2022-07-18 19:06:59'),
(474, 8, 'Tamu Undangan', '114.125.228.165', '2022-07-18 12:10:48', '2022-07-18 19:10:48'),
(475, 8, 'Putra Sanjaya', '114.125.228.165', '2022-07-18 12:10:48', '2022-07-18 19:10:48'),
(476, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:14:41', '2022-07-18 19:14:41'),
(477, 8, 'Ajeng Dwi Resti', '120.188.66.6', '2022-07-18 12:14:43', '2022-07-18 19:14:43'),
(478, 8, 'Tamu Undangan', '120.188.66.6', '2022-07-18 12:15:26', '2022-07-18 19:15:26'),
(479, 8, 'Tamu Undangan', '120.188.66.6', '2022-07-18 12:15:36', '2022-07-18 19:15:36'),
(480, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:17:30', '2022-07-18 19:17:30'),
(481, 8, 'Tamu Undangan', '120.188.66.6', '2022-07-18 12:20:06', '2022-07-18 19:20:06'),
(482, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:21:19', '2022-07-18 19:21:19'),
(483, 8, 'Putra Sanjaya', '114.125.244.253', '2022-07-18 12:22:19', '2022-07-18 19:22:19'),
(484, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:22:47', '2022-07-18 19:22:47'),
(485, 8, 'Putra Sanjaya', '114.125.244.253', '2022-07-18 12:22:57', '2022-07-18 19:22:57'),
(486, 8, 'Tamu Undangan', '114.125.244.253', '2022-07-18 12:23:49', '2022-07-18 19:23:49'),
(487, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:23:50', '2022-07-18 19:23:50'),
(488, 8, 'Putra Sanjaya', '114.125.244.253', '2022-07-18 12:24:11', '2022-07-18 19:24:11'),
(489, 8, 'Tamu Undangan', '114.125.244.253', '2022-07-18 12:24:15', '2022-07-18 19:24:15'),
(490, 8, 'Putra Sanjaya', '114.125.244.253', '2022-07-18 12:24:22', '2022-07-18 19:24:22'),
(491, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:24:40', '2022-07-18 19:24:40'),
(492, 8, 'Tamu Undangan', '114.125.244.253', '2022-07-18 12:24:50', '2022-07-18 19:24:50'),
(493, 8, 'Tamu Undangan', '120.188.66.6', '2022-07-18 12:25:39', '2022-07-18 19:25:39'),
(494, 8, 'Ajeng Dwi Resti', '182.1.123.157', '2022-07-18 12:25:56', '2022-07-18 19:25:56'),
(495, 8, 'Bagas ', '114.125.56.158', '2022-07-18 12:27:53', '2022-07-18 19:27:53'),
(496, 8, 'Tamu Undangan', '114.125.244.253', '2022-07-18 12:29:23', '2022-07-18 19:29:23'),
(497, 8, 'Tamu Undangan', '114.125.244.253', '2022-07-18 12:29:23', '2022-07-18 19:29:23'),
(498, 8, 'Bagas ', '114.125.56.158', '2022-07-18 12:30:40', '2022-07-18 19:30:40'),
(499, 8, 'Tamu Undangan', '114.125.244.253', '2022-07-18 12:30:51', '2022-07-18 19:30:51'),
(500, 8, 'Bagas ', '114.125.56.158', '2022-07-18 12:31:34', '2022-07-18 19:31:34'),
(501, 8, 'Kika', '116.206.39.112', '2022-07-18 12:32:32', '2022-07-18 19:32:32'),
(502, 8, 'Tamu Undangan', '114.125.228.45', '2022-07-18 12:54:45', '2022-07-18 19:54:45'),
(503, 8, 'Kika', '116.206.39.93', '2022-07-18 13:14:41', '2022-07-18 20:14:41'),
(504, 8, 'Kika', '116.206.39.93', '2022-07-18 13:16:00', '2022-07-18 20:16:00'),
(505, 8, 'Asmanah', '114.10.70.173', '2022-07-18 13:21:23', '2022-07-18 20:21:23'),
(506, 8, 'Asmanah', '114.10.70.173', '2022-07-18 13:22:49', '2022-07-18 20:22:49'),
(507, 8, 'Kika', '116.206.39.93', '2022-07-18 13:44:45', '2022-07-18 20:44:45'),
(508, 8, 'Ajeng Dwi Resti', '120.188.66.6', '2022-07-18 13:46:06', '2022-07-18 20:46:06'),
(509, 8, 'Dimas', '140.213.231.2', '2022-07-18 14:22:33', '2022-07-18 21:22:33'),
(510, 8, 'Om Teguh ', '182.1.234.130', '2022-07-18 14:25:03', '2022-07-18 21:25:03'),
(511, 8, 'IDA', '114.125.234.42', '2022-07-18 14:25:58', '2022-07-18 21:25:58'),
(512, 8, 'Tini', '110.137.36.181', '2022-07-18 14:37:43', '2022-07-18 21:37:43'),
(513, 8, 'Tini', '110.137.36.181', '2022-07-18 14:41:19', '2022-07-18 21:41:19'),
(514, 8, 'Agatha Nadya A.', '114.125.232.68', '2022-07-18 14:45:44', '2022-07-18 21:45:44'),
(515, 8, 'Agatha Nadya A.', '114.125.232.68', '2022-07-18 14:46:47', '2022-07-18 21:46:47'),
(516, 8, 'Dafa', '182.1.104.153', '2022-07-18 15:14:25', '2022-07-18 22:14:25'),
(517, 8, 'Om Ari ', '180.254.165.83', '2022-07-18 15:19:05', '2022-07-18 22:19:05'),
(518, 8, 'Tara', '116.206.39.84', '2022-07-18 15:36:00', '2022-07-18 22:36:00'),
(519, 8, 'Asria', '182.1.234.70', '2022-07-18 16:02:14', '2022-07-18 23:02:14'),
(520, 1, 'Bagus Jumawan', '207.46.13.81', '2022-07-18 18:47:48', '2022-07-19 01:47:48'),
(521, 8, 'Mama Chacha', '114.125.234.95', '2022-07-19 01:09:18', '2022-07-19 08:09:18'),
(522, 8, 'Tini', '110.137.36.181', '2022-07-19 01:11:14', '2022-07-19 08:11:14'),
(523, 8, 'Tini', '110.137.36.181', '2022-07-19 01:23:27', '2022-07-19 08:23:27'),
(524, 8, 'Putra Sanjaya', '114.125.250.72', '2022-07-19 01:52:38', '2022-07-19 08:52:38'),
(525, 8, 'Asria', '182.1.232.88', '2022-07-19 03:21:59', '2022-07-19 10:21:59'),
(526, 8, 'Dafa', '110.137.38.188', '2022-07-19 04:02:58', '2022-07-19 11:02:58'),
(527, 10, 'Tamu Undangan', '110.232.78.60', '2022-07-19 05:06:32', '2022-07-19 12:06:32'),
(528, 8, 'Bagas ', '116.206.42.80', '2022-07-19 05:23:28', '2022-07-19 12:23:28'),
(529, 8, 'Tamu Undangan', '120.188.5.194', '2022-07-19 11:24:41', '2022-07-19 18:24:41'),
(530, 8, 'Tamu Undangan', '120.188.5.194', '2022-07-19 11:25:10', '2022-07-19 18:25:10'),
(531, 8, 'Ajeng Dwi Resti', '120.188.5.194', '2022-07-19 11:25:35', '2022-07-19 18:25:35'),
(532, 8, 'Anton', '114.125.92.95', '2022-07-19 11:45:16', '2022-07-19 18:45:16'),
(533, 8, 'Joko', '110.137.39.184', '2022-07-19 12:01:50', '2022-07-19 19:01:50'),
(534, 8, 'Yuliyanti', '114.125.93.243', '2022-07-19 12:15:31', '2022-07-19 19:15:31'),
(535, 8, 'Bang Anas ', '114.125.93.243', '2022-07-19 12:20:57', '2022-07-19 19:20:57'),
(536, 8, 'Agung', '116.206.43.89', '2022-07-19 12:22:34', '2022-07-19 19:22:34'),
(537, 8, 'Tamu Undangan', '114.4.4.199', '2022-07-19 12:40:24', '2022-07-19 19:40:24'),
(538, 8, 'Tamu Undangan', '120.188.5.194', '2022-07-19 12:40:45', '2022-07-19 19:40:45'),
(539, 8, 'Tamu Undangan', '120.188.5.194', '2022-07-19 12:43:12', '2022-07-19 19:43:12'),
(540, 8, 'Ican', '110.137.36.111', '2022-07-19 13:10:41', '2022-07-19 20:10:41'),
(541, 8, 'Hendra', '140.213.232.140', '2022-07-19 13:15:21', '2022-07-19 20:15:21'),
(542, 8, 'Rozak', '116.206.39.84', '2022-07-19 13:21:21', '2022-07-19 20:21:21'),
(543, 8, 'Marco', '114.4.212.190', '2022-07-19 13:32:35', '2022-07-19 20:32:35'),
(544, 8, 'MAUL', '120.188.37.135', '2022-07-19 13:34:34', '2022-07-19 20:34:34'),
(545, 8, 'Pak Imron', '116.206.39.88', '2022-07-19 13:51:09', '2022-07-19 20:51:09'),
(546, 8, 'Pak Imron', '116.206.39.88', '2022-07-19 13:52:59', '2022-07-19 20:52:59'),
(547, 8, 'Rozak', '116.206.42.122', '2022-07-19 14:18:50', '2022-07-19 21:18:50'),
(548, 8, 'Pak Imron', '116.206.39.88', '2022-07-19 14:53:30', '2022-07-19 21:53:30'),
(549, 8, 'Tamu Undangan', '114.125.231.226', '2022-07-19 14:57:34', '2022-07-19 21:57:34'),
(550, 8, 'Pak Imron', '116.206.39.88', '2022-07-19 14:57:35', '2022-07-19 21:57:35'),
(551, 8, 'Anton', '115.178.198.203', '2022-07-19 15:21:43', '2022-07-19 22:21:43'),
(552, 8, 'Bang Anas ', '110.137.38.113', '2022-07-19 16:30:55', '2022-07-19 23:30:55'),
(553, 8, 'Mamin Uye', '110.137.36.111', '2022-07-20 00:38:32', '2022-07-20 07:38:32'),
(554, 8, 'Dafa', '110.137.36.111', '2022-07-20 00:41:03', '2022-07-20 07:41:03'),
(555, 8, 'Dafa', '110.137.36.111', '2022-07-20 00:50:29', '2022-07-20 07:50:29'),
(556, 8, 'Hendra', '140.213.65.94', '2022-07-20 03:22:12', '2022-07-20 10:22:12'),
(557, 8, 'Kika', '110.137.36.232', '2022-07-20 03:53:41', '2022-07-20 10:53:41'),
(558, 8, 'Kika', '110.137.36.232', '2022-07-20 03:54:22', '2022-07-20 10:54:22'),
(559, 8, 'Kika', '110.137.36.232', '2022-07-20 04:02:19', '2022-07-20 11:02:19'),
(560, 8, 'Joko', '110.137.39.184', '2022-07-20 04:34:25', '2022-07-20 11:34:25'),
(561, 8, 'Bang Anas ', '114.79.4.7', '2022-07-20 05:33:33', '2022-07-20 12:33:33'),
(562, 8, 'Bang Anas ', '114.79.4.7', '2022-07-20 05:34:16', '2022-07-20 12:34:16'),
(563, 8, 'Mamin Uye', '114.79.4.7', '2022-07-20 05:34:31', '2022-07-20 12:34:31'),
(564, 8, 'Silvi Dan Mimi', '116.206.39.65', '2022-07-20 06:30:31', '2022-07-20 13:30:31'),
(565, 8, 'Silvi Dan Mimi', '116.206.39.65', '2022-07-20 06:31:19', '2022-07-20 13:31:19'),
(566, 8, 'Silvi Dan Mimi', '116.206.39.65', '2022-07-20 06:33:54', '2022-07-20 13:33:54'),
(567, 8, 'Hendra', '110.137.36.111', '2022-07-20 06:40:22', '2022-07-20 13:40:22'),
(568, 8, 'Tamu Undangan', '151.106.120.184', '2022-07-20 07:37:32', '2022-07-20 14:37:32'),
(569, 1, 'Bagus Jumawan', '103.164.117.202', '2022-07-20 08:25:56', '2022-07-20 15:25:56'),
(570, 1, 'Bagus Jumawan', '125.167.34.160', '2022-07-20 08:26:38', '2022-07-20 15:26:38'),
(571, 8, 'Dion', '120.188.66.137', '2022-07-20 08:42:03', '2022-07-20 15:42:03'),
(572, 8, 'Hendra', '140.213.65.99', '2022-07-20 08:51:12', '2022-07-20 15:51:12'),
(573, 8, 'Dion', '120.188.66.137', '2022-07-20 08:51:47', '2022-07-20 15:51:47'),
(574, 8, 'Dion', '120.188.66.137', '2022-07-20 08:51:47', '2022-07-20 15:51:47'),
(575, 8, 'Hendra', '140.213.65.99', '2022-07-20 08:52:47', '2022-07-20 15:52:47'),
(576, 8, 'Pak Imron', '116.206.39.117', '2022-07-20 08:53:37', '2022-07-20 15:53:37'),
(577, 8, 'Mas Edi', '182.3.72.36', '2022-07-20 09:16:32', '2022-07-20 16:16:32'),
(578, 8, 'Mas Edi', '182.3.72.36', '2022-07-20 09:24:18', '2022-07-20 16:24:18'),
(579, 8, 'Mas Edi', '182.3.72.36', '2022-07-20 09:47:01', '2022-07-20 16:47:01'),
(580, 8, 'Mas Edi', '182.3.72.36', '2022-07-20 09:48:44', '2022-07-20 16:48:44'),
(581, 8, 'Mamin Uye', '182.3.73.166', '2022-07-20 11:35:20', '2022-07-20 18:35:20'),
(582, 8, 'Pak Imron', '125.167.49.10', '2022-07-20 13:47:37', '2022-07-20 20:47:37');
INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(583, 8, 'Tamu Undangan', '65.154.226.170', '2022-07-21 03:42:40', '2022-07-21 10:42:40'),
(584, 8, 'Dion', '110.137.38.237', '2022-07-21 04:19:38', '2022-07-21 11:19:38'),
(585, 8, 'Mama Dita', '182.1.228.250', '2022-07-21 10:48:53', '2022-07-21 17:48:53'),
(586, 8, 'Kika', '116.206.43.95', '2022-07-21 13:53:57', '2022-07-21 20:53:57'),
(587, 8, 'Kika', '116.206.43.95', '2022-07-21 13:54:25', '2022-07-21 20:54:25'),
(588, 8, 'Dimas', '140.213.134.38', '2022-07-21 14:43:53', '2022-07-21 21:43:53'),
(589, 8, 'Pajrin', '103.105.82.75', '2022-07-21 15:00:50', '2022-07-21 22:00:50'),
(590, 8, 'Dika/rara', '182.1.232.193', '2022-07-21 15:02:56', '2022-07-21 22:02:56'),
(591, 1, 'Bagus Jumawan', '103.171.147.121', '2022-07-21 15:15:31', '2022-07-21 22:15:31'),
(592, 8, 'Tamu Undangan', '3.137.162.186', '2022-07-21 23:23:25', '2022-07-22 06:23:25'),
(593, 1, 'Bagus Jumawan', '173.252.79.18', '2022-07-22 06:46:00', '2022-07-22 13:46:00'),
(594, 1, 'Tamu Undangan', '173.252.79.116', '2022-07-22 06:46:02', '2022-07-22 13:46:02'),
(595, 1, 'Bagus Jumawan', '173.252.79.17', '2022-07-22 06:46:02', '2022-07-22 13:46:02'),
(596, 1, 'Tamu Undangan', '173.252.79.22', '2022-07-22 06:46:03', '2022-07-22 13:46:03'),
(597, 1, 'Bagus Jumawan', '173.252.79.116', '2022-07-22 07:34:06', '2022-07-22 14:34:06'),
(598, 1, 'Tamu Undangan', '173.252.79.5', '2022-07-22 07:34:07', '2022-07-22 14:34:07'),
(599, 1, 'Bagus Jumawan', '173.252.79.11', '2022-07-22 07:34:08', '2022-07-22 14:34:08'),
(600, 1, 'Bagus Jumawan', '173.252.79.4', '2022-07-22 07:34:10', '2022-07-22 14:34:10'),
(601, 8, 'Hendro-rica (Dafa Telkom) ', '110.137.38.131', '2022-07-22 14:47:22', '2022-07-22 21:47:22'),
(602, 8, 'Hendro-rica (Dafa Telkom) ', '110.137.38.131', '2022-07-22 14:48:14', '2022-07-22 21:48:14'),
(603, 8, 'Tamu Undangan', '205.210.31.34', '2022-07-22 21:37:27', '2022-07-23 04:37:27'),
(604, 8, 'Mama Dita', '114.125.253.158', '2022-07-23 07:39:19', '2022-07-23 14:39:19'),
(605, 8, 'Anton', '125.167.59.187', '2022-07-23 09:38:33', '2022-07-23 16:38:33'),
(606, 8, 'Tika', '114.10.71.92', '2022-07-23 10:04:56', '2022-07-23 17:04:56'),
(607, 8, 'Tika', '114.10.71.92', '2022-07-23 10:10:08', '2022-07-23 17:10:08'),
(608, 1, 'Bagus Jumawan', '36.74.45.91', '2022-07-23 16:03:20', '2022-07-23 23:03:20'),
(609, 1, 'Bagus Jumawan', '36.74.45.91', '2022-07-23 16:03:32', '2022-07-23 23:03:32'),
(612, 8, 'Pak Imron', '36.76.177.249', '2022-07-24 03:56:27', '2022-07-24 10:56:27'),
(613, 8, 'Tika', '110.137.37.151', '2022-07-24 04:24:43', '2022-07-24 11:24:43'),
(614, 8, 'Hendro-rica (Dafa Telkom) ', '114.125.23.61', '2022-07-24 05:55:41', '2022-07-24 12:55:41'),
(615, 8, 'Pak Imron', '110.137.37.216', '2022-07-24 07:13:47', '2022-07-24 14:13:47'),
(616, 8, 'Tini', '110.137.37.151', '2022-07-24 14:00:05', '2022-07-24 21:00:05'),
(617, 1, 'Bagus Jumawan', '114.5.111.45', '2022-07-24 20:25:53', '2022-07-25 03:25:53'),
(618, 8, 'Tamu Undangan', '114.125.124.163', '2022-07-25 15:11:45', '2022-07-25 22:11:45'),
(619, 8, 'Tini', '110.137.36.199', '2022-07-25 23:58:04', '2022-07-26 06:58:04'),
(620, 8, 'Tamu Undangan', '205.210.31.149', '2022-07-26 00:20:27', '2022-07-26 07:20:27'),
(621, 1, 'Bagus Jumawan', '36.74.43.137', '2022-07-26 02:17:39', '2022-07-26 09:17:39'),
(622, 8, 'Tamu Undangan', '198.235.24.141', '2022-07-26 03:12:49', '2022-07-26 10:12:49'),
(623, 8, 'Pajrin', '110.137.39.250', '2022-07-26 05:33:35', '2022-07-26 12:33:35'),
(624, 1, 'Bagus Jumawan', '36.73.119.133', '2022-07-26 07:47:24', '2022-07-26 14:47:24'),
(625, 1, 'Bagus Jumawan', '36.73.119.133', '2022-07-26 07:49:02', '2022-07-26 14:49:02'),
(626, 8, 'Tamu Undangan', '198.235.24.28', '2022-07-26 16:06:20', '2022-07-26 23:06:20'),
(627, 8, 'Tika', '114.10.71.92', '2022-07-27 04:17:11', '2022-07-27 11:17:11'),
(628, 8, 'Tini', '114.125.244.228', '2022-07-27 05:39:36', '2022-07-27 12:39:36'),
(629, 1, 'Tamu Undangan', '207.154.204.175', '2022-07-28 19:37:55', '2022-07-29 02:37:55'),
(630, 1, 'Tamu Undangan', '207.154.204.175', '2022-07-28 19:38:04', '2022-07-29 02:38:04'),
(631, 1, 'Tamu Undangan', '207.154.204.175', '2022-07-28 19:38:04', '2022-07-29 02:38:04'),
(632, 1, 'Tamu Undangan', '205.169.39.41', '2022-07-28 19:39:20', '2022-07-29 02:39:20'),
(633, 1, 'Tamu Undangan', '3.80.3.135', '2022-07-28 19:42:32', '2022-07-29 02:42:32'),
(634, 1, 'Tamu Undangan', '173.252.83.23', '2022-07-29 12:33:15', '2022-07-29 19:33:15'),
(635, 1, 'Tamu Undangan', '162.142.125.210', '2022-07-29 17:13:38', '2022-07-30 00:13:38'),
(636, 1, 'Tamu Undangan', '162.142.125.210', '2022-07-29 17:13:38', '2022-07-30 00:13:38'),
(637, 1, 'Bagus Jumawan', '36.75.67.148', '2022-07-30 03:34:28', '2022-07-30 10:34:28'),
(639, 10, 'Tamu Undangan', '182.1.71.110', '2022-07-30 06:51:04', '2022-07-30 13:51:04'),
(640, 8, 'Tamu Undangan', '205.210.31.149', '2022-07-30 19:42:17', '2022-07-31 02:42:17'),
(641, 8, 'Tamu Undangan', '205.210.31.15', '2022-07-30 21:29:56', '2022-07-31 04:29:56'),
(642, 8, 'Dion', '182.1.233.236', '2022-07-31 02:21:25', '2022-07-31 09:21:25'),
(643, 8, 'Dion', '157.245.147.87', '2022-07-31 16:35:43', '2022-07-31 23:35:43'),
(644, 8, 'Tamu Undangan', '116.206.8.13', '2022-07-31 21:47:39', '2022-08-01 04:47:39'),
(645, 8, 'Tamu Undangan', '198.235.24.159', '2022-08-01 01:22:04', '2022-08-01 08:22:04'),
(646, 1, 'Tamu Undangan', '18.206.55.48', '2022-08-01 04:12:59', '2022-08-01 11:12:59'),
(647, 1, 'Tamu Undangan', '18.206.55.48', '2022-08-01 04:13:01', '2022-08-01 11:13:01'),
(648, 1, 'Tamu Undangan', '54.227.32.154', '2022-08-01 04:13:23', '2022-08-01 11:13:23'),
(649, 8, 'Tamu Undangan', '18.206.55.48', '2022-08-01 14:52:43', '2022-08-01 21:52:43'),
(650, 8, 'Tamu Undangan', '18.206.55.48', '2022-08-01 14:52:45', '2022-08-01 21:52:45'),
(651, 8, 'Tamu Undangan', '223.131.202.252', '2022-08-01 14:52:49', '2022-08-01 21:52:49'),
(652, 8, 'Tamu Undangan', '205.210.31.2', '2022-08-01 21:00:22', '2022-08-02 04:00:22'),
(653, 8, 'Tamu Undangan', '35.213.167.52', '2022-08-02 02:25:51', '2022-08-02 09:25:51'),
(654, 1, 'Tamu Undangan', '35.213.167.52', '2022-08-02 02:25:51', '2022-08-02 09:25:51'),
(655, 8, 'Tamu Undangan', '205.210.31.156', '2022-08-02 09:02:34', '2022-08-02 16:02:34'),
(656, 1, 'Tamu Undangan', '18.206.55.48', '2022-08-03 10:13:30', '2022-08-03 17:13:30'),
(657, 1, 'Tamu Undangan', '18.206.55.48', '2022-08-03 10:13:32', '2022-08-03 17:13:32'),
(658, 1, 'Tamu Undangan', '54.227.32.154', '2022-08-03 10:14:00', '2022-08-03 17:14:00'),
(659, 8, 'Tamu Undangan', '205.210.31.13', '2022-08-04 20:37:43', '2022-08-05 03:37:43'),
(660, 5, 'Tamu Undangan', '140.213.0.121', '2022-08-05 01:47:27', '2022-08-05 08:47:27'),
(661, 1, 'Tamu Undangan', '205.210.31.8', '2022-08-05 18:02:23', '2022-08-06 01:02:23'),
(662, 1, 'Tamu Undangan', '205.210.31.146', '2022-08-05 23:13:26', '2022-08-06 06:13:26'),
(663, 8, 'Tamu Undangan', '18.206.55.48', '2022-08-06 06:18:24', '2022-08-06 13:18:24'),
(664, 8, 'Tamu Undangan', '18.206.55.48', '2022-08-06 06:18:26', '2022-08-06 13:18:26'),
(665, 8, 'Tamu Undangan', '54.227.32.154', '2022-08-06 15:29:28', '2022-08-06 22:29:28'),
(666, 1, 'Tamu Undangan', '182.1.70.134', '2022-08-07 12:32:10', '2022-08-07 19:32:10'),
(667, 1, 'Tamu Undangan', '180.246.209.69', '2022-08-11 06:24:08', '2022-08-11 13:24:08'),
(668, 1, 'Tamu Undangan', '180.246.209.69', '2022-08-11 06:25:24', '2022-08-11 13:25:24'),
(669, 1, 'Bayu Sutrisno', '180.246.209.69', '2022-08-11 06:25:27', '2022-08-11 13:25:27'),
(671, 1, 'Tamu Undangan', '180.243.0.61', '2022-08-15 02:47:16', '2022-08-15 09:47:16'),
(672, 1, 'Tamu Undangan', '103.153.149.0', '2022-08-17 03:54:31', '2022-08-17 10:54:31'),
(683, 1, 'Tamu Undangan', '112.215.151.172', '2022-08-17 15:55:33', '2022-08-17 22:55:33'),
(684, 1, 'Tamu Undangan', '182.0.206.230', '2022-08-17 16:14:47', '2022-08-17 23:14:47'),
(685, 1, 'Tamu Undangan', '120.188.37.172', '2022-08-18 01:56:44', '2022-08-18 08:56:44'),
(686, 1, 'Tamu Undangan', '36.92.33.106', '2022-08-18 02:58:19', '2022-08-18 09:58:19'),
(687, 1, 'Tamu Undangan', '110.137.192.80', '2022-08-19 09:01:52', '2022-08-19 16:01:52'),
(688, 1, 'Tamu Undangan', '114.122.103.76', '2022-08-20 06:19:05', '2022-08-20 13:19:05'),
(689, 1, 'Tamu Undangan', '180.243.13.116', '2022-08-20 23:06:40', '2022-08-21 06:06:40'),
(690, 1, 'Tamu Undangan', '182.1.164.63', '2022-08-20 23:36:05', '2022-08-21 06:36:05'),
(691, 1, 'Tamu Undangan', '125.167.91.67', '2022-08-21 03:47:16', '2022-08-21 10:47:16'),
(692, 1, 'Tamu Undangan', '182.3.72.93', '2022-08-21 04:53:15', '2022-08-21 11:53:15'),
(693, 1, 'Tamu Undangan', '103.139.10.171', '2022-08-21 06:00:07', '2022-08-21 13:00:07'),
(694, 1, 'Tamu Undangan', '125.160.156.169', '2022-08-21 06:22:08', '2022-08-21 13:22:08'),
(695, 1, 'Tamu Undangan', '180.253.162.251', '2022-08-21 09:46:08', '2022-08-21 16:46:08'),
(696, 1, 'Tamu Undangan', '180.253.162.251', '2022-08-21 09:47:14', '2022-08-21 16:47:14'),
(697, 1, 'Tamu Undangan', '180.253.162.251', '2022-08-21 09:47:22', '2022-08-21 16:47:22'),
(698, 1, 'Tamu Undangan', '180.253.162.251', '2022-08-21 09:49:38', '2022-08-21 16:49:38'),
(699, 1, 'Tamu Undangan', '140.213.48.184', '2022-08-21 10:36:11', '2022-08-21 17:36:11'),
(700, 1, 'Tamu Undangan', '140.213.48.184', '2022-08-21 10:36:30', '2022-08-21 17:36:30'),
(701, 1, 'Tamu Undangan', '180.251.148.29', '2022-08-21 10:37:50', '2022-08-21 17:37:50'),
(702, 1, 'Tamu Undangan', '182.3.36.64', '2022-08-21 16:27:13', '2022-08-21 23:27:13'),
(703, 1, 'Tamu Undangan', '114.79.46.132', '2022-08-21 17:21:07', '2022-08-22 00:21:07'),
(704, 1, 'Tamu Undangan', '114.4.82.87', '2022-08-21 17:22:34', '2022-08-22 00:22:34'),
(705, 1, 'Tamu Undangan', '180.243.9.48', '2022-08-21 18:22:26', '2022-08-22 01:22:26'),
(706, 1, 'Tamu Undangan', '217.165.236.97', '2022-08-22 05:53:53', '2022-08-22 12:53:53'),
(707, 1, 'Tamu Undangan', '110.136.78.214', '2022-08-22 06:45:52', '2022-08-22 13:45:52'),
(708, 1, 'Tamu Undangan', '125.167.56.18', '2022-08-23 12:17:28', '2022-08-23 19:17:28'),
(709, 1, 'Tamu Undangan', '180.251.146.253', '2022-08-24 05:24:34', '2022-08-24 12:24:34'),
(710, 1, 'Tamu Undangan', '114.5.111.54', '2022-08-24 08:47:48', '2022-08-24 15:47:48'),
(711, 1, 'Tamu Undangan', '120.188.4.97', '2022-08-24 08:51:44', '2022-08-24 15:51:44'),
(713, 1, 'Tamu Undangan', '202.80.214.84', '2022-08-24 22:47:45', '2022-08-25 05:47:45'),
(714, 1, 'Tamu Undangan', '114.122.105.168', '2022-08-25 14:26:22', '2022-08-25 21:26:22'),
(715, 1, 'Tamu Undangan', '54.86.66.252', '2022-08-25 15:53:19', '2022-08-25 22:53:19'),
(716, 1, 'Tamu Undangan', '103.157.191.194', '2022-08-26 06:54:30', '2022-08-26 13:54:30'),
(717, 1, 'Tamu Undangan', '54.175.74.27', '2022-08-28 06:49:16', '2022-08-28 13:49:16'),
(718, 1, 'Tamu Undangan', '182.1.168.173', '2022-08-29 13:42:23', '2022-08-29 20:42:23'),
(719, 1, 'Tamu Undangan', '140.213.35.72', '2022-08-29 18:47:47', '2022-08-30 01:47:47'),
(720, 1, 'Tamu Undangan', '114.125.205.72', '2022-08-30 04:27:50', '2022-08-30 11:27:50'),
(721, 1, 'Tamu Undangan', '103.168.129.139', '2022-09-01 12:34:06', '2022-09-01 19:34:06'),
(722, 1, 'Tamu Undangan', '2001:448a:5050:c96:487d:47fe:2595:f4f4', '2022-09-05 10:35:09', '2022-09-05 17:35:09'),
(723, 1, 'Tamu Undangan', '202.80.216.29', '2022-09-06 04:03:18', '2022-09-06 11:03:18'),
(724, 1, 'Tamu Undangan', '2a03:2880:ff:3::face:b00c', '2022-09-08 22:50:31', '2022-09-09 05:50:31'),
(725, 1, 'Tamu Undangan', '2a03:2880:ff:77::face:b00c', '2022-09-08 22:51:06', '2022-09-09 05:51:06'),
(726, 1, 'Tamu Undangan', '2a03:2880:30ff:75::face:b00c', '2022-09-08 22:55:33', '2022-09-09 05:55:33'),
(727, 1, 'Tamu Undangan', '2a03:2880:32ff:d::face:b00c', '2022-09-08 22:56:02', '2022-09-09 05:56:02'),
(728, 1, 'Tamu Undangan', '2001:448a:304b:3cdd:1940:9db0:a5:79b6', '2022-09-09 05:44:29', '2022-09-09 12:44:29'),
(729, 1, 'Tamu Undangan', '2a03:2880:12ff:f::face:b00c', '2022-09-09 09:32:01', '2022-09-09 16:32:01'),
(730, 1, 'Tamu Undangan', '2a03:2880:12ff:5::face:b00c', '2022-09-09 09:32:03', '2022-09-09 16:32:03'),
(731, 1, 'Tamu Undangan', '2a03:2880:12ff:13::face:b00c', '2022-09-09 09:32:14', '2022-09-09 16:32:14'),
(732, 1, 'Tamu Undangan', '36.79.51.61', '2022-09-09 10:18:09', '2022-09-09 17:18:09'),
(733, 1, 'Tamu Undangan', '2404:c0:5c20::2b3:b507', '2022-09-09 10:55:04', '2022-09-09 17:55:04'),
(734, 1, 'Tamu Undangan', '140.213.132.155', '2022-09-09 11:50:37', '2022-09-09 18:50:37'),
(735, 1, 'Tamu Undangan', '140.213.132.155', '2022-09-09 11:50:51', '2022-09-09 18:50:51'),
(736, 1, 'Tamu Undangan', '2a03:2880:12ff:16::face:b00c', '2022-09-10 03:27:10', '2022-09-10 10:27:10'),
(737, 1, 'Tamu Undangan', '2a03:2880:12ff:a::face:b00c', '2022-09-10 03:27:12', '2022-09-10 10:27:12'),
(738, 1, 'Tamu Undangan', '2a03:2880:12ff:6::face:b00c', '2022-09-10 03:45:51', '2022-09-10 10:45:51'),
(739, 1, 'Tamu Undangan', '103.171.147.106', '2022-09-10 06:44:52', '2022-09-10 13:44:52'),
(740, 1, 'Tamu Undangan', '120.188.73.181', '2022-09-11 01:25:31', '2022-09-11 08:25:31'),
(741, 1, 'Tamu Undangan', '114.125.215.222', '2022-09-11 08:32:59', '2022-09-11 15:32:59'),
(742, 1, 'Tamu Undangan', '2001:448a:2042:3193:21fd:4f00:6caa:2964', '2022-09-11 09:23:20', '2022-09-11 16:23:20'),
(743, 1, 'Tamu Undangan', '114.125.222.74', '2022-09-11 09:34:15', '2022-09-11 16:34:15'),
(744, 1, 'Tamu Undangan', '120.188.38.123', '2022-09-11 12:04:08', '2022-09-11 19:04:08'),
(745, 1, 'Tamu Undangan', '114.124.145.248', '2022-09-11 23:03:59', '2022-09-12 06:03:59'),
(746, 1, 'Tamu Undangan', '114.124.145.248', '2022-09-11 23:04:51', '2022-09-12 06:04:51'),
(747, 1, 'Tamu Undangan', '114.124.145.248', '2022-09-11 23:06:32', '2022-09-12 06:06:32'),
(748, 1, 'Tamu Undangan', '114.124.145.248', '2022-09-11 23:06:38', '2022-09-12 06:06:38'),
(749, 1, 'Tamu Undangan', '182.1.67.188', '2022-09-11 23:12:14', '2022-09-12 06:12:14'),
(750, 1, 'Bayu Sutrisno', '182.1.67.188', '2022-09-11 23:12:23', '2022-09-12 06:12:23'),
(751, 1, 'Tamu Undangan', '2a03:2880:11ff:16::face:b00c', '2022-09-11 23:12:37', '2022-09-12 06:12:37'),
(752, 1, 'Tamu Undangan', '2a03:2880:11ff:12::face:b00c', '2022-09-11 23:12:38', '2022-09-12 06:12:38'),
(753, 1, 'Tamu Undangan', '114.124.145.248', '2022-09-11 23:13:07', '2022-09-12 06:13:07'),
(754, 1, 'Bayu Sutrisno', '2a03:2880:11ff:14::face:b00c', '2022-09-11 23:22:26', '2022-09-12 06:22:26'),
(755, 1, 'Bayu Sutrisno', '2a03:2880:22ff:e::face:b00c', '2022-09-11 23:22:26', '2022-09-12 06:22:26'),
(756, 1, 'Bayu Sutrisno', '2a03:2880:11ff:1::face:b00c', '2022-09-11 23:22:45', '2022-09-12 06:22:45'),
(757, 1, 'Bayu Sutrisno', '2a03:2880:11ff:12::face:b00c', '2022-09-11 23:22:46', '2022-09-12 06:22:46'),
(758, 1, 'Bayu Sutrisno', '182.1.67.188', '2022-09-11 23:22:47', '2022-09-12 06:22:47'),
(759, 1, 'Bayu Sutrisno', '2a03:2880:11ff:e::face:b00c', '2022-09-11 23:22:49', '2022-09-12 06:22:49'),
(760, 1, 'Bayu Sutrisno', '2a03:2880:21ff:17::face:b00c', '2022-09-11 23:22:49', '2022-09-12 06:22:49'),
(761, 1, 'Bayu Sutrisno', '2a03:2880:24ff:78::face:b00c', '2022-09-11 23:23:02', '2022-09-12 06:23:02'),
(762, 1, 'Bayu Sutrisno', '114.124.145.248', '2022-09-11 23:23:24', '2022-09-12 06:23:24'),
(763, 1, 'Tamu Undangan', '114.124.145.248', '2022-09-11 23:24:17', '2022-09-12 06:24:17'),
(764, 1, 'Tamu Undangan', '65.154.226.168', '2022-09-11 23:24:58', '2022-09-12 06:24:58'),
(765, 1, 'Tamu Undangan', '2a01:7e00::f03c:93ff:feeb:c416', '2022-09-11 23:25:04', '2022-09-12 06:25:04'),
(766, 1, 'Tamu Undangan', '194.233.164.177', '2022-09-11 23:25:05', '2022-09-12 06:25:05'),
(767, 1, 'Tamu Undangan', '2a01:7e00::f03c:93ff:feeb:c416', '2022-09-11 23:25:08', '2022-09-12 06:25:08'),
(768, 1, 'Tamu Undangan', '194.233.164.177', '2022-09-11 23:25:12', '2022-09-12 06:25:12'),
(769, 1, 'Tamu Undangan', '194.233.164.177', '2022-09-11 23:25:12', '2022-09-12 06:25:12'),
(770, 1, 'Tamu Undangan', '82.193.104.168', '2022-09-11 23:25:16', '2022-09-12 06:25:16'),
(771, 1, 'Tamu Undangan', '195.74.76.198', '2022-09-11 23:25:17', '2022-09-12 06:25:17'),
(772, 1, 'Tamu Undangan', '2a02:4780:e:cad6::1', '2022-09-11 23:25:19', '2022-09-12 06:25:19'),
(773, 1, 'Tamu Undangan', '2a02:4780:e:cad6::1', '2022-09-11 23:25:22', '2022-09-12 06:25:22'),
(774, 1, 'Tamu Undangan', '2a02:4780:e:cad6::1', '2022-09-11 23:25:25', '2022-09-12 06:25:25'),
(775, 1, 'Tamu Undangan', '2a02:4780:e:cad6::1', '2022-09-11 23:25:28', '2022-09-12 06:25:28'),
(776, 1, 'Tamu Undangan', '20.242.3.6', '2022-09-11 23:26:32', '2022-09-12 06:26:32'),
(777, 1, 'Tamu Undangan', '2a03:2880:21ff:12::face:b00c', '2022-09-11 23:39:15', '2022-09-12 06:39:15'),
(778, 1, 'Tamu Undangan', '2a03:2880:3ff:3::face:b00c', '2022-09-11 23:39:43', '2022-09-12 06:39:43'),
(779, 1, 'Tamu Undangan', '79.104.53.14', '2022-09-11 23:42:15', '2022-09-12 06:42:15'),
(780, 1, 'Tamu Undangan', '2a02:4780:e:cad6::1', '2022-09-11 23:43:04', '2022-09-12 06:43:04'),
(781, 1, 'Tamu Undangan', '2001:448a:5060:38c8:ade7:d5b7:4d93:555b', '2022-09-12 00:15:24', '2022-09-12 07:15:24'),
(782, 1, 'Tamu Undangan', '54.201.90.171', '2022-09-12 00:24:57', '2022-09-12 07:24:57'),
(783, 1, 'Tamu Undangan', '52.16.231.173', '2022-09-12 01:28:55', '2022-09-12 08:28:55'),
(784, 1, 'Tamu Undangan', '2001:448a:4068:33b0:3866:a6bf:4c5a:8356', '2022-09-12 01:41:04', '2022-09-12 08:41:04'),
(785, 1, 'Tamu Undangan', '2001:448a:4068:33b0:3866:a6bf:4c5a:8356', '2022-09-12 01:47:24', '2022-09-12 08:47:24'),
(786, 1, 'Tamu Undangan', '2001:448a:4068:33b0:3866:a6bf:4c5a:8356', '2022-09-12 01:49:03', '2022-09-12 08:49:03'),
(787, 1, 'Tamu Undangan', '2001:448a:4068:33b0:3866:a6bf:4c5a:8356', '2022-09-12 01:49:25', '2022-09-12 08:49:25'),
(788, 1, 'Tamu Undangan', '114.124.144.36', '2022-09-12 02:02:24', '2022-09-12 09:02:24'),
(789, 1, 'Tamu Undangan', '45.90.60.134', '2022-09-12 03:03:05', '2022-09-12 10:03:05'),
(790, 1, 'Tamu Undangan', '114.5.103.132', '2022-09-12 03:17:43', '2022-09-12 10:17:43'),
(791, 1, 'Tamu Undangan', '103.144.170.179', '2022-09-12 03:27:53', '2022-09-12 10:27:53'),
(792, 1, 'Tamu Undangan', '103.105.32.73', '2022-09-12 05:53:11', '2022-09-12 12:53:11'),
(793, 1, 'Tamu Undangan', '188.165.87.103', '2022-09-12 06:35:15', '2022-09-12 13:35:15'),
(794, 1, 'Tamu Undangan', '51.255.62.13', '2022-09-12 07:24:50', '2022-09-12 14:24:50'),
(795, 1, 'Bayu Sutrisno', '182.1.78.250', '2022-09-12 07:41:48', '2022-09-12 14:41:48'),
(796, 1, 'Tamu Undangan', '182.1.78.250', '2022-09-12 07:42:00', '2022-09-12 14:42:00'),
(797, 1, 'Tamu Undangan', '182.1.78.250', '2022-09-12 07:44:49', '2022-09-12 14:44:49'),
(798, 1, 'Bayu Sutrisno', '182.1.78.250', '2022-09-12 07:44:52', '2022-09-12 14:44:52'),
(799, 1, 'Bayu Sutrisno', '2a03:2880:11ff:c::face:b00c', '2022-09-12 07:48:09', '2022-09-12 14:48:09'),
(800, 1, 'Bayu Sutrisno', '2a03:2880:11ff:78::face:b00c', '2022-09-12 07:48:09', '2022-09-12 14:48:09'),
(801, 1, 'Tamu Undangan', '2a03:2880:11ff:17::face:b00c', '2022-09-12 07:48:11', '2022-09-12 14:48:11'),
(802, 1, 'Tamu Undangan', '2a03:2880:11ff:78::face:b00c', '2022-09-12 07:48:12', '2022-09-12 14:48:12'),
(803, 1, 'Bayu Sutrisno', '2a03:2880:11ff:10::face:b00c', '2022-09-12 07:48:18', '2022-09-12 14:48:18'),
(804, 1, 'Bayu Sutrisno', '2a03:2880:31ff:5::face:b00c', '2022-09-12 07:48:20', '2022-09-12 14:48:20'),
(805, 1, 'Bayu Sutrisno', '2a03:2880:27ff:15::face:b00c', '2022-09-12 07:49:03', '2022-09-12 14:49:03'),
(806, 1, 'Bayu Sutrisno', '2a03:2880:3ff:77::face:b00c', '2022-09-12 07:49:09', '2022-09-12 14:49:09'),
(807, 1, 'Bayu Sutrisno', '2a03:2880:ff:11::face:b00c', '2022-09-12 07:49:09', '2022-09-12 14:49:09'),
(808, 1, 'Tamu Undangan', '51.254.49.98', '2022-09-12 09:27:02', '2022-09-12 16:27:02'),
(809, 1, 'Bayu Sutrisno', '182.1.92.238', '2022-09-12 10:59:58', '2022-09-12 17:59:58'),
(810, 1, 'Tamu Undangan', '45.90.60.191', '2022-09-12 17:11:06', '2022-09-13 00:11:06'),
(811, 1, 'Tamu Undangan', '183.129.153.157', '2022-09-12 18:56:18', '2022-09-13 01:56:18'),
(812, 1, 'Bayu Sutrisno', '202.67.36.199', '2022-09-13 01:40:51', '2022-09-13 08:40:51'),
(813, 1, 'Tamu Undangan', '45.90.62.157', '2022-09-13 03:05:47', '2022-09-13 10:05:47'),
(814, 1, 'Tamu Undangan', '182.4.69.23', '2022-09-13 09:31:45', '2022-09-13 16:31:45'),
(815, 1, 'Tamu Undangan', '176.53.221.225', '2022-09-13 17:26:25', '2022-09-14 00:26:25'),
(816, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:47:59', '2022-09-14 06:47:59'),
(817, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:49:05', '2022-09-14 06:49:05'),
(818, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:51:33', '2022-09-14 06:51:33'),
(819, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:52:50', '2022-09-14 06:52:50'),
(820, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:53:08', '2022-09-14 06:53:08'),
(821, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:53:52', '2022-09-14 06:53:52'),
(822, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:53:55', '2022-09-14 06:53:55'),
(823, 1, 'Tamu Undangan', '36.80.102.242', '2022-09-13 23:54:10', '2022-09-14 06:54:10'),
(825, 1, 'Tamu Undangan', '80.87.206.250', '2022-09-14 02:58:40', '2022-09-14 09:58:40'),
(826, 1, 'Tamu Undangan', '80.87.206.250', '2022-09-14 02:58:41', '2022-09-14 09:58:41'),
(827, 1, 'Tamu Undangan', '80.87.206.250', '2022-09-14 02:58:42', '2022-09-14 09:58:42'),
(828, 1, 'Tamu Undangan', '51.255.62.4', '2022-09-14 03:19:20', '2022-09-14 10:19:20'),
(829, 1, 'Tamu Undangan', '89.104.100.22', '2022-09-14 03:33:13', '2022-09-14 10:33:13'),
(830, 1, 'Tamu Undangan', '51.254.49.103', '2022-09-14 05:06:34', '2022-09-14 12:06:34'),
(831, 1, 'Tamu Undangan', '2a03:2880:12ff:13::face:b00c', '2022-09-14 08:18:34', '2022-09-14 15:18:34'),
(832, 1, 'Tamu Undangan', '2a03:2880:12ff:17::face:b00c', '2022-09-14 08:18:35', '2022-09-14 15:18:35'),
(833, 1, 'Tamu Undangan', '101.255.32.69', '2022-09-14 10:24:05', '2022-09-14 17:24:05'),
(834, 1, 'Tamu Undangan', '140.213.7.217', '2022-09-14 10:59:43', '2022-09-14 17:59:43'),
(835, 1, 'Tamu Undangan', '34.201.112.251', '2022-09-14 17:31:30', '2022-09-15 00:31:30'),
(836, 1, 'Tamu Undangan', '184.73.63.164', '2022-09-14 17:31:33', '2022-09-15 00:31:33'),
(837, 1, 'Tamu Undangan', '54.84.183.4', '2022-09-14 17:34:08', '2022-09-15 00:34:08'),
(838, 1, 'Tamu Undangan', '2a01:4f9:c012:88c0::1', '2022-09-15 08:44:18', '2022-09-15 15:44:18'),
(839, 1, 'Tamu Undangan', '66.249.71.17', '2022-09-15 10:29:36', '2022-09-15 17:29:36'),
(840, 1, 'Tamu Undangan', '66.249.71.15', '2022-09-15 10:33:26', '2022-09-15 17:33:26'),
(841, 1, 'Tamu Undangan', '66.249.71.15', '2022-09-15 10:33:26', '2022-09-15 17:33:26'),
(842, 1, 'Tamu Undangan', '66.249.71.15', '2022-09-15 15:17:49', '2022-09-15 22:17:49'),
(843, 1, 'Tamu Undangan', '51.255.62.4', '2022-09-16 04:17:35', '2022-09-16 11:17:35'),
(844, 1, 'Tamu Undangan', '51.255.62.0', '2022-09-16 04:17:35', '2022-09-16 11:17:35'),
(845, 1, 'Tamu Undangan', '51.255.62.13', '2022-09-16 04:17:36', '2022-09-16 11:17:36'),
(846, 1, 'Tamu Undangan', '51.255.62.11', '2022-09-16 04:17:36', '2022-09-16 11:17:36'),
(847, 1, 'Tamu Undangan', '51.255.62.13', '2022-09-16 04:17:36', '2022-09-16 11:17:36'),
(848, 1, 'Tamu Undangan', '51.255.62.12', '2022-09-16 04:17:36', '2022-09-16 11:17:36'),
(849, 1, 'Tamu Undangan', '205.210.31.167', '2022-09-16 06:09:41', '2022-09-16 13:09:41'),
(850, 1, 'Tamu Undangan', '51.254.49.104', '2022-09-16 06:26:28', '2022-09-16 13:26:28'),
(851, 1, 'Tamu Undangan', '54.227.175.105', '2022-09-17 00:47:57', '2022-09-17 07:47:57'),
(852, 1, 'Tamu Undangan', '54.172.181.206', '2022-09-17 00:48:00', '2022-09-17 07:48:00'),
(853, 1, 'Tamu Undangan', '54.147.148.74', '2022-09-17 00:48:38', '2022-09-17 07:48:38'),
(854, 1, 'Tamu Undangan', '116.206.39.67', '2022-09-17 11:45:00', '2022-09-17 18:45:00'),
(855, 1, 'Tamu Undangan', '116.206.39.67', '2022-09-17 11:45:40', '2022-09-17 18:45:40'),
(856, 1, 'Tamu Undangan', '54.221.74.186', '2022-09-18 05:02:18', '2022-09-18 12:02:18'),
(857, 1, 'Tamu Undangan', '34.229.85.43', '2022-09-18 05:02:22', '2022-09-18 12:02:22'),
(858, 1, 'Tamu Undangan', '41.216.178.104', '2022-09-18 17:09:45', '2022-09-19 00:09:45'),
(859, 1, 'Tamu Undangan', '198.235.24.58', '2022-09-19 03:26:21', '2022-09-19 10:26:21'),
(860, 1, 'Tamu Undangan', '34.229.9.230', '2022-09-19 04:38:27', '2022-09-19 11:38:27'),
(861, 1, 'Tamu Undangan', '54.205.77.182', '2022-09-19 04:38:30', '2022-09-19 11:38:30'),
(862, 1, 'Tamu Undangan', '54.227.32.154', '2022-09-19 05:18:00', '2022-09-19 12:18:00'),
(863, 1, 'Tamu Undangan', '205.210.31.141', '2022-09-20 12:17:06', '2022-09-20 19:17:06'),
(864, 1, 'Tamu Undangan', '115.135.198.142', '2022-09-20 12:58:06', '2022-09-20 19:58:06'),
(865, 1, 'Tamu Undangan', '198.235.24.50', '2022-09-21 08:22:17', '2022-09-21 15:22:17'),
(866, 1, 'Tamu Undangan', '35.213.234.99', '2022-09-21 21:58:02', '2022-09-22 04:58:02'),
(867, 1, 'Tamu Undangan', '65.109.5.218', '2022-09-22 02:47:14', '2022-09-22 09:47:14'),
(868, 1, 'Tamu Undangan', '65.109.5.218', '2022-09-22 02:47:17', '2022-09-22 09:47:17'),
(869, 1, 'Tamu Undangan', '65.109.5.218', '2022-09-22 02:47:22', '2022-09-22 09:47:22'),
(870, 1, 'Tamu Undangan', '65.109.5.218', '2022-09-22 02:47:26', '2022-09-22 09:47:26'),
(871, 1, 'Tamu Undangan', '54.145.49.62', '2022-09-22 08:40:35', '2022-09-22 15:40:35'),
(872, 1, 'Tamu Undangan', '3.80.80.110', '2022-09-22 08:40:39', '2022-09-22 15:40:39'),
(875, 1, 'Tamu Undangan', '114.125.124.176', '2022-09-22 10:31:34', '2022-09-22 17:31:34'),
(876, 1, 'Tamu Undangan', '114.125.124.176', '2022-09-22 10:38:19', '2022-09-22 17:38:19'),
(878, 1, 'Tamu Undangan', '52.91.54.110', '2022-09-23 22:41:53', '2022-09-24 05:41:53'),
(879, 1, 'Tamu Undangan', '54.234.17.142', '2022-09-23 22:41:55', '2022-09-24 05:41:55'),
(880, 1, 'Tamu Undangan', '2001:448a:300e:32f9:d8c0:6494:bef5:15cd', '2022-09-24 15:27:18', '2022-09-24 22:27:18'),
(881, 1, 'Tamu Undangan', '198.235.24.49', '2022-09-24 21:07:27', '2022-09-25 04:07:27'),
(882, 1, 'Tamu Undangan', '198.235.24.135', '2022-09-25 00:16:19', '2022-09-25 07:16:19'),
(883, 1, 'Bayu Sutrisno', '114.125.125.249', '2022-09-25 05:05:01', '2022-09-25 12:05:01'),
(884, 1, 'Tamu Undangan', '3.89.255.32', '2022-09-26 04:41:22', '2022-09-26 11:41:22'),
(885, 1, 'Tamu Undangan', '198.235.24.28', '2022-09-26 21:26:10', '2022-09-27 04:26:10'),
(886, 1, 'Tamu Undangan', '198.235.24.53', '2022-09-27 20:09:36', '2022-09-28 03:09:36'),
(887, 1, 'Tamu Undangan', '78.47.155.168', '2022-09-28 02:26:26', '2022-09-28 09:26:26'),
(888, 1, 'Tamu Undangan', '116.206.39.71', '2022-09-28 05:22:23', '2022-09-28 12:22:23'),
(889, 1, 'Tamu Undangan', '2a03:2880:12ff:9::face:b00c', '2022-09-28 06:09:40', '2022-09-28 13:09:40'),
(890, 1, 'Tamu Undangan', '2a03:2880:12ff:75::face:b00c', '2022-09-28 06:09:42', '2022-09-28 13:09:42'),
(891, 1, 'Tamu Undangan', '202.67.38.29', '2022-09-28 06:18:41', '2022-09-28 13:18:41'),
(892, 1, 'Tamu Undangan', '103.105.32.64', '2022-09-28 07:18:19', '2022-09-28 14:18:19'),
(893, 1, 'Tamu Undangan', '114.5.216.64', '2022-09-28 09:02:00', '2022-09-28 16:02:00'),
(894, 1, 'Tamu Undangan', '36.74.40.116', '2022-09-28 09:28:54', '2022-09-28 16:28:54'),
(895, 1, 'Tamu Undangan', '114.125.125.251', '2022-09-28 11:56:39', '2022-09-28 18:56:39'),
(896, 1, 'Tamu Undangan', '110.50.81.198', '2022-09-28 15:46:58', '2022-09-28 22:46:58'),
(897, 1, 'Tamu Undangan', '180.241.240.154', '2022-09-28 15:46:59', '2022-09-28 22:46:59'),
(898, 1, 'Tamu Undangan', '114.125.207.9', '2022-09-28 22:37:41', '2022-09-29 05:37:41'),
(899, 1, 'Tamu Undangan', '114.125.207.9', '2022-09-28 22:38:04', '2022-09-29 05:38:04'),
(900, 1, 'Tamu Undangan', '114.125.207.9', '2022-09-28 22:38:36', '2022-09-29 05:38:36'),
(901, 1, 'Tamu Undangan', '114.125.207.9', '2022-09-28 22:38:48', '2022-09-29 05:38:48'),
(902, 1, 'Tamu Undangan', '182.3.199.99', '2022-09-29 01:30:39', '2022-09-29 08:30:39'),
(903, 1, 'Tamu Undangan', '182.2.43.43', '2022-09-29 02:15:21', '2022-09-29 09:15:21'),
(904, 1, 'Tamu Undangan', '114.124.130.5', '2022-09-29 06:56:03', '2022-09-29 13:56:03'),
(905, 1, 'Tamu Undangan', '111.94.225.66', '2022-09-29 13:57:14', '2022-09-29 20:57:14'),
(906, 1, 'Tamu Undangan', '114.79.51.140', '2022-09-29 14:06:17', '2022-09-29 21:06:17'),
(907, 1, 'Tamu Undangan', '114.79.51.140', '2022-09-29 14:07:24', '2022-09-29 21:07:24'),
(908, 1, 'Tamu Undangan', '114.79.51.140', '2022-09-29 14:09:30', '2022-09-29 21:09:30'),
(909, 1, 'Tamu Undangan', '116.203.246.101', '2022-09-30 06:36:40', '2022-09-30 13:36:40'),
(912, 1, 'Tamu Undangan', '114.79.32.5', '2022-09-30 15:12:27', '2022-09-30 22:12:27'),
(913, 1, 'Tamu Undangan', '114.79.32.5', '2022-09-30 16:46:19', '2022-09-30 23:46:19'),
(914, 1, 'Tamu Undangan', '205.210.31.36', '2022-09-30 22:05:59', '2022-10-01 05:05:59'),
(915, 1, 'Tamu Undangan', '182.2.230.53', '2022-10-01 06:33:43', '2022-10-01 13:33:43'),
(916, 1, 'Tamu Undangan', '205.210.31.159', '2022-10-01 16:02:29', '2022-10-01 23:02:29'),
(917, 1, 'Tamu Undangan', '198.235.24.139', '2022-10-01 17:06:40', '2022-10-02 00:06:40'),
(918, 1, 'Tamu Undangan', '2001:448a:5102:a94d:a1f2:3b2:e5e2:c842', '2022-10-02 03:13:35', '2022-10-02 10:13:35'),
(919, 1, 'Tamu Undangan', '114.4.223.139', '2022-10-02 03:15:00', '2022-10-02 10:15:00'),
(920, 1, 'Tamu Undangan', '140.213.218.166', '2022-10-02 03:16:25', '2022-10-02 10:16:25'),
(921, 1, 'Tamu Undangan', '180.251.215.194', '2022-10-02 08:22:25', '2022-10-02 15:22:25'),
(922, 1, 'Tamu Undangan', '65.154.226.109', '2022-10-02 23:19:22', '2022-10-03 06:19:22'),
(923, 1, 'Tamu Undangan', '65.154.226.170', '2022-10-02 23:35:32', '2022-10-03 06:35:32'),
(924, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:06', '2022-10-03 07:08:06'),
(925, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:14', '2022-10-03 07:08:14'),
(926, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:23', '2022-10-03 07:08:23'),
(927, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:31', '2022-10-03 07:08:31'),
(928, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:40', '2022-10-03 07:08:40'),
(929, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:49', '2022-10-03 07:08:49'),
(930, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:08:59', '2022-10-03 07:08:59'),
(931, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:09:11', '2022-10-03 07:09:11'),
(932, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:09:20', '2022-10-03 07:09:20'),
(933, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:09:26', '2022-10-03 07:09:26'),
(934, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:09:34', '2022-10-03 07:09:34'),
(935, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:09:47', '2022-10-03 07:09:47'),
(936, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:09:53', '2022-10-03 07:09:53'),
(937, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:10:18', '2022-10-03 07:10:18'),
(938, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:10:23', '2022-10-03 07:10:23'),
(939, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:10:28', '2022-10-03 07:10:28'),
(940, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:10:36', '2022-10-03 07:10:36'),
(941, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:10:43', '2022-10-03 07:10:43'),
(942, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:10:52', '2022-10-03 07:10:52'),
(943, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:11:04', '2022-10-03 07:11:04'),
(944, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:11:14', '2022-10-03 07:11:14'),
(945, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:11:25', '2022-10-03 07:11:25'),
(946, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:11:35', '2022-10-03 07:11:35'),
(947, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:11:47', '2022-10-03 07:11:47'),
(948, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:12:06', '2022-10-03 07:12:06'),
(949, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:12:19', '2022-10-03 07:12:19'),
(950, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:12:30', '2022-10-03 07:12:30'),
(951, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:12:38', '2022-10-03 07:12:38'),
(952, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:12:43', '2022-10-03 07:12:43'),
(953, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:12:55', '2022-10-03 07:12:55'),
(954, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:13:13', '2022-10-03 07:13:13'),
(955, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:13:24', '2022-10-03 07:13:24'),
(956, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:13:29', '2022-10-03 07:13:29'),
(957, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:13:37', '2022-10-03 07:13:37'),
(958, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:13:43', '2022-10-03 07:13:43'),
(959, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:14:03', '2022-10-03 07:14:03'),
(960, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:14:11', '2022-10-03 07:14:11'),
(961, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:14:18', '2022-10-03 07:14:18'),
(962, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:14:52', '2022-10-03 07:14:52'),
(963, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:15:02', '2022-10-03 07:15:02'),
(964, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:15:31', '2022-10-03 07:15:31'),
(965, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:15:50', '2022-10-03 07:15:50'),
(966, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:16:04', '2022-10-03 07:16:04'),
(967, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:16:23', '2022-10-03 07:16:23'),
(968, 1, 'Tamu Undangan', '95.217.180.54', '2022-10-03 00:16:39', '2022-10-03 07:16:39'),
(969, 1, 'Tamu Undangan', '149.154.161.205', '2022-10-03 02:56:46', '2022-10-03 09:56:46'),
(970, 1, 'Tamu Undangan', '140.213.190.243', '2022-10-03 02:56:49', '2022-10-03 09:56:49'),
(971, 1, 'Tamu Undangan', '2001:448a:7066:1bc8:b84c:2ee6:4b1f:2470', '2022-10-03 23:03:11', '2022-10-04 06:03:11'),
(972, 1, 'Tamu Undangan', '182.1.119.199', '2022-10-03 23:27:28', '2022-10-04 06:27:28'),
(973, 1, 'Tamu Undangan', '2001:448a:20a3:79b7:a537:42d7:5597:3c7', '2022-10-08 04:04:18', '2022-10-08 11:04:18'),
(974, 1, 'Tamu Undangan', '2a03:2880:12ff:10::face:b00c', '2022-10-10 08:14:32', '2022-10-10 15:14:32'),
(975, 1, 'Tamu Undangan', '2a03:2880:12ff:10::face:b00c', '2022-10-10 08:14:33', '2022-10-10 15:14:33'),
(976, 1, 'Tamu Undangan', '2a03:2880:12ff:17::face:b00c', '2022-10-10 08:14:46', '2022-10-10 15:14:46'),
(977, 1, 'Tamu Undangan', '120.188.39.252', '2022-10-10 10:17:00', '2022-10-10 17:17:00'),
(978, 1, 'Bayu Sutrisno', '114.124.182.140', '2022-10-10 13:08:43', '2022-10-10 20:08:43'),
(979, 1, 'Tamu Undangan', '114.124.182.140', '2022-10-10 13:09:00', '2022-10-10 20:09:00'),
(980, 1, 'Tamu Undangan', '114.124.182.140', '2022-10-10 13:11:55', '2022-10-10 20:11:55'),
(981, 1, 'Bayu Sutrisno', '114.124.182.140', '2022-10-10 13:27:29', '2022-10-10 20:27:29'),
(982, 1, 'Bayu Sutrisno', '114.124.182.140', '2022-10-10 13:27:36', '2022-10-10 20:27:36'),
(983, 1, 'Tamu Undangan', '114.124.182.140', '2022-10-10 13:27:44', '2022-10-10 20:27:44'),
(984, 1, 'Tamu Undangan', '182.1.85.46', '2022-10-10 13:35:51', '2022-10-10 20:35:51'),
(985, 1, 'Bayu Sutrisno', '182.1.85.46', '2022-10-10 13:35:59', '2022-10-10 20:35:59'),
(986, 1, 'Tamu Undangan', '182.1.85.46', '2022-10-10 13:36:22', '2022-10-10 20:36:22'),
(987, 1, 'Tamu Undangan', '182.1.85.46', '2022-10-10 13:37:36', '2022-10-10 20:37:36'),
(988, 1, 'Bayu Sutrisno', '182.1.85.46', '2022-10-10 13:37:46', '2022-10-10 20:37:46'),
(989, 1, 'Bayu Sutrisno', '2a03:2880:11ff:77::face:b00c', '2022-10-10 13:38:00', '2022-10-10 20:38:00'),
(990, 1, 'Bayu Sutrisno', '2a03:2880:11ff:13::face:b00c', '2022-10-10 13:38:01', '2022-10-10 20:38:01'),
(991, 1, 'Bayu Sutrisno', '114.124.182.140', '2022-10-10 14:37:43', '2022-10-10 21:37:43'),
(992, 1, 'Bayu Sutrisno', '182.1.80.34', '2022-10-10 14:42:07', '2022-10-10 21:42:07'),
(993, 1, 'Tamu Undangan', '114.125.76.125', '2022-10-10 21:31:48', '2022-10-11 04:31:48'),
(994, 1, 'Tamu Undangan', '140.213.47.254', '2022-10-12 21:31:22', '2022-10-13 04:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id_quote` int(11) NOT NULL,
  `isi_quote` text DEFAULT NULL,
  `sumber_quote` varchar(100) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id_quote`, `isi_quote`, `sumber_quote`, `id_user`) VALUES
(1, 'Tidak ada solusi yang lebih baik bagi dua insan yang saling mencintai di banding Pernikahan.', 'HR Ibnu Majah', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_bank` varchar(200) DEFAULT NULL,
  `no_rekening` varchar(200) DEFAULT NULL,
  `nama_pemilik` varchar(200) DEFAULT NULL,
  `qrcode_bank` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `id_user`, `nama_bank`, `no_rekening`, `nama_pemilik`, `qrcode_bank`) VALUES
(1, 1, 'BANK NEGARA INDONESIA', '052142546624', 'Andra Leksmana', 'qrcode1.png');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sampul` int(11) NOT NULL,
  `mempelai` int(11) NOT NULL,
  `acara` int(11) NOT NULL,
  `komen` int(11) NOT NULL,
  `gallery` int(11) NOT NULL,
  `cerita` int(11) NOT NULL,
  `lokasi` int(11) NOT NULL,
  `prokes` int(11) NOT NULL,
  `qrcode` int(11) NOT NULL,
  `hadiah` int(11) NOT NULL,
  `quote` int(11) NOT NULL,
  `live_stream` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `id_user`, `sampul`, `mempelai`, `acara`, `komen`, `gallery`, `cerita`, `lokasi`, `prokes`, `qrcode`, `hadiah`, `quote`, `live_stream`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-03-30 05:10:12', '2022-07-27 21:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trial` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `host_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_wa` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan_wa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salam_pembuka` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token_wa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pesan_undangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_login` enum('false','true') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `img`, `created_at`, `trial`, `aktif`, `host_email`, `email`, `pass_email`, `no_wa`, `pesan_wa`, `salam_pembuka`, `token_wa`, `pesan_undangan`, `otp_login`) VALUES
(1, 'bank.png', '2022-10-12 22:16:58', 3, 60, '', '', '', '6285156848723', 'Hello Admin NGULEMIND, Saya Mau bertanya.', 'Assalamu\'alaikum Warahmatullahi Wabarakatuh.\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', '', 'Kepada Yth. =tamu=\n\nAssalamualaikum Wr. Wb.\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT.\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.\n\n=mempelai_pria=\nPutra Bpk =ayah_mempelai_pria= dan Ibu =ibu_mempelai_pria=\ndengan\n=mempelai_wanita=\nPutri Bpk =ayah_mempelai_wanita= dan Ibu =ibu_mempelai_wanita=\n\nMerupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih.\n\nWassalamualaikum Wr. Wb.', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id_setting` int(11) NOT NULL,
  `bank_transfer` int(11) NOT NULL,
  `payment_gateway` enum('null','midtrans','duitku','tripay') NOT NULL,
  `bank_manual` varchar(100) DEFAULT NULL,
  `norek_manual` varchar(100) DEFAULT NULL,
  `nama_manual` varchar(100) DEFAULT NULL,
  `url_midtrans` varchar(200) DEFAULT NULL,
  `serverkey_midtrans` varchar(200) DEFAULT NULL,
  `clientkey_midtrans` varchar(200) DEFAULT NULL,
  `midtrans_production` varchar(10) DEFAULT 'false',
  `url_tripay` varchar(100) DEFAULT NULL,
  `apikey_tripay` varchar(100) DEFAULT NULL,
  `privatekey_tripay` varchar(100) DEFAULT NULL,
  `merchantcode_tripay` varchar(100) DEFAULT NULL,
  `url_duitku` varchar(100) NOT NULL,
  `apikey_duitku` varchar(100) NOT NULL,
  `merchantcode_duitku` varchar(100) NOT NULL,
  `duitku_sandbox` enum('true','false') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id_setting`, `bank_transfer`, `payment_gateway`, `bank_manual`, `norek_manual`, `nama_manual`, `url_midtrans`, `serverkey_midtrans`, `clientkey_midtrans`, `midtrans_production`, `url_tripay`, `apikey_tripay`, `privatekey_tripay`, `merchantcode_tripay`, `url_duitku`, `apikey_duitku`, `merchantcode_duitku`, `duitku_sandbox`) VALUES
(1, 1, 'null', 'Bank Negara Indonesia', '0123456789511', 'NGULEMIND', 'https://app.midtrans.com/snap/snap.js', '', '', 'true', 'https://tripay.co.id/api/transaction/create', '', '', '', 'https://app-sandbox.duitku.com/lib/js/duitku.js', '', '', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `slider_bukutamu`
--

CREATE TABLE `slider_bukutamu` (
  `id_slider` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_slider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_bukutamu`
--

INSERT INTO `slider_bukutamu` (`id_slider`, `id_user`, `nama_slider`) VALUES
(1, 1, 'slider1'),
(2, 1, 'slider2'),
(3, 1, 'slider3'),
(4, 1, 'slider4'),
(5, 1, 'slider5');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `nama_slug` varchar(255) NOT NULL,
  `alamat_tamu` varchar(255) NOT NULL,
  `alamat_slug` varchar(255) NOT NULL,
  `no_wa` varchar(100) NOT NULL,
  `no_tamu` int(11) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `status_kirim` varchar(100) NOT NULL DEFAULT 'belum dikirim',
  `status` varchar(100) DEFAULT NULL,
  `waktu_hadir` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `nama_slug`, `alamat_tamu`, `alamat_slug`, `no_wa`, `no_tamu`, `qrcode`, `id_user`, `tgl_kirim`, `status_kirim`, `status`, `waktu_hadir`) VALUES
(24, 'Bayu Sutrisno', 'bayu+sutrisno', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '6289659687659', 2, 'd0d47b4f15aba1d2f895ea0114d91cce', 1, '2022-08-03', 'terkirim', '', '2022-04-04 20:52:56'),
(31, 'Agus Sukamto', 'agus+sukamto', 'Demak', 'demak', '6289659687659', 4, 'a106766e561dc7f2725e2182b2f198ed', 1, '2022-09-26', 'terkirim', NULL, NULL),
(50, 'Kadek', 'kadek', 'Bali', 'bali', '6282237972112', 5, 'ddc286c0f452879dd1d66bd1a70eac7a', 1, '2022-09-26', 'terkirim', NULL, NULL),
(51, 'Test', 'test', 'Demak', 'demak', '6289659687659', 6, '699b8edf5bedbdcfe7ab6236819b5128', 1, '2022-09-26', 'terkirim', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tema_categories`
--

CREATE TABLE `tema_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tema_categories`
--

INSERT INTO `tema_categories` (`id`, `name`, `slug`) VALUES
(1, 'Mobile', 'mobile'),
(2, 'Slide', 'slide'),
(3, 'Scroll', 'scroll');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testi`, `id_user`, `nama_lengkap`, `kota`, `provinsi`, `ulasan`, `status`) VALUES
(1, 1, 'Andra Leksmana', 'Gambir', 'Jakarta', 'Undangan menarik dan hemat serta mudah diatur sesuai keinginan', 2);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `nama_theme` varchar(50) NOT NULL,
  `kode_theme` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `nama_theme`, `kode_theme`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'hwflower', 'A001', 1, '2020-07-26 13:23:40', '2022-02-18 15:58:22', 1),
(2, 'tealflower', 'A002', 1, '2020-07-26 13:23:40', '2022-02-18 15:58:22', 1),
(3, 'greenflower', 'A003', 1, '2020-08-17 01:03:22', '2022-02-18 15:58:22', 1),
(4, 'prettyflower', 'A004', 1, '2020-08-28 18:22:30', '2022-02-18 15:58:22', 1),
(5, 'blueroses', 'A005', 1, '2020-08-28 17:03:54', '2022-02-18 15:58:22', 1),
(6, 'redroses', 'A006', 1, '2020-08-28 17:04:08', '2022-02-18 15:58:22', 1),
(8, 'radiantyellow', 'A007', 1, '2020-08-28 19:56:29', '2022-02-18 15:58:22', 1),
(9, 'radiantdark', 'A009', 1, '2020-08-28 19:56:29', '2022-02-18 15:58:22', 1),
(44, 'purpleflower', 'A010', 1, '2021-07-04 02:03:44', '2022-02-18 15:58:22', 1),
(45, 'sketchflower', 'A011', 1, '2021-07-04 12:59:28', '2022-02-18 15:58:22', 1),
(49, 'beautiful-floral', 'A012', 1, '2021-09-17 23:52:39', '2022-07-14 05:29:03', 3),
(50, 'tapis', 'A013', 1, '2021-09-19 07:39:35', '2022-02-18 16:00:23', 2),
(51, 'rustic', 'A014', 1, '2021-09-20 04:46:10', '2022-02-18 16:00:23', 2),
(52, 'arabian', 'A015', 1, '2021-09-20 04:46:10', '2022-07-14 05:28:55', 3),
(53, 'jellyblack', 'A016', 1, '2021-09-20 04:46:28', '2022-02-18 16:00:23', 2),
(54, 'floral', 'A017', 1, '2021-09-20 04:46:55', '2022-02-18 16:00:23', 2),
(55, 'vintage-islamic', 'A018', 1, '2021-09-20 04:46:55', '2022-02-18 16:00:23', 2),
(59, 'islamic1', 'A019', 1, '2022-01-15 02:12:52', '2022-02-18 16:00:23', 3),
(60, 'watercolor1', 'A020', 1, '2022-01-15 02:12:52', '2022-02-18 16:00:23', 3),
(61, 'twelve', 'A021', 1, '2022-01-28 09:37:46', '2022-02-18 16:00:23', 3),
(63, 'mandala', 'A022', 1, '2022-02-17 04:21:17', '2022-03-24 09:30:12', 2),
(67, 'watercolor2', 'A026', 1, '2022-02-24 02:00:36', '2022-02-25 00:09:25', 3),
(68, 'watercolor3', 'A027', 1, '2022-02-24 02:02:36', '2022-02-25 00:14:54', 3),
(69, 'watercolor4', 'A028', 1, '2022-02-24 02:03:24', '2022-02-25 00:14:54', 3),
(70, 'watercolor5', 'A029', 1, '2022-02-24 02:04:10', '2022-02-25 00:14:54', 3),
(71, 'wayang', 'A023', 1, '2022-06-04 23:08:13', '2022-07-16 21:31:11', 2),
(72, 'forever', 'A024', 1, '2022-06-19 13:21:21', '2022-07-09 18:45:35', 3);

-- --------------------------------------------------------

--
-- Table structure for table `themes_video`
--

CREATE TABLE `themes_video` (
  `id_theme` int(11) NOT NULL,
  `nama_tema` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `preview` varchar(200) NOT NULL,
  `url_video` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes_video`
--

INSERT INTO `themes_video` (`id_theme`, `nama_tema`, `harga`, `preview`, `url_video`, `category_id`) VALUES
(1, 'Kode 01', 40000, 'kode_01.png', '<iframe src=\"https://drive.google.com/file/d/1OyLGmbmBooRg_dFHtNX_ZOg0VZUWkwxV/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(2, 'Kode 02', 40000, 'kode_02.png', '<iframe src=\"https://drive.google.com/file/d/1BvinpaAotK-xHXgE_OziR9D2HufFZ12p/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(3, 'Kode 03', 40000, 'kode_03.png', '<iframe src=\"https://drive.google.com/file/d/1gOP05_koMTKzsjy1PIfyWV-NlLCwRN6Q/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(4, 'Kode 04', 40000, 'kode_04.png', '<iframe src=\"https://drive.google.com/file/d/1psKTtjNJqiaCyuGqLQfAsUj6Ojtb4_qy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(5, 'Kode 05', 40000, 'kode_05.png', '<iframe src=\"https://drive.google.com/file/d/1z65eVHOYKdMIp7X2zEmeWnEBg3AtpJ5y/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(6, 'Kode 06', 40000, 'kode_06.png', '<iframe src=\"https://drive.google.com/file/d/1G-N68I75X8aQ3PqQS-A13jJ1KYvATh64/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(7, 'Kode 07', 40000, 'kode_07.png', '<iframe src=\"https://drive.google.com/file/d/1niwHJOkM3M-NJDad7eTzz_M9bS3XXjX_/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(8, 'Kode 08', 40000, 'kode_08.png', '<iframe src=\"https://drive.google.com/file/d/1dlurlHQcI-qEdAfzqALIqeiifor4A1kz/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(9, 'Kode 09', 40000, 'kode_09.png', '<iframe src=\"https://drive.google.com/file/d/16_vSP99YkEPK0U4bdWn1-0mrqHMJhgEK/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(10, 'Kode 10', 40000, 'kode_10.png', '<iframe src=\"https://drive.google.com/file/d/1ek9-CEUrn4rjhoHvLXxUfW7mm0OD8YxN/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(11, 'Kode 11', 40000, 'kode_11.png', '<iframe src=\"https://drive.google.com/file/d/17dcyya0OeY848DjaT-Jn2keUGeqWBF2T/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(12, 'Kode 12', 40000, 'kode_12.png', '<iframe src=\"https://drive.google.com/file/d/1FOccAQ88gZIEh5QlzWvENXnTqzn2-igb/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(13, 'Kode 13', 40000, 'kode_13.png', '<iframe src=\"https://drive.google.com/file/d/1wAoLV_lZEFEWdqkpKiMSfE2CriiUY-Wo/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(14, 'Kode 14', 40000, 'kode_14.png', '<iframe src=\"https://drive.google.com/file/d/1hkU9Zo3LZ5itviqX8hHpUbSAE2NE0HQJ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(15, 'Kode 15', 40000, 'kode_15.png', '<iframe src=\"https://drive.google.com/file/d/122Ua8UIewzb6cQS6fcbtTz3ax9pWHDz4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(20, 'Kode 16', 40000, 'kode_16.png', '<iframe src=\"https://drive.google.com/file/d/1TyS6-wuCwkC_NI3PicZXsyrCGokYRYAy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(25, 'Kode 17', 40000, 'kode_17.png', '<iframe src=\"https://drive.google.com/file/d/16-6NrD_BvVQFEXq5iRxaLyS7jLndqKjc/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(26, 'Kode 18', 40000, 'kode_18.png', '<iframe src=\"https://drive.google.com/file/d/13GVMcTO6qEEx_1aZAaE6xJdw62dY1Lcu/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(27, 'Kode 19', 40000, 'kode_19.png', '<iframe src=\"https://drive.google.com/file/d/1hf8dcyrb4nvOuqwslJuidz8aW0Xqss_a/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(28, 'Kode 20', 40000, 'kode_20.png', '<iframe src=\"https://drive.google.com/file/d/1v_aqcSpj_M5-mWrYdxLse5VVALxZQXvQ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(29, 'Kode 21', 40000, 'kode_21.png', '<iframe src=\"https://drive.google.com/file/d/1ckXCj5aAS1Ki7G7lIQ4o3DordGAWteV-/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(30, 'Kode 22', 40000, 'kode_22.png', '<iframe src=\"https://drive.google.com/file/d/1koayXRVm_Ibh68odpXgIBoJ8uZ_DHrI1/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(31, 'Kode 23', 40000, 'kode_23.png', '<iframe src=\"https://drive.google.com/file/d/1IxdMkfl_OCO4yfRoeHec42lcZEw-vPTG/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(32, 'Kode 24', 40000, 'kode_24.png', '<iframe src=\"https://drive.google.com/file/d/1sXAGGM1WprmmmuIEa8Q2afZcpjE3dRDZ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(33, 'Kode 25', 40000, 'kode_25.png', '<iframe src=\"https://drive.google.com/file/d/1PHga9AwwEFxAD7eNwLz55jCkw-HZ_cO5/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(34, 'Kode 26', 40000, 'kode_26.png', '<iframe src=\"https://drive.google.com/file/d/1BO1f_b-ycz30GPiE56emaUAu2m2RJ1zC/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(35, 'Kode 27', 40000, 'kode_27.png', '<iframe src=\"https://drive.google.com/file/d/1GX1vAXqzwvbkTH7AAQPficafmIJ1uG9N/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(36, 'Kode 28', 40000, 'kode_28.png', '<iframe src=\"https://drive.google.com/file/d/1vh3oq92-PQfg1LTltI3J5BjdLASzChAL/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(37, 'Kode 29', 40000, 'kode_29.png', '<iframe src=\"https://drive.google.com/file/d/1ziEnVA9LdabmO6nWT0boAjLFr3F6viYY/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(38, 'Kode 30', 40000, 'kode_30.png', '<iframe src=\"https://drive.google.com/file/d/1OrO1_g2vSiElDQPNfhkq4THqOxC-TjYW/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(39, 'Kode 31', 40000, 'kode_31.png', '<iframe src=\"https://drive.google.com/file/d/1p5NIEnRqP-dPao-CTho0KY0n3CoDUzJM/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(40, 'Kode 32', 40000, 'kode_32.png', '<iframe src=\"https://drive.google.com/file/d/14qHnyViXGjDAcDxDzdKjYEHj1vmTRoUw/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(41, 'Kode 33', 40000, 'kode_33.png', '<iframe src=\"https://drive.google.com/file/d/1xcKpK_9r18-3f4_QAM-QDa2ev0G_7ZIH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(42, 'Kode 34', 40000, 'kode_34.png', '<iframe src=\"https://drive.google.com/file/d/1qswmddDVgzc3hXEsOpFo_QVW8SoVpyhl/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(43, 'Kode 35', 40000, 'kode_35.png', '<iframe src=\"https://drive.google.com/file/d/1GOUNAlptuhZ83O6ZHebdwf8KKbnlXeeU/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(44, 'Kode 36', 40000, 'kode_36.png', '<iframe src=\"https://drive.google.com/file/d/1LX3VEGhKdXSAjF4D6TAGV5ebyGoZMmFT/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(45, 'Kode 37', 40000, 'kode_37.png', '<iframe src=\"https://drive.google.com/file/d/11spFRdgPZPq1hZpzPW_NsSzTYKrk22iK/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(46, 'Kode 38', 40000, 'kode_38.png', '<iframe src=\"https://drive.google.com/file/d/1Rz2HLPo2BoCRPFIWXZYt38aBv0I4VWrt/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(47, 'Kode 39', 40000, 'kode_39.png', '<iframe src=\"https://drive.google.com/file/d/1L1DCdp09i56_R6fwCdEdPDHH7xz_pqeA/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(48, 'Kode 40', 40000, 'kode_40.png', '<iframe src=\"https://drive.google.com/file/d/1XfOfdlI83d_7RIQLeFob9HoOBGb55FOd/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(49, 'Kode 41', 40000, 'kode_41.png', '<iframe src=\"https://drive.google.com/file/d/1KGx7Ns4DcFibDpQiK3ravUBuUYFKYKTC/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(50, 'Kode 42', 40000, 'kode_42.png', '<iframe src=\"https://drive.google.com/file/d/1Mpw6VXNOvsdsPrxUCQ-MMJeySMos7cEh/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(51, 'Kode 43', 40000, 'kode_43.png', '<iframe src=\"https://drive.google.com/file/d/1EvXINx9hysFIlwa6HpWcdcTtlrjEC2F0/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(52, 'Kode 44', 40000, 'kode_44.png', '<iframe src=\"https://drive.google.com/file/d/1vv3A7KlOMLO3bi6npSUh8n7XjxNOMGVw/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(53, 'Kode 45', 40000, 'kode_45.png', '<iframe src=\"https://drive.google.com/file/d/14_Ka45Z1MWwlzXfJsmKFOw9Bxnv-O1y6/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(54, 'Kode 46', 40000, 'kode_46.png', '<iframe src=\"https://drive.google.com/file/d/13qYybj3gICbZ9ow_tpqmGKbiUE5WvcN4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(55, 'Kode 47', 40000, 'kode_47.png', '<iframe src=\"https://drive.google.com/file/d/1wglyjVQNl8gZsnz_Z0PEKfiskNoDC9nG/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(56, 'Kode 48', 40000, 'kode_48.png', '<iframe src=\"https://drive.google.com/file/d/1B1GlR9dG8kbBmyauTlTctuFh2EPn8ULp/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(57, 'Kode 49', 40000, 'kode_49.png', '<iframe src=\"https://drive.google.com/file/d/1FC8Lp5b99Eo0upR71sTev1qD-5XU6N-4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(58, 'Kode 50', 40000, 'kode_50.png', '<iframe src=\"https://drive.google.com/file/d/1McUMlXvCoB0grlrsHQjNxoqK_1ntGg33/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(59, 'Kode 51', 40000, 'kode_51.png', '<iframe src=\"https://drive.google.com/file/d/1W4DdLgcPWe3hIdN3UReTBtUVUagPi-lh/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(60, 'Kode 52', 40000, 'kode_52.png', '<iframe src=\"https://drive.google.com/file/d/1sVobKAEynfB_tm-1voTJJ8xXQNt_LKJs/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(61, 'Kode 53', 40000, 'kode_53.png', '<iframe src=\"https://drive.google.com/file/d/1vzdwgRTcYpDwmJDSZE9d4K9l7ck_2Ps9/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(62, 'Kode 54', 40000, 'kode_54.png', '<iframe src=\"https://drive.google.com/file/d/1Q03xoPiM8OeRny-KiWDAn7WAc-m918_5/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(63, 'Kode 55', 40000, 'kode_55.png', '<iframe src=\"https://drive.google.com/file/d/1rWzIoqfUWeIeFDBOT_6tZahkGombq3yH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(64, 'Kode 56', 40000, 'kode_56.png', '<iframe src=\"https://drive.google.com/file/d/1-1GC8H51_-zsFEAmV7--9onZB9I4jvgT/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(65, 'Kode 57', 40000, 'kode_57.png', '<iframe src=\"https://drive.google.com/file/d/1Y8sHoNrBgWZBiml4PLiC6xstpW5jem6c/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(66, 'Kode 58', 40000, 'kode_58.png', '<iframe src=\"https://drive.google.com/file/d/1E96VJFFxt6Q3PQxPFDYYTDBLzYOow3Hy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_unik` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` text DEFAULT NULL,
  `created_token` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hp`, `email`, `username`, `password`, `id_unik`, `created_at`, `token`, `created_token`) VALUES
(1, '089659687659', 'demo@gmail.com', 'demo@gmail.com', '446419aa4b2c2368f29d8298c1cf71a2', '2203126', '2022-03-30 05:10:12', '4432', '2022-10-10 21:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `slug`) VALUES
(1, 'Elegant', 'elegant'),
(2, 'Islamic', 'islamic'),
(3, 'Minimalist', 'minimalist'),
(4, 'Overlay', 'overlay'),
(5, 'Watercolor', 'watercolor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_stream`
--
ALTER TABLE `live_stream`
  ADD PRIMARY KEY (`id_stream`);

--
-- Indexes for table `mempelai`
--
ALTER TABLE `mempelai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musik`
--
ALTER TABLE `musik`
  ADD PRIMARY KEY (`id_musik`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id_quote`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `slider_bukutamu`
--
ALTER TABLE `slider_bukutamu`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tema_categories`
--
ALTER TABLE `tema_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testi`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes_video`
--
ALTER TABLE `themes_video`
  ADD PRIMARY KEY (`id_theme`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `live_stream`
--
ALTER TABLE `live_stream`
  MODIFY `id_stream` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mempelai`
--
ALTER TABLE `mempelai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `musik`
--
ALTER TABLE `musik`
  MODIFY `id_musik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=995;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id_quote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_bukutamu`
--
ALTER TABLE `slider_bukutamu`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tema_categories`
--
ALTER TABLE `tema_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `themes_video`
--
ALTER TABLE `themes_video`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
