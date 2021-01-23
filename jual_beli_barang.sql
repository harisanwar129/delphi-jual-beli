-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 02:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jual_beli_barang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbarang`
--

CREATE TABLE `tbarang` (
  `KODE_BARANG` varchar(15) NOT NULL,
  `NAMA_BARANG` varchar(15) DEFAULT NULL,
  `STOCK` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbarang`
--

INSERT INTO `tbarang` (`KODE_BARANG`, `NAMA_BARANG`, `STOCK`) VALUES
('PG1', 'PENGHAPUS', 75),
('PL1', 'PULPEN', 700),
('SP1', 'SPIDOL', 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbeli`
--

CREATE TABLE `tbeli` (
  `NOTA_BELI` varchar(15) NOT NULL,
  `TANGGAL` datetime DEFAULT NULL,
  `KODE_SUPPLIER` varchar(15) DEFAULT NULL,
  `KODE_BARANG` varchar(15) DEFAULT NULL,
  `JUMLAH` decimal(65,0) DEFAULT NULL,
  `HARGA_BELI` decimal(65,0) DEFAULT NULL,
  `TOTAL_HARGA` decimal(65,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbeli`
--

INSERT INTO `tbeli` (`NOTA_BELI`, `TANGGAL`, `KODE_SUPPLIER`, `KODE_BARANG`, `JUMLAH`, `HARGA_BELI`, `TOTAL_HARGA`) VALUES
('NB1', '2020-01-01 00:00:00', 'KS01', 'PG1', '55', '2000', '110000'),
('NB2', '2000-02-01 00:00:00', 'SKS02', 'PL1', '200', '1000', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `tdetiljual`
--

CREATE TABLE `tdetiljual` (
  `NOTA_JUAL` varchar(15) NOT NULL,
  `KODE_BARANG` varchar(15) NOT NULL,
  `JUMLAH` int(65) DEFAULT NULL,
  `HARGA_JUAL` decimal(65,0) DEFAULT NULL,
  `TOTAL_HARGAA` decimal(65,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tdetiljual`
--

INSERT INTO `tdetiljual` (`NOTA_JUAL`, `KODE_BARANG`, `JUMLAH`, `HARGA_JUAL`, `TOTAL_HARGAA`) VALUES
('NJ-01', 'PG1', 5, '2000', '10000'),
('NJ01', 'PG1', 25, '1000', '25000');

-- --------------------------------------------------------

--
-- Table structure for table `tkonsumen`
--

CREATE TABLE `tkonsumen` (
  `KODE_KONSUMEN` varchar(15) NOT NULL,
  `NAMA_KONSUMEN` varchar(15) DEFAULT NULL,
  `ALAMAT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tkonsumen`
--

INSERT INTO `tkonsumen` (`KODE_KONSUMEN`, `NAMA_KONSUMEN`, `ALAMAT`) VALUES
('', NULL, '0'),
('KK-01', 'HARIS', 'CIPANAS NO.28'),
('KK-02', 'ANWAR', 'PUNCAK CIPANAS'),
('KS-03', 'CV-AREALOKA', 'JAKARTA');

-- --------------------------------------------------------

--
-- Table structure for table `tmasterjual`
--

CREATE TABLE `tmasterjual` (
  `NOTA_JUAL` varchar(15) NOT NULL,
  `TANGGAL` datetime DEFAULT NULL,
  `KODE_KONSUMEN` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tsupplier`
--

CREATE TABLE `tsupplier` (
  `KODE_SUPPLIER` varchar(15) NOT NULL,
  `NAMA_SUPPLIER` varchar(15) DEFAULT NULL,
  `TELP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tsupplier`
--

INSERT INTO `tsupplier` (`KODE_SUPPLIER`, `NAMA_SUPPLIER`, `TELP`) VALUES
('', NULL, '0'),
('KS01', 'CV.SEJAHTERA', '084224555'),
('SKS02', 'CV.MUNDUR', '084265265');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbarang`
--
ALTER TABLE `tbarang`
  ADD PRIMARY KEY (`KODE_BARANG`);

--
-- Indexes for table `tbeli`
--
ALTER TABLE `tbeli`
  ADD PRIMARY KEY (`NOTA_BELI`);

--
-- Indexes for table `tdetiljual`
--
ALTER TABLE `tdetiljual`
  ADD PRIMARY KEY (`NOTA_JUAL`,`KODE_BARANG`),
  ADD KEY `tdetiljual_ibfk_1` (`KODE_BARANG`);

--
-- Indexes for table `tkonsumen`
--
ALTER TABLE `tkonsumen`
  ADD PRIMARY KEY (`KODE_KONSUMEN`);

--
-- Indexes for table `tmasterjual`
--
ALTER TABLE `tmasterjual`
  ADD PRIMARY KEY (`NOTA_JUAL`);

--
-- Indexes for table `tsupplier`
--
ALTER TABLE `tsupplier`
  ADD PRIMARY KEY (`KODE_SUPPLIER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tdetiljual`
--
ALTER TABLE `tdetiljual`
  ADD CONSTRAINT `tdetiljual_ibfk_1` FOREIGN KEY (`KODE_BARANG`) REFERENCES `tbarang` (`KODE_BARANG`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
