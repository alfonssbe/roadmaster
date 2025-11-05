-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2025 at 04:19 PM
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
-- Database: `roadmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `allcategory`
--

CREATE TABLE `allcategory` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `thumbnail_url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `updatedBy` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allcategory`
--

INSERT INTO `allcategory` (`id`, `brandId`, `type`, `name`, `slug`, `description`, `thumbnail_url`, `createdAt`, `updatedAt`, `updatedBy`) VALUES
('316790fc-4ef2-4e56-93d5-027787938c8f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'REBORN SERIES', 'reborn-series', 'HOREG HOME AUDIO', '/uploads/others/landing-page4-YX4lOjraGBhbDjLL.avif', '2025-11-05 04:13:13.418', '2025-11-05 04:13:13.418', 'admin'),
('76f9f65a-c461-48ed-83fe-5f153bccbe44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'TROLLEY SPEAKER', 'trolley-speaker', 'MUSIK TANPA BATAS BAWA KEMANA SAJA!', '/uploads/others/landing-page-trolley-Awv4Z0nNDeFzlE2O.avif', '2025-11-05 04:14:49.687', '2025-11-05 04:14:49.687', 'admin'),
('cdb50e0a-bea7-49c8-807f-9f10b4fb7168', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'PARTY SERIES', 'party-series', 'BIKIN PARTYMU MAKIN GA TERLUPAKAN', '/uploads/others/pparty-series-m6LZzJy95bFvlNKK.avif', '2025-11-05 04:04:16.381', '2025-11-05 04:15:35.962', 'admin'),
('d0b96e19-9012-484a-8178-4262cf6ee1a3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'PRO SERIES', 'pro-series', 'LETS GET THE BEAT', '/uploads/others/landing-pro-Yg2jB3w6QPig7O6z.avif', '2025-11-05 04:14:19.798', '2025-11-05 04:14:19.798', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `allproductcategory`
--

CREATE TABLE `allproductcategory` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `categoryId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `type` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allproductcategory`
--

INSERT INTO `allproductcategory` (`id`, `productId`, `categoryId`, `createdAt`, `updatedAt`, `name`, `slug`, `type`) VALUES
('0b28dc15-c1aa-46fd-9fcb-0774c173d5b1', '36817e7f-ff3a-4f04-a994-7ebd755da05c', 'd0b96e19-9012-484a-8178-4262cf6ee1a3', '2025-11-05 14:08:47.988', '2025-11-05 14:08:47.988', 'PRO SERIES', 'pro-series', 'Category'),
('1d3b9d2e-bef1-4632-acde-7efd15eee6c8', '19806ea9-0428-48c3-a3dd-fd4d0ef78f5c', 'cdb50e0a-bea7-49c8-807f-9f10b4fb7168', '2025-11-05 08:37:19.046', '2025-11-05 08:37:19.046', 'PARTY SERIES', 'party-series', 'Category'),
('2e69d7d9-3f95-4bc3-aef0-7992f7edae7f', '003c678b-d866-4986-935e-c954fdd40171', 'cdb50e0a-bea7-49c8-807f-9f10b4fb7168', '2025-11-05 08:37:25.146', '2025-11-05 08:37:25.146', 'PARTY SERIES', 'party-series', 'Category'),
('5db8f1ac-8639-463e-897a-b8d13152be94', '88231cfa-d4bd-4316-a9cb-63831a6321af', 'cdb50e0a-bea7-49c8-807f-9f10b4fb7168', '2025-11-05 08:37:12.385', '2025-11-05 08:37:12.385', 'PARTY SERIES', 'party-series', 'Category'),
('6398034d-4f34-4a6d-9c83-6e22ac019fff', 'cff5b5af-1f17-4c94-9cd3-9dc0844f7e25', '316790fc-4ef2-4e56-93d5-027787938c8f', '2025-11-05 13:54:45.247', '2025-11-05 13:54:45.247', 'REBORN SERIES', 'reborn-series', 'Category'),
('6bce7e20-0a4d-4a47-b02d-03eeb0308a4e', '62ba808e-694b-49e4-9eea-8e0b948eb1bf', 'd0b96e19-9012-484a-8178-4262cf6ee1a3', '2025-11-05 14:02:36.332', '2025-11-05 14:02:36.332', 'PRO SERIES', 'pro-series', 'Category'),
('7a55bbb4-b4ea-420f-a094-e48bbb54aaad', '0fa09eb0-0c9c-4bdd-bb00-b21355e17fa3', '316790fc-4ef2-4e56-93d5-027787938c8f', '2025-11-05 13:54:19.861', '2025-11-05 13:54:19.861', 'REBORN SERIES', 'reborn-series', 'Category'),
('842116f4-7a2c-4ddb-b740-d5bc6d1feb21', 'cd2384aa-0691-4045-84ba-67ac7343ffca', 'd0b96e19-9012-484a-8178-4262cf6ee1a3', '2025-11-05 14:08:33.495', '2025-11-05 14:08:33.495', 'PRO SERIES', 'pro-series', 'Category'),
('86ce1e42-f0a0-475b-a839-608efc6c436f', 'b23d599b-2689-4c67-93ab-fc7302ddc130', '316790fc-4ef2-4e56-93d5-027787938c8f', '2025-11-05 13:54:27.718', '2025-11-05 13:54:27.718', 'REBORN SERIES', 'reborn-series', 'Category'),
('94cc1cc5-5f56-4877-8e0b-1d016a5c39b0', 'c6977d73-716a-4125-8db0-a52058cd2da6', '316790fc-4ef2-4e56-93d5-027787938c8f', '2025-11-05 13:54:35.213', '2025-11-05 13:54:35.213', 'REBORN SERIES', 'reborn-series', 'Category'),
('c7bcd6a9-0042-42a3-9e4d-9e86fb393414', 'a5764541-bdde-4014-9002-ad88fa1b1b9e', 'd0b96e19-9012-484a-8178-4262cf6ee1a3', '2025-11-05 13:54:02.948', '2025-11-05 13:54:02.948', 'PRO SERIES', 'pro-series', 'Category'),
('d51b7a79-a8b3-485d-a6fc-473e6d996c09', '4114d679-0b10-45e5-9769-1b9cd4d442c2', 'd0b96e19-9012-484a-8178-4262cf6ee1a3', '2025-11-05 14:13:23.377', '2025-11-05 14:13:23.377', 'PRO SERIES', 'pro-series', 'Category'),
('d5e8d18b-4b77-40d8-9882-0866d7da13b9', '148a4fc8-74c1-4e6b-8ea0-fc4c8ba25f43', 'd0b96e19-9012-484a-8178-4262cf6ee1a3', '2025-11-05 14:16:08.697', '2025-11-05 14:16:08.697', 'PRO SERIES', 'pro-series', 'Category');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `userId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `userId`, `createdAt`, `updatedAt`) VALUES
('680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Roadmaster', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2024-03-28 07:42:40.393', '2024-09-24 01:37:14.138');

-- --------------------------------------------------------

--
-- Table structure for table `dynamicspecification`
--

CREATE TABLE `dynamicspecification` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `unit` text NOT NULL,
  `priority` varchar(191) NOT NULL DEFAULT '',
  `updatedBy` text NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamicspecificationparent`
--

CREATE TABLE `dynamicspecificationparent` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `priority` varchar(191) NOT NULL DEFAULT '',
  `updatedBy` text NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamicspecificationsubparent`
--

CREATE TABLE `dynamicspecificationsubparent` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `priority` varchar(191) NOT NULL DEFAULT '',
  `updatedBy` text NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_image`
--

CREATE TABLE `featured_image` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `description` text NOT NULL,
  `event_date` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedBy` varchar(191) NOT NULL DEFAULT '',
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `link_placeholder` text NOT NULL DEFAULT '',
  `link_url` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_image`
--

CREATE TABLE `news_image` (
  `id` varchar(191) NOT NULL,
  `newsId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `isFeatured` tinyint(1) NOT NULL DEFAULT 0,
  `isArchived` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `description` text NOT NULL,
  `slug` text NOT NULL,
  `updatedBy` text NOT NULL DEFAULT '',
  `featuredDesc` text NOT NULL DEFAULT '',
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brandId`, `name`, `isFeatured`, `isArchived`, `createdAt`, `updatedAt`, `description`, `slug`, `updatedBy`, `featuredDesc`, `cover_img`) VALUES
('003c678b-d866-4986-935e-c954fdd40171', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 212', 0, 0, '2025-11-05 08:32:17.836', '2025-11-05 08:37:25.157', '<p><strong>Spesifikasi:</strong></p><ul><li><p>Portable Speaker</p></li><li><p>3 Ways Speaker System</p></li><li><p>2 x 12 Inch Subwoofer</p></li><li><p>Rechargeable Battery</p></li><li><p>Free 2 UHF Wireless Mic</p></li><li><p>Input Guitar</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li></ul>', 'party-212', 'admin', '', '/uploads/productcoverimage/party-212-cover.webp'),
('0fa09eb0-0c9c-4bdd-bb00-b21355e17fa3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'KD PRO 212 REBORN Gen 2', 0, 0, '2025-11-05 08:45:39.391', '2025-11-05 13:54:19.863', '<p><strong>Spesifikasi:</strong></p><ul><li><p>2 Ways Speaker System</p></li><li><p>Compression Driver</p></li><li><p>4 x 12 Inch Subwoofer</p></li><li><p>Built in Mixer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>USB, SD Card</p></li><li><p>Free 2 Mic Wireless</p></li><li><p>Input Guitar &amp; Keyboard</p></li><li><p>Input 2 Mic</p></li></ul>', 'kd-pro-212-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/kd-212-reborn-cover.webp'),
('148a4fc8-74c1-4e6b-8ea0-fc4c8ba25f43', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PRO BMX 2020', 0, 0, '2025-11-05 14:14:56.041', '2025-11-05 14:16:08.700', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>2 x 12 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li><li><p>Aux Line</p></li><li><p>2 Input Mic</p></li></ul>', 'pro-bmx-2020', 'admin', '', '/uploads/productcoverimage/pro-bmx-2020-cover.webp'),
('19806ea9-0428-48c3-a3dd-fd4d0ef78f5c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 2800', 0, 0, '2025-11-05 08:36:44.597', '2025-11-05 08:37:19.084', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>2 x 8 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>USB, SD Card</p></li><li><p>2 Mic Input</p></li><li><p>Attractive LED</p></li><li><p>Futuristic Design</p></li></ul>', 'party-2800', 'admin', '', '/uploads/productcoverimage/party-2800-cover.webp'),
('36817e7f-ff3a-4f04-a994-7ebd755da05c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 26', 0, 0, '2025-11-05 14:08:25.371', '2025-11-05 14:08:47.992', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>4 x 6 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li><li><p>Aux Line</p></li><li><p>2 Input Mic</p></li><li><p>Polygonal Design with 180 Degree Surround Effect</p></li></ul>', 'probeat-26', 'admin', '', '/uploads/productcoverimage/probeat-26-cover.webp'),
('4114d679-0b10-45e5-9769-1b9cd4d442c2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PRO BMX 1500', 0, 0, '2025-11-05 14:13:17.521', '2025-11-05 14:13:23.380', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>2 x 15 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li><li><p>Aux Line</p></li><li><p>2 Input Mic</p></li></ul>', 'pro-bmx-1500', 'admin', '', '/uploads/productcoverimage/pro-bmx-1500-cover.webp'),
('62ba808e-694b-49e4-9eea-8e0b948eb1bf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 210', 0, 0, '2025-11-05 14:02:28.866', '2025-11-05 14:02:36.334', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>4 x 10 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li><li><p>Aux Line</p></li><li><p>2 Input Mic</p></li><li><p>Polygonal Design with 180 Degree Surround Effect</p></li></ul>', 'probeat-210', 'admin', '', '/uploads/productcoverimage/probeat-210-cover.webp'),
('88231cfa-d4bd-4316-a9cb-63831a6321af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PARTY 1500', 0, 0, '2025-11-05 07:45:26.139', '2025-11-05 08:37:12.403', '<p><strong>Spesifikasi:</strong></p><ul><li><p>Portable Speaker</p></li><li><p>3 Ways Speaker System</p></li><li><p>2 x 15 inch Subwoofer</p></li><li><p>Rechargeable Battery</p></li><li><p>Free 2 UHF Wireless Mic</p></li><li><p>Input Guitar</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li></ul>', 'party-1500', 'admin', '', '/uploads/productcoverimage/party-1500-cover-1.webp'),
('a5764541-bdde-4014-9002-ad88fa1b1b9e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 212', 0, 0, '2025-11-05 13:53:46.655', '2025-11-05 13:54:02.950', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>4 x 12 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li><li><p>Aux Line</p></li><li><p>2 Input Mic</p></li><li><p>Polygonal Design with 180 Degree Surround Effect</p></li></ul>', 'probeat-212', 'admin', '', '/uploads/productcoverimage/probeat-212-cover.webp'),
('b23d599b-2689-4c67-93ab-fc7302ddc130', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'KD PRO 215 REBORN Gen 2', 0, 0, '2025-11-05 08:49:45.928', '2025-11-05 13:54:27.719', '<p><strong>Spesifikasi:</strong></p><ul><li><p>2 Ways Speaker System</p></li><li><p>Compression Driver</p></li><li><p>4 x 12 Inch Subwoofer</p></li><li><p>Built in Mixer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>USB, SD Card</p></li><li><p>Free 2 Mic Wireless</p></li><li><p>Input Guitar &amp; Keyboard</p></li><li><p>Input 2 Mic</p></li></ul>', 'kd-pro-215-reborn-gen-2', 'admin', '', '/uploads/productcoverimage/kd-215-reborn-cover.webp'),
('c6977d73-716a-4125-8db0-a52058cd2da6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MONSTER 210 REBORN', 0, 0, '2025-11-05 13:37:21.483', '2025-11-05 13:54:35.215', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>4 x 10 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>USB, SD Card</p></li><li><p>Monster Sound</p></li><li><p>Aux Line</p></li></ul>', 'monster-210-reborn', 'admin', '', '/uploads/productcoverimage/monster-210rb-cover.webp'),
('cd2384aa-0691-4045-84ba-67ac7343ffca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PROBEAT 28', 0, 0, '2025-11-05 14:05:35.817', '2025-11-05 14:08:33.497', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>4 x 8 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>Attractive LED</p></li><li><p>Aux Line</p></li><li><p>2 Input Mic</p></li><li><p>Polygonal Design with 180 Degree Surround Effect</p></li></ul>', 'probeat-28', 'admin', '', '/uploads/productcoverimage/probeat-28-cover.webp'),
('cff5b5af-1f17-4c94-9cd3-9dc0844f7e25', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'MONSTER 212 REBORN', 0, 0, '2025-11-05 13:42:08.556', '2025-11-05 13:54:45.249', '<p><strong>Spesifikasi:</strong></p><ul><li><p>3 Ways Speaker System</p></li><li><p>1 Inch Tweeter</p></li><li><p>3 Inch Midrange</p></li><li><p>4 x 12 Inch Subwoofer</p></li><li><p>BT, TWS, FM Radio</p></li><li><p>USB, SD Card</p></li><li><p>Monster Sound</p></li><li><p>Aux Line</p></li></ul>', 'monster-212-reborn', 'admin', '', '/uploads/productcoverimage/monster-212rb-cover.webp');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` varchar(191) NOT NULL,
  `userId` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `brandName` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `userId`, `brandId`, `brandName`) VALUES
('', '25cd8d0d-d185-41e8-9943-fdf1264236f2', 'admin', ''),
('41390b92-af3f-40eb-a021-3515924e6e4d', 'eb644eac-13dc-4ab8-938e-cc3ac2e09c5b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Roadmaster');

-- --------------------------------------------------------

--
-- Table structure for table `specificationconnector`
--

CREATE TABLE `specificationconnector` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `dynamicspecificationParentId` varchar(191) NOT NULL,
  `dynamicspecificationSubParentId` varchar(191) DEFAULT NULL,
  `dynamicspecificationId` varchar(191) NOT NULL,
  `notes` text NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `refresh_token` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `expiredAt` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`, `expiredAt`) VALUES
('25cd8d0d-d185-41e8-9943-fdf1264236f2', 'admin', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$xYxDy6zIa0+RKNnbO77EyQ$8cprXQw0UP+ZsbYBvklz2k+KEhTCNH1pcLfw9mQaN1M', '', '2024-10-04 08:21:24.874', '2024-10-04 08:21:24.874', ''),
('eb644eac-13dc-4ab8-938e-cc3ac2e09c5b', 'Sinar Baja', 'sb2', '$argon2id$v=19$m=65536,t=3,p=4$5Gy0rm61xVOiflnSzWVZAA$OGC51OpJEtWeBfJ/1rKxUYufBl7mXoQJguRKe3chWhg', '', '2025-11-04 06:47:15.855', '2025-11-04 06:47:15.855', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allcategory`
--
ALTER TABLE `allcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AllCategory_brandId_idx` (`brandId`);

--
-- Indexes for table `allproductcategory`
--
ALTER TABLE `allproductcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AllProductCategory_productId_idx` (`productId`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamicspecification`
--
ALTER TABLE `dynamicspecification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamicspecificationparent`
--
ALTER TABLE `dynamicspecificationparent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamicspecificationsubparent`
--
ALTER TABLE `dynamicspecificationsubparent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_image`
--
ALTER TABLE `featured_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Featured_Image_productId_idx` (`productId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `News_brandId_idx` (`brandId`);

--
-- Indexes for table `news_image`
--
ALTER TABLE `news_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `News_Image_newsId_idx` (`newsId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_brandId_idx` (`brandId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Roles_userId_idx` (`userId`);

--
-- Indexes for table `specificationconnector`
--
ALTER TABLE `specificationconnector`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specificationconnector_brandId_idx` (`brandId`),
  ADD KEY `specificationconnector_productId_idx` (`productId`),
  ADD KEY `specificationconnector_dynamicspecificationParentId_idx` (`dynamicspecificationParentId`),
  ADD KEY `specificationconnector_dynamicspecificationSubParentId_idx` (`dynamicspecificationSubParentId`),
  ADD KEY `specificationconnector_dynamicspecificationId_idx` (`dynamicspecificationId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
