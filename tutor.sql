-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 06:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutor`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add tutors', 8, 'add_tutors'),
(30, 'Can change tutors', 8, 'change_tutors'),
(31, 'Can delete tutors', 8, 'delete_tutors'),
(32, 'Can view tutors', 8, 'view_tutors'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add complaint', 10, 'add_complaint'),
(38, 'Can change complaint', 10, 'change_complaint'),
(39, 'Can delete complaint', 10, 'delete_complaint'),
(40, 'Can view complaint', 10, 'view_complaint'),
(41, 'Can add topic', 11, 'add_topic'),
(42, 'Can change topic', 11, 'change_topic'),
(43, 'Can delete topic', 11, 'delete_topic'),
(44, 'Can view topic', 11, 'view_topic'),
(45, 'Can add tutorial', 12, 'add_tutorial'),
(46, 'Can change tutorial', 12, 'change_tutorial'),
(47, 'Can delete tutorial', 12, 'delete_tutorial'),
(48, 'Can view tutorial', 12, 'view_tutorial'),
(49, 'Can add bank', 13, 'add_bank'),
(50, 'Can change bank', 13, 'change_bank'),
(51, 'Can delete bank', 13, 'delete_bank'),
(52, 'Can view bank', 13, 'view_bank'),
(53, 'Can add purchase', 14, 'add_purchase'),
(54, 'Can change purchase', 14, 'change_purchase'),
(55, 'Can delete purchase', 14, 'delete_purchase'),
(56, 'Can view purchase', 14, 'view_purchase'),
(57, 'Can add question', 15, 'add_question'),
(58, 'Can change question', 15, 'change_question'),
(59, 'Can delete question', 15, 'delete_question'),
(60, 'Can view question', 15, 'view_question'),
(61, 'Can add examhist', 16, 'add_examhist'),
(62, 'Can change examhist', 16, 'change_examhist'),
(63, 'Can delete examhist', 16, 'delete_examhist'),
(64, 'Can view examhist', 16, 'view_examhist'),
(65, 'Can add accesshist', 17, 'add_accesshist'),
(66, 'Can change accesshist', 17, 'change_accesshist'),
(67, 'Can delete accesshist', 17, 'delete_accesshist'),
(68, 'Can view accesshist', 17, 'view_accesshist'),
(69, 'Can add hitlist', 18, 'add_hitlist'),
(70, 'Can change hitlist', 18, 'change_hitlist'),
(71, 'Can delete hitlist', 18, 'delete_hitlist'),
(72, 'Can view hitlist', 18, 'view_hitlist');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(17, 'master', 'accesshist'),
(13, 'master', 'bank'),
(10, 'master', 'complaint'),
(16, 'master', 'examhist'),
(18, 'master', 'hitlist'),
(7, 'master', 'login'),
(14, 'master', 'purchase'),
(15, 'master', 'question'),
(11, 'master', 'topic'),
(12, 'master', 'tutorial'),
(8, 'master', 'tutors'),
(9, 'master', 'user'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-08-12 08:24:38.046725'),
(2, 'auth', '0001_initial', '2021-08-12 08:24:39.331079'),
(3, 'admin', '0001_initial', '2021-08-12 08:24:40.284618'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-08-12 08:24:40.508378'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-08-12 08:24:40.540374'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-08-12 08:24:40.677896'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-08-12 08:24:40.829789'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-08-12 08:24:40.966337'),
(9, 'auth', '0004_alter_user_username_opts', '2021-08-12 08:24:40.998339'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-08-12 08:24:41.068090'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-08-12 08:24:41.068090'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-08-12 08:24:41.100114'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-08-12 08:24:41.230607'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-08-12 08:24:41.331992'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-08-12 08:24:41.430133'),
(16, 'auth', '0011_update_proxy_permissions', '2021-08-12 08:24:41.462127'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-08-12 08:24:41.542726'),
(18, 'master', '0001_initial', '2021-08-12 08:24:41.731519'),
(19, 'master', '0002_user', '2021-08-12 08:24:41.934843'),
(20, 'master', '0003_complaint', '2021-08-12 08:24:42.135341'),
(21, 'master', '0004_auto_20200321_1350', '2021-08-12 08:24:42.384458'),
(22, 'master', '0005_topic', '2021-08-12 08:24:42.456458'),
(23, 'master', '0006_topic_topic_cover', '2021-08-12 08:24:42.616768'),
(24, 'master', '0007_auto_20200420_2247', '2021-08-12 08:24:42.708310'),
(25, 'master', '0008_auto_20200420_2257', '2021-08-12 08:24:42.866715'),
(26, 'master', '0009_bank_purchase', '2021-08-12 08:24:43.062136'),
(27, 'sessions', '0001_initial', '2021-08-12 08:24:43.599134'),
(28, 'master', '0010_auto_20210812_1425', '2021-08-12 08:55:52.329578'),
(29, 'master', '0011_question_topic_id', '2021-08-12 09:42:19.465065'),
(30, 'master', '0012_accesshist_examhist', '2021-08-12 12:00:03.019527'),
(31, 'master', '0010_hitlist', '2021-08-13 10:55:53.213188'),
(32, 'master', '0011_auto_20210724_1144', '2021-08-13 10:55:53.400655'),
(33, 'master', '0012_auto_20210813_1625', '2021-08-13 11:22:25.611728'),
(34, 'master', '0013_auto_20210813_1650', '2021-08-13 11:22:26.067749'),
(35, 'master', '0014_auto_20210814_1231', '2021-08-14 07:01:34.228118'),
(36, 'master', '0015_auto_20220307_1111', '2022-03-07 05:41:24.069601');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0f2ac8vhq0z430349l8k8h15pmd0g8v1', 'eyJ1c2VybmFtZSI6ImxpZGl5YWFydW4yNEBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImlkIjo4fQ:1nSYRM:qN0vKAzGcQoauw597sd6h0R7_eKNXWek6xxz4gZKWCE', '2022-03-25 06:07:52.172927'),
('2tsrv2qo52y08gob57kv7xz8h5dswqq0', 'eyJ1c2VybmFtZSI6InNhcmF0aGt1bWFyNzg4QGdtYWlsLmNvbSIsInJvbGUiOiJ0dXRvciIsImlkIjoxMX0:1nR64k:nA0DJcgV6HPBiuJ1tykuXdFqgIzXQEvUtQ5wT_6k4SI', '2022-03-21 05:38:30.143462'),
('66uz2yjikxams4j8r0cifvturauj9o98', 'eyJ1c2VybmFtZSI6InZhcnVuQGdtYWlsLmNvbSIsInJvbGUiOiJ0dXRvciIsImlkIjoyfQ:1mE8G8:fKP2JIaRO4FGzFJ6k-EaE4sAtLZCrkgpGDVzTo6gMjc', '2021-08-26 10:48:24.885428'),
('9f781b2dfa3dapu3pyp3x889vtt1y72p', 'e30:1mFyF1:lBtqRZJSbO73WQIShg3LhxEI80jXsdpzM4qUZMPoSTU', '2021-08-31 12:30:51.000848'),
('be7m1g2jxz145cbui98sjrmw1q5mk79y', 'e30:1nThH8:wZ-Z3IRzmDVEwkOvUBWF7YxAxrbp24vnoqdyhqCfyio', '2022-03-28 09:46:02.760303'),
('bmt8v1awdc9f3ot55ulq2gg1lwp29gk1', 'eyJ1c2VybmFtZSI6ImxpZGl5YWFydW4yNEBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImlkIjo4fQ:1nR614:SMF3GcL7VHiN4myRjAYBTLy7SaXVqpTCpBJv4Q9k4EM', '2022-03-21 05:34:42.237107'),
('g36xtfrarj27dwggwgo6ahswwn3clo5h', 'eyJ1c2VybmFtZSI6ImxpZGl5YWFydW4yNEBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImlkIjo4fQ:1nXz6w:-o9qf3sDf0n_gwF5vrrC2zMBmwadSz5nCUgZXaJs5MU', '2022-04-09 05:37:14.274382'),
('hzshol451orpu1bx4w7t6ug2icfoew7f', 'eyJ1c2VybmFtZSI6ImxpZGl5YWFydW4yNEBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImlkIjo4fQ:1nQ5lS:CFTnwDutxHaAITcnZIO1XYeR6nTMAoezz1Gly_9zlPQ', '2022-03-18 11:06:26.876774'),
('lk76mkfdxea38fu2v0deluwwk68zxubx', 'e30:1nXogp:sVPPsE2iBn7Nx2_WFlksSsT_7tiidmsTdC7oB_5lmN0', '2022-04-08 18:29:35.719393'),
('segdkrh4wssl15ke7sauhb7ywq1wsfix', 'eyJ1c2VybmFtZSI6InZhcnVuQGdtYWlsLmNvbSIsInJvbGUiOiJ0dXRvciIsImlkIjoyfQ:1mEWDk:nop9uoZia5dE5aLhv7BPVfF51TUGa8-Eei41ftg7GKA', '2021-08-27 12:23:32.546224'),
('uurvcgf706n888d1dzehmg8geapo3lpy', 'eyJ1c2VybmFtZSI6ImxpZGl5YWFydW4yNEBnbWFpbC5jb20iLCJyb2xlIjoidXNlciIsImlkIjo4fQ:1nY0QJ:Zls3v5PM16IPGvbC-lFWb8vbixWMy-w0aaOlKmmn6-0', '2022-04-09 07:01:19.622500'),
('uwte7e92et3l4g5h1rqtdrurg9zdf39m', 'e30:1nR6bG:k-Xv1h17erL6VB0lRKg_I7G_DMWvcmYDb5dJwCYr04o', '2022-03-21 06:12:06.667973'),
('zfjsdygoirs5ajks4yucp5o1sg16a6k1', 'eyJ1c2VybmFtZSI6ImZpbmRtZWluMDAxQGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIiwiaWQiOjN9:1mE8CL:9u80N2VxiHR1n46ubTFx9_nuUYzgVh6efZWUp0OZ18M', '2021-08-26 10:44:29.165774');

-- --------------------------------------------------------

--
-- Table structure for table `master_accesshist`
--

CREATE TABLE `master_accesshist` (
  `access_id` int(11) NOT NULL,
  `topic_id_id` int(11) DEFAULT NULL,
  `tutorial_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_accesshist`
--

INSERT INTO `master_accesshist` (`access_id`, `topic_id_id`, `tutorial_id`, `user_id`, `date`) VALUES
(8, 3, 8, 5, '2022-03-04'),
(11, 1, 2, 5, '2022-03-4'),
(17, 1, 3, 5, '2022-03-19'),
(18, 1, 4, 5, '2022-03-20'),
(19, 1, 5, 5, '2022-03-21'),
(20, 1, 6, 5, '2022-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `master_bank`
--

CREATE TABLE `master_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `bank_holdername` varchar(100) NOT NULL,
  `bank_cardno` varchar(100) NOT NULL,
  `bank_cardtype` varchar(100) NOT NULL,
  `bank_cvv` varchar(100) NOT NULL,
  `bank_expdate` varchar(100) NOT NULL,
  `bank_balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bank`
--

INSERT INTO `master_bank` (`bank_id`, `bank_name`, `bank_holdername`, `bank_cardno`, `bank_cardtype`, `bank_cvv`, `bank_expdate`, `bank_balance`) VALUES
(1, 'icici', 'Arun', '123456789012', 'visa', '123', '7/23', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `master_complaint`
--

CREATE TABLE `master_complaint` (
  `comp_id` int(11) NOT NULL,
  `comp_subject` varchar(200) NOT NULL,
  `comp_msg` varchar(250) NOT NULL,
  `comp_date` date NOT NULL,
  `comp_replay` varchar(250) NOT NULL,
  `comp_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_complaint`
--

INSERT INTO `master_complaint` (`comp_id`, `comp_subject`, `comp_msg`, `comp_date`, `comp_replay`, `comp_user_id`) VALUES
(1, 'Prices are too high', 'Prices are too high for package. ', '2022-03-04', 'will update', 5),
(2, 'audio not clears', 'audio of few class where too low', '2022-03-25', 'not yet Replied', 5);

-- --------------------------------------------------------

--
-- Table structure for table `master_examhist`
--

CREATE TABLE `master_examhist` (
  `exahist_id` int(11) NOT NULL,
  `term` varchar(100) NOT NULL,
  `topic_id_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(25) NOT NULL,
  `correct` varchar(25) NOT NULL,
  `skiped` varchar(25) NOT NULL,
  `wrong` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_hitlist`
--

CREATE TABLE `master_hitlist` (
  `hit_id` int(11) NOT NULL,
  `hit_name` varchar(100) NOT NULL,
  `hit_descr` varchar(4000) NOT NULL,
  `tutorial_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_hitlist`
--

INSERT INTO `master_hitlist` (`hit_id`, `hit_name`, `hit_descr`, `tutorial_id`) VALUES
(1, 'dbms', 'A database management system (or DBMS) is essentially nothing more than a computerized data-keeping system. Users of the system are given facilities to perform several kinds of operations on such a system for either manipulation of the data in the database or the management of the database structure itself. Database Management Systems (DBMSs) are categorized according to their data structures or types.\r\nTable\r\nA table is a logical structure made up of rows and columns. Rows have no fixed order, so if you retrieve data you might need to sort the data. The order of the columns is the order specified when the table was created by the database administrator. At the intersection of every column and row is a specific data item called a value, or, more precisely, an atomic value. A table is named with a high-level qualifier of the owner\'s user ID followed by the table name, for example TEST.DEPT or PROD.DEPT. There are three types of tables:', 6),
(12, 'Disadvantages of DBMS', 'Cost of Hardware and Software,Size,Complexity,Higher impact of failure', 8),
(13, 'Cost of Hardware and Software', ' It requires a high speed of data processor and large memory size to run DBMS software.', 8),
(14, 'Size', 'It occupies a large space of disks and large memory to run them efficiently.', 8),
(15, 'Complexity', 'Database system creates additional complexity and requirements.', 8),
(16, 'Higher impact of failure', 'Failure is highly impacted the database because in most of the organization, all the data stored in a single database and if the database is damaged due to electric failure or database corruption then the data may be lost forever.', 8),
(17, 'Advantages of DBMS', 'Controls database redundancy,Data sharing,Easily Maintenance,Reduce time,Backup,multiple user interface', 8),
(18, 'Controls database redundancy', 'It can control data redundancy because it stores all the data in one single database file and that recorded data is placed in the database.', 8),
(19, 'Data sharing', 'In DBMS, the authorized users of an organization can share the data among multiple users.', 8),
(20, 'Easily Maintenance', 'It can be easily maintainable due to the centralized nature of the database system.', 8),
(21, 'Reduce time', 'It reduces development time and maintenance need.', 8),
(22, 'Backup', 'It provides backup and recovery subsystems which create automatic backup of data from hardware and software failures and restores the data if required.', 8),
(23, 'multiple user interface', 'It provides different types of user interfaces like graphical user interfaces, application program interfaces', 8);

-- --------------------------------------------------------

--
-- Table structure for table `master_login`
--

CREATE TABLE `master_login` (
  `log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_login`
--

INSERT INTO `master_login` (`log_id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin123', 'admin'),
(2, 'varun@gmail.com', '12345678', 'tutor'),
(3, 'findmein001@gmail.com', '12345678', 'user'),
(6, 'arun@gmail.com', 'arun1234', 'tutor'),
(8, 'lidiyaarun24@gmail.com', '12345678', 'user'),
(9, 'varundev901@gmail.com', '12345678', 'user'),
(11, 'sarathkumar788@gmail.com', '12345678', 'tutor');

-- --------------------------------------------------------

--
-- Table structure for table `master_purchase`
--

CREATE TABLE `master_purchase` (
  `purchase_id` int(11) NOT NULL,
  `purchase_amt` varchar(100) NOT NULL,
  `purchase_date` date NOT NULL,
  `purchase_status` varchar(100) NOT NULL,
  `topic_id_id` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_purchase`
--

INSERT INTO `master_purchase` (`purchase_id`, `purchase_amt`, `purchase_date`, `purchase_status`, `topic_id_id`, `user_id_id`) VALUES
(2, '1200', '2022-03-04', 'payed', 3, 5),
(3, '200', '2022-03-07', 'payed', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `master_question`
--

CREATE TABLE `master_question` (
  `quest_id` int(11) NOT NULL,
  `quest_term` varchar(100) NOT NULL,
  `quest_ques` varchar(250) NOT NULL,
  `quest_op1` varchar(250) NOT NULL,
  `quest_op2` varchar(250) NOT NULL,
  `quest_op3` varchar(250) NOT NULL,
  `quest_op4` varchar(250) NOT NULL,
  `quest_ans` varchar(250) NOT NULL,
  `topic_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_question`
--

INSERT INTO `master_question` (`quest_id`, `quest_term`, `quest_ques`, `quest_op1`, `quest_op2`, `quest_op3`, `quest_op4`, `quest_ans`, `topic_id_id`) VALUES
(1, '1', 'hgfda', 'qw', 'qww', 'qwe', 'qwe', 'A', 1),
(2, '1', 'asa', 'e', 'sd', 'sd', 'sf', 'A', 1),
(3, '5', 'zcxv', 'cx', 'zcv', '1', 'sdf', 'B', 1),
(4, '1', 'adk', 'as', 'df', 'fd', 'adsf', 'A', 1),
(5, '1', 'jhasdjh   hsd', 'jdjkskj', 'bs', 'kjdskj', 'sjkkj', 'A', 1),
(6, '1', 'kaskdf', 'dbsdkf', 'kbasd', 'kas ddjkv', 'ladsj', 'A', 1),
(7, '1', 'ddd', 'dsfs', 'd', 'df', 'fff', 'A', 2),
(8, '1', 'dfd', 'gdf', 'dfd', '45', 'ddf', 'A', 2),
(9, '1', 'hgsdfg', 'a1', 'a2', 'a3', 'a4', 'A', 3),
(10, '1', 'sfjdhdsg', 'q1', 'q2', 'q3', 'q4', 'A', 3),
(11, '1', 'we', 'werwe', 'wer', 'qwe', 'qwe', 'A', 3),
(12, '1', 'uywet', 'qwe', 'qwe', 'qwe', 'qw', 'A', 3);

-- --------------------------------------------------------

--
-- Table structure for table `master_topic`
--

CREATE TABLE `master_topic` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(100) NOT NULL,
  `topic_details` varchar(150) NOT NULL,
  `tutor_id_id` int(11) DEFAULT NULL,
  `topic_cover` varchar(1000) NOT NULL,
  `topic_package` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_topic`
--

INSERT INTO `master_topic` (`topic_id`, `topic_name`, `topic_details`, `tutor_id_id`, `topic_cover`, `topic_package`) VALUES
(1, 'Object Oriented Programming', 'OOP Basics. ', 1, 'images/IMG20200401105615_ogI8MpW.jpg', '200'),
(2, 'Data Visualization', 'Advantages and benefits of good data visualization', 2, 'images/logo_2.jpg', '200'),
(3, 'Data Science', 'Dimension reduction methods and techniques', 4, 'images/CLEVERISM.COM-magazine-DMBS1_FMIk37A.png', '1200');

-- --------------------------------------------------------

--
-- Table structure for table `master_tutorial`
--

CREATE TABLE `master_tutorial` (
  `tutorial_id` int(11) NOT NULL,
  `tutorial_title` varchar(100) NOT NULL,
  `tutorial_description` varchar(150) NOT NULL,
  `tutorial_cover` varchar(1000) NOT NULL,
  `tutorial_video` varchar(1000) NOT NULL,
  `topic_id_id` int(11) DEFAULT NULL,
  `tutorial_order` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_tutorial`
--

INSERT INTO `master_tutorial` (`tutorial_id`, `tutorial_title`, `tutorial_description`, `tutorial_cover`, `tutorial_video`, `topic_id_id`, `tutorial_order`) VALUES
(2, 'Chapter 1', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/Concept_of_Keys_in_DBMS_-_Super_Primary_Candidate_Foreign_Key_etc_1_4la2cTy.mp4', 1, '1'),
(3, 'Chapter 2', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/Concept_of_Keys_in_DBMS_-_Super_Primary_Candidate_Foreign_Key_etc_1_4la2cTy.mp4', 1, '2'),
(4, 'Chapter 3', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/Concept_of_Keys_in_DBMS_-_Super_Primary_Candidate_Foreign_Key_etc_1_4la2cTy.mp4', 1, '3'),
(5, 'Chapter 4', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/Data_Structures___Introduction___Lec-1___Bhanu_Priya_Lw5Nl0A.mp4', 1, '4'),
(6, 'Chapter 5', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/Data_Structures___Introduction___Lec-1___Bhanu_Priya_Lw5Nl0A.mp4', 1, '5'),
(7, 'Chapter 1', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/DBMS_tutorial_for_beginners___Lec-1__Bhanu_Priya_YDqXwOb.mp4', 2, '1'),
(8, 'chapter 1', 'Indroduction to data science', 'images/CLEVERISM.COM-magazine-DMBS1_EXH2gDl.png', 'images/Data_Structures___Introduction___Lec-1___Bhanu_Priya_Lw5Nl0A.mp4', 3, '1'),
(9, 'Chapter 6', 'sample chapter details', 'images/CLEVERISM.COM-magazine-DMBS1_kN9twPj.png', 'images/Concept_of_Keys_in_DBMS_-_Super_Primary_Candidate_Foreign_Key_etc_1_4la2cTy.mp4', 1, '6');

-- --------------------------------------------------------

--
-- Table structure for table `master_tutors`
--

CREATE TABLE `master_tutors` (
  `tutor_id` int(11) NOT NULL,
  `tutor_name` varchar(100) NOT NULL,
  `tutor_gender` varchar(100) NOT NULL,
  `tutor_address` varchar(500) NOT NULL,
  `tutor_email` varchar(200) NOT NULL,
  `tutor_phone` varchar(100) NOT NULL,
  `tutor_qualification` varchar(200) NOT NULL,
  `tutor_designation` varchar(100) NOT NULL,
  `tutor_photo` varchar(1000) NOT NULL,
  `tutor_status` varchar(50) NOT NULL,
  `tutor_logid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_tutors`
--

INSERT INTO `master_tutors` (`tutor_id`, `tutor_name`, `tutor_gender`, `tutor_address`, `tutor_email`, `tutor_phone`, `tutor_qualification`, `tutor_designation`, `tutor_photo`, `tutor_status`, `tutor_logid_id`) VALUES
(1, 'varun', 'male', 'varn villa', 'varun@gmail.com', '9090909090', 'pg', 'faculty', 'images/logo.gif', 'approved', 2),
(2, 'Arun varma', 'male', 'arun nivas', 'arun@gmail.com', '9089786756', 'M.Sc. cs ', 'faculty', 'images/logo.gif', 'approved', 6),
(4, 'Sarath kumar', 'male', 'Valiyaveetil , Kottiyam , Kollam , Kerala', 'sarathkumar788@gmail.com', '9076565759', 'Bsc Computer Science', 'Faculty', 'images/p2_sXAMUo8.jpg', 'approved', 11);

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(100) NOT NULL,
  `user_lname` varchar(100) NOT NULL,
  `user_paddress` varchar(100) NOT NULL,
  `user_caddress` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(200) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `user_logid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`user_id`, `user_fname`, `user_lname`, `user_paddress`, `user_caddress`, `user_email`, `user_phone`, `user_status`, `user_logid_id`) VALUES
(5, 'Lidiya', 'Arun', 'Puthanpurakkal veedu , Polayathodu , Kollam , Kerala', 'Puthanpurakkal veedu , Polayathodu , Kollam , Kerala', 'lidiyaarun24@gmail.com', '9074478665', 'approved', 8),
(6, 'Varun', 'Dev', 'Krishnavilasam , Kottarakara , Kollam , Kerala', 'Krishnavilasam , Kottarakara , Kollam , Kerala', 'varundev901@gmail.com', '7708436221', 'approved', 9),
(7, 'Karan', ' K', 'karan Villa', 'karan villa', 'findmein001@gmail.com', '9089786756', 'approved', 3);

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
-- Indexes for table `master_accesshist`
--
ALTER TABLE `master_accesshist`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `master_accesshist_topic_id_id_d0f79dc6_fk_master_topic_topic_id` (`topic_id_id`),
  ADD KEY `master_accesshist_tutorial_id_8a2331c9_fk_master_tu` (`tutorial_id`),
  ADD KEY `master_accesshist_user_id_9831a435_fk_master_user_user_id` (`user_id`);

--
-- Indexes for table `master_bank`
--
ALTER TABLE `master_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `master_complaint`
--
ALTER TABLE `master_complaint`
  ADD PRIMARY KEY (`comp_id`),
  ADD KEY `master_complaint_comp_user_id_d1112aed_fk_master_user_user_id` (`comp_user_id`);

--
-- Indexes for table `master_examhist`
--
ALTER TABLE `master_examhist`
  ADD PRIMARY KEY (`exahist_id`),
  ADD KEY `master_examhist_topic_id_id_14f21634_fk_master_topic_topic_id` (`topic_id_id`),
  ADD KEY `master_examhist_user_id_3ad63709_fk_master_user_user_id` (`user_id`);

--
-- Indexes for table `master_hitlist`
--
ALTER TABLE `master_hitlist`
  ADD PRIMARY KEY (`hit_id`),
  ADD KEY `master_hitlist_tutorial_id_92bc5fe6_fk_master_tu` (`tutorial_id`);

--
-- Indexes for table `master_login`
--
ALTER TABLE `master_login`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `master_purchase`
--
ALTER TABLE `master_purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `master_purchase_topic_id_id_7c9138fe_fk_master_topic_topic_id` (`topic_id_id`),
  ADD KEY `master_purchase_user_id_id_ffdd62ea_fk_master_user_user_id` (`user_id_id`);

--
-- Indexes for table `master_question`
--
ALTER TABLE `master_question`
  ADD PRIMARY KEY (`quest_id`),
  ADD KEY `master_question_topic_id_id_e39a40c5_fk_master_topic_topic_id` (`topic_id_id`);

--
-- Indexes for table `master_topic`
--
ALTER TABLE `master_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `master_topic_tutor_id_id_f2e00595_fk_master_tutors_tutor_id` (`tutor_id_id`);

--
-- Indexes for table `master_tutorial`
--
ALTER TABLE `master_tutorial`
  ADD PRIMARY KEY (`tutorial_id`),
  ADD KEY `master_tutorial_topic_id_id_c397f26d_fk_master_topic_topic_id` (`topic_id_id`);

--
-- Indexes for table `master_tutors`
--
ALTER TABLE `master_tutors`
  ADD PRIMARY KEY (`tutor_id`),
  ADD KEY `master_tutors_tutor_logid_id_c786709c_fk_master_login_log_id` (`tutor_logid_id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `master_user_user_logid_id_11fe4809_fk_master_login_log_id` (`user_logid_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `master_accesshist`
--
ALTER TABLE `master_accesshist`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `master_bank`
--
ALTER TABLE `master_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_complaint`
--
ALTER TABLE `master_complaint`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_examhist`
--
ALTER TABLE `master_examhist`
  MODIFY `exahist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_hitlist`
--
ALTER TABLE `master_hitlist`
  MODIFY `hit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `master_login`
--
ALTER TABLE `master_login`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `master_purchase`
--
ALTER TABLE `master_purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_question`
--
ALTER TABLE `master_question`
  MODIFY `quest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `master_topic`
--
ALTER TABLE `master_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_tutorial`
--
ALTER TABLE `master_tutorial`
  MODIFY `tutorial_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_tutors`
--
ALTER TABLE `master_tutors`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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

--
-- Constraints for table `master_accesshist`
--
ALTER TABLE `master_accesshist`
  ADD CONSTRAINT `master_accesshist_topic_id_id_d0f79dc6_fk_master_topic_topic_id` FOREIGN KEY (`topic_id_id`) REFERENCES `master_topic` (`topic_id`),
  ADD CONSTRAINT `master_accesshist_tutorial_id_8a2331c9_fk_master_tu` FOREIGN KEY (`tutorial_id`) REFERENCES `master_tutorial` (`tutorial_id`),
  ADD CONSTRAINT `master_accesshist_user_id_9831a435_fk_master_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_complaint`
--
ALTER TABLE `master_complaint`
  ADD CONSTRAINT `master_complaint_comp_user_id_d1112aed_fk_master_user_user_id` FOREIGN KEY (`comp_user_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_examhist`
--
ALTER TABLE `master_examhist`
  ADD CONSTRAINT `master_examhist_topic_id_id_14f21634_fk_master_topic_topic_id` FOREIGN KEY (`topic_id_id`) REFERENCES `master_topic` (`topic_id`),
  ADD CONSTRAINT `master_examhist_user_id_3ad63709_fk_master_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_hitlist`
--
ALTER TABLE `master_hitlist`
  ADD CONSTRAINT `master_hitlist_tutorial_id_92bc5fe6_fk_master_tu` FOREIGN KEY (`tutorial_id`) REFERENCES `master_tutorial` (`tutorial_id`);

--
-- Constraints for table `master_purchase`
--
ALTER TABLE `master_purchase`
  ADD CONSTRAINT `master_purchase_topic_id_id_7c9138fe_fk_master_topic_topic_id` FOREIGN KEY (`topic_id_id`) REFERENCES `master_topic` (`topic_id`),
  ADD CONSTRAINT `master_purchase_user_id_id_ffdd62ea_fk_master_user_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `master_user` (`user_id`);

--
-- Constraints for table `master_question`
--
ALTER TABLE `master_question`
  ADD CONSTRAINT `master_question_topic_id_id_e39a40c5_fk_master_topic_topic_id` FOREIGN KEY (`topic_id_id`) REFERENCES `master_topic` (`topic_id`);

--
-- Constraints for table `master_topic`
--
ALTER TABLE `master_topic`
  ADD CONSTRAINT `master_topic_tutor_id_id_f2e00595_fk_master_tutors_tutor_id` FOREIGN KEY (`tutor_id_id`) REFERENCES `master_tutors` (`tutor_id`);

--
-- Constraints for table `master_tutorial`
--
ALTER TABLE `master_tutorial`
  ADD CONSTRAINT `master_tutorial_topic_id_id_c397f26d_fk_master_topic_topic_id` FOREIGN KEY (`topic_id_id`) REFERENCES `master_topic` (`topic_id`);

--
-- Constraints for table `master_tutors`
--
ALTER TABLE `master_tutors`
  ADD CONSTRAINT `master_tutors_tutor_logid_id_c786709c_fk_master_login_log_id` FOREIGN KEY (`tutor_logid_id`) REFERENCES `master_login` (`log_id`);

--
-- Constraints for table `master_user`
--
ALTER TABLE `master_user`
  ADD CONSTRAINT `master_user_user_logid_id_11fe4809_fk_master_login_log_id` FOREIGN KEY (`user_logid_id`) REFERENCES `master_login` (`log_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
