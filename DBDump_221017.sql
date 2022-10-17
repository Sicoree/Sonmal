-- MariaDB dump 10.19  Distrib 10.9.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: sonmal
-- ------------------------------------------------------
-- Server version	10.9.2-MariaDB-1:10.9.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Sequence structure for `hibernate_sequence`
--

DROP SEQUENCE IF EXISTS `hibernate_sequence`;
CREATE SEQUENCE `hibernate_sequence` start with 1 minvalue 1 maxvalue 9223372036854775806 increment by 1 cache 1000 nocycle ENGINE=InnoDB;
SELECT SETVAL(`hibernate_sequence`, 1001, 0);

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `seq` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES
(1,'병원'),
(2,'관공서'),
(3,'식당'),
(4,'교통'),
(5,'생활'),
(6,'업무');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt_token`
--

DROP TABLE IF EXISTS `jwt_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jwt_token` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_seq` int(11) NOT NULL,
  PRIMARY KEY (`seq`),
  UNIQUE KEY `UK_gnv88uulpnr9qkab7mryxgmay` (`user_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt_token`
--

LOCK TABLES `jwt_token` WRITE;
/*!40000 ALTER TABLE `jwt_token` DISABLE KEYS */;
INSERT INTO `jwt_token` VALUES
(9,'eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI5IiwiaWF0IjoxNjY1NDc0MDk2LCJleHAiOjE2NjU0NzU4OTZ9.G-xtMmcAO9ZjNuufmILdwKM4_T9yXUZ-oHeG18ENeGpf4T9hFWVjiRqSQwfaceRtxIuoSPiiHuywvnxFdV3hOg','eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI5IiwiaWF0IjoxNjY1NDc0MDk2LCJleHAiOjE2NjY2ODM2OTZ9.xkgUOx2NSxcGMwfuSUhTWEzm4ACZgjYxHTRS_O-C_hdNAO87irc3_sSfV2bUOurs9MorJVmm--xU_aLP61mCOA',9),
(10,'eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIxMCIsImlhdCI6MTY2NTkyOTE2MywiZXhwIjoxNjY1OTMwOTYzfQ.3xwAJvj4uQDJg8tm5rC0Y6xVmsR4qXLsueXVHzD8miC4L6YsiXq8_M_Gsmqyt_5TjGhB24oNfjSfTA1gbjBzcw','eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIxMCIsImlhdCI6MTY2NTkyOTE2MywiZXhwIjoxNjY3MTM4NzYzfQ.T-5dwFz3cr9IupXaMxDBr4MXUHg5bUttwDusL5t8w7NfTxzdntgUhPS47PWWw4-mxP3piWwYSok_ZsMqKQLM7Q',10),
(14,'eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIxNCIsImlhdCI6MTY2NTA5MzA4OCwiZXhwIjoxNjY1MDk0ODg4fQ.46l57_tCkv4bQQrGiyhU4G-gcfPFMqISHa8atJB5g9c94mgB8zSCVGiL4f7ExKqNI0b6VlVJ5jjDcQjgbkPNiw','eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIxNCIsImlhdCI6MTY2NTA5MzA4OCwiZXhwIjoxNjY2MzAyNjg4fQ.qJv8wi5Br4XSqohKzlZ0LXlmUZiCI9e91hUHk1gHqg-4vhXVAUONd9W2xBcquKkEcDGVLez0rMkGxyHJr0f5lA',14),
(15,'eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIxNSIsImlhdCI6MTY2NTAzMTYzNywiZXhwIjoxNjY1MDMzNDM3fQ.rZynIRoxQBDFSmBYus7lblMpq1h--JjxZbkzjEaefxzwQlt8CJFG6xEbRtqxWSvUnsYSlFX0evZ9-i6_85ofCg','eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIxNSIsImlhdCI6MTY2NTAzMTYzNywiZXhwIjoxNjY2MjQxMjM3fQ.1V7zUa99miIJTaCEVB_D1qechywOYgwzjKGux9yOTGQJavc60XCaI6Yl1cojqIf0Lbf1ofdCafZ5tCGn5snr6g',15),
(32,'eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzMiIsImlhdCI6MTY2NDk3Mjg3MCwiZXhwIjoxNjY0OTc0NjcwfQ.C-V4vbR8IZFzPX_AAHLt8c8qb9KXwFDQ05VNJ4j23Zc8mhduzzGpSVSnPB4nR2zfShrd0H7mu7ZwtjtkYWIXIg','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzMiIsImlhdCI6MTY2NDk3Mjg3MCwiZXhwIjoxNjY2MTgyNDcwfQ.Hmeo8MPeyBWaTh4T-wKtDWGQSs4ROcA3F8A2pKWFb2O80c6gP655WSOgxRkwmGNh4NpKsEmTkEMA-dJ7TnYvyg',32),
(37,'eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzNyIsImlhdCI6MTY2NDgwMTIwNywiZXhwIjoxNjY0ODAzMDA3fQ.m2sg1bw9emv1lafrff3PvFriAKGY-O0HGVPOZWniEEirqhN3QJ7QYeQ_TlSiUT6e_XG9I8t68zlwhOaehdpidQ','eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzNyIsImlhdCI6MTY2NDgwMTIwNywiZXhwIjoxNjY2MDEwODA3fQ.aiR5pROwHP7c0MYqsDCAmtckSl8uDhNmZbFLgcts41Q6rAX6Zyx3MBRTGeuHENtK5w_S8gS_Q-15X_l9k3Kl4Q',37),
(38,'eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzOCIsImlhdCI6MTY2NDg3MDE3NCwiZXhwIjoxNjY0ODcxOTc0fQ.qmTpqt5UC1iIpcSV8a5-M0leOU2UGW5l_uBB1ojlRKEMlGkgI2hLnEi0cs7QGLC7_Gpmo3Nnxp46BQYxRl7IIA','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzOCIsImlhdCI6MTY2NDg3MDE3NCwiZXhwIjoxNjY2MDc5Nzc0fQ.ajfIBk5fg5TWgIJLkXTypggQLX77Y2Ut0aRaEjU0dxuoi48WBZOTWU8ubt7idCUqsAGfYg4Y7acguml-Trd_rg',38),
(39,'eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzOSIsImlhdCI6MTY2NTk3MDA0MCwiZXhwIjoxNjY1OTcxODQwfQ.JvaWc4midol89E66U5AWYdVTpDcwfGDLHHTLe1Gim68slIVsrGubz4r3XHEsY5_rffJ_sozc6YWDTYXJBdbjWw','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiIzOSIsImlhdCI6MTY2NTk3MDA0MCwiZXhwIjoxNjY3MTc5NjQwfQ.xoLXvMftbz6wJDphWyFaWJsdHJV75d5OcitST0MkUz-I8FouIFeWuAjomnNit3jFgC6lr-JsCppfZFfxTidxkA',39),
(41,'eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0MSIsImlhdCI6MTY2NTU1NDMwNywiZXhwIjoxNjY1NTU2MTA3fQ.coKwwF7IJaPy-auvfYx3YpUIJA35t7PG4I1nA3fvzWSnskSZyzxLwvKydMBcioqFQiHBan2QstPFDZNnDAkFqQ','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0MSIsImlhdCI6MTY2NTU1NDMwNywiZXhwIjoxNjY2NzYzOTA3fQ.MHKNecTWJEJlKh5njARrFzRSDMflKOfdWFb0_wXYoUcLh0kFeCfSDc2buApoNP0FYAqhX-vLCBlG9yu4Waxwzg',41),
(42,'eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0MiIsImlhdCI6MTY2NTA2MjQ2MCwiZXhwIjoxNjY1MDY0MjYwfQ.RXGK79597M3cnV8dwHAymFffn-iPL2hOPX0q67hibufyzQeD0KMjxWkpre9lrHd9LEovE4qzbeIuvajwYuKTOw','eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0MiIsImlhdCI6MTY2NTA2MjQ2MCwiZXhwIjoxNjY2MjcyMDYwfQ.macWlZdT92-9PbF1xm0w4veLYw0hLppX8cl4u3Ud5cpExdQsbjhe4FI2L8DjLdv83n8Mwo7YJ7R8G0kDzScn0A',42),
(43,'eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0MyIsImlhdCI6MTY2NTQ5Nzg4MSwiZXhwIjoxNjY1NDk5NjgxfQ.WwfELRFMloaAhSEq_l4AxLJENAGA_Z-RIrxtbkR2zMrl8mKE-jeVw6A-b6TblTBNesyRLoKryGnesYdLkP3Wmg','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0MyIsImlhdCI6MTY2NTQ5Nzg4MSwiZXhwIjoxNjY2NzA3NDgxfQ.AS0msJxAAs813-5sQ2mF6QMTw6VE75MQx6L_uL8YwNfNDcLw2PU_fJXkW_qkOTKN2AQmDLTPfSR8fJ2AgYLS3A',43),
(44,'eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NCIsImlhdCI6MTY2NTE0MjAxMiwiZXhwIjoxNjY1MTQzODEyfQ.geuXa-tu_9WJgIg5rT_cgt_rdeN4f5czkR09xqEHhvutagIf4DeWXlib1codWAxuVNP9NeGicKxQUAkUd1E-Ow','eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NCIsImlhdCI6MTY2NTE0MjAxMiwiZXhwIjoxNjY2MzUxNjEyfQ.obos8oZBgQkwnxpiE89nuJ0-cTOYqYPE4GiOQYN79piubi5OAAZodiaROxlBnUcOIpT4ye0IZ32CJr_Y3Io48w',44),
(45,'eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NSIsImlhdCI6MTY2NTIyMDM4MywiZXhwIjoxNjY1MjIyMTgzfQ.0WQ_OO8si_DcPe4h-JhuO3htdpD_FMtrlHKfn2j-9nY9UptiyF-GULU_JgBOZ3HikVZFzWES9eHySNZpDjj3SA','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NSIsImlhdCI6MTY2NTIyMDM4MywiZXhwIjoxNjY2NDI5OTgzfQ.n1nQFVjWbpo9Gufub-uhu4_Bfj8bef9ytdJtfSDYALNuT0N0B17hLwEdsnwx4l4QZycyy5vfHp8OnT4RTASP6g',45),
(46,'eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NiIsImlhdCI6MTY2NTIzOTMzOCwiZXhwIjoxNjY1MjQxMTM4fQ.Tl3giLeoFqw4mgF2i7p_EEbC7oFUuVX6PTvyz-ms3pNOiebu0L565db_Ja3AMlsNTXBPLIDSJ898tGv9OhCEkw','eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NiIsImlhdCI6MTY2NTIzOTMzOCwiZXhwIjoxNjY2NDQ4OTM4fQ.tyInFnxMTi4by1ToBb7SZDUKbDTucP0IDjqfpWRMNQgo6i7pADXqVhSqQ3weFssqjIZACSqCeENN8hLtKQaBnQ',46),
(47,'eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NyIsImlhdCI6MTY2NTczODg2NiwiZXhwIjoxNjY1NzQwNjY2fQ.z5uyqKPt-h-uyFRZRPATSSXfw3No9qPh3Gt7UclCg0U2t8sDN2R_zAe2lu7iXA9gxdiK-hKG6GpscFrFwfyl8g','eyJraWQiOiJrZXkyIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0NyIsImlhdCI6MTY2NTczODg2NiwiZXhwIjoxNjY2OTQ4NDY2fQ.y5n67Gadfmb3o6oxc2p6SiAsbiRb3OWNKCUWccnxCeqb85AX0UVhNFH3JpHCAnEA-ObOafKQZNCoiwCEQ4j5bA',47),
(48,'eyJraWQiOiJrZXkzIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0OCIsImlhdCI6MTY2NTk4NTc5OCwiZXhwIjoxNjY1OTg3NTk4fQ.cYJZbIsRNc4DErjKViZrUQFPB1pCKNhuqZ4uUH_UuVxo-th-mQx-yCiZvwfn_kdFxNsuVLwMybFymdhk5N11Lw','eyJraWQiOiJrZXkxIiwiYWxnIjoiSFM1MTIifQ.eyJzdWIiOiI0OCIsImlhdCI6MTY2NTk4NTc5OCwiZXhwIjoxNjY3MTk1Mzk4fQ.bwRHIgqAvWGfS7tTaVviExabAoAQK4G41LR_31Xwko6Qq2Di-qu6j8Z7HPVw_0PpM7W8zZU-wjqVoLHz0LzqFA',48);
/*!40000 ALTER TABLE `jwt_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_macro`
--

DROP TABLE IF EXISTS `sign_macro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign_macro` (
  `seq` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` bigint(20) DEFAULT NULL,
  `icon` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_dttm` datetime(6) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_seq` bigint(20) DEFAULT NULL,
  `video_file_id` bigint(20) DEFAULT NULL,
  `category_seq` bigint(20) DEFAULT NULL,
  `sign_src` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `FKluwps7ehupho5kx3jt33irxpo` (`category_seq`),
  CONSTRAINT `FKluwps7ehupho5kx3jt33irxpo` FOREIGN KEY (`category_seq`) REFERENCES `category` (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_macro`
--

LOCK TABLES `sign_macro` WRITE;
/*!40000 ALTER TABLE `sign_macro` DISABLE KEYS */;
INSERT INTO `sign_macro` VALUES
(1,'에드',0,'🔍','2022-09-29 07:52:50.707876','에드',3,1,1,NULL),
(2,'에드2',0,'🍒','2022-09-29 07:54:42.779158','에드2',3,2,1,NULL),
(3,'에드3',0,'🥝','2022-09-29 08:13:24.522140','에드3',3,3,1,NULL),
(4,'에그1',0,'🍌','2022-09-29 08:17:17.722823','에그1',3,4,1,NULL),
(5,'퍼',0,'🍍','2022-09-29 08:22:25.676223','ㅗㅓ',3,5,1,NULL),
(6,'ㄷㅇㄷㄷ',0,'🧉','2022-09-29 08:25:32.864380','ㅏㅏㅏㅏㅏ',3,6,1,NULL),
(7,'유마ㅏㅁ',0,'🍎','2022-09-29 08:28:59.939285','추우ㅏㄴ',3,7,1,NULL),
(8,'888',0,'🍋','2022-09-29 08:29:51.363802','888',3,8,1,NULL),
(9,'99',0,'✨️','2022-09-29 08:30:22.403070','99',3,9,1,NULL),
(10,'10',0,'🎈','2022-09-29 08:30:46.563112','10',3,10,1,NULL),
(11,'난ㅂ1',0,'🧧','2022-09-29 08:31:21.420601','탄11',3,11,1,NULL),
(12,'ㅗㅓㅓ',0,'🧨','2022-09-29 08:44:09.644514','숗',3,12,1,NULL),
(13,'15',0,'🎉','2022-09-29 08:48:31.259545','15',3,13,1,NULL),
(14,'saefasf',0,'😎','2022-09-30 06:32:19.955610','gsa',7,14,1,NULL),
(15,NULL,0,NULL,'2022-09-30 06:36:11.278661',NULL,7,NULL,NULL,NULL),
(16,'dmd?>',0,'😅','2022-09-30 06:36:55.036403','dm?',7,15,1,NULL),
(17,NULL,0,NULL,'2022-09-30 06:41:41.978913',NULL,7,NULL,NULL,NULL),
(18,NULL,0,NULL,'2022-09-30 06:42:40.872668',NULL,7,NULL,NULL,NULL),
(19,'해위',0,'😉','2022-09-30 07:01:37.026059','하위',2,16,1,NULL),
(20,NULL,0,NULL,'2022-09-30 07:06:09.199671',NULL,2,NULL,NULL,NULL),
(21,'content3',0,'icon3','2022-09-30 07:29:34.987278','novideo hi',7,NULL,1,NULL),
(22,'content3',0,'icon3','2022-09-30 07:30:09.123178','novideo hi',7,NULL,1,NULL),
(23,'content3',0,'icon3','2022-09-30 07:30:43.132394','novideo hi',7,NULL,1,NULL),
(24,'content3',0,'icon3','2022-09-30 07:31:09.449192','novideo hi',7,NULL,1,NULL),
(25,NULL,0,NULL,'2022-09-30 07:32:18.724780',NULL,7,NULL,NULL,NULL),
(26,'555',0,'😂','2022-09-30 07:35:44.842925','551',7,NULL,1,NULL),
(27,'title is it',0,'😗','2022-09-30 07:37:42.112495','title is it',7,NULL,1,NULL),
(28,'content3',0,'icon3','2022-09-30 07:38:31.715560','novideo hi',7,NULL,1,NULL),
(29,'saefsaf',0,'☺️','2022-09-30 07:45:50.027899','ggggg',7,NULL,1,NULL),
(30,'have you??',0,'😎','2022-09-30 07:46:28.535197','have you think it??',7,NULL,1,NULL),
(39,'qq1',0,'🙂','2022-09-30 11:18:36.904738','qq7',11,NULL,1,NULL),
(40,'qq1',0,'🙂','2022-09-30 11:18:39.847598','qq8',11,NULL,1,NULL),
(41,'safasef',0,'😋','2022-09-30 11:24:07.904107','sfasef1',11,NULL,1,NULL),
(42,'safasef',0,'😋','2022-09-30 11:24:12.309093','sfasef2',11,NULL,1,NULL),
(44,'safasef',0,'😋','2022-09-30 11:24:18.685725','sfasef4',11,NULL,1,NULL),
(45,'safasef',0,'😋','2022-09-30 11:24:22.438358','sfasef5',11,NULL,1,NULL),
(46,'safasef',0,'😋','2022-09-30 11:24:26.055265','sfasef6',11,NULL,1,NULL),
(47,'safasef',0,'😋','2022-09-30 11:24:31.562112','sfasef7',11,NULL,1,NULL),
(48,'safasef',0,'😋','2022-09-30 11:24:36.400058','sfasef8',11,NULL,1,NULL),
(49,'safasef',0,'😋','2022-09-30 11:24:40.834368','sfasef9',11,NULL,1,NULL),
(50,'safasef',0,'😋','2022-09-30 11:24:47.265573','sfasef10',11,NULL,1,NULL),
(51,'aa',0,'😍','2022-09-30 11:25:15.539396','aa',11,NULL,1,NULL),
(52,'aa',0,'😍','2022-09-30 11:25:20.246584','aa4',11,NULL,1,NULL),
(53,'aa',0,'😍','2022-09-30 11:25:24.110279','aa45',11,NULL,1,NULL),
(54,'aa',0,'😍','2022-09-30 11:25:26.981803','aa456',11,NULL,1,NULL),
(55,'content3',0,'icon3','2022-09-30 13:09:45.786817','novideo hi',11,NULL,1,NULL),
(56,'content3',0,'icon3','2022-09-30 13:09:46.740126','novideo hi',11,NULL,1,NULL),
(57,'content3',0,'icon3','2022-09-30 13:09:47.943293','novideo hi',11,NULL,1,NULL),
(58,'content3',0,'icon3','2022-09-30 13:10:02.183470','novideo hi',11,NULL,1,NULL),
(59,'content3',0,'icon3','2022-09-30 13:11:01.291332','novideo hi',11,18,1,NULL),
(62,'gg',0,'😎','2022-09-30 13:46:08.250623','bg',11,NULL,6,NULL),
(63,'zzzz2',0,'🤣','2022-09-30 13:48:07.412918','zzzz2',11,NULL,2,NULL),
(64,'테스트',0,'😄','2022-09-30 13:57:33.749049','테스트',10,21,1,NULL),
(66,'ggg',0,'😎','2022-09-30 14:05:20.132299','ggg',11,NULL,4,NULL),
(67,'saas',0,'😍','2022-09-30 14:08:26.334377','asaa',11,22,4,NULL),
(68,'1111',0,'😃','2022-09-30 14:51:41.932287','1111111',11,NULL,1,NULL),
(69,'1111',0,'😃','2022-09-30 14:51:54.782256','1111111',11,23,1,NULL),
(70,'2222',0,'😄','2022-09-30 14:52:18.303152','2222',11,NULL,2,NULL),
(71,'333',0,'🙂','2022-09-30 14:53:34.227324','333',11,NULL,3,NULL),
(72,'444',0,'🙂','2022-09-30 14:53:40.758619','444',11,NULL,3,NULL),
(73,'555',0,'🙂','2022-09-30 14:53:47.991114','555',11,NULL,3,NULL),
(74,'666',0,'🙂','2022-09-30 14:53:54.891499','666',11,NULL,3,NULL),
(76,'6',0,'😎','2022-09-30 14:54:55.619023','666',11,NULL,6,NULL),
(77,'saefasf',0,'😗','2022-09-30 15:01:23.803244','fafa',11,NULL,6,NULL),
(78,'fff',0,'😍','2022-09-30 15:11:12.106630','fff',11,NULL,6,NULL),
(79,'ggg',0,'😄','2022-09-30 15:13:31.409183','ggg',11,NULL,6,NULL),
(80,'gggg',0,'😘','2022-09-30 15:16:14.456559','gggg1',11,NULL,6,NULL),
(81,'아이스 아메리카노 주세요.',0,'☕️','2022-09-30 15:23:17.900606','아이스 아메리카노',13,NULL,6,NULL),
(82,'123',0,'😍','2022-09-30 15:24:24.483279','123',11,NULL,6,NULL),
(83,'gggg',0,'ase','2022-09-30 15:26:31.709411','ggg',11,NULL,6,NULL),
(84,'gg',0,'😎','2022-09-30 15:38:01.494081','gg',11,NULL,6,NULL),
(85,'1111',0,'😋','2022-09-30 15:45:22.754863','aaa1',11,NULL,1,NULL),
(86,'134',0,'😍','2022-09-30 15:45:42.096180','3414',11,NULL,6,NULL),
(87,'xzvdxzdv',0,'😄','2022-09-30 15:55:22.079507','dvvzd',11,NULL,6,NULL),
(88,'444',0,'🙂','2022-09-30 15:56:32.874393','444',11,NULL,2,NULL),
(90,'asefas',0,'😋','2022-09-30 16:06:50.740217','asf',11,NULL,3,NULL),
(91,'333',0,'😍','2022-10-01 16:58:07.411966','333',16,NULL,1,NULL),
(92,'444',0,'😚','2022-10-01 16:58:26.206117','444',16,NULL,4,NULL),
(93,'15',0,'😘','2022-10-01 17:01:38.081463','15',17,NULL,3,NULL),
(94,'3',0,'☺️','2022-10-01 17:02:26.275548','3',17,NULL,3,NULL),
(95,'4',0,'😄','2022-10-01 17:02:40.535976','4',17,NULL,4,NULL),
(96,'5',0,'😗','2022-10-01 17:02:56.843550','5',17,NULL,5,NULL),
(97,'6',0,'😅','2022-10-01 17:03:07.977052','6',17,NULL,6,NULL),
(98,'333',0,'😆','2022-10-01 17:04:34.223667','333',17,NULL,4,NULL),
(99,'444',0,'😙','2022-10-01 17:04:49.221428','444',17,NULL,3,NULL),
(100,'gg',0,'😋','2022-10-01 21:40:39.260124','gg',25,NULL,1,NULL),
(101,'33',0,'😍','2022-10-01 21:44:46.985995','33',25,NULL,1,NULL),
(102,'333',0,'😄','2022-10-01 21:45:02.666367','333',25,NULL,4,NULL),
(103,'aa',0,'🙂','2022-10-01 21:47:43.668338','a',25,NULL,6,NULL),
(104,'aa',0,'🙂','2022-10-01 21:48:02.231468','a1',25,24,6,NULL),
(105,'aaa',0,'😋','2022-10-01 21:54:50.595875','aaa',25,NULL,1,NULL),
(106,'aaa',0,'😋','2022-10-01 21:55:06.429085','aaa',25,25,1,NULL),
(107,'fff',0,'😅','2022-10-01 22:08:13.001290','fff',25,NULL,2,NULL),
(108,'qwfe',0,'😘','2022-10-01 22:08:49.860815','ewqf',25,26,2,NULL),
(109,'ㅂ',0,'✨️','2022-10-01 22:14:54.152347','1',26,NULL,1,NULL),
(110,'11',0,'🎉','2022-10-01 22:18:45.301470','11',26,NULL,1,NULL),
(111,'111',0,'🎈','2022-10-01 22:19:14.328352','111',26,27,1,NULL),
(112,'56',0,'😄','2022-10-01 22:23:38.538052','456',26,NULL,2,NULL),
(113,'456',0,'😍','2022-10-01 22:23:59.945356','456',26,NULL,2,NULL),
(114,'456',0,'😘','2022-10-01 22:24:27.362863','456',26,28,2,NULL),
(115,'456',0,'🎇','2022-10-01 22:30:19.926935','456',26,29,2,NULL),
(116,'456',0,'🎈','2022-10-01 22:30:51.330854','456',26,30,2,NULL),
(117,'yh',0,'😘','2022-10-01 22:31:45.357978','gh',26,31,2,NULL),
(118,'qqq',0,'😍','2022-10-01 22:33:21.575183','qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq',26,NULL,6,NULL),
(121,'aa',0,'😃','2022-10-01 23:32:49.371805','aaaaaaaaaaaaaaaaaaaa',27,NULL,4,NULL),
(122,'ㅎㅎ',0,'🎑','2022-10-02 10:17:14.451101','ㅎㅎ',28,33,1,NULL),
(123,'11',0,'☺️','2022-10-02 22:45:44.766079','11',30,34,1,NULL),
(124,'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq',0,'😘','2022-10-02 23:21:18.981999','222',30,35,2,NULL),
(125,'22222222222222222222222222222222222222222222222222222222222222',0,'😄','2022-10-02 23:35:08.192137','222222222222222222222222',30,NULL,2,NULL),
(126,'1',0,'😎','2022-10-03 05:55:28.404168','1',30,NULL,1,NULL),
(127,'a',0,'😎','2022-10-03 05:57:57.194531','a',30,NULL,1,NULL),
(128,'11',0,'😎','2022-10-03 06:17:30.591955','11',31,NULL,1,NULL),
(138,'11',0,'🙂','2022-10-03 06:50:36.777857','11',32,37,6,NULL),
(147,'4',0,'🎃','2022-10-03 08:26:55.644262','4',32,NULL,3,NULL),
(150,'ㅎㅎ',0,'🎇','2022-10-03 08:30:18.405339','ㅎㅎ',32,NULL,3,NULL),
(151,'ㅎㅎㅎㅎ',0,'🧨','2022-10-03 08:39:02.145791','ㅎㅎㅎㅎ',32,46,3,NULL),
(153,'12',0,'🎃','2022-10-03 08:48:58.281632','11',32,NULL,5,NULL),
(154,'777',0,'🧨','2022-10-03 08:52:11.441116','6668',32,48,5,NULL),
(156,'6767',0,'🎐','2022-10-03 08:53:17.069460','6767',32,50,5,NULL),
(157,'67757657',0,'🎑','2022-10-03 08:57:28.307715','567567567',32,51,5,NULL),
(158,'안녕하세요',0,'😁','2022-10-03 08:57:40.566456','안',10,52,1,NULL),
(166,'11',0,'🎎','2022-10-03 09:45:58.450279','11',32,NULL,1,NULL),
(167,'123',0,'🎁','2022-10-03 10:25:27.796166','123',32,57,1,NULL),
(168,'66667',0,'🎈','2022-10-03 10:27:21.790729','666667',32,58,1,NULL),
(169,'6',0,'🧧','2022-10-03 10:28:25.062680','5',32,59,1,NULL),
(170,'5',0,'🎐','2022-10-03 10:29:57.348439','5',32,60,1,NULL),
(171,'content3',0,'icon3','2022-10-03 11:06:08.320172','novideo hi',32,61,1,NULL),
(172,'content3',0,'icon3','2022-10-03 11:06:18.091403','novideo hi',32,62,1,NULL),
(173,'ggg',0,'🧨','2022-10-03 11:07:16.542441','ggg',32,63,6,NULL),
(174,'10',0,'🧨','2022-10-03 11:08:08.808510','10',32,64,6,NULL),
(176,'content3',0,'icon3','2022-10-03 11:36:25.384093','novideo hi',32,66,1,NULL),
(177,'content3',0,'icon3','2022-10-03 11:37:21.510529','novideo hi',32,67,1,NULL),
(178,'content3',0,'icon3','2022-10-03 11:41:55.659250','novideo hi',32,68,1,NULL),
(179,'content3',0,'icon3','2022-10-03 11:43:43.831391','novideo hi',32,69,1,NULL),
(180,'content3',0,'icon3','2022-10-03 11:43:48.733528','novideo hi',32,70,1,NULL),
(182,'content3',0,'icon3','2022-10-03 11:45:58.652942','novideo hi',32,71,1,NULL),
(183,'아메리카노 따뜻한 거 Tall 사이즈로 주세요. ',0,'🤎','2022-10-04 09:38:55.987252','아메리카노',14,NULL,6,NULL),
(184,'구미역 가나요?',0,'🚅','2022-10-04 13:38:27.796114','구미역',14,NULL,4,NULL),
(185,'구미버스터미널 가나요?',0,'🚍','2022-10-04 13:38:48.748294','구미터미널',14,NULL,4,NULL),
(190,'다른 추천 메뉴 있나요?',0,'👍','2022-10-05 05:22:18.147512','추천 메뉴',14,NULL,3,NULL),
(199,'구미 터미널로 가주세요',0,'🚌','2022-10-05 23:59:47.237697','구미 터미널',10,NULL,4,NULL),
(200,'구미역으로 가주세요',0,'🚅','2022-10-06 00:00:07.783044','구미역',10,NULL,4,NULL),
(204,'삼겹살 1인분 주세요',0,'🍗','2022-10-06 01:58:40.383506','삼겹살',10,73,3,NULL),
(207,'아이스 아메리카노 주세요',0,'☆','2022-10-06 05:32:11.031619','아아',39,NULL,5,NULL),
(208,'오랜만입니다',0,'♡','2022-10-06 05:32:28.536806','오랜만입니다',39,NULL,5,NULL),
(213,'한용님 안녕하세요 !',0,'👋','2022-10-06 12:39:34.584377','인사',39,NULL,6,NULL),
(214,'한마디 부탁드립니다 ~',0,'👏','2022-10-06 12:40:46.745753','마무리',39,NULL,6,NULL),
(215,'취업해서 싸탈합시다 여러분~',0,'☆','2022-10-06 12:59:58.911990','취업하자',39,NULL,6,NULL),
(216,'특화 프로젝트 고생하셨습니다!',0,'😭','2022-10-06 13:55:34.552543','특화',41,NULL,6,NULL),
(217,'공깃밥 1인분 추가요~',0,'🍚','2022-10-06 18:01:33.991755','공깃밥',41,NULL,3,NULL),
(218,'콜라 하나만 주세요',0,'🍹','2022-10-06 18:02:29.717462','콜라',41,NULL,3,NULL),
(219,'여기 제일 가까운 버스 정류장이 어딘가요?',0,'🚏','2022-10-06 21:57:58.501092','버스정류장',14,75,4,NULL),
(220,'테스트',0,'🐴','2022-10-07 08:03:09.376120','테스트',43,76,4,NULL),
(221,'특화 프로젝트 고생하셨습니다!',0,'😃','2022-10-14 09:17:32.815337','특화 고생',10,NULL,5,NULL),
(222,'ㅂㅂ',0,'🐱','2022-10-17 05:55:47.532183','ㅂㅂ',48,77,1,NULL);
/*!40000 ALTER TABLE `sign_macro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_time` datetime(6) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(9,'ebjdev@naver.com','2022-09-30 08:37:03.959992',0,'NAVER'),
(10,'darkberry@naver.com','2022-09-30 08:37:04.258007',0,'KAKAO'),
(14,'nhee0410@naver.com','2022-09-30 16:42:02.185108',0,'NAVER'),
(15,'ebjdev@gmail.com','2022-09-30 19:51:10.716541',0,'KAKAO'),
(32,'mywayjh15@gmail.com','2022-10-03 06:21:41.207757',0,'KAKAO'),
(37,'woway2488@naver.com','2022-10-03 12:46:47.686344',0,'NAVER'),
(38,'nhee0410@naver.com','2022-10-04 07:56:14.747955',0,'KAKAO'),
(39,'qotlgus123@naver.com','2022-10-05 01:21:29.944622',0,'KAKAO'),
(41,'toy9910@naver.com','2022-10-06 13:14:46.037122',0,'KAKAO'),
(42,'toy9910@naver.com','2022-10-06 13:21:00.413491',0,'NAVER'),
(43,'chop97@naver.com','2022-10-07 07:53:28.982185',0,'KAKAO'),
(44,'rxplus2019rxplus2019@gmail.com','2022-10-07 11:26:52.533198',0,'KAKAO'),
(45,'polsook@hanmail.net','2022-10-08 07:14:19.931216',0,'KAKAO'),
(46,'rkdxlsk@hanmail.net','2022-10-08 14:28:58.001204',0,'KAKAO'),
(47,'hiko09@naver.com','2022-10-14 09:14:26.787150',0,'KAKAO'),
(48,'wkdrns3918@naver.com','2022-10-17 05:49:58.430407',0,'KAKAO');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_category`
--

DROP TABLE IF EXISTS `user_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_category` (
  `seq` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_seq` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category`
--

LOCK TABLES `user_category` WRITE;
/*!40000 ALTER TABLE `user_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_category_category_list`
--

DROP TABLE IF EXISTS `user_category_category_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_category_category_list` (
  `user_category_seq` bigint(20) NOT NULL,
  `category_list` bigint(20) DEFAULT NULL,
  KEY `FKqjf935d6ualknu30of3cxgtqe` (`user_category_seq`),
  CONSTRAINT `FKqjf935d6ualknu30of3cxgtqe` FOREIGN KEY (`user_category_seq`) REFERENCES `user_category` (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_category_category_list`
--

LOCK TABLES `user_category_category_list` WRITE;
/*!40000 ALTER TABLE `user_category_category_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_category_category_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_file`
--

DROP TABLE IF EXISTS `video_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_file` (
  `id` bigint(20) NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orig_filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_file`
--

LOCK TABLES `video_file` WRITE;
/*!40000 ALTER TABLE `video_file` DISABLE KEYS */;
INSERT INTO `video_file` VALUES
(1,'/home/files/b86d694f4f99fda216b2e8f39091e76a.mp4','b86d694f4f99fda216b2e8f39091e76a','20220929_165242.mp4'),
(2,'/home/files/9198c824798120086ccb9ddf76046ad9.mp4','9198c824798120086ccb9ddf76046ad9','20220929_165430.mp4'),
(3,'/home/files/3f5b7aa0b96639754531f4b3242f1f80.mp4','3f5b7aa0b96639754531f4b3242f1f80','20220929_171313.mp4'),
(4,'/home/files/8be5d6832381548249f00a5742c98fbc.mp4','8be5d6832381548249f00a5742c98fbc','20220929_171709.mp4'),
(5,'/home/files/5b34983b6c14fe9797ca8c4929d17e0e.mp4','5b34983b6c14fe9797ca8c4929d17e0e','20220929_172213.mp4'),
(6,'/home/files/390ece25c3838350cbef7e15e20a6047.mp4','390ece25c3838350cbef7e15e20a6047','20220929_172516.mp4'),
(7,'/home/files/81f3aae1aa10079688bef22ebf567287.mp4','81f3aae1aa10079688bef22ebf567287','20220929_172849.mp4'),
(8,'/home/files/3117f22ca01635c259625f04da08b681.mp4','3117f22ca01635c259625f04da08b681','20220929_172944.mp4'),
(9,'/home/files/835025cae510b68540042f1c4d8b725c.mp4','835025cae510b68540042f1c4d8b725c','20220929_173012.mp4'),
(10,'/home/files/30cd98225b8b17c7e8cb1e893837681b.mp4','30cd98225b8b17c7e8cb1e893837681b','20220929_173038.mp4'),
(11,'/home/files/a9736d05072fa78428ca357226f024e2.mp4','a9736d05072fa78428ca357226f024e2','20220929_173110.mp4'),
(12,'/home/files/eb66f44c80fedf91e4dd237e50d3341d.mp4','eb66f44c80fedf91e4dd237e50d3341d','20220929_174402.mp4'),
(13,'/home/files/7c3163730325826298487b3c404dcac5.mp4','7c3163730325826298487b3c404dcac5','20220929_174822.mp4'),
(14,'/home/files/83ae74b2da9ad72fbadef93c700d3b54.mp4','83ae74b2da9ad72fbadef93c700d3b54','20220930_063201.mp4'),
(15,'/home/files/aa36157764f0f5dbf847428a8300c2eb.mp4','aa36157764f0f5dbf847428a8300c2eb','20220930_063639.mp4'),
(16,'/home/files/7881646b914d3862878d479d80569dcb.mp4','7881646b914d3862878d479d80569dcb','20220930_160117.mp4'),
(18,'/home/files/a005122511a42aa87dd5aceef22dea13_de2126ad-fc4f-4678-9f17-7ec7f86db711.mp4','a005122511a42aa87dd5aceef22dea13_de2126ad-fc4f-4678-9f17-7ec7f86db711','webconfigcut.mp4'),
(21,'/home/files/4b794417a524483601ff38c24a303b85_28fd48c0-5ede-47a6-b973-8dd82c26ff18.mp4','4b794417a524483601ff38c24a303b85_28fd48c0-5ede-47a6-b973-8dd82c26ff18','20220930_225725.mp4'),
(22,'/home/files/ef6e70aa913e8dd8a3bf0ad0c7d04e24_dad9da96-0972-4850-a056-dbf75ac3dd53.mp4','ef6e70aa913e8dd8a3bf0ad0c7d04e24_dad9da96-0972-4850-a056-dbf75ac3dd53','20220930_140814.mp4'),
(23,'/home/files/e4512256519d9ab804f7d3e3def1cc21_ca25977e-af46-4696-a4f2-733955629583.mp4','e4512256519d9ab804f7d3e3def1cc21_ca25977e-af46-4696-a4f2-733955629583','20220930_145140.mp4'),
(24,'/home/files/6346944a74d0a1cb490ef264fe73a645_20ec9744-765b-46a3-bc62-c646d4aa7cb8.mp4','6346944a74d0a1cb490ef264fe73a645_20ec9744-765b-46a3-bc62-c646d4aa7cb8','20221001_214746.mp4'),
(25,'/home/files/4333deb9423fc119c234af64f22221d6_d0aded92-68dd-4f35-a9a0-48c0915bfa14.mp4','4333deb9423fc119c234af64f22221d6_d0aded92-68dd-4f35-a9a0-48c0915bfa14','20221001_215448.mp4'),
(26,'/home/files/e757f5582ce14939c8f1ce214b23ac88_91004243-8d29-491b-b9ea-f2890e77f3f5.mp4','e757f5582ce14939c8f1ce214b23ac88_91004243-8d29-491b-b9ea-f2890e77f3f5','20221001_220829.mp4'),
(27,'/home/files/48f662479321cb29e14dd8c8b2950264_def847ba-d709-42b3-8070-0a7cd01bf588.mp4','48f662479321cb29e14dd8c8b2950264_def847ba-d709-42b3-8070-0a7cd01bf588','20221002_071904.mp4'),
(28,'/home/files/9dcfefa6cfb0678358b96542be7cc9bd_64f5c3ed-9ff6-4599-baf5-d3fa363e185f.mp4','9dcfefa6cfb0678358b96542be7cc9bd_64f5c3ed-9ff6-4599-baf5-d3fa363e185f','20221001_222411.mp4'),
(29,'/home/files/87ad92b9cfc601300053e6776b10b0ba_ee268d46-0362-4703-b66f-fbae1f254c4e.mp4','87ad92b9cfc601300053e6776b10b0ba_ee268d46-0362-4703-b66f-fbae1f254c4e','20221002_073012.mp4'),
(30,'/home/files/b76c27d5796cc1890b2a6884583dbcad_73a6d8b1-2a51-4620-bb43-8bcec735ed8c.mp4','b76c27d5796cc1890b2a6884583dbcad_73a6d8b1-2a51-4620-bb43-8bcec735ed8c','20221002_073042.mp4'),
(31,'/home/files/f6dae6ef90e9678bc25646462e4f65b0_9809bc76-4e50-413c-a508-96ae0462779b.mp4','f6dae6ef90e9678bc25646462e4f65b0_9809bc76-4e50-413c-a508-96ae0462779b','20221001_223128.mp4'),
(32,'/home/files/bd01dc8c55f5087899edc59a6c494eae_034d96dc-68bb-49e2-aa13-70f179b82227.mp4','bd01dc8c55f5087899edc59a6c494eae_034d96dc-68bb-49e2-aa13-70f179b82227','20221001_232459.mp4'),
(33,'/home/files/666b91c6c000c07649d49af3f09a3e3a_5bc746e0-a81f-4f9a-973f-7f6dd03fa58d.mp4','666b91c6c000c07649d49af3f09a3e3a_5bc746e0-a81f-4f9a-973f-7f6dd03fa58d','20221002_191704.mp4'),
(34,'/home/files/e0c53c3d4b594991de27510e263dedbd_6c2f40ba-b278-458c-83a3-9b442fa3acb8.mp4','e0c53c3d4b594991de27510e263dedbd_6c2f40ba-b278-458c-83a3-9b442fa3acb8','20221002_224532.mp4'),
(35,'/home/files/f6bcbfa8d71efdf832fb75e954a9bf29_2378220c-0d1a-4531-ad99-17318b93fcc7.mp4','f6bcbfa8d71efdf832fb75e954a9bf29_2378220c-0d1a-4531-ad99-17318b93fcc7','20221002_232103.mp4'),
(37,'/home/files/60fb162b07f78b6dad4e7e2a4f754c61_9346002b-e8fa-4a0e-8205-fc1836332d79.mp4','60fb162b07f78b6dad4e7e2a4f754c61_9346002b-e8fa-4a0e-8205-fc1836332d79','20221003_065023.mp4'),
(46,'/home/files/a417970c17963dbc31fe9fdcff553cdf_a4e3f3c1-f94d-48b9-8ab6-0c3826fcee4e.mp4','a417970c17963dbc31fe9fdcff553cdf_a4e3f3c1-f94d-48b9-8ab6-0c3826fcee4e','20221003_173849.mp4'),
(48,'/home/files/551c8bec7723fe00d15fddd30dd02317_1fe34e48-9eef-4f19-972e-9dcad706510b.mp4','551c8bec7723fe00d15fddd30dd02317_1fe34e48-9eef-4f19-972e-9dcad706510b','20221003_175159.mp4'),
(50,'/home/files/a40213bf9ceeb8c6ead36569495275ed_8deb4131-4616-4c64-9153-c6fabcfc15cc.mp4','a40213bf9ceeb8c6ead36569495275ed_8deb4131-4616-4c64-9153-c6fabcfc15cc','20221003_175252.mp4'),
(51,'/home/files/b35b1bf5ce94320328dbd39ec6ce05b8_ed32ccef-aa49-458d-b7b2-1577652a1d15.mp4','b35b1bf5ce94320328dbd39ec6ce05b8_ed32ccef-aa49-458d-b7b2-1577652a1d15','20221003_175712.mp4'),
(52,'/home/files/af7f32e4768424eb172885dc041fd5de_484fe85e-ab65-4120-8127-1b5d721537c7.mp4','af7f32e4768424eb172885dc041fd5de_484fe85e-ab65-4120-8127-1b5d721537c7','20221003_175723.mp4'),
(57,'/home/files/39e42e6cf60371a03f67b350ee789d79_84da0643-7c4a-4805-a9bc-a04052adc82b.mp4','39e42e6cf60371a03f67b350ee789d79_84da0643-7c4a-4805-a9bc-a04052adc82b','20221003_192459.mp4'),
(58,'/home/files/f789f127fc9d652a8a14689a561a711c_e41a3369-dcf7-465b-8894-651d4b877831.mp4','f789f127fc9d652a8a14689a561a711c_e41a3369-dcf7-465b-8894-651d4b877831','20221003_192654.mp4'),
(59,'/home/files/dff3368b72942eef606828ebd5d4ed83_3f208def-8f8d-4fc2-809d-bba8bd684438.mp4','dff3368b72942eef606828ebd5d4ed83_3f208def-8f8d-4fc2-809d-bba8bd684438','20221003_192756.mp4'),
(60,'/home/files/3da81fcb3fe7d1d91686ce219dba2e8d_54fc5bbd-d480-4b77-a355-d391389acb0b.mp4','3da81fcb3fe7d1d91686ce219dba2e8d_54fc5bbd-d480-4b77-a355-d391389acb0b','20221003_192940.mp4'),
(61,'/home/files/a005122511a42aa87dd5aceef22dea13_09ddda63-03d4-4b95-87aa-684db7052c3e.mp4','a005122511a42aa87dd5aceef22dea13_09ddda63-03d4-4b95-87aa-684db7052c3e','webconfigcut.mp4'),
(62,'/home/files/a005122511a42aa87dd5aceef22dea13_daf4fc30-8cee-4d35-a12d-a56b0f93aee8.mp4','a005122511a42aa87dd5aceef22dea13_daf4fc30-8cee-4d35-a12d-a56b0f93aee8','webconfigcut.mp4'),
(63,'/home/files/d418144ac0deb6a662957d36fdcfe6b7_cf354776-409c-43ad-8ab1-41194a8b5e80.mp4','d418144ac0deb6a662957d36fdcfe6b7_cf354776-409c-43ad-8ab1-41194a8b5e80','20221003_200654.mp4'),
(64,'/home/files/bacb7057730187cdff522d1203195c1f_cf23f33d-99f5-4d92-8906-6646b636419e.mp4','bacb7057730187cdff522d1203195c1f_cf23f33d-99f5-4d92-8906-6646b636419e','20221003_200750.mp4'),
(66,'/home/files/69b523e7a0ad94ed5790c8ffdc6f7bcd_a40a56c3-435c-4598-8e7e-1c464d4a4e6c.mp4','69b523e7a0ad94ed5790c8ffdc6f7bcd_a40a56c3-435c-4598-8e7e-1c464d4a4e6c','under_bar.mp4'),
(67,'/home/files/8b14f836f2bc32e9e388f27800c98a4b_1ee12d85-d27e-44ee-b57c-062a0a8cb2d1.mp4','8b14f836f2bc32e9e388f27800c98a4b_1ee12d85-d27e-44ee-b57c-062a0a8cb2d1','test101234_under45135.mp4'),
(68,'/home/files/59b64c4339ae673cd75c11701afbaf50_48ec3b08-d57a-4c80-9ca4-387966e06ac1.mp4','59b64c4339ae673cd75c11701afbaf50_48ec3b08-d57a-4c80-9ca4-387966e06ac1','임동혁.mp4'),
(69,'/home/files/bc6afe6d348da252b88e6c656817ed89_17e434b3-fd4d-43f3-85bc-318ecaa07533.mp4','bc6afe6d348da252b88e6c656817ed89_17e434b3-fd4d-43f3-85bc-318ecaa07533','임동혁2.mp4'),
(70,'/home/files/480087764a1689504a6dda9c85a092d6_c0919041-4812-4508-9fbf-6c2f1cbe9d6c.mp4','480087764a1689504a6dda9c85a092d6_c0919041-4812-4508-9fbf-6c2f1cbe9d6c','임동혁5.mp4'),
(71,'/home/files/f476a02a66ab566c4dd1ede493a22062_4e10d6ec-0b25-490c-a46a-404c4fe27f4e.mp4','f476a02a66ab566c4dd1ede493a22062_4e10d6ec-0b25-490c-a46a-404c4fe27f4e','임동혁0.mp4'),
(73,'/home/files/f274b46920f43d229cfcf2d737a5e863_fc64b817-704c-48c2-8f29-3675b7e5026e.mp4','f274b46920f43d229cfcf2d737a5e863_fc64b817-704c-48c2-8f29-3675b7e5026e','20221006_105821.mp4'),
(75,'/home/files/99a12e0c3445aa702d67a5e816fc6e67_f2110072-4d53-45b7-84c3-07018b1214bc.mp4','99a12e0c3445aa702d67a5e816fc6e67_f2110072-4d53-45b7-84c3-07018b1214bc','20221007_065746.mp4'),
(76,'/home/files/75312249a4a132abca8042a6f07f5daa_a6230fbf-e97a-477a-a1aa-996cf37f8048.mp4','75312249a4a132abca8042a6f07f5daa_a6230fbf-e97a-477a-a1aa-996cf37f8048','20221007_170246.mp4'),
(77,'/home/files/8811e7d7ddb010f6a99f49072f238973_645249d6-e902-48d4-ad17-3018951760fe.mp4','8811e7d7ddb010f6a99f49072f238973_645249d6-e902-48d4-ad17-3018951760fe','20221017_145512.mp4');
/*!40000 ALTER TABLE `video_file` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-17 14:37:06
