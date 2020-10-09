/*
Navicat MySQL Data Transfer

Source Server         : localhost_2007
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : zhe800

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-10-09 17:00:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `burl` varchar(255) NOT NULL,
  `surl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'https://z2.tuanimg.com/imagev2/site/951x304.1a7d85bcf7f52b22b62ad05c81407b80.951x304+1-1.951x304.jpg', 'https://z2.tuanimg.com/imagev2/site/320x320.6ff9d8dd952561f3ffeda1afd80320a2.320x320.png;https://z2.tuanimg.com/imagev2/site/320x320.1260438392332e988fa92e3384416dc7.320x320.png');
INSERT INTO `banner` VALUES ('2', 'https://z2.tuanimg.com/imagev2/site/950x304.1a009e4d172e4273944a0aed3253c348.951x304+1-1.951x304.jpg', 'https://z2.tuanimg.com/imagev2/site/320x320.326e6880c413ccd9cf8efeeed2c41528.320x320.png;https://z2.tuanimg.com/imagev2/site/320x320.208a4458b845fe51ee7751335aeeb453.320x320.png');
INSERT INTO `banner` VALUES ('3', 'https://z2.tuanimg.com/imagev2/site/950x304.8400267db6492be754ff14676c81165e.951x304+1-1.951x304.jpg', 'https://z2.tuanimg.com/imagev2/site/320x320.821661aea2b9a7fc88fd211fc8653af4.320x320.png;https://z2.tuanimg.com/imagev2/site/320x320.1d66cee38d6a96b6144c3736fcec1f8f.320x320.png');
INSERT INTO `banner` VALUES ('4', 'https://z2.tuanimg.com/imagev2/site/950x304.5842f238b9397a5a302557c68c125f67.951x304+1-1.951x304.jpg', 'https://z2.tuanimg.com/imagev2/site/320x320.821661aea2b9a7fc88fd211fc8653af4.320x320.png;https://z2.tuanimg.com/imagev2/site/320x320.1d66cee38d6a96b6144c3736fcec1f8f.320x320.png');
INSERT INTO `banner` VALUES ('5', 'https://z2.tuanimg.com/imagev2/site/951x304.8b39e08727a680aa591ea893f34dc67d.951x304+1-1.951x304.jpg', 'https://z2.tuanimg.com/imagev2/site/320x320.6ff9d8dd952561f3ffeda1afd80320a2.320x320.png;https://z2.tuanimg.com/imagev2/site/320x320.1260438392332e988fa92e3384416dc7.320x320.png');

-- ----------------------------
-- Table structure for `goodslist`
-- ----------------------------
DROP TABLE IF EXISTS `goodslist`;
CREATE TABLE `goodslist` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(999) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` float(7,2) unsigned NOT NULL,
  `sailnumber` tinyint(3) unsigned NOT NULL,
  `piclisturl` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodslist
-- ----------------------------
INSERT INTO `goodslist` VALUES ('1', 'https://img.alicdn.com/bao/uploaded/i2/30402319/O1CN011Rl7oM1T093vmCPUu_!!0-item_pic.jpg_200x200q90.jpg_.webp', '木邻 北欧电视柜现代简约小户型白橡木樱桃木客厅家具实木电视柜', '99.00', '15', 'https://img.alicdn.com/bao/uploaded/i2/30402319/O1CN011Rl7oM1T093vmCPUu_!!0-item_pic.jpg_200x200q90.jpg_.webp,https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i2/TB1gHopsOAKL1JjSZFoYXGgCFXa_M2.SS2_200x200q90.jpg_.webp', '怀孕期居家无钢圈中长款宽松孕妇打底衫长袖打底t恤上衣女秋冬装', '39.00', '22', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/i4/307116571/TB2vHgNaeUkyKJjSsphXXbdaVXa_!!307116571.jpg_200x200q90.jpg_.webp', '高帮男女运动拳击贴肤软鞋沙滩鞋溯溪涉水防滑游泳潜水浮潜漂流鞋', '35.84', '33', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/i3/110713146/O1CN01mxyc7H1Z6ubjKHiO2_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '一次性吸管整箱6000支可弯饮料果汁豆浆吸管', '59.00', '112', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/i1/2275024826/TB2xNbvdxlmpuFjSZPfXXc9iXXa_!!2275024826.jpg_200x200q90.jpg_.webp', '正品墨西哥5A净水蓝珀手串纯天然蜜蜡佛珠琥珀圆珠单圈手链男女款', '58.99', '10', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i3/2056173505/TB1SPKxfuSSBuNjy0FlXXbBpVXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', '夏季透气洞洞鞋女沙滩鞋防滑轻便鸟巢拖鞋户外速干涉水鞋女度假鞋', '19.99', '88', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('9', 'https://img.alicdn.com/bao/uploaded/i4/TB1d5OEGFXXXXbFXFXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '折叠懒人沙发 可爱创意日式榻榻米 客厅卧室飘窗组合随心拼沙发椅', '250.00', '99', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('10', 'https://img.alicdn.com/bao/uploaded/i2/1598695834/TB21g63bbZnBKNjSZFGXXbt3FXa_!!1598695834.jpg_200x200q90.jpg_.webp', '北欧单人现代简约布艺懒人小户型沙发迷你阳台卧室拆洗休闲沙发椅', '228.00', '102', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('11', 'https://img.alicdn.com/bao/uploaded/i1/874114626/TB2M4dsg6uhSKJjSspjXXci8VXa_!!874114626.jpg_200x200q90.jpg_.webp', '多功能布艺床上懒人沙发单人飘窗榻榻米网咖电脑无腿可调节折叠椅', '218.00', '42', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('12', 'https://img.alicdn.com/bao/uploaded/i3/43844436/O1CN01PWybgq1idjXJyMYCd_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '美克美家公园大道美式轻奢实木圆餐桌软包实', '2759.00', '38', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('13', 'https://gma.alicdn.com/bao/uploaded/i3/1756006063748529324/TB2iD.PtbVkpuFjSspcXXbSMVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '对抗服足球篮球训练背心成人儿童分队组训练', '12.00', '123', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('14', 'https://gma.alicdn.com/bao/uploaded/i4/15394837/O1CN01v962me1lbOJCKSnFq_!!0-saturn_solar.jpg_200x200.jpg_.webp', '电动洗鼻器壶机仪冲鼻水流喷雾窦腔成人儿童', '77.00', '99', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('15', 'https://gma.alicdn.com/bao/uploaded/i4/15394837/O1CN01WDhG3z1lbOJXP9x4S_!!0-saturn_solar.jpg_200x200.jpg_.webp', '美国SinuPulse洗鼻仪洗鼻瓶洗鼻壶', '123.00', '12', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('16', 'https://gma.alicdn.com/bao/uploaded/i3/324010021/O1CN01ZmGWv41C1euHnoSMT_!!0-saturn_solar.jpg_200x200.jpg_.webp', '美国NOWFIT艾尔健椭圆机', '89.00', '22', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('17', 'https://gma.alicdn.com/bao/uploaded/i1/43610982/O1CN01HeUhk31J7nWXh4xoS_!!0-saturn_solar.jpg_200x200.jpg_.webp', '羽毛球服套装男女款乒乓球夏跑步运动服定制', '35.00', '66', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('18', 'https://gma.alicdn.com/bao/uploaded/i2/28340651/O1CN01DXWul61GgCQgFRmI7_!!0-saturn_solar.jpg_200x200.jpg_.webp', '跪乳羊秋季运动会儿童校服套装小学生运动服', '442.00', '89', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('19', 'https://img.alicdn.com/bao/uploaded/i1/2378279334/TB1BQpcSVXXXXajaXXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '新娘敬酒服2020新款时尚短款宴会聚会结婚红色连衣裙修身显瘦礼服', '110.00', '56', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('20', 'https://img.alicdn.com/bao/uploaded/i3/46463752/O1CN01SYVAP91daSd03NhYu_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '预售kikc连帽风衣2019秋季新款', '379.00', '33', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('21', 'https://img.alicdn.com/bao/uploaded/i1/212939229/TB1vkxrihTI8KJjSspiXXbM4FXa_!!0-item_pic.jpg_200x200q90.jpg_.webp', 'Debbie Bliss Rialto Lace 荷叶披肩 毛线DIY材料包 送中文图解', '256.00', '24', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('22', 'https://img.alicdn.com/bao/uploaded/i3/TB1vR00NXXXXXc7XFXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '敬酒服新娘旗袍2020新款夏季短款中式礼服红色新娘秀禾服小个子女', '56.00', '44', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('23', 'https://img.alicdn.com/bao/uploaded/i3/2023859078/TB2YqBZXxZIL1JjSZFNXXXupXXa_!!2023859078.jpg_200x200q90.jpg_.webp', '新款影楼拖尾婚纱礼服主题摄影写真拍照轻纱服装艺考演出蓬蓬裙女', '635.00', '98', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');
INSERT INTO `goodslist` VALUES ('24', 'https://img.alicdn.com/bao/uploaded/i4/120414676/O1CN01d7VzLg1kPeakz0OJm_!!0-saturn_solar.jpg_200x200q90.jpg_.webp', '仙宝丽小金条口红变色唇膏淡化唇纹滋润', '356.00', '45', 'https://img14.360buyimg.com/n0/jfs/t1/97930/20/9251/822007/5e0ca9a6Ebc107a6a/901ea4294766a519.jpg,https://img14.360buyimg.com/n0/jfs/t1/99787/12/15307/462251/5e71d9a0E26a4bc4e/4ee2896480163f35.jpg,https://img14.360buyimg.com/n0/jfs/t1/532/9/13392/537220/5bd6eb13Eae01c935/d87e6991f75f1688.jpg,https://img14.360buyimg.com/n0/jfs/t1/58489/11/11167/141623/5d819923E1441a6c4/79db6ceaa5336ae1.jpg,https://img14.360buyimg.com/n0/jfs/t1/86171/29/12424/222525/5e468c1aEacfc1e21/f045f08d261190c4.jpg,https://img14.360buyimg.com/n0/jfs/t1/100129/19/12222/178227/5e468c1aE1336f6d4/6da398568c903dbf.jpg,https://img14.360buyimg.com/n0/jfs/t1/56799/34/14516/37546/5db6fa74E94f48843/26f29c6b44b8ad51.jpg,https://img14.360buyimg.com/n0/jfs/t1/44818/32/14628/308183/5db6fa73E01ba7e0d/a8f66ea91442c2d7.jpg,https://img14.360buyimg.com/n0/jfs/t1/85044/38/1045/375785/5db6fa74Ee849c480/d30f68af836b7aec.jpg');

-- ----------------------------
-- Table structure for `jrgx`
-- ----------------------------
DROP TABLE IF EXISTS `jrgx`;
CREATE TABLE `jrgx` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `day` tinyint(4) NOT NULL,
  `zhekou` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jrgx
-- ----------------------------
INSERT INTO `jrgx` VALUES ('1', 'https://z8.tuanimg.com/imagev2/zhaoshang/600x600.bc0c0ea68e2de515196f5ce93f57bde7.380x380.jpg', '卓图品质女装上新专场', '6', '满1件4.5折');
INSERT INTO `jrgx` VALUES ('2', 'https://z2.tuanimg.com/imagev2/zhaoshang/800x800.05d5a107d062fb28400d000594cfe455.380x380.jpg', '唐狮女装2.5折清仓钜惠', '6', '满1件2.5折');
INSERT INTO `jrgx` VALUES ('3', 'https://z2.tuanimg.com/imagev2/zhaoshang/800x800.78f7a50b7c14f03638a4e48e1ae63a9a.380x380.jpg', '铂誉精品特惠专场', '5', '满1件2.5折');
INSERT INTO `jrgx` VALUES ('4', 'https://z3.tuanimg.com/imagev2/zhaoshang/600x600.204f5f5124106a0ef1227d6376639b39.380x380.jpg', '洛茵思秋装上新专场', '6', '满1件2.5折');
INSERT INTO `jrgx` VALUES ('5', 'https://z3.tuanimg.com/imagev2/zhaoshang/600x600.ff8e54175cf65fb3f79644e573d9fece.380x380.jpg', '森诗璐国潮大码底价购专场', '5', '底价嗨购');
INSERT INTO `jrgx` VALUES ('6', 'https://z3.tuanimg.com/imagev2/trade/800x800.d0942cef61c7f2f6e9160ba3586a5afa.380x380.jpg', '卡卡电脑配件好物专场', '6', '¥3.9-¥189');
INSERT INTO `jrgx` VALUES ('7', 'https://z8.tuanimg.com/imagev2/zhaoshang/600x600.e9575a68cd9f896570e3ea5f03ce2862.380x380.jpg', '凯思克户外特卖专场', '4', '满2件8折');
INSERT INTO `jrgx` VALUES ('8', 'https://z2.tuanimg.com/imagev2/zhaoshang/600x600.146733e3c9b147e107538c394d240079.380x380.jpg', 'MLB大牌棒球帽专场', '6', '满1件6折');
INSERT INTO `jrgx` VALUES ('9', 'https://z8.tuanimg.com/imagev2/trade/800x800.6220ab92c6127a8a8d82ca4b13c0fb11.380x380.jpg', '纳实生活小家电特惠', '6', '满79元减5,满150元减10');
INSERT INTO `jrgx` VALUES ('10', 'https://z2.tuanimg.com/imagev2/zhaoshang/800x800.e3c0ba3b3f4ea8ab7f4d1614dbe10127.380x380.jpg', '花花公子男装特卖专场', '5', '满1件5.5折');
INSERT INTO `jrgx` VALUES ('11', 'https://z3.tuanimg.com/imagev2/zhaoshang/600x600.8cc4cade32fa425d92be57bc0d408157.380x380.jpg', '唯唯秋装上新专场', '6', '满1件5折起');
INSERT INTO `jrgx` VALUES ('12', 'https://z2.tuanimg.com/imagev2/zhaoshang/600x600.0bcd60eed681e73f5f72fcc1fd8f8962.380x380.jpg', '毅人男装清仓特卖专场', '5', '满399元减30元');
INSERT INTO `jrgx` VALUES ('13', 'https://z2.tuanimg.com/imagev2/zhaoshang/800x800.1d893733455f25315d3463823716cbda.380x380.jpg.webp', '蜜有可外穿睡衣上新', '6', '满1件9.5折,3件9折');
INSERT INTO `jrgx` VALUES ('14', 'https://z8.tuanimg.com/imagev2/zhaoshang/790x790.3d5295bf7c835878d9b6b9c475eb0359.380x380.jpg.webp', '汇萌数码配件专场', '6', '满1件9.5折,3件9折');
INSERT INTO `jrgx` VALUES ('15', 'https://z2.tuanimg.com/imagev2/zhaoshang/600x600.c46b95432b1017d5cbb41df2c75614bc.380x380.jpg.webp', '花花公子男女鞋上新', '6', '满1件9折,满2件8.5折');
INSERT INTO `jrgx` VALUES ('16', 'https://z3.tuanimg.com/imagev2/zhaoshang/640x640.197d06d40d249e14bde84075ed98c3da.380x380.jpg.webp', '佳婴纸尿裤专场', '6', '满1件5折');
INSERT INTO `jrgx` VALUES ('17', ' https://z3.tuanimg.com/imagev2/zhaoshang/640x640.197d06d40d249e14bde84075ed98c3da.380x380.jpg.webp', '佳婴纸尿裤专场', '6', '满1件减20元');
INSERT INTO `jrgx` VALUES ('18', 'https://z2.tuanimg.com/imagev2/zhaoshang/600x600.629d0b73aefd8e376063c6db30f0b12f.380x380.jpg.webp', '铂誉精品特惠专场', '5', '满1件2.5折');
INSERT INTO `jrgx` VALUES ('19', 'https://z8.tuanimg.com/imagev2/zhaoshang/800x800.228de7b8c9f9d5535931dd2fb8fbe1de.380x380.jpg.webp', '女孩规则清仓钜惠专场', '8', '满1件3.7折');
INSERT INTO `jrgx` VALUES ('20', 'https://z8.tuanimg.com/imagev2/zhaoshang/600x600.f8da14dea759c0680597ea977c4a68d3.380x380.jpg.webp', '帝柔秋装上新特卖会', '5', '满1件4折起');

-- ----------------------------
-- Table structure for `ppjx`
-- ----------------------------
DROP TABLE IF EXISTS `ppjx`;
CREATE TABLE `ppjx` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ppjx
-- ----------------------------
INSERT INTO `ppjx` VALUES ('1', 'https://z3.tuanimg.com/imagev2/site/392x200.bbdf7e160467203b6bc680f87abc54ce.392x200+1-1.392x200.jpg', '【劳伦王子】满2件8.5折,满3件8折');
INSERT INTO `ppjx` VALUES ('2', 'https://z2.tuanimg.com/imagev2/site/392x200.65866139c0fd7d480bdde9241963e24b.392x200+1-1.392x200.jpg', '【猫人】全场5折，买到赚到');
INSERT INTO `ppjx` VALUES ('3', ' https://z3.tuanimg.com/imagev2/site/392x200.36ca998d487519d88dea97e34247f99a.392x200+1-1.392x200.jpg', '【芊艺】全场2件6.5折');

-- ----------------------------
-- Table structure for `registry`
-- ----------------------------
DROP TABLE IF EXISTS `registry`;
CREATE TABLE `registry` (
  `uid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `telphone` varchar(11) NOT NULL,
  `pw` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registry
-- ----------------------------
INSERT INTO `registry` VALUES ('2', '15088795225', '05fe7461c607c33229772d402505601016a7d0ea');
INSERT INTO `registry` VALUES ('3', '18355665881', '05fe7461c607c33229772d402505601016a7d0ea');

-- ----------------------------
-- Table structure for `rxtj`
-- ----------------------------
DROP TABLE IF EXISTS `rxtj`;
CREATE TABLE `rxtj` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rxtj
-- ----------------------------
INSERT INTO `rxtj` VALUES ('1', 'https://z3.tuanimg.com/imagev2/site/232x159.406349560b78a8e1d5135ddd0067a38c.232x159.jpg');
INSERT INTO `rxtj` VALUES ('2', 'https://z2.tuanimg.com/imagev2/site/232x159.da63031c54455b5cf502392130c88f2f.232x159.jpg');
INSERT INTO `rxtj` VALUES ('3', 'https://z2.tuanimg.com/imagev2/site/232x159.02e117f940edd396e4e4a185de2eb01b.232x159.jpg');
INSERT INTO `rxtj` VALUES ('4', 'https://z2.tuanimg.com/imagev2/site/232x159.dc8ad577f7aa87eebab78df7e1046e9a.232x159.jpg');
INSERT INTO `rxtj` VALUES ('5', 'https://z2.tuanimg.com/imagev2/site/232x159.34349c589d2a0697e2bf922d3c7021b8.232x159.jpg');

-- ----------------------------
-- Table structure for `xsms`
-- ----------------------------
DROP TABLE IF EXISTS `xsms`;
CREATE TABLE `xsms` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xsms
-- ----------------------------
INSERT INTO `xsms` VALUES ('1', 'https://z2.tuanimg.com/imagev2/trade/800x800.cb9c0026f60c9d256f7f4fea3caf8039.380x380.jpg', '99', '秋季防水登山鞋男女轻便防滑透气沙漠徒步鞋户外鞋爬山靴越野军靴', '还剩20件, 抢完恢复原价199元');
INSERT INTO `xsms` VALUES ('2', 'https://z8.tuanimg.com/imagev2/trade/800x800.adad0e1a304273eba5e46e97ddcfb45c.380x380.jpg', '89', '牧柴男士外套春秋韩版潮流新款夹克男修身休闲工装帅气棒球夹克男', '还剩20件, 抢完恢复原价199元');
INSERT INTO `xsms` VALUES ('3', 'https://z2.tuanimg.com/imagev2/trade/800x800.97714623293fbfe93d94b05fa9b243c7.380x380.jpg', '39', '圆领卫衣男2020秋季新款潮流嘻哈风长袖打底衫韩版时尚休闲男装', '还剩20件, 抢完恢复原价39元');
INSERT INTO `xsms` VALUES ('4', 'https://z8.tuanimg.com/imagev2/trade/600x600.db372456e65bbbb181c22d62793ca1d6.380x380.jpg', '13', '【5双】袜子男短袜夏季男士浅口船袜吸汗男士运动短筒男袜', '还剩20件, 抢完恢复原价13元');
INSERT INTO `xsms` VALUES ('5', 'https://z3.tuanimg.com/imagev2/trade/800x800.5f6291ab52101a5f2d7631efd6b4cf9e.380x380.jpg', '48', '2020秋冬新款高腰牛仔裤女刺绣双扣收腹显高弹力小脚长裤', '还剩20件, 抢完恢复原价48元');
INSERT INTO `xsms` VALUES ('6', 'https://z2.tuanimg.com/imagev2/trade/800x800.534bd95815f1d0fb507f64e3b4236c3a.380x380.jpg', '69', '2020年新款秋装长款轻奢名媛气质v领收腰显瘦碎花丝绒连衣裙女', '还剩20件, 抢完恢复原价69元');
INSERT INTO `xsms` VALUES ('7', 'https://z3.tuanimg.com/imagev2/trade/800x800.e104c2d4ce84d871d28e8741c29cb4a3.380x380.jpg', '25', '淮美 新款牛仔裤女高腰毛边磨破弹性显瘦小脚裤铅笔裤潮韩版长裤', '还剩20件, 抢完恢复原价25元');
INSERT INTO `xsms` VALUES ('8', 'https://z8.tuanimg.com/imagev2/trade/800x800.f486df8a80ea16feedaf2b37c44a5cc7.380x380.jpg', '22', '假两件条纹卫衣女士2020春秋新款韩版圆领打底衫宽松显瘦上衣', '还剩20件, 抢完恢复原价22元');
INSERT INTO `xsms` VALUES ('9', 'https://z3.tuanimg.com/imagev2/trade/750x750.e14e55c7d4ee3098363a03dbd4f1984e.380x380.jpg', '28', '2020早秋季新款撞色拼接长袖t恤女韩版薄款字母印花ins超火上衣女', '还剩20件, 抢完恢复原价28元');
INSERT INTO `xsms` VALUES ('10', 'https://z3.tuanimg.com/imagev2/trade/800x800.5d1fb2e6eba19da97215573df3c5d393.380x380.jpg', '32', '单件/俩件棉卫衣女秋冬季新款学生韩版宽松大码薄款印花长袖上衣', '还剩20件, 抢完恢复原价32元');
INSERT INTO `xsms` VALUES ('11', 'https://z2.tuanimg.com/imagev2/trade/800x800.4102dad22af8848409c40db9b1f68201.380x380.jpg', '49', '加绒马甲女外套保暖背心秋季新款轻薄羽绒棉显瘦大码马夹女', '还剩20件, 抢完恢复原价49元');
INSERT INTO `xsms` VALUES ('12', 'https://z8.tuanimg.com/imagev2/trade/800x800.bb1845116772c9056e189650aee766e9.380x380.jpg', '46', '芊艺2020春秋新款衬衣女条纹衬衫绣花系带衬衣上衣T-02CS13357', '还剩20件, 抢完恢复原价46元');
