SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `plan`
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
    `id` int COLLATE utf8mb4_unicode_ci NOT NULL AUTO_INCREMENT, -- 计划id
    `type` int COLLATE utf8mb4_unicode_ci NOT NULL, -- 计划类型，0:个人，1:小组
    `poster` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL, -- 海报图URL
    `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 创建日期
    `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, -- 最后更新日期
    `host_id` int COLLATE utf8mb4_unicode_ci NOT NULL, -- 创建者id
    `total_members` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL, -- 参与总人数(id组合字符串)
    `participants` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL, -- 参与人数(id组合字符串)
    `nonparticipants` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL, -- 不参与人数(id组合字符串)
    `pending_members` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL, -- 待定人数(id组合字符串)
    `detail` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL, -- 计划详情
    `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL, -- 计划标题
    PRIMARY KEY (`id`),
    KEY `planid` (`id`) USING BTREE,
    KEY `hostid` (`host_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='计划活动';

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
--  Fill data for `plan` table
-- ----------------------------
INSERT INTO `plan` (
    `type`,
    `poster`,
    `create_time`,
    `last_update_time`,
    `host_id`,
    `total_members`,
    `participants`,
    `nonparticipants`,
    `pending_members`,
    `detail`,
    `title`
) VALUES (
    0,
    'https://avatars1.githubusercontent.com/u/18640419?s=40&v=4',
    '2019-03-13 04:22:32',
    '2019-03-21 16:20:37',
    1,
    '1',
    '1',
    '0',
    '0',
    'wwwwwwwwwwwwwwwwwwwwwwwwwwww',
    'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww'
)
