/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-05-12 11:00:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog_info`
-- ----------------------------
DROP TABLE IF EXISTS `blog_info`;
CREATE TABLE `blog_info` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_info
-- ----------------------------

-- ----------------------------
-- Table structure for `circle`
-- ----------------------------
DROP TABLE IF EXISTS `circle`;
CREATE TABLE `circle` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL COMMENT '圈子名称',
  `url` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `circlekind` tinyint(4) NOT NULL COMMENT '是否可见',
  `desc` text COMMENT '描述',
  `mark` text COMMENT '宣言',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of circle
-- ----------------------------

-- ----------------------------
-- Table structure for `common_menu`
-- ----------------------------
DROP TABLE IF EXISTS `common_menu`;
CREATE TABLE `common_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL COMMENT '菜单名字',
  `desc` varchar(45) DEFAULT NULL COMMENT '菜单描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `module_name` varchar(45) DEFAULT NULL COMMENT '模块名',
  `controller_name` varchar(45) DEFAULT NULL COMMENT '控制器名',
  `action_name` varchar(45) DEFAULT NULL COMMENT '动作名',
  `url` varchar(255) DEFAULT NULL COMMENT '指定url, 在路由做了url处理的话需要设置该字段',
  `sort` tinyint(4) DEFAULT NULL COMMENT '栏目排序',
  `is_display` tinyint(4) DEFAULT NULL COMMENT '菜单栏目是否显示',
  `icon` varchar(45) DEFAULT NULL COMMENT 'icon标签class',
  `parent_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_menu
-- ----------------------------
INSERT INTO `common_menu` VALUES ('4', 'top1-1', '', '2014-03-20 07:00:40', 'supplier', 'controller', 'action', '/test', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('5', 'ss', '', '2014-03-20 07:47:27', 'supplier', 'ss', 'ss', '', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('6', '商品管理', '', '2014-03-20 07:48:02', 'admin', 'tt', 'tt', '', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('7', '订单管理', '', '2014-03-20 07:49:19', 'admin', '', '', '', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('8', '系统设置', '', '2014-03-20 07:49:32', 'admin', 't3', 't3', '', '-127', '1', '', '0');
INSERT INTO `common_menu` VALUES ('9', 'ss', '', '2014-03-20 07:49:48', 'supplier', 'ss', 'ss', '', '0', '0', '', '0');
INSERT INTO `common_menu` VALUES ('10', 't2-1', '', '2014-03-20 07:55:04', 'admin', 'tt', 'tt', '', '0', '0', '', '7');
INSERT INTO `common_menu` VALUES ('11', 't2-2', '', '2014-03-20 07:55:18', 'admin', 'tt', 'tt', 'tt', '0', '0', '', '7');
INSERT INTO `common_menu` VALUES ('12', '控制台', '', '2014-03-20 08:30:51', 'admin', 'index', 'index', '/admin', '127', '1', 'icon-dashboard', '0');
INSERT INTO `common_menu` VALUES ('13', '栏目列表', '', '2014-03-20 08:33:07', 'admin', 'common_menu', 'index', '', '0', '1', '', '8');
INSERT INTO `common_menu` VALUES ('14', '用户管理', '', '2014-03-20 08:43:10', 'admin', 'user', 'index', '', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('15', '商品列表', '', '2014-03-20 08:45:22', 'admin', 'goods', 'index', '', '0', '1', '', '6');
INSERT INTO `common_menu` VALUES ('16', '订单列表', '', '2014-03-20 08:48:22', 'admin', 'sources_order', 'index', '', '0', '1', '', '7');
INSERT INTO `common_menu` VALUES ('17', '花店注册', '', '2014-03-20 10:18:27', 'shop', 'reg', 'index', '', '0', '0', '', '0');
INSERT INTO `common_menu` VALUES ('18', '花店登陆', '', '2014-03-20 10:19:10', 'shop', 'manager', 'login', '', '0', '0', '', '0');
INSERT INTO `common_menu` VALUES ('19', '控制台', '', '2014-03-20 10:19:41', 'shop', 'index', 'index', '', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('20', '商品管理', '', '2014-03-20 10:20:40', 'shop', '', '', '/shop/goods/index', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('21', '商品列表', '', '2014-03-20 10:21:15', 'shop', 'goods', 'index', '', '0', '1', '', '20');
INSERT INTO `common_menu` VALUES ('22', '管理员编辑', '', '2014-03-20 10:22:51', 'admin', 'user', 'edit', '', '0', '0', '', '14');
INSERT INTO `common_menu` VALUES ('23', '订单管理', '分配到给店铺的订单管理', '2014-03-21 01:31:37', 'shop', '', '', '/shop/order/index', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('24', '订单列表', '', '2014-03-21 01:32:30', 'shop', 'order', 'index', '', '0', '1', '', '23');
INSERT INTO `common_menu` VALUES ('25', '可上架商品', '', '2014-03-21 13:57:20', 'shop', 'goods', 'canshelves', '', '0', '1', '', '20');
INSERT INTO `common_menu` VALUES ('26', '店铺管理', '', '2014-03-24 09:30:09', 'admin', '', '', '/admin/shop_shop/index', '0', '1', '', '0');
INSERT INTO `common_menu` VALUES ('27', '花店列表', '', '2014-03-24 09:30:38', 'admin', 'shop_shop', 'index', '', '0', '1', '', '26');
INSERT INTO `common_menu` VALUES ('28', '花店用户', '', '2014-03-25 07:29:08', 'admin', 'shop_manager', 'index', '', '0', '1', '', '26');

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `id` int(11) NOT NULL COMMENT 'id',
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------

-- ----------------------------
-- Table structure for `photos`
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `photo_src` varchar(255) NOT NULL,
  `photo_desc` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sort_id` int(11) NOT NULL,
  `upload_time` int(11) NOT NULL,
  `upload_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for `rank`
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_id` smallint(6) NOT NULL COMMENT '等级',
  `mark` mediumint(9) NOT NULL COMMENT '等级积分',
  `name` varchar(32) NOT NULL COMMENT '等级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rank
-- ----------------------------

-- ----------------------------
-- Table structure for `shuoshuo`
-- ----------------------------
DROP TABLE IF EXISTS `shuoshuo`;
CREATE TABLE `shuoshuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shuo_time` int(11) NOT NULL,
  `shuo_ip` varchar(255) NOT NULL,
  `shuoshuo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shuoshuo
-- ----------------------------

-- ----------------------------
-- Table structure for `stay_message`
-- ----------------------------
DROP TABLE IF EXISTS `stay_message`;
CREATE TABLE `stay_message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `stay_user_id` int(11) NOT NULL COMMENT '留言者id',
  `message_content` varchar(255) NOT NULL COMMENT '留言内容',
  `stay_user_ip` varchar(15) NOT NULL COMMENT '留言者ip',
  `message_stay_time` int(11) NOT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stay_message
-- ----------------------------

-- ----------------------------
-- Table structure for `system_message`
-- ----------------------------
DROP TABLE IF EXISTS `system_message`;
CREATE TABLE `system_message` (
  `id` int(11) NOT NULL,
  `send_id` int(11) NOT NULL COMMENT '接受者ID',
  `send_default` int(11) NOT NULL COMMENT '1发送所有用户',
  `send_topic` varchar(255) NOT NULL COMMENT '通知标题',
  `send_content` varchar(255) NOT NULL COMMENT '通知内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_message
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `truename` varchar(40) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `birthday` varchar(20) DEFAULT NULL,
  `bloodtype` varchar(8) DEFAULT NULL,
  `blogurl` varchar(200) DEFAULT NULL,
  `intro` varchar(400) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `qq` varchar(30) DEFAULT NULL,
  `msn` varchar(60) DEFAULT NULL,
  `profession` varchar(60) DEFAULT NULL,
  `label` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` char(32) NOT NULL,
  `nickname` varchar(25) NOT NULL,
  `reg_time` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `mark` int(11) NOT NULL COMMENT '用户积分',
  `rank_id` tinyint(4) NOT NULL COMMENT '用户等级',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '上次登录ip',
  `reg_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `user_circle`
-- ----------------------------
DROP TABLE IF EXISTS `user_circle`;
CREATE TABLE `user_circle` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `circle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_circle
-- ----------------------------

-- ----------------------------
-- Table structure for `visitor`
-- ----------------------------
DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `visitor_id` int(11) NOT NULL COMMENT '访客id',
  `visitor_time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `visitor_ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of visitor
-- ----------------------------
