/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50621
 Source Host           : localhost
 Source Database       : getanydata

 Target Server Type    : MySQL
 Target Server Version : 50621
 File Encoding         : utf-8

 Date: 11/05/2016 18:05:15 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `gad_org_project`
-- ----------------------------
DROP TABLE IF EXISTS `gad_org_project`;
CREATE TABLE `gad_org_project` (
  `project_id` bigint(20) NOT NULL,
  `org_id` bigint(20) NOT NULL,
  PRIMARY KEY (`project_id`,`org_id`),
  KEY `FK_bw6327e420excxtmyw1qg3igo` (`org_id`),
  CONSTRAINT `FK_bw6327e420excxtmyw1qg3igo` FOREIGN KEY (`org_id`) REFERENCES `gad_organization` (`id`),
  CONSTRAINT `FK_ks6sxpsn04remfdm3sep3yn1e` FOREIGN KEY (`project_id`) REFERENCES `gad_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `gad_organization`
-- ----------------------------
DROP TABLE IF EXISTS `gad_organization`;
CREATE TABLE `gad_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT NULL,
  `extend_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_delete` int(1) DEFAULT '0',
  `org_desc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `org_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `org_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `org_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `org_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `gad_project`
-- ----------------------------
DROP TABLE IF EXISTS `gad_project`;
CREATE TABLE `gad_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_users` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flags` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_delete` int(1) DEFAULT '0',
  `is_private` int(1) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `read_users` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `second_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `simple_info` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `write_users` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `gad_project`
-- ----------------------------
BEGIN;
INSERT INTO `gad_project` VALUES ('1', '1', '1', '这是一个酒店预定接口', '酒店#O2O', '0', '0', '酒店预定', '1', '酒店预定', '这是一个酒店预订平台', 'RestFul', '1', null, null), ('2', '1', '1', '这是一个酒店预定接口2', '酒店#O2O', '0', '0', '酒店预定2', '1', '酒店预定2', '这是一个酒店预订平台2', 'RestFul', '1', null, null), ('11', 'user_1', '1', null, 'tag1#tag2', '0', '0', 'test1', 'user_1', null, 'test1', 'RestFul', 'user_1', '2015-11-17 23:13:29', '2015-11-17 23:13:29'), ('12', 'user_1', '1', null, '酒店2#商城', '0', '0', 'test2', 'user_1', null, 'test2', 'RestFul', 'user_1', '2015-11-17 23:21:33', '2015-11-17 23:21:33'), ('13', 'user_1', '1', null, 'tag3#酒店', '0', '0', 'test3', 'user_1', null, 'test3', 'RestFul', 'user_1', '2015-11-18 21:56:57', '2015-11-18 21:56:57'), ('14', 'user_1', '1', null, '啊是大多数#阿斯达岁的#啊是大大#阿斯达斯', '0', '0', '阿斯大三大四的', 'user_1', null, '撒打算打算大苏打撒旦撒旦撒大声地说', 'RestFul', 'user_1', '2015-11-20 15:58:15', '2015-11-20 15:58:15'), ('15', 'user_1', '1', null, '阿萨德撒旦#阿斯顿', '0', '0', '测试项目1', 'user_1', null, '测试项目1', 'RestFul', 'user_1', '2015-11-29 17:28:33', '2015-11-29 17:28:33'), ('16', 'user_1', '1', null, 'as#asdasd#asdsd#asdasd#', '0', '0', 'aaaaasd11', 'user_1', null, 'asdad', 'RestFul', 'user_1', '2015-12-02 23:25:51', '2015-12-02 23:25:51'), ('17', 'user_1', '1', null, 'rest#hello', '0', '0', 'restTest', 'user_1', null, 'restTest1', 'RestFul', 'user_1', '2015-12-06 17:05:51', '2015-12-06 17:05:51');
COMMIT;

-- ----------------------------
--  Table structure for `gad_project_data`
-- ----------------------------
DROP TABLE IF EXISTS `gad_project_data`;
CREATE TABLE `gad_project_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_content` longtext COLLATE utf8_bin,
  `api_content_cache` longtext COLLATE utf8_bin,
  `api_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `api_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `is_delete` int(1) DEFAULT '0',
  `update_at` datetime DEFAULT NULL,
  `project` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_khaoxtmb2tbkftb0tcepdibx8` (`project`),
  CONSTRAINT `FK_khaoxtmb2tbkftb0tcepdibx8` FOREIGN KEY (`project`) REFERENCES `gad_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `gad_project_data`
-- ----------------------------
BEGIN;
INSERT INTO `gad_project_data` VALUES ('1', 0x232320e993b6e5baa7e4bdb3e4bbaae9a284e5ae9ae98081e7baa2e58c85e6b4bbe58aa8e8afb4e6988e2056312e300a0a3e20312e20e9a284e8aea2e68890e58a9fe5908eefbc8ce8bf94e59b9e697342696e6457656978696e3d2030207c203120efbc8ce5918ae8af89e5aea2e688b7e7abafe698afe590a6e8a681e8aea9e794a8e688b7e7bb91e5ae9ae5beaee4bfa1e380820a3e20322e20e5aea2e688b7e7abafe7bb91e5ae9ae5beaee4bfa1e5928c696e6e6d616c6ce4b880e6a0b7efbc8ce8afb7e6b182e58f82e695b0e4b8bae4bb8ee5beaee4bfa1e5aea2e688b7e7abafe88eb7e5be97e79a84636f6465e380820a3e20332e20e69c8de58aa1e7abafe8b083e794a8e993b6e5baa7e68f90e4be9be79a84415049e68896e695b0e68daee5ba93efbc8ce88eb7e5be97e794a8e688b7e79a84e7bb91e5ae9ae585b3e7b3bbe380820a0a2323202f6f726465722f76312f63726561746520e8aea2e58d95e5889be5bbbae68ea5e58fa30a23232323e8afb7e6b182e58f82e695b0efbc9a0a0a23232323e8bf94e59b9ee580bc3a0a0a6060600a7b0a20202274697073223a22e8afb7e79599e6848fe58f91e7bb99e682a8e79a84e9a284e8aea2e68890e58a9fe79fade4bfa12ce98592e5ba97e4b880e888ace4b88ae58d883130e782b9e5bc80e5a78be68e92e688bfefbc8ce697a9e588b00a2020e58fafe883bde99c80e8a681e7ad89e5be85222c0a2020226f75744964223a2232303233313231333133222c0a202022696e6e65724964223a313837300a202022737461747573223a2231222c0a20202273746174757344657363223a22e9a284e8aea2e68890e58a9f222c0a202022697342696e6457656978696e223a3120202f2f3120e5b7b2e7bb8fe7bb91e5ae9ae5beaee4bfa13b203020e69caae7bb91e5ae9ae5beaee4bfa1e99c80e8a681e5bcb9e587bae7bb91e5beaee4bfa10a2020226261736963496e666f223a207b0a2020202022686f74656c6e616d65223a202220e6b189e5baade4b88ae6b5b7e781abe8bda6e7ab99e5ba9720222c0a2020202022726f6f6d747970656e616d65223a202220e9ab98e7baa7e5a4a7e5ba8ae688bf20222c0a2020202022636865636b696e223a2022323031342d31312d3134222c0a2020202022636865636b6f7574223a2022323031342d31312d3135222c0a202020202264617973223a20312c0a20202020227573657272616e6b223a202220e6b189e5baade993b6e58da1e4bc9ae5919820222c0a202020202270726963655f746f74616c223a203235360a20207d2c0a20202022706179496e666f223a0a20207b0a20202020226e656564506179223a312c0a20202020227061794669727374223a302c0a2020202022706179537461747573223a302c0a202020202270617953746174757344657363223a22e5be85e694afe4bb98220a20207d0a7d0a6060600a0a2323202f757365722f76312f62696e6477656978696e2020e7bb91e5ae9ae5beaee4bfa1e68ea5e58fa30a2323232320e8afb7e6b182e58f82e695b03a20e8aea4e8af810a0a3e3e20636f646520e698af20537472696e6720e794a8e688b7e68da2e58f966163636573735f746f6b656ee79a84636f64650a0a6060600a7b0a2020202022636f6465223a22e794a8e688b7e68da2e58f966163636573735f746f6b656ee79a84636f6465220a7d0a6060600a0a0a2323232320e8bf94e59b9ee580bc3a0a0a6060600a7b0a092273746174223a312c0a20202020226d7367223a22e7bb91e5ae9ae68890e58a9f220a7d0a6060600a0a0a0a2323202f757365722f76312f756e62696e6477656978696e20e58f96e6b688e5beaee4bfa1e7bb91e5ae9a0a2323232320e8afb7e6b182e58f82e695b03ae8aea4e8af810a0a2323232320e8bf94e59b9ee580bc3a0a0a6060600a7b0a092273746174223a312c0a20202020226d7367223a22e8a7a3e7bb91e5beaee4bfa1e68890e58a9f220a7d0a6060600a0a0a3ee6b3a8e6848fefbc9a090a312ee59ca8e5a49ae4b8aae5ba94e794a8e697b62ce4bba56f70656e6964e588a4e696ade794a8e688b7e698afe590a6e7bb91e5ae9ae5beaee4bfa1efbc8ce698afe4b88de58fafe99da0e79a84e380820a0a3e322ee7bb91e5ae9ae4ba86e5beaee4bfa1e4bd86e698afe6b2a1e69c89e585b3e6b3a8e585ace4bc97e58fb7efbc8ce698afe694b6e4b88de588b0e7baa2e58c85e79a84efbc8ce4bd86e698afe58fafe4bba5e5b086e8bf99e4b8aae6aca0e79a84e7baa2e58c85e59ca8e695b0e68daee5ba93e4b8ade5ad98e4b88be69da50ae7bb99e4b8aae8bf87e69c9fe697b6e997b4efbc8ce7baa2e58c85e6b2a1e69c89e8bf87e69c9fefbc8ce794a8e688b7e585b3e6b3a8e4ba86e585ace4bc97e58fb7e7ab8be9a9ace5be97e588b0e5ba94e69c89e79a84e7baa2e58c850a0a3e332ee998b2e6ada2e9bb91e5aea2e79a84e694bbe587bbefbc8ce4be8be5a6823a0a312ee5a29ee58aa0e4babae5b7a5e6938de4bd9ce697b6e79a84e5a49ae7a78de789b9e5be81efbc88e58588e8b083e4bb80e4b988e68ea5e58fa3e5868de8b083e4bb80e4b988e68ea5e58fa3efbc8ce69c89e58897e8a1a8e6bb91e58aa8e6938de4bd9cefbc89efbc9b0a322ee8afbbe58f96e4b880e4ba9be7a1ace4bbb6e4bfa1e681afe5a682e5b18fe5b995e58886e8bea8e78e87efbc8ce8aebee5a487e58fb7efbc8ce6938de4bd9ce7b3bbe7bb9fefbc9b0a332ee5a29ee58aa0e9aa8ce8af81e7a0813b0a342ee69c8de58aa1e7abafe79a84e8afb7e6b182e9bb91e5908de58d953b0a352ee998b2e6ada2e4babae5b7a5e588b7e58d952ce79fade697b6e997b4e58685e79a84e5a49ae6aca1e4b88be58d95e5ba94e8afa5e698afe4b88de8a2abe58581e8aeb8e79a84e380820ae5be85e7bbad2e2e2e, null, '创建订单', 'GET', '2015-11-14 17:17:20', '0', '2015-11-14 17:17:23', '1'), ('2', 0x2323202f757365722f76312f62696e6477656978696e2020e7bb91e5ae9ae5beaee4bfa1e68ea5e58fa30a2323232320e8afb7e6b182e58f82e695b03a20e8aea4e8af810a0a3e3e20636f646520e698af20537472696e6720e794a8e688b7e68da2e58f966163636573735f746f6b656ee79a84636f64650a0a6060600a7b0a2020202022636f6465223a22e794a8e688b7e68da2e58f966163636573735f746f6b656ee79a84636f6465220a7d0a6060600a0a0a2323232320e8bf94e59b9ee580bc3a0a0a6060600a7b0a092273746174223a312c0a20202020226d7367223a22e7bb91e5ae9ae68890e58a9f220a7d0a6060600a0a0a0a2323202f757365722f76312f756e62696e6477656978696e20e58f96e6b688e5beaee4bfa1e7bb91e5ae9a0a2323232320e8afb7e6b182e58f82e695b03ae8aea4e8af810a0a2323232320e8bf94e59b9ee580bc3a0a0a6060600a7b0a092273746174223a312c0a20202020226d7367223a22e8a7a3e7bb91e5beaee4bfa1e68890e58a9f220a7d0a6060600a0a0a3ee6b3a8e6848fefbc9a090a312ee59ca8e5a49ae4b8aae5ba94e794a8e697b62ce4bba56f70656e6964e588a4e696ade794a8e688b7e698afe590a6e7bb91e5ae9ae5beaee4bfa1efbc8ce698afe4b88de58fafe99da0e79a84e380820a0a3e322ee7bb91e5ae9ae4ba86e5beaee4bfa1e4bd86e698afe6b2a1e69c89e585b3e6b3a8e585ace4bc97e58fb7efbc8ce698afe694b6e4b88de588b0e7baa2e58c85e79a84efbc8ce4bd86e698afe58fafe4bba5e5b086e8bf99e4b8aae6aca0e79a84e7baa2e58c85e59ca8e695b0e68daee5ba93e4b8ade5ad98e4b88be69da50ae7bb99e4b8aae8bf87e69c9fe697b6e997b4efbc8ce7baa2e58c85e6b2a1e69c89e8bf87e69c9fefbc8ce794a8e688b7e585b3e6b3a8e4ba86e585ace4bc97e58fb7e7ab8be9a9ace5be97e588b0e5ba94e69c89e79a84e7baa2e58c850a0a3e332ee998b2e6ada2e9bb91e5aea2e79a84e694bbe587bbefbc8ce4be8be5a6823a0a312ee5a29ee58aa0e4babae5b7a5e6938de4bd9ce697b6e79a84e5a49ae7a78de789b9e5be81efbc88e58588e8b083e4bb80e4b988e68ea5e58fa3e5868de8b083e4bb80e4b988e68ea5e58fa3efbc8ce69c89e58897e8a1a8e6bb91e58aa8e6938de4bd9cefbc89efbc9b0a322ee8afbbe58f96e4b880e4ba9be7a1ace4bbb6e4bfa1e681afe5a682e5b18fe5b995e58886e8bea8e78e87efbc8ce8aebee5a487e58fb7efbc8ce6938de4bd9ce7b3bbe7bb9fefbc9b0a332ee5a29ee58aa0e9aa8ce8af81e7a0813b0a342ee69c8de58aa1e7abafe79a84e8afb7e6b182e9bb91e5908de58d953b0a352ee998b2e6ada2e4babae5b7a5e588b7e58d952ce79fade697b6e997b4e58685e79a84e5a49ae6aca1e4b88be58d95e5ba94e8afa5e698afe4b88de8a2abe58581e8aeb8e79a84e380820ae5be85e7bbad2e2e2e, null, '绑定微信', 'POST', '2015-11-14 17:18:07', '0', '2015-11-14 17:18:10', '1'), ('3', 0x3e0a2323232320485454502d48656164730a7c20e58f82e695b0e5908d20207c20e7b1bbe59e8b207c20e5bf85e5a1ab207c20e68f8fe8bfb0207c20e9bb98e8aea4e580bc0a7c3a2d2d2d3a7c203a2d2d2d3a7c3a2d2d2d2d3a7c3a2d2d2d2d2d2d2d3a7c3a2d2d2d2d2d3a7c0a7c746f6b656e7c737472696e677ce698af7ce8afb7e6b182e8aea4e8af817c20e7a9ba7c0a0a2323232320485454502d48656164730a7c20e58f82e695b0e5908d20207c20e7b1bbe59e8b207c20e5bf85e5a1ab207c20e68f8fe8bfb0207c20e9bb98e8aea4e580bc0a7c3a2d2d2d3a7c203a2d2d2d3a7c3a2d2d2d2d3a7c3a2d2d2d2d2d2d2d3a7c3a2d2d2d2d2d3a7c0a7c746f6b656e7c737472696e677ce698af7ce8afb7e6b182e8aea4e8af817c20e7a9ba7c0a, null, 'asdasdasdsad', 'POST', null, '0', null, '16'), ('4', 0x23206173646173646173646173646173646173646173640a0a2323232320485454502d48656164730a7c20e58f82e695b0e5908d20207c20e7b1bbe59e8b207c20e5bf85e5a1ab207c20e68f8fe8bfb0207c20e9bb98e8aea4e580bc0a7c3a2d2d2d3a7c203a2d2d2d3a7c3a2d2d2d2d3a7c3a2d2d2d2d2d2d2d3a7c3a2d2d2d2d2d3a7c0a7c746f6b656e7c737472696e677ce698af7ce8afb7e6b182e8aea4e8af817c20e7a9ba7c0a0a0a3e6173646173646173646173646173646173646173, null, 'rest1', 'PUT', null, '0', null, '17');
COMMIT;

-- ----------------------------
--  Table structure for `gad_task`
-- ----------------------------
DROP TABLE IF EXISTS `gad_task`;
CREATE TABLE `gad_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e35qkctwjvbe7smr69y56y6px` (`user_id`),
  CONSTRAINT `FK_e35qkctwjvbe7smr69y56y6px` FOREIGN KEY (`user_id`) REFERENCES `gad_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `gad_user`
-- ----------------------------
DROP TABLE IF EXISTS `gad_user`;
CREATE TABLE `gad_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_delete` int(1) DEFAULT '0',
  `login_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `plain_password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `self_path_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `gad_user`
-- ----------------------------
BEGIN;
INSERT INTO `gad_user` VALUES ('1', null, '0', 'admin', 'Admin', '691b14d79bf0fa2215f155235df5e670b64394cc', null, '2012-06-04 01:00:00', 'admin', '7efbd59d9741d34f', 'HardenCN'), ('2', null, '0', 'user', 'Calvin', '2488aa0c31c624687bd9928e0a5d29e7d1ed520b', null, '2012-06-04 02:00:00', 'user', '6d65d24122c30500', 'Calvin');
COMMIT;

-- ----------------------------
--  Table structure for `gad_user_followers`
-- ----------------------------
DROP TABLE IF EXISTS `gad_user_followers`;
CREATE TABLE `gad_user_followers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `follow_at` datetime DEFAULT NULL,
  `follow_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `follow_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `follower_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `gad_user_organization`
-- ----------------------------
DROP TABLE IF EXISTS `gad_user_organization`;
CREATE TABLE `gad_user_organization` (
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`organization_id`),
  KEY `FK_19kl1wtgfbq38a5nar81v8ug` (`organization_id`),
  CONSTRAINT `FK_19kl1wtgfbq38a5nar81v8ug` FOREIGN KEY (`organization_id`) REFERENCES `gad_organization` (`id`),
  CONSTRAINT `FK_6p6ku4nvd2cqeo0ikhk7d79fq` FOREIGN KEY (`user_id`) REFERENCES `gad_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `gad_user_project`
-- ----------------------------
DROP TABLE IF EXISTS `gad_user_project`;
CREATE TABLE `gad_user_project` (
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `FK_mduj6lp7hektfrxttm2pdo6qa` (`user_id`),
  CONSTRAINT `FK_e4ecce1darh75wqo0avar9brq` FOREIGN KEY (`project_id`) REFERENCES `gad_project` (`id`),
  CONSTRAINT `FK_mduj6lp7hektfrxttm2pdo6qa` FOREIGN KEY (`user_id`) REFERENCES `gad_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `gad_user_project`
-- ----------------------------
BEGIN;
INSERT INTO `gad_user_project` VALUES ('1', '1'), ('2', '1'), ('11', '1'), ('12', '1'), ('13', '1'), ('14', '1'), ('15', '1'), ('16', '1'), ('17', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
