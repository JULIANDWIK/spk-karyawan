-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2026 pada 06.04
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_karyawan` varchar(100) DEFAULT NULL,
  `posisi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_karyawan`, `posisi`) VALUES
(2, 'adi', 'accounting'),
(3, 'panjul', 'leader'),
(4, 'sabil', 'cleaning servise'),
(5, 'rasid', 'hrd'),
(6, 'ahmad', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_wp`
--

CREATE TABLE `hasil_wp` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) DEFAULT NULL,
  `nilai_v` float DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `periode` varchar(20) DEFAULT NULL,
  `tanggal_hitung` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hasil_wp`
--

INSERT INTO `hasil_wp` (`id_hasil`, `id_alternatif`, `nilai_v`, `ranking`, `periode`, `tanggal_hitung`) VALUES
(2, 2, 0.0341755, NULL, NULL, '2026-05-07'),
(3, 3, 0.0494495, NULL, NULL, '2026-05-07'),
(4, 4, 0.648472, NULL, NULL, '2026-05-07'),
(5, 5, 0.0600218, NULL, NULL, '2026-05-07'),
(6, 6, 0.0895294, NULL, NULL, '2026-05-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(100) DEFAULT NULL,
  `bobot` float DEFAULT NULL,
  `tipe` enum('benefit','cost') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `tipe`) VALUES
(1, 'absensi', 10, 'benefit'),
(2, 'kehadiran', 15, 'benefit'),
(4, 'disiplin', 80, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id_log`, `id_user`, `aktivitas`, `keterangan`, `created_at`) VALUES
(1, 1, 'Tambah Karyawan', 'Menambah karyawan baru: ahmad', '2026-05-06 21:42:36'),
(2, 1, 'Tambah Kriteria', 'Menambah kriteria baru: kehadiran', '2026-05-06 22:19:02'),
(3, 1, 'Hapus Kriteria', 'Menghapus kriteria ID: 3', '2026-05-06 22:19:07'),
(4, 1, 'Update Kriteria', 'Mengubah data kriteria ID: 2', '2026-05-06 22:24:59'),
(5, 1, 'Update Kriteria', 'Mengubah data kriteria ID: 2', '2026-05-06 22:25:51'),
(6, 1, 'Update Kriteria', 'Mengubah data kriteria ID: 2', '2026-05-06 22:30:04'),
(7, 1, 'Tambah Kriteria', 'Menambah kriteria baru: disiplin', '2026-05-06 22:31:24'),
(8, 1, 'Tambah Kriteria', 'Menambah kriteria baru: karakter', '2026-05-06 22:50:06'),
(9, 1, 'Update Penilaian', 'Memperbarui matrix penilaian karyawan.', '2026-05-06 22:51:55'),
(10, 1, 'Update Penilaian', 'Memperbarui matrix penilaian karyawan.', '2026-05-06 22:55:07'),
(11, 1, 'Update Penilaian', 'Memperbarui matrix penilaian karyawan.', '2026-05-06 22:58:36'),
(12, 1, 'Hitung WP', 'Melakukan kalkulasi peringkat karyawan.', '2026-05-07 09:55:07'),
(13, 1, 'Hapus Kriteria', 'Menghapus kriteria ID: 5', '2026-05-07 10:12:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(12, 2, 1, 4),
(13, 2, 2, 4),
(14, 3, 1, 5),
(15, 3, 2, 4),
(16, 4, 1, 89.99),
(17, 4, 2, 70.01),
(18, 5, 1, 8),
(19, 5, 2, 3),
(22, 2, 4, 3),
(24, 3, 4, 5),
(26, 4, 4, 60),
(28, 5, 4, 7),
(30, 6, 1, 6),
(31, 6, 2, 2),
(32, 6, 4, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `role` enum('admin','manager') DEFAULT 'admin',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `role`, `created_at`) VALUES
(1, 'admin', '$2y$10$gpcJG0x/icFLAD7Ap.lXqu4uSz4D.jvWCJzUr7vO0cdJzs6WBDIu6', 'Administrator Utama', 'admin', '2026-05-06 20:45:56'),
(2, 'manager', '$2y$10$q9wYa9/zCUvLdQ7Rp.4i1uyjq2sn572ZuPuQtA4BvfSsOUpUjc./G', 'HR Manager', 'manager', '2026-05-06 20:45:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `hasil_wp`
--
ALTER TABLE `hasil_wp`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD UNIQUE KEY `unique_penilaian` (`id_alternatif`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `hasil_wp`
--
ALTER TABLE `hasil_wp`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_wp`
--
ALTER TABLE `hasil_wp`
  ADD CONSTRAINT `hasil_wp_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD CONSTRAINT `log_aktivitas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
