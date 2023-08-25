-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 08:39 PM
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
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bookingg', 7, 'add_bookingg'),
(26, 'Can change bookingg', 7, 'change_bookingg'),
(27, 'Can delete bookingg', 7, 'delete_bookingg'),
(28, 'Can view bookingg', 7, 'view_bookingg'),
(29, 'Can add busdetails', 8, 'add_busdetails'),
(30, 'Can change busdetails', 8, 'change_busdetails'),
(31, 'Can delete busdetails', 8, 'delete_busdetails'),
(32, 'Can view busdetails', 8, 'view_busdetails'),
(33, 'Can add bustype', 9, 'add_bustype'),
(34, 'Can change bustype', 9, 'change_bustype'),
(35, 'Can delete bustype', 9, 'delete_bustype'),
(36, 'Can view bustype', 9, 'view_bustype'),
(37, 'Can add fare', 10, 'add_fare'),
(38, 'Can change fare', 10, 'change_fare'),
(39, 'Can delete fare', 10, 'delete_fare'),
(40, 'Can view fare', 10, 'view_fare'),
(41, 'Can add payment', 11, 'add_payment'),
(42, 'Can change payment', 11, 'change_payment'),
(43, 'Can delete payment', 11, 'delete_payment'),
(44, 'Can view payment', 11, 'view_payment'),
(45, 'Can add place', 12, 'add_place'),
(46, 'Can change place', 12, 'change_place'),
(47, 'Can delete place', 12, 'delete_place'),
(48, 'Can view place', 12, 'view_place'),
(49, 'Can add registration', 13, 'add_registration'),
(50, 'Can change registration', 13, 'change_registration'),
(51, 'Can delete registration', 13, 'delete_registration'),
(52, 'Can view registration', 13, 'view_registration'),
(53, 'Can add route', 14, 'add_route'),
(54, 'Can change route', 14, 'change_route'),
(55, 'Can delete route', 14, 'delete_route'),
(56, 'Can view route', 14, 'view_route'),
(57, 'Can add seat', 15, 'add_seat'),
(58, 'Can change seat', 15, 'change_seat'),
(59, 'Can delete seat', 15, 'delete_seat'),
(60, 'Can view seat', 15, 'view_seat'),
(61, 'Can add stop', 16, 'add_stop'),
(62, 'Can change stop', 16, 'change_stop'),
(63, 'Can delete stop', 16, 'delete_stop'),
(64, 'Can view stop', 16, 'view_stop'),
(65, 'Can add trip', 17, 'add_trip'),
(66, 'Can change trip', 17, 'change_trip'),
(67, 'Can delete trip', 17, 'delete_trip'),
(68, 'Can view trip', 17, 'view_trip');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_bookingg`
--

CREATE TABLE `bus_bookingg` (
  `id` bigint(20) NOT NULL,
  `bustitle` varchar(150) NOT NULL,
  `seat_id` varchar(150) NOT NULL,
  `passenger_firstname` varchar(150) NOT NULL,
  `passenger_lastname` varchar(150) NOT NULL,
  `noof_paasenger` varchar(150) NOT NULL,
  `startingpoint` varchar(150) NOT NULL,
  `endingpoint` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_bookingg`
--

INSERT INTO `bus_bookingg` (`id`, `bustitle`, `seat_id`, `passenger_firstname`, `passenger_lastname`, `noof_paasenger`, `startingpoint`, `endingpoint`, `amount`, `status`, `uid`) VALUES
(1, 'Saranya', '48', 'Aswin', 'Das', '45', 'Kottayam', 'Ernakulam', '200', 'paid', 'Aswin'),
(2, 'Kallada', '25', 'Dwayn', 'Jonson', '23', 'Kollam', 'Bangaloor', '1200', 'paid', 'Aswin'),
(3, 'Kallada', '25', 'Dwayn', 'Jonson', '23', 'Kollam', 'Bangaloor', '1200', 'paid', 'Aswin'),
(4, 'Kallada', '25', 'Dwayn', 'Jonson', '23', 'Kollam', 'Bangaloor', '1200', 'paid', 'Aswin'),
(5, 'Murahara', '46', 'Afia', 'Afia', '34', 'Kollam', 'Pathanamthitta', '80', 'paid', 'Aswin');

-- --------------------------------------------------------

--
-- Table structure for table `bus_busdetails`
--

CREATE TABLE `bus_busdetails` (
  `id` bigint(20) NOT NULL,
  `bustitle` varchar(150) NOT NULL,
  `type_id` varchar(150) NOT NULL,
  `registerno` varchar(150) NOT NULL,
  `makeyear` varchar(150) NOT NULL,
  `busstation` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_busdetails`
--

INSERT INTO `bus_busdetails` (`id`, `bustitle`, `type_id`, `registerno`, `makeyear`, `busstation`) VALUES
(1, 'Saranya', 'Long tourer', 'KL 03 AC 8907', '2018', 'Pathanamthitta'),
(2, 'Kallada', 'Luxury Tourer', 'KL 03 D 7567', '2020', 'Kollam'),
(3, 'Sree Ayyappa', 'Traveller', 'KL 02 AC 2087', '2012', 'Kollam'),
(4, 'Murahara', 'Caravan', 'KL 06 C 9087', '2017', 'Idukki');

-- --------------------------------------------------------

--
-- Table structure for table `bus_bustype`
--

CREATE TABLE `bus_bustype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_bustype`
--

INSERT INTO `bus_bustype` (`id`, `name`, `description`) VALUES
(1, 'Luxury Tourer', 'Long Luxury bus with limited number of seats, a bathroom and sleeper capsules'),
(2, 'Long tourer', 'Long distance tourer maximum seat capasity'),
(3, 'Traveller', 'Small tourer, minimum seat capacity'),
(4, 'Caravan', 'Small tourer vehicle with camping setup');

-- --------------------------------------------------------

--
-- Table structure for table `bus_fare`
--

CREATE TABLE `bus_fare` (
  `id` bigint(20) NOT NULL,
  `bustitle` varchar(150) NOT NULL,
  `startingpoint` varchar(150) NOT NULL,
  `endingpoint` varchar(150) NOT NULL,
  `amountperseat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_fare`
--

INSERT INTO `bus_fare` (`id`, `bustitle`, `startingpoint`, `endingpoint`, `amountperseat`) VALUES
(4, 'Sree Ayyappa', 'Kollam', 'Trissur', '180'),
(5, 'Kallada', 'Kollam', 'Bangaloor', '1200'),
(6, 'Saranya', 'Kottayam', 'Ernakulam', '200'),
(7, 'Murahara', 'Kollam', 'Pathanamthitta', '80');

-- --------------------------------------------------------

--
-- Table structure for table `bus_payment`
--

CREATE TABLE `bus_payment` (
  `id` bigint(20) NOT NULL,
  `bustitle` varchar(150) NOT NULL,
  `passenger_firstname` varchar(150) NOT NULL,
  `noof_paasenger` varchar(150) NOT NULL,
  `payment_type` varchar(150) NOT NULL,
  `amount` varchar(150) NOT NULL,
  `cardno` varchar(150) NOT NULL,
  `ccvno` varchar(150) NOT NULL,
  `expdate` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_payment`
--

INSERT INTO `bus_payment` (`id`, `bustitle`, `passenger_firstname`, `noof_paasenger`, `payment_type`, `amount`, `cardno`, `ccvno`, `expdate`, `date`, `status`, `uid`) VALUES
(1, 'Saranya', 'Aswin', 'Das', 'Card', '200', '123', '2333456', '2024-12-31', '2022-05-16', 'paid', 'Aswin'),
(2, 'Kallada', 'Dwayn', '', 'Card', '1200', '144', '234565456765', '2025-03-12', '2022-05-16', 'paid', 'Aswin'),
(3, 'Kallada', 'Dwayn', '', 'Card', '1200', '144', '234565456765', '2025-03-12', '2022-05-16', 'paid', 'Aswin');

-- --------------------------------------------------------

--
-- Table structure for table `bus_place`
--

CREATE TABLE `bus_place` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_place`
--

INSERT INTO `bus_place` (`id`, `name`) VALUES
(1, 'Kollam'),
(2, 'Pathanamthitta'),
(3, 'Kottayam'),
(4, 'Chennai'),
(5, 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `bus_registration`
--

CREATE TABLE `bus_registration` (
  `id` bigint(20) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_registration`
--

INSERT INTO `bus_registration` (`id`, `firstname`, `lastname`, `place`, `phone`, `email`, `username`, `password`) VALUES
(1, 'Aswin', 'Das', 'Pathanamthitta', '8876854948', 'aswin@gmail.com', 'aswin', '1234das');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route`
--

CREATE TABLE `bus_route` (
  `id` bigint(20) NOT NULL,
  `startingpoint` varchar(150) NOT NULL,
  `endingpoint` varchar(150) NOT NULL,
  `busname` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_seat`
--

CREATE TABLE `bus_seat` (
  `id` bigint(20) NOT NULL,
  `seatnumber` varchar(150) NOT NULL,
  `bus_id` varchar(150) NOT NULL,
  `bus_name` varchar(150) NOT NULL,
  `seatstatus` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_seat`
--

INSERT INTO `bus_seat` (`id`, `seatnumber`, `bus_id`, `bus_name`, `seatstatus`) VALUES
(4, '48', '1', '', 'not available'),
(5, '25', '2', '', 'not available'),
(6, '30', '3', 'Sree Ayyappa', 'available'),
(7, '46', '4', '', 'not available');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stop`
--

CREATE TABLE `bus_stop` (
  `id` bigint(20) NOT NULL,
  `route_id` varchar(150) NOT NULL,
  `trip_id` varchar(150) NOT NULL,
  `arrivingtime` varchar(150) NOT NULL,
  `departuretime` varchar(150) NOT NULL,
  `bus_id` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bus_trip`
--

CREATE TABLE `bus_trip` (
  `id` bigint(20) NOT NULL,
  `tripname` varchar(150) NOT NULL,
  `busname` varchar(150) NOT NULL,
  `startingstop` varchar(150) NOT NULL,
  `endingstop` varchar(150) NOT NULL,
  `contact` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'bus', 'bookingg'),
(8, 'bus', 'busdetails'),
(9, 'bus', 'bustype'),
(10, 'bus', 'fare'),
(11, 'bus', 'payment'),
(12, 'bus', 'place'),
(13, 'bus', 'registration'),
(14, 'bus', 'route'),
(15, 'bus', 'seat'),
(16, 'bus', 'stop'),
(17, 'bus', 'trip'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-16 16:20:16.314005'),
(2, 'auth', '0001_initial', '2022-05-16 16:20:18.286247'),
(3, 'admin', '0001_initial', '2022-05-16 16:20:18.893840'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-16 16:20:18.939639'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-16 16:20:18.986671'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-16 16:20:19.123740'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-16 16:20:19.256718'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-16 16:20:19.317922'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-16 16:20:19.347583'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-16 16:20:19.493008'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-16 16:20:19.501850'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-16 16:20:19.534847'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-16 16:20:19.593739'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-16 16:20:19.642251'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-16 16:20:19.699687'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-16 16:20:19.730136'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-16 16:20:19.773763'),
(18, 'bus', '0001_initial', '2022-05-16 16:20:20.555381'),
(19, 'sessions', '0001_initial', '2022-05-16 16:20:20.754371');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('s54grfd92dhbhf4cieco530wf8wux39w', 'e30:1nqfat:mWKhr9UDB-akbwz64RWLomaYhxgT13sXrvhzRyUOZgE', '2022-05-30 18:37:23.267389');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bus_bookingg`
--
ALTER TABLE `bus_bookingg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_busdetails`
--
ALTER TABLE `bus_busdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_bustype`
--
ALTER TABLE `bus_bustype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_fare`
--
ALTER TABLE `bus_fare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_payment`
--
ALTER TABLE `bus_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_place`
--
ALTER TABLE `bus_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_registration`
--
ALTER TABLE `bus_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_route`
--
ALTER TABLE `bus_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_seat`
--
ALTER TABLE `bus_seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_stop`
--
ALTER TABLE `bus_stop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_trip`
--
ALTER TABLE `bus_trip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_bookingg`
--
ALTER TABLE `bus_bookingg`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bus_busdetails`
--
ALTER TABLE `bus_busdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus_bustype`
--
ALTER TABLE `bus_bustype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus_fare`
--
ALTER TABLE `bus_fare`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus_payment`
--
ALTER TABLE `bus_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus_place`
--
ALTER TABLE `bus_place`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bus_registration`
--
ALTER TABLE `bus_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_route`
--
ALTER TABLE `bus_route`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_seat`
--
ALTER TABLE `bus_seat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus_stop`
--
ALTER TABLE `bus_stop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_trip`
--
ALTER TABLE `bus_trip`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
