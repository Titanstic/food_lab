-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2022 at 11:37 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FOOD_LAB_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_ad_coincharge_message`
--

CREATE TABLE `m_ad_coincharge_message` (
  `id` bigint NOT NULL COMMENT 'Row of id',
  `title` varchar(128) NOT NULL COMMENT 'Title of message',
  `detail` varchar(255) DEFAULT NULL COMMENT 'Detail of message',
  `charge_id` bigint NOT NULL COMMENT 'Coin Charge Id',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated Timestamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `m_ad_coinrate`
--

CREATE TABLE `m_ad_coinrate` (
  `id` bigint NOT NULL COMMENT 'ID of Row',
  `base` int NOT NULL COMMENT 'Base on coin',
  `rate` int NOT NULL COMMENT 'Rate',
  `de_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted Or Not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `update_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `m_ad_login`
--

CREATE TABLE `m_ad_login` (
  `id` bigint NOT NULL COMMENT 'Id of Row',
  `ad_name` varchar(128) NOT NULL COMMENT 'Name',
  `ad_password` varchar(128) NOT NULL COMMENT 'Password',
  `ad_role` varchar(2) NOT NULL COMMENT 'Role',
  `ad_valid` int NOT NULL DEFAULT '0' COMMENT 'Valid or not',
  `ad_login_dt` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created TimeStamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `m_ad_news`
--

CREATE TABLE `m_ad_news` (
  `id` bigint NOT NULL COMMENT 'ID of Row',
  `title` varchar(255) NOT NULL COMMENT 'Title of news',
  `detail` varchar(255) DEFAULT NULL COMMENT 'Detail of news',
  `source` varchar(255) DEFAULT NULL COMMENT 'Path of image',
  `category` int NOT NULL COMMENT 'Category New',
  `write_by` bigint NOT NULL COMMENT 'Write By',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created TimeStamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `m_ad_track`
--

CREATE TABLE `m_ad_track` (
  `id` bigint NOT NULL COMMENT 'Row Of id',
  `title` varchar(255) NOT NULL COMMENT 'Title of Message',
  `detail` varchar(255) DEFAULT NULL COMMENT 'Detail of Message',
  `order_id` bigint NOT NULL COMMENT 'Order Id',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted Or Not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated Timestamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `m_decision_status`
--

CREATE TABLE `m_decision_status` (
  `id` bigint NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_decision_status`
--

INSERT INTO `m_decision_status` (`id`, `status`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Request', 'Request Coin From Customer', 0, '2022-01-10 07:02:37'),
(2, 'Approve', 'Approve Coin From Admin', 0, '2022-01-10 07:03:14'),
(3, 'Waiting', 'Waiting Decision In Admin', 0, '2022-01-10 07:03:42'),
(4, 'Reject', 'Reject Coin Request From Admin', 0, '2022-01-10 07:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `m_fav_type`
--

CREATE TABLE `m_fav_type` (
  `id` bigint NOT NULL,
  `favourite_food` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_fav_type`
--

INSERT INTO `m_fav_type` (`id`, `favourite_food`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Chinese Food', 'Chinese Food', 0, '2022-01-10 07:05:53'),
(2, 'Burmese Food', 'Burmese Food', 0, '2022-01-10 07:06:08'),
(3, 'Korean Food', 'Korean Food', 0, '2022-01-10 07:06:22'),
(4, 'Thai Food', 'Thai Food', 0, '2022-01-10 07:06:30'),
(5, 'Japanese Food', 'Japanese Food', 0, '2022-01-10 07:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `m_news_category`
--

CREATE TABLE `m_news_category` (
  `id` bigint NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_news_category`
--

INSERT INTO `m_news_category` (`id`, `category_name`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Food', 'Food Blog', 0, '2022-01-10 07:07:20'),
(2, 'Health', 'Healthy Blog', 0, '2022-01-10 07:07:38'),
(3, 'Promotion', 'Promotion News', 0, '2022-01-10 07:07:53'),
(4, 'Social', 'Social Media News', 0, '2022-01-10 07:08:10'),
(5, 'Other', 'Other', 0, '2022-01-10 07:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `m_order_status`
--

CREATE TABLE `m_order_status` (
  `id` bigint NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_order_status`
--

INSERT INTO `m_order_status` (`id`, `status`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Request', 'Request From Customer', 0, '2022-01-10 00:32:37'),
(2, 'Cancel', 'Cancel From Customer', 0, '2022-01-10 00:33:14'),
(3, 'Confirm', 'Order Confirm From Kitchen', 0, '2022-01-10 00:33:42'),
(4, 'Reject', 'Reject From Kitchen', 0, '2022-01-10 00:34:01'),
(5, 'Preparing', 'Prepare From Kitchen', 0, '2022-01-10 00:34:31'),
(6, 'Delivery', 'Delivey To Customer', 0, '2022-01-10 00:34:57'),
(7, 'Completed', 'Order Complete', 0, '2022-01-10 00:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `m_payment`
--

CREATE TABLE `m_payment` (
  `id` bigint NOT NULL,
  `payment_name` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_payment`
--

INSERT INTO `m_payment` (`id`, `payment_name`, `account_name`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Kpay', '09421010111', 'Kpay Account', 0, '2022-01-10 07:00:37'),
(2, 'CB', '0086-2322-22323-2222', 'CB Bank Account', 0, '2022-01-10 07:01:06'),
(3, 'AYA', '0086-1111-1111-1111', 'AYA Bank Account', 0, '2022-01-10 07:01:32'),
(4, 'KBZ', '0086-3333-3333-3333', 'KBZ Bank Account', 0, '2022-01-10 07:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `m_site`
--

CREATE TABLE `m_site` (
  `id` bigint NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `site_logo` varchar(255) NOT NULL,
  `privacy_policy` varchar(255) NOT NULL,
  `maintenance` int NOT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `updated_by` bigint DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `m_suggest`
--

CREATE TABLE `m_suggest` (
  `id` bigint NOT NULL,
  `suggest_type` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_suggest`
--

INSERT INTO `m_suggest` (`id`, `suggest_type`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Cooking Quality', 'Suggest For Cooking Quality', 0, '2022-01-10 07:14:13'),
(2, 'Delivery', 'Suggest For Delivery', 0, '2022-01-10 07:14:32'),
(3, 'Website', 'Suggest For Website', 0, '2022-01-10 07:14:44'),
(4, 'Taste', 'Suggest For Taste', 0, '2022-01-10 07:14:55'),
(5, 'other', 'Suggest For Other', 0, '2022-01-10 07:15:15');

-- --------------------------------------------------------

--
-- Table structure for table `m_taste`
--

CREATE TABLE `m_taste` (
  `id` bigint NOT NULL,
  `taste` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `m_taste`
--

INSERT INTO `m_taste` (`id`, `taste`, `note`, `del_flg`, `created_at`) VALUES
(1, 'Sweet', 'Sweet Taste', 0, '2022-01-10 07:15:35'),
(2, 'Spicy', 'Spicy Taste', 0, '2022-01-10 07:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `m_township`
--

CREATE TABLE `m_township` (
  `id` bigint NOT NULL,
  `township_name` varchar(255) NOT NULL,
  `delivery_price` int NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_coincharge`
--

CREATE TABLE `t_ad_coincharge` (
  `id` bigint NOT NULL COMMENT 'ID OF Row',
  `customer_id` bigint NOT NULL COMMENT 'Customer ID',
  `request_coin` int NOT NULL COMMENT 'Customer Request Coin',
  `request_evd_ID` bigint NOT NULL COMMENT 'Payment ScreenShot',
  `request_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Requested DateTime',
  `decision_status` int NOT NULL COMMENT 'Status',
  `re_decision` int NOT NULL DEFAULT '0' COMMENT 'Re-Decision or Not',
  `decision_by` bigint NOT NULL COMMENT 'Decision By',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated Timestamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_coincharge_decision_history`
--

CREATE TABLE `t_ad_coincharge_decision_history` (
  `id` bigint NOT NULL COMMENT 'ID of Row',
  `charge_id` bigint NOT NULL COMMENT 'Coin Charge Id',
  `decision_by` bigint NOT NULL COMMENT 'Decision By',
  `old_status` int NOT NULL COMMENT 'Old Status',
  `new_status` int NOT NULL COMMENT 'New Status',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note By Admin',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated Timestamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_coincharge_finance`
--

CREATE TABLE `t_ad_coincharge_finance` (
  `id` bigint NOT NULL COMMENT 'ID of Row',
  `charge_id` bigint NOT NULL COMMENT 'Coin Charge Id',
  `payment_type` int NOT NULL COMMENT 'Payment Type',
  `amount` int NOT NULL COMMENT 'Received Amount',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or Not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated Timestamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_coinrate_history`
--

CREATE TABLE `t_ad_coinrate_history` (
  `id` bigint NOT NULL COMMENT 'ID of Row',
  `old_base` int NOT NULL COMMENT 'Old base coin',
  `new_base` int NOT NULL COMMENT 'New Base Coin',
  `old_rate` int NOT NULL COMMENT 'Old Rate',
  `new_rate` int NOT NULL COMMENT 'New Rate',
  `change_by` bigint NOT NULL COMMENT 'Change by',
  `change_note` varchar(255) NOT NULL COMMENT 'Change reason or description',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created TimeStamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_contact`
--

CREATE TABLE `t_ad_contact` (
  `id` bigint NOT NULL,
  `message` varchar(255) NOT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_evd`
--

CREATE TABLE `t_ad_evd` (
  `id` bigint NOT NULL COMMENT 'Row of Id',
  `path` varchar(255) NOT NULL COMMENT 'Path of ScreenShot',
  `note` varchar(255) DEFAULT NULL COMMENT 'note',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created TimeStamp',
  `update_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_order`
--

CREATE TABLE `t_ad_order` (
  `id` bigint NOT NULL COMMENT 'ID of Row',
  `customer_id` bigint NOT NULL COMMENT 'Customer Id',
  `payment` int NOT NULL COMMENT 'Payment Type',
  `township_id` int DEFAULT NULL COMMENT 'Delivery Township ID',
  `grandtotal_coin` int DEFAULT NULL COMMENT 'If Customer Buy with Coin',
  `grandtotal_cash` int DEFAULT NULL COMMENT 'If Customer buy with COD',
  `order_status` int NOT NULL COMMENT 'Order Status',
  `order_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Order DateTime',
  `last_control_by` bigint NOT NULL COMMENT 'Last Time Controly By',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created TimeStamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_orderdetail`
--

CREATE TABLE `t_ad_orderdetail` (
  `id` bigint NOT NULL COMMENT 'Id of row',
  `order_id` bigint NOT NULL COMMENT 'Order ID',
  `product_id` int NOT NULL COMMENT 'Proudct ID',
  `quantity` int NOT NULL COMMENT 'Quantity',
  `total_coin` int NOT NULL COMMENT 'If Customer buy with Coin',
  `total_cash` int NOT NULL COMMENT 'If Customer buy with COD',
  `note` varchar(255) DEFAULT NULL COMMENT 'add note by customer',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or Not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created TimeStamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated TimeStamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_report`
--

CREATE TABLE `t_ad_report` (
  `id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `report_message` varchar(255) NOT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_ad_suggest`
--

CREATE TABLE `t_ad_suggest` (
  `id` bigint NOT NULL,
  `suggest_type` int NOT NULL,
  `message` varchar(255) NOT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `del_flg` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_cu_customer`
--

CREATE TABLE `t_cu_customer` (
  `id` bigint NOT NULL COMMENT 'Row of Id',
  `customerID` varchar(12) NOT NULL COMMENT 'Id of customer',
  `bio` varchar(255) DEFAULT NULL COMMENT 'bio of customer',
  `nickname` varchar(30) NOT NULL COMMENT 'Nickname',
  `phone` int DEFAULT NULL COMMENT 'Phone',
  `address1` int DEFAULT NULL COMMENT 'Address',
  `address2` int DEFAULT NULL COMMENT 'Address',
  `address3` varchar(128) DEFAULT NULL COMMENT 'Address',
  `login_by_facebook` varchar(255) DEFAULT NULL COMMENT 'Id of facebook Login',
  `login_by_gmail` varchar(255) DEFAULT NULL COMMENT 'Id of Gmail Login',
  `dob` timestamp NULL DEFAULT NULL COMMENT 'Date of Birth',
  `gender` int DEFAULT NULL COMMENT 'Gender of customer',
  `fav_type` int DEFAULT NULL COMMENT 'Favorite of customer',
  `taste` int DEFAULT NULL COMMENT 'Taste of customer',
  `allergic` varchar(255) DEFAULT NULL COMMENT 'Allergic of customer',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'Deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated Timestamp'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `t_cu_customer_login`
--

CREATE TABLE `t_cu_customer_login` (
  `id` int NOT NULL COMMENT 'ID of Row',
  `email` varchar(128) NOT NULL COMMENT 'Email',
  `password` varchar(30) NOT NULL COMMENT 'Password',
  `verify` int NOT NULL DEFAULT '0' COMMENT 'verify or not',
  `verify_code` varchar(128) NOT NULL COMMENT 'verify code',
  `customer_id` bigint NOT NULL COMMENT 'customer id',
  `last_login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'last login time',
  `del_flg` int NOT NULL DEFAULT '0' COMMENT 'deleted or not',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'created timestamp',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated timestamp'
) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `m_ad_coincharge_message`
--
ALTER TABLE `m_ad_coincharge_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `m_ad_coinrate`
--
ALTER TABLE `m_ad_coinrate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_ad_login`
--
ALTER TABLE `m_ad_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_ad_news`
--
ALTER TABLE `m_ad_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `write_by` (`write_by`);

--
-- Indexes for table `m_ad_track`
--
ALTER TABLE `m_ad_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `m_decision_status`
--
ALTER TABLE `m_decision_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_fav_type`
--
ALTER TABLE `m_fav_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_news_category`
--
ALTER TABLE `m_news_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_order_status`
--
ALTER TABLE `m_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_payment`
--
ALTER TABLE `m_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_site`
--
ALTER TABLE `m_site`
  ADD PRIMARY KEY (`id`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `m_suggest`
--
ALTER TABLE `m_suggest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_taste`
--
ALTER TABLE `m_taste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_township`
--
ALTER TABLE `m_township`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_ad_coincharge`
--
ALTER TABLE `t_ad_coincharge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `request_evd_ID` (`request_evd_ID`),
  ADD KEY `decision_by` (`decision_by`);

--
-- Indexes for table `t_ad_coincharge_decision_history`
--
ALTER TABLE `t_ad_coincharge_decision_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_id` (`charge_id`),
  ADD KEY `decision_by` (`decision_by`);

--
-- Indexes for table `t_ad_coincharge_finance`
--
ALTER TABLE `t_ad_coincharge_finance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charge_id` (`charge_id`);

--
-- Indexes for table `t_ad_coinrate_history`
--
ALTER TABLE `t_ad_coinrate_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `change_by` (`change_by`);

--
-- Indexes for table `t_ad_contact`
--
ALTER TABLE `t_ad_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_ad_evd`
--
ALTER TABLE `t_ad_evd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_ad_order`
--
ALTER TABLE `t_ad_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `last_control_by` (`last_control_by`);

--
-- Indexes for table `t_ad_orderdetail`
--
ALTER TABLE `t_ad_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `t_ad_report`
--
ALTER TABLE `t_ad_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `t_ad_suggest`
--
ALTER TABLE `t_ad_suggest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_cu_customer`
--
ALTER TABLE `t_cu_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_cu_customer_login`
--
ALTER TABLE `t_cu_customer_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `m_ad_coincharge_message`
--
ALTER TABLE `m_ad_coincharge_message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Row of id';

--
-- AUTO_INCREMENT for table `m_ad_coinrate`
--
ALTER TABLE `m_ad_coinrate`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- AUTO_INCREMENT for table `m_ad_login`
--
ALTER TABLE `m_ad_login`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Id of Row';

--
-- AUTO_INCREMENT for table `m_ad_news`
--
ALTER TABLE `m_ad_news`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- AUTO_INCREMENT for table `m_ad_track`
--
ALTER TABLE `m_ad_track`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Row Of id';

--
-- AUTO_INCREMENT for table `m_decision_status`
--
ALTER TABLE `m_decision_status`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `m_fav_type`
--
ALTER TABLE `m_fav_type`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_news_category`
--
ALTER TABLE `m_news_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_order_status`
--
ALTER TABLE `m_order_status`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `m_payment`
--
ALTER TABLE `m_payment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_site`
--
ALTER TABLE `m_site`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `m_suggest`
--
ALTER TABLE `m_suggest`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_taste`
--
ALTER TABLE `m_taste`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_township`
--
ALTER TABLE `m_township`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ad_coincharge`
--
ALTER TABLE `t_ad_coincharge`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID OF Row';

--
-- AUTO_INCREMENT for table `t_ad_coincharge_decision_history`
--
ALTER TABLE `t_ad_coincharge_decision_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- AUTO_INCREMENT for table `t_ad_coincharge_finance`
--
ALTER TABLE `t_ad_coincharge_finance`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- AUTO_INCREMENT for table `t_ad_coinrate_history`
--
ALTER TABLE `t_ad_coinrate_history`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- AUTO_INCREMENT for table `t_ad_contact`
--
ALTER TABLE `t_ad_contact`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ad_evd`
--
ALTER TABLE `t_ad_evd`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Row of Id';

--
-- AUTO_INCREMENT for table `t_ad_order`
--
ALTER TABLE `t_ad_order`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- AUTO_INCREMENT for table `t_ad_orderdetail`
--
ALTER TABLE `t_ad_orderdetail`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Id of row';

--
-- AUTO_INCREMENT for table `t_ad_report`
--
ALTER TABLE `t_ad_report`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ad_suggest`
--
ALTER TABLE `t_ad_suggest`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_cu_customer`
--
ALTER TABLE `t_cu_customer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Row of Id';

--
-- AUTO_INCREMENT for table `t_cu_customer_login`
--
ALTER TABLE `t_cu_customer_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID of Row';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_ad_coincharge_message`
--
ALTER TABLE `m_ad_coincharge_message`
  ADD CONSTRAINT `m_ad_coincharge_message_ibfk_1` FOREIGN KEY (`charge_id`) REFERENCES `t_ad_coincharge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_ad_news`
--
ALTER TABLE `m_ad_news`
  ADD CONSTRAINT `m_ad_news_ibfk_1` FOREIGN KEY (`write_by`) REFERENCES `m_ad_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_ad_track`
--
ALTER TABLE `m_ad_track`
  ADD CONSTRAINT `m_ad_track_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_ad_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `m_site`
--
ALTER TABLE `m_site`
  ADD CONSTRAINT `m_site_ibfk_1` FOREIGN KEY (`updated_by`) REFERENCES `m_ad_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_ad_coincharge`
--
ALTER TABLE `t_ad_coincharge`
  ADD CONSTRAINT `t_ad_coincharge_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `t_cu_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_ad_coincharge_ibfk_2` FOREIGN KEY (`request_evd_ID`) REFERENCES `t_ad_evd` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_ad_coincharge_ibfk_3` FOREIGN KEY (`decision_by`) REFERENCES `m_ad_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_ad_coincharge_decision_history`
--
ALTER TABLE `t_ad_coincharge_decision_history`
  ADD CONSTRAINT `t_ad_coincharge_decision_history_ibfk_1` FOREIGN KEY (`charge_id`) REFERENCES `t_ad_coincharge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_ad_coincharge_decision_history_ibfk_2` FOREIGN KEY (`decision_by`) REFERENCES `m_ad_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_ad_coincharge_finance`
--
ALTER TABLE `t_ad_coincharge_finance`
  ADD CONSTRAINT `t_ad_coincharge_finance_ibfk_1` FOREIGN KEY (`charge_id`) REFERENCES `t_ad_coincharge` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_ad_coinrate_history`
--
ALTER TABLE `t_ad_coinrate_history`
  ADD CONSTRAINT `t_ad_coinrate_history_ibfk_1` FOREIGN KEY (`change_by`) REFERENCES `m_ad_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_ad_order`
--
ALTER TABLE `t_ad_order`
  ADD CONSTRAINT `t_ad_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `t_cu_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_ad_order_ibfk_2` FOREIGN KEY (`last_control_by`) REFERENCES `m_ad_login` (`id`);

--
-- Constraints for table `t_ad_orderdetail`
--
ALTER TABLE `t_ad_orderdetail`
  ADD CONSTRAINT `t_ad_orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_ad_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_ad_report`
--
ALTER TABLE `t_ad_report`
  ADD CONSTRAINT `t_ad_report_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `t_ad_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_cu_customer_login`
--
ALTER TABLE `t_cu_customer_login`
  ADD CONSTRAINT `t_cu_customer_login_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `t_cu_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
