-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2022 at 11:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Rockstar Games'),
(2, 'Nintendo'),
(3, 'Activision Blizzard'),
(4, 'Electronics Arts'),
(5, 'Take Two Interactive'),
(6, 'Naughty Dog');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1),
(147, 33, '192.168.64.1', 0, 1),
(150, 1, '192.168.64.1', 0, 1),
(151, 17, '192.168.64.1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Action Games'),
(2, 'Adventure Games'),
(3, 'RPG Games'),
(4, 'Sports Games'),
(5, 'Arcade Games'),
(6, 'Fantasy/Fiction Games'),
(7, 'Simulator Games');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'apoorvsharma54@gmail.com'),
(5, 'ajaykarthick1998@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'GTA The Trilogy', 5000, 'Grand Theft Auto', '1.png', 'Video Game'),
(2, 1, 3, 'Red Dead Redemption 1', 25000, 'Video Game', '2.jpg', 'Blu-Ray Disc'),
(3, 1, 3, 'Red Dead Redemption 2', 30000, 'Video Games', '3.jpg', 'Digital Edition'),
(4, 1, 3, 'Grand Theft Auto 5', 32000, 'Video Game', '4.jpg', 'Digital Edition'),
(5, 1, 2, 'LA Noire', 10000, 'Video Game', '5.jpg', 'Blu-Ray Disc'),
(6, 1, 1, 'Bully', 35000, 'Video Game', '6.jpg', 'Disc'),
(7, 1, 1, 'Midnight Club', 50000, 'Video Game', '7.jpg', 'Digital'),
(8, 1, 4, 'Max Payne 3', 40000, 'Video Game', '8.png', 'Disc'),
(9, 1, 3, 'Animal Crossing New Horizons', 12000, 'Video Game', '9.png', 'Video Game'),
(10, 2, 6, 'Stardew Valley', 1000, 'Disc', '10.jpg', 'Video Game'),
(11, 2, 6, 'Pokemon', 1200, 'Disc', '11.png', 'Video Game'),
(12, 2, 6, 'Metroid Dread', 1500, 'Video Game', '12.png', 'Disc'),
(13, 2, 6, 'Hades', 1200, 'Video Game', '13.jpg', 'Digital'),
(14, 2, 6, 'Tetris Effect', 1400, 'Video Game', '14.png', 'Disc'),
(15, 2, 6, 'Mario Bros', 1500, 'Video Game', '15.jpg', 'Disc'),
(16, 3, 6, 'Celeste', 600, 'Video Game', '16.png', 'Disc'),
(17, 3, 6, 'Call of Duty Black Ops', 1000, 'Video game', '17.jpg\r\n', 'disc'),
(19, 3, 6, 'Blur', 3000, 'Video Game', '18.png', 'disc'),
(20, 3, 6, 'Prototype', 1600, 'Disc', '19.jpg', 'disc'),
(21, 3, 6, 'Call of Duty WW2', 800, 'Disc', '20.png', 'disc'),
(22, 4, 6, 'Spiderman Edge of Time', 1300, 'Digital', '21.png\r\n', 'Disc'),
(23, 4, 6, 'Golden Eye 007', 1900, 'Disc', '22.png', 'Disc'),
(24, 4, 6, 'Doom Eternal', 700, 'Digital', '23.jpeg', 'Disc'),
(25, 4, 6, 'Sekiro Shadow Die Twice', 750, 'Disc', '24.jpeg', 'Digital'),
(27, 4, 6, 'Knockout City', 690, 'Game', '25.png', 'Disc'),
(32, 5, 0, 'Rocket Arena', 2500, 'Disc', '26.jpeg', 'game'),
(33, 6, 2, 'Madden NFL 21', 35000, 'Game', '27.jpg', 'Disc'),
(34, 6, 4, 'Battlefield 2042', 1000, 'Game', '28.jpeg', 'Digital'),
(35, 6, 0, 'FIFA 22', 6000, 'Disc', '29.jpeg', 'Disc'),
(36, 6, 5, 'NFS Heat', 1500, 'Game', '30.jpeg', 'Digital'),
(37, 6, 5, 'NHL 22', 20000, 'Disc', '31.png', 'Digital'),
(38, 6, 4, 'Apex Legends', 3500, 'Digital', '32.jpeg', 'Disc'),
(39, 6, 5, 'Bishock Burial at Sea', 2500, 'Game', '33.png', 'Digital'),
(40, 2, 6, 'WWE 2K', 3000, 'Game', '34.jpg', 'Disc'),
(45, 1, 2, 'Civilization', 10000, 'Digital', '35.jpg', 'Disc'),
(46, 1, 2, 'NBA 2K', 10000, 'Video Game', '36.png', 'Digital'),
(47, 4, 6, 'Mafia', 650, 'Game', '37.jpeg', 'Disc'),
(48, 1, 7, 'Borderlands', 250, 'Video Game', '38.jpg', 'Digital'),
(49, 1, 7, 'PGA Tour 2K', 250, 'Game', '39.jpg', 'Disc'),
(50, 3, 6, 'XCOM', 350, 'Game', '40.jpeg', 'Digital'),
(51, 3, 6, 'Trials of Mana', 270, 'Game', '46.jpg', 'Disc'),
(52, 3, 6, 'Kingdom Hearts Melody of Memory ', 453, 'Digital', '42.jpg', 'Disc'),
(53, 3, 6, 'Bravely Default 2', 220, 'Video Game', '43.jpg', 'Digital'),
(54, 3, 6, 'Balan Wonderland', 290, 'Game', '44.png', 'Digital'),
(55, 3, 6, 'SaGa Frontier', 259, 'Digital', '42.jpg', 'Disc'),
(56, 3, 6, 'Legend of Mana', 299, 'Video Game', '46.jpg', 'Blu Ray'),
(57, 3, 6, 'Neo The World Ens with You', 260, 'Game', '47.jpeg', 'Disc'),
(58, 3, 6, 'Voice of Cards The Isle Dragon Roars', 350, 'Digital', '48.jpg', 'Disc'),
(59, 3, 6, 'Last of Us 1', 855, 'Video Game', '49.jpg', 'Disc'),
(60, 3, 6, 'Last of Us 2', 150, 'Video Game', '49.jpg', 'Digital'),
(61, 3, 6, 'Unchartered 1', 215, 'Digital', '50.jpeg', 'Disc'),
(62, 3, 6, 'Unchartered 2', 299, 'Game', '50.jpeg', 'Digital'),
(63, 3, 6, 'Unchartered 3', 550, 'Digital', '50.jpeg', 'Disc'),
(64, 3, 6, 'Unchartered 4', 460, 'Game', '50.jpeg', 'Blue-Ray'),
(65, 3, 6, 'Crash and Bandicoot', 470, 'Video Game', '54.png', 'Digital'),
(66, 3, 6, 'Jak and Dexter', 480, 'Digital', '55.png', 'Disc'),
(67, 3, 6, 'Forza Horizon 5', 360, 'Digital', '56.jpg', 'Disc'),
(68, 3, 6, 'Halo Infinite', 550, 'Video Game', '57.png', 'Digital'),
(69, 3, 6, 'MS Flight Simulator', 390, 'Game', '58.jpeg', 'Digital'),
(70, 3, 6, 'Minecraft', 399, 'Digital', '60.png', 'Disc'),
(71, 1, 2, 'Gears 5', 5000, 'Game', '59.jpg', 'Blu-Ray'),
(72, 7, 2, 'Age of Empire', 3500, 'Video Game', '61.png', 'Digital'),
(73, 7, 2, 'Bleeding Edge', 3500, 'Digital', '62.png', 'Blu-Ray'),
(74, 1, 1, 'Tomraider', 5500, 'Digital', '63.jpeg', 'Digital'),
(75, 1, 1, 'Spiderman Miles Morales', 5500, 'Video Game', '64.jpg', 'Disc'),
(76, 1, 5, 'Wolverine', 4500, 'Digital', '65.png', 'Blu-Ray'),
(77, 1, 4, 'God of War', 5499, 'Digital', '66.png', 'Disc'),
(78, 1, 5, 'Ghost of Tsushima', 4579, 'Game', '68.jpeg', 'Digital'),
(79, 7, 2, 'Horizon Zero Dawn', 2569, 'Game', '69.jpg', 'Blu-Ray'),
(80, 1, 1, 'Mortal Kombat II', 12343, 'Game', '70.jpg', 'Disc');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
