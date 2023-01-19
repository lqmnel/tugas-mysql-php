-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 06:59 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studi kasus php2 zenius`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'ibnu', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int(11) NOT NULL,
  `plane_id` int(11) NOT NULL,
  `flight_gates_id` int(11) NOT NULL,
  `flight_class_id` int(11) NOT NULL,
  `flight_number` varchar(5) NOT NULL,
  `arrival` varchar(50) NOT NULL,
  `departure` varchar(50) NOT NULL,
  `date_arrival` date NOT NULL,
  `time_arrival` time NOT NULL,
  `date_departure` date NOT NULL,
  `time_departure` time NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `plane_id`, `flight_gates_id`, `flight_class_id`, `flight_number`, `arrival`, `departure`, `date_arrival`, `time_arrival`, `date_departure`, `time_departure`, `price`) VALUES
(1, 1, 1, 1, '547', 'Jakarta', 'Singapore', '2022-12-28', '11:00:00', '2022-12-28', '09:20:00', '2500000'),
(2, 2, 2, 4, '315', 'Jakarta', 'Bali', '2022-12-09', '12:00:00', '2022-12-09', '10:30:00', '3850000'),
(3, 3, 3, 2, '366', 'Jakarta', 'Solo', '2022-12-03', '16:20:00', '2022-12-03', '14:50:00', '1750000'),
(4, 4, 2, 2, '326', 'Jakarta', 'Surabaya', '2022-12-28', '09:00:00', '2022-12-28', '07:20:00', '2100000'),
(5, 2, 1, 2, '312', 'Bandung', 'Jakarta', '2022-12-25', '14:00:00', '2022-12-25', '15:00:00', '1300000');

-- --------------------------------------------------------

--
-- Table structure for table `flight_classes`
--

CREATE TABLE `flight_classes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_classes`
--

INSERT INTO `flight_classes` (`id`, `name`) VALUES
(1, 'Economy'),
(2, 'Business'),
(3, 'Executive'),
(4, 'First Class Luxury'),
(6, 'Economy Premium');

-- --------------------------------------------------------

--
-- Table structure for table `flight_gates`
--

CREATE TABLE `flight_gates` (
  `id` int(11) NOT NULL,
  `gates` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_gates`
--

INSERT INTO `flight_gates` (`id`, `gates`, `status`) VALUES
(1, 'GATE 1', 'OPEN'),
(2, 'GATE 2', 'OPEN'),
(3, 'GATE 3', 'OPEN');

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `capacity` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`id`, `code`, `type`, `capacity`) VALUES
(1, 'A320', 'Boeing 737', '50'),
(2, 'A550', 'Boeing 747', '50'),
(3, 'A530', 'Boeing 747', '50'),
(4, 'B120', 'Airbus A33', '70'),
(5, 'B100', 'Airbus A33', '70'),
(6, 'B220', 'Airbus A32', '100'),
(7, 'A330', 'Airbus A32', '130');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`) VALUES
(1, 'Dimas Hanifan', 'dimashanifan@gmail.com', '081234567890'),
(2, 'Pujii', 'puji@gmail.com', '087652652412'),
(3, 'Rahma', 'rahma@gmail.com', '098765676321'),
(4, 'Andin', 'andin@gmail.com', '087123652348'),
(5, 'Dindra', 'dindra@gmail.com', '089754238172'),
(7, 'antonn', 'anton@gmail.com', '087627263718');

-- --------------------------------------------------------

--
-- Table structure for table `user_flights`
--

CREATE TABLE `user_flights` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `ticket_number` varchar(20) NOT NULL,
  `user_flight_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_classes`
--
ALTER TABLE `flight_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_gates`
--
ALTER TABLE `flight_gates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_flights`
--
ALTER TABLE `user_flights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flight_classes`
--
ALTER TABLE `flight_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `flight_gates`
--
ALTER TABLE `flight_gates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_flights`
--
ALTER TABLE `user_flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
