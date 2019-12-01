SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '评论者姓名',
  `openid` varchar(64) NOT NULL COMMENT '评论者姓名',
  `content` text NOT NULL COMMENT '评论内容',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `avatar_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='评论信息表';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '张三', '1', '爱空间首付款叫号机', '2019-07-27 11:48:19', null);
INSERT INTO `comment` VALUES ('2', 'AgonI', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '还不错', '2019-08-26 13:46:52', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLGnUdBAAeZib7LkC2eoJwmBpOAw4l0BiczZiabfcXicCxpMQiccnLnm3EWz0Uv9LTGRyCEo7N3oKvgWpA/132');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `detail_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '当前价格,单位分',
  `product_quantity` int(11) NOT NULL COMMENT '数量',
  `product_icon` varchar(512) DEFAULT NULL COMMENT '小图',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`detail_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品';

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('1', '1', '1', '我问问', '23.00', '23', '王五', '2019-07-27 11:30:49', '2019-07-27 11:48:25');
INSERT INTO `order_detail` VALUES ('1564299723227960277', '1564299723224390123', '1', '珍珠奶茶', '11.00', '1', 'http://img5.imgtn.bdimg.com/it/u=2940830629,3017583854&fm=26&gp=0.jpg', '2019-07-28 15:42:03', '2019-07-28 15:42:03');
INSERT INTO `order_detail` VALUES ('1564627836372586722', '1564627836371417661', '1564625361863407515', '骨肉相连', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-08-01 10:50:36', '2019-08-01 10:50:36');
INSERT INTO `order_detail` VALUES ('1564627836375588264', '1564627836371417661', '1564625880425786594', '鸡头', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2450140390,1797366030&fm=26&gp=0.jpg', '2019-08-01 10:50:36', '2019-08-01 10:50:36');
INSERT INTO `order_detail` VALUES ('1564627836376936937', '1564627836371417661', '1564625932219919303', '鸡胗', '2.00', '1', 'http://img1.imgtn.bdimg.com/it/u=2431088706,821579407&fm=26&gp=0.jpg', '2019-08-01 10:50:36', '2019-08-01 10:50:36');
INSERT INTO `order_detail` VALUES ('1564627836378868682', '1564627836371417661', '1564626020805844937', '鸡心', '2.00', '8', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636052404&di=d7a0c6cb8c5824cfbcc7a26a7ac28015&imgtype=0&src=http%3A%2F%2Fpic49.nipic.com%2Ffile%2F20140827%2F5116609_085329909000_2.jpg', '2019-08-01 10:50:36', '2019-08-01 10:50:36');
INSERT INTO `order_detail` VALUES ('1566197754883371419', '1566197754874908322', '1564626946786428995', '鸡架', '5.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564637022440&di=f018db53172633fc08c3360b87a2d0c5&imgtype=0&src=http%3A%2F%2Fi12.tinypic.com%2F4i2c01s.jpg', '2019-08-19 14:55:54', '2019-08-19 14:55:54');
INSERT INTO `order_detail` VALUES ('1566197754915935881', '1566197754874908322', '1564627059159817824', '羊排', '23.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564637051865&di=8ff675874c534316e21dd37d26e2cc46&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fe%2F6%2F6%2Fyuan_e6b73dc7031047e875886a788fa91736.jpg', '2019-08-19 14:55:54', '2019-08-19 14:55:54');
INSERT INTO `order_detail` VALUES ('1566459854074100482', '1566459854061599264', '1564625068706427285', '猪沙肝', '2.00', '7', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-08-22 15:44:14', '2019-08-22 15:44:14');
INSERT INTO `order_detail` VALUES ('1566459854126394605', '1566459854061599264', '1566206939448905182', '烤馒头', '2.00', '3', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566811733&di=2d1d08c5fc9ef3dd39838ab99daff1e5&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201405%2F09%2F20140509130450_cnxKs.thumb.700_0.jpeg', '2019-08-22 15:44:14', '2019-08-22 15:44:14');
INSERT INTO `order_detail` VALUES ('1566790557236520267', '1566790557229251797', '1566203218916252509', '辣椒酱', '10.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566213290851&di=8c290815ecb2130ee675047c96e14d77&imgtype=0&src=http%3A%2F%2Fdpic.tiankong.com%2Fkx%2F1e%2FQJ6676102097.jpg%3Fx-oss-process%3Dstyle%2Fshow', '2019-08-26 11:35:57', '2019-08-26 11:35:57');
INSERT INTO `order_detail` VALUES ('1566790557271319388', '1566790557229251797', '1564625361863407515', '骨肉相连', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-08-26 11:35:57', '2019-08-26 11:35:57');
INSERT INTO `order_detail` VALUES ('1566790557275319225', '1566790557229251797', '1564625880425786594', '鸡头', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2450140390,1797366030&fm=26&gp=0.jpg', '2019-08-26 11:35:57', '2019-08-26 11:35:57');
INSERT INTO `order_detail` VALUES ('1566790607186585800', '1566790607185467722', '1564625068706427285', '猪沙肝', '2.00', '4', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-08-26 11:36:47', '2019-08-26 11:36:47');
INSERT INTO `order_detail` VALUES ('1566790607190812281', '1566790607185467722', '1566206939448905182', '烤馒头', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566811733&di=2d1d08c5fc9ef3dd39838ab99daff1e5&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201405%2F09%2F20140509130450_cnxKs.thumb.700_0.jpeg', '2019-08-26 11:36:47', '2019-08-26 11:36:47');
INSERT INTO `order_detail` VALUES ('1566790607192725196', '1566790607185467722', '1566206963766962708', '烤面包片', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566217039124&di=4e22316ed6e766762a84afb4e0376db9&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fdealwatera%2F89a50c74248f6dc84732f386fb9e32cf87845.jpg%40468h_702w_2e_90Q%257Cwatermark%3D1%26%26p%3D4', '2019-08-26 11:36:47', '2019-08-26 11:36:47');
INSERT INTO `order_detail` VALUES ('1566791379853254903', '1566791379846730204', '1564625068706427285', '猪沙肝', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-08-26 11:49:39', '2019-08-26 11:49:39');
INSERT INTO `order_detail` VALUES ('1566791379866751625', '1566791379846730204', '1564625361863407515', '骨肉相连', '2.00', '7', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-08-26 11:49:39', '2019-08-26 11:49:39');
INSERT INTO `order_detail` VALUES ('1566791379868428169', '1566791379846730204', '1566206313214343665', '培根金针菇', '3.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216385518&di=8d139c91a5218dfac2755b681a58e526&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fa%2F8%2F6%2Fyuan_a862f14b46e9229e161b2fca82ce7446.jpg', '2019-08-26 11:49:39', '2019-08-26 11:49:39');
INSERT INTO `order_detail` VALUES ('1566791379870484879', '1566791379846730204', '1566206749171198750', '烤尖椒', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216817203&di=6c5e189ea41520d343118f4a95015d5a&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2Fr69JXtuLCmcbJUUAxmdGTWrZ2N50AuEjOhANgBQBmxSROBY0eCgHe76uXOER_2DPTYGVDmosZWTLal1WbWRW3A.jpg', '2019-08-26 11:49:39', '2019-08-26 11:49:39');
INSERT INTO `order_detail` VALUES ('1566791661485633665', '1566791661475589305', '1564625068706427285', '猪沙肝', '2.00', '6', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-08-26 11:54:21', '2019-08-26 11:54:21');
INSERT INTO `order_detail` VALUES ('1566797205654121945', '1566797205643809822', '1566206803038825819', '金针菇', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216877847&di=5b81ef7cbbaab8d7480fda058853fad3&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20140526%2FImg400046361.jpg', '2019-08-26 13:26:45', '2019-08-26 13:26:45');
INSERT INTO `order_detail` VALUES ('1566798379117407077', '1566798379106951633', '1566204758573582631', '鱼豆腐', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214819960&di=06411b70ecbc367c2681de3317eca729&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2Fmb1PVNOfBzCiFBcfdkPhXxobvN21ipZS6jti8XSPGBE3uebbdWqQy5JPdEUcWhUbjoJrvItByyS4HHaWdXyO_DrXIaWutJls2xCVbatkhjUNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg', '2019-08-26 13:46:19', '2019-08-26 13:46:19');
INSERT INTO `order_detail` VALUES ('1566798379136833709', '1566798379106951633', '1566204869843605826', '多春鱼', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214910982&di=de1255f8d60d48cbe266648bcdc2d27e&imgtype=0&src=http%3A%2F%2Fwww.qnong.com.cn%2Fuploadfile%2F2017%2F0429%2F20170429060716853.jpg', '2019-08-26 13:46:19', '2019-08-26 13:46:19');
INSERT INTO `order_detail` VALUES ('1566800226890504745', '1566800226887449601', '1564626798414472555', '板筋', '3.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636873260&di=25cd8386c50233bae8cee7f072e40f5a&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Flbc%2Fpic%2Fitem%2Fe824b899a9014c0858dcfa590b7b02087af4f463.jpg', '2019-08-26 14:17:06', '2019-08-26 14:17:06');
INSERT INTO `order_detail` VALUES ('1566956036983434334', '1566956036952478852', '1564625068706427285', '猪沙肝', '2.00', '5', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-08-28 09:33:57', '2019-08-28 09:33:57');
INSERT INTO `order_detail` VALUES ('1566957488222985799', '1566957488220518093', '1564625361863407515', '骨肉相连', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-08-28 09:58:08', '2019-08-28 09:58:08');
INSERT INTO `order_detail` VALUES ('1568166732195911370', '1568166732157322264', '1564625068706427285', '猪沙肝', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-09-11 09:52:12', '2019-09-11 09:52:12');
INSERT INTO `order_detail` VALUES ('1568166732231305431', '1568166732157322264', '1564625361863407515', '骨肉相连', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-09-11 09:52:12', '2019-09-11 09:52:12');
INSERT INTO `order_detail` VALUES ('1568166732235110022', '1568166732157322264', '1564625880425786594', '鸡头', '2.00', '1', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2450140390,1797366030&fm=26&gp=0.jpg', '2019-09-11 09:52:12', '2019-09-11 09:52:12');
INSERT INTO `order_detail` VALUES ('1568166732239915566', '1568166732157322264', '1566204628857372894', '鱿鱼须', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214696188&di=5f0c6caa408c8dad871908330dbb08fe&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fdeal%2F8a01fe2de438e0b9919bb7c8ffc481fc255909.jpg', '2019-09-11 09:52:12', '2019-09-11 09:52:12');
INSERT INTO `order_detail` VALUES ('1568166732244516201', '1568166732157322264', '1566204719352713458', '海螺丸', '2.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566809511&di=674f1a7e51ebc655f927c3ab16e01e7c&imgtype=jpg&er=1&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2F6VdtZBMbHEbVlKFSMQeM9wtvKZg2ZQ5zqbI-dQp-hr_jnhhjdeoakUCXE8V2yzfAjoJrvItByyS4HHaWdXyO_DrXIaWutJls2xCVbatkhjUNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg', '2019-09-11 09:52:12', '2019-09-11 09:52:12');
INSERT INTO `order_detail` VALUES ('1568166798563745804', '1568166798561463950', '1564625361863407515', '骨肉相连', '2.00', '5', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-09-11 09:53:18', '2019-09-11 09:53:18');
INSERT INTO `order_detail` VALUES ('1568166798567654762', '1568166798561463950', '1566206890236317079', '烤小饼', '1.00', '1', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3922317435,2009916626&fm=26&gp=0.jpg', '2019-09-11 09:53:18', '2019-09-11 09:53:18');
INSERT INTO `order_detail` VALUES ('1568169581830963054', '1568169581822746780', '1564625068706427285', '猪沙肝', '2.00', '2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '2019-09-11 10:39:42', '2019-09-11 10:39:42');
INSERT INTO `order_detail` VALUES ('1568169581850905720', '1568169581822746780', '1564625361863407515', '骨肉相连', '2.00', '2', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '2019-09-11 10:39:42', '2019-09-11 10:39:42');
INSERT INTO `order_detail` VALUES ('1568169581850941060', '1568169581822746780', '1566206313214343665', '培根金针菇', '3.00', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216385518&di=8d139c91a5218dfac2755b681a58e526&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fa%2F8%2F6%2Fyuan_a862f14b46e9229e161b2fca82ce7446.jpg', '2019-09-11 10:39:42', '2019-09-11 10:39:42');

-- ----------------------------
-- Table structure for order_master
-- ----------------------------
DROP TABLE IF EXISTS `order_master`;
CREATE TABLE `order_master` (
  `order_id` varchar(32) NOT NULL,
  `buyer_name` varchar(32) NOT NULL COMMENT '买家名字',
  `buyer_phone` varchar(32) NOT NULL COMMENT '买家电话',
  `buyer_address` varchar(128) NOT NULL COMMENT '买家桌号',
  `buyer_openid` varchar(64) NOT NULL COMMENT '买家微信openid',
  `order_amount` decimal(8,2) NOT NULL COMMENT '订单总金额',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态, 默认为新下单',
  `pay_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '支付状态, 默认未支付',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`),
  KEY `idx_buyer_openid` (`buyer_openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of order_master
-- ----------------------------
INSERT INTO `order_master` VALUES ('1566791379846730204', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '21.00', '1', '0', '2019-08-26 11:49:39', '2019-08-26 11:49:39');
INSERT INTO `order_master` VALUES ('1566791661475589305', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '12.00', '1', '0', '2019-08-26 11:54:21', '2019-08-26 11:54:21');
INSERT INTO `order_master` VALUES ('1566797205643809822', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '2.00', '1', '0', '2019-08-26 13:26:45', '2019-08-26 13:26:45');
INSERT INTO `order_master` VALUES ('1566798379106951633', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '4.00', '4', '0', '2019-08-26 13:46:19', '2019-08-26 13:46:52');
INSERT INTO `order_master` VALUES ('1566800226887449601', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '3.00', '1', '0', '2019-08-26 14:17:06', '2019-08-26 14:17:06');
INSERT INTO `order_master` VALUES ('1566956036952478852', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '10.00', '3', '0', '2019-08-28 09:33:57', '2019-08-28 09:48:12');
INSERT INTO `order_master` VALUES ('1566957488220518093', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '2.00', '3', '0', '2019-08-28 09:58:08', '2019-08-28 09:58:17');
INSERT INTO `order_master` VALUES ('1568166732157322264', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '10.00', '1', '0', '2019-09-11 09:52:12', '2019-09-11 09:52:12');
INSERT INTO `order_master` VALUES ('1568166798561463950', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '11.00', '3', '0', '2019-09-11 09:53:18', '2019-09-11 09:55:48');
INSERT INTO `order_master` VALUES ('1568169581822746780', 'AgonI', '15805849785', '1号桌', 'osfup5dqBELNGU0nXSmn8lC_p9iw', '11.00', '1', '0', '2019-09-11 10:39:42', '2019-09-11 10:39:42');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_url` varchar(255) NOT NULL,
  `pic_message` varchar(64) NOT NULL,
  `pic_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(64) NOT NULL COMMENT '类目名字',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='类目表';

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('1', '肉类', '1', '2019-07-27 11:49:02', '2019-08-01 09:55:33');
INSERT INTO `product_category` VALUES ('2', '凉菜类', '2', '2019-08-01 09:55:46', '2019-08-01 09:55:46');
INSERT INTO `product_category` VALUES ('3', '海鲜类', '3', '2019-08-01 09:55:59', '2019-08-01 09:55:59');
INSERT INTO `product_category` VALUES ('4', '蔬菜类', '4', '2019-08-01 09:56:09', '2019-08-01 09:56:09');
INSERT INTO `product_category` VALUES ('5', '主食类', '5', '2019-08-01 09:56:19', '2019-08-01 09:56:19');

-- ----------------------------
-- Table structure for product_info
-- ----------------------------
DROP TABLE IF EXISTS `product_info`;
CREATE TABLE `product_info` (
  `product_id` varchar(32) NOT NULL,
  `product_name` varchar(64) NOT NULL COMMENT '商品名称',
  `product_price` decimal(8,2) NOT NULL COMMENT '单价',
  `product_stock` int(11) NOT NULL COMMENT '库存',
  `product_description` varchar(64) DEFAULT NULL COMMENT '描述',
  `product_icon` varchar(512) DEFAULT NULL COMMENT '小图',
  `product_status` tinyint(3) DEFAULT '0' COMMENT '商品状态,0正常1下架',
  `category_type` int(11) NOT NULL COMMENT '类目编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of product_info
-- ----------------------------
INSERT INTO `product_info` VALUES ('1564625068706427285', '猪沙肝', '2.00', '974', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636385833&di=74dc5eb54bb2e4376f8ce398cbe1cbfc&imgtype=0&src=http%3A%2F%2Fwww.weixunyunduan.com%2Fups%2F2015%2F03%2F232818%2F00d55c5361a61b938bd62baec1fc56e0.jpg', '0', '1', '2019-08-01 10:04:28', '2019-09-11 10:39:42');
INSERT INTO `product_info` VALUES ('1564625361863407515', '骨肉相连', '2.00', '982', '不错的', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3161829963,946136293&fm=26&gp=0.jpg', '0', '1', '2019-08-01 10:09:21', '2019-09-11 10:39:42');
INSERT INTO `product_info` VALUES ('1564625880425786594', '鸡头', '2.00', '23229', '不错滴', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2450140390,1797366030&fm=26&gp=0.jpg', '0', '1', '2019-08-01 10:18:00', '2019-09-11 09:52:12');
INSERT INTO `product_info` VALUES ('1564626020805844937', '鸡心', '2.00', '1224', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636052404&di=d7a0c6cb8c5824cfbcc7a26a7ac28015&imgtype=0&src=http%3A%2F%2Fpic49.nipic.com%2Ffile%2F20140827%2F5116609_085329909000_2.jpg', '1', '1', '2019-08-01 10:20:20', '2019-08-19 16:23:18');
INSERT INTO `product_info` VALUES ('1564626253213238221', '猪肉串', '2.00', '1000', '不错滴', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1779262486,646372689&fm=26&gp=0.jpg', '0', '1', '2019-08-01 10:24:13', '2019-08-01 10:24:13');
INSERT INTO `product_info` VALUES ('1564626281010251078', '羊肉串', '2.00', '10000', '不错的', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3199883507,609126097&fm=26&gp=0.jpg', '0', '1', '2019-08-01 10:24:41', '2019-08-01 10:24:41');
INSERT INTO `product_info` VALUES ('1564626541613112918', '猪脆骨', '3.00', '1000', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636609746&di=c6c938cea75dd0efa76bc7bcc4158355&imgtype=0&src=http%3A%2F%2Fimg.yzcdn.cn%2Fupload_files%2F2018%2F03%2F30%2FFmVldBiqoqaYuYsSalpXY7moh3HJ.jpg%3FimageView2%2F2%2Fw%2F580%2Fh%2F580%2Fq%2F75%2Fformat%2Fjpg', '0', '1', '2019-08-01 10:29:01', '2019-08-01 10:29:01');
INSERT INTO `product_info` VALUES ('1564626577908183471', '鸡脆骨', '3.00', '1000', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636650814&di=b20b5324cecd652a8831c3b9994c076d&imgtype=0&src=http%3A%2F%2Fpic.qinzhou360.com%2Fattachment%2Fqinzhoubbs%2Fforum%2F201504%2F26%2F144840vxbn7bbmqvnovnqe.jpg', '0', '1', '2019-08-01 10:29:37', '2019-08-01 10:29:37');
INSERT INTO `product_info` VALUES ('1564626764756125497', '乡巴佬', '3.00', '1525', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636826819&di=9dd3596cc27c8e8ca677f30ff103e7eb&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fdeal%2F8290fe078e444aa11a2e56323d3e9771248763.jpg', '0', '1', '2019-08-01 10:32:44', '2019-08-01 10:32:44');
INSERT INTO `product_info` VALUES ('1564626798414472555', '板筋', '3.00', '241', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636873260&di=25cd8386c50233bae8cee7f072e40f5a&imgtype=0&src=http%3A%2F%2Fg.hiphotos.baidu.com%2Flbc%2Fpic%2Fitem%2Fe824b899a9014c0858dcfa590b7b02087af4f463.jpg', '0', '1', '2019-08-01 10:33:18', '2019-08-26 14:17:06');
INSERT INTO `product_info` VALUES ('1564626837627652346', '心管', '3.00', '2323', '不错', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636912354&di=80dfdf785d987b2f2b810b47dd41892f&imgtype=0&src=http%3A%2F%2Fmmbiz.qpic.cn%2Fmmbiz_jpg%2FlCZG2FAhVEEuDQtTdyqI4icg6LveKfCxibXL8b6Yx9paicsMvqNEOqrRxopAVBSmDjSwATQ8OH5VaQTnSAXNneFdA%2F0%3Fwx_fmt%3Djpeg', '0', '1', '2019-08-01 10:33:57', '2019-08-01 10:33:57');
INSERT INTO `product_info` VALUES ('1564626871736711832', '鸡翅', '8.00', '123213', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636938731&di=32396f5eb5fb508eb69834458ce24e9b&imgtype=0&src=http%3A%2F%2Fmmbiz.qpic.cn%2Fmmbiz_jpg%2Ficv8bsPGAXZDkmxFdGP8Je2LHV1G6tFFJAPKxSYWZPRKomXwp6q67hujecn8vVT8DvzDyUmkaiafMfxZVoQkKC0w%2F640%3Fwx_fmt%3Djpeg', '0', '1', '2019-08-01 10:34:31', '2019-08-01 10:34:31');
INSERT INTO `product_info` VALUES ('1564626923886197852', '香鱼片', '11.00', '2323', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564636999196&di=9f4f15c6231072cb26842e3d9315c00f&imgtype=0&src=http%3A%2F%2Fpic77.nipic.com%2Ffile%2F20150905%2F19521820_141103925000_2.jpg', '0', '1', '2019-08-01 10:35:23', '2019-08-01 10:35:23');
INSERT INTO `product_info` VALUES ('1564626946786428995', '鸡架', '5.00', '21320', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564637022440&di=f018db53172633fc08c3360b87a2d0c5&imgtype=0&src=http%3A%2F%2Fi12.tinypic.com%2F4i2c01s.jpg', '0', '1', '2019-08-01 10:35:46', '2019-08-19 14:55:54');
INSERT INTO `product_info` VALUES ('1564627059159817824', '羊排', '23.00', '232130', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564637051865&di=8ff675874c534316e21dd37d26e2cc46&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fe%2F6%2F6%2Fyuan_e6b73dc7031047e875886a788fa91736.jpg', '0', '1', '2019-08-01 10:37:39', '2019-08-19 14:55:54');
INSERT INTO `product_info` VALUES ('1566202929092578157', '羊腰子', '15.00', '2424', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566213000369&di=3ead8663d9bbaf343ffac807d86b14e8&imgtype=0&src=http%3A%2F%2Fimg.mp.sohu.com%2Fupload%2F20170629%2F30c694786852446aba2f3f41e5075a64_th.png', '0', '1', '2019-08-19 16:22:09', '2019-08-19 16:22:09');
INSERT INTO `product_info` VALUES ('1566202991844343872', '鸡胗', '2.00', '4242', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566213025589&di=61be212437dd8fd64bee43d6bbb3b029&imgtype=0&src=http%3A%2F%2Fmmbiz.qpic.cn%2Fmmbiz_jpg%2Ffibn0iaIWZwUyHbwRJyq3lpKicLpYbtlddXlsZpzqE0jfF9ALiaialeuOQqkJVJpPfICv7MZYibRWN3xsPHOibs62ibNLg%2F640%3Fwx_fmt%3Djpeg', '0', '1', '2019-08-19 16:23:11', '2019-08-19 16:23:11');
INSERT INTO `product_info` VALUES ('1566203218916252509', '辣椒酱', '10.00', '463', '好喝哦', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566213290851&di=8c290815ecb2130ee675047c96e14d77&imgtype=0&src=http%3A%2F%2Fdpic.tiankong.com%2Fkx%2F1e%2FQJ6676102097.jpg%3Fx-oss-process%3Dstyle%2Fshow', '0', '2', '2019-08-19 16:26:58', '2019-08-26 11:35:57');
INSERT INTO `product_info` VALUES ('1566204027066729508', '蘸酱菜', '10.00', '223', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214091510&di=b4579f7efc8295ecd6b2c56dd255eb26&imgtype=0&src=http%3A%2F%2Fp0.meituan.net%2Fdeal%2F__42884489__8223312.jpg', '0', '2', '2019-08-19 16:40:27', '2019-08-19 16:40:27');
INSERT INTO `product_info` VALUES ('1566204074527965001', '拌豆腐皮', '10.00', '122', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214134808&di=04e83d5881b0ce927745a35b0ce8d78a&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20160111%2Fmp53769184_1452479586392_6.jpeg', '0', '2', '2019-08-19 16:41:14', '2019-08-19 16:41:14');
INSERT INTO `product_info` VALUES ('1566204229889942649', '拍黄瓜', '10.00', '355', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214299727&di=bff96487af75702babe217254703e79a&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn11%2F305%2Fw690h415%2F20180426%2F26a9-fztkpin4366257.jpg', '0', '2', '2019-08-19 16:43:49', '2019-08-19 16:43:49');
INSERT INTO `product_info` VALUES ('1566204308859292150', '拌三丁', '10.00', '388', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214376396&di=f19b8af65cf12662d99763dece4ab704&imgtype=0&src=http%3A%2F%2Fstatic.i3.xywy.com%2Fcms%2Fcaipu%2Fuplode16%2F1385622563866.jpg', '0', '2', '2019-08-19 16:45:08', '2019-08-19 16:45:08');
INSERT INTO `product_info` VALUES ('1566204470447618085', '拌萝卜', '10.00', '22', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214523784&di=1276854c13040c4a68d8e1092ee6c4f1&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fa%2F6%2F6%2F600x400_a628576a92e93cbb4a16efeb3bf50af6.jpg', '0', '2', '2019-08-19 16:47:50', '2019-08-19 16:47:50');
INSERT INTO `product_info` VALUES ('1566204512639513971', '花生毛豆', '10.00', '222', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214582420&di=a365eb1d472298971ee49a60c2039059&imgtype=0&src=http%3A%2F%2Fimages.meishij.net%2Fp%2F20120802%2F19a44facbbbf632d80b3930d35ff446d.jpg', '0', '2', '2019-08-19 16:48:32', '2019-08-19 16:48:32');
INSERT INTO `product_info` VALUES ('1566204554285642886', '芹菜花生海米', '15.00', '388', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566809346&di=4cccea57c103260f09861f3b5138fd6d&imgtype=jpg&er=1&src=http%3A%2F%2Fp9.pccoo.cn%2Fstore%2F20170105%2F2017010512545361907434_800_588.jpg', '0', '2', '2019-08-19 16:49:14', '2019-08-19 16:49:14');
INSERT INTO `product_info` VALUES ('1566204590068598610', '小银鱼', '28.00', '422', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566809370&di=cd032ae4127a3097cc05ecefca8d1981&imgtype=jpg&er=1&src=http%3A%2F%2Fimage.naic.org.cn%2Fuploadfile%2F2017%2F0928%2F1506564408955339.jpg', '0', '2', '2019-08-19 16:49:50', '2019-08-19 16:49:50');
INSERT INTO `product_info` VALUES ('1566204628857372894', '鱿鱼须', '2.00', '998', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214696188&di=5f0c6caa408c8dad871908330dbb08fe&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fdeal%2F8a01fe2de438e0b9919bb7c8ffc481fc255909.jpg', '0', '3', '2019-08-19 16:50:28', '2019-09-11 09:52:12');
INSERT INTO `product_info` VALUES ('1566204719352713458', '海螺丸', '2.00', '354', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566809511&di=674f1a7e51ebc655f927c3ab16e01e7c&imgtype=jpg&er=1&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2F6VdtZBMbHEbVlKFSMQeM9wtvKZg2ZQ5zqbI-dQp-hr_jnhhjdeoakUCXE8V2yzfAjoJrvItByyS4HHaWdXyO_DrXIaWutJls2xCVbatkhjUNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg', '0', '3', '2019-08-19 16:51:59', '2019-09-11 09:52:12');
INSERT INTO `product_info` VALUES ('1566204758573582631', '鱼豆腐', '2.00', '321', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214819960&di=06411b70ecbc367c2681de3317eca729&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2Fmb1PVNOfBzCiFBcfdkPhXxobvN21ipZS6jti8XSPGBE3uebbdWqQy5JPdEUcWhUbjoJrvItByyS4HHaWdXyO_DrXIaWutJls2xCVbatkhjUNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg', '0', '3', '2019-08-19 16:52:38', '2019-08-26 13:46:19');
INSERT INTO `product_info` VALUES ('1566204869843605826', '多春鱼', '2.00', '998', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214910982&di=de1255f8d60d48cbe266648bcdc2d27e&imgtype=0&src=http%3A%2F%2Fwww.qnong.com.cn%2Fuploadfile%2F2017%2F0429%2F20170429060716853.jpg', '0', '3', '2019-08-19 16:54:29', '2019-08-26 13:46:19');
INSERT INTO `product_info` VALUES ('1566204913546700205', '章鱼丸', '3.00', '999', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566214986886&di=687ad4ea6ab251911db98de8010324e8&imgtype=0&src=http%3A%2F%2Fimg10.360buyimg.com%2Fimgzone%2Fjfs%2Ft5662%2F262%2F2954866977%2F248971%2F8ddfcded%2F593686a0N94c9d922.jpg', '0', '3', '2019-08-19 16:55:13', '2019-08-19 16:55:13');
INSERT INTO `product_info` VALUES ('1566204940279224512', '墨鱼丸', '3.00', '999', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215014069&di=b3f6ab58cb7d2c9597c53ebef5493895&imgtype=0&src=http%3A%2F%2Fimg008.hc360.cn%2Fm8%2FM05%2F9E%2FB2%2FwKhQplb66FmEE0AgAAAAAF7DyWA075.jpg', '0', '3', '2019-08-19 16:55:40', '2019-08-19 16:55:40');
INSERT INTO `product_info` VALUES ('1566204989678913137', '假鲍鱼', '5.00', '988', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566809782&di=e4a610f372374a2cc67aa41b674def41&imgtype=jpg&er=1&src=http%3A%2F%2Fpics6.baidu.com%2Ffeed%2Fdcc451da81cb39dbb553732eaca33321aa183074.jpeg%3Ftoken%3Dc41a6fc7561ec7687a244dd410ddf653%26amp%3Bs%3DD58CFCBB56E6B6E0002A9BBC03001009', '0', '3', '2019-08-19 16:56:29', '2019-08-19 16:56:29');
INSERT INTO `product_info` VALUES ('1566205118714124658', '海螺头', '5.00', '788', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215188016&di=0ed27ba09a056964b843f42ec5c65eb2&imgtype=0&src=http%3A%2F%2Fwww.cnr.cn%2Fcate%2Fsytj%2F201110%2FW020111018525767375740.jpg', '0', '3', '2019-08-19 16:58:38', '2019-08-19 16:58:38');
INSERT INTO `product_info` VALUES ('1566205269962532952', '海肠', '5.00', '255', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215332281&di=f470baaa8eaac0d2f9532aefbdf98ad5&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20180621%2Febffcf58a4fe49b49da309db3e40dd2c.jpeg', '0', '3', '2019-08-19 17:01:09', '2019-08-19 17:01:09');
INSERT INTO `product_info` VALUES ('1566205309876447518', '鸟贝', '5.00', '322', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215381720&di=2f923283555b7a7895527890d9356e0e&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20161021%2Fe8fd70f614af44dd9171443996a463ef_th.jpeg', '0', '3', '2019-08-19 17:01:49', '2019-08-19 17:01:49');
INSERT INTO `product_info` VALUES ('1566205405583508226', '刀鱼', '5.00', '987', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215473615&di=4a789b71a1833ffcc48db68dcc5c528e&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fdeal%2Faaf14dbff75f8e4c60eac5cc93dc6783326530.jpg', '0', '3', '2019-08-19 17:03:25', '2019-08-19 17:03:25');
INSERT INTO `product_info` VALUES ('1566205439375859943', '烤虾', '7.00', '566', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215511679&di=4de269234ff74737b97a2e87bc70118c&imgtype=0&src=http%3A%2F%2Fimg004.file.rongbiz.cn%2Fuploadfile%2F201606%2F06%2F10%2F10-56-55-47-885504.jpg', '0', '3', '2019-08-19 17:03:59', '2019-08-19 17:03:59');
INSERT INTO `product_info` VALUES ('1566205776787535281', '鳞鲫鱼', '10.00', '988', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215790245&di=707843fd8e4282257451558714e2ec3e&imgtype=0&src=http%3A%2F%2Fm.topcrab.com%2FUploadImage%2Fedit%2Fimages%2F%25E8%2591%25B1%25E7%2583%25A4%25E9%25B2%25AB%25E9%25B1%25BC.jpg', '0', '3', '2019-08-19 17:09:36', '2019-08-19 17:09:36');
INSERT INTO `product_info` VALUES ('1566205871972648940', '蒜蓉蛎头', '30.00', '988', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215946511&di=8ccf3303cc244a1fa126beafd27028a0&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2F36Moz6Um1zm3IvJz907s48vB4hMgL4Y6f2Ef_jzWqmhg6j9t0CW1LrTJzdCeGhEmTYGVDmosZWTLal1WbWRW3A.jpg', '0', '3', '2019-08-19 17:11:11', '2019-08-19 17:11:11');
INSERT INTO `product_info` VALUES ('1566205916641280484', '蒜蓉扇贝', '40.00', '292', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566215992755&di=7c3c8068cfecb7c7f3bd49fd335bf68a&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn14%2F276%2Fw640h436%2F20180801%2F2a01-hhacrce9290836.jpg', '0', '3', '2019-08-19 17:11:56', '2019-08-19 17:11:56');
INSERT INTO `product_info` VALUES ('1566206151274686293', '鱿鱼', '15.00', '983', '不错滴', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216216503&di=ae9d57f92aee204e345b6ac88c981cbf&imgtype=0&src=http%3A%2F%2Fpic115.huitu.com%2Fres%2F20190318%2F1655884_20190318122206896070_1.jpg', '0', '3', '2019-08-19 17:15:51', '2019-08-19 17:15:51');
INSERT INTO `product_info` VALUES ('1566206198643851728', '锡纸蚬子', '19.00', '299', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216268468&di=7b8cffa999852ac26eafb4e98f9c7af7&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2Fy-e3_D6ok91CERc2OJelP7py-05TPeGomYaSIqC3yuI-qWei53Gil9abJGGAXOm_joJrvItByyS4HHaWdXyO_DrXIaWutJls2xCVbatkhjUNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg', '0', '3', '2019-08-19 17:16:38', '2019-08-19 17:16:38');
INSERT INTO `product_info` VALUES ('1566206313214343665', '培根金针菇', '3.00', '231', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216385518&di=8d139c91a5218dfac2755b681a58e526&imgtype=0&src=http%3A%2F%2Fcp1.douguo.net%2Fupload%2Fcaiku%2Fa%2F8%2F6%2Fyuan_a862f14b46e9229e161b2fca82ce7446.jpg', '0', '4', '2019-08-19 17:18:33', '2019-09-11 10:39:42');
INSERT INTO `product_info` VALUES ('1566206634277473504', '豆皮金针菇', '2.00', '424', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216708066&di=d0c5d1c24d25d5cbb195a544988bd14b&imgtype=0&src=http%3A%2F%2Fi2.chuimg.com%2F2e5cf111b1e211e58100fda0b60cd9a3.jpg%3FimageView2%2F2%2Fw%2F600%2Finterlace%2F1%2Fq%2F90', '0', '4', '2019-08-19 17:23:54', '2019-08-19 17:23:54');
INSERT INTO `product_info` VALUES ('1566206676804823282', '豆皮香菜卷', '2.00', '677', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216747084&di=d407b0dceaa26694ea69e7f144f7aad7&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20170425%2F0e67687e8f4a45d09eb4660f367022c1_th.jpg', '0', '4', '2019-08-19 17:24:36', '2019-08-19 17:24:36');
INSERT INTO `product_info` VALUES ('1566206749171198750', '烤尖椒', '2.00', '987', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216817203&di=6c5e189ea41520d343118f4a95015d5a&imgtype=0&src=http%3A%2F%2Fqcloud.dpfile.com%2Fpc%2Fr69JXtuLCmcbJUUAxmdGTWrZ2N50AuEjOhANgBQBmxSROBY0eCgHe76uXOER_2DPTYGVDmosZWTLal1WbWRW3A.jpg', '0', '4', '2019-08-19 17:25:49', '2019-08-26 11:49:39');
INSERT INTO `product_info` VALUES ('1566206773686929456', '烤韭菜', '2.00', '233', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216848436&di=ffffb30056255ba1ba874e1eefaa0588&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fgpa%2Ff06bcbc11461b092dbdfea8aee22ceac174511.jpg%2540820w_0e_1l%257Cwatermark%3D0', '0', '4', '2019-08-19 17:26:13', '2019-08-19 17:26:13');
INSERT INTO `product_info` VALUES ('1566206803038825819', '金针菇', '2.00', '554', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216877847&di=5b81ef7cbbaab8d7480fda058853fad3&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20140526%2FImg400046361.jpg', '0', '4', '2019-08-19 17:26:43', '2019-08-26 13:26:45');
INSERT INTO `product_info` VALUES ('1566206826863166235', '烤茄子', '2.00', '222', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216899224&di=68f452cb6737386a435e0ddcd3b1ce7d&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20151127%2Fmp44507261_1448588358263_14.jpeg', '0', '4', '2019-08-19 17:27:06', '2019-08-19 17:27:06');
INSERT INTO `product_info` VALUES ('1566206851898302381', '烤玉米', '5.00', '4646', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566216926800&di=d9debe1fab9415912a6a04b8b3bc6f9a&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20151218%2Fmp49253412_1450411778226_7.jpeg', '0', '4', '2019-08-19 17:27:31', '2019-08-19 17:27:31');
INSERT INTO `product_info` VALUES ('1566206890236317079', '烤小饼', '1.00', '9998', '不错的', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3922317435,2009916626&fm=26&gp=0.jpg', '0', '5', '2019-08-19 17:28:10', '2019-09-11 09:53:18');
INSERT INTO `product_info` VALUES ('1566206939448905182', '烤馒头', '2.00', '2329', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566811733&di=2d1d08c5fc9ef3dd39838ab99daff1e5&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fblog%2F201405%2F09%2F20140509130450_cnxKs.thumb.700_0.jpeg', '0', '5', '2019-08-19 17:28:59', '2019-08-26 11:36:47');
INSERT INTO `product_info` VALUES ('1566206963766962708', '烤面包片', '2.00', '9998', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566217039124&di=4e22316ed6e766762a84afb4e0376db9&imgtype=0&src=http%3A%2F%2Fp1.meituan.net%2Fdealwatera%2F89a50c74248f6dc84732f386fb9e32cf87845.jpg%40468h_702w_2e_90Q%257Cwatermark%3D1%26%26p%3D4', '0', '5', '2019-08-19 17:29:23', '2019-08-26 11:36:47');
INSERT INTO `product_info` VALUES ('1566206998203697356', '炒方便面', '18.00', '9999', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566217073325&di=0829225ef80f38b1e6caadc25414ac71&imgtype=0&src=http%3A%2F%2Fs2.cdn.xiachufang.com%2F0873e7023ff146229f043ca8a908b40f_640w_463h.jpg%3FimageView2%2F2%2Fw%2F660%2Finterlace%2F1%2Fq%2F90', '0', '5', '2019-08-19 17:29:58', '2019-08-19 17:29:58');
INSERT INTO `product_info` VALUES ('1566207018274554793', '炒米饭', '15.00', '888', '不错的', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566217094350&di=a8080c73f48dfb49c7aab23f282a3403&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201810%2F25%2F20181025211916_cqqwo.thumb.700_0.jpg', '0', '5', '2019-08-19 17:30:18', '2019-08-19 17:30:18');

-- ----------------------------
-- Table structure for seller_info
-- ----------------------------
DROP TABLE IF EXISTS `seller_info`;
CREATE TABLE `seller_info` (
  `seller_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `phone` varchar(64) NOT NULL COMMENT '用户手机号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='卖家信息表';

-- ----------------------------
-- Records of seller_info
-- ----------------------------
INSERT INTO `seller_info` VALUES ('1', 'admin', '123', '111', '2019-07-27 11:32:17', '2019-07-28 15:38:17');
INSERT INTO `seller_info` VALUES ('2', 'admin1', '123', '123', '2019-08-26 13:38:31', '2019-08-26 13:38:31');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `openid` varchar(64) NOT NULL COMMENT '微信openid',
  `zhuohao` varchar(64) DEFAULT NULL COMMENT '桌号',
  `renshu` varchar(64) DEFAULT NULL COMMENT '就餐人数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user
-- ----------------------------
