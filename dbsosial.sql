-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2024 pada 21.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsosial`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komunitas`
--

CREATE TABLE `tbl_komunitas` (
  `id_komunitas` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `nama_komunitas` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `komunitas` text NOT NULL,
  `image` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hobi` text DEFAULT 'Tidak ada',
  `komunitas` text DEFAULT 'Tidak ada',
  `password` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_users`, `nama`, `email`, `hobi`, `komunitas`, `password`, `create_at`) VALUES
(2, 'chaerul', 'test@gmail.com', 'Tidak ada', 'Tidak ada', '$2y$10$J2kUmSe8a6g/3BQQeIeuPuEboqXmiJje45o9K5cDzVIILhbJW4jda', '2024-06-23 17:54:14'),
(3, 'chaerul', 'test@gmail.com', 'Tidak ada', 'Tidak ada', '$2y$10$.Rv16iaDdwFy5ni7kzfdGeFPGadBFIg/6hA.fNB5DHGusjITjwFkq', '2024-06-23 18:14:40'),
(4, 'chaerul', 'test@gmail.com', 'Tidak ada', 'Tidak ada', '$2y$10$Qr169J8HAeeItAgLt9Sz6eiDKYxUIV/sWET.eBErEmWWLvq52bKV6', '2024-06-23 18:15:20'),
(5, 'chaerul', 'chaerul.mobdev@example.com', 'Tidak ada', 'Tidak ada', '$2y$10$SBHgFo8UKyJW1b1LHYIYdeVWbuOoJme6wt6XAheFEM1IjleeQZkPC', '2024-06-23 18:24:47'),
(6, 'chaerul', 'chaerul@gmail.com', 'Mancing', 'Mancing Mania', '$2y$10$v/lCFj1Op3eL1yd5K.4SIO/2TOmul7oI/DSMAj1foAczCUr657L9.', '2024-06-23 19:00:17'),
(7, 'chaerul', 'chaerul21@gmail.com', 'mancing', 'mancing', '$2y$10$U06DtROCbEpf3VbuPG88FOQXdb0TczBWUhdxxEhDWXgKuXMRyUFAm', '2024-06-23 19:21:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_komunitas`
--
ALTER TABLE `tbl_komunitas`
  ADD PRIMARY KEY (`id_komunitas`),
  ADD KEY `id_users` (`id_users`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_komunitas`
--
ALTER TABLE `tbl_komunitas`
  MODIFY `id_komunitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_komunitas`
--
ALTER TABLE `tbl_komunitas`
  ADD CONSTRAINT `tbl_komunitas_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
