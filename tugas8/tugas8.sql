-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 07:24 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas8`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_inventaris`
--

CREATE TABLE `data_inventaris` (
  `kode` varchar(20) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `fakultas` varchar(15) NOT NULL,
  `barang` varchar(20) NOT NULL,
  `kondisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_inventaris`
--

INSERT INTO `data_inventaris` (`kode`, `jenis`, `fakultas`, `barang`, `kondisi`) VALUES
('INV-COM-001', 'KOMPUTER', 'pertanian', 'KOMPUTER TU', 'PERLU PERBAIKAN'),
('INV-COM-002', 'KOMPUTER', 'teknik', 'KOMPUTER TU', 'PERLU PERBAIKAN'),
('INV-COM-003', 'KOMPUTER', 'teknik', 'KOMPUTER TU', 'BAIK'),
('INV-COM-004', 'KOMPUTER', 'ekonomi', 'KOMPUTER TU', 'PERLU PERBAIKAN'),
('INV-COM-005', 'KOMPUTER', 'fad', 'KOMPUTER TU', 'BAIK'),
('INV-COM-006', 'KOMPUTER', 'hukum', 'KOMPUTER TU', 'BARU'),
('INV-COM-007', 'KOMPUTER', 'teknik', 'KOMPUTER TU', 'BARU'),
('INV-COM-008', 'KOMPUTER', 'ekonomi', 'KOMPUTER TU', 'PERLU PERBAIKAN'),
('INV-COM-009', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER TU', 'BAIK'),
('INV-COM-010', 'KOMPUTER', 'fisip', 'KOMPUTER TU', 'PERLU PERBAIKAN'),
('INV-COM-011', 'KOMPUTER', 'pertanian', 'KOMPUTER TU', 'BARU'),
('INV-COM-012', 'KOMPUTER', 'fisip', 'KOMPUTER TU', 'BARU'),
('INV-COM-013', 'KOMPUTER', 'teknik', 'KOMPUTER TU', 'BAIK'),
('INV-COM-014', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER TU', 'PERLU PERBAIKAN'),
('INV-COM-015', 'KOMPUTER', 'pertanian', 'KOMPUTER TU', 'BARU'),
('INV-COM-016', 'KOMPUTER', 'ekonomi', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-017', 'KOMPUTER', 'teknik', 'KOMPUTER LAB', 'BARU'),
('INV-COM-018', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-019', 'KOMPUTER', 'pertanian', 'KOMPUTER LAB', 'BARU'),
('INV-COM-020', 'KOMPUTER', 'teknik', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-021', 'KOMPUTER', 'fad', 'KOMPUTER LAB', 'BARU'),
('INV-COM-022', 'KOMPUTER', 'ekonomi', 'KOMPUTER LAB', 'BARU'),
('INV-COM-023', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'BARU'),
('INV-COM-024', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'BARU'),
('INV-COM-025', 'KOMPUTER', 'ekonomi', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-026', 'KOMPUTER', 'ekonomi', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-027', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-028', 'KOMPUTER', 'fad', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-029', 'KOMPUTER', 'teknik', 'KOMPUTER LAB', 'BARU'),
('INV-COM-030', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'BARU'),
('INV-COM-031', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-032', 'KOMPUTER', 'hukum', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-033', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-034', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'BARU'),
('INV-COM-035', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-036', 'KOMPUTER', 'fad', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-037', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-038', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-039', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-040', 'KOMPUTER', 'hukum', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-041', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-042', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-043', 'KOMPUTER', 'ilmu komputer', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-044', 'KOMPUTER', 'hukum', 'KOMPUTER LAB', 'BARU'),
('INV-COM-045', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'BARU'),
('INV-COM-046', 'KOMPUTER', 'fisip', 'KOMPUTER LAB', 'BARU'),
('INV-COM-047', 'KOMPUTER', 'hukum', 'KOMPUTER LAB', 'PERLU PERBAIKAN'),
('INV-COM-048', 'KOMPUTER', 'fad', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-049', 'KOMPUTER', 'hukum', 'KOMPUTER LAB', 'BAIK'),
('INV-COM-050', 'KOMPUTER', 'hukum', 'KOMPUTER LAB', 'BARU'),
('INV-COM-051', 'KOMPUTER', 'hukum', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-052', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BARU'),
('INV-COM-053', 'KOMPUTER', 'fad', 'LAPTOP', 'BAIK'),
('INV-COM-054', 'KOMPUTER', 'fad', 'LAPTOP', 'BARU'),
('INV-COM-055', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-056', 'KOMPUTER', 'teknik', 'LAPTOP', 'BAIK'),
('INV-COM-057', 'KOMPUTER', 'pertanian', 'LAPTOP', 'BAIK'),
('INV-COM-058', 'KOMPUTER', 'fisip', 'LAPTOP', 'BAIK'),
('INV-COM-059', 'KOMPUTER', 'pertanian', 'LAPTOP', 'BARU'),
('INV-COM-060', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BARU'),
('INV-COM-061', 'KOMPUTER', 'pertanian', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-062', 'KOMPUTER', 'fad', 'LAPTOP', 'BARU'),
('INV-COM-063', 'KOMPUTER', 'fisip', 'LAPTOP', 'BAIK'),
('INV-COM-064', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BAIK'),
('INV-COM-065', 'KOMPUTER', 'fad', 'LAPTOP', 'BARU'),
('INV-COM-066', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BAIK'),
('INV-COM-067', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BAIK'),
('INV-COM-068', 'KOMPUTER', 'pertanian', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-069', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BARU'),
('INV-COM-070', 'KOMPUTER', 'teknik', 'LAPTOP', 'BAIK'),
('INV-COM-071', 'KOMPUTER', 'pertanian', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-072', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BAIK'),
('INV-COM-073', 'KOMPUTER', 'hukum', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-074', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'PERLU PERBAIKAN'),
('INV-COM-075', 'KOMPUTER', 'hukum', 'LAPTOP', 'BAIK'),
('INV-COM-076', 'KOMPUTER', 'teknik', 'LAPTOP', 'BARU'),
('INV-COM-077', 'KOMPUTER', 'teknik', 'LAPTOP', 'BAIK'),
('INV-COM-078', 'KOMPUTER', 'teknik', 'LAPTOP', 'BAIK'),
('INV-COM-079', 'KOMPUTER', 'ekonomi', 'LAPTOP', 'BARU'),
('INV-KENDARAAN-001', 'KENDARAAN', 'ekonomi', 'MOTOR', 'BARU'),
('INV-KENDARAAN-002', 'KENDARAAN', 'ilmu komputer', 'MOTOR', 'BARU'),
('INV-KENDARAAN-003', 'KENDARAAN', 'hukum', 'MOTOR', 'BAIK'),
('INV-KENDARAAN-004', 'KENDARAAN', 'fisip', 'MOTOR', 'BAIK'),
('INV-KENDARAAN-005', 'KENDARAAN', 'pertanian', 'MOTOR', 'BAIK'),
('INV-KENDARAAN-006', 'KENDARAAN', 'ekonomi', 'MOTOR', 'BARU'),
('INV-KENDARAAN-007', 'KENDARAAN', 'fisip', 'MOBIL', 'BARU'),
('INV-KENDARAAN-008', 'KENDARAAN', 'pertanian', 'MOBIL', 'PERLU PERBAIKAN'),
('INV-KENDARAAN-009', 'KENDARAAN', 'pertanian', 'MOBIL', 'PERLU PERBAIKAN'),
('INV-KENDARAAN-010', 'KENDARAAN', 'fad', 'MOBIL', 'BARU'),
('INV-KENDARAAN-011', 'KENDARAAN', 'ekonomi', 'MOBIL', 'BAIK'),
('INV-KENDARAAN-012', 'KENDARAAN', 'ekonomi', 'MOBIL', 'BAIK'),
('INV-LCD-001', 'LCD', 'teknik', 'LCD KELAS', 'BAIK'),
('INV-LCD-002', 'LCD', 'ekonomi', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-003', 'LCD', 'fad', 'LCD KELAS', 'BAIK'),
('INV-LCD-004', 'LCD', 'teknik', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-005', 'LCD', 'ilmu komputer', 'LCD KELAS', 'BAIK'),
('INV-LCD-006', 'LCD', 'ilmu komputer', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-007', 'LCD', 'pertanian', 'LCD KELAS', 'BAIK'),
('INV-LCD-008', 'LCD', 'teknik', 'LCD KELAS', 'BAIK'),
('INV-LCD-009', 'LCD', 'teknik', 'LCD KELAS', 'BAIK'),
('INV-LCD-010', 'LCD', 'hukum', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-011', 'LCD', 'pertanian', 'LCD KELAS', 'BARU'),
('INV-LCD-012', 'LCD', 'ekonomi', 'LCD KELAS', 'BARU'),
('INV-LCD-013', 'LCD', 'pertanian', 'LCD KELAS', 'BAIK'),
('INV-LCD-014', 'LCD', 'ekonomi', 'LCD KELAS', 'BAIK'),
('INV-LCD-015', 'LCD', 'ilmu komputer', 'LCD KELAS', 'BAIK'),
('INV-LCD-016', 'LCD', 'fisip', 'LCD KELAS', 'BAIK'),
('INV-LCD-017', 'LCD', 'teknik', 'LCD KELAS', 'BAIK'),
('INV-LCD-018', 'LCD', 'fad', 'LCD KELAS', 'BAIK'),
('INV-LCD-019', 'LCD', 'ilmu komputer', 'LCD KELAS', 'BARU'),
('INV-LCD-020', 'LCD', 'pertanian', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-021', 'LCD', 'ekonomi', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-022', 'LCD', 'pertanian', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-023', 'LCD', 'pertanian', 'LCD KELAS', 'BAIK'),
('INV-LCD-024', 'LCD', 'fad', 'LCD KELAS', 'BAIK'),
('INV-LCD-025', 'LCD', 'teknik', 'LCD KELAS', 'BARU'),
('INV-LCD-026', 'LCD', 'fisip', 'LCD KELAS', 'BAIK'),
('INV-LCD-027', 'LCD', 'hukum', 'LCD KELAS', 'PERLU PERBAIKAN'),
('INV-LCD-028', 'LCD', 'ilmu komputer', 'LCD KELAS', 'BARU'),
('INV-LCD-029', 'LCD', 'fisip', 'LCD KELAS', 'BAIK'),
('INV-LCD-030', 'LCD', 'ekonomi', 'LCD PORTABLE', 'BAIK'),
('INV-LCD-031', 'LCD', 'teknik', 'LCD PORTABLE', 'BARU'),
('INV-LCD-032', 'LCD', 'teknik', 'LCD PORTABLE', 'BARU'),
('INV-LCD-033', 'LCD', 'ekonomi', 'LCD PORTABLE', 'BARU'),
('INV-LCD-034', 'LCD', 'teknik', 'LCD PORTABLE', 'BAIK'),
('INV-LCD-035', 'LCD', 'fad', 'LCD PORTABLE', 'BARU'),
('INV-LCD-036', 'LCD', 'teknik', 'LCD PORTABLE', 'BAIK'),
('INV-LCD-037', 'LCD', 'fisip', 'LCD PORTABLE', 'PERLU PERBAIKAN'),
('INV-LCD-038', 'LCD', 'hukum', 'LCD PORTABLE', 'BARU'),
('INV-LCD-039', 'LCD', 'pertanian', 'LCD PORTABLE', 'BAIK'),
('INV-MEJA-001', 'MEJA', 'fisip', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-002', 'MEJA', 'pertanian', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-003', 'MEJA', 'hukum', 'MEJA DOSEN', 'BAIK'),
('INV-MEJA-004', 'MEJA', 'fad', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-005', 'MEJA', 'ekonomi', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-006', 'MEJA', 'fisip', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-007', 'MEJA', 'ekonomi', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-008', 'MEJA', 'hukum', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-009', 'MEJA', 'hukum', 'MEJA DOSEN', 'BAIK'),
('INV-MEJA-010', 'MEJA', 'pertanian', 'MEJA DOSEN', 'BAIK'),
('INV-MEJA-011', 'MEJA', 'pertanian', 'MEJA DOSEN', 'BAIK'),
('INV-MEJA-012', 'MEJA', 'ilmu komputer', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-013', 'MEJA', 'hukum', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-014', 'MEJA', 'fad', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-015', 'MEJA', 'ilmu komputer', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-016', 'MEJA', 'ilmu komputer', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-017', 'MEJA', 'fad', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-018', 'MEJA', 'ilmu komputer', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-019', 'MEJA', 'fad', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-020', 'MEJA', 'ekonomi', 'MEJA DOSEN', 'BAIK'),
('INV-MEJA-021', 'MEJA', 'hukum', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-022', 'MEJA', 'pertanian', 'MEJA DOSEN', 'PERLU PERBAIKAN'),
('INV-MEJA-023', 'MEJA', 'fad', 'MEJA DOSEN', 'BAIK'),
('INV-MEJA-024', 'MEJA', 'teknik', 'MEJA DOSEN', 'BARU'),
('INV-MEJA-025', 'MEJA', 'fad', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-026', 'MEJA', 'ekonomi', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-027', 'MEJA', 'ilmu komputer', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-028', 'MEJA', 'teknik', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-029', 'MEJA', 'fad', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-030', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-031', 'MEJA', 'pertanian', 'MEJA KELAS', 'BARU'),
('INV-MEJA-032', 'MEJA', 'fad', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-033', 'MEJA', 'ekonomi', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-034', 'MEJA', 'fisip', 'MEJA KELAS', 'BARU'),
('INV-MEJA-035', 'MEJA', 'fisip', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-036', 'MEJA', 'ilmu komputer', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-037', 'MEJA', 'teknik', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-038', 'MEJA', 'fisip', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-039', 'MEJA', 'teknik', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-040', 'MEJA', 'hukum', 'MEJA KELAS', 'BARU'),
('INV-MEJA-041', 'MEJA', 'teknik', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-042', 'MEJA', 'hukum', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-043', 'MEJA', 'fad', 'MEJA KELAS', 'BARU'),
('INV-MEJA-044', 'MEJA', 'pertanian', 'MEJA KELAS', 'BARU'),
('INV-MEJA-045', 'MEJA', 'hukum', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-046', 'MEJA', 'fad', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-047', 'MEJA', 'fad', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-048', 'MEJA', 'fisip', 'MEJA KELAS', 'BARU'),
('INV-MEJA-049', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-050', 'MEJA', 'hukum', 'MEJA KELAS', 'BARU'),
('INV-MEJA-051', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-052', 'MEJA', 'ekonomi', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-053', 'MEJA', 'pertanian', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-054', 'MEJA', 'fad', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-055', 'MEJA', 'fad', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-056', 'MEJA', 'hukum', 'MEJA KELAS', 'BARU'),
('INV-MEJA-057', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-058', 'MEJA', 'fad', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-059', 'MEJA', 'fisip', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-060', 'MEJA', 'pertanian', 'MEJA KELAS', 'BARU'),
('INV-MEJA-061', 'MEJA', 'fad', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-062', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BARU'),
('INV-MEJA-063', 'MEJA', 'fisip', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-064', 'MEJA', 'ilmu komputer', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-065', 'MEJA', 'hukum', 'MEJA KELAS', 'BARU'),
('INV-MEJA-066', 'MEJA', 'fad', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-067', 'MEJA', 'ilmu komputer', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-068', 'MEJA', 'ekonomi', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-069', 'MEJA', 'pertanian', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-070', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BARU'),
('INV-MEJA-071', 'MEJA', 'fisip', 'MEJA KELAS', 'BARU'),
('INV-MEJA-072', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-073', 'MEJA', 'ilmu komputer', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-074', 'MEJA', 'fisip', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-075', 'MEJA', 'ekonomi', 'MEJA KELAS', 'BARU'),
('INV-MEJA-076', 'MEJA', 'fisip', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-077', 'MEJA', 'ekonomi', 'MEJA KELAS', 'PERLU PERBAIKAN'),
('INV-MEJA-078', 'MEJA', 'fad', 'MEJA KELAS', 'BAIK'),
('INV-MEJA-079', 'MEJA', 'fad', 'MEJA KELAS', 'BARU'),
('INV-MEJA-080', 'MEJA', 'pertanian', 'MEJA KELAS', 'BAIK');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `kode` varchar(10) NOT NULL,
  `fakultas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`kode`, `fakultas`) VALUES
('FK001', 'ekonomi'),
('FK002', 'fad'),
('FK003', 'fisip'),
('FK004', 'hukum'),
('FK005', 'ilmu komputer'),
('FK006', 'pertanian'),
('FK007', 'teknik');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nopeg` int(11) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `fakultas` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nopeg`, `nama`, `fakultas`, `username`, `password`) VALUES
(0, 'admin', 'all fakultas', 'admin@admin.com', 'admin'),
(10001, 'supegawai1', 'pertanian', 'superpegawai1@pegawai.com', '123456'),
(10002, 'supegawai2', 'ekonomi', 'superpegawai2@pegawai.com', '123457'),
(10003, 'supegawai3', 'fisip', 'superpegawai3@pegawai.com', '123458'),
(10004, 'supegawai4', 'ekonomi', 'superpegawai4@pegawai.com', '123459'),
(10005, 'supegawai5', 'teknik', 'superpegawai5@pegawai.com', '123460'),
(10006, 'supegawai6', 'teknik', 'superpegawai6@pegawai.com', '123461'),
(10007, 'supegawai7', 'ilmu komputer', 'superpegawai7@pegawai.com', '123462'),
(10008, 'supegawai8', 'ilmu komputer', 'superpegawai8@pegawai.com', '123463'),
(10009, 'supegawai9', 'ilmu komputer', 'superpegawai9@pegawai.com', '123464'),
(10010, 'supegawai10', 'fad', 'superpegawai10@pegawai.com', '123465'),
(10011, 'supegawai11', 'hukum', 'superpegawai11@pegawai.com', '123466'),
(10012, 'supegawai12', 'pertanian', 'superpegawai12@pegawai.com', '123467');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_inventaris`
--
ALTER TABLE `data_inventaris`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nopeg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
