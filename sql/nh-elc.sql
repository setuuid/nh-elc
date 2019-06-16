/*
Navicat MySQL Data Transfer

Source Server         : 47.93.52.207
Source Server Version : 50722
Source Host           : 47.93.52.207:3306
Source Database       : nh-elc

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-06-16 19:12:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for demo
-- ----------------------------
DROP TABLE IF EXISTS `demo`;
CREATE TABLE `demo` (
  `id` varchar(50) NOT NULL COMMENT '主键ID',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `key_word` varchar(255) DEFAULT NULL COMMENT '关键词',
  `punch_time` datetime DEFAULT NULL COMMENT '打卡时间',
  `salary_money` decimal(10,3) DEFAULT NULL COMMENT '工资',
  `bonus_money` double(10,2) DEFAULT NULL COMMENT '奖金',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 {男:1,女:2}',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `content` varchar(1000) DEFAULT NULL COMMENT '个人简介',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo
-- ----------------------------
INSERT INTO `demo` VALUES ('08375a2dff80e821d5a158dd98302b23', '导入小虎', null, null, null, null, '2', '28', null, null, null, 'jeecg-boot', '2019-04-10 11:42:57', null, null);
INSERT INTO `demo` VALUES ('1c2ba51b29a42d9de02bbd708ea8121a', '777777', '777', '2018-12-07 19:43:17', null, null, null, '7', '2018-12-07', null, null, null, null, 'admin', '2019-02-21 18:26:04');
INSERT INTO `demo` VALUES ('1dc29e80be14d1400f165b5c6b30c707', 'zhang daihao', null, null, null, null, '2', null, null, 'zhangdaiscott@163.com', null, null, null, null, null);
INSERT INTO `demo` VALUES ('2f33a3ba91fe81c488a4f099dcfe8436', null, null, null, null, null, '2', null, null, null, null, 'jeecg-boot', '2019-05-21 15:51:22', null, null);
INSERT INTO `demo` VALUES ('304e651dc769d5c9b6e08fb30457a602', '小白兔', null, null, null, null, '2', '28', null, null, null, 'scott', '2019-01-19 13:12:53', 'qinfeng', '2019-01-19 13:13:12');
INSERT INTO `demo` VALUES ('4', 'Sandy', '开源，很好', '2018-12-15 00:00:00', null, null, '2', '21', '2018-12-15', 'test4@baomidou.com', '聪明00', null, null, 'admin', '2019-02-25 16:29:27');
INSERT INTO `demo` VALUES ('42c08b1a2e5b2a96ffa4cc88383d4b11', '秦50090', null, '2019-01-05 20:33:31', null, null, null, '28', '2019-01-05', null, null, 'admin', '2019-01-19 20:33:54', 'admin', '2019-01-19 20:34:29');
INSERT INTO `demo` VALUES ('4436302a0de50bb83025286bc414d6a9', 'zhang daihao', null, null, null, null, null, null, null, 'zhangdaiscott@163.com', null, 'admin', '2019-01-19 15:39:04', null, null);
INSERT INTO `demo` VALUES ('4981637bf71b0c1ed1365241dfcfa0ea', '小虎', null, null, null, null, '2', '28', null, null, null, 'scott', '2019-01-19 13:12:53', 'qinfeng', '2019-01-19 13:13:12');
INSERT INTO `demo` VALUES ('5c16e6a5c31296bcd3f1053d5d118815', '导入zhangdaiscott', null, null, null, null, '1', null, '2019-01-03', null, null, 'jeecg-boot', '2019-04-10 11:42:57', null, null);
INSERT INTO `demo` VALUES ('7', 'zhangdaiscott', null, null, null, null, '1', null, '2019-01-03', null, null, null, null, null, null);
INSERT INTO `demo` VALUES ('73bc58611012617ca446d8999379e4ac', '郭靖11a', '777', '2018-12-07 00:00:00', null, null, null, null, null, null, null, 'jeecg-boot', '2019-03-28 18:16:39', null, null);
INSERT INTO `demo` VALUES ('917e240eaa0b1b2d198ae869b64a81c3', 'zhang daihao', null, null, null, null, '2', '0', '2018-11-29', 'zhangdaiscott@163.com', null, null, null, null, null);
INSERT INTO `demo` VALUES ('94420c5d8fc4420dde1e7196154b3a24', '秦111', null, null, null, null, null, null, null, null, null, 'scott', '2019-01-19 12:54:58', 'qinfeng', '2019-01-19 13:12:10');
INSERT INTO `demo` VALUES ('95740656751c5f22e5932ab0ae33b1e4', '杨康22a', '奸臣', null, null, null, null, null, null, null, null, 'jeecg-boot', '2019-03-28 18:16:39', null, null);
INSERT INTO `demo` VALUES ('b86897900c770503771c7bb88e5d1e9b', 'scott1', '开源、很好、hello', null, null, null, '1', null, null, 'zhangdaiscott@163.com', null, 'scott', '2019-01-19 12:22:34', null, null);
INSERT INTO `demo` VALUES ('c0b7c3de7c62a295ab715943de8a315d', '秦风555', null, null, null, null, null, null, null, null, null, 'admin', '2019-01-19 13:18:30', 'admin', '2019-01-19 13:18:50');
INSERT INTO `demo` VALUES ('c28fa8391ef81d6fabd8bd894a7615aa', '小麦', null, null, null, null, '2', null, null, 'zhangdaiscott@163.com', null, 'jeecg-boot', '2019-04-04 17:18:09', null, null);
INSERT INTO `demo` VALUES ('c2c0d49e3c01913067cf8d1fb3c971d2', 'zhang daihao', null, null, null, null, '2', null, null, 'zhangdaiscott@163.com', null, 'admin', '2019-01-19 23:37:18', 'admin', '2019-01-21 16:49:06');
INSERT INTO `demo` VALUES ('c96279c666b4b82e3ef1e4e2978701ce', '报名时间', null, null, null, null, null, null, null, null, null, 'jeecg-boot', '2019-03-28 18:00:52', null, null);
INSERT INTO `demo` VALUES ('d24668721446e8478eeeafe4db66dcff', 'zhang daihao999', null, null, null, null, '1', null, null, 'zhangdaiscott@163.com', null, null, null, null, null);
INSERT INTO `demo` VALUES ('eaa6c1116b41dc10a94eae34cf990133', 'zhang daihao', null, null, null, null, null, null, null, 'zhangdaiscott@163.com', null, null, null, null, null);
INSERT INTO `demo` VALUES ('ffa9da1ad40632dfcabac51d766865bd', '秦999', null, null, null, null, null, null, null, null, null, 'admin', '2019-01-19 23:36:34', 'admin', '2019-02-14 17:30:43');

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '注释',
  `company_id` varchar(32) DEFAULT NULL COMMENT '公司名称',
  `e_type_id` int(11) NOT NULL COMMENT '设备种类',
  `e_category_id` int(11) DEFAULT NULL COMMENT '设备类别',
  `name` varchar(255) DEFAULT NULL COMMENT '设备名称',
  `safe_level` varchar(50) DEFAULT NULL COMMENT '安全等级',
  `bit_number` varchar(200) DEFAULT NULL COMMENT '设备位号',
  `unit` varchar(100) DEFAULT NULL COMMENT '所属单元',
  `model` varchar(100) DEFAULT NULL COMMENT '设备型号',
  `use_status` varchar(10) NOT NULL COMMENT '使用状态',
  `use_time` date DEFAULT NULL COMMENT '投入使用日期',
  `year` varchar(10) DEFAULT NULL COMMENT '使用寿命(年)',
  `destory_time` date DEFAULT NULL COMMENT '报废日期',
  `real_destory_time` date DEFAULT NULL COMMENT '实际淘汰日期',
  `plan_destory_time` date DEFAULT NULL COMMENT '计划淘汰日期',
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  `add_time` date DEFAULT NULL COMMENT '添加日期',
  `last_update_time` date DEFAULT NULL COMMENT '最后修改时间',
  `uid` varchar(255) DEFAULT NULL COMMENT '使用人',
  `factory_num` varchar(500) DEFAULT NULL COMMENT '出场编号',
  `use_card_num` varchar(500) DEFAULT NULL COMMENT '使用证编号',
  `main_note` varchar(1000) DEFAULT NULL COMMENT '设备备注',
  `check_organization` varchar(500) DEFAULT NULL COMMENT '检验机构(特种设备特有)',
  `maintenance_unit` varchar(255) DEFAULT NULL COMMENT '维保单位/联系人(电梯类)',
  `rated_load` varchar(500) DEFAULT NULL COMMENT '额定起重量（起重机械类设备特有）',
  `qrcode_linksrc` varchar(200) DEFAULT NULL COMMENT '二维码连接地址',
  `qrcode_imgsrc` varchar(200) DEFAULT NULL COMMENT '二维码图片地址',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `company_id_index` (`company_id`) USING BTREE,
  KEY `status_index` (`status`) USING BTREE,
  KEY `plan_destory_time_index` (`plan_destory_time`) USING BTREE,
  KEY `use_status_index` (`use_status`) USING BTREE,
  KEY `uid_index` (`uid`) USING BTREE,
  KEY `e_type_id_index` (`e_type_id`) USING BTREE,
  KEY `e_category_id_index` (`e_category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES ('1', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '河北哈就好的无', '1', '1', '1', null, '2', '2019-05-27', '1', null, null, null, '1', '2019-05-27', '2019-05-27', 'e9ca23d68d884d4ebb19d07889727dae', null, 'asddasda', null, 'sadasdsad', null, null, null, null, null, null, 'admin', '2019-05-27 17:18:54');
INSERT INTO `equipment` VALUES ('2', 'fbdc823bd5ed440eba1dba52bf3df363', '2', '8', '1', '1', '1', '1', null, '2', '2019-05-27', '1', null, null, null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('3', 'fbdc823bd5ed440eba1dba52bf3df363', '4', '7', '河北哈就好的无', '1', '1', '氧化', null, '2', '2019-05-27', '1', null, null, null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('4', 'fbdc823bd5ed440eba1dba52bf3df363', '5', '15', '安徽省管服务', '1', '1', '氧化', null, '2', '2019-05-27', '1', null, null, null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('5', 'fbdc823bd5ed440eba1dba52bf3df363', '6', '9', '1', '1', '1', '氧化', null, '2', '2019-05-27', '1', null, null, null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('6', 'fbdc823bd5ed440eba1dba52bf3df363', '2', '8', '1', '1', '1', '氧化', null, '3', '2019-05-27', '11', null, '2019-05-27', '2019-05-27', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('7', 'fbdc823bd5ed440eba1dba52bf3df363', '2', '8', '河北哈就好的无', '1', '1', '氧化', null, '2', '2016-05-27', '1', null, null, null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('8', 'fbdc823bd5ed440eba1dba52bf3df363', '2', '8', '12', '12', '12', '氧化', null, '2', '2019-05-27', '12', null, null, '2019-05-27', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('9', 'fbdc823bd5ed440eba1dba52bf3df363', '2', '8', '安徽省管服务', '·', '·', '氧化', null, '3', '2019-05-09', '1', null, '2019-05-27', null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('10', 'fbdc823bd5ed440eba1dba52bf3df363', '2', '8', '安徽省管服务', '1', '1', '氧化', null, '2', '2010-05-27', '1', null, null, null, '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('11', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('12', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('17', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('18', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('19', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('20', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('21', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('22', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('23', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('24', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('25', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('26', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('27', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('28', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('29', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('30', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('31', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('32', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('33', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('34', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('35', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('36', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('37', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('38', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('39', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('40', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('41', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('42', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('43', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('44', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('45', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('46', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('47', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('48', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('49', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('50', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('51', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('52', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('53', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('54', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('55', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('56', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('57', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('58', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('59', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('60', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('61', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('62', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('63', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('64', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('65', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('66', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('67', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('68', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('69', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('70', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('71', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('72', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('73', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('74', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('75', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('76', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('77', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('78', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('79', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('80', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('81', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('82', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('83', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('84', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('85', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('86', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('87', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('88', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('89', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('90', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('91', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('92', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('93', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('94', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('95', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('96', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('97', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('98', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('99', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('100', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('101', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('102', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('103', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('104', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('105', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('106', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('107', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('108', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('109', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('110', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('111', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('112', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('113', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('114', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('115', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('116', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('117', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('118', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('119', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('120', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('121', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('122', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('123', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('124', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('125', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('126', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('127', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('128', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('129', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('130', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('131', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('132', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('133', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('134', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('135', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('136', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('137', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('138', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('139', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('140', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('141', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('142', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('143', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('144', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('145', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('146', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('147', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('148', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('149', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('150', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('151', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('152', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('153', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('154', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('155', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('156', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('157', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('158', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('159', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('160', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('161', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('162', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('163', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('164', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('165', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('166', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('167', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('168', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('169', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('170', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('171', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('172', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('173', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('174', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('175', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('176', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('177', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('178', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('179', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('180', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('181', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('182', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('183', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('184', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('185', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('186', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('187', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('188', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('189', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('190', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('191', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('192', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('193', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('194', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('195', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('196', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('197', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('198', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('199', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('200', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('201', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('202', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('203', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('204', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('205', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('206', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('207', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('208', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('209', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('210', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('211', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('212', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('213', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('214', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('215', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('216', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('217', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('218', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('219', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('220', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('221', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('222', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('223', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('224', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('225', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('226', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('227', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('228', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('229', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('230', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('231', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('232', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('233', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('234', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('235', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('236', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('237', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('238', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('239', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('240', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('241', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('242', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-27', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('243', '4f2e5f2fd22b4289a0e21d00943cc3b1', '2', '8', '12', '12', '12', '12', '12', '2', '2019-05-28', '12', null, null, '2019-05-31', '1', '2019-05-28', null, 'a8126501912a4e50adf5d0c424b0d396', null, '12', '12', null, null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('244', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('245', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('246', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('247', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('248', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('249', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('250', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('251', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('252', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('253', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('254', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('255', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('256', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('257', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('258', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('259', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('260', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('261', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('262', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('263', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('264', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('265', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('266', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('267', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('268', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('269', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('270', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('271', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('272', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('273', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('274', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('275', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('276', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('277', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('278', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('279', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('280', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('281', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('282', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('283', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('284', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('285', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('286', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('287', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('288', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('289', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('290', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('291', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('292', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('293', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('294', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('295', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('296', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('297', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('298', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('299', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('300', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('301', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('302', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('303', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('304', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('305', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('306', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('307', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('308', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('309', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('310', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('311', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('312', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('313', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('314', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('315', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('316', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('317', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('318', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('319', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('320', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('321', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('322', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('323', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('324', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('325', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('326', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('327', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('328', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('329', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('330', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('331', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('332', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('333', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('334', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('335', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-28', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('336', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('337', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('338', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('339', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('340', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('341', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('342', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('343', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('344', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('345', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('346', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('347', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('348', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('349', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('350', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('351', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('352', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('353', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('354', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('355', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('356', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('357', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('358', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('359', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('360', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('361', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('362', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('363', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('364', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('365', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('366', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('367', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('368', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('369', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('370', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('371', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('372', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('373', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('374', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('375', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('376', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('377', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('378', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('379', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('380', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('381', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('382', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('383', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('384', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('385', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('386', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('387', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('388', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('389', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('390', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('391', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('392', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('393', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('394', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('395', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('396', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('397', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('398', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('399', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('400', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('401', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('402', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('403', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('404', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('405', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('406', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('407', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('408', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('409', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('410', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('411', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('412', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('413', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('414', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('415', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('416', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('417', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('418', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('419', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('420', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('421', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('422', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('423', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('424', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('425', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('426', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('427', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('428', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('429', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('430', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('431', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('432', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('433', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('434', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('435', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('436', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('437', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('438', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('439', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('440', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('441', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('442', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('443', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('444', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('445', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('446', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('447', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('448', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('449', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('450', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('451', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('452', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('453', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('454', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('455', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('456', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('457', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('458', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('459', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('460', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('461', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('462', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('463', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('464', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('465', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('466', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('467', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('468', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('469', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('470', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('471', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('472', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('473', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('474', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('475', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('476', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('477', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('478', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('479', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('480', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('481', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('482', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('483', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('484', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('485', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('486', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('487', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('488', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('489', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('490', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('491', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('492', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('493', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('494', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('495', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('496', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('497', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('498', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('499', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('500', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('501', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('502', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('503', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('504', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('505', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('506', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('507', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('508', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('509', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('510', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('511', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('512', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('513', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('514', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('515', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('516', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('517', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('518', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('519', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('520', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('521', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('522', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('523', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('524', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('525', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('526', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('527', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('528', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('529', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('530', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('531', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('532', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('533', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('534', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('535', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('536', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('537', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('538', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('539', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('540', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('541', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('542', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('543', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('544', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('545', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('546', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('547', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('548', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('549', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('550', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('551', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('552', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('553', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('554', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('555', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('556', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('557', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('558', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('559', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('560', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('561', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('562', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('563', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('564', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('565', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('566', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('567', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('568', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('569', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('570', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('571', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('572', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('573', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('574', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('575', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('576', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('577', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('578', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('579', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('580', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('581', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('582', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('583', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('584', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('585', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('586', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('587', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('588', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('589', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('590', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('591', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('592', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('593', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('594', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('595', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('596', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('597', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('598', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('599', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('600', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('601', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('602', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('603', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('604', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('605', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('606', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('607', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('608', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('609', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('610', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('611', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('612', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('613', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('614', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('615', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('616', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('617', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('618', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('619', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('620', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('621', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('622', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('623', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('624', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('625', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('626', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('627', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('628', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('629', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('630', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('631', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('632', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('633', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('634', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('635', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('636', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('637', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('638', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('639', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('640', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('641', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('642', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('643', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('644', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('645', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('646', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('647', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('648', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('649', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('650', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('651', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('652', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('653', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('654', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('655', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('656', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('657', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('658', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('659', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('660', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('661', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('662', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('663', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('664', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('665', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('666', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('667', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('668', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('669', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('670', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('671', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('672', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('673', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('674', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('675', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('676', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('677', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('678', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('679', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('680', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('681', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('682', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('683', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('684', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('685', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('686', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('687', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('688', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('689', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('690', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('691', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('692', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('693', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('694', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('695', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('696', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('697', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('698', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('699', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('700', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('701', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('702', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('703', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('704', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('705', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('706', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('707', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('708', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('709', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('710', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('711', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('712', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('713', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('714', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('715', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('716', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('717', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('718', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('719', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('720', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('721', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('722', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('723', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('724', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('725', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('726', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('727', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('728', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('729', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('730', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('731', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('732', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('733', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('734', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('735', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('736', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('737', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('738', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('739', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('740', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('741', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('742', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('743', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('744', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('745', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('746', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('747', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('748', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('749', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('750', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('751', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('752', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('753', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('754', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('755', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('756', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('757', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('758', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('759', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('760', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('761', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('762', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('763', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('764', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('765', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('766', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('767', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('768', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('769', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('770', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('771', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('772', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('773', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('774', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('775', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('776', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('777', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('778', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('779', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('780', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('781', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('782', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('783', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('784', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('785', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('786', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('787', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('788', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('789', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('790', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('791', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('792', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('793', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('794', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('795', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('796', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('797', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('798', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('799', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('800', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('801', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('802', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('803', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('804', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('805', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('806', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('807', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('808', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('809', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('810', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('811', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('812', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('813', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('814', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('815', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('816', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('817', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('818', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('819', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('820', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('821', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('822', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('823', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('824', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('825', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('826', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('827', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('828', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('829', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('830', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('831', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('832', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('833', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('834', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('835', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('836', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('837', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('838', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('839', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('840', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('841', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('842', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('843', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('844', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('845', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('846', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('847', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('848', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('849', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('850', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('851', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('852', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('853', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('854', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('855', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('856', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('857', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('858', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('859', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('860', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('861', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('862', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('863', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('864', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('865', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('866', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('867', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('868', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('869', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('870', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('871', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('872', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('873', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('874', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('875', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('876', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('877', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('878', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('879', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('880', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('881', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('882', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('883', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('884', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('885', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('886', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('887', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('888', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('889', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('890', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('891', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('892', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('893', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('894', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('895', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('896', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('897', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('898', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('899', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('900', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('901', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('902', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('903', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('904', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('905', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('906', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('907', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('908', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('909', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('910', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('911', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('912', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('913', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('914', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('915', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('916', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('917', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('918', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('919', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('920', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('921', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('922', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('923', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('924', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('925', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('926', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('927', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('928', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('929', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('930', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('931', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('932', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('933', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('934', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('935', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('936', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('937', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('938', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('939', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('940', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('941', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('942', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('943', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('944', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('945', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('946', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('947', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('948', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('949', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('950', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('951', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('952', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('953', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('954', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('955', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('956', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('957', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('958', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('959', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('960', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('961', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('962', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('963', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('964', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('965', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('966', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('967', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('968', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('969', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('970', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('971', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('972', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('973', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('974', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('975', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('976', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('977', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('978', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('979', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('980', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('981', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('982', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('983', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('984', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('985', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('986', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('987', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('988', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('989', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('990', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('991', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('992', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('993', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('994', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('995', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('996', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('997', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('998', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('999', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1000', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1001', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1002', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1003', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1004', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1005', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1006', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1007', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1008', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1009', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1010', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1011', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1012', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1013', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1014', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1015', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1016', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1017', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1018', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1019', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1020', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1021', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1022', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1023', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1024', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1025', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1026', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1027', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1028', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1029', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1030', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1031', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1032', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1033', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1034', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1035', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1036', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1037', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1038', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1039', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1040', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1041', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1042', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1043', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1044', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1045', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1046', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1047', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1048', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1049', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1050', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1051', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1052', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1053', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1054', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1055', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1056', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1057', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1058', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1059', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1060', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1061', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1062', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1063', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1064', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1065', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1066', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1067', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1068', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1069', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1070', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1071', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1072', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1073', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1074', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1075', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1076', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1077', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1078', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1079', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1080', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1081', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1082', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1083', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1084', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1085', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1086', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1087', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1088', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1089', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1090', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1091', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1092', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1093', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1094', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1095', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1096', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1097', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1098', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1099', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1100', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1101', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1102', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1103', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1104', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1105', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1106', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1107', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1108', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1109', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1110', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1111', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1112', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1113', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1114', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1115', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1116', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1117', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1118', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1119', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1120', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1121', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1122', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1123', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1124', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1125', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1126', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1127', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1128', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1129', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1130', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1131', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1132', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1133', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1134', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1135', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1136', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1137', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1138', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1139', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1140', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1141', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1142', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1143', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1144', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1145', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1146', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1147', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1148', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1149', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1150', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1151', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1152', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1153', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1154', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1155', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1156', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1157', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1158', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1159', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1160', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1161', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1162', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1163', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1164', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1165', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1166', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1167', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1168', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1169', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1170', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1171', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1172', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1173', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1174', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1175', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1176', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1177', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1178', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1179', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1180', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1181', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1182', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1183', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1184', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1185', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1186', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1187', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1188', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1189', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1190', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1191', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1192', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1193', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1194', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1195', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1196', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1197', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1198', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1199', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1200', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1201', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1202', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1203', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1204', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1205', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1206', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1207', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1208', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1209', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1210', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1211', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1212', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1213', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1214', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1215', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1216', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1217', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1218', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1219', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1220', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1221', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1222', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1223', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1224', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1225', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1226', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1227', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1228', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1229', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1230', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1231', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1232', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1233', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1234', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1235', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1236', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1237', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1238', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1239', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1240', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1241', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1242', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1243', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1244', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1245', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1246', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1247', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1248', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1249', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1250', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1251', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1252', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1253', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1254', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1255', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1256', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1257', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1258', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1259', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1260', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1261', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1262', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1263', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1264', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1265', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1266', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1267', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1268', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1269', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1270', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1271', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1272', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1273', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1274', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1275', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1276', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1277', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1278', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1279', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1280', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1281', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1282', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1283', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1284', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1285', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1286', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1287', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1288', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1289', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1290', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1291', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1292', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1293', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1294', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1295', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1296', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1297', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1298', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1299', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1300', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1301', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1302', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1303', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1304', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1305', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1306', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1307', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1308', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1309', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1310', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1311', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1312', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1313', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1314', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1315', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1316', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1317', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1318', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1319', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1320', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1321', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1322', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1323', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1324', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1325', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1326', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入1', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1327', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入2', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1328', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入3', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1329', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入4', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1330', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入5', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1331', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入6', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1332', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入7', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1333', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入8', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1334', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入9', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1335', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入10', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1336', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入11', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1337', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入12', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1338', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入13', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1339', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入14', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1340', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入15', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1341', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入16', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1342', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入17', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1343', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入18', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1344', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入19', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1345', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入20', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1346', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入21', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1347', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入22', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1348', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入23', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1349', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入24', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1350', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入25', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1351', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入26', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1352', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入27', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1353', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入28', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1354', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入29', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1355', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入30', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1356', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入31', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1357', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入32', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1358', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入33', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1359', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入34', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1360', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入35', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1361', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入36', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1362', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入37', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1363', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入38', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1364', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入39', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1365', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入40', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1366', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入41', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1367', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入42', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1368', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入43', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1369', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入44', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);
INSERT INTO `equipment` VALUES ('1370', 'fbdc823bd5ed440eba1dba52bf3df363', '1', '1', '导入45', '导入', '导入', '导入', '导入', '1', '2018-01-01', '12', null, null, '2018-01-01', '1', '2019-05-29', null, 'e9ca23d68d884d4ebb19d07889727dae', '导入', '导入', null, '导入', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for equipment_log
-- ----------------------------
DROP TABLE IF EXISTS `equipment_log`;
CREATE TABLE `equipment_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `equipment_id` int(11) NOT NULL COMMENT '设备id',
  `equipment_record_id` int(11) NOT NULL COMMENT '设备记录ID',
  `user_id` varchar(32) NOT NULL COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `company_id` varchar(32) NOT NULL COMMENT '操作人所属公司',
  `content` text NOT NULL COMMENT '修改内容',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `add_time` datetime NOT NULL,
  `status` varchar(2) NOT NULL COMMENT '设备状态',
  `type` varchar(2) NOT NULL COMMENT '设备类型',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment_log
-- ----------------------------
INSERT INTO `equipment_log` VALUES ('1', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', 'fbdc823bd5ed440eba1dba52bf3df363', '[{\"new\":\"asddasda\",\"old\":\"\",\"name\":\"使用证编号\"},{\"new\":\"sadasdsad\",\"old\":\"\",\"name\":\"检验机构(特种设备特有)\"},{\"new\":\"asdasd\",\"old\":\"\",\"name\":\"备注\"}]', null, '2019-05-27 17:18:54', '1', '1', 'admin', '2019-05-27 17:18:54', null, null);

-- ----------------------------
-- Table structure for equipment_record
-- ----------------------------
DROP TABLE IF EXISTS `equipment_record`;
CREATE TABLE `equipment_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '生命周期ID',
  `equipment_id` int(11) DEFAULT NULL COMMENT '设备ID',
  `check_time` date DEFAULT NULL COMMENT '本次检验日期',
  `result` varchar(10) DEFAULT NULL COMMENT '检验结论',
  `next_check_time` date DEFAULT NULL COMMENT '下次检验日期',
  `note` varchar(1000) DEFAULT NULL COMMENT '备注',
  `add_time` date DEFAULT NULL COMMENT '添加日期',
  `add_type` varchar(10) DEFAULT NULL COMMENT '添加类型',
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  `uid` varchar(32) DEFAULT NULL COMMENT '添加人',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `equipment_id_index` (`equipment_id`) USING BTREE,
  KEY `result_index` (`result`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of equipment_record
-- ----------------------------
INSERT INTO `equipment_record` VALUES ('1', '1', '2019-05-27', '1', '2019-05-27', 'asdasd', '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:10:52', 'admin', '2019-05-27 17:18:54');
INSERT INTO `equipment_record` VALUES ('2', '2', '2019-05-27', '1', '2019-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:11:15', null, null);
INSERT INTO `equipment_record` VALUES ('3', '3', '2019-05-27', '1', '2019-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:11:42', null, null);
INSERT INTO `equipment_record` VALUES ('4', '4', '2019-05-27', '1', '2019-06-06', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:13:29', null, null);
INSERT INTO `equipment_record` VALUES ('5', '5', '2019-05-27', '1', '2019-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:14:03', null, null);
INSERT INTO `equipment_record` VALUES ('6', '6', '2019-05-27', '1', '2019-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:16:35', null, null);
INSERT INTO `equipment_record` VALUES ('7', '7', '2019-05-31', '1', '2017-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:17:50', null, null);
INSERT INTO `equipment_record` VALUES ('8', '8', '2019-05-27', '1', '2019-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:20:53', null, null);
INSERT INTO `equipment_record` VALUES ('9', '9', '2019-05-27', '1', '2019-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:21:31', null, null);
INSERT INTO `equipment_record` VALUES ('10', '10', '2016-05-27', '1', '2016-05-27', null, '2019-05-27', '1', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 09:22:17', null, null);
INSERT INTO `equipment_record` VALUES ('11', '11', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 14:57:03', null, null);
INSERT INTO `equipment_record` VALUES ('12', '12', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:00:18', null, null);
INSERT INTO `equipment_record` VALUES ('13', '13', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:01:40', null, null);
INSERT INTO `equipment_record` VALUES ('14', '14', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:03:20', null, null);
INSERT INTO `equipment_record` VALUES ('15', '15', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:06:08', null, null);
INSERT INTO `equipment_record` VALUES ('16', '16', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:07:14', null, null);
INSERT INTO `equipment_record` VALUES ('17', '17', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:13', null, null);
INSERT INTO `equipment_record` VALUES ('18', '18', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:13', null, null);
INSERT INTO `equipment_record` VALUES ('19', '19', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:13', null, null);
INSERT INTO `equipment_record` VALUES ('20', '20', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:14', null, null);
INSERT INTO `equipment_record` VALUES ('21', '21', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:14', null, null);
INSERT INTO `equipment_record` VALUES ('22', '22', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:14', null, null);
INSERT INTO `equipment_record` VALUES ('23', '23', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:14', null, null);
INSERT INTO `equipment_record` VALUES ('24', '24', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:14', null, null);
INSERT INTO `equipment_record` VALUES ('25', '25', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:14', null, null);
INSERT INTO `equipment_record` VALUES ('26', '26', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:15', null, null);
INSERT INTO `equipment_record` VALUES ('27', '27', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:15', null, null);
INSERT INTO `equipment_record` VALUES ('28', '28', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:15', null, null);
INSERT INTO `equipment_record` VALUES ('29', '29', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:15', null, null);
INSERT INTO `equipment_record` VALUES ('30', '30', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:16', null, null);
INSERT INTO `equipment_record` VALUES ('31', '31', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:16', null, null);
INSERT INTO `equipment_record` VALUES ('32', '32', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:16', null, null);
INSERT INTO `equipment_record` VALUES ('33', '33', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:16', null, null);
INSERT INTO `equipment_record` VALUES ('34', '34', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:16', null, null);
INSERT INTO `equipment_record` VALUES ('35', '35', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:17', null, null);
INSERT INTO `equipment_record` VALUES ('36', '36', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:17', null, null);
INSERT INTO `equipment_record` VALUES ('37', '37', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:17', null, null);
INSERT INTO `equipment_record` VALUES ('38', '38', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:17', null, null);
INSERT INTO `equipment_record` VALUES ('39', '39', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:17', null, null);
INSERT INTO `equipment_record` VALUES ('40', '40', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:17', null, null);
INSERT INTO `equipment_record` VALUES ('41', '41', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:18', null, null);
INSERT INTO `equipment_record` VALUES ('42', '42', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:18', null, null);
INSERT INTO `equipment_record` VALUES ('43', '43', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:18', null, null);
INSERT INTO `equipment_record` VALUES ('44', '44', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:18', null, null);
INSERT INTO `equipment_record` VALUES ('45', '45', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:18', null, null);
INSERT INTO `equipment_record` VALUES ('46', '46', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:18', null, null);
INSERT INTO `equipment_record` VALUES ('47', '47', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:19', null, null);
INSERT INTO `equipment_record` VALUES ('48', '48', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:19', null, null);
INSERT INTO `equipment_record` VALUES ('49', '49', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:19', null, null);
INSERT INTO `equipment_record` VALUES ('50', '50', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:19', null, null);
INSERT INTO `equipment_record` VALUES ('51', '51', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:19', null, null);
INSERT INTO `equipment_record` VALUES ('52', '52', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:20', null, null);
INSERT INTO `equipment_record` VALUES ('53', '53', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:20', null, null);
INSERT INTO `equipment_record` VALUES ('54', '54', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:20', null, null);
INSERT INTO `equipment_record` VALUES ('55', '55', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:20', null, null);
INSERT INTO `equipment_record` VALUES ('56', '56', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:20', null, null);
INSERT INTO `equipment_record` VALUES ('57', '57', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:20', null, null);
INSERT INTO `equipment_record` VALUES ('58', '58', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:21', null, null);
INSERT INTO `equipment_record` VALUES ('59', '59', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:21', null, null);
INSERT INTO `equipment_record` VALUES ('60', '60', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:21', null, null);
INSERT INTO `equipment_record` VALUES ('61', '61', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:10:21', null, null);
INSERT INTO `equipment_record` VALUES ('62', '62', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:25:36', null, null);
INSERT INTO `equipment_record` VALUES ('63', '63', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('64', '64', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('65', '65', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('66', '66', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('67', '67', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('68', '68', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('69', '69', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('70', '70', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('71', '71', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('72', '72', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('73', '73', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('74', '74', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('75', '75', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('76', '76', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('77', '77', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('78', '78', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('79', '79', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('80', '80', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('81', '81', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('82', '82', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('83', '83', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('84', '84', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('85', '85', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('86', '86', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('87', '87', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('88', '88', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('89', '89', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('90', '90', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('91', '91', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('92', '92', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('93', '93', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('94', '94', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('95', '95', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('96', '96', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('97', '97', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('98', '98', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('99', '99', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('100', '100', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('101', '101', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('102', '102', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('103', '103', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('104', '104', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('105', '105', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('106', '106', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('107', '107', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 15:26:14', null, null);
INSERT INTO `equipment_record` VALUES ('108', '108', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('109', '109', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('110', '110', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('111', '111', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('112', '112', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('113', '113', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('114', '114', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('115', '115', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('116', '116', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('117', '117', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('118', '118', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('119', '119', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('120', '120', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:14', null, null);
INSERT INTO `equipment_record` VALUES ('121', '121', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('122', '122', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('123', '123', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('124', '124', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('125', '125', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('126', '126', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('127', '127', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('128', '128', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('129', '129', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('130', '130', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('131', '131', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('132', '132', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('133', '133', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('134', '134', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('135', '135', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('136', '136', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('137', '137', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('138', '138', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('139', '139', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('140', '140', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('141', '141', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('142', '142', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('143', '143', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('144', '144', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('145', '145', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('146', '146', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('147', '147', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('148', '148', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('149', '149', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('150', '150', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('151', '151', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('152', '152', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:34:15', null, null);
INSERT INTO `equipment_record` VALUES ('153', '153', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('154', '154', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('155', '155', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('156', '156', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('157', '157', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('158', '158', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('159', '159', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('160', '160', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('161', '161', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('162', '162', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('163', '163', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('164', '164', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('165', '165', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('166', '166', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('167', '167', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('168', '168', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('169', '169', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('170', '170', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('171', '171', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:40', null, null);
INSERT INTO `equipment_record` VALUES ('172', '172', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('173', '173', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('174', '174', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('175', '175', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('176', '176', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('177', '177', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('178', '178', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('179', '179', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('180', '180', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('181', '181', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('182', '182', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('183', '183', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('184', '184', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('185', '185', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('186', '186', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('187', '187', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('188', '188', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('189', '189', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('190', '190', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('191', '191', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('192', '192', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('193', '193', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('194', '194', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('195', '195', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('196', '196', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('197', '197', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 16:43:41', null, null);
INSERT INTO `equipment_record` VALUES ('198', '198', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('199', '199', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('200', '200', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('201', '201', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('202', '202', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('203', '203', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('204', '204', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('205', '205', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('206', '206', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('207', '207', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('208', '208', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('209', '209', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('210', '210', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('211', '211', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('212', '212', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('213', '213', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('214', '214', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:20', null, null);
INSERT INTO `equipment_record` VALUES ('215', '215', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('216', '216', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('217', '217', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('218', '218', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('219', '219', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('220', '220', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('221', '221', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('222', '222', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('223', '223', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('224', '224', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('225', '225', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('226', '226', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('227', '227', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('228', '228', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('229', '229', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('230', '230', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('231', '231', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('232', '232', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('233', '233', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('234', '234', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('235', '235', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('236', '236', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('237', '237', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('238', '238', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('239', '239', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('240', '240', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('241', '241', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('242', '242', '2018-01-01', '1', '2018-01-01', null, '2019-05-27', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-27 21:39:21', null, null);
INSERT INTO `equipment_record` VALUES ('243', '243', '2019-05-28', '1', '2019-06-07', '12', '2019-05-28', '1', '1', 'a8126501912a4e50adf5d0c424b0d396', 'qyyh', '2019-05-28 10:01:04', null, null);
INSERT INTO `equipment_record` VALUES ('244', '244', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('245', '245', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('246', '246', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('247', '247', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('248', '248', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('249', '249', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('250', '250', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('251', '251', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('252', '252', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('253', '253', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('254', '254', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('255', '255', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('256', '256', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('257', '257', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('258', '258', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('259', '259', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:51', null, null);
INSERT INTO `equipment_record` VALUES ('260', '260', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('261', '261', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('262', '262', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('263', '263', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('264', '264', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('265', '265', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('266', '266', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('267', '267', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('268', '268', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('269', '269', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('270', '270', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('271', '271', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('272', '272', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('273', '273', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('274', '274', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('275', '275', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('276', '276', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('277', '277', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('278', '278', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('279', '279', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('280', '280', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('281', '281', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('282', '282', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('283', '283', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('284', '284', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('285', '285', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('286', '286', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('287', '287', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('288', '288', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:33:52', null, null);
INSERT INTO `equipment_record` VALUES ('289', '289', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:06', null, null);
INSERT INTO `equipment_record` VALUES ('290', '290', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:06', null, null);
INSERT INTO `equipment_record` VALUES ('291', '291', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:06', null, null);
INSERT INTO `equipment_record` VALUES ('292', '292', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('293', '293', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('294', '294', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('295', '295', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('296', '296', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('297', '297', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('298', '298', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('299', '299', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('300', '300', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('301', '301', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('302', '302', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('303', '303', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('304', '304', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('305', '305', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('306', '306', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('307', '307', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('308', '308', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('309', '309', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('310', '310', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('311', '311', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('312', '312', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('313', '313', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('314', '314', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('315', '315', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('316', '316', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('317', '317', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('318', '318', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('319', '319', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('320', '320', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('321', '321', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('322', '322', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('323', '323', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('324', '324', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('325', '325', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('326', '326', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('327', '327', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('328', '328', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('329', '329', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('330', '330', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('331', '331', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('332', '332', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('333', '333', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:35:07', null, null);
INSERT INTO `equipment_record` VALUES ('334', '334', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:39:23', null, null);
INSERT INTO `equipment_record` VALUES ('335', '335', '2018-01-01', '1', '2018-01-01', null, '2019-05-28', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-28 15:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('336', '336', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:32', null, null);
INSERT INTO `equipment_record` VALUES ('337', '337', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:32', null, null);
INSERT INTO `equipment_record` VALUES ('338', '338', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:33', null, null);
INSERT INTO `equipment_record` VALUES ('339', '339', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:33', null, null);
INSERT INTO `equipment_record` VALUES ('340', '340', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:33', null, null);
INSERT INTO `equipment_record` VALUES ('341', '341', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:33', null, null);
INSERT INTO `equipment_record` VALUES ('342', '342', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:33', null, null);
INSERT INTO `equipment_record` VALUES ('343', '343', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:34', null, null);
INSERT INTO `equipment_record` VALUES ('344', '344', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:34', null, null);
INSERT INTO `equipment_record` VALUES ('345', '345', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:34', null, null);
INSERT INTO `equipment_record` VALUES ('346', '346', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:34', null, null);
INSERT INTO `equipment_record` VALUES ('347', '347', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:34', null, null);
INSERT INTO `equipment_record` VALUES ('348', '348', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:35', null, null);
INSERT INTO `equipment_record` VALUES ('349', '349', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:35', null, null);
INSERT INTO `equipment_record` VALUES ('350', '350', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:35', null, null);
INSERT INTO `equipment_record` VALUES ('351', '351', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:35', null, null);
INSERT INTO `equipment_record` VALUES ('352', '352', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:35', null, null);
INSERT INTO `equipment_record` VALUES ('353', '353', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:35', null, null);
INSERT INTO `equipment_record` VALUES ('354', '354', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:36', null, null);
INSERT INTO `equipment_record` VALUES ('355', '355', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:36', null, null);
INSERT INTO `equipment_record` VALUES ('356', '356', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:36', null, null);
INSERT INTO `equipment_record` VALUES ('357', '357', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:36', null, null);
INSERT INTO `equipment_record` VALUES ('358', '358', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:36', null, null);
INSERT INTO `equipment_record` VALUES ('359', '359', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:37', null, null);
INSERT INTO `equipment_record` VALUES ('360', '360', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:37', null, null);
INSERT INTO `equipment_record` VALUES ('361', '361', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:37', null, null);
INSERT INTO `equipment_record` VALUES ('362', '362', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:37', null, null);
INSERT INTO `equipment_record` VALUES ('363', '363', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('364', '364', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('365', '365', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('366', '366', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('367', '367', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('368', '368', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:38', null, null);
INSERT INTO `equipment_record` VALUES ('369', '369', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:39', null, null);
INSERT INTO `equipment_record` VALUES ('370', '370', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:39', null, null);
INSERT INTO `equipment_record` VALUES ('371', '371', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:39', null, null);
INSERT INTO `equipment_record` VALUES ('372', '372', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:39', null, null);
INSERT INTO `equipment_record` VALUES ('373', '373', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:39', null, null);
INSERT INTO `equipment_record` VALUES ('374', '374', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:40', null, null);
INSERT INTO `equipment_record` VALUES ('375', '375', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:40', null, null);
INSERT INTO `equipment_record` VALUES ('376', '376', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:40', null, null);
INSERT INTO `equipment_record` VALUES ('377', '377', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:40', null, null);
INSERT INTO `equipment_record` VALUES ('378', '378', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:41', null, null);
INSERT INTO `equipment_record` VALUES ('379', '379', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:41', null, null);
INSERT INTO `equipment_record` VALUES ('380', '380', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:41', null, null);
INSERT INTO `equipment_record` VALUES ('381', '381', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:42', null, null);
INSERT INTO `equipment_record` VALUES ('382', '382', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:42', null, null);
INSERT INTO `equipment_record` VALUES ('383', '383', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:42', null, null);
INSERT INTO `equipment_record` VALUES ('384', '384', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:42', null, null);
INSERT INTO `equipment_record` VALUES ('385', '385', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:43', null, null);
INSERT INTO `equipment_record` VALUES ('386', '386', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:43', null, null);
INSERT INTO `equipment_record` VALUES ('387', '387', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:43', null, null);
INSERT INTO `equipment_record` VALUES ('388', '388', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:43', null, null);
INSERT INTO `equipment_record` VALUES ('389', '389', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:44', null, null);
INSERT INTO `equipment_record` VALUES ('390', '390', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:44', null, null);
INSERT INTO `equipment_record` VALUES ('391', '391', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:44', null, null);
INSERT INTO `equipment_record` VALUES ('392', '392', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:44', null, null);
INSERT INTO `equipment_record` VALUES ('393', '393', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:45', null, null);
INSERT INTO `equipment_record` VALUES ('394', '394', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:45', null, null);
INSERT INTO `equipment_record` VALUES ('395', '395', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:45', null, null);
INSERT INTO `equipment_record` VALUES ('396', '396', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:45', null, null);
INSERT INTO `equipment_record` VALUES ('397', '397', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:45', null, null);
INSERT INTO `equipment_record` VALUES ('398', '398', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:46', null, null);
INSERT INTO `equipment_record` VALUES ('399', '399', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:46', null, null);
INSERT INTO `equipment_record` VALUES ('400', '400', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:46', null, null);
INSERT INTO `equipment_record` VALUES ('401', '401', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:46', null, null);
INSERT INTO `equipment_record` VALUES ('402', '402', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:47', null, null);
INSERT INTO `equipment_record` VALUES ('403', '403', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:47', null, null);
INSERT INTO `equipment_record` VALUES ('404', '404', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:47', null, null);
INSERT INTO `equipment_record` VALUES ('405', '405', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:47', null, null);
INSERT INTO `equipment_record` VALUES ('406', '406', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:47', null, null);
INSERT INTO `equipment_record` VALUES ('407', '407', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:48', null, null);
INSERT INTO `equipment_record` VALUES ('408', '408', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:48', null, null);
INSERT INTO `equipment_record` VALUES ('409', '409', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:48', null, null);
INSERT INTO `equipment_record` VALUES ('410', '410', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:48', null, null);
INSERT INTO `equipment_record` VALUES ('411', '411', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:49', null, null);
INSERT INTO `equipment_record` VALUES ('412', '412', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:49', null, null);
INSERT INTO `equipment_record` VALUES ('413', '413', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:49', null, null);
INSERT INTO `equipment_record` VALUES ('414', '414', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:49', null, null);
INSERT INTO `equipment_record` VALUES ('415', '415', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:49', null, null);
INSERT INTO `equipment_record` VALUES ('416', '416', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:49', null, null);
INSERT INTO `equipment_record` VALUES ('417', '417', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:50', null, null);
INSERT INTO `equipment_record` VALUES ('418', '418', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:50', null, null);
INSERT INTO `equipment_record` VALUES ('419', '419', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:50', null, null);
INSERT INTO `equipment_record` VALUES ('420', '420', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:50', null, null);
INSERT INTO `equipment_record` VALUES ('421', '421', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:50', null, null);
INSERT INTO `equipment_record` VALUES ('422', '422', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:51', null, null);
INSERT INTO `equipment_record` VALUES ('423', '423', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:51', null, null);
INSERT INTO `equipment_record` VALUES ('424', '424', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:51', null, null);
INSERT INTO `equipment_record` VALUES ('425', '425', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:51', null, null);
INSERT INTO `equipment_record` VALUES ('426', '426', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:52', null, null);
INSERT INTO `equipment_record` VALUES ('427', '427', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:52', null, null);
INSERT INTO `equipment_record` VALUES ('428', '428', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:52', null, null);
INSERT INTO `equipment_record` VALUES ('429', '429', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:53', null, null);
INSERT INTO `equipment_record` VALUES ('430', '430', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:53', null, null);
INSERT INTO `equipment_record` VALUES ('431', '431', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:53', null, null);
INSERT INTO `equipment_record` VALUES ('432', '432', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:53', null, null);
INSERT INTO `equipment_record` VALUES ('433', '433', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:54', null, null);
INSERT INTO `equipment_record` VALUES ('434', '434', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:54', null, null);
INSERT INTO `equipment_record` VALUES ('435', '435', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:54', null, null);
INSERT INTO `equipment_record` VALUES ('436', '436', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:54', null, null);
INSERT INTO `equipment_record` VALUES ('437', '437', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:54', null, null);
INSERT INTO `equipment_record` VALUES ('438', '438', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:54', null, null);
INSERT INTO `equipment_record` VALUES ('439', '439', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:55', null, null);
INSERT INTO `equipment_record` VALUES ('440', '440', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:55', null, null);
INSERT INTO `equipment_record` VALUES ('441', '441', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:55', null, null);
INSERT INTO `equipment_record` VALUES ('442', '442', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:55', null, null);
INSERT INTO `equipment_record` VALUES ('443', '443', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:55', null, null);
INSERT INTO `equipment_record` VALUES ('444', '444', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:55', null, null);
INSERT INTO `equipment_record` VALUES ('445', '445', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:56', null, null);
INSERT INTO `equipment_record` VALUES ('446', '446', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:56', null, null);
INSERT INTO `equipment_record` VALUES ('447', '447', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:56', null, null);
INSERT INTO `equipment_record` VALUES ('448', '448', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:56', null, null);
INSERT INTO `equipment_record` VALUES ('449', '449', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:56', null, null);
INSERT INTO `equipment_record` VALUES ('450', '450', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:57', null, null);
INSERT INTO `equipment_record` VALUES ('451', '451', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:57', null, null);
INSERT INTO `equipment_record` VALUES ('452', '452', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:57', null, null);
INSERT INTO `equipment_record` VALUES ('453', '453', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:57', null, null);
INSERT INTO `equipment_record` VALUES ('454', '454', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:57', null, null);
INSERT INTO `equipment_record` VALUES ('455', '455', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:57', null, null);
INSERT INTO `equipment_record` VALUES ('456', '456', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:58', null, null);
INSERT INTO `equipment_record` VALUES ('457', '457', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:58', null, null);
INSERT INTO `equipment_record` VALUES ('458', '458', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:58', null, null);
INSERT INTO `equipment_record` VALUES ('459', '459', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:58', null, null);
INSERT INTO `equipment_record` VALUES ('460', '460', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:58', null, null);
INSERT INTO `equipment_record` VALUES ('461', '461', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:58', null, null);
INSERT INTO `equipment_record` VALUES ('462', '462', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:59', null, null);
INSERT INTO `equipment_record` VALUES ('463', '463', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:59', null, null);
INSERT INTO `equipment_record` VALUES ('464', '464', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:59', null, null);
INSERT INTO `equipment_record` VALUES ('465', '465', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:59', null, null);
INSERT INTO `equipment_record` VALUES ('466', '466', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:59', null, null);
INSERT INTO `equipment_record` VALUES ('467', '467', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:39:59', null, null);
INSERT INTO `equipment_record` VALUES ('468', '468', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:00', null, null);
INSERT INTO `equipment_record` VALUES ('469', '469', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:00', null, null);
INSERT INTO `equipment_record` VALUES ('470', '470', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:00', null, null);
INSERT INTO `equipment_record` VALUES ('471', '471', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:00', null, null);
INSERT INTO `equipment_record` VALUES ('472', '472', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:00', null, null);
INSERT INTO `equipment_record` VALUES ('473', '473', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:01', null, null);
INSERT INTO `equipment_record` VALUES ('474', '474', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:01', null, null);
INSERT INTO `equipment_record` VALUES ('475', '475', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:01', null, null);
INSERT INTO `equipment_record` VALUES ('476', '476', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:01', null, null);
INSERT INTO `equipment_record` VALUES ('477', '477', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:01', null, null);
INSERT INTO `equipment_record` VALUES ('478', '478', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:02', null, null);
INSERT INTO `equipment_record` VALUES ('479', '479', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:02', null, null);
INSERT INTO `equipment_record` VALUES ('480', '480', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:02', null, null);
INSERT INTO `equipment_record` VALUES ('481', '481', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:02', null, null);
INSERT INTO `equipment_record` VALUES ('482', '482', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:02', null, null);
INSERT INTO `equipment_record` VALUES ('483', '483', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:02', null, null);
INSERT INTO `equipment_record` VALUES ('484', '484', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:03', null, null);
INSERT INTO `equipment_record` VALUES ('485', '485', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:03', null, null);
INSERT INTO `equipment_record` VALUES ('486', '486', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:03', null, null);
INSERT INTO `equipment_record` VALUES ('487', '487', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:03', null, null);
INSERT INTO `equipment_record` VALUES ('488', '488', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:04', null, null);
INSERT INTO `equipment_record` VALUES ('489', '489', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:04', null, null);
INSERT INTO `equipment_record` VALUES ('490', '490', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:04', null, null);
INSERT INTO `equipment_record` VALUES ('491', '491', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:04', null, null);
INSERT INTO `equipment_record` VALUES ('492', '492', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:04', null, null);
INSERT INTO `equipment_record` VALUES ('493', '493', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:05', null, null);
INSERT INTO `equipment_record` VALUES ('494', '494', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:05', null, null);
INSERT INTO `equipment_record` VALUES ('495', '495', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:05', null, null);
INSERT INTO `equipment_record` VALUES ('496', '496', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:05', null, null);
INSERT INTO `equipment_record` VALUES ('497', '497', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:05', null, null);
INSERT INTO `equipment_record` VALUES ('498', '498', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:05', null, null);
INSERT INTO `equipment_record` VALUES ('499', '499', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:06', null, null);
INSERT INTO `equipment_record` VALUES ('500', '500', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:06', null, null);
INSERT INTO `equipment_record` VALUES ('501', '501', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:06', null, null);
INSERT INTO `equipment_record` VALUES ('502', '502', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:06', null, null);
INSERT INTO `equipment_record` VALUES ('503', '503', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:06', null, null);
INSERT INTO `equipment_record` VALUES ('504', '504', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:07', null, null);
INSERT INTO `equipment_record` VALUES ('505', '505', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:07', null, null);
INSERT INTO `equipment_record` VALUES ('506', '506', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:07', null, null);
INSERT INTO `equipment_record` VALUES ('507', '507', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:07', null, null);
INSERT INTO `equipment_record` VALUES ('508', '508', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:07', null, null);
INSERT INTO `equipment_record` VALUES ('509', '509', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:08', null, null);
INSERT INTO `equipment_record` VALUES ('510', '510', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:08', null, null);
INSERT INTO `equipment_record` VALUES ('511', '511', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:08', null, null);
INSERT INTO `equipment_record` VALUES ('512', '512', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:08', null, null);
INSERT INTO `equipment_record` VALUES ('513', '513', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:08', null, null);
INSERT INTO `equipment_record` VALUES ('514', '514', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:08', null, null);
INSERT INTO `equipment_record` VALUES ('515', '515', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:09', null, null);
INSERT INTO `equipment_record` VALUES ('516', '516', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:09', null, null);
INSERT INTO `equipment_record` VALUES ('517', '517', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:09', null, null);
INSERT INTO `equipment_record` VALUES ('518', '518', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:09', null, null);
INSERT INTO `equipment_record` VALUES ('519', '519', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:09', null, null);
INSERT INTO `equipment_record` VALUES ('520', '520', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:09', null, null);
INSERT INTO `equipment_record` VALUES ('521', '521', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:10', null, null);
INSERT INTO `equipment_record` VALUES ('522', '522', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:11', null, null);
INSERT INTO `equipment_record` VALUES ('523', '523', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:11', null, null);
INSERT INTO `equipment_record` VALUES ('524', '524', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:11', null, null);
INSERT INTO `equipment_record` VALUES ('525', '525', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:11', null, null);
INSERT INTO `equipment_record` VALUES ('526', '526', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:12', null, null);
INSERT INTO `equipment_record` VALUES ('527', '527', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:12', null, null);
INSERT INTO `equipment_record` VALUES ('528', '528', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:12', null, null);
INSERT INTO `equipment_record` VALUES ('529', '529', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:12', null, null);
INSERT INTO `equipment_record` VALUES ('530', '530', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:13', null, null);
INSERT INTO `equipment_record` VALUES ('531', '531', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:13', null, null);
INSERT INTO `equipment_record` VALUES ('532', '532', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:13', null, null);
INSERT INTO `equipment_record` VALUES ('533', '533', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:13', null, null);
INSERT INTO `equipment_record` VALUES ('534', '534', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:13', null, null);
INSERT INTO `equipment_record` VALUES ('535', '535', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:13', null, null);
INSERT INTO `equipment_record` VALUES ('536', '536', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:14', null, null);
INSERT INTO `equipment_record` VALUES ('537', '537', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:14', null, null);
INSERT INTO `equipment_record` VALUES ('538', '538', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:14', null, null);
INSERT INTO `equipment_record` VALUES ('539', '539', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:14', null, null);
INSERT INTO `equipment_record` VALUES ('540', '540', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:14', null, null);
INSERT INTO `equipment_record` VALUES ('541', '541', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:15', null, null);
INSERT INTO `equipment_record` VALUES ('542', '542', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:15', null, null);
INSERT INTO `equipment_record` VALUES ('543', '543', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:15', null, null);
INSERT INTO `equipment_record` VALUES ('544', '544', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:15', null, null);
INSERT INTO `equipment_record` VALUES ('545', '545', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:15', null, null);
INSERT INTO `equipment_record` VALUES ('546', '546', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:15', null, null);
INSERT INTO `equipment_record` VALUES ('547', '547', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:16', null, null);
INSERT INTO `equipment_record` VALUES ('548', '548', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:16', null, null);
INSERT INTO `equipment_record` VALUES ('549', '549', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:16', null, null);
INSERT INTO `equipment_record` VALUES ('550', '550', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:16', null, null);
INSERT INTO `equipment_record` VALUES ('551', '551', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:17', null, null);
INSERT INTO `equipment_record` VALUES ('552', '552', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:17', null, null);
INSERT INTO `equipment_record` VALUES ('553', '553', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:17', null, null);
INSERT INTO `equipment_record` VALUES ('554', '554', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:17', null, null);
INSERT INTO `equipment_record` VALUES ('555', '555', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:17', null, null);
INSERT INTO `equipment_record` VALUES ('556', '556', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:17', null, null);
INSERT INTO `equipment_record` VALUES ('557', '557', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:18', null, null);
INSERT INTO `equipment_record` VALUES ('558', '558', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:18', null, null);
INSERT INTO `equipment_record` VALUES ('559', '559', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:18', null, null);
INSERT INTO `equipment_record` VALUES ('560', '560', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:18', null, null);
INSERT INTO `equipment_record` VALUES ('561', '561', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:18', null, null);
INSERT INTO `equipment_record` VALUES ('562', '562', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:18', null, null);
INSERT INTO `equipment_record` VALUES ('563', '563', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:19', null, null);
INSERT INTO `equipment_record` VALUES ('564', '564', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:19', null, null);
INSERT INTO `equipment_record` VALUES ('565', '565', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:19', null, null);
INSERT INTO `equipment_record` VALUES ('566', '566', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:19', null, null);
INSERT INTO `equipment_record` VALUES ('567', '567', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:19', null, null);
INSERT INTO `equipment_record` VALUES ('568', '568', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:19', null, null);
INSERT INTO `equipment_record` VALUES ('569', '569', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:20', null, null);
INSERT INTO `equipment_record` VALUES ('570', '570', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:20', null, null);
INSERT INTO `equipment_record` VALUES ('571', '571', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:20', null, null);
INSERT INTO `equipment_record` VALUES ('572', '572', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:20', null, null);
INSERT INTO `equipment_record` VALUES ('573', '573', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:20', null, null);
INSERT INTO `equipment_record` VALUES ('574', '574', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:20', null, null);
INSERT INTO `equipment_record` VALUES ('575', '575', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:21', null, null);
INSERT INTO `equipment_record` VALUES ('576', '576', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:21', null, null);
INSERT INTO `equipment_record` VALUES ('577', '577', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:21', null, null);
INSERT INTO `equipment_record` VALUES ('578', '578', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:21', null, null);
INSERT INTO `equipment_record` VALUES ('579', '579', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:21', null, null);
INSERT INTO `equipment_record` VALUES ('580', '580', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:22', null, null);
INSERT INTO `equipment_record` VALUES ('581', '581', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:22', null, null);
INSERT INTO `equipment_record` VALUES ('582', '582', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:22', null, null);
INSERT INTO `equipment_record` VALUES ('583', '583', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:22', null, null);
INSERT INTO `equipment_record` VALUES ('584', '584', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:22', null, null);
INSERT INTO `equipment_record` VALUES ('585', '585', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:22', null, null);
INSERT INTO `equipment_record` VALUES ('586', '586', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:23', null, null);
INSERT INTO `equipment_record` VALUES ('587', '587', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:23', null, null);
INSERT INTO `equipment_record` VALUES ('588', '588', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:23', null, null);
INSERT INTO `equipment_record` VALUES ('589', '589', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:23', null, null);
INSERT INTO `equipment_record` VALUES ('590', '590', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:23', null, null);
INSERT INTO `equipment_record` VALUES ('591', '591', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:23', null, null);
INSERT INTO `equipment_record` VALUES ('592', '592', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:24', null, null);
INSERT INTO `equipment_record` VALUES ('593', '593', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:24', null, null);
INSERT INTO `equipment_record` VALUES ('594', '594', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:24', null, null);
INSERT INTO `equipment_record` VALUES ('595', '595', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:24', null, null);
INSERT INTO `equipment_record` VALUES ('596', '596', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:24', null, null);
INSERT INTO `equipment_record` VALUES ('597', '597', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:25', null, null);
INSERT INTO `equipment_record` VALUES ('598', '598', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:25', null, null);
INSERT INTO `equipment_record` VALUES ('599', '599', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:25', null, null);
INSERT INTO `equipment_record` VALUES ('600', '600', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:25', null, null);
INSERT INTO `equipment_record` VALUES ('601', '601', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:25', null, null);
INSERT INTO `equipment_record` VALUES ('602', '602', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:26', null, null);
INSERT INTO `equipment_record` VALUES ('603', '603', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:26', null, null);
INSERT INTO `equipment_record` VALUES ('604', '604', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:26', null, null);
INSERT INTO `equipment_record` VALUES ('605', '605', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:26', null, null);
INSERT INTO `equipment_record` VALUES ('606', '606', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:27', null, null);
INSERT INTO `equipment_record` VALUES ('607', '607', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:27', null, null);
INSERT INTO `equipment_record` VALUES ('608', '608', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:27', null, null);
INSERT INTO `equipment_record` VALUES ('609', '609', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:27', null, null);
INSERT INTO `equipment_record` VALUES ('610', '610', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:27', null, null);
INSERT INTO `equipment_record` VALUES ('611', '611', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:28', null, null);
INSERT INTO `equipment_record` VALUES ('612', '612', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:28', null, null);
INSERT INTO `equipment_record` VALUES ('613', '613', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:28', null, null);
INSERT INTO `equipment_record` VALUES ('614', '614', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:28', null, null);
INSERT INTO `equipment_record` VALUES ('615', '615', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:28', null, null);
INSERT INTO `equipment_record` VALUES ('616', '616', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:28', null, null);
INSERT INTO `equipment_record` VALUES ('617', '617', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:29', null, null);
INSERT INTO `equipment_record` VALUES ('618', '618', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:29', null, null);
INSERT INTO `equipment_record` VALUES ('619', '619', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:29', null, null);
INSERT INTO `equipment_record` VALUES ('620', '620', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:29', null, null);
INSERT INTO `equipment_record` VALUES ('621', '621', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:29', null, null);
INSERT INTO `equipment_record` VALUES ('622', '622', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:29', null, null);
INSERT INTO `equipment_record` VALUES ('623', '623', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:30', null, null);
INSERT INTO `equipment_record` VALUES ('624', '624', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:30', null, null);
INSERT INTO `equipment_record` VALUES ('625', '625', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:30', null, null);
INSERT INTO `equipment_record` VALUES ('626', '626', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:30', null, null);
INSERT INTO `equipment_record` VALUES ('627', '627', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:30', null, null);
INSERT INTO `equipment_record` VALUES ('628', '628', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:31', null, null);
INSERT INTO `equipment_record` VALUES ('629', '629', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:31', null, null);
INSERT INTO `equipment_record` VALUES ('630', '630', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:31', null, null);
INSERT INTO `equipment_record` VALUES ('631', '631', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:31', null, null);
INSERT INTO `equipment_record` VALUES ('632', '632', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:31', null, null);
INSERT INTO `equipment_record` VALUES ('633', '633', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:31', null, null);
INSERT INTO `equipment_record` VALUES ('634', '634', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:32', null, null);
INSERT INTO `equipment_record` VALUES ('635', '635', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:32', null, null);
INSERT INTO `equipment_record` VALUES ('636', '636', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:32', null, null);
INSERT INTO `equipment_record` VALUES ('637', '637', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:32', null, null);
INSERT INTO `equipment_record` VALUES ('638', '638', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:32', null, null);
INSERT INTO `equipment_record` VALUES ('639', '639', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:32', null, null);
INSERT INTO `equipment_record` VALUES ('640', '640', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:33', null, null);
INSERT INTO `equipment_record` VALUES ('641', '641', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:33', null, null);
INSERT INTO `equipment_record` VALUES ('642', '642', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:33', null, null);
INSERT INTO `equipment_record` VALUES ('643', '643', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:33', null, null);
INSERT INTO `equipment_record` VALUES ('644', '644', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:33', null, null);
INSERT INTO `equipment_record` VALUES ('645', '645', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:34', null, null);
INSERT INTO `equipment_record` VALUES ('646', '646', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:34', null, null);
INSERT INTO `equipment_record` VALUES ('647', '647', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:34', null, null);
INSERT INTO `equipment_record` VALUES ('648', '648', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:34', null, null);
INSERT INTO `equipment_record` VALUES ('649', '649', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:34', null, null);
INSERT INTO `equipment_record` VALUES ('650', '650', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:34', null, null);
INSERT INTO `equipment_record` VALUES ('651', '651', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:35', null, null);
INSERT INTO `equipment_record` VALUES ('652', '652', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:35', null, null);
INSERT INTO `equipment_record` VALUES ('653', '653', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:35', null, null);
INSERT INTO `equipment_record` VALUES ('654', '654', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:35', null, null);
INSERT INTO `equipment_record` VALUES ('655', '655', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:36', null, null);
INSERT INTO `equipment_record` VALUES ('656', '656', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:36', null, null);
INSERT INTO `equipment_record` VALUES ('657', '657', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:36', null, null);
INSERT INTO `equipment_record` VALUES ('658', '658', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:36', null, null);
INSERT INTO `equipment_record` VALUES ('659', '659', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:36', null, null);
INSERT INTO `equipment_record` VALUES ('660', '660', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:36', null, null);
INSERT INTO `equipment_record` VALUES ('661', '661', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:37', null, null);
INSERT INTO `equipment_record` VALUES ('662', '662', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:37', null, null);
INSERT INTO `equipment_record` VALUES ('663', '663', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:37', null, null);
INSERT INTO `equipment_record` VALUES ('664', '664', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:37', null, null);
INSERT INTO `equipment_record` VALUES ('665', '665', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:37', null, null);
INSERT INTO `equipment_record` VALUES ('666', '666', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:38', null, null);
INSERT INTO `equipment_record` VALUES ('667', '667', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:38', null, null);
INSERT INTO `equipment_record` VALUES ('668', '668', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:38', null, null);
INSERT INTO `equipment_record` VALUES ('669', '669', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:38', null, null);
INSERT INTO `equipment_record` VALUES ('670', '670', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:38', null, null);
INSERT INTO `equipment_record` VALUES ('671', '671', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:38', null, null);
INSERT INTO `equipment_record` VALUES ('672', '672', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:39', null, null);
INSERT INTO `equipment_record` VALUES ('673', '673', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:39', null, null);
INSERT INTO `equipment_record` VALUES ('674', '674', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:39', null, null);
INSERT INTO `equipment_record` VALUES ('675', '675', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:39', null, null);
INSERT INTO `equipment_record` VALUES ('676', '676', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:40', null, null);
INSERT INTO `equipment_record` VALUES ('677', '677', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:40', null, null);
INSERT INTO `equipment_record` VALUES ('678', '678', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:40', null, null);
INSERT INTO `equipment_record` VALUES ('679', '679', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:40', null, null);
INSERT INTO `equipment_record` VALUES ('680', '680', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:40', null, null);
INSERT INTO `equipment_record` VALUES ('681', '681', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:40', null, null);
INSERT INTO `equipment_record` VALUES ('682', '682', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:41', null, null);
INSERT INTO `equipment_record` VALUES ('683', '683', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:41', null, null);
INSERT INTO `equipment_record` VALUES ('684', '684', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:41', null, null);
INSERT INTO `equipment_record` VALUES ('685', '685', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:41', null, null);
INSERT INTO `equipment_record` VALUES ('686', '686', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:41', null, null);
INSERT INTO `equipment_record` VALUES ('687', '687', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:41', null, null);
INSERT INTO `equipment_record` VALUES ('688', '688', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:42', null, null);
INSERT INTO `equipment_record` VALUES ('689', '689', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:42', null, null);
INSERT INTO `equipment_record` VALUES ('690', '690', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:42', null, null);
INSERT INTO `equipment_record` VALUES ('691', '691', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:42', null, null);
INSERT INTO `equipment_record` VALUES ('692', '692', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:42', null, null);
INSERT INTO `equipment_record` VALUES ('693', '693', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:43', null, null);
INSERT INTO `equipment_record` VALUES ('694', '694', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:43', null, null);
INSERT INTO `equipment_record` VALUES ('695', '695', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:43', null, null);
INSERT INTO `equipment_record` VALUES ('696', '696', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:43', null, null);
INSERT INTO `equipment_record` VALUES ('697', '697', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:43', null, null);
INSERT INTO `equipment_record` VALUES ('698', '698', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:43', null, null);
INSERT INTO `equipment_record` VALUES ('699', '699', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:44', null, null);
INSERT INTO `equipment_record` VALUES ('700', '700', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:44', null, null);
INSERT INTO `equipment_record` VALUES ('701', '701', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:44', null, null);
INSERT INTO `equipment_record` VALUES ('702', '702', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:44', null, null);
INSERT INTO `equipment_record` VALUES ('703', '703', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:44', null, null);
INSERT INTO `equipment_record` VALUES ('704', '704', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:45', null, null);
INSERT INTO `equipment_record` VALUES ('705', '705', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:45', null, null);
INSERT INTO `equipment_record` VALUES ('706', '706', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:45', null, null);
INSERT INTO `equipment_record` VALUES ('707', '707', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:45', null, null);
INSERT INTO `equipment_record` VALUES ('708', '708', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:45', null, null);
INSERT INTO `equipment_record` VALUES ('709', '709', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:45', null, null);
INSERT INTO `equipment_record` VALUES ('710', '710', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:46', null, null);
INSERT INTO `equipment_record` VALUES ('711', '711', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:46', null, null);
INSERT INTO `equipment_record` VALUES ('712', '712', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:46', null, null);
INSERT INTO `equipment_record` VALUES ('713', '713', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:46', null, null);
INSERT INTO `equipment_record` VALUES ('714', '714', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:46', null, null);
INSERT INTO `equipment_record` VALUES ('715', '715', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:47', null, null);
INSERT INTO `equipment_record` VALUES ('716', '716', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:47', null, null);
INSERT INTO `equipment_record` VALUES ('717', '717', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:47', null, null);
INSERT INTO `equipment_record` VALUES ('718', '718', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:47', null, null);
INSERT INTO `equipment_record` VALUES ('719', '719', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:48', null, null);
INSERT INTO `equipment_record` VALUES ('720', '720', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:48', null, null);
INSERT INTO `equipment_record` VALUES ('721', '721', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:48', null, null);
INSERT INTO `equipment_record` VALUES ('722', '722', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:48', null, null);
INSERT INTO `equipment_record` VALUES ('723', '723', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:49', null, null);
INSERT INTO `equipment_record` VALUES ('724', '724', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:49', null, null);
INSERT INTO `equipment_record` VALUES ('725', '725', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:49', null, null);
INSERT INTO `equipment_record` VALUES ('726', '726', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:49', null, null);
INSERT INTO `equipment_record` VALUES ('727', '727', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:50', null, null);
INSERT INTO `equipment_record` VALUES ('728', '728', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:50', null, null);
INSERT INTO `equipment_record` VALUES ('729', '729', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:50', null, null);
INSERT INTO `equipment_record` VALUES ('730', '730', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:50', null, null);
INSERT INTO `equipment_record` VALUES ('731', '731', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:51', null, null);
INSERT INTO `equipment_record` VALUES ('732', '732', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:51', null, null);
INSERT INTO `equipment_record` VALUES ('733', '733', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:51', null, null);
INSERT INTO `equipment_record` VALUES ('734', '734', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:51', null, null);
INSERT INTO `equipment_record` VALUES ('735', '735', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:51', null, null);
INSERT INTO `equipment_record` VALUES ('736', '736', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:51', null, null);
INSERT INTO `equipment_record` VALUES ('737', '737', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:52', null, null);
INSERT INTO `equipment_record` VALUES ('738', '738', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:52', null, null);
INSERT INTO `equipment_record` VALUES ('739', '739', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:52', null, null);
INSERT INTO `equipment_record` VALUES ('740', '740', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:52', null, null);
INSERT INTO `equipment_record` VALUES ('741', '741', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:53', null, null);
INSERT INTO `equipment_record` VALUES ('742', '742', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:53', null, null);
INSERT INTO `equipment_record` VALUES ('743', '743', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:53', null, null);
INSERT INTO `equipment_record` VALUES ('744', '744', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:53', null, null);
INSERT INTO `equipment_record` VALUES ('745', '745', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:53', null, null);
INSERT INTO `equipment_record` VALUES ('746', '746', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:54', null, null);
INSERT INTO `equipment_record` VALUES ('747', '747', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:54', null, null);
INSERT INTO `equipment_record` VALUES ('748', '748', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:54', null, null);
INSERT INTO `equipment_record` VALUES ('749', '749', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:54', null, null);
INSERT INTO `equipment_record` VALUES ('750', '750', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:54', null, null);
INSERT INTO `equipment_record` VALUES ('751', '751', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:54', null, null);
INSERT INTO `equipment_record` VALUES ('752', '752', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:55', null, null);
INSERT INTO `equipment_record` VALUES ('753', '753', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:55', null, null);
INSERT INTO `equipment_record` VALUES ('754', '754', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:55', null, null);
INSERT INTO `equipment_record` VALUES ('755', '755', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:55', null, null);
INSERT INTO `equipment_record` VALUES ('756', '756', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:55', null, null);
INSERT INTO `equipment_record` VALUES ('757', '757', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:56', null, null);
INSERT INTO `equipment_record` VALUES ('758', '758', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:56', null, null);
INSERT INTO `equipment_record` VALUES ('759', '759', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:56', null, null);
INSERT INTO `equipment_record` VALUES ('760', '760', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:56', null, null);
INSERT INTO `equipment_record` VALUES ('761', '761', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:56', null, null);
INSERT INTO `equipment_record` VALUES ('762', '762', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:57', null, null);
INSERT INTO `equipment_record` VALUES ('763', '763', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:57', null, null);
INSERT INTO `equipment_record` VALUES ('764', '764', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:57', null, null);
INSERT INTO `equipment_record` VALUES ('765', '765', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:57', null, null);
INSERT INTO `equipment_record` VALUES ('766', '766', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:57', null, null);
INSERT INTO `equipment_record` VALUES ('767', '767', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:57', null, null);
INSERT INTO `equipment_record` VALUES ('768', '768', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:58', null, null);
INSERT INTO `equipment_record` VALUES ('769', '769', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:58', null, null);
INSERT INTO `equipment_record` VALUES ('770', '770', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:58', null, null);
INSERT INTO `equipment_record` VALUES ('771', '771', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:58', null, null);
INSERT INTO `equipment_record` VALUES ('772', '772', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:58', null, null);
INSERT INTO `equipment_record` VALUES ('773', '773', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:59', null, null);
INSERT INTO `equipment_record` VALUES ('774', '774', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:59', null, null);
INSERT INTO `equipment_record` VALUES ('775', '775', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:59', null, null);
INSERT INTO `equipment_record` VALUES ('776', '776', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:59', null, null);
INSERT INTO `equipment_record` VALUES ('777', '777', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:59', null, null);
INSERT INTO `equipment_record` VALUES ('778', '778', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:40:59', null, null);
INSERT INTO `equipment_record` VALUES ('779', '779', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:00', null, null);
INSERT INTO `equipment_record` VALUES ('780', '780', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:00', null, null);
INSERT INTO `equipment_record` VALUES ('781', '781', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:00', null, null);
INSERT INTO `equipment_record` VALUES ('782', '782', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:00', null, null);
INSERT INTO `equipment_record` VALUES ('783', '783', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:00', null, null);
INSERT INTO `equipment_record` VALUES ('784', '784', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:00', null, null);
INSERT INTO `equipment_record` VALUES ('785', '785', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:01', null, null);
INSERT INTO `equipment_record` VALUES ('786', '786', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:01', null, null);
INSERT INTO `equipment_record` VALUES ('787', '787', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:01', null, null);
INSERT INTO `equipment_record` VALUES ('788', '788', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:01', null, null);
INSERT INTO `equipment_record` VALUES ('789', '789', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:02', null, null);
INSERT INTO `equipment_record` VALUES ('790', '790', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:02', null, null);
INSERT INTO `equipment_record` VALUES ('791', '791', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:02', null, null);
INSERT INTO `equipment_record` VALUES ('792', '792', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:02', null, null);
INSERT INTO `equipment_record` VALUES ('793', '793', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:02', null, null);
INSERT INTO `equipment_record` VALUES ('794', '794', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:03', null, null);
INSERT INTO `equipment_record` VALUES ('795', '795', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:03', null, null);
INSERT INTO `equipment_record` VALUES ('796', '796', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:03', null, null);
INSERT INTO `equipment_record` VALUES ('797', '797', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:03', null, null);
INSERT INTO `equipment_record` VALUES ('798', '798', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:03', null, null);
INSERT INTO `equipment_record` VALUES ('799', '799', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:04', null, null);
INSERT INTO `equipment_record` VALUES ('800', '800', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:04', null, null);
INSERT INTO `equipment_record` VALUES ('801', '801', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:04', null, null);
INSERT INTO `equipment_record` VALUES ('802', '802', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:04', null, null);
INSERT INTO `equipment_record` VALUES ('803', '803', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:04', null, null);
INSERT INTO `equipment_record` VALUES ('804', '804', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:05', null, null);
INSERT INTO `equipment_record` VALUES ('805', '805', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:05', null, null);
INSERT INTO `equipment_record` VALUES ('806', '806', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:05', null, null);
INSERT INTO `equipment_record` VALUES ('807', '807', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:05', null, null);
INSERT INTO `equipment_record` VALUES ('808', '808', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:05', null, null);
INSERT INTO `equipment_record` VALUES ('809', '809', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:05', null, null);
INSERT INTO `equipment_record` VALUES ('810', '810', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:06', null, null);
INSERT INTO `equipment_record` VALUES ('811', '811', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:06', null, null);
INSERT INTO `equipment_record` VALUES ('812', '812', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:06', null, null);
INSERT INTO `equipment_record` VALUES ('813', '813', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:06', null, null);
INSERT INTO `equipment_record` VALUES ('814', '814', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:06', null, null);
INSERT INTO `equipment_record` VALUES ('815', '815', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:07', null, null);
INSERT INTO `equipment_record` VALUES ('816', '816', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:07', null, null);
INSERT INTO `equipment_record` VALUES ('817', '817', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:07', null, null);
INSERT INTO `equipment_record` VALUES ('818', '818', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:07', null, null);
INSERT INTO `equipment_record` VALUES ('819', '819', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:07', null, null);
INSERT INTO `equipment_record` VALUES ('820', '820', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:08', null, null);
INSERT INTO `equipment_record` VALUES ('821', '821', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:08', null, null);
INSERT INTO `equipment_record` VALUES ('822', '822', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:08', null, null);
INSERT INTO `equipment_record` VALUES ('823', '823', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:09', null, null);
INSERT INTO `equipment_record` VALUES ('824', '824', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:09', null, null);
INSERT INTO `equipment_record` VALUES ('825', '825', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:09', null, null);
INSERT INTO `equipment_record` VALUES ('826', '826', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:09', null, null);
INSERT INTO `equipment_record` VALUES ('827', '827', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:09', null, null);
INSERT INTO `equipment_record` VALUES ('828', '828', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:10', null, null);
INSERT INTO `equipment_record` VALUES ('829', '829', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:10', null, null);
INSERT INTO `equipment_record` VALUES ('830', '830', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:10', null, null);
INSERT INTO `equipment_record` VALUES ('831', '831', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:10', null, null);
INSERT INTO `equipment_record` VALUES ('832', '832', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:10', null, null);
INSERT INTO `equipment_record` VALUES ('833', '833', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:10', null, null);
INSERT INTO `equipment_record` VALUES ('834', '834', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:11', null, null);
INSERT INTO `equipment_record` VALUES ('835', '835', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:11', null, null);
INSERT INTO `equipment_record` VALUES ('836', '836', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:11', null, null);
INSERT INTO `equipment_record` VALUES ('837', '837', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:11', null, null);
INSERT INTO `equipment_record` VALUES ('838', '838', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:11', null, null);
INSERT INTO `equipment_record` VALUES ('839', '839', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:12', null, null);
INSERT INTO `equipment_record` VALUES ('840', '840', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:12', null, null);
INSERT INTO `equipment_record` VALUES ('841', '841', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:12', null, null);
INSERT INTO `equipment_record` VALUES ('842', '842', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:12', null, null);
INSERT INTO `equipment_record` VALUES ('843', '843', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:12', null, null);
INSERT INTO `equipment_record` VALUES ('844', '844', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:12', null, null);
INSERT INTO `equipment_record` VALUES ('845', '845', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:13', null, null);
INSERT INTO `equipment_record` VALUES ('846', '846', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:13', null, null);
INSERT INTO `equipment_record` VALUES ('847', '847', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:13', null, null);
INSERT INTO `equipment_record` VALUES ('848', '848', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:13', null, null);
INSERT INTO `equipment_record` VALUES ('849', '849', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:13', null, null);
INSERT INTO `equipment_record` VALUES ('850', '850', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:14', null, null);
INSERT INTO `equipment_record` VALUES ('851', '851', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:14', null, null);
INSERT INTO `equipment_record` VALUES ('852', '852', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:14', null, null);
INSERT INTO `equipment_record` VALUES ('853', '853', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:14', null, null);
INSERT INTO `equipment_record` VALUES ('854', '854', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:14', null, null);
INSERT INTO `equipment_record` VALUES ('855', '855', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:14', null, null);
INSERT INTO `equipment_record` VALUES ('856', '856', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:15', null, null);
INSERT INTO `equipment_record` VALUES ('857', '857', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:15', null, null);
INSERT INTO `equipment_record` VALUES ('858', '858', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:15', null, null);
INSERT INTO `equipment_record` VALUES ('859', '859', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:15', null, null);
INSERT INTO `equipment_record` VALUES ('860', '860', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:16', null, null);
INSERT INTO `equipment_record` VALUES ('861', '861', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:16', null, null);
INSERT INTO `equipment_record` VALUES ('862', '862', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:16', null, null);
INSERT INTO `equipment_record` VALUES ('863', '863', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:16', null, null);
INSERT INTO `equipment_record` VALUES ('864', '864', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:16', null, null);
INSERT INTO `equipment_record` VALUES ('865', '865', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:17', null, null);
INSERT INTO `equipment_record` VALUES ('866', '866', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:17', null, null);
INSERT INTO `equipment_record` VALUES ('867', '867', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:17', null, null);
INSERT INTO `equipment_record` VALUES ('868', '868', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:17', null, null);
INSERT INTO `equipment_record` VALUES ('869', '869', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:17', null, null);
INSERT INTO `equipment_record` VALUES ('870', '870', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:17', null, null);
INSERT INTO `equipment_record` VALUES ('871', '871', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:18', null, null);
INSERT INTO `equipment_record` VALUES ('872', '872', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:18', null, null);
INSERT INTO `equipment_record` VALUES ('873', '873', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:18', null, null);
INSERT INTO `equipment_record` VALUES ('874', '874', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:18', null, null);
INSERT INTO `equipment_record` VALUES ('875', '875', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:18', null, null);
INSERT INTO `equipment_record` VALUES ('876', '876', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:18', null, null);
INSERT INTO `equipment_record` VALUES ('877', '877', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:19', null, null);
INSERT INTO `equipment_record` VALUES ('878', '878', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:19', null, null);
INSERT INTO `equipment_record` VALUES ('879', '879', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:19', null, null);
INSERT INTO `equipment_record` VALUES ('880', '880', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:19', null, null);
INSERT INTO `equipment_record` VALUES ('881', '881', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:19', null, null);
INSERT INTO `equipment_record` VALUES ('882', '882', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:19', null, null);
INSERT INTO `equipment_record` VALUES ('883', '883', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:20', null, null);
INSERT INTO `equipment_record` VALUES ('884', '884', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:20', null, null);
INSERT INTO `equipment_record` VALUES ('885', '885', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:20', null, null);
INSERT INTO `equipment_record` VALUES ('886', '886', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:20', null, null);
INSERT INTO `equipment_record` VALUES ('887', '887', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:20', null, null);
INSERT INTO `equipment_record` VALUES ('888', '888', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:21', null, null);
INSERT INTO `equipment_record` VALUES ('889', '889', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:21', null, null);
INSERT INTO `equipment_record` VALUES ('890', '890', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:21', null, null);
INSERT INTO `equipment_record` VALUES ('891', '891', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:21', null, null);
INSERT INTO `equipment_record` VALUES ('892', '892', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:21', null, null);
INSERT INTO `equipment_record` VALUES ('893', '893', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:21', null, null);
INSERT INTO `equipment_record` VALUES ('894', '894', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:22', null, null);
INSERT INTO `equipment_record` VALUES ('895', '895', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:22', null, null);
INSERT INTO `equipment_record` VALUES ('896', '896', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:22', null, null);
INSERT INTO `equipment_record` VALUES ('897', '897', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:22', null, null);
INSERT INTO `equipment_record` VALUES ('898', '898', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:22', null, null);
INSERT INTO `equipment_record` VALUES ('899', '899', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:22', null, null);
INSERT INTO `equipment_record` VALUES ('900', '900', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:23', null, null);
INSERT INTO `equipment_record` VALUES ('901', '901', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:23', null, null);
INSERT INTO `equipment_record` VALUES ('902', '902', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:23', null, null);
INSERT INTO `equipment_record` VALUES ('903', '903', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:23', null, null);
INSERT INTO `equipment_record` VALUES ('904', '904', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:23', null, null);
INSERT INTO `equipment_record` VALUES ('905', '905', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:24', null, null);
INSERT INTO `equipment_record` VALUES ('906', '906', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:24', null, null);
INSERT INTO `equipment_record` VALUES ('907', '907', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:24', null, null);
INSERT INTO `equipment_record` VALUES ('908', '908', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:25', null, null);
INSERT INTO `equipment_record` VALUES ('909', '909', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:25', null, null);
INSERT INTO `equipment_record` VALUES ('910', '910', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:25', null, null);
INSERT INTO `equipment_record` VALUES ('911', '911', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:25', null, null);
INSERT INTO `equipment_record` VALUES ('912', '912', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:26', null, null);
INSERT INTO `equipment_record` VALUES ('913', '913', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:26', null, null);
INSERT INTO `equipment_record` VALUES ('914', '914', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:26', null, null);
INSERT INTO `equipment_record` VALUES ('915', '915', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:27', null, null);
INSERT INTO `equipment_record` VALUES ('916', '916', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:27', null, null);
INSERT INTO `equipment_record` VALUES ('917', '917', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:27', null, null);
INSERT INTO `equipment_record` VALUES ('918', '918', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:27', null, null);
INSERT INTO `equipment_record` VALUES ('919', '919', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:28', null, null);
INSERT INTO `equipment_record` VALUES ('920', '920', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:28', null, null);
INSERT INTO `equipment_record` VALUES ('921', '921', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:28', null, null);
INSERT INTO `equipment_record` VALUES ('922', '922', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:28', null, null);
INSERT INTO `equipment_record` VALUES ('923', '923', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:29', null, null);
INSERT INTO `equipment_record` VALUES ('924', '924', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:29', null, null);
INSERT INTO `equipment_record` VALUES ('925', '925', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:29', null, null);
INSERT INTO `equipment_record` VALUES ('926', '926', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:30', null, null);
INSERT INTO `equipment_record` VALUES ('927', '927', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:30', null, null);
INSERT INTO `equipment_record` VALUES ('928', '928', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:31', null, null);
INSERT INTO `equipment_record` VALUES ('929', '929', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:31', null, null);
INSERT INTO `equipment_record` VALUES ('930', '930', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:33', null, null);
INSERT INTO `equipment_record` VALUES ('931', '931', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:33', null, null);
INSERT INTO `equipment_record` VALUES ('932', '932', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:34', null, null);
INSERT INTO `equipment_record` VALUES ('933', '933', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:34', null, null);
INSERT INTO `equipment_record` VALUES ('934', '934', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:34', null, null);
INSERT INTO `equipment_record` VALUES ('935', '935', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:34', null, null);
INSERT INTO `equipment_record` VALUES ('936', '936', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:34', null, null);
INSERT INTO `equipment_record` VALUES ('937', '937', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:34', null, null);
INSERT INTO `equipment_record` VALUES ('938', '938', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:35', null, null);
INSERT INTO `equipment_record` VALUES ('939', '939', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:35', null, null);
INSERT INTO `equipment_record` VALUES ('940', '940', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:35', null, null);
INSERT INTO `equipment_record` VALUES ('941', '941', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:35', null, null);
INSERT INTO `equipment_record` VALUES ('942', '942', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:35', null, null);
INSERT INTO `equipment_record` VALUES ('943', '943', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:36', null, null);
INSERT INTO `equipment_record` VALUES ('944', '944', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:36', null, null);
INSERT INTO `equipment_record` VALUES ('945', '945', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:36', null, null);
INSERT INTO `equipment_record` VALUES ('946', '946', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:36', null, null);
INSERT INTO `equipment_record` VALUES ('947', '947', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:36', null, null);
INSERT INTO `equipment_record` VALUES ('948', '948', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:36', null, null);
INSERT INTO `equipment_record` VALUES ('949', '949', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:37', null, null);
INSERT INTO `equipment_record` VALUES ('950', '950', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:37', null, null);
INSERT INTO `equipment_record` VALUES ('951', '951', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:37', null, null);
INSERT INTO `equipment_record` VALUES ('952', '952', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:37', null, null);
INSERT INTO `equipment_record` VALUES ('953', '953', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:37', null, null);
INSERT INTO `equipment_record` VALUES ('954', '954', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:37', null, null);
INSERT INTO `equipment_record` VALUES ('955', '955', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:38', null, null);
INSERT INTO `equipment_record` VALUES ('956', '956', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:38', null, null);
INSERT INTO `equipment_record` VALUES ('957', '957', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:38', null, null);
INSERT INTO `equipment_record` VALUES ('958', '958', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:38', null, null);
INSERT INTO `equipment_record` VALUES ('959', '959', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:38', null, null);
INSERT INTO `equipment_record` VALUES ('960', '960', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:38', null, null);
INSERT INTO `equipment_record` VALUES ('961', '961', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:39', null, null);
INSERT INTO `equipment_record` VALUES ('962', '962', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:39', null, null);
INSERT INTO `equipment_record` VALUES ('963', '963', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:39', null, null);
INSERT INTO `equipment_record` VALUES ('964', '964', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:39', null, null);
INSERT INTO `equipment_record` VALUES ('965', '965', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:39', null, null);
INSERT INTO `equipment_record` VALUES ('966', '966', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:40', null, null);
INSERT INTO `equipment_record` VALUES ('967', '967', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:40', null, null);
INSERT INTO `equipment_record` VALUES ('968', '968', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:40', null, null);
INSERT INTO `equipment_record` VALUES ('969', '969', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:40', null, null);
INSERT INTO `equipment_record` VALUES ('970', '970', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:40', null, null);
INSERT INTO `equipment_record` VALUES ('971', '971', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:40', null, null);
INSERT INTO `equipment_record` VALUES ('972', '972', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:41', null, null);
INSERT INTO `equipment_record` VALUES ('973', '973', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:41', null, null);
INSERT INTO `equipment_record` VALUES ('974', '974', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:41', null, null);
INSERT INTO `equipment_record` VALUES ('975', '975', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:41', null, null);
INSERT INTO `equipment_record` VALUES ('976', '976', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:41', null, null);
INSERT INTO `equipment_record` VALUES ('977', '977', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:41', null, null);
INSERT INTO `equipment_record` VALUES ('978', '978', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:42', null, null);
INSERT INTO `equipment_record` VALUES ('979', '979', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:42', null, null);
INSERT INTO `equipment_record` VALUES ('980', '980', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:42', null, null);
INSERT INTO `equipment_record` VALUES ('981', '981', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:42', null, null);
INSERT INTO `equipment_record` VALUES ('982', '982', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:42', null, null);
INSERT INTO `equipment_record` VALUES ('983', '983', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:42', null, null);
INSERT INTO `equipment_record` VALUES ('984', '984', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:43', null, null);
INSERT INTO `equipment_record` VALUES ('985', '985', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:43', null, null);
INSERT INTO `equipment_record` VALUES ('986', '986', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:43', null, null);
INSERT INTO `equipment_record` VALUES ('987', '987', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:43', null, null);
INSERT INTO `equipment_record` VALUES ('988', '988', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:43', null, null);
INSERT INTO `equipment_record` VALUES ('989', '989', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:44', null, null);
INSERT INTO `equipment_record` VALUES ('990', '990', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:44', null, null);
INSERT INTO `equipment_record` VALUES ('991', '991', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:44', null, null);
INSERT INTO `equipment_record` VALUES ('992', '992', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:44', null, null);
INSERT INTO `equipment_record` VALUES ('993', '993', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:45', null, null);
INSERT INTO `equipment_record` VALUES ('994', '994', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:45', null, null);
INSERT INTO `equipment_record` VALUES ('995', '995', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:45', null, null);
INSERT INTO `equipment_record` VALUES ('996', '996', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:45', null, null);
INSERT INTO `equipment_record` VALUES ('997', '997', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:45', null, null);
INSERT INTO `equipment_record` VALUES ('998', '998', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:45', null, null);
INSERT INTO `equipment_record` VALUES ('999', '999', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:46', null, null);
INSERT INTO `equipment_record` VALUES ('1000', '1000', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:46', null, null);
INSERT INTO `equipment_record` VALUES ('1001', '1001', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:46', null, null);
INSERT INTO `equipment_record` VALUES ('1002', '1002', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:46', null, null);
INSERT INTO `equipment_record` VALUES ('1003', '1003', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:46', null, null);
INSERT INTO `equipment_record` VALUES ('1004', '1004', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:46', null, null);
INSERT INTO `equipment_record` VALUES ('1005', '1005', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:47', null, null);
INSERT INTO `equipment_record` VALUES ('1006', '1006', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:47', null, null);
INSERT INTO `equipment_record` VALUES ('1007', '1007', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:47', null, null);
INSERT INTO `equipment_record` VALUES ('1008', '1008', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:47', null, null);
INSERT INTO `equipment_record` VALUES ('1009', '1009', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:48', null, null);
INSERT INTO `equipment_record` VALUES ('1010', '1010', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:48', null, null);
INSERT INTO `equipment_record` VALUES ('1011', '1011', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:48', null, null);
INSERT INTO `equipment_record` VALUES ('1012', '1012', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:48', null, null);
INSERT INTO `equipment_record` VALUES ('1013', '1013', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:48', null, null);
INSERT INTO `equipment_record` VALUES ('1014', '1014', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:49', null, null);
INSERT INTO `equipment_record` VALUES ('1015', '1015', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:49', null, null);
INSERT INTO `equipment_record` VALUES ('1016', '1016', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:49', null, null);
INSERT INTO `equipment_record` VALUES ('1017', '1017', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:49', null, null);
INSERT INTO `equipment_record` VALUES ('1018', '1018', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:49', null, null);
INSERT INTO `equipment_record` VALUES ('1019', '1019', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:50', null, null);
INSERT INTO `equipment_record` VALUES ('1020', '1020', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:50', null, null);
INSERT INTO `equipment_record` VALUES ('1021', '1021', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:51', null, null);
INSERT INTO `equipment_record` VALUES ('1022', '1022', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:51', null, null);
INSERT INTO `equipment_record` VALUES ('1023', '1023', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:51', null, null);
INSERT INTO `equipment_record` VALUES ('1024', '1024', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:51', null, null);
INSERT INTO `equipment_record` VALUES ('1025', '1025', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:51', null, null);
INSERT INTO `equipment_record` VALUES ('1026', '1026', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:51', null, null);
INSERT INTO `equipment_record` VALUES ('1027', '1027', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:52', null, null);
INSERT INTO `equipment_record` VALUES ('1028', '1028', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:52', null, null);
INSERT INTO `equipment_record` VALUES ('1029', '1029', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:52', null, null);
INSERT INTO `equipment_record` VALUES ('1030', '1030', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:52', null, null);
INSERT INTO `equipment_record` VALUES ('1031', '1031', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:52', null, null);
INSERT INTO `equipment_record` VALUES ('1032', '1032', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:53', null, null);
INSERT INTO `equipment_record` VALUES ('1033', '1033', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:53', null, null);
INSERT INTO `equipment_record` VALUES ('1034', '1034', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:53', null, null);
INSERT INTO `equipment_record` VALUES ('1035', '1035', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:54', null, null);
INSERT INTO `equipment_record` VALUES ('1036', '1036', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:54', null, null);
INSERT INTO `equipment_record` VALUES ('1037', '1037', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:54', null, null);
INSERT INTO `equipment_record` VALUES ('1038', '1038', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:54', null, null);
INSERT INTO `equipment_record` VALUES ('1039', '1039', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:55', null, null);
INSERT INTO `equipment_record` VALUES ('1040', '1040', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:55', null, null);
INSERT INTO `equipment_record` VALUES ('1041', '1041', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:55', null, null);
INSERT INTO `equipment_record` VALUES ('1042', '1042', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:55', null, null);
INSERT INTO `equipment_record` VALUES ('1043', '1043', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:55', null, null);
INSERT INTO `equipment_record` VALUES ('1044', '1044', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:55', null, null);
INSERT INTO `equipment_record` VALUES ('1045', '1045', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:56', null, null);
INSERT INTO `equipment_record` VALUES ('1046', '1046', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:56', null, null);
INSERT INTO `equipment_record` VALUES ('1047', '1047', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:56', null, null);
INSERT INTO `equipment_record` VALUES ('1048', '1048', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:56', null, null);
INSERT INTO `equipment_record` VALUES ('1049', '1049', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:57', null, null);
INSERT INTO `equipment_record` VALUES ('1050', '1050', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:57', null, null);
INSERT INTO `equipment_record` VALUES ('1051', '1051', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:57', null, null);
INSERT INTO `equipment_record` VALUES ('1052', '1052', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:57', null, null);
INSERT INTO `equipment_record` VALUES ('1053', '1053', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:57', null, null);
INSERT INTO `equipment_record` VALUES ('1054', '1054', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:57', null, null);
INSERT INTO `equipment_record` VALUES ('1055', '1055', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:58', null, null);
INSERT INTO `equipment_record` VALUES ('1056', '1056', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:58', null, null);
INSERT INTO `equipment_record` VALUES ('1057', '1057', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:58', null, null);
INSERT INTO `equipment_record` VALUES ('1058', '1058', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:58', null, null);
INSERT INTO `equipment_record` VALUES ('1059', '1059', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:58', null, null);
INSERT INTO `equipment_record` VALUES ('1060', '1060', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:58', null, null);
INSERT INTO `equipment_record` VALUES ('1061', '1061', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:59', null, null);
INSERT INTO `equipment_record` VALUES ('1062', '1062', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:59', null, null);
INSERT INTO `equipment_record` VALUES ('1063', '1063', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:59', null, null);
INSERT INTO `equipment_record` VALUES ('1064', '1064', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:59', null, null);
INSERT INTO `equipment_record` VALUES ('1065', '1065', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:41:59', null, null);
INSERT INTO `equipment_record` VALUES ('1066', '1066', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:00', null, null);
INSERT INTO `equipment_record` VALUES ('1067', '1067', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:00', null, null);
INSERT INTO `equipment_record` VALUES ('1068', '1068', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:00', null, null);
INSERT INTO `equipment_record` VALUES ('1069', '1069', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:00', null, null);
INSERT INTO `equipment_record` VALUES ('1070', '1070', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:00', null, null);
INSERT INTO `equipment_record` VALUES ('1071', '1071', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:01', null, null);
INSERT INTO `equipment_record` VALUES ('1072', '1072', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:01', null, null);
INSERT INTO `equipment_record` VALUES ('1073', '1073', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:01', null, null);
INSERT INTO `equipment_record` VALUES ('1074', '1074', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:01', null, null);
INSERT INTO `equipment_record` VALUES ('1075', '1075', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:01', null, null);
INSERT INTO `equipment_record` VALUES ('1076', '1076', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:02', null, null);
INSERT INTO `equipment_record` VALUES ('1077', '1077', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:02', null, null);
INSERT INTO `equipment_record` VALUES ('1078', '1078', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:02', null, null);
INSERT INTO `equipment_record` VALUES ('1079', '1079', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:02', null, null);
INSERT INTO `equipment_record` VALUES ('1080', '1080', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:02', null, null);
INSERT INTO `equipment_record` VALUES ('1081', '1081', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:03', null, null);
INSERT INTO `equipment_record` VALUES ('1082', '1082', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:03', null, null);
INSERT INTO `equipment_record` VALUES ('1083', '1083', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:03', null, null);
INSERT INTO `equipment_record` VALUES ('1084', '1084', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:03', null, null);
INSERT INTO `equipment_record` VALUES ('1085', '1085', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:04', null, null);
INSERT INTO `equipment_record` VALUES ('1086', '1086', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:04', null, null);
INSERT INTO `equipment_record` VALUES ('1087', '1087', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:04', null, null);
INSERT INTO `equipment_record` VALUES ('1088', '1088', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:04', null, null);
INSERT INTO `equipment_record` VALUES ('1089', '1089', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:04', null, null);
INSERT INTO `equipment_record` VALUES ('1090', '1090', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:04', null, null);
INSERT INTO `equipment_record` VALUES ('1091', '1091', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:05', null, null);
INSERT INTO `equipment_record` VALUES ('1092', '1092', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:05', null, null);
INSERT INTO `equipment_record` VALUES ('1093', '1093', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:05', null, null);
INSERT INTO `equipment_record` VALUES ('1094', '1094', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:05', null, null);
INSERT INTO `equipment_record` VALUES ('1095', '1095', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:05', null, null);
INSERT INTO `equipment_record` VALUES ('1096', '1096', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:06', null, null);
INSERT INTO `equipment_record` VALUES ('1097', '1097', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:06', null, null);
INSERT INTO `equipment_record` VALUES ('1098', '1098', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:06', null, null);
INSERT INTO `equipment_record` VALUES ('1099', '1099', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:06', null, null);
INSERT INTO `equipment_record` VALUES ('1100', '1100', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:07', null, null);
INSERT INTO `equipment_record` VALUES ('1101', '1101', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:07', null, null);
INSERT INTO `equipment_record` VALUES ('1102', '1102', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:07', null, null);
INSERT INTO `equipment_record` VALUES ('1103', '1103', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:07', null, null);
INSERT INTO `equipment_record` VALUES ('1104', '1104', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:07', null, null);
INSERT INTO `equipment_record` VALUES ('1105', '1105', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:07', null, null);
INSERT INTO `equipment_record` VALUES ('1106', '1106', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:08', null, null);
INSERT INTO `equipment_record` VALUES ('1107', '1107', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:08', null, null);
INSERT INTO `equipment_record` VALUES ('1108', '1108', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:08', null, null);
INSERT INTO `equipment_record` VALUES ('1109', '1109', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:08', null, null);
INSERT INTO `equipment_record` VALUES ('1110', '1110', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:08', null, null);
INSERT INTO `equipment_record` VALUES ('1111', '1111', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:08', null, null);
INSERT INTO `equipment_record` VALUES ('1112', '1112', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:09', null, null);
INSERT INTO `equipment_record` VALUES ('1113', '1113', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:09', null, null);
INSERT INTO `equipment_record` VALUES ('1114', '1114', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:09', null, null);
INSERT INTO `equipment_record` VALUES ('1115', '1115', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:09', null, null);
INSERT INTO `equipment_record` VALUES ('1116', '1116', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:10', null, null);
INSERT INTO `equipment_record` VALUES ('1117', '1117', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:10', null, null);
INSERT INTO `equipment_record` VALUES ('1118', '1118', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:10', null, null);
INSERT INTO `equipment_record` VALUES ('1119', '1119', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:10', null, null);
INSERT INTO `equipment_record` VALUES ('1120', '1120', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:10', null, null);
INSERT INTO `equipment_record` VALUES ('1121', '1121', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:11', null, null);
INSERT INTO `equipment_record` VALUES ('1122', '1122', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:11', null, null);
INSERT INTO `equipment_record` VALUES ('1123', '1123', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:11', null, null);
INSERT INTO `equipment_record` VALUES ('1124', '1124', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:11', null, null);
INSERT INTO `equipment_record` VALUES ('1125', '1125', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:11', null, null);
INSERT INTO `equipment_record` VALUES ('1126', '1126', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:11', null, null);
INSERT INTO `equipment_record` VALUES ('1127', '1127', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:12', null, null);
INSERT INTO `equipment_record` VALUES ('1128', '1128', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:12', null, null);
INSERT INTO `equipment_record` VALUES ('1129', '1129', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:12', null, null);
INSERT INTO `equipment_record` VALUES ('1130', '1130', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:13', null, null);
INSERT INTO `equipment_record` VALUES ('1131', '1131', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:13', null, null);
INSERT INTO `equipment_record` VALUES ('1132', '1132', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:13', null, null);
INSERT INTO `equipment_record` VALUES ('1133', '1133', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:13', null, null);
INSERT INTO `equipment_record` VALUES ('1134', '1134', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:13', null, null);
INSERT INTO `equipment_record` VALUES ('1135', '1135', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:14', null, null);
INSERT INTO `equipment_record` VALUES ('1136', '1136', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:14', null, null);
INSERT INTO `equipment_record` VALUES ('1137', '1137', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:14', null, null);
INSERT INTO `equipment_record` VALUES ('1138', '1138', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:14', null, null);
INSERT INTO `equipment_record` VALUES ('1139', '1139', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:14', null, null);
INSERT INTO `equipment_record` VALUES ('1140', '1140', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:14', null, null);
INSERT INTO `equipment_record` VALUES ('1141', '1141', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:15', null, null);
INSERT INTO `equipment_record` VALUES ('1142', '1142', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:15', null, null);
INSERT INTO `equipment_record` VALUES ('1143', '1143', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:15', null, null);
INSERT INTO `equipment_record` VALUES ('1144', '1144', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:15', null, null);
INSERT INTO `equipment_record` VALUES ('1145', '1145', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:15', null, null);
INSERT INTO `equipment_record` VALUES ('1146', '1146', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:15', null, null);
INSERT INTO `equipment_record` VALUES ('1147', '1147', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:16', null, null);
INSERT INTO `equipment_record` VALUES ('1148', '1148', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:16', null, null);
INSERT INTO `equipment_record` VALUES ('1149', '1149', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:16', null, null);
INSERT INTO `equipment_record` VALUES ('1150', '1150', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:16', null, null);
INSERT INTO `equipment_record` VALUES ('1151', '1151', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:16', null, null);
INSERT INTO `equipment_record` VALUES ('1152', '1152', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:17', null, null);
INSERT INTO `equipment_record` VALUES ('1153', '1153', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:17', null, null);
INSERT INTO `equipment_record` VALUES ('1154', '1154', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:17', null, null);
INSERT INTO `equipment_record` VALUES ('1155', '1155', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:17', null, null);
INSERT INTO `equipment_record` VALUES ('1156', '1156', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:18', null, null);
INSERT INTO `equipment_record` VALUES ('1157', '1157', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:18', null, null);
INSERT INTO `equipment_record` VALUES ('1158', '1158', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:18', null, null);
INSERT INTO `equipment_record` VALUES ('1159', '1159', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:18', null, null);
INSERT INTO `equipment_record` VALUES ('1160', '1160', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:18', null, null);
INSERT INTO `equipment_record` VALUES ('1161', '1161', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:18', null, null);
INSERT INTO `equipment_record` VALUES ('1162', '1162', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:19', null, null);
INSERT INTO `equipment_record` VALUES ('1163', '1163', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:19', null, null);
INSERT INTO `equipment_record` VALUES ('1164', '1164', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:19', null, null);
INSERT INTO `equipment_record` VALUES ('1165', '1165', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:19', null, null);
INSERT INTO `equipment_record` VALUES ('1166', '1166', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:19', null, null);
INSERT INTO `equipment_record` VALUES ('1167', '1167', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:20', null, null);
INSERT INTO `equipment_record` VALUES ('1168', '1168', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:20', null, null);
INSERT INTO `equipment_record` VALUES ('1169', '1169', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:20', null, null);
INSERT INTO `equipment_record` VALUES ('1170', '1170', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:21', null, null);
INSERT INTO `equipment_record` VALUES ('1171', '1171', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:21', null, null);
INSERT INTO `equipment_record` VALUES ('1172', '1172', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:21', null, null);
INSERT INTO `equipment_record` VALUES ('1173', '1173', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:21', null, null);
INSERT INTO `equipment_record` VALUES ('1174', '1174', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:21', null, null);
INSERT INTO `equipment_record` VALUES ('1175', '1175', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:22', null, null);
INSERT INTO `equipment_record` VALUES ('1176', '1176', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:22', null, null);
INSERT INTO `equipment_record` VALUES ('1177', '1177', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:22', null, null);
INSERT INTO `equipment_record` VALUES ('1178', '1178', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:22', null, null);
INSERT INTO `equipment_record` VALUES ('1179', '1179', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:22', null, null);
INSERT INTO `equipment_record` VALUES ('1180', '1180', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:23', null, null);
INSERT INTO `equipment_record` VALUES ('1181', '1181', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:23', null, null);
INSERT INTO `equipment_record` VALUES ('1182', '1182', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:23', null, null);
INSERT INTO `equipment_record` VALUES ('1183', '1183', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:23', null, null);
INSERT INTO `equipment_record` VALUES ('1184', '1184', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:23', null, null);
INSERT INTO `equipment_record` VALUES ('1185', '1185', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:23', null, null);
INSERT INTO `equipment_record` VALUES ('1186', '1186', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:24', null, null);
INSERT INTO `equipment_record` VALUES ('1187', '1187', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:24', null, null);
INSERT INTO `equipment_record` VALUES ('1188', '1188', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:24', null, null);
INSERT INTO `equipment_record` VALUES ('1189', '1189', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:24', null, null);
INSERT INTO `equipment_record` VALUES ('1190', '1190', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:24', null, null);
INSERT INTO `equipment_record` VALUES ('1191', '1191', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:25', null, null);
INSERT INTO `equipment_record` VALUES ('1192', '1192', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:25', null, null);
INSERT INTO `equipment_record` VALUES ('1193', '1193', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:25', null, null);
INSERT INTO `equipment_record` VALUES ('1194', '1194', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:25', null, null);
INSERT INTO `equipment_record` VALUES ('1195', '1195', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:25', null, null);
INSERT INTO `equipment_record` VALUES ('1196', '1196', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:26', null, null);
INSERT INTO `equipment_record` VALUES ('1197', '1197', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:26', null, null);
INSERT INTO `equipment_record` VALUES ('1198', '1198', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:26', null, null);
INSERT INTO `equipment_record` VALUES ('1199', '1199', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:26', null, null);
INSERT INTO `equipment_record` VALUES ('1200', '1200', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:27', null, null);
INSERT INTO `equipment_record` VALUES ('1201', '1201', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:27', null, null);
INSERT INTO `equipment_record` VALUES ('1202', '1202', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:27', null, null);
INSERT INTO `equipment_record` VALUES ('1203', '1203', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:27', null, null);
INSERT INTO `equipment_record` VALUES ('1204', '1204', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:27', null, null);
INSERT INTO `equipment_record` VALUES ('1205', '1205', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:28', null, null);
INSERT INTO `equipment_record` VALUES ('1206', '1206', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:28', null, null);
INSERT INTO `equipment_record` VALUES ('1207', '1207', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:28', null, null);
INSERT INTO `equipment_record` VALUES ('1208', '1208', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:29', null, null);
INSERT INTO `equipment_record` VALUES ('1209', '1209', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:29', null, null);
INSERT INTO `equipment_record` VALUES ('1210', '1210', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:30', null, null);
INSERT INTO `equipment_record` VALUES ('1211', '1211', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:30', null, null);
INSERT INTO `equipment_record` VALUES ('1212', '1212', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:30', null, null);
INSERT INTO `equipment_record` VALUES ('1213', '1213', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:30', null, null);
INSERT INTO `equipment_record` VALUES ('1214', '1214', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:30', null, null);
INSERT INTO `equipment_record` VALUES ('1215', '1215', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:30', null, null);
INSERT INTO `equipment_record` VALUES ('1216', '1216', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:31', null, null);
INSERT INTO `equipment_record` VALUES ('1217', '1217', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:31', null, null);
INSERT INTO `equipment_record` VALUES ('1218', '1218', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:31', null, null);
INSERT INTO `equipment_record` VALUES ('1219', '1219', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:31', null, null);
INSERT INTO `equipment_record` VALUES ('1220', '1220', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:32', null, null);
INSERT INTO `equipment_record` VALUES ('1221', '1221', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:32', null, null);
INSERT INTO `equipment_record` VALUES ('1222', '1222', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:32', null, null);
INSERT INTO `equipment_record` VALUES ('1223', '1223', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:32', null, null);
INSERT INTO `equipment_record` VALUES ('1224', '1224', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:32', null, null);
INSERT INTO `equipment_record` VALUES ('1225', '1225', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:33', null, null);
INSERT INTO `equipment_record` VALUES ('1226', '1226', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:33', null, null);
INSERT INTO `equipment_record` VALUES ('1227', '1227', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:33', null, null);
INSERT INTO `equipment_record` VALUES ('1228', '1228', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:33', null, null);
INSERT INTO `equipment_record` VALUES ('1229', '1229', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:34', null, null);
INSERT INTO `equipment_record` VALUES ('1230', '1230', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:34', null, null);
INSERT INTO `equipment_record` VALUES ('1231', '1231', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:34', null, null);
INSERT INTO `equipment_record` VALUES ('1232', '1232', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:34', null, null);
INSERT INTO `equipment_record` VALUES ('1233', '1233', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:35', null, null);
INSERT INTO `equipment_record` VALUES ('1234', '1234', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:35', null, null);
INSERT INTO `equipment_record` VALUES ('1235', '1235', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:36', null, null);
INSERT INTO `equipment_record` VALUES ('1236', '1236', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:36', null, null);
INSERT INTO `equipment_record` VALUES ('1237', '1237', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:36', null, null);
INSERT INTO `equipment_record` VALUES ('1238', '1238', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:36', null, null);
INSERT INTO `equipment_record` VALUES ('1239', '1239', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:37', null, null);
INSERT INTO `equipment_record` VALUES ('1240', '1240', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:37', null, null);
INSERT INTO `equipment_record` VALUES ('1241', '1241', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:37', null, null);
INSERT INTO `equipment_record` VALUES ('1242', '1242', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:37', null, null);
INSERT INTO `equipment_record` VALUES ('1243', '1243', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:38', null, null);
INSERT INTO `equipment_record` VALUES ('1244', '1244', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:39', null, null);
INSERT INTO `equipment_record` VALUES ('1245', '1245', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:39', null, null);
INSERT INTO `equipment_record` VALUES ('1246', '1246', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:39', null, null);
INSERT INTO `equipment_record` VALUES ('1247', '1247', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:39', null, null);
INSERT INTO `equipment_record` VALUES ('1248', '1248', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:40', null, null);
INSERT INTO `equipment_record` VALUES ('1249', '1249', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:40', null, null);
INSERT INTO `equipment_record` VALUES ('1250', '1250', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:40', null, null);
INSERT INTO `equipment_record` VALUES ('1251', '1251', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:40', null, null);
INSERT INTO `equipment_record` VALUES ('1252', '1252', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:40', null, null);
INSERT INTO `equipment_record` VALUES ('1253', '1253', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:41', null, null);
INSERT INTO `equipment_record` VALUES ('1254', '1254', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:41', null, null);
INSERT INTO `equipment_record` VALUES ('1255', '1255', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:41', null, null);
INSERT INTO `equipment_record` VALUES ('1256', '1256', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:41', null, null);
INSERT INTO `equipment_record` VALUES ('1257', '1257', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:41', null, null);
INSERT INTO `equipment_record` VALUES ('1258', '1258', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:41', null, null);
INSERT INTO `equipment_record` VALUES ('1259', '1259', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:42', null, null);
INSERT INTO `equipment_record` VALUES ('1260', '1260', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:42', null, null);
INSERT INTO `equipment_record` VALUES ('1261', '1261', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:43', null, null);
INSERT INTO `equipment_record` VALUES ('1262', '1262', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:43', null, null);
INSERT INTO `equipment_record` VALUES ('1263', '1263', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:44', null, null);
INSERT INTO `equipment_record` VALUES ('1264', '1264', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:44', null, null);
INSERT INTO `equipment_record` VALUES ('1265', '1265', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:44', null, null);
INSERT INTO `equipment_record` VALUES ('1266', '1266', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:44', null, null);
INSERT INTO `equipment_record` VALUES ('1267', '1267', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:44', null, null);
INSERT INTO `equipment_record` VALUES ('1268', '1268', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:45', null, null);
INSERT INTO `equipment_record` VALUES ('1269', '1269', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:45', null, null);
INSERT INTO `equipment_record` VALUES ('1270', '1270', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:45', null, null);
INSERT INTO `equipment_record` VALUES ('1271', '1271', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:46', null, null);
INSERT INTO `equipment_record` VALUES ('1272', '1272', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:46', null, null);
INSERT INTO `equipment_record` VALUES ('1273', '1273', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:46', null, null);
INSERT INTO `equipment_record` VALUES ('1274', '1274', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:46', null, null);
INSERT INTO `equipment_record` VALUES ('1275', '1275', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:46', null, null);
INSERT INTO `equipment_record` VALUES ('1276', '1276', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:47', null, null);
INSERT INTO `equipment_record` VALUES ('1277', '1277', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:47', null, null);
INSERT INTO `equipment_record` VALUES ('1278', '1278', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:47', null, null);
INSERT INTO `equipment_record` VALUES ('1279', '1279', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:47', null, null);
INSERT INTO `equipment_record` VALUES ('1280', '1280', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:48', null, null);
INSERT INTO `equipment_record` VALUES ('1281', '1281', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:48', null, null);
INSERT INTO `equipment_record` VALUES ('1282', '1282', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:48', null, null);
INSERT INTO `equipment_record` VALUES ('1283', '1283', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:48', null, null);
INSERT INTO `equipment_record` VALUES ('1284', '1284', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:49', null, null);
INSERT INTO `equipment_record` VALUES ('1285', '1285', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:49', null, null);
INSERT INTO `equipment_record` VALUES ('1286', '1286', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:49', null, null);
INSERT INTO `equipment_record` VALUES ('1287', '1287', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:49', null, null);
INSERT INTO `equipment_record` VALUES ('1288', '1288', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:49', null, null);
INSERT INTO `equipment_record` VALUES ('1289', '1289', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:50', null, null);
INSERT INTO `equipment_record` VALUES ('1290', '1290', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:50', null, null);
INSERT INTO `equipment_record` VALUES ('1291', '1291', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:50', null, null);
INSERT INTO `equipment_record` VALUES ('1292', '1292', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:50', null, null);
INSERT INTO `equipment_record` VALUES ('1293', '1293', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:50', null, null);
INSERT INTO `equipment_record` VALUES ('1294', '1294', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:50', null, null);
INSERT INTO `equipment_record` VALUES ('1295', '1295', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:51', null, null);
INSERT INTO `equipment_record` VALUES ('1296', '1296', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:51', null, null);
INSERT INTO `equipment_record` VALUES ('1297', '1297', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:51', null, null);
INSERT INTO `equipment_record` VALUES ('1298', '1298', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:51', null, null);
INSERT INTO `equipment_record` VALUES ('1299', '1299', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:51', null, null);
INSERT INTO `equipment_record` VALUES ('1300', '1300', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:52', null, null);
INSERT INTO `equipment_record` VALUES ('1301', '1301', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:52', null, null);
INSERT INTO `equipment_record` VALUES ('1302', '1302', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:52', null, null);
INSERT INTO `equipment_record` VALUES ('1303', '1303', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:52', null, null);
INSERT INTO `equipment_record` VALUES ('1304', '1304', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:53', null, null);
INSERT INTO `equipment_record` VALUES ('1305', '1305', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:53', null, null);
INSERT INTO `equipment_record` VALUES ('1306', '1306', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:53', null, null);
INSERT INTO `equipment_record` VALUES ('1307', '1307', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:53', null, null);
INSERT INTO `equipment_record` VALUES ('1308', '1308', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:54', null, null);
INSERT INTO `equipment_record` VALUES ('1309', '1309', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:54', null, null);
INSERT INTO `equipment_record` VALUES ('1310', '1310', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:54', null, null);
INSERT INTO `equipment_record` VALUES ('1311', '1311', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:54', null, null);
INSERT INTO `equipment_record` VALUES ('1312', '1312', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:55', null, null);
INSERT INTO `equipment_record` VALUES ('1313', '1313', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:55', null, null);
INSERT INTO `equipment_record` VALUES ('1314', '1314', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:55', null, null);
INSERT INTO `equipment_record` VALUES ('1315', '1315', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:55', null, null);
INSERT INTO `equipment_record` VALUES ('1316', '1316', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:56', null, null);
INSERT INTO `equipment_record` VALUES ('1317', '1317', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:56', null, null);
INSERT INTO `equipment_record` VALUES ('1318', '1318', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:56', null, null);
INSERT INTO `equipment_record` VALUES ('1319', '1319', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:57', null, null);
INSERT INTO `equipment_record` VALUES ('1320', '1320', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:58', null, null);
INSERT INTO `equipment_record` VALUES ('1321', '1321', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:58', null, null);
INSERT INTO `equipment_record` VALUES ('1322', '1322', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:58', null, null);
INSERT INTO `equipment_record` VALUES ('1323', '1323', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:58', null, null);
INSERT INTO `equipment_record` VALUES ('1324', '1324', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:59', null, null);
INSERT INTO `equipment_record` VALUES ('1325', '1325', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:59', null, null);
INSERT INTO `equipment_record` VALUES ('1326', '1326', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:59', null, null);
INSERT INTO `equipment_record` VALUES ('1327', '1327', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:42:59', null, null);
INSERT INTO `equipment_record` VALUES ('1328', '1328', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:00', null, null);
INSERT INTO `equipment_record` VALUES ('1329', '1329', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:00', null, null);
INSERT INTO `equipment_record` VALUES ('1330', '1330', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:00', null, null);
INSERT INTO `equipment_record` VALUES ('1331', '1331', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:01', null, null);
INSERT INTO `equipment_record` VALUES ('1332', '1332', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:01', null, null);
INSERT INTO `equipment_record` VALUES ('1333', '1333', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:01', null, null);
INSERT INTO `equipment_record` VALUES ('1334', '1334', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:01', null, null);
INSERT INTO `equipment_record` VALUES ('1335', '1335', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:02', null, null);
INSERT INTO `equipment_record` VALUES ('1336', '1336', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:03', null, null);
INSERT INTO `equipment_record` VALUES ('1337', '1337', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:03', null, null);
INSERT INTO `equipment_record` VALUES ('1338', '1338', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:03', null, null);
INSERT INTO `equipment_record` VALUES ('1339', '1339', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:03', null, null);
INSERT INTO `equipment_record` VALUES ('1340', '1340', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:04', null, null);
INSERT INTO `equipment_record` VALUES ('1341', '1341', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:04', null, null);
INSERT INTO `equipment_record` VALUES ('1342', '1342', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:04', null, null);
INSERT INTO `equipment_record` VALUES ('1343', '1343', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:04', null, null);
INSERT INTO `equipment_record` VALUES ('1344', '1344', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:04', null, null);
INSERT INTO `equipment_record` VALUES ('1345', '1345', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:04', null, null);
INSERT INTO `equipment_record` VALUES ('1346', '1346', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:05', null, null);
INSERT INTO `equipment_record` VALUES ('1347', '1347', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:05', null, null);
INSERT INTO `equipment_record` VALUES ('1348', '1348', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:05', null, null);
INSERT INTO `equipment_record` VALUES ('1349', '1349', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:05', null, null);
INSERT INTO `equipment_record` VALUES ('1350', '1350', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:06', null, null);
INSERT INTO `equipment_record` VALUES ('1351', '1351', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:06', null, null);
INSERT INTO `equipment_record` VALUES ('1352', '1352', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:06', null, null);
INSERT INTO `equipment_record` VALUES ('1353', '1353', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:06', null, null);
INSERT INTO `equipment_record` VALUES ('1354', '1354', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:06', null, null);
INSERT INTO `equipment_record` VALUES ('1355', '1355', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:07', null, null);
INSERT INTO `equipment_record` VALUES ('1356', '1356', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:07', null, null);
INSERT INTO `equipment_record` VALUES ('1357', '1357', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:07', null, null);
INSERT INTO `equipment_record` VALUES ('1358', '1358', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:07', null, null);
INSERT INTO `equipment_record` VALUES ('1359', '1359', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:07', null, null);
INSERT INTO `equipment_record` VALUES ('1360', '1360', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:08', null, null);
INSERT INTO `equipment_record` VALUES ('1361', '1361', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:08', null, null);
INSERT INTO `equipment_record` VALUES ('1362', '1362', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:08', null, null);
INSERT INTO `equipment_record` VALUES ('1363', '1363', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:09', null, null);
INSERT INTO `equipment_record` VALUES ('1364', '1364', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:09', null, null);
INSERT INTO `equipment_record` VALUES ('1365', '1365', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:09', null, null);
INSERT INTO `equipment_record` VALUES ('1366', '1366', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:09', null, null);
INSERT INTO `equipment_record` VALUES ('1367', '1367', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:09', null, null);
INSERT INTO `equipment_record` VALUES ('1368', '1368', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:10', null, null);
INSERT INTO `equipment_record` VALUES ('1369', '1369', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:10', null, null);
INSERT INTO `equipment_record` VALUES ('1370', '1370', '2018-01-01', '1', '2018-01-01', null, '2019-05-29', '2', '1', 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2019-05-29 10:43:10', null, null);

-- ----------------------------
-- Table structure for e_category
-- ----------------------------
DROP TABLE IF EXISTS `e_category`;
CREATE TABLE `e_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(2) NOT NULL DEFAULT '1' COMMENT '1:特种设备类2：非特种设备类(不含环保\r\n\r\n)3：环保类',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `ord` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` varchar(10) NOT NULL DEFAULT '1' COMMENT '1：有效2失效',
  `e_group` int(2) NOT NULL DEFAULT '1' COMMENT '统计分组1：特种设备及安全设备2：安全设备2/3/其他类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of e_category
-- ----------------------------
INSERT INTO `e_category` VALUES ('1', '1', '锅炉类', '0', '1', '1');
INSERT INTO `e_category` VALUES ('2', '1', '压力容器类', '0', '1', '1');
INSERT INTO `e_category` VALUES ('3', '1', '压力管道类', '0', '1', '1');
INSERT INTO `e_category` VALUES ('4', '1', '电梯类', '0', '1', '1');
INSERT INTO `e_category` VALUES ('5', '1', '起重机械类', '0', '1', '1');
INSERT INTO `e_category` VALUES ('6', '1', '安全附件类', '0', '2', '1');
INSERT INTO `e_category` VALUES ('7', '2', 'Ⅰ类', '0', '1', '1');
INSERT INTO `e_category` VALUES ('8', '2', 'Ⅱ类', '0', '1', '2');
INSERT INTO `e_category` VALUES ('9', '2', 'Ⅲ类', '0', '1', '2');
INSERT INTO `e_category` VALUES ('10', '2', '其他', '0', '1', '2');
INSERT INTO `e_category` VALUES ('11', '1', '客运索道', '0', '1', '1');
INSERT INTO `e_category` VALUES ('12', '1', '大型游乐设施', '0', '1', '1');
INSERT INTO `e_category` VALUES ('13', '1', '场（厂）内专用机动车辆', '0', '1', '1');
INSERT INTO `e_category` VALUES ('14', '3', '废水处理装置', '0', '1', '1');
INSERT INTO `e_category` VALUES ('15', '3', '废气处理装置', '0', '1', '1');
INSERT INTO `e_category` VALUES ('16', '3', '固废处理装置', '0', '1', '1');
INSERT INTO `e_category` VALUES ('17', '3', '成套设备', '0', '1', '1');
INSERT INTO `e_category` VALUES ('18', '3', '动力设备', '0', '1', '1');
INSERT INTO `e_category` VALUES ('19', '3', '仪表仪器', '0', '1', '1');
INSERT INTO `e_category` VALUES ('20', '3', '机械加工产品', '0', '1', '1');
INSERT INTO `e_category` VALUES ('21', '3', '其他类', '0', '1', '1');

-- ----------------------------
-- Table structure for e_type
-- ----------------------------
DROP TABLE IF EXISTS `e_type`;
CREATE TABLE `e_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `ord` int(5) DEFAULT NULL COMMENT '排序',
  `status` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of e_type
-- ----------------------------
INSERT INTO `e_type` VALUES ('1', '特种设备类', '0', '1');
INSERT INTO `e_type` VALUES ('2', '安全及其他设备类', '0', '1');
INSERT INTO `e_type` VALUES ('3', '其他', '1', '2');
INSERT INTO `e_type` VALUES ('4', '消防设备类', '0', '1');
INSERT INTO `e_type` VALUES ('5', '环保设备类', '0', '1');
INSERT INTO `e_type` VALUES ('6', '用电及节能设备类', '0', '1');
INSERT INTO `e_type` VALUES ('7', '其他类', '0', '2');

-- ----------------------------
-- Table structure for e_type_category
-- ----------------------------
DROP TABLE IF EXISTS `e_type_category`;
CREATE TABLE `e_type_category` (
  `id` int(11) NOT NULL,
  `type_id` int(11) DEFAULT NULL COMMENT '种类id',
  `category_id` int(11) DEFAULT NULL COMMENT '类别id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of e_type_category
-- ----------------------------
INSERT INTO `e_type_category` VALUES ('1', '1', '1');
INSERT INTO `e_type_category` VALUES ('2', '1', '2');
INSERT INTO `e_type_category` VALUES ('3', '1', '3');
INSERT INTO `e_type_category` VALUES ('4', '1', '4');
INSERT INTO `e_type_category` VALUES ('5', '1', '5');
INSERT INTO `e_type_category` VALUES ('6', '1', '11');
INSERT INTO `e_type_category` VALUES ('7', '1', '12');
INSERT INTO `e_type_category` VALUES ('8', '1', '13');
INSERT INTO `e_type_category` VALUES ('9', '2', '7');
INSERT INTO `e_type_category` VALUES ('10', '2', '8');
INSERT INTO `e_type_category` VALUES ('11', '2', '9');
INSERT INTO `e_type_category` VALUES ('12', '2', '10');
INSERT INTO `e_type_category` VALUES ('13', '4', '7');
INSERT INTO `e_type_category` VALUES ('14', '4', '8');
INSERT INTO `e_type_category` VALUES ('15', '4', '9');
INSERT INTO `e_type_category` VALUES ('16', '4', '10');
INSERT INTO `e_type_category` VALUES ('17', '5', '14');
INSERT INTO `e_type_category` VALUES ('18', '5', '15');
INSERT INTO `e_type_category` VALUES ('19', '5', '16');
INSERT INTO `e_type_category` VALUES ('20', '5', '17');
INSERT INTO `e_type_category` VALUES ('21', '5', '18');
INSERT INTO `e_type_category` VALUES ('22', '5', '19');
INSERT INTO `e_type_category` VALUES ('23', '5', '20');
INSERT INTO `e_type_category` VALUES ('24', '5', '21');
INSERT INTO `e_type_category` VALUES ('25', '6', '7');
INSERT INTO `e_type_category` VALUES ('26', '6', '8');
INSERT INTO `e_type_category` VALUES ('27', '6', '9');
INSERT INTO `e_type_category` VALUES ('28', '6', '10');

-- ----------------------------
-- Table structure for jeecg_order_customer
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_customer`;
CREATE TABLE `jeecg_order_customer` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '客户名',
  `sex` varchar(4) DEFAULT NULL COMMENT '性别',
  `idcard` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `idcard_pic` varchar(500) DEFAULT NULL COMMENT '身份证扫描件',
  `telphone` varchar(32) DEFAULT NULL COMMENT '电话1',
  `order_id` varchar(32) NOT NULL COMMENT '外键',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_customer
-- ----------------------------
INSERT INTO `jeecg_order_customer` VALUES ('15538561502720', '3333', '1', '', null, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15538561512681', '3332333', '2', '', null, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', 'admin', '2019-03-29 18:43:12');
INSERT INTO `jeecg_order_customer` VALUES ('15538561550142', '4442', '2', '', null, '', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15541168497342', '444', '', '', '', '', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15541168499553', '5555', '', '', '', '', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15541169272690', '小王1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15541169288141', '效力1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15541169441372', '小红1', '1', '', '', '18611788525', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15543695362380', '1111', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15543695397221', '222', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('15543695398992', '333', '', '', '', '', '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('18dc5eb1068ccdfe90e358951ca1a3d6', 'dr2', '', '', '', '', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('195d280490fe88ca1475512ddcaf2af9', '12', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('217a2bf83709775d2cd85bf598392327', '2', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('22bc052ae53ed09913b946abba93fa89', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('23bafeae88126c3bf3322a29a04f0d5e', 'x秦风', null, null, null, null, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('25c4a552c6843f36fad6303bfa99a382', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('2d32144e2bee63264f3f16215c258381', '33333', '2', null, null, null, 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('2d43170d6327f941bd1a017999495e25', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('2e5f62a8b6e0a0ce19b52a6feae23d48', '3', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('313abf99558ac5f13ecca3b87e562ad1', 'scott', '2', null, null, null, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('34a1c5cf6cee360ed610ed0bed70e0f9', '导入秦风', null, null, null, null, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('3c87400f8109b4cf43c5598f0d40e34d', '2', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('40964bcbbecb38e5ac15e6d08cf3cd43', '233', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('41e3dee0b0b6e6530eccb7fbb22fd7a3', '4555', '1', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('4808ae8344c7679a4a2f461db5dc3a70', '44', '1', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('4b6cef12f195fad94d57279b2241770d', 'dr12', '', '', '', '', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('524e695283f8e8c256cc24f39d6d8542', '小王', '2', '370285198604033222', null, '18611788674', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('57c2a8367db34016114cbc9fa368dba0', '2', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('5df36a1608b8c7ac99ad9bc408fe54bf', '4', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('6b694e9ba54bb289ae9cc499e40031e7', 'x秦风', '1', null, null, null, 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('6c6fd2716c2dcd044ed03c2c95d261f8', '李四', '2', '370285198602058833', '', '18611788676', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('742d008214dee0afff2145555692973e', '秦风', '1', '370285198602058822', null, '18611788676', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('7469c3e5d371767ff90a739d297689b5', '导入秦风', '2', null, null, null, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:02');
INSERT INTO `jeecg_order_customer` VALUES ('7a96e2c7b24847d4a29940dbc0eda6e5', 'drscott', null, null, null, null, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('7f5a40818e225ee18bda6da7932ac5f9', '2', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('8011575abfd7c8085e71ff66df1124b9', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('8404f31d7196221a573c9bd6c8f15003', '小张', '1', '370285198602058211', null, '18611788676', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('859020e10a2f721f201cdbff78cf7b9f', 'scott', null, null, null, null, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('8cc3c4d26e3060975df3a2adb781eeb4', 'dr33', null, null, null, null, 'b2feb454e43c46b2038768899061e464', 'jeecg-boot', '2019-04-04 17:23:09', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('8d1725c23a6a50685ff0dedfd437030d', '4', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('933cae3a79f60a93922d59aace5346ce', '小王', null, '370285198604033222', null, '18611788674', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('9bdb5400b709ba4eaf3444de475880d7', 'dr22', null, null, null, null, '22c17790dcd04b296c4a2a089f71895f', 'jeecg-boot', '2019-04-04 17:23:09', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('9f87677f70e5f864679314389443a3eb', '33', '2', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('a2c2b7101f75c02deb328ba777137897', '44', '2', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('ab4d002dc552c326147e318c87d3bed4', 'ddddd', '1', '370285198604033222', null, '18611755848', '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:47', 'admin', '2019-04-04 17:31:17');
INSERT INTO `jeecg_order_customer` VALUES ('ad116f722a438e5f23095a0b5fcc8e89', 'dr秦风', null, null, null, null, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('b1ba147b75f5eaa48212586097fc3fd1', '2', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('b43bf432c251f0e6b206e403b8ec29bc', 'lisi', null, null, null, null, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('bcdd300a7d44c45a66bdaac14903c801', '33', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('beb983293e47e2dc1a9b3d649aa3eb34', 'ddd3', null, null, null, null, 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('c219808196406f1b8c7f1062589de4b5', '44', '1', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('c8ed061d4b27c0c7a64e100f2b1c8ab5', '张经理', '2', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('cc5de4af7f06cd6d250965ebe92a0395', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('cf8817bd703bf7c7c77a2118edc26cc7', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('d72b26fae42e71270fce2097a88da58a', '导入scott', null, 'www', null, null, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:05');
INSERT INTO `jeecg_order_customer` VALUES ('dbdc60a6ac1a8c43f24afee384039b68', 'xiaowang', null, null, null, null, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('dc5883b50466de94d900919ed96d97af', '33', '1', '370285198602058823', null, '18611788674', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('deeb73e553ad8dc0a0b3cfd5a338de8e', '3333', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('e2570278bf189ac05df3673231326f47', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('e39cb23bb950b2bdedfc284686c6128a', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('e46fe9111a9100844af582a18a2aa402', '1', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('ee7af0acb9beb9bf8d8b3819a8a7fdc3', '2', null, null, null, null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('f5d2605e844192d9e548f9bd240ac908', '小张', null, '370285198602058211', null, '18611788676', '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_customer` VALUES ('f6db6547382126613a3e46e7cd58a5f2', '导入scott', null, null, null, null, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', null, null);

-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `order_code` varchar(50) DEFAULT NULL COMMENT '订单号',
  `ctype` varchar(500) DEFAULT NULL COMMENT '订单类型',
  `order_date` datetime DEFAULT NULL COMMENT '订单日期',
  `order_money` double(10,3) DEFAULT NULL COMMENT '订单金额',
  `content` varchar(500) DEFAULT NULL COMMENT '订单备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('163e2efcbc6d7d54eb3f8a137da8a75a', 'B100', null, null, '3000.000', null, 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_main` VALUES ('3a867ebf2cebce9bae3f79676d8d86f3', '导入B100', '2222', null, '3000.000', null, 'jeecg-boot', '2019-03-29 18:43:59', 'admin', '2019-04-08 17:35:13');
INSERT INTO `jeecg_order_main` VALUES ('4bca3ea6881d39dbf67ef1e42c649766', '1212', null, null, null, null, 'admin', '2019-04-03 10:55:43', null, null);
INSERT INTO `jeecg_order_main` VALUES ('4cba137333127e8e31df7ad168cc3732', '青岛订单A0001', '2', '2019-04-03 10:56:07', null, null, 'admin', '2019-04-03 10:56:11', null, null);
INSERT INTO `jeecg_order_main` VALUES ('54e739bef5b67569c963c38da52581ec', 'NC911', '1', '2019-02-18 09:58:51', '40.000', null, 'admin', '2019-02-18 09:58:47', 'admin', '2019-02-18 09:58:59');
INSERT INTO `jeecg_order_main` VALUES ('5d6e2b9e44037526270b6206196f6689', 'N333', null, '2019-04-04 17:19:11', null, '聪明00', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_main` VALUES ('6a719071a29927a14f19482f8693d69a', 'c100', null, null, '5000.000', null, 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_main` VALUES ('8ab1186410a65118c4d746eb085d3bed', '导入400', '1', '2019-02-18 09:58:51', '40.000', null, 'admin', '2019-02-18 09:58:47', 'admin', '2019-02-18 09:58:59');
INSERT INTO `jeecg_order_main` VALUES ('9a57c850e4f68cf94ef7d8585dbaf7e6', 'halou100dd', null, '2019-04-04 17:30:32', null, null, 'admin', '2019-04-04 17:30:41', 'admin', '2019-04-04 17:31:08');
INSERT INTO `jeecg_order_main` VALUES ('a2cce75872cc8fcc47f78de9ffd378c2', '导入B100', null, null, '3000.000', null, 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_main` VALUES ('b190737bd04cca8360e6f87c9ef9ec4e', 'B0018888', '1', null, null, null, 'admin', '2019-02-15 18:39:29', 'admin', '2019-02-15 18:39:37');
INSERT INTO `jeecg_order_main` VALUES ('d908bfee3377e946e59220c4a4eb414a', 'SSSS001', null, null, '599.000', null, 'admin', '2019-04-01 15:43:03', 'admin', '2019-04-01 16:26:52');
INSERT INTO `jeecg_order_main` VALUES ('e73434dad84ebdce2d4e0c2a2f06d8ea', '导入200', null, null, '3000.000', null, 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_main` VALUES ('eb13ab35d2946a2b0cfe3452bca1e73f', 'BJ9980', '1', null, '90.000', null, 'admin', '2019-02-16 17:36:42', 'admin', '2019-02-16 17:46:16');
INSERT INTO `jeecg_order_main` VALUES ('f618a85b17e2c4dd58d268220c8dd9a1', 'N001', null, '2019-04-01 19:09:02', '2222.000', null, 'admin', '2019-04-01 19:09:47', 'admin', '2019-04-01 19:10:00');
INSERT INTO `jeecg_order_main` VALUES ('f71f7f8930b5b6b1703d9948d189982b', 'BY911', null, '2019-04-06 19:08:39', null, null, 'admin', '2019-04-01 16:36:02', 'admin', '2019-04-01 16:36:08');
INSERT INTO `jeecg_order_main` VALUES ('f8889aaef6d1bccffd98d2889c0aafb5', 'A100', null, '2018-10-10 00:00:00', '6000.000', null, 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_main` VALUES ('fe81ee5d19bbf9eef2066d4f29dfbe0f', 'uuuu', null, null, null, null, 'jeecg-boot', '2019-04-03 11:00:39', null, null);

-- ----------------------------
-- Table structure for jeecg_order_ticket
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_ticket`;
CREATE TABLE `jeecg_order_ticket` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `ticket_code` varchar(100) NOT NULL COMMENT '航班号',
  `tickect_date` datetime DEFAULT NULL COMMENT '航班时间',
  `order_id` varchar(32) NOT NULL COMMENT '外键',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_ticket
-- ----------------------------
INSERT INTO `jeecg_order_ticket` VALUES ('0f0e3a40a215958f807eea08a6e1ac0a', '88', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('0fa3bd0bbcf53650c0bb3c0cac6d8cb7', 'ffff', '2019-02-21 00:00:00', 'eb13ab35d2946a2b0cfe3452bca1e73f', 'admin', '2019-02-25 16:29:41', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('14221afb4f5f749c1deef26ac56fdac3', '33', '2019-03-09 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15538561502730', '222', null, '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15538561526461', '2244', '2019-03-29 00:00:00', '0d4a2e67b538ee1bc881e5ed34f670f0', 'jeecg-boot', '2019-03-29 18:42:55', 'admin', '2019-03-29 18:43:26');
INSERT INTO `jeecg_order_ticket` VALUES ('15541168478913', 'hhhhh', null, 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15541169272810', '22211', '2019-04-01 19:09:40', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15541169302331', '333311', '2019-04-01 19:09:40', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15541169713092', '333311', '2019-04-01 19:09:47', 'f618a85b17e2c4dd58d268220c8dd9a1', 'admin', '2019-04-01 19:10:07', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15542604293170', 'c', null, 'fe81ee5d19bbf9eef2066d4f29dfbe0f', 'jeecg-boot', '2019-04-03 11:00:39', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15542604374431', 'd', null, 'fe81ee5d19bbf9eef2066d4f29dfbe0f', 'jeecg-boot', '2019-04-03 11:00:39', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15543695362380', 'ccc2', null, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15543695381291', 'cccc1', null, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('15543695740352', 'dddd', null, '5d6e2b9e44037526270b6206196f6689', 'admin', '2019-04-04 17:19:40', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('18905bc89ee3851805aab38ed3b505ec', '44', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('1f809cbd26f4e574697e1c10de575d72', 'A100', null, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('21051adb51529bdaa8798b5a3dd7f7f7', 'C10029', '2019-02-20 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('269576e766b917f8b6509a2bb0c4d4bd', 'A100', null, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('2d473ffc79e5b38a17919e15f8b7078e', '66', '2019-03-29 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('3655b66fca5fef9c6aac6d70182ffda2', 'AA123', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:03', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('365d5919155473ade45840fd626c51a9', 'dddd', '2019-04-04 17:25:29', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('4889a782e78706ab4306a925cfb163a5', 'C34', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:35:00', 'admin', '2019-04-01 16:35:07');
INSERT INTO `jeecg_order_ticket` VALUES ('48d385796382cf87fa4bdf13b42d9a28', '导入A100', null, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('541faed56efbeb4be9df581bd8264d3a', '88', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('57a27a7dfd6a48e7d981f300c181b355', '6', '2019-03-30 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('5ce4dc439c874266e42e6c0ff8dc8b5c', '导入A100', null, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('5f16e6a64ab22a161bd94cc205f2c662', '222', '2019-02-23 00:00:00', 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('645a06152998a576c051474157625c41', '88', '2019-04-04 17:25:31', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('6e3562f2571ea9e96b2d24497b5f5eec', '55', '2019-03-23 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('8fd2b389151568738b1cc4d8e27a6110', '导入A100', null, 'a2cce75872cc8fcc47f78de9ffd378c2', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('93f1a84053e546f59137432ff5564cac', '55', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('969ddc5d2e198d50903686917f996470', 'A10029', '2019-04-01 00:00:00', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('96e7303a8d22a5c384e08d7bcf7ac2bf', 'A100', null, 'e73434dad84ebdce2d4e0c2a2f06d8ea', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('9e8a3336f6c63f558f2b68ce2e1e666e', 'dddd', null, '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:55', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('a28db02c810c65660015095cb81ed434', 'A100', null, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('b217bb0e4ec6a45b6cbf6db880060c0f', 'A100', null, '6a719071a29927a14f19482f8693d69a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('ba708df70bb2652ed1051a394cfa0bb3', '333', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('beabbfcb195d39bedeeafe8318794562', 'A1345', '2019-04-01 00:00:00', 'd908bfee3377e946e59220c4a4eb414a', 'admin', '2019-04-01 16:27:04', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('bf450223cb505f89078a311ef7b6ed16', '777', '2019-03-30 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('c06165b6603e3e1335db187b3c841eef', 'fff', null, '9a57c850e4f68cf94ef7d8585dbaf7e6', 'admin', '2019-04-04 17:30:58', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('c113136abc26ace3a6da4e41d7dc1c7e', '44', '2019-03-15 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('c1abdc2e30aeb25de13ad6ee3488ac24', '77', '2019-03-22 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('c23751a7deb44f553ce50a94948c042a', '33', '2019-03-09 00:00:00', '8ab1186410a65118c4d746eb085d3bed', 'admin', '2019-04-04 17:25:33', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('c64547666b634b3d6a0feedcf05f25ce', 'C10019', '2019-04-01 00:00:00', 'f71f7f8930b5b6b1703d9948d189982b', 'admin', '2019-04-01 19:08:45', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('c8b8d3217f37da78dddf711a1f7da485', 'A100', null, '163e2efcbc6d7d54eb3f8a137da8a75a', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('cab691c1c1ff7a6dfd7248421917fd3c', 'A100', null, 'f8889aaef6d1bccffd98d2889c0aafb5', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('cca10a9a850b456d9b72be87da7b0883', '77', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('d2fbba11f4814d9b1d3cb1a3f342234a', 'C10019', '2019-02-18 00:00:00', '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('d746c1ed956a562e97eef9c6faf94efa', '111', '2019-02-01 00:00:00', 'b190737bd04cca8360e6f87c9ef9ec4e', 'admin', '2019-02-25 16:29:48', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('dbdb07a16826808e4276e84b2aa4731a', '导入A100', null, '3a867ebf2cebce9bae3f79676d8d86f3', 'jeecg-boot', '2019-03-29 18:43:59', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('e7075639c37513afc0bbc4bf7b5d98b9', '88', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('fa759dc104d0371f8aa28665b323dab6', '888', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);
INSERT INTO `jeecg_order_ticket` VALUES ('ff197da84a9a3af53878eddc91afbb2e', '33', null, '54e739bef5b67569c963c38da52581ec', 'admin', '2019-03-15 16:50:15', null, null);

-- ----------------------------
-- Table structure for onl_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_head`;
CREATE TABLE `onl_cgreport_head` (
  `id` varchar(36) NOT NULL,
  `code` varchar(100) NOT NULL COMMENT '报表编码',
  `name` varchar(100) NOT NULL COMMENT '报表名字',
  `cgr_sql` varchar(1000) NOT NULL COMMENT '报表SQL',
  `return_val_field` varchar(100) DEFAULT NULL COMMENT '返回值字段',
  `return_txt_field` varchar(100) DEFAULT NULL COMMENT '返回文本字段',
  `return_type` varchar(2) DEFAULT '1' COMMENT '返回类型，单选或多选',
  `db_source` varchar(100) DEFAULT NULL COMMENT '动态数据源',
  `content` varchar(1000) DEFAULT NULL COMMENT '描述',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_onlinereport_code` (`code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onl_cgreport_head
-- ----------------------------
INSERT INTO `onl_cgreport_head` VALUES ('6c7f59741c814347905a938f06ee003c', 'report_user', '统计在线用户', 'select * from sys_user', null, null, '1', null, null, '2019-03-25 11:21:04', 'admin', '2019-03-25 11:20:45', 'admin');
INSERT INTO `onl_cgreport_head` VALUES ('87b55a515d3441b6b98e48e5b35474a6', 'demo', 'Report Demo', 'select * from demo', null, null, '1', null, null, '2019-03-15 18:18:17', 'admin', '2019-03-12 11:25:16', 'admin');

-- ----------------------------
-- Table structure for onl_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_item`;
CREATE TABLE `onl_cgreport_item` (
  `id` varchar(36) NOT NULL,
  `cgrhead_id` varchar(36) NOT NULL COMMENT '报表ID',
  `field_name` varchar(36) NOT NULL COMMENT '字段名字',
  `field_txt` varchar(300) DEFAULT NULL COMMENT '字段文本',
  `field_width` int(3) DEFAULT NULL,
  `field_type` varchar(10) DEFAULT NULL COMMENT '字段类型',
  `search_mode` varchar(10) DEFAULT NULL COMMENT '查询模式',
  `is_order` int(2) DEFAULT '0' COMMENT '是否排序  0否,1是',
  `is_search` int(2) DEFAULT '0' COMMENT '是否查询  0否,1是',
  `dict_code` varchar(36) DEFAULT NULL COMMENT '字典CODE',
  `field_href` varchar(120) DEFAULT NULL COMMENT '字段跳转URL',
  `is_show` int(2) DEFAULT '1' COMMENT '是否显示  0否,1显示',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `replace_val` varchar(200) DEFAULT NULL COMMENT '取值表达式',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `index_CGRHEAD_ID` (`cgrhead_id`) USING BTREE,
  KEY `index_isshow` (`is_show`) USING BTREE,
  KEY `index_order_num` (`order_num`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onl_cgreport_item
-- ----------------------------
INSERT INTO `onl_cgreport_item` VALUES ('1740bb02519db90c44cb2cba8b755136', '6c7f59741c814347905a938f06ee003c', 'realname', '用户名', null, 'String', null, '0', '0', '', '', '1', '3', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('1b181e6d2813bcb263adc39737f9df46', '87b55a515d3441b6b98e48e5b35474a6', 'name', '用户名', null, 'String', 'single', '0', '1', '', '', '1', '4', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');
INSERT INTO `onl_cgreport_item` VALUES ('1fb45af29af4e792bdc5a4a2c06a4d4d', '402880ec5d872157015d87f2dd940010', 'data_table', '表名', null, 'String', null, '0', '0', null, null, '1', '0', null, 'admin', '2019-03-20 13:24:21', 'admin', '2019-03-20 13:25:08');
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ec0003', '402880e64e1ef94d014e1efefc2a0001', 'id', 'id', '0', 'String', '', null, '0', '', '', '0', '0', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ed0004', '402880e64e1ef94d014e1efefc2a0001', 'accountname', 'accountname', '0', 'String', '', null, '0', '', '', '0', '1', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ed0005', '402880e64e1ef94d014e1efefc2a0001', 'accounttoken', 'accounttoken', '0', 'String', '', null, '0', '', '', '0', '2', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ed0006', '402880e64e1ef94d014e1efefc2a0001', 'accountnumber', 'accountnumber', '0', 'String', '', null, '0', '', '', '0', '3', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ed0007', '402880e64e1ef94d014e1efefc2a0001', 'accounttype', 'accounttype', '0', 'String', '', null, '0', '', '', '0', '4', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ed0008', '402880e64e1ef94d014e1efefc2a0001', 'accountemail', 'accountemail', '0', 'String', '', null, '0', '', '', '0', '5', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ed0009', '402880e64e1ef94d014e1efefc2a0001', 'accountdesc', 'accountdesc', '0', 'String', '', null, '0', '', '', '0', '6', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ee000b', '402880e64e1ef94d014e1efefc2a0001', 'accountappid', 'accountappid', '0', 'String', '', null, '0', '', '', '0', '8', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ee000c', '402880e64e1ef94d014e1efefc2a0001', 'accountappsecret', 'accountappsecret', '0', 'String', '', null, '0', '', '', '0', '9', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ee000d', '402880e64e1ef94d014e1efefc2a0001', 'ADDTOEKNTIME', 'ADDTOEKNTIME', '0', 'String', '', null, '0', '', '', '0', '10', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ee000e', '402880e64e1ef94d014e1efefc2a0001', 'USERNAME', 'USERNAME', '0', 'String', '', null, '0', '', '', '0', '11', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ee0010', '402880e64e1ef94d014e1efefc2a0001', 'jsapiticket', 'jsapiticket', '0', 'String', '', null, '0', '', '', '0', '13', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ee0011', '402880e64e1ef94d014e1efefc2a0001', 'jsapitickettime', 'jsapitickettime', '0', 'String', '', null, '0', '', '', '0', '14', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f167cf82600167cfa154ef0012', '402880e64e1ef94d014e1efefc2a0001', 'init_data_flag', 'init_data_flag', '0', 'String', '', null, '0', '', '', '0', '15', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe490002', '402881f363aa9a380163aa9ebe480001', 'id', 'id', '0', 'String', '', null, '0', '', '', '0', '0', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe490003', '402881f363aa9a380163aa9ebe480001', 'name', 'name', '0', 'String', 'single', null, '0', '', '', '0', '10', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe490004', '402881f363aa9a380163aa9ebe480001', 'sex', 'sex', '0', 'String', 'single', null, '0', 'sex', '', '0', '11', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe490005', '402881f363aa9a380163aa9ebe480001', 'age', 'age', '0', 'String', '', null, '0', '', '', '0', '12', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe490006', '402881f363aa9a380163aa9ebe480001', 'address', 'address', '0', 'String', '', null, '0', '', '', '0', '13', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe490007', '402881f363aa9a380163aa9ebe480001', 'phone', 'phone', '0', 'String', '', null, '0', '', '', '0', '14', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f363aa9a380163aa9ebe4a0008', '402881f363aa9a380163aa9ebe480001', 'memo', 'memo', '0', 'String', '', null, '0', '', '', '0', '15', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2c0004', '402880e64eb9a22c014eb9a4d5890001', 'ID', 'ID', '0', 'String', '', null, '0', '', '', '0', '0', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2c0005', '402880e64eb9a22c014eb9a4d5890001', 'activitiSync', 'activitiSync', '0', 'String', '', null, '0', '', '', '0', '1', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2d0006', '402880e64eb9a22c014eb9a4d5890001', 'browser', 'browser', '0', 'String', '', null, '0', '', '', '0', '2', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2d0007', '402880e64eb9a22c014eb9a4d5890001', 'password', 'password', '0', 'String', '', null, '0', '', '', '0', '3', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2e0008', '402880e64eb9a22c014eb9a4d5890001', 'realname', 'realname', '0', 'String', '', null, '0', '', '', '0', '4', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2e0009', '402880e64eb9a22c014eb9a4d5890001', 'signature', 'signature', '0', 'String', '', null, '0', '', '', '0', '5', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d2f000a', '402880e64eb9a22c014eb9a4d5890001', 'status', 'status', '0', 'String', '', null, '0', '', '', '0', '6', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d30000b', '402880e64eb9a22c014eb9a4d5890001', 'userkey', 'userkey', '0', 'String', '', null, '0', '', '', '0', '7', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d30000c', '402880e64eb9a22c014eb9a4d5890001', 'username', 'username', '0', 'String', '', null, '0', '', '', '0', '8', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d31000d', '402880e64eb9a22c014eb9a4d5890001', 'departid', 'departid', '0', 'String', '', null, '0', '', '', '0', '9', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d31000e', '402880e64eb9a22c014eb9a4d5890001', 'user_name_en', 'user_name_en', '0', 'String', '', null, '0', '', '', '0', '10', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f36402f3de016403035d32000f', '402880e64eb9a22c014eb9a4d5890001', 'delete_flag', 'delete_flag', '0', 'String', '', null, '0', '', '', '0', '11', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f3647e95be01647eb88c400003', '402880e74d76e784014d76f9e783001e', 'account', 'account', '0', 'String', 'single', null, '0', '', '', '0', '0', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('402881f3647e95be01647eb88c410004', '402880e74d76e784014d76f9e783001e', 'realname', 'realname', '0', 'String', '', null, '0', '', '', '0', '1', '', null, null, null, null);
INSERT INTO `onl_cgreport_item` VALUES ('61ef5b323134938fdd07ad5e3ea16cd3', '87b55a515d3441b6b98e48e5b35474a6', 'key_word', '关键词', null, 'String', 'single', '0', '1', '', '', '1', '5', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');
INSERT INTO `onl_cgreport_item` VALUES ('627768efd9ba2c41e905579048f21000', '6c7f59741c814347905a938f06ee003c', 'username', '用户名', null, 'String', null, '0', '0', '', '', '1', '2', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('8a2dfe672f3c0d391ace4a9f9bf564ff', '402880ec5d872157015d87f2dd940010', 'data_id', '数据ID', null, 'String', null, '0', '0', null, null, '1', '0', null, 'admin', '2019-03-20 13:24:21', 'admin', '2019-03-20 13:25:08');
INSERT INTO `onl_cgreport_item` VALUES ('8bb087a9aa2000bcae17a1b3f5768435', '6c7f59741c814347905a938f06ee003c', 'sex', '性别', null, 'String', null, '0', '0', 'sex', '', '1', '5', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('90d4fa57d301801abb26a9b86b6b94c4', '6c7f59741c814347905a938f06ee003c', 'birthday', '生日', null, 'Date', null, '0', '0', '', '', '1', '4', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('9a0a7375479b7657e16c6a228354b495', '402880ec5d872157015d87f2dd940010', 'data_version', '数据版本', null, 'String', null, '0', '0', null, null, '1', '0', null, 'admin', '2019-03-20 13:24:21', 'admin', '2019-03-20 13:25:08');
INSERT INTO `onl_cgreport_item` VALUES ('a4ac355f07a05218854e5f23e2930163', '6c7f59741c814347905a938f06ee003c', 'avatar', '头像', null, 'String', null, '0', '0', '', '', '0', '6', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('ae4d621e391a1392779175cf5a65134c', '87b55a515d3441b6b98e48e5b35474a6', 'update_by', '修改人', null, 'String', null, '0', '0', '', '', '1', '7', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');
INSERT INTO `onl_cgreport_item` VALUES ('b27bea35b1264003c79d38cb86d6929e', '6c7f59741c814347905a938f06ee003c', 'id', 'id', null, 'String', null, '0', '0', '', '', '0', '1', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('ce5168755a734ea09dd190e28bf8d9f4', '87b55a515d3441b6b98e48e5b35474a6', 'update_time', '修改时间', null, 'String', null, '0', '0', '', '', '1', '2', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');
INSERT INTO `onl_cgreport_item` VALUES ('d6e86b5ffd096ddcc445c0f320a45004', '6c7f59741c814347905a938f06ee003c', 'phone', '手机号', null, 'String', null, '0', '0', '', '', '1', '11', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('df365cd357699eea96c29763d1dd7f9d', '6c7f59741c814347905a938f06ee003c', 'email', '邮箱', null, 'String', null, '0', '0', '', '', '1', '14', '', 'admin', '2019-03-25 11:20:45', 'admin', '2019-04-03 15:40:31');
INSERT INTO `onl_cgreport_item` VALUES ('edf9932912b81ad01dd557d3d593a559', '87b55a515d3441b6b98e48e5b35474a6', 'age', '年龄', null, 'String', null, '0', '0', '', '', '1', '8', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');
INSERT INTO `onl_cgreport_item` VALUES ('f985883e509a6faaaf62ca07fd24a73c', '87b55a515d3441b6b98e48e5b35474a6', 'birthday', '生日', null, 'Date', 'single', '0', '1', '', '', '1', '1', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');
INSERT INTO `onl_cgreport_item` VALUES ('fce83e4258de3e2f114ab3116397670c', '87b55a515d3441b6b98e48e5b35474a6', 'punch_time', '发布时间', null, 'String', null, '0', '0', '', '', '1', '3', '', 'admin', '2019-03-20 19:26:39', 'admin', '2019-03-27 18:05:04');

-- ----------------------------
-- Table structure for onl_cgreport_param
-- ----------------------------
DROP TABLE IF EXISTS `onl_cgreport_param`;
CREATE TABLE `onl_cgreport_param` (
  `id` varchar(36) NOT NULL,
  `cgrhead_id` varchar(36) NOT NULL COMMENT '动态报表ID',
  `param_name` varchar(32) NOT NULL COMMENT '参数字段',
  `param_txt` varchar(32) DEFAULT NULL COMMENT '参数文本',
  `param_value` varchar(32) DEFAULT NULL COMMENT '参数默认值',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(50) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  KEY `idx_cgrheadid` (`cgrhead_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of onl_cgreport_param
-- ----------------------------
INSERT INTO `onl_cgreport_param` VALUES ('402881f36402f3de016403035d350010', '402880e64eb9a22c014eb9a4d5890001', 'usekey', 'usekey', '', '0', 'admin', '2018-06-15 18:35:09', null, null);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('quartzScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `TRIGGER_NAME` `TRIGGE';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='InnoDB free: 504832 kB; (`SCHED_NAME` `JOB_NAME` `JOB_GROUP`';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_announcement
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement`;
CREATE TABLE `sys_announcement` (
  `id` varchar(32) NOT NULL,
  `titile` varchar(100) DEFAULT NULL COMMENT '标题',
  `msg_content` text COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_type` varchar(10) DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '撤销时间',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text COMMENT '指定用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统通告表';

-- ----------------------------
-- Records of sys_announcement
-- ----------------------------
INSERT INTO `sys_announcement` VALUES ('1b714f8ebc3cc33f8b4f906103b6a18d', '5467567', null, null, null, 'admin', null, null, '1', '2019-03-30 12:40:38', null, '0', 'admin', '2019-02-26 17:23:26', 'admin', '2019-02-26 17:35:10', null);
INSERT INTO `sys_announcement` VALUES ('3d11237ccdf62450d20bb8abdb331178', '111222', null, null, null, null, null, null, '0', null, null, '1', 'admin', '2019-03-29 17:19:47', 'admin', '2019-03-29 17:19:50', null);
INSERT INTO `sys_announcement` VALUES ('7ef04e95f8de030b1d5f7a9144090dc6', '111', null, '2019-02-06 17:28:10', '2019-03-08 17:28:11', null, null, null, '0', null, null, '1', 'admin', '2019-02-26 17:28:17', 'admin', '2019-03-26 19:59:49', null);
INSERT INTO `sys_announcement` VALUES ('93a9060a1c20e4bf98b3f768a02c2ff9', '111', '111', '2019-02-06 17:20:17', '2019-02-21 17:20:20', 'admin', 'M', 'ALL', '1', '2019-02-26 17:24:29', null, '0', 'admin', '2019-02-26 17:16:26', 'admin', '2019-02-26 17:19:35', null);
INSERT INTO `sys_announcement` VALUES ('de1dc57f31037079e1e55c8347fe6ef7', '222', '2222', '2019-02-06 17:28:26', '2019-02-23 17:28:28', 'admin', 'M', 'ALL', '1', '2019-03-29 17:19:56', null, '1', 'admin', '2019-02-26 17:28:36', 'admin', '2019-02-26 17:28:40', null);
INSERT INTO `sys_announcement` VALUES ('e52f3eb6215f139cb2224c52517af3bd', '334', '334', null, null, null, null, null, '0', null, null, '1', 'admin', '2019-03-30 12:40:28', 'admin', '2019-03-30 12:40:32', null);

-- ----------------------------
-- Table structure for sys_announcement_send
-- ----------------------------
DROP TABLE IF EXISTS `sys_announcement_send`;
CREATE TABLE `sys_announcement_send` (
  `id` varchar(32) DEFAULT NULL,
  `annt_id` varchar(32) DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通告阅读标记表';

-- ----------------------------
-- Records of sys_announcement_send
-- ----------------------------

-- ----------------------------
-- Table structure for sys_data_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_log`;
CREATE TABLE `sys_data_log` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `data_table` varchar(32) DEFAULT NULL COMMENT '表名',
  `data_id` varchar(32) DEFAULT NULL COMMENT '数据ID',
  `data_content` text COMMENT '数据内容',
  `data_version` int(11) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`id`),
  KEY `sindex` (`data_table`,`data_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_data_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_depart`;
CREATE TABLE `sys_depart` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父机构ID',
  `depart_name` varchar(100) NOT NULL COMMENT '机构/部门名称',
  `depart_name_en` varchar(500) DEFAULT NULL COMMENT '英文名',
  `depart_name_abbr` varchar(500) DEFAULT NULL COMMENT '缩写',
  `depart_order` int(11) DEFAULT '0' COMMENT '排序',
  `description` text COMMENT '描述',
  `org_type` varchar(10) DEFAULT NULL COMMENT '机构类型',
  `org_code` varchar(64) NOT NULL COMMENT '机构编码',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `fax` varchar(32) DEFAULT NULL COMMENT '传真',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT NULL COMMENT '状1：有效2：失效',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `company_property` varchar(10) DEFAULT '1' COMMENT '单位性质1私营企业2国有企业',
  `legal_person` varchar(20) DEFAULT NULL COMMENT '法人',
  `zip_code` varchar(50) DEFAULT NULL COMMENT '邮政编码',
  `industry` varchar(50) DEFAULT NULL COMMENT '所属行业',
  `contact_person` varchar(100) DEFAULT NULL COMMENT '联系人',
  `qrcode_switch` varchar(2) DEFAULT '1' COMMENT '二维码开关1:关闭2：开启',
  PRIMARY KEY (`id`),
  KEY `index_depart_parent_id` (`parent_id`) USING BTREE,
  KEY `index_depart_depart_order` (`depart_order`) USING BTREE,
  KEY `index_depart_org_code` (`org_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构表';

-- ----------------------------
-- Records of sys_depart
-- ----------------------------
INSERT INTO `sys_depart` VALUES ('4f2e5f2fd22b4289a0e21d00943cc3b1', '', '浙江威能消防器材股份有限公司', null, null, '0', null, '1', 'asdasdasd', '15222222222', null, '嘉兴市sfsg', null, '1', '0', 'admin', '2019-05-24 15:28:05', 'admin', '2019-05-28 15:26:48', '1', 'aa', 'adasd', 'sfdf', 'aa', '1');
INSERT INTO `sys_depart` VALUES ('56896baf86b149ea93af4db634d461af', '', '中法金属表面处理有限公司', null, null, '0', null, '1', 'A03', '15222222222', null, '嘉兴市fgh', null, '1', '0', 'admin', '2019-05-24 15:24:19', 'admin', '2019-05-24 15:28:48', '1', 'cf', 'a', 'dgdf', 'cf', '1');
INSERT INTO `sys_depart` VALUES ('6516c1bdb57b437b8b43ed24cd7fb454', '', '浙江秀舟纸业有限公司', null, null, '0', null, '1', 'A02', '15222222222', null, '嘉兴市', null, '1', '0', 'admin', '2019-05-24 15:23:51', 'admin', '2019-05-24 15:28:52', '1', 'fg', 'a', 'ss', 'fg', '1');
INSERT INTO `sys_depart` VALUES ('70b6ad3d70bd48ac8a16f7c0fd830fca', '', '嘉兴市华梦毛纺织有限责任公司', null, null, '0', null, '1', 'A01', 's', null, 's', null, '1', '0', 'admin', '2019-05-24 15:23:18', 'admin', '2019-05-24 15:28:57', '1', 'fhg', 'a', 's', 'ghg', '1');
INSERT INTO `sys_depart` VALUES ('714e7dd9e80b4d329756cef9dee19b6f', '', '李奇公司', null, null, '0', null, '1', 'A08', '15222222222', null, '阿萨大', null, '2', '0', 'admin', '2019-05-28 13:42:06', 'admin', '2019-05-28 15:31:08', '1', 'ss', 'as23435435', '阿萨大', 'dfg', '1');
INSERT INTO `sys_depart` VALUES ('fbdc823bd5ed440eba1dba52bf3df363', '', '港安', null, null, '0', null, '1', 'asdas', '15222222222', null, '嘉兴市港安', null, '1', '0', 'admin', '2019-05-24 15:30:00', 'admin', '2019-05-28 15:26:39', '1', 'dd', 'a', 'sdf', 'sdf', '1');
INSERT INTO `sys_depart` VALUES ('fe50774f77b84112867cb7c273b75ac9', '', '嘉兴市嘉禾明秀纺织有限公司', null, null, '0', null, '1', 'A04', '15222222222', null, '嘉兴市rrt', null, '1', '0', 'admin', '2019-05-24 15:25:33', 'admin', '2019-05-24 15:29:02', '1', 'fff', 'a', 'jhj', 'fff', '1');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL,
  `dict_name` varchar(100) DEFAULT NULL COMMENT '字典名称',
  `dict_code` varchar(100) DEFAULT NULL COMMENT '字典编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(1) unsigned zerofill DEFAULT '0' COMMENT '字典类型0为string,1为number',
  PRIMARY KEY (`id`),
  UNIQUE KEY `indextable_dict_code` (`dict_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('093386673077b724d86ccf3c77a725ff', '单位性质', 'company_property', '单位性质', '1', 'admin', '2021-04-14 20:28:15', 'admin', '2019-05-14 20:31:05', '0');
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '推送类别', 'msg_type', '', '1', 'admin', '2019-03-17 21:21:32', 'admin', '2019-03-26 19:57:45', '0');
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'del_flag', null, '1', 'admin', '2019-01-18 21:46:26', 'admin', '2019-03-30 11:17:11', '0');
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'sex', null, '1', null, '2019-01-04 14:56:32', 'admin', '2019-03-30 11:28:27', '1');
INSERT INTO `sys_dict` VALUES ('404a04a15f371566c658ee9ef9fc392a', 'cehis2', '22', null, '2', 'admin', '2019-01-30 11:17:21', 'admin', '2019-03-30 11:18:12', '0');
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'dict_item_status', null, '1', 'admin', '2020-06-18 23:18:42', 'admin', '2019-03-30 19:33:52', '1');
INSERT INTO `sys_dict` VALUES ('4e4602b3e3686f0911384e188dc7efb4', '条件规则', 'rule_conditions', '', '1', 'admin', '2019-04-01 10:15:03', 'admin', '2019-04-01 10:30:47', '0');
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '发送消息类型', 'msgType', null, '1', 'admin', '2019-04-11 14:27:09', null, null, '0');
INSERT INTO `sys_dict` VALUES ('6b78e3f59faec1a4750acff08030a79b', '用户类型', 'user_type', null, '2', null, '2019-01-04 14:59:01', 'admin', '2019-03-18 23:28:18', '0');
INSERT INTO `sys_dict` VALUES ('6c6b1e6a063bf428ce5303f3a50ec25c', '状态', 'business_status', '业务状态', '1', 'admin', '2019-05-14 20:24:55', null, null, '0');
INSERT INTO `sys_dict` VALUES ('6f5e02a7b7480afbd37175fbf58c23b8', '设备检验结果', 'check_result', '设备检验结果', '1', 'admin', '2022-07-16 16:43:38', 'admin', '2019-05-17 10:51:02', '0');
INSERT INTO `sys_dict` VALUES ('72cce0989df68887546746d8f09811aa', 'Online表单类型', 'cgform_table_type', '', '1', 'admin', '2019-01-27 10:13:02', 'admin', '2019-03-30 11:37:36', '0');
INSERT INTO `sys_dict` VALUES ('737be06cd9e9df2477eb0718229c9c09', '使用状态', 'use_status', '使用状态', '1', 'admin', '2023-08-14 20:32:35', 'admin', '2019-05-17 10:53:38', '0');
INSERT INTO `sys_dict` VALUES ('83bfb33147013cc81640d5fd9eda030c', '日志类型', 'log_type', null, '1', 'admin', '2019-03-18 23:22:19', null, null, '1');
INSERT INTO `sys_dict` VALUES ('845da5006c97754728bf48b6a10f79cc', '状态', 'status', null, '2', 'admin', '2019-03-18 21:45:25', 'admin', '2019-03-18 21:58:25', '0');
INSERT INTO `sys_dict` VALUES ('9a4d48c11788e0e1e5d4bf16a3ecce2f', '二维码开关', 'qrcode_switch', '二维码开关', '1', 'admin', '2019-05-14 20:30:41', null, null, '0');
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'msgSendStatus', null, '1', 'admin', '2019-04-12 18:18:17', null, null, '0');
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'menu_type', null, '1', 'admin', '2020-12-18 23:24:32', 'admin', '2019-04-01 15:27:06', '1');
INSERT INTO `sys_dict` VALUES ('ad7c65ba97c20a6805d5dcdf13cdaf36', 'onlineT类型', 'ceshi_online', null, '2', 'admin', '2019-03-22 16:31:49', 'admin', '2019-03-22 16:34:16', '0');
INSERT INTO `sys_dict` VALUES ('c36169beb12de8a71c8683ee7c28a503', '部门状态', 'depart_status', null, '1', 'admin', '2019-03-18 21:59:51', null, null, '0');
INSERT INTO `sys_dict` VALUES ('d6e1152968b02d69ff358c75b48a6ee1', '流程类型', 'bpm_process_type', null, '1', 'admin', '2021-02-22 19:26:54', 'admin', '2019-03-30 18:14:44', '0');
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'user_status', null, '1', 'admin', '2019-03-18 21:57:25', 'admin', '2019-03-18 23:11:58', '1');

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item` (
  `id` varchar(32) NOT NULL,
  `dict_id` varchar(32) DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(100) DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(100) DEFAULT NULL COMMENT '字典项值',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort_order` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态（1启用 0不启用）',
  `create_by` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_table_dict_id` (`dict_id`) USING BTREE,
  KEY `index_table_sort_order` (`sort_order`) USING BTREE,
  KEY `index_table_dict_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', null, null, '1', 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('073f6ddce82f088c8be6643eaafc7f4e', '093386673077b724d86ccf3c77a725ff', '公司合作企业', '3', null, '3', '1', 'admin', '2019-05-23 13:11:56', null, null);
INSERT INTO `sys_dict_item` VALUES ('0be9c9cb7bfca62ef0bf0477627809bf', '093386673077b724d86ccf3c77a725ff', '中外合资企业', '4', null, '4', '1', 'admin', '2019-05-23 13:12:05', null, null);
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', null, null, '1', 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('0ca4beba9efc4f9dd54af0911a946d5c', '72cce0989df68887546746d8f09811aa', '附表', '3', null, '3', '1', 'admin', '2019-03-27 10:13:43', null, null);
INSERT INTO `sys_dict_item` VALUES ('147c48ff4b51545032a9119d13f3222a', 'd6e1152968b02d69ff358c75b48a6ee1', '测试流程', 'test', null, '1', '1', 'admin', '2019-03-22 19:27:05', null, null);
INSERT INTO `sys_dict_item` VALUES ('18ce45e8997499c24ef1eb001280dd1c', '093386673077b724d86ccf3c77a725ff', '国家行政企业', '2', null, '2', '1', 'admin', '2023-04-14 20:28:43', 'admin', '2019-05-23 13:11:42');
INSERT INTO `sys_dict_item` VALUES ('1b8a6341163062dad8cb2fddd34e0c3b', '404a04a15f371566c658ee9ef9fc392a', '22', '222', null, '1', '1', 'admin', '2019-03-30 11:17:48', null, null);
INSERT INTO `sys_dict_item` VALUES ('1ce390c52453891f93514c1bd2795d44', 'ad7c65ba97c20a6805d5dcdf13cdaf36', '000', '00', null, '1', '1', 'admin', '2019-03-22 16:34:34', null, null);
INSERT INTO `sys_dict_item` VALUES ('23a5bb76004ed0e39414e928c4cde155', '4e4602b3e3686f0911384e188dc7efb4', '不等于', '!=', '不等于', '3', '1', 'admin', '2019-04-01 16:46:15', 'admin', '2019-04-01 17:48:40');
INSERT INTO `sys_dict_item` VALUES ('25847e9cb661a7c711f9998452dc09e6', '4e4602b3e3686f0911384e188dc7efb4', '小于等于', '<=', '小于等于', '6', '1', 'admin', '2019-04-01 16:44:34', 'admin', '2019-04-01 17:49:10');
INSERT INTO `sys_dict_item` VALUES ('2c2768714db44953ee40c51edee082a6', '093386673077b724d86ccf3c77a725ff', '国防军事企业', '8', null, '8', '1', 'admin', '2019-05-23 13:12:46', null, null);
INSERT INTO `sys_dict_item` VALUES ('2daf9c5ff14179011b29a60e2573fbfe', '093386673077b724d86ccf3c77a725ff', '国家组织机构', '6', null, '6', '1', 'admin', '2019-05-23 13:12:24', null, null);
INSERT INTO `sys_dict_item` VALUES ('31d99b60cb86fed764d13daa37a62cd5', '737be06cd9e9df2477eb0718229c9c09', '已淘汰', '3', null, '3', '1', 'admin', '2025-09-14 20:33:45', 'admin', '2019-05-25 22:29:00');
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', null, '3', '1', 'admin', '2019-04-12 18:20:02', null, null);
INSERT INTO `sys_dict_item` VALUES ('36f70ebac06dcfd74ce3a83f672821e6', '093386673077b724d86ccf3c77a725ff', '私营企业', '1', null, '1', '1', 'admin', '2021-04-14 20:28:30', 'admin', '2019-05-14 20:28:54');
INSERT INTO `sys_dict_item` VALUES ('41fa1e9571505d643aea87aeb83d4d76', '4e4602b3e3686f0911384e188dc7efb4', '等于', '=', '等于', '4', '1', 'admin', '2019-04-01 16:45:24', 'admin', '2019-04-01 17:49:00');
INSERT INTO `sys_dict_item` VALUES ('43d2295b8610adce9510ff196a49c6e9', '845da5006c97754728bf48b6a10f79cc', '正常', '1', null, null, '1', 'admin', '2019-03-18 21:45:51', null, null);
INSERT INTO `sys_dict_item` VALUES ('4f05fb5376f4c61502c5105f52e4dd2b', '83bfb33147013cc81640d5fd9eda030c', '操作日志', '2', null, null, '1', 'admin', '2019-03-18 23:22:49', null, null);
INSERT INTO `sys_dict_item` VALUES ('50223341bfb5ba30bf6319789d8d17fe', 'd6e1152968b02d69ff358c75b48a6ee1', '业务办理', 'business', null, '3', '1', 'admin', '2023-04-22 19:28:05', 'admin', '2019-03-22 23:24:39');
INSERT INTO `sys_dict_item` VALUES ('5584c21993bde231bbde2b966f2633ac', '4e4602b3e3686f0911384e188dc7efb4', '自定义SQL表达式', 'USE_SQL_RULES', '自定义SQL表达式', '9', '1', 'admin', '2019-04-01 10:45:24', 'admin', '2019-04-01 17:49:27');
INSERT INTO `sys_dict_item` VALUES ('58b73b344305c99b9d8db0fc056bbc0a', '72cce0989df68887546746d8f09811aa', '主表', '2', null, '2', '1', 'admin', '2019-03-27 10:13:36', null, null);
INSERT INTO `sys_dict_item` VALUES ('59e13a1d44089cc12d84b83dd3b04bd7', '737be06cd9e9df2477eb0718229c9c09', '使用中', '2', null, '2', '1', 'admin', '2019-05-14 20:33:24', null, null);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', null, null, '1', 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', null, '2', '1', null, '2019-01-04 14:56:56', null, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('62ed0c94ac26cad4766c798c42d7f0fa', '6f5e02a7b7480afbd37175fbf58c23b8', '不合格', '2', null, '2', '1', 'admin', '2022-08-16 16:44:19', 'admin', '2019-05-16 16:46:03');
INSERT INTO `sys_dict_item` VALUES ('66c952ae2c3701a993e7db58f3baf55e', '4e4602b3e3686f0911384e188dc7efb4', '大于', '>', '大于', '1', '1', 'admin', '2019-04-01 10:45:46', 'admin', '2019-04-01 17:48:29');
INSERT INTO `sys_dict_item` VALUES ('6937c5dde8f92e9a00d4e2ded9198694', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'easyui', '3', null, '1', '1', 'admin', '2019-03-22 16:32:15', null, null);
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', null, '1', '1', 'admin', '2019-04-12 18:19:23', null, null);
INSERT INTO `sys_dict_item` VALUES ('6bc428d96a019fcefd98f7159cf96b58', '6c6b1e6a063bf428ce5303f3a50ec25c', '有效', '1', '业务状态', '1', '1', 'admin', '2019-05-14 20:25:26', null, null);
INSERT INTO `sys_dict_item` VALUES ('6c682d78ddf1715baf79a1d52d2aa8c2', '72cce0989df68887546746d8f09811aa', '单表', '1', null, '1', '1', 'admin', '2019-03-27 10:13:29', null, null);
INSERT INTO `sys_dict_item` VALUES ('6d404fd2d82311fbc87722cd302a28bc', '4e4602b3e3686f0911384e188dc7efb4', '模糊', 'LIKE', '模糊', '7', '1', 'admin', '2019-04-01 16:46:02', 'admin', '2019-04-01 17:49:20');
INSERT INTO `sys_dict_item` VALUES ('700e9f030654f3f90e9ba76ab0713551', '6b78e3f59faec1a4750acff08030a79b', '333', '333', null, null, '1', 'admin', '2019-02-21 19:59:47', null, null);
INSERT INTO `sys_dict_item` VALUES ('71b924faa93805c5c1579f12e001c809', 'd6e1152968b02d69ff358c75b48a6ee1', 'OA办公', 'oa', null, '2', '1', 'admin', '2021-03-22 19:27:17', 'admin', '2019-03-22 23:24:36');
INSERT INTO `sys_dict_item` VALUES ('75b260d7db45a39fc7f21badeabdb0ed', 'c36169beb12de8a71c8683ee7c28a503', '不启用', '0', null, null, '1', 'admin', '2019-03-18 23:29:41', 'admin', '2019-03-18 23:29:54');
INSERT INTO `sys_dict_item` VALUES ('7688469db4a3eba61e6e35578dc7c2e5', 'c36169beb12de8a71c8683ee7c28a503', '启用', '1', null, null, '1', 'admin', '2019-03-18 23:29:28', null, null);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', null, null, '1', 'admin', '2019-03-18 23:30:28', null, null);
INSERT INTO `sys_dict_item` VALUES ('7a924ecff4c24d2f99199fba91a7824f', '737be06cd9e9df2477eb0718229c9c09', '未使用', '1', null, '1', '1', 'admin', '2019-05-14 20:33:04', null, null);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', null, null, '1', 'admin', '2019-03-18 23:25:40', null, null);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', null, null, '1', 'admin', '2019-03-18 23:30:37', null, null);
INSERT INTO `sys_dict_item` VALUES ('84778d7e928bc843ad4756db1322301f', '4e4602b3e3686f0911384e188dc7efb4', '大于等于', '>=', '大于等于', '5', '1', 'admin', '2019-04-01 10:46:02', 'admin', '2019-04-01 17:49:05');
INSERT INTO `sys_dict_item` VALUES ('85913b0b251e4754390ae09cb03078bd', '093386673077b724d86ccf3c77a725ff', '社会组织机构', '5', null, '5', '1', 'admin', '2019-12-23 13:12:14', 'admin', '2019-05-23 16:25:52');
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', null, null, '1', 'admin', '2019-03-18 23:25:27', null, null);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', null, '3', '1', 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', null, '0', '0', 'admin', '2019-03-18 23:19:27', 'admin', '2019-03-20 09:33:30');
INSERT INTO `sys_dict_item` VALUES ('8c95fe7b550d77c92b178d3da83e2712', '6f5e02a7b7480afbd37175fbf58c23b8', '合格', '1', null, '1', '1', 'admin', '2019-05-16 16:44:11', null, null);
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '不启用', '0', null, '1', '1', 'admin', '2019-03-18 23:19:53', null, null);
INSERT INTO `sys_dict_item` VALUES ('a2321496db6febc956a6c70fab94cb0c', '404a04a15f371566c658ee9ef9fc392a', '3', '3', null, '1', '1', 'admin', '2019-03-30 11:18:18', null, null);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', null, null, '1', 'admin', '2019-03-18 23:24:52', null, null);
INSERT INTO `sys_dict_item` VALUES ('adcf2a1fe93bb99a84833043f475fe0b', '4e4602b3e3686f0911384e188dc7efb4', '包含', 'IN', '包含', '8', '1', 'admin', '2019-04-01 16:45:47', 'admin', '2019-04-01 17:49:24');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', null, null, '1', 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('b4a887dc3ff01d2daadaa412e63189ed', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', null, '2', '1', 'admin', '2021-05-11 14:29:03', 'admin', '2019-04-11 14:29:25');
INSERT INTO `sys_dict_item` VALUES ('b57f98b88363188daf38d42f25991956', '6b78e3f59faec1a4750acff08030a79b', '22', '222', null, null, '0', 'admin', '2019-02-21 19:59:43', 'admin', '2019-03-11 21:23:27');
INSERT INTO `sys_dict_item` VALUES ('b69be7f85d849d1c7460da6ef484d078', '6c6b1e6a063bf428ce5303f3a50ec25c', '无效', '2', null, '2', '1', 'admin', '2019-05-14 20:26:18', null, null);
INSERT INTO `sys_dict_item` VALUES ('c7dccf9ad3cd151fe7f389e1f293f34b', '093386673077b724d86ccf3c77a725ff', '集体企业', '7', null, '7', '1', 'admin', '2019-05-23 13:12:36', null, null);
INSERT INTO `sys_dict_item` VALUES ('d75b5b3666d0742f08027af0255b4400', '4f69be5f507accea8d5df5f11346181a', '短信', '1', null, '1', '1', 'admin', '2019-04-11 14:28:49', null, null);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', null, '1', '1', null, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO `sys_dict_item` VALUES ('e6329e3a66a003819e2eb830b0ca2ea0', '4e4602b3e3686f0911384e188dc7efb4', '小于', '<', '小于', '2', '1', 'admin', '2019-04-01 16:44:15', 'admin', '2019-04-01 17:48:34');
INSERT INTO `sys_dict_item` VALUES ('f0162f4cc572c9273f3e26b2b4d8c082', 'ad7c65ba97c20a6805d5dcdf13cdaf36', 'booostrap', '1', null, '1', '1', 'admin', '2021-08-22 16:32:04', 'admin', '2019-03-22 16:33:57');
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', null, '2', '1', 'admin', '2019-04-12 18:19:43', null, null);
INSERT INTO `sys_dict_item` VALUES ('f2a7920421f3335afdf6ad2b342f6b5d', '845da5006c97754728bf48b6a10f79cc', '冻结', '2', null, null, '1', 'admin', '2019-03-18 21:46:02', null, null);
INSERT INTO `sys_dict_item` VALUES ('f37f90c496ec9841c4c326b065e00bb2', '83bfb33147013cc81640d5fd9eda030c', '登录日志', '1', null, null, '1', 'admin', '2019-03-18 23:22:37', null, null);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(32) NOT NULL,
  `log_type` int(2) DEFAULT NULL COMMENT '日志类型（1登录日志，2操作日志）',
  `log_content` varchar(1000) DEFAULT NULL COMMENT '日志内容',
  `operate_type` int(2) DEFAULT NULL COMMENT '操作类型',
  `userid` varchar(32) DEFAULT NULL COMMENT '操作用户账号',
  `username` varchar(100) DEFAULT NULL COMMENT '操作用户名称',
  `ip` varchar(100) DEFAULT NULL COMMENT 'IP',
  `method` varchar(500) DEFAULT NULL COMMENT '请求java方法',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `request_param` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `request_type` varchar(10) DEFAULT NULL COMMENT '请求类型',
  `cost_time` bigint(20) DEFAULT NULL COMMENT '耗时',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `index_table_userid` (`userid`) USING BTREE,
  KEY `index_logt_ype` (`log_type`) USING BTREE,
  KEY `index_operate_type` (`operate_type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('db4f966c643a38592494f324b610a3f8', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 13:28:48', null, null);
INSERT INTO `sys_log` VALUES ('57c361a87c8ff371f2e1f9b4af84d152', '1', '用户名: admin,登录成功！', null, null, null, '192.168.43.44', null, null, null, null, null, 'jeecg-boot', '2019-05-27 13:52:07', null, null);
INSERT INTO `sys_log` VALUES ('bb73e47061163fb0a29208adcd769878', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:33:52', null, null);
INSERT INTO `sys_log` VALUES ('3dd9b6d1e572f855976e50a037459f11', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:35:44', null, null);
INSERT INTO `sys_log` VALUES ('64a58cc40446a70d25fc64572e35e95f', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:35:46', null, null);
INSERT INTO `sys_log` VALUES ('96a3f151f30d75a73205dd12d941440a', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:40:05', null, null);
INSERT INTO `sys_log` VALUES ('897bf2eeb9277657d0838def6d5b8286', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:46:52', null, null);
INSERT INTO `sys_log` VALUES ('216c5dda984cdc00095af94deedcc544', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:50:31', null, null);
INSERT INTO `sys_log` VALUES ('ee265de12c1ca979afa88123839c8ce8', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-27 14:52:18', null, null);
INSERT INTO `sys_log` VALUES ('41352c0b36d4a0fefc1c96ca39af4f89', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:52:21', null, null);
INSERT INTO `sys_log` VALUES ('b79a1f1b0ef5ec712f8cd13ecacfd479', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-27 14:52:46', null, null);
INSERT INTO `sys_log` VALUES ('d394a5377721213215044f185129227d', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:52:59', null, null);
INSERT INTO `sys_log` VALUES ('ab2011a7d321d665869db3e2810b8fbd', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 14:56:40', null, null);
INSERT INTO `sys_log` VALUES ('5070c37581e856cc9ac3d55f2f8147d1', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:00:05', null, null);
INSERT INTO `sys_log` VALUES ('12d36f954462c01b34c1f810f4d10751', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:05:39', null, null);
INSERT INTO `sys_log` VALUES ('cf8fe13a491f04d2f3fb924e1b3a7174', '1', '用户名: admin,登录成功！', null, null, null, '119.84.107.50', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:11:08', null, null);
INSERT INTO `sys_log` VALUES ('767eaccc7874047d4d3e065ae35798cd', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:17:25', null, null);
INSERT INTO `sys_log` VALUES ('21a2f3187c7bb9c64bf9f5a2d029ebb7', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-27 15:20:17', null, null);
INSERT INTO `sys_log` VALUES ('327372208ba28b6df3820815519be5d7', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:20:19', null, null);
INSERT INTO `sys_log` VALUES ('833a1d6c829c0e0040605d4f1105c1d6', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:20:27', null, null);
INSERT INTO `sys_log` VALUES ('2da736903d367260c27960a210413bfc', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:22:32', null, null);
INSERT INTO `sys_log` VALUES ('2c2a36472abfa67265c8513f3fafce26', '1', '用户名: admin,登录成功！', null, null, null, '119.84.107.50', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:25:54', null, null);
INSERT INTO `sys_log` VALUES ('f61a3bec98fbab540c638c8791c99010', '1', '用户名: admin,登录成功！', null, null, null, '192.168.43.44', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:43:54', null, null);
INSERT INTO `sys_log` VALUES ('91c3bca4b1413040aa658cc3f22fdc9c', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 15:48:45', null, null);
INSERT INTO `sys_log` VALUES ('d558427bed9c1fc8b237ae17760a47fb', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:09:39', null, null);
INSERT INTO `sys_log` VALUES ('995739521ce7acc34fa31307d208e0f6', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:14:04', null, null);
INSERT INTO `sys_log` VALUES ('2cd878564679445272213cc258f9e66a', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:16:58', null, null);
INSERT INTO `sys_log` VALUES ('1430fdb106050d41bc7b835df275e0aa', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:21:51', null, null);
INSERT INTO `sys_log` VALUES ('c54202631d3487a6c9a819fd49b36f8d', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:22:28', null, null);
INSERT INTO `sys_log` VALUES ('601fbf78239754b895b77b973b9d170e', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:23:07', null, null);
INSERT INTO `sys_log` VALUES ('a5f5a6d3f960d3d3dd804c5465332d6a', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:24:50', null, null);
INSERT INTO `sys_log` VALUES ('74c8edd1b28fe4a4dc4a3881297d860d', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:25:59', null, null);
INSERT INTO `sys_log` VALUES ('e664ff1c3018867bf856983123c1ef45', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:26:11', null, null);
INSERT INTO `sys_log` VALUES ('48ed8caeb0a59d5e62b17a8e1c416458', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:26:15', null, null);
INSERT INTO `sys_log` VALUES ('0d98d48882991200c76c924a39c6d275', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:27:28', null, null);
INSERT INTO `sys_log` VALUES ('7d9e6899d8e291e256ce0a0d49a0a736', '1', '登录失败，用户名:null不存在！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:28:59', null, null);
INSERT INTO `sys_log` VALUES ('4b063f6ea24976b12aa5890a2af77fcd', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:29:06', null, null);
INSERT INTO `sys_log` VALUES ('d86e9b280b32b6af9b4bcdec2158def1', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:30:58', null, null);
INSERT INTO `sys_log` VALUES ('818e2a0aaf66483d3ef09a899f22b5ae', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:31:24', null, null);
INSERT INTO `sys_log` VALUES ('d564ba5a69ce147972f6197feddabd21', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:37:32', null, null);
INSERT INTO `sys_log` VALUES ('60a18cfb4b684fe640bb52e21015bd20', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:37:57', null, null);
INSERT INTO `sys_log` VALUES ('cf1907eaee96e0db7dae2215758ab0f0', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:38:52', null, null);
INSERT INTO `sys_log` VALUES ('a69246a3ecef5eaf1207067bd631fcc7', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:39:25', null, null);
INSERT INTO `sys_log` VALUES ('ae97daa1a7e68e3356249241103f8c1b', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:40:20', null, null);
INSERT INTO `sys_log` VALUES ('133eaa22c1240fac22e8b9a5e966fed4', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:40:31', null, null);
INSERT INTO `sys_log` VALUES ('29978e780a0b01882c6df2ee9f6a6b0a', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:45:25', null, null);
INSERT INTO `sys_log` VALUES ('cf65be44c19a4ea59420b21d18e7bb6d', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-27 16:59:36', null, null);
INSERT INTO `sys_log` VALUES ('64da9b8d52a5cfa136913a521e75e953', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-27 17:17:35', null, null);
INSERT INTO `sys_log` VALUES ('8d180fba4f856e65c3c7f5257a7852ca', '1', '用户名: admin,登录成功！', null, null, null, '192.168.199.121', null, null, null, null, null, 'jeecg-boot', '2019-05-27 21:35:12', null, null);
INSERT INTO `sys_log` VALUES ('2114f9178c0754e556f7563083dc636c', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:11:15', null, null);
INSERT INTO `sys_log` VALUES ('b217e9ea0fa9b875677e96fa46b73fab', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:15:31', null, null);
INSERT INTO `sys_log` VALUES ('a12ba414a27b0aa2d87dc7d1b6c62c73', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:28:43', null, null);
INSERT INTO `sys_log` VALUES ('942ed260f7f43a205fb488402620f8a7', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 09:57:00', null, null);
INSERT INTO `sys_log` VALUES ('394bd83685aacd0ead22cc33855fe269', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:57:28', null, null);
INSERT INTO `sys_log` VALUES ('ebd75b0049090e18c05478d7dc0de8ce', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 09:58:12', null, null);
INSERT INTO `sys_log` VALUES ('c7fb8c4188daf81b8ff5314faedeec2f', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:58:17', null, null);
INSERT INTO `sys_log` VALUES ('4d85f5af8d65accf4f143919e6ddcbb4', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 09:59:03', null, null);
INSERT INTO `sys_log` VALUES ('dac4874bd50a503078769d1daa429287', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:59:22', null, null);
INSERT INTO `sys_log` VALUES ('2d64f7956f03af428024e77bdaf7ee79', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 09:59:34', null, null);
INSERT INTO `sys_log` VALUES ('a83cfc03ba2d4924993bb4aa871678b2', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 09:59:40', null, null);
INSERT INTO `sys_log` VALUES ('a1a6028a9034afaf375fe8b4f00c32ac', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 10:00:12', null, null);
INSERT INTO `sys_log` VALUES ('cf1fc8115dc4cace7e2f9474b81e5a85', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:00:20', null, null);
INSERT INTO `sys_log` VALUES ('ad7047caf80864730ec9da395217e0e1', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 10:02:47', null, null);
INSERT INTO `sys_log` VALUES ('4dffddce870c3f25b0cdc9b0c1d15bd2', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:03:06', null, null);
INSERT INTO `sys_log` VALUES ('67555f1801f7b68d3fa9128a512106d3', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 10:13:27', null, null);
INSERT INTO `sys_log` VALUES ('484f121df93ad12620a487d8f6475dba', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:13:30', null, null);
INSERT INTO `sys_log` VALUES ('c396a16a47abd379e90ec2948162d8cd', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 10:20:55', null, null);
INSERT INTO `sys_log` VALUES ('9a2a2a8420206b18ff37a0c2a8191d80', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:23:58', null, null);
INSERT INTO `sys_log` VALUES ('79c23276169102aa2214750db10afa55', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 10:26:02', null, null);
INSERT INTO `sys_log` VALUES ('4e94f423f15dfcdb1e8028231060378a', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:26:09', null, null);
INSERT INTO `sys_log` VALUES ('2fe67509696454786ee56f719854e418', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:33:52', null, null);
INSERT INTO `sys_log` VALUES ('bfdb45ca9c66756b44558fdbbb649349', '1', '用户名: qyyh,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:50:08', null, null);
INSERT INTO `sys_log` VALUES ('c6d1bb5e63960e077492a6ebd1e9bcba', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:51:03', null, null);
INSERT INTO `sys_log` VALUES ('7eeaaff84f5719ac2bd3342e2b47c797', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '192.168.8.118', null, null, null, null, null, 'qyyh', '2019-05-28 10:51:27', null, null);
INSERT INTO `sys_log` VALUES ('68d1bd1f50a50ebfb7adf3372170a2ef', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:51:34', null, null);
INSERT INTO `sys_log` VALUES ('01adaec0e0b9474c473d0165d8968100', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:51:35', null, null);
INSERT INTO `sys_log` VALUES ('aa0f55171d31e1377951b1fda64dc00a', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 10:53:34', null, null);
INSERT INTO `sys_log` VALUES ('bf65a49e0f0ae9697098e2ed50d57ba7', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:53:42', null, null);
INSERT INTO `sys_log` VALUES ('ecced2bab44c1492f8546bee3aee87d3', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:54:48', null, null);
INSERT INTO `sys_log` VALUES ('d9581ee1937ad1670906afcba811a3b6', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 10:59:09', null, null);
INSERT INTO `sys_log` VALUES ('46d6a9a85499ba005b3559d71df32f7b', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:02:50', null, null);
INSERT INTO `sys_log` VALUES ('c4aba824804497f7ff751c02aaf7640a', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:06:42', null, null);
INSERT INTO `sys_log` VALUES ('c747433edbd8c7f351ffcbc85d4a8658', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:07:59', null, null);
INSERT INTO `sys_log` VALUES ('177a9ee4d24913383a18168f1489808f', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:13:46', null, null);
INSERT INTO `sys_log` VALUES ('268fb8003f19cd47c4439b8f3241874b', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:18:42', null, null);
INSERT INTO `sys_log` VALUES ('4cd3cc8016ab9a4454581f673d1fa21a', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:21:52', null, null);
INSERT INTO `sys_log` VALUES ('92c05cb1f779b8486fb43cddf76a7e03', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:25:17', null, null);
INSERT INTO `sys_log` VALUES ('d321384ecff5343d8326bd72f7481898', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:28:51', null, null);
INSERT INTO `sys_log` VALUES ('3b9c77da92cf1351f6c98390ee3e3bcc', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:29:54', null, null);
INSERT INTO `sys_log` VALUES ('0f18b9c017a2f13a0e7960e74d4f8f56', '1', '用户名: admin,登录成功！', null, null, null, '0:0:0:0:0:0:0:1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 11:43:24', null, null);
INSERT INTO `sys_log` VALUES ('65fa499b690f963b02422345c36db44d', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 13:08:51', null, null);
INSERT INTO `sys_log` VALUES ('fe930580cc09a349d5e32f9b5fe594f1', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 13:17:37', null, null);
INSERT INTO `sys_log` VALUES ('12b81e9cbcb286a5f38d77c2b29ea186', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 13:52:29', null, null);
INSERT INTO `sys_log` VALUES ('436eb934fcef30f8ae30eaaa047392c4', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 14:15:22', null, null);
INSERT INTO `sys_log` VALUES ('cb6f3c8128752001a38267946046cd0d', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:15:32', null, null);
INSERT INTO `sys_log` VALUES ('7dc19e61b5b154ec80066bab3460be50', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 14:35:46', null, null);
INSERT INTO `sys_log` VALUES ('d4795008bae668b4f82976e415b3283a', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:35:55', null, null);
INSERT INTO `sys_log` VALUES ('3cc03dadf851fd6b4df8860d4bc53584', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 14:50:08', null, null);
INSERT INTO `sys_log` VALUES ('115f188ee7c52d115b1b2b30af7dd2bd', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:50:16', null, null);
INSERT INTO `sys_log` VALUES ('5c6047f01a27dec0d9f8f76d30a72537', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 14:50:25', null, null);
INSERT INTO `sys_log` VALUES ('059422ad11b8da1a192e9a0dcbb7b229', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:50:32', null, null);
INSERT INTO `sys_log` VALUES ('64d24e83914b4bf9b2b449255ac04d8f', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 14:51:33', null, null);
INSERT INTO `sys_log` VALUES ('b42972c8c6ff8661f799bd22e55d67d9', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:51:44', null, null);
INSERT INTO `sys_log` VALUES ('5f1a95df3a208c39f62f8d57dd538bc9', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:56:09', null, null);
INSERT INTO `sys_log` VALUES ('043277201ff03e299a5015b7677a97fe', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '192.168.8.118', null, null, null, null, null, 'admin', '2019-05-28 14:56:15', null, null);
INSERT INTO `sys_log` VALUES ('0743e84129845294e8bb85abf1b7f8eb', '1', '用户名: qyyh,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:56:27', null, null);
INSERT INTO `sys_log` VALUES ('e50272f25963e1a78e62d4b100729596', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:56:43', null, null);
INSERT INTO `sys_log` VALUES ('74c0532639ea3a0af72c972b4b2db17b', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '192.168.8.118', null, null, null, null, null, 'qyyh', '2019-05-28 14:57:33', null, null);
INSERT INTO `sys_log` VALUES ('8776165ca45fae54a1625783c310228f', '1', '用户名: qyyh,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 14:57:44', null, null);
INSERT INTO `sys_log` VALUES ('6809328ff55937a896e1e973d2fcca2b', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '192.168.8.118', null, null, null, null, null, 'qyyh', '2019-05-28 15:00:38', null, null);
INSERT INTO `sys_log` VALUES ('8e33e9e62668e8bd118e2a1f3437351e', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:00:44', null, null);
INSERT INTO `sys_log` VALUES ('cb9b1a68558794f122d8a1da8dedea8a', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 15:13:09', null, null);
INSERT INTO `sys_log` VALUES ('f0de6c127a30189b26a31e8e18d61e93', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:13:15', null, null);
INSERT INTO `sys_log` VALUES ('d24a8d9e0f5b221a129a6a8322dd3eca', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 15:13:50', null, null);
INSERT INTO `sys_log` VALUES ('24e5ee8d661a4cd36a89417e09d11a40', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:14:02', null, null);
INSERT INTO `sys_log` VALUES ('36ca1fc998aaa3995f06183f5e1e5d1a', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 15:14:27', null, null);
INSERT INTO `sys_log` VALUES ('1cd13d661ee342644ec0d1b3575f856d', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '192.168.8.118', null, null, null, null, null, 'admin', '2019-05-28 15:14:35', null, null);
INSERT INTO `sys_log` VALUES ('7700be62bb5d4280bc7ed3634cd7f5ef', '1', '登录失败，用户名:jxgq不存在！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:14:41', null, null);
INSERT INTO `sys_log` VALUES ('0e5413398a79bce29e24c46edb8de9d8', '1', '用户名: qyyh,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:14:44', null, null);
INSERT INTO `sys_log` VALUES ('d7300914fcbe1f9ac488f394c2122aad', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:14:52', null, null);
INSERT INTO `sys_log` VALUES ('c0162cb3369249aee33b6102af178a56', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '192.168.8.118', null, null, null, null, null, 'qyyh', '2019-05-28 15:17:58', null, null);
INSERT INTO `sys_log` VALUES ('c75718f5f9aa38556c22c00792afa49f', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:18:05', null, null);
INSERT INTO `sys_log` VALUES ('7a3eaa4a45b54f3af3f4b29a8d7cf1e7', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 15:26:57', null, null);
INSERT INTO `sys_log` VALUES ('79c031f95b950bed7414e09faeab2dad', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:27:04', null, null);
INSERT INTO `sys_log` VALUES ('586ce6fcb84be47e368448c8b1fe0587', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 15:32:02', null, null);
INSERT INTO `sys_log` VALUES ('6a7380650153b64ab6dbcdf0366a0edb', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:32:08', null, null);
INSERT INTO `sys_log` VALUES ('9729f9648eef74c249fa68421968fe4b', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:42:49', null, null);
INSERT INTO `sys_log` VALUES ('70dbe1a5de7c09101621a266b237aa3b', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 15:46:25', null, null);
INSERT INTO `sys_log` VALUES ('894dd532d3e6388eba7deb9c3533be11', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '192.168.8.118', null, null, null, null, null, 'admin', '2019-05-28 16:11:04', null, null);
INSERT INTO `sys_log` VALUES ('0342f764cbc2791d1a89d99558259f84', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:11:14', null, null);
INSERT INTO `sys_log` VALUES ('aa1a9423e8cbefd8f67213d78bf363c5', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:24:26', null, null);
INSERT INTO `sys_log` VALUES ('0abf30643494d6bf41982623552b930a', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 16:24:34', null, null);
INSERT INTO `sys_log` VALUES ('e0e3f1e8b5dd6c02842ac63432dd88b2', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:24:44', null, null);
INSERT INTO `sys_log` VALUES ('100c21246dd869f13ae99035d8b9f9ff', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '127.0.0.1', null, null, null, null, null, 'qyyh', '2019-05-28 16:37:47', null, null);
INSERT INTO `sys_log` VALUES ('aa96f8c811e7e148e3792dd483c53334', '1', '登录失败，用户名:gangan不存在！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:37:56', null, null);
INSERT INTO `sys_log` VALUES ('286feb5f31e49f2b385ddaa2ea0e5c1c', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:38:07', null, null);
INSERT INTO `sys_log` VALUES ('3e9a2161038ebfb3ee75e7a7fe736919', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '127.0.0.1', null, null, null, null, null, 'admin', '2019-05-28 16:38:28', null, null);
INSERT INTO `sys_log` VALUES ('e09c265f741657d78bd65af78a8c8b7a', '1', '用户名: biglead,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:38:33', null, null);
INSERT INTO `sys_log` VALUES ('f953f75871bd9c0bdfe0ec8604d249da', '1', '用户名: bigadmin,退出成功！', null, 'biglead', 'bigadmin', '127.0.0.1', null, null, null, null, null, 'biglead', '2019-05-28 16:45:22', null, null);
INSERT INTO `sys_log` VALUES ('31026f657d67f379c82a50cd8460aff7', '1', '用户名: qyyh,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-28 16:45:29', null, null);
INSERT INTO `sys_log` VALUES ('e9da176c7a88f1af5e6074c886b8fa02', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-29 10:36:08', null, null);
INSERT INTO `sys_log` VALUES ('3ae86b2a19e16374adce7ad49aceae9d', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-29 10:36:34', null, null);
INSERT INTO `sys_log` VALUES ('d32a37ac9c4ed83275e30fc13146769b', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-29 12:39:36', null, null);
INSERT INTO `sys_log` VALUES ('8faa97aa2738744bff8cb8603cacee99', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-29 13:43:11', null, null);
INSERT INTO `sys_log` VALUES ('e47ab5b0ff046018ed0e2955832a85c7', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-05-29 16:17:48', null, null);
INSERT INTO `sys_log` VALUES ('d67dbd1ce1252ed7e0138fae95ade4a4', '1', '用户名: admin,登录成功！', null, null, null, '127.0.0.1', null, null, null, null, null, 'jeecg-boot', '2019-05-29 16:25:28', null, null);
INSERT INTO `sys_log` VALUES ('9576560e61631b06100d59980f31b880', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:02:35', null, null);
INSERT INTO `sys_log` VALUES ('1b4f7e4b5c0dbd2f4148c3b068a24211', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '192.168.8.118', null, null, null, null, null, 'admin', '2019-06-01 14:06:08', null, null);
INSERT INTO `sys_log` VALUES ('44b43c56ec32d74032fc64f30e64c439', '1', '用户名: qyyh,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:06:18', null, null);
INSERT INTO `sys_log` VALUES ('b2b7ce1d08ba72a1eab36b6a1da22997', '1', '用户名: qyyh,退出成功！', null, 'qyyh', 'qyyh', '192.168.8.118', null, null, null, null, null, 'qyyh', '2019-06-01 14:07:02', null, null);
INSERT INTO `sys_log` VALUES ('e5f331fc3968597bcde9eace8711d509', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:07:13', null, null);
INSERT INTO `sys_log` VALUES ('303c3b0ada9b09bba80bcaf924153365', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '192.168.8.118', null, null, null, null, null, 'admin', '2019-06-01 14:08:02', null, null);
INSERT INTO `sys_log` VALUES ('2fbda0211f1a03b790bf6e71b1c36da3', '1', '用户名: biglead,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:08:07', null, null);
INSERT INTO `sys_log` VALUES ('2c9b0b7b6d7865b1b36ea6937b5e8362', '1', '用户名: bigadmin,退出成功！', null, 'biglead', 'bigadmin', '192.168.8.118', null, null, null, null, null, 'biglead', '2019-06-01 14:10:02', null, null);
INSERT INTO `sys_log` VALUES ('15f9e5299b8cf942a2b6fc627fb34a85', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:10:08', null, null);
INSERT INTO `sys_log` VALUES ('5cd114caf8469aeb5651464f004e8379', '1', '用户名: 管理员,退出成功！', null, 'admin', '管理员', '192.168.8.118', null, null, null, null, null, 'admin', '2019-06-01 14:11:43', null, null);
INSERT INTO `sys_log` VALUES ('44ee1040a73a8e78ac81ad5ff26f96e8', '1', '用户名: minilead,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:11:49', null, null);
INSERT INTO `sys_log` VALUES ('772bdd044aa7329479f1d7d7458d1629', '1', '用户名: minilead,退出成功！', null, 'minilead', 'minilead', '192.168.8.118', null, null, null, null, null, 'minilead', '2019-06-01 14:14:26', null, null);
INSERT INTO `sys_log` VALUES ('25f070e207dec4329c96a50e469a25cb', '1', '用户名: admin,登录成功！', null, null, null, '192.168.8.118', null, null, null, null, null, 'jeecg-boot', '2019-06-01 14:14:32', null, null);

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父id',
  `name` varchar(100) DEFAULT NULL COMMENT '菜单标题',
  `url` varchar(255) DEFAULT NULL COMMENT '路径',
  `component` varchar(255) DEFAULT NULL COMMENT '组件',
  `component_name` varchar(100) DEFAULT NULL COMMENT '组件名字',
  `redirect` varchar(255) DEFAULT NULL COMMENT '一级菜单跳转地址',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `perms` varchar(255) DEFAULT NULL COMMENT '菜单权限编码',
  `sort_no` double(3,2) DEFAULT NULL COMMENT '菜单排序',
  `always_show` tinyint(1) DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `icon` varchar(100) DEFAULT NULL COMMENT '菜单图标',
  `is_route` tinyint(1) DEFAULT '1' COMMENT '是否路由菜单: 0:不是  1:是（默认值1）',
  `is_leaf` tinyint(1) DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `hidden` int(2) DEFAULT '0' COMMENT '是否隐藏路由: 0否,1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(1) DEFAULT '0' COMMENT '删除状态 0正常 1已删除',
  PRIMARY KEY (`id`),
  KEY `index_prem_pid` (`parent_id`) USING BTREE,
  KEY `index_prem_is_route` (`is_route`) USING BTREE,
  KEY `index_prem_is_leaf` (`is_leaf`) USING BTREE,
  KEY `index_prem_sort_no` (`sort_no`) USING BTREE,
  KEY `index_prem_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES ('024f1fd1283dc632458976463d8984e1', '700b7f95165c46cc7a78bf227aa8fed3', 'Tomcat信息', '/monitor/TomcatInfo', 'monitor/TomcatInfo', null, null, '1', null, '4.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-02 09:44:29', 'admin', '2019-04-02 11:36:25', '0');
INSERT INTO `sys_permission` VALUES ('08e6b9dc3c04489c8e1ff2ce6f105aa4', '', '系统监控', '/dashboard3', 'layouts/RouteView', null, null, '0', null, '6.00', '0', 'dashboard', '1', '0', '0', null, null, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:58', '0');
INSERT INTO `sys_permission` VALUES ('109c78a583d4693ce2f16551b7786786', 'e41b69c57a941a3bbcce45032fe57605', 'Online报表配置', '/online/cgreport', 'modules/online/cgreport/OnlCgreportHeadList', null, null, '1', null, '2.00', '0', null, '1', '1', '0', null, 'admin', '2019-03-08 10:51:07', 'admin', '2019-03-30 19:04:28', '0');
INSERT INTO `sys_permission` VALUES ('1367a93f2c410b169faa7abcbad2f77c', '6e73eb3c26099c191bf03852ee1310a1', '基本设置', '/account/settings/base', 'account/settings/BaseSetting', null, null, '1', 'BaseSettings', null, '0', null, '1', '1', '1', null, null, '2018-12-26 18:58:35', 'admin', '2019-03-20 12:57:31', '0');
INSERT INTO `sys_permission` VALUES ('1af1dfedb7b9530562764e20bc8d61f2', 'a573bc208a7d9d45da26731b7675ac0f', '设备编辑', null, null, null, null, '2', 'equipment:edit', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-05-23 22:47:56', 'admin', '2019-05-23 22:49:15', '0');
INSERT INTO `sys_permission` VALUES ('22c0697a5ad4e71c49cf9a20039c320b', 'a573bc208a7d9d45da26731b7675ac0f', '设备删除', null, null, null, null, '2', 'equipemnt:delete', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-05-23 22:48:43', null, null, '0');
INSERT INTO `sys_permission` VALUES ('27bfda993d9eb099ebca8de74ae4034c', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备总量', '/equipment/EquipmentTypeCount', 'equipment/EquipmentTypeCount', null, null, '1', null, '1.00', '0', 'radius-upright', '1', '1', '1', null, 'admin', '2019-05-18 15:55:45', 'admin', '2019-05-21 13:47:13', '0');
INSERT INTO `sys_permission` VALUES ('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户管理', '/isystem/user', 'system/UserList', null, null, '1', null, '1.00', '0', null, '1', '0', '0', null, null, '2018-12-25 20:34:38', 'admin', '2019-03-16 11:20:33', '0');
INSERT INTO `sys_permission` VALUES ('45c966826eeff4c99b8f8ebfe74511fc', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '部门管理', '/isystem/depart', 'system/DepartList', null, null, '1', null, '3.00', '0', null, '1', '1', '0', null, 'admin', '2019-01-29 18:47:40', 'admin', '2019-05-21 00:33:12', '0');
INSERT INTO `sys_permission` VALUES ('4f66409ef3bbd69c1d80469d6e2a885e', '6e73eb3c26099c191bf03852ee1310a1', '账户绑定', '/account/settings/binding', 'account/settings/Binding', null, null, '1', 'BindingSettings', null, null, null, '1', '1', null, null, null, '2018-12-26 19:01:20', null, null, '0');
INSERT INTO `sys_permission` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理', '/isystem/permission', 'system/PermissionList', null, null, '1', null, '3.00', null, null, '1', '1', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('58857ff846e61794c69208e9d3a85466', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '日志管理', '/isystem/log', 'system/LogList', null, null, '1', null, '1.00', '0', '', '1', '1', '0', null, null, '2018-12-26 10:11:18', 'admin', '2019-04-02 11:38:17', '0');
INSERT INTO `sys_permission` VALUES ('5c8042bd6c601270b2bbd9b20bccc68b', '', '消息中心', '/message', 'layouts/RouteView', null, null, '0', null, '6.00', '0', 'message', '1', '0', '0', null, 'admin', '2019-04-09 11:05:04', 'admin', '2019-04-11 19:47:54', '0');
INSERT INTO `sys_permission` VALUES ('6033d62e2d5fe1c805d40255b592d3c8', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户审批', '/system/auditUser', 'system/auditUser', null, null, '1', null, '2.00', '0', '', '1', '1', '0', null, 'admin', '2019-05-21 00:32:43', 'admin', '2019-05-22 16:02:30', '0');
INSERT INTO `sys_permission` VALUES ('65a8f489f25a345836b7f44b1181197a', 'c65321e57b7949b7a975313220de0422', '403', '/exception/403', 'exception/403', null, null, '1', null, '1.00', null, null, '1', '1', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('681c1f59c7badec0ae8ba2285201ae25', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备详情页', '/EquipmentDetail/:code', 'equipment/EquipmentDetail', null, null, '1', null, '1.00', '0', null, '1', '1', '1', null, 'admin', '2019-05-20 14:49:13', 'admin', '2019-05-21 11:16:23', '0');
INSERT INTO `sys_permission` VALUES ('6e73eb3c26099c191bf03852ee1310a1', '717f6bee46f44a3897eca9abd6e2ec44', '个人设置', '/account/settings', 'account/settings/Index', null, null, '1', null, '2.00', '1', null, '1', '0', null, null, null, '2018-12-25 20:34:38', null, '2018-12-26 19:05:26', '0');
INSERT INTO `sys_permission` VALUES ('717f6bee46f44a3897eca9abd6e2ec44', null, '个人页', '/account', 'layouts/RouteView', null, null, '0', null, '9.00', '0', 'user', '1', '0', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('7245219111bcb802b11602d80fb1ba1f', 'a573bc208a7d9d45da26731b7675ac0f', '设备添加', null, null, null, null, '2', 'equipment:add', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-05-23 22:47:08', null, null, '0');
INSERT INTO `sys_permission` VALUES ('7593c9e3523a17bca83b8d7fe8a34e58', '3f915b2769fc80648e92d04e84ca059d', '添加用户按钮', '', null, null, null, '2', 'user:add', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-03-16 11:20:33', 'admin', '2019-03-16 11:54:15', '0');
INSERT INTO `sys_permission` VALUES ('7ddba8256334edc203fd7aa2ab4b6777', 'a573bc208a7d9d45da26731b7675ac0f', '导出', null, null, null, null, '2', 'equipment:export', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-05-28 09:34:31', null, null, '0');
INSERT INTO `sys_permission` VALUES ('7fce51c4c3d7d48ea1cad9a021a2ea79', null, '设备档案管理', '/equipment', 'layouts/RouteView', null, null, '0', null, '1.00', '0', 'profile', '1', '0', '0', null, 'admin', '2019-05-14 17:00:12', null, null, '0');
INSERT INTO `sys_permission` VALUES ('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '数据日志', '/sys/dataLog-list', 'system/DataLogList', null, null, '1', null, '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-03-11 19:26:49', 'admin', '2019-03-12 11:40:47', '0');
INSERT INTO `sys_permission` VALUES ('882a73768cfd7f78f3a37584f7299656', '6e73eb3c26099c191bf03852ee1310a1', '个性化设置', '/account/settings/custom', 'account/settings/Custom', null, null, '1', 'CustomSettings', null, null, null, '1', '1', null, null, null, '2018-12-26 19:00:46', null, '2018-12-26 21:13:25', '0');
INSERT INTO `sys_permission` VALUES ('8b3bff2eee6f1939147f5c68292a1642', '700b7f95165c46cc7a78bf227aa8fed3', '服务器信息', '/monitor/SystemInfo', 'monitor/SystemInfo', null, null, '1', null, '4.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-02 11:39:19', 'admin', '2019-04-02 15:40:02', '0');
INSERT INTO `sys_permission` VALUES ('8d1ebd663688965f1fd86a2f0ead3416', '700b7f95165c46cc7a78bf227aa8fed3', 'Redis监控', '/monitor/redis/info', 'monitor/RedisInfo', null, null, '1', null, '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-02 13:11:33', 'admin', '2019-04-02 13:24:43', '0');
INSERT INTO `sys_permission` VALUES ('8fb8172747a78756c11916216b8b8066', '717f6bee46f44a3897eca9abd6e2ec44', '工作台', '/dashboard/workplace', 'dashboard/Workplace', null, null, '1', null, '3.00', '0', null, '1', '1', '0', null, null, '2018-12-25 20:34:38', 'admin', '2019-04-02 11:45:02', '0');
INSERT INTO `sys_permission` VALUES ('936337f825ab463b1802675ea507f2dd', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备操作记录', '/equipmentlog/EquipmentLogList', 'equipmentlog/EquipmentLogList', null, null, '1', null, '1.00', '0', 'form', '1', '1', '0', null, 'admin', '2019-05-20 09:33:12', 'admin', '2019-05-21 11:00:35', '0');
INSERT INTO `sys_permission` VALUES ('944abf0a8fc22fe1f1154a389a574154', '5c8042bd6c601270b2bbd9b20bccc68b', '消息管理', '/modules/message/sysMessageList', 'modules/message/SysMessageList', null, null, '1', null, '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-09 11:27:53', 'admin', '2019-04-09 19:31:23', '0');
INSERT INTO `sys_permission` VALUES ('9502685863ab87f0ad1134142788a385', '', '首页', '/dashboard/analysis', 'dashboard/Analysis', null, null, '0', null, '0.00', '0', 'home', '1', '1', '0', null, null, '2018-12-25 20:34:38', 'admin', '2019-03-29 11:04:13', '0');
INSERT INTO `sys_permission` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', null, null, '1', null, '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-03-08 16:49:05', 'admin', '2019-03-08 18:37:56', '0');
INSERT INTO `sys_permission` VALUES ('9fe26464838de2ea5e90f2367e35efa0', 'e41b69c57a941a3bbcce45032fe57605', 'AUTO在线报表', '/online/cgreport/:code', 'modules/online/cgreport/auto/OnlCgreportAutoList', 'onlineAutoList', null, '1', null, '6.00', '0', null, '1', '1', '0', null, 'admin', '2019-03-12 11:06:48', 'admin', '2019-04-11 19:52:38', '0');
INSERT INTO `sys_permission` VALUES ('a1d93e18108f7eae12763e0c5aab1152', 'a573bc208a7d9d45da26731b7675ac0f', '下载模板', null, null, null, null, '2', 'equipment:downloadExcel', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-05-23 22:40:34', null, null, '0');
INSERT INTO `sys_permission` VALUES ('a1e5d86359a0720c9bec0bac03add602', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备操作记录详情', '/EquipmentLogDetail/:code', 'equipmentlog/EquipmentLogDetail', null, null, '1', null, '1.00', '0', null, '1', '1', '1', null, 'admin', '2019-05-21 10:16:20', 'admin', '2019-05-21 11:15:49', '0');
INSERT INTO `sys_permission` VALUES ('a573bc208a7d9d45da26731b7675ac0f', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备档案查询', '/EquipmentList/:code', 'equipment/EquipmentList', null, null, '1', null, '1.00', '0', 'file-search', '1', '0', '0', null, 'admin', '2019-05-14 17:03:55', 'admin', '2019-05-20 12:43:46', '0');
INSERT INTO `sys_permission` VALUES ('b4dfc7d5dd9e8d5b6dd6d4579b1aa559', 'c65321e57b7949b7a975313220de0422', '500', '/exception/500', 'exception/500', null, null, '1', null, '3.00', null, null, '1', '1', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('c0e9c45a951ce895e12d99ec9dfad3ef', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备淘汰情况', '/EquipmentEliminateStatus/:code', 'equipment/EquipmentEliminateStatus', null, null, '1', null, '1.00', '0', 'highlight', '1', '1', '1', null, 'admin', '2019-05-19 15:56:34', 'admin', '2019-05-20 12:11:23', '0');
INSERT INTO `sys_permission` VALUES ('c65321e57b7949b7a975313220de0422', null, '异常页', '/exception', 'layouts/RouteView', null, null, '0', null, '8.00', null, 'warning', '1', '0', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('d07a2c87a451434c99ab06296727ec4f', '700b7f95165c46cc7a78bf227aa8fed3', 'JVM信息', '/monitor/JvmInfo', 'monitor/JvmInfo', null, null, '1', null, '4.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-01 23:07:48', 'admin', '2019-04-02 11:37:16', '0');
INSERT INTO `sys_permission` VALUES ('d2bbf9ebca5a8fa2e227af97d2da7548', 'c65321e57b7949b7a975313220de0422', '404', '/exception/404', 'exception/404', null, null, '1', null, '2.00', null, null, '1', '1', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('d4994f4221a085944bcf1649e0e43e1d', '7fce51c4c3d7d48ea1cad9a021a2ea79', '设备列表', '/equipmentTypeList/:code', 'equipment/EquipmentTypeList', null, null, '1', null, '1.00', '0', 'radius-bottomleft', '1', '1', '1', null, 'admin', '2019-05-18 12:55:34', 'admin', '2019-05-24 14:57:40', '0');
INSERT INTO `sys_permission` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '', '系统管理', '/isystem', 'layouts/RouteView', null, null, '1', null, '4.00', '0', 'setting', '1', '0', '0', null, null, '2018-12-25 20:34:38', 'admin', '2019-03-31 22:19:52', '0');
INSERT INTO `sys_permission` VALUES ('d86f58e7ab516d3bc6bfb1fe10585f97', '717f6bee46f44a3897eca9abd6e2ec44', '个人中心', '/account/center', 'account/center/Index', null, null, '1', null, '1.00', null, null, '1', '1', null, null, null, '2018-12-25 20:34:38', null, null, '0');
INSERT INTO `sys_permission` VALUES ('dc828610b3cb48979f84ae97c6eb0bfd', 'a573bc208a7d9d45da26731b7675ac0f', '导入', null, null, null, null, '2', 'equipment:import', '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-05-28 09:30:21', 'admin', '2019-05-28 09:30:52', '0');
INSERT INTO `sys_permission` VALUES ('e034057d41c2af8b1b8cf120e22081b4', '7fce51c4c3d7d48ea1cad9a021a2ea79', '特种设备的总量', '/equipmentSpecial/:code', 'equipment/EquipmentSpecialType', null, null, '1', null, '1.00', '0', 'pic-left', '1', '1', '1', null, 'admin', '2019-05-20 10:56:00', 'admin', '2019-05-21 13:47:20', '0');
INSERT INTO `sys_permission` VALUES ('e08cb190ef230d5d4f03824198773950', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统通告', '/isystem/annountCement', 'system/SysAnnouncementList', null, null, '1', 'annountCement', '6.00', null, '', '1', '1', null, null, null, '2019-01-02 17:23:01', null, '2019-01-02 17:31:23', '0');
INSERT INTO `sys_permission` VALUES ('e41b69c57a941a3bbcce45032fe57605', '', '在线开发', '/online', 'layouts/RouteView', null, null, '0', null, '5.00', '0', 'cloud', '1', '0', '0', null, 'admin', '2019-03-08 10:43:10', 'admin', '2019-03-31 22:20:35', '0');
INSERT INTO `sys_permission` VALUES ('e8af452d8948ea49d37c934f5100ae6a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/isystem/role', 'system/RoleList', null, null, '1', null, '2.00', '0', null, '1', '1', '0', null, null, '2018-12-25 20:34:38', 'admin', '2019-05-22 16:02:38', '0');
INSERT INTO `sys_permission` VALUES ('ec8d607d0156e198b11853760319c646', '6e73eb3c26099c191bf03852ee1310a1', '安全设置', '/account/settings/security', 'account/settings/Security', null, null, '1', 'SecuritySettings', null, null, null, '1', '1', null, null, null, '2018-12-26 18:59:52', null, null, '0');
INSERT INTO `sys_permission` VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '数据字典', '/isystem/dict', 'system/DictList', null, null, '1', null, '5.00', null, null, '1', '1', null, null, null, '2018-12-28 13:54:43', null, '2018-12-28 15:37:54', '0');
INSERT INTO `sys_permission` VALUES ('f60d6a2f8c84aa05850b4d4c5f11feec', '7fce51c4c3d7d48ea1cad9a021a2ea79', '计划淘汰设备', '/reportform/reportFormList', 'reportform/reportFormList', null, null, '1', null, '1.00', '0', 'border-bottom', '1', '1', '0', null, 'admin', '2019-05-18 16:13:47', 'admin', '2019-05-20 10:03:30', '0');
INSERT INTO `sys_permission` VALUES ('f780d0d3083d849ccbdb1b1baee4911d', '5c8042bd6c601270b2bbd9b20bccc68b', '模板管理', '/modules/message/sysMessageTemplateList', 'modules/message/SysMessageTemplateList', null, null, '1', null, '1.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-09 11:50:31', 'admin', '2019-04-12 10:16:34', '0');
INSERT INTO `sys_permission` VALUES ('fc810a2267dd183e4ef7c71cc60f4670', '700b7f95165c46cc7a78bf227aa8fed3', '请求追踪', '/monitor/HttpTrace', 'monitor/HttpTrace', null, null, '1', null, '4.00', '0', null, '1', '1', '0', null, 'admin', '2019-04-02 09:46:19', 'admin', '2019-04-02 11:37:27', '0');
INSERT INTO `sys_permission` VALUES ('fedfbf4420536cacc0218557d263dfea', '6e73eb3c26099c191bf03852ee1310a1', '新消息通知', '/account/settings/notification', 'account/settings/Notification', null, null, '1', 'NotificationSettings', null, null, '', '1', '1', null, null, null, '2018-12-26 19:02:05', null, null, '0');

-- ----------------------------
-- Table structure for sys_permission_data_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission_data_rule`;
CREATE TABLE `sys_permission_data_rule` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '菜单ID',
  `rule_name` varchar(50) DEFAULT NULL COMMENT '规则名称',
  `rule_column` varchar(50) DEFAULT NULL COMMENT '字段',
  `rule_conditions` varchar(50) DEFAULT NULL COMMENT '条件',
  `rule_value` varchar(300) DEFAULT NULL COMMENT '规则值',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(32) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`),
  KEY `index_fucntionid` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_permission_data_rule
-- ----------------------------
INSERT INTO `sys_permission_data_rule` VALUES ('40283181614231d401614234fe670003', '40283181614231d401614232cd1c0001', 'createBy', 'createBy', '=', '#{sys_user_code}', '2018-01-29 21:57:04', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('4028318161424e730161424fca6f0004', '4028318161424e730161424f61510002', 'createBy', 'createBy', '=', '#{sys_user_code}', '2018-01-29 22:26:20', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e732c020005', '402889fb486e848101486e93a7c80014', 'SYS_ORG_CODE', 'SYS_ORG_CODE', 'LIKE', '010201%', '2014-09-16 20:32:30', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402880e6487e661a01487e8153ee0007', '402889fb486e848101486e93a7c80014', 'create_by', 'create_by', '', '#{SYS_USER_CODE}', '2014-09-16 20:47:57', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddec439015ddf9225060038', '40288088481d019401481d2fcebf000d', '复杂关系', '', 'USE_SQL_RULES', 'name like \'%张%\' or age > 10', null, null, '2017-08-14 15:10:25', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880ec5ddfdd26015ddfe3e0570011', '4028ab775dca0d1b015dca3fccb60016', '复杂sql配置', '', 'USE_SQL_RULES', 'table_name like \'%test%\' or is_tree = \'Y\'', null, null, '2017-08-14 16:38:55', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402880f25b1e2ac7015b1e5fdebc0012', '402880f25b1e2ac7015b1e5cdc340010', '只能看自己数据', 'create_by', '=', '#{sys_user_code}', '2017-03-30 16:40:51', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402881875b19f141015b19f8125e0014', '40288088481d019401481d2fcebf000d', '可看下属业务数据', 'sys_org_code', 'LIKE', '#{sys_org_code}', null, null, '2017-08-14 15:04:32', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d66901539500a4450001', '402881e54df73c73014df75ab670000f', 'sysCompanyCode', 'sysCompanyCode', '=', '#{SYS_COMPANY_CODE}', '2016-03-21 01:09:21', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e45394d6690153950177cb0003', '402881e54df73c73014df75ab670000f', 'sysOrgCode', 'sysOrgCode', '=', '#{SYS_ORG_CODE}', '2016-03-21 01:10:15', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f43101626727aff60067', '402881e56266f43101626724eb730065', '销售自己看自己的数据', 'createBy', '=', '#{sys_user_code}', '2018-03-27 19:11:16', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f4310162672fb1a70082', '402881e56266f43101626724eb730065', '销售经理看所有下级数据', 'sysOrgCode', 'LIKE', '#{sys_org_code}', '2018-03-27 19:20:01', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402881e56266f431016267387c9f0088', '402881e56266f43101626724eb730065', '只看金额大于1000的数据', 'money', '>=', '1000', '2018-03-27 19:29:37', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402881f3650de25101650dfb5a3a0010', '402881e56266f4310162671d62050044', '22', '', 'USE_SQL_RULES', '22', '2018-08-06 14:45:01', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e913cd6000b', '402889fb486e848101486e8e2e8b0007', 'userName', 'userName', '=', 'admin', '2014-09-13 18:31:25', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('402889fb486e848101486e98d20d0016', '402889fb486e848101486e93a7c80014', 'title', 'title', '=', '12', null, null, '2014-09-13 22:18:22', 'scott');
INSERT INTO `sys_permission_data_rule` VALUES ('402889fe47fcb29c0147fcb6b6220001', '8a8ab0b246dc81120146dc8180fe002b', '12', '12', '>', '12', '2014-08-22 15:55:38', '8a8ab0b246dc81120146dc8181950052', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('4028ab775dca0d1b015dca4183530018', '4028ab775dca0d1b015dca3fccb60016', '表名限制', 'isDbSynch', '=', 'Y', null, null, '2017-08-14 16:43:45', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef815595a881015595b0ccb60001', '40288088481d019401481d2fcebf000d', '限只能看自己', 'create_by', '=', '#{sys_user_code}', null, null, '2017-08-14 15:03:56', 'demo');
INSERT INTO `sys_permission_data_rule` VALUES ('4028ef81574ae99701574aed26530005', '4028ef81574ae99701574aeb97bd0003', '用户名', 'userName', '!=', 'admin', '2016-09-21 12:07:18', 'admin', null, null);
INSERT INTO `sys_permission_data_rule` VALUES ('f852d85d47f224990147f2284c0c0005', null, '小于', 'test', '<=', '11', '2014-08-20 14:43:52', '8a8ab0b246dc81120146dc8181950052', null, null);

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job` (
  `id` varchar(32) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `del_flag` int(1) DEFAULT NULL COMMENT '删除状态',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `job_class_name` varchar(255) DEFAULT NULL COMMENT '任务类名',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron表达式',
  `parameter` varchar(255) DEFAULT NULL COMMENT '参数',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) DEFAULT NULL COMMENT '状态 0正常 -1停止',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES ('df26ecacf0f75d219d746750fe84bbee', null, null, '0', 'admin', '2019-01-19 15:09:41', 'org.jeecg.modules.quartz.job.SampleParamJob', '0/1 * * * * ?', 'scott', '带参测试 后台将每隔1秒执行输出日志', '-1');
INSERT INTO `sys_quartz_job` VALUES ('a253cdfc811d69fa0efc70d052bc8128', 'admin', '2019-03-30 12:44:48', '0', 'admin', '2019-03-30 12:44:52', 'org.jeecg.modules.quartz.job.SampleJob', '0/1 * * * * ?', null, null, '0');
INSERT INTO `sys_quartz_job` VALUES ('5b3d2c087ad41aa755fc4f89697b01e7', 'admin', '2019-04-11 19:04:21', '0', 'admin', '2019-04-11 19:49:49', 'org.jeecg.modules.message.job.SendMsgJob', '0/60 * * * * ?', null, null, '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) DEFAULT NULL COMMENT '角色编码',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_role_code` (`role_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('c7af591c52c40efebbe2c9d79669d8d6', '大领导', 'committeeLead', '管理员或县级人员', 'admin', '2019-05-18 16:16:56', 'admin', '2019-05-18 16:18:23');
INSERT INTO `sys_role` VALUES ('d6bd7bca1f3bc5beff80cce9fc72c6f4', '委办领导', 'appointedLeader', '委办领导', 'admin', '2019-05-19 09:39:42', 'admin', '2019-05-20 09:20:31');
INSERT INTO `sys_role` VALUES ('e051d7566cee545be4e5543bae061122', '企业用户', 'enterpriseUser', '企业用户', 'admin', '2019-05-18 14:57:31', 'admin', '2019-05-20 09:20:36');
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', '管理员', null, '2018-12-21 18:03:39', 'admin', '2019-02-22 19:49:42');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` varchar(32) NOT NULL,
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(32) DEFAULT NULL COMMENT '权限id',
  `data_rule_ids` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_group_role_per_id` (`role_id`,`permission_id`) USING BTREE,
  KEY `index_group_role_id` (`role_id`) USING BTREE,
  KEY `index_group_per_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES ('00a4e0df2f85bee16e13b2632fff5e68', 'f6817f48af4fb3af11b9e8bf182f618b', '020b06793e4de2eee0007f603000c769', null);
INSERT INTO `sys_role_permission` VALUES ('00b0748f04d3ea52c8cfa179c1c9d384', '52b0cf022ac4187b2a70dfa4f8b2d940', 'd7d6e2e4e2934f2c9385a623fd98c6f3', null);
INSERT INTO `sys_role_permission` VALUES ('023ed509ee034c56025731d1eb3f0a46', 'f6817f48af4fb3af11b9e8bf182f618b', 'c2c356bf4ddd29975347a7047a062440', null);
INSERT INTO `sys_role_permission` VALUES ('045200ca71bccf91b6319267ec15c2bd', 'f6817f48af4fb3af11b9e8bf182f618b', '6033d62e2d5fe1c805d40255b592d3c8', null);
INSERT INTO `sys_role_permission` VALUES ('05b75857373402fd8b9d426fe9904c0a', 'f6817f48af4fb3af11b9e8bf182f618b', '700b7f95165c46cc7a78bf227aa8fed3', null);
INSERT INTO `sys_role_permission` VALUES ('06a3366a7976dc54f2c0ef0621ff838c', 'f6817f48af4fb3af11b9e8bf182f618b', '64a10c2e2fd3f813a8c0fba21f232303', null);
INSERT INTO `sys_role_permission` VALUES ('081b3454f3f0213adf26e01fb3dbafc3', 'c7af591c52c40efebbe2c9d79669d8d6', 'd86f58e7ab516d3bc6bfb1fe10585f97', null);
INSERT INTO `sys_role_permission` VALUES ('08342b8d96275163fd6e3193e179f0cb', 'f6817f48af4fb3af11b9e8bf182f618b', 'd33551db7e13424e8295ae53a9f85111', null);
INSERT INTO `sys_role_permission` VALUES ('087f7f76b7d5801c6155b8b88a35c0d3', 'f6817f48af4fb3af11b9e8bf182f618b', '418964ba087b90a84897b62474496b93', null);
INSERT INTO `sys_role_permission` VALUES ('09dcf908575ff1405eba2cb3d3b959ab', 'f6817f48af4fb3af11b9e8bf182f618b', '277bfabef7d76e89b33062b16a9a5020', null);
INSERT INTO `sys_role_permission` VALUES ('0c7cc38a86ce5948e3bf75dc90fa96dd', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', '7fce51c4c3d7d48ea1cad9a021a2ea79', null);
INSERT INTO `sys_role_permission` VALUES ('0d895bcef378f9819141a3f6e90af120', 'e51758fa916c881624b046d26bd09230', 'a400e4f4d54f79bf5ce160ae432231af', null);
INSERT INTO `sys_role_permission` VALUES ('0d9d14bc66e9d5e99b0280095fdc8587', 'ee8626f80f7c2619917b6236f3a7f02b', '277bfabef7d76e89b33062b16a9a5020', null);
INSERT INTO `sys_role_permission` VALUES ('0dec36b68c234767cd35466efef3b941', 'ee8626f80f7c2619917b6236f3a7f02b', '54dd5457a3190740005c1bfec55b1c34', null);
INSERT INTO `sys_role_permission` VALUES ('102d6bc6d9ebbd8a9e2313b4eb2a7f3c', 'f6817f48af4fb3af11b9e8bf182f618b', 'f1c7f847edfca59c5f8d2cc1fe0e389c', null);
INSERT INTO `sys_role_permission` VALUES ('10b99cfb227723f8c7ddbf0eb109de33', 'e51758fa916c881624b046d26bd09230', '693ce69af3432bd00be13c3971a57961', null);
INSERT INTO `sys_role_permission` VALUES ('115a6673ae6c0816d3f60de221520274', '21c5a3187763729408b40afb0d0fdfa8', '63b551e81c5956d5c861593d366d8c57', null);
INSERT INTO `sys_role_permission` VALUES ('12e3cb5dc98f2210b480d0014a8e9623', 'f6817f48af4fb3af11b9e8bf182f618b', 'e3c13679c73a4f829bcff2aba8fd68b1', null);
INSERT INTO `sys_role_permission` VALUES ('14b6dae2d406619bf339a2684760fa00', 'c7af591c52c40efebbe2c9d79669d8d6', 'e034057d41c2af8b1b8cf120e22081b4', null);
INSERT INTO `sys_role_permission` VALUES ('1553192b3099ca43ca413fe8d30e55f6', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', '681c1f59c7badec0ae8ba2285201ae25', null);
INSERT INTO `sys_role_permission` VALUES ('16ef8ed3865ccc6f6306200760896c50', 'ee8626f80f7c2619917b6236f3a7f02b', 'e8af452d8948ea49d37c934f5100ae6a', null);
INSERT INTO `sys_role_permission` VALUES ('16fb06318a38d4b05f9fd9f5bab2dfad', 'f6817f48af4fb3af11b9e8bf182f618b', 'b1cb0a3fedf7ed0e4653cb5a229837ee', null);
INSERT INTO `sys_role_permission` VALUES ('17e1f43b96eeb0685417b5c909bf9c67', 'f6817f48af4fb3af11b9e8bf182f618b', '540a2936940846cb98114ffb0d145cb8', null);
INSERT INTO `sys_role_permission` VALUES ('17ead5b7d97ed365398ab20009a69ea3', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e08cb190ef230d5d4f03824198773950', null);
INSERT INTO `sys_role_permission` VALUES ('19af1f95be2b11abdba820bceb3cddef', 'e51758fa916c881624b046d26bd09230', 'aedbf679b5773c1f25e9f7b10111da73', null);
INSERT INTO `sys_role_permission` VALUES ('1ac1688ef8456f384091a03d88a89ab1', '52b0cf022ac4187b2a70dfa4f8b2d940', '693ce69af3432bd00be13c3971a57961', null);
INSERT INTO `sys_role_permission` VALUES ('1af4babaa4227c3cbb830bc5eb513abb', 'ee8626f80f7c2619917b6236f3a7f02b', 'e08cb190ef230d5d4f03824198773950', null);
INSERT INTO `sys_role_permission` VALUES ('1ba162bbc2076c25561f8622f610d5bf', 'ee8626f80f7c2619917b6236f3a7f02b', 'aedbf679b5773c1f25e9f7b10111da73', null);
INSERT INTO `sys_role_permission` VALUES ('1fd12f24460dcb1d0a551799cd9bda3d', 'f6817f48af4fb3af11b9e8bf182f618b', '2d83d62bd2544b8994c8f38cf17b0ddf', null);
INSERT INTO `sys_role_permission` VALUES ('1fe4d408b85f19618c15bcb768f0ec22', '1750a8fb3e6d90cb7957c02de1dc8e59', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('219482a56bc2e83977316c37395ee9d8', 'f6817f48af4fb3af11b9e8bf182f618b', '45c966826eeff4c99b8f8ebfe74511fc', null);
INSERT INTO `sys_role_permission` VALUES ('228d0f19bfdee8f6268d851102d9e3fc', 'e051d7566cee545be4e5543bae061122', '22c0697a5ad4e71c49cf9a20039c320b', null);
INSERT INTO `sys_role_permission` VALUES ('248d288586c6ff3bd14381565df84163', '52b0cf022ac4187b2a70dfa4f8b2d940', '3f915b2769fc80648e92d04e84ca059d', null);
INSERT INTO `sys_role_permission` VALUES ('25f5443f19c34d99718a016d5f54112e', 'ee8626f80f7c2619917b6236f3a7f02b', '6e73eb3c26099c191bf03852ee1310a1', null);
INSERT INTO `sys_role_permission` VALUES ('27489816708b18859768dfed5945c405', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('279cd367796a689ee33b4f942c277f33', 'f6817f48af4fb3af11b9e8bf182f618b', 'f60d6a2f8c84aa05850b4d4c5f11feec', null);
INSERT INTO `sys_role_permission` VALUES ('296f9c75ca0e172ae5ce4c1022c996df', '646c628b2b8295fbdab2d34044de0354', '732d48f8e0abe99fe6a23d18a3171cd1', null);
INSERT INTO `sys_role_permission` VALUES ('29c721e7070f74084334f09ec2c4655d', 'f6817f48af4fb3af11b9e8bf182f618b', '56ca78fe0f22d815fabc793461af67b8', null);
INSERT INTO `sys_role_permission` VALUES ('29fb4d37aa29b9fa400f389237cf9fe7', 'ee8626f80f7c2619917b6236f3a7f02b', '05b3c82ddb2536a4a5ee1a4c46b5abef', null);
INSERT INTO `sys_role_permission` VALUES ('2c234c9efc19c4d1f578048ee726cc62', 'f6817f48af4fb3af11b9e8bf182f618b', '7ac9eb9ccbde2f7a033cd4944272bf1e', null);
INSERT INTO `sys_role_permission` VALUES ('2c462293cbb0eab7e8ae0a3600361b5f', '52b0cf022ac4187b2a70dfa4f8b2d940', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('2dc1a0eb5e39aaa131ddd0082a492d76', 'ee8626f80f7c2619917b6236f3a7f02b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', null);
INSERT INTO `sys_role_permission` VALUES ('2ea2382af618ba7d1e80491a0185fb8a', 'ee8626f80f7c2619917b6236f3a7f02b', 'f23d9bfff4d9aa6b68569ba2cff38415', null);
INSERT INTO `sys_role_permission` VALUES ('2f92f6966cac8dd16fa6abb430f1c20e', 'f6817f48af4fb3af11b9e8bf182f618b', '1af1dfedb7b9530562764e20bc8d61f2', null);
INSERT INTO `sys_role_permission` VALUES ('2fcfa2ac3dcfadc7c67107dae9a0de6d', 'ee8626f80f7c2619917b6236f3a7f02b', '73678f9daa45ed17a3674131b03432fb', null);
INSERT INTO `sys_role_permission` VALUES ('2fdaed22dfa4c8d4629e44ef81688c6a', '52b0cf022ac4187b2a70dfa4f8b2d940', 'aedbf679b5773c1f25e9f7b10111da73', null);
INSERT INTO `sys_role_permission` VALUES ('300c462b7fec09e2ff32574ef8b3f0bd', '52b0cf022ac4187b2a70dfa4f8b2d940', '2a470fc0c3954d9dbb61de6d80846549', null);
INSERT INTO `sys_role_permission` VALUES ('3084afc271a09e47ec5b45a216d29622', 'f6817f48af4fb3af11b9e8bf182f618b', 'ca7d78c78adf3bf981da0e397cd81a79', null);
INSERT INTO `sys_role_permission` VALUES ('3095e160cf61b8a5d29807d88405934d', 'e51758fa916c881624b046d26bd09230', '2dbbafa22cda07fa5d169d741b81fe12', null);
INSERT INTO `sys_role_permission` VALUES ('324efbae58288f500f21bbc6678c606f', 'e051d7566cee545be4e5543bae061122', '6a4f21c29bb65d49e29090ad8997729a', null);
INSERT INTO `sys_role_permission` VALUES ('326181da3248a62a05e872119a462be1', 'ee8626f80f7c2619917b6236f3a7f02b', '3f915b2769fc80648e92d04e84ca059d', null);
INSERT INTO `sys_role_permission` VALUES ('3482d4979aff337c6f49c0a5300351c4', 'f6817f48af4fb3af11b9e8bf182f618b', '13212d3416eb690c2e1d5033166ff47a', null);
INSERT INTO `sys_role_permission` VALUES ('35895de00a629e47cd440c251b6bf604', 'c7af591c52c40efebbe2c9d79669d8d6', 'f60d6a2f8c84aa05850b4d4c5f11feec', null);
INSERT INTO `sys_role_permission` VALUES ('35ac7cae648de39eb56213ca1b649713', '52b0cf022ac4187b2a70dfa4f8b2d940', 'b1cb0a3fedf7ed0e4653cb5a229837ee', null);
INSERT INTO `sys_role_permission` VALUES ('37112f4d372541e105473f18da3dc50d', 'ee8626f80f7c2619917b6236f3a7f02b', 'a400e4f4d54f79bf5ce160ae432231af', null);
INSERT INTO `sys_role_permission` VALUES ('37789f70cd8bd802c4a69e9e1f633eaa', 'ee8626f80f7c2619917b6236f3a7f02b', 'ae4fed059f67086fd52a73d913cf473d', null);
INSERT INTO `sys_role_permission` VALUES ('381504a717cb3ce77dcd4070c9689a7e', 'ee8626f80f7c2619917b6236f3a7f02b', '4f84f9400e5e92c95f05b554724c2b58', null);
INSERT INTO `sys_role_permission` VALUES ('39f4a3a6012d6a892d0b2363daabed6e', 'f6817f48af4fb3af11b9e8bf182f618b', '22c0697a5ad4e71c49cf9a20039c320b', null);
INSERT INTO `sys_role_permission` VALUES ('3b056fab68896793af09b1c7fe03779d', 'f6817f48af4fb3af11b9e8bf182f618b', '4356a1a67b564f0988a484f5531fd4d9', null);
INSERT INTO `sys_role_permission` VALUES ('3d42278215970d54d825341047a3b674', 'e51758fa916c881624b046d26bd09230', 'd7d6e2e4e2934f2c9385a623fd98c6f3', null);
INSERT INTO `sys_role_permission` VALUES ('3e563751942b0879c88ca4de19757b50', '1750a8fb3e6d90cb7957c02de1dc8e59', '58857ff846e61794c69208e9d3a85466', null);
INSERT INTO `sys_role_permission` VALUES ('3f0c26d50cece4c9664fd298e6462243', 'c7af591c52c40efebbe2c9d79669d8d6', 'a573bc208a7d9d45da26731b7675ac0f', null);
INSERT INTO `sys_role_permission` VALUES ('412e2de37a35b3442d68db8dd2f3c190', '52b0cf022ac4187b2a70dfa4f8b2d940', 'f1cb187abf927c88b89470d08615f5ac', null);
INSERT INTO `sys_role_permission` VALUES ('42025bd481756af97d443846c51d3634', 'e051d7566cee545be4e5543bae061122', '7245219111bcb802b11602d80fb1ba1f', null);
INSERT INTO `sys_role_permission` VALUES ('42efe53476c9f531e67c10af533ac0ac', 'f6817f48af4fb3af11b9e8bf182f618b', '63b551e81c5956d5c861593d366d8c57', null);
INSERT INTO `sys_role_permission` VALUES ('43dbe5cdedf7e32f63bf569cba2d6adf', 'f6817f48af4fb3af11b9e8bf182f618b', 'fc810a2267dd183e4ef7c71cc60f4670', null);
INSERT INTO `sys_role_permission` VALUES ('44b5a73541bcb854dd5d38c6d1fb93a1', 'ee8626f80f7c2619917b6236f3a7f02b', '418964ba087b90a84897b62474496b93', null);
INSERT INTO `sys_role_permission` VALUES ('4543e4c28b7ba6f6f4033faf41aeaaad', 'f6817f48af4fb3af11b9e8bf182f618b', '7960961b0063228937da5fa8dd73d371', null);
INSERT INTO `sys_role_permission` VALUES ('47eb2137c1437b5f68b6e2c7254e8d0d', 'f6817f48af4fb3af11b9e8bf182f618b', '027aee69baee98a0ed2e01806e89c891', null);
INSERT INTO `sys_role_permission` VALUES ('4a42eaadc7844bde2e96ccc84b094d2e', 'e051d7566cee545be4e5543bae061122', 'd86f58e7ab516d3bc6bfb1fe10585f97', null);
INSERT INTO `sys_role_permission` VALUES ('4a58b74ba2f2cb76dde95a70027e3104', 'f6817f48af4fb3af11b9e8bf182f618b', '200006f0edf145a2b50eacca07585451', null);
INSERT INTO `sys_role_permission` VALUES ('4a5d3627660a630f993f3dd7c20a86b2', 'c7af591c52c40efebbe2c9d79669d8d6', '7fce51c4c3d7d48ea1cad9a021a2ea79', null);
INSERT INTO `sys_role_permission` VALUES ('4a7ba2b8dc9a846fdda87ae5500446db', 'f6817f48af4fb3af11b9e8bf182f618b', '7593c9e3523a17bca83b8d7fe8a34e58', null);
INSERT INTO `sys_role_permission` VALUES ('4d56ce2f67c94b74a1d3abdbea340e42', 'ee8626f80f7c2619917b6236f3a7f02b', 'd86f58e7ab516d3bc6bfb1fe10585f97', null);
INSERT INTO `sys_role_permission` VALUES ('4faad8ff93cb2b5607cd3d07c1b624ee', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '70b8f33da5f39de1981bf89cf6c99792', null);
INSERT INTO `sys_role_permission` VALUES ('5014b32dfde7f6bec09965e37030d0bc', 'f6817f48af4fb3af11b9e8bf182f618b', '024f1fd1283dc632458976463d8984e1', null);
INSERT INTO `sys_role_permission` VALUES ('506222a1957213ecf6cd7006f972072a', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', '936337f825ab463b1802675ea507f2dd', null);
INSERT INTO `sys_role_permission` VALUES ('5389aa3b3114eb8126f0b0b3bfdf7b90', 'f6817f48af4fb3af11b9e8bf182f618b', '9cb91b8851db0cf7b19d7ecc2a8193dd', null);
INSERT INTO `sys_role_permission` VALUES ('53a383376ea7110009074a0a647b27d2', 'e51758fa916c881624b046d26bd09230', 'c65321e57b7949b7a975313220de0422', null);
INSERT INTO `sys_role_permission` VALUES ('57c0b3a547b815ea3ec8e509b08948b3', '1750a8fb3e6d90cb7957c02de1dc8e59', '3f915b2769fc80648e92d04e84ca059d', null);
INSERT INTO `sys_role_permission` VALUES ('58e7ed3065585a89c3a30a9240996c4f', 'f6817f48af4fb3af11b9e8bf182f618b', 'e6bfd1fcabfd7942fdd05f076d1dad38', null);
INSERT INTO `sys_role_permission` VALUES ('58eea02eff1e206a217384eeb4339a35', 'f6817f48af4fb3af11b9e8bf182f618b', '84284f711a1b49e26021043a4d04c864', null);
INSERT INTO `sys_role_permission` VALUES ('593ee05c4fe4645c7826b7d5e14f23ec', '52b0cf022ac4187b2a70dfa4f8b2d940', '8fb8172747a78756c11916216b8b8066', null);
INSERT INTO `sys_role_permission` VALUES ('59937a318c818cc53aabc8ce794c97b2', 'f6817f48af4fb3af11b9e8bf182f618b', '4148ec82b6acd69f470bea75fe41c357', null);
INSERT INTO `sys_role_permission` VALUES ('5affc85021fcba07d81c09a6fdfa8dc6', 'ee8626f80f7c2619917b6236f3a7f02b', '078f9558cdeab239aecb2bda1a8ed0d1', null);
INSERT INTO `sys_role_permission` VALUES ('5b16ba5d9681e0160feb861c883d3208', 'f6817f48af4fb3af11b9e8bf182f618b', 'f23d9bfff4d9aa6b68569ba2cff38415', null);
INSERT INTO `sys_role_permission` VALUES ('5c08999d9c2cf22b0d3c48a5ec018e2a', 'f6817f48af4fb3af11b9e8bf182f618b', 'a400e4f4d54f79bf5ce160ae432231af', null);
INSERT INTO `sys_role_permission` VALUES ('5fc194b709336d354640fe29fefd65a3', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '9ba60e626bf2882c31c488aba62b89f0', null);
INSERT INTO `sys_role_permission` VALUES ('5fdb4b61b8de96559f75a05d57480de8', 'f6817f48af4fb3af11b9e8bf182f618b', '2dbbafa22cda07fa5d169d741b81fe12', null);
INSERT INTO `sys_role_permission` VALUES ('6010743755ce1f4ee898687f83195b8e', 'e51758fa916c881624b046d26bd09230', 'e6bfd1fcabfd7942fdd05f076d1dad38', null);
INSERT INTO `sys_role_permission` VALUES ('60bc9fb429f12eae9c16852fa7589407', 'f6817f48af4fb3af11b9e8bf182f618b', '2aeddae571695cd6380f6d6d334d6e7d', null);
INSERT INTO `sys_role_permission` VALUES ('620aa0a48d974dee93f80024b2836d2b', 'c7af591c52c40efebbe2c9d79669d8d6', '717f6bee46f44a3897eca9abd6e2ec44', null);
INSERT INTO `sys_role_permission` VALUES ('62f9e49051c513f85c7166fd9dc9220b', 'e051d7566cee545be4e5543bae061122', 'a1d93e18108f7eae12763e0c5aab1152', null);
INSERT INTO `sys_role_permission` VALUES ('633a701036d3613a8a8442d7f5a884a2', 'e51758fa916c881624b046d26bd09230', '1663f3faba244d16c94552f849627d84', null);
INSERT INTO `sys_role_permission` VALUES ('635f1eaef6ca24c63c7fec090fbf85b1', 'e51758fa916c881624b046d26bd09230', '339329ed54cf255e1f9392e84f136901', null);
INSERT INTO `sys_role_permission` VALUES ('641c8d38795ca217edb8b82a9e49a4ca', 'f6817f48af4fb3af11b9e8bf182f618b', '2e42e3835c2b44ec9f7bc26c146ee531', null);
INSERT INTO `sys_role_permission` VALUES ('6451dac67ba4acafb570fd6a03f47460', 'ee8626f80f7c2619917b6236f3a7f02b', 'e3c13679c73a4f829bcff2aba8fd68b1', null);
INSERT INTO `sys_role_permission` VALUES ('64f6e58c1776780704acd1d2e4acc62f', 'f6817f48af4fb3af11b9e8bf182f618b', 'a4fc7b64b01a224da066bb16230f9c5a', null);
INSERT INTO `sys_role_permission` VALUES ('671b3b6206d52830f49fc2b95165aa0e', 'f6817f48af4fb3af11b9e8bf182f618b', 'a1e5d86359a0720c9bec0bac03add602', null);
INSERT INTO `sys_role_permission` VALUES ('67e7b3bbbe9a9898cb70a8f7083dbad9', 'e051d7566cee545be4e5543bae061122', '1af1dfedb7b9530562764e20bc8d61f2', null);
INSERT INTO `sys_role_permission` VALUES ('6884a9792786359bfbbae67c089b5a0d', 'f6817f48af4fb3af11b9e8bf182f618b', '339329ed54cf255e1f9392e84f136901', null);
INSERT INTO `sys_role_permission` VALUES ('69209e1f47adc07b7e913f2128e7bea3', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'a1e5d86359a0720c9bec0bac03add602', null);
INSERT INTO `sys_role_permission` VALUES ('695f0b628aafb8d541c43c3934fb00a0', 'f6817f48af4fb3af11b9e8bf182f618b', '681c1f59c7badec0ae8ba2285201ae25', null);
INSERT INTO `sys_role_permission` VALUES ('6c43fd3f10fdaf2a0646434ae68709b5', 'ee8626f80f7c2619917b6236f3a7f02b', '540a2936940846cb98114ffb0d145cb8', null);
INSERT INTO `sys_role_permission` VALUES ('6e0ff83a7f1932471e2dc57de8b85763', 'f6817f48af4fb3af11b9e8bf182f618b', '4f66409ef3bbd69c1d80469d6e2a885e', null);
INSERT INTO `sys_role_permission` VALUES ('6f2d5d9463c073df0a97d8f8533534f5', 'c7af591c52c40efebbe2c9d79669d8d6', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('6fe59a0e09857e0cebeaf705f9b0cf8d', 'e051d7566cee545be4e5543bae061122', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('717ece7e460134342bd62f8f67833bdf', 'e51758fa916c881624b046d26bd09230', '717f6bee46f44a3897eca9abd6e2ec44', null);
INSERT INTO `sys_role_permission` VALUES ('71a5f54a90aa8c7a250a38b7dba39f6f', 'ee8626f80f7c2619917b6236f3a7f02b', '8fb8172747a78756c11916216b8b8066', null);
INSERT INTO `sys_role_permission` VALUES ('71b1189655e1d17ff0b200c7c288da5d', 'f6817f48af4fb3af11b9e8bf182f618b', '078f9558cdeab239aecb2bda1a8ed0d1', null);
INSERT INTO `sys_role_permission` VALUES ('737ba54a855c3518be688fe1825ef9ce', 'e51758fa916c881624b046d26bd09230', 'fb367426764077dcf94640c843733985', null);
INSERT INTO `sys_role_permission` VALUES ('74bdff8e74c1c76d97a19b28f9fe0981', 'e51758fa916c881624b046d26bd09230', '65a8f489f25a345836b7f44b1181197a', null);
INSERT INTO `sys_role_permission` VALUES ('75002588591820806', '16457350655250432', '5129710648430592', null);
INSERT INTO `sys_role_permission` VALUES ('75002588604403712', '16457350655250432', '5129710648430593', null);
INSERT INTO `sys_role_permission` VALUES ('75002588612792320', '16457350655250432', '40238597734928384', null);
INSERT INTO `sys_role_permission` VALUES ('75002588625375232', '16457350655250432', '57009744761589760', null);
INSERT INTO `sys_role_permission` VALUES ('75002588633763840', '16457350655250432', '16392452747300864', null);
INSERT INTO `sys_role_permission` VALUES ('75002588637958144', '16457350655250432', '16392767785668608', null);
INSERT INTO `sys_role_permission` VALUES ('75002588650541056', '16457350655250432', '16439068543946752', null);
INSERT INTO `sys_role_permission` VALUES ('77277779875336192', '496138616573952', '5129710648430592', null);
INSERT INTO `sys_role_permission` VALUES ('77277780043108352', '496138616573952', '5129710648430593', null);
INSERT INTO `sys_role_permission` VALUES ('77277780055691264', '496138616573952', '15701400130424832', null);
INSERT INTO `sys_role_permission` VALUES ('77277780064079872', '496138616573952', '16678126574637056', null);
INSERT INTO `sys_role_permission` VALUES ('77277780072468480', '496138616573952', '15701915807518720', null);
INSERT INTO `sys_role_permission` VALUES ('77277780076662784', '496138616573952', '15708892205944832', null);
INSERT INTO `sys_role_permission` VALUES ('77277780085051392', '496138616573952', '16678447719911424', null);
INSERT INTO `sys_role_permission` VALUES ('77277780089245696', '496138616573952', '25014528525733888', null);
INSERT INTO `sys_role_permission` VALUES ('77277780097634304', '496138616573952', '56898976661639168', null);
INSERT INTO `sys_role_permission` VALUES ('77277780135383040', '496138616573952', '40238597734928384', null);
INSERT INTO `sys_role_permission` VALUES ('77277780139577344', '496138616573952', '45235621697949696', null);
INSERT INTO `sys_role_permission` VALUES ('77277780147965952', '496138616573952', '45235787867885568', null);
INSERT INTO `sys_role_permission` VALUES ('77277780156354560', '496138616573952', '45235939278065664', null);
INSERT INTO `sys_role_permission` VALUES ('77277780164743168', '496138616573952', '43117268627886080', null);
INSERT INTO `sys_role_permission` VALUES ('77277780168937472', '496138616573952', '45236734832676864', null);
INSERT INTO `sys_role_permission` VALUES ('77277780181520384', '496138616573952', '45237010692050944', null);
INSERT INTO `sys_role_permission` VALUES ('77277780189908992', '496138616573952', '45237170029465600', null);
INSERT INTO `sys_role_permission` VALUES ('77277780198297600', '496138616573952', '57009544286441472', null);
INSERT INTO `sys_role_permission` VALUES ('77277780206686208', '496138616573952', '57009744761589760', null);
INSERT INTO `sys_role_permission` VALUES ('77277780215074816', '496138616573952', '57009981228060672', null);
INSERT INTO `sys_role_permission` VALUES ('77277780219269120', '496138616573952', '56309618086776832', null);
INSERT INTO `sys_role_permission` VALUES ('77277780227657728', '496138616573952', '57212882168844288', null);
INSERT INTO `sys_role_permission` VALUES ('77277780236046336', '496138616573952', '61560041605435392', null);
INSERT INTO `sys_role_permission` VALUES ('77277780244434944', '496138616573952', '61560275261722624', null);
INSERT INTO `sys_role_permission` VALUES ('77277780257017856', '496138616573952', '61560480518377472', null);
INSERT INTO `sys_role_permission` VALUES ('77277780265406464', '496138616573952', '44986029924421632', null);
INSERT INTO `sys_role_permission` VALUES ('77277780324126720', '496138616573952', '45235228800716800', null);
INSERT INTO `sys_role_permission` VALUES ('77277780332515328', '496138616573952', '45069342940860416', null);
INSERT INTO `sys_role_permission` VALUES ('77277780340903937', '496138616573952', '5129710648430594', null);
INSERT INTO `sys_role_permission` VALUES ('77277780349292544', '496138616573952', '16687383932047360', null);
INSERT INTO `sys_role_permission` VALUES ('77277780357681152', '496138616573952', '16689632049631232', null);
INSERT INTO `sys_role_permission` VALUES ('77277780366069760', '496138616573952', '16689745006432256', null);
INSERT INTO `sys_role_permission` VALUES ('77277780370264064', '496138616573952', '16689883993083904', null);
INSERT INTO `sys_role_permission` VALUES ('77277780374458369', '496138616573952', '16690313745666048', null);
INSERT INTO `sys_role_permission` VALUES ('77277780387041280', '496138616573952', '5129710648430595', null);
INSERT INTO `sys_role_permission` VALUES ('77277780395429888', '496138616573952', '16694861252005888', null);
INSERT INTO `sys_role_permission` VALUES ('77277780403818496', '496138616573952', '16695107491205120', null);
INSERT INTO `sys_role_permission` VALUES ('77277780412207104', '496138616573952', '16695243126607872', null);
INSERT INTO `sys_role_permission` VALUES ('77277780420595712', '496138616573952', '75002207560273920', null);
INSERT INTO `sys_role_permission` VALUES ('77277780428984320', '496138616573952', '76215889006956544', null);
INSERT INTO `sys_role_permission` VALUES ('77277780433178624', '496138616573952', '76216071333351424', null);
INSERT INTO `sys_role_permission` VALUES ('77277780441567232', '496138616573952', '76216264070008832', null);
INSERT INTO `sys_role_permission` VALUES ('77277780449955840', '496138616573952', '76216459709124608', null);
INSERT INTO `sys_role_permission` VALUES ('77277780458344448', '496138616573952', '76216594207870976', null);
INSERT INTO `sys_role_permission` VALUES ('77277780466733056', '496138616573952', '76216702639017984', null);
INSERT INTO `sys_role_permission` VALUES ('77277780475121664', '496138616573952', '58480609315524608', null);
INSERT INTO `sys_role_permission` VALUES ('77277780483510272', '496138616573952', '61394706252173312', null);
INSERT INTO `sys_role_permission` VALUES ('77277780491898880', '496138616573952', '61417744146370560', null);
INSERT INTO `sys_role_permission` VALUES ('77277780496093184', '496138616573952', '76606430504816640', null);
INSERT INTO `sys_role_permission` VALUES ('77277780504481792', '496138616573952', '76914082455752704', null);
INSERT INTO `sys_role_permission` VALUES ('77277780508676097', '496138616573952', '76607201262702592', null);
INSERT INTO `sys_role_permission` VALUES ('77277780517064704', '496138616573952', '39915540965232640', null);
INSERT INTO `sys_role_permission` VALUES ('77277780525453312', '496138616573952', '41370251991977984', null);
INSERT INTO `sys_role_permission` VALUES ('77277780538036224', '496138616573952', '45264987354042368', null);
INSERT INTO `sys_role_permission` VALUES ('77277780546424832', '496138616573952', '45265487029866496', null);
INSERT INTO `sys_role_permission` VALUES ('77277780554813440', '496138616573952', '45265762415284224', null);
INSERT INTO `sys_role_permission` VALUES ('77277780559007744', '496138616573952', '45265886315024384', null);
INSERT INTO `sys_role_permission` VALUES ('77277780567396352', '496138616573952', '45266070000373760', null);
INSERT INTO `sys_role_permission` VALUES ('77277780571590656', '496138616573952', '41363147411427328', null);
INSERT INTO `sys_role_permission` VALUES ('77277780579979264', '496138616573952', '41363537456533504', null);
INSERT INTO `sys_role_permission` VALUES ('77277780588367872', '496138616573952', '41364927394353152', null);
INSERT INTO `sys_role_permission` VALUES ('77277780596756480', '496138616573952', '41371711400054784', null);
INSERT INTO `sys_role_permission` VALUES ('77277780605145088', '496138616573952', '41469219249852416', null);
INSERT INTO `sys_role_permission` VALUES ('77277780613533696', '496138616573952', '39916171171991552', null);
INSERT INTO `sys_role_permission` VALUES ('77277780621922304', '496138616573952', '39918482854252544', null);
INSERT INTO `sys_role_permission` VALUES ('77277780630310912', '496138616573952', '41373430515240960', null);
INSERT INTO `sys_role_permission` VALUES ('77277780718391296', '496138616573952', '41375330996326400', null);
INSERT INTO `sys_role_permission` VALUES ('77277780722585600', '496138616573952', '63741744973352960', null);
INSERT INTO `sys_role_permission` VALUES ('77277780730974208', '496138616573952', '42082442672082944', null);
INSERT INTO `sys_role_permission` VALUES ('77277780739362816', '496138616573952', '41376192166629376', null);
INSERT INTO `sys_role_permission` VALUES ('77277780747751424', '496138616573952', '41377034236071936', null);
INSERT INTO `sys_role_permission` VALUES ('77277780756140032', '496138616573952', '56911328312299520', null);
INSERT INTO `sys_role_permission` VALUES ('77277780764528640', '496138616573952', '41378916912336896', null);
INSERT INTO `sys_role_permission` VALUES ('77277780768722944', '496138616573952', '63482475359244288', null);
INSERT INTO `sys_role_permission` VALUES ('77277780772917249', '496138616573952', '64290663792906240', null);
INSERT INTO `sys_role_permission` VALUES ('77277780785500160', '496138616573952', '66790433014943744', null);
INSERT INTO `sys_role_permission` VALUES ('77277780789694464', '496138616573952', '42087054753927168', null);
INSERT INTO `sys_role_permission` VALUES ('77277780798083072', '496138616573952', '67027338952445952', null);
INSERT INTO `sys_role_permission` VALUES ('77277780806471680', '496138616573952', '67027909637836800', null);
INSERT INTO `sys_role_permission` VALUES ('77277780810665985', '496138616573952', '67042515441684480', null);
INSERT INTO `sys_role_permission` VALUES ('77277780823248896', '496138616573952', '67082402312228864', null);
INSERT INTO `sys_role_permission` VALUES ('77277780827443200', '496138616573952', '16392452747300864', null);
INSERT INTO `sys_role_permission` VALUES ('77277780835831808', '496138616573952', '16392767785668608', null);
INSERT INTO `sys_role_permission` VALUES ('77277780840026112', '496138616573952', '16438800255291392', null);
INSERT INTO `sys_role_permission` VALUES ('77277780844220417', '496138616573952', '16438962738434048', null);
INSERT INTO `sys_role_permission` VALUES ('77277780852609024', '496138616573952', '16439068543946752', null);
INSERT INTO `sys_role_permission` VALUES ('77277860062040064', '496138616573953', '5129710648430592', null);
INSERT INTO `sys_role_permission` VALUES ('77277860070428672', '496138616573953', '5129710648430593', null);
INSERT INTO `sys_role_permission` VALUES ('77277860078817280', '496138616573953', '40238597734928384', null);
INSERT INTO `sys_role_permission` VALUES ('77277860091400192', '496138616573953', '43117268627886080', null);
INSERT INTO `sys_role_permission` VALUES ('77277860099788800', '496138616573953', '57009744761589760', null);
INSERT INTO `sys_role_permission` VALUES ('77277860112371712', '496138616573953', '56309618086776832', null);
INSERT INTO `sys_role_permission` VALUES ('77277860120760320', '496138616573953', '44986029924421632', null);
INSERT INTO `sys_role_permission` VALUES ('77277860129148928', '496138616573953', '5129710648430594', null);
INSERT INTO `sys_role_permission` VALUES ('77277860141731840', '496138616573953', '5129710648430595', null);
INSERT INTO `sys_role_permission` VALUES ('77277860150120448', '496138616573953', '75002207560273920', null);
INSERT INTO `sys_role_permission` VALUES ('77277860158509056', '496138616573953', '58480609315524608', null);
INSERT INTO `sys_role_permission` VALUES ('77277860162703360', '496138616573953', '76606430504816640', null);
INSERT INTO `sys_role_permission` VALUES ('77277860171091968', '496138616573953', '76914082455752704', null);
INSERT INTO `sys_role_permission` VALUES ('77277860179480576', '496138616573953', '76607201262702592', null);
INSERT INTO `sys_role_permission` VALUES ('77277860187869184', '496138616573953', '39915540965232640', null);
INSERT INTO `sys_role_permission` VALUES ('77277860196257792', '496138616573953', '41370251991977984', null);
INSERT INTO `sys_role_permission` VALUES ('77277860204646400', '496138616573953', '41363147411427328', null);
INSERT INTO `sys_role_permission` VALUES ('77277860208840704', '496138616573953', '41371711400054784', null);
INSERT INTO `sys_role_permission` VALUES ('77277860213035009', '496138616573953', '39916171171991552', null);
INSERT INTO `sys_role_permission` VALUES ('77277860221423616', '496138616573953', '39918482854252544', null);
INSERT INTO `sys_role_permission` VALUES ('77277860225617920', '496138616573953', '41373430515240960', null);
INSERT INTO `sys_role_permission` VALUES ('77277860234006528', '496138616573953', '41375330996326400', null);
INSERT INTO `sys_role_permission` VALUES ('77277860242395136', '496138616573953', '63741744973352960', null);
INSERT INTO `sys_role_permission` VALUES ('77277860250783744', '496138616573953', '42082442672082944', null);
INSERT INTO `sys_role_permission` VALUES ('77277860254978048', '496138616573953', '41376192166629376', null);
INSERT INTO `sys_role_permission` VALUES ('77277860263366656', '496138616573953', '41377034236071936', null);
INSERT INTO `sys_role_permission` VALUES ('77277860271755264', '496138616573953', '56911328312299520', null);
INSERT INTO `sys_role_permission` VALUES ('77277860313698304', '496138616573953', '41378916912336896', null);
INSERT INTO `sys_role_permission` VALUES ('77277860322086912', '496138616573953', '63482475359244288', null);
INSERT INTO `sys_role_permission` VALUES ('77277860326281216', '496138616573953', '64290663792906240', null);
INSERT INTO `sys_role_permission` VALUES ('77277860334669824', '496138616573953', '66790433014943744', null);
INSERT INTO `sys_role_permission` VALUES ('77277860343058432', '496138616573953', '42087054753927168', null);
INSERT INTO `sys_role_permission` VALUES ('77277860347252736', '496138616573953', '67027338952445952', null);
INSERT INTO `sys_role_permission` VALUES ('77277860351447041', '496138616573953', '67027909637836800', null);
INSERT INTO `sys_role_permission` VALUES ('77277860359835648', '496138616573953', '67042515441684480', null);
INSERT INTO `sys_role_permission` VALUES ('77277860364029952', '496138616573953', '67082402312228864', null);
INSERT INTO `sys_role_permission` VALUES ('77277860368224256', '496138616573953', '16392452747300864', null);
INSERT INTO `sys_role_permission` VALUES ('77277860372418560', '496138616573953', '16392767785668608', null);
INSERT INTO `sys_role_permission` VALUES ('77277860376612865', '496138616573953', '16438800255291392', null);
INSERT INTO `sys_role_permission` VALUES ('77277860385001472', '496138616573953', '16438962738434048', null);
INSERT INTO `sys_role_permission` VALUES ('77277860389195776', '496138616573953', '16439068543946752', null);
INSERT INTO `sys_role_permission` VALUES ('7750f9be48ee09cd561fce718219a3e2', 'ee8626f80f7c2619917b6236f3a7f02b', '882a73768cfd7f78f3a37584f7299656', null);
INSERT INTO `sys_role_permission` VALUES ('78d20ce1047cabaa1af17f823571b432', 'e51758fa916c881624b046d26bd09230', '1367a93f2c410b169faa7abcbad2f77c', null);
INSERT INTO `sys_role_permission` VALUES ('799f64f72d56f12db2e957e6b76f6b78', 'f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', null);
INSERT INTO `sys_role_permission` VALUES ('7a5d31ba48fe3fb1266bf186dc5f7ba7', '52b0cf022ac4187b2a70dfa4f8b2d940', '58857ff846e61794c69208e9d3a85466', null);
INSERT INTO `sys_role_permission` VALUES ('7ab0c820bb1218f309612145a6a93c08', 'f6817f48af4fb3af11b9e8bf182f618b', '93d5cfb4448f11e9916698e7f462b4b6', null);
INSERT INTO `sys_role_permission` VALUES ('7ab2cc04495f48b83167456b79105eac', 'f6817f48af4fb3af11b9e8bf182f618b', 'a573bc208a7d9d45da26731b7675ac0f', null);
INSERT INTO `sys_role_permission` VALUES ('7d2ea745950be3357747ec7750c31c57', 'ee8626f80f7c2619917b6236f3a7f02b', '2a470fc0c3954d9dbb61de6d80846549', null);
INSERT INTO `sys_role_permission` VALUES ('7d5aeadeb0f6ae88835d8f8967c61be4', 'e51758fa916c881624b046d26bd09230', '08e6b9dc3c04489c8e1ff2ce6f105aa4', null);
INSERT INTO `sys_role_permission` VALUES ('7db6ebcbc9e32af61bb810c924a910cc', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'f60d6a2f8c84aa05850b4d4c5f11feec', null);
INSERT INTO `sys_role_permission` VALUES ('7de42bdc0b8c5446b7d428c66a7abc12', '52b0cf022ac4187b2a70dfa4f8b2d940', '54dd5457a3190740005c1bfec55b1c34', null);
INSERT INTO `sys_role_permission` VALUES ('7e19d90cec0dd87aaef351b9ff8f4902', '646c628b2b8295fbdab2d34044de0354', 'f9d3f4f27653a71c52faa9fb8070fbe7', null);
INSERT INTO `sys_role_permission` VALUES ('7eb952e5a63e59a52ca8e7e001a43b3e', 'f6817f48af4fb3af11b9e8bf182f618b', '05b3c82ddb2536a4a5ee1a4c46b5abef', null);
INSERT INTO `sys_role_permission` VALUES ('7f862c47003eb20e8bad05f506371f92', 'ee8626f80f7c2619917b6236f3a7f02b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', null);
INSERT INTO `sys_role_permission` VALUES ('80a7a60f31eafced79d5b2c59e3c06e9', 'f6817f48af4fb3af11b9e8bf182f618b', '8b3bff2eee6f1939147f5c68292a1642', null);
INSERT INTO `sys_role_permission` VALUES ('80f711358d30bc54ee57edbcf27d0c24', 'f6817f48af4fb3af11b9e8bf182f618b', 'd86f58e7ab516d3bc6bfb1fe10585f97', null);
INSERT INTO `sys_role_permission` VALUES ('81d3244230beaf5b66ae17bf5148c1d3', 'f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('82e0331fe442310bde6256c23f60f565', 'f6817f48af4fb3af11b9e8bf182f618b', '841057b8a1bef8f6b4b20f9a618a7fa6', null);
INSERT INTO `sys_role_permission` VALUES ('83f704524b21b6a3ae324b8736c65333', 'ee8626f80f7c2619917b6236f3a7f02b', '7ac9eb9ccbde2f7a033cd4944272bf1e', null);
INSERT INTO `sys_role_permission` VALUES ('84a81dc3c0ab092c0177c3176b6a6ab2', 'f6817f48af4fb3af11b9e8bf182f618b', 'aedbf679b5773c1f25e9f7b10111da73', null);
INSERT INTO `sys_role_permission` VALUES ('84d32474316a43b01256d6644e6e7751', 'ee8626f80f7c2619917b6236f3a7f02b', 'ec8d607d0156e198b11853760319c646', null);
INSERT INTO `sys_role_permission` VALUES ('854e568ba7f0b94210d2235e9a2bbaeb', 'e051d7566cee545be4e5543bae061122', '717f6bee46f44a3897eca9abd6e2ec44', null);
INSERT INTO `sys_role_permission` VALUES ('857a1caae11a6135397242da499f3a1f', 'f6817f48af4fb3af11b9e8bf182f618b', '6ad53fd1b220989a8b71ff482d683a5a', null);
INSERT INTO `sys_role_permission` VALUES ('8703a2410cddb713c33232ce16ec04b9', 'ee8626f80f7c2619917b6236f3a7f02b', '1367a93f2c410b169faa7abcbad2f77c', null);
INSERT INTO `sys_role_permission` VALUES ('885c1a827383e5b2c6c4f8ca72a7b493', 'ee8626f80f7c2619917b6236f3a7f02b', '4148ec82b6acd69f470bea75fe41c357', null);
INSERT INTO `sys_role_permission` VALUES ('8a4cb14982d0c832226a3c7282c1d073', 'f6817f48af4fb3af11b9e8bf182f618b', '765dd244f37b804e3d00f475fd56149b', null);
INSERT INTO `sys_role_permission` VALUES ('8a5af8db321c36dcc20ac6139dd4cb82', 'f6817f48af4fb3af11b9e8bf182f618b', '9a90363f216a6a08f32eecb3f0bf12a3', null);
INSERT INTO `sys_role_permission` VALUES ('8a60df8d8b4c9ee5fa63f48aeee3ec00', '1750a8fb3e6d90cb7957c02de1dc8e59', 'd7d6e2e4e2934f2c9385a623fd98c6f3', null);
INSERT INTO `sys_role_permission` VALUES ('8b153d3d948df0e647e17c5846d865eb', 'e51758fa916c881624b046d26bd09230', '4148ec82b6acd69f470bea75fe41c357', null);
INSERT INTO `sys_role_permission` VALUES ('8b1e326791375f325d3e6b797753b65e', 'ee8626f80f7c2619917b6236f3a7f02b', '2dbbafa22cda07fa5d169d741b81fe12', null);
INSERT INTO `sys_role_permission` VALUES ('8c5537b63f4c8a10cfbf605101be395a', 'f6817f48af4fb3af11b9e8bf182f618b', 'e08cb190ef230d5d4f03824198773950', null);
INSERT INTO `sys_role_permission` VALUES ('8ce1022dac4e558ff9694600515cf510', '1750a8fb3e6d90cb7957c02de1dc8e59', '08e6b9dc3c04489c8e1ff2ce6f105aa4', null);
INSERT INTO `sys_role_permission` VALUES ('8d848ca7feec5b7ebb3ecb32b2c8857a', '52b0cf022ac4187b2a70dfa4f8b2d940', '4148ec82b6acd69f470bea75fe41c357', null);
INSERT INTO `sys_role_permission` VALUES ('8db9e1f9f76b1d08fd9060c269b200c3', 'f6817f48af4fb3af11b9e8bf182f618b', '8fea49daff96a1c8eb3f9ce7c2c1011b', null);
INSERT INTO `sys_role_permission` VALUES ('8eec2c510f1ac9c5eee26c041b1f00ca', 'ee8626f80f7c2619917b6236f3a7f02b', '58857ff846e61794c69208e9d3a85466', null);
INSERT INTO `sys_role_permission` VALUES ('8efa5142cc809c17fd3c24c460aabfb1', 'f6817f48af4fb3af11b9e8bf182f618b', 'baf16b7174bd821b6bab23fa9abb200d', null);
INSERT INTO `sys_role_permission` VALUES ('8f762ff80253f634b08cf59a77742ba4', 'ee8626f80f7c2619917b6236f3a7f02b', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('903b790e6090414343502c6dc393b7c9', 'ee8626f80f7c2619917b6236f3a7f02b', 'de13e0f6328c069748de7399fcc1dbbd', null);
INSERT INTO `sys_role_permission` VALUES ('908ba7f28d0eb4fbc715b9ae02cf434d', 'f6817f48af4fb3af11b9e8bf182f618b', '4f84f9400e5e92c95f05b554724c2b58', null);
INSERT INTO `sys_role_permission` VALUES ('90996d56357730e173e636b99fc48bea', 'ee8626f80f7c2619917b6236f3a7f02b', 'fb07ca05a3e13674dbf6d3245956da2e', null);
INSERT INTO `sys_role_permission` VALUES ('90e1c607a0631364eec310f3cc4acebd', 'ee8626f80f7c2619917b6236f3a7f02b', '4f66409ef3bbd69c1d80469d6e2a885e', null);
INSERT INTO `sys_role_permission` VALUES ('922d443da388fc7fa71812d013f90769', 'f6817f48af4fb3af11b9e8bf182f618b', 'f9d3f4f27653a71c52faa9fb8070fbe7', null);
INSERT INTO `sys_role_permission` VALUES ('924675cff35debab62cb40717dc33918', 'f6817f48af4fb3af11b9e8bf182f618b', '03dc3d93261dda19fc86dd7ca486c6cf', null);
INSERT INTO `sys_role_permission` VALUES ('9264104cee9b10c96241d527b2d0346d', '1750a8fb3e6d90cb7957c02de1dc8e59', '54dd5457a3190740005c1bfec55b1c34', null);
INSERT INTO `sys_role_permission` VALUES ('92cc0b9500f4130865c394a6f55a5adf', 'e051d7566cee545be4e5543bae061122', 'a573bc208a7d9d45da26731b7675ac0f', null);
INSERT INTO `sys_role_permission` VALUES ('94c36e964f34171aa34af640eb5626ed', 'f6817f48af4fb3af11b9e8bf182f618b', 'ec8d607d0156e198b11853760319c646', null);
INSERT INTO `sys_role_permission` VALUES ('950e2b66ea8d40b5575804ae79ae3df4', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'd86f58e7ab516d3bc6bfb1fe10585f97', null);
INSERT INTO `sys_role_permission` VALUES ('9511ce886c43204f9e4e29c02827db18', 'f6817f48af4fb3af11b9e8bf182f618b', '1939e035e803a99ceecb6f5563570fb2', null);
INSERT INTO `sys_role_permission` VALUES ('953ab2c5433d2a6200663e5d2124b11a', 'f6817f48af4fb3af11b9e8bf182f618b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', null);
INSERT INTO `sys_role_permission` VALUES ('95f396d9a9b883be50804499b670417c', 'f6817f48af4fb3af11b9e8bf182f618b', 'f0675b52d89100ee88472b6800754a08', null);
INSERT INTO `sys_role_permission` VALUES ('96339a6881f124871b3a4c7dee7c4c59', 'f6817f48af4fb3af11b9e8bf182f618b', '1dad65681edc13245476c5c907acf6c8', null);
INSERT INTO `sys_role_permission` VALUES ('98e3f8af527fc41aae4405a22a3a5fbb', 'e51758fa916c881624b046d26bd09230', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('98f02353f91dd569e3c6b8fd6b4f4034', 'ee8626f80f7c2619917b6236f3a7f02b', '6531cf3421b1265aeeeabaab5e176e6d', null);
INSERT INTO `sys_role_permission` VALUES ('98f3862944ee96e7c802ba41cc06675a', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'c0e9c45a951ce895e12d99ec9dfad3ef', null);
INSERT INTO `sys_role_permission` VALUES ('99598aa101e4557b89c330f96273938b', 'f6817f48af4fb3af11b9e8bf182f618b', 'f1cb187abf927c88b89470d08615f5ac', null);
INSERT INTO `sys_role_permission` VALUES ('9a0da7f612e03a5d2d8f86bd29780381', 'f6817f48af4fb3af11b9e8bf182f618b', '732d48f8e0abe99fe6a23d18a3171cd1', null);
INSERT INTO `sys_role_permission` VALUES ('9aa479670ce28fff707d8b49da7c8c41', 'e51758fa916c881624b046d26bd09230', 'd2bbf9ebca5a8fa2e227af97d2da7548', null);
INSERT INTO `sys_role_permission` VALUES ('9b0df21e882fc70e83797c6f81f5ec3a', 'f6817f48af4fb3af11b9e8bf182f618b', 'de13e0f6328c069748de7399fcc1dbbd', null);
INSERT INTO `sys_role_permission` VALUES ('9b9dbd55d6b8602ad2a90b53256c6903', 'f6817f48af4fb3af11b9e8bf182f618b', 'fef097f3903caf3a3c3a6efa8de43fbb', null);
INSERT INTO `sys_role_permission` VALUES ('9c2692b894a079ea8f0e6174bde153dd', 'f6817f48af4fb3af11b9e8bf182f618b', '2a470fc0c3954d9dbb61de6d80846549', null);
INSERT INTO `sys_role_permission` VALUES ('9d8772c310b675ae43eacdbc6c7fa04a', 'a799c3b1b12dd3ed4bd046bfaef5fe6e', '1663f3faba244d16c94552f849627d84', null);
INSERT INTO `sys_role_permission` VALUES ('9e2dbafeb10240aec97e49256e1828c2', 'f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', null);
INSERT INTO `sys_role_permission` VALUES ('9f25ce40a1705ea8faeb153979efac9a', 'f6817f48af4fb3af11b9e8bf182f618b', 'b3c824fc22bd953e2eb16ae6914ac8f9', null);
INSERT INTO `sys_role_permission` VALUES ('9f8311ecccd44e079723098cf2ffe1cc', '1750a8fb3e6d90cb7957c02de1dc8e59', '693ce69af3432bd00be13c3971a57961', null);
INSERT INTO `sys_role_permission` VALUES ('a098e2acc3f90316f161f6648d085640', 'ee8626f80f7c2619917b6236f3a7f02b', 'e6bfd1fcabfd7942fdd05f076d1dad38', null);
INSERT INTO `sys_role_permission` VALUES ('a1c7e593407b0197b5e17b3d0e218624', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'e034057d41c2af8b1b8cf120e22081b4', null);
INSERT INTO `sys_role_permission` VALUES ('a2a0eb06533cec2f1ed769660ea93a24', 'f6817f48af4fb3af11b9e8bf182f618b', '4875ebe289344e14844d8e3ea1edd73f', null);
INSERT INTO `sys_role_permission` VALUES ('a2a31bbdb19fbf2f2ed6c91f586525bc', 'f6817f48af4fb3af11b9e8bf182f618b', '6531cf3421b1265aeeeabaab5e176e6d', null);
INSERT INTO `sys_role_permission` VALUES ('a3af664a9142e35e282121cc503c84e4', 'e51758fa916c881624b046d26bd09230', 'c6cf95444d80435eb37b2f9db3971ae6', null);
INSERT INTO `sys_role_permission` VALUES ('a3de92abe571a3ea758caba00a180676', 'e51758fa916c881624b046d26bd09230', '6ad53fd1b220989a8b71ff482d683a5a', null);
INSERT INTO `sys_role_permission` VALUES ('a40f4d4d75b965e6d2aea125fe6297e7', 'f6817f48af4fb3af11b9e8bf182f618b', '54097c6a3cf50fad0793a34beff1efdf', null);
INSERT INTO `sys_role_permission` VALUES ('a5bc1de83b724f297b24580fdb34a6a0', 'e51758fa916c881624b046d26bd09230', 'd86f58e7ab516d3bc6bfb1fe10585f97', null);
INSERT INTO `sys_role_permission` VALUES ('a5f7ae46599eb10f28357ce3b97b5ab6', 'c7af591c52c40efebbe2c9d79669d8d6', '936337f825ab463b1802675ea507f2dd', null);
INSERT INTO `sys_role_permission` VALUES ('a66feaaf128417ad762e946abccf27ec', 'ee8626f80f7c2619917b6236f3a7f02b', 'c6cf95444d80435eb37b2f9db3971ae6', null);
INSERT INTO `sys_role_permission` VALUES ('a7ab87eac0f8fafa2efa4b1f9351923f', 'ee8626f80f7c2619917b6236f3a7f02b', 'fedfbf4420536cacc0218557d263dfea', null);
INSERT INTO `sys_role_permission` VALUES ('a83760d5fc33ac1927a2ff1097f7594c', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', '27bfda993d9eb099ebca8de74ae4034c', null);
INSERT INTO `sys_role_permission` VALUES ('a88cd67bf2412a5acdf8ff737f75e948', 'c7af591c52c40efebbe2c9d79669d8d6', 'd4994f4221a085944bcf1649e0e43e1d', null);
INSERT INTO `sys_role_permission` VALUES ('ab4e245937b662f9949dc9ff4f28e0d1', 'f6817f48af4fb3af11b9e8bf182f618b', 'c89018ea6286e852b424466fd92a2ffc', null);
INSERT INTO `sys_role_permission` VALUES ('ab90c63bc706f5483731d49b18e374b5', 'f6817f48af4fb3af11b9e8bf182f618b', 'c6cf95444d80435eb37b2f9db3971ae6', null);
INSERT INTO `sys_role_permission` VALUES ('abdc324a2df9f13ee6e73d44c6e62bc8', 'ee8626f80f7c2619917b6236f3a7f02b', 'f1cb187abf927c88b89470d08615f5ac', null);
INSERT INTO `sys_role_permission` VALUES ('ac68b8ea9f37074d97f6eaa3f773bef6', 'f6817f48af4fb3af11b9e8bf182f618b', 'fedfbf4420536cacc0218557d263dfea', null);
INSERT INTO `sys_role_permission` VALUES ('aea07d8fd10c71095756405b27a2207d', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'a573bc208a7d9d45da26731b7675ac0f', null);
INSERT INTO `sys_role_permission` VALUES ('aefc8c22e061171806e59cd222f6b7e1', '52b0cf022ac4187b2a70dfa4f8b2d940', 'e8af452d8948ea49d37c934f5100ae6a', null);
INSERT INTO `sys_role_permission` VALUES ('af0dfdda38e6781bef729c2bec5ebbc1', 'f6817f48af4fb3af11b9e8bf182f618b', '936337f825ab463b1802675ea507f2dd', null);
INSERT INTO `sys_role_permission` VALUES ('af366cc6c0cad51c144516e2cd217d88', 'f6817f48af4fb3af11b9e8bf182f618b', 'd07a2c87a451434c99ab06296727ec4f', null);
INSERT INTO `sys_role_permission` VALUES ('b12e8dc4cc2397110899c91644a03dbf', 'f6817f48af4fb3af11b9e8bf182f618b', 'ffb423d25cc59dcd0532213c4a518261', null);
INSERT INTO `sys_role_permission` VALUES ('b131ebeafcfd059f3c7e542606ea9ff5', 'ee8626f80f7c2619917b6236f3a7f02b', 'e5973686ed495c379d829ea8b2881fc6', null);
INSERT INTO `sys_role_permission` VALUES ('b2b2dcfff6986d3d7f890ea62d474651', 'ee8626f80f7c2619917b6236f3a7f02b', '200006f0edf145a2b50eacca07585451', null);
INSERT INTO `sys_role_permission` VALUES ('b3b55672ab38ca80e9b782320cbd818d', 'f6817f48af4fb3af11b9e8bf182f618b', '6a4f21c29bb65d49e29090ad8997729a', null);
INSERT INTO `sys_role_permission` VALUES ('b495a46fa0e0d4637abe0db7fd12fe1a', 'ee8626f80f7c2619917b6236f3a7f02b', '717f6bee46f44a3897eca9abd6e2ec44', null);
INSERT INTO `sys_role_permission` VALUES ('b59e743562b6fac9168237d2ccb03637', 'e51758fa916c881624b046d26bd09230', '2a470fc0c3954d9dbb61de6d80846549', null);
INSERT INTO `sys_role_permission` VALUES ('b679637b71dcda776d70174dacd8550f', 'f6817f48af4fb3af11b9e8bf182f618b', '882a73768cfd7f78f3a37584f7299656', null);
INSERT INTO `sys_role_permission` VALUES ('b91d8a5825eb8541e811f1b97309b707', 'f6817f48af4fb3af11b9e8bf182f618b', 'd4994f4221a085944bcf1649e0e43e1d', null);
INSERT INTO `sys_role_permission` VALUES ('ba5dd0551d68bc005eab4ede8c732e1e', 'e51758fa916c881624b046d26bd09230', 'a44c30db536349e91106223957e684eb', null);
INSERT INTO `sys_role_permission` VALUES ('bb45fa132674659081e41abe55867529', 'f6817f48af4fb3af11b9e8bf182f618b', 'e8af452d8948ea49d37c934f5100ae6a', null);
INSERT INTO `sys_role_permission` VALUES ('bbad5bb55846c458bf88f413db7993e8', 'f6817f48af4fb3af11b9e8bf182f618b', 'cc50656cf9ca528e6f2150eba4714ad2', null);
INSERT INTO `sys_role_permission` VALUES ('bc195c53f6c7fdf3730fb83f13f4fa6a', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', 'd4994f4221a085944bcf1649e0e43e1d', null);
INSERT INTO `sys_role_permission` VALUES ('bc56fb989bb0858ea45173b7a08fad0f', 'f6817f48af4fb3af11b9e8bf182f618b', '8fb8172747a78756c11916216b8b8066', null);
INSERT INTO `sys_role_permission` VALUES ('bcc97fa56744b26baf0525389a78b68e', 'f6817f48af4fb3af11b9e8bf182f618b', '7fce51c4c3d7d48ea1cad9a021a2ea79', null);
INSERT INTO `sys_role_permission` VALUES ('bda54a5803117ce07fba5e2f297926e9', 'e51758fa916c881624b046d26bd09230', '882a73768cfd7f78f3a37584f7299656', null);
INSERT INTO `sys_role_permission` VALUES ('beed239c61f8ce1b4f34093bc48c3b2b', 'e051d7566cee545be4e5543bae061122', '7fce51c4c3d7d48ea1cad9a021a2ea79', null);
INSERT INTO `sys_role_permission` VALUES ('bef136ab6de810d4e249e0d23ce669a0', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', '9502685863ab87f0ad1134142788a385', null);
INSERT INTO `sys_role_permission` VALUES ('bf56d745a15cffef6d71563d8edad360', 'e051d7566cee545be4e5543bae061122', '7ddba8256334edc203fd7aa2ab4b6777', null);
INSERT INTO `sys_role_permission` VALUES ('c280b22fbec3fe44cacc33468f877cfc', 'f6817f48af4fb3af11b9e8bf182f618b', 'ae4fed059f67086fd52a73d913cf473d', null);
INSERT INTO `sys_role_permission` VALUES ('c3f8c7d5dd5ae2a7e1515633f9a198cd', 'c7af591c52c40efebbe2c9d79669d8d6', '681c1f59c7badec0ae8ba2285201ae25', null);
INSERT INTO `sys_role_permission` VALUES ('c40e83050c28ada5c20da738d22a3a67', 'f6817f48af4fb3af11b9e8bf182f618b', '717f6bee46f44a3897eca9abd6e2ec44', null);
INSERT INTO `sys_role_permission` VALUES ('c6920718108a87d5c4e7d2c1ad61ddf8', 'f6817f48af4fb3af11b9e8bf182f618b', '00a2a0ae65cdca5e93209cdbde97cbe6', null);
INSERT INTO `sys_role_permission` VALUES ('c7fc24b31383fdb2374cbe1c175d9703', 'f6817f48af4fb3af11b9e8bf182f618b', '73678f9daa45ed17a3674131b03432fb', null);
INSERT INTO `sys_role_permission` VALUES ('c8571839e6b14796e661f3e2843b80b6', 'ee8626f80f7c2619917b6236f3a7f02b', '45c966826eeff4c99b8f8ebfe74511fc', null);
INSERT INTO `sys_role_permission` VALUES ('c8a7f159e01851dab277fffc5b2e2302', 'e51758fa916c881624b046d26bd09230', 'b4dfc7d5dd9e8d5b6dd6d4579b1aa559', null);
INSERT INTO `sys_role_permission` VALUES ('c9585698f6ad8037f986cdac32daf7b6', 'e51758fa916c881624b046d26bd09230', '45c966826eeff4c99b8f8ebfe74511fc', null);
INSERT INTO `sys_role_permission` VALUES ('cb0791451c0cd6dda1594ebf3b58e4a0', 'f6817f48af4fb3af11b9e8bf182f618b', '7d08d3885671cf0ff1c4fe5d82fcd0e2', null);
INSERT INTO `sys_role_permission` VALUES ('cb4a006888e1dec30592a503e95bc80b', 'f6817f48af4fb3af11b9e8bf182f618b', '6e73eb3c26099c191bf03852ee1310a1', null);
INSERT INTO `sys_role_permission` VALUES ('cc83b9cc5c8d0dbae26714e292426d79', 'e51758fa916c881624b046d26bd09230', '4f66409ef3bbd69c1d80469d6e2a885e', null);
INSERT INTO `sys_role_permission` VALUES ('cdd4ca53e78f7624a68f416c446cf707', 'f6817f48af4fb3af11b9e8bf182f618b', '7245219111bcb802b11602d80fb1ba1f', null);
INSERT INTO `sys_role_permission` VALUES ('d3001e1ad7b1e42404d6f6e94d3e567d', 'f6817f48af4fb3af11b9e8bf182f618b', 'e5973686ed495c379d829ea8b2881fc6', null);
INSERT INTO `sys_role_permission` VALUES ('d3fe195d59811531c05d31d8436f5c8b', '1750a8fb3e6d90cb7957c02de1dc8e59', 'e8af452d8948ea49d37c934f5100ae6a', null);
INSERT INTO `sys_role_permission` VALUES ('d4467358019d40a59eb4fd5094524d2d', 'f6817f48af4fb3af11b9e8bf182f618b', 'a2b11669e98c5fe54a53c3e3c4f35d14', null);
INSERT INTO `sys_role_permission` VALUES ('d4e268f9cb3570152211fbb50f662e8c', 'f6817f48af4fb3af11b9e8bf182f618b', 'fb07ca05a3e13674dbf6d3245956da2e', null);
INSERT INTO `sys_role_permission` VALUES ('d5401ef9586d46153b346a0ad105f686', 'e51758fa916c881624b046d26bd09230', 'a400e4f4d54f79bf5ce160a3432231af', null);
INSERT INTO `sys_role_permission` VALUES ('d5e06bd42c373b3ca8f3acb08f9d5165', 'e51758fa916c881624b046d26bd09230', '6e73eb3c26099c191bf03852ee1310a1', null);
INSERT INTO `sys_role_permission` VALUES ('d832d884ae8a9ee6731d5a5a84d7de30', 'c7af591c52c40efebbe2c9d79669d8d6', '27bfda993d9eb099ebca8de74ae4034c', null);
INSERT INTO `sys_role_permission` VALUES ('da7b852e2ad64f0b37cc20b2214f8cd8', 'f6817f48af4fb3af11b9e8bf182f618b', 'fb367426764077dcf94640c843733985', null);
INSERT INTO `sys_role_permission` VALUES ('db90f79102d184f11b9b9fdee5935c6a', 'f6817f48af4fb3af11b9e8bf182f618b', '27bfda993d9eb099ebca8de74ae4034c', null);
INSERT INTO `sys_role_permission` VALUES ('dc1ddcc8f40798ad2ee2947784637969', 'c7af591c52c40efebbe2c9d79669d8d6', 'c0e9c45a951ce895e12d99ec9dfad3ef', null);
INSERT INTO `sys_role_permission` VALUES ('dce3d203620afa3489fff58144abc6da', 'f6817f48af4fb3af11b9e8bf182f618b', 'a400e4f4d54f79bf5ce160a3432231af', null);
INSERT INTO `sys_role_permission` VALUES ('df2ae6ca99ebb3b5b2feaaff28a985d5', 'f6817f48af4fb3af11b9e8bf182f618b', 'd9d49002031b34528459bfee56bdecb0', null);
INSERT INTO `sys_role_permission` VALUES ('e23b903153f5826ab98c82827fd1573f', 'f6817f48af4fb3af11b9e8bf182f618b', '91c23960fab49335831cf43d820b0a61', null);
INSERT INTO `sys_role_permission` VALUES ('e258ca8bf7ee168b93bfee739668eb15', 'ee8626f80f7c2619917b6236f3a7f02b', 'fb367426764077dcf94640c843733985', null);
INSERT INTO `sys_role_permission` VALUES ('e339f7db7418a4fd2bd2c113f1182186', 'ee8626f80f7c2619917b6236f3a7f02b', 'b1cb0a3fedf7ed0e4653cb5a229837ee', null);
INSERT INTO `sys_role_permission` VALUES ('e3e922673f4289b18366bb51b6200f17', '52b0cf022ac4187b2a70dfa4f8b2d940', '45c966826eeff4c99b8f8ebfe74511fc', null);
INSERT INTO `sys_role_permission` VALUES ('e74e43cea7f0e2f363334738d83c2112', 'f6817f48af4fb3af11b9e8bf182f618b', 'edfa74d66e8ea63ea432c2910837b150', null);
INSERT INTO `sys_role_permission` VALUES ('e93e517907e2c8796e7c3c02433107ce', 'f6817f48af4fb3af11b9e8bf182f618b', 'a1d93e18108f7eae12763e0c5aab1152', null);
INSERT INTO `sys_role_permission` VALUES ('ea3f5ed650190df225a112bebadf3c24', 'f6817f48af4fb3af11b9e8bf182f618b', 'e034057d41c2af8b1b8cf120e22081b4', null);
INSERT INTO `sys_role_permission` VALUES ('ee98de0db1c93d0edb5951ab2293cf85', 'd6bd7bca1f3bc5beff80cce9fc72c6f4', '717f6bee46f44a3897eca9abd6e2ec44', null);
INSERT INTO `sys_role_permission` VALUES ('f0d9750df1ae0a7cc53d364420c36b34', 'f6817f48af4fb3af11b9e8bf182f618b', 'c431130c0bc0ec71b0a5be37747bb36a', null);
INSERT INTO `sys_role_permission` VALUES ('f17ab8ad1e71341140857ef4914ef297', '21c5a3187763729408b40afb0d0fdfa8', '732d48f8e0abe99fe6a23d18a3171cd1', null);
INSERT INTO `sys_role_permission` VALUES ('f17e93e0700143a1ea61c26bcdd62998', 'f6817f48af4fb3af11b9e8bf182f618b', '8d1ebd663688965f1fd86a2f0ead3416', null);
INSERT INTO `sys_role_permission` VALUES ('f46a00b68dca883868ecc2655b54cc20', 'f6817f48af4fb3af11b9e8bf182f618b', '1367a93f2c410b169faa7abcbad2f77c', null);
INSERT INTO `sys_role_permission` VALUES ('f5e5fa34b79d86e82f28c41ea3adbef1', 'f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', null);
INSERT INTO `sys_role_permission` VALUES ('f9822263859fc5be6d9e66a9c27edbc9', 'f6817f48af4fb3af11b9e8bf182f618b', '8d4683aacaa997ab86b966b464360338', null);
INSERT INTO `sys_role_permission` VALUES ('f992c87aafcdc5691b6cb4908dc313ed', 'f6817f48af4fb3af11b9e8bf182f618b', 'c0e9c45a951ce895e12d99ec9dfad3ef', null);
INSERT INTO `sys_role_permission` VALUES ('fb5062ffa7ec0e73be0ef5339b99103d', 'e051d7566cee545be4e5543bae061122', 'f60d6a2f8c84aa05850b4d4c5f11feec', null);
INSERT INTO `sys_role_permission` VALUES ('fcefc8a67bc4cdb0ed3f29c722cbaf8e', 'f6817f48af4fb3af11b9e8bf182f618b', '58857ff846e61794c69208e9d3a85466', null);
INSERT INTO `sys_role_permission` VALUES ('fd86f6b08eb683720ba499f9d9421726', 'ee8626f80f7c2619917b6236f3a7f02b', '693ce69af3432bd00be13c3971a57961', null);
INSERT INTO `sys_role_permission` VALUES ('feb552e93ee82022354734bf8476edbe', 'f6817f48af4fb3af11b9e8bf182f618b', 'e292903e1ca3d06a2d6b3c2bd0920765', null);
INSERT INTO `sys_role_permission` VALUES ('fed41a4671285efb266cd404f24dd378', '52b0cf022ac4187b2a70dfa4f8b2d940', '00a2a0ae65cdca5e93209cdbde97cbe6', null);
INSERT INTO `sys_role_permission` VALUES ('ffbf87d891c346d3434e06a88af5d149', 'c7af591c52c40efebbe2c9d79669d8d6', 'a1e5d86359a0720c9bec0bac03add602', null);

-- ----------------------------
-- Table structure for sys_sms
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms`;
CREATE TABLE `sys_sms` (
  `id` varchar(32) NOT NULL COMMENT 'ID',
  `es_title` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `es_type` varchar(1) DEFAULT NULL COMMENT '发送方式：1短信 2邮件 3微信',
  `es_receiver` varchar(50) DEFAULT NULL COMMENT '接收人',
  `es_param` varchar(1000) DEFAULT NULL COMMENT '发送所需参数Json格式',
  `es_content` longtext COMMENT '推送内容',
  `es_send_time` datetime DEFAULT NULL COMMENT '推送时间',
  `es_send_status` varchar(1) DEFAULT NULL COMMENT '推送状态 0未推送 1推送成功 2推送失败 -1失败不再发送',
  `es_send_num` int(11) DEFAULT NULL COMMENT '发送次数 超过5次不再发送',
  `es_result` varchar(255) DEFAULT NULL COMMENT '推送失败原因',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  KEY `index_type` (`es_type`) USING BTREE,
  KEY `index_receiver` (`es_receiver`) USING BTREE,
  KEY `index_sendtime` (`es_send_time`) USING BTREE,
  KEY `index_status` (`es_send_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sms
-- ----------------------------
INSERT INTO `sys_sms` VALUES ('402880e74dc2f361014dc2f8411e0001', '消息推送测试333', '2', '411944058@qq.com', null, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2015-06-05 17:06:01', '3', null, null, '认证失败错误的用户名或者密码', 'admin', '2015-06-05 17:05:59', 'admin', '2015-11-19 22:30:39');
INSERT INTO `sys_sms` VALUES ('402880ea533647b00153364e74770001', '发个问候', '3', 'admin', null, '你好', '2016-03-02 00:00:00', '2', null, null, null, 'admin', '2016-03-02 15:50:24', 'admin', '2018-07-05 19:53:01');
INSERT INTO `sys_sms` VALUES ('402880ee5a17e711015a17f3188e013f', '消息推送测试333', '2', '411944058@qq.com', null, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', null, '2', null, null, null, 'admin', '2017-02-07 17:41:31', 'admin', '2017-03-10 11:37:05');
INSERT INTO `sys_sms` VALUES ('402880f05ab649b4015ab64b9cd80012', '消息推送测试333', '2', '411944058@qq.com', null, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2017-11-16 15:58:15', '3', null, null, null, 'admin', '2017-03-10 11:38:13', 'admin', '2017-07-31 17:24:54');
INSERT INTO `sys_sms` VALUES ('402880f05ab7b035015ab7c4462c0004', '消息推送测试333', '2', '411944058@qq.com', null, '张三你好，你的订单4028d881436d514601436d521ae80165已付款!', '2017-11-16 15:58:15', '3', null, null, null, 'admin', '2017-03-10 18:29:37', null, null);
INSERT INTO `sys_sms` VALUES ('402881f3646a472b01646a4a5af00001', '催办：HR审批', '3', 'admin', null, 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2018-07-05 19:53:35', '2', null, null, null, 'admin', '2018-07-05 19:53:35', 'admin', '2018-07-07 13:45:24');
INSERT INTO `sys_sms` VALUES ('402881f3647da06c01647da43a940014', '催办：HR审批', '3', 'admin', null, 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2018-07-09 14:04:32', '2', null, null, null, 'admin', '2018-07-09 14:04:32', 'admin', '2018-07-09 18:51:30');
INSERT INTO `sys_sms` VALUES ('c0f7f27f65a5678961306eb0364c05cd', '催办：HR审批', '2', '445654970@qq.com', '{\"taskName\":\"HR审批\",\"userName\":\"admin\"}', 'admin，您好！\r\n请前待办任务办理事项！HR审批\r\n\r\n\r\n===========================\r\n此消息由系统发出', '2019-04-12 20:51:28', '0', '0', null, null, 'admin', '2019-04-12 20:51:28', null, null);

-- ----------------------------
-- Table structure for sys_sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_sms_template`;
CREATE TABLE `sys_sms_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `template_name` varchar(50) DEFAULT NULL COMMENT '模板标题',
  `template_code` varchar(32) NOT NULL COMMENT '模板CODE',
  `template_type` varchar(1) NOT NULL COMMENT '模板类型：1短信 2邮件 3微信',
  `template_content` varchar(1000) NOT NULL COMMENT '模板内容',
  `template_test_json` varchar(1000) DEFAULT NULL COMMENT '模板测试json',
  `create_time` datetime DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人登录名称',
  `update_time` datetime DEFAULT NULL COMMENT '更新日期',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人登录名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_templatecode` (`template_code`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sms_template
-- ----------------------------
INSERT INTO `sys_sms_template` VALUES ('4028608164691b000164693108140003', '催办：${taskName}', 'SYS001', '2', '${userName}，您好！\r\n请前待办任务办理事项！${taskName}\r\n\r\n\r\n===========================\r\n此消息由系统发出', '{\r\n\"taskName\":\"HR审批\",\r\n\"userName\":\"admin\"\r\n}', '2018-07-05 14:46:18', 'admin', '2018-07-05 18:31:34', 'admin');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `username` varchar(100) DEFAULT NULL COMMENT '登录账号',
  `realname` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `status` int(2) DEFAULT NULL COMMENT '状态(1：正常  2：冻结 ）',
  `del_flag` varchar(1) DEFAULT NULL COMMENT '删除状态（0，正常，1已删除）',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `audit` varchar(1) DEFAULT NULL COMMENT '注册审核（1，未审核，2审核通过）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_user_name` (`username`) USING BTREE,
  KEY `index_user_status` (`status`) USING BTREE,
  KEY `index_user_del_flag` (`del_flag`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('795de980318b4a329bc6d3b05049d83b', 'minilead', 'minilead', '8aba395eb0f522a2fb0b8c4c658a8198', 'i49LxGFQ', 'user/20190524/user_1558683221038.jpg', '2019-05-24 00:00:00', '1', '17843164100@qq.com', '17843164100', '1', '0', 'admin', '2019-05-24 15:34:08', null, null, '2');
INSERT INTO `sys_user` VALUES ('a8126501912a4e50adf5d0c424b0d396', 'qyyh', 'qyyh', '82e4088cf51e67bc', 'O0sMFD2P', 'user/20190528/thank_1559008681074.gif', '2019-05-28 00:00:00', '2', '243235@4.com', '15723456789', '1', '0', 'admin', '2027-10-28 09:58:09', 'admin', '2019-05-28 11:03:13', '2');
INSERT INTO `sys_user` VALUES ('b3ab827b31c4405d9f4546363d150268', 'biglead', 'bigadmin', '0796743e9945c9d0', 'ELdxcfMZ', 'user/20190524/thank_1558683041405.gif', '2019-05-24 00:00:00', '1', '17843164100@163.com', '17843164100', '1', '0', 'admin', '2025-06-24 15:30:33', 'admin', '2019-05-24 15:32:30', '2');
INSERT INTO `sys_user` VALUES ('e9ca23d68d884d4ebb19d07889727dae', 'admin', '管理员', 'ad924d37ee258515', 'y9JzW34H', 'user/20190524/1156_1558681235126.png', '2018-12-05 00:00:00', '1', '11@qq.com', '18566666666', '1', '0', null, '2026-06-21 17:54:10', 'admin', '2019-05-24 15:39:37', '2');

-- ----------------------------
-- Table structure for sys_user_depart
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_depart`;
CREATE TABLE `sys_user_depart` (
  `ID` varchar(32) NOT NULL COMMENT 'id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `dep_id` varchar(32) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`ID`),
  KEY `index_depart_groupk_userid` (`user_id`) USING BTREE,
  KEY `index_depart_groupkorgid` (`dep_id`) USING BTREE,
  KEY `index_depart_groupk_uidanddid` (`user_id`,`dep_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_depart
-- ----------------------------
INSERT INTO `sys_user_depart` VALUES ('5720f1ccf751175bdf63bf95bd99aa4a', '7067bcffde3e476fb02aa127fe163866', '5159cde220114246b045e574adceafe9');
INSERT INTO `sys_user_depart` VALUES ('14ef53131a700dc97727ac1045aecda6', '7067bcffde3e476fb02aa127fe163866', '6d35e179cd814e3299bd588ea7daed3f');
INSERT INTO `sys_user_depart` VALUES ('acdbc439fd65d717d1ebed8299edfdc9', '795de980318b4a329bc6d3b05049d83b', 'fbdc823bd5ed440eba1dba52bf3df363');
INSERT INTO `sys_user_depart` VALUES ('a4b5bd870b1f08bcd6529c3d98d927e0', 'a8126501912a4e50adf5d0c424b0d396', '4f2e5f2fd22b4289a0e21d00943cc3b1');
INSERT INTO `sys_user_depart` VALUES ('9c7cc1b3931f92d747f62b0d440ab0f9', 'b3ab827b31c4405d9f4546363d150268', 'fbdc823bd5ed440eba1dba52bf3df363');
INSERT INTO `sys_user_depart` VALUES ('ba519f9b822bbe160c1a250594cb5d96', 'e9ca23d68d884d4ebb19d07889727dae', 'fbdc823bd5ed440eba1dba52bf3df363');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `index2_groupuu_user_id` (`user_id`) USING BTREE,
  KEY `index2_groupuu_ole_id` (`role_id`) USING BTREE,
  KEY `index2_groupuu_useridandroleid` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('0953751707e78f867f1fc6e94a53b253', '795de980318b4a329bc6d3b05049d83b', 'c7af591c52c40efebbe2c9d79669d8d6');
INSERT INTO `sys_user_role` VALUES ('0248693f29263a9225f317ad6f816ced', 'a8126501912a4e50adf5d0c424b0d396', 'e051d7566cee545be4e5543bae061122');
INSERT INTO `sys_user_role` VALUES ('dd91b4de6ace3c5bb0e890cbe3c0471c', 'b3ab827b31c4405d9f4546363d150268', 'c7af591c52c40efebbe2c9d79669d8d6');
INSERT INTO `sys_user_role` VALUES ('8727fc20e41b2aed1369e038b578da5e', 'e1239c5fda624e88b4611a1c54f72f66', 'e051d7566cee545be4e5543bae061122');
INSERT INTO `sys_user_role` VALUES ('234faad27d3f984b4f93d1da15c2297e', 'e9ca23d68d884d4ebb19d07889727dae', 'f6817f48af4fb3af11b9e8bf182f618b');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '李奇测试表',
  `sex` varchar(2) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '1', '1', '1', null, null, null, null);
INSERT INTO `test` VALUES ('2', '2', '2', '2', null, null, null, null);
INSERT INTO `test` VALUES ('3', '5', '5', '5', null, null, null, null);
