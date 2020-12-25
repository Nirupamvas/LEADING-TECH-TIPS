-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 11:19 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltt`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `a_id` int(250) NOT NULL,
  `a_name` varchar(250) NOT NULL,
  `a_email` varchar(250) NOT NULL,
  `a_pass` varchar(250) NOT NULL,
  `firstname` varchar(250) DEFAULT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`a_id`, `a_name`, `a_email`, `a_pass`, `firstname`, `lastname`, `address`, `city`, `state`, `zip`, `description`, `image`) VALUES
(1, 'Ravi', 'abc@gmail.com', 'qwerty', 'Bhimanathini', 'Akhil', 'H.No:2-10-2691', 'Hyderabad', 'Telangana', '505001', 'B.E. 3rd year Computer Science Student in Vasavi College of Engineering in Hyderabad', '1.jpg'),
(2, 'Kishalaya Kundu', 'abc@gmail.com', '1234', 'Bhimanathini', 'Akhil', 'BHIMANATHINI AKHIL,', 'Karimnagar', 'Telangana', '505001', 'B.E. 3rd year Computer Science Student in Vasavi College of Engineering', 'default.jpg'),
(3, 'Nirupamvas', 'akhil123@gmail.com', '1602', 'Bhimanathini', 'Akhil', 'BHIMANATHINI', 'Karimnagar', 'Karnataka', '505001', 'B.E. 3rd year Computer Science Student in Vasavi College of Engineering', '1.jpg'),
(4, 'Akhil', 'abc@gmaii.com', 'qwertyuiop', 'Bhimanathini', 'Akhil', 'H.No :2-10-1691', 'Karimnagar', 'Telangana', '505001', 'B.E. 3rd year Computer Science Student in Vasavi College of Engineering', '1.jpg'),
(5, 'Anmol Sachdeva', 'akhil123@gmail.com', '1602', 'Bhimanathini', 'Akhil', 'BHIMANATHINI', 'Karimnagar', 'Karnataka', '505001', 'B.E. 3rd year Computer Science Student in Vasavi College of Engineering', ''),
(6, 'Raju', 'abc@gmail.com', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, 'Aravind', 'aravind@gmail.com', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `car_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_title`, `car_desc`) VALUES
(1, 'andriod', 'Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets'),
(2, 'ios', 'OS is a mobile operating system created and developed by Apple Inc. exclusively for its hardware. It is the operating system that powers many of the company\'s mobile devices, including the iPhone and iPod Touch; it also powered the iPad until the introduction of iPadOS, a derivative of iOS, in 2019'),
(3, 'windows', 'Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. Each family caters to a certain sector of the computing industry.'),
(4, 'linux', 'Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released on September 17, 1991, by Linus Torvalds. Linux is typically packaged in a Linux distribution.'),
(5, 'PC', 'PC'),
(6, 'Gaming Consoles', 'Gaming Consoles'),
(7, 'Laptops', 'Laptops'),
(8, 'HeadPhones', 'HeadPhones');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `username` text NOT NULL,
  `email` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `date`, `username`, `email`, `comment`) VALUES
(1, 0, '2020-11-30 10:38:56', 'Nirupamvas', 'nirupamvas@gmail.com', 'Hie I am Nirupamvas testing the comment section.'),
(2, 33, '2020-11-30 10:38:56', 'Nirupamvas', 'nirupamvas@gmail.com', 'Hie I am Nirupamvas testing the comment section.'),
(3, 33, '2020-11-30 10:38:56', 'Php', 'php@gmail.com', 'Hello this is PHP sending messaege request'),
(4, 30, '2020-11-30 10:38:56', 'Samsung', 'sumsung@gmail.com', 'Hay this is samsung from india'),
(5, 30, '2020-11-30 10:42:36', 'Nokia', 'sumsung@gmail.co', 'Hay this is samsung from india'),
(6, 33, '2020-11-30 12:04:42', 'Smacc', 'smacc@gmail.com', 'Hay this is smacc'),
(7, 0, '2020-11-30 12:09:53', 'sfsd', 'dsfasd@gmail.com', 'sdfsadf'),
(8, 33, '2020-11-30 12:20:39', 'Niru', 'niru@gmail.com', 'hello i am working on ml'),
(9, 30, '2020-11-30 12:23:13', 'asdfasd', 'fasdf@gmail.com', 'sakljdfasdfsdf'),
(10, 0, '2020-11-30 12:23:59', 'asdf', 'sadf@gmail.com', 'sdfasdf'),
(11, 0, '2020-11-30 12:27:11', 'asdf', 'asdf@gmail.com', 'sdfasdfsdfsadf'),
(12, 0, '2020-11-30 12:30:35', 'asdf', 'asdf@gmail.com', 'sdfasdfsdfsadf'),
(15, 20, '2020-11-30 12:46:17', 'samba', 'samba@gmail.com', 'samba server'),
(17, 28, '2020-12-02 07:08:55', 'signup', 'signup@gmail', 'Thats awsome'),
(18, 33, '2020-12-03 10:15:01', 'Seimense', 'seimense@gmail.com', 'I think this design should work more efficently'),
(19, 33, '2020-12-04 05:57:11', 'Chocos', 'chocos@gmail.com', 'Chocos cruchy bites'),
(20, 33, '2020-12-04 05:58:19', 'Chocos moons', 'chocos@gmail.com', 'Chocos cruchy bites moons'),
(21, 33, '2020-12-04 09:46:51', 'post', 'post@gmail.com', 'I am post'),
(22, 33, '2020-12-04 09:51:34', 'Music', 'music@gmail.com', 'I am Music'),
(23, 33, '2020-12-04 10:03:32', 'Comment', 'comment@gmail.com', 'I am comment'),
(24, 33, '2020-12-04 10:43:01', 'lOGIN', 'LOGIN@gmail.com', 'I am login'),
(25, 33, '2020-12-04 10:47:27', 'comment', 'comment@gmail.com', 'Comment '),
(26, 33, '2020-12-05 10:04:11', 'bestof', 'bestof@gmail.com', 'Hay iam Bestof'),
(27, 31, '2020-12-05 10:08:21', 'Samsung', 'samsung@gmail.com', 'I like the way that the Oneplus is going with oneplus 8T'),
(28, 33, '2020-12-06 04:02:33', 'More', 'more@gmail.com', 'More'),
(29, 30, '2020-12-06 08:47:24', 'Nirupamvas', 'Nirupamvas@gmail.com', 'I think google is doing good with the new pixel 5'),
(30, 5, '2020-12-08 04:04:23', 'Modren', 'modren@gmail.com', 'I think this is cool idea'),
(31, 20, '2020-12-08 02:33:03', 'abc', '', 'hay'),
(32, 20, '2020-12-08 02:36:01', 'abc', '', 'i am hay'),
(33, 28, '2020-12-08 04:44:09', 'abc', 'abc@gmail.com', 'Hello world'),
(34, 5, '2020-12-08 04:48:35', 'abc', 'abc@gmail.com', 'most use full feature of current sinarieo'),
(35, 32, '2020-12-15 09:03:23', 'Ravi', 'abc123@gmail.com', 'Good'),
(36, 32, '2020-12-15 09:03:42', 'Ravi', 'abc123@gmail.com', 'very good\n'),
(37, 32, '2020-12-15 09:06:27', 'xyz', 'abc123@gmail.com', 'super'),
(38, 32, '2020-12-15 09:07:02', 'Ravi', 'abc123@gmail.com', 'good\n'),
(39, 32, '2020-12-15 09:07:52', 'xyz', 'abc123@gmail.com', 'super'),
(40, 2, '2020-12-15 15:17:49', 'Ravi', 'abc123@gmail.com', 'Article is good!');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `short_desc`, `long_desc`) VALUES
(1, 'This Product Designer Built a GPS-Enabled Smart Glass From Scratch at His Home', '<p>A few months back, in the summers, March was walking down a scenic street with his smartphone giving him directions for his destination. After a time, he came to the realization that&nbsp;<strong>he was paying more attention to his smartphone instead of the beautiful view around him</strong>.</p>\r\n', '<p><a href=\"https://i.imgur.com/JOpRmbi.mp4?_=1\"><img alt=\"\" src=\"https://i.imgur.com/JOpRmbi.mp4?_=1\" /></a><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/11/Engineer-built-a-smart-wearable-from-scratch-feat..jpg\" style=\"height:500px; margin-left:20px; margin-right:20px; width:750px\" /></p>\r\n\r\n<p>As the<a href=\"https://beebom.com/buses-uk-come-with-air-purifiers/\">&nbsp;Coronavirus-led pandemic</a>&nbsp;has&nbsp;<a href=\"https://beebom.com/74-indians-prefer-work-from-home-after-coronavirus-pandemic-study/\">locked us inside</a>&nbsp;our homes, we have&nbsp;<a href=\"https://beebom.com/rotating-ipad-dock-using-lego/\">seen people</a>&nbsp;get&nbsp;<a href=\"https://beebom.com/redditor-replaced-surface-duo-glass-panel-with-aluminum/\">extra creative</a>&nbsp;in recent times. Similarly, the recent mandatory lockdowns proved to be quite fruitful for the electrical engineer and product designer, Sam March who likes to build electrical gadgets from scratch in his leisure time. After&nbsp;<a href=\"https://imgur.com/gallery/FSBwD3g\" target=\"_blank\">making a smartwatch last year</a>, the guy made a GPS-enabled smart glass from scratch this time around.</p>\r\n\r\n<p>A few months back, in the summers, March was walking down a scenic street with his smartphone giving him directions for his destination. After a time, he came to the realization that&nbsp;<strong>he was paying more attention to his smartphone instead of the beautiful view around him</strong>.</p>\r\n\r\n<p><em>&ldquo;While staring at the little blue dot, Ferris Bueller, in all his infinite wisdom, spoke up in my head. &lsquo;Life moves pretty fast. If you don&rsquo;t stop and look around once in a while, you could miss it.&rsquo; It was in that moment, I decided that I wanted to make some smart sunglasses that gave me turn-by-turn directions!&rdquo;</em>, wrote the&nbsp; engineer on Imgur.</p>\r\n\r\n<h2>Creativity at Its Peak</h2>\r\n\r\n<p>The homemade smart-glass comes with its own iOS app which March developed by himself. And whenever he needs to reach a location while enjoying the view,&nbsp;<strong>he just opens up the app, feeds the destination in it, and wears his smart glass</strong>. So, with the destination fed in the app, he does not even have to take out his phone from the pocket.</p>\r\n\r\n<p>The GPS-enabled wearable communicates with the app and gives directions to reach the destination via different colored lights on either side of its frames. So, while wearing the glass,<strong>&nbsp;the user will be able to easily spot the light cue whenever a turn comes or he/she reaches the destination</strong>. The lights blink blue for turns and green when you reach the destination.</p>\r\n\r\n<p>You can check out the working of the smart wearable in the video below.</p>\r\n\r\n<p>March worked on this project for a pretty long time. He developed every component of the smart-wearable, from building the frames to designing the circuit boards. And as it is open-source,&nbsp;<strong>even you can build your own smart glass using his materials</strong>&nbsp;on&nbsp;<a href=\"https://github.com/S-March/smarchGlasses_PUBLIC\" target=\"_blank\">Github</a>&nbsp;and the awesome&nbsp;<a href=\"https://imgur.com/a/8lY43kp\" target=\"_blank\">step-by-step picture-documentation</a>&nbsp;on Imgur.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `future_events`
--

CREATE TABLE `future_events` (
  `future_id` int(10) NOT NULL,
  `future_month` varchar(100) NOT NULL,
  `future_day` varchar(100) NOT NULL,
  `future_event` text NOT NULL,
  `future_date` date NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `event_place` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `future_events`
--

INSERT INTO `future_events` (`future_id`, `future_month`, `future_day`, `future_event`, `future_date`, `admin_name`, `event_place`) VALUES
(2, 'JAN ', '12 ', 'CES 2021 ', '2020-12-06', 'Nirupamvas ', ' Hyderabad'),
(3, 'NOV ', '17 ', 'KubeCon + CloudNativeCon ', '2020-12-06', 'Nirupamvas ', ' Hyderabad'),
(4, 'SEP ', '17 ', 'iNSPIRED Ai ', '2020-12-06', 'Nirupamvas ', ' Mumbai'),
(5, 'NOV ', '23 ', 'World Cyber Security Summit ', '2020-12-06', 'Nirupamvas ', ' Bangalore'),
(8, 'DEC  ', '26', 'WomenTech Global Awards 2020  ', '2020-12-08', 'Akhil ', ' Hyderabad '),
(9, 'DEC ', '08 ', 'i-HLS InnoTech Broadcast ', '2020-12-06', 'Nirupamvas ', ' Chennai'),
(10, 'JAN', '02', 'Institute for Data Science and Big Data', '2020-11-16', 'Nirupam', ''),
(11, 'JAN', '26', 'Edge Global Week', '2020-11-16', 'Nirupam', '');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`likes_id`, `post_id`, `user_id`) VALUES
(1, 33, 13),
(2, 22, 4),
(3, 33, 13),
(4, 22, 13),
(13, 33, 1),
(14, 32, 1),
(15, 33, 14),
(16, 4, 13),
(17, 5, 13),
(18, 33, 30),
(19, 6, 30),
(20, 5, 30),
(21, 2, 30),
(22, 30, 30),
(23, 20, 1),
(24, 28, 1),
(25, 5, 1),
(26, 32, 18),
(27, 2, 18),
(28, 30, 18),
(30, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_name` varchar(30) NOT NULL,
  `post_title` mediumtext NOT NULL,
  `post_tag` mediumtext NOT NULL,
  `slider_img` text NOT NULL,
  `mini_slider_img` text NOT NULL,
  `post_mini_desc` text NOT NULL,
  `post_desc` text NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `p_cat_id`, `cat_id`, `date`, `admin_name`, `post_title`, `post_tag`, `slider_img`, `mini_slider_img`, `post_mini_desc`, `post_desc`, `image`) VALUES
(1, 1, 2, '2020-11-15 11:12:14', 'Nirupamvas', 'Apple Announces New 13-inch MacBook Pro with Apple M1 Chip\r\n', 'apple', 'https://beebom.com/wp-content/uploads/2020/11/macbook-pro-with-apple-m1.jpg', 'https://cdn.arstechnica.net/wp-content/uploads/2020/11/Mac-M1-diagram-640x359.png', 'Apple has today also announced a MacBook Pro with the Apple M1 silicon. Just as it was the with the Air', '<p>Alongside the&nbsp;<a href=\"https://beebom.com/macbook-air-apple-m1-chip-announced/\">new MacBook Air</a>, Apple has today also announced a MacBook Pro with the Apple M1 silicon. Just as it was the with the Air, the new MacBook Pro also looks the same as the previous generation, and comes with the same 13-inch Retina display, but there are improvements under the hood.</p>\r\n\r\n<p>Apple is claiming that the&nbsp;<strong>M1 processor performs up to 2.8 times faster in terms of CPU performance, and 5 times faster in GPU performance</strong>&nbsp;when compared to the last generation MacBook Pro. And, the company is saying that the new MacBook Pro can playback 8K ProRes footage in DaVinci Resolve without dropping a single frame &mdash; that sounds incredible, I&rsquo;m sure our video team is hyped already.</p>\r\n\r\n<p>Along with that, you can configure the MacBook Pro with up to&nbsp;<strong>16GB RAM and up to a 2TB SSD.</strong></p>\r\n\r\n<p>The laptop still comes with the same Thunderbolt ports, with USB 4 support this time, and the studio quality three mic array that we also saw in the previous generation of the MacBook Pro.</p>\r\n\r\n<p>Similar to the MacBook Pro, the FaceTime HD camera is getting improvements thanks to the new ISP in the M1 chip. You get better&nbsp;<strong>noise reduction, greater dynamic range, and face detection as well.</strong></p>\r\n\r\n<p>In terms of battery life, obviously there are improvements thanks to the new M1 chip. Apple is claiming that the MacBook Pro offers&nbsp;<strong>17 hours of web browsing and 20 hours of video playback</strong>. That&rsquo;s quite impressive when compared to the battery life claimed for the previous generation MacBook Pro.</p>\r\n\r\n<p>The new MacBook Pro with M1 processor is&nbsp;<strong>priced at $1299</strong>, but education users can get it for $1199. The laptop can be pre-ordered right away, and will go on sale this Thursday.</p>\r\n', ''),
(2, 2, 5, '2020-11-15 11:13:40', 'high', 'How to Install Google TV on Android TV Right Now\r\n', 'google', 'https://beebom.com/wp-content/uploads/2020/10/10-Install-Google-TV-on-Android-TV-1-747x420.jpg', 'https://beebom.com/wp-content/uploads/2020/02/How-to-Sideload-Apps-on-Android-TV-Guide-7.jpg', '0after a gap of almost two years. The highlight of this Chromecast is that it comes with a new TV UI called Google TV...', '<p>Along with&nbsp;<a href=\"https://beebom.com/pixel-5-pixel-4a-launched/\">Pixel 4a 5G and Pixel 5</a>, Google also announced a new&nbsp;<a href=\"https://beebom.com/google-launches-new-chromecast-remote-control-google-tv-interface/\">Chromecast</a>&nbsp;after a gap of almost two years. The highlight of this Chromecast is that it comes with a new TV UI called Google TV. It&rsquo;s not just an enhanced UI but an overhaul of Android TV OS.&nbsp; Google has announced that it will be transitioning Android TV to Google TV over the next two years.</p>\r\n\r\n<p>Clearly, apart from the slick UI and modern design language, Google has added many new features that will bring IoT products and your smartphone closer to the big screen. So if you are excited to experience the new Google TV UI, you don&rsquo;t have to wait for that long. In this article, we bring you an in-depth guide on how to install Google TV on Android TV right away. On that note, let&rsquo;s move to the steps.</p>\r\n\r\n<h2>Get Google TV on Android TV in Any Region Including India</h2>\r\n\r\n<p>Before we move ahead, keep in mind, your&nbsp;<strong>Android TV must be running Android 9</strong>&nbsp;or above. You can check the OS details from Settings -&gt; Device Preferences -&gt; About -&gt; Version. Once you confirm the OS requirement, you can move forward.</p>\r\n\r\n<p>For your ease, we have mentioned all the sections below so you can seamlessly navigate to different segments of the article. Not to mention, we have also included a small guide on how to install Google TV on Android TV for users in India.</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://beebom.com/install-google-tv-on-android-tv-right-now/#dow\">Downloads</a></li>\r\n	<li><a href=\"https://beebom.com/install-google-tv-on-android-tv-right-now/#ins\">Install Google TV on Android TV</a>\r\n	<ul>\r\n		<li><a href=\"https://beebom.com/install-google-tv-on-android-tv-right-now/#run\">Run Google TV on Android TV in India</a></li>\r\n		<li><a href=\"https://beebom.com/install-google-tv-on-android-tv-right-now/#set\">Set Google as Your Default Launcher on Android TV</a></li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://beebom.com/install-google-tv-on-android-tv-right-now/#imp\">Google TV: First Impression</a></li>\r\n</ul>\r\n\r\n<h2>Downloads</h2>\r\n\r\n<ol>\r\n	<li><a href=\"https://www.apkmirror.com/apk/google-inc/google-app-for-android-tv-android-tv/google-app-for-android-tv-android-tv-5-3-0-331218010-release/google-app-for-android-tv-5-3-0-331218010-android-apk-download/\" target=\"_blank\">Google App for Android TV</a>&nbsp;(Version 5.3.0.331218010 or above)</li>\r\n	<li><a href=\"https://www.apkmirror.com/apk/google-inc/google-tv-home-android-tv/google-tv-home-android-tv-1-0-331643392-release/google-tv-home-android-tv-1-0-331643392-android-apk-download/\" target=\"_blank\">Google TV APK</a>&nbsp;(Also called LauncherX)</li>\r\n</ol>\r\n\r\n<h2>Install Google TV on Android TV</h2>\r\n\r\n<p>1. First of all, you need to&nbsp;<strong>download both the APKs</strong>&nbsp;from the above link on your smartphone or computer.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/10/1-1.jpg\" style=\"height:229px; width:639px\" />2. Next,&nbsp;<strong>install Solid Explorer</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=pl.solidexplorer2\" target=\"_blank\">Free</a>, offers in-app purchases) on your Android TV from the Play Store. The app is available on Android TV&rsquo;s Play Store. No need to sideload this app.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/02/How-to-Sideload-Apps-on-Android-TV-Guide-7.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>3. After that, open the Settings page of your Android TV and move to Device Preferences -&gt; Security &amp; Restrictions -&gt;&nbsp;<strong>Unknown Sources</strong>&nbsp;-&gt; Enable the toggle for &ldquo;Solid Explorer&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/02/How-to-Sideload-Apps-on-Android-TV-Guide-8.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>4. Once you have done that, now&nbsp;<strong>transfer both the APKs</strong>&nbsp;(Google App and Google TV) to your Android TV. We have written a detailed guide on&nbsp;<a href=\"https://beebom.com/how-sideload-apps-android-tv-guide\">how to transfer and sideload apps on Android TV</a>&nbsp;so just go through that. You can also use the SFTV app (<a href=\"https://play.google.com/store/apps/details?id=com.yablio.sendfilestotv\" target=\"_blank\">Free</a>, offers in-app purchases) to seamlessly transfer files or simply use a thumb drive to move the files.</p>\r\n\r\n<p>&nbsp;</p>\r\n', ''),
(6, 2, 1, '2020-11-17 05:39:46', 'Nirupam', 'How to Lock and Unlock Screen in Netflix on iPhone and Android\r\n', 'google', 'https://dazeinfo.com/wp-content/uploads/2018/11/Netflix-Mobile-Only-Subscription-Plan.jpg', 'https://drlisastrohman.com/wp-content/uploads/2020/10/netflix-logo.png', 'Especially when I am binge-watching a show, the last thing I want to encounter is the unwanted interruption.', '<p>Especially when I am&nbsp;<a href=\"https://beebom.com/best-tv-series-on-netflix/\">binge-watching a show</a>, the last thing I want to encounter is the unwanted interruption. And I guess I am not alone who want to relish&nbsp;<a href=\"https://beebom.com/best-free-movie-apps/\">video-streaming</a>&nbsp;without having to deal with unwanted obstruction. Whether you are a&nbsp;<a href=\"https://beebom.com/best-netflix-movies/\">movie buff</a>&nbsp;or prefer to stream shows with complete peace of mind, you would indeed appreciate the ability to lock/unlock the screen in Netflix on iPhone/iPad, and Android.</p>\r\n\r\n<h2>Lock and Unlock Screen in Netflix on iOS and Android</h2>\r\n\r\n<p>Thanks to a recent update, Netflix lets you lock the screen so that the accidental tap won&rsquo;t halt the streaming. Once you have locked the screen, a lock icon appears whenever you tap on the screen, confirming that it&rsquo;s sealed for uninterrupted video streaming. After that, unwanted taps won&rsquo;t pause or skip the playback.&nbsp;Let me show how the screen lock feature works on Netflix!</p>\r\n\r\n<h2>Lock/Unlock Screen in Netflix on iOS and Android</h2>\r\n\r\n<p>So, that&rsquo;s the way you can lock the Netflix screen to prevent random taps from interrupting your binge-watching. As someone who has a huge penchant for streaming flicks and shows, I find this feature pretty helpful.</p>\r\n\r\n<p>As we are talking about Netflix, I would like to catch your attention towards the&nbsp;<a href=\"https://beebom.com/netflix-tips-tricks-2/\">best tips and tricks</a>&nbsp;that can play a vital role in enhancing your overall video-streaming experience. From letting you customize subtitles to enabling smart downloads to keeping a tab on IMDb ratings, the roundup has got you fully covered.</p>\r\n\r\n<p>By the way, what&rsquo;s your take on the screen lock feature? Be sure to share your feedback in the comments down below.</p>\r\n', ''),
(8, 2, 1, '2020-11-17 05:40:25', 'Nirupam', 'How to Add Third-party Shortcuts to Google Assistant\r\n', 'google', 'https://developers.google.com/assistant/sdk/images/panel1.jpg', 'https://beebom.com/wp-content/uploads/2020/10/How-to-Add-Third-party-Shortcuts-to-Google-Assistant-356x220.jpg', 'While Google Assistant is pretty powerful and does a lot of things right, its in-app integration with third-party apps has been patchy at best. ', '<p>&nbsp;&nbsp;</p>\r\n\r\n<p>While&nbsp;<a href=\"https://beebom.com/siri-vs-google-assistant-vs-hound/\">Google Assistant is pretty powerful</a>&nbsp;and does a lot of things right, its in-app integration with third-party apps has been patchy at best. However, that seems to be changing now as Google has started tightening the screw and bringing deeply tied, in-app actions to Google Assistant. With the&nbsp;<a href=\"https://beebom.com/google-assistant-better-integration-android-apps/\">recent update</a>, you can now invoke in-app actions from third-party apps such as opening the Explore tab on Instagram, updating the profile picture on&nbsp;<a href=\"https://beebom.com/whatsapp-tricks-new-features/\">WhatsApp</a>, and more. So if want to browse and add third-party shortcuts to Google Assistant then follow along.</p>\r\n\r\n<h2>Add Third-party Shortcuts to Google Assistant</h2>\r\n\r\n<p>1. Open the Google app and move to the &ldquo;More&rdquo; menu at the bottom bar. Now, navigate to&nbsp;<strong>Settings -&gt; Google Assistant</strong>.</p>\r\n\r\n<p><img alt=\"Use Third-party Shortcuts with Google Assistant\" src=\"https://beebom.com/wp-content/uploads/2020/10/1-4.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>2. Now, tap on the &ldquo;<strong>Services</strong>&rdquo; tab and open &ldquo;Shortcuts&rdquo;.</p>\r\n\r\n<p><img alt=\"Use Third-party Shortcuts with Google Assistant\" src=\"https://beebom.com/wp-content/uploads/2020/10/3-Add-Third-party-Shortcuts-to-Google-Assistant.jpg\" style=\"height:560px; width:252px\" /></p>\r\n\r\n<p>3. Here, you will find all the third-party shortcuts that Google Assistant supports on your smartphone. Keep in mind, the shortcuts are populated based on the apps you have installed on your device. Now,&nbsp;<strong>tap on &ldquo;+&rdquo;</strong>&nbsp;to add your favorite shortcuts and you will get a confirmation from Google Assistant.</p>\r\n\r\n<p><img alt=\"Use Third-party Shortcuts with Google Assistant\" src=\"https://beebom.com/wp-content/uploads/2020/10/3-2.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>4. You will find all your third-party shortcuts under the &ldquo;<strong>Your Shortcuts</strong>&rdquo; tab. For example, here I have added &ldquo;New Keep Notes&rdquo;, &ldquo;Twitter Messages&rdquo;, &ldquo;Explore Instagram&rdquo;, etc.</p>\r\n\r\n<p><img alt=\"Use Third-party Shortcuts with Google Assistant\" src=\"https://beebom.com/wp-content/uploads/2020/10/6-Add-Third-party-Shortcuts-to-Google-Assistant.jpg\" style=\"height:560px; width:252px\" /></p>\r\n\r\n<p>5. Now go ahead and say &ldquo;<strong>Hey Google, check news</strong>&rdquo; and it will directly take you to Twitter&rsquo;s search tab where you can find all sorts of news trending on Twitter. I also tried other variations like &ldquo;check Twitter news&rdquo; and it took me to the same page. Basically, you don&rsquo;t need to remember the correct phrase. Just say something closer to the original command and the Assistant will process it correctly.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/10/2-3.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<h2>Run In-app Actions of Third-party Apps with Google Assistant</h2>\r\n\r\n<p>So that is how you can add and run third-party shortcuts with Google Assistant. To be honest, this sort of feature was already there on Google Assistant, but it was not deeply tied or required extensive support from Google.</p>\r\n\r\n<p>For instance, recently, Google Assistant added support for&nbsp;<a href=\"https://beebom.com/google-assistant-whatsapp-video-voice-calls/\">WhatsApp calls</a>&nbsp;and&nbsp;<a href=\"https://beebom.com/google-assistant-send-audio-messages-contacts/\">audio messages</a>. It&rsquo;s good to see Google housing all these third-party integrations in one place so users can browse and add their favorite shortcuts.</p>\r\n\r\n<p>That said, we would love to see Google allowing users to tinker with any in-app action and not just the predefined ones, similar to the&nbsp;<a href=\"https://beebom.com/manage-folders-shortcuts-app-ios-14/\">powerful Shortcuts app on iOS</a>. Perhaps, that may be coming in the future. Anyway, that is all from us. If you want to learn more such features then go through our article on the&nbsp;<a href=\"https://beebom.com/google-assistant-commands/\">best Google Assistant commands</a>.</p>\r\n', ''),
(9, 2, 2, '2020-11-17 06:19:01', 'Nirupam', 'How to Get iOS 14 Features on Android without Root\r\n', 'apple', 'https://assets.pcmag.com/media/images/577236-iphone-11-pro.jpg', 'https://beebom.com/wp-content/uploads/2020/11/How-to-Send-Audio-or-Voice-Messages-Using-Siri-on-iPhone-356x220.jpg', 'iOS and Android have been long-standing competitors. There are times when Apple takes inspiration from Android. Similarly, Google brings new privacy features taking a cue from iOS.', '<p>iOS and Android have been long-standing competitors. There are times when Apple takes inspiration from Android. Similarly, Google brings new&nbsp;<a href=\"https://beebom.com/improve-security-privacy-tips-ios-13/\">privacy features taking a cue from iOS</a>. At this point, both the ecosystems are quite polished and have matured by leaps and bounds, especially Android. However, there is one aspect that makes iOS stand out and that is privacy controls. Every year, Apple adds new privacy controls to iOS which makes Android users wanting for more. So in this article, we bring you a handy guide on how to get iOS 14 features on Android including privacy and other useful features. So without further ado, let&rsquo;s get started.</p>\r\n\r\n<h2>Get the Best iOS 14 Features on Android</h2>\r\n\r\n<p>Here are the&nbsp;<a href=\"https://beebom.com/best-ios-14-hidden-features/\">best iOS 14 features</a>&nbsp;that you can get on Android right now. You can go through the list below and click on the link to move to the corresponding feature. We have mostly included iOS 14 features that are natively not available on Android devices.</p>\r\n\r\n<ol>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#ind\">Camera and Mic Indicator</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#lib\">App Library</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#fil\">SMS Filtering</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#back\">Back Tap</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#store\">Privacy information on the App Store</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#temp\">Temporary Permission</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#inapp\">In-App Search</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#assign\">Assign Reminders</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#report\">Website Privacy Report</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#conv\">Conversation Mode</a></li>\r\n	<li><a href=\"https://beebom.com/get-ios-14-features-on-android/#clip\">Bonus: Block Clipboard Access</a></li>\r\n</ol>\r\n\r\n<h2>List of iOS 14 Features on Android</h2>\r\n\r\n<h3>1. Camera and Mic Indicator</h3>\r\n\r\n<p>During the release of iOS 14, Apple made some big announcements regarding privacy and one feature that stood out was camera and mic indicator. On iOS 14, whenever an app uses the camera or mic,&nbsp;<strong>a dot indicator appears</strong>&nbsp;at the top of the screen. This is done to alert the user that an app is snooping on you. Further, you can find the app name in the Control Center and uninstall it right away.</p>\r\n\r\n<p><img alt=\"1. Camera and Mic Indicator iOS 14 Features on Android\" src=\"https://beebom.com/wp-content/uploads/2020/07/a-11.jpg\" style=\"height:416px; width:640px\" /></p>\r\n\r\n<p>So if you want this iOS 14 feature on Android,&nbsp;<a href=\"https://beebom.com/access-dots-brings-ios-14-cam-mic-indicator-dots-android/\">you can&nbsp;<strong>use Access Dots</strong></a>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=you.in.spark.access.dots\" target=\"_blank\">Free</a>, offers in-app purchases). The app allows you to get a similar indicator as iOS 14 for mic and camera usage. The best part is that you can even customize the colors and change the size and position of the dot. So go ahead and get this awesome iOS 14 feature on Android by using the Access Dots app.</p>\r\n\r\n<h3>2. App Library Folders</h3>\r\n\r\n<p>After years of pestering, Apple finally caved in and brought an app drawer on iOS 14. Similar to Android launchers, now a separate pane houses all the apps on iOS 14. But that is not all about the new app drawer. There is something called App Library which&nbsp;<strong>automatically organizes all of your apps</strong>&nbsp;into a folder depending on the app category.</p>\r\n\r\n<p><img alt=\"2. App Library\" src=\"https://beebom.com/wp-content/uploads/2020/07/b-7.jpg\" style=\"height:529px; width:640px\" /></p>\r\n\r\n<p>To get the App Library feature on Android, you just need to download a third-party launcher such as Microsoft Launcher (<a href=\"https://play.google.com/store/apps/details?id=com.microsoft.launcher&amp;hl=en_US\" target=\"_blank\">Free</a>) or&nbsp;<strong>Lawnchair</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=ch.deletescape.lawnchair.plah&amp;hl=en_US\" target=\"_blank\">Free</a>) or Nova (<a href=\"https://play.google.com/store/apps/details?id=com.teslacoilsw.launcher&amp;hl=en_US\" target=\"_blank\">Free</a>, $4.99). All these launchers allow you to create app folders right into the app drawer. However, keep in mind, these launchers don&rsquo;t sort the app automatically so you will have to do it on your own. If you want automatic categorization then you can use Poco Launcher (<a href=\"https://play.google.com/store/apps/details?id=com.mi.android.globallauncher&amp;hl=en_US\" target=\"_blank\">Free</a>), but instead of app folders, it offers you separate windows.</p>\r\n\r\n<h3>3. SMS Filtering</h3>\r\n\r\n<p>With the announcement of iOS 14, Apple added a&nbsp;<a href=\"https://beebom.com/ios-14-messages-app-update-improvement/\">big feature to its messaging app</a>. Now, spammy texts, OTPs, and&nbsp;<strong>promotional messages will be filtered out</strong>&nbsp;and put in separate folders. This completely changes the messaging experience, especially in India where you get so many junk texts every day.</p>\r\n\r\n<p><img alt=\"3. SMS Filtering iOS 14 Features on Android\" src=\"https://beebom.com/wp-content/uploads/2020/07/1-17.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>On Android, SMS filtering is not available natively, but you can install a third-party messaging app that filters texts automatically. You can&nbsp;<strong>install SMS Organizer</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=com.microsoft.android.smsorganizer&amp;hl=en_US\" target=\"_blank\">Free</a>) by Microsoft to get iOS 14&rsquo;s SMS filtering feature on Android. It&rsquo;s one of my favorite apps on Android and you must give it a try.</p>\r\n\r\n<h3>4. Back Tap</h3>\r\n\r\n<p>To make iPhones more accessible and easier to use, iOS 14 brings something called Back Tap that allows you to&nbsp;<strong>invoke an action by double-tapping on the back</strong>&nbsp;of the phone. You can just double-tap on the back and take a screenshot or&nbsp;<a href=\"https://beebom.com/google-assistant-commands/\">ask Google Assistant</a>&nbsp;some questions. That&rsquo;s quite cool, right?</p>\r\n\r\n<p>To get this iOS 14 feature on Android, you might have to wait a bit longer. Google is developing a similar feature for Pixel phones which might get released with Android 11. However if you want it right now,&nbsp;<a href=\"https://www.xda-developers.com/tap-tap-brings-ios-14-android-11-back-tap-gesture-any-android-device/\" target=\"_blank\">Quinny899 from XDA</a>&nbsp;has come to the rescue. He has&nbsp;<a href=\"https://beebom.com/tap-tap-app-brings-back-tap-gestures-to-your-android-phone/\">developed an&nbsp;<strong>app called &ldquo;Tap, Tap&rdquo;</strong></a>&nbsp;that allows you to double-tap on the rear and invoke actions of your choice.</p>\r\n\r\n<p><img alt=\"4. Back Tap\" src=\"https://beebom.com/wp-content/uploads/2020/07/2-15.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>If you are wondering how it works, well, the app is using gyroscope and accelerometer readings and comparing it with&nbsp;<strong>machine learning models</strong>&nbsp;that Google has trained for Pixel devices. It works surprisingly well on my OnePlus 7T and if you want iOS 14&rsquo;s Back Tap feature on Android then Tap, Tap is here for you. You can download the app from&nbsp;<a href=\"https://forum.xda-developers.com/android/apps-games/app-tap-tap-double-tap-device-gesture-t4140573\" target=\"_blank\">here</a>.</p>\r\n\r\n<h3>5. Privacy information on the App Store</h3>\r\n\r\n<p>To make people aware of privacy malpractices, on iOS 14, Apple will be displaying privacy information of each app on the App Store in easily understandable language. For example, before you download an app, you can find out&nbsp;<strong>what data the app can use to track you</strong>&nbsp;and what data the app will have access to. This goes a long way in understanding what sort of privacy policy does the app practice so that you can either choose to install an app or discard it.</p>\r\n\r\n<p><img alt=\"5. Privacy information on the App Store iOS 14 Features on Android\" src=\"https://beebom.com/wp-content/uploads/2020/07/3-12.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>While Android does not have this feature natively, you can&nbsp;<strong>install an app called Exodus</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=org.eu.exodus_privacy.exodusprivacy&amp;hl=en_US\" target=\"_blank\">Free</a>). It scans all your installed apps and displays all the trackers that the app is using to track you. Apart from that, you can also find out all kinds of permissions that app has been granted by default. This will allow you to understand how much data the app is seeking from you. So go ahead and get this iOS 14 feature on Android to strengthen your privacy.</p>\r\n\r\n<h3>6. Temporary Permission</h3>\r\n\r\n<p>Apple brought &ldquo;Allow once&rdquo; permission dialog last year with iOS 13 and now we are hearing that Android 11 will sport this feature. On top of that, Android users might also get&nbsp;<strong>auto-revoke permission</strong>&nbsp;feature. The way it works is, if you have not used an app for some time, sensitive permissions will be automatically revoked.</p>\r\n\r\n<p><img alt=\"6. Temporary Permission\" src=\"https://beebom.com/wp-content/uploads/2020/07/4-8.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>However, not everyone is going to receive the Android 11 update so if you want this excellent privacy feature on your Android right now, you can&nbsp;<strong>install Bouncer</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=com.samruston.permission&amp;hl=en_US\" target=\"_blank\">$1.99</a>). It allows you to grant temporary permission to an app and the moment you exit from the app, the permission is automatically revoked. That&rsquo;s really great, right? So go ahead and get this iOS feature on Android right away.</p>\r\n\r\n<h3>7. In-App Search</h3>\r\n\r\n<p>With iOS 14, Apple has overhauled how the search works. You can now perform in-app searches which basically means that you can&nbsp;<strong>search for your library or songs</strong>&nbsp;in Apple Music right from the search bar. No need to open the app and look for the content.</p>\r\n\r\n<p><img alt=\"7. In-App Search iOS 14 Features on Android\" src=\"https://beebom.com/wp-content/uploads/2020/07/5-2.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>If you want this iOS 14 feature on Android then you can&nbsp;<strong>install Sesame</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=ninja.sesame.app.edge&amp;hl=en_US\" target=\"_blank\">Free</a>, offers in-app purchases). The app is one tap away from searching for your music, contacts, system settings,&nbsp;<a href=\"https://beebom.com/how-to-create-instagram-stories-on-android-and-iphone/\">Instagram stories</a>, favorite apps, and more. Simply put, you will have access to everything in just one tap.</p>\r\n\r\n<h3>8. Assign Reminders</h3>\r\n\r\n<p>With iOS 14, you can&nbsp;<strong>assign reminders to people</strong>&nbsp;you share lists with. And they will be reminded according to the schedule. This feature is amazing and can help you split tasks and accomplish them without any fail. You can also get this iOS 14 feature on Android by just using the Google Assistant.</p>\r\n\r\n<p><img alt=\"8. Assign Reminders\" src=\"https://beebom.com/wp-content/uploads/2020/07/c-3.jpg\" style=\"height:560px; width:252px\" /></p>\r\n\r\n<p>If you are part of a family group then you just need to say &ldquo;<strong>Hey Google remind X to&hellip;</strong>&rdquo; and the reminder will be assigned to the said person. You can find your family group from the Google App -&gt; 3-dot menu -&gt; Settings -&gt; Google Assistant -&gt; Your People. And to customize assignable reminders, move to the &ldquo;Services&rdquo; tab under Google Assistant and open &ldquo;Assignable Reminders&rdquo;.</p>\r\n\r\n<h3>9. Website Privacy Report</h3>\r\n\r\n<p>During the announcement of iOS 14, Apple discussed many new features of Safari and how it has been finetuned for a more privacy-friendly experience. Among the many features of Safari, I liked the Website Privacy Report. Basically, you will be able to&nbsp;<strong>see what trackers and cookies the website is using</strong>&nbsp;and the cross-site trackers that Safari has blocked.</p>\r\n\r\n<p><img alt=\"iOS 14 Features on Android\" src=\"https://beebom.com/wp-content/uploads/2020/06/9.jpg\" style=\"height:560px; width:506px\" /></p>\r\n\r\n<p>On Android, Chrome does not offer such a report which is disappointing (learn how to&nbsp;<a href=\"https://beebom.com/how-to-get-safari-privacy-features-chrome/\">get Safari features on Chrome</a>). Anyway, if you move to&nbsp;<strong>DuckDuckGo</strong>&nbsp;(<a href=\"https://play.google.com/store/apps/details?id=com.duckduckgo.mobile.android&amp;hl=en_US\" target=\"_blank\">Free</a>) or Firefox (<a href=\"https://play.google.com/store/apps/details?id=org.mozilla.firefox&amp;hl=en_US\" target=\"_blank\">Free</a>) or Brave (<a href=\"https://play.google.com/store/apps/details?id=com.brave.browser&amp;hl=en_US\" target=\"_blank\">Free</a>) on Android then it shows you all the cookies and trackers that the browser has blocked. DuckDuckGo even gives a privacy rating to the websites you visit. In tandem, if you want iOS 14&rsquo;s Website Privacy Report on Android then the DuckDuckGo browser would be a great choice.</p>\r\n\r\n<h3>10. Conversation Mode</h3>\r\n\r\n<p>With the iOS 14 release, Apple announced a new Translate app that looks really promising. It&nbsp;<strong>has offline capabilities</strong>&nbsp;and language detection is on point. What caught my attention was Conversation Mode which allows you to say something, and the Translate app transcribes the voice on the screen, followed by the translated audio. It works really well.</p>\r\n\r\n<p><img alt=\" iOS 14 Features on Android 10. Conversation Mode\" src=\"https://beebom.com/wp-content/uploads/2020/07/d-1.jpg\" style=\"height:560px; width:252px\" /></p>\r\n\r\n<p>If you want something like Conversation Mode on Android then Google Assistant will be of your great help. Google Assistant comes with a dedicated Interpreter Mode which works very similar to iOS 14&rsquo;s Conversation Mode.&nbsp;<strong>Just say &ldquo;interpreter mode&rdquo;</strong>&nbsp;to Google Assistant and you will have your voice transcribed on the screen with translated audio. As an aside, you can learn more about&nbsp;<a href=\"https://beebom.com/apple-translate-vs-google-translate/\">Apple Translate vs Google Translate</a>&nbsp;from our in-depth article.</p>\r\n\r\n<h3>Bonus: Block Clipboard Access</h3>\r\n\r\n<p>iOS 14 has made many internal revisions to protect your privacy. For example, now you get a notification on iOS 14 whenever an app&nbsp;<strong>tries to access the clipboard</strong>. You can have anything &mdash; password, sensitive information, banking details &mdash; copied to your clipboard, and apps getting easy access to it is not right.</p>\r\n\r\n<p>Android 10 has already restrictions in place as to what apps can access the clipboard and what cannot. However, if you are&nbsp;<strong>running an older version of Android</strong>&nbsp;then you can find out apps with clipboard access and you can even block them from reading your clipboard again. Here are the steps to follow.</p>\r\n\r\n<p>1.&nbsp;<a href=\"https://beebom.com/how-to-install-adb-windows-mac/\">Set up ADB</a>&nbsp;and move to&nbsp;<code>adb shell</code>. Now, execute the below command to&nbsp;<strong>find all the apps</strong>&nbsp;with clipboard access.</p>\r\n\r\n<pre>\r\ncmd appops query-op --user 0 READ_CLIPBOARD allow</pre>\r\n\r\n<p>2. Note down the package name of the app that you want to block and&nbsp;<strong>execute the below command</strong>. This will block the app from reading the clipboard again. If you want to enable it then just replace&nbsp;<code>ignore</code>&nbsp;with&nbsp;<code>allow</code>.</p>\r\n\r\n<pre>\r\ncmd appops set &lt;packagename&gt; READ_CLIPBOARD ignore</pre>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/07/abc-2.jpg\" style=\"height:238px; width:641px\" /></p>\r\n\r\n<h2>Get iOS 14 Features on Android Right Now</h2>\r\n\r\n<p>So that is how you can get iOS 14 features on Android without much tweaking or rooting your device. It&rsquo;s no secret that every year Apple brings new features to iOS and sets the bar high for Android and the rest of software makers. I love the fact that Apple pushes hard for protecting user privacy and that revitalizes Google to do more when it comes to the privacy front. Anyway, that is all from us. If you found the article helpful then do comment down below and let us know.</p>\r\n', ''),
(14, 2, 2, '2020-12-21 08:23:38', 'Ravi', 'How to Use New Markup Color Tools in iOS 14 on iPhone and iPad\r\n', 'apple', 'https://i.ytimg.com/vi/mtua-5St-n4/maxresdefault.jpg', 'https://www.eweek.com/imagesvr_ez/b2bezp/2020/09/Apple.iOS14-2_1.jpg?alias=article_hero', 'Apart from opening the gateway of customization with the addition of home screen widgets and offering a better way to keep the apps organized with the introduction of “App Library,” iOS 14 has also added several neat improvements including the “New Markup color tools.” ', '<p>Apart from opening the&nbsp;<a href=\"https://beebom.com/creative-ios-14-home-screen-design-ideas/\">gateway of customization</a>&nbsp;with the addition of&nbsp;<a href=\"https://beebom.com/best-third-party-home-screen-widgets-ios14-iphone-ipad/\">home screen widgets</a>&nbsp;and offering a better way to keep the apps organized with the introduction of &ldquo;<a href=\"https://beebom.com/what-is-app-library-how-use-it-ios-14/\">App Library</a>,&rdquo;<a href=\"https://beebom.com/best-ios-14-hidden-features/\">&nbsp;iOS 14</a>&nbsp;has also added several neat improvements including the &ldquo;New Markup color tools.&rdquo; With features like eyedropper tool, opacity slider, and Hexadecimal value support, you can now edit screenshots, photos, and choose different font and opacity thickness with more precision. If you are yet to use new Markup color tools in iOS 14 on iPhone and iPad, follow along to get started!</p>\r\n\r\n<h2>Use New Markup Color Tools on iOS 14 and iPadOS 14</h2>\r\n\r\n<p>Whether you want to&nbsp;<a href=\"https://beebom.com/evernote-alternatives/\">create a good-looking note</a>,&nbsp;<a href=\"https://beebom.com/best-photo-editing-apps-iphone/\">edit your photos</a>, add some nice customization to screenshots, or even insert a digital signature to a PDF document, the Markup tool has a role to play. With the inclusion of several precision tools, it now offers you more flexibility to create attractive designs or&nbsp;<a href=\"https://beebom.com/best-pdf-editor/\">annotate PDFs</a>.</p>\r\n\r\n<p>1. To get going, access the&nbsp;<strong>Markup icon</strong>&nbsp;from apps like Photos, Safari, and Notes. You can also access it from a screenshot and Share Sheet as well.</p>\r\n\r\n<p><img alt=\"Accessing markup tools in safari, screenshot, and notes\" src=\"https://beebom.com/wp-content/uploads/2020/11/Accessing-markup-tools-in-safari-screenshot-and-notes.jpg\" style=\"height:560px; width:781px\" /></p>\r\n\r\n<p>2. I&rsquo;m going to bring it up from the&nbsp;<strong>Notes app</strong>. Simply open a note and then tap on the&nbsp;<strong>Markup icon</strong>&nbsp;at the bottom.</p>\r\n\r\n<p><img alt=\"Tap on the Markup button\" src=\"https://beebom.com/wp-content/uploads/2020/11/Tap-on-the-Markup-button.jpg\" style=\"height:560px; width:259px\" /></p>\r\n\r\n<p>3. Next, tap on the&nbsp;<strong>color button</strong>&nbsp;at the bottom right corner of the screen to reveal all the new color tools.</p>\r\n\r\n<p><img alt=\"Tap on the color button at the bottom right corner of the screen\" src=\"https://beebom.com/wp-content/uploads/2020/11/Tap-on-the-color-button-at-the-bottom-right-corner-of-the-screen.jpg\" style=\"height:560px; width:259px\" /></p>\r\n\r\n<p>4. You should see three tabs along the top:&nbsp;<strong>Grid, Spectrum, and Sliders.</strong>&nbsp;The Opacity slider is located along the bottom. Interestingly, there is also an option to&nbsp;<strong>save custom colors</strong>. To do it, tap on the&nbsp;<strong>&ldquo;+&rdquo; button&nbsp;</strong>at the bottom.</p>\r\n\r\n<p><img alt=\"Using new Markup tools in iOS 14\" src=\"https://beebom.com/wp-content/uploads/2020/11/Using-new-Markup-tools-in-iOS-14.jpeg\" style=\"height:560px; width:259px\" /></p>\r\n\r\n<p>One of my favorite additions to the Markup tools is the super handy&nbsp;<strong>&ldquo;eyedropper&rdquo; tool</strong>&nbsp;located at the upper-left corner of the screen. What makes this tool so user-friendly is the ability to pick a color from any source on the screen.</p>\r\n\r\n<p><img alt=\"tap on eyedropper tool\" src=\"https://beebom.com/wp-content/uploads/2020/11/tap-on-eyedropper-tool.jpeg\" style=\"height:560px; width:259px\" /></p>\r\n\r\n<p>Another notable feature is the option to&nbsp;<strong>select colors by hexadecimal values</strong>&nbsp;or using the dial option in each RGB value with the help of sliders or getting it done numerically.</p>\r\n\r\n<p>5. In the end, make sure to tap on&nbsp;<strong>Done</strong>&nbsp;at the top right corner of the screen to finish.</p>\r\n\r\n<p><img alt=\"Make sure to tap on Done at the top right corner to finish\" src=\"https://beebom.com/wp-content/uploads/2020/11/Make-sure-to-tap-on-Done-at-the-top-right-corner-to-finish.jpeg\" style=\"height:560px; width:259px\" /></p>\r\n\r\n<p>6. Once you have selected your color of choice you can use it to annotate a screenshot or PDF, write in notes, and more.</p>\r\n\r\n<p><img alt=\"using markup color tools in Notes app\" src=\"https://beebom.com/wp-content/uploads/2020/11/using-markup-tool-in-Notes-app.jpg\" style=\"height:560px; width:519px\" /></p>\r\n\r\n<h2>Use Markup Color Tools on iPad and iPhone</h2>\r\n\r\n<p>With just one grid of choices featuring a total of 120 colors, the Markup color options seemed quite limited in iOS 13. Thanks to the addition of some notable tools like eyedropper and hexadecimal support, Markup seems to be a complete package now.</p>\r\n\r\n<p>What&rsquo;s your take on the new Markup color tools? Feel free to share your valuable thoughts about them and also let us know the changes you want to see in it.</p>\r\n\r\n<p>Recently, we have covered several equally interesting iOS 14 topics like&nbsp;<a href=\"https://beebom.com/use-back-tap-launch-any-app-ios-14/\">launching apps using the back tap gesture</a>,&nbsp;<a href=\"https://beebom.com/stop-apps-accessing-precise-location-ios-14/\">preventing apps from having your precise location</a>,&nbsp;and&nbsp;<a href=\"https://beebom.com/limit-third-party-access-apple-photos-app/\">managing third-party access to the Photos app</a>. Check them out, if you want to explore iOS 14 related topics.</p>\r\n', '1.jpg'),
(16, 2, 3, '2020-12-15 14:44:12', 'Ravi', '<p>How to Use Custom Backgrounds on Google Meet</p>\r\n', 'microsoft', 'https://www.fourcast.io/hubfs/Google%20Hangouts%20Meet%20is%20now%20Google%20Meet.png', 'https://www.business.com/images/rz/5d1652999c658af4698b456b/googlemeet.png', 'After announcing that custom background is coming to Google Meet earlier in June, finally, Google has added support for virtual backgrounds before the end of the year. The feature was long due and users tied to the Google ecosystem were sorely missing the feature.', '<p>After&nbsp;<a href=\"https://beebom.com/google-meet-add-custom-background-raise-hand-other-new-features-soon/\">announcing</a>&nbsp;that custom background is coming to Google Meet earlier in June, finally, Google has&nbsp;<a href=\"https://beebom.com/google-meet-now-supports-custom-backgrounds-on-the-web/\">added support</a>&nbsp;for virtual backgrounds before the end of the year. The feature was long due and users tied to the Google ecosystem were sorely missing the feature. As we noted in our&nbsp;<a href=\"https://beebom.com/google-meet-vs-zoom-vs-microsoft-teams/\">Google Meet vs Zoom</a>&nbsp;comparison, Google Meet is way behind Zoom in terms of feature set. Thankfully, the gap is slowly closing. The custom background feature is available to both free and paid users. So if you are interested, follow our guide and learn how to use custom backgrounds on Google Meet.</p>\r\n\r\n<h2>Use Custom Backgrounds on Google Meet</h2>\r\n\r\n<p>Before moving to steps, note that custom background on Google Meet is&nbsp;<strong>currently available only on the web</strong>. Google has stated that the feature will come to Android and iOS apps in the future. Apart from that, keep in mind, the custom backgrounds feature is not available to organizations that have opted for G Suite for Education plan. With that out of the way, let&rsquo; go through the instructions.</p>\r\n\r\n<p>1. The process to use custom backgrounds on Google Meet is pretty straightforward. While you are on a video call, just click on the 3-dot menu on the bottom-right corner and select &ldquo;<strong>Change Background</strong>&ldquo;.</p>\r\n\r\n<p><img alt=\"use custom backgrounds on google meet\" src=\"https://beebom.com/wp-content/uploads/2020/11/1-use-custom-backgrounds-on-google-meet.jpg\" style=\"height:560px; width:362px\" /></p>\r\n\r\n<p>2. From here, you can choose any virtual background of your choice. You have the option to blur the background along with&nbsp;<strong>a variety of preloaded images</strong>&nbsp;ranging from cafes to libraries, beaches, and more.</p>\r\n\r\n<p><img alt=\"use custom backgrounds on google meet\" src=\"https://beebom.com/wp-content/uploads/2020/11/2-use-custom-backgrounds-on-google-meet.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>3. If you want to upload your own custom background on Google Meet then simply&nbsp;<strong>click on the &ldquo;+&rdquo; button</strong>&nbsp;and select an image from your computer. That&rsquo;s it. Keep in mind, as of now, it does not support dynamic videos as custom backgrounds. Also, the image must be in JPG format and must not exceed the size limit of 16MB.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/11/3-use-custom-backgrounds-on-google-meet.jpg\" style=\"height:560px; width:398px\" /></p>\r\n\r\n<h2>Apply Custom Backgrounds on Google Meet</h2>\r\n\r\n<p>So that is how you can apply custom backgrounds on Google Meet. In my experience, the face detection and background separation on Google Meet was not as good as Zoom. That said, the blur background worked pretty well without any face trimming issues. Anyway, that is all from us. In case, you want to learn&nbsp;<a href=\"https://beebom.com/how-upload-change-background-microsoft-teams/\">how to change backgrounds on Microsoft Teams</a>&nbsp;then follow our linked guide.</p>\r\n', '1.jpg'),
(18, 2, 3, '2020-11-17 05:42:52', 'Ram', 'How to Monitor Tasks on Windows 10 While Playing Games\r\n', 'microsoft', 'https://i.ytimg.com/vi/Ssk5sTv5w_M/maxresdefault.jpg', 'https://cdn.neow.in/news/images/uploaded/2016/12/1482937656_windows-10-gaming-controller_story.jpg', 'Windows 10 has a dedicated Task Manager that is as old as the OS itself. But what if I tell you that Microsoft has added a new Task Manager solely for managing background tasks while playing games on the PC? Yes, you read that right.', '<p>Windows 10 has a dedicated Task Manager that is as old as the OS itself. But what if I tell you that Microsoft has added a new Task Manager solely for managing background tasks while playing games on the PC? Yes, you read that right. Now, you can monitor tasks on Windows 10 while playing games and you don&rsquo;t need to leave your gaming window. Right on the gaming screen, you can monitor and even&nbsp;<a href=\"https://beebom.com/speed-up-windows-10-2/\">close resource-hogging tasks</a>&nbsp;that are hindering your gameplay. So if you want to pin a simple task manager on the gaming screen then follow this guide.</p>\r\n\r\n<h2>Monitor Tasks on Windows 10 While Playing Games</h2>\r\n\r\n<p>Before we begin, make sure you are updated to the latest&nbsp;<strong>Windows 10 October 2020</strong>&nbsp;build. The feature that we are going to discuss here was added to the Xbox Game Bar through the Windows 10 20H2 update.</p>\r\n\r\n<p>1. First and foremost, press the&nbsp;<strong>Win + G</strong>&nbsp;<a href=\"https://beebom.com/windows-10-keyboard-shortcuts/\">keyboard shortcut on Windows 10</a>&nbsp;to open the Xbox Game Bar.</p>\r\n\r\n<p><img alt=\"Monitor Tasks on Windows 10 While Playing Games\" src=\"https://beebom.com/wp-content/uploads/2020/11/Screenshot-54.jpg\" style=\"height:205px; width:640px\" /></p>\r\n\r\n<p>2. Here, click on the &ldquo;<strong>Widget Menu</strong>&rdquo; and select &ldquo;Resources&rdquo;.</p>\r\n\r\n<p><img alt=\"Monitor Tasks on Windows 10 While Playing Games\" src=\"https://beebom.com/wp-content/uploads/2020/11/Screenshot-55.jpg\" style=\"height:560px; width:538px\" /></p>\r\n\r\n<p>3. Now, a&nbsp;<strong>Resources window will appear</strong>&nbsp;on your screen. In the first run, it might take some time to show all the tasks.</p>\r\n\r\n<p><img alt=\"Monitor Tasks on Windows 10 While Playing Games\" src=\"https://beebom.com/wp-content/uploads/2020/11/Screenshot-56.jpg\" style=\"height:347px; width:536px\" /></p>\r\n\r\n<p>4. Here, you can monitor all the tasks on Windows 10. In case, while playing a game, the impact goes high for certain tasks then you can simply&nbsp;<strong>click on the &ldquo;X&rdquo; button</strong>&nbsp;to close the said task. You can also click on &ldquo;Show More&rdquo; to see more details.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/11/Screenshot-57.jpg\" style=\"height:382px; width:640px\" /></p>\r\n\r\n<p>5. The best part about this feature is that it allows you to&nbsp;<strong>pin the widget on the screen</strong>. Basically, while playing games, you will not have to press&nbsp;<a href=\"https://beebom.com/how-to-customize-the-alttab-behavior-on-windows-10/\">Alt + Tab</a>&nbsp;to check background processes. Simply click on the &ldquo;Pin&rdquo; icon and it will sit on your screen giving you access to background tasks while playing games.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2020/11/Screenshot-58.jpg\" style=\"height:226px; width:309px\" /></p>\r\n\r\n<h2>Pin Task Manager While Playing Games on PC</h2>\r\n\r\n<p>So that is how you can monitor tasks on Windows 10 while playing games. I love the fact that Microsoft is continuously adding new widgets and improving Xbox Game Bar on PC. Since it&rsquo;s a first-party solution, it helps in improving performance while playing games. In case, you want more&nbsp;<a href=\"https://beebom.com/microsoft-xbox-game-bar-gets-widget-store/\">widgets on Xbox Game Bar</a>, you can find them in Microsoft Store. Anyway, that is all from us. If you are having any issue then comment down below and let us know.</p>\r\n', '');
INSERT INTO `post` (`post_id`, `p_cat_id`, `cat_id`, `date`, `admin_name`, `post_title`, `post_tag`, `slider_img`, `mini_slider_img`, `post_mini_desc`, `post_desc`, `image`) VALUES
(20, 2, 3, '2020-12-15 14:44:12', 'Ravi', '<p>How to Use Linux on Your Chromebook</p>\r\n', 'windows', 'https://media.geeksforgeeks.org/wp-content/uploads/s2-1.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQA2xQx8j1CoOZ7rXMh2BoOs1u2mCn96tgjvw&usqp=CAU', '  \r\nOf late, software giants are incorporating Linux into their standard operating system in one way or the other. Microsoft brought the Linux subsystem on Windows 10 and now Google has introduced Linux on Chromebooks with full-fledged Terminal and Container support.', '<p>Of late, software giants are incorporating Linux into their standard operating system in one way or the other. Microsoft brought the&nbsp;<a href=\"https://beebom.com/how-enable-linux-bash-shell-windows-10-wsl-2/\">Linux subsystem</a>&nbsp;on Windows 10 and now Google has introduced Linux on Chromebooks with full-fledged Terminal and Container support. While the Linux project on Chrome OS is still in beta, the results are quite promising. If you are an IT administrator or a software developer or studying computer programming, the addition of Linux on&nbsp;<a href=\"https://beebom.com/what-is-a-chromebook/\">Chromebook</a>&nbsp;can be a boon for you. So, let&rsquo;s go ahead and learn how to use Linux on a Chromebook right from the setup to package installation.</p>\r\n\r\n<h2>Use Linux on Your Chromebook in 2020</h2>\r\n\r\n<p>Before beginning,&nbsp;<strong>make sure to check if your Chromebook supports Linux or not</strong>&nbsp;from this&nbsp;<a href=\"https://sites.google.com/a/chromium.org/dev/chromium-os/chrome-os-systems-supporting-linux\" target=\"_blank\">page</a>. To make it clear, if a&nbsp;<a href=\"https://beebom.com/best-chromebooks-you-can-buy/\">Chromebook has been launched in 2019</a>, it likely comes with Linux support. Apart from that, make sure to update your Chromebook to the latest version&ndash; preferably Chrome OS 79 to be able to use Linux on your Chromebook. Anyway, let&rsquo;s begin with the steps.</p>\r\n\r\n<p>1. First of all, open the Settings page by&nbsp;<strong>clicking on the cogwheel icon</strong>&nbsp;in the Quick Settings menu.</p>\r\n\r\n<p><img alt=\"Use Linux on Your Chromebook\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-1.jpg\" style=\"height:560px; width:425px\" /></p>\r\n\r\n<p>2. Next,&nbsp;<strong>switch to the &ldquo;Linux (Beta)&rdquo; menu&nbsp;</strong>in the left pane and click on the &ldquo;Turn on&rdquo; button.</p>\r\n\r\n<p><img alt=\"Use Linux on Your Chromebook\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-7.jpg\" style=\"height:264px; width:640px\" /></p>\r\n\r\n<p>3. A setup dialog will open up. Now, just&nbsp;<strong>click on the &ldquo;Install&rdquo; button</strong>&nbsp;and it will start downloading the necessary files to run Linux on your Chromebook.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-6.jpg\" style=\"height:525px; width:640px\" /></p>\r\n\r\n<p>4. After the installation is done, you can use the Linux Terminal just like any other app. Open the launcher and&nbsp;<strong>run the &ldquo;Terminal&rdquo; app</strong>. Voila, there you have it!</p>\r\n\r\n<p><img alt=\"Use Linux on Your Chromebook\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-2.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>5. To test the Linux terminal, we installed the&nbsp;<a href=\"https://beebom.com/best-gimp-plugins/\">GIMP image editor</a>&nbsp;on our Chromebook and the installation went through without a hitch. However, the&nbsp;<strong>performance is not that great as GIMP is running in a Linux container</strong>. But we expect it to get better after the project exits the Beta program.</p>\r\n\r\n<p><img alt=\"\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-3.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>6. Apart from that, you must know that Chrome OS and Linux have different file systems. So to&nbsp;<strong>access the local folders and files on Linux</strong>, you will have to copy the files from Downloads and paste them into the Linux folder.</p>\r\n\r\n<p><img alt=\"Use Linux on Your Chromebook\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-5.jpg\" style=\"height:400px; width:640px\" /></p>\r\n\r\n<p>7. However, if you&nbsp;<strong>don&rsquo;t want to make a duplicate copy</strong>&nbsp;then right-click on the folder that you want to share and click on &ldquo;Share with Linux&rdquo;. Now, it will show up in Linux&rsquo;s&nbsp;<code>mnt/chromeos/myfiles/downloads</code>&nbsp;directory.</p>\r\n\r\n<p><img alt=\"Use Linux on Your Chromebook\" src=\"https://beebom.com/wp-content/uploads/2019/12/How-to-Use-Linux-on-Your-Chromebook-4.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>8. In case you want to&nbsp;<strong>learn more about Linux</strong>&nbsp;and how to use it on a Chromebook, we have already covered a list of&nbsp;<a href=\"https://beebom.com/essential-linux-commands/\">handy Linux commands</a>&nbsp;in a separate article. Apart from that, you can also check out our article on the<a href=\"https://beebom.com/best-linux-apps/\">&nbsp;best Linux apps</a>&nbsp;and the&nbsp;<a href=\"https://beebom.com/free-online-resources-learning-linux/\">best online resources</a>&nbsp;to learn this powerful operating system.</p>\r\n\r\n<h2>Enable Linux on Your Chromebook and Open The Door of Endless Possibilities</h2>\r\n\r\n<p>So that was our short article on how to use Linux on a Chromebook. The steps are quite easy and straightforward so you don&rsquo;t need to change your update channel or make any changes to&nbsp;<a href=\"https://beebom.com/google-chrome-flags/\">Chrome flags</a>. Simply, go ahead and enable Linux on your Chromebook by following the guide. And if you want to learn more<a href=\"https://beebom.com/best-chrome-os-tips-tricks/\">&nbsp;tips and tricks of Chrome OS</a>, head over to our separate article. Anyway, that is all from us. If you are facing any problem while installing Linux, comment down below and let us know the issue.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n', '1.jpg'),
(23, 1, 6, '2020-11-17 06:09:15', 'Akshay Gangwar', 'PUBG Mobile Announces Return to India with $100 Million Investment\r\n', 'google', 'https://cdn.i-scmp.com/sites/default/files/styles/1200x800/public/d8/images/methode/2020/07/30/1a3889b0-d223-11ea-88dd-6bec610be4a6_image_hires_163718.jpg?itok=cQRz9TUK&v=1596098244', 'https://www.extremetech.com/wp-content/uploads/2017/12/PUBG-Feature-640x353.jpg', 'Two months after the Indian government banned PUBG Mobile alongside hundreds of other Chinese apps citing security reasons, PUBG Corp is finally bringing the game back into the country. ', '<p>Two months after the Indian government&nbsp;<a href=\"https://beebom.com/pubg-mobile-banned-118-chinese-apps/\">banned PUBG Mobile</a>&nbsp;alongside hundreds of other Chinese apps citing security reasons, PUBG Corp is finally bringing the game back into the country. The company has announced via a press release that it&rsquo;s bringing the game back in India under a new name &ldquo;PUBG Mobile India&rdquo; which is specifically created for India. The news follows reports over the last few days that the company is planning a&nbsp;<a href=\"https://beebom.com/pubg-mobile-may-be-back-india/\">return to India</a>&nbsp;and is working with top streamers for an announcement, with&nbsp;<a href=\"https://beebom.com/pubg-mobile-ad-featuring-indian-streamers-may-go-live-by-diwali-report/\">ads around Diwali</a>.</p>\r\n\r\n<p>In its press release the company said&nbsp;<em>&ldquo;Thanks to overwhelming community enthusiasm for PUBG esports in India, the company also plans to make investments by hosting India-exclusive esports events, which will feature the biggest tournaments, the largest prize pools, and the best tournament productions.&rdquo;</em></p>\r\n\r\n<p>The game will come with changes tailored to Indian requirements. Especially as far as the security and privacy of players in India is concerned, the company says that it&nbsp;<em>&ldquo;will conduct regular audits and verifications on the storage systems holding Indian users&rsquo; personally identifiable information to reinforce security and ensure that their data is safely managed.&rdquo;</em></p>\r\n\r\n<p>There are also going to be some in-game changes. The game will now have green hit markers, and will be set in a virtual simulation training ground, according to the release. I&rsquo;m not entirely sure exactly how much this game will differ from the PUBG Mobile we know, but hopefully it won&rsquo;t change a lot. The company hasn&rsquo;t announced a release date yet, but hopefully we&rsquo;ll get to learn more about it soon.</p>\r\n', ''),
(24, 1, 1, '2020-12-08 07:25:46', 'Akhil', '<p>Google Adds a Toggle to Turn Off Smart Features in Gmail, Meet &amp; Other Google Apps</p>\n', 'google', 'https://i.pinimg.com/originals/a8/37/18/a83718a9e6047ba172f08808a769126a.png', 'https://beebom.com/wp-content/uploads/2020/11/Google-Adds-New-Options-to-Control-Smart-Features-and-Personalization-in-Gmail.jpg', '<p>In an attempt to improve transparency, Google is adding new settings to help you control smart features and personalization in Gmail, Meet, and other Google services. The new feature builds on the company&rsquo;s previous efforts to let users auto-delete web and location history.</p>\n', '<p>In an attempt to improve transparency, Google is&nbsp;<a href=\"https://blog.google/products/gmail/new-settings-smart-features-and-personalization-gmail/\" target=\"_blank\">adding</a>&nbsp;new settings to&nbsp;<strong>help you control smart features and personalization</strong>&nbsp;in Gmail, Meet, and other Google services. The new feature builds on the company&rsquo;s previous efforts to let users&nbsp;<a href=\"https://beebom.com/auto-delete-web-and-location-history-google/\">auto-delete web and location history</a>.</p>\n\n<p>Smart features in Gmail refers to convenient additions like automatic email filtering, tabbed inbox, summary cards above emails,&nbsp;<a href=\"https://beebom.com/google-sheets-slides-smart-compose-link-preview/\">Smart Compose</a>, and&nbsp;<a href=\"https://beebom.com/google-smart-reply-whatsapp-skype/\">Smart Reply</a>. Going forward, you will see a toggle that lets you choose if you would like to continue using smart features. You can also turn the setting off if you don&rsquo;t often rely on them.</p>\n\n<p><img alt=\"google smart features toggle\" src=\"https://beebom.com/wp-content/uploads/2020/11/google-smart-features-toggle-.jpg\" style=\"height:560px; width:459px\" /></p>\n\n<p>Image: Google</p>\n\n<p>Another change is with respect to personalization based on your Gmail, Chat, and Meet data. Choosing to personalize this data offers you features such as Assistant reminders for your bills, the option to view restaurant reservations in Maps, and loyalty cards &amp; tickets for Google Pay (not&nbsp;<a href=\"https://beebom.com/google-pay-gets-colorful-new-logo-india/\">Tez</a>). Disabling the toggle limits access to all the aforesaid features and you can turn them back on whenever you want from Gmail&rsquo;s settings.</p>\n\n<p><img alt=\"google products personalization\" src=\"https://beebom.com/wp-content/uploads/2020/11/google-products-personalization.jpg\" style=\"height:560px; width:417px\" /></p>\n\n<p>Image: Google</p>\n\n<p>Google acknowledges these new controls are not new. In fact,<strong>&nbsp;you can separately disable all of these features right now</strong>. However, the company is aiming to make the process easier for all Gmail users with these new quick toggles.</p>\n\n<p><em>&ldquo;What&rsquo;s new is a clearer choice over the data processing that makes them possible. This new setting is designed to reduce the work of understanding and managing that process, in view of what we&rsquo;ve learned from user experience research and regulators&rsquo; emphasis on comprehensible, actionable user choices over data,&rdquo;</em>&nbsp;explains Google.</p>\n\n<p>Google says it will roll out the new controls for smart features and personalization in the coming weeks. Once available, we could expect the company to send out a pop-up notification to alert users.</p>\n\n<ul>\n	<li>&nbsp;</li>\n</ul>\n', '1.jpg'),
(27, 1, 2, '2020-11-23 18:36:24', 'Kishalaya Kundu', '<p>Apple Is Giving a Hefty Bonus to Employees That Are Willing to Work from China</p>\r\n', 'apple', 'https://beebom.com/wp-content/uploads/2020/11/Apple-giving-bonus-to-employees-feat..jpg', 'https://images.theconversation.com/files/71098/original/image-20150204-28578-7qf35.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip', 'Although Apple can be pretty mean to leaker-employees, the company does take care of those who work diligently. Earlier this year, following the world-changing pandemic, we saw the Cupertino tech giant send care-packages to its employees working in China.', '<p>Although Apple can be&nbsp;<a href=\"https://beebom.com/apple-employees-arrested-leaking/\">pretty mean to leaker-employees</a>, the company does&nbsp;<a href=\"https://beebom.com/apple-face-masks-only-employees-retail-partners/\">take care of those</a>&nbsp;who work diligently. Earlier this year, following the&nbsp;<a href=\"https://beebom.com/buses-uk-come-with-air-purifiers/\">world-changing pandemic</a>, we saw the Cupertino tech giant&nbsp;<a href=\"https://beebom.com/apple-sent-friendly-care-packages-that-includes-ipads-to-employees-in-china/\">send care-packages to its employees working in China</a>. Now, Apple is reportedly giving hefty bonuses to encourage employees to return to China for business purposes.</p>\r\n\r\n<p>According to a recent report, Apple lifted its travel restrictions for employees flying to China back in October. Since then, the iPhone-makers are reportedly giving voluntary employees traveling to the Asian country&nbsp;<strong>a hefty bonus to bear with the COVID-protection protocols in China</strong>.</p>\r\n\r\n<p>Previously, Apple employees traveling to China could take a 10-day business trip and return to the States. However, according to new protocols,&nbsp;<strong>any employee traveling to the country needs to stay for at least six weeks</strong>, as they would have to stay isolated for the first two.</p>\r\n\r\n<p>During these two isolation-weeks, the employees would be staying in a budget hotel chosen by the company. They will not get any restaurant delivery and will only have to eat stale Irish lamb stew made by the China Eastern Airlines staff. Moreover, with the lack of laundry service,&nbsp;<strong>the employees need to hand-wash their own clothes in their washrooms</strong>.</p>\r\n\r\n<p>So, as you can imagine, cooperating with these safety-protocols is pretty exhausting and depressing. And&nbsp;<strong>that is why Apple is giving a hefty bonus of $500 (~Rs. 37,315) a day</strong>&nbsp;to employees who are willing to go to China for work.</p>\r\n', ''),
(28, 1, 2, '2020-12-08 07:25:46', 'Akhil', 'macOS Big Sur Update Bricking Old MacBook Pros: Report\r\n', 'apple', 'https://beebom.com/wp-content/uploads/2020/11/macOS-Big-Sur-shutterstock-website.jpg', 'https://tr1.cbsistatic.com/hub/i/r/2017/12/11/9fac1c13-984f-429c-83a8-1a7a286271ae/resize/1200x/3a6056002ad89cefbd930cd12fb78e0b/macoshero.jpg', 'Soon after Apple started rolling out the stable macOS Big Sur last week, several users across Reddit and Apple Support forum have noticed that the update is bricking their old MacBooks. Specifically, the problem is prevalent in late 2013/ mid-2014 13-inch MacBook Pro models.', '<p>Soon after Apple started rolling out the stable&nbsp;<a href=\"https://beebom.com/macos-big-sur-release-november-12/\">macOS Big Sur</a>&nbsp;last week, several users across&nbsp;<a href=\"https://www.reddit.com/r/MacOS/comments/jue7n5/big_sur_update_bricked_mid2014_13_mbp/\" target=\"_blank\">Reddit</a>&nbsp;and<a href=\"https://discussions.apple.com/thread/252033190\" target=\"_blank\">&nbsp;Apple Support forum</a>&nbsp;have noticed that<strong>&nbsp;the update is bricking their old MacBooks</strong>. Specifically, the problem is prevalent in late 2013/ mid-2014 13-inch MacBook Pro models.</p>\r\n\r\n<p>According to user reports, the&nbsp;<strong>MacBook gets stuck on a black screen during or after the update process</strong>. As a result, users are getting locked out of their machines. When this happens, users say that even keyboard lights don&rsquo;t light up. The worst part? There&rsquo;s no quick solution to this problem.</p>\r\n\r\n<p>As&nbsp;<em>MacRumors</em>&nbsp;reports, users have tried typical troubleshooting measures including NVRAM and SMC resets, entering safe mode, and internet recovery but they have all remained inaccessible. Meanwhile, one user on Apple&rsquo;s Support forum says Apple&rsquo;s engineering team is aware of the issue.</p>\r\n\r\n<p>The issue seems to be linked to the IC chip of the HDMI port. Some users report positive results after unplugging/replacing the I/O board of the machine, but you will have to proceed at your own risk in that case. If you&rsquo;re in a similar situation, the best solution would be to contact Apple&rsquo;s customer support. Considering the fact that most affected laptops are out of warranty at this point, we will have to wait to see how Apple has planned to handle this problem on a wide scale.</p>\r\n\r\n<p>For those who haven&rsquo;t updated to macOS Big Sur yet, we would recommend you to wait until the developers at Apple manage to resolve the problem. Since this is a major issue, we could expect Apple to fix the bug soon. Meanwhile, do let us know if you&rsquo;re affected in the comments and do not update your old MacBooks right now.</p>\r\n', '1.jpg'),
(30, 1, 1, '2020-11-17 06:17:25', 'Anmol Sachdeva', 'Google Pixel 4a Now Comes in a Limited Edition &lsquo;Barely Blue&rsquo; Color\r\n', 'google', 'https://beebom.com/wp-content/uploads/2020/11/pixel-4a-barely-blue.jpg', 'https://fdn2.gsmarena.com/vv/pics/google/google-pixel-4-1.jpg', 'The Google Pixel 4a made its official debut earlier this year, with the gaming-centric Snapdragon 730G and a single camera in tow. It arrived in a single ‘Just Black’ color variant back in August. But now, Google is adding a limited edition ‘Barely Blue’ variant to give users a bit more choice.', '<p>The Google Pixel 4a made its&nbsp;<a href=\"https://beebom.com/google-pixel-4a-snapdragon-730g-goes-official/\">official debut</a>&nbsp;earlier this year, with the gaming-centric Snapdragon 730G and a single camera in tow. It arrived in a single &lsquo;Just Black&rsquo; color variant back in August. But now, Google is adding a&nbsp;<strong>limited edition &lsquo;Barely Blue&rsquo; variant</strong>&nbsp;to give users a bit more choice.</p>\r\n\r\n<p>This is merely a&nbsp;<a href=\"https://store.google.com/us/product/pixel_4a\" target=\"_blank\">new color variant</a>, in the same vein as the Purple-ish&nbsp;<a href=\"https://beebom.com/pixel-3a-camera-review/\">Pixel 3a</a>&nbsp;which launched last year. The device still features a polycarbonate build and a matte finish, along with the &lsquo;orange&rsquo; accented power button on the right. The black square camera cutout also offers a nice contrast to the design.</p>\r\n\r\n<p><img alt=\"pixel 4a new color\" src=\"https://beebom.com/wp-content/uploads/2020/11/pixel-4a-new-color.jpg\" style=\"height:550px; width:269px\" /></p>\r\n\r\n<p>Also, as I&rsquo;ve mentioned above, the Barely Blue color variant will be a limited run. The company says that it will available &lsquo;exclusively on Google Store while supplies last.&rsquo; It means if you have been avoiding the Pixel 4a, which is a stellar camera phone for the price, due to its black colorway. Well, you now have a bright and soothing new baby blue option &ndash; but only in the United States.</p>\r\n\r\n<h2>Pixel 4a Specifications</h2>\r\n\r\n<p>The Pixel 4a includes a&nbsp;<strong>5.81-inch Full-HD+ AMOLED display</strong>&nbsp;with a 60Hz refresh rate and a punch-hole cutout, with an 8MP selfie camera, at the top left. Google stuck with a single 12MP rear camera housed inside a square camera module. You will find a fingerprint sensor on the rear.</p>\r\n\r\n<p>Under the hood, Pixel 4a is powered by the&nbsp;<strong>Snapdragon 730G</strong>&nbsp;chipset. It is coupled with 6GB of RAM and 128GB of built-in storage. The device also includes<strong>&nbsp;Google&rsquo;s Titan M security chip</strong>. The device launched with Android 10 but is upgradeable to the latest Android 11 build out-of-the-box.</p>\r\n\r\n<p>The Pixel 4a also comes equipped with a&nbsp;<strong>3,140 mAh battery</strong>&nbsp;with 18W fast-charging support via the USB Type-C port at the bottom. It is&nbsp;<strong>priced at $349</strong>&nbsp;(~Rs. 25,999) in the United States, the same as the Just Black variant.</p>\r\n', ''),
(31, 1, 1, '2020-11-24 14:34:46', 'Anmol Sachdeva', 'OnePlus 9 Render Reveals Flat Display and Triple Rear Cameras\r\n', 'oneplus', 'https://cnet3.cbsistatic.com/img/j1oUw6R1YMxSh7nlf9lbhz_n4f4=/2020/04/12/9b6d6f3a-d6eb-4dbc-beb5-0c567e50096f/oneplus-8-pro-0605.jpg', 'https://cdn.images.express.co.uk/img/dynamic/59/590x/OnePlus-6T-price-deal-1050420.jpg?r=1543230027503', 'OnePlus just recently took the wraps off the OnePlus 8T and we’re already seeing new leaks for the company’s next flagship, OnePlus 9. It is expected to launch sometime in March of 2021. While not much is known in terms of the specifications of the OnePlus 9, a new 91Mobiles report shows what could be the potential design of the handset.', '<p>OnePlus just recently took the wraps off the<a href=\"https://beebom.com/oneplus-8t-launched-india-specs-price-availability/\">&nbsp;OnePlus 8T</a>&nbsp;and we&rsquo;re already seeing new leaks for the company&rsquo;s next flagship, OnePlus 9. It is expected to launch&nbsp;sometime in&nbsp;<a href=\"https://beebom.com/oneplus-9-pro-launch-expected-march-2021/\">March of 2021</a>. While not much is known in terms of the specifications of the OnePlus 9, a new&nbsp;<em>91Mobiles</em>&nbsp;report shows what could be the potential design of the handset.</p>\r\n\r\n<p>According to&nbsp;<em>91Mobiles</em>, OnePlus 9&rsquo;s display could be larger than the 6.55-inch Full-HD+ AMOLED display present on the OnePlus 8T. The display is&nbsp;<strong>reportedly a flat panel</strong>&nbsp;like the 8T, which hints OnePlus has finally gotten over fancy curved displays, at least on non-Pro models. Much like the 8T, the&nbsp;<strong>OnePlus 9 may sport a 120Hz display</strong>.</p>\r\n\r\n<p>Going by the leaked CAD render, the OnePlus 9 could feature a<strong>&nbsp;hole-punch display</strong>&nbsp;placed towards the left corner of the phone, as seen on the&nbsp;<a href=\"https://beebom.com/oneplus-8t-launched-india-specs-price-availability/\">OnePlus 8T</a>. Moving our attention to the rear, there&rsquo;s a triple camera setup that looks like a hybrid of the&nbsp;<a href=\"https://beebom.com/samsung-galaxy-note-20-ultra-launched/\">Galaxy Note 20</a>&nbsp;and&nbsp;<a href=\"https://beebom.com/lg-velvet-launched-india-price-specs-features/\">LG Velvet</a>.</p>\r\n\r\n<p>As this is a generational upgrade, the OnePlus 9 could come with the&nbsp;<a href=\"https://beebom.com/snapdragon-875-likely-to-be-25-faster-than-snapdragon-865-suggests-leaked-antutu-scores/\">Snapdragon 875</a>&nbsp;chipset, which is all set to be&nbsp;<a href=\"https://beebom.com/snapdragon-875-launch-date-confirms-qualcomm/\">unveiled in December</a>. You could also expect 65W Warp Charge and&nbsp;<a href=\"https://beebom.com/oxygenos-11-stable-update-rolling-out-oneplus-8-and-8-pro/\">OxygenOS 11</a>&nbsp;based on&nbsp;<a href=\"https://beebom.com/android-11-launched-pixel-oneplus-xiaomi-realme/\">Android 11</a>.</p>\r\n\r\n<p>With all that said, the alleged CAD render has received mixed reactions among other tipsters like All About Samsung&rsquo;s Max Jambor. In a&nbsp;<a href=\"https://twitter.com/MaxJmb/status/1327611226382356483\" target=\"_blank\">tweet</a>&nbsp;over the weekend, he said that&nbsp;<em>&ldquo;this CAD is inaccurate.&rdquo;</em>&nbsp;He further claims the render does not match with the information he has.</p>\r\n\r\n<p>Until we get an official teaser (which will not happen for the next three-odd months) or reports from other reputed tipsters, we recommend you take this design render with a grain of salt. We will keep you posted if there are any new developments regarding the OnePlus 9, so stay tuned.</p>\r\n\r\n<p><em>Featured Image Courtesy: 91Mobiles</em></p>\r\n', ''),
(32, 1, 1, '2020-11-24 14:35:06', 'Anmol Sachdeva', 'OnePlus 9 Render Reveals Flat Display and Triple Rear Cameras\r\n', 'oneplus', 'https://cnet3.cbsistatic.com/img/j1oUw6R1YMxSh7nlf9lbhz_n4f4=/2020/04/12/9b6d6f3a-d6eb-4dbc-beb5-0c567e50096f/oneplus-8-pro-0605.jpg', 'https://cdn.images.express.co.uk/img/dynamic/59/590x/OnePlus-6T-price-deal-1050420.jpg?r=1543230027503', 'OnePlus just recently took the wraps off the OnePlus 8T and we’re already seeing new leaks for the company’s next flagship, OnePlus 9. It is expected to launch sometime in March of 2021. While not much is known in terms of the specifications of the OnePlus 9, a new 91Mobiles report shows what could be the potential design of the handset.', '<p>OnePlus just recently took the wraps off the<a href=\"https://beebom.com/oneplus-8t-launched-india-specs-price-availability/\">&nbsp;OnePlus 8T</a>&nbsp;and we&rsquo;re already seeing new leaks for the company&rsquo;s next flagship, OnePlus 9. It is expected to launch&nbsp;sometime in&nbsp;<a href=\"https://beebom.com/oneplus-9-pro-launch-expected-march-2021/\">March of 2021</a>. While not much is known in terms of the specifications of the OnePlus 9, a new&nbsp;<em>91Mobiles</em>&nbsp;report shows what could be the potential design of the handset.</p>\r\n\r\n<p>According to&nbsp;<em>91Mobiles</em>, OnePlus 9&rsquo;s display could be larger than the 6.55-inch Full-HD+ AMOLED display present on the OnePlus 8T. The display is&nbsp;<strong>reportedly a flat panel</strong>&nbsp;like the 8T, which hints OnePlus has finally gotten over fancy curved displays, at least on non-Pro models. Much like the 8T, the&nbsp;<strong>OnePlus 9 may sport a 120Hz display</strong>.</p>\r\n\r\n<p>Going by the leaked CAD render, the OnePlus 9 could feature a<strong>&nbsp;hole-punch display</strong>&nbsp;placed towards the left corner of the phone, as seen on the&nbsp;<a href=\"https://beebom.com/oneplus-8t-launched-india-specs-price-availability/\">OnePlus 8T</a>. Moving our attention to the rear, there&rsquo;s a triple camera setup that looks like a hybrid of the&nbsp;<a href=\"https://beebom.com/samsung-galaxy-note-20-ultra-launched/\">Galaxy Note 20</a>&nbsp;and&nbsp;<a href=\"https://beebom.com/lg-velvet-launched-india-price-specs-features/\">LG Velvet</a>.</p>\r\n\r\n<p>As this is a generational upgrade, the OnePlus 9 could come with the&nbsp;<a href=\"https://beebom.com/snapdragon-875-likely-to-be-25-faster-than-snapdragon-865-suggests-leaked-antutu-scores/\">Snapdragon 875</a>&nbsp;chipset, which is all set to be&nbsp;<a href=\"https://beebom.com/snapdragon-875-launch-date-confirms-qualcomm/\">unveiled in December</a>. You could also expect 65W Warp Charge and&nbsp;<a href=\"https://beebom.com/oxygenos-11-stable-update-rolling-out-oneplus-8-and-8-pro/\">OxygenOS 11</a>&nbsp;based on&nbsp;<a href=\"https://beebom.com/android-11-launched-pixel-oneplus-xiaomi-realme/\">Android 11</a>.</p>\r\n\r\n<p>With all that said, the alleged CAD render has received mixed reactions among other tipsters like All About Samsung&rsquo;s Max Jambor. In a&nbsp;<a href=\"https://twitter.com/MaxJmb/status/1327611226382356483\" target=\"_blank\">tweet</a>&nbsp;over the weekend, he said that&nbsp;<em>&ldquo;this CAD is inaccurate.&rdquo;</em>&nbsp;He further claims the render does not match with the information he has.</p>\r\n\r\n<p>Until we get an official teaser (which will not happen for the next three-odd months) or reports from other reputed tipsters, we recommend you take this design render with a grain of salt. We will keep you posted if there are any new developments regarding the OnePlus 9, so stay tuned.</p>\r\n\r\n<p><em>Featured Image Courtesy: 91Mobiles</em></p>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'news', 'Get the latest LTT Technology News: breaking news and analysis on computing, the web, blogs, games, gadgets, social media, broadband and more.'),
(2, 'howto', 'LTT provides collection of how to guides with step by step instruction to complete a task. Find how to information on mobiles, apps, games, technology'),
(3, 'bestof', 'The best news apps for Android and iOS · An unanticipated problem was encountered, check back soon and try again · Google News · Apple News.'),
(4, 'apps', 'Find latest Apps News on Samsung Apps, latest iPhone Mobile, New & Cheap Android Mobiles, New Nokia Mobiles, Latest BlackBerry'),
(5, 'accessories', 'Latest accessories News and Updates, Special Reports, Videos & Photos of accessories on LTT. Articles on accessories, Complete ');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `password`) VALUES
(1, 'abc', 'abc@gmail.com', '1234'),
(2, 'abc', 'abc@gmail.com', '1234'),
(3, 'abc', 'abc@gmail.com', '1234'),
(4, 'abc', 'abc@gmail.com', '1234'),
(5, 'abc', 'abc@gmail.com', '1234'),
(11, 'administrator', 'asdf@asdf', 'abc123'),
(12, 'administrator', 'nirupamvas967@gmail.com', 'abc123'),
(13, 'signup', 'signup@gmail', 'abc123'),
(14, 'welcome', 'welcome@gmail.com', '1234'),
(15, 'welcome', 'welcome@gmail.com', '1234'),
(16, 'welcome', 'welcome@gmail.com', '1234'),
(17, 'welcome', 'welcome@gmail.com', '1234'),
(18, 'Ravi', 'abc123@gmail.com', 'qwertyuiop'),
(19, 'xyz', 'abc123@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(100) NOT NULL,
  `slider_title` varchar(100) NOT NULL,
  `slider_tag` varchar(100) NOT NULL,
  `slider_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_title`, `slider_tag`, `slider_image`) VALUES
(1, 'slider_1', 'Firefox 84 Supports Multiple Picture-in-Picture Windows on Desktop', 'firefox', 'https://www.mozilla.org/media/protocol/img/logos/firefox/browser/og.4ad05d4125a5.png'),
(2, 'slider_2', 'Amazon’s GameOn App Makes It Easy for Players to Share Mobile Gameplay Clips', 'amazon', 'https://images.ctfassets.net/5lpapfxq15sk/geXLDpTZolJ0Rd7fSwEy1/83422e7df3de4363f24f80b337062789/Games-smilegate.jpg'),
(3, 'slider_2', 'Apple AirPods Studio Headphones Design Shows up in Latest iOS 14.3 Beta', 'Apple', 'https://cdn.mos.cms.futurecdn.net/zfiTfcnhSTdjXDX2E6Kfqd-1200-80.jpg'),
(4, 'slider_4', 'OnePlus Nord N10 hands-on: Settling on simplicity', 'oneplus', 'https://i2.wp.com/technosports.co.in/wp-content/uploads/2020/10/EeanfwSXYAAJf45.png?fit=2560%2C1440&ssl=1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `future_events`
--
ALTER TABLE `future_events`
  ADD PRIMARY KEY (`future_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `a_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `future_events`
--
ALTER TABLE `future_events`
  MODIFY `future_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
