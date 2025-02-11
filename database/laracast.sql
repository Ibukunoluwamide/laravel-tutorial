-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laracast
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Postsecondary Education Administrators','Voluptate alias in aut placeat repudiandae tempora voluptas. Voluptatum nostrum ipsa aliquam sed. Iusto nesciunt possimus vel reprehenderit nam iure perspiciatis incidunt. Pariatur est enim doloremque dolorum voluptate modi qui.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(2,'Order Clerk','Asperiores eum doloribus quia sit rerum. Neque totam dolor consequatur in. Et maiores quasi omnis molestiae expedita.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(3,'Command Control Center Officer','Debitis nemo minima nulla id dolores quis. Non et est qui quia molestias. Sit facilis doloribus sunt expedita repudiandae voluptas sunt.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(4,'Audio-Visual Collections Specialist','Id distinctio ut repudiandae sit sunt harum praesentium. Quia eos voluptatem perspiciatis dolores. Libero est consectetur suscipit. Non quos sapiente dolor.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(5,'Real Estate Broker','Aspernatur nesciunt fugiat repudiandae accusantium non rerum asperiores. Rerum possimus blanditiis quasi et. Consectetur libero minima voluptates corporis voluptates. Et officia molestias rerum amet veniam quasi harum.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(6,'Architectural Drafter','Quo sit impedit sit eveniet. Ipsa natus doloremque est eius. Et odit enim quis id. Veniam est qui tenetur aut.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(7,'Telecommunications Line Installer','Eos sed et voluptate quaerat. Autem rem dolorem quae voluptatem dignissimos sunt. Accusantium quidem ea id ut impedit officiis et.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(8,'Recordkeeping Clerk','Adipisci et voluptatem qui ut velit. Delectus in totam qui cupiditate quos. Fuga quo est a aliquam perspiciatis consequatur soluta.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(9,'Title Examiner','Sint distinctio ad natus beatae. Alias fugit est reprehenderit accusamus tenetur repellat illo. Qui consequatur molestias excepturi itaque consequatur. Exercitationem consequatur veniam ad perferendis odit omnis.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(10,'Architecture Teacher','Magnam unde animi sunt sunt quia. Similique sint fugiat consequatur odio nobis a unde. Repellendus enim architecto sint asperiores dolorem aut temporibus deserunt. Hic occaecati voluptatem quae similique.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(11,'Film Laboratory Technician','Vitae autem consequuntur mollitia laboriosam voluptas tenetur quia. Enim minus magni vitae sint repudiandae atque. Autem hic iure molestiae. Optio dicta distinctio ex ut. Eveniet non sint ab minima perspiciatis ex labore.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(12,'Glazier','Illo unde temporibus cupiditate et sit et praesentium. Eum repellat eum sint possimus sapiente sunt expedita.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(13,'Library Worker','Ullam sequi animi qui velit. Dolore et quia quasi in. Voluptatem enim voluptatem in quia quo quo voluptates.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(14,'Agricultural Product Grader Sorter','Sequi fugit totam soluta voluptatem. Blanditiis alias qui modi. Est suscipit fugiat aliquid ipsam. Enim fugiat laborum tempora eos aspernatur sit laudantium. Sunt facilis nesciunt ut alias vel qui.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(15,'Communications Teacher','Ea vitae et amet eos autem hic. Fuga sint sunt non velit repellendus. Error sit repellat vitae optio molestias. Id repellat quam laborum laudantium laboriosam.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(16,'Answering Service','Sed occaecati magni aut aspernatur quasi nobis. Voluptatem ipsum earum sit numquam et expedita.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(17,'Stringed Instrument Repairer and Tuner','Dolorum distinctio illo maiores quia hic cum tenetur. Accusamus quae est quia doloremque. Quidem quidem qui vel.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(18,'Shear Machine Set-Up Operator','Eum et eos sed eum quia qui pariatur. Ut in provident quod vitae ut animi. Beatae officia quis harum velit odio magnam.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(19,'Athletic Trainer','Omnis ut provident suscipit. Dolores ea quaerat officia velit dignissimos et minus. Qui illo error animi consequuntur dignissimos corporis.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(20,'Community Service Manager','Voluptatem maxime deleniti doloremque quis. Amet maxime eos error laudantium necessitatibus ducimus nemo. Qui modi sit explicabo nihil sunt. Sit illum nisi voluptatem molestias sit est.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(21,'Photographic Processing Machine Operator','Recusandae quia et possimus repudiandae quia occaecati eos. Voluptatem voluptate doloremque blanditiis quod est iste hic. Numquam consequatur eligendi nisi provident aut.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(22,'Sales and Related Workers','Impedit adipisci laboriosam qui sed fuga pariatur. Nihil consequuntur accusamus voluptas. Aut sit quo aspernatur quia est quia ex occaecati.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(23,'Criminal Investigator','Eos facilis cupiditate incidunt. Quisquam voluptatem qui autem quia culpa ducimus amet.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(24,'Personnel Recruiter','Animi doloribus minima quas. Amet consequatur quidem voluptate. Similique non quis aut enim labore cupiditate quo.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38'),(25,'Dot Etcher','Iure veniam impedit culpa perspiciatis. Enim nobis in at placeat sit aspernatur iusto. Asperiores unde et autem quo. Culpa voluptatem soluta voluptatem occaecati.','75,000 USD','2025-02-10 14:57:38','2025-02-10 14:57:38');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_02_10_150325_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('aLsEszlplj6SaeHhTteK3P4DwN50srKkYyMiZu8Q',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnlneG0ydnRoTzRGaWcyYTR5eldmM1pUbllKRHk1cHR6RU9wcm1rWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sYXJhY2FzdC50ZXN0L2pvYnMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1739203287);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping routines for database 'laracast'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 17:06:57
