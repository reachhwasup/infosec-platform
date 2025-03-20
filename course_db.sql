-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 08:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('4BTxN9ZMChZLvlgOSkFi', 'YOvALilci3HoAoxfZ4CJ', 'nLgL8mSh8CPKYSEfhgRh', 'Winter', 'Winter Des', '7UpN0Nmega948Z7n59Ld.mp4', 'WFbdn7qNELrieCPA1PqQ.jpg', '2025-03-20', 'active'),
('B1HEBYSnr3GzixCP71Jo', 'YOvALilci3HoAoxfZ4CJ', 'nLgL8mSh8CPKYSEfhgRh', 'BI', 'tt', '1j1nUQ4RbBuIc5vDFZx9.mp4', 'fqiBJZ3y4j8NU47IesYn.jpg', '2025-03-20', 'active'),
('bq9GB1odGcoHGXU3qAnQ', 'YOvALilci3HoAoxfZ4CJ', 'nLgL8mSh8CPKYSEfhgRh', 'Winter', 'Winter Des', 'TrNo47XRWEcP6qGiQqud.mp4', 'MANSeaRWL2A6j0wDUsDl.jpg', '2025-03-20', 'active'),
('Fqujvd2FNotrChc8Heeq', 'YOvALilci3HoAoxfZ4CJ', 'nLgL8mSh8CPKYSEfhgRh', 'Spring', 'Spring World', 'LQLK8UF0NQzpyLwPNBqh.mp4', 'K40jFlpmEIK63GUoSmS3.webp', '2025-03-20', 'active'),
('RZhmweeXF7sD4m6myh5y', 'YOvALilci3HoAoxfZ4CJ', 'nLgL8mSh8CPKYSEfhgRh', 'Refresh', 'Refresh', 'wP94LtTCvxKHolu9gVFT.mp4', '9RjruI5c6pjneERpFuRq.jpg', '2025-03-20', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('nLgL8mSh8CPKYSEfhgRh', 'YOvALilci3HoAoxfZ4CJ', 'Refreshment', 'Refreshment staff', 'jItBaEwuMDcabEVJKkIm.webp', '2025-02-28', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('YOvALilci3HoAoxfZ4CJ', 'Reachh', 'teacher', 'test@apd.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'OWjQlYBcqafuZGJO6Eaz.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `position`, `image`) VALUES
('drVQVLvXWx0OE6ZvFt0b', 'User1', 'user1@gmial.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '7s5MBfdtK0xr5U8GGV6k.webp'),
('Jj3ySF7oKt6jQ0MVaMou', 'Ni', 'ni@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Lawyer', 'cf0cQkP8AscqdYO9LFim.jpg'),
('Jorqcaxp3HKKFBKlETlk', 'steve', 'steve@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'f6949a8c7d5b90b4a698660bbfb9431503fbb995', 'SXtzTnL9gT4RLHZ2H5MO.'),
('SnxF9VcaB1EYwkLMZvSc', 'steve', 'steve1@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'InfoSec', 'i4H4WZidmkMMfdB6yVOx.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
