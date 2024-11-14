/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhinengcangchu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhinengcangchu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhinengcangchu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-10 09:43:13'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-10 09:43:13'),(3,'gongyinghsang_types','供应商类型名称',1,'供应商类型1',NULL,'2021-05-10 09:43:13'),(4,'gongyinghsang_types','供应商类型名称',2,'供应商类型2',NULL,'2021-05-10 09:43:13'),(5,'shebei_types','设备类型名称',1,'设备类型1',NULL,'2021-05-10 09:43:13'),(6,'shebei_types','设备类型名称',2,'设备类型2',NULL,'2021-05-10 09:43:13'),(7,'gongyinghsang_xinyong_types','供应商信用等级名称',1,'差',NULL,'2021-05-10 09:43:13'),(8,'gongyinghsang_xinyong_types','供应商信用等级名称',2,'中',NULL,'2021-05-10 09:43:13'),(9,'gongyinghsang_xinyong_types','供应商信用等级名称',3,'好',NULL,'2021-05-10 09:43:13'),(10,'goods_types','物资类型名称',1,'粮油',NULL,'2021-05-10 09:43:13'),(11,'goods_types','物资类型名称',2,'果蔬',NULL,'2021-05-10 09:43:13'),(12,'goods_types','物资类型名称',3,'花卉',NULL,'2021-05-10 09:43:13'),(13,'goods_types','物资类型名称',4,'林产品',NULL,'2021-05-10 09:43:13'),(14,'goods_types','物资类型名称',5,'畜禽产品',NULL,'2021-05-10 09:43:13'),(15,'goods_types','物资类型名称',6,'水产品',NULL,'2021-05-10 09:43:13'),(16,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-10 09:43:13'),(17,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-10 09:43:13'),(18,'shebei_types','设备类型名称',3,'设备类型3',NULL,'2021-05-10 13:36:42');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',2,'2021-05-10 11:47:24','公告1的详情\r\n','2021-05-10 11:47:24'),(4,'公告2',1,'2021-05-10 11:47:37','公告2的详情\r\n','2021-05-10 11:47:37');

/*Table structure for table `gongyinghsang` */

DROP TABLE IF EXISTS `gongyinghsang`;

CREATE TABLE `gongyinghsang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyinghsang_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gongyinghsang_types` int(11) DEFAULT NULL COMMENT '供应商类型 Search111 ',
  `gongyinghsang_xinyong_types` int(11) DEFAULT NULL COMMENT '供应商信用等级名称 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `gongyinghsang_content` text COMMENT '供应商详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyinghsang` */

insert  into `gongyinghsang`(`id`,`gongyinghsang_name`,`gongyinghsang_types`,`gongyinghsang_xinyong_types`,`insert_time`,`gongyinghsang_content`,`create_time`) values (3,'供应商1',1,1,'2021-05-10 11:00:27','供应商详情\r\n','2021-05-10 11:00:27'),(4,'供应商2',2,2,'2021-05-10 11:00:44','供应商2的详情\r\n','2021-05-10 11:00:44'),(5,'供应商3',2,3,'2021-05-10 13:35:59','供应商3的详情\r\n','2021-05-10 13:35:59');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名字 Search111 ',
  `goods_types` int(11) DEFAULT NULL COMMENT '商品种类  Search111 ',
  `goods_number` int(11) DEFAULT NULL COMMENT '商品数量  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '单价 Search111 ',
  `goods_content` text COMMENT '商品详情',
  `flag` int(11) DEFAULT NULL COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`danjia`,`goods_content`,`flag`,`create_time`) values (1,'T恤',1,76,'http://localhost:8080/zhinengcangchu/file/download?fileName=1620611827915.webp','件','100.00','T恤的详情\r\n\r\n',1,'2021-05-10 09:57:44'),(2,'茉莉花茶',3,115,'http://localhost:8080/zhinengcangchu/file/download?fileName=1620611872928.webp','瓶','20.00','茉莉花茶的详情\r\n',1,'2021-05-10 09:58:15'),(3,'橙子',2,901,'http://localhost:8080/zhinengcangchu/file/download?fileName=1620623820646.jpg','斤','20.00','橙子的详情\r\n',1,'2021-05-10 13:17:26');

/*Table structure for table `goods_in` */

DROP TABLE IF EXISTS `goods_in`;

CREATE TABLE `goods_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `gongyinghsang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '操作人',
  `goods_in_danhao_number` varchar(200) DEFAULT NULL COMMENT '单号 Search111 ',
  `goods_in_number` int(11) DEFAULT NULL COMMENT '入库数量  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '入库时间',
  `goods_in_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='入库';

/*Data for the table `goods_in` */

insert  into `goods_in`(`id`,`goods_id`,`gongyinghsang_id`,`yuangong_id`,`goods_in_danhao_number`,`goods_in_number`,`insert_time`,`goods_in_content`,`create_time`) values (1,1,3,1,'1620615795641',3,'2021-05-10 11:03:29','','2021-05-10 11:03:29'),(2,2,4,1,'1620616151686',7,'2021-05-10 11:09:32','无\r\n','2021-05-10 11:09:32'),(3,3,4,2,'1620623856365',12,'2021-05-10 13:18:27','橙子入库10个应该是810个\r\n','2021-05-10 13:18:27'),(4,3,5,2,'1620625043776',100,'2021-05-10 13:37:35','','2021-05-10 13:37:35');

/*Table structure for table `goods_out` */

DROP TABLE IF EXISTS `goods_out`;

CREATE TABLE `goods_out` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '操作人',
  `goods_out_danhao_number` varchar(200) DEFAULT NULL COMMENT '单号 Search111 ',
  `goods_out_number` int(11) DEFAULT NULL COMMENT '出库数量  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '出库时间',
  `goods_out_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='出库';

/*Data for the table `goods_out` */

insert  into `goods_out`(`id`,`goods_id`,`yuangong_id`,`goods_out_danhao_number`,`goods_out_number`,`insert_time`,`goods_out_content`,`create_time`) values (1,1,1,'1620616303585',13,'2021-05-10 11:11:55','','2021-05-10 11:11:55'),(2,3,2,'1620623928525',2,'2021-05-10 13:20:09','','2021-05-10 13:20:09'),(3,3,2,'1620625022545',10,'2021-05-10 13:37:16','没有\r\n','2021-05-10 13:37:16');

/*Table structure for table `pandian_order` */

DROP TABLE IF EXISTS `pandian_order`;

CREATE TABLE `pandian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int(11) DEFAULT NULL COMMENT '操作人',
  `pandian_order_name` varchar(200) DEFAULT NULL COMMENT '盘点名  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '盘点时间  Search111 ',
  `pandian_order_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='盘点';

/*Data for the table `pandian_order` */

insert  into `pandian_order`(`id`,`yuangong_id`,`pandian_order_name`,`insert_time`,`pandian_order_content`,`create_time`) values (1,1,'diyici','2021-05-10 11:45:14',NULL,'2021-05-10 11:45:14'),(3,2,'第三次盘点','2021-05-10 13:34:37',NULL,'2021-05-10 13:34:37'),(4,2,'第四次盘点','2021-05-10 13:38:20',NULL,'2021-05-10 13:38:20');

/*Table structure for table `pandian_order_list` */

DROP TABLE IF EXISTS `pandian_order_list`;

CREATE TABLE `pandian_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pandian_order_id` int(11) DEFAULT NULL COMMENT '盘点',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `goods_qian_number` int(11) DEFAULT NULL COMMENT '盘点前数量  Search111 ',
  `pandian_order_list_number` int(11) DEFAULT NULL COMMENT '盘点后数量  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '插入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='盘点详情';

/*Data for the table `pandian_order_list` */

insert  into `pandian_order_list`(`id`,`pandian_order_id`,`goods_id`,`goods_qian_number`,`pandian_order_list_number`,`insert_time`,`create_time`) values (1,1,1,79,80,'2021-05-10 11:45:14','2021-05-10 11:45:14'),(3,3,1,78,76,'2021-05-10 13:34:37','2021-05-10 13:34:37'),(4,3,2,117,115,'2021-05-10 13:34:37','2021-05-10 13:34:37'),(5,4,2,115,115,'2021-05-10 13:38:20','2021-05-10 13:38:20'),(6,4,3,900,901,'2021-05-10 13:38:20','2021-05-10 13:38:20');

/*Table structure for table `shebei` */

DROP TABLE IF EXISTS `shebei`;

CREATE TABLE `shebei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shebei_name` varchar(200) DEFAULT NULL COMMENT '设备名称 Search111 ',
  `shebei_types` int(11) DEFAULT NULL COMMENT '设备类型 Search111 ',
  `shebei_number` int(11) DEFAULT NULL COMMENT '设备数量  Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `shebei_content` text COMMENT '设备详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='设备';

/*Data for the table `shebei` */

insert  into `shebei`(`id`,`shebei_name`,`shebei_types`,`shebei_number`,`insert_time`,`shebei_content`,`create_time`) values (3,'设备1',1,18,'2021-05-10 09:56:52','设备1详情\r\n','2021-05-10 09:56:52'),(4,'设备2',1,20,'2021-05-10 13:16:40','设备的介绍及作用\r\n','2021-05-10 13:16:40');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qzf09l13tj5dqwevt0nalxbecnoao4oq','2021-05-10 09:56:09','2021-05-10 14:15:30'),(2,1,'a1','yuangong','员工','wgvhqvd72nrqrhwr7a5v50hogu5nd777','2021-05-10 11:48:12','2021-05-10 12:48:13'),(3,2,'a2','yuangong','员工','ca09c5qs3qhhp8y6clzn9pgzk054iipb','2021-05-10 13:36:51','2021-05-10 14:36:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号 Search111 ',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 Search111 ',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`username`,`password`,`yuangong_name`,`yuangong_phone`,`yuangong_id_number`,`yuangong_photo`,`sex_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/zhinengcangchu/file/download?fileName=1620611789333.jpg',1,'2021-05-10 09:56:31'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/zhinengcangchu/file/download?fileName=1620623759985.jpg',2,'2021-05-10 13:16:07');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
