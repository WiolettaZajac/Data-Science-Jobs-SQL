CREATE DATABASE  IF NOT EXISTS `datasciencedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `datasciencedb`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: datasciencedb
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `highratedcompanies`
--

DROP TABLE IF EXISTS `highratedcompanies`;
/*!50001 DROP VIEW IF EXISTS `highratedcompanies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highratedcompanies` AS SELECT 
 1 AS `positionName`,
 1 AS `salary`,
 1 AS `company`,
 1 AS `rating`,
 1 AS `reviewsCount`,
 1 AS `jobTypeConsolidated`,
 1 AS `SalaryMin`,
 1 AS `SalaryMax`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_rated_companies`
--

DROP TABLE IF EXISTS `high_rated_companies`;
/*!50001 DROP VIEW IF EXISTS `high_rated_companies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_rated_companies` AS SELECT 
 1 AS `positionName`,
 1 AS `salary`,
 1 AS `company`,
 1 AS `rating`,
 1 AS `reviewsCount`,
 1 AS `jobTypeConsolidated`,
 1 AS `SalaryMin`,
 1 AS `SalaryMax`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `highratedcompanies`
--

/*!50001 DROP VIEW IF EXISTS `highratedcompanies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highratedcompanies` AS select `clean_jobs`.`positionName` AS `positionName`,`clean_jobs`.`salary` AS `salary`,`clean_jobs`.`company` AS `company`,`clean_jobs`.`rating` AS `rating`,`clean_jobs`.`reviewsCount` AS `reviewsCount`,`clean_jobs`.`jobTypeConsolidated` AS `jobTypeConsolidated`,`clean_jobs`.`SalaryMin` AS `SalaryMin`,`clean_jobs`.`SalaryMax` AS `SalaryMax` from `clean_jobs` where (`clean_jobs`.`rating` >= 4) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_rated_companies`
--

/*!50001 DROP VIEW IF EXISTS `high_rated_companies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_rated_companies` AS select `clean_jobs`.`positionName` AS `positionName`,`clean_jobs`.`salary` AS `salary`,`clean_jobs`.`company` AS `company`,`clean_jobs`.`rating` AS `rating`,`clean_jobs`.`reviewsCount` AS `reviewsCount`,`clean_jobs`.`jobTypeConsolidated` AS `jobTypeConsolidated`,`clean_jobs`.`SalaryMin` AS `SalaryMin`,`clean_jobs`.`SalaryMax` AS `SalaryMax` from `clean_jobs` where (`clean_jobs`.`rating` >= 4.5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-22 15:23:20
