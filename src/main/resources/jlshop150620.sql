-- ----------------------------
--  Table structure for `jl_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `jl_admin_user`;
CREATE TABLE `jl_admin_user` (
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
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jl_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `jl_admin_action`;
CREATE TABLE `jl_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jl_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `jl_admin_log`;
CREATE TABLE `jl_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;


-- ----------------------------
--  Table structure for `jl_supplier` 供应商（商户）
-- ----------------------------
DROP TABLE IF EXISTS `jl_supplier`;
CREATE TABLE `jl_supplier` (
  `shop_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pcat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `name` varchar(60) NOT NULL DEFAULT '',
  `logo` varchar(80) NOT NULL DEFAULT '',
  `id_snapshot` varchar(80) NOT NULL DEFAULT '' COMMENT '身份证复印件',
  `lic_snapshot` varchar(80) NOT NULL DEFAULT '' COMMENT '营业执照快照',
  `desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`shop_id`),
  KEY `cat_id` (`cat_id`),
  KEY `is_show` (`is_show`),
  KEY `pcat_id` (`pcat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `jl_shop` 门店
-- ----------------------------
DROP TABLE IF EXISTS `jl_shop`;
CREATE TABLE `jl_shop` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pcat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父类别',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类别',
  `suppliers_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '商户',
  `name` varchar(128) NOT NULL,
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
  `desc` mediumtext,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_has_gallery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',

  PRIMARY KEY (`id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `region_cities` (`region_cities`),
  KEY `region_districts` (`region_districts`),
  KEY `place_id` (`place_id`),
  KEY `shop_name` (`name`),
  KEY `pcat_id` (`pcat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
