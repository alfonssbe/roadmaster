-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2025 at 09:24 AM
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

--
-- Dumping data for table `allcategory`
--

INSERT INTO `allcategory` (`id`, `brandId`, `type`, `name`, `slug`, `description`, `thumbnail_url`, `createdAt`, `updatedAt`, `updatedBy`) VALUES
('2300407f-0384-4940-84d0-1ac40e76fab7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Tweeter', 'tweeter', 'All Tweeter Products', '', '2024-09-24 08:55:00.225', '2024-09-24 08:55:00.225', 'admin'),
('2460d041-5cb5-48f1-bb18-e3edd5c225b5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Discontinued', 'discontinued', 'All Discontinued Products', '', '2024-09-24 08:54:08.693', '2024-09-24 08:54:08.693', 'admin'),
('54fe181e-61ad-4dad-8f8f-52593be04dc6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Legacy', 'legacy', 'Speaker dari Legacy ini sangat bermacam variannya, mulai dari warna, bentuk tampilan, serta ukurannya (6 inch – 15 inch). Tampilan Speaker dari Legacy ini memberikan wajah baru, dengan desain Dustcap yang lebih simple tapi terlihat elegan sehingga membuat tampilan menjadi lebih Fresh. Pada Conepaper didesain dengan tampilan baru, yaitu menggunakan tehnik jahitan antara Conepaper dan Surround yang berfungsi memperkuat konstruksi Conepaper terhadap Foam Surround speakernya sehingga tidak mudah sobek dan mampu bertahan lebih lama (Durability).', '', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.923', 'admin'),
('60d05b2e-d9b9-4b42-91c3-b9e0c1e883e0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Coaxial', 'coaxial', 'All Coaxial Products', '', '2024-09-24 08:53:57.121', '2024-09-24 08:53:57.121', 'admin'),
('66a82959-e15f-450d-aaba-3397483b6ba8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Woofer', 'woofer', 'All Woofer Products', '', '2024-09-24 08:54:30.658', '2024-12-09 05:28:24.576', 'admin'),
('7f6266c8-762a-4110-8854-9aa985777f30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Full Range', 'full-range', 'All Full Range Products', '', '2024-09-24 08:54:49.922', '2024-09-24 08:54:49.922', 'admin'),
('8fccc11d-9a22-45cd-b3ac-0b5fe29db546', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Sparta', 'sparta', 'Car Speaker dengan nama Sparta Series by Legacy mempunyai ciri tersendiri yaitu hasil suara dari speaker ini lebih tajam dan karakternya bisa dibilang lebih akustik. Sparta Series by Legacy ini memiliki lambang seperti kesatria yang menggambarkan speaker yang powerful dengan desain yang simple tetapi tetap terlihat garang. Ditambah dengan logo Sparta yang menyerupai tameng kesatria Yunani Kuno pada Dustcap speaker ini, sehingga mampu menghadang produk Car Subwoofer dari Import China. Speaker ini memiliki varian yang tidak banyak yaitu hanya 10 inch dan 12inch dengan kombinasi warna hitam dan kuning sehingga memberikan kesan yang elegan.', '', '2024-10-17 07:01:00.319', '2024-10-17 07:01:00.319', 'admin'),
('a197ed73-8307-4ffa-9a3b-0aac190e1452', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Category', 'Drivers', 'drivers', 'All Legacy Audio Drivers', '', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'admin'),
('b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Prestige', 'prestige', 'Prestige series dari Legacy hadir dengan berbagai varian speaker yang dirancang untuk memberikan performa audio terbaik di mobil Anda. Dari segi tampilan, Prestige Series membawa penyegaran dengan desain yang modern dan elegan. Mulai dari ukuran 6 inch hingga 15 inch, setiap speaker dalam seri ini menampilkan Dustcap yang dirancang lebih simple namun tetap elegan, memberikan kesan visual yang bersih dan modern di dalam mobil.', '', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.280', 'admin'),
('c54a3345-7d95-43a2-8b82-80cfe47e4125', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Active Subwoofer', 'active-subwoofer', 'All Active Subwoofer Products', '', '2024-09-24 08:53:42.918', '2024-12-09 05:28:18.146', 'admin'),
('e5f21898-2a62-4131-b3ee-90962859f682', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Sub Category', 'Subwoofer', 'subwoofer', 'All Subwoofer Products', '', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.084', 'admin'),
('f903d822-7ea8-434d-a1d1-a88ddc652cfb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Sub Category', 'Energy', 'energy', 'Speaker Energy Series dari Legacy ini memiliki ciri khas dengan warna Orange dan didesain cocok untuk kebutuhan Subwoofer Car Speaker. Speaker Energy Series ada beberapa varian ukuran dari 6 inch - 12 inch. Kelebihan dari tipe ini dilengkapi dengan Magnet Rubber Cover yang berfungsi melindungi megnet dari benturan serta nilai tambah estetika speakernya . Pada Conepaper didesain dengan tampilan baru, yaitu menggunakan teknik jahitan antara Conepaper dan Surround yang berfungsi untuk menambah dan lebih memaksimalkan Durabillity speaker. Selain itu juga mampu memberikan Energy Positif bagi yang menggunakan speaker ini.', '', '2024-10-17 07:00:40.004', '2024-10-17 07:00:40.004', 'admin');

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
('01190928-3c1c-4281-83f8-45def33baeeb', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('0647e7d8-65a8-430d-bf16-0b947781aa7d', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '8fccc11d-9a22-45cd-b3ac-0b5fe29db546', '2024-10-17 07:01:00.319', '2024-10-17 07:01:00.319', 'Sparta', 'sparta', 'Sub Category'),
('0d032614-7309-4690-a543-1c7aa022e942', '970f6aa5-91f5-464c-96e4-83f86280d053', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('1081629d-f7e5-4e11-93b5-1b499ad52342', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('12fe6819-f415-43fa-84ce-02513f291ca3', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('13109e02-d431-477f-858b-14915302f49c', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('158ea76a-2b82-4e88-babb-50678192b45b', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('19f0c8d8-fe07-4876-8e66-f39e66aea38b', '970f6aa5-91f5-464c-96e4-83f86280d053', '60d05b2e-d9b9-4b42-91c3-b9e0c1e883e0', '2024-09-24 08:53:57.121', '2024-09-24 08:53:57.121', 'Coaxial', 'coaxial', 'Sub Sub Category'),
('1a57b0bc-2d59-4e75-8ee1-9a48140c4c2b', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2025-09-22 02:26:04.719', '2025-09-22 02:26:04.719', 'Legacy', 'legacy', 'Sub Category'),
('1ba26bfb-c0a3-40a4-ba32-8ca6fb8c1c0d', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('1d425655-725b-4991-bbed-e2eb92f45236', '77932324-df07-44d8-84d2-30af8ae38c0a', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('1f2f8938-0c75-44ba-a96e-381f01296989', '963116bc-4fef-48ae-a8e6-f655be756dc7', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('1fbc95ec-6b57-4579-81d5-8ba3fc5f5a3d', '42802840-d898-46ea-8377-7e0a9b6a060f', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('20c88081-2fba-4bcb-8857-aa06aeae1712', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('20fbc737-32d6-43e4-b62e-e9e3caff24cf', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('220b7525-d8e3-4846-8102-d1ae70caffbb', '77932324-df07-44d8-84d2-30af8ae38c0a', 'f903d822-7ea8-434d-a1d1-a88ddc652cfb', '2024-10-17 07:00:40.004', '2024-10-17 07:00:40.004', 'Energy', 'energy', 'Sub Category'),
('2424694b-2e0c-428b-b20c-f0ddccb97199', '2e888496-0048-4943-982f-ebfdd4625e1f', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('2454c5c9-9e6c-43f5-940a-98adfb31d860', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '8fccc11d-9a22-45cd-b3ac-0b5fe29db546', '2024-10-17 07:01:00.319', '2024-10-17 07:01:00.319', 'Sparta', 'sparta', 'Sub Category'),
('26c983cb-caad-4d22-a1d3-6d819a40ae49', '4899e144-b93b-446a-89b4-b055230545ee', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('26d44119-38a0-41ec-9900-76c13e3b178c', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'f903d822-7ea8-434d-a1d1-a88ddc652cfb', '2024-10-17 07:00:40.004', '2024-10-17 07:00:40.004', 'Energy', 'energy', 'Sub Category'),
('26f2e515-5008-4ba4-b985-8d8c7c4a2184', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('27bb1b1b-0d8d-4e18-9dc8-329113acfe71', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'f903d822-7ea8-434d-a1d1-a88ddc652cfb', '2024-10-17 07:00:40.004', '2024-10-17 07:00:40.004', 'Energy', 'energy', 'Sub Category'),
('285fb5d4-d9d5-4f00-8a9f-5853cf6add17', '164c19d2-170f-4b48-958e-68ec335392f0', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('3027cd39-3d55-4678-9bc0-bbfba96c669d', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('30995118-8e50-454c-8183-a5da1cb14d3d', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('31bf88f8-66a0-4c70-ba20-8b2cd6274d74', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('3b2f6dae-a239-4127-9687-c2274f9f3325', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('3c19f0cd-ac35-4cca-a333-ce56201d3cb4', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('4134c4dc-e070-4dc3-a297-998000367e6e', '4899e144-b93b-446a-89b4-b055230545ee', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('449204df-c3e2-4e45-888f-1408eae5e20b', '164c19d2-170f-4b48-958e-68ec335392f0', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('4944f540-6317-4377-9811-b1500ffaa74c', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('4c902b65-0086-4db4-ba5e-306e20aabcb5', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('54c38e74-a045-47f4-9abc-d353fa438a65', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('5553618d-b06d-4c4e-b606-9c44dddf7246', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('5577eddf-8a23-462d-ace1-c993d7e1696d', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('56f6e7c5-cfd0-43dd-a4c2-a553feeb47db', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('591fabb1-c7cb-49d7-91bf-36df36139c52', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('5951ae50-64ba-4263-935c-2c4b63d72b21', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('5b9b719a-1b47-44c9-a3a6-e0c15a3c3de5', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '60d05b2e-d9b9-4b42-91c3-b9e0c1e883e0', '2024-09-24 08:53:57.121', '2024-09-24 08:53:57.121', 'Coaxial', 'coaxial', 'Sub Sub Category'),
('5c587d79-5928-45be-a9b4-ad9f808352c6', '41a41be4-0044-4958-b270-7afa8207446c', '7f6266c8-762a-4110-8854-9aa985777f30', '2024-09-24 08:54:49.922', '2024-09-24 08:54:49.922', 'Full Range', 'full-range', 'Sub Sub Category'),
('5c77a9c2-2496-4b05-b902-190364b40b18', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('5edb8298-b476-48cc-a564-803116fe6573', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('600080ec-f0cf-4da7-af6b-15eb3b3b7981', 'e1c25166-8945-4f86-a898-3795b4b44883', 'e5f21898-2a62-4131-b3ee-90962859f682', '2025-09-22 06:40:58.904', '2025-09-22 06:40:58.904', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('60d057fb-98e3-4232-b4df-33b78055cc6b', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('6360769a-e2f9-4b46-931d-534ae244e752', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('659856d9-e186-4bd4-ba47-053081c49ff6', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('67c77359-aff8-4e12-ac23-798c6e027684', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('6934b889-cd6d-4776-8d27-ca69770f3288', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('6f6efc62-1b09-41b8-92a8-19b15c3ec381', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', '66a82959-e15f-450d-aaba-3397483b6ba8', '2024-09-24 08:54:30.658', '2024-12-09 05:28:24.579', 'Woofer', 'woofer', 'Sub Sub Category'),
('6f90ba81-84c9-45c9-b65e-1990082be50c', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'e5f21898-2a62-4131-b3ee-90962859f682', '2025-09-22 02:26:04.723', '2025-09-22 02:26:04.723', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('70fb2628-8d33-401d-9cbe-b9a25bf97d5c', '58e4147b-93a0-4809-955d-d04ce1161c5e', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('71024eb0-f276-4508-9197-52942e20a76e', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('765c3456-c1a3-453a-8631-6ed4df6a8571', '41a41be4-0044-4958-b270-7afa8207446c', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('780c94fd-04b4-4578-81e3-ba50a13ead74', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('79ad8ede-3fb3-43f1-940f-54d6ac6a2c72', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '8fccc11d-9a22-45cd-b3ac-0b5fe29db546', '2024-10-17 07:01:00.319', '2024-10-17 07:01:00.319', 'Sparta', 'sparta', 'Sub Category'),
('7a7a8932-5693-4e9b-a577-b9aef2ebec1b', '745f44c7-888c-4919-832c-99fb176ff0fa', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.923', 'Legacy', 'legacy', 'Sub Category'),
('7bb1d361-ea04-4610-97bc-abc6014dcd6b', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('7ca71515-6687-4115-bb1c-187eba89f8f9', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '7f6266c8-762a-4110-8854-9aa985777f30', '2024-09-24 08:54:49.922', '2024-09-24 08:54:49.922', 'Full Range', 'full-range', 'Sub Sub Category'),
('7ee6788f-dff1-48b6-8a59-7c58a2f43e05', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('806a4eb8-49e0-4758-b9d7-5e6831dee6d9', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('81948534-7ad3-4559-b2c8-f5f23452bdc4', '78c76b38-9464-446b-ad93-2a10560d25b8', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('82b6aa1a-bd72-4d07-b800-83a89b2ee2eb', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('847d866e-08bd-4bcb-a9e0-ffe8c01048d0', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'f903d822-7ea8-434d-a1d1-a88ddc652cfb', '2024-10-17 07:00:40.004', '2024-10-17 07:00:40.004', 'Energy', 'energy', 'Sub Category'),
('84d81dea-e49e-48ff-99b5-bcdac96a031c', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('85791212-8dfb-43ba-9249-456761ccc76c', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('86e369c9-daf4-4f77-8e0a-64a9c202a0aa', '164c19d2-170f-4b48-958e-68ec335392f0', '7f6266c8-762a-4110-8854-9aa985777f30', '2024-09-24 08:54:49.922', '2024-09-24 08:54:49.922', 'Full Range', 'full-range', 'Sub Sub Category'),
('89d68a28-d2ae-4a00-bb2e-f9be9e6a0f4c', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('8a4be9df-23e4-4124-95d9-4bae6d52cc85', '78c76b38-9464-446b-ad93-2a10560d25b8', 'c54a3345-7d95-43a2-8b82-80cfe47e4125', '2024-09-24 08:53:42.918', '2024-12-09 05:28:18.200', 'Active Subwoofer', 'active-subwoofer', 'Sub Sub Category'),
('8b08bf4e-b146-4e67-8353-f1a3e910ccba', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('8cbbfb83-9292-4102-a374-aeb4505e8c1b', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('9739e56a-cd37-4c02-9691-57215b38a4c4', '41a41be4-0044-4958-b270-7afa8207446c', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('99c7ab84-d4c8-4540-8d42-8139941b4c9e', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '7f6266c8-762a-4110-8854-9aa985777f30', '2024-09-24 08:54:49.922', '2024-09-24 08:54:49.922', 'Full Range', 'full-range', 'Sub Sub Category'),
('9a65c8d3-9478-4908-96c7-9679c43229ce', '78c76b38-9464-446b-ad93-2a10560d25b8', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.923', 'Legacy', 'legacy', 'Sub Category'),
('9a85b9fd-987b-4927-8d06-db98be0195ea', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('9b2304ea-add5-4498-bf20-7f437c56787b', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '7f6266c8-762a-4110-8854-9aa985777f30', '2024-09-24 08:54:49.922', '2024-09-24 08:54:49.922', 'Full Range', 'full-range', 'Sub Sub Category'),
('a020bf6e-1797-449f-8b9d-85354cbe89f9', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('a21d8020-117b-4259-b4b1-d071c95e7664', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('a3cd495f-1cdf-48ce-b82f-aebc91651cd7', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('a55868ca-d796-4b6c-a6da-63fe6425e00b', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('a9837090-652d-4ce1-8b61-6617dde3b800', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('ac2f8391-909f-4f03-a15a-0d896de39069', '745f44c7-888c-4919-832c-99fb176ff0fa', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('aef1dd0f-4b88-45e3-b053-26e007894ab2', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', '66a82959-e15f-450d-aaba-3397483b6ba8', '2024-09-24 08:54:30.658', '2024-12-09 05:28:24.579', 'Woofer', 'woofer', 'Sub Sub Category'),
('b278d927-81e5-4c36-b4ac-581275c1e0c9', '2e888496-0048-4943-982f-ebfdd4625e1f', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('b373ab82-887f-47ca-a304-85f5d3eee60c', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('b4a540a8-aceb-4fd5-81a7-b8d5c7659d53', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('b552db98-11c2-4635-a40e-626f45a19cb2', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', '2300407f-0384-4940-84d0-1ac40e76fab7', '2024-09-24 08:55:00.225', '2024-09-24 08:55:00.225', 'Tweeter', 'tweeter', 'Sub Sub Category'),
('b7e3a4c3-c951-4d07-8bcc-785a2e7b0111', 'e1c25166-8945-4f86-a898-3795b4b44883', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2025-09-22 06:40:58.886', '2025-09-22 06:40:58.886', 'Drivers', 'drivers', 'Category'),
('bc8b171a-cce1-4474-858f-9eaab52d02f2', '77932324-df07-44d8-84d2-30af8ae38c0a', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('bd0ae207-11e2-4411-8699-3d96e50dfdd3', '4899e144-b93b-446a-89b4-b055230545ee', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('bd1966d4-ef5b-4ca0-ab23-7902ac0d1396', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('bfe3d375-b243-479d-b906-eb785f63a084', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('c32b598a-003b-4d9e-95e4-0e4f5d124754', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('c7f74a28-ae14-4e55-ac3b-f0cadc73817f', '42802840-d898-46ea-8377-7e0a9b6a060f', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('d082b458-2df9-4489-9a6c-ca1db7aafe5c', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('d37db0cf-301b-44b8-978a-0227d3c00e06', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('d4e7f4f0-8c73-439f-847a-e30403f393ad', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('d673c155-5afa-4c39-b3b4-7f112f309150', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('d691bc0e-f9ee-4146-94d5-c09c8666591b', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', 'b2fcc14b-c60f-4bc7-913f-56bc3247fdeb', '2024-09-24 08:52:58.509', '2024-09-27 06:15:19.283', 'Prestige', 'prestige', 'Sub Category'),
('d9bf72a9-dd5b-4c29-a0ec-98a9d08d9e62', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2025-09-22 02:26:04.713', '2025-09-22 02:26:04.713', 'Drivers', 'drivers', 'Category'),
('da35709a-ccd6-4cfd-8f5e-83d4b8fd0b94', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('db809887-8f1f-4112-a68c-39c0a6af1b3f', 'e1c25166-8945-4f86-a898-3795b4b44883', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2025-09-22 06:40:58.898', '2025-09-22 06:40:58.898', 'Legacy', 'legacy', 'Sub Category'),
('df1c14ea-9662-46cf-bec7-f9b661a6a3ac', '2e888496-0048-4943-982f-ebfdd4625e1f', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('e09bfb80-09b3-4c9e-8f0a-eddb2aadc8f9', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('e22e417c-748a-4586-a847-b216040cfea4', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('e2a1e126-e6ea-4cb3-82ce-f278353bda2a', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('e39bfcba-9344-4545-a1f5-f4406f8fc8e5', '42802840-d898-46ea-8377-7e0a9b6a060f', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('e760d791-2a77-43ae-9034-2e46092e9ff5', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('e77015b5-a605-4040-b5d5-6b9498f2647d', '745f44c7-888c-4919-832c-99fb176ff0fa', '2300407f-0384-4940-84d0-1ac40e76fab7', '2024-09-24 08:55:00.225', '2024-09-24 08:55:00.225', 'Tweeter', 'tweeter', 'Sub Sub Category'),
('f34bd16f-81dc-4afa-82ae-e0b328fcbcdc', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('f8b19a44-5357-4be8-a2f3-098bc3226857', '970f6aa5-91f5-464c-96e4-83f86280d053', '54fe181e-61ad-4dad-8f8f-52593be04dc6', '2024-09-24 08:53:10.959', '2024-09-27 06:14:54.939', 'Legacy', 'legacy', 'Sub Category'),
('f9953b7f-4f60-4fe4-baab-8a46608ad0e1', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('fb384dd4-b052-43c8-82c3-9184b8849973', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'e5f21898-2a62-4131-b3ee-90962859f682', '2024-09-24 08:53:30.455', '2024-12-09 05:28:07.104', 'Subwoofer', 'subwoofer', 'Sub Sub Category'),
('fc2be18f-971f-4a90-a5f7-6b4a6a34f078', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category'),
('fe26c474-5b25-43c4-b1bb-1f2ab9785a56', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'a197ed73-8307-4ffa-9a3b-0aac190e1452', '2024-09-24 08:52:40.206', '2024-09-24 08:52:40.206', 'Drivers', 'drivers', 'Category');

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

--
-- Dumping data for table `cover_image`
--

INSERT INTO `cover_image` (`id`, `productId`, `url`, `createdAt`, `updatedAt`) VALUES
('02bf5ca7-666e-4322-8b8f-d848879b634b', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productcoverimage/12in LG-12385-2 SPARTA Collage-1732254879382.webp', '2025-07-30 01:07:25.662', '2025-07-30 01:07:25.662'),
('05b4f87f-ffb2-4d1b-87a8-ad16cbd38b66', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productcoverimage/12in LG 1277-2-1733969592789.webp', '2024-12-13 00:50:52.327', '2024-12-13 00:50:52.327'),
('075b404e-bb96-4fcf-9a17-db978c493151', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productcoverimage/6.5in BST 1614 collage-1732765167247.webp', '2024-12-09 08:58:14.315', '2024-12-09 08:58:14.315'),
('1ebd2c38-d1e6-49c2-9b6a-536f22d0a38c', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productcoverimage/12in LG 1292-2 collage-1732254591415.webp', '2024-11-28 03:19:22.606', '2024-11-28 03:19:22.606'),
('240ea1fa-2dc2-4a8b-9106-6bc4024df138', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productcoverimage/5in-BST-522-Mk3-2way-Collage-1731894853776.webp', '2024-12-09 08:58:33.637', '2024-12-09 08:58:33.637'),
('31bc8f9a-84d3-46cb-bdb6-d17e423ce94b', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productcoverimage/6X9in-BST-6981-Mk1-collage-1731894927170.webp', '2024-12-09 08:57:24.171', '2024-12-09 08:57:24.171'),
('41740473-1a77-4d3c-9922-c511deecaea2', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productcoverimage/lg 696 2 layout-1727916244772.webp', '2024-11-28 03:22:07.574', '2024-11-28 03:22:07.574'),
('4c31e77b-7436-40fc-8e5e-4d623984822a', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '/uploads/productcoverimage/1040-cone-1758506382548.webp', '2025-09-22 01:59:43.304', '2025-09-22 01:59:43.304'),
('525858ac-d742-440e-8236-6c1a7f5864fb', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productcoverimage/6.5in BST 615 Mk3 Collage-1732254773218.webp', '2024-12-09 08:57:50.384', '2024-12-09 08:57:50.384'),
('5e06cc92-0ef1-423b-952f-4651c0027ebb', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productcoverimage/12in 1254 collage-1731893093700.webp', '2024-11-28 03:32:11.124', '2024-11-28 03:32:11.124'),
('629e9436-92b3-4e9b-b216-a32eff0e6f41', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', '/uploads/productcoverimage/PG 298-1732254609880.webp', '2024-11-28 03:42:36.376', '2024-11-28 03:42:36.376'),
('63f52dee-962b-4154-ad0d-a4817b3ca673', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productcoverimage/10in LG-1098-2 collage-1731395653031.webp', '2024-11-28 03:12:45.628', '2024-11-28 03:12:45.628'),
('64a3195c-c4e5-4263-af5a-e986cfea2e77', '2e888496-0048-4943-982f-ebfdd4625e1f', '/uploads/productcoverimage/69-1727254194974.jpg', '2024-11-28 03:12:56.222', '2024-11-28 03:12:56.222'),
('6dbc4278-befb-4424-a8e6-de2294d81f5f', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productcoverimage/8in LG-838-2-Mk1-1733969545020.webp', '2024-12-12 02:13:24.823', '2024-12-12 02:13:24.823'),
('7f51924c-021a-4a99-b4dd-20cd290f976b', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productcoverimage/12in LG 1238-2 LEGACY ENERGY Collage-1732254833508.webp', '2024-12-09 08:59:16.262', '2024-12-09 08:59:16.262'),
('805100b5-42ac-46a0-aee9-86783678fa35', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '/uploads/productcoverimage/10in LG 10385 collage.jpg-1734414918838.webp', '2024-12-17 05:55:19.913', '2024-12-17 05:55:19.913'),
('823821e5-35b4-4206-8f47-c46136a66982', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productcoverimage/12in LG 1296-2 Mk1 Collage-1732254919464.webp', '2024-12-09 09:00:16.591', '2024-12-09 09:00:16.591'),
('830734a5-16b4-4065-b9bd-76c045e8bca5', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productcoverimage/12in LG 1295-2 Mk1 Collage-1732254432006.webp', '2024-11-28 03:19:37.776', '2024-11-28 03:19:37.776'),
('871d18ca-3d47-41da-8a2b-fd9132603de2', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/productcoverimage/4in BST 422 Mk3 Collage-1731892945440.webp', '2024-12-09 08:58:52.970', '2024-12-09 08:58:52.970'),
('93665a79-495d-4870-a194-cdd974ed039a', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '/uploads/productcoverimage/15in LG 1596 collage-1731893028804.webp', '2024-11-28 03:20:58.025', '2024-11-28 03:20:58.025'),
('964b61a7-56ee-4a71-b1fe-1aab4a792954', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '/uploads/productcoverimage/26-1727254278366.jpg', '2024-11-28 03:43:16.939', '2024-11-28 03:43:16.939'),
('9671f3c2-bffa-4a7d-805e-3813fd19f153', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productcoverimage/12in LG-12386-2 SPARTA Collage-1732254500346.webp', '2024-11-28 03:25:39.987', '2024-11-28 03:25:39.987'),
('a558f64e-515a-491c-9cd2-a17a27b06199', '745f44c7-888c-4919-832c-99fb176ff0fa', '/uploads/productcoverimage/LG 138 front-1731395194632.webp', '2024-11-28 03:31:33.789', '2024-11-28 03:31:33.789'),
('a95b18ed-faf0-4b90-a720-9d4c34eb2bd0', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '/uploads/productcoverimage/12in LG 1299 collage-1731395912433.webp', '2024-11-28 03:20:43.407', '2024-11-28 03:20:43.407'),
('abdeb293-723b-4557-86ae-f56c8d628c2c', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productcoverimage/pg 1054 2 layout-1731395570075.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137'),
('ace295fa-e1c2-44d5-96b7-444658ace649', 'e1c25166-8945-4f86-a898-3795b4b44883', '/uploads/productcoverimage/1240-cone-1758512180967.webp', '2025-09-22 03:36:22.155', '2025-09-22 03:36:22.155'),
('aced7015-6959-4317-a7a9-95e888a8a41e', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productcoverimage/1755242250702-1732254648921-10in-lg-1077-2-collage-1755242495810.webp', '2025-08-15 07:21:35.842', '2025-08-15 07:21:35.842'),
('b4e6e04b-e964-42e2-bd9b-1c43b2116295', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', '/uploads/productcoverimage/4in 8347 KH collage-1731893247095.webp', '2024-11-28 03:34:00.594', '2024-11-28 03:34:00.594'),
('b592f719-7854-47b7-9cb3-9ad62a384c46', '78c76b38-9464-446b-ad93-2a10560d25b8', '/uploads/productcoverimage/73-1728015452703.jpg', '2024-11-28 03:13:07.619', '2024-11-28 03:13:07.619'),
('bb76a846-41fe-46dc-9c1a-ea34d7e16b37', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productcoverimage/4in BST 1023 Dual Cone Collage-1731895876705.webp', '2024-12-09 08:56:57.104', '2024-12-09 08:56:57.104'),
('c7de04dc-fa23-4dac-9479-7713d71b4c8a', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productcoverimage/10in 1096-Mk1 collage-1731395725556.webp', '2024-12-09 09:00:42.292', '2024-12-09 09:00:42.292'),
('cf711881-d504-4286-a4ed-29690f44763f', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', '/uploads/productcoverimage/4in 8347 BH Collage-1731893197584.webp', '2024-11-28 03:33:43.389', '2024-11-28 03:33:43.389'),
('db008262-a8b5-4dfc-933e-c4accc1cc714', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productcoverimage/12in LG 1298-2 Collage-1732254361941.webp', '2024-11-28 03:20:26.644', '2024-11-28 03:20:26.644'),
('e1f503c3-7e50-49ae-9d1e-894a20c509d1', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productcoverimage/6.5in LG 6521 collage-1731892992652.webp', '2024-12-09 08:59:53.445', '2024-12-09 08:59:53.445'),
('e5010a78-d0c7-4527-b283-d98db526da4f', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productcoverimage/8in 854 Prestige Colalge-1731893145756.webp', '2024-11-28 03:32:29.306', '2024-11-28 03:32:29.306'),
('e62c7128-f2fb-4747-9c25-ac22a2419186', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productcoverimage/10in LG-1095-2 Mk1 Collage-1734055163564.webp', '2024-12-13 01:59:24.739', '2024-12-13 01:59:24.739'),
('eef6c020-465e-44e0-b6fc-bdbd80f73c16', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '/uploads/productcoverimage/6in 638 collage-1731395976776.webp', '2024-11-28 03:23:18.530', '2024-11-28 03:23:18.530'),
('fd29be08-4dbe-47ad-a69f-994dca86c820', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '/uploads/productcoverimage/8in LG 896 collage-1731395849472.webp', '2024-11-28 03:22:53.638', '2024-11-28 03:22:53.638');

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

--
-- Dumping data for table `dynamicspecification`
--

INSERT INTO `dynamicspecification` (`id`, `name`, `slug`, `unit`, `priority`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
('0a451b38-7865-4e17-9a33-cf56ab2d4ea2', 'Qes', 'qes', '', '17', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:08.858', '2025-10-24 13:20:30.318'),
('0ad042b7-7a18-4021-8085-aa5804bac63d', 'Nominal Impedance', 'nominal-impedance', 'Ω', '11', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:21:54.958', '2025-10-24 13:20:30.318'),
('1380c6d4-3201-4dd0-85e3-69e00e00cade', 'Mms', 'mms', 'g', '19', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:17.742', '2025-10-24 13:20:30.318'),
('142a61b9-0738-42a3-8742-47b4fce63f73', 'Fs', 'fs', 'Hz', '14', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:17:47.674', '2025-10-24 13:20:30.318'),
('1d7276dd-0020-469c-bfbd-c6f1c4b39232', 'Daya Amplifier', 'daya-amplifier', 'V', '26', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:32:36.151', '2025-10-24 13:20:30.318'),
('2381ab25-a8bd-40ac-aae3-52226bb4728b', 'Sensitivity', 'sensitivity', 'dB', '4', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:16:30.268', '2025-10-24 13:20:30.318'),
('2523f7aa-8859-4020-957a-4c1a9c2173d4', 'DCR', 'dcr', 'Ω', '15', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:17:54.348', '2025-10-24 13:20:30.318'),
('4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', 'No', 'no', '%', '23', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:43.628', '2025-10-24 13:20:30.318'),
('4e42b38e-a524-4152-a956-717855971d4b', 'Qms', 'qms', '', '18', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:12.593', '2025-10-24 13:20:30.318'),
('63053593-9cb1-401e-a4df-8aaa372c042c', 'Berat Speaker', 'berat-speaker', 'kg', '27', 'admin', '2025-10-24 12:20:38.306', '2025-10-24 13:41:41.062'),
('678c85cc-ba1f-4472-be09-d655c00e5b37', 'Nominal Power Handling', 'nominal-power-handling', 'Watt', '7', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:20:01.745', '2025-10-24 13:20:30.318'),
('693c4409-faea-418e-afc4-0bd51489b62c', 'Diameter Speaker', 'diameter-speaker', 'inch', '1', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:15:51.047', '2025-10-24 13:20:30.318'),
('7079b626-b406-4b03-947a-44e50fb316e4', 'BL Product', 'bl-product', 'Tm', '21', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:30.936', '2025-10-24 13:20:30.318'),
('70b0e3f7-307b-488a-b445-39bc39dc0d15', 'Power Input', 'power-input', '', '28', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:33:05.645', '2025-10-24 13:20:30.319'),
('753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', 'Lebar Daerah Frekuensi', 'lebar-daerah-frekuensi', 'Hz', '3', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:16:21.444', '2025-10-24 13:20:30.318'),
('7639c90c-b6bc-4927-87bd-5bf052a07789', 'Medan Magnet', 'medan-magnet', 'T', '5', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:16:40.847', '2025-10-24 13:20:30.318'),
('77895dbd-3f6f-4221-ba0b-dd1e6765454d', 'Cms', 'cms', 'mm/N', '20', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:23.013', '2025-10-24 13:20:30.318'),
('7c8e5489-cb27-4d38-83e1-be123163e7ff', 'Input Level', 'input-level', '', '29', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:32:58.828', '2025-10-24 13:20:30.319'),
('831ce7d5-4711-41b7-a545-723473fed6a9', 'Impedansi', 'impedansi', 'Ω', '9', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:17:32.437', '2025-10-24 13:20:30.318'),
('84f8d8db-e1ea-48f4-b9cf-4cbdb34fa301', 'Magnetic Flux Density', 'magnetic-flux-density', 'T', '13', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:24:02.100', '2025-10-24 13:20:30.318'),
('85df964e-8c92-4b21-8abb-c8816d816574', 'Voice Coil Height', 'voice-coil-height', 'mm', '30', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 13:01:23.402', '2025-10-24 13:20:30.319'),
('87bcc521-c598-4192-9e32-4a2e5229f1f2', 'Subwoofer', 'subwoofer', '', '31', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:32:26.781', '2025-10-24 13:20:30.319'),
('8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'Daya Maksimum', 'daya-maksimum', 'Watt', '2', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:16:02.540', '2025-10-24 13:20:30.318'),
('906f3926-a077-4ce2-902c-a8cfb14569f5', 'Filter LPF Variabel', 'filter-lpf-variabel', '', '32', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:32:52.053', '2025-10-24 13:20:30.319'),
('91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', 'Vas', 'vas', 'liters', '22', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:38.559', '2025-10-24 13:20:30.318'),
('a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', 'Diameter Voice Coil', 'diameter-voice-coil', 'mm', '8', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:17:23.392', '2025-10-24 13:20:30.318'),
('ae300345-3429-4e9b-8b65-ae4a1dddac20', 'Xmax', 'xmax', 'mm', '25', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:19:00.609', '2025-10-24 13:20:30.318'),
('bcd861a8-944c-419e-8f26-e3254bcfb2b0', 'Box Type', 'box-type', '', '33', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:33:13.523', '2025-10-24 13:20:30.319'),
('c64d6c10-91d3-45ab-b547-09b5a5b79bba', 'Qts', 'qts', '', '16', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:04.894', '2025-10-24 13:20:30.318'),
('cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', 'Sd', 'sd', 'cm²', '24', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:18:53.290', '2025-10-24 13:20:30.318'),
('df4d9847-7795-4f05-b2ef-c9112099c817', 'Speaker', 'speaker', '', '34', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:32:19.057', '2025-10-24 13:20:30.319'),
('e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Program Power', 'program-power', 'Watt', '35', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:20:18.995', '2025-10-24 13:20:30.319'),
('e87669ff-8d73-4e9f-9863-9b2dbc7ed738', 'Material Voice Coil', 'material-voice-coil', '', '10', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:17:42.330', '2025-10-24 13:20:30.318'),
('ed018b01-94d0-464b-806c-17a7a0f7dad9', 'Air Gap Height', 'air-gap-height', 'mm', '12', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:23:38.288', '2025-10-24 13:20:30.318'),
('f11c92e4-866c-4903-8aca-54a1a2b004c6', 'Berat Magnet', 'berat-magnet', 'kg', '6', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:17:07.212', '2025-10-24 13:20:30.318');

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

--
-- Dumping data for table `dynamicspecificationparent`
--

INSERT INTO `dynamicspecificationparent` (`id`, `name`, `slug`, `priority`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
('0ce0647e-d76e-43f3-961b-ed4c5137e135', 'Parameter Thiele Small', 'parameter-thiele-small', '3', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:13:49.279', '2025-10-24 13:20:30.318'),
('5e1e25d6-756e-4277-81e9-9c29fa70229b', 'Spesifikasi Tweeter', 'spesifikasi-tweeter', '2', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:24:37.068', '2025-10-24 13:20:30.318'),
('eb57241c-6f01-46b6-9f41-ed49a7b4eb12', 'Spesifikasi', 'spesifikasi', '1', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:13:15.618', '2025-10-24 13:20:30.318');

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

--
-- Dumping data for table `dynamicspecificationsubparent`
--

INSERT INTO `dynamicspecificationsubparent` (`id`, `name`, `slug`, `priority`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
('06671e3b-d634-4ab8-b88e-4d81b244e759', '4 Ω', '4', '2', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:15:15.366', '2025-10-24 13:20:30.318'),
('a56868e9-3490-4a97-acb3-9dedbcfbf930', '2 Ω', '2', '1', '25cd8d0d-d185-41e8-9943-fdf1264236f2', '2025-10-24 12:15:06.942', '2025-10-24 13:20:30.318');

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

--
-- Dumping data for table `featured_image`
--

INSERT INTO `featured_image` (`id`, `productId`, `url`, `createdAt`, `updatedAt`) VALUES
('042af5ac-92df-46ca-818b-438f21f76822', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/featuredimages/1733969924783-PG 854-2 Red-1735875741756.webp', '2025-01-03 03:42:21.846', '2025-01-03 03:42:21.846'),
('6b89ba09-5b6c-4508-a653-3c58f96f2cf6', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/featuredimages/1735875750492-cropped-1733969935616-12385-sparta-1755244504471.webp', '2025-08-15 07:55:04.548', '2025-08-15 07:55:04.548'),
('770ca9f5-c323-41a2-86ee-0ec11048c922', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/featuredimages/cropped-1733969827686-Legacy1277&1299-1735875729044.webp', '2025-01-03 03:42:09.138', '2025-01-03 03:42:09.138'),
('9becc811-575d-4bd3-b317-cf2dc870fbbb', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/featuredimages/cropped-1733969904682-638&838-1735875720032.webp', '2025-02-07 06:12:02.791', '2025-02-07 06:12:02.791'),
('e3371df7-3225-4373-9aef-38d285fbee41', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/featuredimages/4in BST 422 Mk3 Collage-1732072219440.webp', '2024-12-03 03:01:40.041', '2024-12-03 03:01:40.041');

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

--
-- Dumping data for table `graph_image`
--

INSERT INTO `graph_image` (`id`, `productId`, `url`, `createdAt`, `updatedAt`) VALUES
('1777a7f0-a192-402f-b401-9dec41a23274', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productfrequencyresponse/BST 1614 Respon Frekuensi-1733734694037.webp', '2024-12-09 08:58:14.316', '2024-12-09 08:58:14.316'),
('19bfc805-c2dc-4591-a428-c39a4b776d0f', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productfrequencyresponse/4in BST 1023 Dual Cone Respon Frekuensi-1733734616854.webp', '2024-12-09 08:56:57.104', '2024-12-09 08:56:57.104'),
('203ea75b-5acd-4634-9487-c531cdd49f19', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productfrequencyresponse/12in LG 1296-2 Mk1 Respon Frekuensi-1733734816340.webp', '2024-12-09 09:00:16.591', '2024-12-09 09:00:16.591'),
('2763cd1d-84fa-4e5e-bb17-df9fcd44b474', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productfrequencyresponse/8in LG-838-2-Mk1 Respon Frekuensi-1733969545070.webp', '2024-12-12 02:13:24.823', '2024-12-12 02:13:24.823'),
('346623ea-4260-4308-b4cc-bdf9c28a2804', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productfrequencyresponse/10in 1095-2 Mk1 Respon Frekuensi-1731395781069.webp', '2024-12-13 01:59:24.740', '2024-12-13 01:59:24.740'),
('353de05c-76a0-4062-9299-a891e1475ac3', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productfrequencyresponse/12in PG 1254 Respon Frekuensi-1731893093771.webp', '2024-11-28 03:32:11.124', '2024-11-28 03:32:11.124'),
('3774e2e8-62d3-4a5e-84c7-e44afb803b41', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '/uploads/productfrequencyresponse/8in LG 896 Respon frekuensi-1731395849542.webp', '2024-11-28 03:22:53.638', '2024-11-28 03:22:53.638'),
('3bff0a82-4593-4e40-a998-66bdb54ed032', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productfrequencyresponse/12in LG 1298-2 RF-1732254362002.webp', '2024-11-28 03:20:26.644', '2024-11-28 03:20:26.644'),
('42d5908f-a6ab-4866-94b3-7e89e294f03e', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '/uploads/productfrequencyresponse/respon-frekuensi-lg-1040-2-1758511373134.png', '2025-09-22 03:22:54.113', '2025-09-22 03:22:54.113'),
('4979cde3-c96c-42aa-ab9a-6bfab3abd418', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productfrequencyresponse/6in-LG-696-2-LEGACY-respon-freq-1727745200595.webp', '2024-11-28 03:22:07.574', '2024-11-28 03:22:07.574'),
('53fee7de-6795-42bd-8438-4c3a12f19cf0', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '/uploads/productfrequencyresponse/10385 Respon Frekuensi-1733734591430.webp', '2024-12-17 05:55:19.914', '2024-12-17 05:55:19.914'),
('54f56349-3047-4173-8748-a92e6c2d6960', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productfrequencyresponse/12in LG 1238-2 LEGACY Respon Frekuensi-1733734756015.webp', '2024-12-09 08:59:16.263', '2024-12-09 08:59:16.263'),
('61963211-7581-474d-b72c-4c6a23f45391', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productfrequencyresponse/pg 1054 2 Respon Frekuensi-1731895109812.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137'),
('61aec287-6eb5-4ece-907b-1ed42d448337', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productfrequencyresponse/1098 respon frekuensi-1731395653091.webp', '2024-11-28 03:12:45.628', '2024-11-28 03:12:45.628'),
('6bb90bd2-372f-4e91-b816-5796bf20a274', 'e1c25166-8945-4f86-a898-3795b4b44883', '/uploads/productfrequencyresponse/respon-frekuensi-lg-1240-2-1758512181162.webp', '2025-09-22 03:36:22.156', '2025-09-22 03:36:22.156'),
('8f7b67dc-04a0-4c60-8e3d-921623e7148c', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productfrequencyresponse/1096-2 Respon Frekuensi-1733734841996.webp', '2024-12-09 09:00:42.292', '2024-12-09 09:00:42.292'),
('921fc888-d901-49c8-8747-9975d70ee9a6', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productfrequencyresponse/12386 Respon Frekuensi-1732254500413.webp', '2024-11-28 03:25:39.987', '2024-11-28 03:25:39.987'),
('9921275e-35b9-42c4-ae13-ed626fdcf3e0', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productfrequencyresponse/6.5in BST 615 Mk3 Respon Frekuensi -1733734670058.webp', '2024-12-09 08:57:50.384', '2024-12-09 08:57:50.384'),
('ad4912ff-7725-4de6-9414-48b57df8e06a', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '/uploads/productfrequencyresponse/15in LG 1596 cone RF-1732254129131.webp', '2024-11-28 03:20:58.025', '2024-11-28 03:20:58.025'),
('b28cdc86-b710-4fa1-baa8-0744b803f0c2', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productfrequencyresponse/1292 Respon frekuensi-1732254591484.webp', '2024-11-28 03:19:22.606', '2024-11-28 03:19:22.606'),
('b6071d62-995e-4ba3-a13e-c35147a02cef', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productfrequencyresponse/6.5in LG 6521 Respon Frekuensi-1733734793215.webp', '2024-12-09 08:59:53.445', '2024-12-09 08:59:53.445'),
('bd447deb-d1e7-4077-b384-eb06aa855a63', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productfrequencyresponse/1277-2 Respon Frekuensi-1733969592895.webp', '2024-12-13 00:50:52.327', '2024-12-13 00:50:52.327'),
('c70ce8be-7f90-4bdd-9658-3c666ed3f24e', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productfrequencyresponse/12in LG-12385-2 SPARTA Respon Frekuensi-1733734775305.webp', '2025-07-30 01:07:25.663', '2025-07-30 01:07:25.663'),
('cbede2a1-aa87-4761-9d95-e832dee6300f', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productfrequencyresponse/1295 Respon Frekuensi-1732254432064.webp', '2024-11-28 03:19:37.776', '2024-11-28 03:19:37.776'),
('d9461414-9679-4f93-b599-d5c5b026ed32', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productfrequencyresponse/5in BST 522 Mk3 Respon Frekuensi-1733734713403.webp', '2024-12-09 08:58:33.637', '2024-12-09 08:58:33.637'),
('e07ee47e-3358-4ff3-b934-40f73e98b2f6', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '/uploads/productfrequencyresponse/6in 638 Respon Frekuensi-1731395976841.webp', '2024-11-28 03:23:18.530', '2024-11-28 03:23:18.530'),
('e0a265fe-7f31-430f-aa7d-7a7fd55db530', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '/uploads/productfrequencyresponse/respon frekuensi LG 1299-1731395912495.webp', '2024-11-28 03:20:43.408', '2024-11-28 03:20:43.408'),
('e4ee2de1-e888-4d7f-a9a3-1e484f5f253c', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productfrequencyresponse/8in 854 Prestige Frekuensi Response-1731893145812.webp', '2024-11-28 03:32:29.306', '2024-11-28 03:32:29.306'),
('f27609a0-3972-4004-a542-7def54fe9e1b', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productfrequencyresponse/6X9in BST 6981 Mk1 Respon Frekuensi-1733734643908.webp', '2024-12-09 08:57:24.171', '2024-12-09 08:57:24.171'),
('f58139cd-7c93-4408-89b3-2565c0b46841', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productfrequencyresponse/1077 Respon Frekuensi-1732254648993.webp', '2024-11-28 03:10:43.882', '2024-11-28 03:10:43.882'),
('f5c3fdc5-8488-4827-be4c-9508c9521c2e', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/productfrequencyresponse/4in BST 422 Respon Frekuensi-1733734732727.webp', '2024-12-09 08:58:52.970', '2024-12-09 08:58:52.970');

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

--
-- Dumping data for table `image_catalogues`
--

INSERT INTO `image_catalogues` (`id`, `productId`, `url`, `createdAt`, `updatedAt`, `name`) VALUES
('02fa6593-e9d8-4aaa-bd45-e5cebbc2aba7', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productimagecatalogues/8in 854 Prestige magnet cone chasis-1731893146020.webp', '2024-11-28 03:32:29.306', '2024-11-28 03:32:29.306', 'Side Top'),
('0345bb28-3bd4-4128-85aa-1c0083ad6ae4', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productimagecatalogues/12in LG 1298-2 Magnet-1732254362170.webp', '2024-11-28 03:20:26.644', '2024-11-28 03:20:26.644', 'Bottom'),
('06f66b15-1948-4e2d-a51d-283e90dd16da', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '/uploads/productimagecatalogues/10in LG 10385 (2)-1734055213560.webp', '2024-12-17 05:55:19.913', '2024-12-17 05:55:19.913', 'Top'),
('085809ea-cfbb-46f0-bb4f-194270a1a7b0', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '/uploads/productimagecatalogues/8in LG 896 cone-1731395849646.webp', '2024-11-28 03:22:53.637', '2024-11-28 03:22:53.637', 'Top'),
('0d7a1a7c-b7ea-4749-b02f-cbec94483f40', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productimagecatalogues/4in BST 1023 Dual Cone no mesh-1731895876822.webp', '2024-12-09 08:56:57.103', '2024-12-09 08:56:57.103', 'Top No Mesh'),
('0de2bdbe-c133-4176-9f27-adfc36ba212c', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productimagecatalogues/1095-2 Mk1 Chassis-1731395781230.webp', '2024-12-13 01:59:24.739', '2024-12-13 01:59:24.739', 'Side'),
('0e1ab8ad-1282-42c2-87e2-1e9d4d281c13', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productimagecatalogues/6X9in-BST-6981-Mk1-cone-1731894927233.webp', '2024-12-09 08:57:24.170', '2024-12-09 08:57:24.170', 'Top'),
('10d70a2b-1065-43e1-964d-f36f00b76a19', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productimagecatalogues/12in LG 1292-2 magnet-1732254591662.webp', '2024-11-28 03:19:22.605', '2024-11-28 03:19:22.605', 'Bottom'),
('16567a4d-f613-429b-bd3f-4e3eceebbf25', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productimagecatalogues/12in LG 1238-2 LEGACY Chasis-1732254833771.webp', '2024-12-09 08:59:16.262', '2024-12-09 08:59:16.262', 'Side Bottom'),
('166eca3b-5654-4fe7-8075-59b775976c67', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productimagecatalogues/12in LG 1296-2 Mk1 Magnet-1732254919574.webp', '2024-12-09 09:00:16.591', '2024-12-09 09:00:16.591', 'Bottom'),
('176018f5-d895-4742-bfd3-c0f38f354b45', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '/uploads/productimagecatalogues/1040-chasis-jejeg-1758506382978.webp', '2025-09-22 01:59:43.304', '2025-09-22 07:35:39.265', 'Chasis Side'),
('19263487-976d-44d9-b3a6-a7002841d59f', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', '/uploads/productimagecatalogues/4in 8347 KH Magnet-1731893247174.webp', '2024-11-28 03:34:00.594', '2024-11-28 03:34:00.594', 'Bottom'),
('1b4ef847-33b9-46a9-8339-68992c043df4', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productimagecatalogues/12in LG-12386-2 SPARTA Magnet-1732254500585.webp', '2024-11-28 03:25:39.986', '2024-11-28 03:25:39.986', 'Bottom'),
('2a6066f1-4756-437b-8ed3-245e4e1dbf53', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productimagecatalogues/12in LG 1295-2 Mk1 Chasis-1732254432307.webp', '2024-11-28 03:19:37.776', '2024-11-28 03:19:37.776', 'Side Bottom'),
('2e2b8365-ab52-41d9-a8cc-4743da0cc3ae', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productimagecatalogues/10in 1096-Mk1 magnet-1731395725672.webp', '2024-12-09 09:00:42.291', '2024-12-09 09:00:42.291', 'Side'),
('2f2e0486-e24f-46fb-85c8-1b280c923295', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productimagecatalogues/1727745200678-lg-696-2-cone-1024x1021-1730865885560.webp', '2024-11-28 03:22:07.574', '2024-11-28 03:22:07.574', 'Top'),
('306db6ca-74ee-49ff-b027-c897957b8ec6', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', '/uploads/productimagecatalogues/4in 8347 BH Magnet-1731893197682.webp', '2024-11-28 03:33:43.389', '2024-11-28 03:33:43.389', 'Bottom'),
('33273d92-5bff-4dc8-b500-6e8085ffacc8', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productimagecatalogues/10in LG 1077-2 chasis-1732254649218.webp', '2024-11-28 03:10:43.881', '2025-08-15 07:21:35.827', 'Side Bottom'),
('33cc154f-98ee-4308-954e-3f7d20ebb44a', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productimagecatalogues/pg 1054 2 magnet-1731395570224.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137', 'Bottom'),
('350c14bd-6602-4f2e-aa8c-a27c53fde92d', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productimagecatalogues/6X9in-BST-6981-Mk1-cone-no-mesh-1731894927292.webp', '2024-12-09 08:57:24.170', '2024-12-09 08:57:24.170', 'Top No Mesh'),
('392894e8-26e2-43c5-aee9-8c2ed6ddc51f', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productimagecatalogues/10in 1096-Mk1 magnet top-1731395725717.webp', '2024-12-09 09:00:42.291', '2024-12-09 09:00:42.291', 'Bottom'),
('3b198340-756e-4ff5-b666-57338961d0c5', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productimagecatalogues/pg 1054 2 chassis-1731395570185.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137', 'Side Bottom'),
('3ee9dc6c-3f60-4c4e-8af4-d8f7c72f4845', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', '/uploads/productimagecatalogues/4in 8347 BH Cone-1731893197637.webp', '2024-11-28 03:33:43.389', '2024-11-28 03:33:43.389', 'Top'),
('408c87d5-2424-47a6-a6b9-921293e98a0b', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productimagecatalogues/6.5in LG 6521 magnet-1731892992814.webp', '2024-12-09 08:59:53.445', '2024-12-09 08:59:53.445', 'Bottom'),
('41993558-4736-4c84-bf1b-fa09c8b0df2b', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productimagecatalogues/12in LG 1295-2 Mk1 Cone-1732254432202.webp', '2024-11-28 03:19:37.776', '2024-11-28 03:19:37.776', 'Top'),
('49a24017-248d-49df-b619-6236dfe59071', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productimagecatalogues/12in LG 1296-2 Mk1 Chasis-1732254919633.webp', '2024-12-09 09:00:16.591', '2024-12-09 09:00:16.591', 'Side Bottom'),
('4a2ef0b3-a232-4414-93c2-d9456318ee92', 'e1c25166-8945-4f86-a898-3795b4b44883', '/uploads/productimagecatalogues/1240-chasis-side-1758512181814.webp', '2025-09-22 03:36:22.155', '2025-09-22 03:36:22.155', 'Chasis Side'),
('502e91fd-1f54-4369-8304-ded3516f0959', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productimagecatalogues/12in LG 1296-2 Mk1 Cone-1732254919527.webp', '2024-12-09 09:00:16.591', '2024-12-09 09:00:16.591', 'Top'),
('53623feb-62fb-4d53-aaa7-2834ef235737', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productimagecatalogues/10in LG-1098-2 magnet-1731395653235.webp', '2024-11-28 03:12:45.627', '2024-11-28 03:12:45.627', 'Side'),
('53a7297f-14e7-47b7-98a1-a817f507a3de', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '/uploads/productimagecatalogues/Foto Legacy Bawah.webp', '2025-09-22 07:35:39.207', '2025-09-22 07:35:39.207', 'Bottom Side'),
('53be2e67-ae3a-4ccf-a13e-3c0069e4f5c0', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productimagecatalogues/BST 1614 chasis-1732765167406.webp', '2024-12-09 08:58:14.315', '2024-12-09 08:58:14.315', 'Side'),
('54a27c63-13e2-4b68-806a-bad86477d1f4', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productimagecatalogues/10in LG 1077-2 magnet-1732254649173.webp', '2024-11-28 03:10:43.881', '2025-08-15 07:21:35.827', 'Bottom'),
('56a3f5bf-9155-4c57-b84e-60086bf51b58', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productimagecatalogues/BST 1614 magnet-1732765167358.webp', '2024-12-09 08:58:14.315', '2024-12-09 08:58:14.315', 'Bottom'),
('59597d7d-ab5d-4976-8906-7bf319b741bd', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', '/uploads/productimagecatalogues/4in 8347 KH Cone-1731893247136.webp', '2024-11-28 03:34:00.594', '2024-11-28 03:34:00.594', 'Top'),
('5de46b56-52ae-498c-9956-c93719815293', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productimagecatalogues/1095-2 Mk1 Cone-1731395781188.webp', '2024-12-13 01:59:24.739', '2024-12-13 01:59:24.739', 'Top'),
('5e75580c-f0e7-41e8-bfc0-964093fff08e', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productimagecatalogues/10in LG 1077-2 cone-1732254649107.webp', '2024-11-28 03:10:43.881', '2025-08-15 07:21:35.827', 'Top'),
('613108fe-c17f-4b64-b79b-63180e0a332f', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productimagecatalogues/6X9in-BST-6981-Mk1-chasis-1731894927334.webp', '2024-12-09 08:57:24.170', '2024-12-09 08:57:24.170', 'Side'),
('64a5aab9-51eb-4ee2-af84-2451f0963b0d', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '/uploads/productimagecatalogues/6in 638 chassis-1731395977014.webp', '2024-11-28 03:23:18.530', '2024-11-28 03:23:18.530', 'Side'),
('69e4712c-7cb2-4ee0-ab1f-36c8fdb5e7f0', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productimagecatalogues/1727678256578-lg-696-2-magnet-1024x1024-1730865885685.webp', '2024-11-28 03:22:07.574', '2024-11-28 03:22:07.574', 'Bottom'),
('6c445dfd-ff97-4e08-bf4e-5f43a3cd8b3a', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productimagecatalogues/12in LG-12385-2 SPARTA Magnet-1732254879494.webp', '2025-07-30 01:07:25.662', '2025-08-18 08:51:41.115', 'Bottom'),
('7c19cf80-7d0c-4a38-857f-fb7907f6f93c', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productimagecatalogues/12in 1254 cone up-1731893093911.webp', '2024-11-28 03:32:11.124', '2024-11-28 03:32:11.124', 'Side Top'),
('7c9e578d-724f-4c3b-8747-a535bcb0dce7', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productimagecatalogues/12in LG-12385-2 SPARTA Cone-1732254879447.webp', '2025-07-30 01:07:25.662', '2025-08-18 08:51:41.120', 'Top'),
('7e907ca4-65cf-4dc4-9e29-5b6bd9da85b7', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productimagecatalogues/8in 854 Prestige magnet chasis-1731893145983.webp', '2024-11-28 03:32:29.306', '2024-11-28 03:32:29.306', 'Side Bottom'),
('7f9551a1-c34d-4afa-ab44-5d5a145a8168', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '/uploads/productimagecatalogues/15in LG 1596 chasis.jpg-1731893028894.webp', '2024-11-28 03:20:58.025', '2024-11-28 03:20:58.025', 'Side'),
('8096f421-2607-45df-b629-d0115b3caf4f', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productimagecatalogues/12in LG 1295-2 Mk1 Magnet-1732254432264.webp', '2024-11-28 03:19:37.776', '2024-11-28 03:19:37.776', 'Bottom'),
('814d95cd-e71b-4eef-9da5-537dc8b7b498', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productimagecatalogues/6.5in LG 6521 cone-1731892992721.webp', '2024-12-09 08:59:53.445', '2024-12-09 08:59:53.445', 'Top'),
('84f1a576-30ad-4d66-b280-6b327c37a1c5', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productimagecatalogues/12in LG 1238-2 LEGACY ENERGY Cone-1732254833647.webp', '2024-12-09 08:59:16.262', '2024-12-09 08:59:16.262', 'Top'),
('8640c0ec-6055-49b2-842a-2d0d43a8896e', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productimagecatalogues/4in BST 1023 Dual Cone Magnet-1731895876866.webp', '2024-12-09 08:56:57.104', '2024-12-09 08:56:57.104', 'Bottom'),
('8787ed09-aa2c-4fe3-955a-686763e61344', '3213ef26-e2ab-4332-8d12-6ad1f18f39a2', '/uploads/productimagecatalogues/4in 8347 BH Chasis-1731893197719.webp', '2024-11-28 03:33:43.389', '2024-11-28 03:33:43.389', 'Side'),
('88ef318a-5660-44d1-9984-b08d0f34d0bd', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productimagecatalogues/1277-2 chassis-1733969593080.webp', '2024-12-13 00:50:52.326', '2024-12-13 00:50:52.326', 'Side'),
('8a47dcda-ec1a-483c-aa92-5ab4f1eb893e', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productimagecatalogues/pg 1054 2 cone-1731395570133.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137', 'Top'),
('8a57e797-817e-4b55-bd4a-0d9ad228d696', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productimagecatalogues/5in-BST-522-Mk3-Chassis-1731894853895.webp', '2024-12-09 08:58:33.637', '2024-12-09 08:58:33.637', 'Side'),
('8b1a4a29-f941-4432-9df5-2ea4d6ead2a5', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productimagecatalogues/12in LG 1238-2 LEGACY ENERGY Magnet-1732254833719.webp', '2024-12-09 08:59:16.262', '2024-12-09 08:59:16.262', 'Bottom'),
('8cd2709f-4835-4391-ba8e-d252291d0dfe', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productimagecatalogues/8in LG-838-2-Mk1 Magnet-1733969545241.webp', '2024-12-12 02:13:24.823', '2025-10-25 12:22:41.697', 'Bottom'),
('8e4c90bb-2e59-49f2-b0c2-7adcb0188373', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productimagecatalogues/8in LG-838-2-Mk1 Cone-1733969545161.webp', '2024-12-12 02:13:24.823', '2025-10-25 12:22:41.696', 'Top'),
('8e88335a-e126-4c1f-bb64-95e7311e9755', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productimagecatalogues/10in LG-1098-2 cone-1731395653183.webp', '2024-11-28 03:12:45.627', '2024-11-28 03:12:45.627', 'Top'),
('95f966b9-1fa8-4035-942c-fbf4b233a179', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productimagecatalogues/12in LG 1292-2-1732254591616.webp', '2024-11-28 03:19:22.605', '2024-11-28 03:19:22.605', 'Top'),
('9c506552-6aab-4f5d-9da5-bf10f16f1434', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productimagecatalogues/8in LG-838-2-Mk1 Chasis-1733969545198.webp', '2024-12-12 02:13:24.823', '2025-10-25 12:22:41.697', 'Side'),
('9c7bdb7f-d5a1-4fd1-b9d1-b80ffa21e175', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '/uploads/productimagecatalogues/12in LG 1299 chassis-1731395912647.webp', '2024-11-28 03:20:43.407', '2024-11-28 03:20:43.407', 'Side'),
('9f72f8e5-0f77-400c-bd68-b5972ac8ac45', '745f44c7-888c-4919-832c-99fb176ff0fa', '/uploads/productimagecatalogues/LG 138 single slanted-1731395194678.webp', '2024-11-28 03:31:33.789', '2024-11-28 03:31:33.789', 'Side'),
('a05090ab-99ba-4b4d-8d13-d345083fdee2', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productimagecatalogues/10in 1096-Mk1 cone-1731395725627.webp', '2024-12-09 09:00:42.291', '2024-12-09 09:00:42.291', 'Top'),
('a0f1add5-07dd-46c6-a330-a937520ee587', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productimagecatalogues/10in LG-1098-2 magnet top-1731395653287.webp', '2024-11-28 03:12:45.627', '2024-11-28 03:12:45.627', 'Bottom'),
('a5568e62-6c99-4eee-bec2-a29b3de52bc2', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/productimagecatalogues/4in BST 422 Magnet-1731892945544.webp', '2024-12-09 08:58:52.970', '2024-12-09 08:58:52.970', 'Side'),
('a63b41c6-a3bf-45e0-8512-faf8b7e7192a', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productimagecatalogues/BST 1614 cone-1732765167306.webp', '2024-12-09 08:58:14.315', '2024-12-09 08:58:14.315', 'Top'),
('a737507a-09bc-434d-8482-061caa9da327', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productimagecatalogues/pg 1054 2 cone up-1731895110001.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137', 'Side Top'),
('a916085b-a5a5-4f2e-a531-bbb3343cc7d8', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '/uploads/productimagecatalogues/6in 638 cone-1731395976953.webp', '2024-11-28 03:23:18.530', '2024-11-28 03:23:18.530', 'Top'),
('aabf309e-6a33-4adb-a462-92b4d0ebed5e', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '/uploads/productimagecatalogues/10in LG 10385 chassis-1734055213596.webp', '2024-12-17 05:55:19.913', '2024-12-17 05:55:19.913', 'Side'),
('abb87e75-92aa-48b9-b4f5-c043b1a313cb', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productimagecatalogues/12in 1254 chasis-1731893093952.webp', '2024-11-28 03:32:11.124', '2024-11-28 03:32:11.124', 'Side Bottom'),
('b1048a23-186a-4a21-84ac-9ce920209209', 'bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', '/uploads/productimagecatalogues/4in 8347 KH Chasis-1731893247212.webp', '2024-11-28 03:34:00.594', '2024-11-28 03:34:00.594', 'Side'),
('b24a9eb8-fb1d-4f67-9bfd-97914d0d8d2b', 'e1c25166-8945-4f86-a898-3795b4b44883', '/uploads/productimagecatalogues/foto-legacy-1240-sticker-1758512182044.webp', '2025-09-22 03:36:22.155', '2025-09-22 03:36:22.155', 'Bottom Side'),
('bc1f6c18-37ef-42b3-a3b6-d09fd270cd5a', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productimagecatalogues/5in-BST-522-Mk3-Cone-no-magnet-1731894853846.webp', '2024-12-09 08:58:33.637', '2024-12-09 08:58:33.637', 'Top No Magnet'),
('bc939b31-8b0c-4fbf-8dc9-2f69c7ff6dee', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productimagecatalogues/12in LG 1298-2 Cone-1732254362121.webp', '2024-11-28 03:20:26.643', '2024-11-28 03:20:26.643', 'Top'),
('bd459b48-cdb8-47de-8860-2a8ae058b07a', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productimagecatalogues/12in LG 1292-2 chasis-1732254591722.webp', '2024-11-28 03:19:22.605', '2024-11-28 03:19:22.605', 'Side Bottom'),
('beedff2a-8e01-4c3a-95ce-bc7b9883e14c', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productimagecatalogues/1277-2 cone-1733969593035.webp', '2024-12-13 00:50:52.326', '2024-12-13 00:50:52.326', 'Top'),
('bf0b690c-71dd-40f7-b8e6-1a4815742677', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productimagecatalogues/6.5in LG 6521 chassis-1731892992769.webp', '2024-12-09 08:59:53.445', '2024-12-09 08:59:53.445', 'Side'),
('c3869c82-47dc-4f05-b5a6-cf35b44ebe3f', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/productimagecatalogues/4in BST 422 Cone-1731892945489.webp', '2024-12-09 08:58:52.970', '2024-12-09 08:58:52.970', 'Top'),
('c7f4a2a4-2dfb-43cc-b6cb-90b29f18304e', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productimagecatalogues/12in 1254 cone-1731893093863.webp', '2024-11-28 03:32:11.124', '2024-11-28 03:32:11.124', 'Top'),
('c99d1a0f-854f-46bc-8dfe-fc92fe3a9df4', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productimagecatalogues/12in LG 1298-2 Chasis-1732254362224.webp', '2024-11-28 03:20:26.644', '2024-11-28 03:20:26.644', 'Side Bottom'),
('ca10c601-cc32-4907-a0f1-d6a08d3b858a', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productimagecatalogues/5in-BST-522-Mk3-Cone-1731894853935.webp', '2024-12-09 08:58:33.637', '2024-12-09 08:58:33.637', 'Top'),
('cc5478bd-ce05-4749-ae1b-39eac24ad4cc', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productimagecatalogues/4in BST 1023 Dual Cone-1731895876772.webp', '2024-12-09 08:56:57.104', '2024-12-09 08:56:57.104', 'Top'),
('d215af00-abae-4ae5-8f57-df9cf34be82a', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productimagecatalogues/1277-2 magnet-1733969593117.webp', '2024-12-13 00:50:52.326', '2024-12-13 00:50:52.326', 'Bottom'),
('d326a4cc-e3e9-44d2-951a-f38a2077cfb5', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productimagecatalogues/6.5in BST 615 Mk3 Chasis-1732254773448.webp', '2024-12-09 08:57:50.383', '2024-12-09 08:57:50.383', 'Side Bottom'),
('da1b59c9-6588-41eb-8789-f9ff44f42377', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productimagecatalogues/8in 854 Prestige cone-1731893145918.webp', '2024-11-28 03:32:29.306', '2024-11-28 03:32:29.306', 'Top'),
('da77d9cc-771d-41f6-969a-0011a65fd9cb', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productimagecatalogues/12in LG-12386-2 SPARTA Cone-1732254500527.webp', '2024-11-28 03:25:39.986', '2024-11-28 03:25:39.986', 'Top'),
('dc1bc55a-8746-42c2-881a-0da27730ba3d', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productimagecatalogues/4in BST 1023 Dual Cone Chasis-1731895876917.webp', '2024-12-09 08:56:57.104', '2024-12-09 08:56:57.104', 'Side'),
('ddc3cbd9-41bd-41bc-80a4-113e59931f36', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productimagecatalogues/6.5in BST 615 Mk3 Magnet -1732254773400.webp', '2024-12-09 08:57:50.383', '2024-12-09 08:57:50.383', 'Bottom'),
('e1e29215-aae3-4f9e-bac6-38f215ad7290', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productimagecatalogues/6.5in BST 615 Mk3 Cone 2-1732254773276.webp', '2024-12-09 08:57:50.383', '2024-12-09 08:57:50.383', 'Top'),
('e9cefa5d-37a6-49e3-a76b-8159c5443189', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productimagecatalogues/6.5in BST 615 Mk3 Cone 1-1732254773335.webp', '2024-12-09 08:57:50.383', '2024-12-09 08:57:50.383', 'Top Without Mesh'),
('eb8e44ef-e418-40ea-a0ee-3710c36f2059', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productimagecatalogues/1727678256663-lg-696-2-chassis-1024x849-1730865885624.webp', '2024-11-28 03:22:07.574', '2024-11-28 03:22:07.574', 'Side'),
('ee673007-a00a-496c-b83c-4f835de1fe0a', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '/uploads/productimagecatalogues/8in LG 896 chassis-1731395849696.webp', '2024-11-28 03:22:53.637', '2024-11-28 03:22:53.637', 'Side'),
('f2b7a662-9acb-4e4a-8109-e66693b4256c', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productimagecatalogues/12in LG-12385-2 SPARTA Chasis-1732254879545.webp', '2025-07-30 01:07:25.662', '2025-08-18 08:51:41.116', 'Side Bottom'),
('f32f3706-1d7e-4a8f-9773-037525cd5f07', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productimagecatalogues/1095-2 Mk1 Magnet-1731395781275.webp', '2024-12-13 01:59:24.739', '2024-12-13 01:59:24.739', 'Bottom'),
('f3eed289-9f2a-453a-bdc3-f1a9d122bf43', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '/uploads/productimagecatalogues/15in LG 1596 cone.jpg-1731893028848.webp', '2024-11-28 03:20:58.025', '2024-11-28 03:20:58.025', 'Top'),
('feab07bb-5a99-4743-9f11-87683de19751', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '/uploads/productimagecatalogues/12in LG 1299 magnet-1731395912610.webp', '2024-11-28 03:20:43.407', '2024-11-28 03:20:43.407', 'Top'),
('fec3bd9b-f488-40b2-ae9d-26847dd4dc57', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productimagecatalogues/12in LG-12386-2 SPARTA chasis-1732254500633.webp', '2024-11-28 03:25:39.986', '2024-11-28 03:25:39.986', 'Side Bottom');

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

--
-- Dumping data for table `impedance_image`
--

INSERT INTO `impedance_image` (`id`, `productId`, `url`, `createdAt`, `updatedAt`) VALUES
('0b791520-0984-42b9-8ca5-e92981691b5a', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productfrequencyresponse/10in 1095-2 Mk1 Impedansi-1731395781127.webp', '2024-12-13 01:59:24.740', '2024-12-13 01:59:24.740'),
('0c5942b5-3e7b-452d-b9cf-fe32c3150208', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productfrequencyresponse/1077 Impedansi-1732254649047.webp', '2024-11-28 03:10:43.882', '2024-11-28 03:10:43.882'),
('15007fcd-ad94-46d7-b835-96b1a825ed66', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productfrequencyresponse/6.5in BST 615 Mk3 Impedansi -1733734670172.webp', '2024-12-09 08:57:50.384', '2024-12-09 08:57:50.384'),
('17536563-bd71-4744-9bd7-d3f82527d6e8', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productfrequencyresponse/12386 Impedansi-1732254500455.webp', '2024-11-28 03:25:39.987', '2024-11-28 03:25:39.987'),
('2e030fc1-d7dc-4278-9802-c548d65a852e', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '/uploads/productfrequencyresponse/15in LG 1596 cone Impedansi-1732254129201.webp', '2024-11-28 03:20:58.025', '2024-11-28 03:20:58.025'),
('2fcecf55-170d-4aa1-a8ce-58c372b62af0', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '/uploads/productfrequencyresponse/6in 638 Impedansi-1731395976897.webp', '2024-11-28 03:23:18.530', '2024-11-28 03:23:18.530'),
('3379ab97-9ac0-4f1e-8528-df82a2cd127b', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productfrequencyresponse/8in LG-838-2-Mk1 Impedansi-1733969545112.webp', '2024-12-12 02:13:24.823', '2024-12-12 02:13:24.823'),
('40dad592-db06-432b-b6c1-f0a04e88a1c5', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productfrequencyresponse/1295 Impedansi-1732254432119.webp', '2024-11-28 03:19:37.776', '2024-11-28 03:19:37.776'),
('41c68a8d-543a-4c5c-aa82-751e56943755', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productfrequencyresponse/12in LG 1298-2 Impedansi-1732254362066.webp', '2024-11-28 03:20:26.644', '2024-11-28 03:20:26.644'),
('52510753-776f-4916-93a9-1a8bc9c08093', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '/uploads/productfrequencyresponse/impedansi LG 1299-1731395912545.webp', '2024-11-28 03:20:43.408', '2024-11-28 03:20:43.408'),
('5809b6d8-8fc5-41d6-9f1f-4b22d6f9bdae', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productfrequencyresponse/12in LG 1296-2 Mk1 Impedansi-1733734816452.webp', '2024-12-09 09:00:16.592', '2024-12-09 09:00:16.592'),
('582111da-52f1-4344-998d-582ff44dbebb', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productfrequencyresponse/12in LG-12385-2 SPARTA Impedansi-1733734775420.webp', '2025-07-30 01:07:25.663', '2025-07-30 01:07:25.663'),
('5b540553-1de8-478c-8311-37539866d6a7', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productfrequencyresponse/8in 854 Prestige Impedansi-1731893145861.webp', '2024-11-28 03:32:29.306', '2024-11-28 03:32:29.306'),
('717f1c1e-3bee-44db-927f-f9a1bd6d844d', 'e1c25166-8945-4f86-a898-3795b4b44883', '/uploads/productimpedance/impedansi-lg-1240-2-1758512181585.webp', '2025-09-22 03:36:22.156', '2025-09-22 03:36:22.156'),
('7a2efb7d-7e36-4aca-b1c2-058678e87708', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '/uploads/productfrequencyresponse/8in LG 896 Impedansi-1731395849596.webp', '2024-11-28 03:22:53.638', '2024-11-28 03:22:53.638'),
('7e2211e5-6f25-41c6-8d26-831093c948c2', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productfrequencyresponse/1292 Impedansi-1732254591559.webp', '2024-11-28 03:19:22.606', '2024-11-28 03:19:22.606'),
('7e6820d8-8417-48ac-8820-73ee3293719f', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '/uploads/productfrequencyresponse/10385 Impedansi-1733734591556.webp', '2024-12-17 05:55:19.914', '2024-12-17 05:55:19.914'),
('7f6cde94-e5e6-41f5-bebe-595fdd201ab4', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productfrequencyresponse/12in PG 1254 Impedansi-1731893093814.webp', '2024-11-28 03:32:11.124', '2024-11-28 03:32:11.124'),
('84119fff-c3ee-4059-ac4c-27fb70a7c3c0', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/productfrequencyresponse/4in BST 422 Impedansi-1733734732824.webp', '2024-12-09 08:58:52.970', '2024-12-09 08:58:52.970'),
('878df745-ae20-408d-9b08-2ed167cd9492', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productfrequencyresponse/1098 impedansi-1731395653141.webp', '2024-11-28 03:12:45.628', '2024-11-28 03:12:45.628'),
('a4929b8f-91ac-46d3-be1e-47b8e9bc13d7', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productfrequencyresponse/4in BST 1023 Dual Cone Impedansi-1733734616964.webp', '2024-12-09 08:56:57.104', '2024-12-09 08:56:57.104'),
('a6448519-34a0-420f-9d5a-d075d226ae4d', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productfrequencyresponse/6in-LG-696-2-LEGACY-Impedansi-1024x597-1727919169341.webp', '2024-11-28 03:22:07.574', '2024-11-28 03:22:07.574'),
('afd653d2-6553-48de-a6a0-8683d9892606', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productfrequencyresponse/5in BST 522 Mk3 Impedansi-1733734713501.webp', '2024-12-09 08:58:33.638', '2024-12-09 08:58:33.638'),
('b111bc08-1c5b-4b24-bb49-3d4710705a26', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productfrequencyresponse/1277-2 Impedansi-1733969592976.webp', '2024-12-13 00:50:52.328', '2024-12-13 00:50:52.328'),
('b409e235-e607-4c98-9350-846a023f9f96', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productfrequencyresponse/12in LG 1238-2 LEGACY Impedansi-1733734756120.webp', '2024-12-09 08:59:16.263', '2024-12-09 08:59:16.263'),
('d346af6f-51eb-43e2-8876-d15463d2e7af', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productfrequencyresponse/BST 1614 Impedansi-1733734694153.webp', '2024-12-09 08:58:14.316', '2024-12-09 08:58:14.316'),
('e132932d-5286-4b2c-8349-e477b042ab36', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productfrequencyresponse/pg 1054 2 Impedansi-1731895109922.webp', '2024-11-28 03:31:53.137', '2024-11-28 03:31:53.137'),
('e42a3130-92e8-4ba1-aa16-69bcc274d91d', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '/uploads/productimpedance/Impedansi LG 1040-2.png', '2025-09-22 07:35:39.470', '2025-09-22 07:35:39.470'),
('ef3ebb8f-13ee-4ebf-ac69-1c97b543b61c', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productfrequencyresponse/6X9in BST 6981 Mk1 Impedansi-1733734644011.webp', '2024-12-09 08:57:24.171', '2024-12-09 08:57:24.171'),
('fcb59f27-e9a4-406c-a2c7-6d26a150032b', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productfrequencyresponse/1096-2 Impedansi-1733734842132.webp', '2024-12-09 09:00:42.292', '2024-12-09 09:00:42.292'),
('fdf81100-11b2-45a9-8dda-196c34dd22b5', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productfrequencyresponse/6.5in LG 6521 Impedansi-1733734793305.webp', '2024-12-09 08:59:53.446', '2024-12-09 08:59:53.446');

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

--
-- Dumping data for table `multipledatasheetproduct`
--

INSERT INTO `multipledatasheetproduct` (`id`, `productId`, `url`, `name`) VALUES
('015a1b88-cf9b-4bce-892c-033c261381fd', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '/uploads/productdatasheet/44-1727255154899.pdf', '12\" LG 1292-2 Datasheet'),
('08b5d53b-3e98-4a28-808d-8c5bcd2fbd11', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '/uploads/productdatasheet/58-1727312633140.pdf', '6.5\" BST 1614 Datasheet'),
('0f27c649-4dc2-450d-8270-c636bc48c80b', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '/uploads/productdatasheet/24-1727255648310.pdf', '8\" LG 896-2 Datasheet'),
('1a376853-a4e3-4f41-9e69-4dd03c37b9fe', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '/uploads/productdatasheet/26-1727254278296.pdf', ' 10\" LG 1038-2 Datasheet'),
('2a0de7bd-58f9-45dc-8f1e-a5ef96fa6916', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '/uploads/productdatasheet/70 (1)-1727254349564.pdf', '10\" LG 10385-2 Datasheet'),
('32088747-c9ad-4fa2-8e7d-058a3dc24d9e', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '/uploads/productdatasheet/23-1727255488740.pdf', '6\" LG 638-2 MK1 Datasheet'),
('372816ee-2be3-4a81-b16c-b86564e42e50', '41a41be4-0044-4958-b270-7afa8207446c', '/uploads/productdatasheet/60-1727312749259.pdf', '6X9\" BST 6981 MK1 Datasheet'),
('3ef0bd58-5052-491d-9bdb-538025a14d96', '42802840-d898-46ea-8377-7e0a9b6a060f', '/uploads/productdatasheet/51-1727312076466.pdf', '10\" PG 1054-2 RED Datasheet'),
('3fd81746-e500-4cd9-b60e-15c7e44cbadb', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '/uploads/productdatasheet/3mn0706-00-r0-lg-1040-2-limited-edition_compressed-1758506381803.pdf', '10\" LG 1040-2 Datasheet'),
('42961afe-14c0-413a-9774-c27fbcbdc866', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '/uploads/productdatasheet/25-1727255601836.pdf', '8\" LG 838-2 MK1 Datasheet'),
('52d1de81-2a61-4d46-9de7-74dc261d0b6a', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '/uploads/productdatasheet/52-1727312129391.pdf', '12\" PG 1254-2 RED Datasheet'),
('5395a3c1-81b2-4adc-bee8-4f9ae6bc73c6', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '/uploads/productdatasheet/72-1727255019585.pdf', '12\" LG 12386-2 Datasheet'),
('54ba7ad6-0318-49d7-ae2c-d17f84fe23f7', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '/uploads/productdatasheet/50 (1)-1727312262451.pdf', '8\" PG 854-2 RED Datasheet'),
('5acbb1d6-7d67-4a8f-b26e-2144687ecf8e', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '/uploads/productdatasheet/40-1727255321224.pdf', '12\" LG 1298-2 Datasheet'),
('63e80bc2-487b-4711-a13a-dd67a8064a6b', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '/uploads/productdatasheet/36-1727255210791.pdf', '12\" LG 1295-2 MK1 Datasheet'),
('64e4f0af-c378-4573-b229-84dabea5fd25', '78c76b38-9464-446b-ad93-2a10560d25b8', '/uploads/productdatasheet/73-1728015452631.pdf', '10\" LG 10352 Datasheet'),
('6f48c18f-b0f7-4b68-8ab5-a5354f9943be', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', '/uploads/productdatasheet/63-1727312807748.pdf', 'PG 298 Datasheet'),
('71d78c00-cf95-4f2f-9018-38c14d3aff8a', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '/uploads/productdatasheet/33-1727254417455.pdf', ' 10\" LG 1077-2 Datasheet'),
('71e8834c-f64a-4a3a-aabc-da054643e67d', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '/uploads/productdatasheet/29-1727254557795.pdf', ' 10\" LG 1095-2-MK1 Datasheet'),
('761f5fcf-eb77-4d07-92cf-fb3f81132b31', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '/uploads/productdatasheet/85-1727312865472.pdf', '4\" BST 1023 Dual Datasheet'),
('7718258c-aeac-4e68-a27b-a086a6c08110', '2e888496-0048-4943-982f-ebfdd4625e1f', '/uploads/productdatasheet/69-1727254194911.pdf', '10\" LG 1009-2 Datasheet'),
('8b5d09aa-6404-43dd-997d-984f07fbea73', '58e4147b-93a0-4809-955d-d04ce1161c5e', '/uploads/productdatasheet/43-1727255083049.pdf', '12\" LG 1277-2 Datasheet'),
('99469361-99a3-426d-95d7-0bda67cd747a', '970f6aa5-91f5-464c-96e4-83f86280d053', '/uploads/productdatasheet/79-1727311675936.pdf', '6.5\" LG-6521 Datasheet'),
('9c87d463-2b2d-4438-bc68-a17822e99c13', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '/uploads/productdatasheet/77-1727312451782.pdf', '4\" BST 422 MK3 Datasheet'),
('afcf494f-595b-48a8-9675-ef301adb9d18', '164c19d2-170f-4b48-958e-68ec335392f0', '/uploads/productdatasheet/78-1727312589593.pdf', '5\" BST 522 MK3 Datasheet'),
('b8dcc9d2-7783-4608-bd84-ce25abea674f', '4899e144-b93b-446a-89b4-b055230545ee', '/uploads/productdatasheet/48-1727254846131.pdf', ' 10\" LG 1098-2 SILVER Datasheet'),
('bf404099-f4ab-4580-843e-f99436473984', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '/uploads/productdatasheet/22-1727255542453.pdf', '6\" LG 696-2 Datasheet'),
('bf9cb08e-9997-4977-9527-7c81b5ae91a5', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '/uploads/productdatasheet/45-1727255434063.pdf', '15\" LG 1596-2 Datasheet'),
('bfd23f76-187f-4c4f-9c9d-52e925b1467e', '77932324-df07-44d8-84d2-30af8ae38c0a', '/uploads/productdatasheet/35-1727254896795.pdf', ' 12\" LG 1238-2 Datasheet'),
('c0c0cee8-17c3-401d-9e95-7482ded0915c', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '/uploads/productdatasheet/87-1727255378892.pdf', '12\" LG 1299-2-Mk1 Datasheet'),
('c55e5b8b-4fb8-4a97-9575-3824dd594a5c', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '/uploads/productdatasheet/30-1727254786550.pdf', '10\" LG 1096-2-MK1 Datasheet'),
('d3651f29-dc26-4d9c-ab8c-d5614badcbce', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '/uploads/productdatasheet/76-1727312681219.pdf', '6.5\" BST 615 MK3 Datasheet'),
('e1b24d94-7482-47d8-b8c6-d01171a71bf5', 'e1c25166-8945-4f86-a898-3795b4b44883', '/uploads/productdatasheet/3mn0707-00-r0-lg-1240-2-limited-edition_compressed-1758512180497.pdf', '12\" LG 1240-2 Datasheet'),
('e6ed0f58-e595-4b7d-8937-7d92e4b6ea9c', '963116bc-4fef-48ae-a8e6-f655be756dc7', '/uploads/productdatasheet/38-1727255258479.pdf', '12\" LG 1296-2 MK1 Datasheet'),
('fa8e470b-efea-47da-94b0-34e5f87e99f4', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '/uploads/productdatasheet/1727253767854-71-1755507101008.pdf', '12\" LG 12385-2 Datasheet');

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

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `brandId`, `title`, `slug`, `description`, `event_date`, `updatedBy`, `createdAt`, `updatedAt`, `link_placeholder`, `link_url`) VALUES
('2d535d4d-5ebd-496d-a705-976da157a9b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'SPEAKER MOBIL LIMITED EDITION KARYA ANAK BANGSA: 10in LG 1040 dan 12in LG 1240', 'speaker-mobil-limited-edition-karya-anak-bangsa-10in-lg-1040-dan-12in-lg-1240', '<p>Selama bertahun-tahun, Sinar Baja Electric mengeluarkan speaker mobil dengan bahan berkualitas dan suara yang jernih yang bisa didapatkan dari brand adalannya: Legacy Series. Dikenal luas lewat produk best sellernya yaitu 12in LG 1277-2, Legacy Series mengeluarkan serian Limited Editionnya sebanyak 2 tipe, yaitu 10in LG 1040 dan 12in LG 1240.</p><p>&nbsp;</p><p>Setiap tipe memiliki daya magnet yang optimal yang didapat dari hasil pengukuran FEA (Finite Element Analysis), sehingga menghasilkan suara treble lebih jernih. Bass yang dalam juga membantu meningkatkan pengalaman audio yang lebih imersif sehingga pelanggan merasakan seperti di tengah konser. Material conepaper yang dibuat dari bahan PP injection khusus memiliki daya tahan yang sangat tinggi terhadap perubahan cuaca. Dengan teknologi ini, speaker bisa digunakan diberbagai macam tempat yaitu di area indoor maupun outdoor, karena speaker ini akan tetap mengeluarkan kualitas suara yang prima. Keunggulan lain yang tidak kalah penting adalah motor didesain dengan ventilasi khusus sehingga tidak ada kompresi udara dan memberikan sirkulasi udara yang berfungsi sebagai pendingin. &nbsp;Dengan sistem ini, maka pengguna dapat menggunakan speaker ini dalam jangka waktu yang lama, dan kualitas suara tetap stabil walaupun dengan volume yang tinggi.</p><p></p><p><strong>Pentingnya Memilih Speaker Berkualitas Dari Indonesia</strong></p><p></p><p>Sinar Baja Electric (SBE) merupakan produsen loudspeaker lokal terbesar di Asia Tenggara. Dengan sertifikasi <strong>ISO 9001/TS 16949</strong>, SBE fokus pada speaker mobil&nbsp;berkualitas tinggi. Dengan tagline Legacy Speaker yaitu <strong><em>The Driving Force</em></strong>, perusahaan berkomitmen untuk selalu meningkatkan pengalaman berkendaran tidak akan didapat dari brand-brand lainnya.</p><p>&nbsp;</p><p>Dengan pabrik yang berlokasi di Surabaya ini, SBE memiliki keunggulan yang tidak dimiliki oleh brand-brand ternama lainnya, yaitu adanya fasilitas jasa servis yang melewati proses quality control yang sama seperti memproduksi produk baru.</p><p>&nbsp;</p><p>Pelanggan juga dapat membeli produk dari Sinar Baja Electric melalui dealer-dealer resmi SBE. Daftar dealer resmi tersedia di aplikasi My SBE, dan dapat diunduh di Play Store.</p>', '2025-04-29 17:00:00.000', 'admin', '2025-04-30 09:07:08.816', '2025-07-30 08:49:29.385', '', ''),
('2e4f6cbb-f4b5-47a4-b0a0-2f9342a9382d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Undangan Kerjasama dengan Para Youtuber dan Tiktokers Sound Audio Se-Indonesia', 'undangan-kerjasama-dengan-para-youtuber-dan-tiktokers-sound-audio-se-indonesia', '<p>Tim Legacy membuka kesempatan kepada para Youtuber dan TikTokers seluruh Indonesia untuk mendapatkan speaker gratis dari Legacy untuk direview. Kami akan memilih para youtuber untuk mendapatkan kesempatan emas ini.</p><p>Berikut sistem kerjasamanya:</p><ul><li><p>Speaker yang diberikan tidak perlu dibeli, dan menjadi milik influencer yang bersangkutan</p></li><li><p>Biaya ongkir dari pabrik Sinar Baja Electric ke rumah Influencer ditanggung oleh Sinar Baja Electric</p></li></ul><p>Berikut syarat dan ketentuannya:</p><ul><li><p>Follow Youtube dan TikTok @acrspeaker-rhymeproaudio</p></li><li><p>Durasi video dan banyaknya part bebas (sekreatif dan semenarik mungkin)</p></li><li><p>Review speaker mirip dengan konten-konten dari influencer tersebut. Contoh: Jika isi konten mengenai review box dan tes suara, maka isi konten bisa ditambahkan penjelasan singkat tentang speaker yang kami kirimkan</p></li><li><p>Setelah mengupload video, mohon untuk menghubugi admin kembali untuk di-review dan di-upload di Instagram @legacy.speaker</p></li></ul><p>Berikut contoh Youtuber yang telah bekerjasama dengan kami:</p><ul><li><p><a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.youtube.com/@jossaudio\">Joss Audio</a></p></li></ul><img src=\"/uploads/newsimages/1734425192313-joss.webp\"><ul><li><p><a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://www.youtube.com/@Zacky_Audio88\">Zacky Audio</a></p><img src=\"/uploads/newsimages/1734425271436-zacky.webp\"></li></ul>', '2024-10-12 17:00:00.000', 'admin', '2024-10-16 00:53:00.087', '2024-12-17 08:48:44.913', '', ''),
('8a024495-c9e4-40b9-88b6-7fdaa8bbc209', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Merchandise Gratis untuk Youtuber Penikmat Audio Legacy', 'merchandise-gratis-untuk-youtuber-penikmat-audio-legacy', '<p>Tidak kalah dari brand-brand Sinar Baja Electric lainnya, Legacy juga membuat event khusus untuk para penikmat sound Legacy. Event ini diadakan sebagai bentuk apresiasi kepada para pecinta audio yang tetap setia menggunakan Legacy. Mereka bisa mendapatkan merchandise gratis dengan cara sebagai berikut:</p><ul><li><p>Follow instagram @legacy.speaker</p></li><li><p>Upload konten review mengenai produk Legacy di Youtube atau Tiktok semenarik dan sekreatif mungkin</p></li><li><p>Kirimkan link video ke tim Legacy melalui instagram @legacy.speaker beserta kelengkapan data untuk pengiriman merchandise (nama, alamat lengkap, kode pos, dan no hp)</p></li></ul><p>Event ini akan diadakan tiap bulan, dan konten yang mendapatkan merchandise adalah konten yang telah terupload sejak Januari 2023.</p>', '2024-12-16 17:00:00.000', 'admin', '2024-12-17 05:47:55.165', '2025-07-30 03:15:26.137', '', ''),
('db43cd12-32f3-4236-a9a3-d93ba0f5b222', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Langkah Mengikuti Undian Poin My SBE', 'langkah-mengikuti-undian-poin-my-sbe', '<p>Setelah keberhasilan acara Undian Poin My SBE 2023, event ini akan diadakan setiap tahun oleh tim ACR. Event ini diperuntukkan kepada konsumen lama dan konsumen baru jika membeli produk ACR, Legacy, Curve berdasarkan periode yang ditetapkan, maka bisa mendapatkan hadiah. Hadiah tersebut didapat dari poin-poin yang sudah dikumpulkan dengan cara sebagai berikut:</p><p></p><ul><li><p>Download app My SBE pada Play Store, lalu registrasi terlebih dahulu. Berikut <a target=\"_blank\" rel=\"noopener noreferrer nofollow\" href=\"https://play.google.com/store/apps/details?id=id.sbe.mysbe.customer&amp;hl=id\">link app My SBE</a></p><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395172735-App-My-SBE-di-Playstore.jpg\"></li><li><p>Pada halaman Beranda klik “Pindai” dan scan QR-Code yang ada pada speaker ACR. QR-Code biasanya terletak pada magnet atau yoke speaker</p><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395208222-photo1693810641-1.jpeg\"><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395221064-z1.jpg\"></li><li><p>Lalu pilih toko pembelian</p><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395255184-Screenshot_2023_09_04_13_29_00_671_id_gits_sinarbajaelectric_customer-768x1511.jpg\"></li><li><p>Setelah memilih toko, maka akan muncul pop up message bahwa poin berhasil didapatkan. Banyaknya poin tergantung dari ukuran dan tipe speaker</p><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395288378-photo16938095671.jpeg\"></li><li><p>Jika QR Barcode sudah pernah discan sebelumnya maka akan muncul pop up message yang menyatakan voucher gagal di-scan</p><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395317133-photo1693809567.jpg\"></li><li><p>Poin yang berhasil didapatkan akan tersimpan pada “Poin Anda” di halaman Beranda. Untuk melihat riwayat scan, langsung klik pada kolom “Poin Anda”</p><img class=\"max-w-full rounded-md my-4\" src=\"/uploads/newsimages/1734395340644-photo1692938364.jpg\"></li></ul>', '2024-12-16 17:00:00.000', 'admin', '2024-12-17 00:29:17.488', '2025-07-30 04:02:32.295', '-', '-');

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

--
-- Dumping data for table `news_image`
--

INSERT INTO `news_image` (`id`, `newsId`, `url`, `createdAt`, `updatedAt`) VALUES
('2424b664-dc80-4ac6-a533-9848579b817e', '2d535d4d-5ebd-496d-a705-976da157a9b0', '/uploads/newsimages/1746004026600-WhatsApp Image 2025-03-14 at 5.12.33 PM(1).webp', '2025-07-30 08:49:29.392', '2025-07-30 08:49:29.392'),
('36bca4e7-c030-4a27-97b6-f5727d94ccb1', 'db43cd12-32f3-4236-a9a3-d93ba0f5b222', '/uploads/newsimages/1734414173133-1728983842508-berita1.webp', '2025-07-30 04:02:32.322', '2025-07-30 04:02:32.322'),
('56b7a292-c18d-4059-8354-ac7995c214c2', '2e4f6cbb-f4b5-47a4-b0a0-2f9342a9382d', '/uploads/newsimages/1729039980021-berita2.webp', '2024-12-17 08:48:44.957', '2024-12-17 08:48:44.957'),
('75f4bb3d-76df-4544-a9d9-1437db5032d3', 'db43cd12-32f3-4236-a9a3-d93ba0f5b222', '/uploads/newsimages/1734414173133-1728983842508-berita1.webp', '2025-07-30 04:02:32.322', '2025-07-30 04:02:32.322'),
('dada7d12-d168-4430-97fe-a6f1edc144d5', '8a024495-c9e4-40b9-88b6-7fdaa8bbc209', '/uploads/newsimages/1734414474500-1729040004533-berita3.webp', '2025-07-30 03:15:26.164', '2025-07-30 03:15:26.164'),
('e1df691c-0756-4a91-875f-7aa3aeb0ece8', 'db43cd12-32f3-4236-a9a3-d93ba0f5b222', '/uploads/newsimages/1734414173133-1728983842508-berita1.webp', '2025-07-30 04:02:32.322', '2025-07-30 04:02:32.322');

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
  `sizeId` varchar(191) NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `description` text NOT NULL,
  `slug` text NOT NULL,
  `updatedBy` text NOT NULL DEFAULT '',
  `isNewProduct` tinyint(1) NOT NULL DEFAULT 0,
  `featuredDesc` text NOT NULL DEFAULT '',
  `series` text NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `brandId`, `name`, `isFeatured`, `isArchived`, `sizeId`, `createdAt`, `updatedAt`, `description`, `slug`, `updatedBy`, `isNewProduct`, `featuredDesc`, `series`) VALUES
('164c19d2-170f-4b48-958e-68ec335392f0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5\" BST 522 MK3', 0, 0, '65830f7d-49e4-40e7-875c-02f2a72e1383', '2024-09-26 01:03:09.716', '2025-10-24 13:38:59.668', '<p></p>', 'bst-522-mk3', 'admin', 0, '', ''),
('2b1193f0-37cb-4576-9bfc-028cd5694d0e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1299-2-Mk1', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:09:39.014', '2025-10-24 13:35:58.534', '<p></p>', 'lg-1299-2-mk1', 'admin', 0, '', ''),
('2e888496-0048-4943-982f-ebfdd4625e1f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10\" LG 1009-2', 0, 1, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 08:49:55.751', '2024-11-28 03:12:56.212', '<p></p>', 'lg-1009-2', 'admin', 0, '', ''),
('3213ef26-e2ab-4332-8d12-6ad1f18f39a2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4\" W 8347 B/H', 0, 0, '2fdca373-4286-4dfc-bfa7-de77b7e1fe0d', '2024-09-26 00:58:53.223', '2024-11-28 03:33:43.387', '<p></p>', 'w-8347-b', 'admin', 0, '', ''),
('3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" PG 1254-2 RED', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-26 00:55:29.500', '2025-10-24 13:36:44.300', '<p></p>', 'pg-1254-2-red', 'admin', 0, '', ''),
('41a41be4-0044-4958-b270-7afa8207446c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6X9\" BST 6981 MK1', 0, 0, 'ed8a91c0-2efb-4f49-892e-5f5cb123bd86', '2024-09-26 01:05:49.444', '2025-10-24 13:44:12.176', '<p></p>', 'bst-6981-mk1', 'admin', 0, '', ''),
('42802840-d898-46ea-8377-7e0a9b6a060f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10\" PG 1054-2 RED', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-26 00:54:36.579', '2025-10-24 13:30:40.697', '<p></p>', 'pg-1054-2-red', 'admin', 0, '', ''),
('4899e144-b93b-446a-89b4-b055230545ee', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', ' 10\" LG 1098-2', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 09:00:46.243', '2025-10-24 13:27:27.045', '<p></p>', 'lg-1098-2', 'admin', 0, '', ''),
('498bc88a-d5e6-4314-ad72-499ea3f1f780', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1298-2', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:08:41.334', '2025-10-24 13:35:30.132', '<p></p>', 'lg-1298-2', 'admin', 0, '', ''),
('55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8\" LG 896-2', 0, 0, '3ceafaeb-f3e4-4034-b46a-44948d3c2062', '2024-09-25 09:14:08.427', '2025-10-24 13:45:29.669', '<p></p>', 'lg-896-2', 'admin', 0, '', ''),
('58e4147b-93a0-4809-955d-d04ce1161c5e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1277-2', 1, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:04:43.154', '2025-10-24 13:32:16.628', '<p></p>', 'lg-1277-2', 'admin', 0, 'Tampilan fresh dan elegan serta jahitan antara conepaper dan surround yang kuat mampu meningkatkan performa bass yang kuat dan dalam', 'LEGACY'),
('5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10\" LG 1040-2', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2025-09-22 01:59:43.289', '2025-10-24 13:29:36.130', '<p></p>', 'lg-1040-2', 'admin', 0, '', ''),
('5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', ' 10\" LG 1077-2', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 08:53:37.562', '2025-10-24 13:26:24.995', '<p></p>', 'lg-1077-2', 'admin', 0, '', ''),
('62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', ' 10\" LG 1038-2', 0, 1, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 08:51:18.457', '2024-11-28 03:43:16.934', '<p></p>', 'lg-1038-2', 'admin', 0, '', ''),
('69db9385-8c1f-4863-a07d-30e3fc952ec6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6\" LG 638-2 MK1', 0, 0, 'ed8a91c0-2efb-4f49-892e-5f5cb123bd86', '2024-09-25 09:11:28.844', '2025-10-24 13:43:12.250', '<p></p>', 'lg-638-2-mk1', 'admin', 0, '', ''),
('6f3b950d-f94f-4c21-8e42-7e05251434b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1295-2 MK1', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:06:50.888', '2025-10-24 13:34:03.933', '<p></p>', 'lg-1295-2-mk1', 'admin', 0, '', ''),
('745f44c7-888c-4919-832c-99fb176ff0fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'LG 138', 0, 0, '1e7d5fe4-3644-4d31-9ef4-4755288b49bc', '2024-11-12 07:06:35.748', '2025-10-24 13:46:18.758', '<p></p>', 'lg-138', 'admin', 0, '', ''),
('77932324-df07-44d8-84d2-30af8ae38c0a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', ' 12\" LG 1238-2', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:01:36.911', '2025-10-24 13:27:39.922', '<p></p>', 'lg-1238-2', 'admin', 0, '', ''),
('78c76b38-9464-446b-ad93-2a10560d25b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10\" LG 10352', 0, 1, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-10-04 04:17:33.247', '2024-11-28 03:13:07.614', '<p></p>', 'lg-10352', 'admin', 0, '', 'SPARTA'),
('7a0b71f7-4400-4318-af0e-fc23c27171d1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4\" BST 422 MK3', 0, 0, '2fdca373-4286-4dfc-bfa7-de77b7e1fe0d', '2024-09-26 01:00:51.906', '2025-10-24 13:38:17.858', '<p></p>', 'bst-422-mk3', 'admin', 0, 'Placeholder for 4\" BST 422 MK3', ''),
('8c29e60a-34c0-4b99-b9bf-104be2655e65', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10\" LG 1096-2-MK1', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 08:59:46.656', '2025-10-24 13:30:10.451', '<p></p>', 'lg-1096-2-mk1', 'admin', 0, '', ''),
('95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6\" LG 696-2', 0, 0, 'ed8a91c0-2efb-4f49-892e-5f5cb123bd86', '2024-09-25 09:12:22.543', '2025-10-24 13:43:42.895', '<p></p>', 'lg-696-2', 'admin', 0, '', ''),
('963116bc-4fef-48ae-a8e6-f655be756dc7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1296-2 MK1', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:07:38.605', '2025-10-24 13:34:48.334', '<p></p>', 'lg-1296-2-mk1', 'admin', 0, '', ''),
('96f6309b-96d1-466f-9dbb-bff04e8e1fac', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4\" BST 1023 Dual', 0, 0, '2fdca373-4286-4dfc-bfa7-de77b7e1fe0d', '2024-09-26 01:07:45.601', '2025-10-24 13:37:39.591', '<p></p>', 'bst-1023-dual', 'admin', 0, '', ''),
('970f6aa5-91f5-464c-96e4-83f86280d053', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6.5\" LG-6521', 0, 0, '8dbb7e6d-2d6b-4e32-acc6-852e91b501e2', '2024-09-26 00:47:56.066', '2025-10-24 13:41:30.603', '<p></p>', 'lg-6521', 'admin', 0, '', ''),
('ad3d4329-2433-42aa-8b0e-542a474f1c91', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6.5\" BST 615 MK3', 0, 0, '8dbb7e6d-2d6b-4e32-acc6-852e91b501e2', '2024-09-26 01:04:41.343', '2025-10-24 13:39:53.054', '<p></p>', 'bst-615-mk3', 'admin', 0, '', ''),
('b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8\" PG 854-2 RED', 1, 0, '3ceafaeb-f3e4-4034-b46a-44948d3c2062', '2024-09-25 06:41:10.126', '2025-10-24 13:45:52.683', '<p></p>', 'pg-854-2-red', 'admin', 0, 'Tipe speaker yang mampu meningkatkan pengalaman konser di mobilmu yang didapat dari material berkualitas tinggi ', 'PRESTIGE'),
('b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1292-2', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:05:55.008', '2025-10-24 13:33:35.771', '<p></p>', 'lg-1292-2', 'admin', 0, '', ''),
('b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6.5\" BST 1614', 0, 0, '8dbb7e6d-2d6b-4e32-acc6-852e91b501e2', '2024-09-26 01:03:53.260', '2025-10-24 13:39:19.670', '<p></p>', 'bst-1614', 'admin', 0, '', ''),
('bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8\" LG 838-2 MK1', 1, 0, '3ceafaeb-f3e4-4034-b46a-44948d3c2062', '2024-09-25 09:13:21.931', '2025-10-25 12:22:41.706', '<p></p>', 'lg-838-2-mk1', 'admin', 0, 'Ciri khas warna orange yang dilengkapi dengan magnet rubber cover dan conepaper menggunakan teknik jahitan yang memaksimalkan durability speaker', 'ENERGY'),
('bfef1a40-3cc6-4bc0-85dc-12501e9c8b8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4\" W 8347 K/H', 0, 0, '2fdca373-4286-4dfc-bfa7-de77b7e1fe0d', '2024-09-26 00:59:38.539', '2024-11-28 03:34:00.591', '<p></p>', 'w-8347-k', 'admin', 0, '', ''),
('c0118d2b-ca07-4d5d-9819-42b1fdc27655', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'PG 298', 0, 0, '28c45742-6d1f-44bd-915b-f940e30caf92', '2024-09-26 01:06:47.849', '2025-10-24 13:46:46.896', '<p></p>', 'pg-298', 'admin', 0, '', ''),
('c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 12386-2', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 09:03:39.694', '2025-10-24 13:31:12.907', '<p></p>', 'lg-12386-2', 'admin', 0, '', ''),
('c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15\" LG 1596-2', 0, 0, 'bde0763b-2624-4b11-9f5c-993cd19f68ce', '2024-09-25 09:10:34.176', '2025-10-24 13:37:07.000', '<p></p>', 'lg-1596-2', 'admin', 0, '', ''),
('cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10\" LG 10385-2', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 08:52:29.672', '2025-10-24 13:28:10.825', '<p></p>', 'lg-10385-2', 'admin', 0, '', 'SPARTA'),
('e1c25166-8945-4f86-a898-3795b4b44883', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12\" LG 1240-2', 0, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2025-09-22 03:36:22.148', '2025-10-24 13:31:45.895', '<p></p>', 'lg-1240-2', 'admin', 0, '', ''),
('e3770df5-ea15-4be2-85f5-703caecdfd36', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', ' 10\" LG 1095-2-MK1', 0, 0, '7f514f65-c75e-482d-bf43-66c4f8c08edc', '2024-09-25 08:55:57.931', '2025-10-24 13:27:12.679', '<p></p>', 'lg-1095-2-mk1', 'admin', 0, '', ''),
('fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', ' 12\" LG 12385-2', 1, 0, 'afce813f-8a7d-424c-a086-9031ed369f64', '2024-09-25 06:18:42.613', '2025-10-24 13:27:50.916', '<p></p>', 'lg-12385-2', 'admin', 0, 'Kesan elegan dan garang dari warna hitam dan kuning, serta memiliki karakter suara yang lebih akustik', 'SPARTA');

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
('66ea9a8e-23f2-4c5a-92ce-11c51c5c7da0', '52309261-f2b5-4c3a-bb4d-b61e90fc53ae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'Legacy');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` varchar(191) NOT NULL,
  `brandId` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `createdAt` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updatedAt` datetime(3) NOT NULL,
  `updatedBy` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `brandId`, `name`, `value`, `createdAt`, `updatedAt`, `updatedBy`) VALUES
('1e7d5fe4-3644-4d31-9ef4-4755288b49bc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '1', '1\"', '2024-11-12 07:06:50.758', '2024-11-12 07:06:50.758', 'admin'),
('28c45742-6d1f-44bd-915b-f940e30caf92', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'None', '-', '2024-05-08 01:45:00.573', '2024-05-08 01:45:00.573', 'admin'),
('2fdca373-4286-4dfc-bfa7-de77b7e1fe0d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4', '4\"', '2024-09-24 08:51:16.284', '2024-09-24 08:51:16.284', 'admin'),
('3ceafaeb-f3e4-4034-b46a-44948d3c2062', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8', '8\"', '2024-04-17 07:13:57.372', '2024-04-17 07:13:57.372', 'admin'),
('65830f7d-49e4-40e7-875c-02f2a72e1383', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5', '5\"', '2024-09-24 08:51:34.454', '2024-09-24 08:51:34.454', 'admin'),
('7f514f65-c75e-482d-bf43-66c4f8c08edc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '10', '10\"', '2024-03-28 08:42:46.670', '2024-03-28 08:42:46.670', 'admin'),
('8dbb7e6d-2d6b-4e32-acc6-852e91b501e2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6.5', '6.5\"', '2024-04-17 07:13:39.043', '2024-04-17 07:13:39.043', 'admin'),
('afce813f-8a7d-424c-a086-9031ed369f64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '12', '12\"', '2024-04-17 07:12:50.306', '2024-04-17 07:12:50.306', 'admin'),
('bde0763b-2624-4b11-9f5c-993cd19f68ce', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '15', '15\"', '2024-04-17 07:12:56.926', '2024-04-17 07:12:56.926', 'admin'),
('ed8a91c0-2efb-4f49-892e-5f5cb123bd86', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6', '6\"', '2024-03-28 08:43:56.257', '2024-03-28 08:43:56.257', 'admin');

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

--
-- Dumping data for table `specificationconnector`
--

INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('002ddbb9-9795-4da2-aa9a-06c7a2df4cad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.57'),
('005f63ef-996a-423f-a829-10ba07927ed8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '35'),
('00db63bc-5dae-4e15-9225-c339aace8e07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.44'),
('00e17b7d-2ca5-4368-9f09-5bc38489a6d8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.21'),
('02125466-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.57'),
('0212615e-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.87'),
('02128c29-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.83'),
('026e32e2-7473-4c33-b964-edbbaef3426c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('026e3b22-1770-4d60-b87d-2ce63de94c6c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '400'),
('0283313a-6854-4467-8714-7b018dabcb3e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.8'),
('02d225ac-0eae-4e47-8609-89c0f73f29a5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('031b5cf8-8e05-4f5b-91a1-6a1f556cd6eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('032a912a-f3e0-4b5d-9817-3b396bbb14f2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.19'),
('03318534-52a5-467b-84b1-929bf6b8532e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.88'),
('037240ce-dc40-4a52-b49c-47f200e03128', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '83.7'),
('0377b041-ceb9-4c3f-b780-de8d04f1e097', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.09'),
('038d1495-14b2-46b6-89ca-34c05b9cf623', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91.5'),
('0394933a-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'df4d9847-7795-4f05-b2ef-c9112099c817', '', '10 Inch, 4 Ohm'),
('0394aa73-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'df4d9847-7795-4f05-b2ef-c9112099c817', '', '10 Inch, 4 Ohm'),
('0394ab2f-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'df4d9847-7795-4f05-b2ef-c9112099c817', '', '10 Inch, 4 Ohm'),
('03b5521e-2803-42a5-885b-1028175d4d2e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '8'),
('03e24457-7999-4bf9-91c2-ee2bb3f74004', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('040dc4d2-8c2f-4daf-8130-94407c7b0ef2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('041b3e45-42d5-4dc7-831b-b4ad7fb2d1f1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.35'),
('045be3f5-a789-4c70-99a7-676deea1459b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.72'),
('04a569c3-bba8-4615-acdc-d0e38874e202', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '49'),
('04a6cb61-4666-4858-b6e2-cb1169d9fe61', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('04d72180-400a-4e50-a4f5-affab11018b2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('0515e7eb-6da8-45d2-80b2-bc17f3ba14df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('057f2254-3304-4556-b823-78ca352c13d6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('05c7fd04-47d7-4209-8fcc-408ecc560049', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('05de7010-71af-49ba-9371-5f3e65f4e287', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '4.6'),
('063d6452-47ad-48d2-bdad-7d79002984ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.6'),
('066cdad6-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '346.4'),
('066ce0c9-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '346'),
('066cf3f9-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '201.1'),
('06ea608f-6264-4d14-99d6-825275cbeaa0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.28'),
('0737317b-25b3-4c38-a414-69e0849fd24a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.59'),
('0778702a-f4cd-4bd4-9083-6ea180e5175d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.57'),
('07b9f361-8efa-48bd-a384-97951f2c6364', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.49'),
('0830c386-4013-46b4-92b9-2cbd334c6439', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.8'),
('08846874-eb94-4447-82a4-02576e690c90', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('08953aa3-3c75-4aa7-90fc-b9f111478b10', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.7'),
('089a4ec3-da7b-4da9-a8a1-910171d43c62', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '745f44c7-888c-4919-832c-99fb176ff0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('08b2b4ef-5884-490d-aee4-1dbfb2508725', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '35 - 5000'),
('09b07c5f-6447-4efe-86aa-b7c8f5c522ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.6'),
('09d55480-2393-4e1c-82b3-06c351dc06cf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '93'),
('0aa87263-74ce-451b-bc49-26a3e1699a8d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.55'),
('0b014d00-0e05-4d36-b9fb-7d369b632d44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.15'),
('0b48e067-77c2-419d-bde8-7bbe2237bfd9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '1.25'),
('0b853100-5908-4e9c-8f94-c8e1cbea8d33', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.2'),
('0ba94cfb-4a4f-4c46-bdda-c6042e6b9f2a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.7'),
('0baa8be4-8919-414d-b72e-24a74876288d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5'),
('0bab7f93-8592-4bac-bdf5-fb0620fab2ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.7'),
('0bb9bda3-9a01-40ee-b727-6262319128bc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '3.4'),
('0be9e970-1023-4df2-a725-d69c15317ebd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('0bf15b56-9f9f-49f8-bb2a-795b15379b29', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.04'),
('0c0d208d-aacb-42ba-bd88-038185a7656d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.36'),
('0cb64bb0-fdc9-4bb4-884c-f56c7cd6b8c3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '7.9'),
('0cf03723-fd50-4862-a1d1-6cc987a126a9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '49 - 2900'),
('0cf3986b-4592-4b3c-90b4-87d4d9e90f1e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('0d04ec23-d3de-4fe5-82de-eedbe92ba9e6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '38.56'),
('0d142ee1-5836-4d00-9f0b-fc6eaa0e6c66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.1'),
('0d70b10f-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', '', '100'),
('0d710c91-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', '', '300'),
('0dc8b7af-90ac-4211-b4e1-aa4ef07243a9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.34'),
('0de18f82-feda-4596-8cd7-785512486ac0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('0deed13b-476a-42d0-86b0-53ff5ebd25b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '500'),
('0e603762-c023-4cb9-96e7-374dc5184974', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', '', '100'),
('0eed130b-0da3-42fc-b706-669102f48960', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '300'),
('0f10f22b-51c8-4f1b-aa9e-28be6b7f7787', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '36.5'),
('0f3608cd-13d2-46b6-a7a1-f896ebb3d764', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('0f41ea5d-e11e-4370-8df4-ff8d4b248ded', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.31'),
('0f6b8935-4d1e-42fc-9c79-803de95ed69b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('0fd77623-90f2-4bb0-ae2a-bd1afbc8ce9b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.03'),
('0fe5eb56-4193-4bb9-964d-82e3bf97b4c3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '1.54'),
('10230386-6c09-4507-8ab7-82c3b52d7e74', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('1051debf-452d-49de-a957-09d68dc8fa04', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('115258a2-1a5c-4a1c-87cd-8040190f9a30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.36'),
('1168d3f0-d77d-4ee1-a9bd-eb438eea8df2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('11f346b4-bb2d-4d43-9513-d9efd287f989', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '1.03'),
('12077d4b-37b7-416d-98a4-3c042a034047', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.52'),
('1209e351-de12-49b7-b69e-f14c249f48cc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.04'),
('12b1b626-7beb-44ec-a8b6-13bb29f27650', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.04'),
('12ca6572-689b-4c16-904d-597c8fb3bf70', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.72'),
('12ccb27e-bc77-4f13-97a5-181dbdee3508', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.26'),
('1323a229-f375-48f4-a967-090c7dc222eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.7'),
('1371c698-6e6d-4041-b038-f42fec8c004f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '193.6'),
('138276e1-46ce-4576-affd-078b4220d6b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('13d36acf-c1bc-446a-8ec5-24ab108bf8c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '13.6'),
('13f55ca4-4425-4649-bc2d-c1d15c6cc9a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.16'),
('1423d0bb-dd2c-4918-a28c-4db924f165dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('1502abc1-7adc-4a39-84e6-0d8a3816b08f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '134.8'),
('150e552f-9152-43ac-bbc0-4f64701791d0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.1'),
('15a75f32-b9d2-4f76-b097-f4badf5d848c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '52.7'),
('15e9fcaf-f251-43e1-adce-844a3db5718d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.23'),
('15f59aae-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '87bcc521-c598-4192-9e32-4a2e5229f1f2', '', '100 Watt RMS (200 Watt max) @'),
('15f5a3bf-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '87bcc521-c598-4192-9e32-4a2e5229f1f2', '', '100 Watt RMS (200 Watt max) @'),
('15f5a45e-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '87bcc521-c598-4192-9e32-4a2e5229f1f2', '', '100 Watt RMS (200 Watt max) @'),
('15f80915-194f-4a2f-be36-bc063ad8f3f2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '19.7'),
('15fd9ac7-24f2-49f5-affa-da76723f2d37', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.54'),
('16847757-7f1a-4ed7-a222-5f68f79da48f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('16fc2fa0-7c08-4627-a283-fe023378625d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.47'),
('1743f813-c0f5-45c7-a56e-edb4881c866a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '47.4'),
('174b3165-392c-46d4-96c4-496897370e22', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('1770e083-cf4c-44d4-8d59-e88a37293394', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.55'),
('17a6e08f-59ab-4616-914e-f17ba50efd97', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('17fad597-76b8-44a0-8b55-29c19833e926', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '46'),
('18809b60-2b3e-4070-8a4e-b33fa2b31abf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.1'),
('18c956fb-8d68-4a71-a598-827930eb0f2f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.59'),
('18ee4fab-e6f7-4c99-bf40-d015bc108987', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.87'),
('1919fdb1-a1ad-40a2-b98a-0d8128d2a986', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '100'),
('19fa1321-55c8-4798-bba9-0f16aaac8f2c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '89'),
('1a0c9a3c-af6e-4cd6-b44b-1f3bac94cf85', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '4'),
('1a525dec-c70a-4daf-a181-bc86eb32df5d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '24.1'),
('1aaff6c1-f0eb-466b-ab99-0bf3f64aca0d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.36'),
('1ad1d682-84f4-462e-b598-4be5bb62ec8e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('1b00d031-5a02-4668-910e-d4f608f03055', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.13'),
('1b30b503-e600-4e99-804f-50f562455119', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('1b64fa31-8323-4c01-b0d4-3f0bb74fbf70', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('1b74e24a-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.05'),
('1b74e543-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.5'),
('1b74e9ab-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.1'),
('1bc0c6de-fa8f-4134-a68d-9d99e94bd7df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '32 - 4200'),
('1bee414c-defc-4202-a8bf-c9ac5828e51f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '35'),
('1c8b0ade-cd8d-4152-b616-366522e9750a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '2'),
('1c96a424-ae6e-4a1c-9d76-3521f722407c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '102.8'),
('1cc4aad4-76b8-4527-8e6b-8441fa5dbc84', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '41.6'),
('1ce0dc2d-1219-4d3b-bf7f-5d5651ebe434', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '1.03'),
('1d3e19ec-36b0-4c24-b1d7-fad4172e94f9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('1d7d003e-c554-4f2e-895b-0053b4550222', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.18'),
('1dbbc947-fa10-47c5-8804-1ae3cb4dbdc3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('1e024919-0234-4d5d-a90b-63d60f554146', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.24'),
('1e172b72-75b5-46d0-94ae-427acf085cb4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '200'),
('1ea274c1-3ab8-4954-97a7-9ed58ef41251', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '34'),
('1f5c711f-87ab-4099-84fa-ab699845cce8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.45'),
('1f679829-f1f0-4de0-a3c4-5213d0c7d494', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.43'),
('202773d2-4a6a-43f5-a904-d6b55d514c64', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '89'),
('20710fb7-0518-40e0-bfd8-60c28997534e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '77 - 6700'),
('20738564-65d0-4113-8e97-d1f8fbd71f35', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '518.7'),
('207aedf8-8166-45ee-887d-9b0bef4dacec', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '89.5'),
('20c125ce-647d-4ca4-8a55-b871002c7446', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.54'),
('20c1eb85-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', '', '200'),
('213971d2-1146-4a08-85c6-497c78f6dd8f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.86'),
('2171b066-5f88-45fb-a0d0-8a455527461b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '54.2'),
('2214a1f7-241a-4b1d-981a-fa63de750627', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '510.7'),
('22682362-220c-4b45-9551-132ea267c703', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.2'),
('228b5bdc-344e-4d02-b644-74144b002489', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.38'),
('231cf713-c963-46df-b052-1d83de09a241', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '37'),
('232113e2-e9ac-4b56-85ff-73c7bb3e9ef6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.3'),
('235c92f6-753d-43e4-857c-39bfa09d400d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '49'),
('23fa1af7-ad55-40f6-8dba-10e3cc5595b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('24090017-49d2-4131-a6da-d367f66fb8cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.16'),
('240c51a6-99ce-41dd-8fdc-3c1d666638a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '43'),
('24eeec45-34ee-40b5-aba8-a276958562ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('24fd5182-dc91-464d-91f1-ff1d5241c1bb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '37'),
('2511031f-63f5-4b6b-a685-57ffb2e85e5b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '350'),
('254678e6-6c44-4f29-91cb-c4c5b0864d34', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.9'),
('259120d6-5bc0-46c5-9178-6d45f969308f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '85.5'),
('2595ecb8-414b-412a-b38f-9320cf3d8127', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '2.33'),
('25e0ae09-fb75-401e-868b-046b201ca7d2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '201.1'),
('25f7e408-71d5-4ca9-8d76-ea23fa85e289', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.18'),
('264e7afc-b4d2-4063-b5dd-341d08414ed2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.15'),
('2651e3ff-6685-4091-8ce7-ca6888622452', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.24'),
('268cb33d-44ed-4f25-bce6-acaa3750bf23', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'RS-426B, test mode with continous 8 hours RS-426B noise signal within 20Hz to 20kHz. Loudspeaker in free air.', '250'),
('26938c0d-abd3-4959-b632-cba3306ea89a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.36'),
('26b22cac-00b0-41ef-a24b-c6fdc9ee8d11', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '88'),
('26cd3134-b504-4e6d-8977-fdc98534524b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '100'),
('2751fdae-2f90-4957-b36c-ec550dcd454d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '2.1'),
('2825ac41-0d0d-438d-8dd2-e388d44f41f9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.37'),
('29123ba7-d8af-49f1-88bc-015421f19259', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '69.7'),
('291e08b1-4d48-441b-ad68-ba4a98bca766', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('292b89b9-7f30-4068-ac2a-7904ef80d9b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '48.3'),
('293d2d86-30e6-4bbc-b2a2-2fa2e6b4defd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.59'),
('29fc7eb7-12a5-4506-be6d-a797fa9b5fae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '36.3'),
('2a05b742-16c4-4892-9be2-742d95a8f6ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('2a2f0d81-7b20-4e1d-b180-b0dad0b0949e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.8'),
('2a534e27-14d0-4750-b04a-4c7f18477ca1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('2b6dd904-c951-40cf-9dfb-e680709f2d60', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.63'),
('2b75e47e-2056-48d5-866b-d60fae9bb0de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('2b9f9483-b2c0-4d58-97eb-1348c628b621', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.85'),
('2be37faa-68bd-4440-a888-63122813af85', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.35'),
('2c2d77f8-6bd5-4ed4-bafd-f2ef7999e4eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.45'),
('2c639da9-0bc5-43ea-8c00-5272bf42c06e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.59'),
('2c95a0b9-ba4c-4909-b094-957f9cd1e30f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.82'),
('2caf6e46-d63e-4a17-94da-2421963fcaf9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.57'),
('2cda5533-3d4b-4f08-848a-ce894095a138', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '36'),
('2d12ced3-82f4-4bf8-8a87-e2c8644009af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '59.4'),
('2d4d0b16-bb25-4df3-9177-8bd9a069f4e0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.78'),
('2d70b210-d8cd-4f3c-954e-46d73790a7be', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.91'),
('2e0a41fe-b587-4913-9961-df58fa370e89', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('2e119f20-25b8-4522-8da4-a2a096706e4b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.43'),
('2eaeeed6-e862-4fbb-a9f3-b88ef3d17ecb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.3'),
('2f1a08e6-7e38-4041-98e5-de71d34b1f6f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.27'),
('2f677cba-4019-4e37-8fc0-060c566e02dc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '15'),
('2f7e3191-bf76-490b-80f3-4297343d7c32', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('2f7f9bfb-748e-4ce8-9b34-31d1898f8072', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.75'),
('2fc75375-1688-4fcb-91be-0d87fd9f5411', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '1.54'),
('2ff72fab-8754-4221-815d-a1952881e5eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.95'),
('302bfe30-2848-4c79-8cab-4f8f2427396b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '84'),
('305952b1-3afc-46a4-85f6-9820ec3d210d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.3'),
('30eff372-c3f3-46a2-a3e1-27279680b0ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '134.8'),
('30f9a6b4-e07b-43be-b472-188565620e62', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('31366ac7-4bd7-49ad-aa25-88be5d2511b1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.84'),
('31d2a438-8e79-4a05-92f1-4b26fcd89240', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('3260b507-def7-474c-b1d5-32846aba8bc1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.9'),
('32afb416-c232-4585-8290-dc6db4611c8c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.64'),
('32bb2a12-1dea-4369-bddf-5387a2e000f4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.95'),
('32dc4ade-5cac-4788-a420-67e6aef2fb56', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.36');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('330ef5a6-f6b8-4c3e-bf4d-a274e827903c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.52'),
('3383d5b6-2c94-43ba-abde-8e5b55136b37', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.5'),
('33887683-800b-4bab-9569-06b7acb6a6c7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.76'),
('33c749d7-f060-4f13-baec-6b1ecca6581d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '138.5'),
('340d1490-82c3-45a9-a057-d10532d305b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '494.8'),
('342bb977-c3ce-4223-aef3-cb1a91cd512d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.33'),
('344b57c4-ed51-47be-a884-c6cf976f44d5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '6.9'),
('344c6e7c-774f-4ebd-8c7c-a497abb4bd37', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.3'),
('34b67446-8258-487c-81e6-5fea49216bc8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.16'),
('34b72740-89df-4bde-8e1b-a7c105a49528', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '35 - 3200'),
('34c8988f-a06c-4b45-a380-425e97c5bcac', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '3.4'),
('34dd056f-0e18-4aea-86ad-9b1b17708607', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.72'),
('35af6ea4-0043-4eb0-b4f8-ac9173305ff0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '9'),
('35ebd681-8400-4423-9f64-5167623b1efb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '83.7'),
('36790f19-cb08-4cfe-bb1e-95de9e7bc0f1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '356.3'),
('368e399b-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '1d7276dd-0020-469c-bfbd-c6f1c4b39232', '', '13.8'),
('368e4362-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '1d7276dd-0020-469c-bfbd-c6f1c4b39232', '', '13.8'),
('368e4426-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '1d7276dd-0020-469c-bfbd-c6f1c4b39232', '', '13.8'),
('36bca7a9-50ef-4211-a244-09b8e3d8571b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('36cd8845-db4b-4a27-994b-242773c4a1d3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '201.1'),
('36e266d7-4baa-403c-ba2d-11ada472ef2b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '75.2'),
('3715c2c6-38ee-4075-9486-9df550e2e2a3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.65'),
('37349955-b1c0-48a8-894c-ded76bc56a42', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '5.25'),
('379763ab-35cd-4b8a-bc2f-9f17497a956a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '55'),
('37e5f5b6-ad2f-4530-bb4e-e1d7894df465', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('37f2b8d4-7b3d-4f3a-8e2b-33163ca6043e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.79'),
('381425ab-d1fa-4985-bf9e-d505ede7d177', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.66'),
('386a16d3-af18-4190-be50-f59d40043b36', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '123.6'),
('38f576e1-0552-4178-bd2a-5c5f80080c46', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('38f63cef-6013-4c7f-996f-e72947c996e2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.03'),
('38fdb1d7-d7ef-40f7-9a22-43f4c6761081', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('393f3312-2702-4401-ae01-c9d2889f83a6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '50'),
('39e44b74-4607-405e-b324-017608b0de71', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '2.6'),
('39f14fe2-f2ba-4009-99ab-153fb18a42a3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.79'),
('3a7852fa-bf32-4dad-a1dd-7721b031661b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '102.2'),
('3b0ebe69-3a09-4b03-87c0-c1f6f90df150', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('3bb67558-56b6-4ac2-9696-13fb28ec4428', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.96'),
('3c5be4c2-98c0-4743-b8c6-c8ac1b8773e0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '17.8'),
('3c90d6c5-c166-4069-89ef-d28e7c35ac05', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.6'),
('3ca603f0-2558-426b-8b72-9ccc75a5b688', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('3cd8a0d4-6512-431d-90c5-dfaa0017d5d4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.65'),
('3d3a4c90-9065-42c7-94c7-91ce718c97de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.88'),
('3d5917e7-5b14-451a-8c83-cb444b231697', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.8'),
('3de1c638-4ad3-48bc-8ee1-46bae6f8a596', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.22'),
('3de4bcd6-1277-40bd-a34e-c906997fb42b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('3e2788ae-d6a8-49c3-bb49-aa4c9a0b7009', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('3e6a0046-6791-4608-bcd8-5ecf150b52d8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.37'),
('3f0b02e5-fc34-4376-833f-b39f26f81ea0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.1'),
('3f42979a-1f7f-4a42-9a66-3e8dc1bb5e4e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '4.2'),
('3f74d958-c87c-4bf0-ad49-212eea96ef22', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '4.3'),
('3fb806fe-49e6-4aff-8557-d631fd653d74', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '82.3'),
('3fdb4135-2d07-4a22-acc3-371f16932ff5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('40a72285-b30b-4690-9af2-136a6f9ad3ef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '3.9'),
('40aee6ab-b575-4f67-9aed-833fd4123245', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '11.6'),
('40bde376-9ccd-4578-925b-5dd6aad66865', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '35 - 2500'),
('40ccb3dc-d5cb-4a25-804e-e64d9396196f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '250'),
('40e84c3f-4208-400b-9679-bdaf9193e03c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.6'),
('41881da8-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '906f3926-a077-4ce2-902c-a8cfb14569f5', '', '50 - 250 Hz -12 dB/oct'),
('41882841-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '906f3926-a077-4ce2-902c-a8cfb14569f5', '', '50 - 250 Hz -12dB/oct'),
('418828ef-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '906f3926-a077-4ce2-902c-a8cfb14569f5', '', '50 - 250 Hz -12dB/oct'),
('41d4fc20-ef08-4fd5-831c-5ae84bdeed72', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '35'),
('423bde6e-1351-4f05-a96e-6bc6e6bea6b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '14.4'),
('426daf54-4130-4244-a294-98715349c388', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('430787e8-bf5e-4afb-b1a4-0ddacf0c5156', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '13.28'),
('4331fac6-70c2-4736-87fa-231117579c9d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'Kapton'),
('434557f4-2690-4b14-8c6d-ee3cd19b464e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.36'),
('434e7d74-60b3-4de0-8685-dd5ffd2c8d7a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.54'),
('43698738-ef40-4d72-a4e2-670b536511a2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '300'),
('438cebe8-6017-4122-bae7-273813d9449b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '199.53'),
('43d0578a-edcd-4b85-a293-66f9a335acbf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '32 - 3400'),
('43f7b474-e39b-48ce-a263-7ff35bc503fc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '745f44c7-888c-4919-832c-99fb176ff0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('442d1ca4-431b-4312-affb-30d46afe69af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '40'),
('446920b8-c35b-4b50-bac7-22db8373cfb8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '69.7'),
('45925047-6068-40cd-897b-b9ba64b1dc6c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '34'),
('462fb97e-05f1-469a-a329-733772a1dcd3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '3.2'),
('4648ed95-95a7-4861-bf0e-252718c70c0d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.71'),
('4657f914-a535-49de-9749-26bd804f2921', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '40'),
('4669a121-b006-49db-af90-668de03f02a8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.8'),
('467bb041-5081-4dde-a259-de80f2d9355b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '150'),
('468633cd-5132-423f-9679-eea7d9d865d8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.78'),
('46e2c46d-6404-4d05-bc02-58772ce71296', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.4'),
('47393be7-5927-4df6-9518-78b11a6283e8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('4812c0db-ff0a-4a35-ae11-48e112f16ca7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '14.7'),
('48264d4f-cc6c-40bb-aabc-884c7f148112', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '20.1'),
('4864b266-dff5-403b-961d-c94afb0d3bd6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.5'),
('48aaa1e6-1c11-4011-b333-b5acf1ad265d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('48b21891-7bf2-413d-9e00-e4c4a935ed9d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '37'),
('48b32663-2c64-40fc-893a-e22ae4818e02', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.6'),
('48d0124c-785e-4717-94ea-93c87efa71b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91.5'),
('48e907cb-d965-458b-b59b-0dba2097512c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '87'),
('4900bf0c-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '33'),
('4900c1c0-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '49'),
('4900c3ba-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '34'),
('49e49c98-8844-4286-8220-92ec7de9d30d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.86'),
('4a95b205-c0fd-4473-9186-4f7eeaa56017', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '46 - 4900'),
('4aff9191-5893-4075-865c-a6bdf1dcc4af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('4b3ede07-d7c5-43ff-a011-3d7cca74f2d8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('4b4ac6e1-13d9-44c7-a916-aad556efa629', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('4b565253-6b4d-4a54-93de-c69635a40cb5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.85'),
('4b5a480f-c526-425e-b584-6ef26b587320', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('4b9c2074-a1f4-45ee-874d-7862351fd5cf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '37 - 2900'),
('4b9d508a-bb4d-4f98-9bdf-23f4906de8ef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '2.9'),
('4ba9ffbb-1e4d-4d4c-a9eb-8ffa2ce48560', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '97.8'),
('4beea8ae-b267-48f8-959d-66381e423b59', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '530.9'),
('4c3d86ab-4c81-4914-a277-8a0c3b449199', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '92'),
('4c655c6b-30c9-4638-9f4a-870dbb1420c2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('4c8c12bc-3584-4a9d-9606-c37dcbaed43a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.31'),
('4c8c898e-d871-4af6-bd03-ba8302fe8607', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.6'),
('4cbe5fc0-66d6-4b04-a4f2-1c195f66e42f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '745f44c7-888c-4919-832c-99fb176ff0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', '', '50'),
('4d4b5574-4437-4f7e-86a2-36862194b874', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '200'),
('4d7f72c2-6dbe-48fb-8439-c194ceef2e8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '7.1'),
('4d878fbc-4ab7-4d94-b69b-ebb502cdcda3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.14'),
('4e081741-a13c-4476-8b86-7677a16b1544', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '38'),
('4e0f9039-8394-419b-a5f5-ae7f76af1b3d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '35 - 4100'),
('4e4e3c7c-f27d-40ed-ad12-3fe5d265a8f4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('4e7749ff-20c4-4d36-9472-e1d9028f1a2d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '4.2'),
('4ec1646a-b0aa-492b-8e02-0640e15ae49b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '34'),
('4edc72c3-ec50-4e83-beef-9e6e7ba6eebe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '8'),
('4f0b8b19-ca63-492f-8159-505a11861917', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '3.6'),
('4f12b8a3-02e8-4408-a571-a4905eb17437', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('4fbe15f9-277a-4736-86e8-2dac6d62db2b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.75'),
('50226ffa-2049-4fd8-969e-56968ef9bb84', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.5'),
('5028e3b2-014d-4104-83c6-daed5c9f203e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '500'),
('5042083f-e695-43ff-b1b1-9bd37a64ea96', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '36'),
('5082f7e3-baf0-4028-bd25-e01a0a807291', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.54'),
('5086f68d-ebf7-4af4-ad98-2ff564464b71', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '50'),
('50994d9c-037c-4a9b-8483-644c8ac9b5fe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('50b4e777-3020-4a65-8f37-45e0e3c8ea95', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '125'),
('50e8ffe5-4768-4425-b8fd-065b5a39888d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '300'),
('51615c1b-1bf9-44d4-a382-74893f0d0ac7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.78'),
('51aa6e34-aad6-4e90-be42-b7ffa9342701', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.56'),
('51b196a9-9e14-4f9f-87c5-a9ecb5656e9a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('51bb68dc-4ebd-4b31-a22f-fe84b676515e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('51c5ab76-4e68-409b-b73b-48905937fbec', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '94.7'),
('51de94c1-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7c8e5489-cb27-4d38-83e1-be123163e7ff', '', 'High and Low level'),
('51de9c59-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7c8e5489-cb27-4d38-83e1-be123163e7ff', '', 'High and Low level'),
('51de9ce1-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7c8e5489-cb27-4d38-83e1-be123163e7ff', '', 'High and Low level'),
('51f74144-fdbc-4af0-8c77-0877ca1a2b44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('52033e93-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '85'),
('52035d8f-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('52036bcb-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '88'),
('5230a0a7-b676-4214-aa5f-3b373a93fffa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '8.66'),
('524e1c1b-ee96-4b85-88fe-b6906a768d23', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('525b822a-7a86-491f-b287-8a2db6fad86c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '134.8'),
('5273121f-f73b-4c20-84eb-5ce0e4db6540', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '34'),
('52800a5b-5b2f-4a05-8b0d-e2095791a035', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('5292d356-8e94-4131-bee6-9c5824935bf0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.38'),
('529411d3-203e-4c16-b9d4-b59a5e2ee19f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.22'),
('52ed411b-537b-4615-bd76-c436a215c6d9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '5.7'),
('53855096-11eb-41d1-b259-96766c83a335', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.36'),
('538e384d-d934-49bd-8ea4-fb490b8b7ede', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '77'),
('53f113ba-1a9d-43cb-a0ef-c2491a4154fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '42.5'),
('54b5d586-4bbd-40f0-926d-412aedff8bc1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.14'),
('54d2b8d9-6b40-4c57-a747-18b6f76f20c1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.2'),
('55127096-4fc0-4bf6-805d-6d0761fde3e9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '8.6'),
('5526c4a9-7367-4484-b535-6dcf1f7ccf25', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '92.5'),
('5540f8cc-ff19-4908-9c38-f0bb71a28b5f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '530.9'),
('55810fe3-b866-4f1c-ac08-e9582730ed5d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', '', '200'),
('5583b352-cd9a-409b-8fdf-ccda9840053b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '90.5'),
('5584c146-411b-4536-aabf-bbef5c3d3876', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '1.03'),
('5596fce2-cd28-4682-8116-f0956ddd5c7a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.31'),
('56818450-402e-4b29-977d-2c7d10b723ae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.33'),
('56f546fe-edf2-404b-b66d-9fc33ca8765d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', '0ad042b7-7a18-4021-8085-aa5804bac63d', '', '4'),
('57ac3410-b93e-413a-bc35-4b0e9e8e1146', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1'),
('57ade52b-90b5-438e-9e05-94d38cf01f56', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.58'),
('58438745-1f8d-4a00-92dd-7da87e97c76d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.8'),
('58b514aa-f33b-45c3-a4bb-aaabc689f25f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '38 - 3600'),
('58f1cd4f-6827-47c1-9aac-f487ce87c5f1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('59440376-18f8-4208-96bd-3f3688051350', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '350'),
('59541511-19b1-43f0-9df0-08bbc4a61420', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '38.56'),
('59bad694-6682-408d-9a3f-5f5cabcc7bbc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.76'),
('5a5c6e44-34a5-4300-9f85-cd1ba7cdcd76', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('5a6a3b15-f425-4646-af80-f5c6085fdcd8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.21'),
('5aec93d8-2d0b-4e42-bd41-1673f391035f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '5.7'),
('5b45b125-b802-40a8-a3fd-e720391145ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.9'),
('5b462086-2722-47ee-b082-4e37e448981d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.43'),
('5b523a15-a378-4754-bfe6-ddb8d0d60266', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.87'),
('5b525604-2b3a-4e5a-8c8c-ef32b971c92b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.19'),
('5b52c0bd-d27a-4298-89ac-a4ffd7ea7146', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '28 - 3000'),
('5b5be69b-c00e-4966-8164-d1194abaa55b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '3.2'),
('5b82cb41-896f-4169-a234-04ad1bebb0f4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '5.7'),
('5bbe54d6-a89f-49be-b07e-b4307a3130eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.22'),
('5bd7508b-9ab9-4ff8-95dc-4a1dca952805', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '83.2'),
('5c032a65-ad45-4af1-ad33-96c45e686055', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '86'),
('5c03a5db-0e49-49d5-bdd3-5604a9169f52', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '25'),
('5c326d33-1799-49de-a257-778003b966b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '134.8'),
('5c82120b-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '70b0e3f7-307b-488a-b445-39bc39dc0d15', '', '12 VDC (13.8 VDC)'),
('5c821aab-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '70b0e3f7-307b-488a-b445-39bc39dc0d15', '', '12 VDC (13.8 VDC)'),
('5c821b47-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '70b0e3f7-307b-488a-b445-39bc39dc0d15', '', '12 VDC (13.8 VDC)'),
('5c8efbcd-7d47-4b6e-98f6-ca6e412b4a7f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '510.7'),
('5cd23252-175c-40a2-8368-ed13c6943b1a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('5d0b271c-fa76-41ed-b0f7-a4cfda2eaad5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('5d1fe87e-100f-459b-8dbc-ca5c1c480e0b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('5d2210e1-db29-4125-a3fc-67418c816eb8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.54'),
('5d285ccc-45ee-4201-82d9-5dd5cf6cee72', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '27'),
('5dab2c14-cade-4da1-8add-08db6adb4322', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '64.5'),
('5df37d2f-8e79-467b-afe7-2ca4c21c1eb9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.4'),
('5e126030-c19c-4749-870f-919befb683c0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.36'),
('5e2696cb-8673-4c82-9da9-77844c805765', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '206.1'),
('5e5b8f23-2814-4973-9245-22df5fdbd1a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.22'),
('5e9ae3f3-ff7a-436d-b076-d844045ba63d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '3.5'),
('5ef265b7-a733-4730-bd5d-ad331fadc21b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '90'),
('5f28cf7f-64ec-4500-a688-4692d0df42ba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '1.33'),
('5f2a4e1f-f72c-4f29-9e87-3352e6a043d6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.8'),
('5f87a9a4-4a04-402e-af1d-a4a090cf6b37', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '117'),
('602f503d-5ccf-49df-955c-5a3966c62dd3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('602f8fa4-ca2a-45ec-b499-dfb051ee37ea', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.8'),
('606ac9ce-0602-4c12-9a32-50570e7b32b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '1.03'),
('60e4219b-bc0d-42fd-be55-8109ecdbe995', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.83'),
('6149686f-7eb1-4f46-be6f-c8cc4b7b0f7b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.3'),
('61882c11-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('61883918-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('618842d3-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('61b4253d-2c66-4975-8f23-b7660da85ac8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('61cf0bc6-29b4-41c4-b768-b68fda9d41e3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.06'),
('6209ba7b-0fdb-4b44-a494-e550f966edba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '2.9'),
('623fec76-d255-42ed-b136-dee688b31242', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.82'),
('6280b517-e6fa-47f5-9f17-307ad2bd2ae3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.318'),
('62b1162c-cefa-44d0-ae2e-f88d16233f89', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '75.4'),
('62b45376-a44a-4072-8a3a-06e0d48a0a03', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('62e76048-1008-42b4-9326-96e8ad7fc84e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '85.8'),
('62f67bd0-bf8c-4bd2-9933-29a2a1abc394', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.83'),
('6312521a-37a3-4ce5-aef7-87be16340336', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.3'),
('63a5ef4b-e585-40c6-8d0b-5b4142be9b44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.5'),
('63c34ce1-9134-4504-b4cd-a26ca2433c3b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '193.6'),
('63cfb856-2519-4de0-bfcd-ea89070f7378', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'KRAFT SV'),
('63d8469a-4bfe-4d29-af8d-2ab6949263c8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('63dc8700-9eaa-462b-be09-c5609bafe4f8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.49'),
('63edf734-f48a-42c0-a0e7-1f559da18046', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '72.2'),
('6417936f-106b-4564-a6f3-d63e5e8e25c6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '31.8'),
('6441987a-4ec4-43e7-af65-d7c6e3a78089', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '63053593-9cb1-401e-a4df-8aaa372c042c', '', '4.2'),
('64812e24-01b2-4157-aabe-ae5b44feb45b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.8'),
('64e0b7da-1321-4413-991a-6f18d1ad090f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '20'),
('65455744-9470-4285-a478-7407a3f66174', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.24'),
('657536ee-a875-4c4c-8823-590a30dc9ccc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('65a90158-6a91-4faa-915c-c285c7c5ab7e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.37'),
('65ab086b-bf79-4c5a-ada2-637d6ad2cf35', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.78'),
('65d0bd97-c48a-43c1-a98e-1fdbf73dda98', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.21'),
('65fd9922-7ba8-4a80-b9ba-784308cc1d41', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('6625b474-3038-4151-a5ca-4c7a5e9cfeb2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('66c83e15-d7d3-437b-b492-e9eea731168a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '35.5'),
('674b9e0c-acf3-40f8-a120-0dbab7f4bf9e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.19'),
('674d85ee-e8a9-4dab-9edf-f574be489464', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '20.42'),
('67629397-35fd-4bcf-9291-5c4addf00b04', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '71.8'),
('6780d27b-27b7-4d6c-91f4-e4cd1c28b145', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('679ea5d1-973f-45d4-84d2-a2f83064c137', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '9.33'),
('68070ec2-d3eb-4b25-b8d6-ee3ce156b03a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.08'),
('683dafdd-7741-4a63-bf1a-107a405776d7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('6941f656-670b-447d-be48-644964f6d2e7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '150'),
('694813b1-f8b6-4325-8cd3-23153989d8b3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.49'),
('69a999a9-dd28-444e-8833-6ccfda0e3b45', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('69a99e96-dc17-4ae8-9e51-b8838f5751cc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '300'),
('69b2cd0b-c320-4193-bb2f-15122813d1a5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.45'),
('69d0a8bc-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e91c73a4-5e61-44e5-83ac-f42de65a2c3c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'bcd861a8-944c-419e-8f26-e3254bcfb2b0', '', 'Sealed'),
('69d0b2b7-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '84d0978c-8907-458b-a8a8-99d45b40535b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'bcd861a8-944c-419e-8f26-e3254bcfb2b0', '', 'Sealed'),
('69d0b387-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '78c76b38-9464-446b-ad93-2a10560d25b8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'bcd861a8-944c-419e-8f26-e3254bcfb2b0', '', 'Sealed'),
('69e62025-0a3e-46cc-ad66-ce31f8e2c26f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.23'),
('69f891d0-96de-4f8b-8f35-4849d5c0576f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.53'),
('6a6fec82-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('6a6ff201-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('6a6ff414-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('6adb16f7-4d13-40f3-8d7d-6fe5c7df0caa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '64.5'),
('6b2db129-a3bc-4397-9f96-9e473f966bd8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.11'),
('6b9e7764-0655-4561-b26e-a0aedd2fd397', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.5'),
('6b9fa9d1-bd6d-455f-b5a0-a7d0252dc361', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '122.7'),
('6bc31a6e-7815-43ba-bb04-3f4e092bd964', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.27'),
('6bd9e325-ccc4-4dca-94c1-a459bac58165', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '11.4'),
('6bfd7d62-81d3-4daf-8203-5a775de49d8e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '3.7'),
('6c68eddf-76e2-4c3a-ae5f-e12db346cb07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('6c9ce5a0-4833-4ae0-b950-14b203d1d8de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '36'),
('6cbe17be-917e-4697-9332-25f70c19fa33', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '7.2'),
('6d02e1d6-5331-4853-8df4-f7c35fbdf508', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.6'),
('6d0c26ce-0ba0-4475-a99c-3392787ef073', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.45'),
('6d2abe51-6978-4bed-bc3f-26477372960c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.33'),
('6dcb82a4-3890-444c-869f-e836f025c5ec', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '67'),
('6e0cf46b-360e-44df-8a4c-49bdf1906e3c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '146 - 16500'),
('6e3f6ee4-267d-40c6-8dbc-2a7baf114661', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('6e655086-8a90-4d0f-a56d-df2af887c309', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '3.7'),
('6ede484c-201f-4090-8376-371862ba132f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('6fc183ca-ed37-4468-9d74-dc0adab95c73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '31'),
('7053bd31-5a96-4de5-940c-248e8daea279', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '105 - 20000'),
('706ee860-4ce1-483a-9015-54b49401bc21', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.22'),
('7070365d-fc40-4002-bae8-13aaa814ee94', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.09'),
('70abdb8b-85c6-47ca-96f6-f68dffe7e82f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.35'),
('70ebd6ea-7eaf-422c-a25d-9841d348c4db', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '5.7'),
('7118e659-a3cf-4d46-9808-dd360d311f62', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('711f3bea-4aaf-4a7c-946c-7ae0b4805a4b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.16'),
('7164bfff-4812-48c0-9fa3-d7ec501a2c06', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('71afdd24-bcff-4ee7-b1c4-3a372e4f8be4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.33'),
('71d6382a-ea8e-4e08-949a-d9750a9c9e7d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.89'),
('71e91d99-1996-451c-82e4-571e2ee18f66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.57'),
('7244d678-a084-48e7-860c-cc19bbf2083a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.87'),
('7276d050-1a20-485b-b1ef-71dd8639ac6b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.02'),
('7299eb66-85b8-4146-8223-d02fdf04e070', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '109.1'),
('72b05330-0046-4646-bc31-2fb6f2df908f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '123.6'),
('72cad058-3ff1-4b66-b06a-29585dc45034', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('73e673ca-d33f-4991-a2a3-f216c5854961', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.6'),
('741f1e95-86e5-4993-8066-c56d62d269fd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('744996a5-cc9f-4cc8-8264-f962b21cfa08', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '38 - 3750'),
('749fb953-5086-40ee-91f1-4b7711a89f54', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.8'),
('74e690b4-815d-4412-ab84-de217c815677', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '100'),
('75294be0-3af9-4cf9-84d5-a85038b4c1d4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.52'),
('753d1eaf-f235-4ba3-834b-67f16ab6790b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '20.4'),
('75c9750a-d1b0-4e16-a956-4e1cd28eb26e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '43'),
('75fb2e5e-9306-4dc1-b675-a2c04344627d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '73'),
('762bfc64-c0b1-4e10-818a-3d5b2aa1f5bb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '89.5'),
('764b0240-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.66'),
('764b0540-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.6'),
('764b068b-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.79'),
('7671f1fa-1cd7-4edd-b921-1c1f1c5ee66d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('767fe821-c595-4ba9-9e5f-20cd325b24d6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.76'),
('776d9036-d56a-426b-b79f-ee4565837727', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.81'),
('779c05e6-f5f8-4a24-977d-fd081e4d9437', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '43 - 2400'),
('77aa6012-a222-4688-adc8-8e1b625124e5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '38'),
('7863173d-e9d5-46da-93af-6ec125f70127', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '28'),
('7885cfaa-2d9a-47b1-958f-c610f1258ee1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('78b75e64-dd91-4f32-aeb8-62475ed1f0af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('78babf86-9eef-4d4a-bcfa-0dfc8f1aa345', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.217'),
('78d07de6-c93b-40b2-8109-99da4f77c329', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '6'),
('795275a7-8a4f-4cae-832f-76af4d60b8db', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '12.1'),
('7979b220-d677-48db-984f-9cca11e2be5c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.18'),
('79d37e49-0475-452e-aed3-c3edc35ca79d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.7'),
('79d890e4-15c0-47c8-8899-744cf14ea1b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '30'),
('7a3cda9c-55b8-42c3-aed2-3e1fa086ef8a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '54.2'),
('7a424b9f-cb82-4aa2-8a64-1142129382fc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('7a600fd9-fff0-45d0-9acd-867ec5c987f6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '69.6'),
('7a91f146-65c7-4fd4-a725-6a1d557df58d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '80.3'),
('7aaab4a5-626b-4e25-86fb-59914a3e4700', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('7aaba219-d025-44d6-981a-9eb29255c584', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.19'),
('7aca2006-b40d-49a7-b422-ae7a31c15d28', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '87'),
('7acc17ef-1b5c-4ae5-8c43-9b52d0aaa0c8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.18'),
('7b0f2bae-fadc-4682-be9a-97d344020f91', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('7b11b593-3bf9-400d-a18f-046ac4246448', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.5'),
('7ba4af05-b69c-43c0-b164-60ee9bc7ac79', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.93'),
('7c810f77-85f7-4128-aace-198369d5ca10', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '100.3'),
('7c8cf65b-46a0-4a1a-b390-50a557581345', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('7cc17b77-0f88-4bd1-b16a-d79e30e01d6a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '92'),
('7ceebc25-d3b1-4ccc-8c89-85811e6db2fc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.14'),
('7cef57af-91e7-46c2-a65c-9ad9bec68c57', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '494.8'),
('7d3d507d-0843-4896-bc29-0f70b18c11e4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '136.8'),
('7dd04b44-1496-41a7-bd1d-f433a4fa16a8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '745f44c7-888c-4919-832c-99fb176ff0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '2900 - 20000'),
('7eba1861-af79-4a63-b01d-378f88bb7bd6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '27'),
('7f859903-96ca-45c5-a2ae-1d79b51ae06a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '39.2'),
('7faf46be-4a46-4425-ad40-bf7f7a7d71c0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.97'),
('7fcbf6ce-bb98-4f8d-a857-284e149b0ddf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.89'),
('7fffaac3-219c-493f-81c4-a12aaf735aea', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.58'),
('8000f885-dd70-43db-b3c4-97cccf86e6c1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '35.52'),
('8045c1e6-6a84-46e6-8cbd-ad78a23e79de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.99'),
('804b71bb-4b2f-44d7-8e3b-08068094ae38', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'RS-426B, test mode with continous 8 hours RS-426B noise signal within 20Hz to 20kHz. Loudspeaker in free air.', '300'),
('80593075-e660-41b7-8ab9-8ecf2199b131', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'Test mode with RS426 B Program Noise', '200'),
('80977ab2-0e8b-48d4-971f-1946c53c0221', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '19.3'),
('80a8d592-1f13-4660-870f-6235caac2f9f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.37'),
('8111e7c2-824a-41e8-9f98-2432084f65b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.18'),
('81200b5d-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.76'),
('81201099-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.95'),
('81201384-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.96'),
('8164c710-36d7-4cac-8a5d-e0e46c16690b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.01'),
('825b8060-6241-40cc-a550-8827dc8dbb2a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '81.4'),
('8265b068-3279-4a03-9591-74ea9eaf74dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.4'),
('82726804-eebd-419c-b602-928e44887316', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.6'),
('82ce7a82-4072-4314-b239-3580129ccf8c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '150.64'),
('82e80f3c-9f35-4046-b89a-862d36e83021', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('83cbfbda-1b6e-45ea-944f-3b7efa035ec6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.19'),
('83e15e19-2cc5-4420-96d0-d35ded259363', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.31'),
('8423f423-b966-47b6-ae72-58512c7e5abe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '4.3'),
('8433fd23-3ff7-463c-ae63-17fc20c3ccaa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.4'),
('845333ec-dd88-448b-9a52-48585e1e0451', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.14'),
('84a3cf4b-f3ac-4d1b-883a-8dcc588f5b18', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.95'),
('85059855-a794-4b70-a2ec-7ebe81b76ac9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '45.3'),
('855339b2-325e-444e-8cf0-f17bc0b29277', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '69.6'),
('8609cdb6-347e-453a-a11e-0bd449972aaa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.1'),
('86344bdf-a276-4e31-9dd7-16c10e16a414', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '20'),
('868012dd-604b-4b50-ac3b-90e386677e3e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.75'),
('868c0452-d057-484b-8a53-478124a6d779', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('873f2b37-db25-46ba-8d4d-113206e2ae3b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '3.4'),
('8774b370-e467-486b-b6a3-cf898b45aa6c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('883f0346-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '34'),
('883f22a8-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '33'),
('883f3e58-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '49'),
('8872b9c6-9091-4ca3-88b8-28f9c4d5c429', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '30.6'),
('88b3ae1e-9da6-401f-a767-1b917db22ed5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '498.8'),
('89880dec-bbad-4d56-9372-08c1558702d2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '47 - 1780'),
('89c3401b-d9b6-49a1-b613-14281a3a7571', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.4'),
('8a06f528-0006-4ba7-a773-18d998d1af25', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '200'),
('8a0ce4bc-d54e-4f14-b6d5-2b982b757537', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.96'),
('8a318730-76e7-4fda-8b81-71f939813cf2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '25'),
('8a46d906-8128-4842-b4be-8c1df8b50bf1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('8a4f1887-85f6-484c-9474-9145f5dca27a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '109.9'),
('8a6b6a2d-6078-4079-9d7e-ec4a5e0f959c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '6x9'),
('8ac84915-50c2-4f0b-aa1b-d072c9604bf2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.74'),
('8c04a556-a66a-4601-9840-7be1f0370234', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '25.4'),
('8c119d19-231a-487d-b00b-9d01fd3027b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '2 - 20000'),
('8c1c6c7a-048a-4ab2-b84c-8ec61baa6a8d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '498.8'),
('8c9c69f3-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.08'),
('8c9c6c78-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '8.91'),
('8c9c6db9-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.43'),
('8d3b2969-1f7e-461a-b65a-c21b9d34fb41', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '30 - 5000'),
('8dd36a8b-c5e1-4b4b-a278-27a0225db578', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.76'),
('8e11d4a2-a51e-41b8-843a-ec39dd5b4366', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '136.8'),
('8ef14b0a-e2f5-4bcc-bd96-dc21e8365c60', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('8f4a780b-cc05-4191-af6d-b5c19ce77ee9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.82'),
('9014cbf4-2c66-447b-b690-e3b910dcbd03', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.3'),
('90293c44-a064-42a2-833b-4371101926ef', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.27'),
('9037a917-b09f-45e2-b161-a484275684d5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.16'),
('90cc352c-a3c2-4d8c-a6c4-13c5d7f59e4b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '1.05'),
('9139ab55-d9eb-4bc0-8f8a-9a35a6a21797', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '38'),
('914dc8f9-80ea-4472-983a-012d147d97f2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('91523796-72c5-451c-aaf9-721c5bc2aa2c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('92b8e095-afb0-4c6c-8cdb-065170354ef6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '35.5'),
('939dc447-49ad-4397-94ba-4dda977df581', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '4.2'),
('94651195-9eff-44cb-a684-bff6d7d835a0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '50');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('94c5ef43-434a-4756-a0da-ba730b2f9eb6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('951430de-d1c4-47b6-91df-f85b91cebd3a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.18'),
('951b5b0c-388e-41dd-84b7-2c1a4eea45cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '93'),
('951ba4c6-f464-48ba-8bd3-4554d0b43974', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.4'),
('952e906f-e4e6-4e23-8ffe-0673bb28f390', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '25.4'),
('954b21e1-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('954b243d-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('954b44de-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('95652ab2-f792-48cd-b92d-2faeb0889da7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '4'),
('956711d8-2e7b-4f5a-bb7f-06f17a40247f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.48'),
('95909d56-76d7-4483-b2cf-1b167042a5aa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.23'),
('96048391-cf40-493f-9f4a-f3c61a7efb73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.61'),
('966a4eef-6c72-431a-8f95-c9b5da9f0bcc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.23'),
('96f2ac49-1d3f-44b3-8113-c73a09b60d96', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.84'),
('971112f9-1b14-4af0-9f28-bd8d10754cdd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '40.5'),
('97129d07-8ed9-4521-873a-435a4b97d68d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('971e3220-9836-46f6-979d-7b637883387d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.1'),
('976fa0e5-e0a7-42fa-ba10-67bdc5774601', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '73 - 19000'),
('9791f8fc-33da-4256-a2e1-12c59739da05', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('97b5efe7-c019-4054-abe5-6998454b2cfa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.05'),
('97be6cfa-7d19-4b3a-b8ab-3f9fe772530c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '300'),
('97eac628-f7f5-46d2-94c1-77d25d2ece9d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('97ec7ca1-d04a-4571-9dd9-4ac25b3434ba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '55.9'),
('9800a34b-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '68.9'),
('9800a70c-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '39.2'),
('9800a8d7-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '59.7'),
('9817b47b-2cc2-4f8f-916a-2371d01d2d76', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.2'),
('983645d8-97b2-4108-9ec8-a6f30d4549d0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.74'),
('9840a744-01a5-4e9e-8abc-520142837e97', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '250'),
('98bc25a2-fc7a-4112-bb3f-ad26f202fc4a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.04'),
('98d2cb7b-19d6-4be7-966e-099f2da65955', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('98daf7e5-9787-47ad-85c4-e9368eb45a0b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.31'),
('98f4c824-5768-4cdd-adf1-53243ac3f4ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '85'),
('99332a08-faa1-49e7-bab2-7df17b02676b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '3.8'),
('998e893a-693b-434b-b447-4fe85becd3eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('99effbdf-c5cc-4cbf-b19f-c96f887d1c8b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '31'),
('9a496fbe-6d7c-411f-af21-a348baf3cb76', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '52.7'),
('9a5042e7-22f0-45e8-b7c7-95e660eafdbe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.91'),
('9a580707-8fd7-4a53-9cbe-559f0fce57e5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.22'),
('9abc805f-570d-4dd3-ac84-18a68aa3bab5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.24'),
('9aea614c-8dd8-4ba9-9d11-46b91654286f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.71'),
('9b584d02-9860-4c96-b248-ca0a154320c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('9b91f86d-5c94-4bc3-9953-bb265607f14d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '498.8'),
('9b978066-ee0e-44d5-8e16-141c8c62a0d1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '20.42'),
('9bb35fbf-e15e-43b6-b6d9-88344fa461b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('9c20c744-732e-4178-a0bf-8ef92a57978a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.19'),
('9ca29618-91f9-4460-939e-f2d977fba3fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.26'),
('9cf200a4-7960-45a7-8a71-ad8b7dd49918', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.6'),
('9d2fa89d-f92d-4fb7-ada7-a7a62fe27f47', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '20.4'),
('9d5ec435-bec2-48c0-96cd-62d0a8391794', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.4'),
('9d6bc29b-5c23-4796-9310-8a97f9d34b10', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.95'),
('9da2c4d2-3f67-4e10-8b83-a3650f39d721', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.14'),
('9dd8567a-2886-41c6-8900-94aa2b1feb31', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '81.5'),
('9ed43a75-1574-4728-80cc-8aa7e4d473f6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '30'),
('9ee4ac8f-03a4-4096-b8f3-50a24ac1acf6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.36'),
('9f7f565c-467f-4e0f-8929-e02d83ca76eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '1.5'),
('a08a0e13-80ee-4290-99be-0fc6542d4810', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.4'),
('a0d17e40-4ca0-4d8a-9617-84a4bb4304b8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '35 - 3000'),
('a0d5b524-f74b-4089-bb97-2ccec35bf80c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '112.2'),
('a0dbb533-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.42'),
('a0dbb849-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.36'),
('a0dbbb62-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.91'),
('a12c6f2e-2260-4249-9545-5d3c48506d01', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('a13e74a3-3e65-47e3-89f6-42d005348b8e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '6.5'),
('a1d94969-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '35.5'),
('a1d9547d-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '38.56'),
('a1d95bc6-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('a262f38e-c7aa-46b9-8741-5e3299e6afe3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '86.5'),
('a2b42692-56fa-4890-8b7a-cc9dcd350437', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.15'),
('a2dd1501-8279-4888-8941-0bae4983874b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.74'),
('a3357d04-2ed4-4cfa-91b9-54d8889f2685', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('a40d2e6f-305e-4d45-a0e4-ef020b59fa71', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('a46bff7c-5c85-412e-ae59-f4aa387507f2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '150'),
('a49d9414-d5b7-4546-a94e-3ba3dd14e66d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.21'),
('a4ac3d77-2baa-444e-9e7c-f6d0a4b8da1e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '4.2'),
('a4d0fba9-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '300.7'),
('a4d100de-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('a4d103a0-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.35'),
('a54ff674-20c1-4521-90b4-79ef562dd3d7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.84'),
('a5645a52-9176-4d56-adba-49b8ecfcb2d2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.3'),
('a5735829-6076-4a2c-b7f5-186c06c232d9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.55'),
('a5a74b3d-77be-4a31-8021-a392fedb70f6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.33'),
('a6014ada-3f90-420d-b19e-b42b3d11885b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('a61cb05d-fc77-4b1b-8b3d-4c95e2c5dd44', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.97'),
('a681d31e-bfd3-4b6e-9841-f38ea1e1c78e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '58.1'),
('a7029f8b-3b2e-4841-9eb6-f53b824e0238', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '2.8'),
('a70ce5b5-21b1-4d70-be50-86a4b721e78a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '109.1'),
('a785e15a-e395-459d-a0c8-8e9413b0ac83', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('a7b2235c-3882-4e06-bec9-a59684141778', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.84'),
('a84b3f53-fab3-4283-b56e-4109ba94c6d5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.65'),
('a85facdc-3c96-4288-aa95-0dcaa6c189f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.29'),
('a8ac08bd-f35e-4932-931c-032d4a2a4f08', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.97'),
('a8e7918d-d4c3-4b2b-8c3b-4710dfa66ac0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.3'),
('a90ef612-64bb-4d09-b414-b413f4ffc90f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('a9510ec6-bf98-4022-8681-959c2f621cbf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('a98c240e-c9ce-4aba-bb87-6aba32b4d38b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.5'),
('a9e1b201-f521-4c55-8ab8-e2b5b327546d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('aa1db47e-afd5-4d43-b31a-31cb13511cfc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '2.3'),
('aa3b3f6f-b34a-4230-8588-f1126b0a2c06', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.6'),
('aa7335bb-23f0-4194-b0e9-aa09fa141c1c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.12'),
('aa9015ab-856c-47a4-a8a7-d05abb1c978d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.46'),
('ab0b5fa3-a897-45f1-83f7-29e576a2d329', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '75.7'),
('ab375e4a-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.46'),
('ab3760ae-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.39'),
('ab3763a5-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.02'),
('ab3c0e6a-2d1d-4783-b7a6-5b4109617886', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.53'),
('ab6853c4-bfe3-499b-8fc9-552c36439950', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '805.6'),
('abc50da8-47b8-4d1c-8868-669dc79329a2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('ac67de74-aab2-44c9-af84-9125d6713c32', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '100'),
('acbc1f71-b231-4e4e-bb1e-8ea4fff307af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '356.3'),
('acf0b555-6927-47fd-9477-bdcbf20fed43', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.14'),
('adf4e444-8d39-4960-93c9-04f36860c943', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '7.08'),
('ae23212a-2cdc-4522-afc4-37bed23b3160', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '36 - 3000'),
('ae71a6bd-cae1-4c87-8731-4aded276b871', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '37.2'),
('af5002ae-d0d0-4ada-9f5e-c907b329ee95', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '216.4'),
('af53cc68-6b23-4c0e-b4a4-f6d2dbd6a61a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.35'),
('af75c6dc-7ce8-4003-824e-aa508f4ddeae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.7'),
('afb41846-5856-492f-a511-d072fd8aa00b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.53'),
('afdd7c65-d293-4c8f-aa73-2fc0c2c3e992', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.85'),
('affe1770-3fab-4b53-8de0-074f9b14966d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('b023a1af-6d63-4790-acad-4da0947507df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.17'),
('b088229d-4548-437b-85fa-360879564eb6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '28'),
('b090f629-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.2'),
('b090fb9a-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '4.3'),
('b090fe4b-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.4'),
('b0bf9fe3-d55a-4a74-886b-537cde2b38cc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.39'),
('b1226367-8328-4e13-84e4-c6931f3f8994', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.8'),
('b171b581-5ce3-415e-9375-c605f6f58669', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('b18d2258-4d76-4524-8f84-66ae81685ce7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('b1f579a0-93aa-4ea8-a491-636da47f8901', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '6'),
('b1f5a79d-6102-4664-a7d4-1b4cfaee6b90', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '126.2'),
('b2189dbe-1745-4170-b367-de3c57aea055', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '49'),
('b229eee7-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.48'),
('b229fcb9-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('b22a1afc-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.19'),
('b24ab079-a736-44da-bba0-19ea9ea14677', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.35'),
('b2807945-46c9-4e26-b27d-cbb123f92636', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '74.7'),
('b2943993-b362-4b1f-a3c6-93a2682f777a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.27'),
('b2a14603-6b0b-4afc-bf96-746315f308cb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.81'),
('b2d010b7-a73b-4f3d-b2c6-873f56806c34', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.13'),
('b2e64a56-1acf-4574-981a-915c4fc13fd2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '28 - 3700'),
('b30ec7dd-24f5-4138-bf7c-a40b2ccf34a0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.49'),
('b3b7eb8c-b5ab-4a5d-819a-02a2cdc26dfa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '63053593-9cb1-401e-a4df-8aaa372c042c', '', '3'),
('b3bd4ed7-f3d3-477d-8031-5cc9ee5c2ec9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '250'),
('b3cac1e1-7545-4195-9670-51a6e9e841e0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '37 - 3800'),
('b3f6f3f6-147d-4fd3-9598-79edf2ebec99', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.8'),
('b4189370-db02-4a7b-84a9-c4e22b4e5e78', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('b42a3cfc-096d-4f09-92bb-f6fe961d538e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '54.9'),
('b466bc7b-7eb5-4167-be31-aa9e8bb6194c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '32 - 3200'),
('b46df50b-0356-461a-979a-69bd5d5a23fd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '111'),
('b519103e-5be4-4ecc-931d-8fd36de8f829', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '12.5'),
('b5254e55-3afe-4d7d-81b5-6b223a55ac53', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.56'),
('b536078d-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.39'),
('b5360a6b-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '5'),
('b5360d77-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '8.66'),
('b556264d-2358-4086-aae3-97827105e4fc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.51'),
('b560c76d-4123-484a-bc7f-1820f8bc2214', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.68'),
('b5fe2564-6f67-4b8d-9260-9bb56fa4612c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.19'),
('b606ed2e-ab58-4a0c-9292-108093d399ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '805.6'),
('b62681cb-9666-495b-bf90-4c11e9d89101', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.63'),
('b675c54f-db53-4317-ac35-2c4c0f438a6b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.36'),
('b6b563e0-7a59-457d-a662-0210bcf2bf61', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.8'),
('b7cef0b8-4753-48e2-9275-90bb9f8c3b72', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.6'),
('b7e62858-c11a-4fe2-b327-9c23c15f08cd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '129 - 9900'),
('b845bd62-77b9-470d-b3c7-beef626ad50f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.015'),
('b8ca873f-b7f2-4cfb-8c61-7df1529a001f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.29'),
('b8cd77a7-0098-4dd7-86e9-bfc5a9761f08', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('b93134c1-6af3-4b54-a6db-26ddf3c98f6a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '87'),
('b99d49ef-a160-4717-af8d-afe3bf4c59a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '2.5'),
('ba1b010f-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '51.12'),
('ba1b11e4-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '14.7'),
('ba1b13f9-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '59'),
('baca72f6-d07a-4f62-8c26-17ec76bf6522', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.13'),
('bb439fa3-cd20-48d0-9d3e-57d2e522f0a3', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '2.8'),
('bbf8f08b-ee4e-48a3-8962-ad5806161fb1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('bc124f4c-fd5c-4d6b-ab4b-8b9fb975b265', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '55.4'),
('bd16cf69-304f-4d93-a841-99273e553c39', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '400'),
('bd2d94d5-630c-4404-bc68-96497a66d6f9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '23.4'),
('bd46cfde-2137-4409-aac7-4876db0761f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('bdcc4504-7303-4e9e-8f48-262a30712c62', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '105'),
('be40a2e3-66c3-480c-9e12-5479809a78e6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.74'),
('be5da0f8-0a5a-4995-ba4d-54ec6715b610', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('bed957d8-d277-46d4-960e-fd7cc45c514c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.48'),
('beda8f79-eaaa-4d18-b27f-c87afc5a2c6f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.33'),
('bf09fde1-63d9-4775-b684-83d3b4db2a03', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '49'),
('bf0bd871-4f25-4a9a-bbf7-9e9ded85f617', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '46.6'),
('c05faf4d-6b23-4e0c-95b5-18a6beb27528', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '6.5'),
('c0a92c41-99f7-4d84-9d22-c9bfe98bbe49', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.45'),
('c0e2826f-4003-4fc8-880a-8dcb784b346c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('c18d17b3-d5ce-4ac8-bcea-97f275825348', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.57'),
('c26c7cb0-43e9-44c1-9669-ebca8c34fe16', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '7.23'),
('c2db0876-8b8f-4c47-8f76-57e0fa31aaee', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('c3367280-71ab-4794-bc51-1c96483f3eaa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '200'),
('c3427db2-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '62.2'),
('c3428034-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '68.9'),
('c34294f3-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '40.5'),
('c368ee9a-aa10-45ce-883f-6322ff8135e2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.13'),
('c3f55820-84f6-4542-b519-3bf59cab7bf8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('c41284f0-45c2-4844-9ceb-966afea58ece', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '44.4'),
('c4287de6-076a-47ca-a157-1bf366fca7ae', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.04'),
('c4832377-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.27'),
('c48325d2-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.09'),
('c48326f7-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.25'),
('c4d193e1-585d-4cd7-aff0-885be20ed35e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.23'),
('c56df581-7702-415a-9b17-e1f5cb15bcc7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.38'),
('c5bb7178-74bd-4fe9-8fc9-4d120b811961', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.04'),
('c5d87903-3556-4a01-bbd4-1ce2d8c96424', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '32 - 5000');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('c62968ab-45bd-4989-a55b-7bf6645d9a47', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.7'),
('c6723b53-8522-4c00-93ef-1a3647cb6275', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '353'),
('c7094059-f478-4f8b-9f81-b8908a24012f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.48'),
('c719dc1b-a612-4136-8620-030dba65e7ca', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '6½'),
('c73035ce-ed5c-475d-b4ab-f520fc3e72fe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '21.1'),
('c75979fd-bcff-4d3c-8594-bd48fc1f3054', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.04'),
('c788b175-4340-48c3-a69a-fa7df14abcf5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '300'),
('c7bc5e89-a1dc-41c3-ace7-240ed6f20175', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '8'),
('c7f84bff-e7c5-44e2-b868-efab9622e7d7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.31'),
('c83720d9-49d5-4d50-8094-a9e3f4ba3b00', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '50'),
('c84b63c2-6cc3-4e7e-b027-1b47ee27c945', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.5'),
('c857a18e-baf4-4c8a-81d4-4bd29452aa67', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '55 - 20000'),
('c87f5745-7b63-4961-922c-65285b73d895', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '41.7'),
('c8909500-5bbe-49aa-9ee4-407013b5817d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.61'),
('c8c6dc13-36ca-4e64-9fef-aff1eef902bd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('c9161ce8-3bb8-4dcb-9421-2db8ce757a0f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.84'),
('c91c5455-c699-4c0f-8f5c-ea75b8708628', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('c982c118-57f2-4dcf-a8bb-a4a6eeb91140', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.44'),
('c9d589c0-ec6e-4c05-87bf-e053c6943506', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.5'),
('c9f8cfe1-d34d-4461-a796-40fd24cbb788', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.5'),
('ca26b499-9d5a-4779-9504-a3f92b5f8e1e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '102.5'),
('ca829eb3-ee01-4f61-a898-9c4a7b51de39', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '204.9'),
('ca9b71de-0002-4beb-8780-c29b25da42dd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.95'),
('cade031f-388c-4030-aca5-9e6eef7d7d7c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('cae259d5-0e18-4f7d-8c74-4327e895e9de', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '14.3'),
('cb110bc1-9f25-4220-91c6-cb507f3798fa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '83'),
('cb180aa6-71d1-428f-a762-91db4d441d5f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '2.37'),
('cb6b21c1-8555-44e0-b9ed-5046acd29cac', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.05'),
('cbe718ed-f7b1-45a8-89ed-08aa6bbacb0b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.14'),
('ccb502c6-0dcc-4fcb-9c36-d8614afc0243', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.9'),
('ccbf48f6-df81-4dd4-bb5b-dd975b212e11', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '6.5'),
('cd7e2f69-cf45-4c02-96c5-cb1405282c73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('cdf0b9a4-6e76-4113-ac51-50155f1c5719', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.57'),
('ce377a6c-4305-475b-81d5-e8db690865c9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '3.5'),
('ce52a9e8-b95d-42f2-a3b1-67daebad573c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.04'),
('ce7d9123-0c19-47c1-bd7b-6ec9a6af007d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('cead830c-b4ab-4813-b972-42a0765ce992', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.98'),
('cead92b5-644d-4440-b1d9-a94c6e90ac7c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '49 - 4600'),
('cf6dc9da-986d-4e71-896e-47446a598011', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '63053593-9cb1-401e-a4df-8aaa372c042c', '', '0.493'),
('cf72f57f-02a6-4c2b-8482-1099a2b1fd94', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.33'),
('cf7e15a9-1f7b-4ae8-99f6-a96eb21b5f68', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '4.65'),
('cfd19eed-4104-4418-9a8e-300c8326c38b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.32'),
('d02aad73-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.34'),
('d02aafe4-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '300.7'),
('d02ac57c-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('d02cb398-55f6-433e-9b70-849a97af0ed0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '50'),
('d0a9f66e-c53a-42fa-9b15-4ed912c87e70', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.38'),
('d0ee4503-5313-48b5-a8b9-953214cfa60b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.94'),
('d11797ea-a190-4e6f-a627-62aa8d665f36', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('d138449b-82a6-4356-a7c9-ce6291518bb2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '94.8'),
('d17976cf-8470-4a51-8c7d-4fde99156eb9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('d189a70d-056f-493a-8b0c-a2e403721ed9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.14'),
('d195d780-62aa-43d0-9b88-6f42b51c6858', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '138.5'),
('d1a81477-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', '', '300'),
('d1aa0ee3-efca-411d-b1b8-2d228fc1a900', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '2'),
('d1cae265-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '346'),
('d1caea35-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '201.1'),
('d1caeea4-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '346.4'),
('d252ea7e-829c-48d1-b7ea-a692aefca5d8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '35'),
('d29b8c23-e422-4529-8e19-9ea8fdf06833', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '85'),
('d2b57950-2381-41f1-9bd5-a50bc9654c83', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.41'),
('d2c505c8-e730-4a54-bff4-476cae198ada', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '82.7'),
('d2d5b68d-5115-47fa-8649-bd370b873c81', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '3.69'),
('d32c3f08-ec32-426c-809a-816fbba62a0e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '61.5'),
('d34a118c-e652-4cb8-8c47-93b2a3d23cc4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '7.8'),
('d36ab9ae-551a-41b2-a79f-1a92f237ed70', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.6'),
('d3e27146-8257-4e04-8bd5-c3faad1803fb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.35'),
('d3fb7efb-8087-4789-9853-34a457673987', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '530.9'),
('d40a38bf-f251-4e15-8101-6a46a75c1b6b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '100'),
('d4aa1ffe-b9c9-4023-a7af-8abb8f9c4f66', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.34'),
('d4baaade-743c-45a8-8514-11f6e94a55bf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.4'),
('d4d4808e-7d41-49b2-ac77-13cc77a380f9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '5.1'),
('d4fa96ae-1854-44d9-8178-401a9a350b0f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.8'),
('d58efb6b-ed67-4688-ac4c-da168979e42e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('d5c58f63-e857-465c-a4cd-49d23b7405ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.74'),
('d5c8d79e-6121-4d96-a0f5-1ee27394c365', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.63'),
('d5d1d768-432d-46ab-b9d8-0b34d6f4fad4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '146'),
('d60912ce-bde4-4c76-a47b-d71bedcaa289', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '120.8'),
('d61d8b61-1052-413f-9222-8e2c23b6b054', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('d685f1b2-c664-430c-9b9e-c062c2dd34ad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.45'),
('d6aa1eb9-a517-45e3-80a5-33f2f86a3e4d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '6.5'),
('d727cb25-3546-4e87-bb6e-00ed4ceb2b1f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '8.91'),
('d7314672-5451-44c4-865c-b590cc4754a9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('d7366107-8009-412a-9a02-59c8c49ce59e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '158.73'),
('d741ac93-50b9-44b7-8b00-e5759ad05599', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '37'),
('d75c2cb9-60c7-4bed-ac34-541e99bc0849', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '88.4'),
('d79cd7a1-4460-4230-bf2c-59c685d53172', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('d79fc5f3-1ad4-4eb8-b53e-39d487d42d52', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '75.2'),
('d81afb68-d56e-48f6-bbc5-9c849719b3bf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.6'),
('d8321f89-efa3-4185-a501-362980c3d277', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.26'),
('d8807f05-e1cf-44d7-8be7-5b2fd3393507', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', 'ed018b01-94d0-464b-806c-17a7a0f7dad9', '', '2'),
('d8fbe80e-bee5-4d1f-abb3-95e450e11a59', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.3'),
('d93c1f5c-363b-4b98-ab4d-a3b8a8bca139', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('d9e8a2ae-1211-4c8e-b57f-ca5f742c8628', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.95'),
('da0ade37-b5de-4ac0-9f25-f224cd89018e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '9.07'),
('da2731ad-d44d-4c1f-b13f-d9265d0eb082', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('da594ae2-2b56-43d3-971f-aedeb69e685f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.34'),
('da5b7c85-8172-4db9-a86e-c669de4028a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.9'),
('da92b833-e63f-4e30-88c5-6c0ab0ead164', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '1.6'),
('da9cb598-dd49-4ef1-af6b-64a08b1b086e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '498.3'),
('dae0b19a-a9b2-464d-b292-292ab2154a07', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '88'),
('dafc00de-672c-4c49-b484-12c54124fb52', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '745f44c7-888c-4919-832c-99fb176ff0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'Mylar'),
('db0ce0f0-1980-453e-817c-b5e2d6f6088b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('db8cc367-4e8f-4634-b32a-ea02555fb4df', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '4.2'),
('db909a53-48af-4084-9ff4-22535eacd041', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', '84f8d8db-e1ea-48f4-b9cf-4cbdb34fa301', '', '0.65'),
('dc17f01e-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '8'),
('dc18699c-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('dc1873ba-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('dcd3cea7-3b21-45d8-be85-adf295035346', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '94.6'),
('dcdd3548-df9b-4a91-94c6-d2e1b29a275c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('dcde5d5a-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.6'),
('dcde77d0-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.2'),
('dcde7af9-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '4.3'),
('dcfe7210-5a71-4306-8693-bd40070a613f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('ddc64c6a-3f8f-4441-9306-32f1103bf1dc', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '49.5'),
('ddeae184-e249-40d3-898d-3b664c7134b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.36'),
('de0ee4ce-db64-4087-96aa-39814822da82', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.18'),
('de19fe22-c893-4c1b-b1fc-9ff23b2a8a9f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '38.6'),
('de35e6ff-9168-4a08-899d-f44c55239620', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '14.5'),
('de658ccd-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.5'),
('de659590-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.1'),
('de659a31-b0d8-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.05'),
('def9d7ac-1434-4999-8084-9c36edc49a65', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '98.8'),
('df0e939d-e1a6-4e3c-89d6-656691b3029a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '102.2'),
('df65fd68-7d1b-4d74-a217-62b25bb0261c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.91'),
('df8daacb-f487-4659-877f-99386445bfa2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('e035bb15-6916-4e8c-b620-4b00df5bb3a5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '112.3'),
('e048028c-bed7-4a00-a2d2-9c7d2ea61010', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('e09f6273-1fdc-4672-95d7-3f2714ee4b4b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.81'),
('e10de343-ae2f-4357-aad7-6d6228c2ab94', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '3.5'),
('e12a41c5-f75f-4e24-bd07-69fa44e7d87c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '3.46'),
('e12de343-1736-48d5-a60b-2a3cd9409ee5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.39'),
('e12f9260-6be6-4490-a03e-27dde4e8b669', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.02'),
('e15ca055-37d3-4539-bc4c-a30ea138f38f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '90'),
('e169ec63-b9fd-43d6-8088-9cd5bf69e7a1', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.46'),
('e17fc121-3a47-4b6f-bfa1-3c24f76d1d3f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '35.9'),
('e18a72ad-3ca6-4f68-8038-775e73ad4dfe', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.0'),
('e212c09c-ce71-434f-b6d0-434ceaf319ed', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '28 - 2900'),
('e2bae6eb-b01c-4fcb-b914-cbb537af86b0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.25'),
('e2c2af83-9bd1-42d4-ae40-0171ca3897bf', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.8'),
('e328b244-47de-4e13-9281-c0dca64b9ab8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '92'),
('e3443f52-d5c9-4846-9565-d0d6f00d0b79', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3'),
('e356e6b7-5afc-45fa-acd8-3ca6c290b95d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.26'),
('e36174fc-f7e5-409e-bfaa-709e382955a8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.1'),
('e38cbcee-8372-4f84-b5bc-f692651c18a7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '94.6'),
('e3b3e142-ab98-4e0a-88d6-52199edf2232', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '53'),
('e45adf7d-6078-4b74-993e-3132cc9003af', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '400'),
('e4865d17-9814-4ddc-9de2-4a2147dff0d5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.53'),
('e4c90ed2-eac4-4e95-9f1e-5062addb9a5a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('e50657ed-8108-418f-8cf3-a3db96f43298', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.4'),
('e59d1b9f-e62f-4cdd-bb1d-78d596ebbb89', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.54'),
('e61c128c-ed44-462a-af4e-7b6cb538ae73', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.86'),
('e6303a9e-6bcd-473f-a383-7bf95dd78905', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.9'),
('e63cca2f-6ccd-4391-834f-131d6ed1a6b9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.8'),
('e6403f42-3a55-4920-8c6b-0bd7bb45718b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b4e5347e-fd18-4b47-a74a-6d90c6e0c305', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '46'),
('e64f024d-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('e64f241a-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('e64f2b32-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('e6573a68-90c3-4df8-bd0a-85f725795a05', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.16'),
('e67af301-ba3b-4bb7-97e0-ddb0e4282b46', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('e697f610-0c89-4b3a-882c-4acc271b4809', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '38.56'),
('e6a60951-f51b-4f37-bbb4-1d02aee94d50', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.21'),
('e6ac5644-2ad1-4062-ac14-2b870c1ac684', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.41'),
('e6ccffa7-59c4-4a59-8965-07db476fa1eb', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '7079b626-b406-4b03-947a-44e50fb316e4', '', '2.4'),
('e726a642-282c-45b6-a9c1-7a1c8b542709', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.19'),
('e8023f2b-bdc4-4984-bc60-d5030a37b886', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '530.9'),
('e87fdcac-a46a-4722-8f59-c3d47b87a6e8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.31'),
('e891ed33-4224-4965-9fb3-95016f8faad2', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.27'),
('e89ba7c6-e9fb-4cc2-b26a-027a520c38b6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '28'),
('e8e6d7b2-9a96-4499-bb2c-0681477e7083', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '38'),
('e917fe91-e298-4e61-b991-9b5f66817df7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '32'),
('e9578f0f-0b60-4ada-86ad-70460ff59df0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.61'),
('e96ab4a0-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '57.6'),
('e96abee5-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '51.12'),
('e96ad11a-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '14.5'),
('e9c97499-abbe-4449-9814-c9806e6f1382', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.52'),
('e9c9cd43-bdd7-402d-b4f0-d1c2e24d8593', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.67'),
('ea0480a8-b0f5-4917-afec-ab051c9f8014', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '82.6'),
('ea5f6bbe-c016-4dc9-b6ce-c5d0cc378942', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.21'),
('eaad4e53-7eef-4dbc-a906-c161ddd16a99', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '7639c90c-b6bc-4927-87bd-5bf052a07789', '', '0.8'),
('eb060055-0042-4db4-8c1d-8ac70b981bd9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.7'),
('eb1b8abd-3582-463f-a113-928c4233c178', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.22'),
('eb740718-c1b3-4d23-841c-2fec9bb6858a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '31 - 2600'),
('eb7c8230-0827-499a-9dbc-d443fb743c29', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '38'),
('ebbc9d39-48ad-46e6-a972-65136c19adad', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4e42b38e-a524-4152-a956-717855971d4b', '', '5.1'),
('ec6d1942-7d9a-4996-b405-579495898292', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '69db9385-8c1f-4863-a07d-30e3fc952ec6', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '0.36'),
('ec808099-b108-4d3f-a569-8430aeea0f6c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e3770df5-ea15-4be2-85f5-703caecdfd36', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.65'),
('ecaa4d3b-b521-4e6b-b38e-2a2129581110', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.74'),
('ecaab53e-e80d-466d-918e-53da4d9c9f6a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '88'),
('ed0ddbc6-55f3-48d5-837c-c120e9e2617f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.97'),
('ed44a144-2bc3-4d7e-b02f-f3ae26f32642', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '90'),
('ed6d1293-a2d9-4486-9f96-bbfd0bfa1078', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.1'),
('ed88042a-db12-4af5-bc51-e9c706f258b7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4e42b38e-a524-4152-a956-717855971d4b', '', '6.92'),
('edb4b92d-7ea8-4196-b3cd-40b2617754ea', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.09'),
('eeb3ec4f-f0a3-4422-a5c3-3b5e782f6c2a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '6.9'),
('ef245cef-da8b-4f0f-a73e-1ffce5ec604d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '10'),
('ef78baa8-2cc6-49c3-998f-eb0ed48a3e30', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('f023fc7b-799d-4b12-9f16-4ca8b7958c49', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.46'),
('f0289b86-2f2c-429b-aa19-4d7697ec825d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', '5e1e25d6-756e-4277-81e9-9c29fa70229b', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '91'),
('f0624a5a-9e9c-4740-8bfb-91ff07849f55', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '41a41be4-0044-4958-b270-7afa8207446c', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '25.4'),
('f071b0f3-77d1-440b-aa38-515eec574952', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.87'),
('f132b70c-55f4-4bd4-bbb7-ee5b37618998', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '28'),
('f19af830-be77-4191-afb0-ef90652cc336', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.64'),
('f1d537da-3db9-4d19-9d7c-27516eb0a299', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.44'),
('f2169623-03a3-413d-8c7c-8a306df297aa', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '514.7'),
('f2594bd4-0498-4c7e-834d-ec0ee66fa8ba', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5fa5a613-16a3-4b8f-92c6-dd2bd7b68f8b', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.5'),
('f26f29db-b7da-464e-a2cd-e3cbf985023e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b912e31b-58aa-4b51-a7d2-f1b80ebdfc0d', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'ASV'),
('f2914a05-6408-4cb8-9ade-b06b815e130d', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '1.08');
INSERT INTO `specificationconnector` (`id`, `brandId`, `productId`, `dynamicspecificationParentId`, `dynamicspecificationSubParentId`, `dynamicspecificationId`, `notes`, `value`) VALUES
('f3330283-05d0-4373-9fc4-269652c03590', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '1.7'),
('f340297c-18cb-48f7-bfe2-4f2ff3341016', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '216.4'),
('f36ce616-8ad2-4be3-a940-6100dfb05658', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '83.4'),
('f36ef1c7-9cd6-443e-b0fa-41c57f34cb21', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '95bba079-4da5-4ac3-8a9a-9fdf23f146b7', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('f3a48aa0-38a5-4e22-98ab-4f26c66a6b6c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'e1c25166-8945-4f86-a898-3795b4b44883', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '600'),
('f3af60eb-68f3-47ed-9d0a-18063e735f27', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c0118d2b-ca07-4d5d-9819-42b1fdc27655', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '50'),
('f3b1f6a3-bacb-4070-a4d0-e3252f1a2029', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '42802840-d898-46ea-8377-7e0a9b6a060f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '61.5'),
('f3c4c51e-3b74-4389-838d-ed2766197339', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'b9658a8b-77d9-4e00-8e0a-99b52fb1fad4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.32'),
('f43a805f-fb95-4d09-a5d9-fe129ac1be0b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.04'),
('f470eb6e-c579-422e-b5ea-33ba6eebf5b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.44'),
('f49c7b7b-bbeb-418c-bdfe-2096422910bd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '164c19d2-170f-4b48-958e-68ec335392f0', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e87669ff-8d73-4e9f-9863-9b2dbc7ed738', '', 'KRAFT SV'),
('f4a7b890-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '49 - 4600'),
('f4a7c15e-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '34 - 2500'),
('f4a7ff41-b0d6-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '33 - 3600'),
('f52daeb2-ccb7-4808-a1cb-6560df4e5d1e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '1.17'),
('f5599de7-c7fe-4839-8060-4a9009f20f47', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '96f6309b-96d1-466f-9dbb-bff04e8e1fac', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '753c5dda-5d5a-4f87-a5c3-ce10b85fa11e', '', '125 - 13000'),
('f64f76ec-e4fd-4313-bd8e-1f10277a2974', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '38.56'),
('f6daee65-e6b1-45e5-9d72-96db415dc5f7', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '400'),
('f75dee54-7c54-452d-96ba-511f246518fd', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'c64d6c10-91d3-45ab-b547-09b5a5b79bba', '', '0.42'),
('f81c9a69-e0d8-4ca0-b4d9-1125d5762302', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '61.4'),
('f8972c27-a55c-4fb8-a8fb-2925163102b5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'ad3d4329-2433-42aa-8b0e-542a474f1c91', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'a231074f-d6d0-4cdb-acd2-0f2cb3fcadcf', '', '25.4'),
('f8bacf75-bb1b-429e-b66d-8416746d2d99', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.4'),
('f8e0c3c4-ddbd-47ab-b74e-8a05c253dd12', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '346.4'),
('f908fd61-95ce-4264-8956-61c1677c879a', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'fdd744f3-a65e-4c33-b2b6-81306f7b47f8', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '8.04'),
('f93310ab-e54f-4bad-bdc2-fb5b8e67478e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '498bc88a-d5e6-4314-ad72-499ea3f1f780', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'f11c92e4-866c-4903-8aca-54a1a2b004c6', '', '1.35'),
('f980e36d-2a5a-44f9-871a-af9220935370', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '693c4409-faea-418e-afc4-0bd51489b62c', '', '12'),
('f9cd2038-6f76-4741-b51f-ec2d355fd1b4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '80'),
('f9deb418-edc8-46bc-a9cf-09278f7ae66f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '92'),
('fa22bc48-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '62a47bd6-a0c2-4df9-9cd0-21c496076a5a', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.49'),
('fa22bf40-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2e888496-0048-4943-982f-ebfdd4625e1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.54'),
('fa22c3f1-b0d7-11f0-98ba-18c04d02afd4', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4f583bcb-ae46-4e3c-9c77-5525d0f58c1f', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '4d4fb3d5-34a1-466b-b6f4-80c7445f4f45', '', '0.17'),
('fa56b9ec-75fd-4b2d-9e2b-45e6f756a5e5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '81.4'),
('fa87dd21-3709-41ec-ab6d-0f22a20cbd6e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '7079b626-b406-4b03-947a-44e50fb316e4', '', '6.5'),
('fa8dff68-84cf-49cf-ba86-ff0ce16b8cc9', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '7079b626-b406-4b03-947a-44e50fb316e4', '', '8.7'),
('fad72c2b-6e74-4fb8-858b-61d3b3c79859', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '4899e144-b93b-446a-89b4-b055230545ee', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.4'),
('fb8ddece-57c9-4204-b7ec-402f61790ad5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '8d4235e2-a456-4b87-83b1-2eeee04e40b9', 'IEC 268-5, (in box system, cut.off 20-500 Hz)', '200'),
('fb94eae7-a3d2-4160-8621-179419826582', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.02'),
('fbd1aeab-9fc4-4aa5-b102-86f630932383', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '6f3b950d-f94f-4c21-8e42-7e05251434b4', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '103'),
('fbebb8ee-ef6c-460f-82a6-66320288d27e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c52ce46f-89a5-4576-a4fd-8a7ae5cf1f53', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.22'),
('fbfedb10-9961-4ca9-ad37-6f84d9c50f37', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '77895dbd-3f6f-4221-ba0b-dd1e6765454d', '', '0.16'),
('fc19a503-34c0-4925-af24-c8e990f3cb00', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'cc2d7eb7-526f-4ffe-923d-4b6c57fb9006', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '346.4'),
('fc24ce24-6d4e-4947-9557-89a319b8a43b', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '77932324-df07-44d8-84d2-30af8ae38c0a', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '2381ab25-a8bd-40ac-aae3-52226bb4728b', '', '95'),
('fcb541a5-0ca2-48a1-bbac-c1e4bf59454c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '2523f7aa-8859-4020-957a-4c1a9c2173d4', '', '3.6'),
('fcbc5274-99e7-4b0c-a9e5-227fd8e3cff5', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '58e4147b-93a0-4809-955d-d04ce1161c5e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'cf3a6075-4f62-4be1-80a4-f00e7e6ff6bb', '', '518.7'),
('fd12a88c-91b9-4d70-af5d-a08bced56ad6', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '2b1193f0-37cb-4576-9bfc-028cd5694d0e', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('fd5ee765-7149-43e8-8811-b84b860ee86e', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '963116bc-4fef-48ae-a8e6-f655be756dc7', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', '142a61b9-0738-42a3-8742-47b4fce63f73', '', '36'),
('fd8eb2df-80e6-4904-b84b-027489b68667', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '5b326d37-c8c1-49b1-83c5-c54f8eb4c2dd', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '83.8'),
('fdb01440-6251-45ba-a94f-c26b6af100d8', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '3d4dd01e-42bc-41b7-8015-9c5d8afc8f1e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '0.63'),
('fdbbb7d6-f328-432d-ab9a-71d5642b538c', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '8c29e60a-34c0-4b99-b9bf-104be2655e65', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '1380c6d4-3201-4dd0-85e3-69e00e00cade', '', '84.6'),
('fe08edd9-5900-40a7-9b9d-a3c321ed7be0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '55fd0ddf-cd00-45a1-8ee0-6fd4231bd69e', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '06671e3b-d634-4ab8-b88e-4d81b244e759', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '4.2'),
('fe098b2f-095b-49e7-b1fb-e7e504310161', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'c2abeea1-3c8d-4900-af2a-6fcb27bcb738', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', '0a451b38-7865-4e17-9a33-cf56ab2d4ea2', '', '1.15'),
('fe38e33f-b9dd-4af0-95a6-2559433d57e0', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', '0ce0647e-d76e-43f3-961b-ed4c5137e135', 'a56868e9-3490-4a97-acb3-9dedbcfbf930', 'ae300345-3429-4e9b-8b65-ae4a1dddac20', '', '7.1'),
('fe498573-5e8a-4c5e-96f7-c093fee24919', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', 'e0a12bf6-f9ba-47e7-8704-c34955b1b698', 'Power on continous program is defined as 3dB greater than nominal power handling.', '200'),
('fed643db-dea3-458a-ae65-d1e3b9c2768f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', 'bd5ecf65-04d8-4b4d-813b-cffd8748b0fa', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '831ce7d5-4711-41b7-a545-723473fed6a9', '', '4'),
('ff019c17-f4d4-49c3-b514-1ddf1b10e618', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '970f6aa5-91f5-464c-96e4-83f86280d053', 'eb57241c-6f01-46b6-9f41-ed49a7b4eb12', '', '678c85cc-ba1f-4472-be09-d655c00e5b37', 'AES standard, test mode with continuous pink noise signal (6 dB crest factor; 2 hours) within the Fo to 10Fo power calculated on rated nominal impedance. Loudspeaker in free air', '40'),
('fffce797-8f00-4bae-b1f5-ba0583833c5f', '680c5eee-7ed7-41bc-b14b-4185f8a1c379', '7a0b71f7-4400-4318-af0e-fc23c27171d1', '0ce0647e-d76e-43f3-961b-ed4c5137e135', '', '91d8a44f-c7e5-4d25-8be1-8b0cbf8e48ae', '', '1.9');

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
('52309261-f2b5-4c3a-bb4d-b61e90fc53ae', 'mkt', 'mkt', '$argon2id$v=19$m=65536,t=3,p=4$o1JuB64vMl5a58jDWRVY7Q$VQrl9IC/Yw6l6h71uU9ZkzB3jyUFPzoALYoc3StGkmg', '', '2024-11-12 07:44:52.252', '2024-11-12 07:44:52.252', '');

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
  ADD KEY `Product_brandId_idx` (`brandId`),
  ADD KEY `Product_sizeId_idx` (`sizeId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Roles_userId_idx` (`userId`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Size_brandId_idx` (`brandId`);

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
