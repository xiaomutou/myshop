/*
Navicat MySQL Data Transfer

Source Server         : myserver
Source Server Version : 50619
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50619
File Encoding         : 65001

Date: 2015-06-09 10:06:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `product_type`
-- ----------------------------
DROP TABLE IF EXISTS `product_type`;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_type
-- ----------------------------

-- ----------------------------
-- Table structure for `shop_order`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('12', '2015-06-05 16:55:04', '3');
INSERT INTO `shop_order` VALUES ('13', '2015-06-06 23:49:53', '3');
INSERT INTO `shop_order` VALUES ('14', '2015-06-06 23:50:39', '3');
INSERT INTO `shop_order` VALUES ('15', '2015-06-06 23:51:45', '3');
INSERT INTO `shop_order` VALUES ('16', '2015-06-06 23:51:53', '3');
INSERT INTO `shop_order` VALUES ('17', '2015-06-06 23:52:01', '3');

-- ----------------------------
-- Table structure for `shop_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE `shop_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_detail
-- ----------------------------
INSERT INTO `shop_order_detail` VALUES ('18', '12', '1', '2');
INSERT INTO `shop_order_detail` VALUES ('19', '13', '1', '1');
INSERT INTO `shop_order_detail` VALUES ('20', '13', '2', '1');
INSERT INTO `shop_order_detail` VALUES ('21', '13', '3', '1');
INSERT INTO `shop_order_detail` VALUES ('22', '14', '1', '1');
INSERT INTO `shop_order_detail` VALUES ('23', '14', '2', '1');
INSERT INTO `shop_order_detail` VALUES ('24', '14', '3', '1');
INSERT INTO `shop_order_detail` VALUES ('25', '14', '4', '1');
INSERT INTO `shop_order_detail` VALUES ('26', '15', '1', '1');
INSERT INTO `shop_order_detail` VALUES ('27', '15', '2', '1');
INSERT INTO `shop_order_detail` VALUES ('28', '15', '3', '1');
INSERT INTO `shop_order_detail` VALUES ('29', '15', '4', '1');
INSERT INTO `shop_order_detail` VALUES ('30', '16', '5', '1');
INSERT INTO `shop_order_detail` VALUES ('31', '17', '23', '1');

-- ----------------------------
-- Table structure for `shop_product`
-- ----------------------------
DROP TABLE IF EXISTS `shop_product`;
CREATE TABLE `shop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `price` double(11,2) DEFAULT NULL,
  `product_date` datetime DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_content` text,
  `ptype` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product
-- ----------------------------
INSERT INTO `shop_product` VALUES ('1', '鼠标', '99.00', '2015-05-26 15:19:46', '', '一个不错的鼠标', null);
INSERT INTO `shop_product` VALUES ('2', '电脑', '5999.00', '2015-05-27 14:48:12', '', '非常强悍的电脑', null);
INSERT INTO `shop_product` VALUES ('3', '手机', '1099.00', '2015-05-27 14:50:10', '', '这是个什么手机', null);
INSERT INTO `shop_product` VALUES ('4', '小米note', '2999.00', '2015-05-27 14:50:30', '', '应该不错', null);
INSERT INTO `shop_product` VALUES ('5', '小米MI4', '1699.00', '2015-05-27 14:50:47', '', '还行吧', null);
INSERT INTO `shop_product` VALUES ('6', 'iphone6', '4999.00', '2015-05-27 14:51:05', '', '还是比较不错的', null);
INSERT INTO `shop_product` VALUES ('7', 'iphone6 plus', '5999.00', '2015-05-27 14:51:26', '', '好', null);
INSERT INTO `shop_product` VALUES ('8', 'ipad mini', '2098.00', '2015-06-04 01:01:01', '', '哇塞', null);
INSERT INTO `shop_product` VALUES ('9', 'ipad', '3092.00', '2015-06-01 11:34:54', '', '一个非常不错的平板', null);
INSERT INTO `shop_product` VALUES ('10', '手机充电器', '98.00', '2015-06-24 01:00:00', '', '可以为手机充电', null);
INSERT INTO `shop_product` VALUES ('11', '华硕笔记本', '8999.00', '2015-06-05 04:00:00', '', '哈哈', null);
INSERT INTO `shop_product` VALUES ('12', '电风扇', '99.00', '2015-06-05 04:00:00', '/myshopD:\\programer\\tomcat6\\webapps\\myshop\\upload/real/20150605/20150605015400372.jpg', '啊', null);
INSERT INTO `shop_product` VALUES ('13', '电灯泡', '2.00', '2015-06-04 01:01:01', '/myshop/upload//real/20150605/20150605015640636.jpg', '很亮', null);
INSERT INTO `shop_product` VALUES ('14', '外套', '199.00', '2015-06-05 12:43:45', '/myshop/upload//real/20150605/20150605020352704.jpg', '<span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:18px;background-color:#E53333;\">很暖和</span><span style=\"font-size:18px;\"><span style=\"background-color:#E53333;\"></span><span style=\"background-color:#E53333;\"></span></span></span>', null);
INSERT INTO `shop_product` VALUES ('15', '枕头', '99.00', '2015-06-05 12:43:45', '/myshop/upload//real/20150605/20150605021257091.jpg', 'hello<br />\r\nworld', null);
INSERT INTO `shop_product` VALUES ('16', '耳机', '1999.00', '2015-06-05 00:00:00', '/myshop/upload//real/20150605/20150605151733559.png', '<h2>\r\n	音质<span style=\"background-color:#E53333;\">非常非常</span>的好\r\n</h2>', null);
INSERT INTO `shop_product` VALUES ('17', '笔记本', '99.00', '2015-06-05 00:00:00', '/shop/upload//real/20150605/20150605194728709.jpg', '啊啊', null);
INSERT INTO `shop_product` VALUES ('18', 'hell', '99.00', '2015-06-16 00:00:00', '/shop/upload/20150605203421054.jpg', '啊啊', null);
INSERT INTO `shop_product` VALUES ('19', '铅笔', '9.00', '2015-06-25 00:00:00', '/shop/upload//real/20150605/20150605203714019.jpg', '耗时', null);
INSERT INTO `shop_product` VALUES ('20', '鼠标垫', '1.00', '2015-06-04 00:00:00', '/shop/upload/real/20150605/20150605205009263.jpg', null, null);
INSERT INTO `shop_product` VALUES ('21', '鼠标垫', '2.00', '2015-06-03 00:00:00', '/shop/upload/real/20150605/20150605205144871.jpg', null, null);
INSERT INTO `shop_product` VALUES ('22', '商品', '99.00', '2015-06-04 01:01:01', '/shop/upload/real/20150605/20150605205245543.jpg', 'asdfasdf', null);
INSERT INTO `shop_product` VALUES ('23', '啊啊', '1.00', '2015-06-01 00:00:00', '/shop/upload/real/20150605/20150605205349374.jpg', '<span style=\"font-family:\'Arial Black\';font-size:32px;\">asdfasdf</span>', null);
INSERT INTO `shop_product` VALUES ('24', '水杯', '88.00', '2015-06-07 16:40:41', '/shop/upload/real/20150607/20150607164045583.jpg', '<span style=\"font-size:32px;color:#006600;\">浪曦牌水杯<br />\r\n&nbsp; &nbsp;<span style=\"font-size:12px;\">安全 好用</span></span><br />\r\n<img src=\"/shop/upload/real/20150607/20150607163951796.jpg\" alt=\"\" width=\"400\" height=\"300\" title=\"\" align=\"\" />', null);

-- ----------------------------
-- Table structure for `shop_user`
-- ----------------------------
DROP TABLE IF EXISTS `shop_user`;
CREATE TABLE `shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activated` int(1) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_user
-- ----------------------------
INSERT INTO `shop_user` VALUES ('3', 'admin', '123', 'admin@123.com', '0', '0', '2', '2015-05-30 15:53:37', '2015-05-30 15:53:37');
INSERT INTO `shop_user` VALUES ('4', 'zhangsan', '123', '283679802@qq.com', '1', '0', '1', '2015-05-30 20:43:03', '2015-05-30 20:43:03');
INSERT INTO `shop_user` VALUES ('5', 'lisi', '123', '283679802@qq.com', '0', '0', '1', '2015-05-30 20:54:25', '2015-05-30 20:54:25');
INSERT INTO `shop_user` VALUES ('6', 'wangwu', '123', '283679802@qq.com', '0', '0', '1', '2015-05-30 20:55:57', '2015-05-30 20:55:57');
