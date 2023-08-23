-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2023 at 10:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seo_strategy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `category_order` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `active_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `lang_id`, `name`, `slug`, `description`, `keywords`, `category_order`, `title`, `active_category`) VALUES
(1, 1, 'Your Brand SEO Strategy', 'seo-strategy', '', '', 1, 'Your Brand SEO Strategy', 'seo-strategy');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `keywords`, `image_default`, `image_small`, `created_at`, `category_id`, `category_name`, `category_slug`) VALUES
(18, 'Keyword Generator', 'keyword-generator', '{TOPIC}', NULL, NULL, '2023-07-10 23:57:05', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(29, 'Best Keyword Ideas', 'best-keyword-ideas', '{TOPIC}', NULL, NULL, '2023-07-11 15:22:20', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(31, 'Local SEO Master Plan Generator (Everything you need for local SEO)', 'local-seo-master-plan-generator-everything-you-need-for-local-seo', '{TOPIC}', NULL, NULL, '2023-07-11 15:26:22', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(34, 'Killer 6 months SEO Plan', 'killer-6-months-seo-plan', '{TOPIC}', NULL, NULL, '2023-07-11 15:32:06', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(38, 'Engaging LinkedIn Post Content', 'engaging-linkedin-post-content', '{TOPIC}', NULL, NULL, '2023-07-11 16:00:10', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(40, 'Generate Popular Keywords', 'generate-popular-keywords', '{PRODUCT}', NULL, NULL, '2023-07-11 16:06:35', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(44, 'Local SEO Master Plan Generator (Everything you need for local SEO)', 'local-seo-master-plan-generator-everything-you-need-for-local-seo', '', NULL, NULL, '2023-07-12 13:58:22', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(82, 'Obtain high-quality backlinks to raise the SEO', 'obtain-high-quality-backlinks-to-raise-the-seo', '{PRODUCT}', NULL, NULL, '2023-07-12 21:03:37', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(104, 'Blog topic ideas that can rank on Google', 'blog-topic-ideas-that-can-rank-on-google', '{TOPIC}', 'uploads/blog/202307/img_64afb411c1d912-78684317-83832964.jpg', 'uploads/blog/202307/img_thumb_64afb411c428d7-53990125-21988936.jpg', '2023-07-13 08:06:46', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(105, 'Internal linking ideas for your blog', 'internal-linking-ideas-for-your-blog', '{PRODUCT}', 'uploads/blog/202307/img_64afb3aeb18363-15674621-15946996.jpg', 'uploads/blog/202307/img_thumb_64afb3aedf4be4-56454715-54535681.jpg', '2023-07-13 08:08:59', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(108, '10 relevant websites that talk about your brand', '10-relevant-websites-that-talk-about-your-brand', '{PRODUCT}{TOPIC}', 'uploads/blog/202307/img_64afb2845f4767-23490670-48016377.jpg', 'uploads/blog/202307/img_thumb_64afb284619e55-40602497-88129163.jpg', '2023-07-13 08:13:21', 1, 'Your Brand SEO Strategy', 'seo-strategy'),
(110, 'Write an SEO-friendly Product Description', 'write-an-seo-friendly-product-description', '{PRODUCT}', 'uploads/blog/202307/img_64afce13320925-40899747-89813831.jpg', 'uploads/blog/202307/img_thumb_64afce13348c79-58016134-90343041.jpg', '2023-07-13 13:12:42', 1, 'Your Brand SEO Strategy', 'seo-strategy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
