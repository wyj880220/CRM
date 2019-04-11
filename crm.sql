/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-05-19 14:53:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crm_nav
-- ----------------------------
DROP TABLE IF EXISTS `crm_nav`;
CREATE TABLE `crm_nav` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `text` char(10) NOT NULL COMMENT '导航名称',
  `url` char(20) NOT NULL COMMENT '链接地址',
  `iconCls` char(20) NOT NULL COMMENT '小图标',
  `nid` tinyint(3) unsigned NOT NULL COMMENT '关联ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_nav
-- ----------------------------
INSERT INTO `crm_nav` VALUES ('1', '办公管理', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('2', '客户管理', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('3', '仓库管理', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('4', '财务管理', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('5', '人事管理', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('6', '数据统计', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('7', '系统管理', '', 'icon-system', '0');
INSERT INTO `crm_nav` VALUES ('8', '工作计划', '', 'icon-book', '1');
INSERT INTO `crm_nav` VALUES ('9', '分配任务', '', 'icon-book', '1');
INSERT INTO `crm_nav` VALUES ('10', '通知管理', '', 'icon-book', '1');
INSERT INTO `crm_nav` VALUES ('11', '私信收发', '', 'icon-book', '1');
INSERT INTO `crm_nav` VALUES ('12', '客户信息', '', 'icon-book', '2');
INSERT INTO `crm_nav` VALUES ('13', '跟单记录', '', 'icon-book', '2');
INSERT INTO `crm_nav` VALUES ('14', '销售订单', '', 'icon-book', '2');
INSERT INTO `crm_nav` VALUES ('15', '产品信息', '', 'icon-book', '3');
INSERT INTO `crm_nav` VALUES ('16', '入库记录', '', 'icon-book', '3');
INSERT INTO `crm_nav` VALUES ('17', '出库记录', '', 'icon-book', '3');
INSERT INTO `crm_nav` VALUES ('18', '库存警报', '', 'icon-book', '3');
INSERT INTO `crm_nav` VALUES ('19', '采购记录', '', 'icon-book', '3');
INSERT INTO `crm_nav` VALUES ('20', '收款记录', '', 'icon-book', '4');
INSERT INTO `crm_nav` VALUES ('21', '支出记录', '', 'icon-book', '4');
INSERT INTO `crm_nav` VALUES ('22', '登录帐号', 'User/index', 'icon-book', '5');
INSERT INTO `crm_nav` VALUES ('23', '员工档案', 'Staff/index', 'icon-book', '5');
INSERT INTO `crm_nav` VALUES ('24', '职位部门', 'Post/index', 'icon-book', '5');
INSERT INTO `crm_nav` VALUES ('25', '产品销量', '', 'icon-book', '6');
INSERT INTO `crm_nav` VALUES ('26', '人员分布', '', 'icon-book', '6');
INSERT INTO `crm_nav` VALUES ('27', '客户分析', '', 'icon-book', '6');
INSERT INTO `crm_nav` VALUES ('28', '权限管理', '', 'icon-book', '7');
INSERT INTO `crm_nav` VALUES ('29', '操作日志', '', 'icon-book', '7');

-- ----------------------------
-- Table structure for crm_post
-- ----------------------------
DROP TABLE IF EXISTS `crm_post`;
CREATE TABLE `crm_post` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `name` char(10) NOT NULL COMMENT '职位名称',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_post
-- ----------------------------
INSERT INTO `crm_post` VALUES ('1', '总经理', '2016-05-07 23:06:53');
INSERT INTO `crm_post` VALUES ('2', '销售', '2016-05-08 23:07:05');
INSERT INTO `crm_post` VALUES ('3', '财务', '2016-05-09 23:07:13');

-- ----------------------------
-- Table structure for crm_test
-- ----------------------------
DROP TABLE IF EXISTS `crm_test`;
CREATE TABLE `crm_test` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_test
-- ----------------------------

-- ----------------------------
-- Table structure for crm_user
-- ----------------------------
DROP TABLE IF EXISTS `crm_user`;
CREATE TABLE `crm_user` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `accounts` char(20) NOT NULL COMMENT '帐号名称',
  `password` char(40) NOT NULL COMMENT '帐号密码',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` char(15) NOT NULL COMMENT '最后登录的IP',
  `login_count` mediumint(8) NOT NULL,
  `state` char(2) NOT NULL COMMENT '帐号状态',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_user
-- ----------------------------
INSERT INTO `crm_user` VALUES ('1', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-05-18 16:56:31', '127.0.0.1', '0', '通过', '2016-05-18 16:56:47');
INSERT INTO `crm_user` VALUES ('2', 'lufei', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0000-00-00 00:00:00', '', '0', '通过', '2016-05-19 00:20:01');
INSERT INTO `crm_user` VALUES ('3', 'anqi', 'dd5fef9c1c1da1394d6d34b248c51be2ad740840', '0000-00-00 00:00:00', '', '0', '通过', '2016-05-19 00:20:31');
