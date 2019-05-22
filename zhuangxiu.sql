/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : zhuangxiu

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-05-22 17:14:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `anli`
-- ----------------------------
DROP TABLE IF EXISTS `anli`;
CREATE TABLE `anli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `yulanimg` varchar(255) DEFAULT NULL,
  `zansimg` varchar(255) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `nandu` int(10) DEFAULT NULL,
  `tese` int(10) DEFAULT NULL,
  `tuijian` int(10) DEFAULT NULL,
  `reshu` varchar(50) DEFAULT NULL,
  `tianshu` varchar(50) DEFAULT NULL,
  `cheshu` varchar(50) DEFAULT NULL,
  `bushu` varchar(50) DEFAULT NULL,
  `didian` varchar(50) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of anli
-- ----------------------------
INSERT INTO `anli` VALUES ('1', '这是名称', '/static/upload/24a1160e2b8be7b8/a7b94e0844ec6231.png', '/static/upload/5e165d68aee4d82c/c4bdd49e4d7dc1fe.png', '这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介', '66', '666', '66', '66', '66', '66', '66', '66', '66', '<p>这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介这是简介</p>', '2018-12-21 12:07:09');
INSERT INTO `anli` VALUES ('2', '戴德梁行团建方案', '/static/upload/c78f7f2cb8c81499/d4c279bf61dcda2a.jpg', '/static/upload/28a4a283c43a0eed/765665a72930ece1.jpg', '围绕时间为主题定制专属方案', '360', '4', '5', '5', '40', '1', '1.5', '时间去哪儿主题团建方案', '深圳', '<p>一行40人一天的方案</p>', '2018-12-25 15:19:02');
INSERT INTO `anli` VALUES ('3', '灿锐科技新员工拓展培训', '/static/upload/ec5cbc6944cd34c2/fa09afbc400f3e19.jpg', '/static/upload/77d1ada462101d3e/a366febcc6ae09aa.jpg', '新员工拓展', '', '4', '3', '4', '80', '1', '2', '拓展培训一天行程', '七星湾游艇会', '<p>拓展+野炊+烧烤+趣味运动会+羽毛球PK</p>', '2018-12-25 15:21:39');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `url` char(255) DEFAULT '#',
  `sort` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('9', '看案例找灵感', '/static/upload/11abcf3941dfb6de/d2a1d0e502ce9f1a.jpg', '/index/residential/index.html', '0', '1', '2018-12-24 15:45:21');
INSERT INTO `banner` VALUES ('10', '关于我们标题', '', 'http://www.baidu.com', '0', '2', '2018-12-28 11:28:21');
INSERT INTO `banner` VALUES ('11', '标题2', '', 'http://www.baidu.com', '0', '2', '2018-12-28 11:28:35');
INSERT INTO `banner` VALUES ('12', '百度', '', 'http://www.baidu.com', '0', '3', '2018-12-28 11:28:48');

-- ----------------------------
-- Table structure for `cai_cate`
-- ----------------------------
DROP TABLE IF EXISTS `cai_cate`;
CREATE TABLE `cai_cate` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cai_cate
-- ----------------------------
INSERT INTO `cai_cate` VALUES ('0000000001', '瓷砖');
INSERT INTO `cai_cate` VALUES ('0000000002', '地板');
INSERT INTO `cai_cate` VALUES ('0000000003', '油漆');
INSERT INTO `cai_cate` VALUES ('0000000004', '其他');

-- ----------------------------
-- Table structure for `cai_list`
-- ----------------------------
DROP TABLE IF EXISTS `cai_list`;
CREATE TABLE `cai_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cai_list
-- ----------------------------
INSERT INTO `cai_list` VALUES ('0000000001', '4', '打造旺文风水 这些风水不利于孩子学业', '/static/upload/5ba74e32c9c81605/cd05834445d3fac0.jpg', '<p>科学合理地装修儿童居室，进行旺文风水布局。对培养儿童身心健康成长，提高学习成绩，养成独立生活能力，具有十分重要的意义。今天小编就为大家介绍一下哪些风水不利于孩子学习以及如何打造旺文风水，快来认识一下。</p>\r\n\r\n<p><img alt=\"打造旺文风水这些风水不利于孩子学业\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273041961347.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;不利于孩子学业的家居风水</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 一、子女宫不吉</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 子女宫就是指八卦九宫中代表子女信息的宫位，那么在八卦中哪些宫位是代表子女的信息呢？一个是震卦，这个是代表长子的，家中要是只有一个男孩子的话，震宫的方位就是代表男孩子的信息。这个方位在家中的正东方位。如果这个方位缺角或者是入户门开在此处，还有摆放空调、电视等这些都是于男孩子不利的。同时还有注意这个方位不能堆放垃圾，不但是学习方面还有身体方面也不利。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 如果家中是一个女孩子的话，那代表她信息的八卦是东南方位，与男孩子同样这个方位不能缺角或者是此处有入户门、也不能摆放空调、电视等这些于孩子不利的电器。同时还有注意这个方位不能堆放垃圾，不但是学习方面还有身体方面也不利。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 二、书桌对着窗户</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 孩子的书桌是不能对着窗户的，主要是有二个原因于学习不利。一是孩子在学习时面对着窗外面，窗外是有人行人，车辆等这些孩子能看到，会分散孩子的注意力，影响学习。二是面对着窗处，如果外面有煞气物的话正好冲射孩子，比如路冲或电线杆、水塔、墙角等，这些都是于孩子的学习和身体不利的。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 三、书桌被门冲</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 室内摆放书桌一定要记住，书桌千万不能被门冲。孩子天天学习的位置被冲，那从气场上来讲，肯定会导致精力不集中，心思易分散。还有如果正好对着门，客厅内的人走来走去的，也会导致孩子的注意力不集中，这样就会对学习有很大影响。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 四、文昌位忌冲</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 文昌位对于儿童读书较为重要，摆放文昌塔可以加强学习的意识，有助于提高学习成绩，文昌塔正常是放到书桌上，也就是说书桌应放在文昌位上，如果书桌上没有地方可放文昌塔，那就单独把文昌塔放到文昌位上，文昌位也是不可放到窗前，同时也忌对着门而放，因文昌塔也怕门冲，被门冲射当然于孩子的学习不利了。因文昌位每个有二个，这个位置不行可以用另一个。</p>\r\n\r\n<p><img alt=\"打造旺文风水这些风水不利于孩子学业\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273041975052.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;如何打造利于孩子学习的家居风水？</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1、如果住宅门在正东方位上，那么文昌位置是在东北方位上，东北方位属土，而文昌位是属水，在五行相生相克的原理中记载，土克水，文昌星是会受到相克的，因此孩子在这个方位学习需要花很多的时间和精力，不利发展学业。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2、如果住宅门在正西方位上，那么文昌位置是在东南方位上，东南方位属木，而文昌位是属水，宫位相生，因此孩子在这个方位上学习能够有很好的表现，上进心重，愿意努力。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3、如果住宅门在正南方位上，那么文昌位置是在西南方位上，西南方位属土，而文昌位是属水，相生相克，这个方位也是代表妈妈的位置，很有可能有妈妈的包庇爱护，导致孩子学习懒惰，需要加倍勤快起来才能够得到好成绩。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4、如果住宅门在正北方位上，那么文昌位置是在西 北方位上，正北方位属金，而文昌位是属水，这样的风水布局能够培养出很乖巧的孩子，读书也会很轻松就能够取得不错的成绩呢！</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5、如果住宅门在东南方位上，那么文昌位置是在正西方位上，正西方位属金，而文昌位是属水，这样的风水布局有利于孩子学习，在求学路上能够遇到贵人相助。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 6、如果住宅门在东北方位上，那么文昌位置是在正东方位上，正东方位属木，而文昌位是属水，宫位相生，这样的风水布局会导致孩子无法专心学习，很难得到好的成绩。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 7、如果住宅门在西南方位上，那么文昌位置是在正南方位上，正南方位属火，而文昌位是属水，两者会发生相冲，让孩子变得骄傲自满，控制很难受长辈控制。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 8、如果住宅门在西北方位上，那么文昌位置是在正北方位上，正北方位属水，而文昌位是属水，在五行中很有利于孩子学习，责任心重，勤快。</p>', '2019-05-18 14:06:32', null);
INSERT INTO `cai_list` VALUES ('0000000002', '2', '打造旺文风水 这些风水不利于孩子学业', '/static/upload/5ba74e32c9c81605/cd05834445d3fac0.jpg', '<p>科学合理地装修儿童居室，进行旺文风水布局。对培养儿童身心健康成长，提高学习成绩，养成独立生活能力，具有十分重要的意义。今天小编就为大家介绍一下哪些风水不利于孩子学习以及如何打造旺文风水，快来认识一下。</p>\r\n\r\n<p><img alt=\"打造旺文风水这些风水不利于孩子学业\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273041961347.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;不利于孩子学业的家居风水</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 一、子女宫不吉</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 子女宫就是指八卦九宫中代表子女信息的宫位，那么在八卦中哪些宫位是代表子女的信息呢？一个是震卦，这个是代表长子的，家中要是只有一个男孩子的话，震宫的方位就是代表男孩子的信息。这个方位在家中的正东方位。如果这个方位缺角或者是入户门开在此处，还有摆放空调、电视等这些都是于男孩子不利的。同时还有注意这个方位不能堆放垃圾，不但是学习方面还有身体方面也不利。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 如果家中是一个女孩子的话，那代表她信息的八卦是东南方位，与男孩子同样这个方位不能缺角或者是此处有入户门、也不能摆放空调、电视等这些于孩子不利的电器。同时还有注意这个方位不能堆放垃圾，不但是学习方面还有身体方面也不利。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 二、书桌对着窗户</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 孩子的书桌是不能对着窗户的，主要是有二个原因于学习不利。一是孩子在学习时面对着窗外面，窗外是有人行人，车辆等这些孩子能看到，会分散孩子的注意力，影响学习。二是面对着窗处，如果外面有煞气物的话正好冲射孩子，比如路冲或电线杆、水塔、墙角等，这些都是于孩子的学习和身体不利的。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 三、书桌被门冲</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 室内摆放书桌一定要记住，书桌千万不能被门冲。孩子天天学习的位置被冲，那从气场上来讲，肯定会导致精力不集中，心思易分散。还有如果正好对着门，客厅内的人走来走去的，也会导致孩子的注意力不集中，这样就会对学习有很大影响。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 四、文昌位忌冲</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 文昌位对于儿童读书较为重要，摆放文昌塔可以加强学习的意识，有助于提高学习成绩，文昌塔正常是放到书桌上，也就是说书桌应放在文昌位上，如果书桌上没有地方可放文昌塔，那就单独把文昌塔放到文昌位上，文昌位也是不可放到窗前，同时也忌对着门而放，因文昌塔也怕门冲，被门冲射当然于孩子的学习不利了。因文昌位每个有二个，这个位置不行可以用另一个。</p>\r\n\r\n<p><img alt=\"打造旺文风水这些风水不利于孩子学业\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273041975052.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;如何打造利于孩子学习的家居风水？</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1、如果住宅门在正东方位上，那么文昌位置是在东北方位上，东北方位属土，而文昌位是属水，在五行相生相克的原理中记载，土克水，文昌星是会受到相克的，因此孩子在这个方位学习需要花很多的时间和精力，不利发展学业。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2、如果住宅门在正西方位上，那么文昌位置是在东南方位上，东南方位属木，而文昌位是属水，宫位相生，因此孩子在这个方位上学习能够有很好的表现，上进心重，愿意努力。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3、如果住宅门在正南方位上，那么文昌位置是在西南方位上，西南方位属土，而文昌位是属水，相生相克，这个方位也是代表妈妈的位置，很有可能有妈妈的包庇爱护，导致孩子学习懒惰，需要加倍勤快起来才能够得到好成绩。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4、如果住宅门在正北方位上，那么文昌位置是在西 北方位上，正北方位属金，而文昌位是属水，这样的风水布局能够培养出很乖巧的孩子，读书也会很轻松就能够取得不错的成绩呢！</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5、如果住宅门在东南方位上，那么文昌位置是在正西方位上，正西方位属金，而文昌位是属水，这样的风水布局有利于孩子学习，在求学路上能够遇到贵人相助。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 6、如果住宅门在东北方位上，那么文昌位置是在正东方位上，正东方位属木，而文昌位是属水，宫位相生，这样的风水布局会导致孩子无法专心学习，很难得到好的成绩。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 7、如果住宅门在西南方位上，那么文昌位置是在正南方位上，正南方位属火，而文昌位是属水，两者会发生相冲，让孩子变得骄傲自满，控制很难受长辈控制。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 8、如果住宅门在西北方位上，那么文昌位置是在正北方位上，正北方位属水，而文昌位是属水，在五行中很有利于孩子学习，责任心重，勤快。</p>', '2019-05-21 17:31:45', '');
INSERT INTO `cai_list` VALUES ('0000000003', '1', '哪些家居风水容易导致婆媳关系不和？', '/static/upload/01583ee0115b3a64/7918ac9ff724bf16.jpg', '<p>如何处理好婆媳关系，是很多家庭都会面临的问题。那么从风水的角度来说，哪些家居布置会影响到婆媳关系呢？又有哪些方法可以改善呢？下面就跟着小编一起来了解一下吧。</p>\r\n\r\n<p><img alt=\"哪些家居风水容易导致婆媳关系不和？\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273041062373.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>影响婆媳关系的家居风水</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>1、阳台的位置</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 不可正对厨房 阳台也不可正对厨房厨电，这也是一种穿心，会使得家中的团聚功能减弱，丈夫易外遇、老婆会红杏出墙，婆媳之间容易出现口角，小孩不受回家。作花架种满爬藤植物或放置盆栽，使其内外隔绝。阳台落地门的窗帘尽量拉上或是在阳台和厨房之间的动线上，以不影响居住者行动为原则，作柜子或屏风为遮掩，总之就是不要让阳台正对厨房。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;2、大门的位置</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 不要正对阳台 影响婆媳关系的家居风水中，出入大门的位置不要正对阳台，这形成了所谓的穿心，家中会不易聚财，迭有破财事，家庭也易破碎。作玄关柜阻隔大门和阳台之间、在大门入口处放置鱼缸（命中忌水者不可放鱼缸，可以屏风取代）。可作阳台窗将阳台阻隔或种植盆栽及爬藤植物，窗帘长时间拉上也是可行的方法。若是阳台正对大门或厨房，可将窗帘长时间拉上以作为阻绝。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;3、命中忌水者</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 不可摆放鱼缸 影响婆媳关系的家居风水中，命中忌水者，家中不可放鱼缸，并非如外界所认知，只要放鱼缸即可聚财。居住者五行喜忌须清楚，有特别忌讳者， 家中都应避免。查看万年历中的居住者五行喜忌，家中有禁忌者应避免放置该属性物品。五行喜忌火忌水、水忌土、上忌 木、木忌金、金忌火。婆婆媳妇之间容易犯冲，导致家庭不美满。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;4、长沙发与床不可放梁下</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 影响婆媳关系的家居生活中，长沙发与床不可放在梁的下方，久之，长时间使用长沙发和床的人，年长者身体易多病痛，家里媳妇不照顾。长沙发和床避免放在梁下方或以装潢手法把梁包起来，使其不显露于外即可。若是长沙发摆放在横梁下，可以天花板的装饰阻断其冲煞的力量。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;5、阳台遮雨棚</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 不可呈箭形 阳台遮雨棚的垂檐，不可呈箭形，对常进出阳台者身体不利。不作垂檐，如一定要作垂檐，尽量作弧形而不要作成尖的形状，遮雨棚的垂檐要作成弧形、避免箭形。这种形状容易使婆媳关系形成严重的对立，不利于家庭和睦相处。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;6、厨房风水关系</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 厨房是到目前为止还基本上属于女性的天下，是婆媳两人每天都会使用的空间，因此布局出好的厨房风水对调和婆媳关系，使婆媳和睦相处是有奇效的。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 厨房格局：从风水学的角度讲，居室的要求都需要正，无论是客厅、卧室还是厨房，首先格局要正，不可有凸出或缺角。最好是规则形状（如长方形、正方形）。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 厨房的位置：餐厅应位于客厅和厨房之间，位居住宅的中心位置。这样的布局可增进亲子间关系的合谐。餐厅切忌位于上一层楼的厕所的正下方，因为餐厅的好运会受到压制。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 厨房风水的阴阳调和：将餐厅布置成阴阳平衡，但略偏阳的空间。为了增加阳气，祖先画像或骨董家俱等属阴的物品最好不要摆在餐厅。阴气太重有害家运。另一方面，阳气过盛又会造成家庭失和。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 厨房中的凶位：凶位是聚集煞气的位置，因此必须要将厨房中的凶位破解，可采用生机旺盛的植物放置在凶位之上，这样植物旺盛的生机就会调和兄弟的凶煞之气，使之不会轻易逸散。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 厨房装潢：家庭的能量来自于食物，食物又来自于厨房，因此厨房与家庭的运势关系极大，而厨房本身有&ldquo;火宅&rdquo;之称，因此厨房的装潢不必选用其他色彩，只需要原始的黑白二色即可，白色最佳。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;7、房间的布置</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 婆婆的房间在房子的前端（靠近前方马路），媳妇房间在后面，这样婆婆会想要掌控媳妇想法，把婆婆房间换到后面，这样婆婆就会放手、比较不管年轻人。风水上门门相对，这样会出现斗口煞，比较容易吵架，化解的方式很简单，在辈分顺序比较大的房间门口放上五帝钱就可以了。或者是放上门帘，不过放门帘是做部分调整，而放上五帝钱，效果更强、会让伦常回复正常。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 房门不同轴，会让媳妇和婆婆想法不同、容易不同心，只要门轴换到同一边就能化解。如果真的无法移门轴，就在两门之间放上五帝钱。五帝钱要怎么放呢？想要恢复伦常，坐在客厅往大门看，五帝钱从左到右的顺序，顺治、康熙、雍正、乾隆、嘉庆，以这样的顺序摆放。换句话说，左手边是顺治、右手为嘉庆。</p>\r\n\r\n<p><img alt=\"哪些家居风水容易导致婆媳关系不和？\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273041065798.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>改善婆媳关系的6大风水</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;1.沙发风水布局宜背后有靠</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 一家人在看电视、聊天，主要在沙发上。沙发别放在横梁下，靠墙最好，不宜背后虚空、不宜靠窗、鱼缸或镜子。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;2.婆婆、儿媳妇居住在不同楼层</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 如果是复式楼，最好分开楼层居住。但若下层的卧室正对上层的厕所，就要迁移房间或改变床位，否则容易有矛盾。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;3.圆角家具风水布局</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 圆型家具能促家庭和睦，避免矛盾和口角。像圆形，椭圆形的餐桌比方形的好。注意家具的角不宜尖，可把角修圆一点。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;4.绿色植物来帮忙 家里多摆放绿色植物</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 绿色植物有静心、调养身心情绪之功效，如水养康乃馨、富贵竹、百合花等，有利调节身心情绪，促进婆媳关系的和谐。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>5.颜色要浅淡、柔和</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 家具及墙纸宜采用如米黄、白色等淡雅颜色避免用刺眼的大红、橙色、深黄等颜色，易令人烦躁；但若颜色过冷，如蓝色、灰色、黑色等，也容易使人精神抑郁。另外，灯光也不宜用彩色或耀眼的水晶灯。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;6.饭桌风水布局要远离卫生间</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 吃饭时是促进家人感情的好时机，但若饭桌在横梁下，或对着卫生间，或对着大镜子，会感觉压抑，可能造成不和甚至争吵，婆媳关系自然也难以和谐。要改善婆媳关系，饭桌要远离卫生间。</p>', '2019-05-21 17:31:32', 'fgfdfggbf');
INSERT INTO `cai_list` VALUES ('0000000004', '3', '放晴生活！业之峰，以东南亚风情拥抱大自然！', '/static/upload/4a6e48d74ef7b361/7755830b1ddcf113.jpg', '<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section><img data-ratio=\"0.55625\" data-w=\"640\" src=\"http://picfw3.yzf.com.cn/2018/4/28/1995535043270.jpg\" /></section>\r\n</section>\r\n</section>\r\n\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section>\r\n<section>\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section>\r\n<p><strong>生活在大自然的怀抱里...</strong></p>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section>\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section>\r\n<p>&nbsp;</p>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section>\r\n<p>Living in the embrace of nature...</p>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section>&nbsp;</section>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section>\r\n<p>法国伟大的启蒙思想家卢梭在他的《生活在大自然的怀抱里》这样写道：&ldquo;大自然在我眼前展开一幅永远清新的华丽的图景。金色的燃料木、紫红的欧石楠非常繁茂，给我深刻的印象，使我欣悦；我头上树木的宏伟、我四周灌木的纤丽、我脚下花草的惊人的纷繁使我目不暇接，不知道应该观赏还是赞叹，这么多美好的东西争相吸引我的注意力，使我眼花缭乱，使我在每件东西面前留连&hellip;&hellip;&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>是啊，不论我们如何成长，在大自然的面前总是孩子，让心灵不时的在大自然的怀抱里撒个欢儿 ，或许是每个人在平淡生活中的小愿望。就像陶渊明的《归园田居》中写到的那样：&ldquo;久在樊笼里，复得返自然。&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section><img data-ratio=\"0.75\" data-w=\"640\" src=\"http://picfw3.yzf.com.cn/2018/4/28/1995535049038.jpg\" /></section>\r\n</section>\r\n</section>\r\n\r\n<section powered-by=\"xiumi.us\">\r\n<section>\r\n<section>\r\n<p><strong>（沈阳&middot;龙湖花千树&middot;175平米东南亚风格）</strong></p>\r\n</section>\r\n</section>\r\n</section>', '2019-05-21 17:32:31', '放晴生活！业之峰，以东南亚风情拥抱大自然！');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `lid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '101', '3', '户外', '2018-12-26 12:09:57');
INSERT INTO `category` VALUES ('2', '201', '4', '新员工拓展', '2018-12-29 10:13:13');
INSERT INTO `category` VALUES ('3', '102', '3', '室内', '2018-12-26 12:09:57');
INSERT INTO `category` VALUES ('4', '401', '6', '深圳', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('5', '301', '5', '户外', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('6', '403', '6', '惠州', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('7', '402', '6', '广州', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('8', '302', '5', '室内', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('12', '404', '6', '东莞', '2018-12-26 12:11:04');
INSERT INTO `category` VALUES ('13', '405', '6', '清远', '2018-12-26 12:12:28');
INSERT INTO `category` VALUES ('14', '202', '4', '管理团队拓展', '2018-12-29 10:13:36');
INSERT INTO `category` VALUES ('15', '203', '4', '销售团队拓展', '2018-12-29 10:13:52');
INSERT INTO `category` VALUES ('16', '204', '4', '团队魔训', '2018-12-29 10:15:08');
INSERT INTO `category` VALUES ('17', '205', '4', '海岛生存', '2018-12-29 10:15:25');

-- ----------------------------
-- Table structure for `chi_url`
-- ----------------------------
DROP TABLE IF EXISTS `chi_url`;
CREATE TABLE `chi_url` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chi_url
-- ----------------------------
INSERT INTO `chi_url` VALUES ('0000000001', '青岛装修公司', 'https://www.baidu.com', '2019-05-18 15:30:33');
INSERT INTO `chi_url` VALUES ('0000000002', '郑州装修公司', 'https://www.baidu.com', '2019-05-18 15:30:58');
INSERT INTO `chi_url` VALUES ('0000000003', '宁波装修公司', 'https://www.baidu.com', '2019-05-18 15:31:32');

-- ----------------------------
-- Table structure for `condition`
-- ----------------------------
DROP TABLE IF EXISTS `condition`;
CREATE TABLE `condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(2) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `conid` int(11) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of condition
-- ----------------------------
INSERT INTO `condition` VALUES ('1', '0', '拓展目的', '0', '2018-12-18 18:37:30');
INSERT INTO `condition` VALUES ('3', '0', '拓展场地', '0', '2018-12-19 17:12:18');
INSERT INTO `condition` VALUES ('4', '0', '拓展人数', '0', '2018-12-19 17:13:04');
INSERT INTO `condition` VALUES ('5', '0', '拓展天数', '0', '2018-12-19 17:14:55');
INSERT INTO `condition` VALUES ('6', '0', '团队凝聚力', '1', '2018-12-19 17:19:44');

-- ----------------------------
-- Table structure for `designer`
-- ----------------------------
DROP TABLE IF EXISTS `designer`;
CREATE TABLE `designer` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL COMMENT '设计师头像',
  `names` varchar(200) NOT NULL COMMENT '设计师姓名',
  `job_time` varchar(200) NOT NULL COMMENT '从业时间',
  `school` varchar(255) NOT NULL COMMENT '毕业院校',
  `xuanyan` varchar(255) NOT NULL COMMENT '诚信宣言',
  `linian` varchar(255) NOT NULL COMMENT '设计理念',
  `zuoping` varchar(255) NOT NULL COMMENT '设计师作品',
  `rongyu` varchar(255) NOT NULL COMMENT '所获荣誉',
  `r_img` varchar(255) NOT NULL COMMENT '荣誉图像',
  `h_id` varchar(200) NOT NULL COMMENT '对应户型id',
  `s_id` varchar(200) NOT NULL COMMENT '对应风格id',
  `j_id` varchar(200) NOT NULL COMMENT '对应级别id',
  `job_year` varchar(200) NOT NULL COMMENT '从业年头',
  `huo` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '人气设计师 0=》普通 1=》人气',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of designer
-- ----------------------------
INSERT INTO `designer` VALUES ('0000000001', '/static/upload/aabf2082cfae89a2/3ae8e3ee87c500cf.png', '吴文', '2007年工作至今', '江西科技师范学院', '在业之峰装修，保证“零增项、零延迟、零污染、零回扣、零假货”，五大承诺，不爽就赔！', '运用专业的设计眼光来对待家居的空间策划，设计风格背后是满足功能的需求，提升生活品质为最终目的！', '狮山原著、狮山御园、苏州御园、龙湖时代天街、荷澜庭、香港时光、九龙仓、繁华里、七里香都、国宾一号、海尚壹品、绿地华尔道、碧提半岛、正荣国领、保利居上、新湖明珠城、现代园墅、依云水岸别墅、阿卡迪亚别墅...', '2011年    荣获新浪家居设计之星； 2012年    荣获集团设计大赛金奖； 2013年    荣获苏州“先锋木业杯”三等奖； 2014年    荣获苏州首届室内设计大赛“优秀设计作品奖”； 2015年    “美涂士漆”杯业之峰全国室内设计精英奖', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '2,5,9', '3,4', '7', '13', '1');
INSERT INTO `designer` VALUES ('0000000002', '/static/upload/34e0df44fd75ad0e/00efeea6433e595b.png', '张超', '2010年工作至今', '湖北武汉工业大学', '在业之峰装修，保证“零增项、零延迟、零污染、零回扣、零假货”，五大承诺，不爽就赔！', '给您最舒适的家！', '玫瑰园、尊园、海尚壹品、蝴蝶湾、保利国际、雅戈尔太阳城、绿地华尔道、路劲主场、中海国际社区、置地悦湖、海德公园、世茂运河城...', '2010年    湖北省室内装饰协会最佳创意奖； 2014年    苏州芒果杯最佳新人奖', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '2,3,4,5', '1,2', '2', '10', '1');
INSERT INTO `designer` VALUES ('0000000003', '/static/upload/34e0df44fd75ad0e/00efeea6433e595b.png', '李静波', '2007年工作至今', '湖北武汉工业大学', '点点点都是大是大非', '第三方的', '大幅度丰富的仿的房东', '的地方放的地方的方法大幅度发东方大道辅导费', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '2,3,4,5,6', '1,2,3', '1', '10', '1');
INSERT INTO `designer` VALUES ('0000000005', '/static/upload/aabf2082cfae89a2/3ae8e3ee87c500cf.png', '东方时尚', '2010年工作至今', '湖北武汉工业大学', '点点点都是大是大非', '给您最舒适的家！', '', '', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '1,2,3,4,5,6', '4,5', '7', '10', '0');
INSERT INTO `designer` VALUES ('0000000006', '/static/upload/aabf2082cfae89a2/3ae8e3ee87c500cf.png', '你是谁', '2010年工作至今', '湖北武汉工业大学', '点点点都是大是大非', '给您最舒适的家！', '', '辅导费大V', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '1,2,3', '2,3', '6', '10', '0');
INSERT INTO `designer` VALUES ('0000000007', '/static/upload/aabf2082cfae89a2/3ae8e3ee87c500cf.png', '吴秀波', '2010年工作至今', '湖北武汉工业大学', '点点点都是大是大非', '运用专业的设计眼光来对待家居的空间策划，设计风格背后是满足功能的需求，提升生活品质为最终目的！', '', '', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '1,2,3,4', '4,5', '7', '10', '0');
INSERT INTO `designer` VALUES ('0000000008', '/static/upload/aabf2082cfae89a2/3ae8e3ee87c500cf.png', '张无忌', '2010年工作至今', '江西科技师范学院', '点点点都是大是大非', '给您最舒适的家！', '', '', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '1,2,3,4,5,6,7,8,9', '3,4,5', '7', '10', '0');
INSERT INTO `designer` VALUES ('0000000009', '/static/upload/aabf2082cfae89a2/3ae8e3ee87c500cf.png', '李四光', '2010年工作至今', '湖北武汉工业大学', '点点点都是大是大非', '给您最舒适的家！', '', '', '/static/upload/7ea7b87542dff6e6/aa11bace84e9193c.jpg', '1,5,9', '3,4,5', '7', '10', '0');

-- ----------------------------
-- Table structure for `dingzhi`
-- ----------------------------
DROP TABLE IF EXISTS `dingzhi`;
CREATE TABLE `dingzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfd` varchar(255) DEFAULT NULL,
  `mdd` varchar(255) DEFAULT NULL,
  `csrs` varchar(255) DEFAULT NULL,
  `etrs` varchar(255) DEFAULT NULL,
  `hdts` varchar(255) DEFAULT NULL,
  `hdys` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingzhi
-- ----------------------------
INSERT INTO `dingzhi` VALUES ('1', '出发地', '目的地', '10', '1', '20', '500', '特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求特殊要求', '10086', '女士', '10010', '4845', '0', '2018-12-27 11:43:31');

-- ----------------------------
-- Table structure for `feng_cate`
-- ----------------------------
DROP TABLE IF EXISTS `feng_cate`;
CREATE TABLE `feng_cate` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feng_cate
-- ----------------------------
INSERT INTO `feng_cate` VALUES ('0000000001', '户型');
INSERT INTO `feng_cate` VALUES ('0000000002', '空间');
INSERT INTO `feng_cate` VALUES ('0000000003', '其他');
INSERT INTO `feng_cate` VALUES ('0000000004', '风格');

-- ----------------------------
-- Table structure for `feng_list`
-- ----------------------------
DROP TABLE IF EXISTS `feng_list`;
CREATE TABLE `feng_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feng_list
-- ----------------------------
INSERT INTO `feng_list` VALUES ('0000000001', '3', '如何处理卧房的灯光及色彩?', '/static/upload/01583ee0115b3a64/7918ac9ff724bf16.jpg', '<p>&nbsp;卧房是我们在忙碌一天后舒展疲惫身体并得以放松的空间，在我们生活中占非常重要的地位。在设计卧房时应周到地考虑灯光、色彩等因素。卧房是一个需要安静的地方，所以在灯光方面，要尽可能选用辅助光源来取光，避免强烈的光线直接照射；在色彩方面，大部分人能够接受淡雅、柔和的颜色，某些年轻人可能会喜欢刺激性的颜色，如果这样的话，应尽量降低照明的亮度，并尽量用背景光，避免给人以视觉上的冲击，为睡眠提供一个良好的环境。</p>\r\n\r\n<p><img alt=\"1916962479446.jpg\" src=\"http://picfw.yzf.com.cn/zt/2018/1/30/1919531568371.jpg\" title=\"1916962479446.jpg\" /></p>', '2019-05-18 14:12:16', null);
INSERT INTO `feng_list` VALUES ('0000000002', '1', '看到了就别错过!教你打造顺风顺水的好风水!', '/static/upload/c803468241b1fcea/4dc9ad97329a54aa.jpg', '<p>顺风顺水，指的不仅仅是事业发展顺利，同时也应该包括家人身体健康、财运亨通、爱情甜蜜等。那么怎样才能打造出顺风又顺水的家居好风水呢？别急，下面就跟着小编我来一探究竟吧。</p>\r\n\r\n<p><img alt=\"看到了就别错过!教你打造顺风顺水的好风水!\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273037484548.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;门</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;1.门口地毯的作用是入房或入门时揩净鞋底的脏物，故只能放在门外，不可放在门内。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2.入门两边不可放置高大的盘栽植物，这种布置令人有压迫感。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3.正对大门的地方不可以安置装饰屏风，妨碍地气进入（风水布置除外）。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4.大门在左，通入内室的门忌开向右方。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5.入门先见厨或厕，不吉，主败。</p>\r\n\r\n<p><img alt=\"看到了就别错过!教你打造顺风顺水的好风水!\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273037492485.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;宅内</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1.住宅内部，地面一定要平坦，不可有凹凸的地方，门外也是。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2.天花板忌用方形直线条的图形，最好用圆图案。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3.天花板的颜色须比四周墙壁的颜色浅，以防有压迫感。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4.宅内如果铺地毯，不应因房门格调不同而铺设不用颜色的地毯。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5.墙纸或地板如果有局部损毁，要挖去一块，另补一块，一定要切成正方形，不宜只顺着损坏之部分裁成不等边形状补上。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 6.宅内三角形的装饰物过多，主不祥。</p>\r\n\r\n<p><img alt=\"看到了就别错过!教你打造顺风顺水的好风水!\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273037499476.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;客厅</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1.客厅要求视觉良好，不能有碍眼（阻碍视线）的家私摆设。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2.客厅如果是用吊灯，就不适宜另加其他形状的灯饰。天花板上，略加一些浮雕形状的装修则无大碍。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3.客厅不能采用反光物品，否则等于将煞气布满客厅。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4.客厅的门，对面忌开室内宫。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5.大厅忌有螺旋形楼梯（类似电钻），尤忌在大厅中央。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 6.客厅沙发套数不能重复，一套即可，最忌一套半或者是两套不相干的桌椅。犹忌义方一圆、两套不同之沙发与桌椅并用。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 7.客厅局面初分如过于宽大，忌分间一室作卧室。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 8.一间住宅有两个客厅，其面积不宜相近，应一大一小，前厅面积大些，后厅面积要小些。小客厅与厨房太接近，又或饭厅与厨房距离太近，都主大凶。</p>\r\n\r\n<p><img alt=\"看到了就别错过!教你打造顺风顺水的好风水!\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273037501043.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;厨房</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1.煤气、石油气炉不可对正自来水头。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2.厨房忌毗邻卧室、厕所、神位。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3.厨房忌与厕所相连，或是面对面，否则影响健康。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4.厨房地面宜平坦，忌比宅内各房阔和高。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5.厨房宜用浅颜色，忌深色。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 6.厨房最忌露天（因天空有许多垢污掉下）。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 7.厨房忌设在住宅或客厅前面。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 8.厨房后面不可有房间，亦即是必须将厨房设在全宅之后半部。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 9.厨房形状忌圆形或半月形。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 10.厨房或厕所设在宅之中央，大忌。</p>\r\n\r\n<p><img alt=\"看到了就别错过!教你打造顺风顺水的好风水!\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273037509343.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;卧室</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1.卧室忌用圆形物体布置，即使是盘景。镜子、化妆桌椅等也尽量用方形。否则难以松弛入睡。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 2.在同一间房间之内，如有二扇门，忌一左开，一右开，最好是同一个方向开门。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 3.卧室不可开圆形单窗。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 4.卧室窗户的高度一定要比门还高。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 5.卧室门正对浴室，不吉。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 6.卧室宜方形，不宜有卫浴套间，如有应将之间出方形卧室之外。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 7.卫浴套间的地面高度，切忌高于卧室的地面。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 8.忌床位正对房门。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 9.凡卧室只宜正方形或近似正方形，切忌&ldquo;狭长&rdquo;形，否则不能酣睡。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 10.同一门内的窗户，高度应大致相同。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 11.同一间房，房门的开门方向，忌与卫浴套间开门方向相反。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 12.卧室不论是否长方，不可有斜边形的格局，梳妆桌的镜子不宜对正床或房门。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 13.卧室不宜加用天花板，天花板一定要清、纯，不可有凹凸或悬浮物。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 14.卧室连接的墙壁最忌安置神位，木板犹忌。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 15.卧室之内少用铁制用品如铁床、三角架等，卧室应以厚、暖、柔为主，不宜用冷、硬、坚的设施，以木制为佳。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 16.厨房不可设在两卧室之间。</p>\r\n\r\n<p><img alt=\"看到了就别错过!教你打造顺风顺水的好风水!\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273037516270.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;家居旺财风水六大秘诀</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 一、在家中的财位放置五种颜色（白青黑赤黄）的水晶，可增加贵人缘及财运，工薪阶层亦能得加薪或升职；如果发觉自己常无法集中精神及多口舌是非、招惹小人缠身，则可在床头的两旁放一对圆润饱满的陶瓷瓶，在其下面各压一个红包袋，袋内放入少许的米、茶叶、新钞及榕树叶，可化煞并可开财运。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 水晶分为天然水晶和人造水晶，其中天然水晶的作用更强、效果更佳。如有条件，尽量使用天然水晶。水晶应一般放于病煞星之位，一者可以化病消灾，二来可以化病为财。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 二、宅运旺，才会利于事业，一般可以在家里放对麒麟，这样可以使家运旺，且麒麟不仅旺财也是利于送子的，现代人压力大以及其它原因，不孕或晚孕的人相对比较多，而放置麒麟可加强这方面的运势，麒麟头宜朝外。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 三、想要升职、加薪、创业及得偏财者，如在家中的北面贴上一张用金色颜料、毛笔写上&quot;财&quot;字的红纸，再将床头移往南面，床尾下方放一张红色的踏垫，则有旺助事业及增加偏财之功效。此外，在家中北方放置五颗白水晶，及在房门入口放一块红地毯，在地毯的下面再放一个红包、内装新钞、古铜钱及茶叶、米少许，则有化煞招财增福之效。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 四、想旺偏财者，身上可佩带五帝钱或十运钱，以增进财气运势，如将五帝钱（顺治、康熙、雍正、乾隆、嘉庆 ）等钱币串起，挂在腰间，能防馋言及小人所害；而如果进入丧家，或经常出入不乾净的场所时，可将五帝钱拨弄一下，离开时，在门外再以剑指在手掌心写一〝除〞字，即可去晦辟邪；而平日入庙参拜时，也可将五帝钱取下，在香炉上绕三圈，或是放在自家神案前四十九天，也可增强五帝钱之开运能量。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 黄色一向被用来代表财富，而西方则被认为是主导事业及财运的方位，若放上黄色的家具饰物如黄水晶或其它黄色物品也可，可带来旺盛的财气，令事业飞&ldquo;黄&rdquo;腾达。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 五、日月水招财术：先准备空碗一只，放置于顶楼阳台，至少七天，如能得雨水（非自来水），将之取回带入室内，放于月光能照射到的窗户（此时不可再照射到阳光），经过七日后，将碗内剩余的水分取出一些装入小瓶中，平日随身配载，或放于大衣、皮包、口袋内，水旺财来，可增加自己的偏财运。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 六、旺财风水六：准备一个香包或小瓶，将五色宝石（天然水晶或属于青、赤、黄、白、黑此五色的天然矿石，都可使用），代表木、火、土、金、水，成分包括白水晶、黑碧玺、橄榄石、红玉髓、黄水晶等，依照五行相生互旺的原理排列，再放入有德行的老师所加持过的催财符及铜钱；将五行招财袋（或宝瓶）放在自己的口袋、皮包中，能产生出源源不绝之开运招财能量磁场，也将助您一整年的财运顺心、凡事心想事成！在股市投资、签彩券或牌桌上，则妙不可言，护佑自己财运旺盛，更有助于集中精神，增强本身气场。</p>', '2019-05-21 17:33:01', '');
INSERT INTO `feng_list` VALUES ('0000000003', '2', '书香国韵！业之峰，诗词作伴好踏青！', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>fgdsfdgh</p>', '2019-05-21 17:34:18', 'rjhyrhjtjm');
INSERT INTO `feng_list` VALUES ('0000000004', '4', '更待何时的火锅店', '/static/upload/2b0ca47cfc77837f/24d6375a39293357.jpg', '<p>单方事故反倒是广东省&nbsp;</p>', '2019-05-22 10:43:27', '更合适的感受到付');
INSERT INTO `feng_list` VALUES ('0000000005', '1', '防水处理是否需要铲除原墙体防水基层？', '/static/upload/2b0ca47cfc77837f/24d6375a39293357.jpg', '<h1>防水处理是否需要铲除原墙体防水基层？</h1>', '2019-05-22 10:56:54', '防水处理是否需要铲除原墙体防水基层？');
INSERT INTO `feng_list` VALUES ('0000000006', '2', '防水处理是否需要铲除原墙体防水基层？', '/static/upload/2b0ca47cfc77837f/24d6375a39293357.jpg', '<h1>防水处理是否需要铲除原墙体防水基层？</h1>', '2019-05-22 10:57:13', '防水处理是否需要铲除原墙体防水基层？');
INSERT INTO `feng_list` VALUES ('0000000007', '3', '防水处理是否需要铲除原墙体防水基层？', '/static/upload/4a6e48d74ef7b361/7755830b1ddcf113.jpg', '<h1>防水处理是否需要铲除原墙体防水基层？</h1>', '2019-05-22 10:57:32', '防水处理是否需要铲除原墙体防水基层？');
INSERT INTO `feng_list` VALUES ('0000000008', '4', '水电费第三方', '/static/upload/01583ee0115b3a64/7918ac9ff724bf16.jpg', '<p>打女的飒飒</p>', '2019-05-22 10:58:06', '大V发深V啊');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `banner` text,
  `nandud` int(10) DEFAULT NULL,
  `tesed` int(10) DEFAULT NULL,
  `tuijiand` int(10) DEFAULT NULL,
  `liangdian` varchar(255) DEFAULT NULL,
  `liyou` varchar(255) DEFAULT NULL,
  `reshu` varchar(255) DEFAULT NULL,
  `tianshu` varchar(255) DEFAULT NULL,
  `cheshu` varchar(255) DEFAULT NULL,
  `bushu` varchar(255) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `content1` text,
  `content2` text,
  `content3` text,
  `content4` text,
  `lid` int(10) DEFAULT NULL,
  `cid` int(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2', '趣味运动会主题团建', '/static/upload/1ec8e5956daef240/b2fc5ff138ffe886.jpg', '/static/upload/de54d0f6c63e06ba/30ae4ce51d867208.jpg|/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg|/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg', '3', '4', '5', '提升凝聚力 、 强化合作 、 拓展培训 、 提升荣誉感', '时下流行的团建方式', '40-500', '1', '1', 'TJ20190101', '230', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">罗湖体育馆</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">罗湖体育馆总投资1.9亿元，占地12502平方米，总建设面积24231平方米，共七层，分地下三层，地上四层；内设主馆、练习馆、游泳馆及配套用房、会所、停车场等设施。</span></span></p>\r\n\r\n<p><img border=\"0\" src=\"/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg\" style=\"max-width:800px\" title=\"image\" /></p>', '<p style=\"text-align: center;\"><img border=\"0\" src=\"/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg\" style=\"max-width:880px\" title=\"image\" /><img border=\"0\" src=\"/static/upload/e47e3ea6ac1aad8f/cb2cb091e3918c48.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p style=\"text-align: center;\"><img border=\"0\" src=\"/static/upload/79e81a37893462bc/d9751b405c9983d3.jpg\" style=\"max-width:880px\" title=\"image\" /><img border=\"0\" src=\"/static/upload/de54d0f6c63e06ba/30ae4ce51d867208.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '', '<p>阿斯顿</p>', '5', '5', '2018-12-19 18:16:44');
INSERT INTO `goods` VALUES ('3', '新员工激活主题拓展1日活动', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '/static/upload/c584073e6b49cf07/a137cbd0d6899531.jpg|/static/upload/37938a28aa2151f2/5f92a35ed0db2a16.jpg|/static/upload/fe52a9df9f01a5c0/2cf13afd83f03a17.jpg', '5', '3', '4', '新员工激活主题拓展，趣味项目，团队挑战，有效的帮助员工完成转变。', '团队，游艇', '30-500', '1天', '1.5小时', '寻奇者拓展培训一天行程', '230', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">正确理解团体与个体、团队成员之间的关系；完善人格，实现畅快表达意原和聆听别人的观点；最终为形成高绩效团队奠定基础。 快速凝练即时团队。发掘1+1＞2 团队潜能，突破固有习惯障碍，寻找提升组织机能渠道。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">解除队员的思想武装，消除人与人之间的隔阂和陌生感，拉近团队队员的距离，为受训队员搭建友谊的桥梁，增强的团队成员的沟通、协调与凝聚力。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">在训练设施、后勤设施完备的训练基地，学员可以在专业培训师的引导下，接受挑战，突破自我惰性，建立自信心，实现有效沟通，整合团队目标，形成战斗力团队。课程设计以团队发展阶段的特点及各阶段团队成员的心理变化为主线，即： 团队成立期&rarr;团队组建、建立诚信 &nbsp; &nbsp; &nbsp; &nbsp; 团队探索期&rarr;明确目标，产生领导核心 团队动荡期&rarr;化解冲突、统一规则 &nbsp; &nbsp; &nbsp; &nbsp; 团队成熟期&rarr;凝聚企业文化，形成认同感 通过团队实操、心理启发、技术检测、个人尝试、团队作为、军事行为等项目体验参与及环环相扣的课目设计，令学员在全程培训的氛围中，寓教于乐、寓教于智，增强主动参与性，形成严守纪律、坚决执行、承担责任和永不放弃的团队精神，从而达到凝练企业团队合力作用的效果。</span></span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">建设鹰狼团队：塑造象鹰一样的个人，象狼一样的团队</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">鹰：刚毅、坚强、迅敏、果敢、专注、进取、雄居高山之巅，搏击蓝天之上</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">狼：协作、信任、服从、忠诚、关爱、智慧、冷静、顽强、策略、形成团队的狼族，是个强大，不可侵犯的整体。</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">人的行为产生的原因可以分为外驱力和内驱力两种。内驱力指建立在个人自信心基础上的一种自我达成的成功精神。 在整个员工职能体系的大冰山上，&ldquo;知识、技能&rdquo;只是水上部分，而隐于水下不易测量的员工态度、个性、内驱力等情感智力部分，却是挖掘之&ldquo;本&rdquo;。也是企业发展的强大驱动力。寻奇者拓展培训项目将启动这一强大驱动力，满足员工的自尊和自我实现等心理需要，使员工渴求不断地完善自己，将自身的潜能发挥出来。在这个过程中，员工热情主动地投入项目任务的完成中，并将此激情延续到工作中去。</span></span></p>', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"1082\">\r\n	<tbody>\r\n		<tr height=\"28\">\r\n			<td colspan=\"2\" height=\"60\" rowspan=\"2\" width=\"196\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">时间</span></span></p>\r\n			</td>\r\n			<td height=\"60\" rowspan=\"2\" width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动内容</span></span></p>\r\n			</td>\r\n			<td height=\"60\" rowspan=\"2\" width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动方式</span></span></p>\r\n			</td>\r\n			<td colspan=\"3\" width=\"276\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动要求</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"28\">\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">体力</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">心理</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">智力</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td height=\"393\" rowspan=\"11\" width=\"57\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">第一天</span></span></p>\r\n			</td>\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">07:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">公司集中乘车出发</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"35\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">08:50~9:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">到达基地、稍事整理</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">09:00~10:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">破冰＋团队文化建设－个人与团队融入</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"37\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">10:00~11:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：共同进退－领导力、凝聚力、团队合力</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">分队</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">11:00~12:00</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：跳出真我－突破自己、挑战心理极限</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">个人</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">极高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"37\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">12:00~13:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中餐、稍事休息</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">13:30~14:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">团队热身</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">14:30~15:20</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：信任背摔－团队、信任、责任</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">分队</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">15:20~16:10</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">活动项目：&nbsp;孤岛求生&mdash;组织&nbsp;、沟通、协作</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">高</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"34\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">16:10~17:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">毕业项目：毕业墙&mdash;进取、勇担责任、共同发展</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">较高</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">中</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr height=\"40\">\r\n			<td width=\"139\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">17:30</span></span></p>\r\n			</td>\r\n			<td width=\"509\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集中乘车返回</span></span></p>\r\n			</td>\r\n			<td width=\"99\">\r\n			<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">集体</span></span></p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td width=\"92\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">费用包含</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">1、人员：专业教练团队</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">2、道具：拓展培训物料使用、运输费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">3、服务：课程设计研发、活动培训费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">4、用餐：围餐（10人一围）</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">费用不含</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">1、费用包含以外的一切费用</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">2、交通：正规空调大巴往返接送</span></span></p>\r\n\r\n<p><span style=\"font-family:Microsoft YaHei;\"><span style=\"font-size:16px;\">3、保险：专业户外拓展保险</span></span></p>', '4', '2', '2018-12-21 10:08:18');
INSERT INTO `goods` VALUES ('4', '皮划艇时速竞赛-南澳七星湾 一天团建', '/static/upload/106b3ed3a2da4ea1/11e2f3b8f24047f6.jpg', '/static/upload/a29d3310e03a1558/839c7384e7477aec.jpg|/static/upload/ac80e3d70be9435f/630d7ccff24cb4d7.jpg', '5', '5', '5', '七星湾游艇会，房车，游艇', '炎炎夏日，体验寻奇者皮划艇水上团建', '30', '1', '1.5小时', '深圳南澳一天', '380', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">大鹏七星湾拓展基地</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">享誉&ldquo;中国最美游艇会&rdquo;地处美丽的大鹏半岛七星湾畔，坐拥水质优良的港湾，背靠国家级地质公园七娘山，空气清新，得天独厚的滨海生态资源，孕育了七星湾的好山好水好风光。集户外运动、海上观光旅游、培训、休闲、娱乐、度假、博物馆、商务活动于一体，提供帆船体验、游艇租赁、海岛游、青少年及成人帆船培训、帆板体验、皮划艇体验、拓展培训、潜水体验、汽车电影、攀岩、艺术创作、购物、艇艇销售、展览、ATV试驾及住宿 、餐饮、会议等配套服务。</span></span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">破冰分组</span></span></p>\r\n\r\n<pre>\r\n<span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">以破冰游戏贯穿始终，展示我们公司成员的风采。破冰游戏将有效打破人与人之间的隔阂，创造良好的沟通氛围，激发热情与斗志。一个团队建立的过程：所有参加活动的人员以小队为单位，每一小队就是一个部落，部落的所有家庭成员必须共同面对困难、相互协作、迎接挑战、攻克难关。</span></span></pre>', '<p><span style=\"font-size:16px;\">08:00&nbsp;&nbsp;集合，出发<br />\r\n09:30&nbsp;&nbsp;破冰分组<br />\r\n10:30&nbsp;&nbsp;团队挑战任务&mdash;解手环、蛟龙出海<br />\r\n12:00&nbsp;&nbsp;享用午餐<br />\r\n14:00&nbsp;&nbsp;团队挑战任务&mdash;南水北调<br />\r\n15:00&nbsp;&nbsp;皮划艇竞赛专业的皮划艇教练教如何操作皮划艇，出海在海上竞赛，摆拍团队造型<br />\r\n17:00&nbsp;&nbsp;集体乘车返程</span></p>', '<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">费用包含</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">1、人员：专业教练团队</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">2、道具：拓展培训物料使用、运输费用</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">3、服务：课程设计研发、活动培训费用</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">4、交通：正规空调大巴往返接送</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">5、用餐：桌餐</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">6、保险：专业户外拓展保险</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">费用不含</span></span></p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Microsoft YaHei;\">1、费用包含以外的一切费用</span></span></p>', '3', '1', '2018-12-21 10:23:45');
INSERT INTO `goods` VALUES ('5', '击剑主题团建', '/static/upload/0392cc7790e26e83/a40d901ef8eeb57a.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 16:14:24');
INSERT INTO `goods` VALUES ('6', '轰趴团建', '/static/upload/d257aa66995f4c9b/761972446a80f276.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 16:15:51');
INSERT INTO `goods` VALUES ('7', '乌镇寻宝旅行', '/static/upload/bbecb35c7ff5b5e3/9b26b8633b5b1f93.jpg', '/static/upload/bbecb35c7ff5b5e3/9b26b8633b5b1f93.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 16:19:41');
INSERT INTO `goods` VALUES ('8', '趣味游戏式', '/static/upload/8dca812ef511a183/cc0fcaf770561264.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '4', '2', '2018-12-25 16:27:32');
INSERT INTO `goods` VALUES ('9', '泡泡趴，夏日主题系列活动', '/static/upload/f1f745012e0359a9/b619ba59ad530af4.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 17:42:16');
INSERT INTO `goods` VALUES ('10', '非洲鼓团建-秀一把文艺', '/static/upload/e2e17d012764d975/9773587ff289be23.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '2018-12-25 17:44:13');
INSERT INTO `goods` VALUES ('11', '厨师争霸赛+最强战队主题团建', '/static/upload/89f35b71411c61ac/818f89ebf37cdd64.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 17:45:56');
INSERT INTO `goods` VALUES ('12', '茶马古道文化体验之旅', '/static/upload/b42792c22da26f2d/279a0c9c60f35833.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:50:05');
INSERT INTO `goods` VALUES ('13', '七星湾游艇会-帆船游艇豪华体验', '/static/upload/099e94b10edbcf61/117156f3797581fd.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:53:37');
INSERT INTO `goods` VALUES ('14', '玫瑰海岸——浪漫婚纱摄影', '/static/upload/94dfd723e63a5498/4e250ab35a95abd0.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '4', '2018-12-25 17:56:08');
INSERT INTO `goods` VALUES ('15', '纳斯卡巨画 半日体验式团建', '/static/upload/01e539de4a1e6313/7c42e9e6287ee9c6.png', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 18:00:06');
INSERT INTO `goods` VALUES ('16', '新狮王争霸赛一天舞狮团建体验', '/static/upload/f27481ee93edcb40/e350cf6265fd742a.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '2018-12-25 18:01:47');
INSERT INTO `goods` VALUES ('17', '双月湾', '/static/upload/37ce37e5a1edea65/450ab783d578218b.jpg', '/static/upload/e47e3ea6ac1aad8f/cb2cb091e3918c48.jpg', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '6', '2018-12-25 18:07:40');
INSERT INTO `goods` VALUES ('18', '探索重庆火锅的秘密主题团建', '/static/upload/83cac20a4c23c850/3684c5bd646caa39.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '6', '6', '2018-12-25 18:11:34');
INSERT INTO `goods` VALUES ('19', '棒球体验团建', '/static/upload/a1e4e52a9c05a81b/8f639c879b5edeb2.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:30:56');
INSERT INTO `goods` VALUES ('20', '曲棍球团建', '/static/upload/80b76c70f20fea26/f208f687dd420f23.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:36:51');
INSERT INTO `goods` VALUES ('21', '皮划艇团建', '/static/upload/c5fbab3c846b9a73/c7e95775d0f90868.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-25 19:39:25');
INSERT INTO `goods` VALUES ('22', '卡丁车体验团建', '/static/upload/62f9898b5ec8ea09/de1de4585283407a.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '2018-12-26 12:03:05');
INSERT INTO `goods` VALUES ('23', '帆船竞速体验团建', '/static/upload/b3788bc1e25a1d23/72b5ca94f4717dc4.jpg', '', '0', '0', '0', '', '', '', '', '', '', '', '<p><img border=\"0\" src=\"/static/upload/cf5b66e7a977a5f9/80fbaaf64ca818c9.png\" style=\"max-width:880px\" title=\"image\" /></p>', '', '', '', '5', '5', '2018-12-26 12:05:27');
INSERT INTO `goods` VALUES ('25', '团建实验', '/static/upload/80b76c70f20fea26/f208f687dd420f23.jpg', '/static/upload/bcd6d7d48fcd48a2/859afeebff4d0925.jpg|/static/upload/88b2f08df0d7c3c9/a3032ab0e8498fd0.jpg', '5', '5', '5', '亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，亮点是什么呢，', '体育团建，活力团队，户外体育', '80', '1', '2', 'jjty20190101', '350', '', '', '', '', '3', '1', '2019-01-04 17:00:19');

-- ----------------------------
-- Table structure for `huxing`
-- ----------------------------
DROP TABLE IF EXISTS `huxing`;
CREATE TABLE `huxing` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of huxing
-- ----------------------------
INSERT INTO `huxing` VALUES ('0000000001', '一居');
INSERT INTO `huxing` VALUES ('0000000002', '两居');
INSERT INTO `huxing` VALUES ('0000000003', '三居');
INSERT INTO `huxing` VALUES ('0000000004', '四居');
INSERT INTO `huxing` VALUES ('0000000005', '五居');
INSERT INTO `huxing` VALUES ('0000000006', '平层');
INSERT INTO `huxing` VALUES ('0000000007', '复式');
INSERT INTO `huxing` VALUES ('0000000008', '别墅');
INSERT INTO `huxing` VALUES ('0000000009', '办公空间');

-- ----------------------------
-- Table structure for `jibie`
-- ----------------------------
DROP TABLE IF EXISTS `jibie`;
CREATE TABLE `jibie` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jibie
-- ----------------------------
INSERT INTO `jibie` VALUES ('0000000001', '优秀设计师');
INSERT INTO `jibie` VALUES ('0000000002', '资深设计师');
INSERT INTO `jibie` VALUES ('0000000003', '副主任设计师');
INSERT INTO `jibie` VALUES ('0000000004', '主任设计师');
INSERT INTO `jibie` VALUES ('0000000005', '高级设计师');
INSERT INTO `jibie` VALUES ('0000000006', '主案设计师');
INSERT INTO `jibie` VALUES ('0000000007', '首席设计师');
INSERT INTO `jibie` VALUES ('0000000008', '设计总监');

-- ----------------------------
-- Table structure for `know_cate`
-- ----------------------------
DROP TABLE IF EXISTS `know_cate`;
CREATE TABLE `know_cate` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of know_cate
-- ----------------------------
INSERT INTO `know_cate` VALUES ('0000000001', '装修前');
INSERT INTO `know_cate` VALUES ('0000000002', '装修中');
INSERT INTO `know_cate` VALUES ('0000000003', '装修后');

-- ----------------------------
-- Table structure for `know_list`
-- ----------------------------
DROP TABLE IF EXISTS `know_list`;
CREATE TABLE `know_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `kid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of know_list
-- ----------------------------
INSERT INTO `know_list` VALUES ('0000000001', '2', '电线也能影响风水？如何化解“火蛇煞”？', '/static/upload/a0081bc2a0f8d3fe/da27d867d9531892.jpg', '<p>电器等设备的使用，离不开电线，但是小编相信很多人都不知道，这些生活中常常被人们所忽视的电线的背后，也藏着很多不为人知的风水知识。不信？那就来看看下面的内容吧！</p>\r\n\r\n<p><img alt=\"电线也能影响风水？如何化解“火蛇煞”？\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273036279261.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 随着电的发明，继而一件又一件的家居电器发明出来。如今人们对电子产品的需求也是越来越多。这样造成一种结果，就是家中的电线也愈来愈多！电线的形态，彷如一条火蛇，为不利之风水形态。古代没有电线，因此没有传统之专业名词，一般称为「火蛇煞」。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 火蛇煞影响一个人疲劳，神经紧张，甚至肌肉抽搐，筋骨常处于热毒、硬化、酸痛的状态，这种城市病在近年愈来愈普遍，与家庭中电线愈来愈多有很大关系。中医所谓「生蛇」，大多与家中的电线有关。大量电线在家中不规则地出现，严重影响风水！</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 举例很多小朋友为了玩游戏，将游戏机接驳到电视去。将遥控放下之后，会发现从电视机到自己所坐的位置，接驳了许多电线，再加上其他游戏机附件，造成一条条繁杂的电线，横跨在大厅中央，在此提醒大家，所有电线在风水上，均作不吉论。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 除了游戏机，电脑也是制造最多电线的「元凶」。一部最简单的电脑，也需要三、四个电插座，附在主机身上的电线，更是多不胜数。现代的数码相机、CD机、MD机，全部需要安装充电器，令现代的家庭，全屋也放满电线和电插座，令人眼花缭乱。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 有一种火蛇煞，不说出来，一般人不容易察觉，那是陪伴大家已经很长日子的吸尘机！</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 吸尘机在使用机时，长长的电线彷如蛇身，吸尘机的吸盘彷如蛇头，在风水上也是煞！</p>\r\n\r\n<p><img alt=\"电线也能影响风水？如何化解“火蛇煞”？\" border=\"0\" src=\"http://picfw.yzf.com.cn/2016/1/13/1273036280251.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 因此吸尘机在使用完用后，不能懒惰随处摆放，应收拾好电线放回储物柜内。吸尘机最好不要露光，也要将吸盘（蛇头）拆下来放置为好。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 至于电视游戏机，需要有条理地放置好，切勿让电线在家中的大厅流转，造成火蛇煞的干扰。有一种电线盒，将多出来的电线收藏在盒内，令家居更美观整齐，近年也有这类电线盒出售，唯使用的人不多。其实这种设计可化解火蛇煞之凶性。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 另一个减少火蛇煞的方法，是尽量安装多一些入墙电插座。新居入伙时，请装修工人尽量加装入墙的电插座，便可避免因为电插座不足，放在东边的电器，插在西边的插座上，电线横跨了整个大厅，也可减少拖板的使用。请留意，拖板也是火蛇煞，有些家庭被数个拖板重重包围着，制造了极恶劣的风水磁场。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 再次建议大家在家中使用这些家居电器时，能避免少用电线就少用为好，将火蛇煞的危害减小到最小程度。</p>', '2019-05-18 14:20:22', null);
INSERT INTO `know_list` VALUES ('0000000002', '2', '选窗帘也要看风水?对的 你没听错!', '/static/upload/5ba74e32c9c81605/cd05834445d3fac0.jpg', '<p>窗帘价格适中，却能起到很好的装饰作用，因此不少家庭为了彰显生活的品味，在窗帘的选购上就会多花一点心思。窗帘的材质和样式非常的多样，那么什么样的窗帘能够帮助打造出良好的家居风水呢？别急，下面就跟着小编一起通过下面的内容来了解一下吧。</p>\r\n\r\n<p><img alt=\"选窗帘也要看风水?对的你没听错!\" border=\"0\" src=\"http://img2.525j.com.cn/files/Content/201512301611531251576.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;如何从风水的角度选购窗帘？</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;房间大小</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 在窗帘种类中，落地的长帘可营造出一种恬静而温暖的气氛，但这前提是针对较大面积的空间，若是运用到较小的房间内，小窗房会减低阳光的照射，所以小窗户以容易让大量的光线透过的百叶窗为佳。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 在较大面积的房间内，布窗帘装饰将是不错的选择，因布窗帘有助于睡眠与阻挡外界的不良影响。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 餐厅是全家人就餐厅吃饭的地方，白色的窗帘装饰将成了是首选；为了在就餐厅时不会叫人倒胃口，在选择时则应该避免灰色、芥末黄、紫或青绿色色彩的出现；当然若您正在节食，那么蓝色、绿色与灰色窗帘也可以成为帮手哦！</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;户型朝向</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 在家居户型之中，偏暗的朝北房间，适合中性偏冷色调，情调优雅的窗帘装饰；而采光较好的房间，以粟红色或黄色窗帘为佳，因这两种色调可以将强光调节成纤柔的散光，协调阴阳。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;窗户朝向</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 户型设计中，正对玻璃幕墙大厦的窗户，若没利用窗帘来装饰，那么阳光将会通过玻璃幕墙反射入屋，形成&ldquo;光煞&rdquo;，使之影响人情绪，这时可以装置纱帘，并落帘至日落，去除煞气，当然了若窗外有霓虹光管，那么则日夜都落帘了。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 窗户外正对医院或尖锐的屋角、不洁之物等等，都将是吉利的，但可以安装木质百叶窗，避免煞气入侵，平时以少打开为宜。</p>\r\n\r\n<p><img alt=\"选窗帘也要看风水?对的你没听错!\" border=\"0\" src=\"http://img3.525j.com.cn/files/Content/201512301613266251702.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;窗帘款式、色彩</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 在窗帘选购之中，过厚的窗帘装饰将会减少家人团聚，而华丽图案的却会有罕见访客的现象。目前市场上那么简单朴素或花纹图案的窗帘，可以说是人们选择家居窗饰时最佳的选择。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 粉红色，虽说是女孩子们最爱的色彩，但窗帘的选用最为不要用粉红色的，因为粉红色的窗帘会使人产生脑神经衰弱、慌恐、不安、易发脾气，而吵架之事必然常常发生。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;窗帘搭配</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 窗帘与地面颜色也要避免红与绿、青与橙、红与蓝、黄与紫的颜色搭配，以免产生不好的心理感觉。除此之外，窗帘与墙面、家具要尽量避免相似色调的搭配，如黄色调墙面，搭配上米黄色的窗帘，看似和谐，其实在如此配色的居室待久了，心理上难免会感到&ldquo;晕&rdquo;。</p>\r\n\r\n<p><img alt=\"选窗帘也要看风水?对的你没听错!\" border=\"0\" src=\"http://img3.525j.com.cn/files/Content/201512301614593126791.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;窗帘的风水作用</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;一、窗帘对主人运势的影响</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 1、符合主人命理五行所喜的窗帘色彩、材质，是主人运势的辅助器在装饰伊始，就结合主人命理，来选择窗帘的色彩、材质，当可对主人的感情、健康、财运、事业等方面运势，起到生助的作用。不注意这个问题，则可能会起到反作用。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 比方说，如果主人命理喜木，就可选择绿色的、木质的窗帘；主人命理喜火，就可选择红色、紫色系列的，人造纤维窗帘；如果主人命理喜土，则选择黄色、土黄色系列色彩的罗马帘；如果主人命理喜金，选择白色的金属窗帘；主人命理喜水，就用蓝色、黑色的水波帘。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;二、化解四方煞气</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 在使用窗帘的时候，也要非常慎重，注意了解各种材质，各种样式窗帘的风水作用。一般按照风水的观点来说，人造纤维材质的窗帘在五行上属火，根据火克金的原理，可以用来挡住来自西方和西北面属于金的煞气。罗马窗帘因为既能够分成几段向上拉，也可以拉升起来，所以从风水的角度来看，其五行属土，也能够挡住来自北方的水的煞气。水波帘呈波浪形，根据火克火的原理，可以用来挡住来自南面的火煞。百叶窗常采用铝质材质制成，五行属金，利用金克木的原理，如果在东面和东南面的窗户上悬挂百叶窗，能够抵挡木煞。</p>\r\n\r\n<p><img alt=\"选窗帘也要看风水?对的你没听错!\" border=\"0\" src=\"http://img2.525j.com.cn/files/Content/201512301617134376424.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;三、防止泄气</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 家居生活中，很多人都喜欢宽敞明亮的落地窗，因为通过它可能看到更多的景致，但实际上落地窗并不符合风水之道，主要是房间的吉气从大面积的窗户中泄气过多，这样会导致钱财不聚，运气下降，影响夫妻感情等。正常都是带阳台那种，不管是高点还是矫点都具有收气的作用，落地窗的风水格局只好用窗帘来进行挡气了，因此最好是有没人的时候要经常拉上窗帘，这样对主人是最有利的。同时还可以在阳台内挂二条富贵有余进行化解。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp;四、抑制火气</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp; 在窗户上安装窗帘，通常都是为了保持私密性，同时遮蔽外面过于强烈的阳光。窗帘在风水上可以用来化解火过多的情况，特别是对于命中火旺为忌神的人来说更是重要了。当然，对于那些本来就命中缺火的人，还是需要大量的火属性物质，从而就需要得到大量的阳光照射，因此他不适合悬挂过厚的窗帘。</p>', '2019-05-18 14:20:55', null);

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `ename` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '0', '首页', 'Home', '', '', '', '');
INSERT INTO `list` VALUES ('2', '0', '公司介绍', 'About', '', null, null, null);
INSERT INTO `list` VALUES ('3', '0', '主题团建', 'League building', '', '', '', '');
INSERT INTO `list` VALUES ('4', '0', '拓展培训', 'Team training', '', '', '', '');
INSERT INTO `list` VALUES ('5', '0', '竞技体育', 'competitive sports', '', '', '', '');
INSERT INTO `list` VALUES ('6', '0', '旅行团建', 'Deep travel', '', '', '', '');
INSERT INTO `list` VALUES ('7', '0', '服务团队', 'Service team', '', '', '', '');
INSERT INTO `list` VALUES ('8', '0', '往期案例', 'Past cases', '', '', '', '');
INSERT INTO `list` VALUES ('9', '0', '新闻中心', 'News center', '', '', '', '');
INSERT INTO `list` VALUES ('10', '0', '联系我们', 'Contact us', '', '', '', '');

-- ----------------------------
-- Table structure for `lou_anli`
-- ----------------------------
DROP TABLE IF EXISTS `lou_anli`;
CREATE TABLE `lou_anli` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `img` text NOT NULL COMMENT '楼盘案例图',
  `content` text NOT NULL COMMENT '案例设计说明',
  `r_id` int(10) unsigned NOT NULL COMMENT '案例地区id',
  `s_id` int(10) unsigned NOT NULL COMMENT '案例风格id',
  `h_id` int(10) unsigned NOT NULL COMMENT '户型id',
  `m_id` int(10) unsigned NOT NULL COMMENT '面积id',
  `re_id` int(10) unsigned NOT NULL COMMENT '热门楼盘id',
  `she_id` int(10) unsigned NOT NULL COMMENT '关联设计id',
  `logo` varchar(255) NOT NULL COMMENT '封面图',
  `s_mianji` int(10) unsigned NOT NULL COMMENT '实际面积',
  `loupan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '同楼盘的新的一期',
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐首页展示 0=》不 1=》是',
  `sort` int(10) unsigned NOT NULL COMMENT '热门楼盘案例排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lou_anli
-- ----------------------------
INSERT INTO `lou_anli` VALUES ('0000000001', '/static/upload/fb4bce040f5d9624/a348f09721d58432.jpg|/static/upload/385e5a7561f2ab07/aabd4d83c42cc218.png|/static/upload/467d985372f5f5db/3f7f43465b90b505.jpg|/static/upload/3380d64a1951f1da/1d53e5a88173c2b4.jpg', '', '11', '1', '1', '10', '1', '8', '/static/upload/385e5a7561f2ab07/aabd4d83c42cc218.png', '120', '', '1', '40');
INSERT INTO `lou_anli` VALUES ('0000000002', '/static/upload/385e5a7561f2ab07/aabd4d83c42cc218.png|/static/upload/fb4bce040f5d9624/a348f09721d58432.jpg|/static/upload/467d985372f5f5db/3f7f43465b90b505.jpg|/static/upload/3380d64a1951f1da/1d53e5a88173c2b4.jpg', '', '11', '2', '3', '10', '1', '9', '/static/upload/385e5a7561f2ab07/aabd4d83c42cc218.png', '115', '', '1', '60');

-- ----------------------------
-- Table structure for `lou_gongdi`
-- ----------------------------
DROP TABLE IF EXISTS `lou_gongdi`;
CREATE TABLE `lou_gongdi` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `re_id` int(10) unsigned NOT NULL COMMENT '关联小区id',
  `h_id` int(10) NOT NULL COMMENT '关联户型id',
  `s_mianji` varchar(100) NOT NULL COMMENT '户型实际面积大小',
  `q_title` varchar(100) NOT NULL COMMENT '工期进度前期',
  `z_title` varchar(100) NOT NULL COMMENT '工期进度中期',
  `h_title` varchar(100) NOT NULL COMMENT '工期进度后期',
  `q_img` text NOT NULL COMMENT '前期进度图',
  `z_img` text NOT NULL COMMENT '中期进度图',
  `h_img` text NOT NULL COMMENT '后期进度图',
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐为首页展示 0=》不 1=》是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lou_gongdi
-- ----------------------------
INSERT INTO `lou_gongdi` VALUES ('0000000001', '1', '1', '120', '', '水电工程', '', '', '/static/upload/b777d4a78ce4b247/eb7657691cff4755.jpg|/static/upload/e013295826e0b6f0/eee03c43c7e973b8.jpg|/static/upload/373377723d54117b/98222961a6eba708.jpg|/static/upload/e158fdeb6889acf7/48fe049fc75e9e70.jpg|/static/upload/b0e7129eefbec045/4120a3c450093f41.jpg|/static/upload/b2ad64265c171cfc/3654947b660d7084.jpg|/static/upload/27b45a020b06ba35/6f0527f2ef9b2e62.jpg', '', '1');
INSERT INTO `lou_gongdi` VALUES ('0000000002', '2', '2', '150', '', '水电工程', '', '', '/static/upload/b777d4a78ce4b247/eb7657691cff4755.jpg|/static/upload/e013295826e0b6f0/eee03c43c7e973b8.jpg|/static/upload/373377723d54117b/98222961a6eba708.jpg|/static/upload/e158fdeb6889acf7/48fe049fc75e9e70.jpg|/static/upload/b0e7129eefbec045/4120a3c450093f41.jpg|/static/upload/b2ad64265c171cfc/3654947b660d7084.jpg|/static/upload/27b45a020b06ba35/6f0527f2ef9b2e62.jpg', '', '1');
INSERT INTO `lou_gongdi` VALUES ('0000000003', '3', '3', '150', '竣工工程', '', '', '/static/upload/e013295826e0b6f0/eee03c43c7e973b8.jpg|/static/upload/373377723d54117b/98222961a6eba708.jpg|/static/upload/e158fdeb6889acf7/48fe049fc75e9e70.jpg|/static/upload/b0e7129eefbec045/4120a3c450093f41.jpg|/static/upload/b2ad64265c171cfc/3654947b660d7084.jpg|/static/upload/76391228433df16c/cf0e29a6d2a3432a.jpg', '', '', '1');

-- ----------------------------
-- Table structure for `lou_huxing`
-- ----------------------------
DROP TABLE IF EXISTS `lou_huxing`;
CREATE TABLE `lou_huxing` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `re_id` int(10) unsigned NOT NULL COMMENT '关联热门小区id',
  `h_title` varchar(255) NOT NULL COMMENT '户型名称',
  `h_size` varchar(255) NOT NULL COMMENT '户型尺寸大小面积',
  `h_img` varchar(255) NOT NULL COMMENT '户型展示图',
  `content` text NOT NULL COMMENT '户型解析',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lou_huxing
-- ----------------------------
INSERT INTO `lou_huxing` VALUES ('0000000001', '1', '二期22#标准层F户型', '3室2厅2卫1厨  195㎡', '/static/upload/77d6c74928d41104/5b605c7a7f893f8b.jpg', '<p>整体户型方正，活动区域开阔，居住舒适度高；全明户型，各部分空间均有窗，可保证整体空间采光和通风，居住舒适度好；卫生间门朝向主要活动区域；。卧室厨卫等各个功能区的面积大小都比较合理，居住体验便利，整体舒适度高；公摊高于15%且低于25%，符合住宅公摊正常范围。</p>');
INSERT INTO `lou_huxing` VALUES ('0000000002', '1', '二期22#标准层F户型', '3室2厅2卫1厨  195㎡', '/static/upload/77d6c74928d41104/5b605c7a7f893f8b.jpg', '<p>整体户型方正，活动区域开阔，居住舒适度高；全明户型，各部分空间均有窗，可保证整体空间采光和通风，居住舒适度好；卫生间门朝向主要活动区域；。卧室厨卫等各个功能区的面积大小都比较合理，居住体验便利，整体舒适度高；公摊高于15%且低于25%，符合住宅公摊正常范围。</p>');
INSERT INTO `lou_huxing` VALUES ('0000000003', '1', '二期22#标准层D户型', '3室2厅2卫1厨  165㎡', '/static/upload/73a148a864d38b84/14705b3bd3162009.jpg', '<p>整体户型方正，活动区域开阔，居住舒适度高；全明通透户型，居住舒适度较高，整个空间采光充足，利于后期居住；居室布局合理，通风良好，动静分离，兼顾到了卧室和卫生间的私密性；客厅、卧室、卫生间和厨房等主要功能间的尺寸以及比例适中，有利于采光和通风，居住起来舒适、方便；公摊高于15%且低于25%，符合住宅公摊正常范围。</p>');
INSERT INTO `lou_huxing` VALUES ('0000000004', '1', '标准层150平', '3室2厅2卫1厨  150㎡', '/static/upload/556cbe1dab7aea02/584659c02e90f1fd.jpg', '<p>各个空间户型方正，方便室内家具布置；整个空间全明通透，采光良好，同时利于居住空间通风；整体空间布局合理，能够保证动静分离和居室通风，方便使用；卧室厨卫等各个功能区的面积大小都比较合理，居住体验便利，整体舒适度高；公摊高于15%且低于25%，符合住宅公摊正常范围。</p>');

-- ----------------------------
-- Table structure for `love_list`
-- ----------------------------
DROP TABLE IF EXISTS `love_list`;
CREATE TABLE `love_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of love_list
-- ----------------------------
INSERT INTO `love_list` VALUES ('0000000009', '放晴生活！业之峰，以东南亚风情拥抱大自然！', '/static/upload/5ba74e32c9c81605/cd05834445d3fac0.jpg', '范德萨发', '<p>是山大地方的刷单的范德萨发的说法是大多数是大多数</p>', '2019-05-22 14:29:34');
INSERT INTO `love_list` VALUES ('0000000010', '嫁给爱情！业之峰，以地中海风情，鉴证浪漫一生！', '/static/upload/01583ee0115b3a64/7918ac9ff724bf16.jpg', '发送到敢不敢不发', '<p>共和国的不代表的烦恼会感到会更好好几个会感到</p>', '2019-05-22 14:30:44');

-- ----------------------------
-- Table structure for `media_cate`
-- ----------------------------
DROP TABLE IF EXISTS `media_cate`;
CREATE TABLE `media_cate` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media_cate
-- ----------------------------
INSERT INTO `media_cate` VALUES ('0000000001', '幸福家居课堂');
INSERT INTO `media_cate` VALUES ('0000000002', '家装小课堂');

-- ----------------------------
-- Table structure for `media_list`
-- ----------------------------
DROP TABLE IF EXISTS `media_list`;
CREATE TABLE `media_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `mid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media_list
-- ----------------------------
INSERT INTO `media_list` VALUES ('0000000001', '1', '怎样让居室角落生动起来?', '/static/upload/4a6e48d74ef7b361/7755830b1ddcf113.jpg', '<h1>怎样让居室角落生动起来?</h1>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; 居室角落若巧扮得当，不仅司以充分挖掘空间的使用功能，还可为家居环境增添光彩。在居空的角落可以放一些拐角架或拐角柜之类的家具，也可以摆放雕塑、鲜花、绿色植物等。但这并不是说所右室内角落都要放，安根据情况疏密有序地放置。</p>\r\n\r\n<p>&nbsp;<img alt=\"0.jpg\" src=\"http://picfw.yzf.com.cn/zt/2018/2/7/1926427250943.jpg\" title=\"0.jpg\" /></p>', '2019-05-21 16:21:28', '你适合E核对复合肥度不得不说仿是牛师傅你发是年保费是禁闭岛妇科疾病白你家 。');
INSERT INTO `media_list` VALUES ('0000000002', '2', '材料环保么？', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>　　装修新家更多的是为提高居住环境。环保、安全是第一位的。家装行业，在环保方面最具权威性的就是业之峰了。2010年业之峰成立了中国室内环保研究院并推出了三重防护体系，让环保工程更环保。业之峰郑重承诺：环保不达标，全额退款。</p>', '2019-05-21 16:39:19', '东莞市房公司规定');

-- ----------------------------
-- Table structure for `mianji`
-- ----------------------------
DROP TABLE IF EXISTS `mianji`;
CREATE TABLE `mianji` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mianji
-- ----------------------------
INSERT INTO `mianji` VALUES ('0000000014', '500㎡以上');
INSERT INTO `mianji` VALUES ('0000000013', '321-500㎡');
INSERT INTO `mianji` VALUES ('0000000012', '181-320㎡');
INSERT INTO `mianji` VALUES ('0000000009', '90㎡以下');
INSERT INTO `mianji` VALUES ('0000000010', '90-120㎡');
INSERT INTO `mianji` VALUES ('0000000011', '121-180㎡');

-- ----------------------------
-- Table structure for `new`
-- ----------------------------
DROP TABLE IF EXISTS `new`;
CREATE TABLE `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `content` text,
  `laiyuan` varchar(255) NOT NULL COMMENT '新闻来源',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tuijian` int(10) unsigned DEFAULT NULL COMMENT '是否推荐为热门',
  `jian` varchar(255) NOT NULL COMMENT '内容简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of new
-- ----------------------------
INSERT INTO `new` VALUES ('1', '这是标题这是标题这是标题这是标题这是标题', '/static/upload/380896beff3e3854/6e5852b248f4834d.png', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-22 09:58:21', '0', '');
INSERT INTO `new` VALUES ('2', '这是标题这是标题这是标题这是标题', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-25 15:13:11', '0', '');
INSERT INTO `new` VALUES ('3', '新闻二', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-25 15:14:44', '1', '');
INSERT INTO `new` VALUES ('4', '新闻1', '/static/upload/37938a28aa2151f2/5f92a35ed0db2a16.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-25 15:15:24', '1', '');
INSERT INTO `new` VALUES ('5', '庆祝建军90周年 “业之峰将军杯”高尔夫邀请赛圆满收杆', '/static/upload/c00e92f99cc70c8d/50ecc20d043f42d5.jpg', '<p>　　2017年8月1日，第五届庆八一&ldquo;业之峰将军杯&rdquo;中国将军队高尔夫邀请赛圆满结束，活动由业之峰装饰集团主办，高尔夫酒、水素水和品德装饰赞助，众多高尔夫爱好者与相关领导共同参加了此次活动，并在高尔夫俱乐部宴会厅举行了颁奖晚宴。<br />\r\n<br />\r\n　　今年是中国人民解放军建军90周年，中共中央总书记、国家主席、中央军委主席习近平在发表重要讲话时强调，人民军队的历史辉煌，是鲜血生命铸就的，永远值得我们铭记。人民军队的历史经验，是艰辛探索得来的，永远需要我们弘扬。人民军队的历史发展，是忠诚担当推动的，永远激励我们向前。中华民族实现伟大复兴，中国人民实现更加美好生活，必须加快把人民军队建设成为世界一流军队。我们要不忘初心、继续前进，坚定不移走中国特色强军之路，把强军事业不断推向前进，努力实现党在新形势下的强军目标。<br />\r\n<br />\r\n本次比赛的主办方邀请了多位中国人民解放军的老将军和国家部委老领导参加，业之峰集团董事长张钧发表了精彩的致辞。他表示，90年来，伟大的人民军队历经硝烟战火，一路披荆斩棘，付出巨大牺牲，取得一个又一个辉煌胜利，为党和人民建立了伟大的历史功勋。业之峰集团成立20年来，也一直把军民共建活动作为精神文明工作的重要内容，不断发扬军民团结、鱼水情深的光荣传统，深入持久地开展军民共建活动，这充分展示了&ldquo;和谐共建&rdquo;的新型军民关系，也进一步融洽了心连心、同呼吸、共命运的军民关系。</p>\r\n\r\n<p>&nbsp;<img alt=\"_O4A9668.jpg\" src=\"http://picfw.yzf.com.cn/2017/8/2/1763045531588.jpg\" title=\"_O4A9668.jpg\" /></p>\r\n\r\n<p>业之峰装饰董事长张钧讲话</p>\r\n\r\n<p>　　据了解，业之峰装饰已经连续五年主办高尔夫邀请赛，比赛旨在为众多注重居住品质的高球爱好者提供高端、广阔的交流平台。张钧表示，高尔夫运动所体现出的尊贵气质和优雅时尚的生活态度与业之峰装饰一直以来倡导的健康、高品质的生活方式相得益彰，高尔夫运动能完美传达出业之峰的品牌价值与理念。业之峰作为一家家装企业，重视通过建立和谐的互动关系来创造良好的社会环境。通过对高尔夫等体育赛事的支持，业之峰将健康、积极向上的精神融入企业文化，并通过比赛平台将业之峰的企业文化与更多的人分享，而这也是业之峰赞助体育赛事的初衷。<br />\r\n<br />\r\n　　经过有趣而又紧张激烈的角逐，当天的各个奖项尘埃落定。最终，将军队获得了团队冠军的最高荣誉。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '集团企划中心', '2019-04-01 15:57:08', '1', '');

-- ----------------------------
-- Table structure for `new_cates`
-- ----------------------------
DROP TABLE IF EXISTS `new_cates`;
CREATE TABLE `new_cates` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL COMMENT '装修类型 ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='装修头条分类表';

-- ----------------------------
-- Records of new_cates
-- ----------------------------
INSERT INTO `new_cates` VALUES ('0000000001', '装修前');
INSERT INTO `new_cates` VALUES ('0000000002', '装修中');
INSERT INTO `new_cates` VALUES ('0000000003', '装修后');

-- ----------------------------
-- Table structure for `partner`
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `url` char(255) DEFAULT '#',
  `sort` int(11) unsigned DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT '1',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of partner
-- ----------------------------
INSERT INTO `partner` VALUES ('10', '腾讯', '/static/upload/f8e29fbdd8f6e21d/a0da69a854086de5.jpg', '#', '0', '1', '2018-12-25 15:23:50');
INSERT INTO `partner` VALUES ('11', '华为', '/static/upload/60490b20a1494c60/e8c4bcd8f14299b7.jpg', '#', '0', '1', '2018-12-25 15:25:00');
INSERT INTO `partner` VALUES ('12', '招商银行', '/static/upload/a4c0ff0b9be993cc/44701abfd9c7176d.jpg', '#', '0', '1', '2018-12-25 15:26:57');
INSERT INTO `partner` VALUES ('13', '戴德梁行', '/static/upload/19c630cff8d7571c/f2e1de7fbc1e01a6.jpg', '#', '0', '1', '2018-12-25 15:27:39');
INSERT INTO `partner` VALUES ('14', '中海地产', '/static/upload/2b49a556d02aff7f/b9110a95e7d0a80a.jpg', '#', '0', '1', '2018-12-25 15:28:37');
INSERT INTO `partner` VALUES ('15', '万科地产', '/static/upload/1ed56a82ec0c36d3/dc5fb272c5f1353d.jpg', '#', '0', '1', '2018-12-25 15:30:06');

-- ----------------------------
-- Table structure for `que_cate`
-- ----------------------------
DROP TABLE IF EXISTS `que_cate`;
CREATE TABLE `que_cate` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of que_cate
-- ----------------------------
INSERT INTO `que_cate` VALUES ('0000000001', '攻略类');
INSERT INTO `que_cate` VALUES ('0000000002', '技巧类');
INSERT INTO `que_cate` VALUES ('0000000003', '质检类');
INSERT INTO `que_cate` VALUES ('0000000004', '财务类');
INSERT INTO `que_cate` VALUES ('0000000005', '客服类');
INSERT INTO `que_cate` VALUES ('0000000006', '其他类');

-- ----------------------------
-- Table structure for `que_list`
-- ----------------------------
DROP TABLE IF EXISTS `que_list`;
CREATE TABLE `que_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `qid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of que_list
-- ----------------------------
INSERT INTO `que_list` VALUES ('0000000001', '6', '你是谁', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>看到你佛is你弟on搜&nbsp;</p>', '2019-05-21 17:14:38', '毒奶粉的看法呢');
INSERT INTO `que_list` VALUES ('0000000002', '1', '防水处理是否需要铲除原墙体防水基层？', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>　　这个需要看原墙体防水基层是否牢固，如果原墙体防水基层较差，必须要铲除，否则会影响防水质量，严重的会导致瓷砖脱落。如果客户要求不铲除原防水层，需客户本人签署书面免责协议后，方可施工。</p>', '2019-05-22 10:09:51', '是非法的吧');
INSERT INTO `que_list` VALUES ('0000000003', '2', '防水处理是否需要铲除原墙体防水基层？', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>VB都仿部分</p>', '2019-05-22 10:10:43', '官方归属感');
INSERT INTO `que_list` VALUES ('0000000004', '3', '富商大贾', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>发给范冰冰的国防部官方回复回复后官方回复的共和国</p>', '2019-05-22 10:11:10', 'ukuu7ytf');
INSERT INTO `que_list` VALUES ('0000000005', '4', '风格大概回复股东会', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>根深蒂固不是大概大概是多少贵公司</p>', '2019-05-22 10:11:42', '官方都不敢对白癜风');
INSERT INTO `que_list` VALUES ('0000000006', '1', '鬼地方个', '/static/upload/2b5c699a130a0d7d/e9172eabaa5011d5.jpg', '<p>电饭煲都不敢打吧</p>', '2019-05-22 10:29:19', '的收费割发代首');

-- ----------------------------
-- Table structure for `region`
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='案例地区表';

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('0000000009', '太仓市');
INSERT INTO `region` VALUES ('0000000010', '张家港市');
INSERT INTO `region` VALUES ('0000000011', '昆山市');
INSERT INTO `region` VALUES ('0000000012', '常熟市');
INSERT INTO `region` VALUES ('0000000013', '吴江区');
INSERT INTO `region` VALUES ('0000000014', '姑苏区');
INSERT INTO `region` VALUES ('0000000015', '相城区');
INSERT INTO `region` VALUES ('0000000016', '吴中区');
INSERT INTO `region` VALUES ('0000000017', '虎丘区');
INSERT INTO `region` VALUES ('0000000018', '市辖区');

-- ----------------------------
-- Table structure for `remen_lou`
-- ----------------------------
DROP TABLE IF EXISTS `remen_lou`;
CREATE TABLE `remen_lou` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `d_id` int(10) unsigned NOT NULL COMMENT '关联案例地区id region',
  `title` varchar(255) NOT NULL COMMENT '楼盘名称',
  `location` varchar(255) NOT NULL COMMENT '楼盘地理位置',
  `content` text NOT NULL COMMENT '楼盘介绍',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `img` varchar(255) NOT NULL COMMENT '楼盘展示图',
  `hot` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最热销售楼盘 0=》普通 1=》最火',
  `news` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最新楼盘 0=》普通 1=》最新',
  `search` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '推荐为热门搜索 0=》no 1=>yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remen_lou
-- ----------------------------
INSERT INTO `remen_lou` VALUES ('0000000001', '11', '天润尚院', '[ 昆山市 ] 周庄镇周商公路1号', '<p>昆山天润尚院位于昆山市5A级风景区周庄古镇，坐拥2500亩水景资源，全现代中式院墅，低密度容积率，高绿地率，打造古镇个性度假私密大宅，北京天润置地集团耗时3年潜心打造，传承江南居住文化理念，融通国际化新周庄之大配套环境，体现新周庄之大宅文化。</p>', '2019-04-22 13:27:25', '/static/upload/f62abf46da6a2468/bdf0205f8cae6479.jpg', '30', '10', '1');
INSERT INTO `remen_lou` VALUES ('0000000002', '13', '万科苏高新四季风景花园', '吴江长板路1号（长安路东侧）', '<p>万科苏高新四季风景花园项目是苏南万科携手苏高新战略布局吴江，万科公园社区作品。 项目主要为高层商品房住宅，小高层商品房住宅及配套公建等公共服务设施。项目位于苏州吴江区长板路1号（长安路东侧，紧邻吴江汽车站）。三大主题乐园覆盖儿童（自然山林乐园、自然之声，户外课堂、花果世界、探索乐园、昆虫总动员）、青年（户外客厅、静思读书花园、亲子农场花园）、老年（休闲小花园、健身花园、棋牌花园）各个年龄阶段，让您更轻松的生活；近3万方自带商业地块，未来可能规划建成商铺、公寓、SOHO，目前业态待规划。休闲、娱乐、餐饮丰富业态。</p>', '2019-04-20 15:40:22', '/static/upload/629ddeeaa01adbe6/110a46c7b614dd5c.jpg', '50', '20', '1');
INSERT INTO `remen_lou` VALUES ('0000000003', '13', '新湖明珠城', '吴江江陵西路1888号（仲英大道与江陵西路交汇处）', '<p>新湖明珠城位于南苏州仲英大道和江陵西路交界处，西北面由太湖环抱，与2.3公里原生态太湖水岸线，宽40米左右的湖岸绿化带相邻，与苏州石湖风景区遥隔相望，南接规划中的生态公园和吴江市中心，通过苏震桃跨湖大桥与苏州市区相连，距苏州市中心约12公里。 新湖明珠城占地1600余亩，总建筑面积约165万平方米，建筑风格为合院式地中海风情小镇，休闲化的全新生活形态。 新湖明珠城香湖苑推出，建筑风格为地中海风格，位于整个小区中轴正北面，坐拥3万方郁金香公园，临近太湖景观大堤。</p>', '2019-04-20 15:40:16', '/static/upload/cb0959a7bbc7bcb0/f58fb6a92f9a4c76.jpg', '70', '40', '1');

-- ----------------------------
-- Table structure for `save_banner`
-- ----------------------------
DROP TABLE IF EXISTS `save_banner`;
CREATE TABLE `save_banner` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of save_banner
-- ----------------------------
INSERT INTO `save_banner` VALUES ('0000000001', '蓝钻工程', 'index/index/index', '/static/upload/a53531c6278e0073/6a2dbfe43bc83932.jpg', '2019-05-18 17:08:56');
INSERT INTO `save_banner` VALUES ('0000000002', '21周年庆', 'index/index/index', '/static/upload/5c061184a1cf867f/a8e3075b3d55c50a.jpg', '2019-05-18 17:09:26');
INSERT INTO `save_banner` VALUES ('0000000003', '群星助阵', 'index/index/index', '/static/upload/9c604fb863ec8cd0/4c93f7db9b40f5cc.jpg', '2019-05-18 17:10:03');
INSERT INTO `save_banner` VALUES ('0000000004', '空间榜样', 'index/index/index', '/static/upload/876c525fd559044d/aaca27d79c12c3e8.jpg', '2019-05-18 17:10:22');

-- ----------------------------
-- Table structure for `sheji`
-- ----------------------------
DROP TABLE IF EXISTS `sheji`;
CREATE TABLE `sheji` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `names` varchar(255) NOT NULL COMMENT '称呼',
  `phone` varchar(20) NOT NULL COMMENT '电话',
  `xiaoqu` varchar(255) NOT NULL COMMENT '小区地址',
  `mianji` varchar(255) NOT NULL COMMENT '户型面积',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sheji
-- ----------------------------
INSERT INTO `sheji` VALUES ('0000000002', '', '', '', '', '2019-04-08 11:42:42');
INSERT INTO `sheji` VALUES ('0000000003', '', '', '', '', '2019-04-08 11:46:25');

-- ----------------------------
-- Table structure for `style`
-- ----------------------------
DROP TABLE IF EXISTS `style`;
CREATE TABLE `style` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of style
-- ----------------------------
INSERT INTO `style` VALUES ('0000000001', '现代简约风格');
INSERT INTO `style` VALUES ('0000000002', '新古典风格');
INSERT INTO `style` VALUES ('0000000003', '新中式风格');
INSERT INTO `style` VALUES ('0000000004', '东南亚风格');
INSERT INTO `style` VALUES ('0000000005', '地中海风格');

-- ----------------------------
-- Table structure for `system_auth`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `system_auth_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  PRIMARY KEY (`id`),
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统角色与节点绑定';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for `system_config`
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`),
  KEY `index_system_config_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统参数配置';

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('1', 'app_name', '尺渡后台管理');
INSERT INTO `system_config` VALUES ('2', 'site_name', '');
INSERT INTO `system_config` VALUES ('3', 'app_version', '');
INSERT INTO `system_config` VALUES ('4', 'site_copy', '2014 - 2017 江西九江亿元科技有限公司 www.yumaodian.com 版权所有,御猫店网店转让平台');
INSERT INTO `system_config` VALUES ('5', 'browser_icon', 'http://service.thinkadmin.top/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('6', 'tongji_baidu_key', '');
INSERT INTO `system_config` VALUES ('7', 'miitbeian', '粤ICP备16006642号-2');
INSERT INTO `system_config` VALUES ('8', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('9', 'storage_local_exts', 'png,jpg,rar,doc,icon,mp4');
INSERT INTO `system_config` VALUES ('10', 'storage_qiniu_bucket', '');
INSERT INTO `system_config` VALUES ('11', 'storage_qiniu_domain', '');
INSERT INTO `system_config` VALUES ('12', 'storage_qiniu_access_key', '');
INSERT INTO `system_config` VALUES ('13', 'storage_qiniu_secret_key', '');
INSERT INTO `system_config` VALUES ('47', 'sign_type', 'MD5');
INSERT INTO `system_config` VALUES ('48', 'input_charset', 'utf-8');
INSERT INTO `system_config` VALUES ('49', 'service', 'create_direct_pay_by_user');
INSERT INTO `system_config` VALUES ('50', 'payment_type', '1');
INSERT INTO `system_config` VALUES ('61', 'img', '');
INSERT INTO `system_config` VALUES ('62', 'wximg', '/static/upload/78a9bdf5144165ae/c989cf33295cda31.jpg');
INSERT INTO `system_config` VALUES ('64', 'sms_user', '');
INSERT INTO `system_config` VALUES ('65', 'sms_pwd', '');
INSERT INTO `system_config` VALUES ('66', 'sms_prefix', '');
INSERT INTO `system_config` VALUES ('67', 'sms_phone', '');
INSERT INTO `system_config` VALUES ('72', 'urlname', '尺渡后台管理');
INSERT INTO `system_config` VALUES ('73', 'keywords', '网站关键词，网站关键词，网站关键词，网站关键词，网站关键词，网站关键词，');
INSERT INTO `system_config` VALUES ('74', 'description', '网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，网站描述，');
INSERT INTO `system_config` VALUES ('75', 'icon', '/static/upload/967b4537d937030e/62cfee19c8e8ee68.png');
INSERT INTO `system_config` VALUES ('76', 'addhtml', '');
INSERT INTO `system_config` VALUES ('77', 'logo', '/static/upload/f68dd4128884d68c/d7b580b171cb5969.png');
INSERT INTO `system_config` VALUES ('78', 'wb', '');
INSERT INTO `system_config` VALUES ('79', 'mobile', '075589255009');
INSERT INTO `system_config` VALUES ('80', 'mobileimg', '/static/upload/7365ecab9072b8b4/20ed1a612f251cee.png');
INSERT INTO `system_config` VALUES ('81', 'lng', '114.306812');
INSERT INTO `system_config` VALUES ('82', 'lat', '31.590857');

-- ----------------------------
-- Table structure for `system_log`
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('1', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-05 10:54:37');
INSERT INTO `system_log` VALUES ('2', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-08 16:20:19');
INSERT INTO `system_log` VALUES ('3', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-09 09:21:05');
INSERT INTO `system_log` VALUES ('4', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-14 11:40:13');
INSERT INTO `system_log` VALUES ('5', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-19 11:34:21');
INSERT INTO `system_log` VALUES ('6', '127.0.0.1', 'admin/config/file', 'admin', '系统管理', '系统参数配置成功', '2018-05-19 11:54:49');
INSERT INTO `system_log` VALUES ('7', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 11:05:20');
INSERT INTO `system_log` VALUES ('8', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:07:38');
INSERT INTO `system_log` VALUES ('9', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:07:47');
INSERT INTO `system_log` VALUES ('10', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:07:57');
INSERT INTO `system_log` VALUES ('11', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:08:13');
INSERT INTO `system_log` VALUES ('12', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:08:27');
INSERT INTO `system_log` VALUES ('13', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:08:34');
INSERT INTO `system_log` VALUES ('14', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:08:49');
INSERT INTO `system_log` VALUES ('15', '127.0.0.1', 'admin/login/index', '1111', '系统管理', '用户登录系统成功', '2018-05-26 15:08:56');
INSERT INTO `system_log` VALUES ('16', '127.0.0.1', 'admin/login/out', '1111', '系统管理', '用户退出系统成功', '2018-05-26 15:09:09');
INSERT INTO `system_log` VALUES ('17', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:09:14');
INSERT INTO `system_log` VALUES ('18', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-26 15:20:47');
INSERT INTO `system_log` VALUES ('19', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-26 15:20:56');
INSERT INTO `system_log` VALUES ('20', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-26 15:21:16');
INSERT INTO `system_log` VALUES ('21', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 15:21:26');
INSERT INTO `system_log` VALUES ('22', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-26 17:51:18');
INSERT INTO `system_log` VALUES ('23', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-27 17:53:29');
INSERT INTO `system_log` VALUES ('24', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 09:09:51');
INSERT INTO `system_log` VALUES ('25', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-28 17:55:52');
INSERT INTO `system_log` VALUES ('26', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-28 17:56:03');
INSERT INTO `system_log` VALUES ('27', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-28 17:56:18');
INSERT INTO `system_log` VALUES ('28', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 17:56:23');
INSERT INTO `system_log` VALUES ('29', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-28 17:58:15');
INSERT INTO `system_log` VALUES ('30', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-28 17:58:25');
INSERT INTO `system_log` VALUES ('31', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-28 17:58:39');
INSERT INTO `system_log` VALUES ('32', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-28 17:58:44');
INSERT INTO `system_log` VALUES ('33', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 17:59:45');
INSERT INTO `system_log` VALUES ('34', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 17:59:58');
INSERT INTO `system_log` VALUES ('35', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-28 18:00:47');
INSERT INTO `system_log` VALUES ('36', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:02:41');
INSERT INTO `system_log` VALUES ('37', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 09:05:42');
INSERT INTO `system_log` VALUES ('38', '127.0.0.1', 'admin/login/index', 'gaopan', '系统管理', '用户登录系统成功', '2018-05-29 09:05:53');
INSERT INTO `system_log` VALUES ('39', '127.0.0.1', 'admin/login/out', 'gaopan', '系统管理', '用户退出系统成功', '2018-05-29 09:06:14');
INSERT INTO `system_log` VALUES ('40', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 09:06:19');
INSERT INTO `system_log` VALUES ('41', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 14:07:58');
INSERT INTO `system_log` VALUES ('42', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 14:09:06');
INSERT INTO `system_log` VALUES ('43', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:40:11');
INSERT INTO `system_log` VALUES ('44', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:58:39');
INSERT INTO `system_log` VALUES ('45', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:58:54');
INSERT INTO `system_log` VALUES ('46', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-05-29 14:59:50');
INSERT INTO `system_log` VALUES ('47', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:13:23');
INSERT INTO `system_log` VALUES ('48', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 15:14:26');
INSERT INTO `system_log` VALUES ('49', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:14:39');
INSERT INTO `system_log` VALUES ('50', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-05-29 15:23:56');
INSERT INTO `system_log` VALUES ('51', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 15:24:12');
INSERT INTO `system_log` VALUES ('52', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-29 20:08:18');
INSERT INTO `system_log` VALUES ('53', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 09:07:53');
INSERT INTO `system_log` VALUES ('54', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-30 23:26:08');
INSERT INTO `system_log` VALUES ('55', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-05-31 09:16:08');
INSERT INTO `system_log` VALUES ('56', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-01 10:53:57');
INSERT INTO `system_log` VALUES ('57', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-02 13:23:00');
INSERT INTO `system_log` VALUES ('58', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-02 18:00:33');
INSERT INTO `system_log` VALUES ('59', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:05:09');
INSERT INTO `system_log` VALUES ('60', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:05:20');
INSERT INTO `system_log` VALUES ('61', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:11:51');
INSERT INTO `system_log` VALUES ('62', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:20:49');
INSERT INTO `system_log` VALUES ('63', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:21:30');
INSERT INTO `system_log` VALUES ('64', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:35:49');
INSERT INTO `system_log` VALUES ('65', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:36:01');
INSERT INTO `system_log` VALUES ('66', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:36:12');
INSERT INTO `system_log` VALUES ('67', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:36:26');
INSERT INTO `system_log` VALUES ('68', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:42:58');
INSERT INTO `system_log` VALUES ('69', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:43:28');
INSERT INTO `system_log` VALUES ('70', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:44:10');
INSERT INTO `system_log` VALUES ('71', '182.84.63.106', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-04 09:59:31');
INSERT INTO `system_log` VALUES ('72', '182.84.63.106', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 09:59:40');
INSERT INTO `system_log` VALUES ('73', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-04 10:18:45');
INSERT INTO `system_log` VALUES ('74', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:26:42');
INSERT INTO `system_log` VALUES ('75', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:34:59');
INSERT INTO `system_log` VALUES ('76', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:36:46');
INSERT INTO `system_log` VALUES ('77', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 09:37:56');
INSERT INTO `system_log` VALUES ('78', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:52:58');
INSERT INTO `system_log` VALUES ('79', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:53:18');
INSERT INTO `system_log` VALUES ('80', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 09:53:50');
INSERT INTO `system_log` VALUES ('81', '59.172.122.154', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:28:29');
INSERT INTO `system_log` VALUES ('82', '115.152.48.112', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-05 10:30:32');
INSERT INTO `system_log` VALUES ('83', '115.152.48.112', 'admin/login/index', 'jinjie', '系统管理', '用户登录系统成功', '2018-06-05 10:30:47');
INSERT INTO `system_log` VALUES ('84', '115.152.48.112', 'admin/login/out', 'jinjie', '系统管理', '用户退出系统成功', '2018-06-05 10:31:44');
INSERT INTO `system_log` VALUES ('85', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:31:55');
INSERT INTO `system_log` VALUES ('86', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 10:47:54');
INSERT INTO `system_log` VALUES ('87', '59.172.122.154', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-06-05 10:48:10');
INSERT INTO `system_log` VALUES ('88', '115.152.48.112', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-06-05 10:50:54');
INSERT INTO `system_log` VALUES ('89', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 10:51:04');
INSERT INTO `system_log` VALUES ('90', '115.152.48.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 13:20:46');
INSERT INTO `system_log` VALUES ('91', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-05 17:37:06');
INSERT INTO `system_log` VALUES ('92', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-14 10:12:46');
INSERT INTO `system_log` VALUES ('93', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 10:08:22');
INSERT INTO `system_log` VALUES ('94', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 10:25:37');
INSERT INTO `system_log` VALUES ('95', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-20 13:44:14');
INSERT INTO `system_log` VALUES ('96', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-22 10:47:57');
INSERT INTO `system_log` VALUES ('97', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-23 15:35:25');
INSERT INTO `system_log` VALUES ('98', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-06-25 11:33:04');
INSERT INTO `system_log` VALUES ('99', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-07-02 11:07:50');
INSERT INTO `system_log` VALUES ('100', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-07-16 16:07:33');
INSERT INTO `system_log` VALUES ('101', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-08-13 15:01:37');
INSERT INTO `system_log` VALUES ('102', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-11 11:44:01');
INSERT INTO `system_log` VALUES ('103', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-11 17:20:49');
INSERT INTO `system_log` VALUES ('104', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-12 08:52:21');
INSERT INTO `system_log` VALUES ('105', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-15 14:52:12');
INSERT INTO `system_log` VALUES ('106', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-16 14:37:51');
INSERT INTO `system_log` VALUES ('107', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-17 13:09:09');
INSERT INTO `system_log` VALUES ('108', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-10-31 13:48:30');
INSERT INTO `system_log` VALUES ('109', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 15:19:05');
INSERT INTO `system_log` VALUES ('110', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-02 15:23:28');
INSERT INTO `system_log` VALUES ('111', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-02 16:03:48');
INSERT INTO `system_log` VALUES ('112', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-02 16:04:22');
INSERT INTO `system_log` VALUES ('113', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 08:55:47');
INSERT INTO `system_log` VALUES ('114', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 09:46:25');
INSERT INTO `system_log` VALUES ('115', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:26:07');
INSERT INTO `system_log` VALUES ('116', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:27:36');
INSERT INTO `system_log` VALUES ('117', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:27:49');
INSERT INTO `system_log` VALUES ('118', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 10:30:01');
INSERT INTO `system_log` VALUES ('119', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 10:39:39');
INSERT INTO `system_log` VALUES ('120', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 10:47:31');
INSERT INTO `system_log` VALUES ('121', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:00:01');
INSERT INTO `system_log` VALUES ('122', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:03:26');
INSERT INTO `system_log` VALUES ('123', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 11:04:17');
INSERT INTO `system_log` VALUES ('124', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-03 11:45:51');
INSERT INTO `system_log` VALUES ('125', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 13:48:56');
INSERT INTO `system_log` VALUES ('126', '27.18.180.225', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2018-11-03 13:49:59');
INSERT INTO `system_log` VALUES ('127', '125.118.109.117', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 13:53:25');
INSERT INTO `system_log` VALUES ('128', '125.118.109.117', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 14:41:51');
INSERT INTO `system_log` VALUES ('129', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-03 14:56:08');
INSERT INTO `system_log` VALUES ('130', '115.199.252.81', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-04 15:29:39');
INSERT INTO `system_log` VALUES ('131', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 17:59:16');
INSERT INTO `system_log` VALUES ('132', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 18:01:04');
INSERT INTO `system_log` VALUES ('133', '115.199.252.81', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-04 18:02:02');
INSERT INTO `system_log` VALUES ('134', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 08:57:49');
INSERT INTO `system_log` VALUES ('135', '125.120.211.181', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 10:17:58');
INSERT INTO `system_log` VALUES ('136', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 10:18:29');
INSERT INTO `system_log` VALUES ('137', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-05 10:18:39');
INSERT INTO `system_log` VALUES ('138', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 10:52:45');
INSERT INTO `system_log` VALUES ('139', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 17:35:11');
INSERT INTO `system_log` VALUES ('140', '115.199.252.81', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-05 17:44:25');
INSERT INTO `system_log` VALUES ('141', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-06 18:17:58');
INSERT INTO `system_log` VALUES ('142', '27.18.180.225', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-06 18:26:57');
INSERT INTO `system_log` VALUES ('143', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 08:50:14');
INSERT INTO `system_log` VALUES ('144', '36.61.98.124', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-07 12:39:04');
INSERT INTO `system_log` VALUES ('145', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-09 15:16:26');
INSERT INTO `system_log` VALUES ('146', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-13 10:08:05');
INSERT INTO `system_log` VALUES ('147', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 13:13:21');
INSERT INTO `system_log` VALUES ('148', '27.17.243.131', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 16:54:44');
INSERT INTO `system_log` VALUES ('149', '103.73.166.211', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 17:46:19');
INSERT INTO `system_log` VALUES ('150', '103.73.166.213', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 17:50:16');
INSERT INTO `system_log` VALUES ('151', '103.73.166.211', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-15 18:49:31');
INSERT INTO `system_log` VALUES ('152', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 09:09:26');
INSERT INTO `system_log` VALUES ('153', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 13:14:07');
INSERT INTO `system_log` VALUES ('154', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-16 13:40:47');
INSERT INTO `system_log` VALUES ('155', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-11-16 14:00:29');
INSERT INTO `system_log` VALUES ('156', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 09:18:19');
INSERT INTO `system_log` VALUES ('157', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 14:43:55');
INSERT INTO `system_log` VALUES ('158', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-17 18:04:49');
INSERT INTO `system_log` VALUES ('159', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 14:58:26');
INSERT INTO `system_log` VALUES ('160', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 15:19:10');
INSERT INTO `system_log` VALUES ('161', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 16:43:58');
INSERT INTO `system_log` VALUES ('162', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 17:05:53');
INSERT INTO `system_log` VALUES ('163', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-20 17:10:22');
INSERT INTO `system_log` VALUES ('164', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:24:50');
INSERT INTO `system_log` VALUES ('165', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-22 15:28:57');
INSERT INTO `system_log` VALUES ('166', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-23 17:53:18');
INSERT INTO `system_log` VALUES ('167', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-11-24 11:08:06');
INSERT INTO `system_log` VALUES ('168', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-15 11:18:05');
INSERT INTO `system_log` VALUES ('169', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-18 15:52:57');
INSERT INTO `system_log` VALUES ('170', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-19 10:58:54');
INSERT INTO `system_log` VALUES ('171', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-20 09:06:15');
INSERT INTO `system_log` VALUES ('172', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 09:14:04');
INSERT INTO `system_log` VALUES ('173', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-21 10:09:00');
INSERT INTO `system_log` VALUES ('174', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 09:54:57');
INSERT INTO `system_log` VALUES ('175', '61.141.255.107', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 11:49:55');
INSERT INTO `system_log` VALUES ('176', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-22 11:50:27');
INSERT INTO `system_log` VALUES ('177', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 14:25:47');
INSERT INTO `system_log` VALUES ('178', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-24 18:02:41');
INSERT INTO `system_log` VALUES ('179', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-24 18:04:13');
INSERT INTO `system_log` VALUES ('180', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 10:24:34');
INSERT INTO `system_log` VALUES ('181', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 14:27:13');
INSERT INTO `system_log` VALUES ('182', '61.144.175.52', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-25 14:27:59');
INSERT INTO `system_log` VALUES ('183', '61.144.175.52', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-25 14:35:59');
INSERT INTO `system_log` VALUES ('184', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 17:41:20');
INSERT INTO `system_log` VALUES ('185', '27.18.181.112', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-25 19:14:04');
INSERT INTO `system_log` VALUES ('186', '61.144.175.52', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 12:02:15');
INSERT INTO `system_log` VALUES ('187', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 14:09:35');
INSERT INTO `system_log` VALUES ('188', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 15:18:15');
INSERT INTO `system_log` VALUES ('189', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 17:58:19');
INSERT INTO `system_log` VALUES ('190', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-26 18:12:55');
INSERT INTO `system_log` VALUES ('191', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 09:07:33');
INSERT INTO `system_log` VALUES ('192', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 10:11:58');
INSERT INTO `system_log` VALUES ('193', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:44:31');
INSERT INTO `system_log` VALUES ('194', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 13:50:39');
INSERT INTO `system_log` VALUES ('195', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:53:18');
INSERT INTO `system_log` VALUES ('196', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:55:28');
INSERT INTO `system_log` VALUES ('197', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 13:55:55');
INSERT INTO `system_log` VALUES ('198', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 14:12:27');
INSERT INTO `system_log` VALUES ('199', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:18:08');
INSERT INTO `system_log` VALUES ('200', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:19:51');
INSERT INTO `system_log` VALUES ('201', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 14:20:24');
INSERT INTO `system_log` VALUES ('202', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:10:14');
INSERT INTO `system_log` VALUES ('203', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:12:17');
INSERT INTO `system_log` VALUES ('204', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:20:36');
INSERT INTO `system_log` VALUES ('205', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:23:01');
INSERT INTO `system_log` VALUES ('206', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:25:26');
INSERT INTO `system_log` VALUES ('207', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:25:54');
INSERT INTO `system_log` VALUES ('208', '61.144.172.126', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-27 15:31:20');
INSERT INTO `system_log` VALUES ('209', '61.144.172.126', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-27 17:38:52');
INSERT INTO `system_log` VALUES ('210', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 10:42:01');
INSERT INTO `system_log` VALUES ('211', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 11:51:03');
INSERT INTO `system_log` VALUES ('212', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 11:54:44');
INSERT INTO `system_log` VALUES ('213', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 17:24:21');
INSERT INTO `system_log` VALUES ('214', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 17:45:29');
INSERT INTO `system_log` VALUES ('215', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 17:58:30');
INSERT INTO `system_log` VALUES ('216', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:01:00');
INSERT INTO `system_log` VALUES ('217', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:13:02');
INSERT INTO `system_log` VALUES ('218', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-28 18:15:58');
INSERT INTO `system_log` VALUES ('219', '121.35.182.237', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2018-12-28 18:23:25');
INSERT INTO `system_log` VALUES ('220', '121.35.182.237', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2018-12-29 09:59:17');
INSERT INTO `system_log` VALUES ('221', '61.144.174.29', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 11:31:21');
INSERT INTO `system_log` VALUES ('222', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:36:33');
INSERT INTO `system_log` VALUES ('223', '27.18.30.68', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 11:37:14');
INSERT INTO `system_log` VALUES ('224', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:01');
INSERT INTO `system_log` VALUES ('225', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:03');
INSERT INTO `system_log` VALUES ('226', '27.18.30.68', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 11:38:49');
INSERT INTO `system_log` VALUES ('227', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:11:37');
INSERT INTO `system_log` VALUES ('228', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:14:42');
INSERT INTO `system_log` VALUES ('229', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:17:06');
INSERT INTO `system_log` VALUES ('230', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:19:31');
INSERT INTO `system_log` VALUES ('231', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:21:53');
INSERT INTO `system_log` VALUES ('232', '61.144.174.29', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-01-04 12:32:17');
INSERT INTO `system_log` VALUES ('233', '61.144.174.29', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 16:33:23');
INSERT INTO `system_log` VALUES ('234', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-01-04 16:48:01');
INSERT INTO `system_log` VALUES ('235', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-01 09:16:02');
INSERT INTO `system_log` VALUES ('236', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 09:17:45');
INSERT INTO `system_log` VALUES ('237', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 10:21:14');
INSERT INTO `system_log` VALUES ('238', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 11:29:14');
INSERT INTO `system_log` VALUES ('239', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-04-02 14:26:42');
INSERT INTO `system_log` VALUES ('240', '127.0.0.1', 'admin/config/index', 'admin', '系统管理', '系统参数配置成功', '2019-04-02 14:26:53');
INSERT INTO `system_log` VALUES ('241', '127.0.0.1', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2019-04-02 14:27:14');
INSERT INTO `system_log` VALUES ('242', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 14:27:26');
INSERT INTO `system_log` VALUES ('243', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-02 17:22:13');
INSERT INTO `system_log` VALUES ('244', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-03 10:50:09');
INSERT INTO `system_log` VALUES ('245', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-03 15:27:22');
INSERT INTO `system_log` VALUES ('246', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-04 14:35:59');
INSERT INTO `system_log` VALUES ('247', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-08 09:13:03');
INSERT INTO `system_log` VALUES ('248', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-08 09:20:53');
INSERT INTO `system_log` VALUES ('249', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-08 13:18:59');
INSERT INTO `system_log` VALUES ('250', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-08 13:34:09');
INSERT INTO `system_log` VALUES ('251', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-11 09:20:24');
INSERT INTO `system_log` VALUES ('252', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-11 09:52:50');
INSERT INTO `system_log` VALUES ('253', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-12 09:21:16');
INSERT INTO `system_log` VALUES ('254', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-12 17:46:48');
INSERT INTO `system_log` VALUES ('255', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-16 14:42:48');
INSERT INTO `system_log` VALUES ('256', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-17 09:07:44');
INSERT INTO `system_log` VALUES ('257', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-17 09:52:35');
INSERT INTO `system_log` VALUES ('258', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-17 17:10:47');
INSERT INTO `system_log` VALUES ('259', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-18 09:06:19');
INSERT INTO `system_log` VALUES ('260', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-18 13:39:44');
INSERT INTO `system_log` VALUES ('261', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-19 10:12:02');
INSERT INTO `system_log` VALUES ('262', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-19 15:58:29');
INSERT INTO `system_log` VALUES ('263', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-20 09:10:28');
INSERT INTO `system_log` VALUES ('264', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-20 15:37:47');
INSERT INTO `system_log` VALUES ('265', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-22 09:55:52');
INSERT INTO `system_log` VALUES ('266', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-04-30 09:52:07');
INSERT INTO `system_log` VALUES ('267', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-05 13:39:52');
INSERT INTO `system_log` VALUES ('268', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-05 17:46:42');
INSERT INTO `system_log` VALUES ('269', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-06 09:14:36');
INSERT INTO `system_log` VALUES ('270', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-06 09:32:38');
INSERT INTO `system_log` VALUES ('271', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-18 09:59:43');
INSERT INTO `system_log` VALUES ('272', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-21 15:51:37');
INSERT INTO `system_log` VALUES ('273', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-22 11:59:05');
INSERT INTO `system_log` VALUES ('274', '127.0.0.1', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2019-05-22 17:09:19');

-- ----------------------------
-- Table structure for `system_menu`
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('1', '0', '系统设置', '', '', '#', '', '_self', '2000', '1', '10000', '2018-01-19 15:27:00');
INSERT INTO `system_menu` VALUES ('2', '10', '后台菜单', '', 'fa fa-leaf', 'admin/menu/index', '', '_self', '10', '1', '10000', '2018-01-19 15:27:17');
INSERT INTO `system_menu` VALUES ('5', '11', '用户管理', '', 'fa fa-user', 'admin/user/index', '', '_self', '0', '1', '0', '2018-01-23 12:15:12');
INSERT INTO `system_menu` VALUES ('7', '0', '后台首页', '', '', 'admin/index/main', '', '_self', '1000', '1', '0', '2018-01-23 13:42:30');
INSERT INTO `system_menu` VALUES ('9', '10', '文件存储', '', 'fa fa-stop-circle', 'admin/config/file', '', '_self', '30', '1', '0', '2018-01-25 10:54:28');
INSERT INTO `system_menu` VALUES ('10', '1', '系统管理', '', 'fa fa-scribd', '#', '', '_self', '200', '1', '0', '2018-01-25 18:14:28');
INSERT INTO `system_menu` VALUES ('11', '1', '访问权限', '', 'fa fa-anchor', '#', '', '_self', '300', '1', '0', '2018-01-25 18:15:08');
INSERT INTO `system_menu` VALUES ('115', '11', '访问授权', '', 'fa fa-group', 'admin/auth/index', '', '_self', '0', '1', '0', '2018-12-18 15:57:58');
INSERT INTO `system_menu` VALUES ('116', '11', '访问节点', '', 'fa fa-fort-awesome', 'admin/node/index', '', '_self', '0', '1', '0', '2018-12-18 16:00:05');
INSERT INTO `system_menu` VALUES ('117', '0', '页面编辑', '', '', '#', '', '_self', '3000', '1', '0', '2018-12-18 16:28:55');
INSERT INTO `system_menu` VALUES ('118', '117', '首页轮播管理', '', 'fa fa-instagram', '#', '', '_self', '0', '1', '0', '2018-12-18 16:29:19');
INSERT INTO `system_menu` VALUES ('119', '118', '轮播图列表', '', 'fa fa-square', 'tuanj/banner/index', '', '_self', '0', '1', '0', '2018-12-18 16:29:59');
INSERT INTO `system_menu` VALUES ('120', '117', '分类管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-18 16:35:51');
INSERT INTO `system_menu` VALUES ('121', '120', '菜单栏', '', '', 'tuanj/lists/index', '', '_self', '0', '0', '0', '2018-12-18 16:36:01');
INSERT INTO `system_menu` VALUES ('122', '120', '场地分类', '', '', 'tuanj/categorys/index', '', '_self', '0', '0', '0', '2018-12-18 16:37:10');
INSERT INTO `system_menu` VALUES ('123', '120', '拓展分类', '', '', 'tuanj/condition/index', '', '_self', '0', '0', '0', '2018-12-18 16:37:49');
INSERT INTO `system_menu` VALUES ('124', '117', '项目管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-19 17:07:24');
INSERT INTO `system_menu` VALUES ('125', '124', '项目列表', '', '', 'tuanj/goods/index', '', '_self', '0', '0', '0', '2018-12-19 17:07:43');
INSERT INTO `system_menu` VALUES ('126', '117', '合作伙伴', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 10:42:54');
INSERT INTO `system_menu` VALUES ('127', '126', '伙伴列表', '', '', 'tuanj/partner/index', '', '_self', '0', '0', '0', '2018-12-21 10:43:17');
INSERT INTO `system_menu` VALUES ('128', '117', '服务团队', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 11:41:20');
INSERT INTO `system_menu` VALUES ('129', '128', '团队列表', '', '', 'tuanj/tuandui/index', '', '_self', '0', '0', '0', '2018-12-21 11:41:42');
INSERT INTO `system_menu` VALUES ('130', '117', '往期案例', '', '', '#', '', '_self', '0', '0', '0', '2018-12-21 12:05:24');
INSERT INTO `system_menu` VALUES ('131', '130', '案例列表', '', '', 'tuanj/anli/index', '', '_self', '0', '0', '0', '2018-12-21 12:05:40');
INSERT INTO `system_menu` VALUES ('132', '117', '企业新闻', '', 'fa fa-desktop', '#', '', '_self', '0', '1', '0', '2018-12-22 09:55:31');
INSERT INTO `system_menu` VALUES ('133', '132', '新闻列表', '', 'fa fa-heartbeat', 'tuanj/news/index', '', '_self', '0', '1', '0', '2018-12-22 09:55:48');
INSERT INTO `system_menu` VALUES ('134', '117', '专属定制', '', '', '#', '', '_self', '0', '0', '0', '2018-12-27 11:41:48');
INSERT INTO `system_menu` VALUES ('135', '134', '定制列表', '', '', 'tuanj/dingzhi/index', '', '_self', '0', '0', '0', '2018-12-27 11:42:11');
INSERT INTO `system_menu` VALUES ('136', '117', '底部管理', '', '', '#', '', '_self', '0', '0', '0', '2018-12-28 11:26:40');
INSERT INTO `system_menu` VALUES ('137', '136', '关于我们', '', '', 'tuanj/gywm/index', '', '_self', '0', '0', '0', '2018-12-28 11:27:06');
INSERT INTO `system_menu` VALUES ('138', '136', '帮助中心', '', '', 'tuanj/help/index', '', '_self', '0', '0', '0', '2018-12-28 11:27:28');
INSERT INTO `system_menu` VALUES ('139', '117', '投诉建议', '', 'fa fa-stop-circle', '#', '', '_self', '0', '1', '0', '2019-04-01 16:40:21');
INSERT INTO `system_menu` VALUES ('140', '139', '投诉建议列表', '', 'fa fa-building-o', '/tuanj/proposal/index', '', '_self', '0', '1', '0', '2019-04-01 16:41:08');
INSERT INTO `system_menu` VALUES ('141', '117', '设计师管理', '', 'fa fa-street-view', '#', '', '_self', '0', '1', '0', '2019-04-02 13:24:45');
INSERT INTO `system_menu` VALUES ('142', '141', '设计师擅长户型', '', 'fa fa-star', 'tuanj/huxing/index', '', '_self', '0', '1', '0', '2019-04-02 13:27:25');
INSERT INTO `system_menu` VALUES ('143', '141', '设计师擅长风格', '', 'fa fa-asterisk', 'tuanj/style/index', '', '_self', '0', '1', '0', '2019-04-02 13:27:41');
INSERT INTO `system_menu` VALUES ('144', '141', '设计师级别', '', 'fa fa-clone', '/tuanj/jibie/index', '', '_self', '0', '1', '0', '2019-04-02 13:28:02');
INSERT INTO `system_menu` VALUES ('145', '141', '设计师管理', '', 'fa fa-hand-stop-o', '/tuanj/Designer/index', '', '_self', '0', '1', '0', '2019-04-02 17:51:31');
INSERT INTO `system_menu` VALUES ('146', '117', '装修案例', '', 'fa fa-shopping-bag', '/tuanj/case/index', '', '_self', '0', '1', '0', '2019-04-03 16:38:13');
INSERT INTO `system_menu` VALUES ('147', '146', '案例地区', '', 'fa fa-credit-card-alt', '/tuanj/region/index', '', '_self', '0', '1', '0', '2019-04-03 16:40:35');
INSERT INTO `system_menu` VALUES ('148', '146', '案例面积', '', 'fa fa-archive', '/tuanj/mianji/index', '', '_self', '0', '1', '0', '2019-04-03 16:41:55');
INSERT INTO `system_menu` VALUES ('149', '117', '装修头条', '', 'fa fa-fort-awesome', '#', '', '_self', '0', '1', '0', '2019-04-03 17:13:41');
INSERT INTO `system_menu` VALUES ('151', '117', '热门楼盘', '', 'fa fa-institution', '#', '', '_self', '0', '1', '0', '2019-04-03 17:25:58');
INSERT INTO `system_menu` VALUES ('152', '151', '热门小区', '', 'fa fa-dot-circle-o', '/tuanj/remen/index', '', '_self', '0', '1', '0', '2019-04-03 17:30:13');
INSERT INTO `system_menu` VALUES ('153', '151', '楼盘案例', '', 'fa fa-hashtag', '/tuanj/caseanli/index', '', '_self', '0', '1', '0', '2019-04-08 09:43:14');
INSERT INTO `system_menu` VALUES ('154', '151', '看工地', '', 'fa fa-cloud', '/tuanj/site/index', '', '_self', '0', '1', '0', '2019-04-08 09:44:19');
INSERT INTO `system_menu` VALUES ('155', '151', '竣工实景图', '', 'fa fa-area-chart', '/tuanj/picture/index', '', '_self', '0', '1', '0', '2019-04-08 09:45:38');
INSERT INTO `system_menu` VALUES ('156', '151', '楼盘户型', '', 'fa fa-paypal', '/tuanj/apartment/index', '', '_self', '0', '1', '0', '2019-04-08 09:46:48');
INSERT INTO `system_menu` VALUES ('157', '139', '预约平面设计', '', 'fa fa-paper-plane', '/tuanj/sheji/index', '', '_self', '0', '1', '0', '2019-04-08 10:18:04');
INSERT INTO `system_menu` VALUES ('158', '117', '装修头条', '', 'fa fa-file-pdf-o', '#', '', '_self', '0', '1', '0', '2019-04-17 10:21:54');
INSERT INTO `system_menu` VALUES ('159', '158', '头条分类', '', 'fa fa-lightbulb-o', 'tuanj/newcate/index', '', '_self', '0', '1', '0', '2019-04-17 10:22:38');
INSERT INTO `system_menu` VALUES ('160', '158', '装修新闻', '', 'fa fa-pencil', 'tuanj/znews/index', '', '_self', '0', '1', '0', '2019-04-17 10:25:35');
INSERT INTO `system_menu` VALUES ('161', '132', '业主感言', '', 'fa fa-heart', 'tuanj/thank/index', '', '_self', '0', '1', '0', '2019-04-17 14:23:11');
INSERT INTO `system_menu` VALUES ('162', '117', '表单列表', '', 'fa fa-dedent', '#', '', '_self', '0', '1', '0', '2019-04-19 16:35:25');
INSERT INTO `system_menu` VALUES ('163', '162', '前台表单数据列表', '', 'fa fa-tripadvisor', 'tuanj/orderlist/index', '', '_self', '0', '1', '0', '2019-04-19 16:36:17');
INSERT INTO `system_menu` VALUES ('164', '162', '预约设计师', '', 'fa fa-user-md', 'tuanj/ydesigner/index', '', '_self', '0', '1', '0', '2019-04-20 17:30:31');
INSERT INTO `system_menu` VALUES ('166', '117', '装修自媒体', '', 'fa fa-adjust', '#', '', '_self', '0', '1', '0', '2019-05-05 13:45:19');
INSERT INTO `system_menu` VALUES ('170', '166', '媒体分类', '', 'fa fa-product-hunt', 'tuanj/mediacate/index', '', '_self', '0', '1', '0', '2019-05-18 10:35:10');
INSERT INTO `system_menu` VALUES ('171', '166', '媒体列表', '', 'fa fa-anchor', 'tuanj/medialist/index', '', '_self', '0', '1', '0', '2019-05-18 10:35:42');
INSERT INTO `system_menu` VALUES ('172', '117', '装修知识', '', 'fa fa-camera', '#', '', '_self', '0', '1', '0', '2019-05-18 11:02:35');
INSERT INTO `system_menu` VALUES ('173', '172', '知识分类', '', 'fa fa-calendar', 'tuanj/knowcate/index', '', '_self', '0', '1', '0', '2019-05-18 11:03:11');
INSERT INTO `system_menu` VALUES ('174', '172', '知识列表', '', 'fa fa-bed', 'tuanj/knowlist/index', '', '_self', '0', '1', '0', '2019-05-18 11:03:41');
INSERT INTO `system_menu` VALUES ('175', '117', '装修材料', '', 'fa fa-adjust', '#', '', '_self', '0', '1', '0', '2019-05-18 11:11:12');
INSERT INTO `system_menu` VALUES ('176', '175', '材料分类', '', 'fa fa-certificate', 'tuanj/caicate/index', '', '_self', '0', '1', '0', '2019-05-18 11:12:18');
INSERT INTO `system_menu` VALUES ('177', '175', '材料列表', '', 'fa fa-shopping-basket', 'tuanj/cailist/index', '', '_self', '0', '1', '0', '2019-05-18 11:12:46');
INSERT INTO `system_menu` VALUES ('178', '175', '#', '', 'fa fa-bullseye', '#', '', '_self', '0', '1', '0', '2019-05-18 11:13:15');
INSERT INTO `system_menu` VALUES ('179', '117', '装修风水', '', 'fa fa-cloud', '#', '', '_self', '0', '1', '0', '2019-05-18 11:20:00');
INSERT INTO `system_menu` VALUES ('180', '179', '风水分类', '', 'fa fa-credit-card', 'tuanj/fengcate/index', '', '_self', '0', '1', '0', '2019-05-18 11:20:36');
INSERT INTO `system_menu` VALUES ('181', '179', '风水列表', '', 'fa fa-fighter-jet', 'tuanj/fenglist/index', '', '_self', '0', '1', '0', '2019-05-18 11:21:31');
INSERT INTO `system_menu` VALUES ('182', '117', '装修常见问题', '', 'fa fa-gavel', '#', '', '_self', '0', '1', '0', '2019-05-18 11:22:21');
INSERT INTO `system_menu` VALUES ('183', '182', '常见问题分类', '', 'fa fa-asterisk', 'tuanj/quecate/index', '', '_self', '0', '1', '0', '2019-05-18 11:22:53');
INSERT INTO `system_menu` VALUES ('184', '182', '常见问题列表', '', 'fa fa-inbox', 'tuanj/quelist/index', '', '_self', '0', '1', '0', '2019-05-18 11:23:27');
INSERT INTO `system_menu` VALUES ('186', '117', '首页装修轮播图', '', 'fa fa-flag-checkered', '#', '', '_self', '0', '1', '0', '2019-05-18 11:41:00');
INSERT INTO `system_menu` VALUES ('187', '186', '攻略轮播图', '', 'fa fa-creative-commons', 'tuanj/save/index', '', '_self', '0', '1', '0', '2019-05-18 11:41:48');
INSERT INTO `system_menu` VALUES ('188', '117', '指尖+爱家+事', '', 'fa fa-envelope-o', '#', '', '_self', '0', '1', '0', '2019-05-18 11:42:50');
INSERT INTO `system_menu` VALUES ('189', '188', '指尖装修列表', '', 'fa fa-tree', 'tuanj/zhilist/index', '', '_self', '0', '1', '0', '2019-05-18 11:43:31');
INSERT INTO `system_menu` VALUES ('190', '117', '底部友情链接', '', 'fa fa-pencil-square-o', '#', '', '_self', '0', '1', '0', '2019-05-18 11:44:45');
INSERT INTO `system_menu` VALUES ('191', '190', '友情链接列表', '', 'fa fa-simplybuilt', 'tuanj/urls/index', '', '_self', '0', '1', '0', '2019-05-18 11:45:30');
INSERT INTO `system_menu` VALUES ('192', '188', '爱家新闻列表', '', 'fa fa-heart', 'tuanj/loves/index', '', '_self', '0', '1', '0', '2019-05-22 13:18:50');
INSERT INTO `system_menu` VALUES ('193', '188', '装修那些事新闻', '', 'fa fa-commenting', 'tuanj/things/index', '', '_self', '0', '1', '0', '2019-05-22 13:19:27');

-- ----------------------------
-- Table structure for `system_node`
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动RBAC权限控制',
  `is_login` tinyint(1) unsigned DEFAULT '1' COMMENT '是否启动登录控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('1', 'admin', '系统管理', '0', '1', '1', '2018-01-23 12:39:13');
INSERT INTO `system_node` VALUES ('2', 'admin/auth', '权限管理', '0', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('3', 'admin/auth/index', '权限列表', '1', '1', '1', '2018-01-23 12:39:14');
INSERT INTO `system_node` VALUES ('4', 'admin/auth/apply', '访问授权', '0', '1', '1', '2018-01-23 12:39:19');
INSERT INTO `system_node` VALUES ('5', 'admin/auth/add', '添加权限', '0', '1', '1', '2018-01-23 12:39:22');
INSERT INTO `system_node` VALUES ('6', 'admin/auth/edit', '编辑权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('7', 'admin/auth/forbid', '禁用权限', '0', '1', '1', '2018-01-23 12:39:23');
INSERT INTO `system_node` VALUES ('8', 'admin/auth/resume', '启用权限', '0', '1', '1', '2018-01-23 12:39:24');
INSERT INTO `system_node` VALUES ('9', 'admin/auth/del', '删除权限', '0', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('10', 'admin/config/index', '系统参数', '1', '1', '1', '2018-01-23 12:39:25');
INSERT INTO `system_node` VALUES ('11', 'admin/config/file', '文件存储', '0', '1', '1', '2018-01-23 12:39:26');
INSERT INTO `system_node` VALUES ('13', 'admin/log/index', '日志记录', '1', '1', '1', '2018-01-23 12:39:28');
INSERT INTO `system_node` VALUES ('14', 'admin/log/sms', '短信记录', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('15', 'admin/log/del', '日志删除', '0', '1', '1', '2018-01-23 12:39:29');
INSERT INTO `system_node` VALUES ('16', 'admin/menu/index', '系统菜单列表', '1', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('17', 'admin/menu/add', '添加系统菜单', '0', '1', '1', '2018-01-23 12:39:31');
INSERT INTO `system_node` VALUES ('18', 'admin/menu/edit', '编辑系统菜单', '0', '1', '1', '2018-01-23 12:39:32');
INSERT INTO `system_node` VALUES ('19', 'admin/menu/del', '删除系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('20', 'admin/menu/forbid', '禁用系统菜单', '0', '1', '1', '2018-01-23 12:39:33');
INSERT INTO `system_node` VALUES ('21', 'admin/menu/resume', '启用系统菜单', '0', '1', '1', '2018-01-23 12:39:34');
INSERT INTO `system_node` VALUES ('22', 'admin/node/index', '系统节点列表', '1', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('23', 'admin/node/save', '保存节点信息', '0', '1', '1', '2018-01-23 12:39:36');
INSERT INTO `system_node` VALUES ('24', 'admin/user/index', '系统用户列表', '1', '1', '1', '2018-01-23 12:39:37');
INSERT INTO `system_node` VALUES ('25', 'admin/user/auth', '用户授权操作', '0', '1', '1', '2018-01-23 12:39:38');
INSERT INTO `system_node` VALUES ('26', 'admin/user/add', '添加系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('27', 'admin/user/edit', '编辑系统用户', '0', '1', '1', '2018-01-23 12:39:39');
INSERT INTO `system_node` VALUES ('28', 'admin/user/pass', '修改用户密码', '0', '1', '1', '2018-01-23 12:39:40');
INSERT INTO `system_node` VALUES ('29', 'admin/user/del', '删除系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('30', 'admin/user/forbid', '禁用系统用户', '0', '1', '1', '2018-01-23 12:39:41');
INSERT INTO `system_node` VALUES ('31', 'admin/user/resume', '启用系统用户', '0', '1', '1', '2018-01-23 12:39:42');
INSERT INTO `system_node` VALUES ('32', 'admin/config', '系统配置', '0', '1', '1', '2018-01-23 13:34:37');
INSERT INTO `system_node` VALUES ('33', 'admin/log', '日志管理', '0', '1', '1', '2018-01-23 13:34:48');
INSERT INTO `system_node` VALUES ('34', 'admin/menu', '系统菜单管理', '0', '1', '1', '2018-01-23 13:34:58');
INSERT INTO `system_node` VALUES ('35', 'admin/node', '系统节点管理', '0', '1', '1', '2018-01-23 13:35:17');
INSERT INTO `system_node` VALUES ('36', 'admin/user', '系统用户管理', '0', '1', '1', '2018-01-23 13:35:26');
INSERT INTO `system_node` VALUES ('229', 'admin/node/clear', '清理无效记录', '0', '1', '1', '2018-03-09 12:24:31');
INSERT INTO `system_node` VALUES ('356', 'admin/index/index', '', '0', '1', '1', '2018-06-04 09:44:01');
INSERT INTO `system_node` VALUES ('357', 'admin/index/main', '', '0', '1', '1', '2018-06-04 09:44:02');
INSERT INTO `system_node` VALUES ('358', 'admin/index/pass', '', '0', '1', '1', '2018-06-04 09:44:02');
INSERT INTO `system_node` VALUES ('359', 'admin/index/info', '', '0', '1', '1', '2018-06-04 09:44:02');

-- ----------------------------
-- Table structure for `system_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`),
  KEY `index_system_sequence_number` (`sequence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------

-- ----------------------------
-- Table structure for `system_user`
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户登录名',
  `name` char(255) DEFAULT NULL,
  `password` char(32) NOT NULL DEFAULT '' COMMENT '用户登录密码',
  `qq` varchar(16) DEFAULT NULL COMMENT '联系QQ',
  `mail` varchar(32) DEFAULT NULL COMMENT '联系邮箱',
  `pic` char(255) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL COMMENT '联系手机号',
  `desc` varchar(255) DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned DEFAULT '0' COMMENT '登录次数',
  `login_at` datetime DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) unsigned DEFAULT '0' COMMENT '删除状态(1:删除,0:未删)',
  `create_by` bigint(20) unsigned DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_user_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('10000', 'admin', '超级管理员', '21232f297a57a5a743894a0e4a801fc3', '', '', null, '', '', '23296', '2018-03-23 17:05:40', '1', '1', '0', null, '2015-11-13 15:14:22');

-- ----------------------------
-- Table structure for `thank`
-- ----------------------------
DROP TABLE IF EXISTS `thank`;
CREATE TABLE `thank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `img` varchar(255) DEFAULT NULL COMMENT '预览图',
  `content` text COMMENT '内容',
  `laiyuan` varchar(255) NOT NULL COMMENT '新闻来源',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tuijian` int(10) unsigned DEFAULT NULL COMMENT '是否推荐首页展示',
  `jian` varchar(255) DEFAULT NULL COMMENT '内容简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thank
-- ----------------------------
INSERT INTO `thank` VALUES ('1', '这是标题这是标题这是标题这是标题这是标题', '/static/upload/380896beff3e3854/6e5852b248f4834d.png', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-22 09:58:21', '0', null);
INSERT INTO `thank` VALUES ('2', '这是标题这是标题这是标题这是标题', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-25 15:13:11', '0', null);
INSERT INTO `thank` VALUES ('3', '新闻二', '/static/upload/c2ffc38238c06cab/b10d01de88776db9.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-25 15:14:44', '0', null);
INSERT INTO `thank` VALUES ('4', '新闻1', '/static/upload/37938a28aa2151f2/5f92a35ed0db2a16.jpg', '<p>这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容这是内容</p>', '', '2018-12-25 15:15:24', '1', null);
INSERT INTO `thank` VALUES ('5', '庆祝建军90周年 “业之峰将军杯”高尔夫邀请赛圆满收杆', '/static/upload/c00e92f99cc70c8d/50ecc20d043f42d5.jpg', '<p><img border=\"0\" src=\"/static/upload/8330e1387572d0ed/1ece4328228c4002.jpg\" style=\"max-width:880px\" title=\"image\" /></p>\r\n\r\n<p>　　2017年8月1日，第五届庆八一&ldquo;业之峰将军杯&rdquo;中国将军队高尔夫邀请赛圆满结束，活动由业之峰装饰集团主办，高尔夫酒、水素水和品德装饰赞助，众多高尔夫爱好者与相关领导共同参加了此次活动，并在高尔夫俱乐部宴会厅举行了颁奖晚宴。<br />\r\n<br />\r\n　　今年是中国人民解放军建军90周年，中共中央总书记、国家主席、中央军委主席习近平在发表重要讲话时强调，人民军队的历史辉煌，是鲜血生命铸就的，永远值得我们铭记。人民军队的历史经验，是艰辛探索得来的，永远需要我们弘扬。人民军队的历史发展，是忠诚担当推动的，永远激励我们向前。中华民族实现伟大复兴，中国人民实现更加美好生活，必须加快把人民军队建设成为世界一流军队。我们要不忘初心、继续前进，坚定不移走中国特色强军之路，把强军事业不断推向前进，努力实现党在新形势下的强军目标。<br />\r\n<br />\r\n本次比赛的主办方邀请了多位中国人民解放军的老将军和国家部委老领导参加，业之峰集团董事长张钧发表了精彩的致辞。他表示，90年来，伟大的人民军队历经硝烟战火，一路披荆斩棘，付出巨大牺牲，取得一个又一个辉煌胜利，为党和人民建立了伟大的历史功勋。业之峰集团成立20年来，也一直把军民共建活动作为精神文明工作的重要内容，不断发扬军民团结、鱼水情深的光荣传统，深入持久地开展军民共建活动，这充分展示了&ldquo;和谐共建&rdquo;的新型军民关系，也进一步融洽了心连心、同呼吸、共命运的军民关系。</p>\r\n\r\n<p>&nbsp;<img alt=\"_O4A9668.jpg\" src=\"http://picfw.yzf.com.cn/2017/8/2/1763045531588.jpg\" title=\"_O4A9668.jpg\" /></p>\r\n\r\n<p>业之峰装饰董事长张钧讲话</p>\r\n\r\n<p>　　据了解，业之峰装饰已经连续五年主办高尔夫邀请赛，比赛旨在为众多注重居住品质的高球爱好者提供高端、广阔的交流平台。张钧表示，高尔夫运动所体现出的尊贵气质和优雅时尚的生活态度与业之峰装饰一直以来倡导的健康、高品质的生活方式相得益彰，高尔夫运动能完美传达出业之峰的品牌价值与理念。业之峰作为一家家装企业，重视通过建立和谐的互动关系来创造良好的社会环境。通过对高尔夫等体育赛事的支持，业之峰将健康、积极向上的精神融入企业文化，并通过比赛平台将业之峰的企业文化与更多的人分享，而这也是业之峰赞助体育赛事的初衷。<br />\r\n<br />\r\n　　经过有趣而又紧张激烈的角逐，当天的各个奖项尘埃落定。最终，将军队获得了团队冠军的最高荣誉。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '集团企划中心', '2019-04-01 15:57:08', '1', null);
INSERT INTO `thank` VALUES ('6', '业主感谢信', '/static/upload/a07f5574e0ff7899/e200669297b93c81.jpg', '<p><img border=\"0\" src=\"/static/upload/c1b7ec8a217d7cc1/f456ac2de7de2225.jpg\" style=\"max-width:880px\" title=\"image\" /></p>', '哈哈哈', '2019-04-17 15:13:00', '0', null);

-- ----------------------------
-- Table structure for `thing_list`
-- ----------------------------
DROP TABLE IF EXISTS `thing_list`;
CREATE TABLE `thing_list` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '展示图',
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thing_list
-- ----------------------------
INSERT INTO `thing_list` VALUES ('0000000009', '精致生活-二手房改造~', '/static/upload/6a77c4c5a840f626/b97488f1bc0043ff.jpg', '丰东股份第三个感受到', '<p><img data-ratio=\"0.6984375\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/0bc81140100e4f5ca9109334aa140160.jpg\" data-type=\"jpeg\" data-w=\"1280\" src=\"http://picfw3.yzf.com.cn/wx/0bc81140100e4f5ca9109334aa140160.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>本案位于南开区华苑的一处二手房改造，简约主义风格将设计的元素、色彩、照明、原材料简化到最少的程度，但对色彩、材料的质感要求很高。简约的空间设计通常非常含蓄，往往能达到以少胜多、以简胜繁的效果。但是简约并不是简单，简洁是优良品质经不断组合并筛选出来的精华，是将物体形态的通俗表象，提升凝练为一种高度浓缩、高度概括的抽象形式。简练出的新概念，摒弃传统的陈俗与浮华，它多半运用新材料、新技术、新手法，与人们的新思想、新观念相统一，达到以人为本的境界。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/a90f1c13c5db4517bbe570263da7d532.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/a90f1c13c5db4517bbe570263da7d532.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/060b7797ce384fe5869bb443ad074250.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/060b7797ce384fe5869bb443ad074250.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/b58cedf01fd34e1d8f0c96e343b82d96.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/b58cedf01fd34e1d8f0c96e343b82d96.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/242b57fc696a43b4b2e03d315c841e45.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/242b57fc696a43b4b2e03d315c841e45.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/c07879b8428349079438a90bd9287c5a.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/c07879b8428349079438a90bd9287c5a.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/c6277246d17b4fc8bf628e694f52c3f8.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/c6277246d17b4fc8bf628e694f52c3f8.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"0.75\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/f57707ba1f90437d90f53876bb6ca7d7.jpg\" data-type=\"jpeg\" data-w=\"1240\" src=\"http://picfw3.yzf.com.cn/wx/f57707ba1f90437d90f53876bb6ca7d7.jpg\" /></p>', '2019-05-22 14:32:27');
INSERT INTO `thing_list` VALUES ('0000000010', '【阿里员工的事件】还不够引起你对“环保家装”的重视吗？', '/static/upload/3ceb1cfbd2dee41a/b1807e19fa34fe12.jpg', '发生过大范甘迪', '<p>9月1日，一篇名为《阿里P7员工得白血病身故，生前租了自如甲醛房》的公众号文章引起广泛关注。文章称，该员工因病去世，是因为生前租住的自如房间甲醛严重超标。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img data-ratio=\"1.7763636363636364\" data-src=\"http://picfw3.yzf.com.cn/wx/e40e14762932408e93846afcfd331e1f.jpg\" data-type=\"jpeg\" data-w=\"550\" src=\"http://picfw3.yzf.com.cn/wx/e40e14762932408e93846afcfd331e1f.jpg\" title=\"1535877074947442.jpg\" /></p>\r\n\r\n<p>为此，其家属通过第三方检测机构检测结果显示，房内客厅、主卧和储藏室的甲醛浓度值均高于国家规定。在入驻此出租房前阿里员工做过体检，结果证明其身体无异样。</p>\r\n\r\n<p><img data-ratio=\"0.7545454545454545\" data-src=\"http://picfw3.yzf.com.cn/wx/d07e49de1b144f9d9382195689b31e50.jpg\" data-type=\"jpeg\" data-w=\"550\" src=\"http://picfw3.yzf.com.cn/wx/d07e49de1b144f9d9382195689b31e50.jpg\" title=\"1535878798837382.jpg\" /></p>\r\n\r\n<section>\r\n<section data-width=\"100%\">\r\n<section>\r\n<p>针对此事，小编仅代表个人对其人表示悲痛，愿世间再无病痛，愿逝者亲人能得到相应的补偿。</p>\r\n\r\n<p>人生在世，有太多的牵挂，嗷嗷待哺的孩子，年迈的父母，更有大好的世界等着我们去转转~</p>\r\n\r\n<section>&nbsp;</section>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section>\r\n<section>\r\n<section data-width=\"90%\"><img data-ratio=\"0.1953125\" data-src=\"http://picfw3.yzf.com.cn/wx/5486c85ae48044a3aa81c4c4bf26dece.jpg\" data-type=\"other\" data-w=\"640\" data-width=\"69%\" src=\"http://picfw3.yzf.com.cn/wx/5486c85ae48044a3aa81c4c4bf26dece.jpg\" /></section>\r\n</section>\r\n</section>\r\n\r\n<p>也许我们穷其所有，在追求财富、名誉、豪宅、名车等等，但是在生命面前这些东西都会变得不值一提；生命可以创造财富，但很多时候财富不一定能创造生命。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<section>\r\n<section>\r\n<section data-width=\"100%\">\r\n<section>\r\n<section>\r\n<section data-width=\"100%\">\r\n<section>\r\n<section>\r\n<section><img data-ratio=\"0.13848920863309352\" data-src=\"http://picfw3.yzf.com.cn/wx/4e173bb30d8942c8ad90d007b37a486b.jpg\" data-type=\"png\" data-w=\"556\" src=\"http://picfw3.yzf.com.cn/wx/4e173bb30d8942c8ad90d007b37a486b.jpg\" /></section>\r\n</section>\r\n</section>\r\n\r\n<section>\r\n<section>\r\n<section data-width=\"100%\">\r\n<section>\r\n<section>\r\n<section>\r\n<p>蓝天白云曾是我们最不在乎的，而今却成了我们最奢望的；健康平时我们大多人不怎么在乎，但是等到失去的时候我们才会醒悟。</p>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<p><img data-ratio=\"0.75\" data-src=\"http://picfw3.yzf.com.cn/wx/e3c0158941734882871e2211b7da512d.jpg\" data-type=\"jpeg\" data-w=\"500\" src=\"http://picfw3.yzf.com.cn/wx/e3c0158941734882871e2211b7da512d.jpg\" title=\"1535878569473854.jpg\" /></p>\r\n\r\n<p>装修产生有害物质这已经是公开的秘密了，装修材料中或多或少的会有一些化学物质有损我们的健康，这点目前的科技能力也无能为力，我们唯一能做的就是把这种伤害降到最低。</p>\r\n\r\n<p>小编认为，<strong>房子装修最重要的是环保</strong>，不在乎多豪华，多漂亮。装修房子找一家更环保的高端装饰吧，有没有赞同的？<img data-ratio=\"1.4055636896046853\" data-src=\"http://picfw3.yzf.com.cn/wx/68f54b3afb5d4b609eb3101e3de7e712.jpg\" data-type=\"jpeg\" data-w=\"1366\" src=\"http://picfw3.yzf.com.cn/wx/68f54b3afb5d4b609eb3101e3de7e712.jpg\" title=\"1535878945857613.jpg\" /></p>\r\n\r\n<p><strong>中华人民共和国环境部颁发的环保&ldquo;十环认证&rdquo;证书</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>业之峰装饰专注环保装修21年</strong></p>\r\n\r\n<p><img data-copyright=\"0\" data-ratio=\"0.9087591240875912\" data-s=\"300,640\" data-src=\"http://picfw3.yzf.com.cn/wx/0b1d016df0f44ca2bcd226171ea54c29.jpg\" data-type=\"jpeg\" data-w=\"822\" src=\"http://picfw3.yzf.com.cn/wx/0b1d016df0f44ca2bcd226171ea54c29.jpg\" /></p>\r\n\r\n<p><img data-ratio=\"1.7838235294117648\" data-src=\"http://picfw3.yzf.com.cn/wx/17c94e2c87ac48e398c087c9dea779b8.jpg\" data-type=\"jpeg\" data-w=\"680\" src=\"http://picfw3.yzf.com.cn/wx/17c94e2c87ac48e398c087c9dea779b8.jpg\" title=\"1535879464312525.jpg\" /></p>\r\n\r\n<p>业之峰采用高科技产品&mdash;&mdash;负氧离子触发器，正是让居室环境更加环保的重要保证。&ldquo;负氧离子触发剂&rdquo;能够在紫外线、自然光或日光灯等光线的作用下，有效分解空气中的有机有害气体和细菌等有害物，降解甲醛、苯、氨、TVOC等污染物，使室内空气达到清新、健康的状况。</p>\r\n\r\n<p><strong>业之峰装饰承诺</strong></p>\r\n\r\n<p><strong>环保不达标&nbsp; 全额退款</strong></p>\r\n\r\n<p><strong>做环保装修，我们是认真的</strong></p>\r\n\r\n<p><img data-ratio=\"1.8514705882352942\" data-src=\"http://picfw3.yzf.com.cn/wx/8877080948434ae29602a6fa04c32597.jpg\" data-type=\"jpeg\" data-w=\"680\" src=\"http://picfw3.yzf.com.cn/wx/8877080948434ae29602a6fa04c32597.jpg\" title=\"1535016037518246.jpg\" /></p>\r\n\r\n<section>\r\n<section>\r\n<section>\r\n<section>\r\n<section>\r\n<section>\r\n<section>\r\n<section>\r\n<p><strong>业之峰</strong></p>\r\n\r\n<p><strong>/更环保的高端装饰</strong></p>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n</section>\r\n\r\n<section>\r\n<section>\r\n<section>\r\n<section data-color=\"#888\">\r\n<p><img data-ratio=\"0.035483870967741936\" data-src=\"http://picfw3.yzf.com.cn/wx/275e49b5a6d342699976a87c57752ef0.jpg\" data-type=\"png\" data-w=\"620\" src=\"http://picfw3.yzf.com.cn/wx/275e49b5a6d342699976a87c57752ef0.jpg\" width=\"556\" /></p>\r\n\r\n<p><strong>21年专注环保装修</strong></p>\r\n\r\n<p><strong>129个城市的装修领航</strong></p>\r\n\r\n<p><strong>3000多家设计店面精品设计</strong></p>\r\n\r\n<p><strong>20万家庭的装修选择&mdash;&mdash;业之</strong><strong>峰装饰</strong></p>\r\n\r\n<p><strong>业之峰数十载传承的精神让我们不敢懈怠</strong></p>\r\n\r\n<p><strong>感谢您21年来的陪伴、支持与信赖</strong></p>\r\n\r\n<p><strong>有些感触尽在不言中</strong></p>\r\n\r\n<p><img data-ratio=\"0.028125\" data-src=\"http://picfw3.yzf.com.cn/wx/e665d9080b3042328a7f6885321a4694.jpg\" data-type=\"png\" data-w=\"640\" src=\"http://picfw3.yzf.com.cn/wx/e665d9080b3042328a7f6885321a4694.jpg\" width=\"556\" /></p>\r\n</section>\r\n</section>\r\n</section>\r\n</section>', '2019-05-22 14:33:03');

-- ----------------------------
-- Table structure for `tousu`
-- ----------------------------
DROP TABLE IF EXISTS `tousu`;
CREATE TABLE `tousu` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tousu` int(10) unsigned NOT NULL COMMENT '0投诉或者 1 建议',
  `human` int(10) unsigned NOT NULL COMMENT '0先生 1女士',
  `phone` varchar(200) NOT NULL COMMENT '联系方式',
  `content` text NOT NULL COMMENT '内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '提交时间',
  `names` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tousu
-- ----------------------------
INSERT INTO `tousu` VALUES ('0000000015', '1', '1', '哈哈哈', '和京津冀', '2019-04-01 18:18:39', 'false');
INSERT INTO `tousu` VALUES ('0000000014', '0', '0', '4698884989', '海洋天堂', '2019-04-01 18:17:34', 'false');
INSERT INTO `tousu` VALUES ('0000000004', '0', '0', '4698884989', '方法分别', '2019-04-01 17:41:12', null);
INSERT INTO `tousu` VALUES ('0000000005', '0', '0', '465465', '法规股', '2019-04-01 17:42:53', null);
INSERT INTO `tousu` VALUES ('0000000006', '0', '0', '1894988919', '赶回家看见', '2019-04-01 17:43:46', null);
INSERT INTO `tousu` VALUES ('0000000007', '0', '0', '也有一条鱼', '更过分过分的', '2019-04-01 17:45:22', null);
INSERT INTO `tousu` VALUES ('0000000008', '1', '1', '465465', '456546546546', '2019-04-01 18:04:22', null);
INSERT INTO `tousu` VALUES ('0000000009', '1', '1', '465465', '海兽祭祀你', '2019-04-01 18:05:33', null);
INSERT INTO `tousu` VALUES ('0000000010', '1', '0', '梅赛德斯肯定可', '564654', '2019-04-01 18:08:28', null);
INSERT INTO `tousu` VALUES ('0000000011', '1', '1', '14869541226', '是的撒娇的骄傲', '2019-04-01 18:10:44', null);
INSERT INTO `tousu` VALUES ('0000000012', '1', '1', '哈哈哈', '太突然', '2019-04-01 18:13:13', null);
INSERT INTO `tousu` VALUES ('0000000013', '1', '0', '18665459511', '价格会', '2019-04-01 18:15:23', 'false');
INSERT INTO `tousu` VALUES ('0000000016', '0', '0', '鹅鹅鹅', '对对对对', '2019-04-01 18:22:06', 'false');
INSERT INTO `tousu` VALUES ('0000000017', '1', '1', '4698884989', '个非官方个', '2019-04-01 18:25:40', '碎屏');

-- ----------------------------
-- Table structure for `tuandui`
-- ----------------------------
DROP TABLE IF EXISTS `tuandui`;
CREATE TABLE `tuandui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `zhiwei` varchar(100) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `pingpai` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuandui
-- ----------------------------
INSERT INTO `tuandui` VALUES ('1', '0', '鹿晗', '/static/upload/b0901da5f80517c9/425385604cf3a9cf.jpg', '执行专员', '其实我小时候最大梦想是踢球，后来足球的梦想破灭了以后，逼不得已选择了第二条路当上了艺人...他让太多90后、00后能在他身上找到某一个部分的自己，每一个虽然普通但依然想要发光发热不愿意平庸的自己！嗯…也许这就是鹿晗这个“现象级超级人气偶像IP”存在的意义！', '深圳大学，深圳国税，中国银行', '2018-12-21 11:43:34');
INSERT INTO `tuandui` VALUES ('2', '0', '张艺兴', '/static/upload/65b5c38acf105b75/238d9e841cbbc6ec.jpg', '执行专员', '张艺兴（LAY），1991年10月7日出生于湖南省长沙市，内地流行男歌手、影视演员，男子演唱组合EXO/EXO-M中国籍成员。2005年， 张艺兴参加湖南经视《明星学院》比赛并获得总决赛季军。2008年，通过S.M. Casting System在中国的选拔成为韩国SM公司旗下练习生。2012年4月，以EXO团体和其子队EXO-M成员身份正式出道', '#', '2018-12-25 15:34:48');
INSERT INTO `tuandui` VALUES ('3', '0', '戚薇', '/static/upload/da113d9eb997e2a9/02d7f18ed3e635c2.jpg', '团建专员', '戚薇，1984年10月26日出生于四川省成都市武侯区，中国内地女演员、歌手，毕业于浙江传媒学院录音艺术专业。2006年因参加选秀节目《我型我秀》而正式出道，同年与袁成杰组成“男才女貌”组合，并凭借歌曲《外滩十八号》在歌坛获得关注。2010年因参演古装剧《美人心计》而被观众所熟知。2011年主演都市情感剧《夏家三千金》；同年签约海蝶音乐，并发行首张个人EP《如果爱忘了》', '#', '2018-12-25 15:36:28');
INSERT INTO `tuandui` VALUES ('4', '0', '柳岩', '/static/upload/d7ef011455cc87c6/0479b2669c784cc5.jpg', '团建专员', '柳岩（Ada），1980年11月8日出生于湖南衡阳，中国内地女演员、歌手、主持人。2000年，柳岩担任广东有线广播电视台信息频道《财经新闻》主持人，从而开始了她的主持生涯。2002年，参加湖南公共频道生活时尚资讯类节目《太太抢鲜看》的录制，担任主持人。2004年，担任广东卫视资讯栏目《粤港澳零距离》主播。2005年，柳岩签约光线传媒。2007年，出演个人首部电影《画皮》，从而正式进入演艺圈', '#', '2018-12-25 15:38:01');
INSERT INTO `tuandui` VALUES ('5', '0', '刘亦菲', '/static/upload/daefbd349ba1c45b/482665075411f1c6.jpg', '团建专员', '刘亦菲，1987年8月25日出生于湖北省武汉市，华语影视女演员、歌手，毕业于北京电影学院2002级表演系本科班。2002年主演个人首部电视剧《金粉世家》，从而踏入演艺圈。2003年因主演武侠剧《天龙八部》崭露头角。2004年凭借仙侠剧《仙剑奇侠传》赵灵儿一角获得了高人气与关注度。', '#', '2018-12-25 15:44:05');
INSERT INTO `tuandui` VALUES ('6', '0', '杰森·斯坦森', '/static/upload/06e21299a97314aa/bab68483fa9dc692.jpg', '团建教练', '1992年，杰森·斯坦森作为英国国家跳水队运动员代表英国参加了第十二届世界跳水冠军赛，获得了第12名 [1]  。1998年，杰森出演了盖伊·里奇的犯罪电影《两杆大烟枪》，进入演艺圈。2002年，杰森开始担任电影《非常人贩》系列电影的男主角。2008年，他加盟了电影《敢死队》。2013年4月，全球健美杂志《Men', '#', '2018-12-25 15:45:45');
INSERT INTO `tuandui` VALUES ('8', '0', '范·迪塞尔', '/static/upload/f9d8d6cc26e2e69e/bd9dcc776caed094.jpg', '团建教练', '范·迪塞尔（Vin Diesel），1967年7月18日出生于美国纽约，美国电影演员，制片人。 1999年，自制短片担任演员参加戛纳电影节得奖，并得到大导演史蒂文·斯皮尔伯格赏识邀请其参加战争片《拯救大兵瑞恩》的演出。在出演《速度与激情》系列电影后成为好莱坞明星。2005年，他出演喜剧片《神勇奶爸》。', '#', '2018-12-25 15:51:48');
INSERT INTO `tuandui` VALUES ('7', '0', '吴亦凡', '/static/upload/0084f13e38c93b8b/fdcc5e53510792a8.jpg', '团建教练', '吴亦凡（Kris），1990年11月6日出生于广东省广州市，华语影视男演员、流行乐歌手。2007年，吴亦凡加入了韩国SM娱乐公司。2012年作为EXO组合成员正式出道，担任EXO/EXO-M队长、主Rapper、门面。2014年5月15日，吴亦凡正式向首尔中央地方法院请求判决与SM娱乐公司专属合同无效。之后吴亦凡回归中国发展，出演个人首部电影，担任徐静蕾执导的电影《有一个地方只有我们知道》男主角', '#', '2018-12-25 15:48:08');
INSERT INTO `tuandui` VALUES ('9', '0', '汤姆•克鲁斯', '/static/upload/1998af7148d5e65e/22320bb137e754df.jpg', '团建教练', '汤姆·克鲁斯（Tom Cruise），1962年7月3日出生于美国纽约州，美国电影演员、电影制片人。 1981年，汤姆·克鲁斯进入演艺圈。1983年凭借《乖仔也疯狂》首获金球奖最佳男主角提名。1986年凭借《壮志凌云》成名，并于同年10月16日留名好莱坞星光大道。1988年与达斯汀·霍夫曼合作电影《雨人》。1990年，汤姆·克鲁斯主演电影《生于七月四日》，首次获得奥斯卡金像奖最佳男主角提名。', '#', '2018-12-25 15:54:18');
INSERT INTO `tuandui` VALUES ('10', '0', '尼古拉斯·凯奇', '/static/upload/efde1ce2a23c4d26/1a12ec0ec2ccba97.jpg', '团建教练', '1982年，17岁的尼古拉斯·凯奇进入电影行业，出演影片《开放的美国学府》。1984年，凯奇主演了影片《鸟人》。1988年，他出演了《吸血鬼之吻》。1992年，他凭借影片《我心狂野》中的表演，获得了第43届戛纳电影节金棕榈大奖。1996年，他主演的动作片《勇闯夺命岛》，并凭借《离开拉斯维加斯》中的酒鬼一角获得当年奥斯卡最佳男主角奖。而后出演《变脸》、《空中监狱》等动作片。', '#', '2018-12-25 15:55:30');

-- ----------------------------
-- Table structure for `yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `channel` varchar(100) NOT NULL COMMENT '预约类型',
  `names` varchar(100) NOT NULL,
  `phone` char(12) NOT NULL,
  `xiao` varchar(100) NOT NULL,
  `square` varchar(100) NOT NULL,
  `shi` varchar(200) DEFAULT NULL,
  `ting` varchar(200) DEFAULT NULL,
  `wei` varchar(200) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `chu` varchar(200) DEFAULT NULL COMMENT '厨房',
  `tai` varchar(200) DEFAULT NULL COMMENT '阳台',
  `status` int(10) unsigned DEFAULT NULL COMMENT '是否领取过礼包 0=》no 1=》yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('0000000001', '设计师报价计算器', '简介', '18672536680', '哈哈哈', '155', '', '', '', null, null, null, null);
INSERT INTO `yuyue` VALUES ('0000000002', '预约设计', '简介', '18672536680', '看看', '125', '', '', '', null, null, null, null);
INSERT INTO `yuyue` VALUES ('0000000003', '预约设计', '简介', '18672536680', '看看', '125', '', '', '', null, null, null, null);
INSERT INTO `yuyue` VALUES ('0000000004', '预约设计', '方法', '18672536680', '看看', '125', '', '', '', null, null, null, null);
INSERT INTO `yuyue` VALUES ('0000000005', '预约设计', '方法', '13258974121', '看看', '155', '', '', '', null, null, null, null);
INSERT INTO `yuyue` VALUES ('0000000006', '预约设计', '简介', '1867253668', '我也不知', '188', '', '', '', null, null, null, null);
INSERT INTO `yuyue` VALUES ('0000000022', '您的户型', '简介', '18672536680', '快快快', '188', '3室', '4厅', '3卫', '2019-04-19 15:19:19', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000023', '您的户型', '简介', '18672536685', '那你', '200', '5室', '6厅', '3卫', '2019-04-19 15:20:33', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000024', '您的户型', '简介', '18672536680', 'FF ', '188', '4室', '3厅', '3卫', '2019-04-19 15:21:16', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000025', '您的户型', '你', '18547896327', '', '', '', '', '', '2019-04-19 15:36:42', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000026', '您的户型', '你是', '15896314789', '', '', '', '', '', '2019-04-19 15:37:56', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000027', '您的户型', '你是', '15896314789', '', '', '', '', '', '2019-04-19 15:38:32', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000028', '您的户型', '点点点', '15823741158', '', '', '', '', '', '2019-04-19 15:41:10', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000029', '您的户型', '无聊', '18672569922', '天润', '155', '', '', '', '2019-04-19 15:42:36', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000030', '您的户型', '无聊', '18672536699', '天润', '156', '', '', '', '2019-04-19 15:43:43', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000031', '您的户型', 'wuliao ', '18675369988', '天润', '180', '', '', '', '2019-04-19 15:46:07', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000032', '您的户型', '', '18672539988', '', '155', '', '', '', '2019-04-19 16:29:30', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000033', '您的户型', '', '18672539988', '', '158', '', '', '', '2019-04-19 16:30:29', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000034', '您的户型', '', '18677759696', '', '198', '', '', '', '2019-04-19 16:33:22', '', '', null);
INSERT INTO `yuyue` VALUES ('0000000035', '获取装修报价', '许家印', '18688888880', '恒大', '58', '', '', '', '2019-04-19 16:56:45', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000036', '获取楼盘专属优惠', '张三丰', '18672536680', 'false', '', '', '', '', '2019-04-20 11:46:02', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000037', '获取楼盘专属优惠', '简介', '18672536680', '看看', '', '', '', '', '2019-04-20 11:51:41', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000038', '获取楼盘专属优惠', '简介', '18672536699', '我也不知', '', '', '', '', '2019-04-20 11:53:28', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000039', '设计师报价计算器', '', '18677759696', '', '155', '', '', '', '2019-04-20 12:02:42', '', '', null);
INSERT INTO `yuyue` VALUES ('0000000040', '预约设计', 'wuliao ', '18675369988', '不咋地', '', '', '', '', '2019-04-20 16:06:37', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000041', '获取详情报价', '你好', '18672536699', '恒大公馆', '152', '', '', '', '2019-04-20 16:15:07', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000042', '装修计算器', '', '18948478956', '', '188', '', '', '', '2019-04-20 16:24:22', '', '', null);
INSERT INTO `yuyue` VALUES ('0000000043', '装修计算器', '', '18927341185', '', '230', '', '', '', '2019-04-20 16:26:11', '', '', null);
INSERT INTO `yuyue` VALUES ('0000000044', '装修计算器', '', '18948478954', '', '230', '3室', '1厅', '1卫', '2019-04-20 16:33:45', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000045', '装修计算器', '', '18948478999', '', '235', '3室', '3厅', '2卫', '2019-04-20 16:34:56', '3厨', '2阳台', null);
INSERT INTO `yuyue` VALUES ('0000000046', '获取楼盘专属优惠', '简介', '18672536680', '看看', '', null, null, null, '2019-04-20 16:49:00', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000047', '申请五零靠谱工程特权', '你是谁', '18672533997', '恒大', '158', '', '', '', '2019-04-20 17:03:55', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000048', '申请五零靠谱工程特权', '你是谁', '18672533997', '恒大', '158', '', '', '', '2019-04-20 17:05:21', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000049', '申请五零靠谱工程特权', '你是谁', '18672533998', '恒大', '167', '', '', '', '2019-04-20 17:05:46', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000050', '攻略站报价计算器', '', '18652369988', '', '158', '3室', '1厅', '1卫', '2019-04-20 17:21:54', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000051', '攻略站报价计算器', '', '18652369988', '', '158', '6室', '1厅', '3卫', '2019-04-20 17:26:35', '1厨', '3阳台', null);
INSERT INTO `yuyue` VALUES ('0000000052', '装修计算器', '', '18948478956', '', '188', '3室', '1厅', '', '2019-04-20 17:54:59', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000053', '装修费用比例', '', '18652369988', '', '158', '3室', '1厅', '1卫', '2019-04-20 18:03:20', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000054', '攻略站报价计算器', '', '15987523641', '', '188', '3室', '1厅', '1卫', '2019-04-22 09:55:42', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000055', '攻略站报价计算器', '', '15987523641', '', '158', '3室', '1厅', '1卫', '2019-04-22 13:51:47', '1厨', '2阳台', null);
INSERT INTO `yuyue` VALUES ('0000000056', '算算我家房子装修花多少钱', '', '18672539988', '', '155', '3室', '1厅', '1卫', '2019-04-22 14:50:43', null, '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000057', '算算我家房子装修花多少钱', '', '18677759696', '', '155', '4室', '1厅', '1卫', '2019-04-22 14:51:42', null, '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000058', '获取楼盘专属优惠', '飞翔的荷兰人', '18672536007', '恒大首府', '', null, null, null, '2019-04-22 16:56:25', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000068', '免费家装前三步', '你好', '13255669988', '', '', null, null, null, '2019-05-22 09:59:10', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000067', '攻略站报价计算器', '', '18672536007', '', '112', '3室', '1厅', '1卫', '2019-05-18 17:28:48', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000066', '攻略站报价计算器', '', '18672536007', '', '112', '3室', '1厅', '1卫', '2019-05-18 16:55:13', '1厨', '1阳台', null);
INSERT INTO `yuyue` VALUES ('0000000065', '官网专属礼包', '胡凯', '17786105741', '', '', null, null, null, '2019-04-22 17:12:12', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000064', '获取楼盘专属优惠', '张无忌', '18672536007', '广州恒大', '', null, null, null, '2019-04-22 17:05:31', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000069', '领取专属优惠', '', '18672536007', '恒大世纪广场', '', null, null, null, '2019-05-22 15:57:24', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000070', '领取专属优惠', '张翠山', '18672536008', '恒大世纪广场', '', null, null, null, '2019-05-22 15:58:18', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000071', '第三方环保监测', '发生过', '15627341191', '', '', null, null, null, '2019-05-22 16:04:19', null, null, null);
INSERT INTO `yuyue` VALUES ('0000000072', '预约免费平面设计', '你好', '13255669988', '恒大世纪广场', '188', '', '', '', '2019-05-22 17:08:59', null, null, null);

-- ----------------------------
-- Table structure for `yu_designer`
-- ----------------------------
DROP TABLE IF EXISTS `yu_designer`;
CREATE TABLE `yu_designer` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `channel` varchar(200) NOT NULL COMMENT '预约设计师',
  `names` varchar(200) NOT NULL COMMENT '用户名',
  `phone` char(20) NOT NULL COMMENT '联系电话',
  `style` varchar(200) NOT NULL COMMENT '喜欢风格',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yu_designer
-- ----------------------------
INSERT INTO `yu_designer` VALUES ('0000000001', '李四光', '白眉鹰王', '18523568520', '地中海风格', '2019-04-20 17:47:09');

-- ----------------------------
-- Table structure for `zhi_jian`
-- ----------------------------
DROP TABLE IF EXISTS `zhi_jian`;
CREATE TABLE `zhi_jian` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhi_jian
-- ----------------------------
INSERT INTO `zhi_jian` VALUES ('0000000001', '防水工程（二次闭水实验）', '防水工程（二次闭水实验）', '/static/upload/0d76d3e327825696/1681e4e99add769f.jpg', '', '2019-05-18 15:20:10');
INSERT INTO `zhi_jian` VALUES ('0000000002', '交底', '交底', '/static/upload/10080e2382bdccbb/6fc3e14d75949edd.jpg', '', '2019-05-18 15:20:31');

-- ----------------------------
-- Table structure for `z_news`
-- ----------------------------
DROP TABLE IF EXISTS `z_news`;
CREATE TABLE `z_news` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL COMMENT '关联头条分类id',
  `title` varchar(200) NOT NULL COMMENT '新闻标题',
  `img` varchar(255) NOT NULL COMMENT '新闻展示图',
  `content` text NOT NULL,
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '新闻来源',
  `liulan` int(10) unsigned DEFAULT NULL COMMENT '浏览量',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tuijian` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐为热门文章 0=》否 1=》是',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of z_news
-- ----------------------------
INSERT INTO `z_news` VALUES ('0000000001', '1', '厨具买什么的比较好', '/static/upload/8204b5f3caaaf434/348d86a97f423fac.jpg', '<p>双立人:德国，一线品牌。主打生产刀具，近年来也跟着别的品牌开始做做炒锅、汤锅之类的。线下的一套刀具可以买几款好的不锈钢锅了。<br />\r\nWMF&nbsp;:德国，一线品牌。主打汤锅，种类比较齐全。价格线和双立人差不多，各自设计不一样。<br />\r\n菲仕乐:德国，一线品牌，线上好像没有卖，线下和双立人、WMF等竞争。但前段时间由于伪造生产产地而被工商整顿。<br />\r\n国外餐厨具品牌高端的大概就这些，其实说是国外的牌子，其实很多也是国内的厂家代工一部分的。譬如在德国生产个手柄，拿到国内配个锅身等等就贴上国外生产，菲仕乐就是最好的例子。</p>\r\n\r\n<p><img alt=\"厨具.jpg\" src=\"http://picfw3.yzf.com.cn/zt/2018/5/11/2006757107629.jpg\" title=\"厨具.jpg\" />国内品牌<br />\r\n爱仕达:&nbsp;各种材料的厨具的做，比较杂。纯不锈钢产品很少，手柄之类的很多用了电木/硅胶，所以质保、工艺和感观上令到价格大打折扣，比较低端。<br />\r\nLINKFAIR&nbsp;:就是你说的品牌，中文名是凌丰，国际上与WMF、双立人、菲仕乐等一线品牌竞争。因为这个企业才20<br />\r\n多年的历史且主要是出口,国内知名度比较低。但在行业内比较盛名，出口连年都是第一，由于在广交会很瞩目，很多大品牌都找其代工和贴牌近年来在国内开始打市场比较有潜力的企业。LINKMATH好像也是它的系列品牌，<br />\r\nLINKLIFE好像是人家仿冒的。<br />\r\n主打炒锅，7层不锈钢炒锅全球首家，但较贵。不锈钢产品比较齐全，价格线稍比双立人等低一点，工艺差不多的。如果喜欢其设计不妨支持一下国内牌子。<br />\r\n康宁:&nbsp;多为玻璃锅具比较有特色耐久度有待甚酌，也是不错的企业。<br />\r\n还有其它杂牌的:譬如涂层的不粘锅。涂了工业漆的不粘锅是真的不粘，但一般用几个月到一年就好了用久了健康会有问题。<br />\r\n其实不锈钢餐厨具价格高低不一的主要反映在其产品的重亮和厚度有的可能虽然同为304材料，但其用材的量就决定了价格高低。</p>', '', '0', '2019-04-17 11:32:11', '0');
INSERT INTO `z_news` VALUES ('0000000002', '1', '厨具买什么的比较好', '/static/upload/8204b5f3caaaf434/348d86a97f423fac.jpg', '<p>双立人:德国，一线品牌。主打生产刀具，近年来也跟着别的品牌开始做做炒锅、汤锅之类的。线下的一套刀具可以买几款好的不锈钢锅了。<br />\r\nWMF&nbsp;:德国，一线品牌。主打汤锅，种类比较齐全。价格线和双立人差不多，各自设计不一样。<br />\r\n菲仕乐:德国，一线品牌，线上好像没有卖，线下和双立人、WMF等竞争。但前段时间由于伪造生产产地而被工商整顿。<br />\r\n国外餐厨具品牌高端的大概就这些，其实说是国外的牌子，其实很多也是国内的厂家代工一部分的。譬如在德国生产个手柄，拿到国内配个锅身等等就贴上国外生产，菲仕乐就是最好的例子。</p>\r\n\r\n<p><img alt=\"厨具.jpg\" src=\"http://picfw3.yzf.com.cn/zt/2018/5/11/2006757107629.jpg\" title=\"厨具.jpg\" />国内品牌<br />\r\n爱仕达:&nbsp;各种材料的厨具的做，比较杂。纯不锈钢产品很少，手柄之类的很多用了电木/硅胶，所以质保、工艺和感观上令到价格大打折扣，比较低端。<br />\r\nLINKFAIR&nbsp;:就是你说的品牌，中文名是凌丰，国际上与WMF、双立人、菲仕乐等一线品牌竞争。因为这个企业才20<br />\r\n多年的历史且主要是出口,国内知名度比较低。但在行业内比较盛名，出口连年都是第一，由于在广交会很瞩目，很多大品牌都找其代工和贴牌近年来在国内开始打市场比较有潜力的企业。LINKMATH好像也是它的系列品牌，<br />\r\nLINKLIFE好像是人家仿冒的。<br />\r\n主打炒锅，7层不锈钢炒锅全球首家，但较贵。不锈钢产品比较齐全，价格线稍比双立人等低一点，工艺差不多的。如果喜欢其设计不妨支持一下国内牌子。<br />\r\n康宁:&nbsp;多为玻璃锅具比较有特色耐久度有待甚酌，也是不错的企业。<br />\r\n还有其它杂牌的:譬如涂层的不粘锅。涂了工业漆的不粘锅是真的不粘，但一般用几个月到一年就好了用久了健康会有问题。<br />\r\n其实不锈钢餐厨具价格高低不一的主要反映在其产品的重亮和厚度有的可能虽然同为304材料，但其用材的量就决定了价格高低。</p>', '哈哈哈', '0', '2019-04-17 10:59:33', '0');
INSERT INTO `z_news` VALUES ('0000000003', '2', '买了精装房该怎么验房？小心别被坑哭了', '/static/upload/85dc8a127eddfc83/89ca25cb32f7d1ce.jpg', '<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp; &nbsp;精装房初衷是给业主带来方便与省心。但是，部分装修质量不符合验收标准的情况，比如地板平整度超标、踢脚板松动、涂装毛糙，这些问题在精装修楼盘中比比皆是。没了装修的麻烦，不代表完全没有装修漏洞的困扰，精装房也有很多验收要注意的点，大家赶紧一起来看看。</p>\r\n\r\n<p><img src=\"http://picfw.yzf.com.cn/2018/3/12/1954744707465.jpg\" /></p>\r\n\r\n<p>一、准备工作</p>\r\n\r\n<p>验房是件辛苦的事情，开始前准备工作一定要做好，这样验房才能心里有个底。购房合同一定要具备，合同附件也不能大意，比如小区分布图，约定细则等。带尺寸的房型图纸在验房前都应准备好，不仅是房子的平面布置图，电路、水路图纸也应当齐全。材料确认单也是验收时不可缺少的，材料的品牌、款式和型号，验收时需要核对。</p>\r\n\r\n<p>二、结构验收</p>\r\n\r\n<p>看房屋结构是否与合同相符，如发现不符一定要在入住前提出，如果只是非结构性问题，交接时可如实做好书面记录，要求房地产商书面承诺在一定时限内进行维修。要对房子整体进行检查，核对面积、位置朝向、测公用面积，有差错及时交涉。</p>\r\n\r\n<p>三、水电煤验收</p>\r\n\r\n<p>1.、的上下道要仔细检查。看排水管道是否顺畅，上水管是否存在渗漏现象。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2.检查配路和。可直接打开所有的灯，看是否全亮。带个检查插座是否都有电。</p>\r\n\r\n<p><img src=\"http://picfw.yzf.com.cn/2018/3/12/1954744709169.jpg\" /></p>\r\n\r\n<p>3.检查墙砖和是否空鼓。随意敲敲、地砖，听声音就可以了。如果出现很多空鼓，说明存在质量问题。4.检查木工制品以及油漆工制品。观察木制品是否变形、接缝处是否开裂、五金件安装是否端正牢固、墙壁是否出现开裂现象。</p>\r\n\r\n<p>5.边角和隐蔽的地方仔细检查。注意卫生间口是否有挡水条、窗户是否有雨水流入、插座面板是否存在划痕、五金安装位置是否合理。</p>\r\n\r\n<p>6.检查煤气管道。一般情况下煤气管道走明管，这样一旦有煤气泄露能及时发现，便于维修，不留安全隐患，验房时顺便检验水、电、的度数是否为零。</p>\r\n\r\n<p>7.煤气设备验收。通常精装房都会选择相对质量有保证的品牌产品，本身质量不会有大问题，施工这时就显得重要了。我们不仅要验收产品质量，还要验收安装。检查安装是否牢固，煤气连接是否通畅，点燃后是否有异味等等。</p>\r\n\r\n<p>四、门窗验收验</p>\r\n\r\n<p>收门、窗、梯门、窗、梯是室内装修的重点组成部分，除了美观，实用也很重要。要注意检验门框贴面板与墙面是否平行，门扇合叶要灵活，关闭后应当严密。门安装好后，可以拉住把手摇动来检测。铝合金材质的窗要求安装必须牢固，端正。</p>', '', '0', '2019-04-22 13:27:09', '1');
INSERT INTO `z_news` VALUES ('0000000004', '3', '装修过程中业主应做哪些工作?', '/static/upload/8330e1387572d0ed/1ece4328228c4002.jpg', '<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; 业主在装修过程中需要做的工作比较少，主要是配合装修公司施工。比如在装修过程的过程中不可避免地会给邻里的正常生活造成一定影响，协调好邻里关系就是业主应该做的工作了。还有，涉及到和物业公司协调的一些事务也应该属于业主的责任范围。除了这些，一般正规的装修公司会在施工现场派驻施工监理人员，业主需要注意的是装修公司的监理人员是否真正起到了应有的监理作用，下面简单介绍一下监理人员应做的施工管理工作内容，以便你查看监理人员是否切实负起了责任。</p>\r\n\r\n<p><img alt=\"01.jpg\" src=\"http://picfw.yzf.com.cn/zt/2018/2/5/1924681022747.jpg\" title=\"01.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;(1)装修施工日期的控制及施工的顺序安排。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;(2)注意施工现场的卫生情况，工地需及时判扫、清洁施工垃圾应当天清运。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;(3)妥当处理水泥浆，以免造成装修后排水管道的堵塞或不畅。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;(4)注意施工现场安全、油漆等易燃物是否妥善堆放，要有&ldquo;防患于末然&rdquo;的意识。</p>\r\n\r\n<p>&nbsp; &nbsp;(5)是否做好已经就位的材料的保护工作，不应在木地板或石材面上进行切割作业。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;(6)注意油漆过程中的通风问题及施工中废气、灰尘的排放。</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;(7)施工中应检测水电设施及相关容量，以防发生水管爆裂、电线短路等现象。</p>', '尺渡装饰', '0', '2019-04-17 13:39:28', '1');
INSERT INTO `z_news` VALUES ('0000000005', '2', '沙发怎么挑选，有哪些禁忌', '/static/upload/a07f5574e0ff7899/e200669297b93c81.jpg', '<article data-author=\"Wxeditor\" id=\"m48\">\r\n<p>&nbsp;沙发是人们生活中的第二张床，盘腿坐、斜躺着、趴着、歪着坐怎样都可以，这是我们的一方净土，这可是家中不可取代的第二天堂啊！如果沙发挑得不好，可是会影响自己的舒服程度与幸福度的。来了解了解什么样的沙发适合自己吧。沙发类型的选择</p>\r\n</article>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1、皮革沙发是最受中国家庭欢迎的一款沙发，它能带来的长久舒适不会因为时间流逝而消失。</p>\r\n\r\n<p>2、亚麻布艺沙发，透气性好，能够吸收潮气，而且越用越软。</p>\r\n\r\n<p>3、高靠背沙发的海绵层贴合身体轮廓，让腰椎和颈部得到充分舒适的承托，坐久了也不觉得累。</p>\r\n\r\n<p>&nbsp;沙发毯和靠枕的魅力</p>\r\n\r\n<p>1、这些纺织配件不仅能增加你的舒适体验度，还能为沙发增加柔软温暖的感觉。</p>\r\n\r\n<p>2、混合几种不同颜色、材质、形状的配件，装饰了空间的整体氛围，营造出带新意的沙发角落。</p>\r\n\r\n<p><br data-filtered=\"filtered\" />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"446.jpg\" height=\"475\" src=\"http://picfw4.yzf.com.cn/zt/2018/4/10/1979794933644.jpg\" title=\"446.jpg\" width=\"678\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<article data-author=\"Wxeditor\" id=\"m48\">\r\n<p>其它小贴士</p>\r\n</article>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1、不一定要大沙发，单人沙发和双人沙发的组合灵活轻巧，更适合多人聚会。</p>\r\n\r\n<p>2、把沙发换成扶手椅也可以，只要自己坐得舒服，就OK了。</p>\r\n\r\n<p>3、带有强大收纳功能的榻榻米沙发是小户型房子的不错选择。</p>\r\n\r\n<p><br data-filtered=\"filtered\" />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"5ae-c.jpg\" src=\"http://picfw4.yzf.com.cn/zt/2018/4/10/1979795310966.jpg\" title=\"5ae-c.jpg\" />&nbsp;</p>\r\n\r\n<p>4、配合方便移动的边桌，让沙发的功能更丰满，坐在那里什么都随手可得，懒人就有懒人的聪明生活法。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<article data-author=\"Wxeditor\" id=\"m48\">\r\n<p>摆设宜弯不宜直</p>\r\n</article>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;沙发在客厅中的重要地位，犹如国家的重要港口，必须能尽量多纳水，才可兴旺起来。优良的港口必定两旁有伸出的弯位，形如英文字母的&ldquo;U&rdquo;字。伸出的弯位犹如两臂左右护持兜抱，而中心凹陷之处正是风水的纳气位，能藏风聚气，以达致丁财两旺。</p>\r\n\r\n<p><br data-filtered=\"filtered\" />\r\n<br data-filtered=\"filtered\" />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"22(2).jpg\" src=\"http://picfw4.yzf.com.cn/zt/2018/4/10/1979796516262.jpg\" title=\"22(2).jpg\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<article data-author=\"Wxeditor\" id=\"m48\">\r\n<p>沙发背后有可靠墙</p>\r\n</article>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;所谓有靠，亦即靠山，是指沙发背后有实墙可靠。如果沙发背后是窗、门或通道，亦等于背后无靠山，从心理学方面来说，沙发背后空荡荡，缺少安全感。倘若沙发背后确实没有实墙可靠，较为有效的改善方法是，把矮柜或屏风摆放在沙发背后，这称为&ldquo;人造靠山&rdquo;，亦会起到补救作用。<br data-filtered=\"filtered\" />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"1636267212066790c-d.jpg\" src=\"http://picfw4.yzf.com.cn/zt/2018/4/10/1979797517002.jpg\" title=\"1636267212066790c-d.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 但有一点必须注意，沙发背后不宜有水，因此把鱼缸摆放在沙发背后也不利。同理，在沙发背后的矮柜上摆放鱼缸等有水的装饰摆设也不好。当然，背后无靠的沙发，若用长绿植物来填补背后的空间则有益无害。<br data-filtered=\"filtered\" />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<article data-author=\"Wxeditor\" id=\"m48\">\r\n<p>沙发背后不宜有镜子</p>\r\n</article>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; 沙发背后不宜有大镜，人坐在沙发上，旁人从镜子中可清楚看到坐者的后脑，便大为不妙。而若是镜子在旁不在后，后脑不会从镜子中反照出来便无妨。<br data-filtered=\"filtered\" />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;要远离喧嚣，不一定要行走至千里之外，选择一件合适的家具，让自己在家能享受安宁与舒适。家居风水，卧室是重中之重，但是客厅也不能含糊，客厅最显眼，最主要的家具便是沙发了，所以沙发风水也不得不讲究。客厅搭配好沙发，可比卧室，因为沙发承载着一家人生活，一家人在沙发上看看电视，聊聊生活琐事，这是人们的调味剂，调味品。也是人们休息的禁区，人们下班回家的依靠。</p>', '', '0', '2019-04-17 13:32:27', '1');
