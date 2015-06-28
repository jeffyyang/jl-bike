/*
 Navicat Premium Data Transfer

 Source Server         : 61.154.127.132_mysql
 Source Server Type    : MySQL
 Source Server Version : 50610
 Source Host           : 61.154.127.132
 Source Database       : wxshop

 Target Server Type    : MySQL
 Target Server Version : 50610
 File Encoding         : utf-8

 Date: 06/20/2015 09:02:10 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `ecs_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_account_log`;
CREATE TABLE `ecs_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_account_log`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_account_log` VALUES ('1', '14', '0.00', '0.00', '0', '0', '1416223888', '订单 oid-141117192535yf4c8jf 赠送的积分', '99'), ('2', '14', '0.00', '0.00', '0', '0', '1416225113', '由于退货或未发货操作，退回订单 oid-141117192535yf4c8jf 赠送的积分', '99'), ('3', '14', '0.00', '0.00', '0', '11600', '1416225113', '由于取消、无效或退货操作，退回支付订单 oid-141117192535yf4c8jf 时使用的积分', '99'), ('4', '16', '0.01', '0.00', '0', '0', '1416299827', '2', '99'), ('5', '16', '0.02', '0.00', '0', '0', '1416301541', '2', '99'), ('6', '16', '0.00', '0.00', '0', '9970', '1416390060', '积分调整', '2'), ('7', '16', '0.00', '0.00', '0', '-10000', '1416390273', '特别扣除', '2'), ('8', '14', '0.02', '0.00', '0', '0', '1416889298', '我想要了', '99'), ('9', '21', '0.00', '0.00', '0', '0', '1417507292', '订单 oid-141202151216wftkf6m 赠送的积分', '99'), ('10', '19', '0.00', '0.00', '0', '0', '1417514692', '订单 141202180206WZKIB2N 赠送的积分', '99'), ('11', '18', '0.00', '0.00', '0', '200', '1417775393', '管理奖励', '2'), ('12', '19', '0.00', '0.00', '0', '0', '1426668079', '由于退货或未发货操作，退回订单 141203120643HIKMBVI 赠送的积分', '99'), ('13', '21', '0.00', '0.00', '0', '60', '1427431854', '生日赠送', '2');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_ad`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad`;
CREATE TABLE `ecs_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_ad`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_ad` VALUES ('1', '1', '0', '积分商城首页1113', '', '1416307804400578693.jpg', '1415808000', '1418400000', '', '', '', '0', '1'), ('2', '2', '0', '团购商城首页1113', '', '1415860078181053212.jpg', '1415808000', '1418400000', '', '', '', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_custom`;
CREATE TABLE `ecs_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_ad_position`;
CREATE TABLE `ecs_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_ad_position`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_ad_position` VALUES ('1', '积分商城首页', '640', '320', '积分商城广告位', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>'), ('2', '团购商城首页', '640', '320', '团购商城首页广告位', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_action`;
CREATE TABLE `ecs_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_admin_action`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_admin_action` VALUES ('1', '0', 'goods', ''), ('2', '0', 'cms_manage', ''), ('3', '0', 'users_manage', ''), ('4', '0', 'priv_manage', ''), ('5', '0', 'sys_manage', ''), ('6', '0', 'order_manage', ''), ('7', '0', 'promotion', ''), ('8', '0', 'email', ''), ('9', '0', 'templates_manage', ''), ('10', '0', 'db_manage', ''), ('11', '0', 'sms_manage', ''), ('21', '1', 'goods_manage', ''), ('22', '1', 'remove_back', ''), ('23', '1', 'cat_manage', ''), ('24', '1', 'cat_drop', 'cat_manage'), ('25', '1', 'attr_manage', ''), ('26', '1', 'brand_manage', ''), ('27', '1', 'comment_priv', ''), ('84', '1', 'tag_manage', ''), ('30', '2', 'article_cat', ''), ('31', '2', 'article_manage', ''), ('32', '2', 'shopinfo_manage', ''), ('33', '2', 'shophelp_manage', ''), ('34', '2', 'vote_priv', ''), ('35', '7', 'topic_manage', ''), ('74', '4', 'template_manage', ''), ('73', '3', 'feedback_priv', ''), ('38', '3', 'integrate_users', ''), ('39', '3', 'sync_users', 'integrate_users'), ('40', '3', 'users_manage', ''), ('41', '3', 'users_drop', 'users_manage'), ('42', '3', 'user_rank', ''), ('85', '3', 'surplus_manage', 'account_manage'), ('43', '4', 'admin_manage', ''), ('44', '4', 'admin_drop', 'admin_manage'), ('45', '4', 'allot_priv', 'admin_manage'), ('46', '4', 'logs_manage', ''), ('47', '4', 'logs_drop', 'logs_manage'), ('48', '5', 'shop_config', ''), ('49', '5', 'ship_manage', ''), ('50', '5', 'payment', ''), ('51', '5', 'shiparea_manage', ''), ('52', '5', 'area_manage', ''), ('53', '6', 'order_os_edit', ''), ('54', '6', 'order_ps_edit', 'order_os_edit'), ('55', '6', 'order_ss_edit', 'order_os_edit'), ('56', '6', 'order_edit', 'order_os_edit'), ('57', '6', 'order_view', ''), ('58', '6', 'order_view_finished', ''), ('59', '6', 'repay_manage', ''), ('60', '6', 'booking', ''), ('61', '6', 'sale_order_stats', ''), ('62', '6', 'client_flow_stats', ''), ('78', '7', 'snatch_manage', ''), ('83', '7', 'ad_manage', ''), ('80', '7', 'gift_manage', ''), ('81', '7', 'card_manage', ''), ('70', '1', 'goods_type', ''), ('82', '7', 'pack', ''), ('79', '7', 'bonus_manage', ''), ('75', '5', 'friendlink', ''), ('76', '5', 'db_backup', ''), ('77', '5', 'db_renew', 'db_backup'), ('86', '4', 'agency_manage', ''), ('87', '3', 'account_manage', ''), ('88', '5', 'flash_manage', ''), ('89', '5', 'navigator', ''), ('90', '7', 'auction', ''), ('91', '7', 'group_by', ''), ('92', '7', 'favourable', ''), ('93', '7', 'whole_sale', ''), ('94', '1', 'goods_auto', ''), ('95', '2', 'article_auto', ''), ('96', '5', 'cron', ''), ('97', '5', 'affiliate', ''), ('98', '5', 'affiliate_ck', ''), ('99', '8', 'attention_list', ''), ('100', '8', 'email_list', ''), ('101', '8', 'magazine_list', ''), ('102', '8', 'view_sendlist', ''), ('103', '1', 'virualcard', ''), ('104', '7', 'package_manage', ''), ('105', '1', 'picture_batch', ''), ('106', '1', 'goods_export', ''), ('107', '1', 'goods_batch', ''), ('108', '1', 'gen_goods_script', ''), ('109', '5', 'sitemap', ''), ('110', '5', 'file_priv', ''), ('111', '5', 'file_check', ''), ('112', '9', 'template_select', ''), ('113', '9', 'template_setup', ''), ('114', '9', 'library_manage', ''), ('115', '9', 'lang_edit', ''), ('116', '9', 'backup_setting', ''), ('117', '9', 'mail_template', ''), ('118', '10', 'db_backup', ''), ('119', '10', 'db_renew', ''), ('120', '10', 'db_optimize', ''), ('121', '10', 'sql_query', ''), ('122', '10', 'convert', ''), ('124', '11', 'sms_send', ''), ('128', '7', 'exchange_goods', ''), ('129', '6', 'delivery_view', ''), ('130', '6', 'back_view', ''), ('131', '5', 'reg_fields', ''), ('132', '5', 'shop_authorized', ''), ('133', '5', 'webcollect_manage', ''), ('136', '12', 'suppliers_manage', ''), ('137', '4', 'role_manage', ''), ('12', '0', 'shop', ''), ('135', '12', 'shopcate_manage', ''), ('134', '12', 'shop_manage', ''), ('138', '6', 'excode_view', ''), ('139', '6', 'excode_check', ''), ('141', '6', 'refund_manage', ''), ('13', '0', 'settle_manage', ''), ('142', '13', 'batch_bill_import', ''), ('143', '13', 'bill_list', ''), ('144', '13', 'suppliers_bill_list', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_log`;
CREATE TABLE `ecs_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=544 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_admin_log`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_admin_log` VALUES ('351', '1417428480', '1', '编辑门店: 老北京炭火锅', '222.94.250.171'), ('350', '1417428432', '1', '编辑门店: 依偎日式精致料理自助', '222.94.250.171'), ('349', '1417428395', '1', '编辑门店: 依偎日式精致料理自助', '222.94.250.171'), ('348', '1417428382', '1', '编辑门店: 依偎日式精致料理自助', '222.94.250.171'), ('347', '1417428359', '1', '编辑门店: 万达影城(河西万达)', '222.94.250.171'), ('346', '1417349988', '1', '批量回收商品: ', '222.95.245.11'), ('345', '1417255516', '1', '编辑商户: 老北京炭火锅', '117.88.151.165'), ('344', '1417254789', '14', '编辑门店: 老北京炭火锅', '117.88.151.165'), ('343', '1417254571', '1', '添加管理员: lbjtgg', '117.88.151.165'), ('342', '1417254571', '1', '添加门店: 老北京炭火锅', '117.88.151.165'), ('341', '1417254571', '1', '添加商户: 老北京炭火锅', '117.88.151.165'), ('340', '1417163824', '1', '编辑商品: 优惠券，抵现金10元', '117.89.113.210'), ('339', '1417153759', '1', '编辑权限管理: shopadmin1', '117.88.151.165'), ('338', '1417113196', '1', '删除操作日志: ', '222.94.137.185'), ('337', '1417113190', '1', '删除操作日志: ', '222.94.137.185'), ('312', '1416800966', '1', '编辑权限管理: sh001', '222.95.45.244'), ('313', '1416801144', '1', '编辑权限管理: sh001', '222.95.45.244'), ('314', '1417104107', '1', '回收商品: Iphone5 Lighting防尘塞', '222.94.137.185'), ('315', '1417105822', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('316', '1417105844', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('317', '1417105936', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('318', '1417106003', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('319', '1417106034', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('320', '1417106827', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('321', '1417106894', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('322', '1417107269', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('323', '1417107347', '1', '编辑商品: 洋葱专属荷兰冰滴咖啡(限时)', '222.94.137.185'), ('324', '1417107762', '1', '删除商品: Iphone5 Lighting防尘塞', '222.94.137.185'), ('325', '1417112469', '1', '编辑商品: 洋葱咖啡馆-工作餐团购', '222.94.137.185'), ('326', '1417112645', '1', '编辑商品: 免费活动券，抵100元', '222.94.137.185'), ('327', '1417112646', '1', '编辑商品: 免费活动券，抵100元', '222.94.137.185'), ('328', '1417112672', '1', '编辑商品: 免费活动券，抵50元', '222.94.137.185'), ('329', '1417112727', '1', '编辑商品: 优惠券，抵现金10元', '222.94.137.185'), ('330', '1417112771', '1', '编辑商品: 优惠券，抵现金100元', '222.94.137.185'), ('331', '1417112800', '1', '编辑商品: 优惠券，抵现金80元', '222.94.137.185'), ('332', '1417112823', '1', '编辑商品: 优惠券，抵现金50元', '222.94.137.185'), ('333', '1417112845', '1', '编辑商品: 优惠券，抵现金30元', '222.94.137.185'), ('334', '1417113028', '1', '编辑商品: 优惠券，抵现金100元', '222.94.137.185'), ('335', '1417113062', '1', '编辑商品: 抵用券面值100元', '222.94.137.185'), ('336', '1417113118', '1', '编辑商品: 卡布奇诺咖啡', '222.94.137.185'), ('352', '1417691473', '1', '编辑商品类型: 团购商城', '127.0.0.1'), ('353', '1417691489', '1', '编辑商品类型: 积分商城', '127.0.0.1'), ('354', '1417941411', '1', '添加商品: 111', '0.0.0.0'), ('355', '1417941567', '1', '编辑商品: 111', '0.0.0.0'), ('356', '1417942669', '1', '添加商户: 222', '0.0.0.0'), ('357', '1417942669', '1', '添加门店: 222', '0.0.0.0'), ('358', '1417942669', '1', '添加管理员: test123', '0.0.0.0'), ('359', '1417942939', '15', '编辑门店: 222', '0.0.0.0'), ('360', '1417943048', '1', '编辑门店: 222', '0.0.0.0'), ('361', '1417943240', '15', '编辑门店: 222', '0.0.0.0'), ('362', '1417943337', '17', '添加商品: 22sp1', '0.0.0.0'), ('363', '1418094007', '1', '批量回收商品: ', '0.0.0.0'), ('364', '1418094015', '1', '批量回收商品: ', '0.0.0.0'), ('365', '1418200634', '1', '编辑门店: 洋葱咖啡馆(德基店)', '127.0.0.1'), ('366', '1418200639', '1', '编辑门店: 万达影城(河西万达)', '127.0.0.1'), ('367', '1418203036', '1', '添加: ', '127.0.0.1'), ('368', '1418203353', '1', '删除: |', '127.0.0.1'), ('369', '1418203618', '1', '添加: 建设银行吉林大学ATM', '127.0.0.1'), ('370', '1418203880', '1', '删除: 建设银行吉林大学ATM|', '127.0.0.1'), ('371', '1418204124', '1', '添加: ', '127.0.0.1'), ('372', '1418204133', '1', '删除: |', '127.0.0.1'), ('373', '1418204279', '1', '添加: 111', '127.0.0.1'), ('374', '1418204287', '1', '删除: 111|', '127.0.0.1'), ('375', '1418204830', '1', '添加: 121212', '127.0.0.1'), ('376', '1418205185', '1', '添加: 11111', '127.0.0.1'), ('377', '1418205192', '1', '删除: 11111|', '127.0.0.1'), ('378', '1418205242', '1', '添加: ', '127.0.0.1'), ('379', '1418205371', '1', '添加: 111', '127.0.0.1'), ('380', '1418205487', '1', '删除: 111', '127.0.0.1'), ('381', '1418205490', '1', '删除: ', '127.0.0.1'), ('382', '1418205493', '1', '删除: 121212', '127.0.0.1'), ('383', '1418205944', '1', '添加: 建设银行吉林大学ATM24小时', '127.0.0.1'), ('384', '1418207077', '1', '编辑门店: ', '127.0.0.1'), ('385', '1418207118', '1', '添加: 111', '127.0.0.1'), ('386', '1418207125', '1', '删除: 111|', '127.0.0.1'), ('387', '1418627928', '1', '添加: test2', '127.0.0.1'), ('388', '1418627940', '1', '删除: test2', '127.0.0.1'), ('389', '1418628357', '1', '编辑: 晋商银行股份有限公司太原并州支行营业部1', '127.0.0.1'), ('390', '1418628365', '1', '编辑: 晋商银行股份有限公司太原并州支行营业部2', '127.0.0.1'), ('391', '1418628375', '1', '编辑: 晋商银行股份有限公司太原并州支行营业部', '127.0.0.1'), ('392', '1418628740', '1', '编辑: 晋商银行股份有限公司太原解放北路支行', '127.0.0.1'), ('393', '1418628746', '1', '编辑: 晋商银行股份有限公司太原府东街支行', '127.0.0.1'), ('394', '1418628754', '1', '编辑: 晋商银行股份有限公司太原并州支行营业部', '127.0.0.1'), ('395', '1418716999', '1', '删除商品: 22sp1', '127.0.0.1'), ('396', '1418717007', '1', '删除门店: 222|', '127.0.0.1'), ('397', '1418717017', '1', '删除商户: 222', '127.0.0.1'), ('398', '1418718130', '1', '编辑商户: 老北京炭火锅', '127.0.0.1'), ('399', '1418718242', '1', '编辑商户: 大娘水饺', '127.0.0.1'), ('400', '1418718411', '1', '编辑商户: 大娘水饺', '127.0.0.1'), ('401', '1418718612', '1', '编辑商户: 大娘水饺', '127.0.0.1'), ('402', '1418720417', '1', '编辑商户: 大娘水饺', '127.0.0.1'), ('403', '1418720453', '1', '编辑商户: 大娘水饺修改', '127.0.0.1'), ('404', '1418720492', '1', '编辑商户: 大娘水饺', '127.0.0.1'), ('405', '1418724442', '1', '编辑商户: ', '127.0.0.1'), ('406', '1418724793', '1', '添加商户: 肯德基', '127.0.0.1'), ('407', '1418724793', '1', '添加门店: 肯德基', '127.0.0.1'), ('408', '1418724793', '1', '添加管理员: sh003', '127.0.0.1'), ('409', '1418724817', '1', '编辑商户: ', '127.0.0.1'), ('410', '1419408539', '1', '删除商品分类: ', '0.0.0.0'), ('411', '1419408612', '1', '删除商品分类: ', '0.0.0.0'), ('412', '1419409343', '1', '删除: 查询积分', '0.0.0.0'), ('413', '1419409356', '1', '删除: test', '0.0.0.0'), ('414', '1419409359', '1', '删除: 酒店套餐', '0.0.0.0'), ('415', '1419409361', '1', '删除: 三亚线', '0.0.0.0'), ('416', '1419409364', '1', '删除: 淡季特价', '0.0.0.0'), ('417', '1419409376', '1', '删除: 定制旅程', '0.0.0.0'), ('418', '1419409379', '1', '删除: 咨询服务', '0.0.0.0'), ('419', '1419409382', '1', '删除: 测试一级菜单', '0.0.0.0'), ('420', '1419409507', '1', '删除: 热门线路', '0.0.0.0'), ('421', '1419409510', '1', '删除: 顶级菜单', '0.0.0.0'), ('422', '1419409638', '1', '添加: 会员中心', '0.0.0.0'), ('423', '1419409672', '1', '添加: 产品', '0.0.0.0'), ('424', '1419409704', '1', '添加: 活动', '0.0.0.0'), ('425', '1419411434', '1', '添加: 北京天气', '0.0.0.0'), ('426', '1419412270', '1', '删除: 北京天气', '0.0.0.0'), ('427', '1419412273', '1', '删除: 活动', '0.0.0.0'), ('428', '1419412332', '1', '添加: 活动', '0.0.0.0'), ('429', '1419412438', '1', '添加: 天气预报', '0.0.0.0'), ('430', '1419412494', '1', '编辑: ', '0.0.0.0'), ('431', '1419412515', '1', '编辑: ', '0.0.0.0'), ('432', '1419412948', '1', '删除: ', '0.0.0.0'), ('433', '1419412950', '1', '删除: ', '0.0.0.0'), ('434', '1419412955', '1', '删除: ', '0.0.0.0'), ('435', '1419412964', '1', '删除: 天气预报', '0.0.0.0'), ('436', '1419414674', '1', '删除: ', '0.0.0.0'), ('437', '1419414804', '1', '删除: ', '0.0.0.0'), ('438', '1419414809', '1', '删除: ', '0.0.0.0'), ('439', '1419414817', '1', '删除: ', '0.0.0.0'), ('440', '1419414962', '1', '删除: ', '0.0.0.0'), ('441', '1419414993', '1', '删除: ', '0.0.0.0'), ('442', '1419415028', '1', '删除: ', '0.0.0.0'), ('443', '1419415078', '1', '删除: ', '0.0.0.0'), ('444', '1419415093', '1', '删除: ', '0.0.0.0'), ('445', '1419415142', '1', '删除: ', '0.0.0.0'), ('446', '1419415149', '1', '删除: ', '0.0.0.0'), ('447', '1419415292', '1', '删除: ', '0.0.0.0'), ('448', '1419415298', '1', '删除: ', '0.0.0.0'), ('449', '1419415406', '1', '删除: 抽烟抽烟', '0.0.0.0'), ('450', '1419415410', '1', '删除: 吃吃饭', '0.0.0.0'), ('451', '1419415414', '1', '删除: 哈哈哈哈', '0.0.0.0'), ('452', '1419415418', '1', '删除: 今天好天气', '0.0.0.0'), ('453', '1419415422', '1', '删除: 我要去旅行', '0.0.0.0'), ('454', '1419415443', '1', '删除: 吃饭去了', '0.0.0.0'), ('455', '1419415446', '1', '删除: 你好', '0.0.0.0'), ('456', '1419415452', '1', '删除: 你好', '0.0.0.0'), ('457', '1419415865', '1', '删除: 图片1', '0.0.0.0'), ('458', '1419416634', '1', '删除: 自驾游2', '0.0.0.0'), ('459', '1419418689', '1', '编辑: ', '0.0.0.0'), ('460', '1419418714', '1', '编辑: ', '0.0.0.0'), ('461', '1419487759', '1', '删除: 旅游', '0.0.0.0'), ('462', '1419487763', '1', '删除: 试玩五11', '0.0.0.0'), ('463', '1419488295', '1', '添加: 111', '0.0.0.0'), ('464', '1419488302', '1', '删除: 111', '0.0.0.0'), ('465', '1419488313', '1', '添加: 111', '0.0.0.0'), ('466', '1419488320', '1', '删除: 111', '0.0.0.0'), ('467', '1419488574', '1', '添加: 测试', '0.0.0.0'), ('468', '1419488581', '1', '添加: 111', '0.0.0.0'), ('469', '1419489231', '1', '添加: 1122', '0.0.0.0'), ('470', '1419489238', '1', '删除: 1122', '0.0.0.0'), ('471', '1419489241', '1', '删除: 111', '0.0.0.0'), ('472', '1419489244', '1', '删除: 测试', '0.0.0.0'), ('473', '1419489417', '1', '添加: 2332', '0.0.0.0'), ('474', '1419489522', '1', '添加: 111', '0.0.0.0'), ('475', '1419492761', '1', '添加: 关于我', '0.0.0.0'), ('476', '1419493030', '1', '添加: 团购商城', '0.0.0.0'), ('477', '1419493061', '1', '添加: 我的订单', '0.0.0.0'), ('478', '1419493106', '1', '添加: 吃货在线', '0.0.0.0'), ('479', '1419493258', '1', '添加: 跑男世界', '0.0.0.0'), ('480', '1419493765', '1', '添加: 1111', '0.0.0.0'), ('481', '1420603744', '1', '编辑: 晋商银行股份有限公司太原北大街支行', '127.0.0.1'), ('482', '1420603746', '1', '编辑: 晋商银行股份有限公司太原肖墙路支行', '127.0.0.1'), ('483', '1421230421', '1', '删除: 吃货在线', '0.0.0.0'), ('484', '1421230481', '1', '添加: 测试二级菜单', '0.0.0.0'), ('485', '1422521016', '1', '编辑: 晋商银行股份有限公司太原尖草坪支行', '127.0.0.1'), ('486', '1422521017', '1', '编辑: 晋商银行股份有限公司太原桥头街支行', '127.0.0.1'), ('487', '1423129903', '1', '添加商品: test1', '127.0.0.1'), ('488', '1423130091', '1', '添加商品: test3', '127.0.0.1'), ('489', '1423131534', '1', '添加商品: test3', '127.0.0.1'), ('490', '1423131627', '1', '添加商品: test4', '127.0.0.1'), ('491', '1423133059', '1', '添加商品: test6', '127.0.0.1'), ('492', '1423133097', '1', '添加商品: est7', '127.0.0.1'), ('493', '1426150707', '1', '批量回收商品: ', '127.0.0.1'), ('494', '1426150741', '1', '批量删除商品: ', '127.0.0.1'), ('495', '1426150897', '1', '添加商品: test1', '127.0.0.1'), ('496', '1426150982', '1', '添加商品: test2', '127.0.0.1'), ('497', '1426151611', '1', '添加商品: test3', '127.0.0.1'), ('498', '1426151649', '1', '添加商品: test4', '127.0.0.1'), ('499', '1427105004', '1', '删除订单: 141203120643HIKMBVI', '127.0.0.1'), ('500', '1427189620', '1', '批量上传商品: ', '127.0.0.1'), ('501', '1427190788', '1', '批量上传商品: ', '127.0.0.1'), ('502', '1427278914', '1', '批量上传: ', '127.0.0.1'), ('503', '1427279623', '1', '批量上传: ', '127.0.0.1'), ('504', '1427280136', '1', '批量上传: ', '127.0.0.1'), ('505', '1427354977', '1', '批量上传: ', '127.0.0.1'), ('506', '1427355350', '1', '批量上传: ', '127.0.0.1'), ('507', '1427355429', '1', '批量上传: ', '127.0.0.1'), ('508', '1427361165', '1', '批量上传: ', '127.0.0.1'), ('509', '1427361211', '1', '批量上传: ', '127.0.0.1'), ('510', '1427361867', '1', '批量上传: ', '127.0.0.1'), ('511', '1427363536', '1', '批量上传: ', '127.0.0.1'), ('512', '1427363985', '1', '批量上传: ', '127.0.0.1'), ('513', '1428385942', '1', '批量回收商品: ', '127.0.0.1'), ('514', '1428385965', '1', '批量还原商品: ', '127.0.0.1'), ('515', '1428389361', '1', '批量回收商品: ', '127.0.0.1'), ('516', '1428389473', '1', '批量回收商品: ', '127.0.0.1'), ('517', '1428389484', '1', '批量回收商品: ', '127.0.0.1'), ('518', '1428389536', '1', '批量回收商品: ', '127.0.0.1'), ('519', '1428396176', '1', ': ', '127.0.0.1'), ('520', '1428396288', '1', ': ', '127.0.0.1'), ('521', '1428396417', '1', ': ', '127.0.0.1'), ('522', '1428396492', '1', ': ', '127.0.0.1'), ('523', '1428396600', '1', ': ', '127.0.0.1'), ('524', '1428396742', '1', '批量上传: ', '127.0.0.1'), ('525', '1428396752', '1', ': ', '127.0.0.1'), ('526', '1428396802', '1', ': ', '127.0.0.1'), ('527', '1428397254', '1', '批量上传: ', '127.0.0.1'), ('528', '1428397264', '1', ': ', '127.0.0.1'), ('529', '1428397761', '1', '批量上传: ', '127.0.0.1'), ('530', '1428397769', '1', ': ', '127.0.0.1'), ('531', '1428397838', '1', '批量上传: ', '127.0.0.1'), ('532', '1428397849', '1', ': ', '127.0.0.1'), ('533', '1428400029', '1', '添加商户: 洋葱咖喱', '127.0.0.1'), ('534', '1428400030', '1', '添加门店: 洋葱咖喱', '127.0.0.1'), ('535', '1428400030', '1', '添加管理员: sh004', '127.0.0.1'), ('536', '1428400127', '1', '编辑门店: 洋葱咖喱', '127.0.0.1'), ('537', '1428400688', '19', '编辑门店: 洋葱咖喱（绿地广场）', '127.0.0.1'), ('538', '1428400796', '19', '编辑门店: 洋葱咖啡馆(德基店)', '127.0.0.1'), ('539', '1428400810', '19', '编辑门店: 洋葱咖喱(大洋百货店)', '127.0.0.1'), ('540', '1428480678', '19', '编辑: 晋商银行股份有限公司太原尖草坪支行', '127.0.0.1'), ('541', '1428480679', '19', '编辑: 晋商银行股份有限公司太原兴华街支行', '127.0.0.1'), ('542', '1428480680', '19', '编辑: 晋商银行股份有限公司太原胜利街支行', '127.0.0.1'), ('543', '1428480681', '19', '编辑: 晋商银行股份有限公司太原迎泽东大街支行', '127.0.0.1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_message`;
CREATE TABLE `ecs_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_admin_user`;
CREATE TABLE `ecs_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  `shop_id` smallint(5) unsigned DEFAULT '0' COMMENT '商户管理员',
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_admin_user`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_admin_user` VALUES ('1', 'admin', 'jeffyyang@sina.com', '52b74e9c5358afa02cd1185e24e189ed', '9096', '1399432551', '1428548997', '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '', '0', '0', null, null, '0'), ('10', 'sh001', 'sh001@sina.com', '76740d3fcc4268314cc470528ed863b2', '7465', '1416465422', '1418724463', '127.0.0.1', 'admin_manage,admin_drop,order_view,order_view_finished,sale_order_stats,delivery_view,back_view,excode_view,suppliers_manage', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '', '0', '0', null, '0', '2'), ('11', 'dz001', 'dz001@sina.com', '62034d9e4c6e6d94e035c25e0de7d651', '4430', '1416483331', '1417680566', '127.0.0.1', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '3', '0'), ('12', 'dz002', 'dz002@sina.com', '17838c30f00ae5988b704aaf5387413e', '5561', '1416484021', '1416820597', '222.95.45.244', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '3', '0'), ('13', 'shopadmin1', 'shopadmin1@aa.com', '8881b9e3d1ceb2a485c22ba433643bb8', '9072', '1417153687', '1417153790', '117.88.151.165', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '0', '0'), ('14', 'lbjtgg', 'lbjtgg@aaa.com', 'e163b476a74d8a3df51799b6272f906b', '7895', '1417254571', '1417254641', '117.88.151.165', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage,suppliers_bill_list', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '10', null, '1', '4'), ('15', 'test123', 'test123@sina.com', '576ad490d2e2a71ce60f2f787a82a040', '3966', '1417942669', '1417943152', '0.0.0.0', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage,suppliers_bill_list', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '1', '5'), ('16', 'dz222', 'dz222@sina.com', '6a08f4eb3920c5d33229731ce8a734f5', null, '1417943087', '0', '', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '3', '0'), ('19', 'sh004', 'jeffyyang@a.com', '67eaf95ab4beaae932ec28a6e0feaa85', '8486', '1428400030', '1428480513', '127.0.0.1', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage,suppliers_bill_list', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '1', '7'), ('20', 'ld001', 'ld001@a.com', 'd66b84a0363509edfb2a3fc4d30e3ff0', null, '1428400347', '0', '', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '13', null, '3', '7'), ('18', 'sh003', 'sh003@sina.com', '15eaa9f478867121b31afae9a714dda1', '8914', '1418724793', '0', '', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage,suppliers_bill_list', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '0', null, '1', '6'), ('21', 'dy001', 'dy001@a.com', '5348c932b402d211fd048df51ec16de1', '4216', '1428400720', '1428467538', '127.0.0.1', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '7', null, '3', '7'), ('22', 'dj001', 'dj001@a.com', '7ad9a2d9f78c4b635e8519070d012ed1', '2341', '1428400777', '1428480445', '127.0.0.1', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '', '0', '6', null, '3', '7');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_adsense`;
CREATE TABLE `ecs_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_affiliate_log`;
CREATE TABLE `ecs_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_agency`;
CREATE TABLE `ecs_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_area_region`;
CREATE TABLE `ecs_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article`;
CREATE TABLE `ecs_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_article`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1399432551', '', '0', '', null), ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1399432551', '', '0', '', null), ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1399432551', '', '0', '', null), ('4', '2', '联系我们', '', '', '', '', '0', '1', '1399432551', '', '0', '', null), ('5', '2', '公司简介', '', '', '', '', '0', '1', '1399432551', '', '0', '', null), ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1399432551', '', '0', '', null);
COMMIT;

-- ----------------------------
--  Table structure for `ecs_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_article_cat`;
CREATE TABLE `ecs_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_article_cat`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0'), ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1'), ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '0', '1'), ('4', '游戏描述', '1', '游戏描述', '游戏描述', '50', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_attribute`;
CREATE TABLE `ecs_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_attribute`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_attribute` VALUES ('90', '1', '提前预约', '1', '0', '需提前预约\r\n无需提前预约', '0', '0', '0', '0'), ('91', '1', '随时退', '1', '0', '支持随时退\r\n不支持随时退', '0', '0', '0', '0'), ('92', '1', '过期退', '1', '0', '支持过期退\r\n不支持过期退', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auction_log`;
CREATE TABLE `ecs_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_auto_manage`;
CREATE TABLE `ecs_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_goods`;
CREATE TABLE `ecs_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_back_goods`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_back_goods` VALUES ('1', '1', '14', '0', '', 'Iphone5 Lighting防尘塞', null, 'ECS000014', '1', '1', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_back_order`;
CREATE TABLE `ecs_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_back_order`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_back_order` VALUES ('1', '20141117112941268', 'oid-141117192535yf4c', '211', '', '1416223535', '1', null, '14', 'admin', '黄鑫', '江苏省 南京市 建邺区 集庆门大街218号 万达西地 邮编：210004', '0', '0', '0', '0', '\'', '\'', '210004', '', '13952040434', '\'', '\'', '\'', '0.00', '0.00', '1416223770', '0', '0', '1416225113', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_bank_agency`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bank_agency`;
CREATE TABLE `ecs_bank_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(128) NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '评价级别',
  `serv_rank` decimal(2,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '评价级别',
  `envi_rank` decimal(2,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '评价级别',
  `region_cities` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `region_districts` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '区县',
  `map_lat` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '位置经度',
  `map_lng` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '位置纬度',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `office_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `opening_hours` varchar(64) NOT NULL DEFAULT '' COMMENT '营业时间',
  `traffic_info` varchar(256) NOT NULL DEFAULT '' COMMENT '交通信息',
  `agency_desc` mediumtext,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `agency_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0--普通银行网点 1--自助银行 ',
  PRIMARY KEY (`agency_id`),
  KEY `agency_id` (`agency_id`),
  KEY `agency_name` (`agency_name`),
  KEY `region_cities` (`region_cities`),
  KEY `region_districts` (`region_districts`),
  KEY `agency_type` (`agency_type`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_bank_agency`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_bank_agency` VALUES ('1', '晋商银行股份有限公司太原并州支行营业部', '0', '0.0', '0.0', '0', '0', '37.879486', '112.561440', '山西省太原市解放路103号中盛国际大厦', '95105588', '', '', '', null, '1418711339', '1', '0'), ('2', '晋商银行股份有限公司古交支行', '0', '0.0', '0.0', '0', '0', '37.907890', '112.177689', '山西省古交市青年路东曲市场', '95105588', '', '', '', null, '1418711339', '1', '0'), ('3', '晋商银行股份有限公司太原解放北路支行', '0', '0.0', '0.0', '0', '0', '37.887341', '112.562347', '山西省太原市解放路228号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('4', '晋商银行股份有限公司太原朝阳街支行', '0', '0.0', '0.0', '0', '0', '37.855328', '112.593987', '山西省太原市朝阳街117号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('5', '晋商银行股份有限公司太原府东街支行', '0', '0.0', '0.0', '0', '0', '37.873180', '112.565529', '山西省太原市府东街93号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('6', '晋商银行股份有限公司太原水西门支行', '0', '0.0', '0.0', '0', '0', '37.864594', '112.556664', '山西省太原市水西门街22号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('7', '晋商银行股份有限公司太原尖草坪支行', '0', '0.0', '0.0', '0', '0', '37.909870', '112.562759', '山西省太原市解放北路249号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('8', '晋商银行股份有限公司太原兴华街支行', '0', '0.0', '0.0', '0', '0', '37.887890', '112.529678', '山西省太原市兴华街93号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('9', '晋商银行股份有限公司太原桥头街支行', '0', '0.0', '0.0', '0', '0', '37.870125', '112.573700', '山西省太原市五一路173号晓山大厦', '95105588', '', '', '', null, '1418711339', '1', '0'), ('10', '晋商银行股份有限公司太原胜利街支行', '0', '0.0', '0.0', '0', '0', '37.893589', '112.561256', '山西省太原市胜利街385号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('11', '晋商银行股份有限公司太原肖墙路支行', '0', '0.0', '0.0', '0', '0', '37.876541', '112.568459', '山西省太原市上肖墙路14号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('12', '晋商银行股份有限公司太原北大街支行', '0', '0.0', '0.0', '0', '0', '37.888870', '112.571602', '山西省太原市北大街中段73号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('13', '晋商银行股份有限公司太原敦化坊支行', '0', '0.0', '0.0', '0', '0', '37.894497', '112.580200', '山西省太原市胜利街17号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('14', '晋商银行股份有限公司太原迎泽东大街支行', '0', '0.0', '0.0', '0', '0', '37.860649', '112.581612', '山西省太原市迎泽大街27号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('15', '晋商银行股份有限公司太原东米市支行', '0', '0.0', '0.0', '0', '0', '37.864773', '112.566322', '山西省太原市开化寺街21号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('16', '晋商银行股份有限公司太原胜利东街支行', '0', '0.0', '0.0', '0', '0', '37.884106', '112.584320', '山西省太原市建设北路228号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('17', '晋商银行股份有限公司太原迎新街支行', '0', '0.0', '0.0', '0', '0', '37.956631', '112.532173', '山西省太原市迎新街35号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('18', '晋商银行股份有限公司太原五龙口支行', '0', '0.0', '0.0', '0', '0', '37.866436', '112.615250', '山西省太原市五龙口街北一巷9号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('19', '晋商银行股份有限公司太原杏林支行', '0', '0.0', '0.0', '0', '0', '37.869225', '112.543762', '山西省太原市迎泽区桃园三巷22号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('20', '晋商银行股份有限公司太原晋阳支行营业部', '0', '0.0', '0.0', '0', '0', '37.877899', '112.543419', '山西省太原市旱西关街46号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('21', '晋商银行股份有限公司太原桃园南路支行', '0', '0.0', '0.0', '0', '0', '37.850769', '112.545563', '山西省太原市桃园南路35号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('22', '晋商银行股份有限公司太原府西街支行', '0', '0.0', '0.0', '0', '0', '37.874012', '112.548615', '山西省太原市府西街59号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('23', '晋商银行股份有限公司太原机场支行', '0', '0.0', '0.0', '0', '0', '37.757759', '112.635406', '山西省太原市太榆路199号美轩酒店底商', '95105588', '', '', '', null, '1418711339', '1', '0'), ('24', '晋商银行股份有限公司太原迎泽西大街支行', '0', '0.0', '0.0', '0', '0', '37.856972', '112.506615', '山西省太原市迎泽西大街创升科技大厦', '95105588', '', '', '', null, '1418711339', '1', '0'), ('25', '晋商银行股份有限公司太原桥西支行', '0', '0.0', '0.0', '0', '0', '37.856373', '112.529610', '山西省太原市晋祠路1号山西煤焦集团办公楼一层北厅', '95105588', '', '', '', null, '1418711339', '1', '0'), ('26', '晋商银行股份有限公司太原南寒支行', '0', '0.0', '0.0', '0', '0', '37.854603', '112.458870', '山西省太原市西矿街301号（西山大厦斜对面）', '95105588', '', '', '', null, '1418711339', '1', '0'), ('27', '晋商银行股份有限公司太原惠泽苑支行', '0', '0.0', '0.0', '0', '0', '37.873108', '112.511864', '山西省太原市漪汾街大唐世家惠泽苑15号楼底商', '95105588', '', '', '', null, '1418711339', '1', '0'), ('28', '晋商银行股份有限公司太原和平南路支行', '0', '0.0', '0.0', '0', '0', '37.817616', '112.506470', '山西省太原市和平南路477号（义井街）', '95105588', '', '', '', null, '1418711339', '1', '0'), ('29', '晋商银行股份有限公司清徐支行', '0', '0.0', '0.0', '0', '0', '37.612068', '112.363007', '山西省清徐县城紫林路世纪花园小区', '95105588', '', '', '', null, '1418711339', '1', '0'), ('30', '晋商银行股份有限公司太原桃园中路支行', '0', '0.0', '0.0', '0', '0', '37.863735', '112.545242', '山西省太原市桃园北路72号12幢1001号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('31', '晋商银行股份有限公司太原劲松北路支行', '0', '0.0', '0.0', '0', '0', '37.867790', '112.540077', '山西省太原市劲松北路31号山西焦炭（国际）交易中心四层北段', '95105588', '', '', '', null, '1418711339', '1', '0'), ('32', '晋商银行股份有限公司太原社保支行', '0', '0.0', '0.0', '0', '0', '37.853439', '112.586105', '山西省太原市迎泽区建设南路22号社会保障大厦1层', '95105588', '', '', '', null, '1418711339', '1', '0'), ('33', '晋商银行股份有限公司太原前进路支行', '0', '0.0', '0.0', '0', '0', '37.860565', '112.505692', '山西省太原市西矿街87号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('34', '晋商银行股份有限公司太原漪汾街支行', '0', '0.0', '0.0', '0', '0', '37.872276', '112.530426', '山西省太原市望景路3号国土宾馆', '95105588', '', '', '', null, '1418711339', '1', '0'), ('35', '晋商银行股份有限公司太原南内环西街支行', '0', '0.0', '0.0', '0', '0', '37.838203', '112.531006', '山西省太原市万柏林区南内环西街2号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('36', '晋商银行股份有限公司太原龙城支行营业部', '0', '0.0', '0.0', '0', '0', '37.817333', '112.585457', '山西省太原市长风街12号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('37', '晋商银行股份有限公司太原晋阳街支行', '0', '0.0', '0.0', '0', '0', '37.788292', '112.555740', '山西省太原市晋阳街与平阳路交叉口往东300米', '95105588', '', '', '', null, '1418711339', '1', '0'), ('38', '晋商银行股份有限公司太原解放南路支行', '0', '0.0', '0.0', '0', '0', '37.846256', '112.559814', '山西省太原市双塔西街49号国金国际珠宝楼一层', '95105588', '', '', '', null, '1418711339', '1', '0'), ('39', '晋商银行股份有限公司太原南中环支行', '0', '0.0', '0.0', '0', '0', '37.794266', '112.569832', '山西省太原市小店区南中环街锦绣苑23号楼', '95105588', '', '', '', null, '1418711339', '1', '0'), ('40', '晋商银行股份有限公司太原并州南路支行', '0', '0.0', '0.0', '0', '0', '37.848228', '112.571434', '山西省太原市并州北路57号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('41', '晋商银行股份有限公司太原大营盘支行', '0', '0.0', '0.0', '0', '0', '37.838654', '112.569778', '山西省太原市南内环街82号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('42', '晋商银行股份有限公司太原南内环街支行', '0', '0.0', '0.0', '0', '0', '37.838867', '112.553406', '山西省太原市南内环街339号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('43', '晋商银行股份有限公司太原太榆路支行', '0', '0.0', '0.0', '0', '0', '37.756321', '112.652664', '山西省太原市太榆路588号聚美瑞国际五金机电城', '95105588', '', '', '', null, '1418711339', '1', '0'), ('44', '晋商银行股份有限公司太原平阳路支行', '0', '0.0', '0.0', '0', '0', '37.813984', '112.552155', '山西省太原市平阳路101号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('45', '晋商银行股份有限公司太原亲贤北街支行', '0', '0.0', '0.0', '0', '0', '37.823032', '112.560486', '山西省太原市亲贤北街206号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('46', '晋商银行股份有限公司太原小店支行', '0', '0.0', '0.0', '0', '0', '37.737442', '112.560394', '山西省太原市太茅路新世纪花园小区', '95105588', '', '', '', null, '1418711339', '1', '0'), ('47', '晋商银行股份有限公司太原三营盘支行', '0', '0.0', '0.0', '0', '0', '37.819668', '112.582123', '山西省太原市并州南路117号（永丰大厦旁、太航服饰旁）', '95105588', '', '', '', null, '1418711339', '1', '0'), ('48', '晋商银行股份有限公司太原坞城路支行', '0', '0.0', '0.0', '0', '0', '37.810375', '112.583763', '山西省太原市坞城路31号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('49', '晋商银行股份有限公司太原并东支行', '0', '0.0', '0.0', '0', '0', '37.851807', '112.576988', '山西省太原市并州东街中段中银欧尚8号底商', '95105588', '', '', '', null, '1418711339', '1', '0'), ('50', '晋商银行股份有限公司太原新建路支行', '0', '0.0', '0.0', '0', '0', '37.848461', '112.551689', '山西省太原市新建南路115号工会大厦', '95105588', '', '', '', null, '1418711339', '1', '0'), ('51', '晋商银行股份有限公司太原体育南路支行', '0', '0.0', '0.0', '0', '0', '37.819386', '112.569832', '山西省太原市体育中路段千禧大厦', '95105588', '', '', '', null, '1418711339', '1', '0'), ('52', '晋商银行股份有限公司太原长治路支行', '0', '0.0', '0.0', '0', '0', '37.835941', '112.561829', '山西世贸大厦A座一层', '95105588', '', '', '', null, '1418711339', '1', '0'), ('53', '晋商银行股份有限公司太原迎泽支行', '0', '0.0', '0.0', '0', '0', '37.859612', '112.550545', '山西省太原市迎泽大街289号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('54', '晋商银行股份有限公司吕梁分行', '0', '0.0', '0.0', '0', '0', '37.529018', '111.133644', '山西省吕梁市离石区长治路与龙凤大街交汇处', '95105588', '', '', '', null, '1418711339', '1', '0'), ('55', '晋商银行股份有限公司运城分行', '0', '0.0', '0.0', '0', '0', '35.038254', '111.013878', '山西省运城市盐湖区槐东南路88号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('56', '晋商银行股份有限公司临汾分行', '0', '0.0', '0.0', '0', '0', '36.095940', '111.509033', '山西省临汾市尧都区向阳西路向阳华府2号楼', '95105588', '', '', '', null, '1418711339', '1', '0'), ('57', '晋商银行股份有限公司朔州分行', '0', '0.0', '0.0', '0', '0', '39.348549', '112.455116', '山西省朔州市经济开发区振华东街北侧', '95105588', '', '', '', null, '1418711339', '1', '0'), ('58', '晋商银行股份有限公司大同分行', '0', '0.0', '0.0', '0', '0', '40.063736', '113.289902', '山西省大同市魏都大道46号', '95105588', '', '', '', null, '1418711339', '1', '0'), ('59', '晋商银行股份有限公司孝义支行', '0', '0.0', '0.0', '0', '0', '37.145016', '111.781464', '山西省孝义市大众路德尚国际中心A座第7套和8套商铺一至三层', '95105588', '', '', '', null, '1418711339', '1', '0'), ('60', '晋商银行股份有限公司河津支行', '0', '0.0', '0.0', '0', '0', '35.599247', '110.705368', '山西省河津市龙门大道海鑫大厦拐角处一二层', '95105588', '', '', '', null, '1418711339', '1', '0'), ('61', '晋商银行股份有限公司洪洞支行', '0', '0.0', '0.0', '0', '0', '36.258087', '111.673126', '山西省临汾市洪洞县城内关爷楼文化小区6号楼', '95105588', '', '', '', null, '1418711339', '1', '0'), ('62', '晋商银行股份有限公司柳林支行', '0', '0.0', '0.0', '0', '0', '37.434216', '110.905045', '山西省柳林县来福区联盛高层建筑3-4号楼一至二层', '95105588', '', '', '', null, '1418711339', '1', '0'), ('63', '晋商银行股份有限公司忻州分行', '0', '0.0', '0.0', '0', '0', '38.426868', '112.721184', '山西省忻州市忻府区', '95105588', '', '', '', null, '1418711339', '1', '0'), ('64', '晋商银行股份有限公司长治分行', '0', '0.0', '0.0', '0', '0', '36.192551', '113.131363', '山西省长治市城区', '95105588', '', '', '', null, '1418711339', '1', '0'), ('65', '晋商银行股份有限公司晋中分行', '0', '0.0', '0.0', '0', '0', '37.702690', '112.719810', '山西省晋中市榆次区汇通路凤凰城底商', '95105588', '', '', '', null, '1418711339', '1', '0'), ('66', '晋商银行股份有限公司晋城分行', '0', '0.0', '0.0', '0', '0', '35.490578', '112.841331', '山西省晋城市凤台西街与新华南巷交汇处紫竹林大厦底商', '95105588', '', '', '', null, '1418711339', '1', '0'), ('67', '晋商银行股份有限公司朔州山阴支行', '0', '0.0', '0.0', '0', '0', '39.523022', '112.820015', '山西省朔州市山阴县同太路青年街南侧', '95105588', '', '', '', null, '1418711339', '1', '0'), ('68', '晋商银行股份有限公司朔州城区支行', '0', '0.0', '0.0', '0', '0', '39.342293', '112.432869', '朔州市民福西街（宾都超市西侧）', '95105588', '', '', '', null, '1418711339', '1', '0'), ('69', '晋商银行股份有限公司临汾分行尧都支行', '0', '0.0', '0.0', '0', '0', '36.076786', '111.524925', '山西省临汾市尧都区平阳南街73号（四中对面）', '95105588', '', '', '', null, '1418711339', '1', '0'), ('70', '晋商银行股份有限公司运城分行永济支行', '0', '0.0', '0.0', '0', '0', '34.859169', '110.457802', '山西省永济市富强东街开元壹号东苑小区门面门口，电话：03598029818', '95105588', '', '', '', null, '1418711339', '1', '0'), ('71', '迎泽区五一路自助银行', '0', '0.0', '0.0', '0', '0', '37.869587', '112.570145', '太原市迎泽区五一路77号05馆', '95105588', '', '', '', null, '1418711339', '1', '1'), ('72', '西墕乡西墕村南梁自助银行', '0', '0.0', '0.0', '0', '0', '38.008877', '112.496567', '太原市尖草坪区西墕乡西墕村南梁', '95105588', '', '', '', null, '1418711339', '1', '1'), ('73', '太原市委机关自助银行', '0', '0.0', '0.0', '0', '0', '38.032139', '112.548409', '太原市新建路81号（太原市委机关传达室）', '95105588', '', '', '', null, '1418711339', '1', '1'), ('74', '杏花岭区政府自助银行', '0', '0.0', '0.0', '0', '0', '37.906429', '112.585007', '胜利街216号杏花岭区政府对面', '95105588', '', '', '', null, '1418711339', '1', '1'), ('75', '杏花岭区北大街自助银行', '0', '0.0', '0.0', '0', '0', '37.873264', '112.551582', '太原市杏花岭区北大街93号（阳光大酒店内）', '95105588', '', '', '', null, '1418711339', '1', '1'), ('76', '理工大学西校门自助银行', '0', '0.0', '0.0', '0', '0', '37.881756', '112.520157', '千峰北路9号（理工大学西校门对面）', '95105588', '', '', '', null, '1418711339', '1', '1'), ('77', '金都花园自助银行', '0', '0.0', '0.0', '0', '0', '36.060913', '111.496788', '迎宾大道一号金都花园大厅', '95105588', '', '', '', null, '1418711339', '1', '1'), ('78', '晋城大厦自助银行', '0', '0.0', '0.0', '0', '0', '37.845779', '112.560799', '晋城大厦', '95105588', '', '', '', null, '1418711339', '1', '1'), ('79', '省人行办公楼自助银行', '0', '0.0', '0.0', '0', '0', '37.860527', '112.571457', '迎泽大街省人行办公楼内', '95105588', '', '', '', null, '1418711339', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_bill`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bill`;
CREATE TABLE `ecs_bill` (
  `bill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(64) NOT NULL DEFAULT '' COMMENT '商户订单',
  `pay_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '微信支付交易流水',
  `bank_type` varchar(16) NOT NULL DEFAULT '' COMMENT '银行类型名称',
  `amount` decimal(10,2) NOT NULL,
  `charge` decimal(10,4) NOT NULL COMMENT '手续费',
  `currency` varchar(32) NOT NULL DEFAULT 'CNY',
  `src_type` varchar(32) NOT NULL DEFAULT 'JSAPI',
  `open_id` varchar(64) NOT NULL,
  `bill_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '处理类型 1 付款 2 退款',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '交易状态 0 付款   1 退款 ',
  `trans_time` varchar(32) NOT NULL DEFAULT '0' COMMENT '生成时间',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '生成时间',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '结清状态 0 未结清 1 已结清',
  `paid_time` int(10) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `admin_user` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `admin_note` varchar(255) NOT NULL DEFAULT '' COMMENT '退款操作原因',
  PRIMARY KEY (`bill_id`),
  KEY `pay_sn` (`pay_sn`),
  KEY `bank_type` (`bank_type`),
  KEY `process_type` (`bill_type`),
  KEY `order_sn` (`order_sn`)
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_bill`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_bill` VALUES ('229', 'oid-141201151303bqweo5t', '1008440263201412010006368223', 'CMB_DEBIT', '0.02', '0.0004', 'CNY', 'JSAPI', 'o5iYiuG9y5gyA0QLPWyYv7uMSDjE', '0', '0', '2014-12-01 15:13:11', '1428397837', '1', '1428397849', 'admin', ''), ('230', 'oid-141202151216wftkf6m', '1004330263201412020006408169', 'ABC_DEBIT', '0.01', '0.0002', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-02 15:12:27', '1428397837', '1', '1428397849', 'admin', ''), ('231', 'oid-141202125112dxqj8dh', '1004330263201412020006409654', 'ABC_DEBIT', '0.01', '0.0002', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-02 12:51:58', '1428397837', '1', '1428397849', 'admin', ''), ('232', 'oid-14120217090353jd5wc', '1004330263201412020006422041', 'ABC_DEBIT', '0.04', '0.0008', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-02 17:09:14', '1428397837', '1', '1428397849', 'admin', ''), ('233', '141202180206WZKIB2N', '1008440263201412020006430050', 'CMB_DEBIT', '0.02', '0.0004', 'CNY', 'JSAPI', 'o5iYiuG9y5gyA0QLPWyYv7uMSDjE', '0', '0', '2014-12-02 18:02:15', '1428397837', '1', '1428397849', 'admin', ''), ('234', '1412031521481NFBZY8', '1004330263201412030006460926', 'ABC_DEBIT', '0.04', '0.0008', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 15:21:58', '1428397837', '1', '1428397849', 'admin', ''), ('235', '141203165850M6SLOB1', '1004330263201412030006462948', 'ABC_DEBIT', '0.02', '0.0004', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 16:59:06', '1428397837', '1', '1428397849', 'admin', ''), ('236', '141203142507YP9RTNG', '1004330263201412030006465234', 'ABC_DEBIT', '0.04', '0.0008', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 14:25:19', '1428397837', '1', '1428397849', 'admin', ''), ('237', '141203161358L0GPYSV', '1004330263201412030006465311', 'ABC_DEBIT', '0.05', '0.0010', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 16:14:07', '1428397837', '1', '1428397849', 'admin', ''), ('238', '141203173148B5JDO4M', '1004330263201412030006487020', 'ABC_DEBIT', '0.02', '0.0004', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 17:31:56', '1428397837', '1', '1428397849', 'admin', ''), ('239', '141203182508VJTC6JB', '1004330263201412030006487057', 'ABC_DEBIT', '0.03', '0.0006', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 18:25:16', '1428397837', '1', '1428397849', 'admin', ''), ('240', '1412031828431SRESRR', '1004330263201412030006488677', 'ABC_DEBIT', '0.04', '0.0008', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 18:28:52', '1428397837', '1', '1428397849', 'admin', ''), ('241', '141203171428OYKLXKE', '1004330263201412030006489208', 'ABC_DEBIT', '0.02', '0.0004', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 17:14:37', '1428397837', '1', '1428397849', 'admin', ''), ('242', '141203173452U1TBAGU', '1004330263201412030006489423', 'ABC_DEBIT', '0.01', '0.0002', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 17:35:00', '1428397837', '1', '1428397849', 'admin', ''), ('243', '14120318414957DN37O', '1004330263201412030006489477', 'ABC_DEBIT', '0.04', '0.0008', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 18:41:56', '1428397837', '1', '1428397849', 'admin', ''), ('244', '141203172410ZEG3LNX', '1004330263201412030006495816', 'ABC_DEBIT', '0.01', '0.0002', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 17:24:18', '1428397837', '1', '1428397849', 'admin', ''), ('245', '141203185138OM9TWU2', '1004330263201412030006495882', 'ABC_DEBIT', '0.03', '0.0006', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 18:51:47', '1428397838', '1', '1428397849', 'admin', ''), ('246', '141203181959RQ285I5', '1004330263201412030006500248', 'ABC_DEBIT', '0.03', '0.0006', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 18:20:06', '1428397838', '1', '1428397849', 'admin', ''), ('247', '141203183234XQI7GPY', '1004330263201412030006500263', 'ABC_DEBIT', '0.03', '0.0006', 'CNY', 'JSAPI', 'o5iYiuJC7By4KdZ__jL00i5rb1SE', '0', '0', '2014-12-03 18:32:42', '1428397838', '1', '1428397849', 'admin', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_bonus_type`;
CREATE TABLE `ecs_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_booking_goods`;
CREATE TABLE `ecs_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_brand`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_brand`;
CREATE TABLE `ecs_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_card`;
CREATE TABLE `ecs_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_cart`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cart`;
CREATE TABLE `ecs_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_cat_recommend`;
CREATE TABLE `ecs_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_category`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_category`;
CREATE TABLE `ecs_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_category`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_category` VALUES ('1', '团购商城', '', '团购商品', '0', '50', '', '', '0', '', '1', '0', ''), ('3', '普通商品', '', '', '1', '50', '', '', '0', '', '1', '0', ''), ('4', '团购商品', '', '', '1', '50', '', '', '0', '', '1', '0', '92,91,90'), ('5', '优惠券', '', '', '1', '50', '', '', '0', '', '1', '0', ''), ('6', '虚拟卡券', '', '', '1', '50', '', '', '0', '', '1', '0', ''), ('2', '积分商城', '', '积分商城', '0', '50', '', '', '0', '', '1', '0', ''), ('7', '日用家居', '', '', '2', '50', '', '', '0', '', '1', '0', ''), ('8', '数码配件', '', '', '2', '50', '', '', '0', '', '1', '0', ''), ('9', '厨具家电', '', '', '2', '50', '', '', '0', '', '1', '0', ''), ('10', '箱包配饰', '', '', '2', '50', '', '', '0', '', '1', '0', ''), ('11', '美容美妆', '', '', '2', '50', '', '', '0', '', '1', '0', ''), ('12', '虚拟礼品', '', '', '2', '50', '', '', '0', '', '1', '0', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_collect_goods`;
CREATE TABLE `ecs_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_comment`;
CREATE TABLE `ecs_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_comment`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_comment` VALUES ('2', '0', '7', '', '测试用户1', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '1'), ('3', '0', '7', '', '测试用户2', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '2'), ('4', '0', '7', '', '测试用户3', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '3'), ('5', '0', '7', '', '测试用户4', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '4'), ('6', '0', '7', '', '测试用户5', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '5'), ('12', '0', '6', '', '测试用户4', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '4'), ('13', '0', '6', '', '测试用户1', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '1'), ('14', '0', '6', '', '测试用户2', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '2'), ('15', '0', '6', '', '测试用户3', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '3'), ('16', '0', '6', '', '测试用户5', '商户评论测试，商户评论测试', '5', '1415962879', '', '1', '0', '5'), ('63', '0', '7', '', 'shadowx', '俄长长的队伍', '10', '1416491543', '', '0', '0', '14'), ('64', '1', '6', '', 'shadowx', '地方', '6', '1416491558', '', '0', '0', '14'), ('65', '0', '7', '', 'shadowx', '地方', '6', '1416491558', '', '0', '0', '14'), ('66', '1', '7', '', '杰飞扬', '我来评价一些，good job.', '10', '1416564901', '', '0', '0', '16'), ('67', '0', '18', '', '杰飞扬', '我来评价一些，good job.', '10', '1416564901', '', '0', '0', '16'), ('68', '1', '7', '', '杰飞扬', '再跟一次评价！', '0', '1416564946', '', '0', '0', '16'), ('69', '0', '18', '', '杰飞扬', '再跟一次评价！', '0', '1416564946', '', '0', '0', '16'), ('70', '1', '6', '', 'shadowx', '霍华德j', '10', '1416582935', '', '0', '0', '14'), ('71', '0', '8', '', 'shadowx', '霍华德j', '10', '1416582935', '', '0', '0', '14'), ('72', '1', '6', '', 'shadowx', '还行', '10', '1417116431', '', '0', '0', '19'), ('73', '0', '8', '', 'shadowx', '还行', '10', '1417116431', '', '0', '0', '19'), ('74', '1', '6', '', 'Clever、', 'j j k k', '10', '1417500856', '', '0', '0', '21'), ('75', '0', '8', '', 'Clever、', 'j j k k', '10', '1417500856', '', '0', '0', '21'), ('62', '1', '6', '', 'shadowx', '俄长长的队伍', '10', '1416491543', '', '0', '0', '14'), ('59', '0', '7', '', 'shadowx', '好吧哈吧', '4', '1415962879', '', '0', '0', '14'), ('60', '0', '7', '', 'shadowx', '好吧哈吧的哟', '4', '1415963080', '', '0', '0', '14'), ('61', '0', '7', '', 'shadowx', '好的哟\n', '6', '1415963099', '', '1', '0', '14'), ('58', '0', '7', '', 'shadowx', '好吧哈吧', '4', '1415962833', '', '0', '0', '14');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_complaints`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_complaints`;
CREATE TABLE `ecs_complaints` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `open_id` varchar(128) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `user_name` varchar(60) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `feedback_id` varchar(60) NOT NULL DEFAULT '' COMMENT '投诉单号',
  `trans_id` varchar(60) NOT NULL DEFAULT '' COMMENT '交易订单号',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '投诉状态 0 未处理 1 处理中 2 已处理',
  `reason` varchar(256) NOT NULL DEFAULT '' COMMENT '投诉原因',
  `solution` text NOT NULL COMMENT '用户希望解决方案',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投诉时间',
  `admin_user` varchar(64) NOT NULL DEFAULT '' COMMENT '处理投诉管理员名',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '投诉处理时间',
  `message_img` varchar(255) NOT NULL DEFAULT '0' COMMENT '投诉图片地址,有多个图片以|来分隔',
  `order_sn` varchar(64) NOT NULL DEFAULT '' COMMENT '商户订单流水号',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL COMMENT '门店标识',
  `ext_info` varchar(256) NOT NULL DEFAULT '' COMMENT '备注信息+电话',
  PRIMARY KEY (`msg_id`),
  KEY `user_name` (`user_name`),
  KEY `order_sn` (`order_sn`),
  KEY `feedback_id` (`feedback_id`),
  KEY `suppliers_id` (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_crons`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_crons`;
CREATE TABLE `ecs_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_goods`;
CREATE TABLE `ecs_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_delivery_goods`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_delivery_goods` VALUES ('1', '1', '14', '0', '', 'Iphone5 Lighting防尘塞', '', 'ECS000014', '1', null, '0', '1', ''), ('2', '2', '8', '0', '', '洋葱专属荷兰冰滴咖啡(限时)', '', 'ECS000008', '1', null, '0', '1', ''), ('3', '3', '8', '0', '', '洋葱专属荷兰冰滴咖啡(限时)', '', 'ECS000008', '1', null, '0', '1', ''), ('4', '4', '12', '0', '', '卡布奇诺咖啡', '', 'ECS000012', '1', null, '0', '2', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_delivery_order`;
CREATE TABLE `ecs_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_delivery_order`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_delivery_order` VALUES ('1', '20141117112941268', 'oid-141117192535yf4c', '211', '', '1416223535', '1', '普通快递', '14', 'admin', '黄鑫', '江苏省 南京市 建邺区 集庆门大街218号 万达西地 邮编：210004', '0', '0', '0', '0', '\'\'', '\'\'', '210004', '', '13952040434', '\'\'', '\'\'', '\'\'', '0.00', '0.00', '1416223770', '0', '1', '0'), ('2', '20141202070960331', 'oid-141202125112dxqj', '117', null, '1417495872', '0', '', '21', 'admin', '周辰', '江苏省 南京市 秦淮区 秣陵路123号502室\r\n 邮编: 210001', '0', '0', '0', '0', '', '', '210001', '', '13851408794', '', '', '', '0.00', '0.00', '1417504176', '0', '2', '0'), ('3', '20141202071397835', 'oid-141202151216wftk', '119', 'SF00887182', '1417504336', '0', '', '21', 'admin', '周辰', '江苏省 南京市 秦淮区 秣陵路123号502室\r\n 邮编: 210001', '0', '0', '0', '0', '', '', '210001', '', '13851408794', '', '', '', '0.00', '0.00', '1417504385', '0', '0', '0'), ('4', '20141202100422511', '141202180206WZKIB2N', '121', '123', '1417514526', '0', '', '19', 'admin', '黄鑫', '江苏省 南京市 建邺区 集庆门大街218号 万达西地 邮编: 210004', '0', '0', '0', '0', '', '', '210004', '', '13952040434', '', '', '', '0.00', '0.00', '1417514648', '0', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_list`;
CREATE TABLE `ecs_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_email_sendlist`;
CREATE TABLE `ecs_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_error_log`;
CREATE TABLE `ecs_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_exchange_goods`;
CREATE TABLE `ecs_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_favourable_activity`;
CREATE TABLE `ecs_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_feedback`;
CREATE TABLE `ecs_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_friend_link`;
CREATE TABLE `ecs_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_friend_link`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_friend_link` VALUES ('1', 'ECSHOP 网上商店管理系统', 'http://www.ecshop.com/', 'http://www.ecshop.com/images/logo/ecshop_logo.gif', '50'), ('2', '买否网', 'http://www.maifou.net/', '', '51'), ('3', '免费开独立网店', 'http://www.wdwd.com/', '', '52');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods`;
CREATE TABLE `ecs_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  `use_start_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用开始日期',
  `use_end_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用截止日期',
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_goods`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_goods` VALUES ('9', '5', 'ECS000009', '免费活动券，抵50元', '+', '3', '0', '', '98', '0.000', '0.00', '0.00', '0.00', '1414771200', '1417276800', '1', '', '免费活动券，抵50元', '<p>免费活动券，抵50元</p>', 'images/201411/goods/thumb_img/9_thumb_G_1417112672785.jpg', 'images/201411/goods/goods_img/9_G_1417112672288.jpg', 'images/201411/goods/source_img/9_G_1417112672952.jpg', '0', '', '0', '1', '0', '0', '1415173570', '100', '0', '1', '0', '0', '1', '0', '1427699032', '1', '', '-1', '-1', '6', null, '1414771200', '1417276800'), ('10', '5', 'ECS000010', '免费活动券，抵100元', '+', '0', '0', '', '47', '0.000', '0.00', '0.00', '0.00', '1414771200', '1417276800', '1', '', '免费活动券，抵100元', '<p>免费活动券，抵100元</p>', 'images/201411/goods/thumb_img/10_thumb_G_1417112646505.jpg', 'images/201411/goods/goods_img/10_G_1417112646356.jpg', 'images/201411/goods/source_img/10_G_1417112646235.jpg', '0', '', '0', '1', '0', '0', '1415174369', '100', '0', '1', '0', '0', '1', '0', '1427699032', '1', '', '-1', '-1', '6', null, '1414771200', '1417276800'), ('6', '4', 'ECS000006', '依偎日式精致料理自助', '+', '2', '0', '', '100', '0.000', '158.00', '0.02', '0.00', '0', '0', '1', '', '仅售78元，价值158元单人自助午晚市，不限时段通用，免费WiFi！盛装开业，倾情酬宾，依偎日式精致料理自助牵手大众点评，单人自助餐500份限时限量！', ' 有效期 ：2014-10-31至2014-11-30\r\n预约信息：无需预约，如遇消费高峰时段您可能需要排队\r\n包厢信息：本单只适用于大厅，敬请谅解\r\n规则提醒：\r\n	自带酒水饮料事宜请您详询商家\r\n	不再与店内其他优惠同享\r\n商家服务：\r\n	提供免费WiFi\r\n	停车位信息详询商户\r\n温馨提示:\r\n菜品以当日商户提供为准\r\n如需团购券发票，请您在消费时向商户咨询', 'images/201410/goods/thumb_img/6_thumb_G_1414555719661.jpg', 'images/201410/goods/goods_img/6_G_1414555719350.jpg', 'images/201410/goods/source_img/6_G_1414555719735.jpg', '0', '', '1', '1', '0', '0', '1414555719', '100', '0', '0', '1', '0', '0', '0', '1417104547', '1', '', '-1', '-1', '5', null, '0', '0'), ('7', '4', 'ECS000007', '洋葱咖啡馆-工作餐团购', '+', '8', '0', '', '26', '0.000', '67.20', '0.01', '0.00', '1414771200', '1417276800', '1', '', '仅限堂食   点餐时出示本券，不折现、不找零', '<p>有效期 2014-08-18至2014-12-21 除外日期 每周六、周日不可用 端午节、国庆节、清明节不可用 2014-10-01至2014-10-07不可用 预约信息 无需预约，如遇消费高峰时段您可能需要排队 规则提醒 不再与店内其他优惠同享 温馨提示 如需团购券发票，请您在消费时向商户咨询</p>', 'images/201411/goods/thumb_img/7_thumb_G_1417112469843.jpg', 'images/201411/goods/goods_img/7_G_1417112469928.jpg', 'images/201411/goods/source_img/7_G_1417112469657.jpg', '0', '', '1', '1', '0', '0', '1414583196', '100', '0', '1', '0', '0', '1', '0', '1417261408', '1', '', '10', '-1', '6', null, '1416240000', '1421510400'), ('8', '4', 'ECS000008', '洋葱专属荷兰冰滴咖啡(限时)', '+', '3', '0', '', '91', '0.000', '0.01', '0.01', '0.00', '1416240000', '1418832000', '1', '', '冰滴式咖啡的优点为不酸涩、不伤胃，因为利用此法制作咖啡，所选用的咖啡豆多为如曼特宁的深焙咖啡豆，由于“浅焙香而酸，深焙苦但浓”因此，冰滴式咖啡不酸。', '<p>有效期</p>\r\n<p>2014-01-19至2014-11-02</p>\r\n<p>预约信息 请您提前1天预约</p>\r\n<p>规则提醒</p>\r\n<p>不再与店内其他优惠同享</p>\r\n<p>温馨提示</p>\r\n<p>如需团购券发票，请您在消费时向商户咨询</p>', 'images/201411/goods/thumb_img/8_thumb_G_1417107347701.jpg', 'images/201411/goods/goods_img/8_G_1417107347743.jpg', 'images/201411/goods/source_img/8_G_1417107347521.jpg', '1', '', '0', '1', '0', '0', '1414583433', '100', '0', '0', '0', '0', '1', '0', '1427699032', '1', '', '-1', '-1', '6', null, '1416240000', '1421510400'), ('11', '6', 'ECS000011', '抵用券面值100元', '+', '1', '0', '', '100', '0.000', '36.00', '30.00', '0.00', '1416240000', '1418832000', '1', '', '抵用券面值100元', '<p>抵用券面值100元</p>', 'images/201411/goods/thumb_img/11_thumb_G_1417113062558.jpg', 'images/201411/goods/goods_img/11_G_1417113062391.jpg', 'images/201411/goods/source_img/11_G_1417113062727.jpg', '1', '', '0', '1', '0', '0', '1415174490', '100', '0', '0', '0', '0', '1', '0', '1427699032', '1', '', '-1', '-1', '6', null, '1416240000', '1421510400'), ('12', '3', 'ECS000012', '卡布奇诺咖啡', '+', '5', '0', '', '44', '0.000', '108.00', '0.01', '0.00', '1414771200', '1417276800', '1', '', '普通商品，非团购', '<p>普通商品，非团购</p>', 'images/201411/goods/thumb_img/12_thumb_G_1417113118587.jpg', 'images/201411/goods/goods_img/12_G_1417113118600.jpg', 'images/201411/goods/source_img/12_G_1417113118993.jpg', '1', '', '0', '1', '0', '0', '1415174656', '100', '0', '0', '0', '0', '1', '0', '1427699032', '1', '', '-1', '-1', '6', null, '1414771200', '1417276800'), ('13', '9', 'ECS000013', 'KONKA康佳电饭煲 KRC-20MN20', '+', '0', '0', '', '99', '0.000', '860.00', '0.00', '0.00', '0', '0', '1', '', 'KONKA康佳电饭煲 KRC-20MN20', '【型      号】：KRC-20MN20\r\n【电      压】：220v~50Hz\r\n【功      率】：400w\r\n【容      量】：2L\r\n\r\n【材      质】：合金内胆\r\n【特      点】：\r\n1.塑料保温外壳，高贵典雅、骨瓷质感；\r\n2.煮饭营养不流失，具有煮饭、煮粥、热饭、蒸馒头、包子等多种全智能功能；\r\n3.全封闭微压力结构，底部加热，让米饭更松软；\r\n4.高强度合金铝内锅，经久耐用，煮饭保温自动切换；\r\n5.创新设计，保持锅内温度，节能省电。', 'images/201411/goods/thumb_img/13_thumb_G_1415244714185.jpg', 'images/201411/goods/goods_img/13_G_1415244714281.jpg', 'images/201411/goods/source_img/13_G_1415244714874.jpg', '1', '', '0', '1', '0', '20000', '1415244714', '100', '0', '0', '1', '1', '0', '0', '1427699032', '2', '', '-1', '-1', '0', null, '0', '0'), ('15', '9', 'ECS000015', '笑脸餐具六件套 DT-1303', '+', '3', '0', '', '297', '0.000', '168.00', '0.00', '0.00', '0', '0', '1', '', '华典世通 笑脸餐具六件套 DT-1303', '【品    牌】：HDST 华典世通\r\n【材    质】：不锈钢\r\n【规    格】：整套尺寸：27*18 cm，叉子：15*2.3 cm，瓜刨：13*5.7 cm,勺子：15*3 cm,开瓶器：8.5*3.6 cm，横扭勺：15*3.2 cm 竖扭勺：16.5*3 cm\r\n【商品说明】：大头家族餐具，居家必备哦。送客户，送家人，送朋友。\r\n五金全部是高档麻轮抛光，边缘光滑。外包装有透明袋包装。', 'images/201411/goods/thumb_img/15_thumb_G_1415245817059.jpg', 'images/201411/goods/goods_img/15_G_1415245817007.jpg', 'images/201411/goods/source_img/15_G_1415245817974.jpg', '1', '', '0', '1', '0', '16800', '1415245817', '100', '0', '1', '1', '1', '0', '0', '1427699032', '2', '', '-1', '-1', '0', null, '0', '0'), ('16', '5', 'ECS000016', '优惠券，抵现金30元', '+', '0', '0', '', '83', '0.000', '0.00', '0.00', '0.00', '1414771200', '1417276800', '1', '', '仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！', '<p>仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！</p>', 'images/201411/goods/thumb_img/16_thumb_G_1417112845177.jpg', 'images/201411/goods/goods_img/16_G_1417112845660.jpg', 'images/201411/goods/source_img/16_G_1417112845619.jpg', '0', '', '0', '1', '0', '0', '1415962319', '100', '0', '0', '0', '0', '1', '0', '1427699032', '1', '', '-1', '-1', '7', null, '1414771200', '1417276800'), ('17', '5', 'ECS000017', '优惠券，抵现金50元', '+', '0', '0', '', '92', '0.000', '0.00', '0.00', '0.00', '1414771200', '1417276800', '1', '', '仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！', '<p>仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！</p>', 'images/201411/goods/thumb_img/17_thumb_G_1417112823950.jpg', 'images/201411/goods/goods_img/17_G_1417112823259.jpg', 'images/201411/goods/source_img/17_G_1417112823072.jpg', '0', '', '0', '1', '0', '0', '1415962392', '100', '1', '0', '0', '0', '1', '0', '1428389536', '1', '', '-1', '-1', '7', null, '1414771200', '1417276800'), ('18', '5', 'ECS000018', '优惠券，抵现金80元', '+', '0', '0', '', '97', '0.000', '0.00', '0.00', '0.00', '1414771200', '1417276800', '1', '', '仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！', '<p>仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！</p>', 'images/201411/goods/thumb_img/18_thumb_G_1417112800389.jpg', 'images/201411/goods/goods_img/18_G_1417112800699.jpg', 'images/201411/goods/source_img/18_G_1417112800389.jpg', '0', '', '0', '1', '0', '0', '1415962428', '100', '1', '0', '0', '0', '1', '0', '1428389536', '1', '', '-1', '-1', '7', null, '1414771200', '1417276800'), ('19', '5', 'ECS000019', '优惠券，抵现金100元', '+', '0', '0', '', '98', '0.000', '0.00', '0.00', '0.00', '1414771200', '1417276800', '1', '', '仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！', '<p>仅售39元，价值384元欢唱券，免费停车位，可累计使用！缤纷欢唱停不下来！超值优惠，海量歌曲，等你来享！</p>', 'images/201411/goods/thumb_img/19_thumb_G_1417113028558.jpg', 'images/201411/goods/goods_img/19_G_1417113028793.jpg', 'images/201411/goods/source_img/19_G_1417113028825.jpg', '0', '', '0', '1', '0', '0', '1415962472', '100', '1', '0', '0', '0', '1', '0', '1428389484', '1', '', '-1', '-1', '7', null, '1414771200', '1417276800'), ('32', '7', 'ECS000032', 'test4', '+', '0', '0', '', '1', '0.000', '0.00', '0.00', '0.00', '1426089600', '1428768000', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1426151649', '100', '1', '0', '0', '0', '1', '0', '1428389361', '2', '', '-1', '-1', '0', null, '1426089600', '1428768000'), ('31', '5', 'ECS000031', 'test3', '+', '0', '0', '', '1', '0.000', '0.00', '0.00', '0.00', '1426089600', '1428768000', '1', '', '', '', '', '', '', '0', 'virtual_goods', '0', '1', '0', '0', '1426151611', '100', '1', '0', '0', '0', '1', '0', '1428389361', '1', '', '-1', '-1', '0', null, '1426089600', '1428768000'), ('29', '8', 'ECS000020', 'test1', '+', '0', '0', '', '1', '0.000', '0.00', '0.00', '0.00', '1426089600', '1428768000', '1', '', '', '', '', '', '', '1', '', '0', '1', '0', '0', '1426150897', '100', '1', '0', '0', '0', '1', '0', '1428389484', '1', '', '-1', '-1', '7', null, '1426089600', '1428768000'), ('30', '4', 'ECS000030', 'test2', '+', '0', '0', '', '1', '0.000', '0.00', '0.00', '0.00', '1426089600', '1428768000', '1', '', '', '', '', '', '', '0', 'virtual_goods', '0', '1', '0', '0', '1426150982', '100', '1', '0', '0', '0', '1', '0', '1428389473', '1', '', '-1', '-1', '7', null, '1426089600', '1428768000');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_activity`;
CREATE TABLE `ecs_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_article`;
CREATE TABLE `ecs_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_attr`;
CREATE TABLE `ecs_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_goods_attr`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_goods_attr` VALUES ('24', '12', '90', '无需提前预约', '0'), ('25', '12', '91', '支持随时退', '0'), ('26', '12', '92', '支持过期退', '0'), ('33', '8', '90', '需提前预约', '0'), ('34', '8', '91', '不支持随时退', '0'), ('35', '8', '92', '不支持过期退', '0'), ('30', '11', '90', '需提前预约', '0'), ('31', '11', '91', '支持随时退', '0'), ('32', '11', '92', '支持过期退', '0'), ('44', '29', '92', '支持过期退', '0'), ('43', '29', '91', '支持随时退', '0'), ('42', '29', '90', '需提前预约', '0'), ('46', '30', '91', '支持随时退', '0'), ('45', '30', '90', '需提前预约', '0'), ('47', '30', '92', '支持过期退', '0'), ('48', '31', '90', '需提前预约', '0'), ('49', '31', '91', '支持随时退', '0'), ('50', '31', '92', '支持过期退', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_cat`;
CREATE TABLE `ecs_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_gallery`;
CREATE TABLE `ecs_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_goods_gallery`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_goods_gallery` VALUES ('20', '9', 'images/201411/goods/goods_img/9_P_1415173570114.jpg', '', 'images/201411/goods/thumb_img/9_thumb_P_1415173570126.jpg', 'images/201411/goods/source_img/9_P_1415173570820.jpg'), ('21', '10', 'images/201411/goods/goods_img/10_P_1415174369751.jpg', '', 'images/201411/goods/thumb_img/10_thumb_P_1415174369233.jpg', 'images/201411/goods/source_img/10_P_1415174369665.jpg'), ('7', '6', 'images/201410/goods/goods_img/6_P_1414555719160.jpg', '', 'images/201410/goods/thumb_img/6_thumb_P_1414555719560.jpg', 'images/201410/goods/source_img/6_P_1414555719942.jpg'), ('8', '6', 'images/201410/goods/goods_img/6_P_1414555719004.jpg', '', 'images/201410/goods/thumb_img/6_thumb_P_1414555719712.jpg', 'images/201410/goods/source_img/6_P_1414555719127.jpg'), ('9', '6', 'images/201410/goods/goods_img/6_P_1414555719475.jpg', '', 'images/201410/goods/thumb_img/6_thumb_P_1414555719677.jpg', 'images/201410/goods/source_img/6_P_1414555719825.jpg'), ('10', '6', 'images/201410/goods/goods_img/6_P_1414555719348.jpg', '', 'images/201410/goods/thumb_img/6_thumb_P_1414555719475.jpg', 'images/201410/goods/source_img/6_P_1414555719351.jpg'), ('11', '7', 'images/201410/goods/goods_img/7_P_1414583196852.jpg', '', 'images/201410/goods/thumb_img/7_thumb_P_1414583196899.jpg', 'images/201410/goods/source_img/7_P_1414583196649.jpg'), ('12', '7', 'images/201410/goods/goods_img/7_P_1414583196525.jpg', '', 'images/201410/goods/thumb_img/7_thumb_P_1414583196051.jpg', 'images/201410/goods/source_img/7_P_1414583196773.jpg'), ('13', '7', 'images/201410/goods/goods_img/7_P_1414583197915.jpg', '', 'images/201410/goods/thumb_img/7_thumb_P_1414583197723.jpg', 'images/201410/goods/source_img/7_P_1414583197055.jpg'), ('14', '7', 'images/201410/goods/goods_img/7_P_1414583197369.jpg', '', 'images/201410/goods/thumb_img/7_thumb_P_1414583197680.jpg', 'images/201410/goods/source_img/7_P_1414583197238.jpg'), ('15', '7', 'images/201410/goods/goods_img/7_P_1414583197171.jpg', '', 'images/201410/goods/thumb_img/7_thumb_P_1414583197936.jpg', 'images/201410/goods/source_img/7_P_1414583197040.jpg'), ('38', '8', 'images/201411/goods/goods_img/8_P_1417105822057.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417105822289.jpg', 'images/201411/goods/source_img/8_P_1417105822390.jpg'), ('39', '8', 'images/201411/goods/goods_img/8_P_1417105844027.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417105844486.jpg', 'images/201411/goods/source_img/8_P_1417105844554.jpg'), ('40', '8', 'images/201411/goods/goods_img/8_P_1417106034716.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417106034794.jpg', 'images/201411/goods/source_img/8_P_1417106034113.jpg'), ('41', '8', 'images/201411/goods/goods_img/8_P_1417106827624.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417106827793.jpg', 'images/201411/goods/source_img/8_P_1417106827975.jpg'), ('22', '11', 'images/201411/goods/goods_img/11_P_1415174490481.jpg', '', 'images/201411/goods/thumb_img/11_thumb_P_1415174490529.jpg', 'images/201411/goods/source_img/11_P_1415174490180.jpg'), ('23', '12', 'images/201411/goods/goods_img/12_P_1415174656721.jpg', '', 'images/201411/goods/thumb_img/12_thumb_P_1415174656387.jpg', 'images/201411/goods/source_img/12_P_1415174656350.jpg'), ('24', '13', 'images/201411/goods/goods_img/13_P_1415244714680.jpg', '', 'images/201411/goods/thumb_img/13_thumb_P_1415244714575.jpg', 'images/201411/goods/source_img/13_P_1415244714435.jpg'), ('25', '13', 'images/201411/goods/goods_img/13_P_1415244714063.jpg', '', 'images/201411/goods/thumb_img/13_thumb_P_1415244714108.jpg', 'images/201411/goods/source_img/13_P_1415244714404.jpg'), ('26', '13', 'images/201411/goods/goods_img/13_P_1415244714506.jpg', '', 'images/201411/goods/thumb_img/13_thumb_P_1415244714719.jpg', 'images/201411/goods/source_img/13_P_1415244714020.jpg'), ('27', '13', 'images/201411/goods/goods_img/13_P_1415244714994.jpg', '', 'images/201411/goods/thumb_img/13_thumb_P_1415244714916.jpg', 'images/201411/goods/source_img/13_P_1415244714396.jpg'), ('45', '7', 'images/201411/goods/goods_img/7_P_1417112469104.jpg', '', 'images/201411/goods/thumb_img/7_thumb_P_1417112469456.jpg', 'images/201411/goods/source_img/7_P_1417112469687.jpg'), ('29', '15', 'images/201411/goods/goods_img/15_P_1415245817243.jpg', '', 'images/201411/goods/thumb_img/15_thumb_P_1415245817564.jpg', 'images/201411/goods/source_img/15_P_1415245817148.jpg'), ('30', '15', 'images/201411/goods/goods_img/15_P_1415245817957.jpg', '', 'images/201411/goods/thumb_img/15_thumb_P_1415245817772.jpg', 'images/201411/goods/source_img/15_P_1415245817350.jpg'), ('31', '15', 'images/201411/goods/goods_img/15_P_1415245817409.jpg', '', 'images/201411/goods/thumb_img/15_thumb_P_1415245817200.jpg', 'images/201411/goods/source_img/15_P_1415245817931.jpg'), ('32', '15', 'images/201411/goods/goods_img/15_P_1415245817716.jpg', '', 'images/201411/goods/thumb_img/15_thumb_P_1415245817989.jpg', 'images/201411/goods/source_img/15_P_1415245817003.jpg'), ('33', '16', 'images/201411/goods/goods_img/16_P_1415962319790.jpg', '', 'images/201411/goods/thumb_img/16_thumb_P_1415962319341.jpg', 'images/201411/goods/source_img/16_P_1415962319268.jpg'), ('34', '17', 'images/201411/goods/goods_img/17_P_1415962392422.jpg', '', 'images/201411/goods/thumb_img/17_thumb_P_1415962392540.jpg', 'images/201411/goods/source_img/17_P_1415962392161.jpg'), ('35', '18', 'images/201411/goods/goods_img/18_P_1415962428674.jpg', '', 'images/201411/goods/thumb_img/18_thumb_P_1415962428174.jpg', 'images/201411/goods/source_img/18_P_1415962428280.jpg'), ('36', '19', 'images/201411/goods/goods_img/19_P_1415962472713.jpg', '', 'images/201411/goods/thumb_img/19_thumb_P_1415962472393.jpg', 'images/201411/goods/source_img/19_P_1415962472945.jpg'), ('42', '8', 'images/201411/goods/goods_img/8_P_1417106894213.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417106894238.jpg', 'images/201411/goods/source_img/8_P_1417106894057.jpg'), ('43', '8', 'images/201411/goods/goods_img/8_P_1417107269623.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417107269561.jpg', 'images/201411/goods/source_img/8_P_1417107269541.jpg'), ('44', '8', 'images/201411/goods/goods_img/8_P_1417107347896.jpg', '', 'images/201411/goods/thumb_img/8_thumb_P_1417107347047.jpg', 'images/201411/goods/source_img/8_P_1417107347376.jpg'), ('46', '10', 'images/201411/goods/goods_img/10_P_1417112645287.jpg', '', 'images/201411/goods/thumb_img/10_thumb_P_1417112645162.jpg', 'images/201411/goods/source_img/10_P_1417112645305.jpg'), ('47', '10', 'images/201411/goods/goods_img/10_P_1417112646813.jpg', '', 'images/201411/goods/thumb_img/10_thumb_P_1417112646316.jpg', 'images/201411/goods/source_img/10_P_1417112646397.jpg'), ('48', '9', 'images/201411/goods/goods_img/9_P_1417112672087.jpg', '', 'images/201411/goods/thumb_img/9_thumb_P_1417112672786.jpg', 'images/201411/goods/source_img/9_P_1417112672025.jpg'), ('50', '19', 'images/201411/goods/goods_img/19_P_1417112771181.jpg', '', 'images/201411/goods/thumb_img/19_thumb_P_1417112771519.jpg', 'images/201411/goods/source_img/19_P_1417112771856.jpg'), ('51', '18', 'images/201411/goods/goods_img/18_P_1417112800365.jpg', '', 'images/201411/goods/thumb_img/18_thumb_P_1417112800882.jpg', 'images/201411/goods/source_img/18_P_1417112800825.jpg'), ('52', '17', 'images/201411/goods/goods_img/17_P_1417112823125.jpg', '', 'images/201411/goods/thumb_img/17_thumb_P_1417112823892.jpg', 'images/201411/goods/source_img/17_P_1417112823960.jpg'), ('53', '16', 'images/201411/goods/goods_img/16_P_1417112845423.jpg', '', 'images/201411/goods/thumb_img/16_thumb_P_1417112845902.jpg', 'images/201411/goods/source_img/16_P_1417112845511.jpg'), ('54', '19', 'images/201411/goods/goods_img/19_P_1417113028819.jpg', '', 'images/201411/goods/thumb_img/19_thumb_P_1417113028502.jpg', 'images/201411/goods/source_img/19_P_1417113028547.jpg'), ('55', '11', 'images/201411/goods/goods_img/11_P_1417113062820.jpg', '', 'images/201411/goods/thumb_img/11_thumb_P_1417113062223.jpg', 'images/201411/goods/source_img/11_P_1417113062474.jpg'), ('56', '12', 'images/201411/goods/goods_img/12_P_1417113118685.jpg', '', 'images/201411/goods/thumb_img/12_thumb_P_1417113118888.jpg', 'images/201411/goods/source_img/12_P_1417113118031.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_goods_type`;
CREATE TABLE `ecs_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_goods_type`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_goods_type` VALUES ('1', '团购商城', '1', ''), ('2', '积分商城', '1', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_group_goods`;
CREATE TABLE `ecs_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_keywords`;
CREATE TABLE `ecs_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_keywords`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_keywords` VALUES ('2014-05-12', 'ecshop', '猜', '1'), ('2014-10-22', 'ecshop', '美食', '2');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_link_goods`;
CREATE TABLE `ecs_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_mail_templates`;
CREATE TABLE `ecs_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_mail_templates`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_mail_templates` VALUES ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template'), ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template'), ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template'), ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template'), ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template'), ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template'), ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template'), ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template'), ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template'), ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template'), ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template'), ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template'), ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template'), ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_member_price`;
CREATE TABLE `ecs_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_nav`;
CREATE TABLE `ecs_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_action`;
CREATE TABLE `ecs_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_order_action`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_order_action` VALUES ('2', '114', 'admin', '1', '3', '2', '0', '', '1415761684'), ('3', '130', 'admin', '1', '0', '2', '0', '后台付款', '1415852301'), ('4', '138', 'admin', '1', '0', '2', '0', '测试', '1415863406'), ('5', '138', 'admin', '1', '3', '2', '0', '测试配货', '1415863458'), ('6', '211', 'admin', '1', '3', '2', '0', '', '1416223716'), ('7', '211', 'admin', '5', '5', '2', '0', '', '1416223770'), ('8', '211', 'admin', '1', '1', '2', '1', '测试发货', '1416223888'), ('9', '211', 'admin', '5', '2', '2', '0', '收货测试', '1416225018'), ('10', '211', 'admin', '4', '0', '0', '0', '退货测试', '1416225113'), ('11', '3', 'admin', '1', '0', '0', '0', '', '1416285006'), ('12', '3', 'admin', '4', '0', '0', '0', '退单', '1416299827'), ('13', '9', 'admin', '4', '0', '0', '0', '商品有瑕疵，我想买了', '1416301541'), ('14', '71', 'admin', '1', '0', '0', '0', '退款测试', '1416889298'), ('15', '117', 'admin', '1', '3', '2', '0', 'lll', '1417504142'), ('16', '117', 'admin', '5', '5', '2', '0', '555', '1417504176'), ('17', '119', 'admin', '5', '5', '2', '0', '11', '1417504385'), ('18', '119', 'admin', '1', '1', '2', '1', '顺丰：SF00887182', '1417507292'), ('19', '121', 'admin', '1', '3', '2', '0', '111', '1417514637'), ('20', '121', 'admin', '5', '5', '2', '0', '222', '1417514648'), ('21', '121', 'admin', '1', '1', '2', '1', '1111', '1417514692'), ('25', '118', 'admin', '3', '0', '0', '0', '无效的测试订购', '1427104873'), ('26', '115', 'admin', '3', '0', '0', '0', '无效的测试订购', '1427104874');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_goods`;
CREATE TABLE `ecs_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '' COMMENT '兑换码',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `exchange_status` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0-- 未使用, 1--已使用 2--已过期',
  `excode_exp_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换码过期时间',
  `exchange_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换时间',
  `action_user` varchar(30) NOT NULL DEFAULT '' COMMENT '兑换操作人',
  `excode_start_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换码开始使用时间',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `extension_code` (`extension_code`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_order_goods`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_order_goods` VALUES ('113', '93', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '0934 0069 36', '0', '0', '', '0', '0', '0', '', '0'), ('114', '94', '17', '优惠券，抵现金50元', 'ECS000017', '0', '1', '0.00', '0.00', '', '0', '0', '3366 4028 88', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('115', '95', '17', '优惠券，抵现金50元', 'ECS000017', '0', '1', '0.00', '0.00', '', '0', '0', '3421 7484 78', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('116', '96', '8', '洋葱专属荷兰冰滴咖啡(限时)', 'ECS000008', '0', '2', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('117', '97', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('118', '97', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('119', '97', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('120', '97', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('121', '98', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '4288 9588 27', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('122', '98', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '4288 2037 04', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('123', '98', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '4288 8472 72', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('124', '99', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '6341 9141 18', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('125', '100', '8', '洋葱专属荷兰冰滴咖啡(限时)', 'ECS000008', '0', '1', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('126', '101', '8', '洋葱专属荷兰冰滴咖啡(限时)', 'ECS000008', '0', '2', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('127', '102', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '6794 3885 22', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('128', '103', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '6798 4836 54', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('129', '104', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '6800 1491 47', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('130', '105', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '1235 8956 25', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('131', '106', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('132', '107', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1309 2909 38', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('133', '107', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1309 1267 20', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('134', '108', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '3311 6699 92', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('135', '109', '18', '优惠券，抵现金80元', 'ECS000018', '0', '1', '0.00', '0.00', '', '0', '0', '3416 6026 27', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('136', '110', '9', '免费活动券，抵50元', 'ECS000009', '0', '1', '0.00', '0.00', '', '0', '0', '3440 5308 25', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('137', '111', '10', '免费活动券，抵100元', 'ECS000010', '0', '1', '0.00', '0.00', '', '0', '0', '3444 3042 35', '0', '0', '', '1', '1417276800', '1417503103', '', '1414771200'), ('138', '112', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '5673 2119 76', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('139', '113', '8', '洋葱专属荷兰冰滴咖啡(限时)', 'ECS000008', '0', '2', '0.01', '0.01', '', '0', '1', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('140', '114', '12', '卡布奇诺咖啡', 'ECS000012', '0', '2', '108.00', '0.01', '', '0', '1', '', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('141', '115', '6', '依偎日式精致料理自助', 'ECS000006', '0', '1', '158.00', '0.02', '', '0', '0', '', '0', '0', '', '0', '0', '0', '', '0'), ('142', '115', '6', '依偎日式精致料理自助', 'ECS000006', '0', '1', '158.00', '0.02', '', '0', '0', '', '0', '0', '', '0', '0', '0', '', '0'), ('143', '116', '16', '优惠券，抵现金30元', 'ECS000016', '0', '1', '0.00', '0.00', '', '0', '0', '3367 6231 96', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('144', '117', '8', '洋葱专属荷兰冰滴咖啡(限时)', 'ECS000008', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('145', '118', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('146', '119', '8', '洋葱专属荷兰冰滴咖啡(限时)', 'ECS000008', '0', '1', '0.01', '0.01', '', '1', '1', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('147', '120', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1354 7475 10', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('148', '120', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1354 8168 24', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('149', '120', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1354 9061 75', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('150', '120', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1354 7011 81', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('151', '121', '12', '卡布奇诺咖啡', 'ECS000012', '0', '2', '108.00', '0.01', '', '2', '1', '', '0', '0', '', '0', '1417276800', '0', '', '1414771200'), ('152', '122', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('153', '122', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('155', '124', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '7919 7455 73', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('156', '124', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '7919 2225 86', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('157', '124', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '7919 6894 26', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('158', '124', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '7919 8594 36', '0', '0', '', '3', '1421510400', '0', '', '1416240000'), ('159', '125', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1319 4306 76', '0', '0', '', '5', '1421510400', '0', '', '1416240000'), ('160', '125', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1319 0913 44', '0', '0', '', '5', '1421510400', '0', '', '1416240000'), ('161', '125', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1319 6076 70', '0', '0', '', '0', '1421510400', '0', '', '1416240000'), ('162', '125', '7', '洋葱咖啡馆-工作餐团购', 'ECS000007', '0', '1', '67.20', '0.01', '', '0', '0', '1319 4815 57', '0', '0', '', '0', '1421510400', '0', '', '1416240000');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_order_info`;
CREATE TABLE `ecs_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(64) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '1',
  `pay_name` varchar(120) NOT NULL DEFAULT '微信支付',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) DEFAULT NULL COMMENT '机构标识',
  `inv_type` varchar(60) NOT NULL DEFAULT '',
  `tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL COMMENT '门店标识',
  `src_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单来源 1 团购商城 2, 积分商城',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `src_type` (`src_type`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_order_info`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_order_info` VALUES ('121', '141202180206WZKIB2N', '19', '5', '2', '2', '黄鑫', '0', '0', '0', '0', '江苏省 南京市 建邺区 集庆门大街218号 万达西地 邮编: 210004', '210004', '', '13952040434', '', '', '', '', '0', '', '1', '微信支付', '', '', '', '', '', '', '', '0.02', '0.00', '0.00', '0.00', '0.00', '0.00', '0.02', '0.00', '0', '0.00', '0.00', '0.02', '0', '', '1417514526', '1417514535', '0', '0', '0', '0', '0', '123', '', '0', '', '', null, '', '0.00', '0', '0', '0.00', '6', '1'), ('122', '141202180557RMS3MGE', '19', '1', '0', '0', '黄鑫', '0', '0', '0', '0', '江苏省 南京市 建邺区 集庆门大街218号 万达西地 邮编: 210004', '210004', '', '13952040434', '', '', '', '', '0', '', '1', '微信支付', '', '', '', '', '', '', '', '0.02', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '0.00', '0.00', '0.02', '0', '', '1417514757', '0', '0', '0', '0', '0', '0', '', '', '0', '', '', null, '', '0.00', '0', '0', '0.00', '6', '1'), ('124', '141203142507YP9RTNG', '21', '9', '2', '2', '周辰', '0', '0', '0', '0', '江苏省 南京市 秦淮区 秣陵路123号502室\n 邮编: 210001', '210001', '', '13851408794', '', '', '', '', '0', '', '1', '微信支付', '', '', '', '', '', '', '', '0.04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.04', '0.00', '0', '0.00', '0.00', '0.04', '0', '', '1417587907', '1417587919', '0', '0', '0', '0', '0', '', '', '0', '', '', null, '', '0.00', '0', '0', '0.00', '6', '1'), ('125', '1412031521481NFBZY8', '21', '1', '2', '2', '周辰', '0', '0', '0', '0', '江苏省 南京市 秦淮区 秣陵路123号502室\n 邮编: 210001', '210001', '', '13851408794', '', '', '', '', '0', '', '1', '微信支付', '', '', '', '', '', '', '', '0.04', '0.00', '0.00', '0.00', '0.00', '0.00', '0.04', '0.00', '0', '0.00', '0.00', '0.04', '0', '', '1417591308', '1417591319', '0', '1417591319', '0', '0', '0', '', '', '0', '', '', null, '', '0.00', '1', '0', '0.00', '6', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_pack`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pack`;
CREATE TABLE `ecs_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_package_goods`;
CREATE TABLE `ecs_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_pay_log`;
CREATE TABLE `ecs_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_sn` varchar(32) NOT NULL DEFAULT '' COMMENT '微信支付交易流水',
  `bank_type` varchar(16) NOT NULL DEFAULT '' COMMENT '银行类型名称',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '付款人标识',
  `process_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '处理类型 0 支付 1 退款申请（来自用户） 2 退款（来自商户）',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '生成时间',
  `paid_time` int(10) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `admin_user` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `admin_note` varchar(255) NOT NULL DEFAULT '' COMMENT '退款操作原因',
  `user_note` varchar(255) NOT NULL DEFAULT '' COMMENT '申请退款原因',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '处理类型 0 已支付 1 退款申请（来自用户） 2 退款（来自商户）3 已退款（完成流程结束）',
  `order_item_id` mediumint(8) NOT NULL DEFAULT '0' COMMENT 'ecs_order_goods rec_id',
  `order_sn` varchar(64) NOT NULL DEFAULT '' COMMENT '订单流水',
  PRIMARY KEY (`log_id`),
  KEY `pay_sn` (`pay_sn`),
  KEY `bank_type` (`bank_type`),
  KEY `user_id` (`user_id`),
  KEY `process_type` (`process_type`),
  KEY `order_sn` (`order_sn`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_pay_log`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_pay_log` VALUES ('45', '1008440263201411280006260586', 'CMB_DEBIT', '98', '3.00', '0', '1', '0', '0', '1417114288', '1417114288', '', '', '', '0', '0', 'oid-141128025121l607ah7'), ('43', '', '', '54', '0.01', '0', '0', '0', '1', '1417100139', '1417498945', 'admin', '退款完成', '买多了/买错了', '3', '66', 'oid-141121125741s2b1umg'), ('44', '', '', '42', '0.02', '0', '0', '0', '1', '1417100462', '1417498917', 'admin', '退款完成', '买多了/买错了', '3', '0', 'oid-141120221036p9u09mj'), ('46', '1008440263201411280006267298', 'CMB_DEBIT', '100', '1.00', '0', '1', '0', '0', '1417116377', '1417116377', '', '', '', '0', '0', 'oid-1411280326082rft5jd'), ('47', '1008440263201411280006260587', 'CMB_DEBIT', '101', '2.00', '0', '1', '0', '0', '1417116547', '1417116547', '', '', '', '0', '0', 'oid-141128032859acl12kx'), ('48', '1008440263201411290006299495', 'CMB_DEBIT', '107', '2.00', '0', '1', '0', '0', '1417261309', '1417261309', '', '', '', '0', '0', 'oid-141129194138sd5maco'), ('49', '1008440263201411290006308436', 'CMB_DEBIT', '113', '2.00', '0', '1', '0', '0', '1417265901', '1417265901', '', '', '', '0', '0', 'oid-14112920581323pqz1h'), ('50', '1008440263201412010006368223', 'CMB_DEBIT', '114', '2.00', '0', '1', '0', '0', '1417417992', '1417417992', '', '', '', '0', '0', 'oid-141201151303bqweo5t'), ('51', '1004330263201412020006409654', 'ABC_DEBIT', '117', '1.00', '0', '1', '0', '0', '1417495919', '1417495919', '', '', '', '0', '0', 'oid-141202125112dxqj8dh'), ('52', '', '', '107', '0.02', '0', '0', '0', '1', '1417503321', '1417503551', 'admin', '退款完成', '买多了/买错了', '3', '0', 'oid-141129194138sd5maco'), ('53', '', '', '114', '0.02', '0', '0', '0', '1', '1417503811', '1417504274', 'admin', '退款完成', '买多了/买错了', '3', '0', 'oid-141201151303bqweo5t'), ('54', '1004330263201412020006408169', 'ABC_DEBIT', '119', '1.00', '0', '1', '0', '0', '1417504349', '1417504349', '', '', '', '0', '0', 'oid-141202151216wftkf6m'), ('55', '', '', '98', '0.01', '0', '0', '0', '1', '1417510757', '1417514291', 'admin', '退款完成', '买多了/买错了', '3', '121', 'oid-141128025121l607ah7'), ('56', '', '', '98', '0.01', '0', '0', '0', '1', '1417510949', '1417514292', 'admin', '退款完成', '买多了/买错了', '3', '121', 'oid-141128025121l607ah7'), ('57', '', '', '98', '0.01', '0', '0', '0', '1', '1417510949', '1417514292', 'admin', '退款完成', '买多了/买错了', '3', '122', 'oid-141128025121l607ah7'), ('58', '1004330263201412020006422041', 'ABC_DEBIT', '120', '4.00', '0', '1', '0', '0', '1417511354', '1417511354', '', '', '', '0', '0', 'oid-14120217090353jd5wc'), ('59', '1008440263201412020006430050', 'CMB_DEBIT', '121', '2.00', '0', '1', '0', '0', '1417514535', '1417514535', '', '', '', '0', '0', '141202180206WZKIB2N'), ('60', '', '', '120', '0.01', '0', '0', '0', '1', '1417516387', '1417584837', 'admin', '退款完成', '买多了/买错了', '3', '147', 'oid-14120217090353jd5wc'), ('61', '', '', '117', '0.01', '0', '0', '0', '1', '1417585695', '1417585989', 'admin', '退款完成', '买多了/买错了', '3', '0', 'oid-141202125112dxqj8dh'), ('62', '1004330263201412030006465234', 'ABC_DEBIT', '124', '4.00', '0', '1', '0', '0', '1417587919', '1417587919', '', '', '', '0', '0', '141203142507YP9RTNG'), ('63', '', '', '98', '0.01', '0', '0', '0', '1', '1417588056', '1417588081', 'admin', '退款完成', '买多了/买错了', '3', '121', 'oid-141128025121l607ah7'), ('64', '', '', '98', '-0.01', '0', '0', '0', '1', '1417590652', '1417590716', 'admin', '退款完成', '买多了/买错了', '3', '121', 'oid-141128025121l607ah7'), ('65', '', '', '124', '0.04', '0', '0', '0', '1', '1417591148', '1417591202', 'admin', '退款完成', '买多了/买错了', '3', '0', '141203142507YP9RTNG'), ('66', '1004330263201412030006460926', 'ABC_DEBIT', '125', '4.00', '0', '1', '0', '0', '1417591319', '1417591319', '', '', '', '0', '0', '1412031521481NFBZY8'), ('67', '', '', '125', '0.01', '0', '0', '0', '1', '1417591369', '1417594416', 'admin', '退款完成', '买多了/买错了', '3', '159', '1412031521481NFBZY8'), ('68', '', '', '125', '0.01', '0', '0', '0', '1', '1417591514', '1418982480', 'admin', '退款完成', '买多了/买错了', '3', '159', '1412031521481NFBZY8'), ('69', '', '', '125', '0.01', '0', '0', '0', '1', '1417591514', '1418982481', 'admin', '退款完成', '买多了/买错了', '3', '160', '1412031521481NFBZY8');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_payment`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_payment`;
CREATE TABLE `ecs_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_payment`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_payment` VALUES ('1', 'wx_pay', '<font color=\"#FF0000\">微信支付</font>', '0', '微信支付描述', '0', '支付配置参数', '1', '0', '1'), ('2', 'm_integral', '<font color=\"#FF0000\">消费积分支付</font>', '0', '积分支付描述', '0', '支付配置参数', '1', '0', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_place`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_place`;
CREATE TABLE `ecs_place` (
  `place_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '行政区域',
  `place_name` varchar(120) NOT NULL DEFAULT '',
  `place_type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '位置类型',
  `map_lat` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '位置经度',
  `map_lng` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '位置纬度',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`place_id`),
  KEY `region_id` (`region_id`),
  KEY `place_type` (`place_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_place`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_place` VALUES ('1', '1770', '新街口', '2', '0.000000', '0.000000', '0'), ('2', '1784', '新街口', '2', '0.000000', '0.000000', '0'), ('3', '1834', '新街口', '2', '0.000000', '0.000000', '0'), ('4', '1838', '新街口', '2', '0.000000', '0.000000', '0'), ('5', '1836', '父子庙', '2', '0.000000', '0.000000', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_plugins`;
CREATE TABLE `ecs_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_products`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_products`;
CREATE TABLE `ecs_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_extend_info`;
CREATE TABLE `ecs_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_reg_fields`;
CREATE TABLE `ecs_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_reg_fields`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_reg_fields` VALUES ('1', 'MSN', '0', '0', '1', '0'), ('2', 'QQ', '0', '1', '1', '1'), ('3', '办公电话', '0', '0', '1', '0'), ('4', '家庭电话', '0', '0', '1', '0'), ('5', '手机', '0', '1', '1', '1'), ('6', '密码找回问题', '0', '1', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_region`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_region`;
CREATE TABLE `ecs_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_region`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_region` VALUES ('1', '0', '中国', '0', '0'), ('2', '1', '北京', '1', '0'), ('3', '1', '安徽', '1', '0'), ('4', '1', '福建', '1', '0'), ('5', '1', '甘肃', '1', '0'), ('6', '1', '广东', '1', '0'), ('7', '1', '广西', '1', '0'), ('8', '1', '贵州', '1', '0'), ('9', '1', '海南', '1', '0'), ('10', '1', '河北', '1', '0'), ('11', '1', '河南', '1', '0'), ('12', '1', '黑龙江', '1', '0'), ('13', '1', '湖北', '1', '0'), ('14', '1', '湖南', '1', '0'), ('15', '1', '吉林', '1', '0'), ('16', '1', '江苏', '1', '0'), ('17', '1', '江西', '1', '0'), ('18', '1', '辽宁', '1', '0'), ('19', '1', '内蒙古', '1', '0'), ('20', '1', '宁夏', '1', '0'), ('21', '1', '青海', '1', '0'), ('22', '1', '山东', '1', '0'), ('23', '1', '山西', '1', '0'), ('24', '1', '陕西', '1', '0'), ('25', '1', '上海', '1', '0'), ('26', '1', '四川', '1', '0'), ('27', '1', '天津', '1', '0'), ('28', '1', '西藏', '1', '0'), ('29', '1', '新疆', '1', '0'), ('30', '1', '云南', '1', '0'), ('31', '1', '浙江', '1', '0'), ('32', '1', '重庆', '1', '0'), ('33', '1', '香港', '1', '0'), ('34', '1', '澳门', '1', '0'), ('35', '1', '台湾', '1', '0'), ('36', '3', '安庆', '2', '0'), ('37', '3', '蚌埠', '2', '0'), ('38', '3', '巢湖', '2', '0'), ('39', '3', '池州', '2', '0'), ('40', '3', '滁州', '2', '0'), ('41', '3', '阜阳', '2', '0'), ('42', '3', '淮北', '2', '0'), ('43', '3', '淮南', '2', '0'), ('44', '3', '黄山', '2', '0'), ('45', '3', '六安', '2', '0'), ('46', '3', '马鞍山', '2', '0'), ('47', '3', '宿州', '2', '0'), ('48', '3', '铜陵', '2', '0'), ('49', '3', '芜湖', '2', '0'), ('50', '3', '宣城', '2', '0'), ('51', '3', '亳州', '2', '0'), ('52', '2', '北京', '2', '0'), ('53', '4', '福州', '2', '0'), ('54', '4', '龙岩', '2', '0'), ('55', '4', '南平', '2', '0'), ('56', '4', '宁德', '2', '0'), ('57', '4', '莆田', '2', '0'), ('58', '4', '泉州', '2', '0'), ('59', '4', '三明', '2', '0'), ('60', '4', '厦门', '2', '0'), ('61', '4', '漳州', '2', '0'), ('62', '5', '兰州', '2', '0'), ('63', '5', '白银', '2', '0'), ('64', '5', '定西', '2', '0'), ('65', '5', '甘南', '2', '0'), ('66', '5', '嘉峪关', '2', '0'), ('67', '5', '金昌', '2', '0'), ('68', '5', '酒泉', '2', '0'), ('69', '5', '临夏', '2', '0'), ('70', '5', '陇南', '2', '0'), ('71', '5', '平凉', '2', '0'), ('72', '5', '庆阳', '2', '0'), ('73', '5', '天水', '2', '0'), ('74', '5', '武威', '2', '0'), ('75', '5', '张掖', '2', '0'), ('76', '6', '广州', '2', '0'), ('77', '6', '深圳', '2', '0'), ('78', '6', '潮州', '2', '0'), ('79', '6', '东莞', '2', '0'), ('80', '6', '佛山', '2', '0'), ('81', '6', '河源', '2', '0'), ('82', '6', '惠州', '2', '0'), ('83', '6', '江门', '2', '0'), ('84', '6', '揭阳', '2', '0'), ('85', '6', '茂名', '2', '0'), ('86', '6', '梅州', '2', '0'), ('87', '6', '清远', '2', '0'), ('88', '6', '汕头', '2', '0'), ('89', '6', '汕尾', '2', '0'), ('90', '6', '韶关', '2', '0'), ('91', '6', '阳江', '2', '0'), ('92', '6', '云浮', '2', '0'), ('93', '6', '湛江', '2', '0'), ('94', '6', '肇庆', '2', '0'), ('95', '6', '中山', '2', '0'), ('96', '6', '珠海', '2', '0'), ('97', '7', '南宁', '2', '0'), ('98', '7', '桂林', '2', '0'), ('99', '7', '百色', '2', '0'), ('100', '7', '北海', '2', '0'), ('101', '7', '崇左', '2', '0'), ('102', '7', '防城港', '2', '0'), ('103', '7', '贵港', '2', '0'), ('104', '7', '河池', '2', '0'), ('105', '7', '贺州', '2', '0'), ('106', '7', '来宾', '2', '0'), ('107', '7', '柳州', '2', '0'), ('108', '7', '钦州', '2', '0'), ('109', '7', '梧州', '2', '0'), ('110', '7', '玉林', '2', '0'), ('111', '8', '贵阳', '2', '0'), ('112', '8', '安顺', '2', '0'), ('113', '8', '毕节', '2', '0'), ('114', '8', '六盘水', '2', '0'), ('115', '8', '黔东南', '2', '0'), ('116', '8', '黔南', '2', '0'), ('117', '8', '黔西南', '2', '0'), ('118', '8', '铜仁', '2', '0'), ('119', '8', '遵义', '2', '0'), ('120', '9', '海口', '2', '0'), ('121', '9', '三亚', '2', '0'), ('122', '9', '白沙', '2', '0'), ('123', '9', '保亭', '2', '0'), ('124', '9', '昌江', '2', '0'), ('125', '9', '澄迈县', '2', '0'), ('126', '9', '定安县', '2', '0'), ('127', '9', '东方', '2', '0'), ('128', '9', '乐东', '2', '0'), ('129', '9', '临高县', '2', '0'), ('130', '9', '陵水', '2', '0'), ('131', '9', '琼海', '2', '0'), ('132', '9', '琼中', '2', '0'), ('133', '9', '屯昌县', '2', '0'), ('134', '9', '万宁', '2', '0'), ('135', '9', '文昌', '2', '0'), ('136', '9', '五指山', '2', '0'), ('137', '9', '儋州', '2', '0'), ('138', '10', '石家庄', '2', '0'), ('139', '10', '保定', '2', '0'), ('140', '10', '沧州', '2', '0'), ('141', '10', '承德', '2', '0'), ('142', '10', '邯郸', '2', '0'), ('143', '10', '衡水', '2', '0'), ('144', '10', '廊坊', '2', '0'), ('145', '10', '秦皇岛', '2', '0'), ('146', '10', '唐山', '2', '0'), ('147', '10', '邢台', '2', '0'), ('148', '10', '张家口', '2', '0'), ('149', '11', '郑州', '2', '0'), ('150', '11', '洛阳', '2', '0'), ('151', '11', '开封', '2', '0'), ('152', '11', '安阳', '2', '0'), ('153', '11', '鹤壁', '2', '0'), ('154', '11', '济源', '2', '0'), ('155', '11', '焦作', '2', '0'), ('156', '11', '南阳', '2', '0'), ('157', '11', '平顶山', '2', '0'), ('158', '11', '三门峡', '2', '0'), ('159', '11', '商丘', '2', '0'), ('160', '11', '新乡', '2', '0'), ('161', '11', '信阳', '2', '0'), ('162', '11', '许昌', '2', '0'), ('163', '11', '周口', '2', '0'), ('164', '11', '驻马店', '2', '0'), ('165', '11', '漯河', '2', '0'), ('166', '11', '濮阳', '2', '0'), ('167', '12', '哈尔滨', '2', '0'), ('168', '12', '大庆', '2', '0'), ('169', '12', '大兴安岭', '2', '0'), ('170', '12', '鹤岗', '2', '0'), ('171', '12', '黑河', '2', '0'), ('172', '12', '鸡西', '2', '0'), ('173', '12', '佳木斯', '2', '0'), ('174', '12', '牡丹江', '2', '0'), ('175', '12', '七台河', '2', '0'), ('176', '12', '齐齐哈尔', '2', '0'), ('177', '12', '双鸭山', '2', '0'), ('178', '12', '绥化', '2', '0'), ('179', '12', '伊春', '2', '0'), ('180', '13', '武汉', '2', '0'), ('181', '13', '仙桃', '2', '0'), ('182', '13', '鄂州', '2', '0'), ('183', '13', '黄冈', '2', '0'), ('184', '13', '黄石', '2', '0'), ('185', '13', '荆门', '2', '0'), ('186', '13', '荆州', '2', '0'), ('187', '13', '潜江', '2', '0'), ('188', '13', '神农架林区', '2', '0'), ('189', '13', '十堰', '2', '0'), ('190', '13', '随州', '2', '0'), ('191', '13', '天门', '2', '0'), ('192', '13', '咸宁', '2', '0'), ('193', '13', '襄樊', '2', '0'), ('194', '13', '孝感', '2', '0'), ('195', '13', '宜昌', '2', '0'), ('196', '13', '恩施', '2', '0'), ('197', '14', '长沙', '2', '0'), ('198', '14', '张家界', '2', '0'), ('199', '14', '常德', '2', '0'), ('200', '14', '郴州', '2', '0'), ('201', '14', '衡阳', '2', '0'), ('202', '14', '怀化', '2', '0'), ('203', '14', '娄底', '2', '0'), ('204', '14', '邵阳', '2', '0'), ('205', '14', '湘潭', '2', '0'), ('206', '14', '湘西', '2', '0'), ('207', '14', '益阳', '2', '0'), ('208', '14', '永州', '2', '0'), ('209', '14', '岳阳', '2', '0'), ('210', '14', '株洲', '2', '0'), ('211', '15', '长春', '2', '0'), ('212', '15', '吉林', '2', '0'), ('213', '15', '白城', '2', '0'), ('214', '15', '白山', '2', '0'), ('215', '15', '辽源', '2', '0'), ('216', '15', '四平', '2', '0'), ('217', '15', '松原', '2', '0'), ('218', '15', '通化', '2', '0'), ('219', '15', '延边', '2', '0'), ('220', '16', '南京', '2', '0'), ('221', '16', '苏州', '2', '0'), ('222', '16', '无锡', '2', '0'), ('223', '16', '常州', '2', '0'), ('224', '16', '淮安', '2', '0'), ('225', '16', '连云港', '2', '0'), ('226', '16', '南通', '2', '0'), ('227', '16', '宿迁', '2', '0'), ('228', '16', '泰州', '2', '0'), ('229', '16', '徐州', '2', '0'), ('230', '16', '盐城', '2', '0'), ('231', '16', '扬州', '2', '0'), ('232', '16', '镇江', '2', '0'), ('233', '17', '南昌', '2', '0'), ('234', '17', '抚州', '2', '0'), ('235', '17', '赣州', '2', '0'), ('236', '17', '吉安', '2', '0'), ('237', '17', '景德镇', '2', '0'), ('238', '17', '九江', '2', '0'), ('239', '17', '萍乡', '2', '0'), ('240', '17', '上饶', '2', '0'), ('241', '17', '新余', '2', '0'), ('242', '17', '宜春', '2', '0'), ('243', '17', '鹰潭', '2', '0'), ('244', '18', '沈阳', '2', '0'), ('245', '18', '大连', '2', '0'), ('246', '18', '鞍山', '2', '0'), ('247', '18', '本溪', '2', '0'), ('248', '18', '朝阳', '2', '0'), ('249', '18', '丹东', '2', '0'), ('250', '18', '抚顺', '2', '0'), ('251', '18', '阜新', '2', '0'), ('252', '18', '葫芦岛', '2', '0'), ('253', '18', '锦州', '2', '0'), ('254', '18', '辽阳', '2', '0'), ('255', '18', '盘锦', '2', '0'), ('256', '18', '铁岭', '2', '0'), ('257', '18', '营口', '2', '0'), ('258', '19', '呼和浩特', '2', '0'), ('259', '19', '阿拉善盟', '2', '0'), ('260', '19', '巴彦淖尔盟', '2', '0'), ('261', '19', '包头', '2', '0'), ('262', '19', '赤峰', '2', '0'), ('263', '19', '鄂尔多斯', '2', '0'), ('264', '19', '呼伦贝尔', '2', '0'), ('265', '19', '通辽', '2', '0'), ('266', '19', '乌海', '2', '0'), ('267', '19', '乌兰察布市', '2', '0'), ('268', '19', '锡林郭勒盟', '2', '0'), ('269', '19', '兴安盟', '2', '0'), ('270', '20', '银川', '2', '0'), ('271', '20', '固原', '2', '0'), ('272', '20', '石嘴山', '2', '0'), ('273', '20', '吴忠', '2', '0'), ('274', '20', '中卫', '2', '0'), ('275', '21', '西宁', '2', '0'), ('276', '21', '果洛', '2', '0'), ('277', '21', '海北', '2', '0'), ('278', '21', '海东', '2', '0'), ('279', '21', '海南', '2', '0'), ('280', '21', '海西', '2', '0'), ('281', '21', '黄南', '2', '0'), ('282', '21', '玉树', '2', '0'), ('283', '22', '济南', '2', '0'), ('284', '22', '青岛', '2', '0'), ('285', '22', '滨州', '2', '0'), ('286', '22', '德州', '2', '0'), ('287', '22', '东营', '2', '0'), ('288', '22', '菏泽', '2', '0'), ('289', '22', '济宁', '2', '0'), ('290', '22', '莱芜', '2', '0'), ('291', '22', '聊城', '2', '0'), ('292', '22', '临沂', '2', '0'), ('293', '22', '日照', '2', '0'), ('294', '22', '泰安', '2', '0'), ('295', '22', '威海', '2', '0'), ('296', '22', '潍坊', '2', '0'), ('297', '22', '烟台', '2', '0'), ('298', '22', '枣庄', '2', '0'), ('299', '22', '淄博', '2', '0'), ('300', '23', '太原', '2', '0'), ('301', '23', '长治', '2', '0'), ('302', '23', '大同', '2', '0'), ('303', '23', '晋城', '2', '0'), ('304', '23', '晋中', '2', '0'), ('305', '23', '临汾', '2', '0'), ('306', '23', '吕梁', '2', '0'), ('307', '23', '朔州', '2', '0'), ('308', '23', '忻州', '2', '0'), ('309', '23', '阳泉', '2', '0'), ('310', '23', '运城', '2', '0'), ('311', '24', '西安', '2', '0'), ('312', '24', '安康', '2', '0'), ('313', '24', '宝鸡', '2', '0'), ('314', '24', '汉中', '2', '0'), ('315', '24', '商洛', '2', '0'), ('316', '24', '铜川', '2', '0'), ('317', '24', '渭南', '2', '0'), ('318', '24', '咸阳', '2', '0'), ('319', '24', '延安', '2', '0'), ('320', '24', '榆林', '2', '0'), ('321', '25', '上海', '2', '0'), ('322', '26', '成都', '2', '0'), ('323', '26', '绵阳', '2', '0'), ('324', '26', '阿坝', '2', '0'), ('325', '26', '巴中', '2', '0'), ('326', '26', '达州', '2', '0'), ('327', '26', '德阳', '2', '0'), ('328', '26', '甘孜', '2', '0'), ('329', '26', '广安', '2', '0'), ('330', '26', '广元', '2', '0'), ('331', '26', '乐山', '2', '0'), ('332', '26', '凉山', '2', '0'), ('333', '26', '眉山', '2', '0'), ('334', '26', '南充', '2', '0'), ('335', '26', '内江', '2', '0'), ('336', '26', '攀枝花', '2', '0'), ('337', '26', '遂宁', '2', '0'), ('338', '26', '雅安', '2', '0'), ('339', '26', '宜宾', '2', '0'), ('340', '26', '资阳', '2', '0'), ('341', '26', '自贡', '2', '0'), ('342', '26', '泸州', '2', '0'), ('343', '27', '天津', '2', '0'), ('344', '28', '拉萨', '2', '0'), ('345', '28', '阿里', '2', '0'), ('346', '28', '昌都', '2', '0'), ('347', '28', '林芝', '2', '0'), ('348', '28', '那曲', '2', '0'), ('349', '28', '日喀则', '2', '0'), ('350', '28', '山南', '2', '0'), ('351', '29', '乌鲁木齐', '2', '0'), ('352', '29', '阿克苏', '2', '0'), ('353', '29', '阿拉尔', '2', '0'), ('354', '29', '巴音郭楞', '2', '0'), ('355', '29', '博尔塔拉', '2', '0'), ('356', '29', '昌吉', '2', '0'), ('357', '29', '哈密', '2', '0'), ('358', '29', '和田', '2', '0'), ('359', '29', '喀什', '2', '0'), ('360', '29', '克拉玛依', '2', '0'), ('361', '29', '克孜勒苏', '2', '0'), ('362', '29', '石河子', '2', '0'), ('363', '29', '图木舒克', '2', '0'), ('364', '29', '吐鲁番', '2', '0'), ('365', '29', '五家渠', '2', '0'), ('366', '29', '伊犁', '2', '0'), ('367', '30', '昆明', '2', '0'), ('368', '30', '怒江', '2', '0'), ('369', '30', '普洱', '2', '0'), ('370', '30', '丽江', '2', '0'), ('371', '30', '保山', '2', '0'), ('372', '30', '楚雄', '2', '0'), ('373', '30', '大理', '2', '0'), ('374', '30', '德宏', '2', '0'), ('375', '30', '迪庆', '2', '0'), ('376', '30', '红河', '2', '0'), ('377', '30', '临沧', '2', '0'), ('378', '30', '曲靖', '2', '0'), ('379', '30', '文山', '2', '0'), ('380', '30', '西双版纳', '2', '0'), ('381', '30', '玉溪', '2', '0'), ('382', '30', '昭通', '2', '0'), ('383', '31', '杭州', '2', '0'), ('384', '31', '湖州', '2', '0'), ('385', '31', '嘉兴', '2', '0'), ('386', '31', '金华', '2', '0'), ('387', '31', '丽水', '2', '0'), ('388', '31', '宁波', '2', '0'), ('389', '31', '绍兴', '2', '0'), ('390', '31', '台州', '2', '0'), ('391', '31', '温州', '2', '0'), ('392', '31', '舟山', '2', '0'), ('393', '31', '衢州', '2', '0'), ('394', '32', '重庆', '2', '0'), ('395', '33', '香港', '2', '0'), ('396', '34', '澳门', '2', '0'), ('397', '35', '台湾', '2', '0'), ('398', '36', '迎江区', '3', '0'), ('399', '36', '大观区', '3', '0'), ('400', '36', '宜秀区', '3', '0'), ('401', '36', '桐城市', '3', '0'), ('402', '36', '怀宁县', '3', '0'), ('403', '36', '枞阳县', '3', '0'), ('404', '36', '潜山县', '3', '0'), ('405', '36', '太湖县', '3', '0'), ('406', '36', '宿松县', '3', '0'), ('407', '36', '望江县', '3', '0'), ('408', '36', '岳西县', '3', '0'), ('409', '37', '中市区', '3', '0'), ('410', '37', '东市区', '3', '0'), ('411', '37', '西市区', '3', '0'), ('412', '37', '郊区', '3', '0'), ('413', '37', '怀远县', '3', '0'), ('414', '37', '五河县', '3', '0'), ('415', '37', '固镇县', '3', '0'), ('416', '38', '居巢区', '3', '0'), ('417', '38', '庐江县', '3', '0'), ('418', '38', '无为县', '3', '0'), ('419', '38', '含山县', '3', '0'), ('420', '38', '和县', '3', '0'), ('421', '39', '贵池区', '3', '0'), ('422', '39', '东至县', '3', '0'), ('423', '39', '石台县', '3', '0'), ('424', '39', '青阳县', '3', '0'), ('425', '40', '琅琊区', '3', '0'), ('426', '40', '南谯区', '3', '0'), ('427', '40', '天长市', '3', '0'), ('428', '40', '明光市', '3', '0'), ('429', '40', '来安县', '3', '0'), ('430', '40', '全椒县', '3', '0'), ('431', '40', '定远县', '3', '0'), ('432', '40', '凤阳县', '3', '0'), ('433', '41', '蚌山区', '3', '0'), ('434', '41', '龙子湖区', '3', '0'), ('435', '41', '禹会区', '3', '0'), ('436', '41', '淮上区', '3', '0'), ('437', '41', '颍州区', '3', '0'), ('438', '41', '颍东区', '3', '0'), ('439', '41', '颍泉区', '3', '0'), ('440', '41', '界首市', '3', '0'), ('441', '41', '临泉县', '3', '0'), ('442', '41', '太和县', '3', '0'), ('443', '41', '阜南县', '3', '0'), ('444', '41', '颖上县', '3', '0'), ('445', '42', '相山区', '3', '0'), ('446', '42', '杜集区', '3', '0'), ('447', '42', '烈山区', '3', '0'), ('448', '42', '濉溪县', '3', '0'), ('449', '43', '田家庵区', '3', '0'), ('450', '43', '大通区', '3', '0'), ('451', '43', '谢家集区', '3', '0'), ('452', '43', '八公山区', '3', '0'), ('453', '43', '潘集区', '3', '0'), ('454', '43', '凤台县', '3', '0'), ('455', '44', '屯溪区', '3', '0'), ('456', '44', '黄山区', '3', '0'), ('457', '44', '徽州区', '3', '0'), ('458', '44', '歙县', '3', '0'), ('459', '44', '休宁县', '3', '0'), ('460', '44', '黟县', '3', '0'), ('461', '44', '祁门县', '3', '0'), ('462', '45', '金安区', '3', '0'), ('463', '45', '裕安区', '3', '0'), ('464', '45', '寿县', '3', '0'), ('465', '45', '霍邱县', '3', '0'), ('466', '45', '舒城县', '3', '0'), ('467', '45', '金寨县', '3', '0'), ('468', '45', '霍山县', '3', '0'), ('469', '46', '雨山区', '3', '0'), ('470', '46', '花山区', '3', '0'), ('471', '46', '金家庄区', '3', '0'), ('472', '46', '当涂县', '3', '0'), ('473', '47', '埇桥区', '3', '0'), ('474', '47', '砀山县', '3', '0'), ('475', '47', '萧县', '3', '0'), ('476', '47', '灵璧县', '3', '0'), ('477', '47', '泗县', '3', '0'), ('478', '48', '铜官山区', '3', '0'), ('479', '48', '狮子山区', '3', '0'), ('480', '48', '郊区', '3', '0'), ('481', '48', '铜陵县', '3', '0'), ('482', '49', '镜湖区', '3', '0'), ('483', '49', '弋江区', '3', '0'), ('484', '49', '鸠江区', '3', '0'), ('485', '49', '三山区', '3', '0'), ('486', '49', '芜湖县', '3', '0'), ('487', '49', '繁昌县', '3', '0'), ('488', '49', '南陵县', '3', '0'), ('489', '50', '宣州区', '3', '0'), ('490', '50', '宁国市', '3', '0'), ('491', '50', '郎溪县', '3', '0'), ('492', '50', '广德县', '3', '0'), ('493', '50', '泾县', '3', '0'), ('494', '50', '绩溪县', '3', '0'), ('495', '50', '旌德县', '3', '0'), ('496', '51', '涡阳县', '3', '0'), ('497', '51', '蒙城县', '3', '0'), ('498', '51', '利辛县', '3', '0'), ('499', '51', '谯城区', '3', '0'), ('500', '52', '东城区', '3', '0'), ('501', '52', '西城区', '3', '0'), ('502', '52', '海淀区', '3', '0'), ('503', '52', '朝阳区', '3', '0'), ('504', '52', '崇文区', '3', '0'), ('505', '52', '宣武区', '3', '0'), ('506', '52', '丰台区', '3', '0'), ('507', '52', '石景山区', '3', '0'), ('508', '52', '房山区', '3', '0'), ('509', '52', '门头沟区', '3', '0'), ('510', '52', '通州区', '3', '0'), ('511', '52', '顺义区', '3', '0'), ('512', '52', '昌平区', '3', '0'), ('513', '52', '怀柔区', '3', '0'), ('514', '52', '平谷区', '3', '0'), ('515', '52', '大兴区', '3', '0'), ('516', '52', '密云县', '3', '0'), ('517', '52', '延庆县', '3', '0'), ('518', '53', '鼓楼区', '3', '0'), ('519', '53', '台江区', '3', '0'), ('520', '53', '仓山区', '3', '0'), ('521', '53', '马尾区', '3', '0'), ('522', '53', '晋安区', '3', '0'), ('523', '53', '福清市', '3', '0'), ('524', '53', '长乐市', '3', '0'), ('525', '53', '闽侯县', '3', '0'), ('526', '53', '连江县', '3', '0'), ('527', '53', '罗源县', '3', '0'), ('528', '53', '闽清县', '3', '0'), ('529', '53', '永泰县', '3', '0'), ('530', '53', '平潭县', '3', '0'), ('531', '54', '新罗区', '3', '0'), ('532', '54', '漳平市', '3', '0'), ('533', '54', '长汀县', '3', '0'), ('534', '54', '永定县', '3', '0'), ('535', '54', '上杭县', '3', '0'), ('536', '54', '武平县', '3', '0'), ('537', '54', '连城县', '3', '0'), ('538', '55', '延平区', '3', '0'), ('539', '55', '邵武市', '3', '0'), ('540', '55', '武夷山市', '3', '0'), ('541', '55', '建瓯市', '3', '0'), ('542', '55', '建阳市', '3', '0'), ('543', '55', '顺昌县', '3', '0'), ('544', '55', '浦城县', '3', '0'), ('545', '55', '光泽县', '3', '0'), ('546', '55', '松溪县', '3', '0'), ('547', '55', '政和县', '3', '0'), ('548', '56', '蕉城区', '3', '0'), ('549', '56', '福安市', '3', '0'), ('550', '56', '福鼎市', '3', '0'), ('551', '56', '霞浦县', '3', '0'), ('552', '56', '古田县', '3', '0'), ('553', '56', '屏南县', '3', '0'), ('554', '56', '寿宁县', '3', '0'), ('555', '56', '周宁县', '3', '0'), ('556', '56', '柘荣县', '3', '0'), ('557', '57', '城厢区', '3', '0'), ('558', '57', '涵江区', '3', '0'), ('559', '57', '荔城区', '3', '0'), ('560', '57', '秀屿区', '3', '0'), ('561', '57', '仙游县', '3', '0'), ('562', '58', '鲤城区', '3', '0'), ('563', '58', '丰泽区', '3', '0'), ('564', '58', '洛江区', '3', '0'), ('565', '58', '清濛开发区', '3', '0'), ('566', '58', '泉港区', '3', '0'), ('567', '58', '石狮市', '3', '0'), ('568', '58', '晋江市', '3', '0'), ('569', '58', '南安市', '3', '0'), ('570', '58', '惠安县', '3', '0'), ('571', '58', '安溪县', '3', '0'), ('572', '58', '永春县', '3', '0'), ('573', '58', '德化县', '3', '0'), ('574', '58', '金门县', '3', '0'), ('575', '59', '梅列区', '3', '0'), ('576', '59', '三元区', '3', '0'), ('577', '59', '永安市', '3', '0'), ('578', '59', '明溪县', '3', '0'), ('579', '59', '清流县', '3', '0'), ('580', '59', '宁化县', '3', '0'), ('581', '59', '大田县', '3', '0'), ('582', '59', '尤溪县', '3', '0'), ('583', '59', '沙县', '3', '0'), ('584', '59', '将乐县', '3', '0'), ('585', '59', '泰宁县', '3', '0'), ('586', '59', '建宁县', '3', '0'), ('587', '60', '思明区', '3', '0'), ('588', '60', '海沧区', '3', '0'), ('589', '60', '湖里区', '3', '0'), ('590', '60', '集美区', '3', '0'), ('591', '60', '同安区', '3', '0'), ('592', '60', '翔安区', '3', '0'), ('593', '61', '芗城区', '3', '0'), ('594', '61', '龙文区', '3', '0'), ('595', '61', '龙海市', '3', '0'), ('596', '61', '云霄县', '3', '0'), ('597', '61', '漳浦县', '3', '0'), ('598', '61', '诏安县', '3', '0'), ('599', '61', '长泰县', '3', '0'), ('600', '61', '东山县', '3', '0'), ('601', '61', '南靖县', '3', '0'), ('602', '61', '平和县', '3', '0'), ('603', '61', '华安县', '3', '0'), ('604', '62', '皋兰县', '3', '0'), ('605', '62', '城关区', '3', '0'), ('606', '62', '七里河区', '3', '0'), ('607', '62', '西固区', '3', '0'), ('608', '62', '安宁区', '3', '0'), ('609', '62', '红古区', '3', '0'), ('610', '62', '永登县', '3', '0'), ('611', '62', '榆中县', '3', '0'), ('612', '63', '白银区', '3', '0'), ('613', '63', '平川区', '3', '0'), ('614', '63', '会宁县', '3', '0'), ('615', '63', '景泰县', '3', '0'), ('616', '63', '靖远县', '3', '0'), ('617', '64', '临洮县', '3', '0'), ('618', '64', '陇西县', '3', '0'), ('619', '64', '通渭县', '3', '0'), ('620', '64', '渭源县', '3', '0'), ('621', '64', '漳县', '3', '0'), ('622', '64', '岷县', '3', '0'), ('623', '64', '安定区', '3', '0'), ('624', '64', '安定区', '3', '0'), ('625', '65', '合作市', '3', '0'), ('626', '65', '临潭县', '3', '0'), ('627', '65', '卓尼县', '3', '0'), ('628', '65', '舟曲县', '3', '0'), ('629', '65', '迭部县', '3', '0'), ('630', '65', '玛曲县', '3', '0'), ('631', '65', '碌曲县', '3', '0'), ('632', '65', '夏河县', '3', '0'), ('633', '66', '嘉峪关市', '3', '0'), ('634', '67', '金川区', '3', '0'), ('635', '67', '永昌县', '3', '0'), ('636', '68', '肃州区', '3', '0'), ('637', '68', '玉门市', '3', '0'), ('638', '68', '敦煌市', '3', '0'), ('639', '68', '金塔县', '3', '0'), ('640', '68', '瓜州县', '3', '0'), ('641', '68', '肃北', '3', '0'), ('642', '68', '阿克塞', '3', '0'), ('643', '69', '临夏市', '3', '0'), ('644', '69', '临夏县', '3', '0'), ('645', '69', '康乐县', '3', '0'), ('646', '69', '永靖县', '3', '0'), ('647', '69', '广河县', '3', '0'), ('648', '69', '和政县', '3', '0'), ('649', '69', '东乡族自治县', '3', '0'), ('650', '69', '积石山', '3', '0'), ('651', '70', '成县', '3', '0'), ('652', '70', '徽县', '3', '0'), ('653', '70', '康县', '3', '0'), ('654', '70', '礼县', '3', '0'), ('655', '70', '两当县', '3', '0'), ('656', '70', '文县', '3', '0'), ('657', '70', '西和县', '3', '0'), ('658', '70', '宕昌县', '3', '0'), ('659', '70', '武都区', '3', '0'), ('660', '71', '崇信县', '3', '0'), ('661', '71', '华亭县', '3', '0'), ('662', '71', '静宁县', '3', '0'), ('663', '71', '灵台县', '3', '0'), ('664', '71', '崆峒区', '3', '0'), ('665', '71', '庄浪县', '3', '0'), ('666', '71', '泾川县', '3', '0'), ('667', '72', '合水县', '3', '0'), ('668', '72', '华池县', '3', '0'), ('669', '72', '环县', '3', '0'), ('670', '72', '宁县', '3', '0'), ('671', '72', '庆城县', '3', '0'), ('672', '72', '西峰区', '3', '0'), ('673', '72', '镇原县', '3', '0'), ('674', '72', '正宁县', '3', '0'), ('675', '73', '甘谷县', '3', '0'), ('676', '73', '秦安县', '3', '0'), ('677', '73', '清水县', '3', '0'), ('678', '73', '秦州区', '3', '0'), ('679', '73', '麦积区', '3', '0'), ('680', '73', '武山县', '3', '0'), ('681', '73', '张家川', '3', '0'), ('682', '74', '古浪县', '3', '0'), ('683', '74', '民勤县', '3', '0'), ('684', '74', '天祝', '3', '0'), ('685', '74', '凉州区', '3', '0'), ('686', '75', '高台县', '3', '0'), ('687', '75', '临泽县', '3', '0'), ('688', '75', '民乐县', '3', '0'), ('689', '75', '山丹县', '3', '0'), ('690', '75', '肃南', '3', '0'), ('691', '75', '甘州区', '3', '0'), ('692', '76', '从化市', '3', '0'), ('693', '76', '天河区', '3', '0'), ('694', '76', '东山区', '3', '0'), ('695', '76', '白云区', '3', '0'), ('696', '76', '海珠区', '3', '0'), ('697', '76', '荔湾区', '3', '0'), ('698', '76', '越秀区', '3', '0'), ('699', '76', '黄埔区', '3', '0'), ('700', '76', '番禺区', '3', '0'), ('701', '76', '花都区', '3', '0'), ('702', '76', '增城区', '3', '0'), ('703', '76', '从化区', '3', '0'), ('704', '76', '市郊', '3', '0'), ('705', '77', '福田区', '3', '0'), ('706', '77', '罗湖区', '3', '0'), ('707', '77', '南山区', '3', '0'), ('708', '77', '宝安区', '3', '0'), ('709', '77', '龙岗区', '3', '0'), ('710', '77', '盐田区', '3', '0'), ('711', '78', '湘桥区', '3', '0'), ('712', '78', '潮安县', '3', '0'), ('713', '78', '饶平县', '3', '0'), ('714', '79', '南城区', '3', '0'), ('715', '79', '东城区', '3', '0'), ('716', '79', '万江区', '3', '0'), ('717', '79', '莞城区', '3', '0'), ('718', '79', '石龙镇', '3', '0'), ('719', '79', '虎门镇', '3', '0'), ('720', '79', '麻涌镇', '3', '0'), ('721', '79', '道滘镇', '3', '0'), ('722', '79', '石碣镇', '3', '0'), ('723', '79', '沙田镇', '3', '0'), ('724', '79', '望牛墩镇', '3', '0'), ('725', '79', '洪梅镇', '3', '0'), ('726', '79', '茶山镇', '3', '0'), ('727', '79', '寮步镇', '3', '0'), ('728', '79', '大岭山镇', '3', '0'), ('729', '79', '大朗镇', '3', '0'), ('730', '79', '黄江镇', '3', '0'), ('731', '79', '樟木头', '3', '0'), ('732', '79', '凤岗镇', '3', '0'), ('733', '79', '塘厦镇', '3', '0'), ('734', '79', '谢岗镇', '3', '0'), ('735', '79', '厚街镇', '3', '0'), ('736', '79', '清溪镇', '3', '0'), ('737', '79', '常平镇', '3', '0'), ('738', '79', '桥头镇', '3', '0'), ('739', '79', '横沥镇', '3', '0'), ('740', '79', '东坑镇', '3', '0'), ('741', '79', '企石镇', '3', '0'), ('742', '79', '石排镇', '3', '0'), ('743', '79', '长安镇', '3', '0'), ('744', '79', '中堂镇', '3', '0'), ('745', '79', '高埗镇', '3', '0'), ('746', '80', '禅城区', '3', '0'), ('747', '80', '南海区', '3', '0'), ('748', '80', '顺德区', '3', '0'), ('749', '80', '三水区', '3', '0'), ('750', '80', '高明区', '3', '0'), ('751', '81', '东源县', '3', '0'), ('752', '81', '和平县', '3', '0'), ('753', '81', '源城区', '3', '0'), ('754', '81', '连平县', '3', '0'), ('755', '81', '龙川县', '3', '0'), ('756', '81', '紫金县', '3', '0'), ('757', '82', '惠阳区', '3', '0'), ('758', '82', '惠城区', '3', '0'), ('759', '82', '大亚湾', '3', '0'), ('760', '82', '博罗县', '3', '0'), ('761', '82', '惠东县', '3', '0'), ('762', '82', '龙门县', '3', '0'), ('763', '83', '江海区', '3', '0'), ('764', '83', '蓬江区', '3', '0'), ('765', '83', '新会区', '3', '0'), ('766', '83', '台山市', '3', '0'), ('767', '83', '开平市', '3', '0'), ('768', '83', '鹤山市', '3', '0'), ('769', '83', '恩平市', '3', '0'), ('770', '84', '榕城区', '3', '0'), ('771', '84', '普宁市', '3', '0'), ('772', '84', '揭东县', '3', '0'), ('773', '84', '揭西县', '3', '0'), ('774', '84', '惠来县', '3', '0'), ('775', '85', '茂南区', '3', '0'), ('776', '85', '茂港区', '3', '0'), ('777', '85', '高州市', '3', '0'), ('778', '85', '化州市', '3', '0'), ('779', '85', '信宜市', '3', '0'), ('780', '85', '电白县', '3', '0'), ('781', '86', '梅县', '3', '0'), ('782', '86', '梅江区', '3', '0'), ('783', '86', '兴宁市', '3', '0'), ('784', '86', '大埔县', '3', '0'), ('785', '86', '丰顺县', '3', '0'), ('786', '86', '五华县', '3', '0'), ('787', '86', '平远县', '3', '0'), ('788', '86', '蕉岭县', '3', '0'), ('789', '87', '清城区', '3', '0'), ('790', '87', '英德市', '3', '0'), ('791', '87', '连州市', '3', '0'), ('792', '87', '佛冈县', '3', '0'), ('793', '87', '阳山县', '3', '0'), ('794', '87', '清新县', '3', '0'), ('795', '87', '连山', '3', '0'), ('796', '87', '连南', '3', '0'), ('797', '88', '南澳县', '3', '0'), ('798', '88', '潮阳区', '3', '0'), ('799', '88', '澄海区', '3', '0'), ('800', '88', '龙湖区', '3', '0'), ('801', '88', '金平区', '3', '0'), ('802', '88', '濠江区', '3', '0'), ('803', '88', '潮南区', '3', '0'), ('804', '89', '城区', '3', '0'), ('805', '89', '陆丰市', '3', '0'), ('806', '89', '海丰县', '3', '0'), ('807', '89', '陆河县', '3', '0'), ('808', '90', '曲江县', '3', '0'), ('809', '90', '浈江区', '3', '0'), ('810', '90', '武江区', '3', '0'), ('811', '90', '曲江区', '3', '0'), ('812', '90', '乐昌市', '3', '0'), ('813', '90', '南雄市', '3', '0'), ('814', '90', '始兴县', '3', '0'), ('815', '90', '仁化县', '3', '0'), ('816', '90', '翁源县', '3', '0'), ('817', '90', '新丰县', '3', '0'), ('818', '90', '乳源', '3', '0'), ('819', '91', '江城区', '3', '0'), ('820', '91', '阳春市', '3', '0'), ('821', '91', '阳西县', '3', '0'), ('822', '91', '阳东县', '3', '0'), ('823', '92', '云城区', '3', '0'), ('824', '92', '罗定市', '3', '0'), ('825', '92', '新兴县', '3', '0'), ('826', '92', '郁南县', '3', '0'), ('827', '92', '云安县', '3', '0'), ('828', '93', '赤坎区', '3', '0'), ('829', '93', '霞山区', '3', '0'), ('830', '93', '坡头区', '3', '0'), ('831', '93', '麻章区', '3', '0'), ('832', '93', '廉江市', '3', '0'), ('833', '93', '雷州市', '3', '0'), ('834', '93', '吴川市', '3', '0'), ('835', '93', '遂溪县', '3', '0'), ('836', '93', '徐闻县', '3', '0'), ('837', '94', '肇庆市', '3', '0'), ('838', '94', '高要市', '3', '0'), ('839', '94', '四会市', '3', '0'), ('840', '94', '广宁县', '3', '0'), ('841', '94', '怀集县', '3', '0'), ('842', '94', '封开县', '3', '0'), ('843', '94', '德庆县', '3', '0'), ('844', '95', '石岐街道', '3', '0'), ('845', '95', '东区街道', '3', '0'), ('846', '95', '西区街道', '3', '0'), ('847', '95', '环城街道', '3', '0'), ('848', '95', '中山港街道', '3', '0'), ('849', '95', '五桂山街道', '3', '0'), ('850', '96', '香洲区', '3', '0'), ('851', '96', '斗门区', '3', '0'), ('852', '96', '金湾区', '3', '0'), ('853', '97', '邕宁区', '3', '0'), ('854', '97', '青秀区', '3', '0'), ('855', '97', '兴宁区', '3', '0'), ('856', '97', '良庆区', '3', '0'), ('857', '97', '西乡塘区', '3', '0'), ('858', '97', '江南区', '3', '0'), ('859', '97', '武鸣县', '3', '0'), ('860', '97', '隆安县', '3', '0'), ('861', '97', '马山县', '3', '0'), ('862', '97', '上林县', '3', '0'), ('863', '97', '宾阳县', '3', '0'), ('864', '97', '横县', '3', '0'), ('865', '98', '秀峰区', '3', '0'), ('866', '98', '叠彩区', '3', '0'), ('867', '98', '象山区', '3', '0'), ('868', '98', '七星区', '3', '0'), ('869', '98', '雁山区', '3', '0'), ('870', '98', '阳朔县', '3', '0'), ('871', '98', '临桂县', '3', '0'), ('872', '98', '灵川县', '3', '0'), ('873', '98', '全州县', '3', '0'), ('874', '98', '平乐县', '3', '0'), ('875', '98', '兴安县', '3', '0'), ('876', '98', '灌阳县', '3', '0'), ('877', '98', '荔浦县', '3', '0'), ('878', '98', '资源县', '3', '0'), ('879', '98', '永福县', '3', '0'), ('880', '98', '龙胜', '3', '0'), ('881', '98', '恭城', '3', '0'), ('882', '99', '右江区', '3', '0'), ('883', '99', '凌云县', '3', '0'), ('884', '99', '平果县', '3', '0'), ('885', '99', '西林县', '3', '0'), ('886', '99', '乐业县', '3', '0'), ('887', '99', '德保县', '3', '0'), ('888', '99', '田林县', '3', '0'), ('889', '99', '田阳县', '3', '0'), ('890', '99', '靖西县', '3', '0'), ('891', '99', '田东县', '3', '0'), ('892', '99', '那坡县', '3', '0'), ('893', '99', '隆林', '3', '0'), ('894', '100', '海城区', '3', '0'), ('895', '100', '银海区', '3', '0'), ('896', '100', '铁山港区', '3', '0'), ('897', '100', '合浦县', '3', '0'), ('898', '101', '江州区', '3', '0'), ('899', '101', '凭祥市', '3', '0'), ('900', '101', '宁明县', '3', '0'), ('901', '101', '扶绥县', '3', '0'), ('902', '101', '龙州县', '3', '0'), ('903', '101', '大新县', '3', '0'), ('904', '101', '天等县', '3', '0'), ('905', '102', '港口区', '3', '0'), ('906', '102', '防城区', '3', '0'), ('907', '102', '东兴市', '3', '0'), ('908', '102', '上思县', '3', '0'), ('909', '103', '港北区', '3', '0'), ('910', '103', '港南区', '3', '0'), ('911', '103', '覃塘区', '3', '0'), ('912', '103', '桂平市', '3', '0'), ('913', '103', '平南县', '3', '0'), ('914', '104', '金城江区', '3', '0'), ('915', '104', '宜州市', '3', '0'), ('916', '104', '天峨县', '3', '0'), ('917', '104', '凤山县', '3', '0'), ('918', '104', '南丹县', '3', '0'), ('919', '104', '东兰县', '3', '0'), ('920', '104', '都安', '3', '0'), ('921', '104', '罗城', '3', '0'), ('922', '104', '巴马', '3', '0'), ('923', '104', '环江', '3', '0'), ('924', '104', '大化', '3', '0'), ('925', '105', '八步区', '3', '0'), ('926', '105', '钟山县', '3', '0'), ('927', '105', '昭平县', '3', '0'), ('928', '105', '富川', '3', '0'), ('929', '106', '兴宾区', '3', '0'), ('930', '106', '合山市', '3', '0'), ('931', '106', '象州县', '3', '0'), ('932', '106', '武宣县', '3', '0'), ('933', '106', '忻城县', '3', '0'), ('934', '106', '金秀', '3', '0'), ('935', '107', '城中区', '3', '0'), ('936', '107', '鱼峰区', '3', '0'), ('937', '107', '柳北区', '3', '0'), ('938', '107', '柳南区', '3', '0'), ('939', '107', '柳江县', '3', '0'), ('940', '107', '柳城县', '3', '0'), ('941', '107', '鹿寨县', '3', '0'), ('942', '107', '融安县', '3', '0'), ('943', '107', '融水', '3', '0'), ('944', '107', '三江', '3', '0'), ('945', '108', '钦南区', '3', '0'), ('946', '108', '钦北区', '3', '0'), ('947', '108', '灵山县', '3', '0'), ('948', '108', '浦北县', '3', '0'), ('949', '109', '万秀区', '3', '0'), ('950', '109', '蝶山区', '3', '0'), ('951', '109', '长洲区', '3', '0'), ('952', '109', '岑溪市', '3', '0'), ('953', '109', '苍梧县', '3', '0'), ('954', '109', '藤县', '3', '0'), ('955', '109', '蒙山县', '3', '0'), ('956', '110', '玉州区', '3', '0'), ('957', '110', '北流市', '3', '0'), ('958', '110', '容县', '3', '0'), ('959', '110', '陆川县', '3', '0'), ('960', '110', '博白县', '3', '0'), ('961', '110', '兴业县', '3', '0'), ('962', '111', '南明区', '3', '0'), ('963', '111', '云岩区', '3', '0'), ('964', '111', '花溪区', '3', '0'), ('965', '111', '乌当区', '3', '0'), ('966', '111', '白云区', '3', '0'), ('967', '111', '小河区', '3', '0'), ('968', '111', '金阳新区', '3', '0'), ('969', '111', '新天园区', '3', '0'), ('970', '111', '清镇市', '3', '0'), ('971', '111', '开阳县', '3', '0'), ('972', '111', '修文县', '3', '0'), ('973', '111', '息烽县', '3', '0'), ('974', '112', '西秀区', '3', '0'), ('975', '112', '关岭', '3', '0'), ('976', '112', '镇宁', '3', '0'), ('977', '112', '紫云', '3', '0'), ('978', '112', '平坝县', '3', '0'), ('979', '112', '普定县', '3', '0'), ('980', '113', '毕节市', '3', '0'), ('981', '113', '大方县', '3', '0'), ('982', '113', '黔西县', '3', '0'), ('983', '113', '金沙县', '3', '0'), ('984', '113', '织金县', '3', '0'), ('985', '113', '纳雍县', '3', '0'), ('986', '113', '赫章县', '3', '0'), ('987', '113', '威宁', '3', '0'), ('988', '114', '钟山区', '3', '0'), ('989', '114', '六枝特区', '3', '0'), ('990', '114', '水城县', '3', '0'), ('991', '114', '盘县', '3', '0'), ('992', '115', '凯里市', '3', '0'), ('993', '115', '黄平县', '3', '0'), ('994', '115', '施秉县', '3', '0'), ('995', '115', '三穗县', '3', '0'), ('996', '115', '镇远县', '3', '0'), ('997', '115', '岑巩县', '3', '0'), ('998', '115', '天柱县', '3', '0'), ('999', '115', '锦屏县', '3', '0'), ('1000', '115', '剑河县', '3', '0'), ('1001', '115', '台江县', '3', '0'), ('1002', '115', '黎平县', '3', '0'), ('1003', '115', '榕江县', '3', '0'), ('1004', '115', '从江县', '3', '0'), ('1005', '115', '雷山县', '3', '0'), ('1006', '115', '麻江县', '3', '0'), ('1007', '115', '丹寨县', '3', '0'), ('1008', '116', '都匀市', '3', '0'), ('1009', '116', '福泉市', '3', '0'), ('1010', '116', '荔波县', '3', '0'), ('1011', '116', '贵定县', '3', '0'), ('1012', '116', '瓮安县', '3', '0'), ('1013', '116', '独山县', '3', '0'), ('1014', '116', '平塘县', '3', '0'), ('1015', '116', '罗甸县', '3', '0'), ('1016', '116', '长顺县', '3', '0'), ('1017', '116', '龙里县', '3', '0'), ('1018', '116', '惠水县', '3', '0'), ('1019', '116', '三都', '3', '0'), ('1020', '117', '兴义市', '3', '0'), ('1021', '117', '兴仁县', '3', '0'), ('1022', '117', '普安县', '3', '0'), ('1023', '117', '晴隆县', '3', '0'), ('1024', '117', '贞丰县', '3', '0'), ('1025', '117', '望谟县', '3', '0'), ('1026', '117', '册亨县', '3', '0'), ('1027', '117', '安龙县', '3', '0'), ('1028', '118', '铜仁市', '3', '0'), ('1029', '118', '江口县', '3', '0'), ('1030', '118', '石阡县', '3', '0'), ('1031', '118', '思南县', '3', '0'), ('1032', '118', '德江县', '3', '0'), ('1033', '118', '玉屏', '3', '0'), ('1034', '118', '印江', '3', '0'), ('1035', '118', '沿河', '3', '0'), ('1036', '118', '松桃', '3', '0'), ('1037', '118', '万山特区', '3', '0'), ('1038', '119', '红花岗区', '3', '0'), ('1039', '119', '务川县', '3', '0'), ('1040', '119', '道真县', '3', '0'), ('1041', '119', '汇川区', '3', '0'), ('1042', '119', '赤水市', '3', '0'), ('1043', '119', '仁怀市', '3', '0'), ('1044', '119', '遵义县', '3', '0'), ('1045', '119', '桐梓县', '3', '0'), ('1046', '119', '绥阳县', '3', '0'), ('1047', '119', '正安县', '3', '0'), ('1048', '119', '凤冈县', '3', '0'), ('1049', '119', '湄潭县', '3', '0'), ('1050', '119', '余庆县', '3', '0'), ('1051', '119', '习水县', '3', '0'), ('1052', '119', '道真', '3', '0'), ('1053', '119', '务川', '3', '0'), ('1054', '120', '秀英区', '3', '0'), ('1055', '120', '龙华区', '3', '0'), ('1056', '120', '琼山区', '3', '0'), ('1057', '120', '美兰区', '3', '0'), ('1058', '137', '市区', '3', '0'), ('1059', '137', '洋浦开发区', '3', '0'), ('1060', '137', '那大镇', '3', '0'), ('1061', '137', '王五镇', '3', '0'), ('1062', '137', '雅星镇', '3', '0'), ('1063', '137', '大成镇', '3', '0'), ('1064', '137', '中和镇', '3', '0'), ('1065', '137', '峨蔓镇', '3', '0'), ('1066', '137', '南丰镇', '3', '0'), ('1067', '137', '白马井镇', '3', '0'), ('1068', '137', '兰洋镇', '3', '0'), ('1069', '137', '和庆镇', '3', '0'), ('1070', '137', '海头镇', '3', '0'), ('1071', '137', '排浦镇', '3', '0'), ('1072', '137', '东成镇', '3', '0'), ('1073', '137', '光村镇', '3', '0'), ('1074', '137', '木棠镇', '3', '0'), ('1075', '137', '新州镇', '3', '0'), ('1076', '137', '三都镇', '3', '0'), ('1077', '137', '其他', '3', '0'), ('1078', '138', '长安区', '3', '0'), ('1079', '138', '桥东区', '3', '0'), ('1080', '138', '桥西区', '3', '0'), ('1081', '138', '新华区', '3', '0'), ('1082', '138', '裕华区', '3', '0'), ('1083', '138', '井陉矿区', '3', '0'), ('1084', '138', '高新区', '3', '0'), ('1085', '138', '辛集市', '3', '0'), ('1086', '138', '藁城市', '3', '0'), ('1087', '138', '晋州市', '3', '0'), ('1088', '138', '新乐市', '3', '0'), ('1089', '138', '鹿泉市', '3', '0'), ('1090', '138', '井陉县', '3', '0'), ('1091', '138', '正定县', '3', '0'), ('1092', '138', '栾城县', '3', '0'), ('1093', '138', '行唐县', '3', '0'), ('1094', '138', '灵寿县', '3', '0'), ('1095', '138', '高邑县', '3', '0'), ('1096', '138', '深泽县', '3', '0'), ('1097', '138', '赞皇县', '3', '0'), ('1098', '138', '无极县', '3', '0'), ('1099', '138', '平山县', '3', '0'), ('1100', '138', '元氏县', '3', '0'), ('1101', '138', '赵县', '3', '0'), ('1102', '139', '新市区', '3', '0'), ('1103', '139', '南市区', '3', '0'), ('1104', '139', '北市区', '3', '0'), ('1105', '139', '涿州市', '3', '0'), ('1106', '139', '定州市', '3', '0'), ('1107', '139', '安国市', '3', '0'), ('1108', '139', '高碑店市', '3', '0'), ('1109', '139', '满城县', '3', '0'), ('1110', '139', '清苑县', '3', '0'), ('1111', '139', '涞水县', '3', '0'), ('1112', '139', '阜平县', '3', '0'), ('1113', '139', '徐水县', '3', '0'), ('1114', '139', '定兴县', '3', '0'), ('1115', '139', '唐县', '3', '0'), ('1116', '139', '高阳县', '3', '0'), ('1117', '139', '容城县', '3', '0'), ('1118', '139', '涞源县', '3', '0'), ('1119', '139', '望都县', '3', '0'), ('1120', '139', '安新县', '3', '0'), ('1121', '139', '易县', '3', '0'), ('1122', '139', '曲阳县', '3', '0'), ('1123', '139', '蠡县', '3', '0'), ('1124', '139', '顺平县', '3', '0'), ('1125', '139', '博野县', '3', '0'), ('1126', '139', '雄县', '3', '0'), ('1127', '140', '运河区', '3', '0'), ('1128', '140', '新华区', '3', '0'), ('1129', '140', '泊头市', '3', '0'), ('1130', '140', '任丘市', '3', '0'), ('1131', '140', '黄骅市', '3', '0'), ('1132', '140', '河间市', '3', '0'), ('1133', '140', '沧县', '3', '0'), ('1134', '140', '青县', '3', '0'), ('1135', '140', '东光县', '3', '0'), ('1136', '140', '海兴县', '3', '0'), ('1137', '140', '盐山县', '3', '0'), ('1138', '140', '肃宁县', '3', '0'), ('1139', '140', '南皮县', '3', '0'), ('1140', '140', '吴桥县', '3', '0'), ('1141', '140', '献县', '3', '0'), ('1142', '140', '孟村', '3', '0'), ('1143', '141', '双桥区', '3', '0'), ('1144', '141', '双滦区', '3', '0'), ('1145', '141', '鹰手营子矿区', '3', '0'), ('1146', '141', '承德县', '3', '0'), ('1147', '141', '兴隆县', '3', '0'), ('1148', '141', '平泉县', '3', '0'), ('1149', '141', '滦平县', '3', '0'), ('1150', '141', '隆化县', '3', '0'), ('1151', '141', '丰宁', '3', '0'), ('1152', '141', '宽城', '3', '0'), ('1153', '141', '围场', '3', '0'), ('1154', '142', '从台区', '3', '0'), ('1155', '142', '复兴区', '3', '0'), ('1156', '142', '邯山区', '3', '0'), ('1157', '142', '峰峰矿区', '3', '0'), ('1158', '142', '武安市', '3', '0'), ('1159', '142', '邯郸县', '3', '0'), ('1160', '142', '临漳县', '3', '0'), ('1161', '142', '成安县', '3', '0'), ('1162', '142', '大名县', '3', '0'), ('1163', '142', '涉县', '3', '0'), ('1164', '142', '磁县', '3', '0'), ('1165', '142', '肥乡县', '3', '0'), ('1166', '142', '永年县', '3', '0'), ('1167', '142', '邱县', '3', '0'), ('1168', '142', '鸡泽县', '3', '0'), ('1169', '142', '广平县', '3', '0'), ('1170', '142', '馆陶县', '3', '0'), ('1171', '142', '魏县', '3', '0'), ('1172', '142', '曲周县', '3', '0'), ('1173', '143', '桃城区', '3', '0'), ('1174', '143', '冀州市', '3', '0'), ('1175', '143', '深州市', '3', '0'), ('1176', '143', '枣强县', '3', '0'), ('1177', '143', '武邑县', '3', '0'), ('1178', '143', '武强县', '3', '0'), ('1179', '143', '饶阳县', '3', '0'), ('1180', '143', '安平县', '3', '0'), ('1181', '143', '故城县', '3', '0'), ('1182', '143', '景县', '3', '0'), ('1183', '143', '阜城县', '3', '0'), ('1184', '144', '安次区', '3', '0'), ('1185', '144', '广阳区', '3', '0'), ('1186', '144', '霸州市', '3', '0'), ('1187', '144', '三河市', '3', '0'), ('1188', '144', '固安县', '3', '0'), ('1189', '144', '永清县', '3', '0'), ('1190', '144', '香河县', '3', '0'), ('1191', '144', '大城县', '3', '0'), ('1192', '144', '文安县', '3', '0'), ('1193', '144', '大厂', '3', '0'), ('1194', '145', '海港区', '3', '0'), ('1195', '145', '山海关区', '3', '0'), ('1196', '145', '北戴河区', '3', '0'), ('1197', '145', '昌黎县', '3', '0'), ('1198', '145', '抚宁县', '3', '0'), ('1199', '145', '卢龙县', '3', '0'), ('1200', '145', '青龙', '3', '0'), ('1201', '146', '路北区', '3', '0'), ('1202', '146', '路南区', '3', '0'), ('1203', '146', '古冶区', '3', '0'), ('1204', '146', '开平区', '3', '0'), ('1205', '146', '丰南区', '3', '0'), ('1206', '146', '丰润区', '3', '0'), ('1207', '146', '遵化市', '3', '0'), ('1208', '146', '迁安市', '3', '0'), ('1209', '146', '滦县', '3', '0'), ('1210', '146', '滦南县', '3', '0'), ('1211', '146', '乐亭县', '3', '0'), ('1212', '146', '迁西县', '3', '0'), ('1213', '146', '玉田县', '3', '0'), ('1214', '146', '唐海县', '3', '0'), ('1215', '147', '桥东区', '3', '0'), ('1216', '147', '桥西区', '3', '0'), ('1217', '147', '南宫市', '3', '0'), ('1218', '147', '沙河市', '3', '0'), ('1219', '147', '邢台县', '3', '0'), ('1220', '147', '临城县', '3', '0'), ('1221', '147', '内丘县', '3', '0'), ('1222', '147', '柏乡县', '3', '0'), ('1223', '147', '隆尧县', '3', '0'), ('1224', '147', '任县', '3', '0'), ('1225', '147', '南和县', '3', '0'), ('1226', '147', '宁晋县', '3', '0'), ('1227', '147', '巨鹿县', '3', '0'), ('1228', '147', '新河县', '3', '0'), ('1229', '147', '广宗县', '3', '0'), ('1230', '147', '平乡县', '3', '0'), ('1231', '147', '威县', '3', '0'), ('1232', '147', '清河县', '3', '0'), ('1233', '147', '临西县', '3', '0'), ('1234', '148', '桥西区', '3', '0'), ('1235', '148', '桥东区', '3', '0'), ('1236', '148', '宣化区', '3', '0'), ('1237', '148', '下花园区', '3', '0'), ('1238', '148', '宣化县', '3', '0'), ('1239', '148', '张北县', '3', '0'), ('1240', '148', '康保县', '3', '0'), ('1241', '148', '沽源县', '3', '0'), ('1242', '148', '尚义县', '3', '0'), ('1243', '148', '蔚县', '3', '0'), ('1244', '148', '阳原县', '3', '0'), ('1245', '148', '怀安县', '3', '0'), ('1246', '148', '万全县', '3', '0'), ('1247', '148', '怀来县', '3', '0'), ('1248', '148', '涿鹿县', '3', '0'), ('1249', '148', '赤城县', '3', '0'), ('1250', '148', '崇礼县', '3', '0'), ('1251', '149', '金水区', '3', '0'), ('1252', '149', '邙山区', '3', '0'), ('1253', '149', '二七区', '3', '0'), ('1254', '149', '管城区', '3', '0'), ('1255', '149', '中原区', '3', '0'), ('1256', '149', '上街区', '3', '0'), ('1257', '149', '惠济区', '3', '0'), ('1258', '149', '郑东新区', '3', '0'), ('1259', '149', '经济技术开发区', '3', '0'), ('1260', '149', '高新开发区', '3', '0'), ('1261', '149', '出口加工区', '3', '0'), ('1262', '149', '巩义市', '3', '0'), ('1263', '149', '荥阳市', '3', '0'), ('1264', '149', '新密市', '3', '0'), ('1265', '149', '新郑市', '3', '0'), ('1266', '149', '登封市', '3', '0'), ('1267', '149', '中牟县', '3', '0'), ('1268', '150', '西工区', '3', '0'), ('1269', '150', '老城区', '3', '0'), ('1270', '150', '涧西区', '3', '0'), ('1271', '150', '瀍河回族区', '3', '0'), ('1272', '150', '洛龙区', '3', '0'), ('1273', '150', '吉利区', '3', '0'), ('1274', '150', '偃师市', '3', '0'), ('1275', '150', '孟津县', '3', '0'), ('1276', '150', '新安县', '3', '0'), ('1277', '150', '栾川县', '3', '0'), ('1278', '150', '嵩县', '3', '0'), ('1279', '150', '汝阳县', '3', '0'), ('1280', '150', '宜阳县', '3', '0'), ('1281', '150', '洛宁县', '3', '0'), ('1282', '150', '伊川县', '3', '0'), ('1283', '151', '鼓楼区', '3', '0'), ('1284', '151', '龙亭区', '3', '0'), ('1285', '151', '顺河回族区', '3', '0'), ('1286', '151', '金明区', '3', '0'), ('1287', '151', '禹王台区', '3', '0'), ('1288', '151', '杞县', '3', '0'), ('1289', '151', '通许县', '3', '0'), ('1290', '151', '尉氏县', '3', '0'), ('1291', '151', '开封县', '3', '0'), ('1292', '151', '兰考县', '3', '0'), ('1293', '152', '北关区', '3', '0'), ('1294', '152', '文峰区', '3', '0'), ('1295', '152', '殷都区', '3', '0'), ('1296', '152', '龙安区', '3', '0'), ('1297', '152', '林州市', '3', '0'), ('1298', '152', '安阳县', '3', '0'), ('1299', '152', '汤阴县', '3', '0'), ('1300', '152', '滑县', '3', '0'), ('1301', '152', '内黄县', '3', '0'), ('1302', '153', '淇滨区', '3', '0'), ('1303', '153', '山城区', '3', '0'), ('1304', '153', '鹤山区', '3', '0'), ('1305', '153', '浚县', '3', '0'), ('1306', '153', '淇县', '3', '0'), ('1307', '154', '济源市', '3', '0'), ('1308', '155', '解放区', '3', '0'), ('1309', '155', '中站区', '3', '0'), ('1310', '155', '马村区', '3', '0'), ('1311', '155', '山阳区', '3', '0'), ('1312', '155', '沁阳市', '3', '0'), ('1313', '155', '孟州市', '3', '0'), ('1314', '155', '修武县', '3', '0'), ('1315', '155', '博爱县', '3', '0'), ('1316', '155', '武陟县', '3', '0'), ('1317', '155', '温县', '3', '0'), ('1318', '156', '卧龙区', '3', '0'), ('1319', '156', '宛城区', '3', '0'), ('1320', '156', '邓州市', '3', '0'), ('1321', '156', '南召县', '3', '0'), ('1322', '156', '方城县', '3', '0'), ('1323', '156', '西峡县', '3', '0'), ('1324', '156', '镇平县', '3', '0'), ('1325', '156', '内乡县', '3', '0'), ('1326', '156', '淅川县', '3', '0'), ('1327', '156', '社旗县', '3', '0'), ('1328', '156', '唐河县', '3', '0'), ('1329', '156', '新野县', '3', '0'), ('1330', '156', '桐柏县', '3', '0'), ('1331', '157', '新华区', '3', '0'), ('1332', '157', '卫东区', '3', '0'), ('1333', '157', '湛河区', '3', '0'), ('1334', '157', '石龙区', '3', '0'), ('1335', '157', '舞钢市', '3', '0'), ('1336', '157', '汝州市', '3', '0'), ('1337', '157', '宝丰县', '3', '0'), ('1338', '157', '叶县', '3', '0'), ('1339', '157', '鲁山县', '3', '0'), ('1340', '157', '郏县', '3', '0'), ('1341', '158', '湖滨区', '3', '0'), ('1342', '158', '义马市', '3', '0'), ('1343', '158', '灵宝市', '3', '0'), ('1344', '158', '渑池县', '3', '0'), ('1345', '158', '陕县', '3', '0'), ('1346', '158', '卢氏县', '3', '0'), ('1347', '159', '梁园区', '3', '0'), ('1348', '159', '睢阳区', '3', '0'), ('1349', '159', '永城市', '3', '0'), ('1350', '159', '民权县', '3', '0'), ('1351', '159', '睢县', '3', '0'), ('1352', '159', '宁陵县', '3', '0'), ('1353', '159', '虞城县', '3', '0'), ('1354', '159', '柘城县', '3', '0'), ('1355', '159', '夏邑县', '3', '0'), ('1356', '160', '卫滨区', '3', '0'), ('1357', '160', '红旗区', '3', '0'), ('1358', '160', '凤泉区', '3', '0'), ('1359', '160', '牧野区', '3', '0'), ('1360', '160', '卫辉市', '3', '0'), ('1361', '160', '辉县市', '3', '0'), ('1362', '160', '新乡县', '3', '0'), ('1363', '160', '获嘉县', '3', '0'), ('1364', '160', '原阳县', '3', '0'), ('1365', '160', '延津县', '3', '0'), ('1366', '160', '封丘县', '3', '0'), ('1367', '160', '长垣县', '3', '0'), ('1368', '161', '浉河区', '3', '0'), ('1369', '161', '平桥区', '3', '0'), ('1370', '161', '罗山县', '3', '0'), ('1371', '161', '光山县', '3', '0'), ('1372', '161', '新县', '3', '0'), ('1373', '161', '商城县', '3', '0'), ('1374', '161', '固始县', '3', '0'), ('1375', '161', '潢川县', '3', '0'), ('1376', '161', '淮滨县', '3', '0'), ('1377', '161', '息县', '3', '0'), ('1378', '162', '魏都区', '3', '0'), ('1379', '162', '禹州市', '3', '0'), ('1380', '162', '长葛市', '3', '0'), ('1381', '162', '许昌县', '3', '0'), ('1382', '162', '鄢陵县', '3', '0'), ('1383', '162', '襄城县', '3', '0'), ('1384', '163', '川汇区', '3', '0'), ('1385', '163', '项城市', '3', '0'), ('1386', '163', '扶沟县', '3', '0'), ('1387', '163', '西华县', '3', '0'), ('1388', '163', '商水县', '3', '0'), ('1389', '163', '沈丘县', '3', '0'), ('1390', '163', '郸城县', '3', '0'), ('1391', '163', '淮阳县', '3', '0'), ('1392', '163', '太康县', '3', '0'), ('1393', '163', '鹿邑县', '3', '0'), ('1394', '164', '驿城区', '3', '0'), ('1395', '164', '西平县', '3', '0'), ('1396', '164', '上蔡县', '3', '0'), ('1397', '164', '平舆县', '3', '0'), ('1398', '164', '正阳县', '3', '0'), ('1399', '164', '确山县', '3', '0'), ('1400', '164', '泌阳县', '3', '0'), ('1401', '164', '汝南县', '3', '0'), ('1402', '164', '遂平县', '3', '0'), ('1403', '164', '新蔡县', '3', '0'), ('1404', '165', '郾城区', '3', '0'), ('1405', '165', '源汇区', '3', '0'), ('1406', '165', '召陵区', '3', '0'), ('1407', '165', '舞阳县', '3', '0'), ('1408', '165', '临颍县', '3', '0'), ('1409', '166', '华龙区', '3', '0'), ('1410', '166', '清丰县', '3', '0'), ('1411', '166', '南乐县', '3', '0'), ('1412', '166', '范县', '3', '0'), ('1413', '166', '台前县', '3', '0'), ('1414', '166', '濮阳县', '3', '0'), ('1415', '167', '道里区', '3', '0'), ('1416', '167', '南岗区', '3', '0'), ('1417', '167', '动力区', '3', '0'), ('1418', '167', '平房区', '3', '0'), ('1419', '167', '香坊区', '3', '0'), ('1420', '167', '太平区', '3', '0'), ('1421', '167', '道外区', '3', '0'), ('1422', '167', '阿城区', '3', '0'), ('1423', '167', '呼兰区', '3', '0'), ('1424', '167', '松北区', '3', '0'), ('1425', '167', '尚志市', '3', '0'), ('1426', '167', '双城市', '3', '0'), ('1427', '167', '五常市', '3', '0'), ('1428', '167', '方正县', '3', '0'), ('1429', '167', '宾县', '3', '0'), ('1430', '167', '依兰县', '3', '0'), ('1431', '167', '巴彦县', '3', '0'), ('1432', '167', '通河县', '3', '0'), ('1433', '167', '木兰县', '3', '0'), ('1434', '167', '延寿县', '3', '0'), ('1435', '168', '萨尔图区', '3', '0'), ('1436', '168', '红岗区', '3', '0'), ('1437', '168', '龙凤区', '3', '0'), ('1438', '168', '让胡路区', '3', '0'), ('1439', '168', '大同区', '3', '0'), ('1440', '168', '肇州县', '3', '0'), ('1441', '168', '肇源县', '3', '0'), ('1442', '168', '林甸县', '3', '0'), ('1443', '168', '杜尔伯特', '3', '0'), ('1444', '169', '呼玛县', '3', '0'), ('1445', '169', '漠河县', '3', '0'), ('1446', '169', '塔河县', '3', '0'), ('1447', '170', '兴山区', '3', '0'), ('1448', '170', '工农区', '3', '0'), ('1449', '170', '南山区', '3', '0'), ('1450', '170', '兴安区', '3', '0'), ('1451', '170', '向阳区', '3', '0'), ('1452', '170', '东山区', '3', '0'), ('1453', '170', '萝北县', '3', '0'), ('1454', '170', '绥滨县', '3', '0'), ('1455', '171', '爱辉区', '3', '0'), ('1456', '171', '五大连池市', '3', '0'), ('1457', '171', '北安市', '3', '0'), ('1458', '171', '嫩江县', '3', '0'), ('1459', '171', '逊克县', '3', '0'), ('1460', '171', '孙吴县', '3', '0'), ('1461', '172', '鸡冠区', '3', '0'), ('1462', '172', '恒山区', '3', '0'), ('1463', '172', '城子河区', '3', '0'), ('1464', '172', '滴道区', '3', '0'), ('1465', '172', '梨树区', '3', '0'), ('1466', '172', '虎林市', '3', '0'), ('1467', '172', '密山市', '3', '0'), ('1468', '172', '鸡东县', '3', '0'), ('1469', '173', '前进区', '3', '0'), ('1470', '173', '郊区', '3', '0'), ('1471', '173', '向阳区', '3', '0'), ('1472', '173', '东风区', '3', '0'), ('1473', '173', '同江市', '3', '0'), ('1474', '173', '富锦市', '3', '0'), ('1475', '173', '桦南县', '3', '0'), ('1476', '173', '桦川县', '3', '0'), ('1477', '173', '汤原县', '3', '0'), ('1478', '173', '抚远县', '3', '0'), ('1479', '174', '爱民区', '3', '0'), ('1480', '174', '东安区', '3', '0'), ('1481', '174', '阳明区', '3', '0'), ('1482', '174', '西安区', '3', '0'), ('1483', '174', '绥芬河市', '3', '0'), ('1484', '174', '海林市', '3', '0'), ('1485', '174', '宁安市', '3', '0'), ('1486', '174', '穆棱市', '3', '0'), ('1487', '174', '东宁县', '3', '0'), ('1488', '174', '林口县', '3', '0'), ('1489', '175', '桃山区', '3', '0'), ('1490', '175', '新兴区', '3', '0'), ('1491', '175', '茄子河区', '3', '0'), ('1492', '175', '勃利县', '3', '0'), ('1493', '176', '龙沙区', '3', '0'), ('1494', '176', '昂昂溪区', '3', '0'), ('1495', '176', '铁峰区', '3', '0'), ('1496', '176', '建华区', '3', '0'), ('1497', '176', '富拉尔基区', '3', '0'), ('1498', '176', '碾子山区', '3', '0'), ('1499', '176', '梅里斯达斡尔区', '3', '0'), ('1500', '176', '讷河市', '3', '0'), ('1501', '176', '龙江县', '3', '0'), ('1502', '176', '依安县', '3', '0'), ('1503', '176', '泰来县', '3', '0'), ('1504', '176', '甘南县', '3', '0'), ('1505', '176', '富裕县', '3', '0'), ('1506', '176', '克山县', '3', '0'), ('1507', '176', '克东县', '3', '0'), ('1508', '176', '拜泉县', '3', '0'), ('1509', '177', '尖山区', '3', '0'), ('1510', '177', '岭东区', '3', '0'), ('1511', '177', '四方台区', '3', '0'), ('1512', '177', '宝山区', '3', '0'), ('1513', '177', '集贤县', '3', '0'), ('1514', '177', '友谊县', '3', '0'), ('1515', '177', '宝清县', '3', '0'), ('1516', '177', '饶河县', '3', '0'), ('1517', '178', '北林区', '3', '0'), ('1518', '178', '安达市', '3', '0'), ('1519', '178', '肇东市', '3', '0'), ('1520', '178', '海伦市', '3', '0'), ('1521', '178', '望奎县', '3', '0'), ('1522', '178', '兰西县', '3', '0'), ('1523', '178', '青冈县', '3', '0'), ('1524', '178', '庆安县', '3', '0'), ('1525', '178', '明水县', '3', '0'), ('1526', '178', '绥棱县', '3', '0'), ('1527', '179', '伊春区', '3', '0'), ('1528', '179', '带岭区', '3', '0'), ('1529', '179', '南岔区', '3', '0'), ('1530', '179', '金山屯区', '3', '0'), ('1531', '179', '西林区', '3', '0'), ('1532', '179', '美溪区', '3', '0'), ('1533', '179', '乌马河区', '3', '0'), ('1534', '179', '翠峦区', '3', '0'), ('1535', '179', '友好区', '3', '0'), ('1536', '179', '上甘岭区', '3', '0'), ('1537', '179', '五营区', '3', '0'), ('1538', '179', '红星区', '3', '0'), ('1539', '179', '新青区', '3', '0'), ('1540', '179', '汤旺河区', '3', '0'), ('1541', '179', '乌伊岭区', '3', '0'), ('1542', '179', '铁力市', '3', '0'), ('1543', '179', '嘉荫县', '3', '0'), ('1544', '180', '江岸区', '3', '0'), ('1545', '180', '武昌区', '3', '0'), ('1546', '180', '江汉区', '3', '0'), ('1547', '180', '硚口区', '3', '0'), ('1548', '180', '汉阳区', '3', '0'), ('1549', '180', '青山区', '3', '0'), ('1550', '180', '洪山区', '3', '0'), ('1551', '180', '东西湖区', '3', '0'), ('1552', '180', '汉南区', '3', '0'), ('1553', '180', '蔡甸区', '3', '0'), ('1554', '180', '江夏区', '3', '0'), ('1555', '180', '黄陂区', '3', '0'), ('1556', '180', '新洲区', '3', '0'), ('1557', '180', '经济开发区', '3', '0'), ('1558', '181', '仙桃市', '3', '0'), ('1559', '182', '鄂城区', '3', '0'), ('1560', '182', '华容区', '3', '0'), ('1561', '182', '梁子湖区', '3', '0'), ('1562', '183', '黄州区', '3', '0'), ('1563', '183', '麻城市', '3', '0'), ('1564', '183', '武穴市', '3', '0'), ('1565', '183', '团风县', '3', '0'), ('1566', '183', '红安县', '3', '0'), ('1567', '183', '罗田县', '3', '0'), ('1568', '183', '英山县', '3', '0'), ('1569', '183', '浠水县', '3', '0'), ('1570', '183', '蕲春县', '3', '0'), ('1571', '183', '黄梅县', '3', '0'), ('1572', '184', '黄石港区', '3', '0'), ('1573', '184', '西塞山区', '3', '0'), ('1574', '184', '下陆区', '3', '0'), ('1575', '184', '铁山区', '3', '0'), ('1576', '184', '大冶市', '3', '0'), ('1577', '184', '阳新县', '3', '0'), ('1578', '185', '东宝区', '3', '0'), ('1579', '185', '掇刀区', '3', '0'), ('1580', '185', '钟祥市', '3', '0'), ('1581', '185', '京山县', '3', '0'), ('1582', '185', '沙洋县', '3', '0'), ('1583', '186', '沙市区', '3', '0'), ('1584', '186', '荆州区', '3', '0'), ('1585', '186', '石首市', '3', '0'), ('1586', '186', '洪湖市', '3', '0'), ('1587', '186', '松滋市', '3', '0'), ('1588', '186', '公安县', '3', '0'), ('1589', '186', '监利县', '3', '0'), ('1590', '186', '江陵县', '3', '0'), ('1591', '187', '潜江市', '3', '0'), ('1592', '188', '神农架林区', '3', '0'), ('1593', '189', '张湾区', '3', '0'), ('1594', '189', '茅箭区', '3', '0'), ('1595', '189', '丹江口市', '3', '0'), ('1596', '189', '郧县', '3', '0'), ('1597', '189', '郧西县', '3', '0'), ('1598', '189', '竹山县', '3', '0'), ('1599', '189', '竹溪县', '3', '0'), ('1600', '189', '房县', '3', '0'), ('1601', '190', '曾都区', '3', '0'), ('1602', '190', '广水市', '3', '0'), ('1603', '191', '天门市', '3', '0'), ('1604', '192', '咸安区', '3', '0'), ('1605', '192', '赤壁市', '3', '0'), ('1606', '192', '嘉鱼县', '3', '0'), ('1607', '192', '通城县', '3', '0'), ('1608', '192', '崇阳县', '3', '0'), ('1609', '192', '通山县', '3', '0'), ('1610', '193', '襄城区', '3', '0'), ('1611', '193', '樊城区', '3', '0'), ('1612', '193', '襄阳区', '3', '0'), ('1613', '193', '老河口市', '3', '0'), ('1614', '193', '枣阳市', '3', '0'), ('1615', '193', '宜城市', '3', '0'), ('1616', '193', '南漳县', '3', '0'), ('1617', '193', '谷城县', '3', '0'), ('1618', '193', '保康县', '3', '0'), ('1619', '194', '孝南区', '3', '0'), ('1620', '194', '应城市', '3', '0'), ('1621', '194', '安陆市', '3', '0'), ('1622', '194', '汉川市', '3', '0'), ('1623', '194', '孝昌县', '3', '0'), ('1624', '194', '大悟县', '3', '0'), ('1625', '194', '云梦县', '3', '0'), ('1626', '195', '长阳', '3', '0'), ('1627', '195', '五峰', '3', '0'), ('1628', '195', '西陵区', '3', '0'), ('1629', '195', '伍家岗区', '3', '0'), ('1630', '195', '点军区', '3', '0'), ('1631', '195', '猇亭区', '3', '0'), ('1632', '195', '夷陵区', '3', '0'), ('1633', '195', '宜都市', '3', '0'), ('1634', '195', '当阳市', '3', '0'), ('1635', '195', '枝江市', '3', '0'), ('1636', '195', '远安县', '3', '0'), ('1637', '195', '兴山县', '3', '0'), ('1638', '195', '秭归县', '3', '0'), ('1639', '196', '恩施市', '3', '0'), ('1640', '196', '利川市', '3', '0'), ('1641', '196', '建始县', '3', '0'), ('1642', '196', '巴东县', '3', '0'), ('1643', '196', '宣恩县', '3', '0'), ('1644', '196', '咸丰县', '3', '0'), ('1645', '196', '来凤县', '3', '0'), ('1646', '196', '鹤峰县', '3', '0'), ('1647', '197', '岳麓区', '3', '0'), ('1648', '197', '芙蓉区', '3', '0'), ('1649', '197', '天心区', '3', '0'), ('1650', '197', '开福区', '3', '0'), ('1651', '197', '雨花区', '3', '0'), ('1652', '197', '开发区', '3', '0'), ('1653', '197', '浏阳市', '3', '0'), ('1654', '197', '长沙县', '3', '0'), ('1655', '197', '望城县', '3', '0'), ('1656', '197', '宁乡县', '3', '0'), ('1657', '198', '永定区', '3', '0'), ('1658', '198', '武陵源区', '3', '0'), ('1659', '198', '慈利县', '3', '0'), ('1660', '198', '桑植县', '3', '0'), ('1661', '199', '武陵区', '3', '0'), ('1662', '199', '鼎城区', '3', '0'), ('1663', '199', '津市市', '3', '0'), ('1664', '199', '安乡县', '3', '0'), ('1665', '199', '汉寿县', '3', '0'), ('1666', '199', '澧县', '3', '0'), ('1667', '199', '临澧县', '3', '0'), ('1668', '199', '桃源县', '3', '0'), ('1669', '199', '石门县', '3', '0'), ('1670', '200', '北湖区', '3', '0'), ('1671', '200', '苏仙区', '3', '0'), ('1672', '200', '资兴市', '3', '0'), ('1673', '200', '桂阳县', '3', '0'), ('1674', '200', '宜章县', '3', '0'), ('1675', '200', '永兴县', '3', '0'), ('1676', '200', '嘉禾县', '3', '0'), ('1677', '200', '临武县', '3', '0'), ('1678', '200', '汝城县', '3', '0'), ('1679', '200', '桂东县', '3', '0'), ('1680', '200', '安仁县', '3', '0'), ('1681', '201', '雁峰区', '3', '0'), ('1682', '201', '珠晖区', '3', '0'), ('1683', '201', '石鼓区', '3', '0'), ('1684', '201', '蒸湘区', '3', '0'), ('1685', '201', '南岳区', '3', '0'), ('1686', '201', '耒阳市', '3', '0'), ('1687', '201', '常宁市', '3', '0'), ('1688', '201', '衡阳县', '3', '0'), ('1689', '201', '衡南县', '3', '0'), ('1690', '201', '衡山县', '3', '0'), ('1691', '201', '衡东县', '3', '0'), ('1692', '201', '祁东县', '3', '0'), ('1693', '202', '鹤城区', '3', '0'), ('1694', '202', '靖州', '3', '0'), ('1695', '202', '麻阳', '3', '0'), ('1696', '202', '通道', '3', '0'), ('1697', '202', '新晃', '3', '0'), ('1698', '202', '芷江', '3', '0'), ('1699', '202', '沅陵县', '3', '0'), ('1700', '202', '辰溪县', '3', '0'), ('1701', '202', '溆浦县', '3', '0'), ('1702', '202', '中方县', '3', '0'), ('1703', '202', '会同县', '3', '0'), ('1704', '202', '洪江市', '3', '0'), ('1705', '203', '娄星区', '3', '0'), ('1706', '203', '冷水江市', '3', '0'), ('1707', '203', '涟源市', '3', '0'), ('1708', '203', '双峰县', '3', '0'), ('1709', '203', '新化县', '3', '0'), ('1710', '204', '城步', '3', '0'), ('1711', '204', '双清区', '3', '0'), ('1712', '204', '大祥区', '3', '0'), ('1713', '204', '北塔区', '3', '0'), ('1714', '204', '武冈市', '3', '0'), ('1715', '204', '邵东县', '3', '0'), ('1716', '204', '新邵县', '3', '0'), ('1717', '204', '邵阳县', '3', '0'), ('1718', '204', '隆回县', '3', '0'), ('1719', '204', '洞口县', '3', '0'), ('1720', '204', '绥宁县', '3', '0'), ('1721', '204', '新宁县', '3', '0'), ('1722', '205', '岳塘区', '3', '0'), ('1723', '205', '雨湖区', '3', '0'), ('1724', '205', '湘乡市', '3', '0'), ('1725', '205', '韶山市', '3', '0'), ('1726', '205', '湘潭县', '3', '0'), ('1727', '206', '吉首市', '3', '0'), ('1728', '206', '泸溪县', '3', '0'), ('1729', '206', '凤凰县', '3', '0'), ('1730', '206', '花垣县', '3', '0'), ('1731', '206', '保靖县', '3', '0'), ('1732', '206', '古丈县', '3', '0'), ('1733', '206', '永顺县', '3', '0'), ('1734', '206', '龙山县', '3', '0'), ('1735', '207', '赫山区', '3', '0'), ('1736', '207', '资阳区', '3', '0'), ('1737', '207', '沅江市', '3', '0'), ('1738', '207', '南县', '3', '0'), ('1739', '207', '桃江县', '3', '0'), ('1740', '207', '安化县', '3', '0'), ('1741', '208', '江华', '3', '0'), ('1742', '208', '冷水滩区', '3', '0'), ('1743', '208', '零陵区', '3', '0'), ('1744', '208', '祁阳县', '3', '0'), ('1745', '208', '东安县', '3', '0'), ('1746', '208', '双牌县', '3', '0'), ('1747', '208', '道县', '3', '0'), ('1748', '208', '江永县', '3', '0'), ('1749', '208', '宁远县', '3', '0'), ('1750', '208', '蓝山县', '3', '0'), ('1751', '208', '新田县', '3', '0'), ('1752', '209', '岳阳楼区', '3', '0'), ('1753', '209', '君山区', '3', '0'), ('1754', '209', '云溪区', '3', '0'), ('1755', '209', '汨罗市', '3', '0'), ('1756', '209', '临湘市', '3', '0'), ('1757', '209', '岳阳县', '3', '0'), ('1758', '209', '华容县', '3', '0'), ('1759', '209', '湘阴县', '3', '0'), ('1760', '209', '平江县', '3', '0'), ('1761', '210', '天元区', '3', '0'), ('1762', '210', '荷塘区', '3', '0'), ('1763', '210', '芦淞区', '3', '0'), ('1764', '210', '石峰区', '3', '0'), ('1765', '210', '醴陵市', '3', '0'), ('1766', '210', '株洲县', '3', '0'), ('1767', '210', '攸县', '3', '0'), ('1768', '210', '茶陵县', '3', '0'), ('1769', '210', '炎陵县', '3', '0'), ('1770', '211', '朝阳区', '3', '0'), ('1771', '211', '宽城区', '3', '0'), ('1772', '211', '二道区', '3', '0'), ('1773', '211', '南关区', '3', '0'), ('1774', '211', '绿园区', '3', '0'), ('1775', '211', '双阳区', '3', '0'), ('1776', '211', '净月潭开发区', '3', '0'), ('1777', '211', '高新技术开发区', '3', '0'), ('1778', '211', '经济技术开发区', '3', '0'), ('1779', '211', '汽车产业开发区', '3', '0'), ('1780', '211', '德惠市', '3', '0'), ('1781', '211', '九台市', '3', '0'), ('1782', '211', '榆树市', '3', '0'), ('1783', '211', '农安县', '3', '0'), ('1784', '212', '船营区', '3', '0'), ('1785', '212', '昌邑区', '3', '0'), ('1786', '212', '龙潭区', '3', '0'), ('1787', '212', '丰满区', '3', '0'), ('1788', '212', '蛟河市', '3', '0'), ('1789', '212', '桦甸市', '3', '0'), ('1790', '212', '舒兰市', '3', '0'), ('1791', '212', '磐石市', '3', '0'), ('1792', '212', '永吉县', '3', '0'), ('1793', '213', '洮北区', '3', '0'), ('1794', '213', '洮南市', '3', '0'), ('1795', '213', '大安市', '3', '0'), ('1796', '213', '镇赉县', '3', '0'), ('1797', '213', '通榆县', '3', '0'), ('1798', '214', '江源区', '3', '0'), ('1799', '214', '八道江区', '3', '0'), ('1800', '214', '长白', '3', '0'), ('1801', '214', '临江市', '3', '0'), ('1802', '214', '抚松县', '3', '0'), ('1803', '214', '靖宇县', '3', '0'), ('1804', '215', '龙山区', '3', '0'), ('1805', '215', '西安区', '3', '0'), ('1806', '215', '东丰县', '3', '0'), ('1807', '215', '东辽县', '3', '0'), ('1808', '216', '铁西区', '3', '0'), ('1809', '216', '铁东区', '3', '0'), ('1810', '216', '伊通', '3', '0'), ('1811', '216', '公主岭市', '3', '0'), ('1812', '216', '双辽市', '3', '0'), ('1813', '216', '梨树县', '3', '0'), ('1814', '217', '前郭尔罗斯', '3', '0'), ('1815', '217', '宁江区', '3', '0'), ('1816', '217', '长岭县', '3', '0'), ('1817', '217', '乾安县', '3', '0'), ('1818', '217', '扶余县', '3', '0'), ('1819', '218', '东昌区', '3', '0'), ('1820', '218', '二道江区', '3', '0'), ('1821', '218', '梅河口市', '3', '0'), ('1822', '218', '集安市', '3', '0'), ('1823', '218', '通化县', '3', '0'), ('1824', '218', '辉南县', '3', '0'), ('1825', '218', '柳河县', '3', '0'), ('1826', '219', '延吉市', '3', '0'), ('1827', '219', '图们市', '3', '0'), ('1828', '219', '敦化市', '3', '0'), ('1829', '219', '珲春市', '3', '0'), ('1830', '219', '龙井市', '3', '0'), ('1831', '219', '和龙市', '3', '0'), ('1832', '219', '安图县', '3', '0'), ('1833', '219', '汪清县', '3', '0'), ('1834', '220', '玄武区', '3', '0'), ('1835', '220', '鼓楼区', '3', '0'), ('1836', '220', '白下区', '3', '0'), ('1837', '220', '建邺区', '3', '0'), ('1838', '220', '秦淮区', '3', '0'), ('1839', '220', '雨花台区', '3', '0'), ('1840', '220', '下关区', '3', '0'), ('1841', '220', '栖霞区', '3', '0'), ('1842', '220', '浦口区', '3', '0'), ('1843', '220', '江宁区', '3', '0'), ('1844', '220', '六合区', '3', '0'), ('1845', '220', '溧水县', '3', '0'), ('1846', '220', '高淳县', '3', '0'), ('1847', '221', '沧浪区', '3', '0'), ('1848', '221', '金阊区', '3', '0'), ('1849', '221', '平江区', '3', '0'), ('1850', '221', '虎丘区', '3', '0'), ('1851', '221', '吴中区', '3', '0'), ('1852', '221', '相城区', '3', '0'), ('1853', '221', '园区', '3', '0'), ('1854', '221', '新区', '3', '0'), ('1855', '221', '常熟市', '3', '0'), ('1856', '221', '张家港市', '3', '0'), ('1857', '221', '玉山镇', '3', '0'), ('1858', '221', '巴城镇', '3', '0'), ('1859', '221', '周市镇', '3', '0'), ('1860', '221', '陆家镇', '3', '0'), ('1861', '221', '花桥镇', '3', '0'), ('1862', '221', '淀山湖镇', '3', '0'), ('1863', '221', '张浦镇', '3', '0'), ('1864', '221', '周庄镇', '3', '0'), ('1865', '221', '千灯镇', '3', '0'), ('1866', '221', '锦溪镇', '3', '0'), ('1867', '221', '开发区', '3', '0'), ('1868', '221', '吴江市', '3', '0'), ('1869', '221', '太仓市', '3', '0'), ('1870', '222', '崇安区', '3', '0'), ('1871', '222', '北塘区', '3', '0'), ('1872', '222', '南长区', '3', '0'), ('1873', '222', '锡山区', '3', '0'), ('1874', '222', '惠山区', '3', '0'), ('1875', '222', '滨湖区', '3', '0'), ('1876', '222', '新区', '3', '0'), ('1877', '222', '江阴市', '3', '0'), ('1878', '222', '宜兴市', '3', '0'), ('1879', '223', '天宁区', '3', '0'), ('1880', '223', '钟楼区', '3', '0'), ('1881', '223', '戚墅堰区', '3', '0'), ('1882', '223', '郊区', '3', '0'), ('1883', '223', '新北区', '3', '0'), ('1884', '223', '武进区', '3', '0'), ('1885', '223', '溧阳市', '3', '0'), ('1886', '223', '金坛市', '3', '0'), ('1887', '224', '清河区', '3', '0'), ('1888', '224', '清浦区', '3', '0'), ('1889', '224', '楚州区', '3', '0'), ('1890', '224', '淮阴区', '3', '0'), ('1891', '224', '涟水县', '3', '0'), ('1892', '224', '洪泽县', '3', '0'), ('1893', '224', '盱眙县', '3', '0'), ('1894', '224', '金湖县', '3', '0'), ('1895', '225', '新浦区', '3', '0'), ('1896', '225', '连云区', '3', '0'), ('1897', '225', '海州区', '3', '0'), ('1898', '225', '赣榆县', '3', '0'), ('1899', '225', '东海县', '3', '0'), ('1900', '225', '灌云县', '3', '0'), ('1901', '225', '灌南县', '3', '0'), ('1902', '226', '崇川区', '3', '0'), ('1903', '226', '港闸区', '3', '0'), ('1904', '226', '经济开发区', '3', '0'), ('1905', '226', '启东市', '3', '0'), ('1906', '226', '如皋市', '3', '0'), ('1907', '226', '通州市', '3', '0'), ('1908', '226', '海门市', '3', '0'), ('1909', '226', '海安县', '3', '0'), ('1910', '226', '如东县', '3', '0'), ('1911', '227', '宿城区', '3', '0'), ('1912', '227', '宿豫区', '3', '0'), ('1913', '227', '宿豫县', '3', '0'), ('1914', '227', '沭阳县', '3', '0'), ('1915', '227', '泗阳县', '3', '0'), ('1916', '227', '泗洪县', '3', '0'), ('1917', '228', '海陵区', '3', '0'), ('1918', '228', '高港区', '3', '0'), ('1919', '228', '兴化市', '3', '0'), ('1920', '228', '靖江市', '3', '0'), ('1921', '228', '泰兴市', '3', '0'), ('1922', '228', '姜堰市', '3', '0'), ('1923', '229', '云龙区', '3', '0'), ('1924', '229', '鼓楼区', '3', '0'), ('1925', '229', '九里区', '3', '0'), ('1926', '229', '贾汪区', '3', '0'), ('1927', '229', '泉山区', '3', '0'), ('1928', '229', '新沂市', '3', '0'), ('1929', '229', '邳州市', '3', '0'), ('1930', '229', '丰县', '3', '0'), ('1931', '229', '沛县', '3', '0'), ('1932', '229', '铜山县', '3', '0'), ('1933', '229', '睢宁县', '3', '0'), ('1934', '230', '城区', '3', '0'), ('1935', '230', '亭湖区', '3', '0'), ('1936', '230', '盐都区', '3', '0'), ('1937', '230', '盐都县', '3', '0'), ('1938', '230', '东台市', '3', '0'), ('1939', '230', '大丰市', '3', '0'), ('1940', '230', '响水县', '3', '0'), ('1941', '230', '滨海县', '3', '0'), ('1942', '230', '阜宁县', '3', '0'), ('1943', '230', '射阳县', '3', '0'), ('1944', '230', '建湖县', '3', '0'), ('1945', '231', '广陵区', '3', '0'), ('1946', '231', '维扬区', '3', '0'), ('1947', '231', '邗江区', '3', '0'), ('1948', '231', '仪征市', '3', '0'), ('1949', '231', '高邮市', '3', '0'), ('1950', '231', '江都市', '3', '0'), ('1951', '231', '宝应县', '3', '0'), ('1952', '232', '京口区', '3', '0'), ('1953', '232', '润州区', '3', '0'), ('1954', '232', '丹徒区', '3', '0'), ('1955', '232', '丹阳市', '3', '0'), ('1956', '232', '扬中市', '3', '0'), ('1957', '232', '句容市', '3', '0'), ('1958', '233', '东湖区', '3', '0'), ('1959', '233', '西湖区', '3', '0'), ('1960', '233', '青云谱区', '3', '0'), ('1961', '233', '湾里区', '3', '0'), ('1962', '233', '青山湖区', '3', '0'), ('1963', '233', '红谷滩新区', '3', '0'), ('1964', '233', '昌北区', '3', '0'), ('1965', '233', '高新区', '3', '0'), ('1966', '233', '南昌县', '3', '0'), ('1967', '233', '新建县', '3', '0'), ('1968', '233', '安义县', '3', '0'), ('1969', '233', '进贤县', '3', '0'), ('1970', '234', '临川区', '3', '0'), ('1971', '234', '南城县', '3', '0'), ('1972', '234', '黎川县', '3', '0'), ('1973', '234', '南丰县', '3', '0'), ('1974', '234', '崇仁县', '3', '0'), ('1975', '234', '乐安县', '3', '0'), ('1976', '234', '宜黄县', '3', '0'), ('1977', '234', '金溪县', '3', '0'), ('1978', '234', '资溪县', '3', '0'), ('1979', '234', '东乡县', '3', '0'), ('1980', '234', '广昌县', '3', '0'), ('1981', '235', '章贡区', '3', '0'), ('1982', '235', '于都县', '3', '0'), ('1983', '235', '瑞金市', '3', '0'), ('1984', '235', '南康市', '3', '0'), ('1985', '235', '赣县', '3', '0'), ('1986', '235', '信丰县', '3', '0'), ('1987', '235', '大余县', '3', '0'), ('1988', '235', '上犹县', '3', '0'), ('1989', '235', '崇义县', '3', '0'), ('1990', '235', '安远县', '3', '0'), ('1991', '235', '龙南县', '3', '0'), ('1992', '235', '定南县', '3', '0'), ('1993', '235', '全南县', '3', '0'), ('1994', '235', '宁都县', '3', '0'), ('1995', '235', '兴国县', '3', '0'), ('1996', '235', '会昌县', '3', '0'), ('1997', '235', '寻乌县', '3', '0'), ('1998', '235', '石城县', '3', '0'), ('1999', '236', '安福县', '3', '0'), ('2000', '236', '吉州区', '3', '0');
INSERT INTO `ecs_region` VALUES ('2001', '236', '青原区', '3', '0'), ('2002', '236', '井冈山市', '3', '0'), ('2003', '236', '吉安县', '3', '0'), ('2004', '236', '吉水县', '3', '0'), ('2005', '236', '峡江县', '3', '0'), ('2006', '236', '新干县', '3', '0'), ('2007', '236', '永丰县', '3', '0'), ('2008', '236', '泰和县', '3', '0'), ('2009', '236', '遂川县', '3', '0'), ('2010', '236', '万安县', '3', '0'), ('2011', '236', '永新县', '3', '0'), ('2012', '237', '珠山区', '3', '0'), ('2013', '237', '昌江区', '3', '0'), ('2014', '237', '乐平市', '3', '0'), ('2015', '237', '浮梁县', '3', '0'), ('2016', '238', '浔阳区', '3', '0'), ('2017', '238', '庐山区', '3', '0'), ('2018', '238', '瑞昌市', '3', '0'), ('2019', '238', '九江县', '3', '0'), ('2020', '238', '武宁县', '3', '0'), ('2021', '238', '修水县', '3', '0'), ('2022', '238', '永修县', '3', '0'), ('2023', '238', '德安县', '3', '0'), ('2024', '238', '星子县', '3', '0'), ('2025', '238', '都昌县', '3', '0'), ('2026', '238', '湖口县', '3', '0'), ('2027', '238', '彭泽县', '3', '0'), ('2028', '239', '安源区', '3', '0'), ('2029', '239', '湘东区', '3', '0'), ('2030', '239', '莲花县', '3', '0'), ('2031', '239', '芦溪县', '3', '0'), ('2032', '239', '上栗县', '3', '0'), ('2033', '240', '信州区', '3', '0'), ('2034', '240', '德兴市', '3', '0'), ('2035', '240', '上饶县', '3', '0'), ('2036', '240', '广丰县', '3', '0'), ('2037', '240', '玉山县', '3', '0'), ('2038', '240', '铅山县', '3', '0'), ('2039', '240', '横峰县', '3', '0'), ('2040', '240', '弋阳县', '3', '0'), ('2041', '240', '余干县', '3', '0'), ('2042', '240', '波阳县', '3', '0'), ('2043', '240', '万年县', '3', '0'), ('2044', '240', '婺源县', '3', '0'), ('2045', '241', '渝水区', '3', '0'), ('2046', '241', '分宜县', '3', '0'), ('2047', '242', '袁州区', '3', '0'), ('2048', '242', '丰城市', '3', '0'), ('2049', '242', '樟树市', '3', '0'), ('2050', '242', '高安市', '3', '0'), ('2051', '242', '奉新县', '3', '0'), ('2052', '242', '万载县', '3', '0'), ('2053', '242', '上高县', '3', '0'), ('2054', '242', '宜丰县', '3', '0'), ('2055', '242', '靖安县', '3', '0'), ('2056', '242', '铜鼓县', '3', '0'), ('2057', '243', '月湖区', '3', '0'), ('2058', '243', '贵溪市', '3', '0'), ('2059', '243', '余江县', '3', '0'), ('2060', '244', '沈河区', '3', '0'), ('2061', '244', '皇姑区', '3', '0'), ('2062', '244', '和平区', '3', '0'), ('2063', '244', '大东区', '3', '0'), ('2064', '244', '铁西区', '3', '0'), ('2065', '244', '苏家屯区', '3', '0'), ('2066', '244', '东陵区', '3', '0'), ('2067', '244', '沈北新区', '3', '0'), ('2068', '244', '于洪区', '3', '0'), ('2069', '244', '浑南新区', '3', '0'), ('2070', '244', '新民市', '3', '0'), ('2071', '244', '辽中县', '3', '0'), ('2072', '244', '康平县', '3', '0'), ('2073', '244', '法库县', '3', '0'), ('2074', '245', '西岗区', '3', '0'), ('2075', '245', '中山区', '3', '0'), ('2076', '245', '沙河口区', '3', '0'), ('2077', '245', '甘井子区', '3', '0'), ('2078', '245', '旅顺口区', '3', '0'), ('2079', '245', '金州区', '3', '0'), ('2080', '245', '开发区', '3', '0'), ('2081', '245', '瓦房店市', '3', '0'), ('2082', '245', '普兰店市', '3', '0'), ('2083', '245', '庄河市', '3', '0'), ('2084', '245', '长海县', '3', '0'), ('2085', '246', '铁东区', '3', '0'), ('2086', '246', '铁西区', '3', '0'), ('2087', '246', '立山区', '3', '0'), ('2088', '246', '千山区', '3', '0'), ('2089', '246', '岫岩', '3', '0'), ('2090', '246', '海城市', '3', '0'), ('2091', '246', '台安县', '3', '0'), ('2092', '247', '本溪', '3', '0'), ('2093', '247', '平山区', '3', '0'), ('2094', '247', '明山区', '3', '0'), ('2095', '247', '溪湖区', '3', '0'), ('2096', '247', '南芬区', '3', '0'), ('2097', '247', '桓仁', '3', '0'), ('2098', '248', '双塔区', '3', '0'), ('2099', '248', '龙城区', '3', '0'), ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0'), ('2101', '248', '北票市', '3', '0'), ('2102', '248', '凌源市', '3', '0'), ('2103', '248', '朝阳县', '3', '0'), ('2104', '248', '建平县', '3', '0'), ('2105', '249', '振兴区', '3', '0'), ('2106', '249', '元宝区', '3', '0'), ('2107', '249', '振安区', '3', '0'), ('2108', '249', '宽甸', '3', '0'), ('2109', '249', '东港市', '3', '0'), ('2110', '249', '凤城市', '3', '0'), ('2111', '250', '顺城区', '3', '0'), ('2112', '250', '新抚区', '3', '0'), ('2113', '250', '东洲区', '3', '0'), ('2114', '250', '望花区', '3', '0'), ('2115', '250', '清原', '3', '0'), ('2116', '250', '新宾', '3', '0'), ('2117', '250', '抚顺县', '3', '0'), ('2118', '251', '阜新', '3', '0'), ('2119', '251', '海州区', '3', '0'), ('2120', '251', '新邱区', '3', '0'), ('2121', '251', '太平区', '3', '0'), ('2122', '251', '清河门区', '3', '0'), ('2123', '251', '细河区', '3', '0'), ('2124', '251', '彰武县', '3', '0'), ('2125', '252', '龙港区', '3', '0'), ('2126', '252', '南票区', '3', '0'), ('2127', '252', '连山区', '3', '0'), ('2128', '252', '兴城市', '3', '0'), ('2129', '252', '绥中县', '3', '0'), ('2130', '252', '建昌县', '3', '0'), ('2131', '253', '太和区', '3', '0'), ('2132', '253', '古塔区', '3', '0'), ('2133', '253', '凌河区', '3', '0'), ('2134', '253', '凌海市', '3', '0'), ('2135', '253', '北镇市', '3', '0'), ('2136', '253', '黑山县', '3', '0'), ('2137', '253', '义县', '3', '0'), ('2138', '254', '白塔区', '3', '0'), ('2139', '254', '文圣区', '3', '0'), ('2140', '254', '宏伟区', '3', '0'), ('2141', '254', '太子河区', '3', '0'), ('2142', '254', '弓长岭区', '3', '0'), ('2143', '254', '灯塔市', '3', '0'), ('2144', '254', '辽阳县', '3', '0'), ('2145', '255', '双台子区', '3', '0'), ('2146', '255', '兴隆台区', '3', '0'), ('2147', '255', '大洼县', '3', '0'), ('2148', '255', '盘山县', '3', '0'), ('2149', '256', '银州区', '3', '0'), ('2150', '256', '清河区', '3', '0'), ('2151', '256', '调兵山市', '3', '0'), ('2152', '256', '开原市', '3', '0'), ('2153', '256', '铁岭县', '3', '0'), ('2154', '256', '西丰县', '3', '0'), ('2155', '256', '昌图县', '3', '0'), ('2156', '257', '站前区', '3', '0'), ('2157', '257', '西市区', '3', '0'), ('2158', '257', '鲅鱼圈区', '3', '0'), ('2159', '257', '老边区', '3', '0'), ('2160', '257', '盖州市', '3', '0'), ('2161', '257', '大石桥市', '3', '0'), ('2162', '258', '回民区', '3', '0'), ('2163', '258', '玉泉区', '3', '0'), ('2164', '258', '新城区', '3', '0'), ('2165', '258', '赛罕区', '3', '0'), ('2166', '258', '清水河县', '3', '0'), ('2167', '258', '土默特左旗', '3', '0'), ('2168', '258', '托克托县', '3', '0'), ('2169', '258', '和林格尔县', '3', '0'), ('2170', '258', '武川县', '3', '0'), ('2171', '259', '阿拉善左旗', '3', '0'), ('2172', '259', '阿拉善右旗', '3', '0'), ('2173', '259', '额济纳旗', '3', '0'), ('2174', '260', '临河区', '3', '0'), ('2175', '260', '五原县', '3', '0'), ('2176', '260', '磴口县', '3', '0'), ('2177', '260', '乌拉特前旗', '3', '0'), ('2178', '260', '乌拉特中旗', '3', '0'), ('2179', '260', '乌拉特后旗', '3', '0'), ('2180', '260', '杭锦后旗', '3', '0'), ('2181', '261', '昆都仑区', '3', '0'), ('2182', '261', '青山区', '3', '0'), ('2183', '261', '东河区', '3', '0'), ('2184', '261', '九原区', '3', '0'), ('2185', '261', '石拐区', '3', '0'), ('2186', '261', '白云矿区', '3', '0'), ('2187', '261', '土默特右旗', '3', '0'), ('2188', '261', '固阳县', '3', '0'), ('2189', '261', '达尔罕茂明安联合旗', '3', '0'), ('2190', '262', '红山区', '3', '0'), ('2191', '262', '元宝山区', '3', '0'), ('2192', '262', '松山区', '3', '0'), ('2193', '262', '阿鲁科尔沁旗', '3', '0'), ('2194', '262', '巴林左旗', '3', '0'), ('2195', '262', '巴林右旗', '3', '0'), ('2196', '262', '林西县', '3', '0'), ('2197', '262', '克什克腾旗', '3', '0'), ('2198', '262', '翁牛特旗', '3', '0'), ('2199', '262', '喀喇沁旗', '3', '0'), ('2200', '262', '宁城县', '3', '0'), ('2201', '262', '敖汉旗', '3', '0'), ('2202', '263', '东胜区', '3', '0'), ('2203', '263', '达拉特旗', '3', '0'), ('2204', '263', '准格尔旗', '3', '0'), ('2205', '263', '鄂托克前旗', '3', '0'), ('2206', '263', '鄂托克旗', '3', '0'), ('2207', '263', '杭锦旗', '3', '0'), ('2208', '263', '乌审旗', '3', '0'), ('2209', '263', '伊金霍洛旗', '3', '0'), ('2210', '264', '海拉尔区', '3', '0'), ('2211', '264', '莫力达瓦', '3', '0'), ('2212', '264', '满洲里市', '3', '0'), ('2213', '264', '牙克石市', '3', '0'), ('2214', '264', '扎兰屯市', '3', '0'), ('2215', '264', '额尔古纳市', '3', '0'), ('2216', '264', '根河市', '3', '0'), ('2217', '264', '阿荣旗', '3', '0'), ('2218', '264', '鄂伦春自治旗', '3', '0'), ('2219', '264', '鄂温克族自治旗', '3', '0'), ('2220', '264', '陈巴尔虎旗', '3', '0'), ('2221', '264', '新巴尔虎左旗', '3', '0'), ('2222', '264', '新巴尔虎右旗', '3', '0'), ('2223', '265', '科尔沁区', '3', '0'), ('2224', '265', '霍林郭勒市', '3', '0'), ('2225', '265', '科尔沁左翼中旗', '3', '0'), ('2226', '265', '科尔沁左翼后旗', '3', '0'), ('2227', '265', '开鲁县', '3', '0'), ('2228', '265', '库伦旗', '3', '0'), ('2229', '265', '奈曼旗', '3', '0'), ('2230', '265', '扎鲁特旗', '3', '0'), ('2231', '266', '海勃湾区', '3', '0'), ('2232', '266', '乌达区', '3', '0'), ('2233', '266', '海南区', '3', '0'), ('2234', '267', '化德县', '3', '0'), ('2235', '267', '集宁区', '3', '0'), ('2236', '267', '丰镇市', '3', '0'), ('2237', '267', '卓资县', '3', '0'), ('2238', '267', '商都县', '3', '0'), ('2239', '267', '兴和县', '3', '0'), ('2240', '267', '凉城县', '3', '0'), ('2241', '267', '察哈尔右翼前旗', '3', '0'), ('2242', '267', '察哈尔右翼中旗', '3', '0'), ('2243', '267', '察哈尔右翼后旗', '3', '0'), ('2244', '267', '四子王旗', '3', '0'), ('2245', '268', '二连浩特市', '3', '0'), ('2246', '268', '锡林浩特市', '3', '0'), ('2247', '268', '阿巴嘎旗', '3', '0'), ('2248', '268', '苏尼特左旗', '3', '0'), ('2249', '268', '苏尼特右旗', '3', '0'), ('2250', '268', '东乌珠穆沁旗', '3', '0'), ('2251', '268', '西乌珠穆沁旗', '3', '0'), ('2252', '268', '太仆寺旗', '3', '0'), ('2253', '268', '镶黄旗', '3', '0'), ('2254', '268', '正镶白旗', '3', '0'), ('2255', '268', '正蓝旗', '3', '0'), ('2256', '268', '多伦县', '3', '0'), ('2257', '269', '乌兰浩特市', '3', '0'), ('2258', '269', '阿尔山市', '3', '0'), ('2259', '269', '科尔沁右翼前旗', '3', '0'), ('2260', '269', '科尔沁右翼中旗', '3', '0'), ('2261', '269', '扎赉特旗', '3', '0'), ('2262', '269', '突泉县', '3', '0'), ('2263', '270', '西夏区', '3', '0'), ('2264', '270', '金凤区', '3', '0'), ('2265', '270', '兴庆区', '3', '0'), ('2266', '270', '灵武市', '3', '0'), ('2267', '270', '永宁县', '3', '0'), ('2268', '270', '贺兰县', '3', '0'), ('2269', '271', '原州区', '3', '0'), ('2270', '271', '海原县', '3', '0'), ('2271', '271', '西吉县', '3', '0'), ('2272', '271', '隆德县', '3', '0'), ('2273', '271', '泾源县', '3', '0'), ('2274', '271', '彭阳县', '3', '0'), ('2275', '272', '惠农县', '3', '0'), ('2276', '272', '大武口区', '3', '0'), ('2277', '272', '惠农区', '3', '0'), ('2278', '272', '陶乐县', '3', '0'), ('2279', '272', '平罗县', '3', '0'), ('2280', '273', '利通区', '3', '0'), ('2281', '273', '中卫县', '3', '0'), ('2282', '273', '青铜峡市', '3', '0'), ('2283', '273', '中宁县', '3', '0'), ('2284', '273', '盐池县', '3', '0'), ('2285', '273', '同心县', '3', '0'), ('2286', '274', '沙坡头区', '3', '0'), ('2287', '274', '海原县', '3', '0'), ('2288', '274', '中宁县', '3', '0'), ('2289', '275', '城中区', '3', '0'), ('2290', '275', '城东区', '3', '0'), ('2291', '275', '城西区', '3', '0'), ('2292', '275', '城北区', '3', '0'), ('2293', '275', '湟中县', '3', '0'), ('2294', '275', '湟源县', '3', '0'), ('2295', '275', '大通', '3', '0'), ('2296', '276', '玛沁县', '3', '0'), ('2297', '276', '班玛县', '3', '0'), ('2298', '276', '甘德县', '3', '0'), ('2299', '276', '达日县', '3', '0'), ('2300', '276', '久治县', '3', '0'), ('2301', '276', '玛多县', '3', '0'), ('2302', '277', '海晏县', '3', '0'), ('2303', '277', '祁连县', '3', '0'), ('2304', '277', '刚察县', '3', '0'), ('2305', '277', '门源', '3', '0'), ('2306', '278', '平安县', '3', '0'), ('2307', '278', '乐都县', '3', '0'), ('2308', '278', '民和', '3', '0'), ('2309', '278', '互助', '3', '0'), ('2310', '278', '化隆', '3', '0'), ('2311', '278', '循化', '3', '0'), ('2312', '279', '共和县', '3', '0'), ('2313', '279', '同德县', '3', '0'), ('2314', '279', '贵德县', '3', '0'), ('2315', '279', '兴海县', '3', '0'), ('2316', '279', '贵南县', '3', '0'), ('2317', '280', '德令哈市', '3', '0'), ('2318', '280', '格尔木市', '3', '0'), ('2319', '280', '乌兰县', '3', '0'), ('2320', '280', '都兰县', '3', '0'), ('2321', '280', '天峻县', '3', '0'), ('2322', '281', '同仁县', '3', '0'), ('2323', '281', '尖扎县', '3', '0'), ('2324', '281', '泽库县', '3', '0'), ('2325', '281', '河南蒙古族自治县', '3', '0'), ('2326', '282', '玉树县', '3', '0'), ('2327', '282', '杂多县', '3', '0'), ('2328', '282', '称多县', '3', '0'), ('2329', '282', '治多县', '3', '0'), ('2330', '282', '囊谦县', '3', '0'), ('2331', '282', '曲麻莱县', '3', '0'), ('2332', '283', '市中区', '3', '0'), ('2333', '283', '历下区', '3', '0'), ('2334', '283', '天桥区', '3', '0'), ('2335', '283', '槐荫区', '3', '0'), ('2336', '283', '历城区', '3', '0'), ('2337', '283', '长清区', '3', '0'), ('2338', '283', '章丘市', '3', '0'), ('2339', '283', '平阴县', '3', '0'), ('2340', '283', '济阳县', '3', '0'), ('2341', '283', '商河县', '3', '0'), ('2342', '284', '市南区', '3', '0'), ('2343', '284', '市北区', '3', '0'), ('2344', '284', '城阳区', '3', '0'), ('2345', '284', '四方区', '3', '0'), ('2346', '284', '李沧区', '3', '0'), ('2347', '284', '黄岛区', '3', '0'), ('2348', '284', '崂山区', '3', '0'), ('2349', '284', '胶州市', '3', '0'), ('2350', '284', '即墨市', '3', '0'), ('2351', '284', '平度市', '3', '0'), ('2352', '284', '胶南市', '3', '0'), ('2353', '284', '莱西市', '3', '0'), ('2354', '285', '滨城区', '3', '0'), ('2355', '285', '惠民县', '3', '0'), ('2356', '285', '阳信县', '3', '0'), ('2357', '285', '无棣县', '3', '0'), ('2358', '285', '沾化县', '3', '0'), ('2359', '285', '博兴县', '3', '0'), ('2360', '285', '邹平县', '3', '0'), ('2361', '286', '德城区', '3', '0'), ('2362', '286', '陵县', '3', '0'), ('2363', '286', '乐陵市', '3', '0'), ('2364', '286', '禹城市', '3', '0'), ('2365', '286', '宁津县', '3', '0'), ('2366', '286', '庆云县', '3', '0'), ('2367', '286', '临邑县', '3', '0'), ('2368', '286', '齐河县', '3', '0'), ('2369', '286', '平原县', '3', '0'), ('2370', '286', '夏津县', '3', '0'), ('2371', '286', '武城县', '3', '0'), ('2372', '287', '东营区', '3', '0'), ('2373', '287', '河口区', '3', '0'), ('2374', '287', '垦利县', '3', '0'), ('2375', '287', '利津县', '3', '0'), ('2376', '287', '广饶县', '3', '0'), ('2377', '288', '牡丹区', '3', '0'), ('2378', '288', '曹县', '3', '0'), ('2379', '288', '单县', '3', '0'), ('2380', '288', '成武县', '3', '0'), ('2381', '288', '巨野县', '3', '0'), ('2382', '288', '郓城县', '3', '0'), ('2383', '288', '鄄城县', '3', '0'), ('2384', '288', '定陶县', '3', '0'), ('2385', '288', '东明县', '3', '0'), ('2386', '289', '市中区', '3', '0'), ('2387', '289', '任城区', '3', '0'), ('2388', '289', '曲阜市', '3', '0'), ('2389', '289', '兖州市', '3', '0'), ('2390', '289', '邹城市', '3', '0'), ('2391', '289', '微山县', '3', '0'), ('2392', '289', '鱼台县', '3', '0'), ('2393', '289', '金乡县', '3', '0'), ('2394', '289', '嘉祥县', '3', '0'), ('2395', '289', '汶上县', '3', '0'), ('2396', '289', '泗水县', '3', '0'), ('2397', '289', '梁山县', '3', '0'), ('2398', '290', '莱城区', '3', '0'), ('2399', '290', '钢城区', '3', '0'), ('2400', '291', '东昌府区', '3', '0'), ('2401', '291', '临清市', '3', '0'), ('2402', '291', '阳谷县', '3', '0'), ('2403', '291', '莘县', '3', '0'), ('2404', '291', '茌平县', '3', '0'), ('2405', '291', '东阿县', '3', '0'), ('2406', '291', '冠县', '3', '0'), ('2407', '291', '高唐县', '3', '0'), ('2408', '292', '兰山区', '3', '0'), ('2409', '292', '罗庄区', '3', '0'), ('2410', '292', '河东区', '3', '0'), ('2411', '292', '沂南县', '3', '0'), ('2412', '292', '郯城县', '3', '0'), ('2413', '292', '沂水县', '3', '0'), ('2414', '292', '苍山县', '3', '0'), ('2415', '292', '费县', '3', '0'), ('2416', '292', '平邑县', '3', '0'), ('2417', '292', '莒南县', '3', '0'), ('2418', '292', '蒙阴县', '3', '0'), ('2419', '292', '临沭县', '3', '0'), ('2420', '293', '东港区', '3', '0'), ('2421', '293', '岚山区', '3', '0'), ('2422', '293', '五莲县', '3', '0'), ('2423', '293', '莒县', '3', '0'), ('2424', '294', '泰山区', '3', '0'), ('2425', '294', '岱岳区', '3', '0'), ('2426', '294', '新泰市', '3', '0'), ('2427', '294', '肥城市', '3', '0'), ('2428', '294', '宁阳县', '3', '0'), ('2429', '294', '东平县', '3', '0'), ('2430', '295', '荣成市', '3', '0'), ('2431', '295', '乳山市', '3', '0'), ('2432', '295', '环翠区', '3', '0'), ('2433', '295', '文登市', '3', '0'), ('2434', '296', '潍城区', '3', '0'), ('2435', '296', '寒亭区', '3', '0'), ('2436', '296', '坊子区', '3', '0'), ('2437', '296', '奎文区', '3', '0'), ('2438', '296', '青州市', '3', '0'), ('2439', '296', '诸城市', '3', '0'), ('2440', '296', '寿光市', '3', '0'), ('2441', '296', '安丘市', '3', '0'), ('2442', '296', '高密市', '3', '0'), ('2443', '296', '昌邑市', '3', '0'), ('2444', '296', '临朐县', '3', '0'), ('2445', '296', '昌乐县', '3', '0'), ('2446', '297', '芝罘区', '3', '0'), ('2447', '297', '福山区', '3', '0'), ('2448', '297', '牟平区', '3', '0'), ('2449', '297', '莱山区', '3', '0'), ('2450', '297', '开发区', '3', '0'), ('2451', '297', '龙口市', '3', '0'), ('2452', '297', '莱阳市', '3', '0'), ('2453', '297', '莱州市', '3', '0'), ('2454', '297', '蓬莱市', '3', '0'), ('2455', '297', '招远市', '3', '0'), ('2456', '297', '栖霞市', '3', '0'), ('2457', '297', '海阳市', '3', '0'), ('2458', '297', '长岛县', '3', '0'), ('2459', '298', '市中区', '3', '0'), ('2460', '298', '山亭区', '3', '0'), ('2461', '298', '峄城区', '3', '0'), ('2462', '298', '台儿庄区', '3', '0'), ('2463', '298', '薛城区', '3', '0'), ('2464', '298', '滕州市', '3', '0'), ('2465', '299', '张店区', '3', '0'), ('2466', '299', '临淄区', '3', '0'), ('2467', '299', '淄川区', '3', '0'), ('2468', '299', '博山区', '3', '0'), ('2469', '299', '周村区', '3', '0'), ('2470', '299', '桓台县', '3', '0'), ('2471', '299', '高青县', '3', '0'), ('2472', '299', '沂源县', '3', '0'), ('2473', '300', '杏花岭区', '3', '0'), ('2474', '300', '小店区', '3', '0'), ('2475', '300', '迎泽区', '3', '0'), ('2476', '300', '尖草坪区', '3', '0'), ('2477', '300', '万柏林区', '3', '0'), ('2478', '300', '晋源区', '3', '0'), ('2479', '300', '高新开发区', '3', '0'), ('2480', '300', '民营经济开发区', '3', '0'), ('2481', '300', '经济技术开发区', '3', '0'), ('2482', '300', '清徐县', '3', '0'), ('2483', '300', '阳曲县', '3', '0'), ('2484', '300', '娄烦县', '3', '0'), ('2485', '300', '古交市', '3', '0'), ('2486', '301', '城区', '3', '0'), ('2487', '301', '郊区', '3', '0'), ('2488', '301', '沁县', '3', '0'), ('2489', '301', '潞城市', '3', '0'), ('2490', '301', '长治县', '3', '0'), ('2491', '301', '襄垣县', '3', '0'), ('2492', '301', '屯留县', '3', '0'), ('2493', '301', '平顺县', '3', '0'), ('2494', '301', '黎城县', '3', '0'), ('2495', '301', '壶关县', '3', '0'), ('2496', '301', '长子县', '3', '0'), ('2497', '301', '武乡县', '3', '0'), ('2498', '301', '沁源县', '3', '0'), ('2499', '302', '城区', '3', '0'), ('2500', '302', '矿区', '3', '0'), ('2501', '302', '南郊区', '3', '0'), ('2502', '302', '新荣区', '3', '0'), ('2503', '302', '阳高县', '3', '0'), ('2504', '302', '天镇县', '3', '0'), ('2505', '302', '广灵县', '3', '0'), ('2506', '302', '灵丘县', '3', '0'), ('2507', '302', '浑源县', '3', '0'), ('2508', '302', '左云县', '3', '0'), ('2509', '302', '大同县', '3', '0'), ('2510', '303', '城区', '3', '0'), ('2511', '303', '高平市', '3', '0'), ('2512', '303', '沁水县', '3', '0'), ('2513', '303', '阳城县', '3', '0'), ('2514', '303', '陵川县', '3', '0'), ('2515', '303', '泽州县', '3', '0'), ('2516', '304', '榆次区', '3', '0'), ('2517', '304', '介休市', '3', '0'), ('2518', '304', '榆社县', '3', '0'), ('2519', '304', '左权县', '3', '0'), ('2520', '304', '和顺县', '3', '0'), ('2521', '304', '昔阳县', '3', '0'), ('2522', '304', '寿阳县', '3', '0'), ('2523', '304', '太谷县', '3', '0'), ('2524', '304', '祁县', '3', '0'), ('2525', '304', '平遥县', '3', '0'), ('2526', '304', '灵石县', '3', '0'), ('2527', '305', '尧都区', '3', '0'), ('2528', '305', '侯马市', '3', '0'), ('2529', '305', '霍州市', '3', '0'), ('2530', '305', '曲沃县', '3', '0'), ('2531', '305', '翼城县', '3', '0'), ('2532', '305', '襄汾县', '3', '0'), ('2533', '305', '洪洞县', '3', '0'), ('2534', '305', '吉县', '3', '0'), ('2535', '305', '安泽县', '3', '0'), ('2536', '305', '浮山县', '3', '0'), ('2537', '305', '古县', '3', '0'), ('2538', '305', '乡宁县', '3', '0'), ('2539', '305', '大宁县', '3', '0'), ('2540', '305', '隰县', '3', '0'), ('2541', '305', '永和县', '3', '0'), ('2542', '305', '蒲县', '3', '0'), ('2543', '305', '汾西县', '3', '0'), ('2544', '306', '离石市', '3', '0'), ('2545', '306', '离石区', '3', '0'), ('2546', '306', '孝义市', '3', '0'), ('2547', '306', '汾阳市', '3', '0'), ('2548', '306', '文水县', '3', '0'), ('2549', '306', '交城县', '3', '0'), ('2550', '306', '兴县', '3', '0'), ('2551', '306', '临县', '3', '0'), ('2552', '306', '柳林县', '3', '0'), ('2553', '306', '石楼县', '3', '0'), ('2554', '306', '岚县', '3', '0'), ('2555', '306', '方山县', '3', '0'), ('2556', '306', '中阳县', '3', '0'), ('2557', '306', '交口县', '3', '0'), ('2558', '307', '朔城区', '3', '0'), ('2559', '307', '平鲁区', '3', '0'), ('2560', '307', '山阴县', '3', '0'), ('2561', '307', '应县', '3', '0'), ('2562', '307', '右玉县', '3', '0'), ('2563', '307', '怀仁县', '3', '0'), ('2564', '308', '忻府区', '3', '0'), ('2565', '308', '原平市', '3', '0'), ('2566', '308', '定襄县', '3', '0'), ('2567', '308', '五台县', '3', '0'), ('2568', '308', '代县', '3', '0'), ('2569', '308', '繁峙县', '3', '0'), ('2570', '308', '宁武县', '3', '0'), ('2571', '308', '静乐县', '3', '0'), ('2572', '308', '神池县', '3', '0'), ('2573', '308', '五寨县', '3', '0'), ('2574', '308', '岢岚县', '3', '0'), ('2575', '308', '河曲县', '3', '0'), ('2576', '308', '保德县', '3', '0'), ('2577', '308', '偏关县', '3', '0'), ('2578', '309', '城区', '3', '0'), ('2579', '309', '矿区', '3', '0'), ('2580', '309', '郊区', '3', '0'), ('2581', '309', '平定县', '3', '0'), ('2582', '309', '盂县', '3', '0'), ('2583', '310', '盐湖区', '3', '0'), ('2584', '310', '永济市', '3', '0'), ('2585', '310', '河津市', '3', '0'), ('2586', '310', '临猗县', '3', '0'), ('2587', '310', '万荣县', '3', '0'), ('2588', '310', '闻喜县', '3', '0'), ('2589', '310', '稷山县', '3', '0'), ('2590', '310', '新绛县', '3', '0'), ('2591', '310', '绛县', '3', '0'), ('2592', '310', '垣曲县', '3', '0'), ('2593', '310', '夏县', '3', '0'), ('2594', '310', '平陆县', '3', '0'), ('2595', '310', '芮城县', '3', '0'), ('2596', '311', '莲湖区', '3', '0'), ('2597', '311', '新城区', '3', '0'), ('2598', '311', '碑林区', '3', '0'), ('2599', '311', '雁塔区', '3', '0'), ('2600', '311', '灞桥区', '3', '0'), ('2601', '311', '未央区', '3', '0'), ('2602', '311', '阎良区', '3', '0'), ('2603', '311', '临潼区', '3', '0'), ('2604', '311', '长安区', '3', '0'), ('2605', '311', '蓝田县', '3', '0'), ('2606', '311', '周至县', '3', '0'), ('2607', '311', '户县', '3', '0'), ('2608', '311', '高陵县', '3', '0'), ('2609', '312', '汉滨区', '3', '0'), ('2610', '312', '汉阴县', '3', '0'), ('2611', '312', '石泉县', '3', '0'), ('2612', '312', '宁陕县', '3', '0'), ('2613', '312', '紫阳县', '3', '0'), ('2614', '312', '岚皋县', '3', '0'), ('2615', '312', '平利县', '3', '0'), ('2616', '312', '镇坪县', '3', '0'), ('2617', '312', '旬阳县', '3', '0'), ('2618', '312', '白河县', '3', '0'), ('2619', '313', '陈仓区', '3', '0'), ('2620', '313', '渭滨区', '3', '0'), ('2621', '313', '金台区', '3', '0'), ('2622', '313', '凤翔县', '3', '0'), ('2623', '313', '岐山县', '3', '0'), ('2624', '313', '扶风县', '3', '0'), ('2625', '313', '眉县', '3', '0'), ('2626', '313', '陇县', '3', '0'), ('2627', '313', '千阳县', '3', '0'), ('2628', '313', '麟游县', '3', '0'), ('2629', '313', '凤县', '3', '0'), ('2630', '313', '太白县', '3', '0'), ('2631', '314', '汉台区', '3', '0'), ('2632', '314', '南郑县', '3', '0'), ('2633', '314', '城固县', '3', '0'), ('2634', '314', '洋县', '3', '0'), ('2635', '314', '西乡县', '3', '0'), ('2636', '314', '勉县', '3', '0'), ('2637', '314', '宁强县', '3', '0'), ('2638', '314', '略阳县', '3', '0'), ('2639', '314', '镇巴县', '3', '0'), ('2640', '314', '留坝县', '3', '0'), ('2641', '314', '佛坪县', '3', '0'), ('2642', '315', '商州区', '3', '0'), ('2643', '315', '洛南县', '3', '0'), ('2644', '315', '丹凤县', '3', '0'), ('2645', '315', '商南县', '3', '0'), ('2646', '315', '山阳县', '3', '0'), ('2647', '315', '镇安县', '3', '0'), ('2648', '315', '柞水县', '3', '0'), ('2649', '316', '耀州区', '3', '0'), ('2650', '316', '王益区', '3', '0'), ('2651', '316', '印台区', '3', '0'), ('2652', '316', '宜君县', '3', '0'), ('2653', '317', '临渭区', '3', '0'), ('2654', '317', '韩城市', '3', '0'), ('2655', '317', '华阴市', '3', '0'), ('2656', '317', '华县', '3', '0'), ('2657', '317', '潼关县', '3', '0'), ('2658', '317', '大荔县', '3', '0'), ('2659', '317', '合阳县', '3', '0'), ('2660', '317', '澄城县', '3', '0'), ('2661', '317', '蒲城县', '3', '0'), ('2662', '317', '白水县', '3', '0'), ('2663', '317', '富平县', '3', '0'), ('2664', '318', '秦都区', '3', '0'), ('2665', '318', '渭城区', '3', '0'), ('2666', '318', '杨陵区', '3', '0'), ('2667', '318', '兴平市', '3', '0'), ('2668', '318', '三原县', '3', '0'), ('2669', '318', '泾阳县', '3', '0'), ('2670', '318', '乾县', '3', '0'), ('2671', '318', '礼泉县', '3', '0'), ('2672', '318', '永寿县', '3', '0'), ('2673', '318', '彬县', '3', '0'), ('2674', '318', '长武县', '3', '0'), ('2675', '318', '旬邑县', '3', '0'), ('2676', '318', '淳化县', '3', '0'), ('2677', '318', '武功县', '3', '0'), ('2678', '319', '吴起县', '3', '0'), ('2679', '319', '宝塔区', '3', '0'), ('2680', '319', '延长县', '3', '0'), ('2681', '319', '延川县', '3', '0'), ('2682', '319', '子长县', '3', '0'), ('2683', '319', '安塞县', '3', '0'), ('2684', '319', '志丹县', '3', '0'), ('2685', '319', '甘泉县', '3', '0'), ('2686', '319', '富县', '3', '0'), ('2687', '319', '洛川县', '3', '0'), ('2688', '319', '宜川县', '3', '0'), ('2689', '319', '黄龙县', '3', '0'), ('2690', '319', '黄陵县', '3', '0'), ('2691', '320', '榆阳区', '3', '0'), ('2692', '320', '神木县', '3', '0'), ('2693', '320', '府谷县', '3', '0'), ('2694', '320', '横山县', '3', '0'), ('2695', '320', '靖边县', '3', '0'), ('2696', '320', '定边县', '3', '0'), ('2697', '320', '绥德县', '3', '0'), ('2698', '320', '米脂县', '3', '0'), ('2699', '320', '佳县', '3', '0'), ('2700', '320', '吴堡县', '3', '0'), ('2701', '320', '清涧县', '3', '0'), ('2702', '320', '子洲县', '3', '0'), ('2703', '321', '长宁区', '3', '0'), ('2704', '321', '闸北区', '3', '0'), ('2705', '321', '闵行区', '3', '0'), ('2706', '321', '徐汇区', '3', '0'), ('2707', '321', '浦东新区', '3', '0'), ('2708', '321', '杨浦区', '3', '0'), ('2709', '321', '普陀区', '3', '0'), ('2710', '321', '静安区', '3', '0'), ('2711', '321', '卢湾区', '3', '0'), ('2712', '321', '虹口区', '3', '0'), ('2713', '321', '黄浦区', '3', '0'), ('2714', '321', '南汇区', '3', '0'), ('2715', '321', '松江区', '3', '0'), ('2716', '321', '嘉定区', '3', '0'), ('2717', '321', '宝山区', '3', '0'), ('2718', '321', '青浦区', '3', '0'), ('2719', '321', '金山区', '3', '0'), ('2720', '321', '奉贤区', '3', '0'), ('2721', '321', '崇明县', '3', '0'), ('2722', '322', '青羊区', '3', '0'), ('2723', '322', '锦江区', '3', '0'), ('2724', '322', '金牛区', '3', '0'), ('2725', '322', '武侯区', '3', '0'), ('2726', '322', '成华区', '3', '0'), ('2727', '322', '龙泉驿区', '3', '0'), ('2728', '322', '青白江区', '3', '0'), ('2729', '322', '新都区', '3', '0'), ('2730', '322', '温江区', '3', '0'), ('2731', '322', '高新区', '3', '0'), ('2732', '322', '高新西区', '3', '0'), ('2733', '322', '都江堰市', '3', '0'), ('2734', '322', '彭州市', '3', '0'), ('2735', '322', '邛崃市', '3', '0'), ('2736', '322', '崇州市', '3', '0'), ('2737', '322', '金堂县', '3', '0'), ('2738', '322', '双流县', '3', '0'), ('2739', '322', '郫县', '3', '0'), ('2740', '322', '大邑县', '3', '0'), ('2741', '322', '蒲江县', '3', '0'), ('2742', '322', '新津县', '3', '0'), ('2743', '322', '都江堰市', '3', '0'), ('2744', '322', '彭州市', '3', '0'), ('2745', '322', '邛崃市', '3', '0'), ('2746', '322', '崇州市', '3', '0'), ('2747', '322', '金堂县', '3', '0'), ('2748', '322', '双流县', '3', '0'), ('2749', '322', '郫县', '3', '0'), ('2750', '322', '大邑县', '3', '0'), ('2751', '322', '蒲江县', '3', '0'), ('2752', '322', '新津县', '3', '0'), ('2753', '323', '涪城区', '3', '0'), ('2754', '323', '游仙区', '3', '0'), ('2755', '323', '江油市', '3', '0'), ('2756', '323', '盐亭县', '3', '0'), ('2757', '323', '三台县', '3', '0'), ('2758', '323', '平武县', '3', '0'), ('2759', '323', '安县', '3', '0'), ('2760', '323', '梓潼县', '3', '0'), ('2761', '323', '北川县', '3', '0'), ('2762', '324', '马尔康县', '3', '0'), ('2763', '324', '汶川县', '3', '0'), ('2764', '324', '理县', '3', '0'), ('2765', '324', '茂县', '3', '0'), ('2766', '324', '松潘县', '3', '0'), ('2767', '324', '九寨沟县', '3', '0'), ('2768', '324', '金川县', '3', '0'), ('2769', '324', '小金县', '3', '0'), ('2770', '324', '黑水县', '3', '0'), ('2771', '324', '壤塘县', '3', '0'), ('2772', '324', '阿坝县', '3', '0'), ('2773', '324', '若尔盖县', '3', '0'), ('2774', '324', '红原县', '3', '0'), ('2775', '325', '巴州区', '3', '0'), ('2776', '325', '通江县', '3', '0'), ('2777', '325', '南江县', '3', '0'), ('2778', '325', '平昌县', '3', '0'), ('2779', '326', '通川区', '3', '0'), ('2780', '326', '万源市', '3', '0'), ('2781', '326', '达县', '3', '0'), ('2782', '326', '宣汉县', '3', '0'), ('2783', '326', '开江县', '3', '0'), ('2784', '326', '大竹县', '3', '0'), ('2785', '326', '渠县', '3', '0'), ('2786', '327', '旌阳区', '3', '0'), ('2787', '327', '广汉市', '3', '0'), ('2788', '327', '什邡市', '3', '0'), ('2789', '327', '绵竹市', '3', '0'), ('2790', '327', '罗江县', '3', '0'), ('2791', '327', '中江县', '3', '0'), ('2792', '328', '康定县', '3', '0'), ('2793', '328', '丹巴县', '3', '0'), ('2794', '328', '泸定县', '3', '0'), ('2795', '328', '炉霍县', '3', '0'), ('2796', '328', '九龙县', '3', '0'), ('2797', '328', '甘孜县', '3', '0'), ('2798', '328', '雅江县', '3', '0'), ('2799', '328', '新龙县', '3', '0'), ('2800', '328', '道孚县', '3', '0'), ('2801', '328', '白玉县', '3', '0'), ('2802', '328', '理塘县', '3', '0'), ('2803', '328', '德格县', '3', '0'), ('2804', '328', '乡城县', '3', '0'), ('2805', '328', '石渠县', '3', '0'), ('2806', '328', '稻城县', '3', '0'), ('2807', '328', '色达县', '3', '0'), ('2808', '328', '巴塘县', '3', '0'), ('2809', '328', '得荣县', '3', '0'), ('2810', '329', '广安区', '3', '0'), ('2811', '329', '华蓥市', '3', '0'), ('2812', '329', '岳池县', '3', '0'), ('2813', '329', '武胜县', '3', '0'), ('2814', '329', '邻水县', '3', '0'), ('2815', '330', '利州区', '3', '0'), ('2816', '330', '元坝区', '3', '0'), ('2817', '330', '朝天区', '3', '0'), ('2818', '330', '旺苍县', '3', '0'), ('2819', '330', '青川县', '3', '0'), ('2820', '330', '剑阁县', '3', '0'), ('2821', '330', '苍溪县', '3', '0'), ('2822', '331', '峨眉山市', '3', '0'), ('2823', '331', '乐山市', '3', '0'), ('2824', '331', '犍为县', '3', '0'), ('2825', '331', '井研县', '3', '0'), ('2826', '331', '夹江县', '3', '0'), ('2827', '331', '沐川县', '3', '0'), ('2828', '331', '峨边', '3', '0'), ('2829', '331', '马边', '3', '0'), ('2830', '332', '西昌市', '3', '0'), ('2831', '332', '盐源县', '3', '0'), ('2832', '332', '德昌县', '3', '0'), ('2833', '332', '会理县', '3', '0'), ('2834', '332', '会东县', '3', '0'), ('2835', '332', '宁南县', '3', '0'), ('2836', '332', '普格县', '3', '0'), ('2837', '332', '布拖县', '3', '0'), ('2838', '332', '金阳县', '3', '0'), ('2839', '332', '昭觉县', '3', '0'), ('2840', '332', '喜德县', '3', '0'), ('2841', '332', '冕宁县', '3', '0'), ('2842', '332', '越西县', '3', '0'), ('2843', '332', '甘洛县', '3', '0'), ('2844', '332', '美姑县', '3', '0'), ('2845', '332', '雷波县', '3', '0'), ('2846', '332', '木里', '3', '0'), ('2847', '333', '东坡区', '3', '0'), ('2848', '333', '仁寿县', '3', '0'), ('2849', '333', '彭山县', '3', '0'), ('2850', '333', '洪雅县', '3', '0'), ('2851', '333', '丹棱县', '3', '0'), ('2852', '333', '青神县', '3', '0'), ('2853', '334', '阆中市', '3', '0'), ('2854', '334', '南部县', '3', '0'), ('2855', '334', '营山县', '3', '0'), ('2856', '334', '蓬安县', '3', '0'), ('2857', '334', '仪陇县', '3', '0'), ('2858', '334', '顺庆区', '3', '0'), ('2859', '334', '高坪区', '3', '0'), ('2860', '334', '嘉陵区', '3', '0'), ('2861', '334', '西充县', '3', '0'), ('2862', '335', '市中区', '3', '0'), ('2863', '335', '东兴区', '3', '0'), ('2864', '335', '威远县', '3', '0'), ('2865', '335', '资中县', '3', '0'), ('2866', '335', '隆昌县', '3', '0'), ('2867', '336', '东  区', '3', '0'), ('2868', '336', '西  区', '3', '0'), ('2869', '336', '仁和区', '3', '0'), ('2870', '336', '米易县', '3', '0'), ('2871', '336', '盐边县', '3', '0'), ('2872', '337', '船山区', '3', '0'), ('2873', '337', '安居区', '3', '0'), ('2874', '337', '蓬溪县', '3', '0'), ('2875', '337', '射洪县', '3', '0'), ('2876', '337', '大英县', '3', '0'), ('2877', '338', '雨城区', '3', '0'), ('2878', '338', '名山县', '3', '0'), ('2879', '338', '荥经县', '3', '0'), ('2880', '338', '汉源县', '3', '0'), ('2881', '338', '石棉县', '3', '0'), ('2882', '338', '天全县', '3', '0'), ('2883', '338', '芦山县', '3', '0'), ('2884', '338', '宝兴县', '3', '0'), ('2885', '339', '翠屏区', '3', '0'), ('2886', '339', '宜宾县', '3', '0'), ('2887', '339', '南溪县', '3', '0'), ('2888', '339', '江安县', '3', '0'), ('2889', '339', '长宁县', '3', '0'), ('2890', '339', '高县', '3', '0'), ('2891', '339', '珙县', '3', '0'), ('2892', '339', '筠连县', '3', '0'), ('2893', '339', '兴文县', '3', '0'), ('2894', '339', '屏山县', '3', '0'), ('2895', '340', '雁江区', '3', '0'), ('2896', '340', '简阳市', '3', '0'), ('2897', '340', '安岳县', '3', '0'), ('2898', '340', '乐至县', '3', '0'), ('2899', '341', '大安区', '3', '0'), ('2900', '341', '自流井区', '3', '0'), ('2901', '341', '贡井区', '3', '0'), ('2902', '341', '沿滩区', '3', '0'), ('2903', '341', '荣县', '3', '0'), ('2904', '341', '富顺县', '3', '0'), ('2905', '342', '江阳区', '3', '0'), ('2906', '342', '纳溪区', '3', '0'), ('2907', '342', '龙马潭区', '3', '0'), ('2908', '342', '泸县', '3', '0'), ('2909', '342', '合江县', '3', '0'), ('2910', '342', '叙永县', '3', '0'), ('2911', '342', '古蔺县', '3', '0'), ('2912', '343', '和平区', '3', '0'), ('2913', '343', '河西区', '3', '0'), ('2914', '343', '南开区', '3', '0'), ('2915', '343', '河北区', '3', '0'), ('2916', '343', '河东区', '3', '0'), ('2917', '343', '红桥区', '3', '0'), ('2918', '343', '东丽区', '3', '0'), ('2919', '343', '津南区', '3', '0'), ('2920', '343', '西青区', '3', '0'), ('2921', '343', '北辰区', '3', '0'), ('2922', '343', '塘沽区', '3', '0'), ('2923', '343', '汉沽区', '3', '0'), ('2924', '343', '大港区', '3', '0'), ('2925', '343', '武清区', '3', '0'), ('2926', '343', '宝坻区', '3', '0'), ('2927', '343', '经济开发区', '3', '0'), ('2928', '343', '宁河县', '3', '0'), ('2929', '343', '静海县', '3', '0'), ('2930', '343', '蓟县', '3', '0'), ('2931', '344', '城关区', '3', '0'), ('2932', '344', '林周县', '3', '0'), ('2933', '344', '当雄县', '3', '0'), ('2934', '344', '尼木县', '3', '0'), ('2935', '344', '曲水县', '3', '0'), ('2936', '344', '堆龙德庆县', '3', '0'), ('2937', '344', '达孜县', '3', '0'), ('2938', '344', '墨竹工卡县', '3', '0'), ('2939', '345', '噶尔县', '3', '0'), ('2940', '345', '普兰县', '3', '0'), ('2941', '345', '札达县', '3', '0'), ('2942', '345', '日土县', '3', '0'), ('2943', '345', '革吉县', '3', '0'), ('2944', '345', '改则县', '3', '0'), ('2945', '345', '措勤县', '3', '0'), ('2946', '346', '昌都县', '3', '0'), ('2947', '346', '江达县', '3', '0'), ('2948', '346', '贡觉县', '3', '0'), ('2949', '346', '类乌齐县', '3', '0'), ('2950', '346', '丁青县', '3', '0'), ('2951', '346', '察雅县', '3', '0'), ('2952', '346', '八宿县', '3', '0'), ('2953', '346', '左贡县', '3', '0'), ('2954', '346', '芒康县', '3', '0'), ('2955', '346', '洛隆县', '3', '0'), ('2956', '346', '边坝县', '3', '0'), ('2957', '347', '林芝县', '3', '0'), ('2958', '347', '工布江达县', '3', '0'), ('2959', '347', '米林县', '3', '0'), ('2960', '347', '墨脱县', '3', '0'), ('2961', '347', '波密县', '3', '0'), ('2962', '347', '察隅县', '3', '0'), ('2963', '347', '朗县', '3', '0'), ('2964', '348', '那曲县', '3', '0'), ('2965', '348', '嘉黎县', '3', '0'), ('2966', '348', '比如县', '3', '0'), ('2967', '348', '聂荣县', '3', '0'), ('2968', '348', '安多县', '3', '0'), ('2969', '348', '申扎县', '3', '0'), ('2970', '348', '索县', '3', '0'), ('2971', '348', '班戈县', '3', '0'), ('2972', '348', '巴青县', '3', '0'), ('2973', '348', '尼玛县', '3', '0'), ('2974', '349', '日喀则市', '3', '0'), ('2975', '349', '南木林县', '3', '0'), ('2976', '349', '江孜县', '3', '0'), ('2977', '349', '定日县', '3', '0'), ('2978', '349', '萨迦县', '3', '0'), ('2979', '349', '拉孜县', '3', '0'), ('2980', '349', '昂仁县', '3', '0'), ('2981', '349', '谢通门县', '3', '0'), ('2982', '349', '白朗县', '3', '0'), ('2983', '349', '仁布县', '3', '0'), ('2984', '349', '康马县', '3', '0'), ('2985', '349', '定结县', '3', '0'), ('2986', '349', '仲巴县', '3', '0'), ('2987', '349', '亚东县', '3', '0'), ('2988', '349', '吉隆县', '3', '0'), ('2989', '349', '聂拉木县', '3', '0'), ('2990', '349', '萨嘎县', '3', '0'), ('2991', '349', '岗巴县', '3', '0'), ('2992', '350', '乃东县', '3', '0'), ('2993', '350', '扎囊县', '3', '0'), ('2994', '350', '贡嘎县', '3', '0'), ('2995', '350', '桑日县', '3', '0'), ('2996', '350', '琼结县', '3', '0'), ('2997', '350', '曲松县', '3', '0'), ('2998', '350', '措美县', '3', '0'), ('2999', '350', '洛扎县', '3', '0'), ('3000', '350', '加查县', '3', '0'), ('3001', '350', '隆子县', '3', '0'), ('3002', '350', '错那县', '3', '0'), ('3003', '350', '浪卡子县', '3', '0'), ('3004', '351', '天山区', '3', '0'), ('3005', '351', '沙依巴克区', '3', '0'), ('3006', '351', '新市区', '3', '0'), ('3007', '351', '水磨沟区', '3', '0'), ('3008', '351', '头屯河区', '3', '0'), ('3009', '351', '达坂城区', '3', '0'), ('3010', '351', '米东区', '3', '0'), ('3011', '351', '乌鲁木齐县', '3', '0'), ('3012', '352', '阿克苏市', '3', '0'), ('3013', '352', '温宿县', '3', '0'), ('3014', '352', '库车县', '3', '0'), ('3015', '352', '沙雅县', '3', '0'), ('3016', '352', '新和县', '3', '0'), ('3017', '352', '拜城县', '3', '0'), ('3018', '352', '乌什县', '3', '0'), ('3019', '352', '阿瓦提县', '3', '0'), ('3020', '352', '柯坪县', '3', '0'), ('3021', '353', '阿拉尔市', '3', '0'), ('3022', '354', '库尔勒市', '3', '0'), ('3023', '354', '轮台县', '3', '0'), ('3024', '354', '尉犁县', '3', '0'), ('3025', '354', '若羌县', '3', '0'), ('3026', '354', '且末县', '3', '0'), ('3027', '354', '焉耆', '3', '0'), ('3028', '354', '和静县', '3', '0'), ('3029', '354', '和硕县', '3', '0'), ('3030', '354', '博湖县', '3', '0'), ('3031', '355', '博乐市', '3', '0'), ('3032', '355', '精河县', '3', '0'), ('3033', '355', '温泉县', '3', '0'), ('3034', '356', '呼图壁县', '3', '0'), ('3035', '356', '米泉市', '3', '0'), ('3036', '356', '昌吉市', '3', '0'), ('3037', '356', '阜康市', '3', '0'), ('3038', '356', '玛纳斯县', '3', '0'), ('3039', '356', '奇台县', '3', '0'), ('3040', '356', '吉木萨尔县', '3', '0'), ('3041', '356', '木垒', '3', '0'), ('3042', '357', '哈密市', '3', '0'), ('3043', '357', '伊吾县', '3', '0'), ('3044', '357', '巴里坤', '3', '0'), ('3045', '358', '和田市', '3', '0'), ('3046', '358', '和田县', '3', '0'), ('3047', '358', '墨玉县', '3', '0'), ('3048', '358', '皮山县', '3', '0'), ('3049', '358', '洛浦县', '3', '0'), ('3050', '358', '策勒县', '3', '0'), ('3051', '358', '于田县', '3', '0'), ('3052', '358', '民丰县', '3', '0'), ('3053', '359', '喀什市', '3', '0'), ('3054', '359', '疏附县', '3', '0'), ('3055', '359', '疏勒县', '3', '0'), ('3056', '359', '英吉沙县', '3', '0'), ('3057', '359', '泽普县', '3', '0'), ('3058', '359', '莎车县', '3', '0'), ('3059', '359', '叶城县', '3', '0'), ('3060', '359', '麦盖提县', '3', '0'), ('3061', '359', '岳普湖县', '3', '0'), ('3062', '359', '伽师县', '3', '0'), ('3063', '359', '巴楚县', '3', '0'), ('3064', '359', '塔什库尔干', '3', '0'), ('3065', '360', '克拉玛依市', '3', '0'), ('3066', '361', '阿图什市', '3', '0'), ('3067', '361', '阿克陶县', '3', '0'), ('3068', '361', '阿合奇县', '3', '0'), ('3069', '361', '乌恰县', '3', '0'), ('3070', '362', '石河子市', '3', '0'), ('3071', '363', '图木舒克市', '3', '0'), ('3072', '364', '吐鲁番市', '3', '0'), ('3073', '364', '鄯善县', '3', '0'), ('3074', '364', '托克逊县', '3', '0'), ('3075', '365', '五家渠市', '3', '0'), ('3076', '366', '阿勒泰市', '3', '0'), ('3077', '366', '布克赛尔', '3', '0'), ('3078', '366', '伊宁市', '3', '0'), ('3079', '366', '布尔津县', '3', '0'), ('3080', '366', '奎屯市', '3', '0'), ('3081', '366', '乌苏市', '3', '0'), ('3082', '366', '额敏县', '3', '0'), ('3083', '366', '富蕴县', '3', '0'), ('3084', '366', '伊宁县', '3', '0'), ('3085', '366', '福海县', '3', '0'), ('3086', '366', '霍城县', '3', '0'), ('3087', '366', '沙湾县', '3', '0'), ('3088', '366', '巩留县', '3', '0'), ('3089', '366', '哈巴河县', '3', '0'), ('3090', '366', '托里县', '3', '0'), ('3091', '366', '青河县', '3', '0'), ('3092', '366', '新源县', '3', '0'), ('3093', '366', '裕民县', '3', '0'), ('3094', '366', '和布克赛尔', '3', '0'), ('3095', '366', '吉木乃县', '3', '0'), ('3096', '366', '昭苏县', '3', '0'), ('3097', '366', '特克斯县', '3', '0'), ('3098', '366', '尼勒克县', '3', '0'), ('3099', '366', '察布查尔', '3', '0'), ('3100', '367', '盘龙区', '3', '0'), ('3101', '367', '五华区', '3', '0'), ('3102', '367', '官渡区', '3', '0'), ('3103', '367', '西山区', '3', '0'), ('3104', '367', '东川区', '3', '0'), ('3105', '367', '安宁市', '3', '0'), ('3106', '367', '呈贡县', '3', '0'), ('3107', '367', '晋宁县', '3', '0'), ('3108', '367', '富民县', '3', '0'), ('3109', '367', '宜良县', '3', '0'), ('3110', '367', '嵩明县', '3', '0'), ('3111', '367', '石林县', '3', '0'), ('3112', '367', '禄劝', '3', '0'), ('3113', '367', '寻甸', '3', '0'), ('3114', '368', '兰坪', '3', '0'), ('3115', '368', '泸水县', '3', '0'), ('3116', '368', '福贡县', '3', '0'), ('3117', '368', '贡山', '3', '0'), ('3118', '369', '宁洱', '3', '0'), ('3119', '369', '思茅区', '3', '0'), ('3120', '369', '墨江', '3', '0'), ('3121', '369', '景东', '3', '0'), ('3122', '369', '景谷', '3', '0'), ('3123', '369', '镇沅', '3', '0'), ('3124', '369', '江城', '3', '0'), ('3125', '369', '孟连', '3', '0'), ('3126', '369', '澜沧', '3', '0'), ('3127', '369', '西盟', '3', '0'), ('3128', '370', '古城区', '3', '0'), ('3129', '370', '宁蒗', '3', '0'), ('3130', '370', '玉龙', '3', '0'), ('3131', '370', '永胜县', '3', '0'), ('3132', '370', '华坪县', '3', '0'), ('3133', '371', '隆阳区', '3', '0'), ('3134', '371', '施甸县', '3', '0'), ('3135', '371', '腾冲县', '3', '0'), ('3136', '371', '龙陵县', '3', '0'), ('3137', '371', '昌宁县', '3', '0'), ('3138', '372', '楚雄市', '3', '0'), ('3139', '372', '双柏县', '3', '0'), ('3140', '372', '牟定县', '3', '0'), ('3141', '372', '南华县', '3', '0'), ('3142', '372', '姚安县', '3', '0'), ('3143', '372', '大姚县', '3', '0'), ('3144', '372', '永仁县', '3', '0'), ('3145', '372', '元谋县', '3', '0'), ('3146', '372', '武定县', '3', '0'), ('3147', '372', '禄丰县', '3', '0'), ('3148', '373', '大理市', '3', '0'), ('3149', '373', '祥云县', '3', '0'), ('3150', '373', '宾川县', '3', '0'), ('3151', '373', '弥渡县', '3', '0'), ('3152', '373', '永平县', '3', '0'), ('3153', '373', '云龙县', '3', '0'), ('3154', '373', '洱源县', '3', '0'), ('3155', '373', '剑川县', '3', '0'), ('3156', '373', '鹤庆县', '3', '0'), ('3157', '373', '漾濞', '3', '0'), ('3158', '373', '南涧', '3', '0'), ('3159', '373', '巍山', '3', '0'), ('3160', '374', '潞西市', '3', '0'), ('3161', '374', '瑞丽市', '3', '0'), ('3162', '374', '梁河县', '3', '0'), ('3163', '374', '盈江县', '3', '0'), ('3164', '374', '陇川县', '3', '0'), ('3165', '375', '香格里拉县', '3', '0'), ('3166', '375', '德钦县', '3', '0'), ('3167', '375', '维西', '3', '0'), ('3168', '376', '泸西县', '3', '0'), ('3169', '376', '蒙自县', '3', '0'), ('3170', '376', '个旧市', '3', '0'), ('3171', '376', '开远市', '3', '0'), ('3172', '376', '绿春县', '3', '0'), ('3173', '376', '建水县', '3', '0'), ('3174', '376', '石屏县', '3', '0'), ('3175', '376', '弥勒县', '3', '0'), ('3176', '376', '元阳县', '3', '0'), ('3177', '376', '红河县', '3', '0'), ('3178', '376', '金平', '3', '0'), ('3179', '376', '河口', '3', '0'), ('3180', '376', '屏边', '3', '0'), ('3181', '377', '临翔区', '3', '0'), ('3182', '377', '凤庆县', '3', '0'), ('3183', '377', '云县', '3', '0'), ('3184', '377', '永德县', '3', '0'), ('3185', '377', '镇康县', '3', '0'), ('3186', '377', '双江', '3', '0'), ('3187', '377', '耿马', '3', '0'), ('3188', '377', '沧源', '3', '0'), ('3189', '378', '麒麟区', '3', '0'), ('3190', '378', '宣威市', '3', '0'), ('3191', '378', '马龙县', '3', '0'), ('3192', '378', '陆良县', '3', '0'), ('3193', '378', '师宗县', '3', '0'), ('3194', '378', '罗平县', '3', '0'), ('3195', '378', '富源县', '3', '0'), ('3196', '378', '会泽县', '3', '0'), ('3197', '378', '沾益县', '3', '0'), ('3198', '379', '文山县', '3', '0'), ('3199', '379', '砚山县', '3', '0'), ('3200', '379', '西畴县', '3', '0'), ('3201', '379', '麻栗坡县', '3', '0'), ('3202', '379', '马关县', '3', '0'), ('3203', '379', '丘北县', '3', '0'), ('3204', '379', '广南县', '3', '0'), ('3205', '379', '富宁县', '3', '0'), ('3206', '380', '景洪市', '3', '0'), ('3207', '380', '勐海县', '3', '0'), ('3208', '380', '勐腊县', '3', '0'), ('3209', '381', '红塔区', '3', '0'), ('3210', '381', '江川县', '3', '0'), ('3211', '381', '澄江县', '3', '0'), ('3212', '381', '通海县', '3', '0'), ('3213', '381', '华宁县', '3', '0'), ('3214', '381', '易门县', '3', '0'), ('3215', '381', '峨山', '3', '0'), ('3216', '381', '新平', '3', '0'), ('3217', '381', '元江', '3', '0'), ('3218', '382', '昭阳区', '3', '0'), ('3219', '382', '鲁甸县', '3', '0'), ('3220', '382', '巧家县', '3', '0'), ('3221', '382', '盐津县', '3', '0'), ('3222', '382', '大关县', '3', '0'), ('3223', '382', '永善县', '3', '0'), ('3224', '382', '绥江县', '3', '0'), ('3225', '382', '镇雄县', '3', '0'), ('3226', '382', '彝良县', '3', '0'), ('3227', '382', '威信县', '3', '0'), ('3228', '382', '水富县', '3', '0'), ('3229', '383', '西湖区', '3', '0'), ('3230', '383', '上城区', '3', '0'), ('3231', '383', '下城区', '3', '0'), ('3232', '383', '拱墅区', '3', '0'), ('3233', '383', '滨江区', '3', '0'), ('3234', '383', '江干区', '3', '0'), ('3235', '383', '萧山区', '3', '0'), ('3236', '383', '余杭区', '3', '0'), ('3237', '383', '市郊', '3', '0'), ('3238', '383', '建德市', '3', '0'), ('3239', '383', '富阳市', '3', '0'), ('3240', '383', '临安市', '3', '0'), ('3241', '383', '桐庐县', '3', '0'), ('3242', '383', '淳安县', '3', '0'), ('3243', '384', '吴兴区', '3', '0'), ('3244', '384', '南浔区', '3', '0'), ('3245', '384', '德清县', '3', '0'), ('3246', '384', '长兴县', '3', '0'), ('3247', '384', '安吉县', '3', '0'), ('3248', '385', '南湖区', '3', '0'), ('3249', '385', '秀洲区', '3', '0'), ('3250', '385', '海宁市', '3', '0'), ('3251', '385', '嘉善县', '3', '0'), ('3252', '385', '平湖市', '3', '0'), ('3253', '385', '桐乡市', '3', '0'), ('3254', '385', '海盐县', '3', '0'), ('3255', '386', '婺城区', '3', '0'), ('3256', '386', '金东区', '3', '0'), ('3257', '386', '兰溪市', '3', '0'), ('3258', '386', '市区', '3', '0'), ('3259', '386', '佛堂镇', '3', '0'), ('3260', '386', '上溪镇', '3', '0'), ('3261', '386', '义亭镇', '3', '0'), ('3262', '386', '大陈镇', '3', '0'), ('3263', '386', '苏溪镇', '3', '0'), ('3264', '386', '赤岸镇', '3', '0'), ('3265', '386', '东阳市', '3', '0'), ('3266', '386', '永康市', '3', '0'), ('3267', '386', '武义县', '3', '0'), ('3268', '386', '浦江县', '3', '0'), ('3269', '386', '磐安县', '3', '0'), ('3270', '387', '莲都区', '3', '0'), ('3271', '387', '龙泉市', '3', '0'), ('3272', '387', '青田县', '3', '0'), ('3273', '387', '缙云县', '3', '0'), ('3274', '387', '遂昌县', '3', '0'), ('3275', '387', '松阳县', '3', '0'), ('3276', '387', '云和县', '3', '0'), ('3277', '387', '庆元县', '3', '0'), ('3278', '387', '景宁', '3', '0'), ('3279', '388', '海曙区', '3', '0'), ('3280', '388', '江东区', '3', '0'), ('3281', '388', '江北区', '3', '0'), ('3282', '388', '镇海区', '3', '0'), ('3283', '388', '北仑区', '3', '0'), ('3284', '388', '鄞州区', '3', '0'), ('3285', '388', '余姚市', '3', '0'), ('3286', '388', '慈溪市', '3', '0'), ('3287', '388', '奉化市', '3', '0'), ('3288', '388', '象山县', '3', '0'), ('3289', '388', '宁海县', '3', '0'), ('3290', '389', '越城区', '3', '0'), ('3291', '389', '上虞市', '3', '0'), ('3292', '389', '嵊州市', '3', '0'), ('3293', '389', '绍兴县', '3', '0'), ('3294', '389', '新昌县', '3', '0'), ('3295', '389', '诸暨市', '3', '0'), ('3296', '390', '椒江区', '3', '0'), ('3297', '390', '黄岩区', '3', '0'), ('3298', '390', '路桥区', '3', '0'), ('3299', '390', '温岭市', '3', '0'), ('3300', '390', '临海市', '3', '0'), ('3301', '390', '玉环县', '3', '0'), ('3302', '390', '三门县', '3', '0'), ('3303', '390', '天台县', '3', '0'), ('3304', '390', '仙居县', '3', '0'), ('3305', '391', '鹿城区', '3', '0'), ('3306', '391', '龙湾区', '3', '0'), ('3307', '391', '瓯海区', '3', '0'), ('3308', '391', '瑞安市', '3', '0'), ('3309', '391', '乐清市', '3', '0'), ('3310', '391', '洞头县', '3', '0'), ('3311', '391', '永嘉县', '3', '0'), ('3312', '391', '平阳县', '3', '0'), ('3313', '391', '苍南县', '3', '0'), ('3314', '391', '文成县', '3', '0'), ('3315', '391', '泰顺县', '3', '0'), ('3316', '392', '定海区', '3', '0'), ('3317', '392', '普陀区', '3', '0'), ('3318', '392', '岱山县', '3', '0'), ('3319', '392', '嵊泗县', '3', '0'), ('3320', '393', '衢州市', '3', '0'), ('3321', '393', '江山市', '3', '0'), ('3322', '393', '常山县', '3', '0'), ('3323', '393', '开化县', '3', '0'), ('3324', '393', '龙游县', '3', '0'), ('3325', '394', '合川区', '3', '0'), ('3326', '394', '江津区', '3', '0'), ('3327', '394', '南川区', '3', '0'), ('3328', '394', '永川区', '3', '0'), ('3329', '394', '南岸区', '3', '0'), ('3330', '394', '渝北区', '3', '0'), ('3331', '394', '万盛区', '3', '0'), ('3332', '394', '大渡口区', '3', '0'), ('3333', '394', '万州区', '3', '0'), ('3334', '394', '北碚区', '3', '0'), ('3335', '394', '沙坪坝区', '3', '0'), ('3336', '394', '巴南区', '3', '0'), ('3337', '394', '涪陵区', '3', '0'), ('3338', '394', '江北区', '3', '0'), ('3339', '394', '九龙坡区', '3', '0'), ('3340', '394', '渝中区', '3', '0'), ('3341', '394', '黔江开发区', '3', '0'), ('3342', '394', '长寿区', '3', '0'), ('3343', '394', '双桥区', '3', '0'), ('3344', '394', '綦江县', '3', '0'), ('3345', '394', '潼南县', '3', '0'), ('3346', '394', '铜梁县', '3', '0'), ('3347', '394', '大足县', '3', '0'), ('3348', '394', '荣昌县', '3', '0'), ('3349', '394', '璧山县', '3', '0'), ('3350', '394', '垫江县', '3', '0'), ('3351', '394', '武隆县', '3', '0'), ('3352', '394', '丰都县', '3', '0'), ('3353', '394', '城口县', '3', '0'), ('3354', '394', '梁平县', '3', '0'), ('3355', '394', '开县', '3', '0'), ('3356', '394', '巫溪县', '3', '0'), ('3357', '394', '巫山县', '3', '0'), ('3358', '394', '奉节县', '3', '0'), ('3359', '394', '云阳县', '3', '0'), ('3360', '394', '忠县', '3', '0'), ('3361', '394', '石柱', '3', '0'), ('3362', '394', '彭水', '3', '0'), ('3363', '394', '酉阳', '3', '0'), ('3364', '394', '秀山', '3', '0'), ('3365', '395', '沙田区', '3', '0'), ('3366', '395', '东区', '3', '0'), ('3367', '395', '观塘区', '3', '0'), ('3368', '395', '黄大仙区', '3', '0'), ('3369', '395', '九龙城区', '3', '0'), ('3370', '395', '屯门区', '3', '0'), ('3371', '395', '葵青区', '3', '0'), ('3372', '395', '元朗区', '3', '0'), ('3373', '395', '深水埗区', '3', '0'), ('3374', '395', '西贡区', '3', '0'), ('3375', '395', '大埔区', '3', '0'), ('3376', '395', '湾仔区', '3', '0'), ('3377', '395', '油尖旺区', '3', '0'), ('3378', '395', '北区', '3', '0'), ('3379', '395', '南区', '3', '0'), ('3380', '395', '荃湾区', '3', '0'), ('3381', '395', '中西区', '3', '0'), ('3382', '395', '离岛区', '3', '0'), ('3383', '396', '澳门', '3', '0'), ('3384', '397', '台北', '3', '0'), ('3385', '397', '高雄', '3', '0'), ('3386', '397', '基隆', '3', '0'), ('3387', '397', '台中', '3', '0'), ('3388', '397', '台南', '3', '0'), ('3389', '397', '新竹', '3', '0'), ('3390', '397', '嘉义', '3', '0'), ('3391', '397', '宜兰县', '3', '0'), ('3392', '397', '桃园县', '3', '0'), ('3393', '397', '苗栗县', '3', '0'), ('3394', '397', '彰化县', '3', '0'), ('3395', '397', '南投县', '3', '0'), ('3396', '397', '云林县', '3', '0'), ('3397', '397', '屏东县', '3', '0'), ('3398', '397', '台东县', '3', '0'), ('3399', '397', '花莲县', '3', '0'), ('3400', '397', '澎湖县', '3', '0'), ('3401', '3', '合肥', '2', '0'), ('3402', '3401', '庐阳区', '3', '0'), ('3403', '3401', '瑶海区', '3', '0'), ('3404', '3401', '蜀山区', '3', '0'), ('3405', '3401', '包河区', '3', '0'), ('3406', '3401', '长丰县', '3', '0'), ('3407', '3401', '肥东县', '3', '0'), ('3408', '3401', '肥西县', '3', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_role`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_role`;
CREATE TABLE `ecs_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  `nav_list` text COMMENT '导航标签',
  `is_built-in` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统内置 1 内置 0 非内置',
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_role`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_role` VALUES ('1', '商户管理员', 'admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage,03_suppliers_bill_list', '商户管理员     ', '订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '1'), ('2', '机构管理员', 'admin_manage,admin_drop,logs_manage,agency_manage,order_view,order_view_finished,sale_order_stats,suppliers_manage', '机构管理员  ', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list', '1'), ('3', '门店店长', 'goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage,suppliers_bill_list', '门店店长        ', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_searchengine`;
CREATE TABLE `ecs_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions`;
CREATE TABLE `ecs_sessions` (
  `sesskey` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL DEFAULT '0.00',
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_sessions`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_sessions` VALUES ('96612b91e2dc34d5fb18e5e27547bdc2', '1428558408', '0', '1', '127.0.0.1', '0', '0', '0.00', '0', 'a:6:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1428558408;s:7:\"role_id\";N;s:7:\"shop_id\";s:1:\"0\";s:12:\"suppliers_id\";s:1:\"0\";}'), ('f97250003f89596dfebe0edcb3ade985', '1428566719', '0', '0', '127.0.0.1', '0', '0', '0.00', '0', 'a:0:{}');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_sessions_data`;
CREATE TABLE `ecs_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_sessions_data`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_sessions_data` VALUES ('6140b3190aa8fa20e0d208ece93ada52', '4294967295', 'a:6:{s:10:\"admin_name\";s:5:\"dz002\";s:11:\"action_list\";s:251:\"goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,excode_view,excode_check\";s:10:\"last_check\";i:1416488043;s:7:\"role_id\";s:1:\"3\";s:7:\"shop_id\";s:1:\"0\";s:12:\"suppliers_id\";s:1:\"6\";}'), ('ae1fb8e54e05a26449ce70eee985ea86', '4294967295', 'a:6:{s:10:\"admin_name\";s:5:\"sh003\";s:11:\"action_list\";s:219:\"admin_manage,admin_drop,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,exchange_goods,suppliers_manage\";s:10:\"last_check\";i:1416403711;s:7:\"role_id\";s:1:\"1\";s:7:\"shop_id\";s:1:\"2\";s:12:\"suppliers_id\";s:1:\"0\";}'), ('df4648fa84f06973a47911a0d11acadd', '2832974271', 'a:6:{s:10:\"admin_name\";s:5:\"dz002\";s:11:\"action_list\";s:251:\"goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,client_flow_stats,delivery_view,back_view,excode_view,excode_check\";s:10:\"last_check\";i:1416487136;s:7:\"role_id\";s:1:\"3\";s:7:\"shop_id\";s:1:\"0\";s:12:\"suppliers_id\";s:1:\"6\";}'), ('d483a02000e5064d13a55c803b023e2b', '4253829900', 'a:6:{s:10:\"admin_name\";s:5:\"dz223\";s:11:\"action_list\";s:247:\"goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage\";s:10:\"last_check\";i:1417943345;s:7:\"role_id\";s:1:\"3\";s:7:\"shop_id\";s:1:\"5\";s:12:\"suppliers_id\";s:2:\"11\";}'), ('641a909ba00c41bc330a9f125daba09d', '4294967295', 'a:6:{s:10:\"admin_name\";s:5:\"dj001\";s:11:\"action_list\";s:247:\"goods_manage,remove_back,comment_priv,goods_export,goods_batch,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,sale_order_stats,delivery_view,back_view,excode_view,excode_check,refund_manage\";s:10:\"last_check\";i:1428403805;s:7:\"role_id\";s:1:\"3\";s:7:\"shop_id\";s:1:\"7\";s:12:\"suppliers_id\";s:1:\"6\";}'), ('6990610274302c0fd7bf761a7f3d4ba5', '4294967295', 'a:6:{s:10:\"admin_name\";s:5:\"sh004\";s:11:\"action_list\";s:108:\"admin_manage,sale_order_stats,client_flow_stats,delivery_view,back_view,suppliers_manage,suppliers_bill_list\";s:10:\"last_check\";i:1428489670;s:7:\"role_id\";s:1:\"1\";s:7:\"shop_id\";s:1:\"7\";s:12:\"suppliers_id\";s:1:\"0\";}');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping`;
CREATE TABLE `ecs_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_shipping`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_shipping` VALUES ('1', 'wx_delivery', '普通快递', '普通快递', '0', '0', '0', '普通快递', null, null, '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shipping_area`;
CREATE TABLE `ecs_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop`;
CREATE TABLE `ecs_shop` (
  `shop_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `shop_name` varchar(60) NOT NULL DEFAULT '',
  `shop_logo` varchar(80) NOT NULL DEFAULT '',
  `id_snapshot` varchar(80) NOT NULL DEFAULT '' COMMENT '身份证复印件',
  `lic_snapshot` varchar(80) NOT NULL DEFAULT '' COMMENT '营业执照快照',
  `shop_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pcat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  PRIMARY KEY (`shop_id`),
  KEY `cat_id` (`cat_id`),
  KEY `is_show` (`is_show`),
  KEY `pcat_id` (`pcat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_shop`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_shop` VALUES ('2', '1009', '大娘水饺', '1418718242687577235.jpg', '', '', '江苏名小吃连锁', 'http://www.dlsj.com', '0', '0', '1', '10'), ('3', '0', '万达影城', '1416226212783076754.jpg', '', '', '中国最大的院线', 'http://www.wd.com', '0', '0', '1', '12'), ('4', '1003', '老北京炭火锅', '1417254571046018273.jpg', '', '', '老北京炭火锅', 'http://www.lbjthg.com', '0', '0', '1', '10'), ('6', '1001', '肯德基', '', '', '', '肯德基肯德基肯德基', 'http://www.kfc.com', '0', '0', '1', '10'), ('7', '1001', '洋葱咖喱', '', '', '', '', 'http://', '0', '0', '1', '10');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_shop_cate`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_cate`;
CREATE TABLE `ecs_shop_cate` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1819 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_shop_cate`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_shop_cate` VALUES ('1003', '火锅', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1004', '冰淇淋', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1005', '蛋糕', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1006', '小龙虾', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1007', '日韩料理', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1008', '西餐', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1009', '小吃快餐', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1010', '江浙菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1011', '烧烤烤肉', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1012', '粤菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1013', '川菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1014', '东南亚菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1015', '海鲜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1016', '陕菜/西北菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1017', '湘菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1018', '淮扬菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1019', '咖啡厅', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1020', '天津菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1021', '茶餐厅', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1022', '创意菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1023', '云南菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1024', '台湾菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1025', '青海菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1026', '闽菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1027', '东北菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1028', '新疆/清真', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1029', '徽菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1030', '江西菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1031', '客家菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1032', '冀菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1033', '北京菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1034', '山西菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1035', '贵州菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1036', '素菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1037', '鲁菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1038', '内蒙菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1039', '湖北菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1040', '赣菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1041', '豫菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1042', '广西菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1043', '海南菜', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1044', '其他', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('11', '休闲娱乐', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1101', 'KTV', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1102', '足疗按摩', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1103', '运动健身', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1104', '游泳', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1105', '水上乐园', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1106', '温泉/浴场', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1107', '咖啡厅', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1108', '游乐游艺', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1109', '景点郊游', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1110', '演出/赛事/展览', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1111', '公园', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1112', '桌游/密室', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1113', '茶馆', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1114', 'DIY手工', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1115', '酒吧', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1116', '情侣影院', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('1117', '其他', '', '', '11', '50', '', '', '0', '', '1', '0', '0'), ('12', '电影', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('13', '酒店', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1301', '五星级酒店', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1302', '四星级酒店', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1303', '三星级酒店', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1304', '经济型酒店', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1305', '公寓式酒店', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1306', '精品酒店', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1307', '度假村', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1308', '客栈旅舍', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1309', '其他', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1310', '青年旅舍', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('1311', '农家院', '', '', '13', '50', '', '', '0', '', '1', '0', '0'), ('14', '旅游', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('15', '丽人', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1501', '美发', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1502', '个性写真', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1503', '美容美体', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1504', '美甲', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1505', '整形', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1506', '瘦身纤体', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1507', '瑜伽', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1508', '舞蹈', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1509', '化妆品', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('1510', '其他', '', '', '15', '50', '', '', '0', '', '1', '0', '0'), ('16', '生活服务', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1601', '装修设计', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1602', '培训进修', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1603', '汽车服务', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1604', '银行', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1605', '体检保健', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1606', '快照冲印', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1607', '家政服务', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1608', '鲜花', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1609', '洗衣店', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1610', '小区/商务楼', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1611', '公交车', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1612', '宠物服务', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1613', '机场', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1614', '家居软装', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1615', '基础建材', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1616', '加油站', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1617', '其他', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('1618', '搬家', '', '', '16', '50', '', '', '0', '', '1', '0', '0'), ('17', '购物', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1701', '服饰鞋包', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1702', '生活家居', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1703', '食品饮料', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1704', '数码家电', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1705', '个护化妆', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1706', '母婴用品', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1707', '珠宝饰品', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1708', '钟表眼镜', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1709', '水果生鲜', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1710', '影音书刊', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('1711', '其他', '', '', '17', '50', '', '', '0', '', '1', '0', '0'), ('18', '结婚亲子', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1801', '孕产护理', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1802', '亲子购物', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1803', '亲子游乐', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1804', '幼儿教育', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1805', '婚戒首饰', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1806', '亲子摄影', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1807', '婚车租赁', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1808', '婚纱摄影', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1809', '彩妆造型', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1810', '司仪主持', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1811', '婚纱礼服', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1812', '婚庆公司', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1813', '成衣定制', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1814', '婚礼小商品', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1815', '婚礼跟拍', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1816', '旅游婚纱照', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('1817', '其他结婚', '', '', '18', '50', '', '', '0', '', '1', '0', '0'), ('10', '美食', '', '', '0', '50', '', '', '0', '', '1', '0', '0'), ('1001', '自助餐', '', '', '10', '50', '', '', '0', '', '1', '0', '0'), ('1002', '甜品饮料', '', '', '10', '50', '', '', '0', '', '1', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_shop_config`;
CREATE TABLE `ecs_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_shop_config`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1'), ('2', '0', 'basic', 'group', '', '', '', '1'), ('3', '0', 'display', 'group', '', '', '', '1'), ('4', '0', 'shopping_flow', 'group', '', '', '', '1'), ('5', '0', 'smtp', 'group', '', '', '', '1'), ('6', '0', 'hidden', 'hidden', '', '', '', '1'), ('7', '0', 'goods', 'group', '', '', '', '1'), ('8', '0', 'sms', 'group', '', '', '', '1'), ('9', '0', 'wap', 'group', '', '', '', '1'), ('101', '1', 'shop_name', 'text', '', '', '商城', '1'), ('102', '1', 'shop_title', 'text', '', '', '商城', '1'), ('103', '1', 'shop_desc', 'text', '', '', '商城', '1'), ('104', '1', 'shop_keywords', 'text', '', '', '商城', '1'), ('105', '1', 'shop_country', 'manual', '', '', '1', '1'), ('106', '1', 'shop_province', 'manual', '', '', '2', '1'), ('107', '1', 'shop_city', 'manual', '', '', '52', '1'), ('108', '1', 'shop_address', 'text', '', '', '', '1'), ('109', '1', 'qq', 'text', '', '', '', '1'), ('110', '1', 'ww', 'text', '', '', '', '1'), ('111', '1', 'skype', 'text', '', '', '', '1'), ('112', '1', 'ym', 'text', '', '', '', '1'), ('113', '1', 'msn', 'text', '', '', '', '1'), ('114', '1', 'service_email', 'text', '', '', '', '1'), ('115', '1', 'service_phone', 'text', '', '', '', '1'), ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1'), ('117', '1', 'close_comment', 'textarea', '', '', '', '1'), ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '', '1'), ('119', '1', 'licensed', 'select', '0,1', '', '0', '1'), ('120', '1', 'user_notice', 'textarea', '', '', '用户中心公告！', '1'), ('121', '1', 'shop_notice', 'textarea', '', '', '', '1'), ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1'), ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1'), ('202', '2', 'icp_number', 'text', '', '', '', '1'), ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1'), ('204', '2', 'watermark', 'file', '', '../images/', '', '1'), ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '1', '1'), ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1'), ('207', '2', 'use_storage', 'select', '1,0', '', '1', '1'), ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1'), ('209', '2', 'rewrite', 'select', '0,1,2', '', '0', '1'), ('210', '2', 'integral_name', 'text', '', '', '积分', '1'), ('211', '2', 'integral_scale', 'text', '', '', '1', '1'), ('212', '2', 'integral_percent', 'text', '', '', '1', '1'), ('213', '2', 'sn_prefix', 'text', '', '', 'ECS', '1'), ('214', '2', 'comment_check', 'select', '0,1', '', '1', '1'), ('215', '2', 'no_picture', 'file', '', '../images/', '', '1'), ('218', '2', 'stats_code', 'textarea', '', '', '', '1'), ('219', '2', 'cache_time', 'text', '', '', '3600', '1'), ('220', '2', 'register_points', 'text', '', '', '0', '1'), ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1'), ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1'), ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1'), ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1'), ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1'), ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1'), ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1'), ('229', '2', 'default_storage', 'text', '', '', '1', '1'), ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1'), ('231', '2', 'visit_stats', 'select', 'on,off', '', 'on', '1'), ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1'), ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1'), ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1'), ('235', '2', 'member_email_validate', 'select', '1,0', '', '1', '1'), ('236', '2', 'message_board', 'select', '1,0', '', '1', '1'), ('239', '2', 'certificate_id', 'hidden', '', '', '1990158633', '1'), ('240', '2', 'token', 'hidden', '', '', '4a46156ad3f06af9cecc673c7e1f0e9a512bacaafeb7232c7d91ca8bc10eb1c1', '1'), ('241', '2', 'certi', 'hidden', '', '', 'http://service.shopex.cn/openapi/api_8.php', '1'), ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1'), ('243', '2', 'ent_id', 'hidden', '', '', '', '1'), ('244', '2', 'ent_ac', 'hidden', '', '', '', '1'), ('245', '2', 'ent_sign', 'hidden', '', '', '', '1'), ('246', '2', 'ent_email', 'hidden', '', '', '', '1'), ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1'), ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1'), ('303', '3', 'currency_format', 'text', '', '', '￥%s元', '1'), ('304', '3', 'thumb_width', 'text', '', '', '210', '1'), ('305', '3', 'thumb_height', 'text', '', '', '140', '1'), ('306', '3', 'image_width', 'text', '', '', '420', '1'), ('307', '3', 'image_height', 'text', '', '', '280', '1'), ('312', '3', 'top_number', 'text', '', '', '10', '1'), ('313', '3', 'history_number', 'text', '', '', '5', '1'), ('314', '3', 'comments_number', 'text', '', '', '5', '1'), ('315', '3', 'bought_goods', 'text', '', '', '3', '1'), ('316', '3', 'article_number', 'text', '', '', '8', '1'), ('317', '3', 'goods_name_length', 'text', '', '', '7', '1'), ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '5', '1'), ('319', '3', 'page_size', 'text', '', '', '10', '1'), ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1'), ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1'), ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1'), ('323', '3', 'attr_related_number', 'text', '', '', '5', '1'), ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1'), ('325', '3', 'article_title_length', 'text', '', '', '16', '1'), ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1'), ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1'), ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1'), ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1'), ('330', '3', 'search_keywords', 'text', '', '', '', '0'), ('332', '3', 'related_goods_number', 'text', '', '', '4', '1'), ('333', '3', 'help_open', 'select', '0,1', '', '1', '1'), ('334', '3', 'article_page_size', 'text', '', '', '10', '1'), ('335', '3', 'page_style', 'select', '0,1', '', '1', '1'), ('336', '3', 'recommend_order', 'select', '0,1', '', '0', '1'), ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1'), ('401', '4', 'can_invoice', 'select', '1,0', '', '1', '1'), ('402', '4', 'use_integral', 'select', '1,0', '', '1', '1'), ('403', '4', 'use_bonus', 'select', '1,0', '', '0', '1'), ('404', '4', 'use_surplus', 'select', '1,0', '', '0', '1'), ('405', '4', 'use_how_oos', 'select', '1,0', '', '1', '1'), ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1'), ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1'), ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1'), ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1'), ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1'), ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1'), ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1'), ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1'), ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1'), ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1'), ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1'), ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1'), ('418', '4', 'invoice_content', 'textarea', '', '', '', '1'), ('419', '4', 'anonymous_buy', 'select', '1,0', '', '1', '1'), ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1'), ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1'), ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1'), ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1'), ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0'), ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1'), ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1'), ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1'), ('501', '5', 'smtp_host', 'text', '', '', 'localhost', '1'), ('502', '5', 'smtp_port', 'text', '', '', '25', '1'), ('503', '5', 'smtp_user', 'text', '', '', '', '1'), ('504', '5', 'smtp_pass', 'password', '', '', '', '1'), ('505', '5', 'smtp_mail', 'text', '', '', '', '1'), ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1'), ('507', '5', 'mail_service', 'select', '0,1', '', '0', '0'), ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0'), ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1'), ('602', '6', 'integrate_config', 'hidden', '', '', '', '1'), ('603', '6', 'hash_code', 'hidden', '', '', '9a78679a0f181a796f94d7621f244a0e', '1'), ('604', '6', 'template', 'hidden', '', '', 'default', '1'), ('605', '6', 'install_date', 'hidden', '', '', '1399432552', '1'), ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1'), ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1'), ('608', '6', 'sms_password', 'hidden', '', '', '', '1'), ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1'), ('610', '6', 'sms_domain', 'hidden', '', '', '', '1'), ('611', '6', 'sms_count', 'hidden', '', '', '', '1'), ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1'), ('613', '6', 'sms_balance', 'hidden', '', '', '', '1'), ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1'), ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:1;}', '1'), ('617', '6', 'captcha', 'hidden', '', '', '36', '1'), ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1'), ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1'), ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0'), ('621', '6', 'points_rule', 'hidden', '', '', '', '0'), ('622', '6', 'flash_theme', 'hidden', '', '', 'dynfocus', '1'), ('623', '6', 'stylename', 'hidden', '', '', '', '1'), ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1'), ('702', '7', 'show_brand', 'select', '1,0', '', '1', '1'), ('703', '7', 'show_goodsweight', 'select', '1,0', '', '1', '1'), ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '1', '1'), ('705', '7', 'show_addtime', 'select', '1,0', '', '1', '1'), ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1'), ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1'), ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1'), ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1'), ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1'), ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1'), ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1'), ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1'), ('903', '2', 'message_check', 'select', '1,0', '', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_snatch_log`;
CREATE TABLE `ecs_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_stats`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_stats`;
CREATE TABLE `ecs_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_stats`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_stats` VALUES ('1399432555', '127.0.0.1', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/install/index.php?lang=zh_cn&step=done', '/ecshop/index.php'), ('1399434751', '192.168.1.115', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1399434832', '192.168.1.114', '1', 'Safari 8536.25', 'Unknown', 'zh-cn', 'LAN', '', '', '/ecshop/index.php'), ('1399874416', '127.0.0.1', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1399881583', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1399884013', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/category.php?id=2', '/ecshop/user.php'), ('1399953027', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1399965938', '127.0.0.1', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/category.php?id=1', '/ecshop/category.php'), ('1399968349', '127.0.0.1', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/category.php?id=1', '/ecshop/category.php'), ('1400056215', '127.0.0.1', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1400126937', '127.0.0.1', '7', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1400135695', '127.0.0.1', '8', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/', '/ecshop/category.php'), ('1400139774', '127.0.0.1', '8', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/category.php?category=2&display=list&brand=0&price_min=0&price_max=0&filter_attr=0&page=1&sort=goods_id&order=DESC', '/ecshop/category.php'), ('1400211749', '127.0.0.1', '9', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1400211749', '127.0.0.1', '9', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1400750165', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1401251064', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/user.php'), ('1401335388', '127.0.0.1', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1401417725', '127.0.0.1', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1401776579', '127.0.0.1', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1401860815', '127.0.0.1', '7', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1402039866', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1404187367', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1404197570', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1404201733', '127.0.0.1', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/index.php?act=top', '/ecshop/index.php'), ('1404791209', '127.0.0.1', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1404878676', '127.0.0.1', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1406099277', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1406110644', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1406626449', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1406695555', '127.0.0.1', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1406701054', '127.0.0.1', '5', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1406865248', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1407131185', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/captcha_manage.php?act=main', '/ecshop/captcha.php'), ('1411372950', '121.229.209.202', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', '', '', '', '/wxshop/index.php'), ('1411372970', '121.196.43.131', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411372971', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411373312', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411373456', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411374851', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411374942', '121.196.43.131', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411374997', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411375091', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411375143', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411376948', '121.196.43.131', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1411709946', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1413529365', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1413529858', '121.196.43.131', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1413531314', '121.229.215.34', '1', 'Unknow browser', 'Windows NT', 'zh-CN', '', '', '', '/wxshop/shop.php'), ('1413531583', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1413532529', '180.153.163.206', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/wxshop/user.php'), ('1413532802', '101.226.33.240', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/shop.php'), ('1413532853', '180.153.201.214', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/wxshop/shop.php'), ('1413533220', '180.153.163.211', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/wxshop/index.php'), ('1413533287', '101.226.33.238', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/index.php'), ('1413533521', '101.226.66.173', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/user.php'), ('1413534311', '127.0.0.1', '1', 'Unknow browser', 'Windows NT', 'zh-CN', 'LAN', '', '', '/ecshop/shop.php'), ('1413534496', '180.153.201.214', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/wxshop/article.php'), ('1413776855', '121.196.43.131', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1413864554', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1413879575', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1413961856', '121.196.43.131', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1413964057', '49.74.230.24', '2', 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', 'http://61.154.127.132:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1413964336', '112.64.235.248', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/search.php'), ('1413965632', '101.226.65.104', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/category.php'), ('1413965660', '180.153.214.178', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/wxshop/category.php'), ('1413965673', '222.73.77.54', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '', '', '', '/wxshop/goods.php'), ('1413965829', '180.153.206.20', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', '[δ֪IP0801]', '', '', '/wxshop/index.php'), ('1413965936', '101.226.33.240', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/index.php'), ('1413966165', '101.226.33.226', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/flow.php'), ('1413966521', '101.226.89.122', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', '', '', '/wxshop/goods.php'), ('1414035076', '127.0.0.1', '2', 'Unknow browser', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/ecshop/admin/goods.php?act=list', '/ecshop/goods.php'), ('1414034475', '121.196.43.130', '1', 'Unknow browser', 'Unknown', '', '', '', '', '/wxshop/certi.php'), ('1414034481', '180.109.206.10', '3', 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://61.154.127.132:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1414580926', '49.77.35.167', '1', 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1414993681', '121.229.218.190', '2', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1415175427', '180.109.207.148', '3', 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1415245822', '58.212.237.163', '4', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1415344242', '218.2.244.219', '5', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1415590753', '222.95.44.127', '6', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1415939781', '121.229.121.91', '7', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1416207452', '180.110.144.205', '8', 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://182.254.135.184:8100', '/wxshop/admin/excode.php?act=list', '/wxshop/goods.php'), ('1416306851', '180.110.144.55', '9', 'Unknow browser', 'Windows NT', 'zh-CN', '[δ֪IP0801]', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1416564673', '49.77.34.114', '10', 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', '', '', '/wxshop/index.php'), ('1416800370', '222.95.45.244', '11', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/comment_manage.php?act=list', '/wxshop/goods.php'), ('1416815710', '222.95.45.244', '12', 'Unknow browser', 'Windows NT', 'zh-CN', '', '', '', '/wxshop/index.php'), ('1416816646', '61.135.172.68', '1', 'FireFox 33.0', 'Windows NT', 'zh-cn,zh', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1416816868', '101.226.66.178', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1416817398', '101.226.33.202', '1', 'Unknow browser', 'Unknown', 'zh-cn, zh', 'IANA', 'http://182.254.135.184:8100', '/wxshop/goods.php?id=12', '/wxshop/captcha.php'), ('1416889130', '222.94.115.21', '13', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/privilege.php?act=login', '/wxshop/index.php'), ('1417113241', '222.94.137.185', '14', 'Unknow browser', 'Windows NT', 'zh-CN', '', 'http://182.254.135.184:8100', '/wxshop/admin/goods.php?act=list', '/wxshop/goods.php'), ('1417317295', '222.95.245.11', '1', 'Unknow browser', 'Windows NT', 'zh-CN', '', '', '', '/wxshop/index.php'), ('1417878525', '0.0.0.0', '1', 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', '', '', '/estore/index.php'), ('1417937949', '0.0.0.0', '1', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1417941474', '0.0.0.0', '2', 'Safari 537.1', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://localhost', '/wxadmin/admin/index.php', '/wxadmin/goods.php'), ('1418036095', '0.0.0.0', '1', 'Unknow browser', 'Windows NT', 'zh-CN', 'IANA', '', '', '/wxadmin/index.php'), ('1418093654', '0.0.0.0', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1418121673', '0.0.0.0', '6', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', 'http://localhost', '/wxadmin/admin/index.php', '/wxadmin/article.php'), ('1418187159', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/comment_manage.php?act=list', '/ecshop/article.php'), ('1418187164', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', 'http://localhost', '/ecshop/admin/comment_manage.php?act=list', '/ecshop/goods.php'), ('1418369963', '0.0.0.0', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1418370031', '0.0.0.0', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1418376013', '0.0.0.0', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1418895063', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1418979566', '0.0.0.0', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1419327229', '127.0.0.1', '2', 'Unknow browser', 'Windows NT', 'zh-CN', 'LAN', 'http://localhost', '/ecshop/admin/privilege.php?act=logout', '/ecshop/index.php'), ('1419334437', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1419340963', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1419406366', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1419408445', '0.0.0.0', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1419414900', '0.0.0.0', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1419414944', '0.0.0.0', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1419487385', '0.0.0.0', '4', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1420600991', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1421317599', '0.0.0.0', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'IANA', '', '', '/wxadmin/index.php'), ('1422516857', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1423129552', '127.0.0.1', '1', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1423139231', '127.0.0.1', '2', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php'), ('1426150587', '127.0.0.1', '3', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/ecshop/index.php');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_supplier_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_supplier_gallery`;
CREATE TABLE `ecs_supplier_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `supplier_id` (`supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_supplier_gallery`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_supplier_gallery` VALUES ('9', '2', 'images/201410/supplier_img/2_P_1413885921890.jpg', '', 'images/201410/thumb_img/2_thumb_P_1413885921207.jpg', 'images/201410/source_img/2_P_1413885921965.jpg'), ('10', '2', 'images/201410/supplier_img/2_P_1413885921693.jpg', '', 'images/201410/thumb_img/2_thumb_P_1413885921449.jpg', 'images/201410/source_img/2_P_1413885921468.jpg'), ('11', '2', 'images/201410/supplier_img/2_P_1413885921277.jpg', '', 'images/201410/thumb_img/2_thumb_P_1413885921840.jpg', 'images/201410/source_img/2_P_1413885921617.jpg'), ('12', '5', 'images/201410/supplier/supplier_img/5_P_1414555367271.jpg', '', 'images/201410/supplier/thumb_img/5_thumb_P_1414555367034.jpg', 'images/201410/supplier/source_img/5_P_1414555367823.jpg'), ('13', '5', 'images/201410/supplier/supplier_img/5_P_1414555367597.jpg', '', 'images/201410/supplier/thumb_img/5_thumb_P_1414555367133.jpg', 'images/201410/supplier/source_img/5_P_1414555367782.jpg'), ('14', '6', 'images/201410/supplier/supplier_img/6_P_1414582532063.jpg', '', 'images/201410/supplier/thumb_img/6_thumb_P_1414582532282.jpg', 'images/201410/supplier/source_img/6_P_1414582532224.jpg'), ('15', '6', 'images/201410/supplier/supplier_img/6_P_1414582532429.jpg', '', 'images/201410/supplier/thumb_img/6_thumb_P_1414582532498.jpg', 'images/201410/supplier/source_img/6_P_1414582532413.jpg'), ('16', '6', 'images/201410/supplier/supplier_img/6_P_1414582533322.jpg', '', 'images/201410/supplier/thumb_img/6_thumb_P_1414582533731.jpg', 'images/201410/supplier/source_img/6_P_1414582533642.jpg'), ('17', '7', 'images/201410/supplier/supplier_img/7_P_1414582770974.jpg', '', 'images/201410/supplier/thumb_img/7_thumb_P_1414582770041.jpg', 'images/201410/supplier/source_img/7_P_1414582770520.jpg'), ('18', '7', 'images/201410/supplier/supplier_img/7_P_1414582770389.jpg', '', 'images/201410/supplier/thumb_img/7_thumb_P_1414582770430.jpg', 'images/201410/supplier/source_img/7_P_1414582770962.jpg'), ('19', '7', 'images/201410/supplier/supplier_img/7_P_1414582770628.jpg', '', 'images/201410/supplier/thumb_img/7_thumb_P_1414582770006.jpg', 'images/201410/supplier/source_img/7_P_1414582770392.jpg'), ('20', '7', 'images/201410/supplier/supplier_img/7_P_1414582770073.jpg', '', 'images/201410/supplier/thumb_img/7_thumb_P_1414582770960.jpg', 'images/201410/supplier/source_img/7_P_1414582770853.jpg'), ('21', '9', 'images/201411/supplier/supplier_img/9_P_1416226647152.jpg', '', 'images/201411/supplier/thumb_img/9_thumb_P_1416226647647.jpg', 'images/201411/supplier/source_img/9_P_1416226647503.jpg'), ('22', '9', 'images/201411/supplier/supplier_img/9_P_1416226647205.jpg', '', 'images/201411/supplier/thumb_img/9_thumb_P_1416226647598.jpg', 'images/201411/supplier/source_img/9_P_1416226647349.jpg'), ('23', '11', 'images/201412/supplier/supplier_img/11_P_1417942938132.jpg', '', 'images/201412/supplier/thumb_img/11_thumb_P_1417942938482.jpg', 'images/201412/supplier/source_img/11_P_1417942938970.jpg'), ('24', '11', 'images/201412/supplier/supplier_img/11_P_1417942938886.jpg', '', 'images/201412/supplier/thumb_img/11_thumb_P_1417942938185.jpg', 'images/201412/supplier/source_img/11_P_1417942938272.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_suppliers`;
CREATE TABLE `ecs_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '归属哪个机构',
  `shop_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商户',
  `suppliers_name` varchar(128) NOT NULL,
  `logo_img` varchar(255) NOT NULL DEFAULT '',
  `logo_thumb` varchar(255) NOT NULL DEFAULT '',
  `shop_price` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '人均消费元',
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '评价级别',
  `serv_rank` decimal(2,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '评价级别',
  `envi_rank` decimal(2,1) unsigned NOT NULL DEFAULT '0.0' COMMENT '评价级别',
  `region_cities` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `region_districts` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '区县',
  `place_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商圈',
  `map_lat` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '位置经度',
  `map_lng` float(10,6) NOT NULL DEFAULT '0.000000' COMMENT '位置纬度',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `office_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `opening_hours` varchar(64) NOT NULL DEFAULT '' COMMENT '营业时间',
  `traffic_info` varchar(256) NOT NULL DEFAULT '' COMMENT '交通信息',
  `suppliers_desc` mediumtext,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_has_gallery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pcat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父类别',
  PRIMARY KEY (`suppliers_id`),
  KEY `agency_id` (`agency_id`),
  KEY `shop_id` (`shop_id`),
  KEY `region_cities` (`region_cities`),
  KEY `region_districts` (`region_districts`),
  KEY `place_id` (`place_id`),
  KEY `suppliers_name` (`suppliers_name`),
  KEY `pcat_id` (`pcat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_suppliers`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_suppliers` VALUES ('7', '1008', '0', '7', '洋葱咖喱(大洋百货店)', '1414582770782240831.jpg', '', '42', '3', '0.0', '0.0', '0', '0', '0', '32.042568', '118.784348', '中山南路122号大洋百货1楼(近丰富路)', '025-84730065', '', '', '', '口味和环境都不错。蛋包饭还是他家的最好吃。就是服务员太少。忙不过来。', '0', '1', '1', '1', '0', '10'), ('6', '1008', '0', '7', '洋葱咖啡馆(德基店)', '1414582532676958405.jpg', '', '48', '3', '0.0', '0.0', '0', '0', '0', '32.043007', '118.786407', '中山路18号德基广场2期4楼', '025-86777487', '', '', '', '好吃的简餐', '0', '1', '1', '1', '0', '10'), ('5', '1007', '0', '0', '依偎日式精致料理自助', '1414555367241697783.jpg', '', '78', '3', '0.0', '0.0', '211', '1770', '0', '43.817539', '125.258125', '羊皮巷25号肯定美食城4楼(和风食堂)', '025-86656606', '', '', '', '日式精品料理', '0', '1', '1', '1', '0', '10'), ('9', '0', '0', '3', '万达影城(河西万达)', '1416226647853078298.jpg', '', '26', '3', '0.0', '0.0', '0', '0', '0', '32.048534', '118.767464', '江东中路98号建邺万达广场4楼(近水西门大街)', '025-68132777-2', '', '', '', '建邺万达店', '0', '1', '1', '1', '0', '12'), ('10', '1003', '0', '4', '老北京炭火锅', '1417254789280898730.jpg', '', '30', '3', '0.0', '0.0', '211', '1771', '0', '0.000000', '0.000000', '铁北一匡街与二道沟街交汇', '18088632507', '18088632507', '9:00~21:00', '', '老北京炭火锅', '0', '0', '1', '1', '0', '10'), ('12', '1001', '0', '6', '肯德基', '', '', '0', '0', '0.0', '0.0', '211', '1770', '1', '0.000000', '0.000000', '新街口30号', '45658874', '', '', '', null, '0', '0', '1', '0', '0', '10'), ('13', '1001', '0', '7', '洋葱咖喱（绿地广场）', '', '', '30', '3', '0.0', '0.0', '0', '0', '0', '32.059155', '118.783028', '南京市鼓楼区绿地广场', '025-55655568', '', '', '', '', '0', '0', '1', '1', '0', '10');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_tag`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_tag`;
CREATE TABLE `ecs_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_template`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_template`;
CREATE TABLE `ecs_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_template`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_template` VALUES ('index', '左边区域', '/library/vote_list.lbi', '8', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/email_list.lbi', '9', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/order_query.lbi', '6', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/promotion_info.lbi', '3', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/auction.lbi', '4', '0', '3', '0', 'default', ''), ('index', '左边区域', '/library/group_buy.lbi', '5', '0', '3', '0', 'default', ''), ('index', '', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'default', ''), ('index', '右边主区域', '/library/recommend_hot.lbi', '2', '0', '10', '0', 'default', ''), ('index', '右边主区域', '/library/recommend_new.lbi', '1', '0', '10', '0', 'default', ''), ('index', '右边主区域', '/library/recommend_best.lbi', '0', '0', '10', '0', 'default', ''), ('index', '左边区域', '/library/invoice_query.lbi', '7', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/top10.lbi', '2', '0', '0', '0', 'default', ''), ('index', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', ''), ('index', '', '/library/brands.lbi', '0', '0', '11', '0', 'default', ''), ('category', '左边区域', '/library/category_tree.lbi', '1', '0', '0', '0', 'default', ''), ('category', '右边区域', '/library/recommend_best.lbi', '0', '0', '5', '0', 'default', ''), ('category', '右边区域', '/library/goods_list.lbi', '1', '0', '0', '0', 'default', ''), ('category', '右边区域', '/library/pages.lbi', '2', '0', '0', '0', 'default', ''), ('category', '左边区域', '/library/cart.lbi', '0', '0', '0', '0', 'default', ''), ('category', '左边区域', '/library/price_grade.lbi', '3', '0', '0', '0', 'default', ''), ('category', '左边区域', '/library/filter_attr.lbi', '2', '0', '0', '0', 'default', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_topic`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_topic`;
CREATE TABLE `ecs_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_account`;
CREATE TABLE `ecs_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_user_account`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_user_account` VALUES ('1', '16', 'admin', '-0.01', '1416299827', '0', '订单退款：oid-141118122602d62kpng', '2', '1', '', '0'), ('2', '16', 'admin', '-0.02', '1416301541', '0', '订单退款：oid-1411181640421cp849h', '2', '1', '', '0'), ('3', '14', 'admin', '-0.02', '1416889298', '0', '订单退款：oid-141124155003n5qyju5', '我想要了', '1', '', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_address`;
CREATE TABLE `ecs_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_bonus`;
CREATE TABLE `ecs_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_feed`;
CREATE TABLE `ecs_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_rank`;
CREATE TABLE `ecs_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_user_rank`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0'), ('2', '手机注册用户', '0', '10000', '100', '1', '0');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_user_score`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_score`;
CREATE TABLE `ecs_user_score` (
  `open_id` varchar(60) NOT NULL DEFAULT '',
  `score` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`open_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_user_score`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_user_score` VALUES ('opd-d230dc26-ebfd-43f1-8996-562aafad9b25', '160', '1401952599', '1401953526');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_user_score_his`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_score_his`;
CREATE TABLE `ecs_user_score_his` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `score` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL,
  `add_type` int(3) NOT NULL COMMENT '0:系统自动, 1:人工',
  `operator` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '有效状态：0有效，1无效',
  `admin_user` varchar(255) NOT NULL DEFAULT '' COMMENT '管理员',
  `admin_note` varchar(255) NOT NULL DEFAULT '' COMMENT '调整原因',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_user_score_his`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_user_score_his` VALUES ('9', '14', '10', '1415963467', '1415963467', '0', '_BUY_GOODS_', '0', '', ''), ('8', '14', '1000', '1415962776', '1415962776', '0', '_BUY_GOODS_', '0', '', ''), ('7', '14', '0', '1415962405', '1415962405', '0', '_BUY_GOODS_', '0', '', ''), ('6', '14', '0', '1415961672', '1415961672', '0', '_BUY_GOODS_', '0', '', ''), ('10', '15', '20', '1416197224', '1416197224', '0', '_BUY_GOODS_', '0', '', ''), ('11', '14', '-5800', '1416223149', '1416223149', '0', '_SCORE_GIFT_', '0', '', ''), ('12', '14', '-11600', '1416223535', '1416223535', '0', '_SCORE_GIFT_', '0', '', ''), ('13', '14', '-20000', '1416227460', '1416227460', '0', '_SCORE_GIFT_', '0', '', ''), ('14', '14', '10', '1416282433', '1416282433', '0', '_BUY_GOODS_', '0', '', ''), ('15', '14', '-5800', '1416283405', '1416283405', '0', '_SCORE_GIFT_', '0', '', ''), ('16', '16', '-20000', '1416284148', '1416284148', '0', '_SCORE_GIFT_', '0', '', ''), ('17', '16', '-20000', '1416284329', '1416284329', '0', '_SCORE_GIFT_', '0', '', ''), ('18', '16', '-20000', '1416284499', '1416284499', '0', '_SCORE_GIFT_', '0', '', ''), ('19', '16', '10', '1416284776', '1416284776', '0', '_BUY_GOODS_', '0', '', ''), ('20', '14', '10', '1416285333', '1416285333', '0', '_BUY_GOODS_', '0', '', ''), ('21', '14', '-5800', '1416289561', '1416289561', '0', '_SCORE_GIFT_', '0', '', ''), ('22', '14', '-5800', '1416289802', '1416289802', '0', '_SCORE_GIFT_', '0', '', ''), ('23', '14', '20', '1416292180', '1416292180', '0', '_BUY_GOODS_', '0', '', ''), ('24', '14', '10', '1416292215', '1416292215', '0', '_BUY_GOODS_', '0', '', ''), ('25', '16', '20', '1416300054', '1416300054', '0', '_BUY_GOODS_', '0', '', ''), ('26', '14', '10', '1416314435', '1416314435', '0', '_BUY_GOODS_', '0', '', ''), ('27', '14', '10', '1416317513', '1416317513', '0', '_BUY_GOODS_', '0', '', ''), ('28', '14', '20', '1416321090', '1416321090', '0', '_BUY_GOODS_', '0', '', ''), ('29', '14', '10', '1416387022', '1416387022', '0', '_BUY_GOODS_', '0', '', ''), ('30', '16', '0', '1416387081', '1416387081', '0', '_BUY_GOODS_', '0', '', ''), ('31', '14', '0', '1416387158', '1416387158', '0', '_BUY_GOODS_', '0', '', ''), ('32', '14', '10', '1416387237', '1416387237', '0', '_BUY_GOODS_', '0', '', ''), ('33', '14', '0', '1416387815', '1416387815', '0', '_BUY_GOODS_', '0', '', ''), ('34', '14', '-5800', '1416398749', '1416398749', '0', '_SCORE_GIFT_', '0', '', ''), ('35', '14', '-5800', '1416398887', '1416398887', '0', '_SCORE_GIFT_', '0', '', ''), ('36', '14', '30', '1416404454', '1416404454', '0', '_BUY_GOODS_', '0', '', ''), ('37', '17', '10', '1416452818', '1416452818', '0', '_BUY_GOODS_', '0', '', ''), ('38', '17', '-5800', '1416468083', '1416468083', '0', '_SCORE_GIFT_', '0', '', ''), ('39', '17', '-16800', '1416468316', '1416468316', '0', '_SCORE_GIFT_', '0', '', ''), ('40', '14', '-16800', '1416468429', '1416468429', '0', '_SCORE_GIFT_', '0', '', ''), ('41', '14', '-16800', '1416468967', '1416468967', '0', '_SCORE_GIFT_', '0', '', ''), ('42', '17', '-16800', '1416469011', '1416469011', '0', '_SCORE_GIFT_', '0', '', ''), ('43', '14', '20', '1416492648', '1416492648', '0', '_BUY_GOODS_', '0', '', ''), ('44', '14', '-5800', '1416492811', '1416492811', '0', '_SCORE_GIFT_', '0', '', ''), ('45', '14', '10', '1416544181', '1416544181', '0', '_BUY_GOODS_', '0', '', ''), ('46', '17', '30', '1416544305', '1416544305', '0', '_BUY_GOODS_', '0', '', ''), ('47', '14', '20', '1416545872', '1416545872', '0', '_BUY_GOODS_', '0', '', ''), ('48', '14', '10', '1416546159', '1416546159', '0', '_BUY_GOODS_', '0', '', ''), ('49', '14', '10', '1416546354', '1416546354', '0', '_BUY_GOODS_', '0', '', ''), ('50', '16', '-5800', '1416559437', '1416559437', '0', '_SCORE_GIFT_', '0', '', ''), ('51', '17', '-16800', '1416559527', '1416559527', '0', '_SCORE_GIFT_', '0', '', ''), ('52', '16', '-5800', '1416565198', '1416565198', '0', '_SCORE_GIFT_', '0', '', ''), ('53', '16', '-20000', '1416565236', '1416565236', '0', '_SCORE_GIFT_', '0', '', ''), ('54', '14', '0', '1416582883', '1416582883', '0', '_BUY_GOODS_', '0', '', ''), ('55', '14', '-5800', '1416582974', '1416582974', '0', '_SCORE_GIFT_', '0', '', ''), ('56', '14', '0', '1416815411', '1416815411', '0', '_BUY_GOODS_', '0', '', ''), ('57', '14', '10', '1416931590', '1416931590', '0', '_BUY_GOODS_', '0', '', ''), ('58', '14', '40', '1417093830', '1417093830', '0', '_BUY_GOODS_', '0', '', ''), ('59', '14', '30', '1417096026', '1417096026', '0', '_BUY_GOODS_', '0', '', ''), ('60', '19', '30', '1417114288', '1417114288', '0', '_BUY_GOODS_', '0', '', ''), ('61', '19', '0', '1417116377', '1417116377', '0', '_BUY_GOODS_', '0', '', ''), ('62', '19', '0', '1417116547', '1417116547', '0', '_BUY_GOODS_', '0', '', ''), ('63', '19', '20', '1417261309', '1417261309', '0', '_BUY_GOODS_', '0', '', ''), ('64', '19', '0', '1417265901', '1417265901', '0', '_BUY_GOODS_', '0', '', ''), ('65', '19', '0', '1417417992', '1417417992', '0', '_BUY_GOODS_', '0', '', ''), ('66', '21', '0', '1417495919', '1417495919', '0', '_BUY_GOODS_', '0', '', ''), ('67', '21', '0', '1417504349', '1417504349', '0', '_BUY_GOODS_', '0', '', ''), ('68', '21', '40', '1417511354', '1417511354', '0', '_BUY_GOODS_', '0', '', ''), ('69', '19', '0', '1417514535', '1417514535', '0', '_BUY_GOODS_', '0', '', '');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_user_token`;
CREATE TABLE `ecs_user_token` (
  `open_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(128) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `expired_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`open_id`),
  KEY `token` (`token`),
  KEY `user_id` (`user_id`),
  KEY `goods_sn` (`goods_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_user_token`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_user_token` VALUES ('opd-d230dc26-ebfd-43f1-8996-562aafad9b25', '0e8c259b9d92f2328cca1897cff44b3d', '11', 'ECS000002', '1402038906', '3600');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_users`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_users`;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL DEFAULT '',
  `msn` varchar(60) NOT NULL DEFAULT '',
  `qq` varchar(20) NOT NULL DEFAULT '',
  `office_phone` varchar(20) NOT NULL DEFAULT '',
  `home_phone` varchar(20) NOT NULL DEFAULT '',
  `mobile_phone` varchar(20) NOT NULL DEFAULT '',
  `is_validated` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否已验证',
  `credit_line` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '微信OPenID',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_users`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_users` VALUES ('17', '', '班长长', '_', '', '', '0', '0000-00-00', '0.00', '0.00', '943830', '960630', '0', '1416452775', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuMLbCmH1Ug5BeFx2QOtaanA'), ('15', '', '小武', '_', '', '', '0', '0000-00-00', '0.00', '0.00', '2000000', '2000000', '0', '1415711748', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuNZR5WQr5zzhZANj5LiN0R8'), ('16', '', '杰飞扬', '_', '', '', '0', '0000-00-00', '0.03', '0.00', '200008400', '40000', '0', '1415722922', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuBp4F8VtjZcCulZc1M4VdII'), ('19', '', 'shadowx', '_', '', '', '0', '0000-00-00', '0.00', '0.00', '50', '50', '0', '1417109582', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuG9y5gyA0QLPWyYv7uMSDjE'), ('18', '', '草包', '_', '', '', '0', '0000-00-00', '0.00', '0.00', '200', '0', '0', '1416822146', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuOhinucskvPaR4cWXUgaecs'), ('20', '', '胥小虎', '_', '', '', '0', '0000-00-00', '0.00', '0.00', '0', '0', '0', '1417156794', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuOGlgh1eYtKQdJDQPQlS4BM'), ('21', '', 'Clever、', '_', '', '', '0', '0000-00-00', '0.00', '0.00', '100', '40', '0', '1417492667', '0', '0000-00-00 00:00:00', '', '0', '0', '0', null, '', '0', '0', '', '', '', '', '', '', '1', '0.00', null, null, 'o5iYiuJC7By4KdZ__jL00i5rb1SE');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_virtual_card`;
CREATE TABLE `ecs_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_volume_price`;
CREATE TABLE `ecs_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_volume_price`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_volume_price` VALUES ('1', '5', '0', '20.00');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_vote`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote`;
CREATE TABLE `ecs_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_log`;
CREATE TABLE `ecs_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_vote_option`;
CREATE TABLE `ecs_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_wholesale`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wholesale`;
CREATE TABLE `ecs_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_wx_article`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_article`;
CREATE TABLE `ecs_wx_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL,
  `media_id` varchar(64) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `author` varchar(120) NOT NULL DEFAULT '',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `source_url` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `digest` varchar(255) NOT NULL DEFAULT '',
  `show_cover_pic` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_wx_event`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_event`;
CREATE TABLE `ecs_wx_event` (
  `event_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(120) NOT NULL DEFAULT '',
  `event_key` varchar(32) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `event_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_wx_event`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_wx_event` VALUES ('1', '欢迎事件_01', 'WELCOME_KEY', '', '1406788815', '欢迎事件修改'), ('3', '阿姨', 'ADD_AYI', '', '1406865948', '阿姨');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_wx_group`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_group`;
CREATE TABLE `ecs_wx_group` (
  `wx_group_id` int(11) NOT NULL,
  `group_name` varchar(64) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `group_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`wx_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_wx_keyword`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_keyword`;
CREATE TABLE `ecs_wx_keyword` (
  `keyword_id` int(4) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(64) NOT NULL,
  `msg_type` varchar(255) NOT NULL,
  `news_id` int(11) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1启用 0未启用',
  `content` varchar(256) DEFAULT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`keyword_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_wx_keyword`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_wx_keyword` VALUES ('5', '试玩四', 'text', null, '1', '试玩四已修改2', '1405506104'), ('41', '2332', 'text', '0', '1', '测试消息回复', '1419489417'), ('42', '111', 'news', '0', '1', '11', '1419489521'), ('43', '1111', 'text', '0', '1', '111', '1419493765');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_wx_media`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_media`;
CREATE TABLE `ecs_wx_media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_name` varchar(64) NOT NULL DEFAULT '',
  `media_type` varchar(32) NOT NULL DEFAULT '1',
  `formats` varchar(32) NOT NULL DEFAULT '',
  `media_url` varchar(255) NOT NULL DEFAULT '',
  `wx_media_id` varchar(32) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `media_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`media_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_wx_media`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_wx_media` VALUES ('1', '图片1', 'image', 'JPG', '1406625657940746163.jpg', '', '1406625657', '美女图片'), ('2', '图片二', 'image', 'JPG', '1406626331671588065.jpg', '', '1406626331', '美女图片二'), ('3', '图片三', 'image', 'JPG', '1406626648413457305.jpg', '', '1406626648', '美女三'), ('4', '一首歌曲', 'voice', 'mp3', '', '', '1406802278', '一首歌曲');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_wx_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_menu`;
CREATE TABLE `ecs_wx_menu` (
  `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(32) DEFAULT NULL COMMENT '菜单类型',
  `parent_id` int(11) DEFAULT NULL,
  `menu_name` varchar(64) DEFAULT NULL,
  `event_key` varchar(128) DEFAULT NULL,
  `web_url` varchar(256) DEFAULT NULL COMMENT 'type为view, url必须，type为click, key必须',
  `is_leaf` tinyint(1) NOT NULL,
  `menu_sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 是叶节点 1 是有子几点',
  `menu_desc` varchar(255) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `ecs_wx_menu`
-- ----------------------------
BEGIN;
INSERT INTO `ecs_wx_menu` VALUES ('45', 'view', '0', '关于我', '', 'www.sina.com', '0', '0', '关于我', '1419492761'), ('46', 'view', '0', '团购商城', '', 'http://www.商城.com', '0', '0', '团购商城', '1419493030'), ('47', 'view', '0', '我的订单', '', 'http://www.我的订单.com', '0', '0', '我的订单', '1419493061'), ('50', 'view', '45', '测试二级菜单', '', 'http://www.renren.com', '1', '0', 'dddd', '1421230481'), ('49', 'view', '46', '跑男世界', '', 'http://www.跑男世界.com', '1', '0', '跑男世界', '1419493257');
COMMIT;

-- ----------------------------
--  Table structure for `ecs_wx_news`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_news`;
CREATE TABLE `ecs_wx_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_name` varchar(64) NOT NULL DEFAULT '',
  `wx_media_id` varchar(64) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `news_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `ecs_wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `ecs_wx_user`;
CREATE TABLE `ecs_wx_user` (
  `wx_openid` varchar(64) NOT NULL,
  `nickname` varchar(120) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `city` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(64) NOT NULL DEFAULT '',
  `province` varchar(64) NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT 'zh_CN',
  `subscribe_time` int(10) NOT NULL DEFAULT '0',
  `unionid` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`wx_openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
