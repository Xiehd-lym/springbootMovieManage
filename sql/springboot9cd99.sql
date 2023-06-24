/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : springboot9cd99

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-06-05 10:01:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2023-05-15 09:25:48', '1', '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES ('2', '2023-05-15 09:25:48', '2', '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES ('3', '2023-05-15 09:25:48', '3', '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES ('4', '2023-05-15 09:25:48', '4', '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES ('5', '2023-05-15 09:25:48', '5', '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES ('6', '2023-05-15 09:25:48', '6', '宇宙银河系月球1号', '月某', '13823888886', '是');

-- ----------------------------
-- Table structure for `chat`
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1684668433460 DEFAULT CHARSET=utf8 COMMENT='在线客服';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('61', '2023-05-15 09:25:48', '1', '1', '提问1', '回复1', '1');
INSERT INTO `chat` VALUES ('62', '2023-05-15 09:25:48', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('63', '2023-05-15 09:25:48', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('64', '2023-05-15 09:25:48', '4', '4', '提问4', '回复4', '4');
INSERT INTO `chat` VALUES ('65', '2023-05-15 09:25:48', '5', '5', '提问5', '回复5', '5');
INSERT INTO `chat` VALUES ('66', '2023-05-15 09:25:48', '6', '6', '提问6', '回复6', '6');
INSERT INTO `chat` VALUES ('1616117740430', '2023-05-15 09:35:40', '1616117630285', null, 'DGFGYHYGJU', null, '0');
INSERT INTO `chat` VALUES ('1616117780952', '2023-05-15 09:36:19', '1616117630285', '1', null, '1', '0');
INSERT INTO `chat` VALUES ('1684668419023', '2023-05-21 19:26:58', '1616117630285', null, '1', null, '0');
INSERT INTO `chat` VALUES ('1684668433459', '2023-05-21 19:27:13', '1616117630285', null, '1', null, '1');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springboot9cd99/upload/1616117365916.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springboot9cd99/upload/1616117372953.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springboot9cd99/upload/1616117579296.jpeg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for `dianyingleixing`
-- ----------------------------
DROP TABLE IF EXISTS `dianyingleixing`;
CREATE TABLE `dianyingleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianyingleixing` (`dianyingleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117508077 DEFAULT CHARSET=utf8 COMMENT='电影类型';

-- ----------------------------
-- Records of dianyingleixing
-- ----------------------------
INSERT INTO `dianyingleixing` VALUES ('21', '2023-05-15 09:25:48', '悬疑片');
INSERT INTO `dianyingleixing` VALUES ('22', '2023-05-15 09:25:48', '冒险片');
INSERT INTO `dianyingleixing` VALUES ('23', '2023-05-15 09:25:48', '武侠片');
INSERT INTO `dianyingleixing` VALUES ('24', '2023-05-15 09:25:48', '爱情片');
INSERT INTO `dianyingleixing` VALUES ('25', '2023-05-15 09:25:48', '科幻片');
INSERT INTO `dianyingleixing` VALUES ('26', '2023-05-15 09:25:48', '奇幻片');
INSERT INTO `dianyingleixing` VALUES ('1616117502239', '2023-05-15 09:31:42', '喜剧片');
INSERT INTO `dianyingleixing` VALUES ('1616117508076', '2023-05-15 09:31:47', '动作片');

-- ----------------------------
-- Table structure for `dianyingxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `dianyingxinxi`;
CREATE TABLE `dianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) NOT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) NOT NULL COMMENT '电影类型',
  `haibao` varchar(200) DEFAULT NULL COMMENT '海报',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `zhuyan` varchar(200) DEFAULT NULL COMMENT '主演',
  `shangyingriqi` datetime DEFAULT NULL COMMENT '上映日期',
  `pianzhang` varchar(200) DEFAULT NULL COMMENT '片长',
  `dianyingyugao` varchar(200) DEFAULT NULL COMMENT '电影预告',
  `dianyingjianjie` longtext COMMENT '电影简介',
  `fangyingting` varchar(200) DEFAULT NULL COMMENT '放映厅',
  `changci` datetime DEFAULT NULL COMMENT '场次',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `number` int(11) NOT NULL COMMENT '座位总数',
  `selected` longtext COMMENT '已选座位[用,号隔开]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1685279339491 DEFAULT CHARSET=utf8 COMMENT='电影信息';

-- ----------------------------
-- Records of dianyingxinxi
-- ----------------------------
INSERT INTO `dianyingxinxi` VALUES ('41', '2023-05-15 09:25:48', '电影名称1', '电影类型1', 'http://localhost:8080/springboot9cd99/upload/1616117309016.jpg', '导演1', '主演1', '2023-05-15 09:25:48', '片长1', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>电影简介1</p>', '放映厅1', '2023-05-15 09:25:48', '2023-06-05 09:42:48', '5', '99.9', '20', '1,3,5,7,9');
INSERT INTO `dianyingxinxi` VALUES ('42', '2023-05-15 09:25:48', '电影名称2', '电影类型2', 'http://localhost:8080/springboot9cd99/upload/1616117317381.jpg', '导演2', '主演2', '2023-05-15 09:25:48', '片长2', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>电影简介2</p>', '放映厅2', '2023-05-15 09:25:48', '2023-06-05 08:53:58', '5', '99.9', '20', '1,3,5,7,9');
INSERT INTO `dianyingxinxi` VALUES ('43', '2023-05-15 09:25:48', '电影名称3', '电影类型3', 'http://localhost:8080/springboot9cd99/upload/1616117325715.jpg', '导演3', '主演3', '2023-05-15 09:25:48', '片长3', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>电影简介3</p>', '放映厅3', '2023-05-15 09:25:48', '2023-06-05 08:54:26', '5', '99.9', '20', '1,3,5,7,9');
INSERT INTO `dianyingxinxi` VALUES ('44', '2023-05-15 09:25:48', '电影名称4', '电影类型4', 'http://localhost:8080/springboot9cd99/upload/1616117451671.jpg', '导演4', '主演4', '2023-05-15 09:25:48', '片长4', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>电影简介4</p>', '放映厅4', '2023-05-15 09:25:48', '2023-06-05 08:54:08', '11', '99.9', '20', '1,3,5,7,9');
INSERT INTO `dianyingxinxi` VALUES ('45', '2023-05-15 09:25:48', '电影名称5', '电影类型5', 'http://localhost:8080/springboot9cd99/upload/1616117437343.jpg', '导演5', '主演5', '2023-05-15 09:25:48', '片长5', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>电影简介5</p>', '放映厅5', '2023-05-15 09:25:48', '2023-05-15 09:30:23', '7', '99.9', '20', '1,3,5,7,9');
INSERT INTO `dianyingxinxi` VALUES ('46', '2023-05-15 09:25:48', '电影名称6', '电影类型6', 'http://localhost:8080/springboot9cd99/upload/1616117352694.jpg', '导演6', '主演6', '2023-05-15 09:25:48', '片长6', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>电影简介6</p>', '放映厅6', '2023-05-15 09:25:48', '2023-05-15 09:29:07', '7', '99.9', '20', '1,3,5,7,9');
INSERT INTO `dianyingxinxi` VALUES ('1616117565511', '2023-05-15 09:32:45', '你好，李焕英', '喜剧片', 'http://localhost:8080/springboot9cd99/upload/1616117524789.jpg', '贾玲', '贾玲张小斐', '2021-02-12 08:00:00', '128分钟', 'http://localhost:8080/springboot9cd99/upload/1616117545452.mp4', '<p>2001年的某一天，刚刚考上大学的贾晓玲经历了人生中的一次大起大落。一心想要成为母亲骄傲的她却因母亲突遭严重意外，而悲痛万分。在贾晓玲情绪崩溃的状态下，竟意外的回到了1981年，并与年轻的母亲李焕英相遇，二人形影不离，宛如闺蜜。与此同时，也结识了一群天真善良的好朋友。晓玲以为来到了这片“广阔天地”，她可以凭借自己超前的思维，让母亲“大有作为”，但结果却让晓玲感到意外......。</p>', '1号厅', '2023-05-16 10:00:00', '2023-06-05 08:53:26', '26', '45', '40', '1,2,3,4,14,15,26,27');
INSERT INTO `dianyingxinxi` VALUES ('1685279339490', '2023-05-28 21:08:58', '惊奇队长', '奇幻片', 'http://localhost:8080/springboot9cd99/upload/1685278887674.jpg', '安娜●波顿', '布丽●拉尔森', '2023-05-28 21:03:32', '120min', null, '<p>在围剿斯克鲁人的战斗中，克里人星际战队成员弗斯不幸成为对方的俘虏。斯克鲁人尝试探究弗斯的记忆，最终发现连弗斯本人都不知道的一段往事，进而也得知名为温迪●劳森博士的女子掌握着他们急于得到的时空引擎。趁对方不备，拥有强大超能力的弗斯摆脱束缚，逃到了代号为C-53的地球，而这里也正是她那段失落的记忆的发生地。未过多久，神盾局探员弗瑞特工找上门来，而紧随其后的斯克鲁人更是引发了地球人前所未见的大骚动。</p>', '放映厅2', '2023-05-29 00:00:00', '2023-05-28 21:10:27', '1', '49', '60', '24,36,11,12');

-- ----------------------------
-- Table structure for `discussdianyingxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussdianyingxinxi`;
CREATE TABLE `discussdianyingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117906955 DEFAULT CHARSET=utf8 COMMENT='电影信息评论表';

-- ----------------------------
-- Records of discussdianyingxinxi
-- ----------------------------
INSERT INTO `discussdianyingxinxi` VALUES ('111', '2023-05-15 09:25:48', '1', '1', '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussdianyingxinxi` VALUES ('112', '2023-05-15 09:25:48', '2', '2', '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussdianyingxinxi` VALUES ('113', '2023-05-15 09:25:48', '3', '3', '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussdianyingxinxi` VALUES ('114', '2023-05-15 09:25:48', '4', '4', '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussdianyingxinxi` VALUES ('115', '2023-05-15 09:25:48', '5', '5', '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussdianyingxinxi` VALUES ('116', '2023-05-15 09:25:48', '6', '6', '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussdianyingxinxi` VALUES ('1616117906954', '2023-05-15 09:38:26', '1616117565511', '1616117630285', '1', '看了贾玲的电影，让我想起了小时候经常跟妈妈去工厂车间的场景，感谢这部电影，让我想起萦绕在脑海中的那句话，一定要让妈妈高兴', null);

-- ----------------------------
-- Table structure for `fangyingting`
-- ----------------------------
DROP TABLE IF EXISTS `fangyingting`;
CREATE TABLE `fangyingting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangyingting` varchar(200) NOT NULL COMMENT '放映厅',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangyingting` (`fangyingting`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117513093 DEFAULT CHARSET=utf8 COMMENT='放映厅';

-- ----------------------------
-- Records of fangyingting
-- ----------------------------
INSERT INTO `fangyingting` VALUES ('31', '2023-05-15 09:25:48', '放映厅1');
INSERT INTO `fangyingting` VALUES ('32', '2023-05-15 09:25:48', '放映厅2');
INSERT INTO `fangyingting` VALUES ('33', '2023-05-15 09:25:48', '放映厅3');
INSERT INTO `fangyingting` VALUES ('34', '2023-05-15 09:25:48', '放映厅4');
INSERT INTO `fangyingting` VALUES ('35', '2023-05-15 09:25:48', '放映厅5');
INSERT INTO `fangyingting` VALUES ('36', '2023-05-15 09:25:48', '放映厅6');
INSERT INTO `fangyingting` VALUES ('1616117513092', '2023-05-15 09:31:53', '放映厅7');

-- ----------------------------
-- Table structure for `goupiaotongji`
-- ----------------------------
DROP TABLE IF EXISTS `goupiaotongji`;
CREATE TABLE `goupiaotongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingmingcheng` varchar(200) DEFAULT NULL COMMENT '电影名称',
  `dianyingleixing` varchar(200) DEFAULT NULL COMMENT '电影类型',
  `daoyan` varchar(200) DEFAULT NULL COMMENT '导演',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `goupiaoshuliang` int(11) DEFAULT NULL COMMENT '购票数量',
  `goupiaojine` int(11) DEFAULT NULL COMMENT '购票金额',
  `goupiaoriqi` date DEFAULT NULL COMMENT '购票日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117955464 DEFAULT CHARSET=utf8 COMMENT='购票统计';

-- ----------------------------
-- Records of goupiaotongji
-- ----------------------------
INSERT INTO `goupiaotongji` VALUES ('51', '2023-05-15 09:25:48', '电影名称1', '电影类型1', '导演1', '用户名1', '联系电话1', '1', '1', '2023-05-15', '备注1');
INSERT INTO `goupiaotongji` VALUES ('52', '2023-05-15 09:25:48', '电影名称2', '电影类型2', '导演2', '用户名2', '联系电话2', '2', '2', '2023-05-15', '备注2');
INSERT INTO `goupiaotongji` VALUES ('53', '2023-05-15 09:25:48', '电影名称3', '电影类型3', '导演3', '用户名3', '联系电话3', '3', '3', '2023-05-15', '备注3');
INSERT INTO `goupiaotongji` VALUES ('54', '2023-05-15 09:25:48', '电影名称4', '电影类型4', '导演4', '用户名4', '联系电话4', '4', '4', '2023-05-15', '备注4');
INSERT INTO `goupiaotongji` VALUES ('55', '2023-05-15 09:25:48', '电影名称5', '电影类型5', '导演5', '用户名5', '联系电话5', '5', '5', '2023-05-15', '备注5');
INSERT INTO `goupiaotongji` VALUES ('56', '2023-05-15 09:25:48', '电影名称6', '电影类型6', '导演6', '用户名6', '联系电话6', '6', '6', '2023-05-15', '备注6');
INSERT INTO `goupiaotongji` VALUES ('1616117955463', '2023-05-15 09:39:14', '你好，李焕英', '喜剧片', '贾玲', '1', '12312312312', '2', '90', '2023-05-15', null);

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117609815 DEFAULT CHARSET=utf8 COMMENT='电影资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('101', '2023-05-15 09:25:48', '标题1', '简介1', 'http://localhost:8080/springboot9cd99/upload/1616117394576.jpg', '<p>内容1</p>');
INSERT INTO `news` VALUES ('102', '2023-05-15 09:25:48', '标题2', '简介2', 'http://localhost:8080/springboot9cd99/upload/news_picture2.jpg', '内容2');
INSERT INTO `news` VALUES ('103', '2023-05-15 09:25:48', '标题3', '简介3', 'http://localhost:8080/springboot9cd99/upload/news_picture3.jpg', '内容3');
INSERT INTO `news` VALUES ('104', '2023-05-15 09:25:48', '标题4', '简介4', 'http://localhost:8080/springboot9cd99/upload/1616117387136.jpg', '<p>内容4</p>');
INSERT INTO `news` VALUES ('105', '2023-05-15 09:25:48', '标题5', '简介5', 'http://localhost:8080/springboot9cd99/upload/news_picture5.jpg', '内容5');
INSERT INTO `news` VALUES ('106', '2023-05-15 09:25:48', '标题6', '简介6', 'http://localhost:8080/springboot9cd99/upload/news_picture6.jpg', '内容6');
INSERT INTO `news` VALUES ('1616117609814', '2023-05-15 09:33:28', '新电影上映', '新电影', 'http://localhost:8080/springboot9cd99/upload/1616117598961.jpg', '<p>资讯内容</p><p><img src=\"http://localhost:8080/springboot9cd99/upload/1616117607028.jpg\"></p>');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'dianyingxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117730451 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1616117730450', '2023-05-15 09:35:29', '2021319935294897693', 'dianyingxinxi', '1616117630285', '1616117565511', '你好，李焕英', 'http://localhost:8080/springboot9cd99/upload/1616117524789.jpg', '2', '45', '45', '90', '90', '1', '已完成', '26,27');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117709521 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1616117709520', '2023-05-15 09:35:08', '1616117630285', '1616117565511', 'dianyingxinxi', '你好，李焕英', 'http://localhost:8080/springboot9cd99/upload/1616117524789.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'wem948np2o20s9gzfvlpmkskrav655hf', '2023-05-15 09:27:30', '2023-06-05 10:11:04');
INSERT INTO `token` VALUES ('2', '1616117630285', '1', 'yonghu', '用户', '3ioqut4jbj7ublen8u0o0xavomtaka8d', '2023-05-15 09:33:55', '2023-06-05 10:35:39');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2023-05-15 09:25:48');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616117630286 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('11', '2023-05-15 09:25:48', '2', '2', '2', 'http://localhost:8080/springboot9cd99/upload/yonghu_touxiang1.jpg', '男', '13823888881', '100');
INSERT INTO `yonghu` VALUES ('12', '2023-05-15 09:25:48', '3', '3', '3', 'http://localhost:8080/springboot9cd99/upload/yonghu_touxiang2.jpg', '男', '13823888882', '100');
INSERT INTO `yonghu` VALUES ('13', '2023-05-15 09:25:48', '4', '4', '4', 'http://localhost:8080/springboot9cd99/upload/yonghu_touxiang3.jpg', '男', '13823888883', '100');
INSERT INTO `yonghu` VALUES ('14', '2023-05-15 09:25:48', '用户4', '123456', '姓名4', 'http://localhost:8080/springboot9cd99/upload/yonghu_touxiang4.jpg', '男', '13823888884', '100');
INSERT INTO `yonghu` VALUES ('15', '2023-05-15 09:25:48', '用户5', '123456', '姓名5', 'http://localhost:8080/springboot9cd99/upload/yonghu_touxiang5.jpg', '男', '13823888885', '100');
INSERT INTO `yonghu` VALUES ('16', '2023-05-15 09:25:48', '用户6', '123456', '姓名6', 'http://localhost:8080/springboot9cd99/upload/yonghu_touxiang6.jpg', '男', '13823888886', '100');
INSERT INTO `yonghu` VALUES ('1616117630285', '2023-05-15 09:33:50', '1', '1', '梦雪', 'http://localhost:8080/springboot9cd99/upload/1616117642360.jpg', '女', '12312312312', '220');
