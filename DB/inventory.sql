-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 05:49 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'SKS1', 'Borivali', '090998278', 'blue'),
(2, 'SKS2', 'Colaba', '98786786', 'purple');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(5, 'Necklace'),
(6, 'Bangles'),
(7, 'Bracelet'),
(8, 'Nosepins'),
(9, 'Ring'),
(10, 'Pendants'),
(11, 'Earrings');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `house_status` varchar(30) NOT NULL,
  `years` varchar(20) NOT NULL,
  `rent` varchar(10) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_year` varchar(10) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `salary` varchar(30) NOT NULL,
  `spouse` varchar(30) NOT NULL,
  `spouse_no` varchar(30) NOT NULL,
  `spouse_emp` varchar(50) NOT NULL,
  `spouse_details` varchar(100) NOT NULL,
  `spouse_income` decimal(10,2) NOT NULL,
  `comaker` varchar(30) NOT NULL,
  `comaker_details` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) NOT NULL,
  `ci_remarks` varchar(1000) NOT NULL,
  `ci_name` varchar(50) NOT NULL,
  `ci_date` date NOT NULL,
  `payslip` int(11) NOT NULL,
  `valid_id` int(11) NOT NULL,
  `cert` int(11) NOT NULL,
  `cedula` int(11) NOT NULL,
  `income` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(3, 'Sandeep', 'Yadav', 'asfssfe', '39826423', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(4, 'neha', 'neha', 'sdifwf', '234234', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(5, 'K', 'S', 'vddv', '334', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(6, 'B', 'A', 'abcasd', '124', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(7, 'D', 'C', 'sfdsf', '12312', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(8, 'F', 'E', '1asdasd', '21432', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(9, 'ethan', 'rebello', 'gaon', '8008135', '291.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(10, 'Jon', 'Snow', 'Winterfell', '232546346', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(11, 'Arya', 'Stark', 'Winterfell', '2423534667', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(12, 'Bran', 'Stark', 'Winterfell', '2446832342', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(13, 'Night', 'King ', 'Forest', '123235436', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(14, 'Cersei', 'Lannister', 'Kings Landing', '235457823', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(15, 'Jaime', 'Lannister', 'Casterly Rock', '657657312', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(16, 'Tyrion', 'Lannister', 'Kings Landing', '4668893453', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(17, 'Red', 'Woman', 'Winterfell', '354363563', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 2, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(18, 'Tywin', 'Lannister', 'Casterly Rock', '24683645235', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(19, 'Shrey', 'singh', 'asap\r\n', '212', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(20, 'A', 'B', 'ds', '2134', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2019-04-03 12:52:12'),
(11, 1, 'has logged in the system at ', '2019-04-03 13:00:52'),
(12, 0, 'has logged out the system at ', '2019-04-03 13:04:02'),
(13, 1, 'has logged in the system at ', '2019-04-03 13:04:08'),
(14, 1, 'has logged out the system at ', '2019-04-03 14:12:47'),
(15, 1, 'has logged in the system at ', '2019-04-03 14:13:14'),
(16, 4, 'has logged in the system at ', '2019-04-03 14:28:12'),
(17, 4, 'has logged out the system at ', '2019-04-03 14:28:40'),
(18, 1, 'has logged in the system at ', '2019-04-03 14:28:52'),
(19, 1, 'has logged out the system at ', '2019-04-03 14:28:55'),
(20, 1, 'has logged in the system at ', '2019-04-03 14:32:53'),
(21, 1, 'has logged out the system at ', '2019-04-03 14:36:01'),
(22, 1, 'has logged in the system at ', '2019-04-03 16:40:49'),
(23, 1, 'has logged out the system at ', '2019-04-03 16:42:08'),
(24, 1, 'has logged in the system at ', '2019-04-03 16:42:16'),
(25, 1, 'has logged out the system at ', '2019-04-03 16:56:15'),
(26, 1, 'has logged in the system at ', '2019-04-03 16:56:32'),
(27, 1, 'has logged out the system at ', '2019-04-03 17:16:18'),
(28, 1, 'has logged in the system at ', '2019-04-03 17:16:41'),
(29, 1, 'has logged in the system at ', '2019-04-12 03:01:54'),
(30, 1, 'has logged out the system at ', '2019-04-12 03:02:11'),
(31, 1, 'has logged in the system at ', '2019-04-12 03:07:23'),
(32, 1, 'has logged out the system at ', '2019-04-12 03:09:51'),
(33, 1, 'has logged in the system at ', '2019-04-12 03:13:29'),
(34, 1, 'has logged in the system at ', '2019-04-12 17:19:15'),
(35, 1, 'has logged out the system at ', '2019-04-12 17:19:34'),
(36, 5, 'has logged in the system at ', '2019-04-12 17:20:18'),
(37, 5, 'has logged out the system at ', '2019-04-12 17:22:00'),
(38, 5, 'has logged in the system at ', '2019-04-12 17:23:27'),
(39, 5, 'added 10 of Cylindrical Design', '2019-04-12 17:24:36'),
(40, 6, 'has logged out the system at ', '2019-04-12 17:27:29'),
(41, 1, 'has logged in the system at ', '2019-04-12 17:45:49'),
(42, 0, 'has logged out the system at ', '2019-04-12 17:48:38'),
(43, 1, 'has logged in the system at ', '2019-04-12 18:08:51'),
(44, 1, 'has logged out the system at ', '2019-04-12 18:12:54'),
(45, 1, 'has logged in the system at ', '2019-04-12 18:13:14'),
(46, 1, 'has logged out the system at ', '2019-04-12 18:15:39'),
(47, 1, 'has logged in the system at ', '2019-04-12 18:17:18'),
(48, 9, 'has logged in the system at ', '2019-04-15 02:51:49'),
(49, 9, 'has logged out the system at ', '2019-04-15 11:32:26'),
(50, 12, 'has logged in the system at ', '2019-04-15 11:33:07'),
(51, 12, 'has logged in the system at ', '2019-04-15 11:38:39'),
(52, 12, 'has logged out the system at ', '2019-04-15 11:40:26'),
(53, 1, 'has logged in the system at ', '2019-04-15 11:40:35'),
(54, 1, 'has logged out the system at ', '2019-04-15 11:47:35'),
(55, 5, 'has logged in the system at ', '2019-04-15 11:47:42'),
(56, 6, 'has logged out the system at ', '2019-04-15 11:52:37'),
(57, 1, 'has logged in the system at ', '2019-04-15 11:52:46'),
(58, 1, 'has logged out the system at ', '2019-04-15 11:56:38'),
(59, 1, 'has logged in the system at ', '2019-04-15 11:56:47'),
(60, 1, 'has logged out the system at ', '2019-04-15 12:02:42'),
(61, 1, 'has logged in the system at ', '2019-04-15 12:02:53'),
(62, 6, 'has logged out the system at ', '2019-04-15 12:46:05'),
(63, 1, 'has logged in the system at ', '2019-04-15 12:46:13'),
(64, 0, 'has logged out the system at ', '2019-04-15 12:49:25'),
(65, 1, 'has logged in the system at ', '2019-04-15 13:00:27'),
(66, 1, 'has logged out the system at ', '2019-04-15 13:22:38'),
(67, 5, 'has logged in the system at ', '2019-04-15 13:22:45'),
(68, 1, 'has logged in the system at ', '2019-04-15 13:48:26'),
(69, 1, 'has logged out the system at ', '2019-04-15 13:48:56'),
(70, 1, 'has logged in the system at ', '2019-04-15 15:39:51'),
(71, 1, 'has logged out the system at ', '2019-04-15 15:40:04'),
(72, 12, 'has logged in the system at ', '2019-04-15 15:40:13'),
(73, 12, 'has logged out the system at ', '2019-04-15 15:41:05'),
(74, 5, 'has logged in the system at ', '2019-04-15 15:42:09'),
(75, 5, 'has logged out the system at ', '2019-04-15 15:42:50'),
(76, 1, 'has logged in the system at ', '2019-04-15 15:54:51'),
(77, 1, 'has logged out the system at ', '2019-04-15 16:00:24'),
(78, 1, 'has logged out the system at ', '2019-04-15 16:00:24'),
(79, 1, 'has logged in the system at ', '2019-04-15 16:00:34'),
(80, 1, 'added 5 of Hoop Earrings', '2019-04-15 16:10:25'),
(81, 1, 'added 5 of STUD Earrings', '2019-04-15 16:10:49'),
(82, 1, 'has logged out the system at ', '2019-04-15 16:14:12'),
(83, 1, 'has logged in the system at ', '2019-04-15 18:01:01'),
(84, 0, 'has logged out the system at ', '2019-04-15 18:35:29'),
(85, 1, 'has logged in the system at ', '2019-04-15 18:35:45'),
(86, 1, 'added 10 of Designer Pendant', '2019-04-15 18:36:57'),
(87, 1, 'has logged out the system at ', '2019-04-15 18:40:18'),
(88, 5, 'has logged in the system at ', '2019-04-15 18:41:24'),
(89, 6, 'has logged out the system at ', '2019-04-15 18:42:00'),
(90, 12, 'has logged in the system at ', '2019-04-15 18:42:28'),
(91, 12, 'has logged out the system at ', '2019-04-15 18:44:37'),
(92, 5, 'has logged in the system at ', '2019-04-15 18:44:54'),
(93, 5, 'added 1 of Cylindrical Design', '2019-04-15 18:45:25'),
(94, 5, 'added 1 of Cylindrical Design', '2019-04-15 18:45:48'),
(95, 5, 'added 6 of Cylindrical Design', '2019-04-15 18:46:57'),
(96, 5, 'has logged out the system at ', '2019-04-15 18:49:24'),
(97, 5, 'has logged in the system at ', '2019-04-15 18:49:43'),
(98, 5, 'has logged out the system at ', '2019-04-15 18:52:26'),
(99, 1, 'has logged in the system at ', '2019-04-15 18:53:44'),
(100, 1, 'added 10 of Cylindrical Design', '2019-04-15 18:57:37'),
(101, 1, 'has logged in the system at ', '2019-04-16 15:39:40'),
(102, 1, 'has logged in the system at ', '2019-04-24 14:46:01'),
(103, 1, 'has logged in the system at ', '2019-05-03 04:54:59'),
(104, 1, 'has logged out the system at ', '2019-05-03 04:57:21'),
(105, 5, 'has logged in the system at ', '2019-05-03 04:57:28'),
(106, 5, 'has logged out the system at ', '2019-05-03 04:59:14'),
(107, 7, 'has logged in the system at ', '2019-05-03 05:00:22'),
(108, 0, 'has logged out the system at ', '2019-05-03 05:04:20'),
(109, 9, 'has logged in the system at ', '2019-05-03 05:04:39'),
(110, 9, 'has logged out the system at ', '2019-05-03 05:06:41'),
(111, 12, 'has logged in the system at ', '2019-05-03 05:06:53'),
(112, 12, 'has logged out the system at ', '2019-05-03 05:08:38'),
(113, 1, 'has logged in the system at ', '2019-05-03 11:12:32'),
(114, 1, 'has logged out the system at ', '2019-05-03 12:14:53'),
(115, 1, 'has logged in the system at ', '2019-05-03 12:15:09'),
(116, 1, 'has logged out the system at ', '2019-05-03 12:15:46'),
(117, 1, 'has logged in the system at ', '2019-05-03 12:16:24'),
(118, 1, 'has logged out the system at ', '2019-05-03 12:17:27'),
(119, 1, 'has logged in the system at ', '2019-05-03 12:22:41'),
(120, 1, 'added 5 of STUD Earrings', '2019-05-03 12:27:06'),
(121, 1, 'added 5 of Ringa Ringa', '2019-05-03 12:30:58'),
(122, 1, 'added 5 of Ringa Ringa', '2019-05-03 12:30:58'),
(123, 1, 'added 17 of Designer Pendant', '2019-05-03 12:35:28'),
(124, 1, 'has logged out the system at ', '2019-05-03 12:45:05'),
(125, 5, 'has logged in the system at ', '2019-05-03 12:46:34'),
(126, 0, 'has logged out the system at ', '2019-05-03 12:57:57'),
(127, 1, 'has logged in the system at ', '2019-05-03 13:09:01'),
(128, 1, 'added 5 of Oval Bangle', '2019-05-03 13:12:27'),
(129, 5, 'has logged in the system at ', '2019-11-22 23:14:35'),
(130, 5, 'has logged out the system at ', '2019-11-22 23:14:42'),
(131, 5, 'has logged in the system at ', '2019-11-22 23:16:40'),
(132, 5, 'has logged out the system at ', '2019-11-22 23:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `remaining` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '9.10', '103.90', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '9.10', '140.60', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '9.10', '140.60', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 3, 10, '81743.00', '2019-04-03 13:57:32', 1, 1, '2019-04-03', '81743.00', '0.00', '0.00', 'paid', '0.00', 1903),
(3169, 5, 11, '266.00', '2019-04-12 17:21:47', 5, 1, '2019-04-12', '266.00', '0.00', '0.00', 'paid', '0.00', 1904),
(3170, 3, 12, '274677.00', '2019-04-12 18:11:48', 1, 1, '2019-04-12', '274677.00', '0.00', '0.00', 'paid', '0.00', 1905),
(3171, 5, 13, '39.00', '2019-04-12 18:14:31', 1, 1, '2019-04-12', '39.00', '0.00', '0.00', 'paid', '0.00', 1906),
(3172, 6, 14, '45068.00', '2019-04-15 11:29:50', 9, 2, '2019-04-15', '45068.00', '0.00', '0.00', 'paid', '0.00', 1907),
(3173, 7, 15, '34403.00', '2019-04-15 11:30:37', 9, 2, '2019-04-15', '34403.00', '0.00', '0.00', 'paid', '0.00', 1908),
(3174, 8, 16, '47546.00', '2019-04-15 11:31:32', 9, 2, '2019-04-15', '47546.00', '0.00', '0.00', 'paid', '0.00', 1909),
(3175, 6, 17, '300598.00', '2019-04-15 11:32:20', 9, 2, '2019-04-15', '300598.00', '0.00', '0.00', 'paid', '0.00', 1910),
(3176, 5, 13, '39.00', '2019-02-12 18:14:31', 1, 1, '2019-04-12', '39.00', '0.00', '0.00', 'paid', '0.00', 1906),
(3177, 5, 36, '189595.00', '2019-04-15 12:46:35', 1, 1, '2019-04-15', '189595.00', '0.00', '0.00', 'paid', '0.00', 1907),
(3178, 5, 37, '125.00', '2019-04-15 13:20:36', 1, 1, '2019-04-15', '125.00', '0.00', '0.00', 'paid', '0.00', 1908),
(3179, 5, 38, '7.00', '2019-04-15 15:55:13', 1, 1, '2019-04-15', '7.00', '0.00', '0.00', 'paid', '0.00', 1909),
(3180, 9, 40, '64.00', '2019-04-15 16:08:27', 1, 1, '2019-04-15', '64.00', '0.00', '0.00', 'paid', '0.00', 1910),
(3181, 9, 41, '283599.00', '2019-04-15 16:09:54', 1, 1, '2019-04-15', '283599.00', '0.00', '0.00', 'paid', '0.00', 1911),
(3182, 9, 42, '325587.00', '2019-04-15 18:03:52', 1, 1, '2019-04-15', '325587.00', '0.00', '0.00', 'paid', '0.00', 1912),
(3183, 9, 43, '296236.00', '2019-04-15 18:54:46', 1, 1, '2019-04-15', '296236.00', '0.00', '0.00', 'paid', '0.00', 1913),
(3184, 10, 44, '66891.00', '2019-05-03 04:55:57', 1, 1, '2019-05-03', '66891.00', '0.00', '0.00', 'paid', '0.00', 1914),
(3185, 11, 45, '305376.00', '2019-05-03 04:57:15', 1, 1, '2019-05-03', '305376.00', '0.00', '0.00', 'paid', '0.00', 1915),
(3186, 12, 46, '43458.00', '2019-05-03 04:58:13', 5, 1, '2019-05-03', '43458.00', '0.00', '0.00', 'paid', '0.00', 1916),
(3187, 13, 47, '81685.00', '2019-05-03 04:59:08', 5, 1, '2019-05-03', '81685.00', '0.00', '0.00', 'paid', '0.00', 1917),
(3188, 13, 48, '81685.00', '2019-05-03 04:59:09', 5, 1, '2019-05-03', '81685.00', '0.00', '0.00', 'paid', '0.00', 1918),
(3189, 14, 49, '111103.00', '2019-05-03 05:01:13', 7, 1, '2019-05-03', '111103.00', '0.00', '0.00', 'paid', '0.00', 1919),
(3190, 15, 50, '309143.00', '2019-05-03 05:05:27', 9, 2, '2019-05-03', '309143.00', '0.00', '0.00', 'paid', '0.00', 1920),
(3191, 16, 51, '55531.00', '2019-05-03 05:06:36', 9, 2, '2019-05-03', '55531.00', '0.00', '0.00', 'paid', '0.00', 1921),
(3192, 17, 52, '540075.00', '2019-05-03 05:08:31', 12, 2, '2019-05-03', '540075.00', '0.00', '0.00', 'paid', '0.00', 1922),
(3193, 18, 53, '67730.00', '2019-05-03 12:23:55', 1, 1, '2019-05-03', '67730.00', '0.00', '0.00', 'paid', '0.00', 1923),
(3194, 19, 54, '268177.00', '2019-05-03 12:34:15', 1, 1, '2019-05-03', '268177.00', '0.00', '0.00', 'paid', '0.00', 1924),
(3195, 20, 55, '44701.00', '2019-05-03 13:10:31', 1, 1, '2019-05-03', '44701.00', '0.00', '0.00', 'paid', '0.00', 1925),
(3196, 13, 56, '555834.00', '2019-11-22 23:18:20', 5, 1, '2019-11-22', '555834.00', '0.00', '0.00', 'paid', '0.00', 1926);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(5, 'Hoop Earrings', '18KT, 1.222gm', '16188.00', 'hoop.jpg', 11, 10, 1, 5, 4, 'GE01'),
(16, 'STUD Earrings', '18KT, 4.71gm', '13915.00', 'gr03.jpg', 11, 9, 1, 10, 2, 'GE03'),
(17, 'Drop Earrings', '18KT, 5.02gm', '41978.00', 'gr02.jpg', 11, 0, 1, 10, 2, 'GE02'),
(19, 'Stud Earrings', '18KT, 1.364gm, Diamond', '17599.00', 'gr05.jpg', 11, 9, 1, 10, 6, 'GE04'),
(20, 'Ruby X Hoops', '18KT, 3.193gm, Diamond and Ruby', '24127.00', 'gr05.jpg', 11, 4, 1, 5, 6, 'GE05'),
(21, 'Oval Bangle', '14KT, 14.1gm', '35811.00', 'gb01.jpg', 6, 14, 1, 10, 7, 'GB01'),
(22, 'Oval Bangle with Triangle Design', '14KT, 4gm', '15280.00', 'bg02.jpg', 6, 7, 1, 5, 5, 'GB02'),
(23, 'GOld Bangles', '22KT, 7.09gm', '28144.00', 'gb03.jpg', 6, 9, 1, 5, 5, 'GB03'),
(24, 'Padmavat Bangle', '22KT, 44.939gm', '190595.00', 'gb04.jpg', 6, 7, 1, 5, 3, 'GB04'),
(25, 'Gold and Diamond Bangle', '18KT, 10.1gm', '274109.00', 'gb05.jpg', 6, 1, 1, 7, 5, 'GB05'),
(26, 'Necklace Cone Design', '14KT, 5.5gm', '19520.00', 'gn01.jpg', 5, 5, 1, 4, 2, 'GN01'),
(27, 'Rose Gold', '14KT, 3.99gm', '10568.00', 'gn02.jpg', 5, 6, 1, 6, 2, 'GN02'),
(28, 'Loop Necklace', '14KT, 4.35gm', '17345.00', 'gn03.jpg', 5, 4, 1, 4, 2, 'GN03'),
(29, 'Cylindrical Design', '14KT, 3.89gm', '10890.00', 'gn04.jpg', 5, 18, 1, 5, 4, 'GN04'),
(30, 'Yellow Gold B', '22KT,14.9gm', '59220.00', 'gx01.jpg', 7, 13, 1, 10, 4, 'GX01'),
(31, 'Orb Bracelet', '14KT, 5.96gm', '17010.00', 'gx02.jpg', 7, 9, 1, 8, 5, 'GX02'),
(32, 'Star Design', '14KT, 4.87gm', '23678.00', 'gx03.jpg', 7, 5, 1, 5, 4, 'GX03'),
(33, 'Tanishq GOld B', '22KT, 7.89gm', '22376.00', 'gx04.jpg', 7, 12, 1, 11, 3, 'GX04'),
(34, 'Tanishq Nose Ring', '22KT, 5.95gm', '24465.00', 'gnp01.jpg', 8, 16, 1, 15, 5, 'GNP01'),
(35, 'Finger Gold Ring', '18KT,2.221gm', '7034.00', 'gr01.jpg', 9, 6, 1, 8, 4, 'GR01'),
(36, 'Ring', '18KT, 5,5gm', '18452.00', 'gr02.jpg', 9, 10, 1, 5, 4, 'GR02'),
(37, 'Smooth Ring', '22KT, 4.98gm', '20123.00', 'gr03.jpg', 9, 5, 1, 6, 4, 'GR03'),
(38, 'Ringeroo', '22KT, 1.548gm', '6342.00', 'gr04.jpg', 9, 5, 1, 3, 4, 'GR04'),
(39, 'Moure Pendant', '22KT, 9.4gm', '38454.00', 'gp01.jpg', 10, 4, 1, 4, 7, 'GP01'),
(40, 'Designer Pendant', '22KT, 7.98gm', '53289.00', 'gp02.jpg', 10, 20, 1, 5, 7, 'GP02'),
(41, 'Special Collection Pendant', '22KT, 8gm', '35987.00', 'gp03.jpg', 10, 4, 1, 4, 7, 'GP03'),
(42, 'Hoop Earrings', '18KT, 1.222gm', '16188.00', 'hoop.jpg', 11, 5, 2, 5, 4, 'GE01'),
(43, 'STUD Earrings', '18KT, 4.71gm', '13915.00', 'gr03.jpg', 11, -1, 2, 10, 2, 'GE03'),
(44, 'Drop Earrings', '18KT, 5.02gm', '41978.00', 'gr02.jpg', 11, 0, 2, 10, 2, 'GE02'),
(45, 'Stud Earrings', '18KT, 1.364gm, Diamond', '17599.00', 'gr05.jpg', 11, 9, 2, 10, 6, 'GE04'),
(46, 'Ruby X Hoops', '18KT, 3.193gm, Diamond and Ruby', '24127.00', 'gr05.jpg', 11, 5, 2, 5, 6, 'GE05'),
(47, 'Oval Bangle', '14KT, 14.1gm', '35811.00', 'gb01.jpg', 6, 9, 2, 10, 7, 'GB01'),
(48, 'Oval Bangle with Triangle Design', '14KT, 4gm', '15280.00', 'bg02.jpg', 6, 8, 2, 5, 5, 'GB02'),
(49, 'GOld Bangles', '22KT, 7.09gm', '28144.00', 'gb03.jpg', 6, 7, 2, 5, 5, 'GB03'),
(50, 'Padmavat Bangle', '22KT, 44.939gm', '190595.00', 'gb04.jpg', 6, 7, 2, 5, 3, 'GB04'),
(51, 'Gold and Diamond Bangle', '18KT, 10.1gm', '274109.00', 'gb05.jpg', 6, 5, 2, 7, 5, 'GB05'),
(52, 'Necklace Cone Design', '14KT, 5.5gm', '19520.00', 'gn01.jpg', 5, 6, 2, 4, 2, 'GN01'),
(53, 'Rose Gold', '14KT, 3.99gm', '10568.00', 'gn02.jpg', 5, 7, 2, 6, 2, 'GN02'),
(54, 'Loop Necklace', '14KT, 4.35gm', '17345.00', 'gn03.jpg', 5, 5, 2, 4, 2, 'GN03'),
(55, 'Cylindrical Design', '14KT, 3.89gm', '10890.00', 'gn04.jpg', 5, 7, 2, 5, 4, 'GN04'),
(56, 'Yellow Gold B', '22KT,14.9gm', '59220.00', 'gx01.jpg', 7, 15, 2, 10, 4, 'GX01'),
(57, 'Orb Bracelet', '14KT, 5.96gm', '17010.00', 'gx02.jpg', 7, 10, 2, 8, 5, 'GX02'),
(58, 'Star Design', '14KT, 4.87gm', '23678.00', 'gx03.jpg', 7, 6, 2, 5, 4, 'GX03'),
(59, 'Tanishq GOld B', '22KT, 7.89gm', '22376.00', 'gx04.jpg', 7, 10, 2, 11, 3, 'GX04'),
(60, 'Tanishq Nose Ring', '22KT, 5.95gm', '24465.00', 'gnp01.jpg', 8, 19, 2, 15, 5, 'GNP01'),
(61, 'Finger Gold Ring', '18KT,2.221gm', '7034.00', 'gr01.jpg', 9, 9, 2, 8, 4, 'GR01'),
(62, 'Ring', '18KT, 5,5gm', '18452.00', 'gr02.jpg', 9, 10, 2, 5, 4, 'GR02'),
(63, 'Smooth Ring', '22KT, 4.98gm', '20123.00', 'gr03.jpg', 9, 6, 2, 6, 4, 'GR03'),
(64, 'Ringeroo', '22KT, 1.548gm', '6342.00', 'gr04.jpg', 9, 5, 2, 3, 4, 'GR04'),
(65, 'Moure Pendant', '22KT, 9.4gm', '38454.00', 'gp01.jpg', 10, 4, 2, 4, 7, 'GP01'),
(66, 'Designer Pendant', '22KT, 7.98gm', '53289.00', 'gp02.jpg', 10, 0, 2, 5, 7, 'GP02'),
(67, 'Ringa Ringa', '14KT, 5gm', '50000.00', 'default.gif', 9, 10, 1, 5, 2, 'GR06'),
(68, 'Tanishq GOld B1', 'red', '67558.00', 'default.gif', 5, 0, 1, 7, 3, 'GN07'),
(69, 'Drop Earringss', '', '11111111.00', 'default.gif', 11, 0, 1, 3, 2, 'GR08');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `pr_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`pr_id`, `prod_id`, `qty`, `request_date`, `branch_id`, `purchase_status`) VALUES
(1, 21, 5, '2019-04-12', 1, 'pending'),
(2, 21, 5, '2019-04-12', 1, 'pending'),
(3, 16, 10, '2019-04-15', 1, 'pending'),
(4, 21, 4, '2019-04-15', 1, 'pending'),
(5, 21, 6, '2019-04-15', 1, 'pending'),
(6, 20, 2, '2019-04-15', 1, 'pending'),
(7, 16, 10, '2019-04-15', 1, 'pending'),
(8, 16, 5, '2019-05-03', 1, 'pending'),
(9, 21, 5, '2019-05-03', 1, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(10, 3, 1, '90000.00', '5000.00', '86743.00', '3257.00', '2019-04-03 13:57:32', 'cash', 1, '81743.00'),
(11, 5, 5, '0.00', '0.00', '266.00', '0.00', '2019-04-12 17:21:47', 'cash', 1, '266.00'),
(12, 3, 1, '300000.00', '5000.00', '279677.00', '20323.00', '2019-04-12 18:11:48', 'cash', 1, '274677.00'),
(13, 5, 1, '0.00', '0.00', '39.00', '0.00', '2019-04-12 18:14:31', 'cash', 1, '39.00'),
(14, 6, 9, '50000.00', '500.00', '45568.00', '4432.00', '2019-04-15 11:29:50', 'cash', 2, '45068.00'),
(15, 7, 9, '35000.00', '500.00', '34903.00', '97.00', '2019-04-15 11:30:37', 'cash', 2, '34403.00'),
(16, 8, 9, '50000.00', '500.00', '48046.00', '1954.00', '2019-04-15 11:31:32', 'cash', 2, '47546.00'),
(17, 6, 9, '302000.00', '1000.00', '301598.00', '402.00', '2019-04-15 11:32:20', 'cash', 2, '300598.00'),
(18, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-01-04 01:33:28', 'cash', 1, '450.00'),
(19, 3, 1, '90000.00', '5000.00', '86743.00', '3257.00', '2019-01-03 13:57:32', 'cash', 1, '81743.00'),
(20, 5, 5, '0.00', '0.00', '266.00', '0.00', '2019-02-12 17:21:47', 'cash', 1, '266.00'),
(21, 3, 1, '300000.00', '5000.00', '279677.00', '20323.00', '2019-04-12 18:11:48', 'cash', 1, '274677.00'),
(22, 5, 1, '0.00', '0.00', '39.00', '0.00', '2019-02-12 18:14:31', 'cash', 1, '39.00'),
(23, 6, 9, '50000.00', '500.00', '45568.00', '4432.00', '2019-02-15 11:29:50', 'cash', 2, '45068.00'),
(24, 7, 9, '35000.00', '500.00', '34903.00', '97.00', '2019-01-15 11:30:37', 'cash', 2, '34403.00'),
(25, 8, 9, '50000.00', '500.00', '48046.00', '1954.00', '2019-01-15 11:31:32', 'cash', 2, '47546.00'),
(26, 6, 9, '302000.00', '1000.00', '301598.00', '402.00', '2019-01-15 11:32:20', 'cash', 2, '300598.00'),
(27, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-05-04 01:33:28', 'cash', 1, '450.00'),
(28, 3, 1, '90000.00', '5000.00', '86743.00', '3257.00', '2019-05-03 13:57:32', 'cash', 1, '81743.00'),
(29, 5, 5, '0.00', '0.00', '266.00', '0.00', '2019-05-12 17:21:47', 'cash', 1, '266.00'),
(30, 3, 1, '300000.00', '5000.00', '279677.00', '20323.00', '2019-05-12 18:11:48', 'cash', 1, '274677.00'),
(31, 5, 1, '0.00', '0.00', '39.00', '0.00', '2019-05-12 18:14:31', 'cash', 1, '39.00'),
(32, 6, 9, '50000.00', '500.00', '45568.00', '4432.00', '2019-05-15 11:29:50', 'cash', 2, '45068.00'),
(33, 7, 9, '35000.00', '500.00', '34903.00', '97.00', '2019-05-15 11:30:37', 'cash', 2, '34403.00'),
(34, 8, 9, '50000.00', '500.00', '48046.00', '1954.00', '2019-05-15 11:31:32', 'cash', 2, '47546.00'),
(35, 6, 9, '302000.00', '1000.00', '301598.00', '402.00', '2019-05-15 11:32:20', 'cash', 2, '300598.00'),
(36, 5, 1, '200000.00', '500.00', '190095.00', '9905.00', '2019-04-15 12:46:35', 'cash', 1, '189595.00'),
(37, 5, 1, '0.00', '0.00', '125.00', '0.00', '2019-04-15 13:20:36', 'cash', 1, '125.00'),
(38, 5, 1, '0.00', '0.00', '7.00', '0.00', '2019-04-15 15:55:13', 'cash', 1, '7.00'),
(39, 9, 1, NULL, NULL, '0.00', NULL, '2019-04-15 16:07:44', 'credit', 1, '291.00'),
(40, 9, 1, '0.00', '0.00', '64.00', '0.00', '2019-04-15 16:08:27', 'cash', 1, '64.00'),
(41, 9, 1, '300000.00', '700.00', '284299.00', '15701.00', '2019-04-15 16:09:54', 'cash', 1, '283599.00'),
(42, 9, 1, '400000.00', '2000.00', '327587.00', '72413.00', '2019-04-15 18:03:52', 'cash', 1, '325587.00'),
(43, 9, 1, '300000.00', '1000.00', '297236.00', '2764.00', '2019-04-15 18:54:46', 'cash', 1, '296236.00'),
(44, 10, 1, '70000.00', '2000.00', '68891.00', '1109.00', '2019-05-03 04:55:57', 'cash', 1, '66891.00'),
(45, 11, 1, '350000.00', '10000.00', '315376.00', '34624.00', '2019-05-03 04:57:15', 'cash', 1, '305376.00'),
(46, 12, 5, '45000.00', '1000.00', '44458.00', '542.00', '2019-05-03 04:58:13', 'cash', 1, '43458.00'),
(47, 13, 5, '85000.00', '1000.00', '82685.00', '2315.00', '2019-05-03 04:59:08', 'cash', 1, '81685.00'),
(48, 13, 5, '85000.00', '1000.00', '82685.00', '2315.00', '2019-05-03 04:59:09', 'cash', 1, '81685.00'),
(49, 14, 7, '120000.00', '0.00', '111103.00', '8897.00', '2019-05-03 05:01:13', 'cash', 1, '111103.00'),
(50, 15, 9, '320000.00', '2000.00', '311143.00', '8857.00', '2019-05-03 05:05:27', 'cash', 2, '309143.00'),
(51, 16, 9, '60000.00', '1100.00', '56631.00', '3369.00', '2019-05-03 05:06:36', 'cash', 2, '55531.00'),
(52, 17, 12, '550000.00', '2000.00', '542075.00', '7925.00', '2019-05-03 05:08:31', 'cash', 2, '540075.00'),
(53, 18, 1, '70000.00', '1000.00', '68730.00', '1270.00', '2019-05-03 12:23:55', 'cash', 1, '67730.00'),
(54, 19, 1, '300000.00', '10000.00', '278177.00', '21823.00', '2019-05-03 12:34:15', 'cash', 1, '268177.00'),
(55, 20, 1, '46000.00', '1000.00', '45701.00', '299.00', '2019-05-03 13:10:31', 'cash', 1, '44701.00'),
(56, 13, 5, '600000.00', '0.00', '555834.00', '44166.00', '2019-11-22 23:18:20', 'cash', 1, '555834.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1),
(10, 10, 40, '53289.00', 1),
(11, 10, 39, '38454.00', 1),
(12, 11, 40, '53289.00', 5),
(13, 12, 25, '274109.00', 1),
(14, 12, 27, '10568.00', 1),
(15, 13, 29, '10890.00', 1),
(16, 13, 23, '28144.00', 1),
(17, 14, 55, '10890.00', 1),
(18, 14, 61, '7034.00', 1),
(19, 14, 49, '28144.00', 1),
(20, 15, 48, '15280.00', 1),
(21, 15, 63, '20123.00', 1),
(22, 16, 55, '10890.00', 1),
(23, 16, 59, '22376.00', 1),
(24, 16, 48, '15280.00', 1),
(25, 17, 45, '17599.00', 1),
(26, 17, 55, '10890.00', 1),
(27, 17, 51, '274109.00', 1),
(28, 10, 40, '53289.00', 1),
(29, 10, 39, '38454.00', 1),
(30, 11, 40, '53289.00', 5),
(31, 12, 25, '274109.00', 1),
(32, 12, 27, '10568.00', 1),
(33, 13, 29, '10890.00', 1),
(34, 13, 23, '28144.00', 1),
(35, 14, 55, '10890.00', 1),
(36, 14, 61, '7034.00', 1),
(37, 14, 49, '28144.00', 1),
(38, 15, 48, '15280.00', 1),
(39, 15, 63, '20123.00', 1),
(40, 16, 55, '10890.00', 1),
(41, 16, 59, '22376.00', 1),
(42, 16, 48, '15280.00', 1),
(43, 17, 45, '17599.00', 1),
(44, 36, 24, '190595.00', 1),
(45, 37, 34, '24465.00', 2),
(46, 37, 19, '17599.00', 1),
(47, 37, 30, '59220.00', 1),
(48, 38, 35, '7034.00', 1),
(49, 39, 28, '17345.00', 1),
(50, 39, 25, '274109.00', 1),
(51, 40, 29, '10890.00', 1),
(52, 40, 40, '53289.00', 1),
(53, 41, 29, '10890.00', 1),
(54, 41, 25, '274109.00', 1),
(55, 42, 29, '10890.00', 1),
(56, 42, 25, '274109.00', 1),
(57, 42, 37, '20123.00', 1),
(58, 42, 34, '24465.00', 1),
(59, 43, 25, '274109.00', 1),
(60, 43, 20, '24127.00', 1),
(61, 44, 40, '53289.00', 1),
(62, 44, 27, '10568.00', 1),
(63, 44, 35, '7034.00', 1),
(64, 45, 41, '35987.00', 1),
(65, 45, 25, '274109.00', 1),
(66, 45, 22, '15280.00', 1),
(67, 46, 29, '10890.00', 2),
(68, 46, 32, '23678.00', 1),
(69, 47, 30, '59220.00', 1),
(70, 47, 34, '24465.00', 1),
(71, 49, 29, '10890.00', 5),
(72, 49, 31, '17010.00', 1),
(73, 49, 37, '20123.00', 1),
(74, 49, 26, '19520.00', 1),
(75, 50, 55, '10890.00', 1),
(76, 50, 51, '274109.00', 1),
(77, 50, 49, '28144.00', 1),
(78, 51, 55, '10890.00', 1),
(79, 51, 60, '24465.00', 1),
(80, 51, 59, '22376.00', 1),
(81, 52, 55, '10890.00', 4),
(82, 52, 51, '274109.00', 1),
(83, 52, 50, '190595.00', 1),
(84, 52, 47, '35811.00', 1),
(85, 53, 22, '15280.00', 1),
(86, 53, 29, '10890.00', 5),
(87, 54, 35, '7034.00', 2),
(88, 54, 25, '274109.00', 1),
(89, 55, 21, '35811.00', 1),
(90, 55, 29, '10890.00', 1),
(91, 56, 40, '53289.00', 5),
(92, 56, 25, '274109.00', 1),
(93, 56, 22, '15280.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`) VALUES
(1, 5, 5, '2017-02-04 01:10:41', 1),
(2, 15, 100, '2017-02-04 01:10:49', 1),
(3, 13, 10, '2017-02-04 01:10:55', 1),
(4, 14, 5, '2017-02-04 01:11:07', 1),
(5, 29, 10, '2019-04-12 17:24:36', 1),
(6, 5, 5, '2019-04-15 16:10:25', 1),
(7, 16, 5, '2019-04-15 16:10:49', 1),
(8, 40, 10, '2019-04-15 18:36:57', 1),
(9, 29, 1, '2019-04-15 18:45:25', 1),
(10, 29, 1, '2019-04-15 18:45:48', 1),
(11, 29, 6, '2019-04-15 18:46:57', 1),
(12, 29, 10, '2019-04-15 18:57:37', 1),
(13, 16, 5, '2019-05-03 12:27:06', 1),
(14, 67, 5, '2019-05-03 12:30:58', 1),
(15, 67, 5, '2019-05-03 12:30:58', 1),
(16, 40, 17, '2019-05-03 12:35:28', 1),
(17, 21, 5, '2019-05-03 13:12:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`) VALUES
(2, 'Luffy D', 'Borivali', '423-4444'),
(3, 'Naruto', 'Kandivali', '98878'),
(4, 'Goku', 'Andheri', '034-666-087611'),
(5, 'Vegeta', 'Dadar', '42424'),
(6, 'Kaneki', 'Mumbai Central', '15562'),
(7, 'Hashirama', 'Colaba', '09134567890');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `term_id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(1, 'sv24', 'a1Bz20ydqelm8m1wql1917e381dc89a23a41437cb13f090c2b', 'Swapnil Verlekar', 'active', 1),
(5, 'neha', 'a1Bz20ydqelm8m1wql262f5bdd0af9098e7443ab1f8e435290', 'Kunal Shirodkar', 'active', 1),
(6, 'admin', 'a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3', 'Sandeep Yadav', 'active', 0),
(7, 'ethan', 'a1Bz20ydqelm8m1wql7a56cb86e74d2afaacd7524253072fe3', 'Ethan Rebello', 'active', 1),
(8, 'pankaj', 'a1Bz20ydqelm8m1wql95deb5011a8fe1ccf6552bb5bcda2ff0', 'Pankaj Masaye', 'active', 1),
(9, 'raxit', 'a1Bz20ydqelm8m1wqlbde0634705d01cab3f6f6a8168817587', 'Raxit Singh', 'active', 2),
(10, 'gautam', 'a1Bz20ydqelm8m1wql125a77f1085bf9c374f91aee6912863c', 'Gautam Maurya', 'active', 2),
(11, 'shrey', 'a1Bz20ydqelm8m1wql4f44e202fc14ed71b12530d3a219c70f', 'Shrey Singh', 'active', 2),
(12, 'calvin', 'a1Bz20ydqelm8m1wqle6e66b8981c1030d5650da159e79539a', 'Calvin Pinto', 'active', 2),
(13, 'harsh', 'a1Bz20ydqelm8m1wqld4e3730e8cba214f85cddae5f9331d74', 'Harsh Jalan', 'active', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`stockin_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3197;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
