-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 07:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `machine_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `de_id` int(11) NOT NULL,
  `de_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`de_id`, `de_name`) VALUES
(1, 'R&D TEAM');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feed_id` int(11) NOT NULL,
  `feedmail` text NOT NULL,
  `feedmsg` text NOT NULL,
  `restaurantid` int(11) NOT NULL,
  `feedstatus` int(11) NOT NULL DEFAULT 0,
  `feeddatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `name` text NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `name`, `permission`) VALUES
(1, 'sraff@staff', 'staff', 'Staff', 1),
(2, 'admin@supervisor', 'supervisor', 'supervisor', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberid`, `username`, `password`, `type`) VALUES
(1, 'staff', 'staff', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurantid` int(11) NOT NULL,
  `restaurantname` varchar(50) NOT NULL,
  `restaurantcode` varchar(10) NOT NULL,
  `agentid` int(11) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `contactperson` varchar(30) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `joourl` text NOT NULL,
  `stripeusername` varchar(30) NOT NULL,
  `stripepass` varchar(30) NOT NULL,
  `restaurantcommrate` varchar(50) NOT NULL,
  `adminurl` text NOT NULL,
  `agent_comm` int(10) NOT NULL DEFAULT 7,
  `wrk_status` int(11) NOT NULL DEFAULT 2,
  `b_status` int(11) NOT NULL DEFAULT 0,
  `bfee` varchar(50) NOT NULL DEFAULT '0',
  `g_status` int(10) NOT NULL DEFAULT 1,
  `accname` text NOT NULL,
  `accno` text NOT NULL,
  `scode` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `rest_signature` text NOT NULL,
  `rest_docs` text NOT NULL,
  `rest_completed` text NOT NULL,
  `inst_status` int(10) NOT NULL DEFAULT 1,
  `a_username` text NOT NULL,
  `a_password` text NOT NULL,
  `comm_type` int(11) NOT NULL DEFAULT 1,
  `dinein_comm` int(11) NOT NULL,
  `voucher_comm` int(11) NOT NULL,
  `pay_comm` int(11) NOT NULL,
  `api_url` text NOT NULL,
  `apikey` varchar(100) NOT NULL,
  `printer` text DEFAULT NULL,
  `print_status` text DEFAULT NULL,
  `btype` int(11) NOT NULL DEFAULT 1,
  `seo_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurantid`, `restaurantname`, `restaurantcode`, `agentid`, `postcode`, `address`, `contactperson`, `contactno`, `joourl`, `stripeusername`, `stripepass`, `restaurantcommrate`, `adminurl`, `agent_comm`, `wrk_status`, `b_status`, `bfee`, `g_status`, `accname`, `accno`, `scode`, `date_created`, `rest_signature`, `rest_docs`, `rest_completed`, `inst_status`, `a_username`, `a_password`, `comm_type`, `dinein_comm`, `voucher_comm`, `pay_comm`, `api_url`, `apikey`, `printer`, `print_status`, `btype`, `seo_status`) VALUES
(1, 'Tracks', 'amal0001', 1, 'HA2 8AD', '11 Thornley Drive, Harrow, England', 'Amal raj', '07446156123', 'https://tracks.ijoo.co.uk/', 'amal@uaduk.com', 'Getjoo@32123', '10', 'https://tracks.ijoo.co.uk/index.php/admin', 0, 1, 0, '0', 1, '', '', '', '2020-11-24 04:51:35', '', '', '', 4, 'admin@track555', 'pass@track555', 2, 0, 0, 0, 'https://tracks.ijoo.co.uk/', '1835759987', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `stafftracking`
--

CREATE TABLE `stafftracking` (
  `s_track_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `track_url` varchar(100) NOT NULL,
  `track_datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stafftracking`
--

INSERT INTO `stafftracking` (`s_track_id`, `u_id`, `track_url`, `track_datetime`) VALUES
(0, 1, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:18:16'),
(0, 2, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:21:34'),
(0, 3, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:21:39'),
(0, 4, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:29:38'),
(0, 5, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:30:25'),
(0, 6, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 11:30:59'),
(0, 7, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:31:06'),
(0, 8, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 11:31:24'),
(0, 9, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:33:16'),
(0, 10, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 11:33:32'),
(0, 11, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 11:36:50'),
(0, 12, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:36:55'),
(0, 13, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:36:57'),
(0, 14, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 11:37:11'),
(0, 15, 'https://localhost/2/index.php/admin/taskassign', '2022-07-02 10:37:11'),
(0, 16, 'https://localhost/2/index.php/admin/taskassign', '2022-07-02 10:38:10'),
(0, 17, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:39:48'),
(0, 18, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:40:05'),
(0, 19, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 11:40:18'),
(0, 20, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:40:18'),
(0, 21, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 11:59:39'),
(0, 22, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:00:51'),
(0, 23, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:12:00'),
(0, 24, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:12:24'),
(0, 25, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:14:38'),
(0, 26, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:14:46'),
(0, 27, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:14:49'),
(0, 28, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:15:08'),
(0, 29, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:15:58'),
(0, 30, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:23:36'),
(0, 31, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:23:59'),
(0, 32, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:24:46'),
(0, 33, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:24:50'),
(0, 34, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:24:53'),
(0, 35, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:25:11'),
(0, 36, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:25:11'),
(0, 37, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:27:04'),
(0, 38, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:27:04'),
(0, 39, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:28:43'),
(0, 40, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:29:03'),
(0, 41, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:29:03'),
(0, 42, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:30:00'),
(0, 43, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:30:00'),
(0, 44, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:41:21'),
(0, 45, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:44:18'),
(0, 46, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:44:46'),
(0, 47, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 12:45:04'),
(0, 48, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 12:45:04'),
(0, 49, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 13:25:05'),
(0, 50, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 13:28:10'),
(0, 51, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 13:29:08'),
(0, 52, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 13:29:59'),
(0, 53, 'https://localhost/2/index.php/admin/addtask', '2022-07-02 13:31:18'),
(0, 55, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 17:07:24'),
(0, 56, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 17:07:47'),
(0, 57, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 17:13:20'),
(0, 58, 'https://localhost/2/index.php/admin/inserttask', '2022-07-02 17:14:45'),
(0, 59, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 04:29:40'),
(0, 60, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 04:33:42'),
(0, 61, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 04:41:37'),
(0, 62, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:44:36'),
(0, 63, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:45:00'),
(0, 64, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:48:30'),
(0, 65, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:49:01'),
(0, 66, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:49:27'),
(0, 67, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:49:47'),
(0, 68, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:53:30'),
(0, 69, 'https://localhost/2/index.php/admin/inserttask', '2022-07-03 06:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tasks_val` text NOT NULL,
  `task_status` int(10) NOT NULL DEFAULT 0,
  `task_created` text NOT NULL,
  `task_completed` text NOT NULL,
  `task_addedby` int(10) NOT NULL,
  `task_com_by` int(11) NOT NULL,
  `task_ver_by` int(11) NOT NULL,
  `de_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `prior` int(11) NOT NULL DEFAULT 2,
  `noti_date` date DEFAULT NULL,
  `task_type` int(11) NOT NULL DEFAULT 0,
  `task_slno` int(11) NOT NULL,
  `start_time` varchar(100) NOT NULL,
  `end_time` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `completed_on` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `user_id`, `tasks_val`, `task_status`, `task_created`, `task_completed`, `task_addedby`, `task_com_by`, `task_ver_by`, `de_id`, `rest_id`, `prior`, `noti_date`, `task_type`, `task_slno`, `start_time`, `end_time`, `status`, `completed_on`) VALUES
(0, 1, 'task1', 0, '2022-07-02 10:37:11', '', 2, 0, 0, 1, 1, 2, '2022-07-21', 1, 0, '', '', 0, ''),
(0, 1, 'Arya', 0, '2022-07-02 10:40:18', '', 2, 0, 0, 1, 1, 2, '2022-07-21', 1, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `task_data`
--

CREATE TABLE `task_data` (
  `id` int(11) NOT NULL,
  `task_name` varchar(100) NOT NULL,
  `task_date` date NOT NULL,
  `start_time` varchar(100) NOT NULL,
  `end_time` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `completed_on` varchar(100) NOT NULL,
  `completed_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_data`
--

INSERT INTO `task_data` (`id`, `task_name`, `task_date`, `start_time`, `end_time`, `status`, `completed_on`, `completed_by`) VALUES
(7, 'Task 1', '2022-07-13', '10:22', '14:18', 'Acepted', '2022-07-03 06:49:51', ''),
(8, 'Task 2', '2022-07-26', '10:21', '10:24', 'Rejected', '2022-07-03 06:49:55', ''),
(9, 'Task 3', '2022-07-13', '15:19', '14:19', 'completed', '2022-07-03 06:49:57', ''),
(10, 'task 4', '2022-07-27', '14:19', '16:19', 'Pending', '', ''),
(11, 'Task 5', '2022-07-16', '10:26', '10:27', 'Acepted', '2022-07-03 06:54:51', ''),
(12, 'Task 6', '2022-07-22', '10:27', '15:24', 'Pending', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `team_depart`
--

CREATE TABLE `team_depart` (
  `team_depart_id` int(11) NOT NULL,
  `de_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team_depart`
--

INSERT INTO `team_depart` (`team_depart_id`, `de_id`, `login_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `u_id` int(11) NOT NULL,
  `userid` int(10) NOT NULL,
  `ipaddr` text NOT NULL,
  `login` text NOT NULL,
  `logout` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`u_id`, `userid`, `ipaddr`, `login`, `logout`) VALUES
(0, 2, '::1', '02-07-2022 09:57:29 am', ''),
(0, 2, '::1', '02-07-2022 11:33:03 am', ''),
(0, 2, '::1', '03-07-2022 03:28:34 am', ''),
(0, 2, '::1', '03-07-2022 03:34:12 am', ''),
(0, 1, '::1', '03-07-2022 03:35:13 am', ''),
(0, 1, '::1', '03-07-2022 03:38:09 am', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `stafftracking`
--
ALTER TABLE `stafftracking`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `task_data`
--
ALTER TABLE `task_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stafftracking`
--
ALTER TABLE `stafftracking`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `task_data`
--
ALTER TABLE `task_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
