-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 10:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blogging`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `description`, `title`) VALUES
(1, 'Python   is OOPS language which is so easy to developed web API ', 'Programming Language Python'),
(2, 'Java   is OOPS language which is so easy to developed web API ', 'Programming Language Java'),
(3, 'C#   is OOPS language which is so easy to developed web API ', 'Programming Language C#'),
(4, 'Oracle is used for database managemnet and relational database. ', 'Programming Language Oracle'),
(5, 'Mysql is used for database managemnet and relational database. ', 'Programming Language Mysql'),
(6, 'MS SQL is used for database managemnet and relational database. ', 'Programming Language MS SQL');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment`, `post_id`, `user_id`) VALUES
(1, 'this is comment on post 1', 1, 2),
(2, 'this is comment on post 1', 1, 1),
(3, 'this is comment on post 1', 1, 1),
(4, 'this is comment on post 1', 2, 2),
(5, 'this is comment on post 2', 2, 2),
(6, 'this is comment on post 2', 2, 2),
(7, 'this is comment on post 2', 2, 2),
(8, 'this is comment on post 3', 3, 2),
(9, 'this is comment on post 3', 3, 3),
(10, 'this is comment on post 3', 3, 3),
(11, 'this is comment on post 3', 3, 3),
(12, 'this is comment on post 3', 4, 3),
(13, 'this is comment on post 3', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `added_date` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `added_date`, `content`, `image_name`, `post_title`, `category_id`, `user_id`) VALUES
(1, '2022-05-26 10:18:26.000000', 'ORACLE   is used to database to manage data in systamatic way', 'bishnu.jpg', 'What is ORACLE', 6, 1),
(2, '2022-05-26 10:18:49.000000', 'Programming language is used to communicate with computer', '22904700_1995869440682523_6447154872606203640_o.jpg', 'What is Programming', 5, 1),
(3, '2022-05-26 10:24:13.000000', 'Java   is used to database to manage data in systamatic way', 'e2841b99-96c5-4568-810c-97587e3ce6d0.jpg', 'What is Java', 4, 1),
(4, '2022-05-26 10:24:27.000000', 'C#   is used to database to manage data in systamatic way', 'default.png', 'What is C#', 3, 1),
(5, '2022-05-26 10:24:45.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 3, 1),
(6, '2022-05-26 10:25:10.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 1, 1),
(7, '2022-05-26 10:25:18.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 1, 2),
(8, '2022-05-26 10:25:24.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 2, 3),
(9, '2022-05-26 10:25:32.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 3, 4),
(10, '2022-05-26 10:25:37.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 3, 5),
(11, '2022-05-26 10:25:42.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 3, 6),
(12, '2022-05-26 10:25:48.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 4, 6),
(13, '2022-05-26 10:25:52.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 5, 6),
(14, '2022-05-26 10:25:56.000000', 'Python   is used to database to manage data in systamatic way', 'default.png', 'What is Python', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `about`, `email`, `name`, `password`) VALUES
(1, 'I am Programmer!', 'sampurna@gmail.com', 'Sampurna', '$2a$10$VGsm.JAlGRpunyMWnDZh7.7XmEF85MQPxgR9skH3fpaAIlJiIOG5G'),
(2, 'I am Programmer!', 'bishnu@gmail.com', 'Bishnu', '$2a$10$GBKXgPDAnVh7H81hkefNv.itxsUW5e/3762KEdrjj1w4tseWCxEMq'),
(3, 'I am Programmer!', 'admin@gmail.com', 'Admin', 'admin1'),
(4, 'I am Programmer!', 'dhruba@gmail.com', 'Dhruba', 'dhruba'),
(5, 'I am Programmer!', 'karan@gmail.com', 'Karan', 'karan1'),
(6, 'I am Programmer!', 'nitesh@gmail.com', 'nitesh', 'nitesh');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user` int(11) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user`, `role`) VALUES
(1, 2),
(2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FKh4c7lvsc298whoyd4w9ta25cr` (`post_id`),
  ADD KEY `FKqi14bvepnwtjbbaxm7m4v44yg` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FKijnwr3brs8vaosl80jg9rp7uc` (`category_id`),
  ADD KEY `FKam8ar6luvp8afhfu20gfsydo9` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user`,`role`),
  ADD KEY `FK26f1qdx6r8j1ggkgras9nrc1d` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FKh4c7lvsc298whoyd4w9ta25cr` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `FKqi14bvepnwtjbbaxm7m4v44yg` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FKam8ar6luvp8afhfu20gfsydo9` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKijnwr3brs8vaosl80jg9rp7uc` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FK26f1qdx6r8j1ggkgras9nrc1d` FOREIGN KEY (`role`) REFERENCES `role` (`role_id`),
  ADD CONSTRAINT `FKmow7bmkl6wduuutk26ypkgmm1` FOREIGN KEY (`user`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
