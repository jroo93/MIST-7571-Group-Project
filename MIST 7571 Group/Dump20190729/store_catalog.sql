-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `catalog` (
  `SKU` int(6) NOT NULL,
  `ItemName` varchar(45) DEFAULT NULL,
  `ItemDesc` varchar(500) DEFAULT NULL,
  `Price` double(8,2) DEFAULT NULL,
  `Inventory` int(3) DEFAULT NULL,
  PRIMARY KEY (`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (187048,'Womens Long Sleeve Tunic Shirt','This long sleeve tshirt is made of high quality and thick fabric. Soft, breathable and comfy to wear. Features: Round neck, long sleeve, lace splicing hem on front, above knee length.',39.99,25),(187049,'Sequin Star Jumpsuit','Lose control, up outta your soul. Features a strapless wire v neck, pockets at sides, invisible zip closure, wide-leg silhouette, and multicolored sequin detailing throughout.',89.99,4),(187050,'Ready For My Close Up Dress','Mixed fabric tiered  lined tube maxi dress.  Sleeveless, invisible side zipper,  with ruffled neck',299.99,8),(267720,'Samsung 85inch LED - Q900 Series','Get blown away by lifelike movie scenes on this 85-inch Samsung QLED 8K smart TV.',4999.99,3),(267721,'Samsung 4K Ultra HD Blu-ray Player','Upgrade your home theater with this high-quality Samsung 4K Ultra HD Blu-ray player. Integrated Smart Hub technology connects wirelessly to your home network, allowing you to stream your favorite programs on demand.',229.99,10),(267722,'Epson VS250 SVGA','Make a lasting impression with the VS250 portable projector, offering 3,200 lumens of color/white brightness for vivid presentations.',299.99,4),(321585,'Dandelion Spikes Flat','Made of black suede, it is decorated with spikes and a tonal grosgrain piping finish that attests to precise know-how. At each step, it reveals the signature of the Louboutin House.',749.50,3),(321586,'Beats Wireless Headphones','With up to 40 hours of battery life, Beats Solo3 Wireless is your perfect everyday headphone. Get the most out of your music with an award-winning, emotionally charged Beats listening experience.',199.99,20),(321587,'Georgia Bulldogs Newborn & Infant Bodysuit','This adorable bodysuit has vibrant Georgia Bulldogs colors and graphics making it clear he is going to grow up to be a huge fan. Featuring a three-snap closure on the bottom, you will be able to easily change that dirty diaper during commercial breaks of the big Georgia Bulldogs game.',15.39,20),(482136,'BTS - Map of the Soul Persona T-shirt','Kpop BTS Bangtan Boys t-shirts are super-soft and ultra comfortable, modern cut makes it stylish and fits perfectly. And we all know how valuable a good t-shirt can be.',19.99,20),(482137,'BTS - Map of the Soul Persona Outfit','Kpop BTS Bangtan Boys hoodie and pants set. Quality guaranteed...you will be satisfied! ',74.99,15),(482138,'BTS - Map of the Soul Persona Hoodie','Kpop BTS Bangtan Boys hoodie with pockets. Made of durable and practical high quality material, soft and comfortable to sport.',49.99,10),(530589,'Gaming Mouse Wired','PICTEK T16 gaming mouse with default 5 DPI levels available from 1200 to 7200 DPI. Easily adjust to instantly match mouse speed to different gaming scenarios.',18.99,25),(530590,'Digital Storm Vanquish 7','Stay ahead of the competition, VANQUISH is fully equipped to easily handle future upgrades, keeping your system on the cutting edge for years to come.',18.99,1),(530591,'Single Hand Gaming Keyboard','Ergonomic design for professional gamers.Ultra-long lifetime mechanical keys. RGB technology allows for full color customization of the backlight. 100% Anti-Ghosting with all Key Roll-over on USB.',89.99,5),(670215,'Samsung Galaxy S10','Built-in smartphone lenses like the Ultra Wide Camera lens helped the production crew for Jimmy Fallon make the most of their favorite locations in the city by capturing the whole scene exactly as it appeared in person, even in tight spaces.',999.99,50),(670216,'Samsung Galaxy Buds','Pair Samsung Galaxy Buds with your phone or tablet and go. Listen and chat during the day, then wirelessly recharge for 15 minutes to get up to 1.7 more hours of play time.',129.99,30),(670217,'Samsung Gear S2 ','Gear S2 is all about being intuitive. Beginning with its design. And with its stylish variety of bands and watch faces, get a new look any time you want.',150.00,18),(790147,'JF J.Ferrar Checked Tie','Mens, One Size, 58in, 100% Polyester, Woven Cotton',29.99,10),(790148,'Puma Lightweight Windbreaker ','Get a relaxed fit that is fantastic for layering. This Puma windbreaker jacket, with contrast panels at the shoulder, puts a fresh spin on a classic style.',47.99,12),(790149,'Mens Micro-Check Wool Two-Piece Suit','Canali two-piece wool suit in micro-check. Notch lapel two-button front. Basted sleeves. Left-chest welt pocket. Side flap pockets. Double-vented back. Wool. Made in Italy.',299.99,2);
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-29 17:10:23
