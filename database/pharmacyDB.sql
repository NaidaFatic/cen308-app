/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.14-MariaDB : Database - pharamcy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pharamcy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `pharamcy`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(512) COLLATE utf8_bin NOT NULL,
  `password` varchar(1024) COLLATE utf8_bin NOT NULL,
  `status` varchar(1024) COLLATE utf8_bin DEFAULT 'PENDING',
  `role` varchar(1024) COLLATE utf8_bin DEFAULT 'USER',
  `user_id` int(10) unsigned zerofill NOT NULL,
  `token` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `token_created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_accounts_email` (`email`),
  KEY `fk_accounts_users` (`user_id`),
  CONSTRAINT `fk_accounts_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `accounts` */

insert  into `accounts`(`id`,`email`,`password`,`status`,`role`,`user_id`,`token`,`token_created_at`) values 
(1,'exaa1@gmail.com','123','PENDING','USER',0000000001,NULL,NULL),
(2,'sanida@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','ADMIN',0000000002,'9a9f7a52dd1a8d0fcec3c6314dbe9d1f','2021-06-25 18:46:17'),
(4,'sunita@gmail.com','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000005,NULL,NULL),
(6,'samija@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000005,NULL,NULL),
(59,'example@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000002,'c42b7770bc5b5f60e92eddd7bade4d4c','2021-06-25 18:43:27'),
(60,'user1@gmail.com','123','PENDING','USER',0000000002,'1eca88b9679012c89e69ee026cf7afe0',NULL),
(62,'example123@gmail.com','123','PENDING','USER',0000000055,'0dee454e3b3eeef1b8351eacc947c707',NULL),
(65,'ajla1@gmail.com','123','PENDING','USER',0000000058,'4a02d78166fb5e7e528d4cfab708dc21',NULL),
(67,'ajla12@gmail.com','123','PENDING','USER',0000000060,'7a99ecce3c6b0198b0209913126189e1',NULL),
(68,'work@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000061,'64610ba7d4964966d2342d1b4a6c398c',NULL),
(70,'example1@gmail.com','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000063,'303eb6d6ac618640117a211ac0766f8b',NULL),
(87,'example125@gmail.com','123','PENDING','USER',0000000001,'9378c139c797bb1ec12c44337debd4f9',NULL),
(90,'naida.fatic@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000081,NULL,'2021-04-10 15:29:09'),
(94,'naidafatic1111@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000085,NULL,'2021-05-02 14:47:00'),
(96,'naidafatic2@gmail.com','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000087,'974a26522681e142136edacba19c7506',NULL),
(97,'naidafatic1@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000088,NULL,'2021-06-13 17:48:18'),
(110,'faticnaida@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000101,NULL,'2021-06-26 11:44:51'),
(114,'faticnaida111111111@gmail.com','37693cfc748049e45d87b8c7d8b9aacd','PENDING','USER',0000000105,'36d7262f74aec356bf7f96d532e87896',NULL),
(115,'faticnaid1111a@gmail.com','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000106,'f12516aae629e08630fdc4bdec990cb7',NULL),
(132,'faticnaid1111a@gmal.com','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000123,'ff06d013a992fd627ea4f8b083f5c813',NULL),
(155,'test@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000144,NULL,NULL),
(156,'example012@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000145,NULL,NULL),
(157,'12','c20ad4d76fe97759aa27a0c99bff6710','ACTIVE','USER',0000000146,NULL,NULL),
(158,'acc','1673448ee7064c989d02579c534f6b66','ACTIVE','USER',0000000147,NULL,NULL),
(159,'f','8fa14cdd754f91cc6554c9e71929cce7','ACTIVE','USER',0000000148,NULL,NULL),
(164,'naida.fatic1@stu.ibu.edu.ba','202cb962ac59075b964b07152d234b70','ACTIVE','ADMIN',0000000153,NULL,NULL),
(168,'naida.fatic12@stu.ibu.edu.ba','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000157,NULL,NULL),
(169,'naida.fatic@stu.ibu.edu.ba','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000158,'97192264798e619402e36df6510f6c4e','2021-06-26 11:40:22'),
(171,'naidafati1c@gmail.com','202cb962ac59075b964b07152d234b70','PENDING','USER',0000000160,'9c130e3bd4275ab76395abebef565f21',NULL),
(172,'naidafatic@gg.com','698d51a19d8a121ce581499d7b701668','ACTIVE','USER',0000000161,'492774c8ee6da12a5c19c2c2043e5c39','2021-06-26 11:42:56'),
(176,'naidafatic@gmail.com','202cb962ac59075b964b07152d234b70','ACTIVE','USER',0000000165,'66d654bd52fe736747281d68d5f167e8',NULL);

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int(11) DEFAULT 1,
  `status` varchar(32) NOT NULL DEFAULT 'IN_CART',
  `medicine_id` int(11) unsigned NOT NULL,
  `account_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_accounts_carts` (`account_id`),
  KEY `fk_medicines_carts` (`medicine_id`),
  CONSTRAINT `fk_accounts_carts` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_medicines_carts` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

/*Data for the table `carts` */

insert  into `carts`(`id`,`quantity`,`status`,`medicine_id`,`account_id`) values 
(3,1,'PURCHASED',1,2),
(4,10,'PURCHASED',3,2),
(5,10,'PURCHASED',1,2),
(6,1,'PURCHASED',10,2),
(17,1,'PURCHASED',1,59),
(18,1,'PURCHASED',10,59),
(19,1,'PURCHASED',10,59),
(20,1,'PURCHASED',10,59),
(21,1,'PURCHASED',10,59),
(22,1,'PURCHASED',1,59),
(23,1,'PURCHASED',1,2),
(24,1,'PURCHASED',1,2),
(25,1,'PURCHASED',1,59),
(26,1,'PURCHASED',1,59),
(27,1,'PURCHASED',1,59),
(28,1,'PURCHASED',1,59),
(29,1,'PURCHASED',17,59),
(30,1,'PURCHASED',17,59),
(31,1,'PURCHASED',1,59),
(32,10,'PURCHASED',1,59),
(33,1,'PURCHASED',1,59),
(34,5,'PURCHASED',5,94),
(35,5,'PURCHASED',5,94),
(36,5,'PURCHASED',5,94),
(37,5,'PURCHASED',5,94),
(38,1,'PURCHASED',5,94),
(39,5,'PURCHASED',5,94),
(40,5,'PURCHASED',5,94),
(41,5,'PURCHASED',5,94),
(42,5,'PURCHASED',5,94),
(43,5,'PURCHASED',5,94),
(44,5,'PURCHASED',5,94),
(45,5,'PURCHASED',5,94),
(46,5,'PURCHASED',5,94),
(47,5,'PURCHASED',5,94),
(48,5,'PURCHASED',5,94),
(49,2,'PURCHASED',5,94),
(50,2,'PURCHASED',5,94),
(51,5,'PURCHASED',5,94),
(52,5,'PURCHASED',5,94),
(53,5,'PURCHASED',1,94),
(54,1,'IN_CART',1,94),
(55,1,'PURCHASED',1,59),
(56,100,'IN_CHART',1,59),
(57,100,'IN_CHART',1,59),
(58,1,'PURCHASED',1,59),
(59,1,'PURCHASED',1,59),
(60,1,'PURCHASED',1,59),
(61,0,'PURCHASED',1,2),
(62,1,'IN_CART',1,59),
(63,1,'IN_CART',5,59),
(64,1,'PURCHASED',1,2),
(65,0,'PURCHASED',1,2),
(66,10,'PURCHASED',4,2),
(67,10,'PURCHASED',6,2),
(68,0,'PURCHASED',1,2),
(70,4,'PURCHASED',1,2),
(72,1,'PURCHASED',10,2),
(73,1,'PURCHASED',1,2),
(74,1,'PURCHASED',3,2),
(75,1,'PURCHASED',8,2),
(76,1,'IN_CART',1,158),
(77,2,'PURCHASED',11,164),
(79,1,'IN_CART',7,164),
(80,2,'PURCHASED',1,2),
(81,1,'PURCHASED',1,2),
(83,2,'PURCHASED',10,172),
(85,1,'PURCHASED',5,172),
(87,0,'IN_CART',1,59),
(88,2,'IN_CART',3,2),
(89,2,'PURCHASED',9,110),
(90,1,'PURCHASED',20,110);

/*Table structure for table `medicines` */

DROP TABLE IF EXISTS `medicines`;

CREATE TABLE `medicines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(512) COLLATE utf8_bin NOT NULL,
  `company_name` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `price` double NOT NULL,
  `description` text COLLATE utf8_bin DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `quantity` int(11) NOT NULL DEFAULT 10,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `medicines` */

insert  into `medicines`(`id`,`name`,`company_name`,`price`,`description`,`added_at`,`quantity`) values 
(1,'elixir','bosnalijek',100,'elixir','2021-06-18 11:23:53',0),
(3,'kafetin','123',3.99,'for pain','2021-06-13 17:23:29',9),
(4,'kafetin','123',3.99,'for pain','2021-06-13 15:22:01',0),
(5,'kafetinextra','123',3.99,'for pain','2021-05-15 10:54:09',0),
(6,'vitamin E','bosnalijek',7.99,'for corona','2021-06-13 15:22:01',0),
(7,'new 7','company name',0,'description','2021-05-15 10:51:51',10),
(8,'tablete3','company',100.99,'for corona','2021-06-13 17:23:29',9),
(9,'name','company name',0,'description','2021-06-25 13:01:22',6),
(10,'moderna','moederna',50.01,'its corona time','2021-06-18 12:14:10',7),
(11,'moderna','moederna',50.01,'its corona time','2021-06-13 19:49:41',8),
(12,'moderna','moederna',50.01,'its corona time','2021-04-05 20:04:52',10),
(17,'name','company name',0,'description','2021-04-10 13:18:08',0),
(18,'name','company name',0,'description','2021-04-05 22:32:03',10),
(19,'name','company name',0,'description','2021-05-01 21:33:04',10),
(20,'name','nn',12,'2112121','2021-06-25 19:00:38',9),
(23,'test','test',1,'nn','2021-05-13 21:39:05',1),
(24,'test','test',1,'nn','2021-05-13 21:40:06',1),
(25,'test','test',1,'nn','2021-05-13 21:40:58',1),
(27,'test','nn',1,'nn','2021-05-13 22:08:10',1),
(31,'eeee','ee',2,'ee','2021-05-13 22:11:29',2),
(32,'test','test',44,'test','2021-05-13 22:13:16',44),
(33,'test','nn',5,'ee','2021-05-13 22:16:18',5),
(34,'test1','test1',3.66,'23f','2021-05-13 22:22:10',23),
(35,'test1','test2',22,'222','2021-05-13 22:53:02',22),
(36,'test','test',7,'777','2021-05-13 22:56:30',7),
(37,'Naida Fatic','test255',5,'5555','2021-06-10 15:47:49',5),
(38,'nee','nee',3,'eee','2021-05-13 22:57:25',3),
(39,'new name','company name',0,'description','2021-05-14 22:26:18',0),
(40,'new name1','company name',0,'description','2021-05-14 23:03:22',0),
(41,'vitamin E11','bosnalijek',7.99,'for corona','2021-05-14 23:03:39',10),
(42,'vitamin E12','bosnalijek',7.99,'for corona','2021-05-14 23:17:36',10),
(43,'vitamin E122','bosnalijek',7.99,'for corona','2021-05-14 23:32:42',10),
(44,'new name1','company name',0,'description','2021-05-14 23:35:26',0),
(45,'new name222','company name',0,'description','2021-05-14 23:36:51',0),
(46,'new name','company name',0,'description','2021-05-14 23:38:28',0),
(47,'new name10','10',1,'nn','2021-05-15 10:53:55',1),
(48,'name','company name',2,'description','2021-06-05 17:04:56',2),
(49,'medicine','compnayyy',5,'desscs','2021-06-05 17:22:26',3),
(50,'233','23',23,'23','2021-06-05 18:18:36',23),
(51,'233','23',23,'23','2021-06-05 18:18:36',23),
(52,'comeon','cccc',2,'cc','2021-06-05 18:19:06',2),
(53,'comeon','cccc',2,'cc','2021-06-05 18:19:06',2),
(54,'Naida Fatic','company name',3.6,'description','2021-06-05 18:19:32',3),
(55,'newname','12',12,'12','2021-06-05 18:30:25',12),
(56,'new name','company name',1,'description','2021-06-05 19:38:34',1),
(57,'new name','company name',12,'cc','2021-06-11 17:17:42',1),
(58,'test','test',12,'for pain','2021-06-11 17:18:19',12),
(59,'Brufen','bosnalijek',2.5,'for pain','2021-06-13 16:11:33',100),
(60,'elixir','bosnalijek',100,'elixir','2021-06-18 11:23:53',0),
(61,'elixir','bosnalijek',100,'elixir','2021-06-23 00:08:24',0);

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(512) COLLATE utf8_bin NOT NULL,
  `image_url` varchar(1024) COLLATE utf8_bin NOT NULL,
  `price` float NOT NULL,
  `category` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`image_url`,`price`,`category`) values 
(1,'Mate Wrist Waterproof Bluetooth Smart Watch For Android HTC Samsung iPhone iOS','https://i.ebayimg.com/images/g/VZQAAOSwocxgAX5c/s-l1600.png',26.13,'Jewelry & Watches'),
(2,'Samsung Galaxy Note10 - 256GB','https://i.ebayimg.com/images/g/T2IAAOSw0OVf-hZk/s-l1600.jpg',425,'Cell Phones & Accessories'),
(3,'Adidas Yeezy 500, New in box, US 10, F36640','https://i.ebayimg.com/images/g/Y-QAAOSwzw9gYOw9/s-l1600.png',210,'Clothing, Shoes & Accessories');

/*Table structure for table `purchases` */

DROP TABLE IF EXISTS `purchases`;

CREATE TABLE `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(512) COLLATE utf8_bin NOT NULL,
  `zip` varchar(512) COLLATE utf8_bin NOT NULL,
  `phone_number` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `account_id` int(10) unsigned NOT NULL,
  `cart_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_accounts_purchases` (`account_id`),
  KEY `fk_carts_purchases` (`cart_id`),
  CONSTRAINT `fk_accounts_purchases` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_carts_purchases` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `purchases` */

insert  into `purchases`(`id`,`city`,`zip`,`phone_number`,`date`,`account_id`,`cart_id`) values 
(7,'Sarajevo','17000',33033033,'2021-04-09 21:40:33',59,19),
(11,'Sarajevo','17000',33033033,'2021-04-09 21:57:01',59,19),
(12,'Sarajevo','17000',33033033,'2021-04-09 21:57:28',59,19),
(13,'Sarajevo','17000',33033033,'2021-04-09 21:57:28',59,20),
(14,'Sarajevo','17000',33033033,'2021-04-09 21:57:28',59,21),
(15,'Sarajevo','17000',33033033,'2021-04-09 21:57:28',59,22),
(16,'Sarajevo','17000',33033033,'2021-04-09 22:00:45',59,19),
(17,'Sarajevo','17000',33033033,'2021-04-09 22:00:45',59,20),
(18,'Sarajevo','17000',33033033,'2021-04-09 22:00:45',59,21),
(20,'Sarajevo','17000',33033033,'2021-04-09 23:49:57',2,3),
(21,'Sarajevo','17000',33033033,'2021-04-09 23:49:57',2,4),
(22,'Sarajevo','17000',33033033,'2021-04-09 23:49:57',2,5),
(23,'Sarajevo','17000',33033033,'2021-04-09 23:49:57',2,6),
(24,'Sarajevo','17000',33033033,'2021-04-09 23:53:09',2,3),
(25,'Sarajevo','17000',33033033,'2021-04-09 23:53:09',2,4),
(26,'Sarajevo','17000',33033033,'2021-04-09 23:53:09',2,5),
(27,'Sarajevo','17000',33033033,'2021-04-09 23:53:09',2,6),
(28,'Sarajevo','17000',33033033,'2021-04-10 11:09:19',59,17),
(29,'Sarajevo','17000',33033033,'2021-04-10 11:09:19',59,18),
(30,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,17),
(31,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,18),
(32,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,19),
(33,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,20),
(34,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,21),
(35,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,22),
(36,'Mostar','17000',33033033,'2021-04-25 16:53:49',59,25),
(37,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,26),
(38,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,27),
(39,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,28),
(40,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,29),
(41,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,30),
(42,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,31),
(43,'Sarajevo','17000',33033033,'2021-04-10 13:19:04',59,32),
(44,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,17),
(45,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,18),
(46,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,19),
(47,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,20),
(48,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,21),
(49,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,22),
(50,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,25),
(51,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,26),
(52,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,27),
(53,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,28),
(54,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,29),
(55,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,30),
(56,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,31),
(57,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,32),
(58,'Sarajevo','17000',33033033,'2021-05-01 21:29:17',59,33),
(59,'Sarajevo','17000',33033033,'2021-05-02 14:49:07',94,34),
(60,'Sarajevo','17000',33033033,'2021-05-02 17:30:01',94,34),
(61,'Sarajevo','17000',33033033,'2021-05-02 17:30:01',94,35),
(62,'Sarajevo','17000',33033033,'2021-05-02 17:40:56',94,34),
(63,'Sarajevo','17000',33033033,'2021-05-02 17:40:56',94,35),
(64,'Sarajevo','17000',33033033,'2021-05-02 17:40:56',94,36),
(65,'Sarajevo','17000',33033033,'2021-05-02 17:53:00',94,34),
(66,'Sarajevo','17000',33033033,'2021-05-02 17:53:00',94,35),
(67,'Sarajevo','17000',33033033,'2021-05-02 17:53:00',94,36),
(68,'Sarajevo','17000',33033033,'2021-05-02 17:53:00',94,37),
(69,'Sarajevo','17000',33033033,'2021-05-02 18:16:20',94,34),
(70,'Sarajevo','17000',33033033,'2021-05-02 18:16:20',94,35),
(71,'Sarajevo','17000',33033033,'2021-05-02 18:16:20',94,36),
(72,'Sarajevo','17000',33033033,'2021-05-02 18:16:20',94,37),
(73,'Sarajevo','17000',33033033,'2021-05-02 18:16:20',94,38),
(74,'Sarajevo','17000',33033033,'2021-05-02 18:16:20',94,39),
(75,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,34),
(76,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,35),
(77,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,36),
(78,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,37),
(79,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,38),
(80,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,39),
(81,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,40),
(82,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,41),
(83,'Sarajevo','17000',33033033,'2021-05-02 18:31:03',94,42),
(84,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,34),
(85,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,35),
(86,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,36),
(87,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,37),
(88,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,38),
(89,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,39),
(90,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,40),
(91,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,41),
(92,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,42),
(93,'Sarajevo','17000',33033033,'2021-05-02 18:48:18',94,43),
(94,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,34),
(95,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,35),
(96,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,36),
(97,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,37),
(98,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,38),
(99,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,39),
(100,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,40),
(101,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,41),
(102,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,42),
(103,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,43),
(104,'Sarajevo','17000',33033033,'2021-05-02 18:48:52',94,44),
(105,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,34),
(106,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,35),
(107,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,36),
(108,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,37),
(109,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,38),
(110,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,39),
(111,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,40),
(112,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,41),
(113,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,42),
(114,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,43),
(115,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,44),
(116,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,45),
(117,'Sarajevo','17000',33033033,'2021-05-02 19:04:09',94,46),
(118,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,34),
(119,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,35),
(120,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,36),
(121,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,37),
(122,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,38),
(123,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,39),
(124,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,40),
(125,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,41),
(126,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,42),
(127,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,43),
(128,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,44),
(129,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,45),
(130,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,46),
(131,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,47),
(132,'Sarajevo','17000',33033033,'2021-05-02 20:59:03',94,48),
(133,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,34),
(134,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,35),
(135,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,36),
(136,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,37),
(137,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,38),
(138,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,39),
(139,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,40),
(140,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,41),
(141,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,42),
(142,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,43),
(143,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,44),
(144,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,45),
(145,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,46),
(146,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,47),
(147,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,48),
(148,'Sarajevo','17000',33033033,'2021-05-02 21:07:57',94,49),
(149,'Sarajevo','17000',33033033,'2021-05-02 21:08:40',94,50),
(150,'Sarajevo','17000',33033033,'2021-05-02 21:23:00',94,51),
(151,'Sarajevo','17000',33033033,'2021-05-02 21:24:25',94,52),
(152,'Sarajevo','17000',33033033,'2021-05-02 21:24:25',94,53),
(153,'Sarajevo','17000',33033033,'2021-06-12 17:51:37',59,55),
(156,'Sarajevo','17000',33033033,'2021-06-12 20:26:20',59,58),
(157,'Sarajevo','17000',33033033,'2021-06-12 20:27:42',59,58),
(158,'Sarajevo','17000',33033033,'2021-06-12 20:29:05',59,58),
(159,'Sarajevo','17000',33033033,'2021-06-12 20:30:23',59,58),
(160,'Sarajevo','17000',33033033,'2021-06-12 20:30:49',59,58),
(161,'Sarajevo','71000',3362547,'2021-06-12 21:07:22',59,59),
(162,'Sarajevo','71000',3362547,'2021-06-12 22:02:05',59,60),
(163,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,23),
(164,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,24),
(165,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,61),
(166,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,64),
(167,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,65),
(168,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,66),
(169,'Sarajevo','7100',3362547,'2021-06-13 15:25:19',2,67),
(170,'Sarajevo','7100',3362547,'2021-06-13 15:34:19',2,68),
(172,'Sarajevo','71000',3362547,'2021-06-13 17:20:04',2,72),
(173,'Sarajevo','71000',3362547,'2021-06-13 17:23:29',2,73),
(174,'Sarajevo','71000',3362547,'2021-06-13 17:23:29',2,74),
(175,'Sarajevo','71000',3362547,'2021-06-13 17:23:29',2,75),
(176,'Sarajevo','71000',3362547,'2021-06-13 19:49:41',164,77),
(177,'Sarajevo','7100',3362547,'2021-06-18 11:23:53',2,80),
(178,'Sarajevo','7100',3362547,'2021-06-18 11:25:27',2,81),
(179,'Sarajevo','71000',3362547,'2021-06-18 12:14:10',172,83),
(180,'Sarajevo','71000',3362547,'2021-06-18 12:15:13',172,85),
(181,'Sarajevo','71000',3362547,'2021-06-25 13:01:22',110,89),
(182,'Sarajevo','17000',33033033,'2021-06-25 19:04:30',110,90),
(183,'Sarajevo','17000',33033033,'2021-06-25 19:19:21',110,90);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(512) COLLATE utf8_bin NOT NULL,
  `surname` varchar(512) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`surname`) values 
(1,'Naida_ADMIN','Fatic'),
(2,'Sanida','Fatic'),
(5,'Sunita','Bektasevic'),
(6,'Samija','Kustura'),
(7,'Lamija','Babović'),
(19,'ajla','smajic'),
(21,'ajla','smajic'),
(54,'name','surname'),
(55,'name','surname'),
(56,'name','surname'),
(57,'ajla','smajic'),
(58,'ajla','smajic'),
(59,'ajla','smajic'),
(60,'ajla','smajic'),
(61,'work','work'),
(62,'work','work'),
(63,'name1','surnam1e'),
(71,'Naida','Fatic'),
(72,'Naida','Fatic'),
(73,'Naida','Fatic'),
(74,'Naida','Fatic'),
(75,'name','surname'),
(76,'name','surname'),
(77,'name','surname'),
(78,'name','surname'),
(79,'name','surname'),
(80,'name','surname'),
(81,'name','surname'),
(82,'naida.fatic','fff'),
(83,'name','surname'),
(84,'name','surname'),
(85,'name','surname'),
(87,'naiad','fatic'),
(88,'Naida','Fatic'),
(89,'naida','fatic'),
(90,'name','surname'),
(91,'name','surname'),
(92,'naida','fatic'),
(93,'naida','fatic'),
(94,'naida','fatic'),
(95,'naida','fatic'),
(96,'naida','fatic'),
(97,'naida','fatic'),
(98,'naida','fatic'),
(99,'naida','fatic'),
(100,'naida','fatic'),
(101,'naida','fatic'),
(102,'naida','fatic'),
(103,'naida','fatic'),
(104,'naida','fatic'),
(105,'naida','fatic'),
(106,'naida','fatic'),
(107,'naida','fatic'),
(108,'naida','fatic'),
(109,'naida','fatic'),
(110,'naida','fatic'),
(111,'naida','fatic'),
(112,'naida','fatic'),
(113,'naida','fatic'),
(114,'naida','fatic'),
(115,'naida','fatic'),
(116,'naida','fatic'),
(117,'naida','fatic'),
(118,'naida','fatic'),
(119,'naida','fatic'),
(120,'naida','fatic'),
(121,'naida','fatic'),
(122,'naida','fatic'),
(123,'naida','fatic'),
(124,'name','surname'),
(125,'Naida ','fatic'),
(126,'Naida Fatic','fatic'),
(127,'Naida ','fatic'),
(128,'Naida','Fatic'),
(129,'Naida ','fatic'),
(130,'name','surname'),
(131,'Naida ','fatic'),
(132,'name','surname'),
(133,'Naida ','Fatic'),
(134,'test','fatic'),
(135,'test','fatic'),
(136,'new name','Fatic'),
(137,'test','fatic'),
(138,'21','1¸2'),
(139,'new name','1¸2'),
(140,'1','1'),
(141,'1','1'),
(142,'11','1'),
(143,'test','zrst'),
(144,'test','test'),
(145,'name','surname'),
(146,'test','test'),
(147,'acc','acc'),
(148,'f','f'),
(149,'Naida','Fatic'),
(150,'Naida ','Fatic'),
(151,'Naida',' Fatic'),
(152,'Naida ','Fatic'),
(153,'Naida ','Fatic'),
(154,'Mirza','Krupic'),
(155,'Mirza','Krupic'),
(156,'Mirza','Krupic'),
(157,'Mirza','Krupic'),
(158,'Ajdin ','Pasic'),
(159,'Naida','Fatic'),
(160,'Naida','Fatic'),
(161,'Naida','Fatic'),
(162,'name','surname'),
(163,'name','surname'),
(164,'name','surname'),
(165,'name','surname');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;