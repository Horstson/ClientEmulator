/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : starter

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-06-16 18:53:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_blog
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog`;
CREATE TABLE `cms_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog
-- ----------------------------
INSERT INTO `cms_blog` VALUES ('1', 'hello', '我的博客，内容是。。。', '2018-02-22 09:53:05', '1', 'F0');
INSERT INTO `cms_blog` VALUES ('2', 'cccc', '过年回家', '2018-02-13 10:30:01', '1', 'F0');

-- ----------------------------
-- Table structure for core_audit
-- ----------------------------
DROP TABLE IF EXISTS `core_audit`;
CREATE TABLE `core_audit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FUNCTION_CODE` varchar(45) DEFAULT NULL,
  `FUNCTION_NAME` varchar(45) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `USER_NAME` varchar(45) DEFAULT NULL,
  `IP` varchar(45) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `SUCCESS` tinyint(4) DEFAULT NULL,
  `MESSAGE` varchar(250) DEFAULT NULL,
  `ORG_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_audit
-- ----------------------------
INSERT INTO `core_audit` VALUES ('1', 'org.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 19:58:50', '1', '', null);
INSERT INTO `core_audit` VALUES ('2', 'org.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 19:58:51', '1', '', null);
INSERT INTO `core_audit` VALUES ('3', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:00:10', '1', '', null);
INSERT INTO `core_audit` VALUES ('4', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:00:11', '1', '', null);
INSERT INTO `core_audit` VALUES ('5', 'user.add', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:00:39', '1', '', null);
INSERT INTO `core_audit` VALUES ('6', 'user.edit', '用户编辑', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:10:15', '1', '', null);
INSERT INTO `core_audit` VALUES ('7', 'user.query', '用户列表', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:10:15', '1', '', null);
INSERT INTO `core_audit` VALUES ('8', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:10:16', '1', '', null);
INSERT INTO `core_audit` VALUES ('9', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:10:17', '1', '', null);
INSERT INTO `core_audit` VALUES ('10', 'user.edit', '用户编辑', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:14:46', '0', 'java.sql.SQLException: Error on delete of \'C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\#sql978_2c3_6.MYI\' (Errcode: 13 - Permission denied)', null);
INSERT INTO `core_audit` VALUES ('11', 'user.edit', '用户编辑', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:15:12', '1', '', null);
INSERT INTO `core_audit` VALUES ('12', 'user.query', '用户列表', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:15:13', '1', '', null);
INSERT INTO `core_audit` VALUES ('13', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:15:14', '1', '', null);
INSERT INTO `core_audit` VALUES ('14', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:15:14', '1', '', null);
INSERT INTO `core_audit` VALUES ('15', 'audit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-06 20:16:23', '1', '', null);
INSERT INTO `core_audit` VALUES ('16', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:42:58', '1', '', null);
INSERT INTO `core_audit` VALUES ('17', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:42:58', '1', '', null);
INSERT INTO `core_audit` VALUES ('18', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:11', '1', '', null);
INSERT INTO `core_audit` VALUES ('19', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:11', '1', '', null);
INSERT INTO `core_audit` VALUES ('20', 'user.add', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:13', '1', '', null);
INSERT INTO `core_audit` VALUES ('21', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:28', '1', '', null);
INSERT INTO `core_audit` VALUES ('22', 'role.add', '角色添加', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:29', '1', '', null);
INSERT INTO `core_audit` VALUES ('23', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:43', '1', '', null);
INSERT INTO `core_audit` VALUES ('24', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:43', '1', '', null);
INSERT INTO `core_audit` VALUES ('25', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:53:45', '1', '', null);
INSERT INTO `core_audit` VALUES ('26', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:56:03', '1', '', null);
INSERT INTO `core_audit` VALUES ('27', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:56:03', '1', '', null);
INSERT INTO `core_audit` VALUES ('28', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:56:06', '1', '', null);
INSERT INTO `core_audit` VALUES ('29', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:56:07', '1', '', null);
INSERT INTO `core_audit` VALUES ('30', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:56:09', '1', '', null);
INSERT INTO `core_audit` VALUES ('31', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 09:56:10', '1', '', null);
INSERT INTO `core_audit` VALUES ('32', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:02:00', '1', '', null);
INSERT INTO `core_audit` VALUES ('33', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:02:00', '1', '', null);
INSERT INTO `core_audit` VALUES ('34', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:02:02', '1', '', null);
INSERT INTO `core_audit` VALUES ('35', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:05:40', '1', '', null);
INSERT INTO `core_audit` VALUES ('36', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:05:40', '1', '', null);
INSERT INTO `core_audit` VALUES ('37', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:05:42', '1', '', null);
INSERT INTO `core_audit` VALUES ('38', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:06:02', '1', '', null);
INSERT INTO `core_audit` VALUES ('39', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:07:45', '1', '', null);
INSERT INTO `core_audit` VALUES ('40', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:07:45', '1', '', null);
INSERT INTO `core_audit` VALUES ('41', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:07:47', '1', '', null);
INSERT INTO `core_audit` VALUES ('42', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:08:03', '1', '', null);
INSERT INTO `core_audit` VALUES ('43', 'role.update', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:08:03', '1', '', null);
INSERT INTO `core_audit` VALUES ('44', 'role.edit', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:08:16', '1', '', null);
INSERT INTO `core_audit` VALUES ('45', 'role.query', '未定义', '1', '超级管理员', '172.16.49.65', '2018-02-07 10:08:16', '1', '', null);

-- ----------------------------
-- Table structure for core_dict
-- ----------------------------
DROP TABLE IF EXISTS `core_dict`;
CREATE TABLE `core_dict` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VALUE` varchar(16) NOT NULL,
  `NAME` varchar(128) NOT NULL COMMENT '名称',
  `TYPE` varchar(64) NOT NULL COMMENT '字典编码',
  `TYPE_NAME` varchar(64) NOT NULL COMMENT '类型描述',
  `SORT` int(6) DEFAULT NULL COMMENT '排序',
  `PARENT` int(64) DEFAULT NULL COMMENT '父id',
  `DEL_FLAG` int(6) DEFAULT NULL COMMENT '删除标记',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`ID`),
  KEY `idx_code` (`TYPE`),
  KEY `idx_pid` (`PARENT`),
  KEY `idx_value` (`VALUE`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of core_dict
-- ----------------------------
INSERT INTO `core_dict` VALUES ('1', 'DA0', '查看自己', 'data_access_type', '数据权限', '1', null, '0', '11111111111111111123', null);
INSERT INTO `core_dict` VALUES ('2', 'DA1', '查看本公司', 'data_access_type', '数据权限', '3', null, '0', 'hello,go', null);
INSERT INTO `core_dict` VALUES ('3', 'DA2', '查看同机构', 'data_access_type', '数据权限', '3', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('4', 'DA3', '查看本部门', 'data_access_type', '数据权限', '4', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('5', 'DA4', '查看集团', 'data_access_type', '数据权限', '5', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('6', 'DA5', '查看母公司', 'data_access_type', '数据权限', '6', null, '0', null, '2017-10-14 11:45:02');
INSERT INTO `core_dict` VALUES ('7', 'FN0', '普通功能', 'function_type', '功能点类型', '2', null, '0', null, '2017-10-23 10:18:03');
INSERT INTO `core_dict` VALUES ('8', 'FN1', '含数据权限', 'function_type', '功能点类型', '1', null, '0', null, '2017-10-23 10:20:05');
INSERT INTO `core_dict` VALUES ('9', 'JT_01', '管理岗位', 'job_type', '岗位类型', '1', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('10', 'JT_02', '技术岗位', 'job_type', '岗位类型', '2', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('11', 'JT_S_01', '董事会', 'job_sub_managment_type', '管理岗位子类型', '1', '9', '0', null, null);
INSERT INTO `core_dict` VALUES ('12', 'JT_S_02', '秘书', 'job_sub_managment_type', '管理岗位子类型', '2', '9', '0', null, null);
INSERT INTO `core_dict` VALUES ('13', 'JT_S_03', '技术经理', 'job_dev_sub_type', '技术岗位子类型', '1', '10', '0', null, null);
INSERT INTO `core_dict` VALUES ('14', 'JT_S_04', '程序员', 'job_dev_sub_type', '技术岗位子类型', '2', '10', '0', null, null);
INSERT INTO `core_dict` VALUES ('15', 'MENU_M', '菜单', 'menu_type', '菜单类型', '3', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('16', 'MENU_N', '导航', 'menu_type', '菜单类型', '2', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('17', 'MENU_S', '系统', 'menu_type', '菜单类型', '1', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('18', 'ORGT0', '集团总部', 'org_type', '机构类型', '1', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('19', 'ORGT1', '分公司', 'org_type', '机构类型', '2', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('20', 'ORGT2', '部门', 'org_type', '机构类型', '3', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('21', 'ORGT3', '小组', 'org_type', '机构类型', '4', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('22', 'R0', '操作角色', 'role_type', '数据权限', '1', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('23', 'R1', '工作流角色', 'role_type', '用户角色', '2', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('24', 'S0', '禁用', 'user_state', '用户状态', '2', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('25', 'S1', '启用', 'user_state', '用户状态', '1', null, '0', null, null);
INSERT INTO `core_dict` VALUES ('26', '昂按', '随碟附送分', 'kkkk', '水电费水电费', null, null, '0', '', '2018-02-28 15:43:34');
INSERT INTO `core_dict` VALUES ('27', '昂按', '随碟附送分', 'kkkk', '水电费水电费', null, null, '0', '', '2018-02-28 15:46:08');
INSERT INTO `core_dict` VALUES ('28', 'sdf', 'sdfsdf', 'sfsdf', 'sdfsdf', '1', null, '1', '', '2018-02-28 15:47:56');
INSERT INTO `core_dict` VALUES ('29', 'asas', 'sdfsd', 'sd', 'sd', null, null, '1', '', '2018-02-28 15:50:32');
INSERT INTO `core_dict` VALUES ('30', 'asas', 'sdfsd', 'sd', 'sd', null, null, '1', '', '2018-02-28 15:50:50');
INSERT INTO `core_dict` VALUES ('31', '1', '男', 'gender', '性别', null, null, '0', '', '2018-03-10 11:36:19');
INSERT INTO `core_dict` VALUES ('32', '2', '女', 'gender', '性别', null, null, '0', null, '2018-03-10 11:36:20');

-- ----------------------------
-- Table structure for core_file
-- ----------------------------
DROP TABLE IF EXISTS `core_file`;
CREATE TABLE `core_file` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(64) DEFAULT NULL COMMENT '文件名称',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `BIZ_ID` varchar(128) DEFAULT NULL COMMENT '业务ID',
  `USER_ID` int(20) DEFAULT NULL COMMENT '上传人id',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `ORG_ID` int(20) DEFAULT NULL,
  `BIZ_TYPE` varchar(128) DEFAULT NULL,
  `FILE_BATCH_ID` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='文件表';

-- ----------------------------
-- Records of core_file
-- ----------------------------
INSERT INTO `core_file` VALUES ('19', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.8caa38fb-52ef-4c73-85ea-abfb1f5c5dc4', null, '1', '2018-03-11 15:36:58', '1', null, '18c0dd67-e334-47ba-8969-915bcf77c544');
INSERT INTO `core_file` VALUES ('20', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.f50b7f0f-d376-4a95-be6a-14f5aa4a81e6', null, '1', '2018-03-11 15:37:15', '1', null, '335a583a-9c74-462d-be0a-5a82d427b1aa');
INSERT INTO `core_file` VALUES ('21', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.b0b9434d-e367-43ef-b8ac-366cf7b018b6', null, '1', '2018-03-11 15:38:52', '1', null, 'a5b887c6-101c-46e8-b9e2-b3b448edff34');
INSERT INTO `core_file` VALUES ('22', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.15f02d15-2dd0-4cb7-b2e5-4f7d72fb497d', null, '1', '2018-03-11 15:39:02', '1', null, '833d96bc-797c-403f-aa2e-00e2b5a3cd71');
INSERT INTO `core_file` VALUES ('23', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.f12350bc-31da-4875-a78e-0135f512fb4c', null, '1', '2018-03-11 15:41:52', '1', null, '0b2a66a3-8aa8-46b7-8bf0-ce9f68041cd8');
INSERT INTO `core_file` VALUES ('24', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.5bf626e5-2152-45a5-a432-fc2e9fcb7903', null, '1', '2018-03-11 15:43:18', '1', null, '813725ab-2c07-4e48-a766-7ebbe3083212');
INSERT INTO `core_file` VALUES ('25', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.3cd3eb95-aab9-4105-8d28-76a723274709', null, '1', '2018-03-11 15:43:58', '1', null, '4216455c-20d7-4912-bfc8-c8cca7e70e9f');
INSERT INTO `core_file` VALUES ('26', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.d3dc557b-1e77-4955-a3be-7a8b4f86407c', null, '1', '2018-03-11 15:45:02', '1', null, 'e42dc975-edd5-4d16-8529-fa69b56a5eb5');
INSERT INTO `core_file` VALUES ('34', 'dict_upload_template.xls', '20180311/dict_upload_template.xls.d50f8245-ec3e-4de1-9742-0c5c12105f27', '175', '1', '2018-03-11 16:30:36', '1', null, '79b294da-8792-4bfd-9d84-e3f989b88cdf');
INSERT INTO `core_file` VALUES ('37', '副本 功能列表.xlsx', '20180311/副本 功能列表.xlsx.bc7554e3-2a30-4667-aa61-0e280340b2be', '175', '1', '2018-03-11 18:53:41', '1', 'User', '79b294da-8792-4bfd-9d84-e3f989b88cdf');
INSERT INTO `core_file` VALUES ('38', '副本 功能列表.xlsx', '20180311/副本 功能列表.xlsx.d991eb1f-24a9-4db1-87c1-7ef9d2b8a40a', '175', '1', '2018-03-11 22:10:57', '1', 'User', '79b294da-8792-4bfd-9d84-e3f989b88cdf');

-- ----------------------------
-- Table structure for core_file_tag
-- ----------------------------
DROP TABLE IF EXISTS `core_file_tag`;
CREATE TABLE `core_file_tag` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `KEY` varchar(64) NOT NULL COMMENT 'key，关键字',
  `VALUE` varchar(255) NOT NULL COMMENT '关键字对应的值',
  `FILE_ID` int(20) NOT NULL COMMENT 'sys_file的id，文件id',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='文件标签';

-- ----------------------------
-- Records of core_file_tag
-- ----------------------------
INSERT INTO `core_file_tag` VALUES ('1', 'customer', '12332', '1');
INSERT INTO `core_file_tag` VALUES ('2', 'type', 'crdit', '2');

-- ----------------------------
-- Table structure for core_function
-- ----------------------------
DROP TABLE IF EXISTS `core_function`;
CREATE TABLE `core_function` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(250) DEFAULT NULL,
  `NAME` varchar(16) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `ACCESS_URL` varchar(250) DEFAULT NULL,
  `PARENT_ID` int(65) DEFAULT NULL,
  `TYPE` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_function
-- ----------------------------
INSERT INTO `core_function` VALUES ('1', 'user', '用户功能', null, '/admin/user/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('2', 'user.query', '用户列表', null, null, '1', 'FN1');
INSERT INTO `core_function` VALUES ('3', 'user.edit', '用户编辑', null, null, '1', 'FN0');
INSERT INTO `core_function` VALUES ('6', 'org', '组织机构', null, '/admin/org/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('7', 'role', '角色管理', null, '/admin/role/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('8', 'menu', '菜单管理', null, '/admin/menu/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('9', 'function', '功能点管理', null, '/admin/function/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('10', 'roleFunction', '角色功能授权', null, '/admin/role/function.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('11', 'roleDataAccess', '角色数据授权', null, '/admin/role/data.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('12', 'code', '代码生成', null, '/core/codeGen/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('19', 'file', '相关文档', null, '/trade/interAndRelate/file.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('91', 'test', '测试', '2017-10-11 16:59:01', '/test/test.do', '6', 'FN0');
INSERT INTO `core_function` VALUES ('161', 'role.add', '角色添加', '2017-10-23 09:45:05', null, '7', 'FN0');
INSERT INTO `core_function` VALUES ('167', 'workflow.admin', '工作流监控', null, '/admin/workflow/index.do', '0', 'FN0');
INSERT INTO `core_function` VALUES ('180', 'code.query', '代码生成测试', null, null, '12', 'FN0');
INSERT INTO `core_function` VALUES ('183', 'code.project', '项目生成', '2018-03-01 09:38:17', '/core/codeGen/project.do', '12', 'FN0');

-- ----------------------------
-- Table structure for core_menu
-- ----------------------------
DROP TABLE IF EXISTS `core_menu`;
CREATE TABLE `core_menu` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) DEFAULT NULL,
  `NAME` varchar(16) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `FUNCTION_ID` int(6) DEFAULT NULL,
  `TYPE` varchar(6) DEFAULT NULL COMMENT '1,系统，2 导航 3 菜单项（对应某个功能点）',
  `PARENT_MENU_ID` int(65) DEFAULT NULL,
  `SEQ` int(65) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_menu
-- ----------------------------
INSERT INTO `core_menu` VALUES ('8', '系统管理', '系统管理', null, null, 'MENU_S', '0', '1', null);
INSERT INTO `core_menu` VALUES ('10', '用户管理', '用户管理', null, '1', 'MENU_M', '18', '1', null);
INSERT INTO `core_menu` VALUES ('11', '组织机构管理', '组织机构管理', null, '6', 'MENU_M', '18', '2', null);
INSERT INTO `core_menu` VALUES ('12', '角色管理', '角色管理', null, '7', 'MENU_M', '18', '3', null);
INSERT INTO `core_menu` VALUES ('13', '菜单项', '菜单项', null, '8', 'MENU_M', '18', '4', null);
INSERT INTO `core_menu` VALUES ('14', '功能点管理', '功能点管理', null, '9', 'MENU_M', '18', '5', null);
INSERT INTO `core_menu` VALUES ('17', '代码生成', '代码生成', null, '12', 'MENU_M', '24', '8', '');
INSERT INTO `core_menu` VALUES ('18', '基础管理', '基础管理', null, null, 'MENU_N', '8', '1', null);
INSERT INTO `core_menu` VALUES ('21', '角色功能授权', '角色功能授权', null, '10', 'MENU_M', '18', '8', null);
INSERT INTO `core_menu` VALUES ('22', '角色数据授权', '角色数据授权', null, '11', 'MENU_M', '18', '9', null);
INSERT INTO `core_menu` VALUES ('24', '代码生成导航', '代码生成', '2018-03-01 09:39:31', null, 'MENU_N', '8', '1', '');
INSERT INTO `core_menu` VALUES ('25', '子系统生成', '子系统生成', '2018-03-01 09:42:35', '183', 'MENU_M', '24', '1', '');

-- ----------------------------
-- Table structure for core_org
-- ----------------------------
DROP TABLE IF EXISTS `core_org`;
CREATE TABLE `core_org` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) NOT NULL,
  `NAME` varchar(16) NOT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `PARENT_ORG_ID` int(20) DEFAULT NULL,
  `TYPE` varchar(6) NOT NULL COMMENT '1 公司，2 部门，3 小组',
  `DEL_FLAG` tinyint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_org
-- ----------------------------
INSERT INTO `core_org` VALUES ('1', '集团公司', '有爱', '2018-02-02 17:18:50', null, 'ORGT0', '0');
INSERT INTO `core_org` VALUES ('3', '信息科技部门', '信息科技部门', null, '1', 'ORGT2', '0');
INSERT INTO `core_org` VALUES ('4', '贵州银行', '贵州银行', '2018-02-02 17:18:56', '1', 'ORGT1', '0');
INSERT INTO `core_org` VALUES ('5', '贵州银行金科', '贵州银行金融科技开发公司', null, '4', 'ORGT1', '0');
INSERT INTO `core_org` VALUES ('6', '金科研发', '金科研发', null, '5', 'ORGT2', '0');
INSERT INTO `core_org` VALUES ('7', '金科研发部门', '金科研发部门', '2018-02-05 13:49:52', '6', 'ORGT2', '0');
INSERT INTO `core_org` VALUES ('8', '金科研发2部', '金科研发2部', '2018-02-05 13:50:43', '6', 'ORGT2', '0');

-- ----------------------------
-- Table structure for core_role
-- ----------------------------
DROP TABLE IF EXISTS `core_role`;
CREATE TABLE `core_role` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) DEFAULT NULL COMMENT '角色编码',
  `NAME` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `TYPE` varchar(6) DEFAULT NULL COMMENT '1 可以配置 2 固定权限角色',
  PRIMARY KEY (`ID`),
  KEY `code_idx` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_role
-- ----------------------------
INSERT INTO `core_role` VALUES ('1', 'DEPT_MANAGER', '部门管理员', null, 'R0');
INSERT INTO `core_role` VALUES ('2', 'CEO', '公司CEO', null, 'R0');
INSERT INTO `core_role` VALUES ('3', 'ASSIST', '助理', null, 'R0');
INSERT INTO `core_role` VALUES ('12', '111', '2324324', '2017-09-06 04:08:00', 'R0');
INSERT INTO `core_role` VALUES ('13', '1111', '哈哈', '2017-09-06 04:09:05', 'R0');
INSERT INTO `core_role` VALUES ('15', 'admin', 'ivy', '2017-09-06 05:35:04', 'R0');
INSERT INTO `core_role` VALUES ('17', '123', '我', '2017-09-06 21:23:03', 'R0');
INSERT INTO `core_role` VALUES ('18', '23', '234', '2017-09-06 21:41:03', 'R0');
INSERT INTO `core_role` VALUES ('19', '132484', '1', '2017-09-06 21:42:02', 'R0');
INSERT INTO `core_role` VALUES ('173', 'dept.admin', '部门辅助管理员', null, 'R0');

-- ----------------------------
-- Table structure for core_role_function
-- ----------------------------
DROP TABLE IF EXISTS `core_role_function`;
CREATE TABLE `core_role_function` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(65) DEFAULT NULL,
  `FUNCTION_ID` int(65) DEFAULT NULL,
  `DATA_ACCESS_TYPE` tinyint(65) DEFAULT NULL,
  `DATA_ACCESS_POLICY` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_role_function
-- ----------------------------
INSERT INTO `core_role_function` VALUES ('1', '1', '1', '5', null);
INSERT INTO `core_role_function` VALUES ('2', '1', '2', '4', null);
INSERT INTO `core_role_function` VALUES ('3', '1', '3', '5', null);
INSERT INTO `core_role_function` VALUES ('4', '2', '2', '2', null);
INSERT INTO `core_role_function` VALUES ('5', '3', '2', '5', null);
INSERT INTO `core_role_function` VALUES ('6', '3', '3', '5', null);
INSERT INTO `core_role_function` VALUES ('162', '1', '6', null, null);
INSERT INTO `core_role_function` VALUES ('164', '1', '91', null, null);
INSERT INTO `core_role_function` VALUES ('174', '173', '1', null, null);
INSERT INTO `core_role_function` VALUES ('176', '173', '2', '5', null);
INSERT INTO `core_role_function` VALUES ('177', '173', '3', null, null);
INSERT INTO `core_role_function` VALUES ('178', '173', '167', null, null);
INSERT INTO `core_role_function` VALUES ('192', '3', '1', null, null);
INSERT INTO `core_role_function` VALUES ('194', '3', '12', null, null);
INSERT INTO `core_role_function` VALUES ('196', '3', '180', '3', null);
INSERT INTO `core_role_function` VALUES ('197', null, '1', null, null);
INSERT INTO `core_role_function` VALUES ('198', null, '2', null, null);
INSERT INTO `core_role_function` VALUES ('199', null, '3', null, null);
INSERT INTO `core_role_function` VALUES ('200', null, '6', null, null);
INSERT INTO `core_role_function` VALUES ('201', null, '91', null, null);
INSERT INTO `core_role_function` VALUES ('202', null, '8', null, null);

-- ----------------------------
-- Table structure for core_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `core_role_menu`;
CREATE TABLE `core_role_menu` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(65) DEFAULT NULL,
  `MENU_ID` int(65) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_role_menu
-- ----------------------------
INSERT INTO `core_role_menu` VALUES ('1', '1', '10', null);
INSERT INTO `core_role_menu` VALUES ('163', '1', '11', null);
INSERT INTO `core_role_menu` VALUES ('175', '173', '10', null);
INSERT INTO `core_role_menu` VALUES ('193', '3', '10', null);
INSERT INTO `core_role_menu` VALUES ('195', '3', '17', null);
INSERT INTO `core_role_menu` VALUES ('196', null, '10', null);
INSERT INTO `core_role_menu` VALUES ('197', null, '11', null);
INSERT INTO `core_role_menu` VALUES ('198', null, '13', null);

-- ----------------------------
-- Table structure for core_user
-- ----------------------------
DROP TABLE IF EXISTS `core_user`;
CREATE TABLE `core_user` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(16) DEFAULT NULL,
  `NAME` varchar(16) DEFAULT NULL,
  `PASSWORD` varchar(64) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `ORG_ID` int(65) DEFAULT NULL,
  `STATE` varchar(16) DEFAULT NULL COMMENT '用户状态 1:启用 0:停用',
  `JOB_TYPE1` varchar(16) DEFAULT NULL,
  `DEL_FLAG` tinyint(6) DEFAULT NULL COMMENT '用户删除标记 0:未删除 1:已删除',
  `update_Time` datetime DEFAULT NULL,
  `JOB_TYPE0` varchar(16) DEFAULT NULL,
  `attachment_id` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of core_user
-- ----------------------------
INSERT INTO `core_user` VALUES ('1', 'admin', '超级管理员1', '123456', '2017-09-13 09:21:03', '1', 'S1', 'JT_S_01', '0', '2017-09-13 09:21:03', 'JT_01', null);
INSERT INTO `core_user` VALUES ('171', 'lixx', '李小小', null, '2018-01-28 11:21:20', '3', 'S1', 'JT_S_04', '0', null, 'JT_02', null);
INSERT INTO `core_user` VALUES ('172', 'lixx2', '李xx2', '123456', '2018-01-28 11:22:38', '4', 'S1', 'JT_S_02', '0', null, 'JT_01', null);
INSERT INTO `core_user` VALUES ('173', 'test1', 'test1', '123', '2018-01-28 14:44:55', '5', 'S1', 'JT_S_04', '0', null, 'JT_02', null);
INSERT INTO `core_user` VALUES ('174', 'hank250', '李小熊', null, '2018-02-16 11:36:41', '4', 'S1', 'JT_S_04', '0', null, 'JT_02', null);
INSERT INTO `core_user` VALUES ('175', 'test123', 'test12344', null, '2018-03-11 16:19:21', '3', 'S1', 'JT_S_04', '0', null, 'JT_02', '79b294da-8792-4bfd-9d84-e3f989b88cdf');

-- ----------------------------
-- Table structure for core_user_role
-- ----------------------------
DROP TABLE IF EXISTS `core_user_role`;
CREATE TABLE `core_user_role` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(20) DEFAULT NULL,
  `ROLE_ID` int(20) DEFAULT NULL,
  `ORG_ID` int(20) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of core_user_role
-- ----------------------------
INSERT INTO `core_user_role` VALUES ('1', '3', '1', '4', null);
INSERT INTO `core_user_role` VALUES ('2', '4', '2', '5', null);
INSERT INTO `core_user_role` VALUES ('3', '75', '3', '6', '2017-09-21 18:03:05');
INSERT INTO `core_user_role` VALUES ('35', '1', '1', '1', '2017-09-06 01:12:02');
INSERT INTO `core_user_role` VALUES ('36', '1', '3', '6', '2017-09-06 03:33:05');
INSERT INTO `core_user_role` VALUES ('38', '1', '1', '3', '2017-09-06 03:35:02');
INSERT INTO `core_user_role` VALUES ('41', '1', '1', '5', '2017-09-06 03:58:02');
INSERT INTO `core_user_role` VALUES ('42', '3', '3', '1', '2017-09-06 04:01:00');
INSERT INTO `core_user_role` VALUES ('47', '47', '3', '1', '2017-09-06 22:00:01');
INSERT INTO `core_user_role` VALUES ('49', '5', '3', '4', '2017-09-06 22:01:00');
INSERT INTO `core_user_role` VALUES ('52', '47', '2', '1', '2017-09-07 01:12:02');
INSERT INTO `core_user_role` VALUES ('53', '48', '3', '4', '2017-09-07 01:14:04');
INSERT INTO `core_user_role` VALUES ('55', '68', '2', '3', '2017-09-07 21:42:03');
INSERT INTO `core_user_role` VALUES ('125', '74', '1', '4', '2017-10-17 09:37:02');
INSERT INTO `core_user_role` VALUES ('144', '74', '3', null, '2017-10-17 16:55:00');
INSERT INTO `core_user_role` VALUES ('145', '67', '3', null, '2017-10-17 16:55:01');
INSERT INTO `core_user_role` VALUES ('146', '73', '3', null, '2017-10-17 16:55:02');
INSERT INTO `core_user_role` VALUES ('147', '22', '3', null, '2017-10-17 16:55:04');
INSERT INTO `core_user_role` VALUES ('148', '68', '3', null, '2017-10-17 16:56:00');
INSERT INTO `core_user_role` VALUES ('168', '72', '1', '3', '2017-10-24 14:40:04');
INSERT INTO `core_user_role` VALUES ('169', '41', '1', null, '2017-10-25 08:58:01');
INSERT INTO `core_user_role` VALUES ('171', '170', '1', '5', '2017-10-25 09:08:05');
INSERT INTO `core_user_role` VALUES ('172', '171', '1', '4', '2018-02-02 09:36:40');
