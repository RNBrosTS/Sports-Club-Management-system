-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 03:13 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(10) NOT NULL,
  `CustomerName` varchar(25) DEFAULT NULL,
  `ContactName` varchar(25) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `PostalCode` int(10) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(101, 'Tushar Basak', 'Dipu', 'road 11, block-C, 390/A', 'Dhaka', 1203, 'Bangladesh'),
(102, 'Kazi Rafat', 'Mclean', 'road 12, block-D, 330/D', 'Dhaka', 1203, 'Bangladesh'),
(103, 'Israt Jahan', 'Iva', 'Jakarta Street', 'Jakarta', 3007, 'Indonesia'),
(104, 'Dr. Milton ', 'Tushar', '527/A, Cumilla', 'Cumilla', 1305, 'Bangladesh'),
(105, 'Ahamed Nahian', 'Depro', '102/F,Road-4A', 'Sylhet', 4006, 'Bangladesh'),
(106, 'Taarak Mehta', 'Jethalal', 'Powder Gali,Gokuldham Society', 'Mumbai', 1007, 'India'),
(107, 'Popatlal', 'Sodhi', 'Powder Gali,Gokuldham Society', 'Mumbai', 1007, 'India'),
(108, 'Suzuki', 'Nakamura', ' 513,Meiji Shinto', 'Tokyo', 1367, 'Japan');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderdetailID` int(5) NOT NULL,
  `OrderID` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`OrderdetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 10308, 1, 12),
(2, 10308, 3, 100),
(3, 10309, 3, 20),
(4, 10308, 2, 3),
(5, 10311, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) NOT NULL,
  `CustomerID` int(10) NOT NULL,
  `OrderDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`) VALUES
(10308, 101, '2024-03-12'),
(10309, 101, '2024-03-12'),
(10310, 102, '2024-03-10'),
(10311, 104, '2024-03-07'),
(10312, 102, '2024-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `PersonID` int(15) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Age` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`PersonID`, `FirstName`, `LastName`, `Age`) VALUES
(1001, 'Arnob', 'Dey', 25),
(1002, 'Omar', 'Faruk', 25),
(1003, 'Rafat', 'Haameem', 25),
(1004, 'Mahmudul', 'Hasan', 26),
(1005, 'Sunjaree', 'Zulfiker', 24);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(5) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `SupplierID` int(10) DEFAULT NULL,
  `CategoryID` int(10) DEFAULT NULL,
  `Unit` varchar(100) DEFAULT NULL,
  `Price` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Rice', 1, 2, '500 Kg', 20000),
(2, 'Apple', 3, 1, '100 boxes', 25000),
(3, 'Soft Drinks', 1, 3, '1000 bottles', 15500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderdetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`PersonID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderdetailID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10313;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `PersonID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
