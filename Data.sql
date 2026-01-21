-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2026 at 11:46 AM
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
-- Database: `griselda_musicdb`
--
-- DROP DATABASE IF EXISTS `griselda_musicdb`;
-- CREATE DATABASE IF NOT EXISTS `griselda_musicdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `griselda_musicdb`;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`ArtistID`, `Name`, `Country`) VALUES
(1, 'Pink Floyd', 'UK'),
(2, 'The Beatles', 'UK'),
(3, 'Led Zeppelin', 'UK'),
(4, 'Nirvana', 'USA'),
(5, 'Fleetwood Mac', 'UK/USA'),
(6, 'Daft Punk', 'France'),
(7, 'Miles Davis', 'USA'),
(8, 'Radiohead', 'UK'),
(9, 'Kendrick Lamar', 'USA'),
(10, 'Taylor Swift', 'USA'),
(11, 'Black Sabbath', 'UK'),
(12, 'Abba', 'Sweden'),
(13, 'Tame Impala', 'Australia'),
(14, 'Arctic Monkeys', 'UK'),
(15, 'Amy Winehouse', 'UK'),
(16, 'Metallica', 'USA'),
(17, 'Queen', 'UK'),
(18, 'The Cure', 'UK'),
(19, 'Wu-Tang Clan', 'USA'),
(20, 'Joni Mitchell', 'Canada'),
(21, 'David Bowie', 'UK');

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`AlbumID`, `ArtistID`, `Title`, `ReleaseYear`, `Label`) VALUES
(1, 1, 'The Dark Side of the Moon', 1973, 'Harvest'),
(2, 1, 'The Wall', 1979, 'Columbia'),
(3, 2, 'Abbey Road', 1969, 'Apple'),
(4, 3, 'Led Zeppelin IV', 1971, 'Atlantic'),
(5, 4, 'Nevermind', 1991, 'DGC'),
(6, 5, 'Rumours', 1977, 'Warner'),
(7, 6, 'Discovery', 2001, 'Virgin'),
(8, 6, 'Random Access Memories', 2013, 'Columbia'),
(9, 7, 'Kind of Blue', 1959, 'Columbia'),
(10, 8, 'OK Computer', 1997, 'Parlophone'),
(11, 9, 'To Pimp a Butterfly', 2015, 'Interscope'),
(12, 10, 'Midnights', 2022, 'Republic'),
(13, 11, 'Paranoid', 1970, 'Vertigo'),
(14, 12, 'Arrival', 1976, 'Polar'),
(15, 13, 'Currents', 2015, 'Modular'),
(16, 14, 'AM', 2013, 'Domino'),
(17, 15, 'Back to Black', 2006, 'Island'),
(18, 16, 'Master of Puppets', 1986, 'Elektra'),
(19, 17, 'A Night at the Opera', 1975, 'EMI'),
(20, 18, 'Disintegration', 1989, 'Fiction'),
(21, 19, 'Enter the Wu-Tang', 1993, 'Loud'),
(22, 20, 'Blue', 1971, 'Reprise');

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `ShippingAddress`) VALUES
(1, 'John', 'Doe', 'john@example.com', '123 Maple St'),
(2, 'Jane', 'Smith', 'jane@example.com', '456 Oak Ave'),
(3, 'Robert', 'Brown', 'rob.b@example.com', '789 Pine Rd'),
(4, 'Emily', 'Davis', 'emily.d@example.com', '101 Cedar Ln'),
(5, 'Michael', 'Wilson', 'mike.w@example.com', '202 Birch Blvd'),
(6, 'Sarah', 'Miller', 'sarah.m@example.com', '303 Elm St'),
(7, 'David', 'Moore', 'dave.m@example.com', '404 Walnut Ct'),
(8, 'Anna', 'Taylor', 'anna.t@example.com', '505 Cherry Dr'),
(9, 'Chris', 'Anderson', 'chris.a@example.com', '606 Ash Way'),
(10, 'Lisa', 'Thomas', 'lisa.t@example.com', '707 Poplar Pl'),
(11, 'Kevin', 'Jackson', 'kevin.j@example.com', '808 Spruce Ter'),
(12, 'Laura', 'White', 'laura.w@example.com', '909 Willow Dr'),
(13, 'Brian', 'Harris', 'brian.h@example.com', '111 Aspen Ln'),
(14, 'Amy', 'Martin', 'amy.m@example.com', '222 Hickory Rd'),
(15, 'Jason', 'Thompson', 'jason.t@example.com', '333 Maplewood Dr'),
(16, 'Megan', 'Garcia', 'megan.g@example.com', '444 Redwood Ct'),
(17, 'Eric', 'Martinez', 'eric.m@example.com', '555 Sycamore St'),
(18, 'Julie', 'Robinson', 'julie.r@example.com', '666 Ironwood Dr'),
(19, 'Scott', 'Clark', 'scott.c@example.com', '777 Dogwood Ln'),
(20, 'Kate', 'Lewis', 'kate.l@example.com', '888 Magnolia Blvd');

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`SKU`, `AlbumID`, `Format`, `Condition_Status`, `Price`, `StockQuantity`, `Weight_Grams`) VALUES
(1, 1, 'Vinyl', 'New', 34.99, 15, 500),
(2, 1, 'CD', 'New', 12.99, 20, 100),
(3, 2, 'Vinyl', 'Used', 45.00, 2, 600),
(4, 3, 'Vinyl', 'New', 29.99, 10, 500),
(5, 4, 'Vinyl', 'New', 25.50, 8, 480),
(6, 4, 'Cassette', 'New', 15.00, 5, 60),
(7, 5, 'Vinyl', 'New', 32.00, 25, 500),
(8, 6, 'Vinyl', 'New', 38.00, 12, 550),
(9, 7, 'Vinyl', 'New', 42.00, 10, 550),
(10, 8, 'CD', 'Used', 8.50, 15, 100),
(11, 9, 'Vinyl', 'New', 30.00, 10, 500),
(12, 10, 'Vinyl', 'New', 45.00, 6, 520),
(13, 11, 'Vinyl', 'New', 39.99, 20, 500),
(14, 11, 'Cassette', 'New', 18.00, 4, 60),
(15, 12, 'Vinyl', 'Used', 20.00, 3, 480),
(16, 13, 'Vinyl', 'New', 28.00, 14, 500),
(17, 14, 'CD', 'New', 14.00, 30, 100),
(18, 15, 'Vinyl', 'New', 31.00, 9, 500),
(19, 16, 'Vinyl', 'New', 27.50, 11, 480),
(20, 17, 'Box Set', 'New', 85.00, 3, 1200),
(21, 18, 'Vinyl', 'New', 33.00, 7, 500),
(22, 19, 'Vinyl', 'New', 36.00, 5, 500);

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SaleID`, `CustomerID`, `SKU`, `SaleDate`, `QuantitySold`, `TotalAmount`) VALUES
(1, 1, 1, '2026-01-15 13:41:15', 1, 34.99),
(2, 2, 2, '2026-01-15 13:41:15', 2, 25.98),
(3, 3, 3, '2026-01-15 13:41:15', 1, 45.00),
(4, 4, 4, '2026-01-15 13:41:15', 1, 29.99),
(5, 5, 5, '2026-01-15 13:41:15', 1, 25.50),
(6, 6, 7, '2026-01-15 13:41:15', 1, 32.00),
(7, 7, 8, '2026-01-15 13:41:15', 1, 38.00),
(8, 8, 9, '2026-01-15 13:41:15', 1, 42.00),
(9, 9, 10, '2026-01-15 13:41:15', 3, 25.50),
(10, 10, 11, '2026-01-15 13:41:15', 1, 30.00),
(11, 11, 13, '2026-01-15 13:41:15', 1, 39.99),
(12, 12, 14, '2026-01-15 13:41:15', 2, 36.00),
(13, 13, 15, '2026-01-15 13:41:15', 1, 20.00),
(14, 14, 16, '2026-01-15 13:41:15', 1, 28.00),
(15, 15, 17, '2026-01-15 13:41:15', 1, 14.00),
(16, 16, 18, '2026-01-15 13:41:15', 1, 31.00),
(17, 17, 19, '2026-01-15 13:41:15', 1, 27.50),
(18, 18, 20, '2026-01-15 13:41:15', 1, 85.00),
(19, 19, 21, '2026-01-15 13:41:15', 1, 33.00),
(20, 20, 22, '2026-01-15 13:41:15', 1, 36.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
