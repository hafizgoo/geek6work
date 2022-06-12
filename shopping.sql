
CREATE DATABASE IF NOT EXISTS `shopping` 
USE `shopping`;


CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别',
  `idcard` bigint(20) DEFAULT NULL COMMENT '身份证号',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `phone` bigint(20) DEFAULT NULL COMMENT '电话号码',
  `status` tinyint(4) DEFAULT NULL COMMENT '用户状态 0 禁用 1 可用',
  `createdate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modfiydate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';


CREATE TABLE IF NOT EXISTS `businesses` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商户id',
  `businessesname` varchar(50) NOT NULL DEFAULT '0' COMMENT '商户名称',
  `level` tinyint(4) DEFAULT '0' COMMENT '商户等级',
  `aptitude` varchar(50) DEFAULT '0' COMMENT '商户资质',
  `uid` bigint(20) NOT NULL COMMENT '商户负责人',
  `createdatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商户表';


CREATE TABLE IF NOT EXISTS `shops` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商铺id',
  `shopname` varchar(50) NOT NULL DEFAULT '0' COMMENT '商铺名称',
  `bid` bigint(20) NOT NULL DEFAULT '0' COMMENT '商铺所属商家',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '商铺星级',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 0禁用 1使用',
  `createdatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商铺表';



CREATE TABLE IF NOT EXISTS `commodity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `name` varchar(50) NOT NULL DEFAULT '0' COMMENT '商品名称',
  `description` varchar(50) NOT NULL DEFAULT '0' COMMENT '商品描述',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '商品价格',
  `inventory` int(11) NOT NULL DEFAULT '0' COMMENT '商品库存',
  `Image` varchar(50) DEFAULT '0' COMMENT '商品图片',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '商品状态 0禁用 1上架中 2已上架',
  `createdatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';


CREATE TABLE IF NOT EXISTS `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderno` char(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `payno` char(50) NOT NULL DEFAULT '' COMMENT '第三方支付订单号',
  `paytype` tinyint(4) NOT NULL DEFAULT '1' COMMENT '支付类型 1支付宝 2微信 3银联',
  `userid` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `commid` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `shopid` bigint(20) NOT NULL DEFAULT '0' COMMENT '店铺编号',
  `Payamountr` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT '支付金额',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态 0--待付款 1--待发货 2--待收货 3--已完成 4--已取消',
  `createdatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';




