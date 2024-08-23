/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t399`;
CREATE DATABASE IF NOT EXISTS `t399` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t399`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-22 03:33:33'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-22 03:33:33'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-22 03:33:33'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-22 03:33:33'),
	(5, 'renwu_zhuangtai_types', '任务状态', 1, '未领取', NULL, NULL, '2023-03-22 03:33:33'),
	(6, 'renwu_zhuangtai_types', '任务状态', 2, '已领取', NULL, NULL, '2023-03-22 03:33:33'),
	(7, 'renwu_zhuangtai_types', '任务状态', 3, '已完成', NULL, NULL, '2023-03-22 03:33:33'),
	(8, 'renwu_types', '任务类型', 1, '任务类型1', NULL, NULL, '2023-03-22 03:33:33'),
	(9, 'renwu_types', '任务类型', 2, '任务类型2', NULL, NULL, '2023-03-22 03:33:33'),
	(10, 'renwu_types', '任务类型', 3, '任务类型3', NULL, NULL, '2023-03-22 03:33:33'),
	(11, 'renwu_types', '任务类型', 4, '任务类型4', NULL, NULL, '2023-03-22 03:33:33'),
	(12, 'renwu_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-03-22 03:33:33'),
	(13, 'renwu_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-03-22 03:33:33'),
	(14, 'renwu_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-03-22 03:33:33'),
	(15, 'renwu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-22 03:33:34'),
	(16, 'renwu_order_types', '订单类型', 101, '已申请领取', NULL, NULL, '2023-03-22 03:33:34'),
	(17, 'renwu_order_types', '订单类型', 102, '已取消领取', NULL, NULL, '2023-03-22 03:33:34'),
	(18, 'renwu_order_types', '订单类型', 103, '已同意领取', NULL, NULL, '2023-03-22 03:33:34'),
	(19, 'renwu_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-03-22 03:33:34'),
	(20, 'renwu_order_types', '订单类型', 106, '已完成', NULL, NULL, '2023-03-22 03:33:34'),
	(21, 'renwu_order_types', '订单类型', 107, '已放弃领取', NULL, NULL, '2023-03-22 03:33:34'),
	(22, 'renwu_chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-03-22 03:33:34'),
	(23, 'renwu_chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-03-22 03:33:34'),
	(24, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-03-22 03:33:34'),
	(25, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-03-22 03:33:34'),
	(26, 'forum_types', '帖子类型', 1, '帖子类型1', NULL, NULL, '2023-03-22 03:33:34'),
	(27, 'forum_types', '帖子类型', 2, '帖子类型2', NULL, NULL, '2023-03-22 03:33:34'),
	(28, 'forum_types', '帖子类型', 3, '帖子类型3', NULL, NULL, '2023-03-22 03:33:34'),
	(29, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2023-03-22 03:33:34'),
	(30, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2023-03-22 03:33:34'),
	(31, 'renwu_types', '任务类型', 5, '任务类型5', NULL, '', '2023-03-22 03:49:12');

DROP TABLE IF EXISTS `fabuyonghu`;
CREATE TABLE IF NOT EXISTS `fabuyonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fabuyonghu_name` varchar(200) DEFAULT NULL COMMENT '发布用户姓名 Search111 ',
  `fabuyonghu_phone` varchar(200) DEFAULT NULL COMMENT '发布用户手机号',
  `fabuyonghu_id_number` varchar(200) DEFAULT NULL COMMENT '发布用户身份证号',
  `fabuyonghu_photo` varchar(200) DEFAULT NULL COMMENT '发布用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `fabuyonghu_email` varchar(200) DEFAULT NULL COMMENT '发布用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='发布用户';

DELETE FROM `fabuyonghu`;
INSERT INTO `fabuyonghu` (`id`, `username`, `password`, `fabuyonghu_name`, `fabuyonghu_phone`, `fabuyonghu_id_number`, `fabuyonghu_photo`, `sex_types`, `new_money`, `fabuyonghu_email`, `create_time`) VALUES
	(1, '发布用户1', '123456', '发布用户姓名1', '17703786901', '410224199010102001', 'upload/fabuyonghu1.jpg', 2, 787.92, '1@qq.com', '2023-03-22 03:33:41'),
	(2, '发布用户2', '123456', '发布用户姓名2', '17703786902', '410224199010102002', 'upload/fabuyonghu2.jpg', 1, 532.57, '2@qq.com', '2023-03-22 03:33:41'),
	(3, '发布用户3', '123456', '发布用户姓名3', '17703786903', '410224199010102003', 'upload/fabuyonghu3.jpg', 2, 996.85, '3@qq.com', '2023-03-22 03:33:41');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `jiequyonghu_id` int DEFAULT NULL COMMENT '接取用户',
  `fabuyonghu_id` int DEFAULT NULL COMMENT '发布用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_types` int DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `jiequyonghu_id`, `fabuyonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_types`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', 434, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(2, '帖子标题2', 2, NULL, NULL, '发布内容2', 27, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(3, '帖子标题3', 2, NULL, NULL, '发布内容3', 234, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(4, '帖子标题4', 1, NULL, NULL, '发布内容4', 262, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', 199, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(6, '帖子标题6', 2, NULL, NULL, '发布内容6', 298, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(7, '帖子标题7', 3, NULL, NULL, '发布内容7', 406, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(8, '帖子标题8', 3, NULL, NULL, '发布内容8', 134, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(9, '帖子标题9', 2, NULL, NULL, '发布内容9', 411, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(10, '帖子标题10', 2, NULL, NULL, '发布内容10', 73, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(11, '帖子标题11', 3, NULL, NULL, '发布内容11', 186, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(12, '帖子标题12', 2, NULL, NULL, '发布内容12', 111, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(13, '帖子标题13', 3, NULL, NULL, '发布内容13', 226, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(14, '帖子标题14', 3, NULL, NULL, '发布内容14', 281, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(15, NULL, 4, NULL, NULL, 'gdsafda ', 14, NULL, 2, '2023-03-22 03:42:05', NULL, '2023-03-22 03:42:05'),
	(16, NULL, NULL, NULL, 1, '高公公', 14, NULL, 2, '2023-03-22 03:49:19', NULL, '2023-03-22 03:49:19'),
	(17, NULL, NULL, 1, NULL, '孤鸿寡鹄', 14, NULL, 2, '2023-03-22 03:50:47', NULL, '2023-03-22 03:50:47'),
	(18, NULL, 1, NULL, NULL, '666', 14, NULL, 2, '2024-08-13 07:55:20', NULL, '2024-08-13 07:55:20');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '任务资讯公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '任务资讯公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '任务资讯公告发布时间 ',
  `gonggao_content` longtext COMMENT '任务资讯公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='任务资讯公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '任务资讯公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情1', '2023-03-22 03:33:41'),
	(2, '任务资讯公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-22 03:33:41', '任务资讯公告详情2', '2023-03-22 03:33:41'),
	(3, '任务资讯公告名称3', 'upload/gonggao3.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情3', '2023-03-22 03:33:41'),
	(4, '任务资讯公告名称4', 'upload/gonggao4.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情4', '2023-03-22 03:33:41'),
	(5, '任务资讯公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-22 03:33:41', '任务资讯公告详情5', '2023-03-22 03:33:41'),
	(6, '任务资讯公告名称6', 'upload/gonggao6.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情6', '2023-03-22 03:33:41'),
	(7, '任务资讯公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-22 03:33:41', '任务资讯公告详情7', '2023-03-22 03:33:41'),
	(8, '任务资讯公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情8', '2023-03-22 03:33:41'),
	(9, '任务资讯公告名称9', 'upload/gonggao9.jpg', 1, '2023-03-22 03:33:41', '任务资讯公告详情9', '2023-03-22 03:33:41'),
	(10, '任务资讯公告名称10', 'upload/gonggao10.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情10', '2023-03-22 03:33:41'),
	(11, '任务资讯公告名称11', 'upload/gonggao11.jpg', 1, '2023-03-22 03:33:41', '任务资讯公告详情11', '2023-03-22 03:33:41'),
	(12, '任务资讯公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情12', '2023-03-22 03:33:41'),
	(13, '任务资讯公告名称13', 'upload/gonggao13.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情13', '2023-03-22 03:33:41'),
	(14, '任务资讯公告名称14', 'upload/gonggao14.jpg', 2, '2023-03-22 03:33:41', '任务资讯公告详情14', '2023-03-22 03:33:41');

DROP TABLE IF EXISTS `jiequyonghu`;
CREATE TABLE IF NOT EXISTS `jiequyonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiequyonghu_name` varchar(200) DEFAULT NULL COMMENT '接取用户姓名 Search111 ',
  `jiequyonghu_phone` varchar(200) DEFAULT NULL COMMENT '接取用户手机号',
  `jiequyonghu_id_number` varchar(200) DEFAULT NULL COMMENT '接取用户身份证号',
  `jiequyonghu_photo` varchar(200) DEFAULT NULL COMMENT '接取用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `wanchenglv` int DEFAULT NULL COMMENT '完成率(百分比)',
  `jiequyonghu_email` varchar(200) DEFAULT NULL COMMENT '接取用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='接取用户';

DELETE FROM `jiequyonghu`;
INSERT INTO `jiequyonghu` (`id`, `username`, `password`, `jiequyonghu_name`, `jiequyonghu_phone`, `jiequyonghu_id_number`, `jiequyonghu_photo`, `sex_types`, `new_money`, `wanchenglv`, `jiequyonghu_email`, `create_time`) VALUES
	(1, '接取用户1', '123456', '接取用户姓名1', '17703786901', '410224199010102001', 'upload/jiequyonghu1.jpg', 2, 164.37, 333, '1@qq.com', '2023-03-22 03:33:41'),
	(2, '接取用户2', '123456', '接取用户姓名2', '17703786902', '410224199010102002', 'upload/jiequyonghu2.jpg', 1, 796.80, 47, '2@qq.com', '2023-03-22 03:33:41'),
	(3, '接取用户3', '123456', '接取用户姓名3', '17703786903', '410224199010102003', 'upload/jiequyonghu3.jpg', 2, 659.98, 394, '3@qq.com', '2023-03-22 03:33:41'),
	(4, '接取用户4', '123456', '张5', '17788889999', '444555888899999999', 'upload/1679456534735.jpg', 2, 928.66, 100, '5@qq.com', '2023-03-22 03:41:41');

DROP TABLE IF EXISTS `renwu`;
CREATE TABLE IF NOT EXISTS `renwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fabuyonghu_id` int DEFAULT NULL COMMENT '发布用户',
  `renwu_name` varchar(200) DEFAULT NULL COMMENT '任务名称  Search111 ',
  `renwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '任务编号',
  `renwu_photo` varchar(200) DEFAULT NULL COMMENT '任务照片',
  `renwu_file` varchar(200) DEFAULT NULL COMMENT '任务附件',
  `zhixing_time` timestamp NULL DEFAULT NULL COMMENT '任务执行时间',
  `renwu_address` varchar(200) DEFAULT NULL COMMENT '执行地点',
  `renwu_types` int DEFAULT NULL COMMENT '任务类型 Search111',
  `renwu_jine` decimal(10,2) DEFAULT NULL COMMENT '悬赏金额',
  `renwu_clicknum` int DEFAULT NULL COMMENT '任务热度',
  `renwu_content` longtext COMMENT '任务要求',
  `renwu_zhuangtai_types` int DEFAULT NULL COMMENT '任务状态   Search111 ',
  `renwu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `renwu_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `renwu_yesno_text` longtext COMMENT '审核意见',
  `renwu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='任务';

DELETE FROM `renwu`;
INSERT INTO `renwu` (`id`, `fabuyonghu_id`, `renwu_name`, `renwu_uuid_number`, `renwu_photo`, `renwu_file`, `zhixing_time`, `renwu_address`, `renwu_types`, `renwu_jine`, `renwu_clicknum`, `renwu_content`, `renwu_zhuangtai_types`, `renwu_delete`, `insert_time`, `renwu_yesno_types`, `renwu_yesno_text`, `renwu_shenhe_time`, `create_time`) VALUES
	(1, 2, '任务名称1', '1679456021407', 'upload/renwu1.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点1', 4, 756.34, 150, '任务要求1', 1, 1, '2023-03-22 03:33:41', 2, '大概是广东省', '2023-03-22 03:50:02', '2023-03-22 03:33:41'),
	(2, 3, '任务名称2', '1679456021336', 'upload/renwu2.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点2', 2, 991.66, 4, '任务要求2', 2, 1, '2023-03-22 03:33:41', 1, NULL, NULL, '2023-03-22 03:33:41'),
	(3, 2, '任务名称3', '1679456021335', 'upload/renwu3.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点3', 2, 58.31, 330, '任务要求3', 3, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(4, 1, '任务名称4', '1679456021399', 'upload/renwu4.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点4', 1, 306.70, 26, '任务要求4', 2, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(5, 2, '任务名称5', '1679456021327', 'upload/renwu5.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点5', 4, 619.22, 141, '任务要求5', 3, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(6, 3, '任务名称6', '1679456021367', 'upload/renwu6.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点6', 3, 91.03, 235, '任务要求6', 2, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(7, 1, '任务名称7', '1679456021327', 'upload/renwu7.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点7', 1, 862.74, 96, '任务要求7', 3, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(8, 3, '任务名称8', '1679456021340', 'upload/renwu8.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点8', 4, 656.72, 70, '任务要求8', 3, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(9, 3, '任务名称9', '1679456021363', 'upload/renwu9.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点9', 4, 913.90, 101, '任务要求9', 3, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(10, 2, '任务名称10', '1679456021384', 'upload/renwu10.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点10', 1, 759.30, 368, '任务要求10', 1, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(11, 2, '任务名称11', '1679456021336', 'upload/renwu11.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点11', 2, 922.67, 325, '任务要求11', 2, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(12, 3, '任务名称12', '1679456021361', 'upload/renwu12.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点12', 3, 684.09, 449, '任务要求12', 2, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(13, 1, '任务名称13', '1679456021388', 'upload/renwu13.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点13', 3, 928.66, 210, '任务要求13', 3, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(14, 1, '任务名称14', '1679456021382', 'upload/renwu14.jpg', 'upload/file.rar', '2023-03-22 03:33:41', '执行地点14', 3, 0.86, 52, '任务要求14', 2, 1, '2023-03-22 03:33:41', 2, '同意', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(15, 1, '任务11111', '1679457058065', '/upload/1679457063552.jpg', '/upload/1679457066132.doc', '2023-03-22 16:00:00', '地点111', 3, 99.00, 1, '<p>广东省是发三分大赛分公司大孤独颂歌</p>', 1, 1, '2023-03-22 03:51:17', 1, '', NULL, '2023-03-22 03:51:17'),
	(16, 1, '任务2222', '1679457133680', '/upload/1679457138016.jpg', '/upload/1679457140572.doc', '2023-03-30 16:00:00', '地点1111', 4, 58.00, 1, '<p>方法个第三个第三个头速度</p>', 1, 1, '2023-03-22 03:52:34', 1, '', NULL, '2023-03-22 03:52:34'),
	(17, 1, '任务3333', '1679457192649', '/upload/1679457197188.jpg', '/upload/1679457200152.doc', '2023-03-24 16:00:00', '地点11', 4, 44.00, 1, '<p>地方手动广东省归属感很多分身乏术的翻山倒海 </p>', 1, 1, '2023-03-22 03:53:35', 1, '', NULL, '2023-03-22 03:53:35');

DROP TABLE IF EXISTS `renwu_chat`;
CREATE TABLE IF NOT EXISTS `renwu_chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiequyonghu_id` int DEFAULT NULL COMMENT '提问人',
  `fabuyonghu_id` int DEFAULT NULL COMMENT '回答人',
  `renwu_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `renwu_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `renwu_chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='任务咨询';

DELETE FROM `renwu_chat`;
INSERT INTO `renwu_chat` (`id`, `jiequyonghu_id`, `fabuyonghu_id`, `renwu_chat_issue_text`, `issue_time`, `renwu_chat_reply_text`, `reply_time`, `zhuangtai_types`, `renwu_chat_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 3, '问题1', '2023-03-22 03:33:41', '回复1', '2023-03-22 03:33:41', 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(2, 1, 2, '问题2', '2023-03-22 03:33:41', '回复2', '2023-03-22 03:33:41', 2, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(3, 1, 2, '问题3', '2023-03-22 03:33:41', '回复3', '2023-03-22 03:33:41', 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(4, 1, 2, '问题4', '2023-03-22 03:33:41', '回复4', '2023-03-22 03:33:41', 1, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(5, 3, 3, '问题5', '2023-03-22 03:33:41', '回复5', '2023-03-22 03:33:41', 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(6, 2, 3, '问题6', '2023-03-22 03:33:41', '回复6', '2023-03-22 03:33:41', 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(7, 1, 2, '问题7', '2023-03-22 03:33:41', '回复7', '2023-03-22 03:33:41', 2, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(8, 2, 1, '问题8', '2023-03-22 03:33:41', '回复8', '2023-03-22 03:33:41', 1, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(9, 3, 2, '问题9', '2023-03-22 03:33:41', '回复9', '2023-03-22 03:33:41', 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(10, 3, 1, '问题10', '2023-03-22 03:33:41', '回复10', '2023-03-22 03:33:41', 2, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(11, 3, 1, '问题11', '2023-03-22 03:33:41', '回复11', '2023-03-22 03:33:41', 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(12, 3, 3, '问题12', '2023-03-22 03:33:41', '回复12', '2023-03-22 03:33:41', 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(13, 2, 1, '问题13', '2023-03-22 03:33:41', '回复13', '2023-03-22 03:33:41', 1, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(14, 3, 3, '问题14', '2023-03-22 03:33:41', '回复14', '2023-03-22 03:33:41', 1, 2, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(15, 4, 1, 'ggg', '2023-03-22 03:42:45', NULL, NULL, 2, 1, '2023-03-22 03:42:46', '2023-03-22 03:42:46'),
	(16, 4, 1, NULL, NULL, '哼哼唧唧', '2023-03-22 03:43:44', NULL, 2, '2023-03-22 03:43:44', '2023-03-22 03:43:44'),
	(17, 1, 3, '666', '2024-08-13 07:55:41', NULL, NULL, 1, 1, '2024-08-13 07:55:41', '2024-08-13 07:55:41');

DROP TABLE IF EXISTS `renwu_collection`;
CREATE TABLE IF NOT EXISTS `renwu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_id` int DEFAULT NULL COMMENT '任务',
  `jiequyonghu_id` int DEFAULT NULL COMMENT '用户',
  `renwu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='任务收藏';

DELETE FROM `renwu_collection`;
INSERT INTO `renwu_collection` (`id`, `renwu_id`, `jiequyonghu_id`, `renwu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(2, 2, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(3, 3, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(4, 4, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(5, 5, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(6, 6, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(7, 7, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(8, 8, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(9, 9, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(10, 10, 1, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(11, 11, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(12, 12, 2, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(13, 13, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(14, 14, 3, 1, '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(15, 13, 4, 1, '2023-03-22 03:42:00', '2023-03-22 03:42:00'),
	(16, 10, 4, 1, '2023-03-22 03:47:12', '2023-03-22 03:47:12'),
	(17, 12, 1, 1, '2024-08-13 07:55:37', '2024-08-13 07:55:37');

DROP TABLE IF EXISTS `renwu_commentback`;
CREATE TABLE IF NOT EXISTS `renwu_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_id` int DEFAULT NULL COMMENT '任务',
  `jiequyonghu_id` int DEFAULT NULL COMMENT '用户',
  `renwu_commentback_pingfen_number` int DEFAULT NULL COMMENT '评分',
  `renwu_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='任务评价';

DELETE FROM `renwu_commentback`;
INSERT INTO `renwu_commentback` (`id`, `renwu_id`, `jiequyonghu_id`, `renwu_commentback_pingfen_number`, `renwu_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, 5, '评价内容1', '2023-03-22 03:33:41', '回复信息1', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(2, 2, 1, 5, '评价内容2', '2023-03-22 03:33:41', '回复信息2', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(3, 3, 2, 3, '评价内容3', '2023-03-22 03:33:41', '回复信息3', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(4, 4, 3, 3, '评价内容4', '2023-03-22 03:33:41', '回复信息4', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(5, 5, 1, 4, '评价内容5', '2023-03-22 03:33:41', '回复信息5', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(6, 6, 3, 5, '评价内容6', '2023-03-22 03:33:41', '回复信息6', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(7, 7, 2, 5, '评价内容7', '2023-03-22 03:33:41', '回复信息7', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(8, 8, 2, 5, '评价内容8', '2023-03-22 03:33:41', '回复信息8', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(9, 9, 1, 1, '评价内容9', '2023-03-22 03:33:41', '回复信息9', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(10, 10, 3, 2, '评价内容10', '2023-03-22 03:33:41', '回复信息10', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(11, 11, 3, 2, '评价内容11', '2023-03-22 03:33:41', '回复信息11', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(12, 12, 3, 2, '评价内容12', '2023-03-22 03:33:41', '回复信息12', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(13, 13, 2, 3, '评价内容13', '2023-03-22 03:33:41', '回复信息13', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(14, 14, 2, 3, '评价内容14', '2023-03-22 03:33:41', '回复信息14', '2023-03-22 03:33:41', '2023-03-22 03:33:41'),
	(15, 13, 4, 4, '个搭嘎第三个', '2023-03-22 03:48:31', '骨灰盒', '2023-03-22 03:53:47', '2023-03-22 03:48:31');

DROP TABLE IF EXISTS `renwu_order`;
CREATE TABLE IF NOT EXISTS `renwu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `renwu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `renwu_id` int DEFAULT NULL COMMENT '任务',
  `jiequyonghu_id` int DEFAULT NULL COMMENT '用户',
  `renwu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '悬赏金额',
  `renwu_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请领取时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='任务订单';

DELETE FROM `renwu_order`;
INSERT INTO `renwu_order` (`id`, `renwu_order_uuid_number`, `renwu_id`, `jiequyonghu_id`, `renwu_order_true_price`, `renwu_order_types`, `insert_time`, `create_time`) VALUES
	(1, '1679456633423', 13, 4, 928.66, 105, '2023-03-22 03:43:53', '2023-03-22 03:43:53'),
	(2, '1679456826705', 10, 4, 759.30, 101, '2023-03-22 03:47:07', '2023-03-22 03:47:07');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'fabuyonghu', '发布用户', 'm04bq8y7uh64pbdctduixrk6ezir8yay', '2023-03-22 03:36:54', '2024-08-13 08:54:49'),
	(2, 1, 'a1', 'jiequyonghu', '接取用户', 'xkaufjk2bpobaclbcoxgsx8mbxienfys', '2023-03-22 03:37:24', '2024-08-13 08:55:08'),
	(3, 4, 'a5', 'jiequyonghu', '接取用户', 'rlktw5kaw6ylpgouli8a4udykzc8utd5', '2023-03-22 03:41:46', '2023-03-22 04:41:46'),
	(4, 1, 'admin', 'users', '管理员', '87x3q7y3eu1uxsobsuvyqbsy9y0qjzbp', '2023-03-22 03:49:01', '2024-08-13 08:53:44');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-22 03:33:33');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
