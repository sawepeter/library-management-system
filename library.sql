-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2017 at 08:14 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `editor` int(11) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `editor`, `publisher`, `price`, `pages`) VALUES
(1, 'mathematics', 1, 'top mark', 456, 1234),
(2, 'mathematics', 1, 'golden tips', 456, 1234),
(3, 'english', 1, 'golden tips', 456, 1234),
(123, 'statistics', 5, 'longhorn', 1500, 5000),
(12, 'maths', 2, 'lonhorn', 4566, 34566);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `book_id` varchar(30) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `editor` varchar(70) DEFAULT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `student_id` varchar(80) DEFAULT NULL,
  `fname` varchar(80) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `form` int(11) DEFAULT NULL,
  `stream` varchar(40) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `name`, `editor`, `publisher`, `price`, `pages`, `student_id`, `fname`, `surname`, `form`, `stream`, `year`, `date`) VALUES
('3', 'english', '1', 'golden tips', 456, 1234, '4', 'joyce', 'muthoni', 1, 'N', 2017, '2017-03-12'),
('2', 'mathematics', '1', 'golden tips', 456, 1234, '44', 'monica', 'wangui', 1, 'H', 2022, '2017-06-04'),
('1', 'mathematics', '1', 'top mark', 456, 1234, '478', 'gloria', 'muthoni', 1, 'N', 2017, '2017-06-04'),
('123', 'statistics', '5', 'longhorn', 1500, 5000, '0468/2016', 'charles abuga', 'ongaro', 4, 'N', 2017, '2017-09-17'),
('12', 'maths', '2', 'lonhorn', 4566, 34566, '12', 'felix', 'obao', 4, '3', 2017, '2017-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `returnbooks`
--

CREATE TABLE `returnbooks` (
  `student_id` varchar(50) NOT NULL,
  `fname` char(70) NOT NULL,
  `surname` char(70) NOT NULL,
  `form` int(50) NOT NULL,
  `stream` char(70) NOT NULL,
  `year` int(50) NOT NULL,
  `book_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `editor` char(70) NOT NULL,
  `publisher` char(70) NOT NULL,
  `price` int(50) NOT NULL,
  `pages` int(50) NOT NULL,
  `DOI` date NOT NULL,
  `DOR` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbooks`
--

INSERT INTO `returnbooks` (`student_id`, `fname`, `surname`, `form`, `stream`, `year`, `book_id`, `name`, `editor`, `publisher`, `price`, `pages`, `DOI`, `DOR`) VALUES
('478', 'gloria', 'muthoni', 1, 'N', 2017, 1, 'mathematics', '1', 'top mark', 456, 1234, '2017-06-04', '2017-05-12'),
('44', 'monica', 'wangui', 1, 'H', 2022, 2, 'mathematics', '1', 'golden tips', 456, 1234, '2017-06-04', '2017-02-01'),
('4', 'joyce', 'muthoni', 1, 'N', 2017, 3, 'english', '1', 'golden tips', 456, 1234, '2017-03-12', '2017-03-12'),
('12', 'felix', 'obao', 4, '3', 2017, 12, 'maths', '2', 'lonhorn', 4566, 34566, '2017-09-10', '2018-03-06'),
('0468/2016', 'charles abuga', 'ongaro', 4, 'N', 2017, 123, 'statistics', '5', 'longhorn', 1500, 5000, '2017-09-17', '2017-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(80) DEFAULT NULL,
  `name` varchar(70) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `form` int(11) DEFAULT NULL,
  `stream` varchar(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `surname`, `form`, `stream`, `year`) VALUES
('478', 'gloria', 'muthoni', 1, 'N', 2017),
('47', 'irene', 'muthoni', 1, 'N', 2017),
('4', 'joyce', 'muthoni', 1, 'N', 2017),
('44', 'monica', 'wangui', 1, 'H', 2022),
('0468/2016', 'charles abuga', 'ongaro', 4, 'N', 2017);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fullname` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `security` varchar(200) DEFAULT NULL,
  `answer` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullname`, `username`, `password`, `security`, `answer`) VALUES
('sawe peter onwong\'a', 'sawe', 'sawe', 'whats is your continent?', 'Africa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `returnbooks`
--
ALTER TABLE `returnbooks`
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD UNIQUE KEY `student_id` (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
