/*
Navicat MySQL Data Transfer

Source Server         : localhost_3323
Source Server Version : 50162
Source Host           : localhost:3323
Source Database       : db_zbwz

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2019-06-12 17:28:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(55) DEFAULT NULL,
  `userPw` varchar(77) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `id` varchar(50) NOT NULL,
  `name` varchar(77) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('1495900651209', '软件开发', 'no');
INSERT INTO `t_catelog` VALUES ('1540482706227', '平面设计', 'no');
INSERT INTO `t_catelog` VALUES ('1556208139280', '商务服务', 'no');
INSERT INTO `t_catelog` VALUES ('1559556239528', '问卷', 'no');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `shijian` varchar(66) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1556208234444', '在网上做任务就能赚钱是真的吗？ ', '<p>在网上做任务就能赚钱是真的吗？当然是真的，现实中，只要你完成相应的任务，比如：维修家电、代写公文，只要你做得好，就能获得一定的报酬。<br />\r\n<br />\r\n网络上做任务和现实中有一些相通性，但是通过网络则显得更简单些，也许你只要一部智能手机就可以。目前比较火的手机威客APP，就是可以通过在上面做任务赚取酬金，发任务赚取活动差价的，在这里，我介绍两款非常靠谱的任务软件：</p>', '2019-04-26 00:02');
INSERT INTO `t_gonggao` VALUES ('1556208259829', '威客赚钱用数据说话 接单做任务选择一品威客网', '本网讯 通过网络赚钱有许多方式，做威客就是其中的一种。威客凭借专业技能，参与任务服务雇主，中标后就可以获得赏金。可以说，人们所拥有的无穷的创意智慧是有价值的。许多威客就通过努力，在威客平台一品威客网上赚到了钱。一起看看他们是怎么做到的。', '2019-04-26 00:03');

-- ----------------------------
-- Table structure for `t_renwu`
-- ----------------------------
DROP TABLE IF EXISTS `t_renwu`;
CREATE TABLE `t_renwu` (
  `id` varchar(50) NOT NULL,
  `catelog_id` varchar(77) DEFAULT NULL,
  `mingcheng` varchar(77) DEFAULT NULL,
  `jieshao` varchar(5000) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `qian` int(11) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `zt` varchar(255) DEFAULT NULL,
  `jie_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_renwu
-- ----------------------------
INSERT INTO `t_renwu` VALUES ('1556209603184', '1495900651209', '房地产中介管理软件开发', '<p>需要开发一款房地产中介管理软件，网页版，以及app端，需要广东的服务商面谈，具体详谈</p>', '', '2', '2019-05-04 00:26', '1', '待接单', '0');
INSERT INTO `t_renwu` VALUES ('1556209826837', '1495900651209', '医疗门诊收费结账和交班功能程序开发', '<p>系统为CS系统，即单机版系统；所用数据库为SQLServer2008，按照原来的数据库数据，新做一个系统登陆页面；新开发一个医疗门诊收费页面，实现挂单、欠账、结账等功能；新开发一个收费员交班功能，支持打印交班单，用POS机打印<br />\r\n&nbsp;</p>', '/upload/1556209813050.doc', '2', '2019-05-04 00:30', '1', '已收货', '2');
INSERT INTO `t_renwu` VALUES ('1559569944471', '1559556239528', '测试啊', '测试', '/upload/1559569943138.doc', '2', '2019-06-03 21:52', '1', '已收货', '2');
INSERT INTO `t_renwu` VALUES ('1559573370249', '1495900651209', '333', '33', '', '1', '2019-06-03 22:49', '1', '待接单', '0');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(55) NOT NULL,
  `loginpw` varchar(55) DEFAULT NULL,
  `xingming` varchar(77) DEFAULT NULL,
  `xingbie` varchar(55) DEFAULT NULL,
  `nianling` int(11) DEFAULT NULL,
  `zhuzhi` varchar(50) DEFAULT NULL,
  `dianhua` varchar(50) DEFAULT NULL,
  `jin` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '刘三', '男', '22', '北京路', '13512346666', '9', 'no');
INSERT INTO `t_user` VALUES ('2', 'liqiang', '000000', '李强', '男', '20', '青岛路', '13852639999', '14', 'no');

-- ----------------------------
-- Table structure for `t_xinwen`
-- ----------------------------
DROP TABLE IF EXISTS `t_xinwen`;
CREATE TABLE `t_xinwen` (
  `id` varchar(50) NOT NULL,
  `biaoti` varchar(50) DEFAULT NULL,
  `jieshao` varchar(4000) DEFAULT NULL,
  `fujian` varchar(255) DEFAULT NULL,
  `fabushi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_xinwen
-- ----------------------------
INSERT INTO `t_xinwen` VALUES ('1556208302736', '设计师有哪些渠道自己接单赚钱', '<p>设计师可以通过线上和线下接单。线下可以自己开店，开一家做设计的店面，去接一些个人、个体户及小企业的单。个人、个体户及小企业为了节约成本，会找到设计师接单，能比设计公司成本低很多。如果手里有资源或者过去工作有比较信任自己的客户，可以承接一些设计项目。当然如果自己人际关系广，通过熟人介绍客户也是可以的。</p>', '/upload/1556208301573.jpg', '2019-04-26 00:05');
INSERT INTO `t_xinwen` VALUES ('1556208428883', '随时随地发布任意任务让别人为你解决忧愁，随时随地接取任务赚钱', '<p>初页：解决了哪些痛点？主要用户是谁？市场情况及发展趋势如何？我们的主要用户的来源可以分布到全民。<br />\r\n<br />\r\n第一阶段：从学生阶段起步，让学生告别黑中介（信用模式及任务的发布需支付薪资后给予显示）、告别传统的洗盘子（类型及方向多元化你可以做的很多）告别虚假信息（可见信息都是已支付薪资的任务，APP自带双过滤信息系统）<br />\r\n第二阶段：从上班族及年轻一族发展，让人们平时找朋友帮忙却又欠下人情债的习惯彻底远去。（任何事情任何难题都可以发布让全城帮你想办法）让年轻人有更多时间去&ldquo;偷闲&rdquo;（应用到生活，把身边的事情发布为任务尽情享受一朝闲暇）增加收入（在上班之余、下班之后刷新任务让零钱逐渐充实）<br />\r\n第三阶段：兼职市场的用户有很多，但是我们想要的不仅是兼职，让身边触手可及的事情全部被互联网应用。</p>', '/upload/1556208427523.png', '2019-04-26 00:07');
INSERT INTO `t_xinwen` VALUES ('1556208489386', '五月最美奋斗季 接单赚钱来一品威客网', '<p>五月是劳动的节日。&ldquo;幸福都是奋斗出来的&rdquo;。走进新时代，引领新时代，都是&ldquo;奋斗者&rdquo;&ldquo;撸起袖子加油干&rdquo;的火热景象。每当黄金5月，也是无数创业者创造财富、实现自身价值的好时机。在一品威客网上，聚集了很多优秀的服务商。他们拥有专业的技能，通过为客户提供优质的创意服务，实现了个人价值，创造了社会。</p>', '/upload/1556208487897.jpg', '2019-04-26 00:08');
INSERT INTO `t_xinwen` VALUES ('1556208531421', '从学习到接单赚钱 十大网络技术人员推荐的网站', '<p>网络技术，无论是php还是java ，无论是pc时代，还是移动时代，无论是黑客技术，还是程序新人，it技术，无疑是当前最火的行业，无论是个人爱好还是工程技术开发，都吸引了无数的人才。各种与网络技术，教程学习，工程开发相关的网站，论坛也如同雨后春笋般出现在网民的面前。<br />\r\n<br />\r\n做为一名从事网络技术工作十年的&ldquo;老人&rdquo;，已经依赖这些网站和论坛多年，在这里，结合自己多年的体会，特向广大网友推荐以下十个技术人员经常上的网站，各网站的排名根据目前各大通信门户、论坛、blog网友的推荐和投票产生。同时，在这里向这些论坛的管理人员，版主表示崇高的敬意和诚挚的谢意!</p>', '/upload/1556208529968.jpg', '2019-04-26 00:08');
