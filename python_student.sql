/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : python_student

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 19/06/2024 21:30:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_active
-- ----------------------------
DROP TABLE IF EXISTS `b_active`;
CREATE TABLE `b_active`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '活动名称',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '活动介绍',
  `score` int NULL DEFAULT NULL COMMENT '活动分数',
  `is_publish` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否发布',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_active
-- ----------------------------
INSERT INTO `b_active` VALUES (3, '反倒是发生的', '范德萨房顶上7777', 34, '否', '2024-05-26 03:25:03');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '2201', '2023-12-31 11:18:10.731190');
INSERT INTO `b_classification` VALUES (2, '2202', '2023-12-31 11:18:16.730251');
INSERT INTO `b_classification` VALUES (3, '2203', '2023-12-31 11:18:21.314816');
INSERT INTO `b_classification` VALUES (4, '2204', '2024-05-25 21:18:37.870615');
INSERT INTO `b_classification` VALUES (5, '434343', '2024-06-03 09:40:31.928958');
INSERT INTO `b_classification` VALUES (6, '43434', '2024-06-03 09:40:35.428750');
INSERT INTO `b_classification` VALUES (7, '434344334', '2024-06-03 09:40:42.669399');
INSERT INTO `b_classification` VALUES (8, '33333', '2024-06-03 09:40:46.902876');
INSERT INTO `b_classification` VALUES (9, '77777', '2024-06-03 09:40:50.830557');
INSERT INTO `b_classification` VALUES (10, '8888', '2024-06-03 09:40:56.195451');
INSERT INTO `b_classification` VALUES (11, '34343214', '2024-06-03 09:40:59.641865');
INSERT INTO `b_classification` VALUES (12, '324143243', '2024-06-03 09:41:03.660960');

-- ----------------------------
-- Table structure for b_course_info
-- ----------------------------
DROP TABLE IF EXISTS `b_course_info`;
CREATE TABLE `b_course_info`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称',
  `course_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '课程描述',
  `teacher_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '授课讲师',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_course_info
-- ----------------------------
INSERT INTO `b_course_info` VALUES (2, '语文', '语文', '张孝祥', '2024-05-25 22:02:57');
INSERT INTO `b_course_info` VALUES (3, '数学', '数学', '王小姐', '2024-05-25 22:03:21');
INSERT INTO `b_course_info` VALUES (4, '英语', '英语', '周周', '2024-05-25 22:03:40');
INSERT INTO `b_course_info` VALUES (5, '美术', '美术', '小花', '2024-05-25 22:03:54');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/admin/thing/create', 'POST', '参数错误', '2024-05-25 23:17:36.633252');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/admin/thing/create', 'POST', '参数错误', '2024-05-25 23:37:36.377713');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.289 Safari/537.36', '2023-12-31 11:18:03.669301');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.289 Safari/537.36', '2023-12-31 11:30:01.783188');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-05 23:55:39.023778');
INSERT INTO `b_login_log` VALUES (4, 'superadmin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-07 16:10:21.551991');
INSERT INTO `b_login_log` VALUES (5, 'superadmin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-07 21:08:58.472711');
INSERT INTO `b_login_log` VALUES (6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-20 14:58:26.360594');
INSERT INTO `b_login_log` VALUES (7, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-20 23:45:33.193563');
INSERT INTO `b_login_log` VALUES (8, 'admin11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-25 21:17:48.739752');
INSERT INTO `b_login_log` VALUES (9, 'admin11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-25 21:21:30.286819');
INSERT INTO `b_login_log` VALUES (10, 'admin11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-05-26 03:03:55.103650');
INSERT INTO `b_login_log` VALUES (11, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-06-03 09:40:21.643698');
INSERT INTO `b_login_log` VALUES (12, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-06-03 23:07:45.816265');
INSERT INTO `b_login_log` VALUES (13, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-06-17 17:22:37.750036');
INSERT INTO `b_login_log` VALUES (14, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-06-17 18:59:47.265503');
INSERT INTO `b_login_log` VALUES (15, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-06-18 23:00:37.543232');
INSERT INTO `b_login_log` VALUES (16, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.6261.95 Safari/537.36', '2024-06-19 21:11:26.490328');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 943 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-12-31 11:17:57.124834', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-12-31 11:17:57.127826', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-12-31 11:17:57.130818', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-12-31 11:18:03.676255', '/myapp/admin/adminLogin', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-12-31 11:18:03.882704', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-12-31 11:18:03.884698', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-12-31 11:18:03.886693', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-12-31 11:18:05.357449', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-12-31 11:18:10.737173', '/myapp/admin/classification/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-12-31 11:18:10.757120', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-12-31 11:18:16.735239', '/myapp/admin/classification/create', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-12-31 11:18:16.757181', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-12-31 11:18:21.322795', '/myapp/admin/classification/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-12-31 11:18:21.359695', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-12-31 11:18:22.602190', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-12-31 11:18:22.610167', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-12-31 11:18:22.608174', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-12-31 11:18:37.520729', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-12-31 11:18:37.578574', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-12-31 11:18:44.897258', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-12-31 11:18:46.085593', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-12-31 11:18:47.055757', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-12-31 11:18:47.060742', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-12-31 11:18:47.064731', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-12-31 11:19:22.146170', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-12-31 11:19:22.719940', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-12-31 11:19:22.722932', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-12-31 11:19:22.736895', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-12-31 11:19:24.176815', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-12-31 11:19:28.204866', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-12-31 11:19:28.206858', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-12-31 11:19:28.213840', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-12-31 11:20:32.013211', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-12-31 11:30:01.789209', '/myapp/admin/adminLogin', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-12-31 11:30:02.042497', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-12-31 11:30:02.051472', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-12-31 11:30:02.073414', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-12-31 11:30:04.860273', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1012');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-12-31 11:30:05.407529', '/myapp/admin/loginLog/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-12-31 11:30:06.628797', '/myapp/admin/opLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-12-31 11:30:08.076194', '/myapp/admin/errorLog/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-12-31 11:30:09.330433', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-12-31 11:30:10.440268', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-12-31 11:30:13.018858', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-12-31 11:30:13.022849', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-12-31 11:30:13.028833', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-05-05 23:55:39.038768', '/myapp/admin/adminLogin', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-05-05 23:55:41.390253', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-05-05 23:55:41.405243', '/myapp/admin/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-05-05 23:55:41.420233', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-05-05 23:55:45.425085', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-05-05 23:55:46.927434', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-05-05 23:56:06.761764', '/myapp/admin/user/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-05-05 23:56:07.060578', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-05-05 23:56:16.343657', '/myapp/admin/adminLogin', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-05-07 15:51:07.951090', '/myapp/admin/user/create', 'POST', NULL, '5');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-05-07 16:07:49.225725', '/myapp/admin/user/register', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-05-07 16:10:07.666158', '/myapp/admin/user/register', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-05-07 16:10:21.578972', '/myapp/admin/adminLogin', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-05-07 16:10:24.429927', '/myapp/admin/classification/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-05-07 16:10:24.579827', '/myapp/admin/classification/list', 'GET', NULL, '222');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-05-07 16:10:24.618800', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-05-07 16:10:29.350297', '/myapp/admin/user/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-05-07 16:35:18.557631', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-05-07 16:35:19.596761', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-05-07 16:35:19.613750', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-05-07 16:35:19.626740', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-05-07 21:08:02.864625', '/myapp/admin/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-05-07 21:08:02.869622', '/myapp/admin/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-05-07 21:08:02.913594', '/myapp/admin/classification/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-05-07 21:08:52.059319', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-05-07 21:08:58.485704', '/myapp/admin/adminLogin', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-05-07 21:08:58.982674', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-05-07 21:08:58.986669', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-05-07 21:08:59.016651', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-05-07 21:09:00.662148', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-05-07 21:09:11.624383', '/myapp/admin/user/delete', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-05-07 21:09:11.714329', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-05-20 14:56:21.717971', '/myapp/admin/thing/list', 'GET', NULL, '136');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-05-20 14:56:21.721969', '/myapp/admin/thing/list', 'GET', NULL, '142');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-05-20 14:56:21.742954', '/myapp/admin/thing/list', 'GET', NULL, '162');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-05-20 14:58:26.373584', '/myapp/admin/adminLogin', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-05-20 14:58:27.599917', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-05-20 14:58:27.631895', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-05-20 14:58:27.638892', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-05-20 14:58:30.071128', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-05-20 14:58:32.634933', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-05-20 14:58:34.384994', '/myapp/admin/loginLog/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-05-20 14:58:36.966364', '/myapp/admin/opLog/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-05-20 14:58:38.086441', '/myapp/admin/errorLog/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-05-20 14:58:41.184496', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1118');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-05-20 14:58:42.782992', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-05-20 14:58:42.809976', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-05-20 14:58:42.839958', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-05-20 14:59:07.304257', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-05-20 14:59:08.686572', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-05-20 22:30:42.141855', '/myapp/admin/tag/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-05-20 22:30:42.175834', '/myapp/admin/tag/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-05-20 22:30:42.194824', '/myapp/admin/tag/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-05-20 22:30:46.104359', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-05-20 22:30:53.630925', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-05-20 22:30:53.664022', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-05-20 22:30:53.683011', '/myapp/admin/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-05-20 22:30:55.261773', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-05-20 22:30:56.649335', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-05-20 22:30:56.653332', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-05-20 22:30:56.682413', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-05-20 22:31:00.720842', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-05-20 22:31:02.012006', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-05-20 22:31:02.016004', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-05-20 22:31:02.049984', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-05-20 22:31:07.458716', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1124');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-05-20 22:31:08.310396', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-05-20 22:31:08.314394', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-05-20 22:31:08.338379', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-05-20 23:43:31.727176', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-05-20 23:43:31.739169', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-05-20 23:43:48.116190', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-05-20 23:43:48.119187', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-05-20 23:43:51.751886', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-05-20 23:43:51.755884', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-05-20 23:45:33.227595', '/myapp/admin/adminLogin', 'POST', NULL, '75');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-05-20 23:45:35.167627', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-05-20 23:45:35.191425', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-05-20 23:45:37.518665', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-05-20 23:45:39.122927', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-05-20 23:45:41.679376', '/myapp/admin/loginLog/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-05-20 23:45:42.616682', '/myapp/admin/opLog/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-05-20 23:45:43.790389', '/myapp/admin/errorLog/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-05-20 23:45:51.153259', '/myapp/admin/opLog/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-05-20 23:45:52.551433', '/myapp/admin/errorLog/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-05-20 23:45:57.326624', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-05-20 23:48:27.177090', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-05-20 23:48:27.189082', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-05-20 23:48:29.762599', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-05-20 23:48:32.121269', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-05-20 23:48:33.215073', '/myapp/admin/opLog/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-05-20 23:48:34.321129', '/myapp/admin/errorLog/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-05-20 23:48:35.679938', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-05-20 23:48:36.916963', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-05-20 23:48:38.487406', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-05-20 23:48:38.521386', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-05-20 23:48:53.070388', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-05-25 21:17:06.297410', '/myapp/admin/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-05-25 21:17:06.293414', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-05-25 21:17:41.835851', '/myapp/admin/user/register', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-05-25 21:17:48.753743', '/myapp/admin/adminLogin', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-05-25 21:17:50.038209', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-05-25 21:17:50.051202', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-05-25 21:17:56.315487', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-05-25 21:17:56.414429', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-05-25 21:18:20.403384', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-05-25 21:18:20.509321', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-05-25 21:18:25.502643', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-05-25 21:18:28.250162', '/myapp/admin/classification/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-05-25 21:18:28.312151', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-05-25 21:18:37.882608', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-05-25 21:18:37.946572', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-05-25 21:18:40.462486', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-05-25 21:18:43.988366', '/myapp/admin/user/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-05-25 21:18:44.107294', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-05-25 21:18:47.518853', '/myapp/admin/loginLog/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-05-25 21:18:48.555479', '/myapp/admin/opLog/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-05-25 21:18:49.612041', '/myapp/admin/errorLog/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-05-25 21:19:24.672764', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-05-25 21:19:26.512439', '/myapp/admin/loginLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-05-25 21:19:27.381792', '/myapp/admin/opLog/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-05-25 21:19:28.526885', '/myapp/admin/errorLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-05-25 21:19:29.709446', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-05-25 21:19:29.730435', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-05-25 21:19:31.132603', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-05-25 21:21:01.694180', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-05-25 21:21:30.301808', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-05-25 21:21:32.172772', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-05-25 21:21:32.175769', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-05-25 21:21:40.262972', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-05-25 21:21:41.753727', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-05-25 21:21:41.767719', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-05-25 21:21:44.399078', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-05-25 21:21:50.171323', '/myapp/admin/courseinfo/create', 'POST', NULL, '587');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-05-25 21:22:53.850904', '/myapp/admin/user/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-05-25 21:22:54.039797', '/myapp/admin/courseinfo/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-05-25 21:23:42.153909', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-05-25 21:23:42.315809', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-05-25 21:23:43.580433', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-05-25 21:27:35.675653', '/myapp/admin/courseinfo/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-05-25 21:28:09.100094', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-05-25 21:28:10.009723', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-05-25 21:28:24.268113', '/myapp/admin/courseinfo/create', 'POST', NULL, '162');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-05-25 21:28:44.361715', '/myapp/admin/courseinfo/create', 'POST', NULL, '150');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-05-25 21:30:39.331015', '/myapp/admin/courseinfo/create', 'POST', NULL, '1479');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-05-25 21:30:51.739509', '/myapp/admin/courseinfo/create', 'POST', NULL, '308');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-05-25 21:33:10.931314', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-05-25 21:33:15.234478', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-05-25 21:33:16.186199', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-05-25 21:33:27.799330', '/myapp/admin/courseinfo/create', 'POST', NULL, '152');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-05-25 21:34:28.508095', '/myapp/admin/courseinfo/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-05-25 21:34:28.594045', '/myapp/admin/courseinfo/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-05-25 21:34:36.609454', '/myapp/admin/courseinfo/update', 'POST', NULL, '705');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-05-25 21:34:44.589609', '/myapp/admin/courseinfo/update', 'POST', NULL, '139');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-05-25 21:35:39.914275', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-05-25 21:35:40.779871', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-05-25 21:35:48.689923', '/myapp/admin/courseinfo/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-05-25 21:35:48.760629', '/myapp/admin/courseinfo/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-05-25 21:35:53.206529', '/myapp/admin/courseinfo/delete', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-05-25 21:35:53.276482', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-05-25 21:36:09.162177', '/myapp/admin/user/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-05-25 21:36:09.252262', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-05-25 21:36:10.544825', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-05-25 21:40:43.751533', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-05-25 21:40:43.761572', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-05-25 21:53:16.979740', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-05-25 21:53:16.982738', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-05-25 21:54:27.264670', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-05-25 21:54:27.290654', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-05-25 21:54:34.306762', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-05-25 21:54:34.437683', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-05-25 21:54:53.126359', '/myapp/admin/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-05-25 21:54:53.257278', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-05-25 21:57:04.269026', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-05-25 21:57:04.275020', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-05-25 22:02:16.676949', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-05-25 22:02:16.706931', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-05-25 22:02:17.016741', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-05-25 22:02:40.530076', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-05-25 22:02:41.617296', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-05-25 22:02:41.624292', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-05-25 22:02:41.655275', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-05-25 22:02:47.873796', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-05-25 22:02:56.977576', '/myapp/admin/courseinfo/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-05-25 22:02:57.040680', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-05-25 22:03:20.994713', '/myapp/admin/courseinfo/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-05-25 22:03:21.077663', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-05-25 22:03:39.755781', '/myapp/admin/courseinfo/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-05-25 22:03:40.027683', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-05-25 22:03:54.338190', '/myapp/admin/courseinfo/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-05-25 22:03:54.413144', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-05-25 22:03:56.050320', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-05-25 22:03:56.852824', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-05-25 22:03:56.866816', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-05-25 22:03:56.888802', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-05-25 22:04:30.320850', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-05-25 22:04:31.188819', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-05-25 22:04:31.204810', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-05-25 22:04:31.232792', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-05-25 22:06:22.884881', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-05-25 22:06:23.909007', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-05-25 22:06:23.913609', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-05-25 22:06:23.938497', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-05-25 22:17:56.791792', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-05-25 22:17:57.361444', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-05-25 22:17:57.379431', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-05-25 22:17:57.400418', '/myapp/admin/courseinfo/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-05-25 22:18:21.464440', '/myapp/admin/thing/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-05-25 22:18:21.583367', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-05-25 22:27:59.553372', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-05-25 22:28:00.614433', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-05-25 22:28:00.639419', '/myapp/admin/courseinfo/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-05-25 22:28:00.651412', '/myapp/admin/courseinfo/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-05-25 22:28:22.512715', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-05-25 22:28:22.644674', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-05-25 22:30:44.839101', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-05-25 22:30:45.873923', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-05-25 22:30:45.903903', '/myapp/admin/courseinfo/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-05-25 22:30:45.911900', '/myapp/admin/courseinfo/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-05-25 22:31:09.988400', '/myapp/admin/thing/create', 'POST', NULL, '648');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-05-25 22:32:56.848752', '/myapp/admin/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-05-25 22:32:57.004659', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-05-25 22:36:03.853319', '/myapp/admin/thing/create', 'POST', NULL, '59231');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-05-25 22:37:19.055725', '/myapp/admin/classification/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-05-25 22:37:20.226140', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-05-25 22:37:20.343068', '/myapp/admin/courseinfo/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-05-25 22:37:20.370050', '/myapp/admin/courseinfo/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-05-25 22:37:46.646304', '/myapp/admin/thing/create', 'POST', NULL, '1054');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-05-25 22:38:10.775464', '/myapp/admin/thing/create', 'POST', NULL, '327');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-05-25 22:38:33.686978', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-05-25 22:38:34.843798', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-05-25 22:38:34.973720', '/myapp/admin/classification/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-05-25 22:38:35.158605', '/myapp/admin/courseinfo/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-05-25 22:40:02.001253', '/myapp/admin/thing/create', 'POST', NULL, '70775');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-05-25 22:41:01.506057', '/myapp/admin/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-05-25 22:41:02.577927', '/myapp/admin/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-05-25 22:41:02.690860', '/myapp/admin/classification/list', 'GET', NULL, '167');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-05-25 22:41:02.791797', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-05-25 22:41:25.761772', '/myapp/admin/thing/create', 'POST', NULL, '935');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-05-25 22:45:52.404486', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-05-25 22:45:53.581548', '/myapp/admin/classification/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-05-25 22:45:53.736989', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-05-25 22:45:53.761975', '/myapp/admin/courseinfo/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-05-25 22:46:16.098323', '/myapp/admin/thing/create', 'POST', NULL, '957');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-05-25 22:48:48.251614', '/myapp/admin/thing/create', 'POST', NULL, '135353');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-05-25 22:50:03.131647', '/myapp/admin/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-05-25 22:50:03.728906', '/myapp/admin/classification/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-05-25 22:50:03.912793', '/myapp/admin/courseinfo/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-05-25 22:50:03.939777', '/myapp/admin/courseinfo/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-05-25 22:50:18.052413', '/myapp/admin/thing/create', 'POST', NULL, '358');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-05-25 22:50:54.849094', '/myapp/admin/courseinfo/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-05-25 22:50:54.906060', '/myapp/admin/courseinfo/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-05-25 22:50:54.964024', '/myapp/admin/courseinfo/list', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-05-25 22:51:02.041780', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-05-25 22:51:03.093963', '/myapp/admin/classification/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-05-25 22:51:03.202898', '/myapp/admin/courseinfo/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-05-25 22:51:03.271854', '/myapp/admin/courseinfo/list', 'GET', NULL, '115');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-05-25 22:51:19.728635', '/myapp/admin/thing/create', 'POST', NULL, '300');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-05-25 22:52:18.374599', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-05-25 22:52:18.389591', '/myapp/admin/courseinfo/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-05-25 22:52:18.533503', '/myapp/admin/courseinfo/list', 'GET', NULL, '197');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-05-25 22:52:35.901799', '/myapp/admin/thing/create', 'POST', NULL, '436');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-05-25 22:54:17.348973', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-05-25 22:54:18.582908', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-05-25 22:54:18.684846', '/myapp/admin/courseinfo/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-05-25 22:54:18.807775', '/myapp/admin/courseinfo/list', 'GET', NULL, '164');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-05-25 22:54:42.166437', '/myapp/admin/thing/create', 'POST', NULL, '923');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-05-25 22:55:31.969004', '/myapp/admin/thing/create', 'POST', NULL, '25194');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-05-25 22:58:30.841370', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-05-25 22:58:30.881348', '/myapp/admin/courseinfo/list', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-05-25 22:58:31.068229', '/myapp/admin/courseinfo/list', 'GET', NULL, '264');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-05-25 22:58:32.187974', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-05-25 22:58:33.234548', '/myapp/admin/classification/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-05-25 22:58:33.367466', '/myapp/admin/courseinfo/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-05-25 22:58:33.440423', '/myapp/admin/courseinfo/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-05-25 22:58:49.762786', '/myapp/admin/thing/create', 'POST', NULL, '497');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-05-25 23:17:09.731523', '/myapp/admin/classification/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-05-25 23:17:11.050204', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-05-25 23:17:11.158137', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-05-25 23:17:11.315314', '/myapp/admin/classification/list', 'GET', NULL, '195');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-05-25 23:17:36.654239', '/myapp/admin/thing/create', 'POST', NULL, '93');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-05-25 23:27:48.223278', '/myapp/admin/classification/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-05-25 23:27:49.364369', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-05-25 23:27:49.437883', '/myapp/admin/courseinfo/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-05-25 23:27:49.622769', '/myapp/admin/courseinfo/list', 'GET', NULL, '234');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-05-25 23:28:20.945213', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-05-25 23:28:21.700663', '/myapp/admin/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-05-25 23:28:21.860939', '/myapp/admin/courseinfo/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-05-25 23:28:21.945892', '/myapp/admin/courseinfo/list', 'GET', NULL, '160');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-05-25 23:28:38.216378', '/myapp/admin/thing/create', 'POST', NULL, '96');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-05-25 23:28:38.627128', '/myapp/admin/thing/list', 'GET', NULL, '211');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-05-25 23:37:05.225786', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-05-25 23:37:06.448789', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-05-25 23:37:06.562470', '/myapp/admin/courseinfo/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-05-25 23:37:06.715374', '/myapp/admin/courseinfo/list', 'GET', NULL, '214');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-05-25 23:37:36.388705', '/myapp/admin/thing/create', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-05-25 23:48:13.193314', '/myapp/admin/thing/list', 'GET', NULL, '145');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-05-25 23:48:13.230290', '/myapp/admin/thing/list', 'GET', NULL, '180');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-05-25 23:48:13.594066', '/myapp/admin/thing/list', 'GET', NULL, '546');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-05-25 23:48:50.396370', '/myapp/admin/classification/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-05-25 23:48:50.509300', '/myapp/admin/courseinfo/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-05-25 23:48:50.683193', '/myapp/admin/courseinfo/list', 'GET', NULL, '266');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-05-25 23:50:59.529264', '/myapp/admin/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-05-25 23:50:59.552719', '/myapp/admin/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-05-25 23:50:59.752597', '/myapp/admin/thing/list', 'GET', NULL, '294');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-05-25 23:51:24.986753', '/myapp/admin/thing/create', 'POST', NULL, '73');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-05-25 23:51:25.259589', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-05-25 23:51:41.494313', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-05-25 23:51:42.086464', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-05-25 23:51:42.116449', '/myapp/admin/classification/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-05-25 23:51:42.171412', '/myapp/admin/courseinfo/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-05-25 23:52:39.250261', '/myapp/admin/thing/update', 'POST', NULL, '80');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-05-25 23:52:39.427151', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-05-25 23:53:27.223792', '/myapp/admin/courseinfo/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-05-25 23:53:27.232786', '/myapp/admin/courseinfo/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-05-25 23:53:27.259769', '/myapp/admin/courseinfo/list', 'GET', NULL, '117');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-05-25 23:53:39.661963', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-05-25 23:53:39.799830', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-05-25 23:53:56.852400', '/myapp/admin/thing/update', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-05-25 23:53:56.973027', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-05-25 23:55:59.577559', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-05-25 23:55:59.593554', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-05-25 23:55:59.632524', '/myapp/admin/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-05-25 23:56:06.406953', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-05-25 23:56:07.755651', '/myapp/admin/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-05-25 23:56:07.788276', '/myapp/admin/classification/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-05-25 23:56:07.897192', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-05-25 23:58:14.212328', '/myapp/admin/courseinfo/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-05-25 23:58:14.226317', '/myapp/admin/courseinfo/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-05-25 23:58:14.238310', '/myapp/admin/courseinfo/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-05-25 23:58:39.318977', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-05-25 23:58:39.936346', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-05-25 23:58:39.988317', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-05-25 23:58:40.126230', '/myapp/admin/courseinfo/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-05-26 00:00:31.575569', '/myapp/admin/courseinfo/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-05-26 00:00:31.596556', '/myapp/admin/courseinfo/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-05-26 00:00:31.616543', '/myapp/admin/courseinfo/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-05-26 00:02:16.335168', '/myapp/admin/courseinfo/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-05-26 00:02:16.352157', '/myapp/admin/courseinfo/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-05-26 00:02:16.382139', '/myapp/admin/courseinfo/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-05-26 00:02:30.891387', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-05-26 00:02:30.999320', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-05-26 00:02:31.081268', '/myapp/admin/courseinfo/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-05-26 00:03:16.330466', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-05-26 00:03:16.398425', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-05-26 00:03:16.435402', '/myapp/admin/courseinfo/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-05-26 00:03:25.987203', '/myapp/admin/courseinfo/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-05-26 00:03:26.022181', '/myapp/admin/courseinfo/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-05-26 00:03:26.047166', '/myapp/admin/courseinfo/list', 'GET', NULL, '97');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-05-26 00:06:50.838753', '/myapp/admin/courseinfo/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-05-26 00:06:50.840752', '/myapp/admin/courseinfo/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-05-26 00:06:50.868734', '/myapp/admin/courseinfo/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-05-26 00:07:14.042772', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-05-26 00:07:14.162699', '/myapp/admin/courseinfo/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-05-26 00:07:14.211667', '/myapp/admin/courseinfo/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-05-26 00:08:30.146475', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-05-26 00:08:30.169461', '/myapp/admin/courseinfo/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-05-26 00:08:30.206438', '/myapp/admin/courseinfo/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-05-26 00:08:34.101429', '/myapp/admin/thing/update', 'POST', NULL, '188');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-05-26 00:08:34.556149', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-05-26 00:08:41.972967', '/myapp/admin/thing/update', 'POST', NULL, '142');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-05-26 00:08:42.289770', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-05-26 00:18:57.602638', '/myapp/admin/thing/list', 'GET', NULL, '95');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-05-26 00:18:57.658605', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-05-26 00:18:57.676592', '/myapp/admin/thing/list', 'GET', NULL, '175');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-05-26 00:20:35.683994', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-05-26 00:20:36.590689', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-05-26 00:20:36.616671', '/myapp/admin/classification/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-05-26 00:20:36.663643', '/myapp/admin/courseinfo/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-05-26 00:21:25.463734', '/myapp/admin/courseinfo/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-05-26 00:21:25.859488', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-05-26 00:21:27.015999', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-05-26 00:21:27.025994', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-05-26 00:21:27.084958', '/myapp/admin/courseinfo/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-05-26 00:31:07.428278', '/myapp/admin/courseinfo/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-05-26 00:31:07.450267', '/myapp/admin/courseinfo/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-05-26 00:31:07.464256', '/myapp/admin/courseinfo/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-05-26 00:31:40.229497', '/myapp/admin/courseinfo/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-05-26 00:31:40.246484', '/myapp/admin/courseinfo/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-05-26 00:31:40.288460', '/myapp/admin/courseinfo/list', 'GET', NULL, '116');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-05-26 00:31:45.877340', '/myapp/admin/thing/update', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-05-26 00:31:46.003263', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-05-26 00:32:12.900071', '/myapp/admin/courseinfo/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-05-26 00:32:12.913062', '/myapp/admin/courseinfo/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-05-26 00:32:12.929052', '/myapp/admin/courseinfo/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-05-26 00:32:17.361397', '/myapp/admin/thing/update', 'POST', NULL, '103');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-05-26 00:32:17.525297', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-05-26 00:32:57.778978', '/myapp/admin/courseinfo/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-05-26 00:32:57.820953', '/myapp/admin/courseinfo/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-05-26 00:32:57.848935', '/myapp/admin/courseinfo/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-05-26 00:33:12.663541', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-05-26 00:33:13.599010', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-05-26 00:33:13.616002', '/myapp/admin/classification/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-05-26 00:33:13.665970', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-05-26 00:33:18.587504', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-05-26 00:33:30.841786', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-05-26 00:33:30.886763', '/myapp/admin/courseinfo/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-05-26 00:33:30.914740', '/myapp/admin/courseinfo/list', 'GET', NULL, '108');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-05-26 00:33:43.934971', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-05-26 00:33:43.997933', '/myapp/admin/courseinfo/list', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-05-26 00:33:44.010925', '/myapp/admin/courseinfo/list', 'GET', NULL, '104');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-05-26 00:33:46.183464', '/myapp/admin/thing/update', 'POST', NULL, '99');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-05-26 00:33:46.364284', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-05-26 01:09:18.044270', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-05-26 01:09:18.082246', '/myapp/admin/thing/list', 'GET', NULL, '113');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-05-26 01:09:18.096240', '/myapp/admin/thing/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-05-26 01:09:24.636892', '/myapp/admin/classification/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-05-26 01:09:25.993063', '/myapp/admin/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-05-26 01:09:26.009053', '/myapp/admin/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-05-26 01:09:26.330854', '/myapp/admin/courseinfo/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-05-26 01:09:34.444743', '/myapp/admin/thing/update', 'POST', NULL, '91');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-05-26 01:09:34.574664', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-05-26 01:10:41.945035', '/myapp/admin/courseinfo/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-05-26 01:10:41.961028', '/myapp/admin/courseinfo/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-05-26 01:10:41.976018', '/myapp/admin/courseinfo/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-05-26 02:25:41.126452', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-05-26 02:25:41.180420', '/myapp/admin/thing/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-05-26 02:25:41.197409', '/myapp/admin/thing/list', 'GET', NULL, '137');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-05-26 02:25:49.081348', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-05-26 02:25:51.087243', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-05-26 02:25:51.101233', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-05-26 02:25:51.126217', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-05-26 02:27:37.741686', '/myapp/admin/courseinfo/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-05-26 02:27:38.580601', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-05-26 02:27:38.600586', '/myapp/admin/courseinfo/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-05-26 02:27:38.662547', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-05-26 02:27:40.207381', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-05-26 02:27:41.227904', '/myapp/admin/courseinfo/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-05-26 02:27:41.239892', '/myapp/admin/courseinfo/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-05-26 02:27:41.274872', '/myapp/admin/courseinfo/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-05-26 02:29:10.341840', '/myapp/admin/score/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-05-26 02:29:10.357831', '/myapp/admin/score/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-05-26 02:29:10.410799', '/myapp/admin/score/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-05-26 02:29:12.504299', '/myapp/admin/user/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-05-26 02:29:13.440599', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-05-26 02:29:13.465579', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-05-26 02:29:13.496563', '/myapp/admin/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-05-26 02:29:15.509389', '/myapp/admin/courseinfo/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-05-26 02:29:16.423069', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-05-26 02:29:16.440660', '/myapp/admin/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-05-26 02:29:16.474258', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-05-26 02:29:34.150635', '/myapp/admin/courseinfo/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-05-26 02:29:34.897927', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-05-26 02:29:34.908919', '/myapp/admin/courseinfo/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-05-26 02:29:34.968885', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-05-26 02:30:16.550107', '/myapp/admin/courseinfo/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-05-26 02:30:17.488245', '/myapp/admin/courseinfo/list', 'GET', NULL, '111');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-05-26 02:30:17.554204', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-05-26 02:30:18.436825', '/myapp/admin/thing/list', 'GET', NULL, '922');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-05-26 02:30:26.259947', '/myapp/admin/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-05-26 02:30:26.274937', '/myapp/admin/classification/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-05-26 02:30:26.298923', '/myapp/admin/classification/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-05-26 02:30:27.407058', '/myapp/admin/courseinfo/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-05-26 02:30:30.178352', '/myapp/admin/courseinfo/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-05-26 02:30:30.310269', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-05-26 02:30:30.629220', '/myapp/admin/thing/list', 'GET', NULL, '375');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-05-26 02:30:34.549305', '/myapp/admin/courseinfo/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-05-26 02:30:34.517327', '/myapp/admin/courseinfo/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-05-26 02:30:34.552304', '/myapp/admin/courseinfo/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-05-26 02:30:50.670597', '/myapp/admin/thing/create', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-05-26 02:30:50.797519', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-05-26 02:30:52.983207', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-05-26 02:30:55.275508', '/myapp/admin/classification/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-05-26 02:30:55.349462', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-05-26 02:30:56.369522', '/myapp/admin/courseinfo/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-05-26 02:30:57.742216', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-05-26 02:30:57.785190', '/myapp/admin/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-05-26 02:30:58.054023', '/myapp/admin/thing/list', 'GET', NULL, '349');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-05-26 02:31:11.864210', '/myapp/admin/score/create', 'POST', NULL, '541');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-05-26 02:31:33.369970', '/myapp/admin/score/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-05-26 02:31:33.753910', '/myapp/admin/score/list', 'GET', NULL, '338');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-05-26 02:31:47.164005', '/myapp/admin/score/list', 'GET', NULL, '281');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-05-26 02:31:48.151757', '/myapp/admin/score/list', 'GET', NULL, '486');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-05-26 02:32:47.229056', '/myapp/admin/score/list', 'GET', NULL, '342');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-05-26 02:33:13.557654', '/myapp/admin/courseinfo/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-05-26 02:33:19.460625', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-05-26 02:33:19.495606', '/myapp/admin/thing/list', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-05-26 02:33:19.757443', '/myapp/admin/thing/list', 'GET', NULL, '362');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-05-26 02:35:45.593282', '/myapp/admin/courseinfo/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-05-26 02:35:46.315774', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-05-26 02:35:46.336761', '/myapp/admin/courseinfo/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-05-26 02:35:46.447694', '/myapp/admin/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-05-26 02:35:55.562378', '/myapp/admin/score/delete', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-05-26 02:35:55.621342', '/myapp/admin/score/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-05-26 02:36:02.442550', '/myapp/admin/score/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-05-26 02:36:02.515022', '/myapp/admin/score/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-05-26 02:36:19.938518', '/myapp/admin/courseinfo/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-05-26 02:36:23.892471', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-05-26 02:36:24.641557', '/myapp/admin/courseinfo/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-05-26 02:39:10.159383', '/myapp/admin/score/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-05-26 02:39:10.174372', '/myapp/admin/score/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-05-26 02:39:10.217348', '/myapp/admin/score/list', 'GET', NULL, '109');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-05-26 02:39:10.894311', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-05-26 02:39:14.429981', '/myapp/admin/courseinfo/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-05-26 02:39:15.814158', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-05-26 02:39:15.838140', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-05-26 02:39:15.875305', '/myapp/admin/thing/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-05-26 02:39:19.751512', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2024-05-26 02:39:20.974695', '/myapp/admin/courseinfo/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2024-05-26 02:39:20.994684', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2024-05-26 02:39:21.096621', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2024-05-26 02:41:52.244601', '/myapp/admin/user/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2024-05-26 02:41:52.965062', '/myapp/admin/courseinfo/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2024-05-26 02:41:52.999040', '/myapp/admin/courseinfo/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2024-05-26 02:41:53.134958', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2024-05-26 02:42:03.725323', '/myapp/admin/score/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2024-05-26 02:42:03.823264', '/myapp/admin/score/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2024-05-26 02:42:08.358431', '/myapp/admin/score/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2024-05-26 02:42:14.421388', '/myapp/admin/score/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2024-05-26 02:42:15.668350', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2024-05-26 02:42:16.639466', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2024-05-26 02:42:16.670445', '/myapp/admin/courseinfo/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2024-05-26 02:42:16.737406', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2024-05-26 02:42:18.315582', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2024-05-26 02:42:19.756179', '/myapp/admin/courseinfo/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2024-05-26 02:42:19.808146', '/myapp/admin/courseinfo/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2024-05-26 02:42:19.825135', '/myapp/admin/courseinfo/list', 'GET', NULL, '127');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2024-05-26 02:42:24.604875', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2024-05-26 02:42:25.460910', '/myapp/admin/courseinfo/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2024-05-26 02:42:25.472900', '/myapp/admin/courseinfo/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2024-05-26 02:42:25.545852', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2024-05-26 02:42:27.142957', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2024-05-26 02:42:28.182154', '/myapp/admin/courseinfo/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2024-05-26 02:42:28.178156', '/myapp/admin/courseinfo/list', 'GET', NULL, '86');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2024-05-26 02:42:28.216133', '/myapp/admin/courseinfo/list', 'GET', NULL, '125');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2024-05-26 02:42:32.570024', '/myapp/admin/courseinfo/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2024-05-26 02:42:33.090396', '/myapp/admin/courseinfo/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2024-05-26 02:42:33.115379', '/myapp/admin/courseinfo/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2024-05-26 02:42:33.177342', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2024-05-26 02:42:44.526853', '/myapp/admin/courseinfo/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2024-05-26 02:42:44.535847', '/myapp/admin/courseinfo/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2024-05-26 02:42:44.562831', '/myapp/admin/courseinfo/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2024-05-26 02:42:56.849627', '/myapp/admin/courseinfo/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2024-05-26 03:03:39.341991', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2024-05-26 03:03:55.127633', '/myapp/admin/adminLogin', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2024-05-26 03:03:56.442720', '/myapp/admin/classification/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2024-05-26 03:03:56.469701', '/myapp/admin/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2024-05-26 03:03:56.618528', '/myapp/admin/courseinfo/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2024-05-26 03:03:58.579653', '/myapp/admin/active/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2024-05-26 03:05:18.491172', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2024-05-26 03:05:18.499168', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2024-05-26 03:05:18.580119', '/myapp/admin/active/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2024-05-26 03:05:18.606102', '/myapp/admin/active/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2024-05-26 03:07:26.419949', '/myapp/admin/active/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2024-05-26 03:10:00.651797', '/myapp/admin/active/create', 'POST', NULL, '775');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2024-05-26 03:10:27.665668', '/myapp/admin/active/create', 'POST', NULL, '384');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2024-05-26 03:11:40.537124', '/myapp/admin/score/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2024-05-26 03:11:40.559109', '/myapp/admin/score/list', 'GET', NULL, '90');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2024-05-26 03:11:40.578098', '/myapp/admin/score/list', 'GET', NULL, '107');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2024-05-26 03:11:40.880993', '/myapp/admin/active/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2024-05-26 03:11:54.461849', '/myapp/admin/active/create', 'POST', NULL, '1048');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2024-05-26 03:13:10.510048', '/myapp/admin/active/create', 'POST', NULL, '23183');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2024-05-26 03:13:31.898489', '/myapp/admin/active/create', 'POST', NULL, '6950');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2024-05-26 03:15:23.824636', '/myapp/admin/active/create', 'POST', NULL, '586');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2024-05-26 03:17:02.958116', '/myapp/admin/score/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2024-05-26 03:17:02.972107', '/myapp/admin/score/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2024-05-26 03:17:03.013083', '/myapp/admin/score/list', 'GET', NULL, '99');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2024-05-26 03:17:03.780420', '/myapp/admin/active/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2024-05-26 03:17:12.594682', '/myapp/admin/active/create', 'POST', NULL, '1402');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2024-05-26 03:19:49.149927', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2024-05-26 03:19:49.189901', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2024-05-26 03:19:49.200895', '/myapp/admin/thing/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2024-05-26 03:19:49.909148', '/myapp/admin/active/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2024-05-26 03:20:21.759119', '/myapp/admin/active/create', 'POST', NULL, '555');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2024-05-26 03:21:46.977845', '/myapp/admin/active/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2024-05-26 03:21:57.583982', '/myapp/admin/active/create', 'POST', NULL, '569');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2024-05-26 03:23:46.720633', '/myapp/admin/score/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2024-05-26 03:23:46.764605', '/myapp/admin/score/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2024-05-26 03:23:46.772603', '/myapp/admin/score/list', 'GET', NULL, '101');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2024-05-26 03:23:48.473173', '/myapp/admin/active/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2024-05-26 03:23:58.791449', '/myapp/admin/active/create', 'POST', NULL, '1048');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2024-05-26 03:24:14.929751', '/myapp/admin/active/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2024-05-26 03:24:14.998712', '/myapp/admin/active/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2024-05-26 03:24:30.232031', '/myapp/admin/active/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2024-05-26 03:24:30.313977', '/myapp/admin/active/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2024-05-26 03:24:35.482859', '/myapp/admin/active/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2024-05-26 03:24:41.760046', '/myapp/admin/active/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2024-05-26 03:24:44.313925', '/myapp/admin/active/delete', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2024-05-26 03:24:44.374885', '/myapp/admin/active/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2024-05-26 03:24:47.786525', '/myapp/admin/active/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2024-05-26 03:24:48.492484', '/myapp/admin/active/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2024-05-26 03:24:48.732112', '/myapp/admin/active/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2024-05-26 03:24:51.691114', '/myapp/admin/active/delete', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2024-05-26 03:24:51.770065', '/myapp/admin/active/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2024-05-26 03:25:02.851581', '/myapp/admin/active/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2024-05-26 03:25:02.940526', '/myapp/admin/active/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2024-05-26 03:25:08.188257', '/myapp/admin/active/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2024-05-26 03:25:08.263998', '/myapp/admin/active/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2024-05-26 03:25:12.838954', '/myapp/admin/active/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2024-05-26 03:25:12.934896', '/myapp/admin/active/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2024-05-26 03:25:23.722188', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2024-05-26 03:25:23.746174', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2024-05-26 03:25:23.780154', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2024-05-26 03:25:24.749630', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2024-05-26 03:25:26.918116', '/myapp/admin/courseinfo/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2024-05-26 03:25:26.929109', '/myapp/admin/courseinfo/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2024-05-26 03:25:26.954094', '/myapp/admin/courseinfo/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2024-05-26 03:25:33.479267', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2024-05-26 03:25:34.328990', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2024-05-26 03:25:35.476767', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2024-05-26 03:25:35.493757', '/myapp/admin/courseinfo/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2024-05-26 03:25:35.553719', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2024-05-26 03:25:37.510077', '/myapp/admin/active/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2024-05-26 03:25:38.441215', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2024-05-26 03:27:28.630254', '/myapp/admin/score/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2024-05-26 03:27:28.647241', '/myapp/admin/score/list', 'GET', NULL, '105');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2024-05-26 03:27:28.664232', '/myapp/admin/score/list', 'GET', NULL, '121');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2024-05-26 03:27:29.574066', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2024-05-26 03:27:37.565622', '/myapp/admin/courseinfo/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2024-05-26 03:27:37.633741', '/myapp/admin/courseinfo/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2024-05-26 03:28:42.722927', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2024-05-26 03:29:06.404735', '/myapp/admin/courseinfo/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2024-05-26 03:29:06.493185', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2024-05-26 03:29:09.700233', '/myapp/admin/courseinfo/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2024-05-26 03:29:09.722216', '/myapp/admin/courseinfo/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2024-05-26 03:29:09.793172', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2024-05-26 03:29:19.661841', '/myapp/admin/active/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2024-05-26 03:29:27.788356', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2024-05-26 03:29:27.813341', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2024-05-26 03:29:27.844321', '/myapp/admin/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2024-05-26 03:29:28.243968', '/myapp/admin/courseinfo/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2024-05-26 03:29:30.150479', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2024-05-26 03:29:33.131478', '/myapp/admin/classification/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2024-05-26 03:29:33.210431', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2024-05-26 03:29:36.584702', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2024-05-26 03:29:36.626675', '/myapp/admin/classification/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2024-05-26 03:29:36.735609', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2024-05-26 03:29:37.839245', '/myapp/admin/user/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2024-05-26 03:29:41.012196', '/myapp/admin/user/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2024-05-26 03:29:41.110136', '/myapp/admin/user/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2024-05-26 03:29:52.644073', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2024-05-26 03:29:53.846547', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2024-05-26 03:29:53.863537', '/myapp/admin/courseinfo/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2024-05-26 03:29:53.925500', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2024-05-26 03:29:54.827648', '/myapp/admin/active/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2024-05-26 03:29:56.664418', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2024-05-26 03:29:56.677409', '/myapp/admin/thing/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2024-05-26 03:29:56.723383', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2024-05-26 03:29:57.821806', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2024-05-26 03:29:59.034193', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2024-05-26 03:29:59.061176', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2024-05-26 03:29:59.101154', '/myapp/admin/thing/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2024-05-26 03:30:00.144492', '/myapp/admin/active/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2024-05-26 03:30:00.965002', '/myapp/admin/courseinfo/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2024-05-26 03:30:06.945681', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2024-05-26 03:30:06.973664', '/myapp/admin/thing/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2024-05-26 03:30:06.997649', '/myapp/admin/thing/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2024-05-26 03:30:14.821719', '/myapp/admin/active/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2024-05-26 03:30:18.754253', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2024-05-26 03:30:18.797229', '/myapp/admin/classification/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2024-05-26 03:30:18.840199', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2024-05-26 08:49:20.733456', '/', 'GET', NULL, '144');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2024-05-26 08:49:42.709980', '/myapp/admin/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2024-05-26 08:49:42.717976', '/myapp/admin/thing/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2024-05-26 08:49:42.760949', '/myapp/admin/courseinfo/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2024-05-26 08:49:45.736658', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2024-05-26 08:49:46.694956', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2024-05-26 08:49:46.724936', '/myapp/admin/courseinfo/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2024-05-26 08:49:46.751923', '/myapp/admin/courseinfo/list', 'GET', NULL, '91');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2024-05-26 08:49:48.168464', '/myapp/admin/courseinfo/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2024-05-26 08:49:56.890700', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2024-05-26 08:49:56.907084', '/myapp/admin/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2024-05-26 08:49:56.944968', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2024-05-26 08:50:05.906506', '/myapp/admin/active/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2024-05-26 08:50:13.409160', '/myapp/admin/courseinfo/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2024-05-26 08:50:14.224485', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2024-05-26 08:50:18.547864', '/myapp/admin/courseinfo/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2024-05-26 08:50:18.557859', '/myapp/admin/courseinfo/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2024-05-26 08:50:18.572851', '/myapp/admin/courseinfo/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2024-05-26 08:50:19.326377', '/myapp/admin/courseinfo/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2024-05-26 08:50:20.663424', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2024-05-26 08:50:20.705396', '/myapp/admin/courseinfo/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2024-05-26 08:50:20.731375', '/myapp/admin/courseinfo/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2024-05-26 08:51:05.098974', '/myapp/admin/courseinfo/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2024-05-26 08:51:12.525588', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2024-05-26 08:51:12.562579', '/myapp/admin/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2024-05-26 08:51:12.582568', '/myapp/admin/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2024-05-26 08:51:18.746576', '/myapp/admin/courseinfo/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2024-05-26 08:51:18.774558', '/myapp/admin/courseinfo/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2024-05-26 08:51:18.789549', '/myapp/admin/courseinfo/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2024-05-26 15:24:31.748341', '/myapp/admin/courseinfo/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2024-05-26 15:24:31.763332', '/myapp/admin/courseinfo/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2024-05-26 15:24:31.773327', '/myapp/admin/courseinfo/list', 'GET', NULL, '87');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2024-05-26 15:24:39.912051', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2024-05-26 17:12:42.045038', '/myapp/admin/active/list', 'GET', NULL, '94');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2024-05-26 17:12:43.719095', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2024-05-26 17:14:51.796006', '/myapp/admin/user/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2024-05-26 17:14:51.892960', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2024-05-26 17:26:44.603352', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2024-05-26 17:26:45.657275', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2024-05-26 17:26:45.709253', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2024-05-26 17:26:45.772227', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2024-05-26 17:26:48.240560', '/myapp/admin/loginLog/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2024-05-26 17:26:50.285996', '/myapp/admin/courseinfo/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2024-05-26 17:26:50.306986', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2024-05-26 17:26:50.311983', '/myapp/admin/courseinfo/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2024-05-26 17:26:52.878003', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2024-05-26 17:27:08.201645', '/myapp/admin/user/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2024-05-26 17:27:08.278607', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2024-05-26 17:27:24.203034', '/myapp/admin/user/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2024-05-26 17:27:24.296990', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2024-05-26 17:30:26.406046', '/myapp/admin/user/update', 'POST', NULL, '42048');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2024-05-26 17:31:07.449253', '/myapp/admin/user/update', 'POST', NULL, '80');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2024-05-26 17:31:07.588190', '/myapp/admin/user/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2024-05-26 17:31:19.607957', '/myapp/admin/user/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2024-05-26 17:31:19.720903', '/myapp/admin/user/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2024-06-03 09:39:23.180047', '/myapp/admin/thing/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2024-06-03 09:39:23.173044', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2024-06-03 09:39:23.194037', '/myapp/admin/thing/list', 'GET', NULL, '83');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2024-06-03 09:39:45.919006', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2024-06-03 09:39:48.675892', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2024-06-03 09:39:48.679890', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2024-06-03 09:39:48.708875', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2024-06-03 09:39:51.450446', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2024-06-03 09:39:53.918672', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2024-06-03 09:39:58.630013', '/myapp/admin/classification/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2024-06-03 09:40:13.776048', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2024-06-03 09:40:14.476428', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2024-06-03 09:40:21.663688', '/myapp/admin/adminLogin', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2024-06-03 09:40:22.108476', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2024-06-03 09:40:22.114472', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2024-06-03 09:40:22.147457', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2024-06-03 09:40:26.138415', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2024-06-03 09:40:31.946111', '/myapp/admin/classification/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2024-06-03 09:40:31.988091', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2024-06-03 09:40:35.440743', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2024-06-03 09:40:35.495716', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2024-06-03 09:40:42.683392', '/myapp/admin/classification/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2024-06-03 09:40:42.758357', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2024-06-03 09:40:46.914869', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2024-06-03 09:40:46.981840', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2024-06-03 09:40:50.837553', '/myapp/admin/classification/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2024-06-03 09:40:50.897523', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2024-06-03 09:40:56.203450', '/myapp/admin/classification/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2024-06-03 09:40:56.264418', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2024-06-03 09:40:59.649447', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2024-06-03 09:40:59.716418', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2024-06-03 09:41:03.666956', '/myapp/admin/classification/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2024-06-03 09:41:03.742718', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2024-06-03 09:47:54.552580', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2024-06-03 09:47:56.386348', '/myapp/admin/score/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2024-06-03 09:47:56.413335', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2024-06-03 09:47:56.443327', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2024-06-03 09:47:57.406327', '/myapp/admin/active/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2024-06-03 23:06:36.066970', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2024-06-03 23:06:36.074965', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2024-06-03 23:06:36.093953', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2024-06-03 23:06:39.576963', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2024-06-03 23:06:41.003992', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2024-06-03 23:06:42.508658', '/myapp/admin/score/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2024-06-03 23:06:42.536641', '/myapp/admin/score/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2024-06-03 23:06:42.541643', '/myapp/admin/score/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2024-06-03 23:06:44.018483', '/myapp/admin/courseinfo/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2024-06-03 23:06:44.827292', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2024-06-03 23:06:45.625809', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2024-06-03 23:06:45.642797', '/myapp/admin/courseinfo/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2024-06-03 23:06:45.648796', '/myapp/admin/courseinfo/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2024-06-03 23:07:45.837251', '/myapp/admin/adminLogin', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2024-06-03 23:07:46.981919', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2024-06-03 23:07:47.009901', '/myapp/admin/courseinfo/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2024-06-03 23:07:47.024892', '/myapp/admin/courseinfo/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2024-06-03 23:07:51.511527', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2024-06-03 23:07:53.133130', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2024-06-03 23:07:53.142126', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2024-06-03 23:07:53.148121', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2024-06-03 23:07:53.588540', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2024-06-03 23:07:54.288732', '/myapp/admin/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2024-06-03 23:07:54.293728', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2024-06-03 23:07:54.314716', '/myapp/admin/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2024-06-03 23:08:02.718183', '/myapp/admin/active/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2024-06-03 23:08:04.110357', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2024-06-03 23:08:06.123099', '/myapp/admin/loginLog/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2024-06-03 23:08:09.465121', '/myapp/admin/opLog/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2024-06-03 23:08:11.161491', '/myapp/admin/errorLog/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2024-06-03 23:08:12.439442', '/myapp/admin/loginLog/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2024-06-03 23:08:15.961477', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2024-06-03 23:08:15.980470', '/myapp/admin/courseinfo/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2024-06-03 23:08:16.032436', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2024-06-03 23:08:22.899156', '/myapp/admin/courseinfo/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2024-06-03 23:08:22.915146', '/myapp/admin/courseinfo/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2024-06-03 23:08:22.925139', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2024-06-03 23:08:48.539140', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2024-06-03 23:09:07.407099', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2024-06-03 23:09:24.531070', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2024-06-03 23:09:24.544062', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2024-06-03 23:09:24.553058', '/myapp/admin/courseinfo/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2024-06-03 23:09:41.699133', '/myapp/admin/active/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2024-06-03 23:10:00.875574', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2024-06-03 23:10:40.839388', '/myapp/admin/courseinfo/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2024-06-03 23:10:40.854382', '/myapp/admin/courseinfo/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2024-06-03 23:10:40.861375', '/myapp/admin/courseinfo/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2024-06-03 23:11:10.923316', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2024-06-03 23:11:11.359050', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2024-06-03 23:11:12.817248', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2024-06-03 23:11:12.825242', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2024-06-03 23:11:12.850228', '/myapp/admin/thing/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2024-06-03 23:11:13.723303', '/myapp/admin/active/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2024-06-03 23:11:14.956472', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2024-06-03 23:11:18.837573', '/myapp/admin/courseinfo/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2024-06-03 23:11:18.844569', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2024-06-03 23:11:18.850567', '/myapp/admin/courseinfo/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2024-06-17 17:22:37.772169', '/myapp/admin/adminLogin', 'POST', NULL, '90');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2024-06-17 17:22:39.885097', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2024-06-17 17:22:39.889093', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2024-06-17 17:22:39.946058', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2024-06-17 17:22:42.430314', '/myapp/admin/active/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2024-06-17 17:22:43.565781', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2024-06-17 17:22:43.576774', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2024-06-17 17:22:43.596761', '/myapp/admin/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2024-06-17 17:22:44.445053', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2024-06-17 17:22:45.495315', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2024-06-17 17:23:34.614936', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2024-06-17 17:23:35.067262', '/myapp/admin/courseinfo/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2024-06-17 17:23:35.078256', '/myapp/admin/courseinfo/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2024-06-17 17:23:35.129226', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2024-06-17 17:23:36.039047', '/myapp/admin/active/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2024-06-17 17:23:37.947334', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2024-06-17 17:23:39.789531', '/myapp/admin/loginLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2024-06-17 17:23:41.816027', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2024-06-17 17:23:41.821025', '/myapp/admin/courseinfo/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2024-06-17 17:23:41.838015', '/myapp/admin/courseinfo/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2024-06-17 18:58:25.475293', '/myapp/admin/courseinfo/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2024-06-17 18:58:25.487287', '/myapp/admin/courseinfo/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2024-06-17 18:58:25.489286', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2024-06-17 18:59:38.624424', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2024-06-17 18:59:38.636418', '/myapp/admin/courseinfo/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2024-06-17 18:59:38.652408', '/myapp/admin/courseinfo/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2024-06-17 18:59:47.278219', '/myapp/admin/adminLogin', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2024-06-17 18:59:48.033671', '/myapp/admin/courseinfo/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2024-06-17 18:59:48.035670', '/myapp/admin/courseinfo/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2024-06-17 18:59:48.043664', '/myapp/admin/courseinfo/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2024-06-17 18:59:50.234967', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2024-06-17 18:59:51.548941', '/myapp/admin/courseinfo/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2024-06-17 18:59:51.554935', '/myapp/admin/courseinfo/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2024-06-17 18:59:51.563929', '/myapp/admin/courseinfo/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2024-06-18 23:00:37.573212', '/myapp/admin/adminLogin', 'POST', NULL, '138');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2024-06-18 23:00:39.897801', '/myapp/admin/courseinfo/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2024-06-18 23:00:39.922784', '/myapp/admin/courseinfo/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2024-06-18 23:00:39.926783', '/myapp/admin/courseinfo/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2024-06-18 23:00:42.720345', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2024-06-18 23:00:43.957187', '/myapp/admin/courseinfo/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2024-06-18 23:00:43.964183', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2024-06-18 23:00:43.970178', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2024-06-18 23:25:49.020585', '/admin/', 'GET', NULL, '610');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2024-06-19 21:11:26.523312', '/myapp/admin/adminLogin', 'POST', NULL, '114');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2024-06-19 21:11:28.837839', '/myapp/admin/classification/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2024-06-19 21:11:28.861826', '/myapp/admin/courseinfo/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2024-06-19 21:11:28.902809', '/myapp/admin/courseinfo/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2024-06-19 21:11:30.836328', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2024-06-19 21:11:32.641211', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2024-06-19 21:11:33.806820', '/myapp/admin/courseinfo/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2024-06-19 21:11:33.810819', '/myapp/admin/courseinfo/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2024-06-19 21:11:33.901775', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2024-06-19 21:11:34.900565', '/myapp/admin/active/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2024-06-19 21:11:35.392051', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2024-06-19 21:11:37.210018', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2024-06-19 21:11:43.339908', '/myapp/admin/courseinfo/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2024-06-19 21:11:43.344901', '/myapp/admin/courseinfo/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2024-06-19 21:11:43.348898', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2024-06-19 21:11:43.720723', '/myapp/admin/courseinfo/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2024-06-19 21:11:44.644856', '/myapp/admin/courseinfo/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2024-06-19 21:11:44.666850', '/myapp/admin/courseinfo/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2024-06-19 21:11:44.679845', '/myapp/admin/courseinfo/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2024-06-19 21:11:45.345340', '/myapp/admin/active/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2024-06-19 21:11:47.128953', '/myapp/admin/user/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2024-06-19 21:11:48.935870', '/myapp/admin/loginLog/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2024-06-19 21:11:50.039525', '/myapp/admin/opLog/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2024-06-19 21:11:50.841469', '/myapp/admin/errorLog/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2024-06-19 21:11:52.490325', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2024-06-19 21:11:54.576533', '/myapp/admin/classification/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2024-06-19 21:11:54.646499', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2024-06-19 21:11:56.648365', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2024-06-19 21:11:56.665358', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2024-06-19 21:11:56.686347', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2024-06-19 21:12:04.253522', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2024-06-19 21:12:05.265794', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2024-06-19 21:12:06.137379', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2024-06-19 21:12:11.298323', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2024-06-19 21:12:11.313315', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2024-06-19 21:12:11.334305', '/myapp/admin/courseinfo/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2024-06-19 21:18:53.116670', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2024-06-19 21:18:54.085461', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2024-06-19 21:18:54.091455', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2024-06-19 21:18:54.110447', '/myapp/admin/courseinfo/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2024-06-19 21:19:24.903591', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2024-06-19 21:19:29.547591', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2024-06-19 21:19:29.554589', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2024-06-19 21:19:29.588574', '/myapp/admin/courseinfo/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2024-06-19 21:20:13.266875', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2024-06-19 21:20:28.800139', '/myapp/admin/courseinfo/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2024-06-19 21:20:43.497453', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2024-06-19 21:20:43.501449', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2024-06-19 21:20:43.521440', '/myapp/admin/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2024-06-19 21:20:58.379454', '/myapp/admin/active/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2024-06-19 21:21:13.635076', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2024-06-19 21:21:33.534923', '/myapp/admin/loginLog/list', 'GET', NULL, '19');

-- ----------------------------
-- Table structure for b_score
-- ----------------------------
DROP TABLE IF EXISTS `b_score`;
CREATE TABLE `b_score`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `thing_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '学生名称',
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名称',
  `score` int NULL DEFAULT NULL COMMENT '考试得分',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '学生成绩表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_score
-- ----------------------------
INSERT INTO `b_score` VALUES (2, '43434', '数学', 33, '2024-05-26 02:36:02');
INSERT INTO `b_score` VALUES (3, '张小军33', '英语', 78, '2024-05-26 02:42:04');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jiguan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sfz` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `minzu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint NULL DEFAULT NULL,
  `courseinfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '所选课程',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '43434', '43434', '43434', '434', NULL, '434324', '4343', '4343', '', '0', '2024-05-25 23:51:24.970767', 3, '英语,数学');
INSERT INTO `b_thing` VALUES (2, '4343', '张小军33', '434', 'ewew', NULL, 'ewew', 'rewrew', 'ewewe', '', '1', '2024-05-26 02:30:50.661602', 3, '英语,数学');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (3, 'superadmin', 'e10adc3949ba59abbe56e057f20f883e', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-07 16:10:07.659163', 0, NULL, 0, '17c4520f6cfd1ab53d8745e84681eb49', NULL);
INSERT INTO `b_user` VALUES (4, 'admin11', 'e807f1fcf82d132f9bb018ca6738a19f', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-25 21:17:41.821859', 0, NULL, 0, 'e020590f0e18cd6053d7ae0e0a507609', NULL);

SET FOREIGN_KEY_CHECKS = 1;
