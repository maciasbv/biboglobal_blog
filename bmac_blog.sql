-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2015 at 05:47 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bmac_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `post_id`, `comment`, `date_added`) VALUES
(2, 2, 10, 'Hi, this is a comment. Thanks for this nice post. I like to see you blog. ', '2014-08-26 15:38:00'),
(3, 4, 10, 'Oh, thanks for reading this blog. Thanks for being with me.', '2014-08-26 15:39:05'),
(4, 6, 10, 'Hello', '2015-12-15 09:32:40'),
(5, 6, 10, 'Hello', '2015-12-15 09:35:29'),
(6, 6, 10, 'Hello', '2015-12-15 09:36:46'),
(7, 6, 10, 'Hello', '2015-12-15 09:37:53'),
(8, 6, 10, 'Hello', '2015-12-15 09:38:31'),
(9, 6, 10, 'Hello', '2015-12-15 09:39:22'),
(10, 6, 11, 'Pataka lang ka dah!!!!', '2015-12-15 09:40:52'),
(11, 6, 12, 'Hambug ra kaau ka!', '2015-12-15 09:41:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post`, `active`, `date_added`, `user_id`) VALUES
(11, 'This is just a test', 'dfsldsfk dsafksdfakjsdk dsaksdafjsdk ksdajds dsaksdajsdafk sadjsdak sdakdsafjksd', 1, '2015-12-15 09:40:32', 0),
(12, 'Instant Millionaire!', 'Cge lang ko kadaug!', 1, '2015-12-15 09:41:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','author','user') NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `username`, `password`, `user_type`) VALUES
(6, 'admin@yahoo.com', 'administrator', 'bd22aa02ad3731f0b14f3fd2262f8b331c6ff094', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
