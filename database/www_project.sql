-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 11:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) NOT NULL,
  `book_title` varchar(60) DEFAULT NULL,
  `book_author` varchar(60) DEFAULT NULL,
  `book_image` varchar(40) DEFAULT NULL,
  `book_descr` text DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('128-0-321-94786-19', 'Book Nine', 'Author Four', 'book_10.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem optio facere quas! Aperiam obcaecati tempora numquam, voluptatibus saepe veritatis quidem, placeat aliquam omnis accusamus eos unde possimus, exercitationem ipsa accusantium. Quae repellat magnam laboriosam aut, placeat corrupti nobis commodi neque?', '30.00', 5),
('978-0-321-9344-12', 'Book Eight', 'Author two', 'book_12.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem optio facere quas! Aperiam obcaecati tempora numquam, voluptatibus saepe veritatis quidem, placeat aliquam omnis accusamus eos unde possimus, exercitationem ipsa accusantium. Quae repellat magnam laboriosam aut, placeat corrupti nobis commodi neque?', '30.00', 6),
('978-0-321-94786-1', 'Book Three', 'Author two', 'book_14.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor harum cumque in expedita molestias ex dolore amet, unde architecto, nulla voluptate quasi a quibusdam recusandae quidem quae voluptatem. Recusandae nisi fuga dolorem officia, necessitatibus eos. Iste quis ab voluptatum nisi sequi? Non eligendi doloremque quod fuga distinctio maxime officia nulla.', '15.00', 2),
('978-0-321-94786-19', 'Book One', 'Author One', 'book_7.jpg', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolor harum cumque in expedita molestias ex dolore amet, unde architecto, nulla voluptate quasi a quibusdam recusandae quidem quae voluptatem. Recusandae nisi fuga dolorem officia, necessitatibus eos. Iste quis ab voluptatum nisi sequi? Non eligendi doloremque quod fuga distinctio maxime officia nulla.', '20.00', 6),
('978-0-321-94786-388', 'Book Seven', 'Author One', 'book_6.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem optio facere quas! Aperiam obcaecati tempora numquam, voluptatibus saepe veritatis quidem, placeat aliquam omnis accusamus eos unde possimus, exercitationem ipsa accusantium. Quae repellat magnam laboriosam aut, placeat corrupti nobis commodi neque?', '20.00', 6),
('978-0-321-94786-7', 'Book Four', 'Author Four', 'book_5.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem optio facere quas! Aperiam obcaecati tempora numquam, voluptatibus saepe veritatis quidem, placeat aliquam omnis accusamus eos unde possimus, exercitationem ipsa accusantium. Quae repellat magnam laboriosam aut, placeat corrupti nobis commodi neque?', '40.00', 4),
('978-0-321-94786-70', 'Book Five', 'Author three', 'book_3.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem optio facere quas! Aperiam obcaecati tempora numquam, voluptatibus saepe veritatis quidem, placeat aliquam omnis accusamus eos unde possimus, exercitationem ipsa accusantium. Quae repellat magnam laboriosam aut, placeat corrupti nobis commodi neque?', '20.00', 6),
('978-0-3212-94786-12', 'Book Six', 'Author one', 'book_2.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem optio facere quas! Aperiam obcaecati tempora numquam, voluptatibus saepe veritatis quidem, placeat aliquam omnis accusamus eos unde possimus, exercitationem ipsa accusantium. Quae repellat magnam laboriosam aut, placeat corrupti nobis commodi neque?', '60.00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(30) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `country` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(1, 'a', 'a', 'a', 'a', 'a'),
(2, 'b', 'b', 'b', 'b', 'b'),
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'Mutwakil', 'Alawha Mall', 'Khartoum', '11111', 'Sudan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `ship_name` char(60) NOT NULL,
  `ship_address` char(80) NOT NULL,
  `ship_city` char(30) NOT NULL,
  `ship_zip_code` char(10) NOT NULL,
  `ship_country` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(1, 1, '60.00', '2015-12-03 13:30:12', 'a', 'a', 'a', 'a', 'a'),
(2, 2, '60.00', '2015-12-03 13:31:12', 'b', 'b', 'b', 'b', 'b'),
(3, 3, '20.00', '2015-12-03 19:34:21', 'test', '123 test', '12121', 'test', 'test'),
(4, 1, '20.00', '2015-12-04 10:19:14', 'a', 'a', 'a', 'a', 'a'),
(5, 4, '40.00', '2023-02-25 20:57:00', 'Mutwakil', 'Alawha Mall', 'Khartoum', '11111', 'Sudan');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '978-1-44937-019-0', '20.00', 1),
(5, '978-0-7303-1484-4', '20.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'Wrox'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
