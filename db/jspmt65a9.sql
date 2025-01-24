-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmt65a9
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `jspmt65a9`
--

/*!40000 DROP DATABASE IF EXISTS `jspmt65a9`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspmt65a9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspmt65a9`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-04-13 23:12:54','关于我们','ABOUT US','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfangyuanxinxi`
--

DROP TABLE IF EXISTS `discussfangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房源信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfangyuanxinxi`
--

LOCK TABLES `discussfangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `discussfangyuanxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussfangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangdong`
--

DROP TABLE IF EXISTS `fangdong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangdong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangdongzhanghao` varchar(200) NOT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangdongzhanghao` (`fangdongzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='房东';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangdong`
--

LOCK TABLES `fangdong` WRITE;
/*!40000 ALTER TABLE `fangdong` DISABLE KEYS */;
INSERT INTO `fangdong` VALUES (11,'2023-04-13 23:12:53','房东账号1','房东姓名1','123456','男','upload/fangdong_touxiang1.jpg','440300199101010001','13823888881'),(12,'2023-04-13 23:12:53','房东账号2','房东姓名2','123456','男','upload/fangdong_touxiang2.jpg','440300199202020002','13823888882'),(13,'2023-04-13 23:12:53','房东账号3','房东姓名3','123456','男','upload/fangdong_touxiang3.jpg','440300199303030003','13823888883'),(14,'2023-04-13 23:12:53','房东账号4','房东姓名4','123456','男','upload/fangdong_touxiang4.jpg','440300199404040004','13823888884'),(15,'2023-04-13 23:12:53','房东账号5','房东姓名5','123456','男','upload/fangdong_touxiang5.jpg','440300199505050005','13823888885'),(16,'2023-04-13 23:12:53','房东账号6','房东姓名6','123456','男','upload/fangdong_touxiang6.jpg','440300199606060006','13823888886'),(17,'2023-04-13 23:12:53','房东账号7','房东姓名7','123456','男','upload/fangdong_touxiang7.jpg','440300199707070007','13823888887'),(18,'2023-04-13 23:12:53','房东账号8','房东姓名8','123456','男','upload/fangdong_touxiang8.jpg','440300199808080008','13823888888');
/*!40000 ALTER TABLE `fangdong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanchengshi`
--

DROP TABLE IF EXISTS `fangyuanchengshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanchengshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanchengshi` varchar(200) NOT NULL COMMENT '房源城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='房源城市';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanchengshi`
--

LOCK TABLES `fangyuanchengshi` WRITE;
/*!40000 ALTER TABLE `fangyuanchengshi` DISABLE KEYS */;
INSERT INTO `fangyuanchengshi` VALUES (31,'2023-04-13 23:12:53','房源城市1'),(32,'2023-04-13 23:12:53','房源城市2'),(33,'2023-04-13 23:12:53','房源城市3'),(34,'2023-04-13 23:12:53','房源城市4'),(35,'2023-04-13 23:12:53','房源城市5'),(36,'2023-04-13 23:12:53','房源城市6'),(37,'2023-04-13 23:12:53','房源城市7'),(38,'2023-04-13 23:12:53','房源城市8');
/*!40000 ALTER TABLE `fangyuanchengshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanleixing`
--

DROP TABLE IF EXISTS `fangyuanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanleixing` varchar(200) NOT NULL COMMENT '房源类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='房源类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanleixing`
--

LOCK TABLES `fangyuanleixing` WRITE;
/*!40000 ALTER TABLE `fangyuanleixing` DISABLE KEYS */;
INSERT INTO `fangyuanleixing` VALUES (41,'2023-04-13 23:12:53','房源类型1'),(42,'2023-04-13 23:12:53','房源类型2'),(43,'2023-04-13 23:12:53','房源类型3'),(44,'2023-04-13 23:12:53','房源类型4'),(45,'2023-04-13 23:12:53','房源类型5'),(46,'2023-04-13 23:12:53','房源类型6'),(47,'2023-04-13 23:12:54','房源类型7'),(48,'2023-04-13 23:12:54','房源类型8');
/*!40000 ALTER TABLE `fangyuanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangyuanxinxi`
--

DROP TABLE IF EXISTS `fangyuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fangyuanchengshi` varchar(200) DEFAULT NULL COMMENT '房源城市',
  `shifouzhuangxiu` varchar(200) DEFAULT NULL COMMENT '是否装修',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积/㎡',
  `yuezu` float DEFAULT NULL COMMENT '月租/元',
  `yajin` float DEFAULT NULL COMMENT '押金/元',
  `chaoxiang` varchar(200) DEFAULT NULL COMMENT '朝向',
  `fengmian` longtext COMMENT '封面',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `peitaoxiangqing` longtext COMMENT '配套详情',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='房源信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangyuanxinxi`
--

LOCK TABLES `fangyuanxinxi` WRITE;
/*!40000 ALTER TABLE `fangyuanxinxi` DISABLE KEYS */;
INSERT INTO `fangyuanxinxi` VALUES (51,'2023-04-13 23:12:54','房源名称1','地址1','房源城市1','是','面积/㎡1',1,1,'朝向1','upload/fangyuanxinxi_fengmian1.jpg,upload/fangyuanxinxi_fengmian2.jpg,upload/fangyuanxinxi_fengmian3.jpg','房源类型1','房东账号1','房东姓名1','联系电话1','配套详情1','是','','2023-04-14 07:12:54',1),(52,'2023-04-13 23:12:54','房源名称2','地址2','房源城市2','是','面积/㎡2',2,2,'朝向2','upload/fangyuanxinxi_fengmian2.jpg,upload/fangyuanxinxi_fengmian3.jpg,upload/fangyuanxinxi_fengmian4.jpg','房源类型2','房东账号2','房东姓名2','联系电话2','配套详情2','是','','2023-04-14 07:12:54',2),(53,'2023-04-13 23:12:54','房源名称3','地址3','房源城市3','是','面积/㎡3',3,3,'朝向3','upload/fangyuanxinxi_fengmian3.jpg,upload/fangyuanxinxi_fengmian4.jpg,upload/fangyuanxinxi_fengmian5.jpg','房源类型3','房东账号3','房东姓名3','联系电话3','配套详情3','是','','2023-04-14 07:12:54',3),(54,'2023-04-13 23:12:54','房源名称4','地址4','房源城市4','是','面积/㎡4',4,4,'朝向4','upload/fangyuanxinxi_fengmian4.jpg,upload/fangyuanxinxi_fengmian5.jpg,upload/fangyuanxinxi_fengmian6.jpg','房源类型4','房东账号4','房东姓名4','联系电话4','配套详情4','是','','2023-04-14 07:12:54',4),(55,'2023-04-13 23:12:54','房源名称5','地址5','房源城市5','是','面积/㎡5',5,5,'朝向5','upload/fangyuanxinxi_fengmian5.jpg,upload/fangyuanxinxi_fengmian6.jpg,upload/fangyuanxinxi_fengmian7.jpg','房源类型5','房东账号5','房东姓名5','联系电话5','配套详情5','是','','2023-04-14 07:12:54',5),(56,'2023-04-13 23:12:54','房源名称6','地址6','房源城市6','是','面积/㎡6',6,6,'朝向6','upload/fangyuanxinxi_fengmian6.jpg,upload/fangyuanxinxi_fengmian7.jpg,upload/fangyuanxinxi_fengmian8.jpg','房源类型6','房东账号6','房东姓名6','联系电话6','配套详情6','是','','2023-04-14 07:17:07',8),(57,'2023-04-13 23:12:54','房源名称7','地址7','房源城市7','是','面积/㎡7',7,7,'朝向7','upload/fangyuanxinxi_fengmian7.jpg,upload/fangyuanxinxi_fengmian8.jpg,upload/fangyuanxinxi_fengmian9.jpg','房源类型7','房东账号7','房东姓名7','联系电话7','配套详情7','是','','2023-04-14 07:12:54',7),(58,'2023-04-13 23:12:54','房源名称8','地址8','房源城市8','是','面积/㎡8',8,8,'朝向8','upload/fangyuanxinxi_fengmian8.jpg,upload/fangyuanxinxi_fengmian9.jpg,upload/fangyuanxinxi_fengmian10.jpg','房源类型8','房东账号8','房东姓名8','联系电话8','配套详情8','是','','2023-04-14 07:12:54',8);
/*!40000 ALTER TABLE `fangyuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2023-04-13 23:12:54','帖子标题1','帖子内容1',0,1,'用户名1','upload/forum_avatarurl1.jpg,upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg','开放'),(92,'2023-04-13 23:12:54','帖子标题2','帖子内容2',0,2,'用户名2','upload/forum_avatarurl2.jpg,upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg','开放'),(93,'2023-04-13 23:12:54','帖子标题3','帖子内容3',0,3,'用户名3','upload/forum_avatarurl3.jpg,upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg','开放'),(94,'2023-04-13 23:12:54','帖子标题4','帖子内容4',0,4,'用户名4','upload/forum_avatarurl4.jpg,upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg','开放'),(95,'2023-04-13 23:12:54','帖子标题5','帖子内容5',0,5,'用户名5','upload/forum_avatarurl5.jpg,upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg','开放'),(96,'2023-04-13 23:12:54','帖子标题6','帖子内容6',0,6,'用户名6','upload/forum_avatarurl6.jpg,upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg','开放'),(97,'2023-04-13 23:12:54','帖子标题7','帖子内容7',0,7,'用户名7','upload/forum_avatarurl7.jpg,upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg','开放'),(98,'2023-04-13 23:12:54','帖子标题8','帖子内容8',0,8,'用户名8','upload/forum_avatarurl8.jpg,upload/forum_avatarurl9.jpg,upload/forum_avatarurl10.jpg','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hetongxinxi`
--

DROP TABLE IF EXISTS `hetongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hetongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanchengshi` varchar(200) DEFAULT NULL COMMENT '房源城市',
  `fengmian` longtext COMMENT '封面',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积/㎡',
  `yuezu` float DEFAULT NULL COMMENT '月租/元',
  `zuqi` int(11) DEFAULT NULL COMMENT '租期/月',
  `yajin` float DEFAULT NULL COMMENT '押金/元',
  `zongjine` float DEFAULT NULL COMMENT '总金额/元',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `qiandingshijian` datetime DEFAULT NULL COMMENT '签订时间',
  `hetongxinxi` longtext COMMENT '合同信息',
  `qixiaoshijian` date DEFAULT NULL COMMENT '起效时间',
  `jiezhishijian` date DEFAULT NULL COMMENT '截止时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='合同信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hetongxinxi`
--

LOCK TABLES `hetongxinxi` WRITE;
/*!40000 ALTER TABLE `hetongxinxi` DISABLE KEYS */;
INSERT INTO `hetongxinxi` VALUES (71,'2023-04-13 23:12:54','房源名称1','地址1','房源类型1','房源城市1','upload/hetongxinxi_fengmian1.jpg,upload/hetongxinxi_fengmian2.jpg,upload/hetongxinxi_fengmian3.jpg','面积/㎡1',1,1,1,1,'房东账号1','房东姓名1','租户账号1','租户姓名1','手机1','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(72,'2023-04-13 23:12:54','房源名称2','地址2','房源类型2','房源城市2','upload/hetongxinxi_fengmian2.jpg,upload/hetongxinxi_fengmian3.jpg,upload/hetongxinxi_fengmian4.jpg','面积/㎡2',2,2,2,2,'房东账号2','房东姓名2','租户账号2','租户姓名2','手机2','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(73,'2023-04-13 23:12:54','房源名称3','地址3','房源类型3','房源城市3','upload/hetongxinxi_fengmian3.jpg,upload/hetongxinxi_fengmian4.jpg,upload/hetongxinxi_fengmian5.jpg','面积/㎡3',3,3,3,3,'房东账号3','房东姓名3','租户账号3','租户姓名3','手机3','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(74,'2023-04-13 23:12:54','房源名称4','地址4','房源类型4','房源城市4','upload/hetongxinxi_fengmian4.jpg,upload/hetongxinxi_fengmian5.jpg,upload/hetongxinxi_fengmian6.jpg','面积/㎡4',4,4,4,4,'房东账号4','房东姓名4','租户账号4','租户姓名4','手机4','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(75,'2023-04-13 23:12:54','房源名称5','地址5','房源类型5','房源城市5','upload/hetongxinxi_fengmian5.jpg,upload/hetongxinxi_fengmian6.jpg,upload/hetongxinxi_fengmian7.jpg','面积/㎡5',5,5,5,5,'房东账号5','房东姓名5','租户账号5','租户姓名5','手机5','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(76,'2023-04-13 23:12:54','房源名称6','地址6','房源类型6','房源城市6','upload/hetongxinxi_fengmian6.jpg,upload/hetongxinxi_fengmian7.jpg,upload/hetongxinxi_fengmian8.jpg','面积/㎡6',6,6,6,6,'房东账号6','房东姓名6','租户账号6','租户姓名6','手机6','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(77,'2023-04-13 23:12:54','房源名称7','地址7','房源类型7','房源城市7','upload/hetongxinxi_fengmian7.jpg,upload/hetongxinxi_fengmian8.jpg,upload/hetongxinxi_fengmian9.jpg','面积/㎡7',7,7,7,7,'房东账号7','房东姓名7','租户账号7','租户姓名7','手机7','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付'),(78,'2023-04-13 23:12:54','房源名称8','地址8','房源类型8','房源城市8','upload/hetongxinxi_fengmian8.jpg,upload/hetongxinxi_fengmian9.jpg,upload/hetongxinxi_fengmian10.jpg','面积/㎡8',8,8,8,8,'房东账号8','房东姓名8','租户账号8','租户姓名8','手机8','2023-04-14 07:12:54','','2023-04-14','2023-04-14','未支付');
/*!40000 ALTER TABLE `hetongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-04-13 23:12:54','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(112,'2023-04-13 23:12:54','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(113,'2023-04-13 23:12:54','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(114,'2023-04-13 23:12:54','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(115,'2023-04-13 23:12:54','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(116,'2023-04-13 23:12:54','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(117,'2023-04-13 23:12:54','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(118,'2023-04-13 23:12:54','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-04-13 23:12:54','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'房东账号1','fangdong','房东','ylywg0i7z64h1og8z87xtnu1vamjxgrg','2023-04-13 23:15:44','2023-04-14 00:15:44'),(2,13,'房东账号3','fangdong','房东','o98ltopzq8bnhkp4mxirfridsl17p8hm','2023-04-13 23:16:07','2023-04-14 00:16:08'),(3,21,'租户账号1','zuhu','租户','pk1s59kt1e25pjemlxqn7342azk71m19','2023-04-13 23:16:58','2023-04-14 00:17:56'),(4,16,'房东账号6','fangdong','房东','zd1isa64va883pjapex4ooswwd0levm5','2023-04-13 23:17:30','2023-04-14 00:17:31');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuizuxinxi`
--

DROP TABLE IF EXISTS `tuizuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuizuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanchengshi` varchar(200) DEFAULT NULL COMMENT '房源城市',
  `fengmian` longtext COMMENT '封面',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积/㎡',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yajin` float DEFAULT NULL COMMENT '押金',
  `tuizushijian` datetime DEFAULT NULL COMMENT '退租时间',
  `qingkuangshuoming` longtext COMMENT '情况说明',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='退租信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuizuxinxi`
--

LOCK TABLES `tuizuxinxi` WRITE;
/*!40000 ALTER TABLE `tuizuxinxi` DISABLE KEYS */;
INSERT INTO `tuizuxinxi` VALUES (81,'2023-04-13 23:12:54','房源名称1','地址1','房源类型1','房源城市1','upload/tuizuxinxi_fengmian1.jpg,upload/tuizuxinxi_fengmian2.jpg,upload/tuizuxinxi_fengmian3.jpg','面积/㎡1','房东账号1','房东姓名1','租户账号1','租户姓名1','手机1',1,'2023-04-14 07:12:54','情况说明1','是',''),(82,'2023-04-13 23:12:54','房源名称2','地址2','房源类型2','房源城市2','upload/tuizuxinxi_fengmian2.jpg,upload/tuizuxinxi_fengmian3.jpg,upload/tuizuxinxi_fengmian4.jpg','面积/㎡2','房东账号2','房东姓名2','租户账号2','租户姓名2','手机2',2,'2023-04-14 07:12:54','情况说明2','是',''),(83,'2023-04-13 23:12:54','房源名称3','地址3','房源类型3','房源城市3','upload/tuizuxinxi_fengmian3.jpg,upload/tuizuxinxi_fengmian4.jpg,upload/tuizuxinxi_fengmian5.jpg','面积/㎡3','房东账号3','房东姓名3','租户账号3','租户姓名3','手机3',3,'2023-04-14 07:12:54','情况说明3','是',''),(84,'2023-04-13 23:12:54','房源名称4','地址4','房源类型4','房源城市4','upload/tuizuxinxi_fengmian4.jpg,upload/tuizuxinxi_fengmian5.jpg,upload/tuizuxinxi_fengmian6.jpg','面积/㎡4','房东账号4','房东姓名4','租户账号4','租户姓名4','手机4',4,'2023-04-14 07:12:54','情况说明4','是',''),(85,'2023-04-13 23:12:54','房源名称5','地址5','房源类型5','房源城市5','upload/tuizuxinxi_fengmian5.jpg,upload/tuizuxinxi_fengmian6.jpg,upload/tuizuxinxi_fengmian7.jpg','面积/㎡5','房东账号5','房东姓名5','租户账号5','租户姓名5','手机5',5,'2023-04-14 07:12:54','情况说明5','是',''),(86,'2023-04-13 23:12:54','房源名称6','地址6','房源类型6','房源城市6','upload/tuizuxinxi_fengmian6.jpg,upload/tuizuxinxi_fengmian7.jpg,upload/tuizuxinxi_fengmian8.jpg','面积/㎡6','房东账号6','房东姓名6','租户账号6','租户姓名6','手机6',6,'2023-04-14 07:12:54','情况说明6','是',''),(87,'2023-04-13 23:12:54','房源名称7','地址7','房源类型7','房源城市7','upload/tuizuxinxi_fengmian7.jpg,upload/tuizuxinxi_fengmian8.jpg,upload/tuizuxinxi_fengmian9.jpg','面积/㎡7','房东账号7','房东姓名7','租户账号7','租户姓名7','手机7',7,'2023-04-14 07:12:54','情况说明7','是',''),(88,'2023-04-13 23:12:54','房源名称8','地址8','房源类型8','房源城市8','upload/tuizuxinxi_fengmian8.jpg,upload/tuizuxinxi_fengmian9.jpg,upload/tuizuxinxi_fengmian10.jpg','面积/㎡8','房东账号8','房东姓名8','租户账号8','租户姓名8','手机8',8,'2023-04-14 07:12:54','情况说明8','是','');
/*!40000 ALTER TABLE `tuizuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-04-13 23:12:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudingfangzi`
--

DROP TABLE IF EXISTS `yudingfangzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yudingfangzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanchengshi` varchar(200) DEFAULT NULL COMMENT '房源城市',
  `fengmian` longtext COMMENT '封面',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积/㎡',
  `yajin` float DEFAULT NULL COMMENT '押金/元',
  `yuezu` varchar(200) DEFAULT NULL COMMENT '月租/元',
  `fangdongzhanghao` varchar(200) DEFAULT NULL COMMENT '房东账号',
  `fangdongxingming` varchar(200) DEFAULT NULL COMMENT '房东姓名',
  `zuhuzhanghao` varchar(200) DEFAULT NULL COMMENT '租户账号',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预定时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1681427825643 DEFAULT CHARSET=utf8 COMMENT='预定房子';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudingfangzi`
--

LOCK TABLES `yudingfangzi` WRITE;
/*!40000 ALTER TABLE `yudingfangzi` DISABLE KEYS */;
INSERT INTO `yudingfangzi` VALUES (61,'2023-04-13 23:12:54','房源名称1','地址1','房源类型1','房源城市1','upload/yudingfangzi_fengmian1.jpg,upload/yudingfangzi_fengmian2.jpg,upload/yudingfangzi_fengmian3.jpg','面积/㎡1',1,'月租/元1','房东账号1','房东姓名1','租户账号1','租户姓名1','手机1','2023-04-14 07:12:54'),(62,'2023-04-13 23:12:54','房源名称2','地址2','房源类型2','房源城市2','upload/yudingfangzi_fengmian2.jpg,upload/yudingfangzi_fengmian3.jpg,upload/yudingfangzi_fengmian4.jpg','面积/㎡2',2,'月租/元2','房东账号2','房东姓名2','租户账号2','租户姓名2','手机2','2023-04-14 07:12:54'),(63,'2023-04-13 23:12:54','房源名称3','地址3','房源类型3','房源城市3','upload/yudingfangzi_fengmian3.jpg,upload/yudingfangzi_fengmian4.jpg,upload/yudingfangzi_fengmian5.jpg','面积/㎡3',3,'月租/元3','房东账号3','房东姓名3','租户账号3','租户姓名3','手机3','2023-04-14 07:12:54'),(64,'2023-04-13 23:12:54','房源名称4','地址4','房源类型4','房源城市4','upload/yudingfangzi_fengmian4.jpg,upload/yudingfangzi_fengmian5.jpg,upload/yudingfangzi_fengmian6.jpg','面积/㎡4',4,'月租/元4','房东账号4','房东姓名4','租户账号4','租户姓名4','手机4','2023-04-14 07:12:54'),(65,'2023-04-13 23:12:54','房源名称5','地址5','房源类型5','房源城市5','upload/yudingfangzi_fengmian5.jpg,upload/yudingfangzi_fengmian6.jpg,upload/yudingfangzi_fengmian7.jpg','面积/㎡5',5,'月租/元5','房东账号5','房东姓名5','租户账号5','租户姓名5','手机5','2023-04-14 07:12:54'),(66,'2023-04-13 23:12:54','房源名称6','地址6','房源类型6','房源城市6','upload/yudingfangzi_fengmian6.jpg,upload/yudingfangzi_fengmian7.jpg,upload/yudingfangzi_fengmian8.jpg','面积/㎡6',6,'月租/元6','房东账号6','房东姓名6','租户账号6','租户姓名6','手机6','2023-04-14 07:12:54'),(67,'2023-04-13 23:12:54','房源名称7','地址7','房源类型7','房源城市7','upload/yudingfangzi_fengmian7.jpg,upload/yudingfangzi_fengmian8.jpg,upload/yudingfangzi_fengmian9.jpg','面积/㎡7',7,'月租/元7','房东账号7','房东姓名7','租户账号7','租户姓名7','手机7','2023-04-14 07:12:54'),(68,'2023-04-13 23:12:54','房源名称8','地址8','房源类型8','房源城市8','upload/yudingfangzi_fengmian8.jpg,upload/yudingfangzi_fengmian9.jpg,upload/yudingfangzi_fengmian10.jpg','面积/㎡8',8,'月租/元8','房东账号8','房东姓名8','租户账号8','租户姓名8','手机8','2023-04-14 07:12:54'),(1681427825642,'2023-04-13 23:17:04','房源名称6','地址6','房源类型6','房源城市6','upload/fangyuanxinxi_fengmian6.jpg','面积/㎡6',6,'6','房东账号6','房东姓名6','租户账号1','租户姓名1','13823888881','2023-04-14 07:17:02');
/*!40000 ALTER TABLE `yudingfangzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuhu`
--

DROP TABLE IF EXISTS `zuhu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zuhuzhanghao` varchar(200) NOT NULL COMMENT '租户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zuhuxingming` varchar(200) DEFAULT NULL COMMENT '租户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zuhuzhanghao` (`zuhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='租户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuhu`
--

LOCK TABLES `zuhu` WRITE;
/*!40000 ALTER TABLE `zuhu` DISABLE KEYS */;
INSERT INTO `zuhu` VALUES (21,'2023-04-13 23:12:53','租户账号1','123456','租户姓名1','男','13823888881','440300199101010001','upload/zuhu_touxiang1.jpg'),(22,'2023-04-13 23:12:53','租户账号2','123456','租户姓名2','男','13823888882','440300199202020002','upload/zuhu_touxiang2.jpg'),(23,'2023-04-13 23:12:53','租户账号3','123456','租户姓名3','男','13823888883','440300199303030003','upload/zuhu_touxiang3.jpg'),(24,'2023-04-13 23:12:53','租户账号4','123456','租户姓名4','男','13823888884','440300199404040004','upload/zuhu_touxiang4.jpg'),(25,'2023-04-13 23:12:53','租户账号5','123456','租户姓名5','男','13823888885','440300199505050005','upload/zuhu_touxiang5.jpg'),(26,'2023-04-13 23:12:53','租户账号6','123456','租户姓名6','男','13823888886','440300199606060006','upload/zuhu_touxiang6.jpg'),(27,'2023-04-13 23:12:53','租户账号7','123456','租户姓名7','男','13823888887','440300199707070007','upload/zuhu_touxiang7.jpg'),(28,'2023-04-13 23:12:53','租户账号8','123456','租户姓名8','男','13823888888','440300199808080008','upload/zuhu_touxiang8.jpg');
/*!40000 ALTER TABLE `zuhu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10 15:19:41
