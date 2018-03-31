CREATE database if NOT EXISTS `xxl-conf` default character set utf8 collate utf8_general_ci;
use `xxl-conf`;



CREATE TABLE `xxl_conf_node` (
  `key` varchar(200) NOT NULL COMMENT '配置Key',
  `appname` varchar(100) NOT NULL COMMENT '所属项目AppName',
  `title` varchar(100) NOT NULL COMMENT '配置描述',
  `value` varchar(2000) DEFAULT NULL COMMENT '配置Value',
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `xxl_conf_node_log` (
  `key` varchar(200) NOT NULL COMMENT '配置Key',
  `title` varchar(100) NOT NULL COMMENT '配置描述',
  `value` varchar(2000) DEFAULT NULL COMMENT '配置Value',
  `addtime` datetime NOT NULL COMMENT '操作时间',
  `optuser` varchar(100) NOT NULL COMMENT '操作人'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `xxl_conf_project` (
  `appname` varchar(100) NOT NULL COMMENT 'AppName',
  `title` varchar(100) NOT NULL COMMENT '项目名称',
  PRIMARY KEY (`appname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `xxl_conf_user` (
  `username` varchar(100) NOT NULL COMMENT '账号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `permission` tinyint(4) NOT NULL DEFAULT '0' COMMENT '权限：0-普通用户、1-管理员',
  `permission_projects` varchar(1000) DEFAULT NULL COMMENT '权限项目列表，多个逗号分隔',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `xxl_conf_node` VALUES ('default.key01', 'default', '测试配置01', '1'), ('default.key02', 'default', '测试配置02', '2'), ('default.key03', 'default', '测试配置03', '3');
INSERT INTO `xxl_conf_project` VALUES ('default', '示例项目');
INSERT INTO `xxl_conf_user` VALUES ('admin', 'e10adc3949ba59abbe56e057f20f883e', '1', null), ('user', 'e10adc3949ba59abbe56e057f20f883e', '0', 'default');



COMMIT;
