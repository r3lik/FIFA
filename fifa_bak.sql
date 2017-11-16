-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: FIFA
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `games_link`
--

DROP TABLE IF EXISTS `games_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `home_gid` int(11) NOT NULL,
  `away_gid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `home_gid` (`home_gid`),
  KEY `away_gid` (`away_gid`),
  CONSTRAINT `games_link_ibfk_1` FOREIGN KEY (`home_gid`) REFERENCES `games_stats` (`id`),
  CONSTRAINT `games_link_ibfk_2` FOREIGN KEY (`away_gid`) REFERENCES `games_stats` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_link`
--

LOCK TABLES `games_link` WRITE;
/*!40000 ALTER TABLE `games_link` DISABLE KEYS */;
INSERT INTO `games_link` VALUES (1,1,2),(2,3,4);
/*!40000 ALTER TABLE `games_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games_stats`
--

DROP TABLE IF EXISTS `games_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `opp_id` int(11) NOT NULL,
  `user_team` varchar(255) DEFAULT NULL,
  `opp_team` varchar(255) DEFAULT NULL,
  `goals_scored` int(11) NOT NULL,
  `goals_conceded` int(11) NOT NULL,
  `shots` int(11) DEFAULT NULL,
  `shots_target` int(11) DEFAULT NULL,
  `possession` int(11) DEFAULT NULL,
  `tackles` int(11) DEFAULT NULL,
  `fouls` int(11) DEFAULT NULL,
  `yellow_cards` int(11) DEFAULT NULL,
  `red_cards` int(11) DEFAULT NULL,
  `injuries` int(11) DEFAULT NULL,
  `offsides` int(11) DEFAULT NULL,
  `corners` int(11) DEFAULT NULL,
  `shot_accuracy` int(11) DEFAULT NULL,
  `pass_accuracy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `opp_id` (`opp_id`),
  CONSTRAINT `games_stats_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `games_stats_ibfk_2` FOREIGN KEY (`opp_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games_stats`
--

LOCK TABLES `games_stats` WRITE;
/*!40000 ALTER TABLE `games_stats` DISABLE KEYS */;
INSERT INTO `games_stats` VALUES (1,1,103,'LAX','squad-battle',0,1,7,6,51,5,0,0,0,0,1,3,85,84),(2,103,1,'squad-battle','LAX',1,0,12,5,49,5,1,0,0,0,2,3,41,83),(3,1,103,'LAX','squad-battle',2,1,13,7,53,8,1,0,0,3,1,6,53,84),(4,103,1,'squad-battle','LAX',1,2,6,5,47,7,0,0,0,0,0,1,83,81),(5,1,2,'Antofagasta','Deportivo',2,3,9,6,54,5,2,0,0,0,1,2,66,82),(6,2,1,'Deportivo','Antofagasta',3,2,5,4,46,11,2,0,0,1,0,1,80,77),(7,2,1,'Italy','Spain',1,0,5,1,49,11,1,0,0,0,0,1,20,71),(8,1,2,'Spain','Italy',0,1,6,1,51,7,1,1,0,0,0,4,16,74),(9,1,103,'LAX','squad-battle',2,0,8,3,52,10,2,0,0,0,0,1,37,85),(10,103,1,'squad-battle','LAX',0,2,11,4,48,9,2,0,0,0,0,4,36,84),(11,1,69,'LAX','FUT',2,3,11,5,53,6,1,0,0,0,0,2,45,81),(12,69,1,'FUT','LAX',3,2,7,5,47,6,0,0,0,0,0,2,71,84),(13,1,103,'LAX','TOTW',1,1,8,6,50,7,0,0,0,0,0,1,75,83),(14,103,1,'TOTW','LAX',1,1,5,3,50,4,3,0,0,0,0,0,60,87),(15,69,1,'FUT','LAX',2,1,11,7,47,10,1,0,0,0,1,5,63,80),(16,1,69,'LAX','FUT',1,2,9,3,53,10,2,0,0,0,2,1,33,79),(17,1,69,'LAX','FUT',3,3,7,6,52,11,2,1,0,1,1,0,85,82),(18,69,1,'FUT','LAX',3,3,10,6,48,13,1,0,0,0,0,1,60,87),(19,2,1,'Austria Wien','Rapid Wien',1,2,9,5,51,11,5,0,0,1,1,1,55,86),(20,1,2,'Rapid Wien','Austria Wien',2,1,5,3,49,9,2,0,0,1,2,1,60,83),(21,1,2,'Napoli','Juventus',1,1,7,3,52,20,2,0,0,1,1,2,42,80),(22,2,1,'Juventus','Napoli',1,1,24,15,48,15,3,0,0,1,1,4,62,85),(23,2,1,'Sheffield W','Norwich',3,1,17,8,45,8,2,0,0,1,0,5,47,77),(24,1,2,'Norwich','Sheffield W',1,3,5,3,55,9,3,0,0,0,0,1,60,80),(25,1,103,'LAX','squad-battle',4,0,7,5,52,12,0,0,0,2,2,0,71,87),(26,103,1,'squad-battle','LAX',0,4,6,4,48,7,3,0,0,0,0,2,66,89),(27,4,1,'FUT','LAX2',5,8,9,7,46,5,1,0,0,0,0,0,77,83),(28,1,4,'LAX2','FUT',8,5,22,18,54,13,2,0,0,1,1,3,81,82),(29,1,69,'LAX','FUT',3,2,18,13,55,12,0,0,0,1,0,4,72,82),(30,69,1,'FUT','LAX',2,3,7,6,45,9,0,0,0,1,1,2,85,83),(31,69,1,'FUT','LAX',4,2,16,9,55,4,0,0,0,0,0,5,56,90),(32,1,69,'LAX','FUT',2,4,14,12,45,8,0,0,0,2,1,2,85,82);
/*!40000 ALTER TABLE `games_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'relik','mike','czarny'),(2,'cmerta','chris','merta'),(3,'mario','mario','castro'),(4,'dany0','daniel','ryan'),(69,'fut-online',NULL,NULL),(100,'cpu-beginner',NULL,NULL),(101,'cpu-amateur',NULL,NULL),(102,'cpu-semi-pro',NULL,NULL),(103,'cpu-professional',NULL,NULL),(104,'cpu-world_class',NULL,NULL),(105,'cpu-legendary',NULL,NULL),(106,'cpu-ultimate',NULL,NULL);
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

-- Dump completed on 2017-11-16  5:20:38
