-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2025 at 10:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
-- Table structure for table `cover_image`
--

CREATE TABLE `cover_image` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drawing_image`
--

CREATE TABLE `drawing_image` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `graph_image`
--

CREATE TABLE `graph_image` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_catalogues`
--

CREATE TABLE `image_catalogues` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `impedance_image`
--

CREATE TABLE `impedance_image` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multipledatasheetproduct`
--

CREATE TABLE `multipledatasheetproduct` (
  `id` varchar(191) NOT NULL,
  `productId` varchar(191) NOT NULL,
  `url` text NOT NULL DEFAULT '',
  `name` text NOT NULL DEFAULT ''
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
  `isNewProduct` tinyint(1) NOT NULL DEFAULT 0,
  `featuredDesc` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `cover_image`
--
ALTER TABLE `cover_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Cover_Image_productId_idx` (`productId`);

--
-- Indexes for table `drawing_image`
--
ALTER TABLE `drawing_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Drawing_Image_productId_idx` (`productId`);

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
-- Indexes for table `graph_image`
--
ALTER TABLE `graph_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Graph_Image_productId_idx` (`productId`);

--
-- Indexes for table `image_catalogues`
--
ALTER TABLE `image_catalogues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Image_Catalogues_productId_idx` (`productId`);

--
-- Indexes for table `impedance_image`
--
ALTER TABLE `impedance_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Impedance_Image_productId_idx` (`productId`);

--
-- Indexes for table `multipledatasheetproduct`
--
ALTER TABLE `multipledatasheetproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multipleDatasheetProduct_productId_idx` (`productId`);

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
