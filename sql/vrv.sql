/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : vrv

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-05-19 14:00:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `organization`
-- ----------------------------
DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '组织名',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `code` varchar(64) NOT NULL COMMENT '编号',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `pid` bigint(19) DEFAULT NULL COMMENT '父级主键',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='组织机构';

-- ----------------------------
-- Records of organization
-- ----------------------------
INSERT INTO `organization` VALUES ('1', '系统研发', '徐东大街', '01', 'fi-social-android', null, '0', '2017-05-17 09:13:00');
INSERT INTO `organization` VALUES ('2', '产品设计', '金融港', '02', 'fi-social-apple', null, '1', '2017-05-19 08:13:26');
INSERT INTO `organization` VALUES ('3', '测试', '测试部', '03', 'fi-folder', null, '2', '2017-05-19 09:15:38');

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '资源名称',
  `url` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `open_mode` varchar(32) DEFAULT NULL COMMENT '打开方式 ajax,iframe',
  `description` varchar(255) DEFAULT NULL COMMENT '资源介绍',
  `icon` varchar(32) DEFAULT NULL COMMENT '资源图标',
  `pid` bigint(19) DEFAULT NULL COMMENT '父级资源id',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `opened` tinyint(2) NOT NULL DEFAULT '1' COMMENT '打开状态',
  `resource_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '资源类别',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='资源';

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '权限管理', '', '', '系统管理', 'fi-lock', null, '0', '0', '1', '0', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('11', '资源管理', '/resource/manager', 'ajax', '资源管理', 'fi-book', '1', '1', '0', '1', '0', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('12', '角色管理', '/role/manager', 'ajax', '角色管理', 'fi-torso-business', '1', '2', '0', '1', '0', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('13', '用户管理', '/user/manager', 'ajax', '用户管理', 'fi-male-female', '1', '3', '0', '1', '0', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('14', '部门管理', '/organization/manager', 'ajax', '部门管理', 'fi-results-demographics', '1', '4', '0', '1', '0', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('15', '列表', '/resource/treeGrid', 'ajax', '资源列表', 'fi-list', '11', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('16', '添加', '/resource/add', 'ajax', '资源添加', 'fi-page-add', '11', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('17', '编辑', '/resource/edit', 'ajax', '资源编辑', 'fi-page-edit', '11', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('18', '删除', '/resource/delete', 'ajax', '资源删除', 'fi-page-delete', '11', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('19', '列表', '/role/dataGrid', 'ajax', '角色列表', 'fi-list', '12', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('20', '添加', '/role/add', 'ajax', '角色添加', 'fi-page-add', '12', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('21', '编辑', '/role/edit', 'ajax', '角色编辑', 'fi-page-edit', '12', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('22', '删除', '/role/delete', 'ajax', '角色删除', 'fi-page-delete', '12', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('23', '授权', '/role/grant', 'ajax', '角色授权', 'fi-check', '12', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('24', '列表', '/user/dataGrid', 'ajax', '用户列表', 'fi-list', '13', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('25', '添加', '/user/add', 'ajax', '用户添加', 'fi-page-add', '13', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('26', '编辑', '/user/edit', 'ajax', '用户编辑', 'fi-page-edit', '13', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('27', '删除', '/user/delete', 'ajax', '用户删除', 'fi-page-delete', '13', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('28', '列表', '/organization/treeGrid', 'ajax', '用户列表', 'fi-list', '14', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('29', '添加', '/organization/add', 'ajax', '部门添加', 'fi-page-add', '14', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('30', '编辑', '/organization/edit', 'ajax', '部门编辑', 'fi-page-edit', '14', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('31', '删除', '/organization/delete', 'ajax', '部门删除', 'fi-page-delete', '14', '0', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('32', '修改密码', '/user/editPwdPage', 'ajax', null, 'fi-unlock', null, '4', '0', '1', '1', '2017-05-17 08:01:02');
INSERT INTO `resource` VALUES ('34', '登录日志', '/sysLog/manager', 'ajax', null, 'fi-page-search', '221', '5', '0', '1', '0', '2017-05-17 08:01:02');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(64) NOT NULL COMMENT '角色名',
  `seq` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序号',
  `description` varchar(255) DEFAULT NULL COMMENT '简介',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '0', '超级管理员', '0');
INSERT INTO `role` VALUES ('4', '测试组', '0', '测试人员使用', '0');

-- ----------------------------
-- Table structure for `role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  `resource_id` bigint(19) NOT NULL COMMENT '资源id',
  PRIMARY KEY (`id`),
  KEY `idx_role_resource_ids` (`role_id`,`resource_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='角色资源';

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('1', '1', '1');
INSERT INTO `role_resource` VALUES ('2', '1', '11');
INSERT INTO `role_resource` VALUES ('3', '1', '12');
INSERT INTO `role_resource` VALUES ('4', '1', '13');
INSERT INTO `role_resource` VALUES ('5', '1', '14');
INSERT INTO `role_resource` VALUES ('6', '1', '15');
INSERT INTO `role_resource` VALUES ('7', '1', '16');
INSERT INTO `role_resource` VALUES ('8', '1', '17');
INSERT INTO `role_resource` VALUES ('9', '1', '18');
INSERT INTO `role_resource` VALUES ('10', '1', '19');
INSERT INTO `role_resource` VALUES ('11', '1', '20');
INSERT INTO `role_resource` VALUES ('12', '1', '21');
INSERT INTO `role_resource` VALUES ('13', '1', '22');
INSERT INTO `role_resource` VALUES ('14', '1', '23');
INSERT INTO `role_resource` VALUES ('15', '1', '24');
INSERT INTO `role_resource` VALUES ('16', '1', '25');
INSERT INTO `role_resource` VALUES ('17', '1', '26');
INSERT INTO `role_resource` VALUES ('18', '1', '27');
INSERT INTO `role_resource` VALUES ('19', '1', '28');
INSERT INTO `role_resource` VALUES ('20', '1', '29');
INSERT INTO `role_resource` VALUES ('21', '1', '30');
INSERT INTO `role_resource` VALUES ('22', '1', '31');
INSERT INTO `role_resource` VALUES ('23', '1', '32');
INSERT INTO `role_resource` VALUES ('24', '1', '34');
INSERT INTO `role_resource` VALUES ('37', '4', '13');
INSERT INTO `role_resource` VALUES ('42', '4', '14');
INSERT INTO `role_resource` VALUES ('38', '4', '24');
INSERT INTO `role_resource` VALUES ('39', '4', '25');
INSERT INTO `role_resource` VALUES ('40', '4', '26');
INSERT INTO `role_resource` VALUES ('41', '4', '27');
INSERT INTO `role_resource` VALUES ('43', '4', '28');
INSERT INTO `role_resource` VALUES ('44', '4', '29');
INSERT INTO `role_resource` VALUES ('45', '4', '32');
INSERT INTO `role_resource` VALUES ('46', '4', '34');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登陆名',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `opt_content` varchar(1024) DEFAULT NULL COMMENT '内容',
  `client_ip` varchar(255) DEFAULT NULL COMMENT '客户端ip',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('260', 'admin', 'admin', '[类名]:com.vrv.controller.LoginController,[方法]:logout,[参数]:', null, '2017-05-19 11:56:14');
INSERT INTO `sys_log` VALUES ('261', 'zhansan', 'zhansan', '[类名]:com.vrv.controller.LoginController,[方法]:logout,[参数]:', null, '2017-05-19 11:56:36');
INSERT INTO `sys_log` VALUES ('262', 'admin', 'admin', '[类名]:com.vrv.controller.ResourceController,[方法]:editPage,[参数]:id=34&_=1495166226069&', '0:0:0:0:0:0:0:1', '2017-05-19 11:57:13');
INSERT INTO `sys_log` VALUES ('263', 'admin', 'admin', '[类名]:com.vrv.controller.ResourceController,[方法]:edit,[参数]:id=34&name=登录日志&resourceType=0&url=/sysLog/manager&openMode=ajax&icon=fi-page-search&seq=5&status=0&opened=1&pid=221&', '0:0:0:0:0:0:0:1', '2017-05-19 11:57:18');
INSERT INTO `sys_log` VALUES ('264', 'admin', 'admin', '[类名]:com.vrv.controller.LoginController,[方法]:logout,[参数]:', null, '2017-05-19 11:57:26');
INSERT INTO `sys_log` VALUES ('265', 'zhansan', 'zhansan', '[类名]:com.vrv.controller.LoginController,[方法]:logout,[参数]:', null, '2017-05-19 12:29:08');
INSERT INTO `sys_log` VALUES ('266', 'admin', 'admin', '[类名]:com.vrv.controller.LoginController,[方法]:login,[参数]:', null, '2017-05-19 12:48:57');
INSERT INTO `sys_log` VALUES ('267', 'admin', 'admin', '[类名]:com.vrv.controller.LoginController,[方法]:logout,[参数]:', null, '2017-05-19 12:49:46');
INSERT INTO `sys_log` VALUES ('268', 'admin', 'admin', '[类名]:com.vrv.controller.OrganizationController,[方法]:editPage,[参数]:id=1&_=1495170455760&', '0:0:0:0:0:0:0:1', '2017-05-19 13:07:43');
INSERT INTO `sys_log` VALUES ('269', 'admin', 'admin', '[类名]:com.vrv.controller.RoleController,[方法]:grantPage,[参数]:id=4&_=1495173382129&', '0:0:0:0:0:0:0:1', '2017-05-19 13:56:43');
INSERT INTO `sys_log` VALUES ('270', 'admin', 'admin', '[类名]:com.vrv.controller.RoleController,[方法]:grant,[参数]:id=4&resourceIds=13,24,25,26,27,14,28,29,32,34&', '0:0:0:0:0:0:0:1', '2017-05-19 13:57:01');
INSERT INTO `sys_log` VALUES ('271', 'admin', 'admin', '[类名]:com.vrv.controller.LoginController,[方法]:logout,[参数]:', null, '2017-05-19 13:57:04');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `login_name` varchar(64) NOT NULL COMMENT '登陆名',
  `name` varchar(64) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `salt` varchar(36) DEFAULT NULL COMMENT '密码加密盐',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别',
  `age` tinyint(2) DEFAULT '0' COMMENT '年龄',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户类别',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '用户状态',
  `organization_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属机构',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDx_user_login_name` (`login_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '方军', '9283a03246ef2dacdc21a9b137817ec1', 'test', '0', '36', '15071419587', '0', '0', '1', '2017-05-17 09:14:06');
INSERT INTO `user` VALUES ('16', 'zhansan', '张三', 'f374592cdc33af3b0fdbbd3e4333fc76', '15e5492d-bd1c-42bd-9574-26245440eb44', '0', '22', '', '1', '0', '3', '2017-05-19 09:56:53');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(19) NOT NULL COMMENT '用户id',
  `role_id` bigint(19) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `idx_user_role_ids` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
INSERT INTO `user_role` VALUES ('2', '16', '4');
