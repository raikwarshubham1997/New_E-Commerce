-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 09:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buy_fashion`
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
(25, 'Can add products', 7, 'add_products'),
(26, 'Can change products', 7, 'change_products'),
(27, 'Can delete products', 7, 'delete_products'),
(28, 'Can view products', 7, 'view_products'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add admin products', 9, 'add_adminproducts'),
(34, 'Can change admin products', 9, 'change_adminproducts'),
(35, 'Can delete admin products', 9, 'delete_adminproducts'),
(36, 'Can view admin products', 9, 'view_adminproducts'),
(37, 'Can add admin category', 10, 'add_admincategory'),
(38, 'Can change admin category', 10, 'change_admincategory'),
(39, 'Can delete admin category', 10, 'delete_admincategory'),
(40, 'Can view admin category', 10, 'view_admincategory'),
(41, 'Can add saller category', 8, 'add_sallercategory'),
(42, 'Can change saller category', 8, 'change_sallercategory'),
(43, 'Can delete saller category', 8, 'delete_sallercategory'),
(44, 'Can view saller category', 8, 'view_sallercategory'),
(45, 'Can add saller products', 7, 'add_sallerproducts'),
(46, 'Can change saller products', 7, 'change_sallerproducts'),
(47, 'Can delete saller products', 7, 'delete_sallerproducts'),
(48, 'Can view saller products', 7, 'view_sallerproducts'),
(49, 'Can add contact', 11, 'add_contact'),
(50, 'Can change contact', 11, 'change_contact'),
(51, 'Can delete contact', 11, 'delete_contact'),
(52, 'Can view contact', 11, 'view_contact'),
(53, 'Can add cart', 12, 'add_cart'),
(54, 'Can change cart', 12, 'change_cart'),
(55, 'Can delete cart', 12, 'delete_cart'),
(56, 'Can view cart', 12, 'view_cart');

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
  `date_joined` datetime(6) NOT NULL,
  `broker` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `broker`) VALUES
(1, 'pbkdf2_sha256$390000$FYTV8Au5CNBXLVyFTcY4H5$mJGNESZaYXDVRwYmQGiu38O+PiOG1zP4wlRLo13Cyg0=', '2022-11-03 08:57:54.659654', 1, 'shubham@123', 'Shubham', 'Raikwar', 'shubham@gmail.com', 0, 1, '2022-09-21 14:50:48.919808', 0),
(3, 'pbkdf2_sha256$390000$pqt8zE0G9KGHiUEP1qVg4K$7pmjWzrUi0Y9uPS/AZsuY3KsJrfo34wc0xupTEWAZDU=', '2022-11-03 08:58:31.505290', 0, 'rolf@123', 'Rolf', 'Smith', 'rolf@gmail.com', 0, 1, '2022-09-21 15:34:17.204307', 1),
(4, 'pbkdf2_sha256$390000$ALcsJ6IZvOgzSv4x95qkw0$Cu9ys7FpvQQSvc9WzbSRTQAjZZ+wou1ASe5+tvEfXs4=', '2022-09-23 10:07:30.193337', 0, 'deepak@123', 'Deepak', 'verma', 'deepak@gmail.com', 0, 1, '2022-09-21 15:37:07.397132', 1),
(5, 'pbkdf2_sha256$390000$ipTznOC3kj7E4xXb3L15m3$LHpldJ3EsQ1NIbKg7t5fhD8u99ysl8DGm4VsbUbt9Kw=', '2022-09-23 11:24:30.207213', 0, 'demo@111', 'demo', 'verma', 'demo@gmail.com', 1, 1, '2022-09-21 16:29:48.207948', 0),
(6, 'pbkdf2_sha256$390000$zLXNISJ2XwP9SsphBrz9L0$JqhKGkHLPwPDSvU0WP7NN2wsRCTqHrssuPg0tsKp+Ag=', '2022-11-14 05:05:23.070421', 0, 'rohitv1', 'Rohit', 'Lowansi', 'rohit@gmail.com', 1, 1, '2022-09-21 16:31:55.896429', 0),
(8, 'pbkdf2_sha256$390000$5hvBSSSRMVCOuOzFBJgolH$oLttg2MmnouXeCrcRQxjSvwv9OJvvcwFNqIxXqlf/Kc=', '2022-09-21 13:27:39.821041', 0, 'deepika@13', 'Deepika', 'verma', 'deepika@gmail.com', 0, 1, '2022-09-21 16:53:50.456720', 1),
(9, 'pbkdf2_sha256$390000$qPop05qGLCY56gNCoN0478$I42rI018LLvHIN2yBSolnFm7ImqnrUJTGxK55ex/tOw=', '2022-09-23 11:45:24.932146', 0, 'rahul21', 'Rahul', 'verma', 'rahul@gmail.com', 0, 1, '2022-09-23 15:39:06.015082', 1),
(15, 'pbkdf2_sha256$390000$Iut6lRnOlqks2CvBaVvkdY$7qQlGaCkFAxijMyMUQLQlNZQ3taMscme61ouQtHbyJI=', NULL, 0, 'shubham@1234', 'shubham', 'Raikwar', 'techpanda.sr@gmail.com', 0, 1, '2022-10-03 11:24:01.374701', 1),
(16, 'pbkdf2_sha256$390000$eiRSE2y1tPeGQRgHvraq3R$cUJA6FYNWSwtLfwtU9e3L4FS7gnRFQ8TcS+1UKDJCfY=', NULL, 0, 'rohitv1343', 'dfdfgef', 'wrfe', 'techpanda.sr@gmail.com', 1, 1, '2022-10-03 11:30:03.728920', 0),
(17, 'pbkdf2_sha256$390000$LIbdq44vWai8TIBH3O73lr$t1Jcd3vHmNaHOk2K4mMQX/QSQjVS7cRApFhs1dCShaY=', NULL, 0, 'rwererwe343', 'rweretete', 'reerr', 'techpanda.sr@gmail.com', 1, 1, '2022-10-03 11:31:36.919984', 0),
(18, 'pbkdf2_sha256$390000$JBkogOS2xmMLej2pYXRgE5$JhdoUsinv3enDFEwRBKzWU7fX5vc7kPqbYf7G2cVpEo=', NULL, 0, 'shubham@123323', 'shubham', 'Raikwar', 'techpanda.sr@gmail.com', 0, 1, '2022-10-03 11:32:28.984926', 1);

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
-- Table structure for table `buyer_cart`
--

CREATE TABLE `buyer_cart` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_cart`
--

INSERT INTO `buyer_cart` (`id`, `product_id`, `user_id`) VALUES
(16, 27, 6),
(14, 29, 6);

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
(12, 'Buyer', 'cart'),
(5, 'contenttypes', 'contenttype'),
(10, 'E_commerce', 'admincategory'),
(9, 'E_commerce', 'adminproducts'),
(11, 'E_commerce', 'contact'),
(8, 'Saller', 'sallercategory'),
(7, 'Saller', 'sallerproducts'),
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
(1, 'contenttypes', '0001_initial', '2022-09-21 09:19:10.832614'),
(2, 'auth', '0001_initial', '2022-09-21 09:19:23.726850'),
(3, 'admin', '0001_initial', '2022-09-21 09:19:26.798402'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-21 09:19:26.895909'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-21 09:19:26.975897'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-21 09:19:28.643237'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-21 09:19:29.691767'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-21 09:19:29.880514'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-21 09:19:29.973288'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-21 09:19:30.822758'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-21 09:19:30.882694'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-21 09:19:30.946686'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-21 09:19:31.186772'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-21 09:19:31.478203'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-21 09:19:31.645475'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-21 09:19:31.751874'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-21 09:19:32.019943'),
(18, 'auth', '0013_user_broker', '2022-09-21 09:19:32.415763'),
(19, 'sessions', '0001_initial', '2022-09-21 09:19:33.100460'),
(20, 'Saller', '0001_initial', '2022-09-21 11:30:11.193189'),
(21, 'E_commerce', '0001_initial', '2022-09-21 12:19:38.296347'),
(22, 'Saller', '0002_rename_category_sallercategory_and_more', '2022-09-23 06:48:05.651685'),
(23, 'Saller', '0003_alter_sallerproducts_category_delete_sallercategory', '2022-09-23 11:13:06.526280'),
(24, 'E_commerce', '0002_contact', '2022-09-30 11:42:16.475541'),
(25, 'Saller', '0004_delete_sallerproducts', '2022-09-30 11:42:16.839270'),
(26, 'E_commerce', '0002_adminproducts_discount_adminproducts_real_price', '2022-10-07 09:09:14.798142'),
(27, 'E_commerce', '0003_alter_adminproducts_discount', '2022-10-07 10:26:57.299291'),
(28, 'E_commerce', '0004_alter_adminproducts_discount', '2022-10-13 12:28:28.267972'),
(29, 'Buyer', '0001_initial', '2022-11-03 05:46:31.869409');

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
('12mac1naa8af4qo2sy2jtdj8gyvkvu6u', '.eJxVjDsOwyAQRO9CHSE-BkzK9D4DWtglOIlAMnYV5e6xJRdJN5r3Zt4swLaWsHVawozsyiS7_HYR0pPqAfAB9d54anVd5sgPhZ-086khvW6n-3dQoJd9rYZsNBknfPTaZKGskyS9BZfGlLOGAU32BmMUTgNKC1rZMSKqPSMQ-3wB1f44Mw:1oklTF:1ly6ny8_eF-7i2fXuJnX_DHOBfKxByRpz2VpHwLM6Sw', '2022-11-01 12:13:21.978602'),
('anqo1z4vdbhtfvb95ba5ym64mo4gcu2j', '.eJxVjEEOwiAQRe_C2pCBFmRcuvcMhGFAqgaS0q6Md7dNutDtf-_9t_BhXYpfe5r9xOIirDj9bhTiM9Ud8CPUe5Ox1WWeSO6KPGiXt8bpdT3cv4MSetlqZaOGjAaVVZyAAgSDA1LWlpRhSuPAZ6QhqpEoJ2c3lwGy0-QAMIvPF-O8OAM:1ofEjm:sHmvlIiSbcAEW77hoNTyQhgikGXbrSrR_F5_02taKQY', '2022-10-17 06:15:34.418744'),
('e4304ottinxzf4b0cvs3x279zqo4ghei', '.eJxVjDsOwyAQRO9CHSE-BkzK9D4DWtglOIlAMnYV5e6xJRdJN5r3Zt4swLaWsHVawozsyiS7_HYR0pPqAfAB9d54anVd5sgPhZ-086khvW6n-3dQoJd9rYZsNBknfPTaZKGskyS9BZfGlLOGAU32BmMUTgNKC1rZMSKqPSMQ-3wB1f44Mw:1odp8h:KlSHXCkRGWQjTWa2MPEgKXYEO3Qwu5OR1Iq55839QMQ', '2022-10-13 08:43:27.478528'),
('e7gu48060x2wqsmrtvzj6fab86e4ymmz', '.eJxVjMsOwiAUBf-FtSGl3FJw6d5vIPcBUjU0Ke3K-O_apAvdnpk5LxVxW0vcWlriJOqsgjr9boT8SHUHcsd6mzXPdV0m0ruiD9r0dZb0vBzu30HBVr41Z2-NH40YQIfBs5DzNAQwtrckJK4Tjx5y6kfuUrY85AwQILABsEa9P-zlN-I:1obh7U:2FH-AFCaXuAYKZ50e42pRZkpkAq76NgNjegipbMDOpw', '2022-10-07 11:45:24.968471'),
('im8ulnjn3sqxgv8pvbg676ary8a5utjv', '.eJxVjE0OwiAYBe_C2hAKtIBL956BfD8gVQNJaVfGu2uTLnT7Zua9RIRtLXHraYkzi7Mw4vS7IdAj1R3wHeqtSWp1XWaUuyIP2uW1cXpeDvfvoEAv31ozmJECausBTAbGaQoaKQQ2bGz21qmMoGjg7FRyytnBG08qcaIxePH-AP5QOGg:1oqW3T:sTndC10z29MwcxTRsgUKLEi5NJAJ4L7iGY_3oNZdYYA', '2022-11-17 08:58:31.543216'),
('p8e1tcbf2zekzs8x0t3ae65v2quf6o8g', '.eJxVjDsOwyAQRO9CHSE-BkzK9D4DWtglOIlAMnYV5e6xJRdJN5r3Zt4swLaWsHVawozsyiS7_HYR0pPqAfAB9d54anVd5sgPhZ-086khvW6n-3dQoJd9rYZsNBknfPTaZKGskyS9BZfGlLOGAU32BmMUTgNKC1rZMSKqPSMQ-3wB1f44Mw:1ogi6m:iWaP2O-v22sxEksBC47Eja4oN3Edko_7lOQ3TxGmJVQ', '2022-10-21 07:49:24.810191'),
('t9tmp37bxos5xo12abqdpbmakgb40d54', '.eJxVjEEOwiAQRe_C2pCBFmRcuvcMhGFAqgaS0q6Md7dNutDtf-_9t_BhXYpfe5r9xOIirDj9bhTiM9Ud8CPUe5Ox1WWeSO6KPGiXt8bpdT3cv4MSetlqZaOGjAaVVZyAAgSDA1LWlpRhSuPAZ6QhqpEoJ2c3lwGy0-QAMIvPF-O8OAM:1ouReu:rcfEA683WWOQ_w04PtcAxGr94K0r_UDMBfuZ7A5_A18', '2022-11-28 05:05:24.624478'),
('vqb7utq3p9pw5399m5ubf9ux96ouak7c', '.eJxVjDsOwyAQRO9CHSE-BkzK9D4DWtglOIlAMnYV5e6xJRdJN5r3Zt4swLaWsHVawozsyiS7_HYR0pPqAfAB9d54anVd5sgPhZ-086khvW6n-3dQoJd9rYZsNBknfPTaZKGskyS9BZfGlLOGAU32BmMUTgNKC1rZMSKqPSMQ-3wB1f44Mw:1ofc00:oxbzhvcIjssBEQIlInuba6oIsJ9wh4sWgPIWYXBS1u4', '2022-10-18 07:05:52.363589'),
('zix76uat48sdf2gedz10z4buc9et2lu8', '.eJxVjEEOwiAQRe_C2pCBFmRcuvcMhGFAqgaS0q6Md7dNutDtf-_9t_BhXYpfe5r9xOIirDj9bhTiM9Ud8CPUe5Ox1WWeSO6KPGiXt8bpdT3cv4MSetlqZaOGjAaVVZyAAgSDA1LWlpRhSuPAZ6QhqpEoJ2c3lwGy0-QAMIvPF-O8OAM:1oryBr:Y4z1G5_viOk3hTUAjybCIZIj-Q9oMJsslHzsfT7U9KY', '2022-11-21 09:13:11.416298');

-- --------------------------------------------------------

--
-- Table structure for table `e_commerce_admincategory`
--

CREATE TABLE `e_commerce_admincategory` (
  `id` bigint(20) NOT NULL,
  `catname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_commerce_admincategory`
--

INSERT INTO `e_commerce_admincategory` (`id`, `catname`) VALUES
(1, 'Fashion'),
(2, 'Mobiles and Tablets'),
(3, 'Electronic Gadgets'),
(5, 'Books'),
(6, 'Groceries'),
(7, 'Home Furnishings'),
(8, 'Jewelry'),
(9, 'Headphones'),
(10, 'Smart Home');

-- --------------------------------------------------------

--
-- Table structure for table `e_commerce_adminproducts`
--

CREATE TABLE `e_commerce_adminproducts` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `pro_img` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `added_by_id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `discount` decimal(12,2) DEFAULT NULL,
  `real_price` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_commerce_adminproducts`
--

INSERT INTO `e_commerce_adminproducts` (`id`, `title`, `desc`, `price`, `qty`, `pro_img`, `created`, `added_by_id`, `category_id`, `discount`, `real_price`) VALUES
(1, 'iPhone 14 pro max', 'iPhone, series of smartphones produced by Apple Inc., combining mobile telephone, digital camera, music player, and personal computing ...', '150000.00', 4, 'productimage/63.jpg', '2022-09-21 13:08:55.188938', 1, 2, '20.00', '165000.00'),
(2, 'Apple MacBook', 'Apple MacBook Air 2020 (M1, 13.3 inch, 8GB, 256GB, macOS Big Sur, Space Grey)', '130000.00', 1, 'productimage/macbook-pro.jpg', '2022-09-21 13:14:45.662830', 1, 2, '15.00', '143000.00'),
(4, 'Smart Watch', 'A smartwatch is a wearable piece of technology fashioned to resemble traditional wristwatches. However, smartwatches do a lot more than tell you what time it is. One of the primary functions of smartw', '3267.00', 5, 'productimage/product-6.jpg', '2022-09-22 05:16:50.452720', 1, 3, '0.00', '3267.00'),
(7, 'Boots', 'Nicks Handmade Boots is more than just simply one man\'s legacy. Behind every pair of Nicks Boots is a team of highly skilled men and women who have spent years perfecting their craft.  Their attention', '48106.56', 7, 'productimage/side_zip_heritage.jpg', '2022-09-22 05:36:39.760583', 1, 1, '35.00', '64943.85'),
(9, 'Boots', 'Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed ', '950.00', 10, 'productimage/cat-3.jpg', '2022-09-22 06:04:09.958015', 1, 1, '5.00', '1000.00'),
(10, 'Face Cream', 'very good', '1490.40', 10, 'productimage/cat-4.jpg', '2022-09-22 06:26:10.512016', 1, 1, '2.00', '1520.00'),
(15, 'iPhone 14 pro max', 'iPhone, series of smartphones produced by Apple Inc., combining mobile telephone, digital camera, music player, and personal computing ...', '136800.00', 5, 'productimage/63.jpg', '2022-09-29 07:52:37.351233', 3, 2, '10.00', '15200.00'),
(16, 'Samsung Galaxy S8', 'From the ‘Mobiles’ page on Samsung Shop, select the mobile you wish to buy. On the product page of the device, enter pin code where you wish to avail the exchange offer, and click option called \'Buy w', '87991.20', 3, 'productimage/galaxy.jpg', '2022-09-29 07:56:54.286180', 3, 2, '12.00', '99990.00'),
(17, 'T-Shirt', 'We will help you look stylish and expensive in any situation. Here you will find clothes that suit you.', '500.00', 10, 'productimage/64.jpg', '2022-09-29 07:57:35.988801', 3, 1, '0.00', '500.00'),
(18, 'Boots', 'Nicks Handmade Boots is more than just simply one man\'s legacy. Behind every pair of Nicks Boots is a team of highly skilled men and women who have spent years perfecting their craft.  Their attention', '900.00', 7, 'productimage/66.jpg', '2022-09-29 07:58:39.179043', 3, 1, '0.00', '900.00'),
(19, 'Dell New Latitude 7430 Laptop', '12th Gen. Intel® Core™ i5-1235U (10 Core, 12 MB Cache, 12 Threads, up to 4.40 GHz)', '150000.00', 10, 'productimage/notebook3_bjkfxR8.png', '2022-09-29 07:59:17.589557', 3, 3, '10.00', '165000.00'),
(20, 'DSLR Camera', 'with good quality', '52000.00', 2, 'productimage/nikon.jpg', '2022-09-29 08:00:09.189038', 3, 3, '0.00', '52000.00'),
(21, 'i Phone', 'iPhone, series of smartphones produced by Apple Inc., combining mobile telephone, digital camera, music player, and personal computing ...', '120000.00', 7, 'productimage/63.jpg', '2022-10-04 07:07:29.312686', 1, 2, '20.00', '150000.00'),
(22, 'Sleeper', 'rewfre', '450.00', 5, 'productimage/11.jpg', '2022-10-04 10:14:20.044520', 1, 1, '10.00', '500.00'),
(23, 'Dell New Latitude 7430 Laptop', '12th Gen. Intel® Core™ i5-1235U (10 Core, 12 MB Cache, 12 Threads, up to 4.40 GHz)', '71498.35', 10, 'productimage/notebook3_bjkfxR8.png', '2022-10-07 05:57:07.286222', 1, 3, '35.00', '109999.00'),
(24, 'Galaxy S22 Ultra', 'A smartwatch is a wearable piece of technology fashioned to resemble traditional wristwatches. However, smartwatches do a lot more than tell you what time it is. One of the primary functions of smartw', '15200.00', 7, 'productimage/dynamicblue-236966756.png', '2022-10-07 06:49:35.457110', 1, 2, '0.00', '15200.00'),
(25, 'Sony Rockz', 'Wireless Bluetooth Headphones', '4750.00', 5, 'productimage/58.jpg', '2022-10-07 07:05:59.205992', 3, 3, '5.00', '5000.00'),
(26, 'TV, Video & Audio', 'Smart TV LED 49’’ Ultra HD', '19300.50', 7, 'productimage/60.jpg', '2022-10-07 07:07:22.733281', 3, 3, '25.00', '25734.00'),
(27, 'Smart Speeker', 'Smart Speaker with Voice Control', '1890.00', 1, 'productimage/61.jpg', '2022-10-07 07:08:26.305528', 3, 10, '37.00', '3000.00'),
(28, 'Smart Watch', 'Fitness GPS Smart Watch', '500.00', 2, 'productimage/64.jpg', '2022-10-07 07:09:22.947126', 3, 3, '50.00', '250.00'),
(29, 'Hp 5th Generation Laptop', 'Hp Hight featured product', '69135.50', 11, 'productimage/65.jpg', '2022-10-07 10:49:04.897869', 1, 3, '30.00', '98765.00');

-- --------------------------------------------------------

--
-- Table structure for table `e_commerce_contact`
--

CREATE TABLE `e_commerce_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e_commerce_contact`
--

INSERT INTO `e_commerce_contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'shubham', 'shubham@gmail.com', 'Sale Product', 'i want to sale my product'),
(2, 'shubham', 'shubham@gmail.com', 'Sale Product', 'I want to sale my product on your Website'),
(3, 'Rohit', 'rohit@gmail.com', 'Sale Product', 'qwewwqewe'),
(4, 'rupali', 'rupalipatil620@gmail.com', 'Sale Product', 'dwfdw'),
(5, 'shubham Raikwar', 'shubham.r@techpanda.asia', 'Sale Product', 'ewrerrw3ce4efwfwec4edfgfr'),
(6, 'rupali', 'rupali@techpanda.asia', 'wdeerer', 'frerfregfee'),
(7, 'Shubham', 'techpanda.sr@gmail.com', 'Sale Product', 'hhd'),
(8, 'Techpanda', 'techpanda.sr@gmail.com', 'Sale Product', 'swdsad'),
(9, 'shubham', 'techpanda.sr@gmail.com', 'Sale Product', 'ws'),
(10, 'Techpanda', 'techpanda.sr@gmail.com', 'Sale Product', 'dfef'),
(11, 'Pragati', 'pragatisharma270@gmail.com', 'test', 'testing');

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
-- Indexes for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Buyer_cart_user_id_product_id_62c3e516_uniq` (`user_id`,`product_id`),
  ADD KEY `Buyer_cart_product_id_2efbf27f_fk_E_commerce_adminproducts_id` (`product_id`);

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
-- Indexes for table `e_commerce_admincategory`
--
ALTER TABLE `e_commerce_admincategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_commerce_adminproducts`
--
ALTER TABLE `e_commerce_adminproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `E_commerce_adminproducts_added_by_id_3070466c_fk_auth_user_id` (`added_by_id`),
  ADD KEY `E_commerce_adminprod_category_id_3080ebd9_fk_E_commerc` (`category_id`);

--
-- Indexes for table `e_commerce_contact`
--
ALTER TABLE `e_commerce_contact`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- AUTO_INCREMENT for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `e_commerce_admincategory`
--
ALTER TABLE `e_commerce_admincategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `e_commerce_adminproducts`
--
ALTER TABLE `e_commerce_adminproducts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `e_commerce_contact`
--
ALTER TABLE `e_commerce_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- Constraints for table `buyer_cart`
--
ALTER TABLE `buyer_cart`
  ADD CONSTRAINT `Buyer_cart_product_id_2efbf27f_fk_E_commerce_adminproducts_id` FOREIGN KEY (`product_id`) REFERENCES `e_commerce_adminproducts` (`id`),
  ADD CONSTRAINT `Buyer_cart_user_id_3e7814fb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `e_commerce_adminproducts`
--
ALTER TABLE `e_commerce_adminproducts`
  ADD CONSTRAINT `E_commerce_adminprod_category_id_3080ebd9_fk_E_commerc` FOREIGN KEY (`category_id`) REFERENCES `e_commerce_admincategory` (`id`),
  ADD CONSTRAINT `E_commerce_adminproducts_added_by_id_3070466c_fk_auth_user_id` FOREIGN KEY (`added_by_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
