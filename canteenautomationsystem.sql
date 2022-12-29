-- -- phpMyAdmin SQL Dump
-- -- version 4.3.11
-- -- http://www.phpmyadmin.net
-- --
-- -- Host: 127.0.0.1
-- -- Generation Time: Jan 24, 2018 at 09:31 AM
-- -- Server version: 5.6.24
-- -- PHP Version: 5.6.8

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8 */;

-- --
-- -- Database: `canteenautomationsystem`
-- --

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `auth_group`
-- --

-- CREATE TABLE IF NOT EXISTS `auth_group` (
--   `id` int(11) NOT NULL,
--   `name` varchar(80) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `auth_group_permissions`
-- --

-- CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
--   `id` int(11) NOT NULL,
--   `group_id` int(11) NOT NULL,
--   `permission_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `auth_permission`
-- --

-- CREATE TABLE IF NOT EXISTS `auth_permission` (
--   `id` int(11) NOT NULL,
--   `name` varchar(255) NOT NULL,
--   `content_type_id` int(11) NOT NULL,
--   `codename` varchar(100) NOT NULL
-- ) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `auth_permission`
-- --

-- INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
-- (1, 'Can add log entry', 1, 'add_logentry'),
-- (2, 'Can change log entry', 1, 'change_logentry'),
-- (3, 'Can delete log entry', 1, 'delete_logentry'),
-- (4, 'Can add permission', 2, 'add_permission'),
-- (5, 'Can change permission', 2, 'change_permission'),
-- (6, 'Can delete permission', 2, 'delete_permission'),
-- (7, 'Can add group', 3, 'add_group'),
-- (8, 'Can change group', 3, 'change_group'),
-- (9, 'Can delete group', 3, 'delete_group'),
-- (10, 'Can add user', 4, 'add_user'),
-- (11, 'Can change user', 4, 'change_user'),
-- (12, 'Can delete user', 4, 'delete_user'),
-- (13, 'Can add content type', 5, 'add_contenttype'),
-- (14, 'Can change content type', 5, 'change_contenttype'),
-- (15, 'Can delete content type', 5, 'delete_contenttype'),
-- (16, 'Can add session', 6, 'add_session'),
-- (17, 'Can change session', 6, 'change_session'),
-- (18, 'Can delete session', 6, 'delete_session'),
-- (19, 'Can add customer', 7, 'add_customer'),
-- (20, 'Can change customer', 7, 'change_customer'),
-- (21, 'Can delete customer', 7, 'delete_customer'),
-- (22, 'Can add item', 8, 'add_item'),
-- (23, 'Can change item', 8, 'change_item'),
-- (24, 'Can delete item', 8, 'delete_item'),
-- (25, 'Can add orders', 9, 'add_orders'),
-- (26, 'Can change orders', 9, 'change_orders'),
-- (27, 'Can delete orders', 9, 'delete_orders'),
-- (28, 'Can add admin', 10, 'add_admin'),
-- (29, 'Can change admin', 10, 'change_admin'),
-- (30, 'Can delete admin', 10, 'delete_admin'),
-- (31, 'Can add orderdetails', 11, 'add_orderdetails'),
-- (32, 'Can change orderdetails', 11, 'change_orderdetails'),
-- (33, 'Can delete orderdetails', 11, 'delete_orderdetails'),
-- (34, 'Can add chef', 12, 'add_chef'),
-- (35, 'Can change chef', 12, 'change_chef'),
-- (36, 'Can delete chef', 12, 'delete_chef'),
-- (37, 'Can add admin', 13, 'add_admin'),
-- (38, 'Can change admin', 13, 'change_admin'),
-- (39, 'Can delete admin', 13, 'delete_admin'),
-- (40, 'Can add orderdetails', 14, 'add_orderdetails'),
-- (41, 'Can change orderdetails', 14, 'change_orderdetails'),
-- (42, 'Can delete orderdetails', 14, 'delete_orderdetails'),
-- (43, 'Can add PayPal IPN', 15, 'add_paypalipn'),
-- (44, 'Can change PayPal IPN', 15, 'change_paypalipn'),
-- (45, 'Can delete PayPal IPN', 15, 'delete_paypalipn');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `auth_user`
-- --

-- CREATE TABLE IF NOT EXISTS `auth_user` (
--   `id` int(11) NOT NULL,
--   `password` varchar(128) NOT NULL,
--   `last_login` datetime(6) DEFAULT NULL,
--   `is_superuser` tinyint(1) NOT NULL,
--   `username` varchar(150) NOT NULL,
--   `first_name` varchar(30) NOT NULL,
--   `last_name` varchar(150) NOT NULL,
--   `email` varchar(254) NOT NULL,
--   `is_staff` tinyint(1) NOT NULL,
--   `is_active` tinyint(1) NOT NULL,
--   `date_joined` datetime(6) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `auth_user_groups`
-- --

-- CREATE TABLE IF NOT EXISTS `auth_user_groups` (
--   `id` int(11) NOT NULL,
--   `user_id` int(11) NOT NULL,
--   `group_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `auth_user_user_permissions`
-- --

-- CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
--   `id` int(11) NOT NULL,
--   `user_id` int(11) NOT NULL,
--   `permission_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `chef_chef`
-- --

-- CREATE TABLE IF NOT EXISTS `chef_chef` (
--   `chefid` varchar(20) NOT NULL,
--   `chefname` varchar(20) NOT NULL,
--   `category` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `chef_chef`
-- --

-- INSERT INTO `chef_chef` (`chefid`, `chefname`, `category`) VALUES
-- ('1', 'ramlal', 'gujarati'),
-- ('2', 'shyamlal', 'panjabi'),
-- ('3', 'dhanlal', 'chinese'),
-- ('4', 'kalulal', 'starter'),
-- ('5', 'tofalal', 'southern'),
-- ('6', 'mafatlal', 'fastfood'),
-- ('7', 'popatlal', 'colddrinks'),
-- ('8', 'raju', 'south indian');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `client_customer`
-- --

-- CREATE TABLE IF NOT EXISTS `client_customer` (
--   `username` varchar(20) NOT NULL,
--   `firstname` varchar(20) NOT NULL,
--   `lastname` varchar(20) NOT NULL,
--   `password` varchar(20) NOT NULL,
--   `mobileno` varchar(10) NOT NULL,
--   `emailid` varchar(30) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `client_customer`
-- --

-- INSERT INTO `client_customer` (`username`, `firstname`, `lastname`, `password`, `mobileno`, `emailid`) VALUES
-- ('bhindi', 'vivekkumar', 'bhingaradiya', 'bhindi', '7046926618', 'vivekbhingaradiya258@gmail.com'),
-- ('captain', 'shyam', 'butani', 'captain', '9588665862', 'shyam.butani96@gmail.com'),
-- ('cvbnm', 'cvbn', 'cvbnm', '123', '9874531230', 'xcvbnm@fghjk.com'),
-- ('dfdsfds', 'cvbnm', 'dsfadsddf', '123', '1234567890', 'fsdfffdgdf@fg.com'),
-- ('earth', 'arth', 'patel', 'earth', '9586484097', 'arthpatel573@gmail.com'),
-- ('gamno', 'darshan', 'gauswami', 'gamno', '8141393254', 'gosai.darshan7@gmail.com'),
-- ('kd', 'keyur', 'doshi', 'kd', '8511410091', 'kdoshi96@gamil.com'),
-- ('meaw', 'chandni', 'hothi', 'meaw', '8401478276', 'chandnihothi23@gmail.com'),
-- ('pado', 'jaimish', 'patel', 'pado', '9876543210', 'jaimish@gmail.com'),
-- ('prinsu', 'prince', 'moradiya', 'prinsu', '9979211351', 'pm@gmail.com'),
-- ('shinu', 'shrinath', 'sojitra', 'shinu', '9558665987', 'shrinath.sojitra6@gmail.com'),
-- ('smarty', 'bhavik', 'bhalodia', 'smarty', '9426518798', 'babhalodia@gmail.com');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `client_item`
-- --

-- CREATE TABLE IF NOT EXISTS `client_item` (
--   `itemno` varchar(20) NOT NULL,
--   `itemname` varchar(20) NOT NULL,
--   `category` varchar(20) NOT NULL,
--   `image` varchar(200) NOT NULL,
--   `price` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `client_item`
-- --

-- INSERT INTO `client_item` (`itemno`, `itemname`, `category`, `image`, `price`) VALUES
-- ('1', 'roti', 'gujarati', '/static/1.png', '5'),
-- ('10', 'noodles', 'chinese', '/static/10.png', '50'),
-- ('11', 'idli sambhar', 'southern', '/static/11.png', '35'),
-- ('13', 'masala papad', 'starter', '/static/12.png', '25'),
-- ('14', 'aloo paratha', 'gujarati', '/static/14.png', '20'),
-- ('15', 'veg grill sandwitch', 'fastfood', '/static/15.png', '50'),
-- ('16', 'khandavi', 'fastfood', '/static/16.png', '30'),
-- ('17', 'Samosa', 'fastfood', '/static/17.png', '20'),
-- ('18', 'Sev Khamni', 'fastfood', '/static/18.png', '25'),
-- ('19', 'Puff', 'fastfood', '/static/19.png', '10'),
-- ('20', 'Vada Pav', 'fastfood', '/static/20.png', '15'),
-- ('22', 'pepsi', 'colddrinks', '/static/22.jpg', '35'),
-- ('23', 'mazabottle', 'colddrinks', '/static/23.jpg', '40'),
-- ('24', 'pizza', 'fastfood', '/static/download.jpg', '80'),
-- ('25', 'Italian Toast', 'fastfood', '/static/Italian-Caprese-Avocado-Toast1024w.jpg', '40'),
-- ('26', 'Mountain Dew', 'colddrinks', '/static/download (1).jpg', '35'),
-- ('27', 'qwerty', 'gujarati', '/static/login-background.jpg', '100'),
-- ('30', 'Nan', 'panjabi', '/static/download.jpg', '20'),
-- ('31', 'thickshake', 'colddrinks', '/static/b.jpg', '90'),
-- ('4', 'tomatosoup', 'starter', '/static/4.png', '70'),
-- ('5', 'veg. tufani', 'panjabi', '/static/5.png', '120'),
-- ('6', 'pauva', 'starter', '/static/6.png', '20'),
-- ('7', 'bhartu', 'gujarati', '/static/7.png', '45'),
-- ('8', 'churamu', 'gujarati', '/static/8.png', '70'),
-- ('9', 'dosa', 'southern', '/static/9.png', '120');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `client_orders`
-- --

-- CREATE TABLE IF NOT EXISTS `client_orders` (
--   `id` int(11) NOT NULL,
--   `orderid` varchar(20) NOT NULL,
--   `itemno` varchar(20) NOT NULL,
--   `category` varchar(20) NOT NULL,
--   `quantity` varchar(10) NOT NULL,
--   `price` varchar(10) NOT NULL,
--   `status` varchar(20) NOT NULL DEFAULT 'pending'
-- ) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `client_orders`
-- --

-- INSERT INTO `client_orders` (`id`, `orderid`, `itemno`, `category`, `quantity`, `price`, `status`) VALUES
-- (105, '4419345325', '1', 'gujarati', '10', '5', 'complete'),
-- (106, '4419345325', '1', 'gujarati', '15', '5', 'complete'),
-- (107, '5574275354', '9', 'southern', '1', '120', 'complete'),
-- (108, '5574275354', '8', 'gujarati', '1', '70', 'complete'),
-- (109, '7675727537', '13', 'starter', '4', '25', 'complete'),
-- (110, '7675727537', '2', 'panjabi', '6', '15', 'pending'),
-- (111, '7675727537', '3', 'chinese', '2', '60', 'process'),
-- (112, '7368968344', '1', 'gujarati', '2', '5', 'complete'),
-- (113, '7368968344', '10', 'chinese', '1', '60', 'process'),
-- (114, '7368968344', '11', 'southern', '2', '35', 'complete'),
-- (115, '7368968344', '13', 'starter', '4', '25', 'complete'),
-- (116, '7368968344', '2', 'panjabi', '6', '15', 'pending'),
-- (117, '3665741193', '4', 'starter', '2', '70', 'complete'),
-- (118, '3665741193', '5', 'panjabi', '1', '120', 'complete'),
-- (119, '3665741193', '6', 'starter', '5', '20', 'complete'),
-- (120, '3665741193', '7', 'gujarati', '2', '45', 'complete'),
-- (121, '7487662791', '1', 'gujarati', '3', '5', 'complete'),
-- (122, '7487662791', '5', 'panjabi', '1', '120', 'process'),
-- (123, '7487662791', '4', 'starter', '1', '70', 'complete'),
-- (124, '9431542366', '1', 'gujarati', '5', '5', 'complete'),
-- (126, '9431542366', '11', 'southern', '2', '35', 'complete'),
-- (127, '1725622377', '1', 'gujarati', '2', '5', 'complete'),
-- (128, '1725622377', '10', 'chinese', '3', '60', 'pending'),
-- (129, '2893493143', '1', 'gujarati', '5', '5', 'complete'),
-- (131, '9898569823', '1', 'gujarati', '4', '5', 'complete'),
-- (132, '9898569823', '10', 'chinese', '2', '60', 'complete'),
-- (133, '9898569823', '11', 'southern', '2', '35', 'complete'),
-- (136, '2219974156', '10', 'chinese', '4', '50', 'complete'),
-- (137, '2219974156', '1', 'gujarati', '10', '5', 'complete'),
-- (138, '9214819949', '13', 'starter', '4', '25', 'complete'),
-- (139, '9214819949', '18', 'fastfood', '4', '25', 'complete'),
-- (142, '2551665567', '20', 'fastfood', '1', '15', 'complete'),
-- (143, '2551665567', '19', 'fastfood', '1', '10', 'complete'),
-- (144, '2551665567', '17', 'fastfood', '1', '20', 'complete'),
-- (148, '7298857973', '1', 'gujarati', '10', '5', 'complete'),
-- (149, '7298857973', '10', 'chinese', '2', '50', 'pending'),
-- (152, '4341967827', '1', 'gujarati', '2', '5', 'complete'),
-- (154, '4341967827', '8', 'gujarati', '3', '70', 'complete'),
-- (155, '4341967827', '7', 'gujarati', '2', '45', 'complete'),
-- (156, '7994827396', '14', 'gujarati', '5', '20', 'process'),
-- (157, '7994827396', '13', 'starter', '4', '25', 'process'),
-- (158, '7994827396', '15', 'fastfood', '2', '50', 'pending'),
-- (159, '7994827396', '1', 'gujarati', '10', '5', 'process'),
-- (160, '9216979697', '10', 'chinese', '2', '50', 'pending'),
-- (161, '9216979697', '11', 'southern', '2', '35', 'pending'),
-- (162, '9216979697', '15', 'fastfood', '2', '50', 'pending'),
-- (163, '5912699114', '1', 'gujarati', '5', '5', 'complete'),
-- (167, '5575134452', '10', 'chinese', '3', '50', 'pending'),
-- (168, '5575134452', '3', 'chinese', '10', '60', 'pending'),
-- (169, '9313972351', '3', 'chinese', '2', '60', 'pending'),
-- (170, '9313972351', '10', 'chinese', '2', '50', 'pending'),
-- (172, '4263368131', '3', 'chinese', '4', '60', 'pending'),
-- (173, '4263368131', '23', 'colddrinks', '2', '40', 'pending'),
-- (174, '6421236639', '6', 'starter', '1', '20', 'complete'),
-- (175, '6421236639', '4', 'starter', '1', '70', 'complete'),
-- (176, '6421236639', '9', 'southern', '1', '120', 'pending'),
-- (177, '6421236639', '11', 'southern', '1', '35', 'pending'),
-- (178, '7227846268', '10', 'chinese', '3', '50', 'pending'),
-- (179, '4553919946', '24', 'fastfood', '4', '80', 'pending'),
-- (180, '1619395195', '10', 'chinese', '2', '50', 'pending'),
-- (181, '1619395195', '3', 'chinese', '2', '60', 'pending'),
-- (182, '1619395195', '23', 'colddrinks', '4', '40', 'pending'),
-- (183, '1259869622', '10', 'chinese', '1', '50', 'pending'),
-- (184, '1259869622', '3', 'chinese', '1', '60', 'pending'),
-- (185, '1259869622', '22', 'colddrinks', '2', '35', 'pending'),
-- (186, '1259869622', '26', 'colddrinks', '2', '35', 'pending'),
-- (187, '1259869622', '24', 'fastfood', '1', '80', 'pending'),
-- (188, '2238192122', '10', 'chinese', '1', '50', 'pending'),
-- (198, '2675643549', '10', 'chinese', '2', '50', 'pending'),
-- (199, '2675643549', '3', 'chinese', '2', '60', 'pending'),
-- (200, '3895817136', '24', 'fastfood', '1', '80', 'pending'),
-- (201, '3895817136', '20', 'fastfood', '1', '15', 'pending'),
-- (202, '6257984332', '10', 'chinese', '2', '50', 'pending'),
-- (203, '6257984332', '3', 'chinese', '1', '60', 'pending'),
-- (204, '6257984332', '26', 'colddrinks', '4', '35', 'pending'),
-- (205, '6257984332', '24', 'fastfood', '2', '80', 'pending'),
-- (206, '6257984332', '22', 'colddrinks', '4', '35', 'pending');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `django_admin_log`
-- --

-- CREATE TABLE IF NOT EXISTS `django_admin_log` (
--   `id` int(11) NOT NULL,
--   `action_time` datetime(6) NOT NULL,
--   `object_id` longtext,
--   `object_repr` varchar(200) NOT NULL,
--   `action_flag` smallint(5) unsigned NOT NULL,
--   `change_message` longtext NOT NULL,
--   `content_type_id` int(11) DEFAULT NULL,
--   `user_id` int(11) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `django_content_type`
-- --

-- CREATE TABLE IF NOT EXISTS `django_content_type` (
--   `id` int(11) NOT NULL,
--   `app_label` varchar(100) NOT NULL,
--   `model` varchar(100) NOT NULL
-- ) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `django_content_type`
-- --

-- INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
-- (1, 'admin', 'logentry'),
-- (10, 'admincontrol', 'admin'),
-- (11, 'admincontrol', 'orderdetails'),
-- (3, 'auth', 'group'),
-- (2, 'auth', 'permission'),
-- (4, 'auth', 'user'),
-- (12, 'chef', 'chef'),
-- (7, 'client', 'customer'),
-- (8, 'client', 'item'),
-- (9, 'client', 'orders'),
-- (5, 'contenttypes', 'contenttype'),
-- (15, 'ipn', 'paypalipn'),
-- (13, 'prog', 'admin'),
-- (14, 'prog', 'orderdetails'),
-- (6, 'sessions', 'session');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `django_migrations`
-- --

-- CREATE TABLE IF NOT EXISTS `django_migrations` (
--   `id` int(11) NOT NULL,
--   `app` varchar(255) NOT NULL,
--   `name` varchar(255) NOT NULL,
--   `applied` datetime(6) NOT NULL
-- ) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `django_migrations`
-- --

-- INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
-- (1, 'contenttypes', '0001_initial', '2017-12-13 09:22:30.530216'),
-- (2, 'auth', '0001_initial', '2017-12-13 09:22:42.307277'),
-- (3, 'admin', '0001_initial', '2017-12-13 09:22:45.554379'),
-- (4, 'admin', '0002_logentry_remove_auto_add', '2017-12-13 09:22:45.655267'),
-- (5, 'contenttypes', '0002_remove_content_type_name', '2017-12-13 09:22:46.932147'),
-- (6, 'auth', '0002_alter_permission_name_max_length', '2017-12-13 09:22:47.773541'),
-- (7, 'auth', '0003_alter_user_email_max_length', '2017-12-13 09:22:49.313402'),
-- (8, 'auth', '0004_alter_user_username_opts', '2017-12-13 09:22:49.422806'),
-- (9, 'auth', '0005_alter_user_last_login_null', '2017-12-13 09:22:50.085370'),
-- (10, 'auth', '0006_require_contenttypes_0002', '2017-12-13 09:22:50.116676'),
-- (11, 'auth', '0007_alter_validators_add_error_messages', '2017-12-13 09:22:50.194755'),
-- (12, 'auth', '0008_alter_user_username_max_length', '2017-12-13 09:22:52.125494'),
-- (13, 'auth', '0009_alter_user_last_name_max_length', '2017-12-13 09:22:52.806688'),
-- (14, 'sessions', '0001_initial', '2017-12-13 09:22:53.494146'),
-- (15, 'admincontrol', '0001_initial', '2017-12-13 09:30:49.123488'),
-- (16, 'chef', '0001_initial', '2017-12-13 09:30:49.404739'),
-- (17, 'client', '0001_initial', '2017-12-13 09:30:50.451626'),
-- (18, 'prog', '0001_initial', '2017-12-15 08:52:37.040247'),
-- (19, 'ipn', '0001_initial', '2017-12-27 05:41:40.933667'),
-- (20, 'ipn', '0002_paypalipn_mp_id', '2017-12-27 05:41:41.630102'),
-- (21, 'ipn', '0003_auto_20141117_1647', '2017-12-27 05:41:42.877033'),
-- (22, 'ipn', '0004_auto_20150612_1826', '2017-12-27 05:42:05.833135'),
-- (23, 'ipn', '0005_auto_20151217_0948', '2017-12-27 05:42:07.606478'),
-- (24, 'ipn', '0006_auto_20160108_1112', '2017-12-27 05:42:09.016736'),
-- (25, 'ipn', '0007_auto_20160219_1135', '2017-12-27 05:42:09.103860');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `django_session`
-- --

-- CREATE TABLE IF NOT EXISTS `django_session` (
--   `session_key` varchar(40) NOT NULL,
--   `session_data` longtext NOT NULL,
--   `expire_date` datetime(6) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `django_session`
-- --

-- INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
-- ('6lfo91cmk06b12m951ngpvqmmed160nr', 'MDllNTBmOTIxZWMzYzc0NWViYjg1ZjExMzYxNDViOTRjYjQxZjIxNTp7ImFkbWlubm0iOiJhZG1pbkBnbWFpbC5jb20iLCJ1bm0iOiJiaGluZGkiLCJvaWQiOiIzMzc3NDU5NDU1IiwidG90YWwiOiIyNzAiLCJjaGVmbmFtZSI6InJhbWxhbCIsIml0ZW1saXN0IjpbIjEiXX0=', '2018-01-25 06:13:28.876535'),
-- ('f0kpegfvd9qn195lrjdgi822rqzsipd8', 'YzViZTlmOWZkZDgxOTJjMTkwZTY1MzY1MTFhMDlmYjJiZTc0NjhmNTp7InVubSI6ImJoaW5kaSIsIm9pZCI6IjUzNTIyNDMxNzUiLCJ0b3RhbCI6IjIwMCIsImNoZWZuYW1lIjoibWFmYXRsYWwiLCJhZG1pbm5tIjoiYWRtaW5AZ21haWwuY29tIiwiaXRlbWxpc3QiOlsiMSIsIjEwIiwiMTEiXX0=', '2018-01-19 09:05:54.341889'),
-- ('fi1qgpme6gn37r4s0lnohjtlrf92d2iz', 'NDFhMDhiYzNiN2Y1MjRlODg4ZDc1NzEyZTZjNTYwNzdlN2RkYmFkMTp7ImN0ZyI6ImFsbCIsImFkbWlubm0iOiJhZG1pbkBnbWFpbC5jb20ifQ==', '2018-02-07 08:25:53.249952'),
-- ('ndb8ii7ut92ua01c6nvsu110ef5nws49', 'NjViNDViNTUwZTgxNjFlYWM3ZTcwMjMyOWM3NjEwOWE3ZGY1YTQwMTp7InVubSI6ImJoaW5kaSIsIm9pZCI6IjU3NjEyMjExOTEiLCJ0b3RhbCI6IjI0NSIsImFkbWlubm0iOiJhZG1pbkBnbWFpbC5jb20iLCJjaGVmbmFtZSI6InJhbWxhbCIsIml0ZW1saXN0IjpbIjEwIl19', '2018-01-27 13:10:29.189473'),
-- ('z1t3lppi36j8rzda67joxqz0sksv2lrg', 'MGNlMWJjMDljYjZiNDVkNTc5ZTg3MmU0NzJjYzMxODU2NjZmZjYxYTp7ImNoZWZuYW1lIjoicmFtbGFsIiwib2lkIjoiMjg5MzQ5MzE0MyIsInVubSI6ImJoaW5kaSIsInRvdGFsIjoiODUiLCJpdGVtbGlzdCI6WyIxMCIsIjEiXX0=', '2018-01-15 09:26:28.213042');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `paypal_ipn`
-- --

-- CREATE TABLE IF NOT EXISTS `paypal_ipn` (
--   `id` int(11) NOT NULL,
--   `business` varchar(127) NOT NULL,
--   `charset` varchar(255) NOT NULL,
--   `custom` varchar(256) NOT NULL,
--   `notify_version` decimal(64,2) DEFAULT NULL,
--   `parent_txn_id` varchar(19) NOT NULL,
--   `receiver_email` varchar(254) NOT NULL,
--   `receiver_id` varchar(255) NOT NULL,
--   `residence_country` varchar(2) NOT NULL,
--   `test_ipn` tinyint(1) NOT NULL,
--   `txn_id` varchar(255) NOT NULL,
--   `txn_type` varchar(255) NOT NULL,
--   `verify_sign` varchar(255) NOT NULL,
--   `address_country` varchar(64) NOT NULL,
--   `address_city` varchar(40) NOT NULL,
--   `address_country_code` varchar(64) NOT NULL,
--   `address_name` varchar(128) NOT NULL,
--   `address_state` varchar(40) NOT NULL,
--   `address_status` varchar(255) NOT NULL,
--   `address_street` varchar(200) NOT NULL,
--   `address_zip` varchar(20) NOT NULL,
--   `contact_phone` varchar(20) NOT NULL,
--   `first_name` varchar(64) NOT NULL,
--   `last_name` varchar(64) NOT NULL,
--   `payer_business_name` varchar(127) NOT NULL,
--   `payer_email` varchar(127) NOT NULL,
--   `payer_id` varchar(13) NOT NULL,
--   `auth_amount` decimal(64,2) DEFAULT NULL,
--   `auth_exp` varchar(28) NOT NULL,
--   `auth_id` varchar(19) NOT NULL,
--   `auth_status` varchar(255) NOT NULL,
--   `exchange_rate` decimal(64,16) DEFAULT NULL,
--   `invoice` varchar(127) NOT NULL,
--   `item_name` varchar(127) NOT NULL,
--   `item_number` varchar(127) NOT NULL,
--   `mc_currency` varchar(32) NOT NULL,
--   `mc_fee` decimal(64,2) DEFAULT NULL,
--   `mc_gross` decimal(64,2) DEFAULT NULL,
--   `mc_handling` decimal(64,2) DEFAULT NULL,
--   `mc_shipping` decimal(64,2) DEFAULT NULL,
--   `memo` varchar(255) NOT NULL,
--   `num_cart_items` int(11) DEFAULT NULL,
--   `option_name1` varchar(64) NOT NULL,
--   `option_name2` varchar(64) NOT NULL,
--   `payer_status` varchar(255) NOT NULL,
--   `payment_date` datetime(6) DEFAULT NULL,
--   `payment_gross` decimal(64,2) DEFAULT NULL,
--   `payment_status` varchar(255) NOT NULL,
--   `payment_type` varchar(255) NOT NULL,
--   `pending_reason` varchar(255) NOT NULL,
--   `protection_eligibility` varchar(255) NOT NULL,
--   `quantity` int(11) DEFAULT NULL,
--   `reason_code` varchar(255) NOT NULL,
--   `remaining_settle` decimal(64,2) DEFAULT NULL,
--   `settle_amount` decimal(64,2) DEFAULT NULL,
--   `settle_currency` varchar(32) NOT NULL,
--   `shipping` decimal(64,2) DEFAULT NULL,
--   `shipping_method` varchar(255) NOT NULL,
--   `tax` decimal(64,2) DEFAULT NULL,
--   `transaction_entity` varchar(255) NOT NULL,
--   `auction_buyer_id` varchar(64) NOT NULL,
--   `auction_closing_date` datetime(6) DEFAULT NULL,
--   `auction_multi_item` int(11) DEFAULT NULL,
--   `for_auction` decimal(64,2) DEFAULT NULL,
--   `amount` decimal(64,2) DEFAULT NULL,
--   `amount_per_cycle` decimal(64,2) DEFAULT NULL,
--   `initial_payment_amount` decimal(64,2) DEFAULT NULL,
--   `next_payment_date` datetime(6) DEFAULT NULL,
--   `outstanding_balance` decimal(64,2) DEFAULT NULL,
--   `payment_cycle` varchar(255) NOT NULL,
--   `period_type` varchar(255) NOT NULL,
--   `product_name` varchar(255) NOT NULL,
--   `product_type` varchar(255) NOT NULL,
--   `profile_status` varchar(255) NOT NULL,
--   `recurring_payment_id` varchar(255) NOT NULL,
--   `rp_invoice_id` varchar(127) NOT NULL,
--   `time_created` datetime(6) DEFAULT NULL,
--   `amount1` decimal(64,2) DEFAULT NULL,
--   `amount2` decimal(64,2) DEFAULT NULL,
--   `amount3` decimal(64,2) DEFAULT NULL,
--   `mc_amount1` decimal(64,2) DEFAULT NULL,
--   `mc_amount2` decimal(64,2) DEFAULT NULL,
--   `mc_amount3` decimal(64,2) DEFAULT NULL,
--   `password` varchar(24) NOT NULL,
--   `period1` varchar(255) NOT NULL,
--   `period2` varchar(255) NOT NULL,
--   `period3` varchar(255) NOT NULL,
--   `reattempt` varchar(1) NOT NULL,
--   `recur_times` int(11) DEFAULT NULL,
--   `recurring` varchar(1) NOT NULL,
--   `retry_at` datetime(6) DEFAULT NULL,
--   `subscr_date` datetime(6) DEFAULT NULL,
--   `subscr_effective` datetime(6) DEFAULT NULL,
--   `subscr_id` varchar(19) NOT NULL,
--   `username` varchar(64) NOT NULL,
--   `case_creation_date` datetime(6) DEFAULT NULL,
--   `case_id` varchar(255) NOT NULL,
--   `case_type` varchar(255) NOT NULL,
--   `receipt_id` varchar(255) NOT NULL,
--   `currency_code` varchar(32) NOT NULL,
--   `handling_amount` decimal(64,2) DEFAULT NULL,
--   `transaction_subject` varchar(256) NOT NULL,
--   `ipaddress` char(39) DEFAULT NULL,
--   `flag` tinyint(1) NOT NULL,
--   `flag_code` varchar(16) NOT NULL,
--   `flag_info` longtext NOT NULL,
--   `query` longtext NOT NULL,
--   `response` longtext NOT NULL,
--   `created_at` datetime(6) NOT NULL,
--   `updated_at` datetime(6) NOT NULL,
--   `from_view` varchar(6) DEFAULT NULL,
--   `mp_id` varchar(128) DEFAULT NULL,
--   `option_selection1` varchar(200) NOT NULL,
--   `option_selection2` varchar(200) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `prog_admin`
-- --

-- CREATE TABLE IF NOT EXISTS `prog_admin` (
--   `name` varchar(20) NOT NULL,
--   `value` varchar(20) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `prog_admin`
-- --

-- INSERT INTO `prog_admin` (`name`, `value`) VALUES
-- ('admin@gmail.com', 'admin');

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `prog_orderdetails`
-- --

-- CREATE TABLE IF NOT EXISTS `prog_orderdetails` (
--   `orderid` varchar(20) NOT NULL,
--   `username` varchar(20) NOT NULL,
--   `totalprice` varchar(10) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `prog_orderdetails`
-- --

-- INSERT INTO `prog_orderdetails` (`orderid`, `username`, `totalprice`) VALUES
-- ('1259869622', 'bhindi', '330'),
-- ('1725622377', 'gamno', '190'),
-- ('1888792854', 'bhindi', '0'),
-- ('2219974156', 'gamno', '250'),
-- ('2238192122', 'bhindi', '50'),
-- ('2551665567', 'gamno', '45'),
-- ('2675643549', 'gamno', '220'),
-- ('2768386819', 'bhindi', '0'),
-- ('2893493143', 'bhindi', '35'),
-- ('3665741193', 'prinsu', '450'),
-- ('3895817136', 'bhindi', '95'),
-- ('4263368131', 'bhindi', '320'),
-- ('4341967827', 'bhindi', '310'),
-- ('5253738687', 'bhindi', '25'),
-- ('5352243175', 'bhindi', '0'),
-- ('5574275354', 'gamno', '190'),
-- ('5575134452', 'bhindi', '750'),
-- ('5912699114', 'bhindi', '25'),
-- ('6257984332', 'bhindi', '600'),
-- ('6421236639', 'bhindi', '245'),
-- ('7298857973', 'bhindi', '220'),
-- ('7368968344', 'prinsu', '330'),
-- ('7487662791', 'earth', '205'),
-- ('7675727537', 'bhindi', '310'),
-- ('7994827396', 'shinu', '350'),
-- ('9214819949', 'bhindi', '200'),
-- ('9216979697', 'bhindi', '270'),
-- ('9313972351', 'bhindi', '220'),
-- ('9431542366', 'gamno', '125'),
-- ('9898569823', 'bhindi', '210'),
-- ('9938127417', 'bhindi', '0');

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `auth_group`
-- --
-- ALTER TABLE `auth_group`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

-- --
-- -- Indexes for table `auth_group_permissions`
-- --
-- ALTER TABLE `auth_group_permissions`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

-- --
-- -- Indexes for table `auth_permission`
-- --
-- ALTER TABLE `auth_permission`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

-- --
-- -- Indexes for table `auth_user`
-- --
-- ALTER TABLE `auth_user`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

-- --
-- -- Indexes for table `auth_user_groups`
-- --
-- ALTER TABLE `auth_user_groups`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

-- --
-- -- Indexes for table `auth_user_user_permissions`
-- --
-- ALTER TABLE `auth_user_user_permissions`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

-- --
-- -- Indexes for table `chef_chef`
-- --
-- ALTER TABLE `chef_chef`
--   ADD PRIMARY KEY (`chefid`);

-- --
-- -- Indexes for table `client_customer`
-- --
-- ALTER TABLE `client_customer`
--   ADD PRIMARY KEY (`username`);

-- --
-- -- Indexes for table `client_item`
-- --
-- ALTER TABLE `client_item`
--   ADD PRIMARY KEY (`itemno`);

-- --
-- -- Indexes for table `client_orders`
-- --
-- ALTER TABLE `client_orders`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `django_admin_log`
-- --
-- ALTER TABLE `django_admin_log`
--   ADD PRIMARY KEY (`id`), ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

-- --
-- -- Indexes for table `django_content_type`
-- --
-- ALTER TABLE `django_content_type`
--   ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

-- --
-- -- Indexes for table `django_migrations`
-- --
-- ALTER TABLE `django_migrations`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- Indexes for table `django_session`
-- --
-- ALTER TABLE `django_session`
--   ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

-- --
-- -- Indexes for table `paypal_ipn`
-- --
-- ALTER TABLE `paypal_ipn`
--   ADD PRIMARY KEY (`id`), ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

-- --
-- -- Indexes for table `prog_admin`
-- --
-- ALTER TABLE `prog_admin`
--   ADD PRIMARY KEY (`name`);

-- --
-- -- Indexes for table `prog_orderdetails`
-- --
-- ALTER TABLE `prog_orderdetails`
--   ADD PRIMARY KEY (`orderid`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `auth_group`
-- --
-- ALTER TABLE `auth_group`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- AUTO_INCREMENT for table `auth_group_permissions`
-- --
-- ALTER TABLE `auth_group_permissions`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- AUTO_INCREMENT for table `auth_permission`
-- --
-- ALTER TABLE `auth_permission`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
-- --
-- -- AUTO_INCREMENT for table `auth_user`
-- --
-- ALTER TABLE `auth_user`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- AUTO_INCREMENT for table `auth_user_groups`
-- --
-- ALTER TABLE `auth_user_groups`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- AUTO_INCREMENT for table `auth_user_user_permissions`
-- --
-- ALTER TABLE `auth_user_user_permissions`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- AUTO_INCREMENT for table `client_orders`
-- --
-- ALTER TABLE `client_orders`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=207;
-- --
-- -- AUTO_INCREMENT for table `django_admin_log`
-- --
-- ALTER TABLE `django_admin_log`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- AUTO_INCREMENT for table `django_content_type`
-- --
-- ALTER TABLE `django_content_type`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
-- --
-- -- AUTO_INCREMENT for table `django_migrations`
-- --
-- ALTER TABLE `django_migrations`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
-- --
-- -- AUTO_INCREMENT for table `paypal_ipn`
-- --
-- ALTER TABLE `paypal_ipn`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
-- --
-- -- Constraints for dumped tables
-- --

-- --
-- -- Constraints for table `auth_group_permissions`
-- --
-- ALTER TABLE `auth_group_permissions`
-- ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
-- ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

-- --
-- -- Constraints for table `auth_permission`
-- --
-- ALTER TABLE `auth_permission`
-- ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

-- --
-- -- Constraints for table `auth_user_groups`
-- --
-- ALTER TABLE `auth_user_groups`
-- ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
-- ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

-- --
-- -- Constraints for table `auth_user_user_permissions`
-- --
-- ALTER TABLE `auth_user_user_permissions`
-- ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
-- ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

-- --
-- -- Constraints for table `django_admin_log`
-- --
-- ALTER TABLE `django_admin_log`
-- ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
-- ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN oKEY (`user_id`) REFERENCES `auth_user` (`id`);

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
