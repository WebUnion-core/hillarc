SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
    `id` int COLLATE utf8mb4_unicode_ci AUTO_INCREMENT, -- 用户id
    `profile_picture_url` text COLLATE utf8mb4_unicode_ci, -- 头像URL
    `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL, -- 用户名
    `create_time` timestamp DEFAULT CURRENT_TIMESTAMP, -- 创建日期
    `last_update_time` timestamp DEFAULT CURRENT_TIMESTAMP, -- 最后更新日期
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户表';

-- ----------------------------
--  Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
    `id` int COLLATE utf8mb4_unicode_ci AUTO_INCREMENT, -- 计划id
    `url` text COLLATE utf8mb4_unicode_ci, -- 头像URL
    `create_time` timestamp DEFAULT CURRENT_TIMESTAMP, -- 创建日期
    `last_update_time` timestamp DEFAULT CURRENT_TIMESTAMP, -- 最后更新日期
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='图片表';

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
--  Fill data for `user` table
-- ----------------------------
INSERT INTO `user` (
    `profile_picture_url`,
    `name`
) VALUES (
    'https://avatars3.githubusercontent.com/u/18640419?s=400&u=8c57ec7cd72cc6df18c2151cece8183732dda54b&v=4',
    'WJT20'
);

-- ----------------------------
--  Fill data for `user` table
-- ----------------------------
INSERT INTO `image` (
    `url`
) VALUES (
    'https://avatars3.githubusercontent.com/u/18640419?s=400&u=8c57ec7cd72cc6df18c2151cece8183732dda54b&v=4'
);