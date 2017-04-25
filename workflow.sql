/*
Navicat MySQL Data Transfer

Source Server         : day
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : workflow

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-02-08 16:36:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for custom_form_content
-- ----------------------------
DROP TABLE IF EXISTS `custom_form_content`;
CREATE TABLE `custom_form_content` (
  `DBID_` decimal(19,0) NOT NULL,
  `PROCESS_INSTANCE_ID_` varchar(255) NOT NULL,
  `FORMCONTENT_` text,
  `REMARK_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于自定义表单存在表单内容';

-- ----------------------------
-- Records of custom_form_content
-- ----------------------------

-- ----------------------------
-- Table structure for demo_product
-- ----------------------------
DROP TABLE IF EXISTS `demo_product`;
CREATE TABLE `demo_product` (
  `DBID_` bigint(10) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(20) DEFAULT NULL,
  `PRICE_` varchar(20) DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(20) DEFAULT NULL,
  `PROCESS_INSTANCE_STATE_` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo_product
-- ----------------------------
INSERT INTO `demo_product` VALUES ('1', null, null, 'workflow1.210025', '动作 1');
INSERT INTO `demo_product` VALUES ('2', null, null, 'workflow1.210043', '动作 1');
INSERT INTO `demo_product` VALUES ('3', null, null, 'workflow1.210060', '动作 1');
INSERT INTO `demo_product` VALUES ('6', null, null, 'workflow1.240033', '动作 1');
INSERT INTO `demo_product` VALUES ('7', null, null, 'workflow1.240051', '动作 1');
INSERT INTO `demo_product` VALUES ('8', null, null, 'workflow1.250000', '动作 1');
INSERT INTO `demo_product` VALUES ('9', null, null, 'workflow1.250033', '动作 1');
INSERT INTO `demo_product` VALUES ('10', null, null, 'workflow1.250051', '动作 1');
INSERT INTO `demo_product` VALUES ('11', null, null, 'workflow1.250070', '动作 1');
INSERT INTO `demo_product` VALUES ('12', null, null, 'workflow1.250092', '动作 1');
INSERT INTO `demo_product` VALUES ('13', null, null, 'workflow1.251121', '动作 1');
INSERT INTO `demo_product` VALUES ('14', null, null, 'workflow1.330023', '动作 1');
INSERT INTO `demo_product` VALUES ('15', null, null, 'workflow1.330023', '动作 2');
INSERT INTO `demo_product` VALUES ('16', null, null, 'workflow1.330048', '动作 1');
INSERT INTO `demo_product` VALUES ('17', null, null, 'workflow1.330048', '动作 2');
INSERT INTO `demo_product` VALUES ('18', null, null, 'workflow1.340000', '动作 1');
INSERT INTO `demo_product` VALUES ('20', null, null, null, '草稿');
INSERT INTO `demo_product` VALUES ('22', null, null, 'workflow1.350018', '动作 1');
INSERT INTO `demo_product` VALUES ('24', null, null, 'workflow1.350150', '动作 1');
INSERT INTO `demo_product` VALUES ('25', null, null, 'workflow1.380000', '动作 1');
INSERT INTO `demo_product` VALUES ('26', null, null, 'workflow1.380000', '动作 2');
INSERT INTO `demo_product` VALUES ('27', null, null, 'workflow1.380034', '动作 1');
INSERT INTO `demo_product` VALUES ('28', null, null, 'workflow1.380034', '动作 2');
INSERT INTO `demo_product` VALUES ('29', null, null, 'workflow1.380034', '动作 3');
INSERT INTO `demo_product` VALUES ('30', null, null, 'workflow1.380000', '动作 3');
INSERT INTO `demo_product` VALUES ('31', null, null, null, '草稿');
INSERT INTO `demo_product` VALUES ('32', null, null, 'workflow1.380082', '动作 1');
INSERT INTO `demo_product` VALUES ('33', null, null, 'workflow1.380099', '动作 1');
INSERT INTO `demo_product` VALUES ('34', null, null, 'workflow1.380099', '动作 2');
INSERT INTO `demo_product` VALUES ('35', null, null, 'workflow1.380099', '动作 3');

-- ----------------------------
-- Table structure for jbpm4_demo_customer
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_demo_customer`;
CREATE TABLE `jbpm4_demo_customer` (
  `ID` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `DEADLINE` datetime DEFAULT NULL,
  `SALARY` decimal(14,2) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `INSTANCE_ID` varchar(64) DEFAULT NULL,
  `LAST_UPD_BY` varchar(64) DEFAULT NULL,
  `LAST_UPD_DTTM` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CUSTOMER_NAME` (`NAME`),
  KEY `IDX_CUSTOMER_AGESEX` (`AGE`,`SEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='示例表';

-- ----------------------------
-- Records of jbpm4_demo_customer
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_deployment
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_deployment`;
CREATE TABLE `jbpm4_deployment` (
  `DBID_` decimal(19,0) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TIMESTAMP_` decimal(19,0) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `PROCESS_KEY_` varchar(255) DEFAULT NULL,
  `PROCESS_DEF_ID_` varchar(255) DEFAULT NULL,
  `VERSION_` decimal(19,0) DEFAULT NULL,
  `LANGUAGE_` varchar(255) DEFAULT NULL,
  `DEPLOY_DT_` datetime DEFAULT NULL,
  `ARCHIVE_DT_` datetime DEFAULT NULL,
  `PROCESS_DEF_NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_DEPLOYMENT_DEF` (`PROCESS_DEF_ID_`),
  KEY `IDX_DEPLOYMENT_KEY` (`PROCESS_KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程发布表，定义了系统中所有发布项，和发布属性表一起来标识详细的发布信息';

-- ----------------------------
-- Records of jbpm4_deployment
-- ----------------------------
INSERT INTO `jbpm4_deployment` VALUES ('30007', null, '0', 'active', 'workflow1', 'workflow1-1', '1', 'jpdl-4.4', '2017-01-19 10:38:24', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('50031', null, '0', 'active', 'workflow1', 'workflow1-2', '2', 'jpdl-4.4', '2017-01-19 10:55:15', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('220021', null, '0', 'active', 'workflow1', 'workflow1-3', '3', 'jpdl-4.4', '2017-02-07 16:25:06', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('220026', null, '0', 'active', 'workflow1', 'workflow1-4', '4', 'jpdl-4.4', '2017-02-07 16:28:32', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('240025', null, '0', 'active', 'workflow1', 'workflow1-5', '5', 'jpdl-4.4', '2017-02-07 16:50:43', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('250090', null, '0', 'active', 'workflow1', 'workflow1-6', '6', 'jpdl-4.4', '2017-02-07 17:14:33', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('251116', null, '0', 'active', 'workflow1', 'workflow1-7', '7', 'jpdl-4.4', '2017-02-08 09:26:17', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('251118', null, '0', 'active', 'workflow1', 'workflow1-8', '8', 'jpdl-4.4', '2017-02-08 09:26:46', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('330046', null, '0', 'active', 'workflow1', 'workflow1-9', '9', 'jpdl-4.4', '2017-02-08 11:05:11', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('330085', null, '0', 'active', 'workflow1', 'workflow1-10', '10', 'jpdl-4.4', '2017-02-08 11:14:02', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('330089', null, '0', 'active', 'workflow1', 'workflow1-11', '11', 'jpdl-4.4', '2017-02-08 11:16:00', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('350016', null, '0', 'active', 'workflow1', 'workflow1-12', '12', 'jpdl-4.4', '2017-02-08 11:35:18', null, 'workflow1');
INSERT INTO `jbpm4_deployment` VALUES ('350147', null, '0', 'active', 'workflow1', 'workflow1-13', '13', 'jpdl-4.4', '2017-02-08 13:14:51', null, 'workflow1');

-- ----------------------------
-- Table structure for jbpm4_execution
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_execution`;
CREATE TABLE `jbpm4_execution` (
  `DBID_` decimal(19,0) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `ACTIVITYNAME_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `HASVARS_` decimal(1,0) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` decimal(10,0) DEFAULT NULL,
  `HISACTINST_` decimal(19,0) DEFAULT NULL,
  `PARENT_` decimal(19,0) DEFAULT NULL,
  `INSTANCE_` decimal(19,0) DEFAULT NULL,
  `SUPEREXEC_` decimal(19,0) DEFAULT NULL,
  `SUBPROCINST_` decimal(19,0) DEFAULT NULL,
  `PARENT_IDX_` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  UNIQUE KEY `IDX_EXEC_ID_` (`ID_`),
  KEY `IDX_EXEC_INSTANCE` (`INSTANCE_`),
  KEY `IDX_EXEC_PARENT` (`PARENT_`),
  KEY `IDX_EXEC_DEFID` (`PROCDEFID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='执行实例表，包含系统中所有的执行实例';

-- ----------------------------
-- Records of jbpm4_execution
-- ----------------------------
INSERT INTO `jbpm4_execution` VALUES ('50001', 'pvm', '5', '人工 2', 'workflow1-1', '1', null, 'workflow1.50000', 'workflow1.50000', 'active-root', null, '0', '50011', null, '50001', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('210026', 'pvm', '6', '人工 2', 'workflow1-2', '1', null, 'workflow1.210025', 'workflow1.210025', 'active-root', null, '0', '210037', null, '210026', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('210044', 'pvm', '6', '人工 2', 'workflow1-2', '1', null, 'workflow1.210043', 'workflow1.210043', 'active-root', null, '0', '210055', null, '210044', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('210062', 'pvm', '6', '人工 2', 'workflow1-2', '1', null, 'workflow1.210060', 'workflow1.210060', 'active-root', null, '0', '210073', null, '210062', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('240034', 'pvm', '6', '人工 2', 'workflow1-5', '1', null, 'workflow1.240033', 'workflow1.240033', 'active-root', null, '0', '240045', null, '240034', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('240052', 'pvm', '6', '人工 2', 'workflow1-5', '1', null, 'workflow1.240051', 'workflow1.240051', 'active-root', null, '0', '240063', null, '240052', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('250001', 'pvm', '6', '人工 2', 'workflow1-5', '1', null, 'workflow1.250000', 'workflow1.250000', 'active-root', null, '0', '250012', null, '250001', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('250034', 'pvm', '6', '人工 2', 'workflow1-5', '1', null, 'workflow1.250033', 'workflow1.250033', 'active-root', null, '0', '250045', null, '250034', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('250052', 'pvm', '7', '人工 2', 'workflow1-5', '1', null, 'workflow1.250051', 'workflow1.250051', 'active-root', null, '0', '250064', null, '250052', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('250071', 'pvm', '7', '人工 2', 'workflow1-5', '1', null, 'workflow1.250070', 'workflow1.250070', 'active-root', null, '0', '250083', null, '250071', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('250093', 'pvm', '7', '人工2', 'workflow1-6', '1', null, 'workflow1.250092', 'workflow1.250092', 'active-root', null, '0', '250104', null, '250093', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('251122', 'pvm', '7', '人工2', 'workflow1-8', '1', null, 'workflow1.251121', 'workflow1.251121', 'active-root', null, '0', '251133', null, '251122', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('330049', 'pvm', '9', '决策result1', 'workflow1-9', '1', null, 'workflow1.330048', 'workflow1.330048', 'active-root', null, '0', '330068', null, '330049', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('340001', 'pvm', '7', '人工2', 'workflow1-11', '1', null, 'workflow1.340000', 'workflow1.340000', 'active-root', null, '0', '340012', null, '340001', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('350019', 'pvm', '7', '人工2', 'workflow1-12', '1', null, 'workflow1.350018', 'workflow1.350018', 'active-root', null, '0', '350030', null, '350019', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('350151', 'pvm', '7', '人工2', 'workflow1-13', '1', null, 'workflow1.350150', 'workflow1.350150', 'active-root', null, '0', '350162', null, '350151', null, null, null);
INSERT INTO `jbpm4_execution` VALUES ('380083', 'pvm', '7', '人工2', 'workflow1-13', '1', null, 'workflow1.380082', 'workflow1.380082', 'active-root', null, '0', '380094', null, '380083', null, null, null);

-- ----------------------------
-- Table structure for jbpm4_ext_config
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_config`;
CREATE TABLE `jbpm4_ext_config` (
  `DBID_` decimal(19,0) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) NOT NULL,
  `VALUE_` varchar(1024) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `DESC_` varchar(1024) DEFAULT NULL,
  `MODIFY_USER_` varchar(255) DEFAULT NULL,
  `MODIFY_DATE_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流内部配置文件表，工作流的配置项都在hsBpmEngine.properties中，为了协作产品组更好的实施，可以将不同客户的配置项设置到这张表里面。配置项的取值规则，优先级：数据库〉配置文件〉默认值';

-- ----------------------------
-- Records of jbpm4_ext_config
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_delegate
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_delegate`;
CREATE TABLE `jbpm4_ext_delegate` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(50) DEFAULT NULL,
  `DELEGATE_USER` varchar(50) DEFAULT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `DELEGATE_TYPE` varchar(4) DEFAULT NULL,
  `TASK_STATE` char(1) DEFAULT NULL,
  `DELEGATE_TASK` decimal(19,0) DEFAULT NULL,
  `WITHDRAW_TASK` int(11) DEFAULT NULL,
  `DO_AS_DELEGATOR` char(1) DEFAULT NULL,
  `REMARK` varchar(500) DEFAULT NULL,
  `CREATEBY` varchar(50) DEFAULT NULL,
  `CREATETIME` datetime DEFAULT NULL,
  `INHERITABLE_` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_DELEGATE_TASK` (`DELEGATE_TASK`),
  KEY `IDX_DELEGATE_USER` (`DELEGATE_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全权委托定义表【单个任务委托已改为用子任务实现】';

-- ----------------------------
-- Records of jbpm4_ext_delegate
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_delegate_detail
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_delegate_detail`;
CREATE TABLE `jbpm4_ext_delegate_detail` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `DELEGATE_ID_` decimal(19,0) NOT NULL,
  `PROCESS_KEY_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `EXT_FIELD_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_DELEGATE_DT_ID` (`DELEGATE_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程委托详情表，记录对指定流程进行授权委托的信息';

-- ----------------------------
-- Records of jbpm4_ext_delegate_detail
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_dict
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_dict`;
CREATE TABLE `jbpm4_ext_dict` (
  `DBID_` decimal(19,0) NOT NULL,
  `TYPE_` varchar(50) NOT NULL,
  `VALUE_` varchar(50) NOT NULL,
  `DISPLAY_` varchar(50) NOT NULL,
  `RENDERER_` varchar(200) NOT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_COMBTYPE` (`TYPE_`),
  KEY `IDX_COMBO_VALUE` (`TYPE_`,`VALUE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作流自带数据字典表，涉及所有下拉框的数据表,还可以应用在grid列的渲染上等';

-- ----------------------------
-- Records of jbpm4_ext_dict
-- ----------------------------
INSERT INTO `jbpm4_ext_dict` VALUES ('100001', 'workflow_instanceState', 'active', '正在运行', '<font color=\'green\'>正在运行</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100002', 'workflow_instanceState', 'ended', '正常结束', '<font color=\'green\'>正常终止</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100003', 'workflow_instanceState', 'terminated', '强制终止', '<font color=\'red\'>强制终止</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100004', 'workflow_instanceState', 'suspended', '暂停', '<font color=\'blue\'>暂停</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100005', 'workflow_instanceState', 'cancel', '发起人撤销', '<font color=\'red\'>发起人撤销</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100006', 'workflow_instanceState', 'reject', '否决', '<font color=\'red\'>否决</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100007', 'workflow_instanceState', 'approved', '批准', '<font color=\'green\'>批准</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100008', 'workflow_instanceState', 'abandoned', '已废除', '<font color=\'green\'>已废除</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100009', 'workflow_instanceState', 'auto_service_error', '执行服务失败', '<font color=\'red\'>执行服务失败</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100010', 'workflow_instanceState', 'auto_timeout', '等待节点超时', '<font color=\'red\'>等待节点超时</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100100', 'workflow_todoTaskState', 'open', '待处理', '<font color=\'green\'>待处理</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100101', 'workflow_historyTaskState', 'completed', '完成', '<font color=\'green\'>完成</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100102', 'workflow_historyTaskState', 'obsolete', '过时', '<font color=\'red\'>过时</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100103', 'workflow_historyTaskState', 'approval', '赞成', '<font color=\'green\'>赞成(会签)</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100104', 'workflow_historyTaskState', 'reject', '否决', '<font color=\'blue\'>反对(会签)</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100105', 'workflow_historyTaskState', 'rollback', '已退回', '<font color=\'red\'>已退回</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100106', 'workflow_historyTaskState', 'withdraw', '已撤销', '<font color=\'red\'>已撤销</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100107', 'workflow_todoTaskState', 'candidate', '待签收', '<font color=\'green\'>待签收</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100108', 'workflow_todoTaskState', 'coordinate', '协作中', '<font color=\'green\'>协作中</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100109', 'workflow_todoTaskState', 'countersign-super', '会审中', '<font color=\'green\'>会审中</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100110', 'workflow_todoTaskState', 'countersign-sub', '待审核', '<font color=\'green\'>待审核(会签)</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100111', 'workflow_historyTaskState', 'waive', '弃权', '<font color=\'green\'>弃权(会签)</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100112', 'workflow_historyTaskState', 'quit', '不参加', '<font color=\'green\'>不参加(会签)</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100113', 'workflow_todoTaskState', 'delegated', '已委派', '<font color=\'green\'>已委托</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100114', 'workflow_todoTaskState', 'agent', '代理', '<font color=\'green\'>代理</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100115', 'workflow_historyTaskState', 'agentcomplete', '代理完成', '<font color=\'green\'>代理完成</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100116', 'workflow_todoTaskState', 'vote', '投票', '<font color=\'green\'>投票</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100117', 'workflow_todoTaskState', 'voteHost', '主持人', '<font color=\'green\'>主持人</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100118', 'workflow_historyTaskState', 'cancel', '取消', '<font color=\'red\'>取消</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100119', 'workflow_historyTaskState', 'terminated', '终止', '<font color=\'red\'>终止</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100120', 'workflow_todoTaskState', 'pre-vote', '待投票', '<font color=\'green\'>待投票</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100121', 'workflow_todoTaskState', 'voting', '投票中', '<font color=\'green\'>投票中</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100122', 'workflow_todoTaskState', 'voted', '已投票', '<font color=\'green\'>已投票</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100123', 'workflow_todoTaskState', 'coordinate-completed', '协作完成', '<font color=\'green\'>协作完成</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100124', 'workflow_suspendTaskState', 'suspended', '暂停', '<font color=\'blue\'>暂停</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100125', 'workflow_historyTaskState', 'normal', '正常结束', '<font color=\'green\'>正常结束</font>');
INSERT INTO `jbpm4_ext_dict` VALUES ('100200', 'workflow_formTemplate', 'PAGE_JSP', 'JSP页面(PAGE_JSP)', 'JSP页面');
INSERT INTO `jbpm4_ext_dict` VALUES ('100201', 'workflow_formTemplate', 'PAGE_MW', 'JRES页面(PAGE_MW)', 'JRES页面');
INSERT INTO `jbpm4_ext_dict` VALUES ('100202', 'workflow_formTemplate', 'PAGE_MDA', 'MDA页面(PAGE_MDA)', 'MDA页面');
INSERT INTO `jbpm4_ext_dict` VALUES ('100302', 'workflow_serviceType', 'spring', 'spring', 'Spring');
INSERT INTO `jbpm4_ext_dict` VALUES ('100303', 'workflow_serviceType', 'T2', 'T2', 'T2');
INSERT INTO `jbpm4_ext_dict` VALUES ('100400', 'workflow_taskPriority', '0', '正常', '正常');
INSERT INTO `jbpm4_ext_dict` VALUES ('100401', 'workflow_taskPriority', '1', '高', '高');
INSERT INTO `jbpm4_ext_dict` VALUES ('100402', 'workflow_taskPriority', '2', '极高', '极高');
INSERT INTO `jbpm4_ext_dict` VALUES ('100403', 'workflow_taskPriority', '-1', '低', '低');
INSERT INTO `jbpm4_ext_dict` VALUES ('100404', 'workflow_taskPriority', '-2', '极低', '极低');
INSERT INTO `jbpm4_ext_dict` VALUES ('200000', 'workflow_taskDefault', 'start', '发起流程', '发起流程');
INSERT INTO `jbpm4_ext_dict` VALUES ('200001', 'workflow_taskDefault', 'submit', '提交任务', '提交任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('200002', 'workflow_taskDefault', 'fieldEdit', '表单关键字段更改', '表单关键字段更改');
INSERT INTO `jbpm4_ext_dict` VALUES ('200003', 'workflow_taskDetail', 'addCooridinator', '协作', '协作');
INSERT INTO `jbpm4_ext_dict` VALUES ('200004', 'workflow_taskDetail', 'cancelCoordinator', '取消协作', '取消协作');
INSERT INTO `jbpm4_ext_dict` VALUES ('200005', 'workflow_taskDetail', 'addNoticer', '分阅', '分阅');
INSERT INTO `jbpm4_ext_dict` VALUES ('200006', 'workflow_taskDetail', 'cancelNoticer', '取消分阅', '取消分阅');
INSERT INTO `jbpm4_ext_dict` VALUES ('200007', 'workflow_taskDetail', 'addForward', '转发', '转发');
INSERT INTO `jbpm4_ext_dict` VALUES ('200008', 'workflow_taskDetail', 'cancelForward', '取消转发', '取消转发');
INSERT INTO `jbpm4_ext_dict` VALUES ('200009', 'workflow_taskDetail', 'taskDelegate', '任务委派', '任务委派');
INSERT INTO `jbpm4_ext_dict` VALUES ('200010', 'workflow_taskDetail', 'taskAutoDelegate', '根据委托定义委派', '根据委托定义委派');
INSERT INTO `jbpm4_ext_dict` VALUES ('200011', 'workflow_taskDetail', 'assignTask', '重新分配', '重新分配');
INSERT INTO `jbpm4_ext_dict` VALUES ('200012', 'workflow_taskDetail', 'transferTask', '任务移交', '任务移交');
INSERT INTO `jbpm4_ext_dict` VALUES ('200013', 'workflow_taskDetail', 'submitReviewTask', '提交分阅意见', '提交分阅意见');
INSERT INTO `jbpm4_ext_dict` VALUES ('200014', 'workflow_taskDetail', 'submitForward', '提交转发意见', '提交转发意见');
INSERT INTO `jbpm4_ext_dict` VALUES ('200015', 'workflow_taskDetail', 'signTask', '签收任务', '签收任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('200016', 'workflow_taskDetail', 'revokeTask', '任务撤回', '任务撤回');
INSERT INTO `jbpm4_ext_dict` VALUES ('200020', 'workflow_instanceOperate', 'suspendInstance', '暂停实例', '暂停实例');
INSERT INTO `jbpm4_ext_dict` VALUES ('200021', 'workflow_instanceOperate', 'resumeInstance', '恢复实例', '恢复实例');
INSERT INTO `jbpm4_ext_dict` VALUES ('200022', 'workflow_instanceOperate', 'jumpInstance', '实例跳转', '实例跳转');
INSERT INTO `jbpm4_ext_dict` VALUES ('200023', 'workflow_instanceOperate', 'terminateInstance', '终止实例', '终止实例');
INSERT INTO `jbpm4_ext_dict` VALUES ('200024', 'workflow_instanceOperate', 'abandonInstance', '废除实例', '废除实例');
INSERT INTO `jbpm4_ext_dict` VALUES ('200025', 'workflow_instanceOperate', 'deleteInstance', '删除实例', '删除实例');
INSERT INTO `jbpm4_ext_dict` VALUES ('200030', 'workflow_delegateOperate', 'addDelegate', '添加委托定义', '添加委托定义');
INSERT INTO `jbpm4_ext_dict` VALUES ('200031', 'workflow_delegateOperate', 'enableDelegate', '启用委托定义', '启用委托定义');
INSERT INTO `jbpm4_ext_dict` VALUES ('200032', 'workflow_delegateOperate', 'stopDelegate', '停止委托定义', '停止委托定义');
INSERT INTO `jbpm4_ext_dict` VALUES ('200033', 'workflow_delegateOperate', 'abandonDelegate', '废除委托定义', '废除委托定义');
INSERT INTO `jbpm4_ext_dict` VALUES ('200034', 'workflow_delegateOperate', 'updateDelegate', '修改委托定义', '修改委托定义');
INSERT INTO `jbpm4_ext_dict` VALUES ('300001', 'workflow_processType', '1', '审批流程', '审批流程');
INSERT INTO `jbpm4_ext_dict` VALUES ('300002', 'workflow_processType', '2', '自动流程', '自动流程');
INSERT INTO `jbpm4_ext_dict` VALUES ('300101', 'workflow_eventType', 'task-notification', '普通任务', '普通任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300102', 'workflow_eventType', 'coordinate-start', '协作任务', '协作任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300103', 'workflow_eventType', 'countersign-start', '会签任务', '会签任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300104', 'workflow_eventType', 'countersign-add', '添加会签任务', '添加会签任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300105', 'workflow_eventType', 'vote-start', '投票任务', '投票任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300106', 'workflow_eventType', 'vote-add', '添加投票任务', '添加投票任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300107', 'workflow_eventType', 'manyapprove-start', '多人审批任务', '多人审批任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300108', 'workflow_eventType', 'manyapprove-add', '添加多人审批任务', '添加多人审批任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300109', 'workflow_eventType', 'delegate-start', '委托任务', '委托任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300110', 'workflow_eventType', 'candidate', '待签收任务', '待签收任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300111', 'workflow_eventType', 'AgentAdd', '委派任务', '委派任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300112', 'workflow_eventType', 'remind', '催办任务', '催办任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300113', 'workflow_eventType', 'votetask-complete', '投票子任务完成', '投票子任务完成');
INSERT INTO `jbpm4_ext_dict` VALUES ('300114', 'workflow_taskType', 'O', '人工任务', '人工任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300115', 'workflow_taskType', 'D', '会签主任务', '会签主任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300116', 'workflow_taskType', 'B', '会签子任务', '会签子任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300117', 'workflow_taskType', 'M', '多人审批主任务', '多人审批主任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300118', 'workflow_taskType', 'm', '多人审批子任务', '多人审批子任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300119', 'workflow_taskType', 'V', '投票主任务', '投票主任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300120', 'workflow_taskType', 'v', '投票子任务', '投票子任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300121', 'workflow_taskType', 'C', '协作子任务', '协作子任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('300122', 'workflow_taskType', 'F', '委托子任务', '委托子任务');
INSERT INTO `jbpm4_ext_dict` VALUES ('400001', 'workflow_event_service_execute_location', 'node_start', '节点进入事件', '节点进入事件');
INSERT INTO `jbpm4_ext_dict` VALUES ('400002', 'workflow_event_service_execute_location', 'node_end', '节点结束事件', '节点结束事件');
INSERT INTO `jbpm4_ext_dict` VALUES ('400003', 'workflow_event_service_execute_location', 'node_auto_execute', '自动节点执行', '自动节点执行');
INSERT INTO `jbpm4_ext_dict` VALUES ('400004', 'workflow_event_service_execute_location', 'node_auto_state', '等待节点执行', '等待节点执行');

-- ----------------------------
-- Table structure for jbpm4_ext_exp
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_exp`;
CREATE TABLE `jbpm4_ext_exp` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME_` varchar(200) NOT NULL,
  `LANG_` varchar(200) DEFAULT NULL,
  `DESC_` varchar(1024) DEFAULT NULL,
  `CODE_` varchar(1024) DEFAULT NULL,
  `PARAMS_IN_` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表达式定义';

-- ----------------------------
-- Records of jbpm4_ext_exp
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_formclass
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_formclass`;
CREATE TABLE `jbpm4_ext_formclass` (
  `UUID` varchar(32) NOT NULL,
  `PARENTID` varchar(32) NOT NULL,
  `FORMCLASSNAME` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  KEY `IDX_FORMCLASSID` (`PARENTID`),
  KEY `IDX_FORMCLASS_NAME` (`FORMCLASSNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单分类表，存储表单的分类信息';

-- ----------------------------
-- Records of jbpm4_ext_formclass
-- ----------------------------
INSERT INTO `jbpm4_ext_formclass` VALUES ('7d594b59b52f4dcbb5f70afbb01d41fc', '0', 'demo1', null);

-- ----------------------------
-- Table structure for jbpm4_ext_formreg
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_formreg`;
CREATE TABLE `jbpm4_ext_formreg` (
  `UUID` varchar(32) NOT NULL,
  `CLASSID` varchar(32) NOT NULL,
  `FORMTYPE` varchar(20) DEFAULT 'PAGE_MDA',
  `FORMNAME` varchar(100) NOT NULL,
  `FORMURL` varchar(500) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `FORMCODE` varchar(100) DEFAULT NULL,
  `EXTFIELD1` varchar(100) DEFAULT NULL,
  `EXTFIELD2` varchar(100) DEFAULT NULL,
  `EXTFIELD3` varchar(100) DEFAULT NULL,
  `FORM_TEMPLATEID` decimal(19,0) DEFAULT '0',
  `BACKUP_FLAG` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  KEY `IDX_FORMREG_CLASSID` (`CLASSID`),
  KEY `IDX_FORMREG_NAME` (`FORMNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单注册表';

-- ----------------------------
-- Records of jbpm4_ext_formreg
-- ----------------------------
INSERT INTO `jbpm4_ext_formreg` VALUES ('09dd5eb39b734ec8badf3b21d4d5d218', '7d594b59b52f4dcbb5f70afbb01d41fc', null, '申请页面', '/leave/index.htm', null, null, '', '', '', '0', null);
INSERT INTO `jbpm4_ext_formreg` VALUES ('379c8886304c483b8fef0e02249b851f', '7d594b59b52f4dcbb5f70afbb01d41fc', null, '请假1', '/leave/oneLevel.htm', null, null, '', '', '', '0', null);
INSERT INTO `jbpm4_ext_formreg` VALUES ('a6160107c4d64c80900c40c98163f068', '7d594b59b52f4dcbb5f70afbb01d41fc', null, '请假2', '/leave/twoLevel.htm', null, null, '', '', '', '0', null);

-- ----------------------------
-- Table structure for jbpm4_ext_form_resreg
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_form_resreg`;
CREATE TABLE `jbpm4_ext_form_resreg` (
  `UUID` varchar(32) NOT NULL,
  `FORMID` varchar(500) NOT NULL,
  `RESID` varchar(50) NOT NULL,
  `RESNAME` varchar(100) NOT NULL,
  `RESTYPE` varchar(30) DEFAULT 'COLUMN',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='表单中的资源登记表，定义了表单中有哪些资源【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_ext_form_resreg
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_form_resstatus
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_form_resstatus`;
CREATE TABLE `jbpm4_ext_form_resstatus` (
  `UUID` varchar(32) NOT NULL,
  `RESUUID` varchar(32) NOT NULL,
  `PROCESSVERSIONID` varchar(50) NOT NULL,
  `PROCESSNODEID` varchar(150) NOT NULL,
  `RESSTATUS` varchar(10) NOT NULL DEFAULT 'w',
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源状态记录表【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_ext_form_resstatus
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_hist_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_hist_task`;
CREATE TABLE `jbpm4_ext_hist_task` (
  `DBID_` decimal(19,0) NOT NULL,
  `NAME_` varchar(255) NOT NULL,
  `BIZ_FLOW_UUID_` varchar(255) DEFAULT NULL,
  `EXTFIELD1` varchar(100) DEFAULT NULL,
  `EXTFIELD2` varchar(500) DEFAULT NULL,
  `TASKSTATUS` varchar(50) DEFAULT 'open',
  `CLASS_` char(1) DEFAULT NULL,
  `VISIBLE_` char(1) DEFAULT NULL,
  `ASSIGNEE_NAME_` varchar(1000) DEFAULT NULL,
  `ARCHIVE_STATUS` decimal(1,0) DEFAULT '0',
  `AGENT_ID_` varchar(255) DEFAULT NULL,
  `AGENT_NAME_` varchar(255) DEFAULT NULL,
  `PARENT_TASK_` decimal(19,0) DEFAULT NULL,
  `AGENT_PATH_` varchar(1024) DEFAULT NULL,
  `DELEGATE_PATH_` varchar(1024) DEFAULT NULL,
  `REMARK_` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_TASKBIZUUID` (`BIZ_FLOW_UUID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史任务扩展表';

-- ----------------------------
-- Records of jbpm4_ext_hist_task
-- ----------------------------
INSERT INTO `jbpm4_ext_hist_task` VALUES ('50003', 'workflow1_人工 1(1)', null, '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('50009', 'workflow1_人工 2(1)', null, null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('50036', 'workflow1_人工 1(2)', null, '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('50043', 'workflow1_人工 2(2)', null, '动作 2', null, 'completed', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('210028', 'workflow1_人工 1(1)', '1', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('210035', 'workflow1_人工 2(1)', '1', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('210046', 'workflow1_人工 1(1)', '2', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('210053', 'workflow1_人工 2(1)', '2', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('210064', 'workflow1_人工 1(1)', '3', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('210071', 'workflow1_人工 2(1)', '3', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('240036', 'workflow1_人工 1(1)', '6', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('240043', 'workflow1_人工 2(1)', '6', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('240054', 'workflow1_人工 1(1)', '7', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('240061', 'workflow1_人工 2(1)', '7', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250003', 'workflow1_人工 1(1)', '8', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250010', 'workflow1_人工 2(1)', '8', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250036', 'workflow1_人工 1(1)', '9', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250043', 'workflow1_人工 2(1)', '9', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250054', 'workflow1_人工 1(1)', '10', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250062', 'workflow1_人工 2(1)', '10', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250073', 'workflow1_人工 1(1)', '11', '动作 1', '2', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250081', 'workflow1_人工 2(1)', '11', null, null, 'open', 'O', 'Y', '2', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250095', 'workflow1_人工1(1)', '12', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('250103', 'workflow1_人工2(1)', '12', null, null, 'open', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('251124', 'workflow1_人工1(1)', '13', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('251132', 'workflow1_人工2(1)', '13', null, null, 'open', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('330026', 'workflow1_人工1(1)', '14', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('330035', 'workflow1_人工2(1)', '15', '动作 2', null, 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('330051', 'workflow1_人工1(1)', '16', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('330059', 'workflow1_人工2(1)', '17', '动作 2', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('330066', 'workflow1_决策result1(1)', '17', null, null, 'open', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('340003', 'workflow1_人工1(1)', '18', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('340011', 'workflow1_人工2(1)', '18', null, null, 'open', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('350021', 'workflow1_人工1(1)', '22', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('350029', 'workflow1_人工2(1)', '22', null, null, 'open', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('350153', 'workflow1_人工1(1)', '24', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('350161', 'workflow1_人工2(1)', '24', null, null, 'open', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380003', 'workflow1_人工1(1)', '25', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380011', 'workflow1_人工2(1)', '26', '动作 2', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380020', 'workflow1_决策result1(1)', '30', '动作 3', null, 'completed', 'O', 'Y', 'admin 111', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380037', 'workflow1_人工1(1)', '27', '动作 1', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380045', 'workflow1_人工2(1)', '28', '动作 2', '1', 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380052', 'workflow1_决策result1(1)', '29', '动作 3', null, 'completed', 'O', 'Y', '1', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380085', 'workflow1_人工1(admin 111)', '32', '动作 1', 'admin 111', 'completed', 'O', 'Y', 'admin 111', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380093', 'workflow1_人工2(admin 111)', '32', null, null, 'open', 'O', 'Y', 'admin 111', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380102', 'workflow1_人工1(admin 111)', '33', '动作 1', 'admin 111', 'completed', 'O', 'Y', 'admin 111', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380110', 'workflow1_人工2(admin 111)', '34', '动作 2', 'admin 111', 'completed', 'O', 'Y', 'admin 111', '0', null, null, '0', null, null, null);
INSERT INTO `jbpm4_ext_hist_task` VALUES ('380117', 'workflow1_决策result1(admin 111)', '35', '动作 3', null, 'completed', 'O', 'Y', 'admin 111', '0', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for jbpm4_ext_log
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_log`;
CREATE TABLE `jbpm4_ext_log` (
  `DBID_` decimal(19,0) NOT NULL,
  `REQ_NO_` varchar(30) DEFAULT NULL,
  `STEP_NAME_` varchar(50) DEFAULT NULL,
  `INSTANCE_ID_` varchar(100) DEFAULT NULL,
  `TASK_ID_` decimal(19,0) DEFAULT NULL,
  `USER_ID_` varchar(30) DEFAULT NULL,
  `LOG_TIME_` datetime NOT NULL,
  `THREAD_ID_` varchar(50) DEFAULT NULL,
  `CLASS_NAME_` varchar(200) DEFAULT NULL,
  `CODE_LINE_` decimal(19,0) DEFAULT NULL,
  `LOG_CONTENT` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程日志表';

-- ----------------------------
-- Records of jbpm4_ext_log
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_message_template
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_message_template`;
CREATE TABLE `jbpm4_ext_message_template` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TEMPLATE_ID_` varchar(255) NOT NULL,
  `EVENT_NAME_` varchar(255) NOT NULL,
  `TEMPLATE_NAME_` varchar(255) NOT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JBPM4_EXT_MESSAGE_TEMPLATE';

-- ----------------------------
-- Records of jbpm4_ext_message_template
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_msgtemplate_detail
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_msgtemplate_detail`;
CREATE TABLE `jbpm4_ext_msgtemplate_detail` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TEMPLATE_ID_` varchar(255) DEFAULT NULL,
  `SUBJECT_` varchar(255) DEFAULT NULL,
  `CONTENT_` varchar(4000) DEFAULT NULL,
  `MESSAGE_TYPE_` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JBPM4_EXT_MSGTEMPLATE_DETAIL';

-- ----------------------------
-- Records of jbpm4_ext_msgtemplate_detail
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_mwtemplate
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_mwtemplate`;
CREATE TABLE `jbpm4_ext_mwtemplate` (
  `DBID_` decimal(19,0) NOT NULL,
  `TP_NAME` varchar(255) NOT NULL,
  `TP_URL` varchar(1000) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程模板登记表，记录了系统中可用的流程模板的名称和路径';

-- ----------------------------
-- Records of jbpm4_ext_mwtemplate
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_node_fields
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_node_fields`;
CREATE TABLE `jbpm4_ext_node_fields` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_ID_` decimal(19,0) DEFAULT NULL,
  `NODE_` varchar(255) DEFAULT NULL,
  `FIELD_ID_` varchar(255) DEFAULT NULL,
  `FIELD_NAME_` varchar(255) DEFAULT NULL,
  `PERMISSION_` decimal(2,0) DEFAULT NULL,
  `TRACE_` decimal(1,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_NODEFIELD_NODE` (`NODE_`),
  KEY `IDX_NODEFIELD_VERID` (`VERSION_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录需要留痕的字段';

-- ----------------------------
-- Records of jbpm4_ext_node_fields
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_notice_detail
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_notice_detail`;
CREATE TABLE `jbpm4_ext_notice_detail` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESS_INSTANCE_ID` varchar(255) NOT NULL,
  `TASK_ID_` decimal(19,0) NOT NULL,
  `NODE_NAME_` varchar(255) DEFAULT NULL,
  `SENDER_ID_` varchar(20) NOT NULL,
  `SENDER_NAME_` varchar(255) DEFAULT NULL,
  `RECIVER_ID_` varchar(20) NOT NULL,
  `RECIVER_NAME` varchar(255) DEFAULT NULL,
  `HAS_READ` varchar(2) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `EDIT_TIME` datetime DEFAULT NULL,
  `NOTICEMSG` text,
  `ISALIVE` varchar(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分阅表';

-- ----------------------------
-- Records of jbpm4_ext_notice_detail
-- ----------------------------
INSERT INTO `jbpm4_ext_notice_detail` VALUES ('1', 'workflow1.380000', '380011', '人工2', 'admin', '1', 'admin', '1', '1', '2017-02-08 13:54:36', '2017-02-08 13:55:12', null, '1');
INSERT INTO `jbpm4_ext_notice_detail` VALUES ('2', 'workflow1.380034', '380045', '人工2', 'admin', '1', 'admin', '1', '0', '2017-02-08 13:56:07', null, null, '1');
INSERT INTO `jbpm4_ext_notice_detail` VALUES ('3', 'workflow1.380034', '380052', '决策result1', 'admin', '1', 'admin', '1', '0', '2017-02-08 13:56:23', null, null, '1');
INSERT INTO `jbpm4_ext_notice_detail` VALUES ('4', 'workflow1.380000', '380020', '决策result1', 'admin', 'admin 111', 'admin', 'admin 111', '0', '2017-02-08 14:07:17', null, null, '1');
INSERT INTO `jbpm4_ext_notice_detail` VALUES ('5', 'workflow1.380099', '380110', '人工2', 'admin', 'admin 111', 'admin', 'admin 111', '0', '2017-02-08 14:09:40', null, null, '1');
INSERT INTO `jbpm4_ext_notice_detail` VALUES ('6', 'workflow1.380099', '380117', '决策result1', 'admin', 'admin 111', 'admin', 'admin 111', '0', '2017-02-08 14:10:32', null, null, '1');

-- ----------------------------
-- Table structure for jbpm4_ext_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_operation_log`;
CREATE TABLE `jbpm4_ext_operation_log` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPERATOR_ID_` varchar(255) NOT NULL,
  `OPERATOR_NAME_` varchar(255) DEFAULT NULL,
  `CREATETIME_` datetime NOT NULL,
  `OPERATION_` varchar(20) NOT NULL,
  `PROC_INST_ID_` varchar(255) DEFAULT NULL,
  `TASK_ID_` decimal(19,0) DEFAULT NULL,
  `NODE_NAME_` varchar(1000) DEFAULT NULL,
  `ACTION_NAME_` varchar(20) NOT NULL DEFAULT ' ',
  `ACTION_DETAIL_` varchar(255) DEFAULT NULL,
  `REMARK_` varchar(1000) DEFAULT NULL,
  `PRIMARY_KEY_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='JBPM4_EXT_OPERATION_LOG';

-- ----------------------------
-- Records of jbpm4_ext_operation_log
-- ----------------------------
INSERT INTO `jbpm4_ext_operation_log` VALUES ('1', 'admin', '1', '2017-01-19 10:48:32', 'start', 'workflow1.50000', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('2', 'admin', '1', '2017-01-19 10:48:32', 'submit', 'workflow1.50000', '50003', '人工 1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('3', 'admin2', '2', '2017-01-19 10:55:34', 'start', 'workflow1.50033', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('4', 'admin', '1', '2017-01-19 10:56:20', 'submit', 'workflow1.50033', '50036', '人工 1', '动作 1', null, 'rr', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('5', 'admin2', '2', '2017-01-19 10:57:22', 'submit', 'workflow1.50033', '50043', '人工 2', '动作 2', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('6', 'admin', '1', '2017-02-07 16:03:07', 'start', 'workflow1.210025', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('7', 'admin', '1', '2017-02-07 16:03:07', 'submit', 'workflow1.210025', '210028', '人工 1', '动作 1', null, 'SDFDSS', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('8', 'admin', '1', '2017-02-07 16:04:55', 'start', 'workflow1.210043', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('9', 'admin', '1', '2017-02-07 16:04:55', 'submit', 'workflow1.210043', '210046', '人工 1', '动作 1', null, 'DD', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('10', 'admin', '1', '2017-02-07 16:06:10', 'start', 'workflow1.210060', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('11', 'admin', '1', '2017-02-07 16:06:10', 'submit', 'workflow1.210060', '210064', '人工 1', '动作 1', null, 'WE', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('14', 'admin', '1', '2017-02-07 16:57:00', 'start', 'workflow1.240033', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('15', 'admin', '1', '2017-02-07 16:57:00', 'submit', 'workflow1.240033', '240036', '人工 1', '动作 1', null, 'aaaa', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('16', 'admin', '1', '2017-02-07 16:58:28', 'start', 'workflow1.240051', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('17', 'admin', '1', '2017-02-07 16:58:28', 'submit', 'workflow1.240051', '240054', '人工 1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('18', 'admin', '1', '2017-02-07 17:00:56', 'start', 'workflow1.250000', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('19', 'admin', '1', '2017-02-07 17:00:56', 'submit', 'workflow1.250000', '250003', '人工 1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('20', 'admin', '1', '2017-02-07 17:09:17', 'start', 'workflow1.250033', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('21', 'admin', '1', '2017-02-07 17:09:17', 'submit', 'workflow1.250033', '250036', '人工 1', '动作 1', null, '', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('22', 'admin', '1', '2017-02-07 17:10:38', 'start', 'workflow1.250051', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('23', 'admin', '1', '2017-02-07 17:10:38', 'submit', 'workflow1.250051', '250054', '人工 1', '动作 1', null, 'd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('24', 'admin', '1', '2017-02-07 17:12:14', 'start', 'workflow1.250070', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('25', 'admin', '1', '2017-02-07 17:12:14', 'submit', 'workflow1.250070', '250073', '人工 1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('26', 'admin', '1', '2017-02-07 17:15:00', 'start', 'workflow1.250092', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('27', 'admin', '1', '2017-02-07 17:15:00', 'submit', 'workflow1.250092', '250095', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('28', 'admin', '1', '2017-02-08 09:27:44', 'start', 'workflow1.251121', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('29', 'admin', '1', '2017-02-08 09:27:45', 'submit', 'workflow1.251121', '251124', '人工1', '动作 1', null, 'sss', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('30', 'admin', '1', '2017-02-08 11:03:00', 'start', 'workflow1.330023', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('31', 'admin', '1', '2017-02-08 11:03:00', 'submit', 'workflow1.330023', '330026', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('32', 'admin', '1', '2017-02-08 11:03:14', 'submit', 'workflow1.330023', '330035', '人工2', '动作 2', null, '22', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('33', 'admin', '1', '2017-02-08 11:05:20', 'start', 'workflow1.330048', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('34', 'admin', '1', '2017-02-08 11:05:20', 'submit', 'workflow1.330048', '330051', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('35', 'admin', '1', '2017-02-08 11:05:28', 'submit', 'workflow1.330048', '330059', '人工2', '动作 2', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('36', 'admin', '1', '2017-02-08 11:18:21', 'start', 'workflow1.340000', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('37', 'admin', '1', '2017-02-08 11:18:22', 'submit', 'workflow1.340000', '340003', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('40', 'admin', '1', '2017-02-08 11:35:28', 'start', 'workflow1.350018', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('41', 'admin', '1', '2017-02-08 11:35:28', 'submit', 'workflow1.350018', '350021', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('43', 'admin', '1', '2017-02-08 13:15:32', 'start', 'workflow1.350150', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('44', 'admin', '1', '2017-02-08 13:15:32', 'submit', 'workflow1.350150', '350153', '人工1', '动作 1', null, 'ff', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('45', 'admin', '1', '2017-02-08 13:54:21', 'start', 'workflow1.380000', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('46', 'admin', '1', '2017-02-08 13:54:21', 'submit', 'workflow1.380000', '380003', '人工1', '动作 1', null, 'ss', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('47', 'admin', '1', '2017-02-08 13:54:36', 'addNoticer', 'workflow1.380000', '380011', '人工2', '知会', '添加知会人[1(admin)]', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('48', 'admin', '1', '2017-02-08 13:54:50', 'submit', 'workflow1.380000', '380011', '人工2', '动作 2', null, 'sss', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('49', 'admin', '1', '2017-02-08 13:55:12', 'submitNoticeTask', 'workflow1.380000', '380011', '人工2', '提交知会', null, null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('50', 'admin', '1', '2017-02-08 13:55:52', 'start', 'workflow1.380034', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('51', 'admin', '1', '2017-02-08 13:55:52', 'submit', 'workflow1.380034', '380037', '人工1', '动作 1', null, 'sss', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('52', 'admin', '1', '2017-02-08 13:56:07', 'addNoticer', 'workflow1.380034', '380045', '人工2', '知会', '添加知会人[1(admin)]', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('53', 'admin', '1', '2017-02-08 13:56:07', 'submit', 'workflow1.380034', '380045', '人工2', '动作 2', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('54', 'admin', '1', '2017-02-08 13:56:23', 'addNoticer', 'workflow1.380034', '380052', '决策result1', '知会', '添加知会人[1(admin)]', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('55', 'admin', '1', '2017-02-08 13:56:23', 'submit', 'workflow1.380034', '380052', '决策result1', '动作 3', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('56', 'admin', 'admin 111', '2017-02-08 14:07:17', 'addNoticer', 'workflow1.380000', '380020', '决策result1', '知会', '添加知会人[admin 111(admin)]', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('57', 'admin', 'admin 111', '2017-02-08 14:07:17', 'submit', 'workflow1.380000', '380020', '决策result1', '动作 3', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('58', 'admin', 'admin 111', '2017-02-08 14:08:51', 'start', 'workflow1.380082', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('59', 'admin', 'admin 111', '2017-02-08 14:08:51', 'submit', 'workflow1.380082', '380085', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('60', 'admin', 'admin 111', '2017-02-08 14:09:24', 'start', 'workflow1.380099', '0', null, '发起流程', '', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('61', 'admin', 'admin 111', '2017-02-08 14:09:24', 'submit', 'workflow1.380099', '380102', '人工1', '动作 1', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('62', 'admin', 'admin 111', '2017-02-08 14:09:40', 'addNoticer', 'workflow1.380099', '380110', '人工2', '知会', '添加知会人[admin 111(admin)]', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('63', 'admin', 'admin 111', '2017-02-08 14:09:42', 'submit', 'workflow1.380099', '380110', '人工2', '动作 2', null, 'dd', null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('64', 'admin', 'admin 111', '2017-02-08 14:10:32', 'addNoticer', 'workflow1.380099', '380117', '决策result1', '知会', '添加知会人[admin 111(admin)]', null, null);
INSERT INTO `jbpm4_ext_operation_log` VALUES ('65', 'admin', 'admin 111', '2017-02-08 14:10:35', 'submit', 'workflow1.380099', '380117', '决策result1', '动作 3', null, 'ww', null);

-- ----------------------------
-- Table structure for jbpm4_ext_pro
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_pro`;
CREATE TABLE `jbpm4_ext_pro` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESS_ID` varchar(36) NOT NULL,
  `PROCESS_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXT_BIZ_TYPE` varchar(16) DEFAULT NULL,
  `EXT_FIELD1` varchar(255) DEFAULT NULL,
  `EXT_FIELD2` varchar(255) DEFAULT NULL,
  `BIZ_REFERRENCE_CODE` varchar(255) DEFAULT NULL,
  `CAN_HUMAN_START` decimal(1,0) DEFAULT '1',
  `CANCEL_BEFORE_END` decimal(1,0) DEFAULT '0',
  `TYPE_ID` decimal(19,0) DEFAULT NULL,
  `SORT_INDEX` decimal(19,0) DEFAULT '0',
  `EXT_FIELD3` varchar(255) DEFAULT NULL,
  `EXT_FIELD6` varchar(255) DEFAULT NULL,
  `EXT_FIELD7` varchar(255) DEFAULT NULL,
  `EXT_FIELD8` varchar(255) DEFAULT NULL,
  `EXT_FIELD9` varchar(255) DEFAULT NULL,
  `EXT_FIELD4` varchar(255) DEFAULT NULL,
  `EXT_FIELD5` varchar(255) DEFAULT NULL,
  `EXT_NUMBER1` decimal(19,0) DEFAULT NULL,
  `EXT_NUMBER2` decimal(19,0) DEFAULT NULL,
  `EXT_DATE1` datetime DEFAULT NULL,
  `EXT_DATE2` datetime DEFAULT NULL,
  `IGNORE_EXIST_USER` decimal(1,0) NOT NULL DEFAULT '0',
  `TASK_SKIP_NOUSER` decimal(1,0) NOT NULL DEFAULT '0',
  `TASK_SKIP_NOUSER_AUTOVALUE` varchar(255) DEFAULT NULL,
  `EXCLUDE_USER_AND_AUTO_SUBMIT` decimal(1,0) DEFAULT '0',
  `PRO_DESC_FILE_NAME` varchar(255) DEFAULT NULL,
  `PRO_DESC_FILE_LOBID` decimal(19,0) DEFAULT NULL,
  `PRO_DEPLOYED` varchar(2) DEFAULT NULL,
  `PROCESS_FLAG` varchar(2) NOT NULL DEFAULT '1',
  `IS_PERSON_ALL` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_PROCESSID` (`PROCESS_ID`),
  KEY `IDX_PRCESS_SORT` (`SORT_INDEX`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='流程表，定义流程信息，主要包含流程名称和流程编码';

-- ----------------------------
-- Records of jbpm4_ext_pro
-- ----------------------------
INSERT INTO `jbpm4_ext_pro` VALUES ('1', 'workflow1', 'workflow1', '', null, null, null, null, '1', '0', '2', '0', null, null, null, null, null, null, null, null, null, null, null, '0', '2', null, '0', null, null, '1', '1', '1');

-- ----------------------------
-- Table structure for jbpm4_ext_process_opr
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_process_opr`;
CREATE TABLE `jbpm4_ext_process_opr` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `PRO_ID` decimal(19,0) DEFAULT NULL,
  `PROCESS_KEY` varchar(255) DEFAULT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `TYPECODE` varchar(50) DEFAULT NULL,
  `TYPENAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流程发起人表';

-- ----------------------------
-- Records of jbpm4_ext_process_opr
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_process_type
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_process_type`;
CREATE TABLE `jbpm4_ext_process_type` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(50) NOT NULL,
  `PARENT_ID` decimal(19,0) NOT NULL,
  `DESCRIPT` varchar(255) DEFAULT NULL,
  `SEQ` float DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_PROTYPE_PID` (`PARENT_ID`),
  KEY `IDX_PROTYPE_NAME` (`TYPE_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='流程分类表，定义所有流程分类的树形关系';

-- ----------------------------
-- Records of jbpm4_ext_process_type
-- ----------------------------
INSERT INTO `jbpm4_ext_process_type` VALUES ('1', 'workflow', '0', null, null);
INSERT INTO `jbpm4_ext_process_type` VALUES ('2', 'aa', '1', null, null);

-- ----------------------------
-- Table structure for jbpm4_ext_proc_editor
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_proc_editor`;
CREATE TABLE `jbpm4_ext_proc_editor` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSIONID` decimal(19,0) DEFAULT NULL,
  `NODE_ID` varchar(255) DEFAULT NULL,
  `PAGE_ID` varchar(255) DEFAULT NULL,
  `FORM_TEMPLATEID` decimal(19,0) DEFAULT '0',
  `EXT_FIELD1` varchar(255) DEFAULT NULL,
  `EXT_FIELD2` varchar(255) DEFAULT NULL,
  `EXT_FIELD3` varchar(255) DEFAULT NULL,
  `BIND_TYPE` char(1) DEFAULT NULL,
  `PAGE_URL` varchar(255) DEFAULT NULL,
  `PAGE_TABLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_PROCEDITOR_NODEID` (`NODE_ID`),
  KEY `IDX_PROCEDITOR_VER` (`VERSIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='流程版本和表单，定义了流程版本（包括节点）和表单之间的关联关系';

-- ----------------------------
-- Records of jbpm4_ext_proc_editor
-- ----------------------------
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('1', '1', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('2', '2', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('3', '2', '人工 1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('4', '2', '人工 2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('5', '3', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('6', '3', '人工 1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('7', '3', '人工 2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('8', '4', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('9', '4', '人工 1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('10', '4', '人工 2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('11', '5', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('12', '5', '人工 1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('13', '5', '人工 2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('14', '6', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('15', '6', '人工 1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('16', '6', '人工 2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('17', '7', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('18', '7', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('19', '7', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('20', '8', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('21', '8', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('22', '8', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('23', '8', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('24', '8', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('25', '9', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('26', '9', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('27', '9', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('28', '9', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('29', '9', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('30', '10', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('31', '10', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('32', '10', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('33', '10', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('34', '10', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('35', '11', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('36', '11', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('37', '11', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('38', '11', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('39', '11', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('40', '12', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('41', '12', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('42', '12', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('43', '12', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('44', '12', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('45', '13', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('46', '13', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('47', '13', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('48', '13', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('49', '13', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('50', '14', null, '09dd5eb39b734ec8badf3b21d4d5d218', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('51', '14', '人工1', '379c8886304c483b8fef0e02249b851f', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('52', '14', '人工2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('53', '14', '决策result1', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);
INSERT INTO `jbpm4_ext_proc_editor` VALUES ('54', '14', '决策result2', 'a6160107c4d64c80900c40c98163f068', '0', null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for jbpm4_ext_proc_service
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_proc_service`;
CREATE TABLE `jbpm4_ext_proc_service` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSIONID_` decimal(19,0) DEFAULT NULL,
  `NODE_NAME_` varchar(255) DEFAULT NULL,
  `SERVICEID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='流程版本和服务关联表，定义了流程版本（包括节点）和表单之间的关联关系';

-- ----------------------------
-- Records of jbpm4_ext_proc_service
-- ----------------------------
INSERT INTO `jbpm4_ext_proc_service` VALUES ('1', '11', '人工2', 'productService.updateState');
INSERT INTO `jbpm4_ext_proc_service` VALUES ('2', '12', '人工2', 'productService.updateState');
INSERT INTO `jbpm4_ext_proc_service` VALUES ('3', '13', '人工2', 'productService.updateState');

-- ----------------------------
-- Table structure for jbpm4_ext_servicereg
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_servicereg`;
CREATE TABLE `jbpm4_ext_servicereg` (
  `UUID` char(32) NOT NULL,
  `CLASSID` varchar(32) DEFAULT NULL,
  `SERVICEID` varchar(255) NOT NULL,
  `SERVICENAME` varchar(100) NOT NULL,
  `DESCIPTION` varchar(500) DEFAULT NULL,
  `EXT_EXECUTOR_` varchar(500) DEFAULT NULL,
  `IS_POST_` char(1) DEFAULT NULL,
  `RESPONSE_HANDLER_` varchar(500) DEFAULT NULL,
  `CONNECT_TIMEOUT_` decimal(8,0) DEFAULT NULL,
  `SO_TIMEOUT_` decimal(8,0) DEFAULT NULL,
  `SERVICETYPEID` varchar(32) NOT NULL,
  `SERVICETYPENAME` varchar(32) NOT NULL,
  `SERVICESCOPE` varchar(32) DEFAULT '1',
  PRIMARY KEY (`UUID`),
  KEY `IDX_SERVICE_REG_CLS` (`CLASSID`),
  KEY `IDX_SERVICE_REG_SID` (`SERVICEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务注册表，定义了服务id和名称，以及类型';

-- ----------------------------
-- Records of jbpm4_ext_servicereg
-- ----------------------------
INSERT INTO `jbpm4_ext_servicereg` VALUES ('12d8f0a513474ebaa876c015f9162135', 'spring', 'productService.updateState', 'updateState', '', '', null, '', null, null, 'cd6523f6afcc4ca98fd89e37003bcfae', 'dd', '1');

-- ----------------------------
-- Table structure for jbpm4_ext_service_error
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_service_error`;
CREATE TABLE `jbpm4_ext_service_error` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `INSTANCE_ID_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `SERVICE_ID_` varchar(500) DEFAULT NULL,
  `SERVICE_TYPE_` varchar(32) DEFAULT NULL,
  `IS_SYNCHRO_` char(1) DEFAULT NULL,
  `IN_PARAMS_ID_` decimal(19,0) DEFAULT NULL,
  `OUT_MAPPINGS_ID_` decimal(19,0) DEFAULT NULL,
  `IS_POST_` char(1) DEFAULT NULL,
  `RETURN_CODE_` varchar(32) DEFAULT NULL,
  `ERROR_NO_` varchar(32) DEFAULT NULL,
  `ERROR_INFO_` text,
  `ERROR_PATHINFO_` varchar(500) DEFAULT NULL,
  `REQ_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RES_TIME_` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CREATE_TIME_` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='服务执行异常信息';

-- ----------------------------
-- Records of jbpm4_ext_service_error
-- ----------------------------
INSERT INTO `jbpm4_ext_service_error` VALUES ('1', 'workflow1.340000', '人工2', 'productService.updateState', 'spring', 'Y', '340019', null, null, null, null, 'org.jbpm.api.JbpmException: no \'productService\' in current environment\r\n	at org.jbpm.pvm.internal.env.EnvironmentImpl.getFromCurrent(EnvironmentImpl.java:232)\r\n	at org.jbpm.pvm.internal.env.EnvironmentImpl.getFromCurrent(EnvironmentImpl.java:218)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.cmd.SynExecuteSpringCmd.execute(SynExecuteSpringCmd.java:43)\r\n	at org.jbpm.pvm.internal.svc.DefaultCommandService.execute(DefaultCommandService.java:45)\r\n	at org.jbpm.pvm.internal.tx.SpringCommandCallback.doInTransaction(SpringCommandCallback.java:45)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:133)\r\n	at org.jbpm.pvm.internal.tx.SpringTransactionInterceptor.execute(SpringTransactionInterceptor.java:49)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.executeInExistingEnvironment(EnvironmentInterceptor.java:51)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.execute(EnvironmentInterceptor.java:45)\r\n	at org.jbpm.pvm.internal.svc.RetryInterceptor.execute(RetryInterceptor.java:56)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.synInvoke(AutoActivitySpring.java:99)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.perform(AutoActivitySpring.java:218)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.notify(AutoActivitySpring.java:60)\r\n	at org.jbpm.pvm.internal.model.op.ExecuteEventListener.perform(ExecuteEventListener.java:82)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.performAtomicOperationSync(ExecutionImpl.java:772)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.performAtomicOperation(ExecutionImpl.java:728)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.signal(ExecutionImpl.java:496)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.signal(ExecutionImpl.java:478)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.hibernate.proxy.pojo.javassist.JavassistLazyInitializer.invoke(JavassistLazyInitializer.java:196)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl_$$_jvst9f_38.signal(ExecutionImpl_$$_jvst9f_38.java)\r\n	at org.jbpm.pvm.internal.task.TaskImpl.complete(TaskImpl.java:337)\r\n	at com.hundsun.jres.workflow.core.internal.task.bean.OrdinaryTaskImpl.complete(OrdinaryTaskImpl.java:120)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.submitTask(SubmitTaskCmd.java:285)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.execute(SubmitTaskCmd.java:219)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.execute(SubmitTaskCmd.java:71)\r\n	at org.jbpm.pvm.internal.svc.DefaultCommandService.execute(DefaultCommandService.java:45)\r\n	at org.jbpm.pvm.internal.tx.SpringCommandCallback.doInTransaction(SpringCommandCallback.java:45)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:133)\r\n	at org.jbpm.pvm.internal.tx.SpringTransactionInterceptor.execute(SpringTransactionInterceptor.java:49)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.executeInNewEnvironment(EnvironmentInterceptor.java:58)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.execute(EnvironmentInterceptor.java:43)\r\n	at org.jbpm.pvm.internal.svc.RetryInterceptor.execute(RetryInterceptor.java:56)\r\n	at org.jbpm.pvm.internal.processengine.ProcessEngineImpl.execute(ProcessEngineImpl.java:300)\r\n	at com.hundsun.jres.workflow.impl.form.service.impl.TaskServiceImpl.submit(TaskServiceImpl.java:606)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:280)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy97.submit(Unknown Source)\r\n	at com.hundsun.jres.workflow.remoting.service.impl.TaskServiceImpl.submit(TaskServiceImpl.java:166)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:280)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy100.submit(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at com.hundsun.jresplus.remoting.impl.DefaultServiceProcessor.execute(DefaultServiceProcessor.java:88)\r\n	at com.hundsun.jresplus.remoting.server.ServiceSkeleton.excute(ServiceSkeleton.java:102)\r\n	at com.hundsun.jresplus.remoting.plugin.BizService.execute(BizService.java:140)\r\n	at com.hundsun.jres.impl.cep.bizmodule.BizModule$Processer.run(BizModule.java:482)\r\n	at com.hundsun.jres.common.cep.pool.RestlessThread.run(RestlessThread.java:143)\r\n', null, '2017-02-08 11:18:42', '2017-02-08 11:18:42', '2017-02-08 11:18:42');
INSERT INTO `jbpm4_ext_service_error` VALUES ('2', 'workflow1.340000', '人工2', 'productService.updateState', 'spring', 'Y', '350000', null, null, null, null, 'org.jbpm.api.JbpmException: no \'productService\' in current environment\r\n	at org.jbpm.pvm.internal.env.EnvironmentImpl.getFromCurrent(EnvironmentImpl.java:232)\r\n	at org.jbpm.pvm.internal.env.EnvironmentImpl.getFromCurrent(EnvironmentImpl.java:218)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.cmd.SynExecuteSpringCmd.execute(SynExecuteSpringCmd.java:43)\r\n	at org.jbpm.pvm.internal.svc.DefaultCommandService.execute(DefaultCommandService.java:45)\r\n	at org.jbpm.pvm.internal.tx.SpringCommandCallback.doInTransaction(SpringCommandCallback.java:45)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:133)\r\n	at org.jbpm.pvm.internal.tx.SpringTransactionInterceptor.execute(SpringTransactionInterceptor.java:49)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.executeInExistingEnvironment(EnvironmentInterceptor.java:51)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.execute(EnvironmentInterceptor.java:45)\r\n	at org.jbpm.pvm.internal.svc.RetryInterceptor.execute(RetryInterceptor.java:56)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.synInvoke(AutoActivitySpring.java:99)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.perform(AutoActivitySpring.java:218)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.notify(AutoActivitySpring.java:60)\r\n	at org.jbpm.pvm.internal.model.op.ExecuteEventListener.perform(ExecuteEventListener.java:82)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.performAtomicOperationSync(ExecutionImpl.java:772)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.performAtomicOperation(ExecutionImpl.java:728)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.signal(ExecutionImpl.java:496)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.signal(ExecutionImpl.java:478)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.hibernate.proxy.pojo.javassist.JavassistLazyInitializer.invoke(JavassistLazyInitializer.java:196)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl_$$_jvst2ce_38.signal(ExecutionImpl_$$_jvst2ce_38.java)\r\n	at org.jbpm.pvm.internal.task.TaskImpl.complete(TaskImpl.java:337)\r\n	at com.hundsun.jres.workflow.core.internal.task.bean.OrdinaryTaskImpl.complete(OrdinaryTaskImpl.java:120)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.submitTask(SubmitTaskCmd.java:285)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.execute(SubmitTaskCmd.java:219)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.execute(SubmitTaskCmd.java:71)\r\n	at org.jbpm.pvm.internal.svc.DefaultCommandService.execute(DefaultCommandService.java:45)\r\n	at org.jbpm.pvm.internal.tx.SpringCommandCallback.doInTransaction(SpringCommandCallback.java:45)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:133)\r\n	at org.jbpm.pvm.internal.tx.SpringTransactionInterceptor.execute(SpringTransactionInterceptor.java:49)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.executeInNewEnvironment(EnvironmentInterceptor.java:58)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.execute(EnvironmentInterceptor.java:43)\r\n	at org.jbpm.pvm.internal.svc.RetryInterceptor.execute(RetryInterceptor.java:56)\r\n	at org.jbpm.pvm.internal.processengine.ProcessEngineImpl.execute(ProcessEngineImpl.java:300)\r\n	at com.hundsun.jres.workflow.impl.form.service.impl.TaskServiceImpl.submit(TaskServiceImpl.java:606)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:280)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy97.submit(Unknown Source)\r\n	at com.hundsun.jres.workflow.remoting.service.impl.TaskServiceImpl.submit(TaskServiceImpl.java:166)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:280)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy100.submit(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at com.hundsun.jresplus.remoting.impl.DefaultServiceProcessor.execute(DefaultServiceProcessor.java:88)\r\n	at com.hundsun.jresplus.remoting.server.ServiceSkeleton.excute(ServiceSkeleton.java:102)\r\n	at com.hundsun.jresplus.remoting.plugin.BizService.execute(BizService.java:140)\r\n	at com.hundsun.jres.impl.cep.bizmodule.BizModule$Processer.run(BizModule.java:482)\r\n	at com.hundsun.jres.common.cep.pool.RestlessThread.run(RestlessThread.java:143)\r\n', null, '2017-02-08 11:28:53', '2017-02-08 11:28:53', '2017-02-08 11:28:53');
INSERT INTO `jbpm4_ext_service_error` VALUES ('3', 'workflow1.350018', '人工2', 'productService.updateState', 'spring', 'Y', '350035', null, null, null, null, 'org.jbpm.api.JbpmException: no \'productService\' in current environment\r\n	at org.jbpm.pvm.internal.env.EnvironmentImpl.getFromCurrent(EnvironmentImpl.java:232)\r\n	at org.jbpm.pvm.internal.env.EnvironmentImpl.getFromCurrent(EnvironmentImpl.java:218)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.cmd.SynExecuteSpringCmd.execute(SynExecuteSpringCmd.java:43)\r\n	at org.jbpm.pvm.internal.svc.DefaultCommandService.execute(DefaultCommandService.java:45)\r\n	at org.jbpm.pvm.internal.tx.SpringCommandCallback.doInTransaction(SpringCommandCallback.java:45)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:133)\r\n	at org.jbpm.pvm.internal.tx.SpringTransactionInterceptor.execute(SpringTransactionInterceptor.java:49)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.executeInExistingEnvironment(EnvironmentInterceptor.java:51)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.execute(EnvironmentInterceptor.java:45)\r\n	at org.jbpm.pvm.internal.svc.RetryInterceptor.execute(RetryInterceptor.java:56)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.synInvoke(AutoActivitySpring.java:99)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.perform(AutoActivitySpring.java:218)\r\n	at com.hundsun.bpm.base.jbpm.exp.auto.AutoActivitySpring.notify(AutoActivitySpring.java:60)\r\n	at org.jbpm.pvm.internal.model.op.ExecuteEventListener.perform(ExecuteEventListener.java:82)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.performAtomicOperationSync(ExecutionImpl.java:772)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.performAtomicOperation(ExecutionImpl.java:728)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.signal(ExecutionImpl.java:496)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl.signal(ExecutionImpl.java:478)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.hibernate.proxy.pojo.javassist.JavassistLazyInitializer.invoke(JavassistLazyInitializer.java:196)\r\n	at org.jbpm.pvm.internal.model.ExecutionImpl_$$_jvst2ce_38.signal(ExecutionImpl_$$_jvst2ce_38.java)\r\n	at org.jbpm.pvm.internal.task.TaskImpl.complete(TaskImpl.java:337)\r\n	at com.hundsun.jres.workflow.core.internal.task.bean.OrdinaryTaskImpl.complete(OrdinaryTaskImpl.java:120)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.submitTask(SubmitTaskCmd.java:285)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.execute(SubmitTaskCmd.java:219)\r\n	at com.hundsun.bpm.base.jbpm.exp.human.SubmitTaskCmd.execute(SubmitTaskCmd.java:71)\r\n	at org.jbpm.pvm.internal.svc.DefaultCommandService.execute(DefaultCommandService.java:45)\r\n	at org.jbpm.pvm.internal.tx.SpringCommandCallback.doInTransaction(SpringCommandCallback.java:45)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:133)\r\n	at org.jbpm.pvm.internal.tx.SpringTransactionInterceptor.execute(SpringTransactionInterceptor.java:49)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.executeInNewEnvironment(EnvironmentInterceptor.java:58)\r\n	at org.jbpm.pvm.internal.svc.EnvironmentInterceptor.execute(EnvironmentInterceptor.java:43)\r\n	at org.jbpm.pvm.internal.svc.RetryInterceptor.execute(RetryInterceptor.java:56)\r\n	at org.jbpm.pvm.internal.processengine.ProcessEngineImpl.execute(ProcessEngineImpl.java:300)\r\n	at com.hundsun.jres.workflow.impl.form.service.impl.TaskServiceImpl.submit(TaskServiceImpl.java:606)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:280)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy97.submit(Unknown Source)\r\n	at com.hundsun.jres.workflow.remoting.service.impl.TaskServiceImpl.submit(TaskServiceImpl.java:166)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:333)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:190)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor$1.proceedWithInvocation(TransactionInterceptor.java:99)\r\n	at org.springframework.transaction.interceptor.TransactionAspectSupport.invokeWithinTransaction(TransactionAspectSupport.java:280)\r\n	at org.springframework.transaction.interceptor.TransactionInterceptor.invoke(TransactionInterceptor.java:96)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:213)\r\n	at com.sun.proxy.$Proxy100.submit(Unknown Source)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:606)\r\n	at com.hundsun.jresplus.remoting.impl.DefaultServiceProcessor.execute(DefaultServiceProcessor.java:88)\r\n	at com.hundsun.jresplus.remoting.server.ServiceSkeleton.excute(ServiceSkeleton.java:102)\r\n	at com.hundsun.jresplus.remoting.plugin.BizService.execute(BizService.java:140)\r\n	at com.hundsun.jres.impl.cep.bizmodule.BizModule$Processer.run(BizModule.java:482)\r\n	at com.hundsun.jres.common.cep.pool.RestlessThread.run(RestlessThread.java:143)\r\n', null, '2017-02-08 11:35:34', '2017-02-08 11:35:34', '2017-02-08 11:35:34');

-- ----------------------------
-- Table structure for jbpm4_ext_service_form
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_service_form`;
CREATE TABLE `jbpm4_ext_service_form` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `FORM_UUID` varchar(32) NOT NULL,
  `SERVICE_UUID` varchar(32) NOT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='注册服务与表单关联关系表';

-- ----------------------------
-- Records of jbpm4_ext_service_form
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_service_para_in
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_service_para_in`;
CREATE TABLE `jbpm4_ext_service_para_in` (
  `UUID` char(32) NOT NULL,
  `SERVICE_DBID` char(32) NOT NULL,
  `PARAM_NAME` varchar(100) NOT NULL,
  `PARAM_CODE` varchar(50) NOT NULL,
  `PARAM_TYPE` varchar(20) NOT NULL,
  `DESCIPTION` varchar(500) DEFAULT NULL,
  `DEFAULT_VALUE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  KEY `IDX_SVR_PARAM_INI` (`SERVICE_DBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务输入参数定义表';

-- ----------------------------
-- Records of jbpm4_ext_service_para_in
-- ----------------------------
INSERT INTO `jbpm4_ext_service_para_in` VALUES ('b7797b7e224b446fa112f4156764f716', '12d8f0a513474ebaa876c015f9162135', 'processInstanceId', '0', 'String', '', '#{processInstanceId}');

-- ----------------------------
-- Table structure for jbpm4_ext_service_para_out
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_service_para_out`;
CREATE TABLE `jbpm4_ext_service_para_out` (
  `UUID` char(32) NOT NULL,
  `SERVICE_DBID` char(32) NOT NULL,
  `PARAM_NAME` varchar(100) NOT NULL,
  `PARAM_CODE` varchar(50) NOT NULL,
  `PARAM_TYPE` varchar(20) NOT NULL,
  `DESCIPTION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`UUID`),
  KEY `IDX_SVR_PARAM_OUT` (`SERVICE_DBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务输出参数定义表';

-- ----------------------------
-- Records of jbpm4_ext_service_para_out
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_service_type
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_service_type`;
CREATE TABLE `jbpm4_ext_service_type` (
  `UUID` char(32) NOT NULL,
  `TYPENAME` varchar(32) NOT NULL,
  `PARENTID` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JBPM4_EXT_SERVICE_TYPE';

-- ----------------------------
-- Records of jbpm4_ext_service_type
-- ----------------------------
INSERT INTO `jbpm4_ext_service_type` VALUES ('cd6523f6afcc4ca98fd89e37003bcfae', 'dd', '0', null);

-- ----------------------------
-- Table structure for jbpm4_ext_taskdef_detail
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_taskdef_detail`;
CREATE TABLE `jbpm4_ext_taskdef_detail` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESS_KEY_` varchar(64) NOT NULL,
  `PROCESS_NAME_` varchar(255) NOT NULL,
  `VERSION_ID_` decimal(19,0) NOT NULL,
  `VERSION_NO_` decimal(5,0) DEFAULT NULL,
  `NODE_NAME_` varchar(255) NOT NULL,
  `NODE_TYPE_` varchar(16) NOT NULL,
  `PARTICIPANT_TYPE_` varchar(16) DEFAULT NULL,
  `TYPE_CODE_` varchar(16) DEFAULT NULL,
  `TYPE_NAME_` varchar(255) DEFAULT NULL,
  `USER_ID_` varchar(64) DEFAULT NULL,
  `GROUP_ID_` varchar(64) DEFAULT NULL,
  `SCRIPT_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DATE_` datetime DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_EXT_TDEF_UID2` (`USER_ID_`),
  KEY `IDX_EXT_TDEF_GROUP2` (`GROUP_ID_`),
  KEY `IDX_EXT_TDEF_VER2` (`VERSION_ID_`),
  KEY `IDX_EXT_TDEF_KEY2` (`PROCESS_KEY_`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='解析流程定义XML的每个任务定义的详情';

-- ----------------------------
-- Records of jbpm4_ext_taskdef_detail
-- ----------------------------
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('1', 'workflow1', 'workflow1', '2', '1', '人工 1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('2', 'workflow1', 'workflow1', '2', '1', '人工 2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('3', 'workflow1', 'workflow1', '3', '2', '人工 1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('4', 'workflow1', 'workflow1', '3', '2', '人工 2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('5', 'workflow1', 'workflow1', '4', '3', '人工 1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('6', 'workflow1', 'workflow1', '4', '3', '人工 2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('7', 'workflow1', 'workflow1', '5', '4', '人工 1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('8', 'workflow1', 'workflow1', '5', '4', '人工 2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('9', 'workflow1', 'workflow1', '6', '5', '人工 1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('10', 'workflow1', 'workflow1', '6', '5', '人工 2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('11', 'workflow1', 'workflow1', '7', '6', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('12', 'workflow1', 'workflow1', '7', '6', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('13', 'workflow1', 'workflow1', '8', '7', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('14', 'workflow1', 'workflow1', '8', '7', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('15', 'workflow1', 'workflow1', '8', '7', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('16', 'workflow1', 'workflow1', '8', '7', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('17', 'workflow1', 'workflow1', '9', '8', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('18', 'workflow1', 'workflow1', '9', '8', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('19', 'workflow1', 'workflow1', '9', '8', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('20', 'workflow1', 'workflow1', '9', '8', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('21', 'workflow1', 'workflow1', '10', '9', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('22', 'workflow1', 'workflow1', '10', '9', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('23', 'workflow1', 'workflow1', '10', '9', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('24', 'workflow1', 'workflow1', '10', '9', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('25', 'workflow1', 'workflow1', '11', '10', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('26', 'workflow1', 'workflow1', '11', '10', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('27', 'workflow1', 'workflow1', '11', '10', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('28', 'workflow1', 'workflow1', '11', '10', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('29', 'workflow1', 'workflow1', '12', '11', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('30', 'workflow1', 'workflow1', '12', '11', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('31', 'workflow1', 'workflow1', '12', '11', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('32', 'workflow1', 'workflow1', '12', '11', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('33', 'workflow1', 'workflow1', '13', '12', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('34', 'workflow1', 'workflow1', '13', '12', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('35', 'workflow1', 'workflow1', '13', '12', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('36', 'workflow1', 'workflow1', '13', '12', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('37', 'workflow1', 'workflow1', '14', '13', '人工1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('38', 'workflow1', 'workflow1', '14', '13', '人工2', 'human', '参与人', 'user', '用户', 'admin2', null, null, '2', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('39', 'workflow1', 'workflow1', '14', '13', '决策result1', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);
INSERT INTO `jbpm4_ext_taskdef_detail` VALUES ('40', 'workflow1', 'workflow1', '14', '13', '决策result2', 'human', '参与人', 'user', '用户', 'admin', null, null, '1', null);

-- ----------------------------
-- Table structure for jbpm4_ext_task_
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_task_`;
CREATE TABLE `jbpm4_ext_task_` (
  `ID_` decimal(19,0) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCR_` text,
  `PROC_NAME_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` decimal(19,0) DEFAULT NULL,
  `SUPERTASK_` decimal(19,0) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `BIZ_FLOW_UUID_` varchar(255) DEFAULT NULL,
  `CANDIDATES` char(1) DEFAULT NULL,
  `PRE_OPERATORS_` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JBPM4_EXT_TASK_';

-- ----------------------------
-- Records of jbpm4_ext_task_
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_task_ctl
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_task_ctl`;
CREATE TABLE `jbpm4_ext_task_ctl` (
  `DBID_` decimal(19,0) NOT NULL,
  `COMPLETE_PARENT_` int(11) DEFAULT '1',
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='【已经过时了】协作目前不能提交主任务\r\n任务控制扩展表，只有在协作时才用到，定义了协作子任务是否有权限提交协作主任务';

-- ----------------------------
-- Records of jbpm4_ext_task_ctl
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_template_data
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_template_data`;
CREATE TABLE `jbpm4_ext_template_data` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `PROCESSINSTANCEID_` varchar(255) NOT NULL,
  `NODE_` varchar(100) NOT NULL,
  `NODE_TYPE_` varchar(32) NOT NULL DEFAULT 'human',
  `TASK_ID_` decimal(19,0) NOT NULL,
  `USER_ID_` varchar(100) NOT NULL,
  `USER_NAME_` varchar(50) DEFAULT NULL,
  `CONTENT_` varchar(3000) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `SHOWINFO` char(1) DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板运行数据表，定义了各任务的处理意见';

-- ----------------------------
-- Records of jbpm4_ext_template_data
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_ver
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_ver`;
CREATE TABLE `jbpm4_ext_ver` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSION_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `VERSION` int(11) NOT NULL,
  `STATE` int(11) DEFAULT NULL,
  `VERSION_FILE` text NOT NULL,
  `PAGE_NAME` varchar(50) DEFAULT NULL,
  `DEPLOY_STATE` int(11) DEFAULT NULL,
  `XML_TYPE` varchar(20) DEFAULT NULL,
  `DEPLOYMENT_` decimal(19,0) DEFAULT NULL,
  `PROCESS_` decimal(19,0) DEFAULT NULL,
  `VALID_` decimal(1,0) DEFAULT NULL,
  `DEPLOY_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_EXT_VER_NAME` (`VERSION_NAME`),
  KEY `IDX_EXT_VER_DEP` (`DEPLOYMENT_`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='流程版本信息表，定义了所有版本的详细信息';

-- ----------------------------
-- Records of jbpm4_ext_ver
-- ----------------------------
INSERT INTO `jbpm4_ext_ver` VALUES ('1', 'workflow1', null, '13', '4', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;1&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'true\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, null, '1', '1', null);
INSERT INTO `jbpm4_ext_ver` VALUES ('2', 'workflow1', '', '1', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'36,112,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工 1\'/>\n  </start>\n  <end name=\'end\' g=\'423,105,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工 1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工 2\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'282,102,90,50\' name=\'人工 2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'282,152,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '30007', '1', '1', '2017-01-19 10:38:24');
INSERT INTO `jbpm4_ext_ver` VALUES ('3', 'workflow1', '', '2', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'36,112,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工 1\'/>\n  </start>\n  <end name=\'end\' g=\'423,105,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工 1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工 2\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'282,102,90,50\' name=\'人工 2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'282,152,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '50031', '1', '1', '2017-01-19 10:55:16');
INSERT INTO `jbpm4_ext_ver` VALUES ('4', 'workflow1', '', '3', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'36,112,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工 1\'/>\n  </start>\n  <end name=\'end\' g=\'423,105,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工 1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工 2\'>\n      <condition expr=\'#{productService.updateState(&quot;1&quot;)}\'/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'282,102,90,50\' name=\'人工 2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'282,152,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to end\' to=\'end\'>\n      <condition expr=\'#{productService.updateState(&quot;1&quot;)}\'/>\n    </transition>\n  </action>\n</process>\n', 'demo1', '0', null, '220021', '1', '1', '2017-02-07 16:25:07');
INSERT INTO `jbpm4_ext_ver` VALUES ('5', 'workflow1', '', '4', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'36,112,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工 1\'/>\n  </start>\n  <end name=\'end\' g=\'423,105,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工 1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工 2\'>\n      <condition expr=\'#{productService.updateState(&quot;1&quot;)}\'/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'282,102,90,50\' name=\'人工 2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'282,152,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to end\' to=\'end\'>\n      <condition expr=\'#{productService.updateState(&quot;1&quot;)}\'/>\n    </transition>\n  </action>\n</process>\n', 'demo1', '0', null, '220026', '1', '1', '2017-02-07 16:28:32');
INSERT INTO `jbpm4_ext_ver` VALUES ('6', 'workflow1', '', '5', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'36,112,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工 1\'/>\n  </start>\n  <end name=\'end\' g=\'423,105,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工 1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工 2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'282,102,90,50\' name=\'人工 2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'282,152,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to end\' to=\'end\'>\n      <condition/>\n    </transition>\n  </action>\n</process>\n', 'demo1', '0', null, '240025', '1', '1', '2017-02-07 16:50:43');
INSERT INTO `jbpm4_ext_ver` VALUES ('7', 'workflow1', '', '6', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'36,112,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'423,105,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'282,102,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'282,152,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to end\' to=\'end\'>\n      <condition/>\n    </transition>\n  </action>\n</process>\n', 'demo1', '0', null, '250090', '1', '1', '2017-02-07 17:14:33');
INSERT INTO `jbpm4_ext_ver` VALUES ('8', 'workflow1', '', '7', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '251116', '1', '1', '2017-02-08 09:26:17');
INSERT INTO `jbpm4_ext_ver` VALUES ('9', 'workflow1', '', '8', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '251118', '1', '1', '2017-02-08 09:26:47');
INSERT INTO `jbpm4_ext_ver` VALUES ('10', 'workflow1', '', '9', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;1&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '330046', '1', '1', '2017-02-08 11:05:11');
INSERT INTO `jbpm4_ext_ver` VALUES ('11', 'workflow1', '', '10', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n    <on event=\'assign\'>\n    <auto service-id=\'productService.updateState\' type=\'spring\'>\n      <in>[{&quot;var&quot;:&quot;#{processInstanceId}&quot;,&quot;key&quot;:&quot;0&quot;,&quot;paramName&quot;:&quot;processInstanceId&quot;}]</in>\n    </auto>\n    </on>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;1&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'true\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '330085', '1', '1', '2017-02-08 11:14:02');
INSERT INTO `jbpm4_ext_ver` VALUES ('12', 'workflow1', '', '11', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n    <on event=\'end\'>\n    <auto service-id=\'productService.updateState\' type=\'spring\'>\n      <in>[{&quot;var&quot;:&quot;#{processInstanceId}&quot;,&quot;key&quot;:&quot;0&quot;,&quot;paramName&quot;:&quot;processInstanceId&quot;}]</in>\n    </auto>\n    </on>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;1&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'true\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '330089', '1', '1', '2017-02-08 11:16:00');
INSERT INTO `jbpm4_ext_ver` VALUES ('13', 'workflow1', '', '12', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n    <on event=\'end\'>\n    <auto service-id=\'productService.updateState\' type=\'spring\'>\n    <in>[{&quot;var&quot;:&quot;\\&quot;1\\&quot;&quot;,&quot;key&quot;:&quot;0&quot;,&quot;paramName&quot;:&quot;processInstanceId&quot;}]</in>\n    </auto>\n    </on>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;1&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'true\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '350016', '1', '1', '2017-02-08 11:35:19');
INSERT INTO `jbpm4_ext_ver` VALUES ('14', 'workflow1', '', '13', '2', '<process xmlns=\'http://jbpm.org/4.4/jpdl\' name=\'workflow1\' key=\'workflow1\'>\n  <start name=\'start\' g=\'33,104,48,48\'>\n    <transition name=\'to 人工 1\' to=\'人工1\'/>\n  </start>\n  <end name=\'end\' g=\'271,466,48,48\'/>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'117,102,90,50\' name=\'人工1\' canCoordinate=\'false\' form=\'379c8886304c483b8fef0e02249b851f\' formName=\'请假1\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 1\' to=\'action 1\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'117,152,30,30\' text=\'动作 1\' name=\'action 1\'>\n    <transition name=\'to 人工 2\' to=\'人工2\'>\n      <condition/>\n    </transition>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'243,142,90,50\' name=\'人工2\' canCoordinate=\'false\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\'>\n    <participants>[{&quot;name&quot;:&quot;2&quot;,&quot;code&quot;:&quot;admin2&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 2\' to=\'action 2\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'273,214,30,30\' text=\'动作 2\' name=\'action 2\'>\n    <transition name=\'to 决策 2\' to=\'决策 2\'/>\n  </action>\n  <decision g=\'265,284,46,46\' name=\'决策 2\'>\n    <transition name=\'to 决策result1\' to=\'决策result1\'>\n      <condition expr=\'#{result == &quot;1&quot;}\'/>\n    </transition>\n    <transition name=\'to 人工 2\' to=\'决策result2\'>\n      <condition expr=\'#{result == &quot;2&quot;}\'/>\n    </transition>\n    <transition name=\'to end\' to=\'end\'/>\n  </decision>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'false\' canNotice=\'false\' canReassign=\'false\' g=\'432,282,90,50\' name=\'决策result1\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 7\' to=\'action 3\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'462,357,30,30\' text=\'动作 3\' name=\'action 3\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n  <human dontExcludeCandidate=\'0\' assignToLast=\'0\' enableRemind=\'true\' canNotice=\'false\' canReassign=\'false\' g=\'65,285,90,50\' name=\'决策result2\' form=\'a6160107c4d64c80900c40c98163f068\' formName=\'请假2\' canCoordinate=\'false\'>\n    <participants>[{&quot;name&quot;:&quot;1&quot;,&quot;code&quot;:&quot;admin&quot;,&quot;typecode&quot;:&quot;user&quot;,&quot;typename&quot;:&quot;用户&quot;,&quot;type&quot;:&quot;&quot;}]</participants>\n  <transition name=\'transition 10\' to=\'action 4\'/>\n  </human>\n  <action assignSequenceActivity=\'0\' isJumpOutFromExecution=\'0\' defaultAction=\'0\' actionOrder=\'0\' g=\'95,363,30,30\' text=\'动作 4\' name=\'action 4\'>\n    <transition name=\'to end\' to=\'end\'/>\n  </action>\n</process>\n', 'demo1', '0', null, '350147', '1', '1', '2017-02-08 13:14:51');

-- ----------------------------
-- Table structure for jbpm4_ext_version_contextfield
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_version_contextfield`;
CREATE TABLE `jbpm4_ext_version_contextfield` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `VERSIONDBID` decimal(19,0) NOT NULL,
  `FIELDNAME` varchar(100) DEFAULT NULL,
  `FIELDCODE` varchar(50) NOT NULL,
  `FIELDUSETYPE` varchar(10) NOT NULL DEFAULT 'CONTEXT',
  `FORMID` varchar(32) NOT NULL,
  `NODEID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_CTXF_VERID` (`VERSIONDBID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='流程版本上下文字段列表，定义了所有流程版本包含的上下文字段列表';

-- ----------------------------
-- Records of jbpm4_ext_version_contextfield
-- ----------------------------
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('2', '1', 'result', 'result', 'CONTEXT', 'NO', null);
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('3', '9', 'result', 'result', 'CONTEXT', 'NO', null);
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('4', '10', 'result', 'result', 'CONTEXT', 'NO', null);
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('5', '11', 'result', 'result', 'CONTEXT', 'NO', null);
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('6', '12', 'result', 'result', 'CONTEXT', 'NO', null);
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('7', '13', 'result', 'result', 'CONTEXT', 'NO', null);
INSERT INTO `jbpm4_ext_version_contextfield` VALUES ('8', '14', 'result', 'result', 'CONTEXT', 'NO', null);

-- ----------------------------
-- Table structure for jbpm4_ext_ver_opr
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_ver_opr`;
CREATE TABLE `jbpm4_ext_ver_opr` (
  `DBID_` bigint(20) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL,
  `VERSION_ID` decimal(19,0) DEFAULT NULL,
  `TYPECODE` varchar(50) DEFAULT NULL,
  `TYPENAME` varchar(255) DEFAULT NULL,
  `TYPE` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_VEROPR_S` (`TYPECODE`,`CODE`),
  KEY `IDX_VERVER_ID` (`VERSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发起人控制表，定义所有版本的发起人范围\r\n目前如果一个流程没有定义发起人的话则表明系统中所有用户均可发起';

-- ----------------------------
-- Records of jbpm4_ext_ver_opr
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_ext_workingday
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_ext_workingday`;
CREATE TABLE `jbpm4_ext_workingday` (
  `DBID` bigint(20) NOT NULL AUTO_INCREMENT,
  `DATE_TYPE` varchar(4) NOT NULL DEFAULT '1',
  `ASSO_CODE` varchar(100) NOT NULL DEFAULT '000000',
  `WEEK_DATE` varchar(8) NOT NULL,
  `START_TIME` varchar(6) NOT NULL,
  `END_TIME` varchar(6) NOT NULL,
  PRIMARY KEY (`DBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作日';

-- ----------------------------
-- Records of jbpm4_ext_workingday
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_formtext_demo
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_formtext_demo`;
CREATE TABLE `jbpm4_formtext_demo` (
  `UUID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATEBY` varchar(20) NOT NULL,
  `CREATEDATE` datetime NOT NULL,
  `REMARK` varchar(500) DEFAULT NULL,
  `PROCESSINSTANCEID` varchar(100) DEFAULT NULL,
  `PROCESSNODEID` varchar(100) DEFAULT NULL,
  `TASKID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='示例表';

-- ----------------------------
-- Records of jbpm4_formtext_demo
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_formtext_leave
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_formtext_leave`;
CREATE TABLE `jbpm4_formtext_leave` (
  `UUID` bigint(20) NOT NULL AUTO_INCREMENT,
  `APPLYUSER` varchar(20) NOT NULL,
  `DAYS` int(11) NOT NULL,
  `REASON` varchar(500) DEFAULT NULL,
  `TASKID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假申请表，例子';

-- ----------------------------
-- Records of jbpm4_formtext_leave
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_hist_actinst
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_hist_actinst`;
CREATE TABLE `jbpm4_hist_actinst` (
  `DBID_` decimal(19,0) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `HPROCI_` decimal(19,0) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` decimal(19,0) DEFAULT NULL,
  `TRANSITION_` varchar(255) DEFAULT NULL,
  `HTASK_` decimal(19,0) DEFAULT NULL,
  `NEXTIDX_` decimal(10,0) DEFAULT NULL,
  `PRE_ACTIVITY_` decimal(19,0) DEFAULT NULL,
  `ACTIVITY_STATE_` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HACTI_HPROCI` (`HPROCI_`),
  KEY `IDX_HTI_HTASK` (`HTASK_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史活动表，历史活动对应历史任务表，一个任务对应一个活动';

-- ----------------------------
-- Records of jbpm4_hist_actinst
-- ----------------------------
INSERT INTO `jbpm4_hist_actinst` VALUES ('50002', 'act', '1', '50001', 'start', 'workflow1.50000', 'start', '2017-01-19 10:48:32', '2017-01-19 10:48:32', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('50005', 'task', '2', '50001', 'human', 'workflow1.50000', '人工 1', '2017-01-19 10:48:32', '2017-01-19 10:48:32', '527', 'to 人工 2', '50003', '1', '50002', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('50011', 'task', '0', '50001', 'human', 'workflow1.50000', '人工 2', '2017-01-19 10:48:32', null, '0', null, '50009', '1', '50005', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('50035', 'act', '1', '50034', 'start', 'workflow1.50033', 'start', '2017-01-19 10:55:34', '2017-01-19 10:55:34', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('50038', 'task', '2', '50034', 'human', 'workflow1.50033', '人工 1', '2017-01-19 10:55:34', '2017-01-19 10:56:20', '46507', 'to 人工 2', '50036', '1', '50035', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('50045', 'task', '2', '50034', 'human', 'workflow1.50033', '人工 2', '2017-01-19 10:56:20', '2017-01-19 10:57:22', '62742', 'to end', '50043', '1', '50038', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('50052', 'act', '1', '50034', 'end', 'workflow1.50033', 'end', '2017-01-19 10:57:22', '2017-01-19 10:57:22', '3', null, null, '1', '50045', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210027', 'act', '1', '210026', 'start', 'workflow1.210025', 'start', '2017-02-07 16:03:06', '2017-02-07 16:03:06', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210030', 'task', '2', '210026', 'human', 'workflow1.210025', '人工 1', '2017-02-07 16:03:06', '2017-02-07 16:03:07', '517', 'to 人工 2', '210028', '1', '210027', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210037', 'task', '0', '210026', 'human', 'workflow1.210025', '人工 2', '2017-02-07 16:03:07', null, '0', null, '210035', '1', '210030', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210045', 'act', '1', '210044', 'start', 'workflow1.210043', 'start', '2017-02-07 16:04:55', '2017-02-07 16:04:55', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210048', 'task', '2', '210044', 'human', 'workflow1.210043', '人工 1', '2017-02-07 16:04:55', '2017-02-07 16:04:55', '160', 'to 人工 2', '210046', '1', '210045', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210055', 'task', '0', '210044', 'human', 'workflow1.210043', '人工 2', '2017-02-07 16:04:55', null, '0', null, '210053', '1', '210048', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210063', 'act', '1', '210062', 'start', 'workflow1.210060', 'start', '2017-02-07 16:06:10', '2017-02-07 16:06:10', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210066', 'task', '2', '210062', 'human', 'workflow1.210060', '人工 1', '2017-02-07 16:06:10', '2017-02-07 16:06:10', '174', 'to 人工 2', '210064', '1', '210063', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('210073', 'task', '0', '210062', 'human', 'workflow1.210060', '人工 2', '2017-02-07 16:06:10', null, '0', null, '210071', '1', '210066', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('240035', 'act', '1', '240034', 'start', 'workflow1.240033', 'start', '2017-02-07 16:57:00', '2017-02-07 16:57:00', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('240038', 'task', '2', '240034', 'human', 'workflow1.240033', '人工 1', '2017-02-07 16:57:00', '2017-02-07 16:57:00', '256', 'to 人工 2', '240036', '1', '240035', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('240045', 'task', '0', '240034', 'human', 'workflow1.240033', '人工 2', '2017-02-07 16:57:00', null, '0', null, '240043', '1', '240038', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('240053', 'act', '1', '240052', 'start', 'workflow1.240051', 'start', '2017-02-07 16:58:28', '2017-02-07 16:58:28', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('240056', 'task', '2', '240052', 'human', 'workflow1.240051', '人工 1', '2017-02-07 16:58:28', '2017-02-07 16:58:28', '188', 'to 人工 2', '240054', '1', '240053', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('240063', 'task', '0', '240052', 'human', 'workflow1.240051', '人工 2', '2017-02-07 16:58:28', null, '0', null, '240061', '1', '240056', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250002', 'act', '1', '250001', 'start', 'workflow1.250000', 'start', '2017-02-07 17:00:56', '2017-02-07 17:00:56', '2', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250005', 'task', '2', '250001', 'human', 'workflow1.250000', '人工 1', '2017-02-07 17:00:56', '2017-02-07 17:00:56', '379', 'to 人工 2', '250003', '1', '250002', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250012', 'task', '0', '250001', 'human', 'workflow1.250000', '人工 2', '2017-02-07 17:00:56', null, '0', null, '250010', '1', '250005', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250035', 'act', '1', '250034', 'start', 'workflow1.250033', 'start', '2017-02-07 17:09:17', '2017-02-07 17:09:17', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250038', 'task', '2', '250034', 'human', 'workflow1.250033', '人工 1', '2017-02-07 17:09:17', '2017-02-07 17:09:17', '221', 'to 人工 2', '250036', '1', '250035', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250045', 'task', '0', '250034', 'human', 'workflow1.250033', '人工 2', '2017-02-07 17:09:17', null, '0', null, '250043', '1', '250038', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250053', 'act', '1', '250052', 'start', 'workflow1.250051', 'start', '2017-02-07 17:10:38', '2017-02-07 17:10:38', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250056', 'task', '2', '250052', 'human', 'workflow1.250051', '人工 1', '2017-02-07 17:10:38', '2017-02-07 17:10:38', '167', 'to 人工 2', '250054', '1', '250053', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250064', 'task', '0', '250052', 'human', 'workflow1.250051', '人工 2', '2017-02-07 17:10:38', null, '0', null, '250062', '1', '250056', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250072', 'act', '1', '250071', 'start', 'workflow1.250070', 'start', '2017-02-07 17:12:14', '2017-02-07 17:12:14', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250075', 'task', '2', '250071', 'human', 'workflow1.250070', '人工 1', '2017-02-07 17:12:14', '2017-02-07 17:12:14', '163', 'to 人工 2', '250073', '1', '250072', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250083', 'task', '0', '250071', 'human', 'workflow1.250070', '人工 2', '2017-02-07 17:12:14', null, '0', null, '250081', '1', '250075', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250094', 'act', '1', '250093', 'start', 'workflow1.250092', 'start', '2017-02-07 17:15:00', '2017-02-07 17:15:00', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250097', 'task', '2', '250093', 'human', 'workflow1.250092', '人工1', '2017-02-07 17:15:00', '2017-02-07 17:15:00', '131', 'to 人工 2', '250095', '1', '250094', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('250104', 'task', '0', '250093', 'human', 'workflow1.250092', '人工2', '2017-02-07 17:15:00', null, '0', null, '250103', '1', '250097', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('251123', 'act', '1', '251122', 'start', 'workflow1.251121', 'start', '2017-02-08 09:27:44', '2017-02-08 09:27:44', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('251126', 'task', '2', '251122', 'human', 'workflow1.251121', '人工1', '2017-02-08 09:27:44', '2017-02-08 09:27:45', '152', 'to 人工 2', '251124', '1', '251123', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('251133', 'task', '0', '251122', 'human', 'workflow1.251121', '人工2', '2017-02-08 09:27:45', null, '0', null, '251132', '1', '251126', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330025', 'act', '1', '330024', 'start', 'workflow1.330023', 'start', '2017-02-08 11:03:00', '2017-02-08 11:03:00', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330028', 'task', '2', '330024', 'human', 'workflow1.330023', '人工1', '2017-02-08 11:03:00', '2017-02-08 11:03:00', '373', 'to 人工 2', '330026', '1', '330025', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330036', 'task', '2', '330024', 'human', 'workflow1.330023', '人工2', '2017-02-08 11:03:00', '2017-02-08 11:03:14', '14245', 'to 决策 2', '330035', '1', '330028', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330041', 'act', '1', '330024', 'decision', 'workflow1.330023', '决策 2', '2017-02-08 11:03:14', '2017-02-08 11:03:14', '27', 'to end', null, '1', '330036', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330042', 'act', '1', '330024', 'end', 'workflow1.330023', 'end', '2017-02-08 11:03:14', '2017-02-08 11:03:14', '1', null, null, '1', '330041', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330050', 'act', '1', '330049', 'start', 'workflow1.330048', 'start', '2017-02-08 11:05:20', '2017-02-08 11:05:20', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330053', 'task', '2', '330049', 'human', 'workflow1.330048', '人工1', '2017-02-08 11:05:20', '2017-02-08 11:05:20', '133', 'to 人工 2', '330051', '1', '330050', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330060', 'task', '2', '330049', 'human', 'workflow1.330048', '人工2', '2017-02-08 11:05:20', '2017-02-08 11:05:28', '8551', 'to 决策 2', '330059', '1', '330053', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330065', 'act', '1', '330049', 'decision', 'workflow1.330048', '决策 2', '2017-02-08 11:05:28', '2017-02-08 11:05:28', '2', 'to 决策result1', null, '1', '330060', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('330068', 'task', '0', '330049', 'human', 'workflow1.330048', '决策result1', '2017-02-08 11:05:28', null, '0', null, '330066', '1', '330065', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('340002', 'act', '1', '340001', 'start', 'workflow1.340000', 'start', '2017-02-08 11:18:21', '2017-02-08 11:18:21', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('340005', 'task', '2', '340001', 'human', 'workflow1.340000', '人工1', '2017-02-08 11:18:21', '2017-02-08 11:18:22', '379', 'to 人工 2', '340003', '1', '340002', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('340012', 'task', '0', '340001', 'human', 'workflow1.340000', '人工2', '2017-02-08 11:18:22', null, '0', null, '340011', '1', '340005', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('350020', 'act', '1', '350019', 'start', 'workflow1.350018', 'start', '2017-02-08 11:35:28', '2017-02-08 11:35:28', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('350023', 'task', '2', '350019', 'human', 'workflow1.350018', '人工1', '2017-02-08 11:35:28', '2017-02-08 11:35:28', '241', 'to 人工 2', '350021', '1', '350020', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('350030', 'task', '0', '350019', 'human', 'workflow1.350018', '人工2', '2017-02-08 11:35:28', null, '0', null, '350029', '1', '350023', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('350152', 'act', '1', '350151', 'start', 'workflow1.350150', 'start', '2017-02-08 13:15:32', '2017-02-08 13:15:32', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('350155', 'task', '2', '350151', 'human', 'workflow1.350150', '人工1', '2017-02-08 13:15:32', '2017-02-08 13:15:32', '125', 'to 人工 2', '350153', '1', '350152', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('350162', 'task', '0', '350151', 'human', 'workflow1.350150', '人工2', '2017-02-08 13:15:32', null, '0', null, '350161', '1', '350155', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380002', 'act', '1', '380001', 'start', 'workflow1.380000', 'start', '2017-02-08 13:54:21', '2017-02-08 13:54:21', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380005', 'task', '2', '380001', 'human', 'workflow1.380000', '人工1', '2017-02-08 13:54:21', '2017-02-08 13:54:21', '428', 'to 人工 2', '380003', '1', '380002', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380012', 'task', '2', '380001', 'human', 'workflow1.380000', '人工2', '2017-02-08 13:54:21', '2017-02-08 13:54:50', '29929', 'to 决策 2', '380011', '1', '380005', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380019', 'act', '1', '380001', 'decision', 'workflow1.380000', '决策 2', '2017-02-08 13:54:50', '2017-02-08 13:54:50', '23', 'to 决策result1', null, '1', '380012', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380022', 'task', '2', '380001', 'human', 'workflow1.380000', '决策result1', '2017-02-08 13:54:50', '2017-02-08 14:07:17', '747910', 'to end', '380020', '1', '380019', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380036', 'act', '1', '380035', 'start', 'workflow1.380034', 'start', '2017-02-08 13:55:52', '2017-02-08 13:55:52', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380039', 'task', '2', '380035', 'human', 'workflow1.380034', '人工1', '2017-02-08 13:55:52', '2017-02-08 13:55:52', '158', 'to 人工 2', '380037', '1', '380036', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380046', 'task', '2', '380035', 'human', 'workflow1.380034', '人工2', '2017-02-08 13:55:52', '2017-02-08 13:56:07', '15457', 'to 决策 2', '380045', '1', '380039', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380051', 'act', '1', '380035', 'decision', 'workflow1.380034', '决策 2', '2017-02-08 13:56:07', '2017-02-08 13:56:07', '3', 'to 决策result1', null, '1', '380046', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380054', 'task', '2', '380035', 'human', 'workflow1.380034', '决策result1', '2017-02-08 13:56:07', '2017-02-08 13:56:23', '16658', 'to end', '380052', '1', '380051', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380063', 'act', '1', '380035', 'end', 'workflow1.380034', 'end', '2017-02-08 13:56:23', '2017-02-08 13:56:23', '2', null, null, '1', '380054', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380080', 'act', '1', '380001', 'end', 'workflow1.380000', 'end', '2017-02-08 14:07:17', '2017-02-08 14:07:17', '2', null, null, '1', '380022', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380084', 'act', '1', '380083', 'start', 'workflow1.380082', 'start', '2017-02-08 14:08:50', '2017-02-08 14:08:50', '0', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380087', 'task', '2', '380083', 'human', 'workflow1.380082', '人工1', '2017-02-08 14:08:50', '2017-02-08 14:08:51', '164', 'to 人工 2', '380085', '1', '380084', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380094', 'task', '0', '380083', 'human', 'workflow1.380082', '人工2', '2017-02-08 14:08:51', null, '0', null, '380093', '1', '380087', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380101', 'act', '1', '380100', 'start', 'workflow1.380099', 'start', '2017-02-08 14:09:24', '2017-02-08 14:09:24', '1', 'to 人工 1', null, '1', null, null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380104', 'task', '2', '380100', 'human', 'workflow1.380099', '人工1', '2017-02-08 14:09:24', '2017-02-08 14:09:24', '148', 'to 人工 2', '380102', '1', '380101', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380111', 'task', '2', '380100', 'human', 'workflow1.380099', '人工2', '2017-02-08 14:09:24', '2017-02-08 14:09:43', '19031', 'to 决策 2', '380110', '1', '380104', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380116', 'act', '1', '380100', 'decision', 'workflow1.380099', '决策 2', '2017-02-08 14:09:43', '2017-02-08 14:09:43', '2', 'to 决策result1', null, '1', '380111', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380119', 'task', '2', '380100', 'human', 'workflow1.380099', '决策result1', '2017-02-08 14:09:43', '2017-02-08 14:10:35', '52151', 'to end', '380117', '1', '380116', null);
INSERT INTO `jbpm4_hist_actinst` VALUES ('380128', 'act', '1', '380100', 'end', 'workflow1.380099', 'end', '2017-02-08 14:10:35', '2017-02-08 14:10:35', '2', null, null, '1', '380119', null);

-- ----------------------------
-- Table structure for jbpm4_hist_detail
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_hist_detail`;
CREATE TABLE `jbpm4_hist_detail` (
  `DBID_` decimal(19,0) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TIME_` datetime DEFAULT NULL,
  `HPROCI_` decimal(19,0) DEFAULT NULL,
  `HPROCIIDX_` decimal(10,0) DEFAULT NULL,
  `HACTI_` decimal(19,0) DEFAULT NULL,
  `HACTIIDX_` decimal(10,0) DEFAULT NULL,
  `HTASK_` decimal(19,0) DEFAULT NULL,
  `HTASKIDX_` decimal(10,0) DEFAULT NULL,
  `HVAR_` decimal(19,0) DEFAULT NULL,
  `HVARIDX_` decimal(10,0) DEFAULT NULL,
  `MESSAGE_` text,
  `OLD_STR_` varchar(255) DEFAULT NULL,
  `NEW_STR_` varchar(255) DEFAULT NULL,
  `OLD_INT_` decimal(10,0) DEFAULT NULL,
  `NEW_INT_` decimal(10,0) DEFAULT NULL,
  `OLD_TIME_` datetime DEFAULT NULL,
  `NEW_TIME_` datetime DEFAULT NULL,
  `PARENT_` decimal(19,0) DEFAULT NULL,
  `PARENT_IDX_` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HDET_HACTI` (`HACTI_`),
  KEY `IDX_HDET_HPROCI` (`HPROCI_`),
  KEY `IDX_HDET_HTASK` (`HTASK_`),
  KEY `IDX_HDET_HVAR` (`HVAR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史详细信息表，包含整个流程的详细处理过程【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_hist_detail
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_hist_job
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_hist_job`;
CREATE TABLE `jbpm4_hist_job` (
  `DBID_` decimal(19,0) DEFAULT NULL,
  `CLASS_` varchar(255) DEFAULT NULL,
  `DBVERSION_` decimal(10,0) DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ISEXCLUSIVE_` decimal(1,0) DEFAULT NULL,
  `LOCKOWNER_` varchar(255) DEFAULT NULL,
  `LOCKEXPTIME_` datetime DEFAULT NULL,
  `EXCEPTION_` text,
  `RETRIES_` decimal(10,0) DEFAULT NULL,
  `PROCESSINSTANCE_` decimal(19,0) DEFAULT NULL,
  `EXECUTION_` decimal(19,0) DEFAULT NULL,
  `CFG_` decimal(19,0) DEFAULT NULL,
  `SIGNAL_` varchar(255) DEFAULT NULL,
  `EVENT_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JOB历史表';

-- ----------------------------
-- Records of jbpm4_hist_job
-- ----------------------------
INSERT INTO `jbpm4_hist_job` VALUES ('50012', 'Notify', '1', '2017-01-19 10:48:32', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-01-19 11:18:33', null, '3', '50001', '50001', '50013', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('50046', 'Notify', '1', '2017-01-19 10:56:20', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-01-19 11:26:20', null, '3', '50034', '50034', '50047', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('210038', 'Notify', '1', '2017-02-07 16:03:07', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 16:33:07', null, '3', '210026', '210026', '210039', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('210056', 'Notify', '1', '2017-02-07 16:04:55', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 16:34:55', null, '3', '210044', '210044', '210057', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('210074', 'Notify', '1', '2017-02-07 16:06:10', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 16:36:10', null, '3', '210062', '210062', '210075', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('240046', 'Notify', '1', '2017-02-07 16:57:00', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:27:00', null, '3', '240034', '240034', '240047', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('240064', 'Notify', '1', '2017-02-07 16:58:28', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:28:28', null, '3', '240052', '240052', '240065', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('250013', 'Notify', '1', '2017-02-07 17:00:56', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:30:56', null, '3', '250001', '250001', '250014', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('250046', 'Notify', '1', '2017-02-07 17:09:17', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:39:17', null, '3', '250034', '250034', '250047', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('250065', 'Notify', '1', '2017-02-07 17:10:38', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:40:38', null, '3', '250052', '250052', '250066', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('250084', 'Notify', '1', '2017-02-07 17:12:14', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:42:14', null, '3', '250071', '250071', '250085', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('250105', 'Notify', '1', '2017-02-07 17:15:00', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-07 17:45:00', null, '3', '250093', '250093', '250106', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('251134', 'Notify', '1', '2017-02-08 09:27:45', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 09:57:45', null, '3', '251122', '251122', '251135', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('330037', 'Notify', '1', '2017-02-08 11:03:00', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 11:33:00', null, '3', '330024', '330024', '330038', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('330061', 'Notify', '1', '2017-02-08 11:05:20', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 11:35:20', null, '3', '330049', '330049', '330062', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('330069', 'Notify', '1', '2017-02-08 11:05:28', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 11:35:28', null, '3', '330049', '330049', '330070', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('340013', 'Notify', '1', '2017-02-08 11:18:22', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 11:48:22', null, '3', '340001', '340001', '340014', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('350031', 'Notify', '1', '2017-02-08 11:35:28', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 12:05:28', null, '3', '350019', '350019', '350032', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('350163', 'Notify', '1', '2017-02-08 13:15:32', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 13:45:32', null, '3', '350151', '350151', '350164', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380013', 'Notify', '1', '2017-02-08 13:54:21', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:24:22', null, '3', '380001', '380001', '380014', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380023', 'Notify', '1', '2017-02-08 13:54:50', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:24:51', null, '3', '380001', '380001', '380024', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380047', 'Notify', '1', '2017-02-08 13:55:52', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:25:52', null, '3', '380035', '380035', '380048', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380055', 'Notify', '1', '2017-02-08 13:56:07', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:26:07', null, '3', '380035', '380035', '380056', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380095', 'Notify', '1', '2017-02-08 14:08:51', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:38:51', null, '3', '380083', '380083', '380096', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380112', 'Notify', '1', '2017-02-08 14:09:24', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:39:24', null, '3', '380100', '380100', '380113', null, null, null);
INSERT INTO `jbpm4_hist_job` VALUES ('380120', 'Notify', '1', '2017-02-08 14:09:43', 'acquired', '0', 'JobExecutor-192.168.217.111', '2017-02-08 14:39:43', null, '3', '380100', '380100', '380121', null, null, null);

-- ----------------------------
-- Table structure for jbpm4_hist_procinst
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_hist_procinst`;
CREATE TABLE `jbpm4_hist_procinst` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PROCDEFID_` varchar(255) DEFAULT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `START_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` decimal(19,0) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ENDACTIVITY_` varchar(255) DEFAULT NULL,
  `NEXTIDX_` decimal(10,0) DEFAULT NULL,
  `PROC_INST_DESC_` varchar(1000) DEFAULT NULL,
  `PROC_EXE_NAME_` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID_` decimal(19,0) DEFAULT NULL,
  `SUPERPROCINST_` varchar(255) DEFAULT NULL,
  `STARTER_` varchar(255) NOT NULL,
  `STARTER_NAME_` varchar(255) DEFAULT NULL,
  `ORG_ID_` varchar(20) DEFAULT NULL,
  `ORG_NAME_` varchar(255) DEFAULT NULL,
  `PROC_NAME_` varchar(255) NOT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IX_HIST_INST_START` (`START_`),
  KEY `IX_HISTINST_ID` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史流程实例表，已经结束的流程实例的信息都存在此表中';

-- ----------------------------
-- Records of jbpm4_hist_procinst
-- ----------------------------
INSERT INTO `jbpm4_hist_procinst` VALUES ('50001', '0', 'workflow1.50000', 'workflow1-1', 'workflow1.50000', '2017-01-19 10:48:32', null, null, 'active', null, '1', null, 'workflow1', '30007', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('50034', '1', 'workflow1.50033', 'workflow1-2', 'workflow1.50033', '2017-01-19 10:55:34', '2017-01-19 10:57:22', '108745', 'ended', 'end', '1', null, 'workflow1', '50031', null, 'admin2', '2', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('210026', '0', 'workflow1.210025', 'workflow1-2', 'workflow1.210025', '2017-02-07 16:03:06', null, null, 'active', null, '1', null, 'workflow1', '50031', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('210044', '0', 'workflow1.210043', 'workflow1-2', 'workflow1.210043', '2017-02-07 16:04:55', null, null, 'active', null, '1', null, 'workflow1', '50031', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('210062', '0', 'workflow1.210060', 'workflow1-2', 'workflow1.210060', '2017-02-07 16:06:10', null, null, 'active', null, '1', null, 'workflow1', '50031', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('240034', '0', 'workflow1.240033', 'workflow1-5', 'workflow1.240033', '2017-02-07 16:57:00', null, null, 'active', null, '1', null, 'workflow1', '240025', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('240052', '0', 'workflow1.240051', 'workflow1-5', 'workflow1.240051', '2017-02-07 16:58:28', null, null, 'active', null, '1', null, 'workflow1', '240025', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('250001', '0', 'workflow1.250000', 'workflow1-5', 'workflow1.250000', '2017-02-07 17:00:56', null, null, 'active', null, '1', null, 'workflow1', '240025', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('250034', '0', 'workflow1.250033', 'workflow1-5', 'workflow1.250033', '2017-02-07 17:09:17', null, null, 'active', null, '1', null, 'workflow1', '240025', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('250052', '0', 'workflow1.250051', 'workflow1-5', 'workflow1.250051', '2017-02-07 17:10:38', null, null, 'active', null, '1', null, 'workflow1', '240025', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('250071', '0', 'workflow1.250070', 'workflow1-5', 'workflow1.250070', '2017-02-07 17:12:14', null, null, 'active', null, '1', null, 'workflow1', '240025', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('250093', '0', 'workflow1.250092', 'workflow1-6', 'workflow1.250092', '2017-02-07 17:15:00', null, null, 'active', null, '1', null, 'workflow1', '250090', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('251122', '0', 'workflow1.251121', 'workflow1-8', 'workflow1.251121', '2017-02-08 09:27:44', null, null, 'active', null, '1', null, 'workflow1', '251118', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('330024', '1', 'workflow1.330023', 'workflow1-8', 'workflow1.330023', '2017-02-08 11:02:59', '2017-02-08 11:03:14', '15273', 'ended', 'end', '1', null, 'workflow1', '251118', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('330049', '0', 'workflow1.330048', 'workflow1-9', 'workflow1.330048', '2017-02-08 11:05:20', null, null, 'active', null, '1', null, 'workflow1', '330046', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('340001', '0', 'workflow1.340000', 'workflow1-11', 'workflow1.340000', '2017-02-08 11:18:21', null, null, 'active', null, '1', null, 'workflow1', '330089', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('350019', '0', 'workflow1.350018', 'workflow1-12', 'workflow1.350018', '2017-02-08 11:35:28', null, null, 'active', null, '1', null, 'workflow1', '350016', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('350151', '0', 'workflow1.350150', 'workflow1-13', 'workflow1.350150', '2017-02-08 13:15:32', null, null, 'active', null, '1', null, 'workflow1', '350147', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('380001', '1', 'workflow1.380000', 'workflow1-13', 'workflow1.380000', '2017-02-08 13:54:21', '2017-02-08 14:07:17', '776912', 'ended', 'end', '1', null, 'workflow1', '350147', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('380035', '1', 'workflow1.380034', 'workflow1-13', 'workflow1.380034', '2017-02-08 13:55:52', '2017-02-08 13:56:23', '31660', 'ended', 'end', '1', null, 'workflow1', '350147', null, 'admin', '1', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('380083', '0', 'workflow1.380082', 'workflow1-13', 'workflow1.380082', '2017-02-08 14:08:50', null, null, 'active', null, '1', null, 'workflow1', '350147', null, 'admin', 'admin 111', null, null, 'workflow1');
INSERT INTO `jbpm4_hist_procinst` VALUES ('380100', '1', 'workflow1.380099', 'workflow1-13', 'workflow1.380099', '2017-02-08 14:09:24', '2017-02-08 14:10:35', '71153', 'ended', 'end', '1', null, 'workflow1', '350147', null, 'admin', 'admin 111', null, null, 'workflow1');

-- ----------------------------
-- Table structure for jbpm4_hist_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_hist_task`;
CREATE TABLE `jbpm4_hist_task` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `EXECUTION_` varchar(255) DEFAULT NULL,
  `OUTCOME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `PRIORITY_` decimal(10,0) DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `END_` datetime DEFAULT NULL,
  `DURATION_` decimal(19,0) DEFAULT NULL,
  `NEXTIDX_` decimal(10,0) DEFAULT NULL,
  `SUPERTASK_` decimal(19,0) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `PROCINST_` decimal(19,0) DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(255) NOT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HIST_TASK_SUB` (`SUPERTASK_`),
  KEY `IDX_HIST_TASK_ASSIGNEE` (`ASSIGNEE_`),
  KEY `IDX_HIST_TASK_END` (`END_`),
  KEY `IDX_HIST_TASK_INST` (`PROCINST_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史任务表，所有已经完成的任务都存储在该表中';

-- ----------------------------
-- Records of jbpm4_hist_task
-- ----------------------------
INSERT INTO `jbpm4_hist_task` VALUES ('50003', '1', 'workflow1.50000', 'transition 1', 'admin', '0', 'completed', '2017-01-19 10:48:32', '2017-01-19 10:48:32', '406', '1', null, '人工 1', '50001', 'workflow1.50000');
INSERT INTO `jbpm4_hist_task` VALUES ('50009', '0', 'workflow1.50000', null, 'admin2', '0', 'open', '2017-01-19 10:48:32', null, '0', '1', null, '人工 2', '50001', 'workflow1.50000');
INSERT INTO `jbpm4_hist_task` VALUES ('50036', '1', 'workflow1.50033', 'transition 1', 'admin', '0', 'completed', '2017-01-19 10:55:34', '2017-01-19 10:56:20', '46481', '1', null, '人工 1', '50034', 'workflow1.50033');
INSERT INTO `jbpm4_hist_task` VALUES ('50043', '1', 'workflow1.50033', 'transition 2', 'admin2', '0', 'completed', '2017-01-19 10:56:20', '2017-01-19 10:57:22', '62695', '1', null, '人工 2', '50034', 'workflow1.50033');
INSERT INTO `jbpm4_hist_task` VALUES ('210028', '1', 'workflow1.210025', 'transition 1', 'admin', '0', 'completed', '2017-02-07 16:03:06', '2017-02-07 16:03:07', '430', '1', null, '人工 1', '210026', 'workflow1.210025');
INSERT INTO `jbpm4_hist_task` VALUES ('210035', '0', 'workflow1.210025', null, 'admin2', '0', 'open', '2017-02-07 16:03:07', null, '0', '1', null, '人工 2', '210026', 'workflow1.210025');
INSERT INTO `jbpm4_hist_task` VALUES ('210046', '1', 'workflow1.210043', 'transition 1', 'admin', '0', 'completed', '2017-02-07 16:04:55', '2017-02-07 16:04:55', '127', '1', null, '人工 1', '210044', 'workflow1.210043');
INSERT INTO `jbpm4_hist_task` VALUES ('210053', '0', 'workflow1.210043', null, 'admin2', '0', 'open', '2017-02-07 16:04:55', null, '0', '1', null, '人工 2', '210044', 'workflow1.210043');
INSERT INTO `jbpm4_hist_task` VALUES ('210064', '1', 'workflow1.210060', 'transition 1', 'admin', '0', 'completed', '2017-02-07 16:06:10', '2017-02-07 16:06:10', '144', '1', null, '人工 1', '210062', 'workflow1.210060');
INSERT INTO `jbpm4_hist_task` VALUES ('210071', '0', 'workflow1.210060', null, 'admin2', '0', 'open', '2017-02-07 16:06:10', null, '0', '1', null, '人工 2', '210062', 'workflow1.210060');
INSERT INTO `jbpm4_hist_task` VALUES ('240036', '1', 'workflow1.240033', 'transition 1', 'admin', '0', 'completed', '2017-02-07 16:57:00', '2017-02-07 16:57:00', '215', '1', null, '人工 1', '240034', 'workflow1.240033');
INSERT INTO `jbpm4_hist_task` VALUES ('240043', '0', 'workflow1.240033', null, 'admin2', '0', 'open', '2017-02-07 16:57:00', null, '0', '1', null, '人工 2', '240034', 'workflow1.240033');
INSERT INTO `jbpm4_hist_task` VALUES ('240054', '1', 'workflow1.240051', 'transition 1', 'admin', '0', 'completed', '2017-02-07 16:58:28', '2017-02-07 16:58:28', '146', '1', null, '人工 1', '240052', 'workflow1.240051');
INSERT INTO `jbpm4_hist_task` VALUES ('240061', '0', 'workflow1.240051', null, 'admin2', '0', 'open', '2017-02-07 16:58:28', null, '0', '1', null, '人工 2', '240052', 'workflow1.240051');
INSERT INTO `jbpm4_hist_task` VALUES ('250003', '1', 'workflow1.250000', 'transition 1', 'admin', '0', 'completed', '2017-02-07 17:00:56', '2017-02-07 17:00:56', '306', '1', null, '人工 1', '250001', 'workflow1.250000');
INSERT INTO `jbpm4_hist_task` VALUES ('250010', '0', 'workflow1.250000', null, 'admin2', '0', 'open', '2017-02-07 17:00:56', null, '0', '1', null, '人工 2', '250001', 'workflow1.250000');
INSERT INTO `jbpm4_hist_task` VALUES ('250036', '1', 'workflow1.250033', 'transition 1', 'admin', '0', 'completed', '2017-02-07 17:09:17', '2017-02-07 17:09:17', '184', '1', null, '人工 1', '250034', 'workflow1.250033');
INSERT INTO `jbpm4_hist_task` VALUES ('250043', '0', 'workflow1.250033', null, 'admin2', '0', 'open', '2017-02-07 17:09:17', null, '0', '1', null, '人工 2', '250034', 'workflow1.250033');
INSERT INTO `jbpm4_hist_task` VALUES ('250054', '1', 'workflow1.250051', 'transition 1', 'admin', '0', 'completed', '2017-02-07 17:10:38', '2017-02-07 17:10:38', '129', '1', null, '人工 1', '250052', 'workflow1.250051');
INSERT INTO `jbpm4_hist_task` VALUES ('250062', '0', 'workflow1.250051', null, 'admin2', '0', 'open', '2017-02-07 17:10:38', null, '0', '1', null, '人工 2', '250052', 'workflow1.250051');
INSERT INTO `jbpm4_hist_task` VALUES ('250073', '1', 'workflow1.250070', 'transition 1', 'admin', '0', 'completed', '2017-02-07 17:12:14', '2017-02-07 17:12:14', '126', '1', null, '人工 1', '250071', 'workflow1.250070');
INSERT INTO `jbpm4_hist_task` VALUES ('250081', '0', 'workflow1.250070', null, 'admin2', '0', 'open', '2017-02-07 17:12:14', null, '0', '1', null, '人工 2', '250071', 'workflow1.250070');
INSERT INTO `jbpm4_hist_task` VALUES ('250095', '1', 'workflow1.250092', 'transition 1', 'admin', '0', 'completed', '2017-02-07 17:15:00', '2017-02-07 17:15:00', '99', '1', null, '人工1', '250093', 'workflow1.250092');
INSERT INTO `jbpm4_hist_task` VALUES ('250103', '0', 'workflow1.250092', null, 'admin', '0', 'open', '2017-02-07 17:15:00', null, '0', '1', null, '人工2', '250093', 'workflow1.250092');
INSERT INTO `jbpm4_hist_task` VALUES ('251124', '1', 'workflow1.251121', 'transition 1', 'admin', '0', 'completed', '2017-02-08 09:27:44', '2017-02-08 09:27:44', '123', '1', null, '人工1', '251122', 'workflow1.251121');
INSERT INTO `jbpm4_hist_task` VALUES ('251132', '0', 'workflow1.251121', null, 'admin', '0', 'open', '2017-02-08 09:27:45', null, '0', '1', null, '人工2', '251122', 'workflow1.251121');
INSERT INTO `jbpm4_hist_task` VALUES ('330026', '1', 'workflow1.330023', 'transition 1', 'admin', '0', 'completed', '2017-02-08 11:03:00', '2017-02-08 11:03:00', '294', '1', null, '人工1', '330024', 'workflow1.330023');
INSERT INTO `jbpm4_hist_task` VALUES ('330035', '1', 'workflow1.330023', 'transition 2', 'admin', '0', 'completed', '2017-02-08 11:03:00', '2017-02-08 11:03:14', '14140', '1', null, '人工2', '330024', 'workflow1.330023');
INSERT INTO `jbpm4_hist_task` VALUES ('330051', '1', 'workflow1.330048', 'transition 1', 'admin', '0', 'completed', '2017-02-08 11:05:20', '2017-02-08 11:05:20', '105', '1', null, '人工1', '330049', 'workflow1.330048');
INSERT INTO `jbpm4_hist_task` VALUES ('330059', '1', 'workflow1.330048', 'transition 2', 'admin', '0', 'completed', '2017-02-08 11:05:20', '2017-02-08 11:05:28', '8530', '1', null, '人工2', '330049', 'workflow1.330048');
INSERT INTO `jbpm4_hist_task` VALUES ('330066', '0', 'workflow1.330048', null, 'admin', '0', 'open', '2017-02-08 11:05:28', null, '0', '1', null, '决策result1', '330049', 'workflow1.330048');
INSERT INTO `jbpm4_hist_task` VALUES ('340003', '1', 'workflow1.340000', 'transition 1', 'admin', '0', 'completed', '2017-02-08 11:18:21', '2017-02-08 11:18:22', '320', '1', null, '人工1', '340001', 'workflow1.340000');
INSERT INTO `jbpm4_hist_task` VALUES ('340011', '0', 'workflow1.340000', null, 'admin', '0', 'open', '2017-02-08 11:18:22', null, '0', '1', null, '人工2', '340001', 'workflow1.340000');
INSERT INTO `jbpm4_hist_task` VALUES ('350021', '1', 'workflow1.350018', 'transition 1', 'admin', '0', 'completed', '2017-02-08 11:35:28', '2017-02-08 11:35:28', '172', '1', null, '人工1', '350019', 'workflow1.350018');
INSERT INTO `jbpm4_hist_task` VALUES ('350029', '0', 'workflow1.350018', null, 'admin', '0', 'open', '2017-02-08 11:35:28', null, '0', '1', null, '人工2', '350019', 'workflow1.350018');
INSERT INTO `jbpm4_hist_task` VALUES ('350153', '1', 'workflow1.350150', 'transition 1', 'admin', '0', 'completed', '2017-02-08 13:15:32', '2017-02-08 13:15:32', '90', '1', null, '人工1', '350151', 'workflow1.350150');
INSERT INTO `jbpm4_hist_task` VALUES ('350161', '0', 'workflow1.350150', null, 'admin', '0', 'open', '2017-02-08 13:15:32', null, '0', '1', null, '人工2', '350151', 'workflow1.350150');
INSERT INTO `jbpm4_hist_task` VALUES ('380003', '1', 'workflow1.380000', 'transition 1', 'admin', '0', 'completed', '2017-02-08 13:54:21', '2017-02-08 13:54:21', '351', '1', null, '人工1', '380001', 'workflow1.380000');
INSERT INTO `jbpm4_hist_task` VALUES ('380011', '1', 'workflow1.380000', 'transition 2', 'admin', '0', 'completed', '2017-02-08 13:54:21', '2017-02-08 13:54:50', '29901', '1', null, '人工2', '380001', 'workflow1.380000');
INSERT INTO `jbpm4_hist_task` VALUES ('380020', '1', 'workflow1.380000', 'transition 7', 'admin', '0', 'completed', '2017-02-08 13:54:50', '2017-02-08 14:07:17', '747872', '1', null, '决策result1', '380001', 'workflow1.380000');
INSERT INTO `jbpm4_hist_task` VALUES ('380037', '1', 'workflow1.380034', 'transition 1', 'admin', '0', 'completed', '2017-02-08 13:55:52', '2017-02-08 13:55:52', '108', '1', null, '人工1', '380035', 'workflow1.380034');
INSERT INTO `jbpm4_hist_task` VALUES ('380045', '1', 'workflow1.380034', 'transition 2', 'admin', '0', 'completed', '2017-02-08 13:55:52', '2017-02-08 13:56:07', '15436', '1', null, '人工2', '380035', 'workflow1.380034');
INSERT INTO `jbpm4_hist_task` VALUES ('380052', '1', 'workflow1.380034', 'transition 7', 'admin', '0', 'completed', '2017-02-08 13:56:07', '2017-02-08 13:56:23', '16625', '1', null, '决策result1', '380035', 'workflow1.380034');
INSERT INTO `jbpm4_hist_task` VALUES ('380085', '1', 'workflow1.380082', 'transition 1', 'admin', '0', 'completed', '2017-02-08 14:08:50', '2017-02-08 14:08:51', '142', '1', null, '人工1', '380083', 'workflow1.380082');
INSERT INTO `jbpm4_hist_task` VALUES ('380093', '0', 'workflow1.380082', null, 'admin', '0', 'open', '2017-02-08 14:08:51', null, '0', '1', null, '人工2', '380083', 'workflow1.380082');
INSERT INTO `jbpm4_hist_task` VALUES ('380102', '1', 'workflow1.380099', 'transition 1', 'admin', '0', 'completed', '2017-02-08 14:09:24', '2017-02-08 14:09:24', '120', '1', null, '人工1', '380100', 'workflow1.380099');
INSERT INTO `jbpm4_hist_task` VALUES ('380110', '1', 'workflow1.380099', 'transition 2', 'admin', '0', 'completed', '2017-02-08 14:09:24', '2017-02-08 14:09:43', '19009', '1', null, '人工2', '380100', 'workflow1.380099');
INSERT INTO `jbpm4_hist_task` VALUES ('380117', '1', 'workflow1.380099', 'transition 7', 'admin', '0', 'completed', '2017-02-08 14:09:43', '2017-02-08 14:10:35', '52109', '1', null, '决策result1', '380100', 'workflow1.380099');

-- ----------------------------
-- Table structure for jbpm4_hist_var
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_hist_var`;
CREATE TABLE `jbpm4_hist_var` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `PROCINSTID_` varchar(255) DEFAULT NULL,
  `EXECUTIONID_` varchar(255) DEFAULT NULL,
  `VARNAME_` varchar(255) DEFAULT NULL,
  `VALUE_` varchar(2000) DEFAULT NULL,
  `HPROCI_` decimal(19,0) DEFAULT NULL,
  `HTASK_` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_HVAR_HPROCI` (`HPROCI_`),
  KEY `IDX_HVAR_HTASK` (`HTASK_`),
  KEY `IDX_HVAR_VARNAME` (`PROCINSTID_`,`VARNAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史变量表，已经结束的流程实例的变量信息都存储在该表中';

-- ----------------------------
-- Records of jbpm4_hist_var
-- ----------------------------
INSERT INTO `jbpm4_hist_var` VALUES ('50006', '0', 'workflow1.50000', null, 'savebtn', '动作 1', '50001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('50007', '0', 'workflow1.50000', null, 'bpm_come_back', '0', '50001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('50008', '0', 'workflow1.50000', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '50001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('50039', '0', 'workflow1.50033', null, 'savebtn', '动作 2', '50034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('50040', '0', 'workflow1.50033', null, 'bpm_come_back', '0', '50034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('50041', '0', 'workflow1.50033', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '50034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('50048', '0', 'workflow1.50033', null, 'bpm_seq_result', '0', '50034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210031', '0', 'workflow1.210025', null, 'biz_flow_uuid', '1', '210026', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210032', '0', 'workflow1.210025', null, 'savebtn', '动作 1', '210026', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210033', '0', 'workflow1.210025', null, 'bpm_come_back', '0', '210026', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210034', '0', 'workflow1.210025', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '210026', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210049', '0', 'workflow1.210043', null, 'biz_flow_uuid', '2', '210044', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210050', '0', 'workflow1.210043', null, 'savebtn', '动作 1', '210044', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210051', '0', 'workflow1.210043', null, 'bpm_come_back', '0', '210044', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210052', '0', 'workflow1.210043', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '210044', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210067', '0', 'workflow1.210060', null, 'biz_flow_uuid', '3', '210062', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210068', '0', 'workflow1.210060', null, 'savebtn', '动作 1', '210062', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210069', '0', 'workflow1.210060', null, 'bpm_come_back', '0', '210062', null);
INSERT INTO `jbpm4_hist_var` VALUES ('210070', '0', 'workflow1.210060', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '210062', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240039', '0', 'workflow1.240033', null, 'biz_flow_uuid', '6', '240034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240040', '0', 'workflow1.240033', null, 'savebtn', '动作 1', '240034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240041', '0', 'workflow1.240033', null, 'bpm_come_back', '0', '240034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240042', '0', 'workflow1.240033', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '240034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240057', '0', 'workflow1.240051', null, 'biz_flow_uuid', '7', '240052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240058', '0', 'workflow1.240051', null, 'savebtn', '动作 1', '240052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240059', '0', 'workflow1.240051', null, 'bpm_come_back', '0', '240052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('240060', '0', 'workflow1.240051', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '240052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250006', '0', 'workflow1.250000', null, 'biz_flow_uuid', '8', '250001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250007', '0', 'workflow1.250000', null, 'savebtn', '动作 1', '250001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250008', '0', 'workflow1.250000', null, 'bpm_come_back', '0', '250001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250009', '0', 'workflow1.250000', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '250001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250039', '0', 'workflow1.250033', null, 'biz_flow_uuid', '9', '250034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250040', '0', 'workflow1.250033', null, 'savebtn', '动作 1', '250034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250041', '0', 'workflow1.250033', null, 'bpm_come_back', '0', '250034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250042', '0', 'workflow1.250033', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '250034', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250057', '0', 'workflow1.250051', null, 'bpm_candidate_人工2', 'admin', '250052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250058', '0', 'workflow1.250051', null, 'biz_flow_uuid', '10', '250052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250059', '0', 'workflow1.250051', null, 'savebtn', '动作 1', '250052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250060', '0', 'workflow1.250051', null, 'bpm_come_back', '0', '250052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250061', '0', 'workflow1.250051', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '250052', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250076', '0', 'workflow1.250070', null, 'bpm_candidate_人工2', 'admin', '250071', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250077', '0', 'workflow1.250070', null, 'biz_flow_uuid', '11', '250071', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250078', '0', 'workflow1.250070', null, 'savebtn', '动作 1', '250071', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250079', '0', 'workflow1.250070', null, 'bpm_come_back', '0', '250071', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250080', '0', 'workflow1.250070', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '250071', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250098', '0', 'workflow1.250092', null, 'bpm_candidate_人工2', 'admin', '250093', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250099', '0', 'workflow1.250092', null, 'biz_flow_uuid', '12', '250093', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250100', '0', 'workflow1.250092', null, 'savebtn', '动作 1', '250093', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250101', '0', 'workflow1.250092', null, 'bpm_come_back', '0', '250093', null);
INSERT INTO `jbpm4_hist_var` VALUES ('250102', '0', 'workflow1.250092', null, 'finalDBVariablesjSON', '{\"workflow.bizFlowUuid\":\"\"}', '250093', null);
INSERT INTO `jbpm4_hist_var` VALUES ('251127', '0', 'workflow1.251121', null, 'bpm_candidate_人工2', 'admin', '251122', null);
INSERT INTO `jbpm4_hist_var` VALUES ('251128', '0', 'workflow1.251121', null, 'biz_flow_uuid', '13', '251122', null);
INSERT INTO `jbpm4_hist_var` VALUES ('251129', '0', 'workflow1.251121', null, 'savebtn', '动作 1', '251122', null);
INSERT INTO `jbpm4_hist_var` VALUES ('251130', '0', 'workflow1.251121', null, 'bpm_come_back', '0', '251122', null);
INSERT INTO `jbpm4_hist_var` VALUES ('251131', '0', 'workflow1.251121', null, 'finalDBVariablesjSON', '{}', '251122', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330030', '0', 'workflow1.330023', null, 'bpm_candidate_人工2', 'admin', '330024', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330031', '0', 'workflow1.330023', null, 'biz_flow_uuid', '15', '330024', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330032', '0', 'workflow1.330023', null, 'savebtn', '动作 2', '330024', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330033', '0', 'workflow1.330023', null, 'bpm_come_back', '0', '330024', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330034', '1', 'workflow1.330023', null, 'finalDBVariablesjSON', '{\"result\":\"1\"}', '330024', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330054', '0', 'workflow1.330048', null, 'bpm_candidate_人工2', 'admin', '330049', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330055', '1', 'workflow1.330048', null, 'biz_flow_uuid', '17', '330049', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330056', '1', 'workflow1.330048', null, 'savebtn', '动作 2', '330049', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330057', '0', 'workflow1.330048', null, 'bpm_come_back', '0', '330049', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330058', '1', 'workflow1.330048', null, 'finalDBVariablesjSON', '{\"result\":\"1\"}', '330049', null);
INSERT INTO `jbpm4_hist_var` VALUES ('330073', '0', 'workflow1.330048', null, 'bpm_seq_result', '0', '330049', null);
INSERT INTO `jbpm4_hist_var` VALUES ('340006', '0', 'workflow1.340000', null, 'bpm_candidate_人工2', 'admin', '340001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('340007', '0', 'workflow1.340000', null, 'biz_flow_uuid', '18', '340001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('340008', '0', 'workflow1.340000', null, 'savebtn', '动作 1', '340001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('340009', '0', 'workflow1.340000', null, 'bpm_come_back', '0', '340001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('340010', '0', 'workflow1.340000', null, 'finalDBVariablesjSON', '{}', '340001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350024', '0', 'workflow1.350018', null, 'bpm_candidate_人工2', 'admin', '350019', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350025', '0', 'workflow1.350018', null, 'biz_flow_uuid', '22', '350019', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350026', '0', 'workflow1.350018', null, 'savebtn', '动作 1', '350019', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350027', '0', 'workflow1.350018', null, 'bpm_come_back', '0', '350019', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350028', '0', 'workflow1.350018', null, 'finalDBVariablesjSON', '{}', '350019', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350156', '0', 'workflow1.350150', null, 'bpm_candidate_人工2', 'admin', '350151', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350157', '0', 'workflow1.350150', null, 'biz_flow_uuid', '24', '350151', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350158', '0', 'workflow1.350150', null, 'savebtn', '动作 1', '350151', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350159', '0', 'workflow1.350150', null, 'bpm_come_back', '0', '350151', null);
INSERT INTO `jbpm4_hist_var` VALUES ('350160', '0', 'workflow1.350150', null, 'finalDBVariablesjSON', '{}', '350151', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380006', '0', 'workflow1.380000', null, 'bpm_candidate_人工2', 'admin', '380001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380007', '1', 'workflow1.380000', null, 'biz_flow_uuid', '30', '380001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380008', '1', 'workflow1.380000', null, 'savebtn', '动作 3', '380001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380009', '0', 'workflow1.380000', null, 'bpm_come_back', '0', '380001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380010', '1', 'workflow1.380000', null, 'finalDBVariablesjSON', '{\"result\":\"1\"}', '380001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380027', '0', 'workflow1.380000', null, 'bpm_seq_result', '0', '380001', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380040', '0', 'workflow1.380034', null, 'bpm_candidate_人工2', 'admin', '380035', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380041', '1', 'workflow1.380034', null, 'biz_flow_uuid', '29', '380035', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380042', '1', 'workflow1.380034', null, 'savebtn', '动作 3', '380035', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380043', '0', 'workflow1.380034', null, 'bpm_come_back', '0', '380035', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380044', '1', 'workflow1.380034', null, 'finalDBVariablesjSON', '{\"result\":\"1\"}', '380035', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380059', '0', 'workflow1.380034', null, 'bpm_seq_result', '0', '380035', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380088', '0', 'workflow1.380082', null, 'bpm_candidate_人工2', 'admin', '380083', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380089', '0', 'workflow1.380082', null, 'biz_flow_uuid', '32', '380083', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380090', '0', 'workflow1.380082', null, 'savebtn', '动作 1', '380083', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380091', '0', 'workflow1.380082', null, 'bpm_come_back', '0', '380083', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380092', '0', 'workflow1.380082', null, 'finalDBVariablesjSON', '{}', '380083', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380105', '0', 'workflow1.380099', null, 'bpm_candidate_人工2', 'admin', '380100', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380106', '1', 'workflow1.380099', null, 'biz_flow_uuid', '35', '380100', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380107', '1', 'workflow1.380099', null, 'savebtn', '动作 3', '380100', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380108', '0', 'workflow1.380099', null, 'bpm_come_back', '0', '380100', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380109', '1', 'workflow1.380099', null, 'finalDBVariablesjSON', '{\"result\":\"1\"}', '380100', null);
INSERT INTO `jbpm4_hist_var` VALUES ('380124', '0', 'workflow1.380099', null, 'bpm_seq_result', '0', '380100', null);

-- ----------------------------
-- Table structure for jbpm4_id_group
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_id_group`;
CREATE TABLE `jbpm4_id_group` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `PARENT_` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_GROUP_PARENT` (`PARENT_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='群组表，目前 没用【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_id_group
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_id_membership
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_id_membership`;
CREATE TABLE `jbpm4_id_membership` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `USER_` decimal(19,0) DEFAULT NULL,
  `GROUP_` decimal(19,0) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_MEM_GROUP` (`GROUP_`),
  KEY `IDX_MEM_USER` (`USER_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户群组关联表，目前没使用【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_id_membership
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_id_user
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_id_user`;
CREATE TABLE `jbpm4_id_user` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `ID_` varchar(255) DEFAULT NULL,
  `PASSWORD_` varchar(255) DEFAULT NULL,
  `GIVENNAME_` varchar(255) DEFAULT NULL,
  `FAMILYNAME_` varchar(255) DEFAULT NULL,
  `BUSINESSEMAIL_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_JBPMIDUSER_ID` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表，目前没使用【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_id_user
-- ----------------------------
INSERT INTO `jbpm4_id_user` VALUES ('1', '1', 'admin', '1', 'admin 111', 'admin 111', '1@');
INSERT INTO `jbpm4_id_user` VALUES ('2', '2', 'admin2', '2', 'admin 111', 'admin 222', '2@');

-- ----------------------------
-- Table structure for jbpm4_job
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_job`;
CREATE TABLE `jbpm4_job` (
  `DBID_` decimal(19,0) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `STATE_` varchar(255) DEFAULT NULL,
  `ISEXCLUSIVE_` decimal(1,0) DEFAULT NULL,
  `LOCKOWNER_` varchar(255) DEFAULT NULL,
  `LOCKEXPTIME_` datetime DEFAULT NULL,
  `EXCEPTION_` text,
  `RETRIES_` decimal(10,0) DEFAULT NULL,
  `PROCESSINSTANCE_` decimal(19,0) DEFAULT NULL,
  `EXECUTION_` decimal(19,0) DEFAULT NULL,
  `CFG_` decimal(19,0) DEFAULT NULL,
  `SIGNAL_` varchar(255) DEFAULT NULL,
  `EVENT_` varchar(255) DEFAULT NULL,
  `REPEAT_` varchar(255) DEFAULT NULL,
  `CREATEDATE_` datetime DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_JOBDUEDATE` (`DUEDATE_`),
  KEY `IDX_JOBLOCKEXP` (`LOCKEXPTIME_`),
  KEY `IDX_JOBRETRIES` (`RETRIES_`),
  KEY `IDX_JOB_CFG` (`CFG_`),
  KEY `IDX_JOB_EXE` (`EXECUTION_`),
  KEY `IDX_JOB_PRINST` (`PROCESSINSTANCE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务表，用于存放定时任务';

-- ----------------------------
-- Records of jbpm4_job
-- ----------------------------
INSERT INTO `jbpm4_job` VALUES ('-13', 'PeriodicCommand', '0', '2017-02-08 16:38:04', 'waiting', '0', null, null, null, '1', null, null, '-13', null, '授权委托过期回收', '0 0/45 7-21 ? * MON-FRI', null);
INSERT INTO `jbpm4_job` VALUES ('-12', 'PeriodicCommand', '0', '2017-02-08 16:37:04', 'waiting', '0', null, null, null, '3', null, null, '-12', null, '授权委托定时分析', '0 0 7,12,20 * * ?', null);

-- ----------------------------
-- Table structure for jbpm4_job_detail
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_job_detail`;
CREATE TABLE `jbpm4_job_detail` (
  `DBID_` decimal(19,0) NOT NULL,
  `JOB_ID_` decimal(19,0) DEFAULT NULL,
  `HIST_JOB_ID_` decimal(19,0) DEFAULT NULL,
  `STATE_` varchar(1) DEFAULT NULL,
  `ERROR_` text,
  `EXECUTE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`DBID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JOB明细表';

-- ----------------------------
-- Records of jbpm4_job_detail
-- ----------------------------
INSERT INTO `jbpm4_job_detail` VALUES ('50017', null, '50012', '1', null, '2017-01-19 10:48:32');
INSERT INTO `jbpm4_job_detail` VALUES ('50050', null, '50046', '1', null, '2017-01-19 10:56:20');
INSERT INTO `jbpm4_job_detail` VALUES ('210041', null, '210038', '1', null, '2017-02-07 16:03:07');
INSERT INTO `jbpm4_job_detail` VALUES ('210059', null, '210056', '1', null, '2017-02-07 16:04:55');
INSERT INTO `jbpm4_job_detail` VALUES ('210077', null, '210074', '1', null, '2017-02-07 16:06:10');
INSERT INTO `jbpm4_job_detail` VALUES ('240049', null, '240046', '1', null, '2017-02-07 16:57:00');
INSERT INTO `jbpm4_job_detail` VALUES ('240067', null, '240064', '1', null, '2017-02-07 16:58:28');
INSERT INTO `jbpm4_job_detail` VALUES ('250018', null, '250013', '1', null, '2017-02-07 17:00:56');
INSERT INTO `jbpm4_job_detail` VALUES ('250048', null, '250046', '1', null, '2017-02-07 17:09:17');
INSERT INTO `jbpm4_job_detail` VALUES ('250068', null, '250065', '1', null, '2017-02-07 17:10:38');
INSERT INTO `jbpm4_job_detail` VALUES ('250087', null, '250084', '1', null, '2017-02-07 17:12:14');
INSERT INTO `jbpm4_job_detail` VALUES ('250108', null, '250105', '1', null, '2017-02-07 17:15:00');
INSERT INTO `jbpm4_job_detail` VALUES ('251137', null, '251134', '1', null, '2017-02-08 09:27:45');
INSERT INTO `jbpm4_job_detail` VALUES ('330040', null, '330037', '1', null, '2017-02-08 11:03:00');
INSERT INTO `jbpm4_job_detail` VALUES ('330064', null, '330061', '1', null, '2017-02-08 11:05:20');
INSERT INTO `jbpm4_job_detail` VALUES ('330076', null, '330069', '1', null, '2017-02-08 11:05:28');
INSERT INTO `jbpm4_job_detail` VALUES ('340018', null, '340013', '1', null, '2017-02-08 11:18:22');
INSERT INTO `jbpm4_job_detail` VALUES ('350034', null, '350031', '1', null, '2017-02-08 11:35:28');
INSERT INTO `jbpm4_job_detail` VALUES ('350166', null, '350163', '1', null, '2017-02-08 13:15:32');
INSERT INTO `jbpm4_job_detail` VALUES ('380018', null, '380013', '1', null, '2017-02-08 13:54:21');
INSERT INTO `jbpm4_job_detail` VALUES ('380030', null, '380023', '1', null, '2017-02-08 13:54:50');
INSERT INTO `jbpm4_job_detail` VALUES ('380050', null, '380047', '1', null, '2017-02-08 13:55:52');
INSERT INTO `jbpm4_job_detail` VALUES ('380062', null, '380055', '1', null, '2017-02-08 13:56:07');
INSERT INTO `jbpm4_job_detail` VALUES ('380098', null, '380095', '1', null, '2017-02-08 14:08:51');
INSERT INTO `jbpm4_job_detail` VALUES ('380115', null, '380112', '1', null, '2017-02-08 14:09:24');
INSERT INTO `jbpm4_job_detail` VALUES ('380127', null, '380120', '1', null, '2017-02-08 14:09:43');

-- ----------------------------
-- Table structure for jbpm4_lob
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_lob`;
CREATE TABLE `jbpm4_lob` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `BLOB_VALUE_` longblob,
  `DEPLOYMENT_` decimal(19,0) DEFAULT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_LOB_DEPLOYMENT` (`DEPLOYMENT_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大字段表，系统中所有需要存放大字段的都放到此表中';

-- ----------------------------
-- Records of jbpm4_lob
-- ----------------------------
INSERT INTO `jbpm4_lob` VALUES ('-13', '0', 0xACED000573720036636F6D2E68756E6473756E2E62706D2E626173652E6A62706D2E6578702E64656C65676174652E4175746F5769746864726177436D6400000000000000010200007870, null, null);
INSERT INTO `jbpm4_lob` VALUES ('-12', '0', 0xACED000573720042636F6D2E68756E6473756E2E62706D2E626173652E6A62706D2E6578702E64656C65676174652E44656C6567617465496E666F416E616C79736973436F6D6D616E64000000000000000102000078720046636F6D2E68756E6473756E2E62706D2E626173652E6A62706D2E6578702E64656C65676174652E416273747261637444656C6567617465496E666F416E616C79736973436D6400000000000000010200007870, null, null);
INSERT INTO `jbpm4_lob` VALUES ('30008', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733362C3131322C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A52031272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273432332C3130352C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A52031272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A52032272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273238322C3130322C39302C353027206E616D653D27E4BABAE5B7A52032272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273238322C3135322C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '30007', '2.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('50032', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733362C3131322C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A52031272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273432332C3130352C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A52031272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A52032272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273238322C3130322C39302C353027206E616D653D27E4BABAE5B7A52032272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273238322C3135322C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '50031', '3.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('220022', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733362C3131322C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A52031272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273432332C3130352C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A52031272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A52032273E0A2020202020203C636F6E646974696F6E20657870723D27237B70726F64756374536572766963652E7570646174655374617465282671756F743B312671756F743B297D272F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273238322C3130322C39302C353027206E616D653D27E4BABAE5B7A52032272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273238322C3135322C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64273E0A2020202020203C636F6E646974696F6E20657870723D27237B70726F64756374536572766963652E7570646174655374617465282671756F743B312671756F743B297D272F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '220021', '4.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('220027', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733362C3131322C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A52031272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273432332C3130352C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A52031272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A52032273E0A2020202020203C636F6E646974696F6E20657870723D27237B70726F64756374536572766963652E7570646174655374617465282671756F743B312671756F743B297D272F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273238322C3130322C39302C353027206E616D653D27E4BABAE5B7A52032272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273238322C3135322C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64273E0A2020202020203C636F6E646974696F6E20657870723D27237B70726F64756374536572766963652E7570646174655374617465282671756F743B312671756F743B297D272F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '220026', '5.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('240026', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733362C3131322C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A52031272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273432332C3130352C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A52031272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A52032273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273238322C3130322C39302C353027206E616D653D27E4BABAE5B7A52032272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273238322C3135322C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '240025', '6.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('250091', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733362C3131322C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273432332C3130352C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273238322C3130322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273238322C3135322C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '250090', '7.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('251117', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '251116', '8.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('251119', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '251118', '9.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('330047', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B312671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '330046', '10.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('330086', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A202020203C6F6E206576656E743D2761737369676E273E0A202020203C6175746F20736572766963652D69643D2770726F64756374536572766963652E75706461746553746174652720747970653D27737072696E67273E0A2020202020203C696E3E5B7B2671756F743B7661722671756F743B3A2671756F743B237B70726F63657373496E7374616E636549647D2671756F743B2C2671756F743B6B65792671756F743B3A2671756F743B302671756F743B2C2671756F743B706172616D4E616D652671756F743B3A2671756F743B70726F63657373496E7374616E636549642671756F743B7D5D3C2F696E3E0A202020203C2F6175746F3E0A202020203C2F6F6E3E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B312671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2774727565272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '330085', '11.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('330090', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A202020203C6F6E206576656E743D27656E64273E0A202020203C6175746F20736572766963652D69643D2770726F64756374536572766963652E75706461746553746174652720747970653D27737072696E67273E0A2020202020203C696E3E5B7B2671756F743B7661722671756F743B3A2671756F743B237B70726F63657373496E7374616E636549647D2671756F743B2C2671756F743B6B65792671756F743B3A2671756F743B302671756F743B2C2671756F743B706172616D4E616D652671756F743B3A2671756F743B70726F63657373496E7374616E636549642671756F743B7D5D3C2F696E3E0A202020203C2F6175746F3E0A202020203C2F6F6E3E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B312671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2774727565272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '330089', '12.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('340019', '0', 0xACED0005737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000130740010776F726B666C6F77312E33343030303078, null, null);
INSERT INTO `jbpm4_lob` VALUES ('350000', '0', 0xACED0005737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000130740010776F726B666C6F77312E33343030303078, null, null);
INSERT INTO `jbpm4_lob` VALUES ('350017', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A202020203C6F6E206576656E743D27656E64273E0A202020203C6175746F20736572766963652D69643D2770726F64756374536572766963652E75706461746553746174652720747970653D27737072696E67273E0A202020203C696E3E5B7B2671756F743B7661722671756F743B3A2671756F743B5C2671756F743B315C2671756F743B2671756F743B2C2671756F743B6B65792671756F743B3A2671756F743B302671756F743B2C2671756F743B706172616D4E616D652671756F743B3A2671756F743B70726F63657373496E7374616E636549642671756F743B7D5D3C2F696E3E0A202020203C2F6175746F3E0A202020203C2F6F6E3E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B312671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2774727565272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '350016', '13.jpdl.xml');
INSERT INTO `jbpm4_lob` VALUES ('350035', '0', 0xACED0005737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000001740001307400013178, null, null);
INSERT INTO `jbpm4_lob` VALUES ('350148', '0', 0x3C70726F6365737320786D6C6E733D27687474703A2F2F6A62706D2E6F72672F342E342F6A70646C27206E616D653D27776F726B666C6F773127206B65793D27776F726B666C6F7731273E0A20203C7374617274206E616D653D2773746172742720673D2733332C3130342C34382C3438273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520312720746F3D27E4BABAE5B7A531272F3E0A20203C2F73746172743E0A20203C656E64206E616D653D27656E642720673D273237312C3436362C34382C3438272F3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273131372C3130322C39302C353027206E616D653D27E4BABAE5B7A531272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2733373963383838363330346334383362386665663065303232343962383531662720666F726D4E616D653D27E8AFB7E5818731273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20312720746F3D27616374696F6E2031272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273131372C3135322C33302C33302720746578743D27E58AA8E4BD9C203127206E616D653D27616374696F6E2031273E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E4BABAE5B7A532273E0A2020202020203C636F6E646974696F6E2F3E0A202020203C2F7472616E736974696F6E3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273234332C3134322C39302C353027206E616D653D27E4BABAE5B7A532272063616E436F6F7264696E6174653D2766616C73652720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B322671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E322671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20322720746F3D27616374696F6E2032272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273237332C3231342C33302C33302720746578743D27E58AA8E4BD9C203227206E616D653D27616374696F6E2032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD9620322720746F3D27E586B3E7AD962032272F3E0A20203C2F616374696F6E3E0A20203C6465636973696F6E20673D273236352C3238342C34362C343627206E616D653D27E586B3E7AD962032273E0A202020203C7472616E736974696F6E206E616D653D27746F20E586B3E7AD96726573756C74312720746F3D27E586B3E7AD96726573756C7431273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B312671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20E4BABAE5B7A520322720746F3D27E586B3E7AD96726573756C7432273E0A2020202020203C636F6E646974696F6E20657870723D27237B726573756C74203D3D202671756F743B322671756F743B7D272F3E0A202020203C2F7472616E736974696F6E3E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F6465636973696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2766616C7365272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D273433322C3238322C39302C353027206E616D653D27E586B3E7AD96726573756C74312720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E20372720746F3D27616374696F6E2033272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D273436322C3335372C33302C33302720746578743D27E58AA8E4BD9C203327206E616D653D27616374696F6E2033273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A20203C68756D616E20646F6E744578636C75646543616E6469646174653D2730272061737369676E546F4C6173743D27302720656E61626C6552656D696E643D2774727565272063616E4E6F746963653D2766616C7365272063616E526561737369676E3D2766616C73652720673D2736352C3238352C39302C353027206E616D653D27E586B3E7AD96726573756C74322720666F726D3D2761363136303130376334643634633830393030633430633938313633663036382720666F726D4E616D653D27E8AFB7E5818732272063616E436F6F7264696E6174653D2766616C7365273E0A202020203C7061727469636970616E74733E5B7B2671756F743B6E616D652671756F743B3A2671756F743B312671756F743B2C2671756F743B636F64652671756F743B3A2671756F743B61646D696E2671756F743B2C2671756F743B74797065636F64652671756F743B3A2671756F743B757365722671756F743B2C2671756F743B747970656E616D652671756F743B3A2671756F743BE794A8E688B72671756F743B2C2671756F743B747970652671756F743B3A2671756F743B2671756F743B7D5D3C2F7061727469636970616E74733E0A20203C7472616E736974696F6E206E616D653D277472616E736974696F6E2031302720746F3D27616374696F6E2034272F3E0A20203C2F68756D616E3E0A20203C616374696F6E2061737369676E53657175656E636541637469766974793D2730272069734A756D704F757446726F6D457865637574696F6E3D2730272064656661756C74416374696F6E3D27302720616374696F6E4F726465723D27302720673D2739352C3336332C33302C33302720746578743D27E58AA8E4BD9C203427206E616D653D27616374696F6E2034273E0A202020203C7472616E736974696F6E206E616D653D27746F20656E642720746F3D27656E64272F3E0A20203C2F616374696F6E3E0A3C2F70726F636573733E0A, '350147', '14.jpdl.xml');

-- ----------------------------
-- Table structure for jbpm4_participation
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_participation`;
CREATE TABLE `jbpm4_participation` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `GROUPID_` varchar(255) DEFAULT NULL,
  `USERID_` varchar(255) DEFAULT NULL,
  `TYPE_` varchar(255) DEFAULT NULL,
  `TASK_` decimal(19,0) DEFAULT NULL,
  `SWIMLANE_` decimal(19,0) DEFAULT NULL,
  `AGENT_USERID_` varchar(255) DEFAULT NULL,
  `AGENT_PATH_` varchar(1024) DEFAULT NULL,
  `DELEGATE_PATH_` varchar(1024) DEFAULT NULL,
  `CLIENT_USERID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_PART_TASK` (`TASK_`),
  KEY `IDX_PART_USER` (`USERID_`),
  KEY `IDX_PART_GROUP` (`GROUPID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务候选人关联表，定义了待办任务和处理该任务的候选用户、群组之间的关联关系';

-- ----------------------------
-- Records of jbpm4_participation
-- ----------------------------
INSERT INTO `jbpm4_participation` VALUES ('50010', '0', null, 'admin2', 'owner', '50009', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('210036', '0', null, 'admin2', 'owner', '210035', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('210054', '0', null, 'admin2', 'owner', '210053', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('210072', '0', null, 'admin2', 'owner', '210071', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('240044', '0', null, 'admin2', 'owner', '240043', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('240062', '0', null, 'admin2', 'owner', '240061', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('250011', '0', null, 'admin2', 'owner', '250010', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('250044', '0', null, 'admin2', 'owner', '250043', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('250063', '0', null, 'admin2', 'owner', '250062', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('250082', '0', null, 'admin2', 'owner', '250081', null, null, null, null, null);
INSERT INTO `jbpm4_participation` VALUES ('330067', '0', null, 'admin', 'owner', '330066', null, null, null, null, null);

-- ----------------------------
-- Table structure for jbpm4_property
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_property`;
CREATE TABLE `jbpm4_property` (
  `KEY_` varchar(255) NOT NULL,
  `VERSION_` decimal(10,0) NOT NULL,
  `VALUE_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局属性表，定义引擎获取主键的当前值';

-- ----------------------------
-- Records of jbpm4_property
-- ----------------------------
INSERT INTO `jbpm4_property` VALUES ('next.dbid', '48', '480000');

-- ----------------------------
-- Table structure for jbpm4_swimlane
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_swimlane`;
CREATE TABLE `jbpm4_swimlane` (
  `DBID_` decimal(19,0) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `EXECUTION_` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_SWIMLANE_EXEC` (`EXECUTION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='泳道表，定义了一个泳道里面有哪些用户【暂时没有用到】';

-- ----------------------------
-- Records of jbpm4_swimlane
-- ----------------------------

-- ----------------------------
-- Table structure for jbpm4_task
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_task`;
CREATE TABLE `jbpm4_task` (
  `DBID_` decimal(19,0) NOT NULL,
  `CLASS_` char(1) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `NAME_` varchar(255) DEFAULT NULL,
  `DESCR_` text,
  `STATE_` varchar(255) DEFAULT NULL,
  `SUSPHISTSTATE_` varchar(255) DEFAULT NULL,
  `ASSIGNEE_` varchar(255) DEFAULT NULL,
  `FORM_` varchar(255) DEFAULT NULL,
  `PRIORITY_` decimal(10,0) DEFAULT NULL,
  `CREATE_` datetime DEFAULT NULL,
  `DUEDATE_` datetime DEFAULT NULL,
  `PROGRESS_` decimal(10,0) DEFAULT NULL,
  `SIGNALLING_` decimal(1,0) DEFAULT NULL,
  `EXECUTION_ID_` varchar(255) DEFAULT NULL,
  `ACTIVITY_NAME_` varchar(255) DEFAULT NULL,
  `HASVARS_` decimal(1,0) DEFAULT NULL,
  `SUPERTASK_` decimal(19,0) DEFAULT NULL,
  `EXECUTION_` decimal(19,0) DEFAULT NULL,
  `PROCINST_` decimal(19,0) DEFAULT NULL,
  `SWIMLANE_` decimal(19,0) DEFAULT NULL,
  `TASKDEFNAME_` varchar(255) DEFAULT NULL,
  `BIZ_REF_ID_` varchar(255) DEFAULT NULL,
  `PRE_OPERATORS_` varchar(500) DEFAULT NULL,
  `SUB_STATE_` varchar(50) DEFAULT NULL,
  `VISIBLE_` char(1) DEFAULT NULL,
  `LOOK_USER` varchar(255) DEFAULT NULL,
  `LOOK_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `PROCESS_INSTANCE_ID_` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_TASK_SUPERTASK` (`SUPERTASK_`),
  KEY `IDX_TASK_ASSIGNEE` (`ASSIGNEE_`),
  KEY `IDX_TASK_CREATE` (`CREATE_`),
  KEY `IDX_TASK_EXEC` (`EXECUTION_`),
  KEY `IDX_TASK_PROCINST` (`PROCINST_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='待办任务表，包含系统中所有的待办任务';

-- ----------------------------
-- Records of jbpm4_task
-- ----------------------------
INSERT INTO `jbpm4_task` VALUES ('50009', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-01-19 10:48:32', null, '0', '1', 'workflow1.50000', '人工 2', '0', null, '50001', '50001', null, null, null, '1', 'open', 'Y', null, '2017-01-19 10:48:32', 'workflow1.50000');
INSERT INTO `jbpm4_task` VALUES ('210035', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 16:03:07', null, '0', '1', 'workflow1.210025', '人工 2', '0', null, '210026', '210026', null, null, '1', '1', 'open', 'Y', null, '2017-02-07 16:03:07', 'workflow1.210025');
INSERT INTO `jbpm4_task` VALUES ('210053', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 16:04:55', null, '0', '1', 'workflow1.210043', '人工 2', '0', null, '210044', '210044', null, null, '2', '1', 'open', 'Y', null, '2017-02-07 16:04:55', 'workflow1.210043');
INSERT INTO `jbpm4_task` VALUES ('210071', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 16:06:10', null, '0', '1', 'workflow1.210060', '人工 2', '0', null, '210062', '210062', null, null, '3', '1', 'open', 'Y', null, '2017-02-07 16:06:10', 'workflow1.210060');
INSERT INTO `jbpm4_task` VALUES ('240043', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 16:57:00', null, '0', '1', 'workflow1.240033', '人工 2', '0', null, '240034', '240034', null, null, '6', '1', 'open', 'Y', null, '2017-02-07 16:57:00', 'workflow1.240033');
INSERT INTO `jbpm4_task` VALUES ('240061', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 16:58:28', null, '0', '1', 'workflow1.240051', '人工 2', '0', null, '240052', '240052', null, null, '7', '1', 'open', 'Y', null, '2017-02-07 16:58:28', 'workflow1.240051');
INSERT INTO `jbpm4_task` VALUES ('250010', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 17:00:56', null, '0', '1', 'workflow1.250000', '人工 2', '0', null, '250001', '250001', null, null, '8', '1', 'open', 'Y', null, '2017-02-07 17:00:56', 'workflow1.250000');
INSERT INTO `jbpm4_task` VALUES ('250043', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 17:09:17', null, '0', '1', 'workflow1.250033', '人工 2', '0', null, '250034', '250034', null, null, '9', '1', 'open', 'Y', null, '2017-02-07 17:09:17', 'workflow1.250033');
INSERT INTO `jbpm4_task` VALUES ('250062', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 17:10:38', null, '0', '1', 'workflow1.250051', '人工 2', '0', null, '250052', '250052', null, null, '10', '1', 'open', 'Y', null, '2017-02-07 17:10:38', 'workflow1.250051');
INSERT INTO `jbpm4_task` VALUES ('250081', 'O', '1', 'workflow1_人工 2(1)', null, 'open', null, 'admin2', null, '0', '2017-02-07 17:12:14', null, '0', '1', 'workflow1.250070', '人工 2', '0', null, '250071', '250071', null, null, '11', '1', 'open', 'Y', null, '2017-02-07 17:12:14', 'workflow1.250070');
INSERT INTO `jbpm4_task` VALUES ('250103', 'O', '1', 'workflow1_人工2(1)', null, 'open', null, 'admin', null, '0', '2017-02-07 17:15:00', null, '0', '1', 'workflow1.250092', '人工2', '0', null, '250093', '250093', null, null, '12', '1', 'open', 'Y', null, '2017-02-07 17:15:00', 'workflow1.250092');
INSERT INTO `jbpm4_task` VALUES ('251132', 'O', '1', 'workflow1_人工2(1)', null, 'open', null, 'admin', null, '0', '2017-02-08 09:27:45', null, '0', '1', 'workflow1.251121', '人工2', '0', null, '251122', '251122', null, null, '13', '1', 'open', 'Y', null, '2017-02-08 09:27:45', 'workflow1.251121');
INSERT INTO `jbpm4_task` VALUES ('330066', 'O', '1', 'workflow1_决策result1(1)', null, 'open', null, 'admin', null, '0', '2017-02-08 11:05:28', null, '0', '1', 'workflow1.330048', '决策result1', '0', null, '330049', '330049', null, null, '17', '1', 'open', 'Y', null, '2017-02-08 11:05:28', 'workflow1.330048');
INSERT INTO `jbpm4_task` VALUES ('340011', 'O', '1', 'workflow1_人工2(1)', null, 'open', null, 'admin', null, '0', '2017-02-08 11:18:22', null, '0', '1', 'workflow1.340000', '人工2', '0', null, '340001', '340001', null, null, '18', '1', 'open', 'Y', null, '2017-02-08 11:18:22', 'workflow1.340000');
INSERT INTO `jbpm4_task` VALUES ('350029', 'O', '1', 'workflow1_人工2(1)', null, 'open', null, 'admin', null, '0', '2017-02-08 11:35:28', null, '0', '1', 'workflow1.350018', '人工2', '0', null, '350019', '350019', null, null, '22', '1', 'open', 'Y', null, '2017-02-08 11:35:28', 'workflow1.350018');
INSERT INTO `jbpm4_task` VALUES ('350161', 'O', '1', 'workflow1_人工2(1)', null, 'open', null, 'admin', null, '0', '2017-02-08 13:15:32', null, '0', '1', 'workflow1.350150', '人工2', '0', null, '350151', '350151', null, null, '24', '1', 'open', 'Y', null, '2017-02-08 13:15:32', 'workflow1.350150');
INSERT INTO `jbpm4_task` VALUES ('380093', 'O', '1', 'workflow1_人工2(admin 111)', null, 'open', null, 'admin', null, '0', '2017-02-08 14:08:51', null, '0', '1', 'workflow1.380082', '人工2', '0', null, '380083', '380083', null, null, '32', 'admin 111', 'open', 'Y', null, '2017-02-08 14:08:51', 'workflow1.380082');

-- ----------------------------
-- Table structure for jbpm4_variable
-- ----------------------------
DROP TABLE IF EXISTS `jbpm4_variable`;
CREATE TABLE `jbpm4_variable` (
  `DBID_` decimal(19,0) NOT NULL,
  `CLASS_` varchar(255) NOT NULL,
  `DBVERSION_` decimal(10,0) NOT NULL,
  `KEY_` varchar(255) DEFAULT NULL,
  `CONVERTER_` varchar(255) DEFAULT NULL,
  `HIST_` decimal(1,0) DEFAULT NULL,
  `EXECUTION_` decimal(19,0) DEFAULT NULL,
  `TASK_` decimal(19,0) DEFAULT NULL,
  `LOB_` decimal(19,0) DEFAULT NULL,
  `DATE_VALUE_` datetime DEFAULT NULL,
  `DOUBLE_VALUE_` float DEFAULT NULL,
  `CLASSNAME_` varchar(255) DEFAULT NULL,
  `LONG_VALUE_` decimal(19,0) DEFAULT NULL,
  `STRING_VALUE_` varchar(2000) DEFAULT NULL,
  `TEXT_VALUE_` text,
  `EXESYS_` decimal(19,0) DEFAULT NULL,
  PRIMARY KEY (`DBID_`),
  KEY `IDX_VAR_EXECUTION` (`EXECUTION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='变量表，系统中所有正在运行的任务相关的所有变量';

-- ----------------------------
-- Records of jbpm4_variable
-- ----------------------------
INSERT INTO `jbpm4_variable` VALUES ('50006', 'string', '0', 'savebtn', null, '1', '50001', null, null, null, null, null, null, '动作 1', null, '50001');
INSERT INTO `jbpm4_variable` VALUES ('50007', 'string', '0', 'bpm_come_back', null, '1', '50001', null, null, null, null, null, null, '0', null, '50001');
INSERT INTO `jbpm4_variable` VALUES ('50008', 'string', '0', 'finalDBVariablesjSON', null, '1', '50001', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '50001');
INSERT INTO `jbpm4_variable` VALUES ('210031', 'string', '0', 'biz_flow_uuid', null, '1', '210026', null, null, null, null, null, null, '1', null, '210026');
INSERT INTO `jbpm4_variable` VALUES ('210032', 'string', '0', 'savebtn', null, '1', '210026', null, null, null, null, null, null, '动作 1', null, '210026');
INSERT INTO `jbpm4_variable` VALUES ('210033', 'string', '0', 'bpm_come_back', null, '1', '210026', null, null, null, null, null, null, '0', null, '210026');
INSERT INTO `jbpm4_variable` VALUES ('210034', 'string', '0', 'finalDBVariablesjSON', null, '1', '210026', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '210026');
INSERT INTO `jbpm4_variable` VALUES ('210049', 'string', '0', 'biz_flow_uuid', null, '1', '210044', null, null, null, null, null, null, '2', null, '210044');
INSERT INTO `jbpm4_variable` VALUES ('210050', 'string', '0', 'savebtn', null, '1', '210044', null, null, null, null, null, null, '动作 1', null, '210044');
INSERT INTO `jbpm4_variable` VALUES ('210051', 'string', '0', 'bpm_come_back', null, '1', '210044', null, null, null, null, null, null, '0', null, '210044');
INSERT INTO `jbpm4_variable` VALUES ('210052', 'string', '0', 'finalDBVariablesjSON', null, '1', '210044', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '210044');
INSERT INTO `jbpm4_variable` VALUES ('210067', 'string', '0', 'biz_flow_uuid', null, '1', '210062', null, null, null, null, null, null, '3', null, '210062');
INSERT INTO `jbpm4_variable` VALUES ('210068', 'string', '0', 'savebtn', null, '1', '210062', null, null, null, null, null, null, '动作 1', null, '210062');
INSERT INTO `jbpm4_variable` VALUES ('210069', 'string', '0', 'bpm_come_back', null, '1', '210062', null, null, null, null, null, null, '0', null, '210062');
INSERT INTO `jbpm4_variable` VALUES ('210070', 'string', '0', 'finalDBVariablesjSON', null, '1', '210062', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '210062');
INSERT INTO `jbpm4_variable` VALUES ('240039', 'string', '0', 'biz_flow_uuid', null, '1', '240034', null, null, null, null, null, null, '6', null, '240034');
INSERT INTO `jbpm4_variable` VALUES ('240040', 'string', '0', 'savebtn', null, '1', '240034', null, null, null, null, null, null, '动作 1', null, '240034');
INSERT INTO `jbpm4_variable` VALUES ('240041', 'string', '0', 'bpm_come_back', null, '1', '240034', null, null, null, null, null, null, '0', null, '240034');
INSERT INTO `jbpm4_variable` VALUES ('240042', 'string', '0', 'finalDBVariablesjSON', null, '1', '240034', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '240034');
INSERT INTO `jbpm4_variable` VALUES ('240057', 'string', '0', 'biz_flow_uuid', null, '1', '240052', null, null, null, null, null, null, '7', null, '240052');
INSERT INTO `jbpm4_variable` VALUES ('240058', 'string', '0', 'savebtn', null, '1', '240052', null, null, null, null, null, null, '动作 1', null, '240052');
INSERT INTO `jbpm4_variable` VALUES ('240059', 'string', '0', 'bpm_come_back', null, '1', '240052', null, null, null, null, null, null, '0', null, '240052');
INSERT INTO `jbpm4_variable` VALUES ('240060', 'string', '0', 'finalDBVariablesjSON', null, '1', '240052', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '240052');
INSERT INTO `jbpm4_variable` VALUES ('250006', 'string', '0', 'biz_flow_uuid', null, '1', '250001', null, null, null, null, null, null, '8', null, '250001');
INSERT INTO `jbpm4_variable` VALUES ('250007', 'string', '0', 'savebtn', null, '1', '250001', null, null, null, null, null, null, '动作 1', null, '250001');
INSERT INTO `jbpm4_variable` VALUES ('250008', 'string', '0', 'bpm_come_back', null, '1', '250001', null, null, null, null, null, null, '0', null, '250001');
INSERT INTO `jbpm4_variable` VALUES ('250009', 'string', '0', 'finalDBVariablesjSON', null, '1', '250001', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '250001');
INSERT INTO `jbpm4_variable` VALUES ('250039', 'string', '0', 'biz_flow_uuid', null, '1', '250034', null, null, null, null, null, null, '9', null, '250034');
INSERT INTO `jbpm4_variable` VALUES ('250040', 'string', '0', 'savebtn', null, '1', '250034', null, null, null, null, null, null, '动作 1', null, '250034');
INSERT INTO `jbpm4_variable` VALUES ('250041', 'string', '0', 'bpm_come_back', null, '1', '250034', null, null, null, null, null, null, '0', null, '250034');
INSERT INTO `jbpm4_variable` VALUES ('250042', 'string', '0', 'finalDBVariablesjSON', null, '1', '250034', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '250034');
INSERT INTO `jbpm4_variable` VALUES ('250057', 'string', '0', 'bpm_candidate_人工2', null, '1', '250052', null, null, null, null, null, null, 'admin', null, '250052');
INSERT INTO `jbpm4_variable` VALUES ('250058', 'string', '0', 'biz_flow_uuid', null, '1', '250052', null, null, null, null, null, null, '10', null, '250052');
INSERT INTO `jbpm4_variable` VALUES ('250059', 'string', '0', 'savebtn', null, '1', '250052', null, null, null, null, null, null, '动作 1', null, '250052');
INSERT INTO `jbpm4_variable` VALUES ('250060', 'string', '0', 'bpm_come_back', null, '1', '250052', null, null, null, null, null, null, '0', null, '250052');
INSERT INTO `jbpm4_variable` VALUES ('250061', 'string', '0', 'finalDBVariablesjSON', null, '1', '250052', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '250052');
INSERT INTO `jbpm4_variable` VALUES ('250076', 'string', '0', 'bpm_candidate_人工2', null, '1', '250071', null, null, null, null, null, null, 'admin', null, '250071');
INSERT INTO `jbpm4_variable` VALUES ('250077', 'string', '0', 'biz_flow_uuid', null, '1', '250071', null, null, null, null, null, null, '11', null, '250071');
INSERT INTO `jbpm4_variable` VALUES ('250078', 'string', '0', 'savebtn', null, '1', '250071', null, null, null, null, null, null, '动作 1', null, '250071');
INSERT INTO `jbpm4_variable` VALUES ('250079', 'string', '0', 'bpm_come_back', null, '1', '250071', null, null, null, null, null, null, '0', null, '250071');
INSERT INTO `jbpm4_variable` VALUES ('250080', 'string', '0', 'finalDBVariablesjSON', null, '1', '250071', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '250071');
INSERT INTO `jbpm4_variable` VALUES ('250098', 'string', '0', 'bpm_candidate_人工2', null, '1', '250093', null, null, null, null, null, null, 'admin', null, '250093');
INSERT INTO `jbpm4_variable` VALUES ('250099', 'string', '0', 'biz_flow_uuid', null, '1', '250093', null, null, null, null, null, null, '12', null, '250093');
INSERT INTO `jbpm4_variable` VALUES ('250100', 'string', '0', 'savebtn', null, '1', '250093', null, null, null, null, null, null, '动作 1', null, '250093');
INSERT INTO `jbpm4_variable` VALUES ('250101', 'string', '0', 'bpm_come_back', null, '1', '250093', null, null, null, null, null, null, '0', null, '250093');
INSERT INTO `jbpm4_variable` VALUES ('250102', 'string', '0', 'finalDBVariablesjSON', null, '1', '250093', null, null, null, null, null, null, '{\"workflow.bizFlowUuid\":\"\"}', null, '250093');
INSERT INTO `jbpm4_variable` VALUES ('251127', 'string', '0', 'bpm_candidate_人工2', null, '1', '251122', null, null, null, null, null, null, 'admin', null, '251122');
INSERT INTO `jbpm4_variable` VALUES ('251128', 'string', '0', 'biz_flow_uuid', null, '1', '251122', null, null, null, null, null, null, '13', null, '251122');
INSERT INTO `jbpm4_variable` VALUES ('251129', 'string', '0', 'savebtn', null, '1', '251122', null, null, null, null, null, null, '动作 1', null, '251122');
INSERT INTO `jbpm4_variable` VALUES ('251130', 'string', '0', 'bpm_come_back', null, '1', '251122', null, null, null, null, null, null, '0', null, '251122');
INSERT INTO `jbpm4_variable` VALUES ('251131', 'string', '0', 'finalDBVariablesjSON', null, '1', '251122', null, null, null, null, null, null, '{}', null, '251122');
INSERT INTO `jbpm4_variable` VALUES ('330054', 'string', '0', 'bpm_candidate_人工2', null, '1', '330049', null, null, null, null, null, null, 'admin', null, '330049');
INSERT INTO `jbpm4_variable` VALUES ('330055', 'string', '1', 'biz_flow_uuid', null, '1', '330049', null, null, null, null, null, null, '17', null, '330049');
INSERT INTO `jbpm4_variable` VALUES ('330056', 'string', '1', 'savebtn', null, '1', '330049', null, null, null, null, null, null, '动作 2', null, '330049');
INSERT INTO `jbpm4_variable` VALUES ('330057', 'string', '0', 'bpm_come_back', null, '1', '330049', null, null, null, null, null, null, '0', null, '330049');
INSERT INTO `jbpm4_variable` VALUES ('330058', 'string', '1', 'finalDBVariablesjSON', null, '1', '330049', null, null, null, null, null, null, '{\"result\":\"1\"}', null, '330049');
INSERT INTO `jbpm4_variable` VALUES ('330073', 'string', '0', 'bpm_seq_result', null, '1', '330049', null, null, null, null, null, null, '0', null, '330049');
INSERT INTO `jbpm4_variable` VALUES ('340006', 'string', '0', 'bpm_candidate_人工2', null, '1', '340001', null, null, null, null, null, null, 'admin', null, '340001');
INSERT INTO `jbpm4_variable` VALUES ('340007', 'string', '0', 'biz_flow_uuid', null, '1', '340001', null, null, null, null, null, null, '18', null, '340001');
INSERT INTO `jbpm4_variable` VALUES ('340008', 'string', '0', 'savebtn', null, '1', '340001', null, null, null, null, null, null, '动作 1', null, '340001');
INSERT INTO `jbpm4_variable` VALUES ('340009', 'string', '0', 'bpm_come_back', null, '1', '340001', null, null, null, null, null, null, '0', null, '340001');
INSERT INTO `jbpm4_variable` VALUES ('340010', 'string', '0', 'finalDBVariablesjSON', null, '1', '340001', null, null, null, null, null, null, '{}', null, '340001');
INSERT INTO `jbpm4_variable` VALUES ('350024', 'string', '0', 'bpm_candidate_人工2', null, '1', '350019', null, null, null, null, null, null, 'admin', null, '350019');
INSERT INTO `jbpm4_variable` VALUES ('350025', 'string', '0', 'biz_flow_uuid', null, '1', '350019', null, null, null, null, null, null, '22', null, '350019');
INSERT INTO `jbpm4_variable` VALUES ('350026', 'string', '0', 'savebtn', null, '1', '350019', null, null, null, null, null, null, '动作 1', null, '350019');
INSERT INTO `jbpm4_variable` VALUES ('350027', 'string', '0', 'bpm_come_back', null, '1', '350019', null, null, null, null, null, null, '0', null, '350019');
INSERT INTO `jbpm4_variable` VALUES ('350028', 'string', '0', 'finalDBVariablesjSON', null, '1', '350019', null, null, null, null, null, null, '{}', null, '350019');
INSERT INTO `jbpm4_variable` VALUES ('350156', 'string', '0', 'bpm_candidate_人工2', null, '1', '350151', null, null, null, null, null, null, 'admin', null, '350151');
INSERT INTO `jbpm4_variable` VALUES ('350157', 'string', '0', 'biz_flow_uuid', null, '1', '350151', null, null, null, null, null, null, '24', null, '350151');
INSERT INTO `jbpm4_variable` VALUES ('350158', 'string', '0', 'savebtn', null, '1', '350151', null, null, null, null, null, null, '动作 1', null, '350151');
INSERT INTO `jbpm4_variable` VALUES ('350159', 'string', '0', 'bpm_come_back', null, '1', '350151', null, null, null, null, null, null, '0', null, '350151');
INSERT INTO `jbpm4_variable` VALUES ('350160', 'string', '0', 'finalDBVariablesjSON', null, '1', '350151', null, null, null, null, null, null, '{}', null, '350151');
INSERT INTO `jbpm4_variable` VALUES ('380088', 'string', '0', 'bpm_candidate_人工2', null, '1', '380083', null, null, null, null, null, null, 'admin', null, '380083');
INSERT INTO `jbpm4_variable` VALUES ('380089', 'string', '0', 'biz_flow_uuid', null, '1', '380083', null, null, null, null, null, null, '32', null, '380083');
INSERT INTO `jbpm4_variable` VALUES ('380090', 'string', '0', 'savebtn', null, '1', '380083', null, null, null, null, null, null, '动作 1', null, '380083');
INSERT INTO `jbpm4_variable` VALUES ('380091', 'string', '0', 'bpm_come_back', null, '1', '380083', null, null, null, null, null, null, '0', null, '380083');
INSERT INTO `jbpm4_variable` VALUES ('380092', 'string', '0', 'finalDBVariablesjSON', null, '1', '380083', null, null, null, null, null, null, '{}', null, '380083');

-- ----------------------------
-- Table structure for jres_subsystem_rc
-- ----------------------------
DROP TABLE IF EXISTS `jres_subsystem_rc`;
CREATE TABLE `jres_subsystem_rc` (
  `SUBSYSTEM_NAME` varchar(32) NOT NULL,
  `SUBSYSTEM_VER` varchar(32) NOT NULL,
  `BEGIN_TIME` datetime NOT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `REMARK` varchar(2000) DEFAULT NULL,
  `TRACE_INFO` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JRES 版本信息表';

-- ----------------------------
-- Records of jres_subsystem_rc
-- ----------------------------
INSERT INTO `jres_subsystem_rc` VALUES ('workflow', 'sp3-patch20130724(WF1.1.24)', '2017-01-19 01:08:02', null, null, null);

-- ----------------------------
-- View structure for jbpm4_ext_htask_
-- ----------------------------
DROP VIEW IF EXISTS `jbpm4_ext_htask_`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `jbpm4_ext_htask_` AS SELECT
  t.DBID_            AS ID_,
  t.ACTIVITY_NAME_   AS ACTIVITY_NAME_,
  p.PROC_EXE_NAME_   AS PROC_NAME_,
  t.CREATE_          AS CREATE_,
  t.END_             AS END_,
  t.DURATION_        AS DURATION_,
  t.STATE_           AS STATE_,
  t.ASSIGNEE_        AS ASSIGNEE_,
  ext.ASSIGNEE_NAME_ AS ASSIGNEE_NAME_,
  p.DEPLOYMENT_ID_   AS DEPLOYMENT_ID_,
  p.ID_              AS HSBPM_INSTANCE_,
  t.EXECUTION_       AS EXECUTION_ID_,
  t.SUPERTASK_       AS SUPERTASK_,
  ext.NAME_          AS NAME_,
  ext.BIZ_FLOW_UUID_ AS BIZ_FLOW_UUID_,
  p.PROCDEFID_       AS PROCDEFID_,
  t.OUTCOME_         AS OUTCOME_,
  p.PROC_INST_DESC_  AS PROC_INST_DESC_,
  ext.EXTFIELD1      AS TASKOUTCOMEACTION,
  ext.EXTFIELD2      AS NEXTNODEOPERATOR,
  ext.TASKSTATUS     AS TASKSTATUS,
  ext.CLASS_         AS CLASS_,
  ext.ARCHIVE_STATUS AS ARCHIVESTATUS,
  ext.AGENT_ID_      AS AGENT_ID_,
  ext.AGENT_NAME_    AS AGENT_NAME_,
  p.STARTER_         AS STARTER_,
  p.STARTER_NAME_    AS STARTER_NAME_,
  p.ORG_ID_          AS ORG_ID_,
  p.ORG_NAME_        AS ORG_NAME_,
  ext.PARENT_TASK_   AS PARENT_TASK_,
  ext.VISIBLE_       AS VISIBLE_,
  t.PRIORITY_        AS PRIORITY_,
  ext.EXTFIELD1      AS ACTION_NAME_,
  p.STATE_           AS INSTANCE_STATE_,
  ext.REMARK_        AS REMARK_
FROM JBPM4_HIST_PROCINST p,
    JBPM4_HIST_TASK t, JBPM4_EXT_HIST_TASK ext
WHERE ((t.PROCINST_ = p.DBID_)
       AND (ext.DBID_ = t.DBID_)); ;

-- ----------------------------
-- Procedure structure for WF_SP_ADDCOLUMN
-- ----------------------------
DROP PROCEDURE IF EXISTS `WF_SP_ADDCOLUMN`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WF_SP_ADDCOLUMN`(IN `p_vc_table_name` varchar(64),IN `p_vc_column_name` varchar(64),IN `p_vc_column_prop` varchar(64),IN `p_vc_defalut_value` varchar(255),IN `p_vc_column_comments` varchar(1024),IN `p_l_action_in` int)
BEGIN

	/* 操作类型，0表里原有记录行不添加默认值，允许为空值,添加的默认值是一个数值

			  1直接添加默认值，不允许字段为空，添加的默认值是一个数值

			  2表里原有记录行不添加默认值，允许为空值,添加的默认值是一个函数

			  3直接添加默认值，不允许字段为空，添加的默认值是一个函数

	*/



	DECLARE v_l_count            integer;

	DECLARE v_vc_table_name      varchar(64); /* 要修改的表名*/

	DECLARE v_vc_column_name     varchar(64); /* 要增加的列名*/

	DECLARE v_vc_column_prop     varchar(64); /* 增加的列的属性*/

	DECLARE v_vc_defalut_value   varchar(1000); /* 字段缺省值,字符型的和数值型的都可以*/

	DECLARE v_vc_column_comments varchar(1000); /* 字段说明*/

	DECLARE v_l_action_in         INTEGER; /* 操作类型*/

	DECLARE v_sql varchar(4000);

DECLARE con1 CONDITION FOR SQLSTATE '23000';

    SET @v_vc_table_name       =  UCASE(IFNULL(p_vc_table_name, ''));

    SET @v_vc_column_name      = UCASE(IFNULL(p_vc_column_name, ''));

    SET @v_vc_column_prop      = IFNULL(p_vc_column_prop, '');

    SET @v_vc_defalut_value    = IFNULL(p_vc_defalut_value, ''); /* 字符型的和数值型的都可以*/

    SET @v_vc_column_comments  = IFNULL(p_vc_column_comments, '');

    SET @v_l_action_in         = IFNULL(p_l_action_in, 0);  

    IF @v_l_action_in >=0 AND @v_l_action_in <=3 THEN

			BEGIN
				/* select concat('Create Column: ',@v_vc_table_name,'.',@v_vc_column_name); */

				 /*判断表是否存在*/

			SELECT COUNT(1) INTO v_l_count from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @v_vc_table_name and TABLE_SCHEMA=SCHEMA();

			IF v_l_count>0 THEN 

				BEGIN

					/*检查字段是否已经存在*/

				SELECT COUNT(1) INTO v_l_count FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA=SCHEMA() AND TABLE_NAME=@v_vc_table_name AND COLUMN_NAME=@v_vc_column_name;

				IF v_l_count = 0 THEN

					BEGIN

						/* 字段不存在，增加 */

						IF @v_l_action_in=0 THEN

							BEGIN

								/*表里原有记录行不添加默认值，允许为空值,添加的默认值是一个数值*/
								SET @v_sql= CONCAT('ALTER TABLE ', @v_vc_table_name, ' add (', @v_vc_column_name, ' ', @v_vc_column_prop,')');
								PREPARE stm1 FROM @v_sql;
								execute stm1;
								DEALLOCATE PREPARE stm1;
								IF LENGTH(@v_vc_column_comments)>0 THEN
									SET @v_sql= CONCAT('ALTER TABLE ',@v_vc_table_name,' MODIFY COLUMN ', @v_vc_column_name,' ',@v_vc_column_prop,' COMMENT \'',@v_vc_column_comments,'\'');
									PREPARE stm3 FROM @v_sql;
									execute stm3; 
									DEALLOCATE PREPARE stm3;
								END IF;
							END;
						ELSEIF @v_l_action_in=1 THEN
							BEGIN
								/*直接添加默认值，不允许字段为空，添加的默认值是一个数值*/
								SET @v_sql= CONCAT('ALTER TABLE ', @v_vc_table_name, ' add (', @v_vc_column_name, ' ', @v_vc_column_prop,')');
								PREPARE stm1 FROM @v_sql;
								execute stm1;
								DEALLOCATE PREPARE stm1;
								IF LENGTH(@v_vc_defalut_value)>0 THEN
									BEGIN
									SET @v_sql= CONCAT('UPDATE ',@v_vc_table_name,' SET ', @v_vc_column_name, '=\'',@v_vc_defalut_value,'\' WHERE ',@v_vc_column_name,' IS NULL');
									PREPARE stm2 FROM @v_sql;
									execute stm2;
									DEALLOCATE PREPARE stm2;
									SET @v_sql= CONCAT('ALTER TABLE ',@v_vc_table_name,' MODIFY COLUMN ', @v_vc_column_name,' ',@v_vc_column_prop,' DEFAULT \'',@v_vc_defalut_value,'\' NOT NULL');
									IF LENGTH(@v_vc_column_comments)>0 THEN
										set @v_sql=CONCAT(@v_sql,' COMMENT \'',@v_vc_column_comments,'\'');
									END IF;

									PREPARE stm3 FROM @v_sql;
									execute stm3;  
									DEALLOCATE PREPARE stm3;
									END;
								END IF;
							END;

						ELSEIF @v_l_action_in=2 THEN
							BEGIN
							/*表里原有记录行不添加默认值，允许为空值,添加的默认值是一个函数*/
								SET @v_sql= CONCAT('ALTER TABLE ', @v_vc_table_name, ' add (', @v_vc_column_name, ' ', @v_vc_column_prop,')');
								PREPARE stm1 FROM @v_sql;
								execute stm1;
								DEALLOCATE PREPARE stm1;								
								SET @v_sql= CONCAT('ALTER TABLE ',@v_vc_table_name,' MODIFY COLUMN ', @v_vc_column_name,' ',@v_vc_column_prop);
								IF LENGTH(@v_vc_defalut_value)>0 THEN
									set @v_sql=CONCAT(@v_sql,' DEFAULT ',@v_vc_defalut_value);
								END IF;
								IF LENGTH(@v_vc_column_comments)>0 THEN
									set @v_sql=CONCAT(@v_sql,' COMMENT \'',@v_vc_column_comments,'\'');
								END IF;
								PREPARE stm3 FROM @v_sql;
								execute stm3;  
								DEALLOCATE PREPARE stm3;
							END;
							ELSEIF @v_l_action_in=3 THEN
							BEGIN
								/*直接添加默认值，不允许字段为空，添加的默认值是一个函数*/
								SET @v_sql= CONCAT('ALTER TABLE ', @v_vc_table_name, ' add (', @v_vc_column_name, ' ', @v_vc_column_prop,')');
								PREPARE stm1 FROM @v_sql;
								execute stm1;
								DEALLOCATE PREPARE stm1;
								IF LENGTH(@v_vc_defalut_value)>0 THEN
									BEGIN
									SET @v_sql= CONCAT('UPDATE ',@v_vc_table_name,' SET ', @v_vc_column_name, '=',@v_vc_defalut_value,' WHERE ',@v_vc_column_name,' IS NULL');
									PREPARE stm2 FROM @v_sql;
									execute stm2;
									DEALLOCATE PREPARE stm2;
									SET @v_sql= CONCAT('ALTER TABLE ',@v_vc_table_name,' MODIFY COLUMN ', @v_vc_column_name,' ',@v_vc_column_prop,' DEFAULT ',@v_vc_defalut_value,' NOT NULL');
									IF LENGTH(@v_vc_column_comments)>0 THEN
										set @v_sql=CONCAT(@v_sql,' COMMENT \'',@v_vc_column_comments,'\'');
									END IF;
									PREPARE stm3 FROM @v_sql;
									execute stm3;  
									DEALLOCATE PREPARE stm3;
									END;
								END IF;
							END;
						END IF;
					END;
				END IF;
				END;
			END IF;
			END;
		END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for WF_SP_ADDINDEX
-- ----------------------------
DROP PROCEDURE IF EXISTS `WF_SP_ADDINDEX`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WF_SP_ADDINDEX`(IN `P_VC_INDEX_NAME` varchar(255),IN `P_VC_TABLE_NAME` varchar(255),IN `P_VC_IDX_COLS` varchar(1000),IN `P_VB_IS_UNIQUE` integer)
BEGIN

 	DECLARE V_VI_COUNT INTEGER;

 	DECLARE V_VC_TABLE_NAME VARCHAR(255);

 	DECLARE V_SQL VARCHAR(2000);

  SET @V_VC_TABLE_NAME = ifnull(P_VC_TABLE_NAME, ''); 

	

	/*检查表是否存在*/

		select count(*) into V_VI_COUNT from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @V_VC_TABLE_NAME and TABLE_SCHEMA=SCHEMA();

	if V_VI_COUNT>0  THEN

	BEGIN

	/*检查索引是否存在*/

		SELECT COUNT(*) INTO V_VI_COUNT  FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = SCHEMA() and TABLE_NAME=@V_VC_TABLE_NAME  AND INDEX_NAME=P_VC_INDEX_NAME AND INDEX_NAME!='PRIMARY';

		IF V_VI_COUNT = 0 THEN

		BEGIN

	/*创建索引*/

			SET @V_SQL=CONCAT('ALTER TABLE ',@V_VC_TABLE_NAME,' ADD ',IF(P_VB_IS_UNIQUE=1,'CONSTRAINT ','INDEX '),P_VC_INDEX_NAME, IF(P_VB_IS_UNIQUE=1,' UNIQUE',''),' (', P_VC_IDX_COLS,')');

			PREPARE stm2 FROM @V_SQL;

			execute stm2;

			DEALLOCATE PREPARE stm2;



		END;

		END IF;

	END;

	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for WF_SP_CREATETABLE
-- ----------------------------
DROP PROCEDURE IF EXISTS `WF_SP_CREATETABLE`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WF_SP_CREATETABLE`(IN  p_table_name  varchar(64), IN p_create_table_sql varchar(16000), IN p_create_pk varchar(500), IN p_table_comment varchar(2000))
    COMMENT '鍒涘缓琛ㄧ殑瀛樺偍杩囩▼'
BEGIN
	declare  v_l_rowcount INT;
	declare  v_vc_table_name    varchar(255);  /* 创建表名 */
	declare  v_vc_create_sql varchar(16000);/* 创建表SQL语句*/
	declare  v_vc_create_pk  varchar(500);  /* 创建主键语句*/
	DECLARE v_vc_table_comment VARCHAR(2000); /* 说明 */
	set 	@v_vc_table_name = p_table_name;
  	set 	@v_vc_create_sql = p_create_table_sql;
	SET		@v_vc_create_pk = p_create_pk;
	SET 	@v_vc_table_comment = p_table_comment;
	select count(*) into v_l_rowcount from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @v_vc_table_name and TABLE_SCHEMA=SCHEMA();
	select concat('Create Table: ',@v_vc_table_name);
	IF v_l_rowcount <= 0 THEN

		BEGIN

			PREPARE stmt1 FROM @v_vc_create_sql; 

			EXECUTE stmt1;

				DEALLOCATE PREPARE stmt1;

			 IF length(@v_vc_create_pk) >0 THEN

				PREPARE stmt2 FROM @v_vc_create_pk;

				EXECUTE stmt2;

				DEALLOCATE PREPARE stmt2;

			 END IF;

			IF length(@v_vc_table_comment) >0 THEN

				set @v_vc_table_comment = CONCAT('ALTER TABLE ', @v_vc_table_name, ' COMMENT=\'',@v_vc_table_comment,'\'');

				PREPARE stmt3 FROM @v_vc_table_comment;

				EXECUTE stmt3;

				DEALLOCATE PREPARE stmt3;



			END IF; 



		END;

	END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for WF_SP_DROPINDEXS
-- ----------------------------
DROP PROCEDURE IF EXISTS `WF_SP_DROPINDEXS`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WF_SP_DROPINDEXS`(IN `P_VC_TABLE_NAME` varchar(64))
BEGIN

	DECLARE V_VC_TABLENAME VARCHAR(255);

	DECLARE V_VC_INDNAME VARCHAR(255);

	DECLARE V_SQL VARCHAR(4000);

	DECLARE AT_END_C1 INTEGER DEFAULT 0;

	DECLARE cur1 CURSOR FOR SELECT DISTINCT INDEX_NAME FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_SCHEMA = SCHEMA() and TABLE_NAME=P_VC_TABLE_NAME  AND INDEX_NAME!='PRIMARY';

declare continue handler FOR SQLSTATE '02000' SET AT_END_C1 = 1; 

	SET @V_VC_TABLENAME = P_VC_TABLE_NAME;

	open cur1;

	REPEAT 

			FETCH cur1 into V_VC_INDNAME;

			

			IF AT_END_C1=0 THEN

			BEGIN

				set @V_SQL=CONCAT('ALTER TABLE ',@V_VC_TABLENAME,' DROP INDEX ',V_VC_INDNAME);

				PREPARE stmt1 from @V_SQL;

				EXECUTE stmt1;

				DEALLOCATE PREPARE stmt1;

			END;

			END IF;

	UNTIL AT_END_C1 end repeat;

	close cur1;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for WF_SP_INITDATA
-- ----------------------------
DROP PROCEDURE IF EXISTS `WF_SP_INITDATA`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WF_SP_INITDATA`(IN `p_table_name` varchar(64),IN `p_condition` varchar(1000),IN `p_cols` varchar(1000),IN `p_values` varchar(1000))
BEGIN
	declare v_vc_table_name varchar(100);
	declare v_vc_condition varchar(1000);
	declare v_vc_cols varchar(1000);
	declare v_vc_values varchar(1000); 
	declare V_SQL VARCHAR(4000);
	declare v_l_count INTEGER;
	SET @v_vc_table_name = IFNULL(p_table_name,'');
	SET @v_vc_condition = IFNULL(p_condition,'');
	SET @v_vc_cols = IFNULL(p_cols,'');
	SET @v_vc_values = IFNULL(p_values,'');
	select count(*) into @v_l_count from INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @v_vc_table_name and TABLE_SCHEMA=SCHEMA();
	IF @v_l_count > 0 THEN
	BEGIN
  	SET @V_SQL = CONCAT('SELECT COUNT(*) INTO @v_l_count FROM ',@v_vc_table_name,' WHERE ',@v_vc_condition);
	PREPARE stmt1 FROM @V_SQL;
	EXECUTE stmt1;
	DEALLOCATE PREPARE stmt1;
   IF @v_l_count = 0 THEN
			BEGIN
				set @V_SQL=CONCAT('insert into ', @v_vc_table_name,@v_vc_cols,' values ',@v_vc_values); 
				PREPARE stmt2 FROM @V_SQL;
				EXECUTE stmt2;
				DEALLOCATE PREPARE stmt2;
			END;
   END IF;
   END;
   END IF;
END
;;
DELIMITER ;
