-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2025 at 01:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(30) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `answer`, `question_id`, `user_id`) VALUES
(1, 'Dont kill me brother... You should definitely prefer this mobile if you have low budget wants a high quality.', 2, 3),
(2, 'Yes , you can but I recommended to buy a mobile upto 15k if you have budget.', 2, 3),
(3, 'You should go college regularly..', 3, 3),
(20, 'Use natural mosturizers only or use the products you get naturally like aloe Vera, Amla, or drink Vegetable juices.', 12, 0),
(21, 'I can make for a 1 page website with hosting, 3000 will be charges.', 13, 0),
(22, 'haan', 14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(30) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'mobile'),
(2, 'food'),
(3, 'Laptop'),
(4, 'Coding'),
(5, 'fashion'),
(6, 'general');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `emp_id` int(5) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `emp_salary` int(6) NOT NULL,
  `Department` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`emp_id`, `emp_name`, `emp_salary`, `Department`) VALUES
(1, 'Uday Sharma', 80000, 'IT'),
(3, 'Yugi Tadori', 6000, 'Training'),
(4, 'Gojo Saturo', 200000, 'Trainer'),
(8, 'Shinchan', 600000, 'Professor'),
(14, 'Nidhi Sharma', 900000, 'Professor'),
(501, 'Uday Sharma', 60000, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `name`, `email`, `message`) VALUES
(1, 'Uday Sharma', 'udaysharmauds06@gmai', 'Hello, You are hired');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `category_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `title`, `description`, `category_id`, `user_id`) VALUES
(2, 'Should i buy motorola g45?', 'please answer unless i will kill you..', 1, 6),
(3, 'Should I go college regularly?', 'answer..', 6, 3),
(4, 'Hindswaraj ki sthapana kisne ki thi?', 'Related to history. answer it asap...', 6, 3),
(9, 'Which juice is healthy for hairs?', 'Only Knowledgeable guys answer..', 2, 3),
(10, 'Which company laptop should I buy? Dell or hp?', 'answer before sunday..', 3, 3),
(11, 'Is java a good programming language?', 'answer please...', 4, 3),
(12, 'Which kind of glowing cream is non toxic?', 'anyone answer please ...', 5, 3),
(13, 'Who can make the full fledged working website?', 'answer...', 4, 3),
(14, 'kya china wale hi chamar hai?', 'answer....', 6, 2),
(15, 'When India celebrate New year?', 'no cap', 6, 2),
(16, 'Most wearable Garment in India?', 'Have some fashion and lifestyle tips of India so that I can make my trip enjoyable :)', 5, 1),
(17, 'I have learned HTML, JAVASCRIPT, CSS, BOOTSTRAP and PHP. Now what should be the path to get a FAANG ', 'Only genuine answers...', 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `signeduser`
--

CREATE TABLE `signeduser` (
  `email` varchar(25) NOT NULL,
  `password` int(6) NOT NULL,
  `address` varchar(30) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signeduser`
--

INSERT INTO `signeduser` (`email`, `password`, `address`, `user_id`, `username`) VALUES
('kartik@gmail.com', 1234, 'Ahemdabad', 1, 'Kartik Sharma'),
('nidhisharma@gmail.com', 1234, 'lucknow', 6, 'Nidhi Sharma'),
('nitin@gmail.com', 1111, 'Agra', 7, 'Nitin sharma'),
('udaysharmauds06@gmail.com', 12345, 'Agra', 2, 'Uday Sharma');

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `std_id` int(5) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `D.O.B` date NOT NULL,
  `Skills` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_login`
--

INSERT INTO `student_login` (`std_id`, `Name`, `Department`, `D.O.B`, `Skills`) VALUES
(2, 'Gojo', 'Trainer', '0000-00-00', 'Jujutsu Jadu'),
(3, 'Fushiguru', 'Jujutsu Hai', '0000-00-00', '11 Shadows Magic, Do'),
(9, 'Uday Sharma', 'M.Sc.', '0000-00-00', 'Fluent English Speak'),
(14, 'Nidhi Sharma', 'M.Sc.', '0000-00-00', 'Fluent English Speak'),
(63, 'Fushiguru', 'Jujutsu Hai', '0000-00-00', '11 Shadows Magic, Do');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `age` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Name`, `age`) VALUES
(5, 'Uday Sharma', 1),
(6, 'Uday Sharma', 1),
(7, 'Uday Sharma', 1),
(8, 'Uday Sharma', 1),
(9, 'Uday Sharma', 1),
(10, 'Uday Sharma', 1),
(14, 'Uday Sharma', 9),
(15, 'Uday Sharma', 9),
(16, 'Uday Sharma', 9),
(17, 'Uday Sharma', 9),
(19, 'Uday Sharma', 9),
(20, 'Uday Sharma', 9),
(21, 'Uday Sharma', 9),
(22, 'Uday Sharma', 9),
(23, 'Uday Sharma', 9),
(24, 'Uday Sharma', 9),
(25, 'Uday Sharma', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signeduser`
--
ALTER TABLE `signeduser`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `Unique` (`user_id`);

--
-- Indexes for table `student_login`
--
ALTER TABLE `student_login`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `signeduser`
--
ALTER TABLE `signeduser`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
