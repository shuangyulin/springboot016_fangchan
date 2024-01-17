/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootbqv00
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootbqv00` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootbqv00`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootbqv00/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springbootbqv00/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springbootbqv00/upload/picture3.jpg'),(6,'homepage','http://localhost:8080/springbootbqv00/upload/1615612556067.jpg');

/*Table structure for table `discussfangyuanxinxi` */

DROP TABLE IF EXISTS `discussfangyuanxinxi`;

CREATE TABLE `discussfangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612136541 DEFAULT CHARSET=utf8 COMMENT='房源信息评论表';

/*Data for the table `discussfangyuanxinxi` */

insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-03-13 12:37:46',1,1,'用户名1','评论内容1','回复内容1'),(102,'2021-03-13 12:37:46',2,2,'用户名2','评论内容2','回复内容2'),(103,'2021-03-13 12:37:46',3,3,'用户名3','评论内容3','回复内容3'),(104,'2021-03-13 12:37:46',4,4,'用户名4','评论内容4','回复内容4'),(105,'2021-03-13 12:37:46',5,5,'用户名5','评论内容5','回复内容5'),(106,'2021-03-13 12:37:46',6,6,'用户名6','评论内容6','回复内容6'),(1615612136540,'2021-03-13 13:08:56',31,11,'用户1','111',NULL);

/*Table structure for table `fangyuanleixing` */

DROP TABLE IF EXISTS `fangyuanleixing`;

CREATE TABLE `fangyuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanleixing` varchar(200) NOT NULL COMMENT '房源类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyuanleixing` (`fangyuanleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612470012 DEFAULT CHARSET=utf8 COMMENT='房源类型';

/*Data for the table `fangyuanleixing` */

insert  into `fangyuanleixing`(`id`,`addtime`,`fangyuanleixing`) values (41,'2021-03-13 12:37:46','房源类型1'),(42,'2021-03-13 12:37:46','房源类型2'),(43,'2021-03-13 12:37:46','房源类型3'),(44,'2021-03-13 12:37:46','房源类型4'),(45,'2021-03-13 12:37:46','房源类型5'),(46,'2021-03-13 12:37:46','6'),(1615612470011,'2021-03-13 13:14:29','7');

/*Table structure for table `fangyuanxinxi` */

DROP TABLE IF EXISTS `fangyuanxinxi`;

CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanhuxing` varchar(200) DEFAULT NULL COMMENT '房源户型',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `suozaiquyu` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `fangyuanweizhi` varchar(200) DEFAULT NULL COMMENT '房源位置',
  `fangyuanmianji` float DEFAULT NULL COMMENT '房源面积',
  `meimijiage` float DEFAULT NULL COMMENT '每米价格',
  `zongji` float DEFAULT NULL COMMENT '总计',
  `fangyuanjieshao` longtext COMMENT '房源介绍',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `xiaoshoushouji` varchar(200) DEFAULT NULL COMMENT '销售手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612314331 DEFAULT CHARSET=utf8 COMMENT='房源信息';

/*Data for the table `fangyuanxinxi` */

insert  into `fangyuanxinxi`(`id`,`addtime`,`fangyuanmingcheng`,`fangyuanleixing`,`fangyuanhuxing`,`fangyuantupian`,`suozaiquyu`,`fangyuanweizhi`,`fangyuanmianji`,`meimijiage`,`zongji`,`fangyuanjieshao`,`fabushijian`,`xiaoshouzhanghao`,`xiaoshouxingming`,`xiaoshoushouji`,`clicktime`,`clicknum`) values (31,'2021-03-13 12:37:46','房源名称1','房源类型1','房源户型1','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian1.jpg','所在区域1','房源位置1',1,1,1,'房源介绍1','2021-03-13 12:37:46','销售账号1','销售姓名1','13823888881','2021-03-13 13:10:07',9),(32,'2021-03-13 12:37:46','房源名称2','房源类型2','房源户型2','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian2.jpg','所在区域2','房源位置2',2,2,2,'房源介绍2','2021-03-13 12:37:46','销售账号2','销售姓名2','13823888882','2021-03-13 13:10:53',5),(33,'2021-03-13 12:37:46','房源名称3','房源类型3','房源户型3','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian3.jpg','所在区域3','房源位置3',3,3,3,'房源介绍3','2021-03-13 12:37:46','销售账号3','销售姓名3','13823888883','2021-03-13 12:37:46',3),(34,'2021-03-13 12:37:46','房源名称4','房源类型4','房源户型4','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian4.jpg','所在区域4','房源位置4',4,4,4,'房源介绍4','2021-03-13 12:37:46','销售账号4','销售姓名4','13823888884','2021-03-13 12:37:46',4),(35,'2021-03-13 12:37:46','房源名称5','房源类型5','房源户型5','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian5.jpg','所在区域5','房源位置5',5,5,5,'房源介绍5','2021-03-13 12:37:46','销售账号5','销售姓名5','13823888885','2021-03-13 12:37:46',5),(36,'2021-03-13 12:37:46','房源名称6','房源类型6','房源户型6','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian6.jpg','所在区域6','房源位置6',6,6,6,'房源介绍6','2021-03-13 12:37:46','销售账号6','销售姓名6','13823888886','2021-03-13 12:37:46',6),(1615612314330,'2021-03-13 13:11:53','11','房源类型2','房子户型3','http://localhost:8080/springbootbqv00/upload/1615612283230.jpg','11','11',111,1000,111000,'<p>11<img src=\"http://localhost:8080/springbootbqv00/upload/1615612303255.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/springbootbqv00/upload/1615612311688.jpg\"></p>','2021-03-13 13:10:20','销售账号1','销售姓名1','13823888881','2021-03-13 13:14:20',2);

/*Table structure for table `fangzihuxing` */

DROP TABLE IF EXISTS `fangzihuxing`;

CREATE TABLE `fangzihuxing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangzihuxing` varchar(200) NOT NULL COMMENT '房子户型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangzihuxing` (`fangzihuxing`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612484051 DEFAULT CHARSET=utf8 COMMENT='房子户型';

/*Data for the table `fangzihuxing` */

insert  into `fangzihuxing`(`id`,`addtime`,`fangzihuxing`) values (51,'2021-03-13 12:37:46','房子户型1'),(52,'2021-03-13 12:37:46','房子户型2'),(53,'2021-03-13 12:37:46','房子户型3'),(54,'2021-03-13 12:37:46','房子户型4'),(55,'2021-03-13 12:37:46','房子户型5'),(56,'2021-03-13 12:37:46','6'),(1615612484050,'2021-03-13 13:14:43','7');

/*Table structure for table `jiaoyidingdan` */

DROP TABLE IF EXISTS `jiaoyidingdan`;

CREATE TABLE `jiaoyidingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanhuxing` varchar(200) DEFAULT NULL COMMENT '房源户型',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `zongji` varchar(200) DEFAULT NULL COMMENT '总计',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `jiaoyishijian` datetime DEFAULT NULL COMMENT '交易时间',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612151859 DEFAULT CHARSET=utf8 COMMENT='交易订单';

/*Data for the table `jiaoyidingdan` */

insert  into `jiaoyidingdan`(`id`,`addtime`,`zhanghao`,`xingming`,`dingdanbianhao`,`fangyuanmingcheng`,`fangyuanleixing`,`fangyuanhuxing`,`fangyuantupian`,`zongji`,`xiaoshouzhanghao`,`xiaoshouxingming`,`jiaoyishijian`,`beizhu`,`ispay`) values (61,'2021-03-13 12:37:46','账号1','姓名1','订单编号1','房源名称1','房源类型1','房源户型1','http://localhost:8080/springbootbqv00/upload/jiaoyidingdan_fangyuantupian1.jpg','总计1','销售账号1','销售姓名1','2021-03-13 12:37:46','备注1','未支付'),(62,'2021-03-13 12:37:46','账号2','姓名2','订单编号2','房源名称2','房源类型2','房源户型2','http://localhost:8080/springbootbqv00/upload/jiaoyidingdan_fangyuantupian2.jpg','总计2','销售账号2','销售姓名2','2021-03-13 12:37:46','备注2','未支付'),(63,'2021-03-13 12:37:46','账号3','姓名3','订单编号3','房源名称3','房源类型3','房源户型3','http://localhost:8080/springbootbqv00/upload/jiaoyidingdan_fangyuantupian3.jpg','总计3','销售账号3','销售姓名3','2021-03-13 12:37:46','备注3','未支付'),(64,'2021-03-13 12:37:46','账号4','姓名4','订单编号4','房源名称4','房源类型4','房源户型4','http://localhost:8080/springbootbqv00/upload/jiaoyidingdan_fangyuantupian4.jpg','总计4','销售账号4','销售姓名4','2021-03-13 12:37:46','备注4','未支付'),(65,'2021-03-13 12:37:46','账号5','姓名5','订单编号5','房源名称5','房源类型5','房源户型5','http://localhost:8080/springbootbqv00/upload/jiaoyidingdan_fangyuantupian5.jpg','总计5','销售账号5','销售姓名5','2021-03-13 12:37:46','备注5','未支付'),(66,'2021-03-13 12:37:46','账号6','姓名6','订单编号6','房源名称6','房源类型6','房源户型6','http://localhost:8080/springbootbqv00/upload/jiaoyidingdan_fangyuantupian6.jpg','总计6','销售账号6','销售姓名6','2021-03-13 12:37:46','备注6','未支付'),(1615612151858,'2021-03-13 13:09:11','用户1','姓名1','20213131374524910385','房源名称1','房源类型1','房源户型1','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian1.jpg','1','销售账号1','销售姓名1','2021-03-13 13:07:55',NULL,'已支付');

/*Table structure for table `pingjia` */

DROP TABLE IF EXISTS `pingjia`;

CREATE TABLE `pingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `pingfen` int(11) DEFAULT NULL COMMENT '评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612229312 DEFAULT CHARSET=utf8 COMMENT='评价';

/*Data for the table `pingjia` */

insert  into `pingjia`(`id`,`addtime`,`zhanghao`,`xingming`,`xiaoshouzhanghao`,`xiaoshouxingming`,`pingfen`) values (81,'2021-03-13 12:37:46','账号1','姓名1','销售账号1','销售姓名1',80),(82,'2021-03-13 12:37:46','账号2','姓名2','销售账号2','销售姓名2',2),(83,'2021-03-13 12:37:46','账号3','姓名3','销售账号3','销售姓名3',3),(84,'2021-03-13 12:37:46','账号4','姓名4','销售账号4','销售姓名4',4),(85,'2021-03-13 12:37:46','账号5','姓名5','销售账号5','销售姓名5',5),(86,'2021-03-13 12:37:46','账号6','姓名6','销售账号6','销售姓名6',6),(1615612229311,'2021-03-13 13:10:28','用户1','姓名1','销售账号1','销售姓名1',96);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612249262 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615612249261,'2021-03-13 13:10:48',11,32,'fangyuanxinxi','房源名称2','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian2.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ydq53c3glyq5n2rqvtbumpt3kiiyp2av','2021-03-13 12:50:22','2021-03-13 14:13:22'),(2,21,'销售账号1','xiaoshoujingli','销售经理','t3lq6ln9vbu2euhlbkr5pjeknsftixcm','2021-03-13 12:50:43','2021-03-13 14:11:04'),(3,11,'用户1','yonghu','用户','b6qhqslqmdw8f1ts82q3n11om83v05u0','2021-03-13 13:03:20','2021-03-13 14:03:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-13 12:37:46');

/*Table structure for table `xiaoshoujingli` */

DROP TABLE IF EXISTS `xiaoshoujingli`;

CREATE TABLE `xiaoshoujingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiaoshouzhanghao` varchar(200) NOT NULL COMMENT '销售账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `xiaoshoushouji` varchar(200) DEFAULT NULL COMMENT '销售手机',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xiaoshouzhanghao` (`xiaoshouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612439306 DEFAULT CHARSET=utf8 COMMENT='销售经理';

/*Data for the table `xiaoshoujingli` */

insert  into `xiaoshoujingli`(`id`,`addtime`,`xiaoshouzhanghao`,`mima`,`xiaoshouxingming`,`xingbie`,`touxiang`,`shenfenzheng`,`xiaoshoushouji`,`nianling`) values (21,'2021-03-13 12:37:46','销售账号1','123456','销售姓名1','男','http://localhost:8080/springbootbqv00/upload/xiaoshoujingli_touxiang1.jpg','440300199101010001','13823888881','年龄1'),(22,'2021-03-13 12:37:46','销售经理2','123456','销售姓名2','男','http://localhost:8080/springbootbqv00/upload/xiaoshoujingli_touxiang2.jpg','440300199202020002','13823888882','年龄2'),(23,'2021-03-13 12:37:46','销售经理3','123456','销售姓名3','男','http://localhost:8080/springbootbqv00/upload/xiaoshoujingli_touxiang3.jpg','440300199303030003','13823888883','年龄3'),(24,'2021-03-13 12:37:46','销售经理4','123456','销售姓名4','男','http://localhost:8080/springbootbqv00/upload/xiaoshoujingli_touxiang4.jpg','440300199404040004','13823888884','年龄4'),(25,'2021-03-13 12:37:46','销售经理5','123456','销售姓名5','男','http://localhost:8080/springbootbqv00/upload/xiaoshoujingli_touxiang5.jpg','440300199505050005','13823888885','年龄5'),(26,'2021-03-13 12:37:46','销售经理6','123456','销售姓名6','男','http://localhost:8080/springbootbqv00/upload/xiaoshoujingli_touxiang6.jpg','440300199606060006','13823888886','年龄6'),(1615612439305,'2021-03-13 13:13:59','11','11','11','女','http://localhost:8080/springbootbqv00/upload/1615612438540.jpg',NULL,NULL,NULL);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612416557 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`beizhu`) values (11,'2021-03-13 12:37:46','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-03-13 12:37:46','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-03-13 12:37:46','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-03-13 12:37:46','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-03-13 12:37:46','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-03-13 12:37:46','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/springbootbqv00/upload/yonghu_zhaopian6.jpg','备注6'),(1615612416556,'2021-03-13 13:13:36','11','11','11','男',NULL,NULL,'http://localhost:8080/springbootbqv00/upload/1615612415908.jpg',NULL);

/*Table structure for table `yuyuekanfang` */

DROP TABLE IF EXISTS `yuyuekanfang`;

CREATE TABLE `yuyuekanfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `fangyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '房源名称',
  `fangyuanleixing` varchar(200) DEFAULT NULL COMMENT '房源类型',
  `fangyuanhuxing` varchar(200) DEFAULT NULL COMMENT '房源户型',
  `fangyuantupian` varchar(200) DEFAULT NULL COMMENT '房源图片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `xiaoshouzhanghao` varchar(200) DEFAULT NULL COMMENT '销售账号',
  `xiaoshouxingming` varchar(200) DEFAULT NULL COMMENT '销售姓名',
  `xiaoshoushouji` varchar(200) DEFAULT NULL COMMENT '销售手机',
  `yuyuebeizhu` longtext COMMENT '预约备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612172188 DEFAULT CHARSET=utf8 COMMENT='预约看房';

/*Data for the table `yuyuekanfang` */

insert  into `yuyuekanfang`(`id`,`addtime`,`zhanghao`,`xingming`,`shouji`,`fangyuanmingcheng`,`fangyuanleixing`,`fangyuanhuxing`,`fangyuantupian`,`yuyueshijian`,`xiaoshouzhanghao`,`xiaoshouxingming`,`xiaoshoushouji`,`yuyuebeizhu`,`sfsh`,`shhf`,`userid`) values (71,'2021-03-13 12:37:46','账号1','姓名1','13823888881','房源名称1','房源类型1','房源户型1','http://localhost:8080/springbootbqv00/upload/yuyuekanfang_fangyuantupian1.jpg','2021-03-13 12:37:46','销售账号1','销售姓名1','13823888881','预约备注1','是','',1),(72,'2021-03-13 12:37:46','账号2','姓名2','13823888882','房源名称2','房源类型2','房源户型2','http://localhost:8080/springbootbqv00/upload/yuyuekanfang_fangyuantupian2.jpg','2021-03-13 12:37:46','销售账号2','销售姓名2','13823888882','预约备注2','是','',2),(73,'2021-03-13 12:37:46','账号3','姓名3','13823888883','房源名称3','房源类型3','房源户型3','http://localhost:8080/springbootbqv00/upload/yuyuekanfang_fangyuantupian3.jpg','2021-03-13 12:37:46','销售账号3','销售姓名3','13823888883','预约备注3','是','',3),(74,'2021-03-13 12:37:46','账号4','姓名4','13823888884','房源名称4','房源类型4','房源户型4','http://localhost:8080/springbootbqv00/upload/yuyuekanfang_fangyuantupian4.jpg','2021-03-13 12:37:46','销售账号4','销售姓名4','13823888884','预约备注4','是','',4),(75,'2021-03-13 12:37:46','账号5','姓名5','13823888885','房源名称5','房源类型5','房源户型5','http://localhost:8080/springbootbqv00/upload/yuyuekanfang_fangyuantupian5.jpg','2021-03-13 12:37:46','销售账号5','销售姓名5','13823888885','预约备注5','是','',5),(76,'2021-03-13 12:37:46','账号6','姓名6','13823888886','房源名称6','房源类型6','房源户型6','http://localhost:8080/springbootbqv00/upload/yuyuekanfang_fangyuantupian6.jpg','2021-03-13 12:37:46','销售账号6','销售姓名6','13823888886','预约备注6','是','',6),(1615612172187,'2021-03-13 13:09:31','用户1','姓名1','13823888881','房源名称1','房源类型1','房源户型1','http://localhost:8080/springbootbqv00/upload/fangyuanxinxi_fangyuantupian1.jpg','2021-03-15 15:00:00','销售账号1','销售姓名1','13823888881','<p>请输入预约备注11111</p><p>111</p>','是','1111',11);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
