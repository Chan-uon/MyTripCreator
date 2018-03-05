-- MySQL dump 10.16  Distrib 10.1.9-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: project_trip_creator
-- ------------------------------------------------------
-- Server version	10.1.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airlines`
--

DROP TABLE IF EXISTS `airlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airlines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `airport` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iata` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `airlines_iata_unique` (`iata`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlines`
--

LOCK TABLES `airlines` WRITE;
/*!40000 ALTER TABLE `airlines` DISABLE KEYS */;
INSERT INTO `airlines` VALUES (1,'Calgary','AB','Calgary International Airport','YYC','2018-03-03 20:59:33','2018-03-03 20:59:33'),(2,'Calgary','AB','Springbank Airport ','YBW','2018-03-03 20:59:33','2018-03-03 20:59:33'),(3,'Cold Lake ','AB','CFB Cold Lake Airport','YOD','2018-03-03 20:59:33','2018-03-03 20:59:33'),(4,'Edson','AB','Edson Airport','YET','2018-03-03 20:59:34','2018-03-03 20:59:34'),(5,'Fort Chipewyan','AB','Fort Chipewyan Airport','YPY','2018-03-03 20:59:34','2018-03-03 20:59:34'),(6,'Fort MacKay','AB','Fort MacKay/Firebag Aerodrome','YFI','2018-03-03 20:59:34','2018-03-03 20:59:34'),(7,'Fort McMurray ','AB','Fort McMurray International Airport','YMM','2018-03-03 20:59:34','2018-03-03 20:59:34'),(8,'Grande Prairie','AB','Grande Prairie Airport','YQU','2018-03-03 20:59:34','2018-03-03 20:59:34'),(9,'High Level ','AB','High Level Airport','YOJ','2018-03-03 20:59:34','2018-03-03 20:59:34'),(10,'Lethbridge','AB','Lethbridge Airport','YQL','2018-03-03 20:59:34','2018-03-03 20:59:34'),(11,'Abbotsford','BC','Abbotsford International Airport','YXX','2018-03-03 20:59:53','2018-03-03 20:59:53'),(12,'Alert Bay','BC','Alert Bay Airport','YAL','2018-03-03 20:59:53','2018-03-03 20:59:53'),(13,'Anahim Lake','BC','Anahim Lake Airport','YAA','2018-03-03 20:59:53','2018-03-03 20:59:53'),(14,'Bella Bella','BC','Bella Bella (Campbell Island) Airport','ZEL','2018-03-03 20:59:53','2018-03-03 20:59:53'),(15,'Bella Coola ','BC','Bella Coola Airport','YBD','2018-03-03 20:59:53','2018-03-03 20:59:53'),(16,'Blue River','BC','Blue River Airport','YCP','2018-03-03 20:59:53','2018-03-03 20:59:53'),(17,'Bob Quinn Lake','BC','Bob Quinn Lake Airport','YBO','2018-03-03 20:59:53','2018-03-03 20:59:53'),(18,'Burns Lake ','BC','Burns Lake Airport','YPZ','2018-03-03 20:59:53','2018-03-03 20:59:53'),(19,'Campbell River ','BC','Campbell River Airport','YBL','2018-03-03 20:59:53','2018-03-03 20:59:53'),(20,'Castlegar','BC','Castlegar Airport','YCG','2018-03-03 20:59:53','2018-03-03 20:59:53'),(21,'York Factory First Nation','MB','York Landing Airport','ZAC','2018-03-03 21:00:02','2018-03-03 21:00:02'),(22,'Winnipeg ','MB','Winnipeg James Armstrong Richardson International Airport','YWG','2018-03-03 21:00:02','2018-03-03 21:00:02'),(23,'Thompson','MB','Thompson Airport','YTH','2018-03-03 21:00:02','2018-03-03 21:00:02'),(24,'Thicket Portage','MB','Thicket Portage Airport','YTD','2018-03-03 21:00:02','2018-03-03 21:00:02'),(25,'The Pas','MB','The Pas Airport','YQD','2018-03-03 21:00:02','2018-03-03 21:00:02'),(26,'Tadoule Lake','MB','Tadoule Lake Airport','XTL','2018-03-03 21:00:02','2018-03-03 21:00:02'),(27,'Swan River','MB','Swan River Airport','ZJN','2018-03-03 21:00:02','2018-03-03 21:00:02'),(28,'South Indian Lake ','MB','South Indian Lake Airport','XSI','2018-03-03 21:00:03','2018-03-03 21:00:03'),(29,'Shamattawa','MB','Shamattawa Airport','ZTM','2018-03-03 21:00:03','2018-03-03 21:00:03'),(30,'St Theresa Point','MB','St Theresa Point Airport ','YST','2018-03-03 21:00:03','2018-03-03 21:00:03'),(31,'Bathurst','NB','Bathurst Airport','ZBF','2018-03-03 21:00:11','2018-03-03 21:00:11'),(32,'Charlo','NB','Charlo Airport','YCL','2018-03-03 21:00:11','2018-03-03 21:00:11'),(33,'Fredericton ','NB','Fredericton International Airport ','YFC','2018-03-03 21:00:11','2018-03-03 21:00:11'),(34,'Miramichi ','NB','Miramichi Airport','YCH','2018-03-03 21:00:11','2018-03-03 21:00:11'),(35,'Moncton ','NB','Greater Moncton Roméo LeBlanc International Airport','YQM','2018-03-03 21:00:11','2018-03-03 21:00:11'),(36,'Saint John','NB','Saint John Airport','YSJ','2018-03-03 21:00:11','2018-03-03 21:00:11'),(37,'Saint-Léonard','NB','Saint-Léonard Aerodrome','YSL','2018-03-03 21:00:11','2018-03-03 21:00:11'),(38,'Wabush','NL','Wabush Airport','YWK','2018-03-03 21:00:38','2018-03-03 21:00:38'),(39,'Stephenville','NL','Stephenville International Airport','YJT','2018-03-03 21:00:38','2018-03-03 21:00:38'),(40,'St John\'s','NL','St John\'s International Airport','YYT','2018-03-03 21:01:11','2018-03-03 21:01:11'),(41,'St Anthony ','NL','St Anthony Airport','YAY','2018-03-03 21:02:16','2018-03-03 21:02:16'),(42,'Rigolet ','NL','Rigolet Airport','YRG','2018-03-03 21:03:07','2018-03-03 21:03:07'),(43,'Postville','NL','Postville Airport','YSO','2018-03-03 21:03:38','2018-03-03 21:03:38'),(44,'Port Hope Simpson ','NL','Port Hope Simpson Airport','YHA','2018-03-03 21:04:09','2018-03-03 21:04:09'),(45,'Nain ','NL','Nain Airport','YDP','2018-03-03 21:04:42','2018-03-03 21:04:42'),(46,'Mary\'s Harbour ','NL','Mary\'s Harbour Airport','YMH','2018-03-03 21:05:19','2018-03-03 21:05:19'),(47,'Hopedale ','NL','Hopedale Airport','YHO','2018-03-03 21:06:52','2018-03-03 21:06:52'),(48,'Digby ','NS','Digby/Annapolis Regional Airport','YDG','2018-03-03 21:08:06','2018-03-03 21:08:06'),(49,'Fox Harbour ','NS','Fox Harbour Airport','YFX','2018-03-03 21:09:24','2018-03-03 21:09:24'),(50,'Greenwood','NS','CFB Greenwood','YZX','2018-03-03 21:10:00','2018-03-03 21:10:00'),(51,'Halifax ','NS','Halifax Stanfield International Airport','YHZ','2018-03-03 21:10:33','2018-03-03 21:10:33'),(52,'Port Hawkesbury','NS','Port Hawkesbury Airport','YPS','2018-03-03 21:11:12','2018-03-03 21:11:12'),(53,'Shearwater','NS','CFB Shearwater','YAW','2018-03-03 21:11:47','2018-03-03 21:11:47'),(54,'Sydney','NS','Sydney/J.A. Douglas McCurdy Airport','YQY','2018-03-03 21:12:27','2018-03-03 21:12:27'),(55,'Yarmouth','NS','Yarmouth Airport','YQI','2018-03-03 21:13:07','2018-03-03 21:13:07'),(56,'Aklavik','NT','Aklavik/Freddie Carmichael Airport','LAK','2018-03-03 21:14:53','2018-03-03 21:14:53'),(57,'Deline','NT','Déline Airport','YWJ','2018-03-03 21:16:22','2018-03-03 21:16:22'),(58,'Ekati Diamond Mine','NT','Ekati Airport','YOA','2018-03-03 21:16:58','2018-03-03 21:16:58'),(59,'Fort McPherson','NT','Fort McPherson Airport','ZFM','2018-03-03 21:17:48','2018-03-03 21:17:48'),(60,'Fort Resolution','NT','Fort Resolution Airport','YFR','2018-03-03 21:18:19','2018-03-03 21:18:19'),(61,'Hay River','NT','Hay River/Merlyn Carter Airport','YHY','2018-03-03 21:18:52','2018-03-03 21:18:52'),(62,'Inuvik','NT','Inuvik (Mike Zubko) Airport','YEV','2018-03-03 21:19:33','2018-03-03 21:19:33'),(63,'Norman Wells','NT','Norman Wells Airport','YVQ','2018-03-03 21:20:09','2018-03-03 21:20:09'),(64,'Paulatuk','NT','Paulatuk (Nora Aliqatchialuk Ruben) Airport','YPC','2018-03-03 21:20:46','2018-03-03 21:20:46'),(65,'Tulita','NT','Tulita Airport','ZFN','2018-03-03 21:21:25','2018-03-03 21:21:25'),(66,'Whale Cove','NU','Whale Cove Airport','YXN','2018-03-03 21:22:32','2018-03-03 21:22:32'),(67,'Tanquary Fiord ','NU','Tanquary Fiord Airport','JQ6','2018-03-03 21:23:23','2018-03-03 21:23:23'),(68,'Sanikiluaq','NU','Sanikiluaq Airport','YSK','2018-03-03 21:23:55','2018-03-03 21:23:55'),(69,'Resolute','NU','Resolute Bay Airport','YRB','2018-03-03 21:24:30','2018-03-03 21:24:30'),(70,'Qikiqtarjuaq','NU','Qikiqtarjuaq Airport','YVM','2018-03-03 21:25:07','2018-03-03 21:25:07'),(71,'Pond Inlet','NU','Pond Inlet Airport','YIO','2018-03-03 21:25:42','2018-03-03 21:25:42'),(72,'Naujaat','NU','Naujaat Airport','YUT','2018-03-03 21:27:38','2018-03-03 21:27:38'),(73,'Mary River','NU','Mary River Aerodrome','YMV','2018-03-03 21:28:13','2018-03-03 21:28:13'),(74,'Kimmirut','NU','Kimmirut Airport','YLC','2018-03-03 21:29:03','2018-03-03 21:29:03'),(75,'Igloolik','NU','Igloolik Airport','YGT','2018-03-03 21:29:42','2018-03-03 21:29:42'),(76,'Hall Beach','NU','Hall Beach Airport','YUX','2018-03-03 21:30:23','2018-03-03 21:30:23'),(77,'Toronto','ON','Toronto Pearson International Airport','YYZ','2018-03-03 21:31:40','2018-03-03 21:31:40'),(78,'Toronto','ON','Downsview Airport','YZD','2018-03-03 21:32:23','2018-03-03 21:32:23'),(79,'Toronto','ON','Toronto','YTZ','2018-03-03 21:32:51','2018-03-03 21:32:51'),(80,'Smiths Falls','ON','Smiths Falls-Montague Airport','YSH','2018-03-03 21:33:33','2018-03-03 21:33:33'),(81,'Sandy Lake First Nation','ON','Sandy Lake Airport','ZSJ','2018-03-03 21:34:12','2018-03-03 21:34:12'),(82,'Pembroke','ON','Pembroke Airport','YTA','2018-03-03 21:34:43','2018-03-03 21:34:43'),(83,'Ottawa','ON','Ottawa Macdonald-Cartier International Airport','YOW','2018-03-03 21:35:23','2018-03-03 21:35:23'),(84,'London','ON','London International Airport','YXU','2018-03-03 21:35:57','2018-03-03 21:35:57'),(85,'Kirkland Lake','ON','Kirkland Lake Airport','YKX','2018-03-03 21:36:25','2018-03-03 21:36:25'),(86,'Kingston','ON','Kingston/Norman Rogers Airport','YGK','2018-03-03 21:36:57','2018-03-03 21:36:57'),(87,'Charlottetown','PE','Charlottetown Airport ','YYG','2018-03-03 21:38:14','2018-03-03 21:38:14'),(88,'Summerside','PE','Summerside Airport','YSU','2018-03-03 21:38:51','2018-03-03 21:38:51'),(89,'Montreal','QC','Montréal-Pierre Elliott Trudeau International Airport','YUL','2018-03-03 21:45:13','2018-03-03 21:45:13'),(90,'Montreal','QC','Montréal-Mirabel International Airport','YMX','2018-03-03 21:45:56','2018-03-03 21:45:56'),(91,'Mont-Joli','QC','Mont-Joli Airport','YYY','2018-03-03 21:46:30','2018-03-03 21:46:30'),(92,'Magdalen Islands','QC','Iles-de-la-Madeleine Airport','YGR','2018-03-03 21:47:01','2018-03-03 21:47:01'),(93,'La Tuque','QC','La Tuque Airport','YLQ','2018-03-03 21:47:36','2018-03-03 21:47:36'),(94,'Baie-Comeau','QC','Baie-Comeau Airport','YBC','2018-03-03 21:48:10','2018-03-03 21:48:10'),(95,'Bonaventure','QC','Bonaventure Airport','YVB','2018-03-03 21:49:54','2018-03-03 21:49:54'),(96,'Charlevoix','QC','Charlevoix Airport','YML','2018-03-03 21:50:23','2018-03-03 21:50:23'),(97,'Chevery','QC','Chevery Airport','YHR','2018-03-03 21:50:51','2018-03-03 21:50:51'),(98,'Eastmain','QC','Eastmain River Airport','ZEM','2018-03-03 21:51:21','2018-03-03 21:51:21'),(99,'Buffalo Narrows','SK','Buffalo Narrows Airport','YVT','2018-03-03 21:52:48','2018-03-03 21:52:48'),(100,'Estevan','SK','Estevan Regional Aerodrome','YEN','2018-03-03 21:53:52','2018-03-03 21:53:52'),(101,'Fond-du-Lac','SK','Fond-du-Lac Airport','ZFD','2018-03-03 21:54:26','2018-03-03 21:54:26'),(102,'Hudson Bay','SK','Hudson Bay Airport','YHB','2018-03-03 21:54:56','2018-03-03 21:54:56'),(103,'Key Lake','SK','Key Lake Airport','YKJ','2018-03-03 21:56:41','2018-03-03 21:56:41'),(104,'Kindersley','SK','Kindersley Regional Airport','YKY','2018-03-03 21:57:24','2018-03-03 21:57:24'),(105,'La Ronge','SK','La Ronge (Barber Field) Airport','YVC','2018-03-03 21:57:57','2018-03-03 21:57:57'),(106,'Meadow Lake','SK','Meadow Lake Airport','YLJ','2018-03-03 21:58:30','2018-03-03 21:58:30'),(107,'North Battleford','SK','North Battleford Airport','YQW','2018-03-03 21:59:18','2018-03-03 21:59:18'),(108,'Points North Landing','SK','Points North Landing Airport','YNL','2018-03-03 21:59:57','2018-03-03 21:59:57'),(109,'Beaver Creek','YT','Beaver Creek Airport','YXQ','2018-03-03 22:01:14','2018-03-03 22:01:14'),(110,'Burwash Landing','YT','Burwash Airport','YDB','2018-03-03 22:02:33','2018-03-03 22:02:33'),(111,'Dawson City','YT','Dawson City Airport','YDA','2018-03-03 22:04:41','2018-03-03 22:04:41'),(112,'Faro','YT','Faro Airport','ZFA','2018-03-03 22:05:15','2018-03-03 22:05:15'),(113,'Haines Junction','YT','Haines Junction Airport','YHT','2018-03-03 22:05:44','2018-03-03 22:05:44'),(114,'Mayo','YT','Mayo Airport','YMA','2018-03-03 22:06:34','2018-03-03 22:06:34'),(115,'Old Crow','YT','Old Crow Airport','YOC','2018-03-03 22:08:46','2018-03-03 22:08:46'),(116,'Ross River','YT','Ross River Airport','YDM','2018-03-03 22:09:18','2018-03-03 22:09:18'),(117,'Teslin','YT','Teslin Airport','YZW','2018-03-03 22:09:47','2018-03-03 22:09:47'),(118,'Watson Lake','YT','Watson Lake Airport','YQH','2018-03-03 22:10:18','2018-03-03 22:10:18');
/*!40000 ALTER TABLE `airlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (9,'2014_10_12_000000_create_users_table',1),(10,'2014_10_12_100000_create_password_resets_table',1),(11,'2018_03_02_201819_create_flights_table',1),(12,'2018_03_02_211644_create_trips_table',1),(13,'2018_03_03_192441_create_airlines_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `user_id` int(10) unsigned NOT NULL,
  `flight_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `trips_user_id_foreign` (`user_id`),
  KEY `trips_flight_id_foreign` (`flight_id`),
  CONSTRAINT `trips_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
  CONSTRAINT `trips_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-03 17:18:11
