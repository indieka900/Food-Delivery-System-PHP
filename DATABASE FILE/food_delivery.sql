-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 01:24 PM
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
-- Database: `food_delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'ccbd', '0d89ec971a7bcfe26d68c177a9d53334', 'admin@gmail.com', '', '2023-02-22 07:18:13'),
(3, 'admin', 'admin@gmail.com', 'admin@gmail.com', '', '2023-08-12 11:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Yomari', 'Yomari, a traditional Nepali sweet dish, is typically made using rice flour dough filled with a mixture of jaggery (unrefined sugar) and sesame seeds or grated coconut.', 200.00, '64d8badb614ef.png'),
(2, 1, 'Pizza', 'Popular toppings often include locally sourced vegetables like bell peppers, onions, tomatoes, and sometimes even traditional ingredients like paneer (Indian cottage cheese) or yak meat. ', 400.00, '64d8ba2ec9c46.png'),
(17, 7, 'Burger', ' The patty, often made from ground meat like chicken, beef, or vegetables like potatoes, is the central filling.', 250.00, '64d8c3612f8bc.png'),
(19, 6, 'Dal Bhat Tarkari', 'Dal Bhat Tarkari in Nepal is typically served on a stainless steel plate or tray called \"thali,\" with rice (bhat), lentil soup (dal), and a variety of vegetable curries (tarkari).', 350.00, '64d8c71455f12.png'),
(20, 5, 'Non Veg Thali', 'A Non-Veg Thali in Nepal typically includes materials such as chicken or mutton curry, rice, lentils, vegetables, pickles, and roti (flatbread).', 350.00, '64d8ca612d2dd.png'),
(21, 5, ' Masala Fish', ' Fish dishes in Nepal are often prepared using fresh fish, spices, and herbs like turmeric, cumin, and cilantro, resulting in flavorful and aromatic meals.', 400.00, '64d8cb4ac22af.jpg'),
(23, 8, 'Tandoori Momo', 'Tandoori Momo, Veg Or Non Veg In Red And Cream Sauce, Served With Sauce.', 350.00, '64d8d33d5a87a.png'),
(24, 8, 'Veg MoMo', 'A steamed dumpling filled with a flavorful mixture of vegetables, wrapped in a delicate dough.', 150.00, '64d8d474491c7.png'),
(25, 10, 'Omelette', 'Quick and versatile dish made by whisking eggs and cooking them with various fillings.', 150.00, '64d8d90c49844.png'),
(26, 10, 'Matar Paneer', 'Matar Paneer is a classic Indian dish featuring soft paneer (Indian cottage cheese) cubes cooked in a rich tomato-based gravy along with green peas.', 250.00, '64d8d8f407a5c.png'),
(27, 9, 'Burger and Sandwich', 'Beautiful burgers sandwiches salads and steaks.', 350.00, '64d8db7bb23ad.png'),
(28, 10, 'Chipo', 'New and good potato chips', 150.00, '65fd4406212eb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `p_id` int(11) NOT NULL,
  `o_id` int(222) NOT NULL,
  `id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(18, 28, 'in process', 'Wait for some time...', '2023-08-13 13:41:13'),
(19, 29, 'closed', 'Order is delivered.', '2023-08-13 14:29:56'),
(20, 30, 'rejected', 'Order after one hrs.', '2023-08-13 14:35:40'),
(21, 31, 'closed', 'Ordered is successfully delivered.', '2023-08-14 01:54:50'),
(22, 33, 'closed', 'Successfully Delivered', '2023-08-14 16:32:11'),
(23, 34, 'closed', 'Order has been delivered.', '2023-08-15 09:14:26'),
(24, 38, 'closed', 'Order has been delivered.', '2023-08-18 06:48:37'),
(25, 39, 'rejected', 'Ordered has been cancelled.', '2023-08-18 08:34:51'),
(26, 35, 'closed', 'Ordered has been delivered.', '2023-08-18 08:36:00'),
(27, 36, 'in process', 'Order is processing so wait for sometimes...', '2023-08-18 08:37:47'),
(28, 40, 'closed', 'order has been delivered.', '2023-08-18 09:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 1, 'Fire And Ice Pizzeria', 'fireicep@mail.com', '9823023982', 'https://www.fireandicepizzeria.com', '9am', '7pm', 'mon-sat', ' 219 Sanchyakosh Bhawan, Tridevi Marg, Thamel, Kathmandu 44600, Nepal. ', '64d88b94a8eb6.png', '2023-08-13 07:51:48'),
(3, 3, 'Bao Xuan - Flavours of China', 'nanxiangbao45@mail.com', '+977 1-4273999', 'https://www.tripadvisor.com/', '8am', '8pm', 'mon-sat', 'Soaltee Kathmandu, Kathmandu 44600', '64d898fb0bca6.png', '2023-08-13 08:48:59'),
(5, 1, 'Third Eye Restaurant', 'info@thirdeye.com.np', '+9771-5360289', 'https://www.thirdeye.com.np', '9am', '10pm', 'Mon-Sat', 'J.P Road, Thamel Kathmandu, Nepal', '64d893eeddd68.png', '2023-08-13 08:27:26'),
(6, 1, 'Bhojan Griha', 'grihabhojan1@gmail.com', '+977 1 4520169', 'https://www.bhojangriha.com/', '8am', '8pm', 'Mon-Sat', 'Dillibazar, Kathmandu, Nepal', '64d8a456e2c1a.png', '2023-08-13 09:37:26'),
(7, 1, 'Cafe Soma', 'soma12@gmail.com', '9775528732', 'https://foursquare.com/v/caf%C3%A9-soma/4c870df851ada1cd4b3c4510', '8am', '7pm', 'Mon-Sat', 'Patan, Kathmandu', '64d8a7b2c73a2.png', '2023-08-13 09:51:46'),
(8, 2, 'Thamel Kitchen', 'thamel@gmail.com', '+977 980-1971643', 'https://www.thamelkitchen.com/', '6am', '10pm', 'Mon-Sat', 'Manakamana Marg, Kathmandu', '64d8abc7e151c.png', '2023-08-13 10:09:11'),
(9, 4, 'Big Daddy Burgers and Steak', 'bigdaddy09@gmail.com', '9807343434', 'https://www.bigdaddy.com/', '8am', '9pm', 'Mon-Sat', 'Tridevi Marg, Thamel, Kathmandu 44600 Nepal', '64d8b06861842.png', '2023-08-13 10:28:56'),
(10, 0, 'Western T', 'western', '+977 984-6081546', 'https://www.westerntandoori.com', '--Select your Hours--', '--Select your Hours--', '--Select your Days--', '  Voi, Kenya', '65fc4c2eb9b93.jpg', '2024-03-21 15:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Nepalese', '2023-08-13 14:49:14'),
(2, 'Indian', '2023-08-13 06:52:52'),
(3, 'Chinese', '2021-04-07 08:45:25'),
(4, 'Nigerian', '2024-03-21 15:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(11, 'Pushpa', 'Pushpa', 'Raj', 'pushpa@gmail.com', '9807898989', 'd757ea3ffd649527ae38968421daf677', 'Balkumari, lalitpur', 1, '2023-08-14 06:58:14'),
(12, 'Dipesh', 'Dipesh', 'Mahato', 'dip@gmail.com', '9803456982', 'de1708c937d7f6a60df0285ddba7369b', 'Balkhu', 1, '2023-08-14 16:26:38'),
(13, 'joseph123', 'Joseph', 'Indieka', 'jose@jose.com', '07123123123', 'cb07901c53218323c4ceacdea4b23c98', 'Kisumu', 1, '2024-03-21 13:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(31, 10, ' Masala Fish', 1, 400.00, 'closed', '2023-08-14 01:54:50'),
(33, 12, 'Dal Bhat Tarkari', 1, 350.00, 'closed', '2023-08-14 16:32:11'),
(34, 9, 'Dal Bhat Tarkari', 1, 350.00, 'closed', '2023-08-15 09:14:26'),
(35, 11, 'Yomari', 2, 200.00, 'closed', '2023-08-18 08:36:00'),
(36, 11, 'Pizza', 1, 400.00, 'in process', '2023-08-18 08:37:47'),
(37, 11, 'Burger', 1, 250.00, NULL, '2023-08-18 06:47:41'),
(38, 11, 'Matar Paneer', 1, 250.00, 'closed', '2023-08-18 06:48:37'),
(39, 11, 'Burger and Sandwich', 1, 350.00, 'rejected', '2023-08-18 08:34:51'),
(40, 11, 'Burger and Sandwich', 1, 350.00, 'closed', '2023-08-18 09:37:50'),
(41, 11, 'Burger', 1, 250.00, NULL, '2023-08-19 10:56:41'),
(43, 13, 'Yomari', 1, 200.00, NULL, '2024-03-21 14:37:57'),
(44, 13, 'Burger', 1, 250.00, NULL, '2024-03-21 14:37:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
