/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : petclinic

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 08/06/2022 21:18:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clinic
-- ----------------------------
DROP TABLE IF EXISTS `clinic`;
CREATE TABLE `clinic`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dotime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clinic
-- ----------------------------
INSERT INTO `clinic` VALUES ('安安宠物诊所', '10010', '河南郑州分店', '8：00-20：00', '让人放心的爱心宠物诊所');
INSERT INTO `clinic` VALUES ('欣欣宠物诊所', '10011', '河南开封分店', '6：00-18：00', '让人开心的宠物诊所');
INSERT INTO `clinic` VALUES ('爱心宠物诊所', '10012', '上海虹桥分店', '7：00-12：00', '用爱心服务宠物');
INSERT INTO `clinic` VALUES ('贝贝宠物诊所', '10013', '浙江杭州分店', '8：00-19：00', '因为放心，所以安心');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1');
INSERT INTO `employee` VALUES ('admin', 'admin');
INSERT INTO `employee` VALUES ('huahua', '123456');

-- ----------------------------
-- Table structure for owners
-- ----------------------------
DROP TABLE IF EXISTS `owners`;
CREATE TABLE `owners`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of owners
-- ----------------------------
INSERT INTO `owners` VALUES (6, '王五', '金水区', '郑州', '100');
INSERT INTO `owners` VALUES (8, '李四', '河南', '开封', '110');
INSERT INTO `owners` VALUES (11, '李六', '上海', '虹桥', '10011');
INSERT INTO `owners` VALUES (13, '张三', '浙江', '杭州', '12333');
INSERT INTO `owners` VALUES (17, '王杨', '安徽', '曹县', '155412');

-- ----------------------------
-- Table structure for pets
-- ----------------------------
DROP TABLE IF EXISTS `pets`;
CREATE TABLE `pets`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth_date` date NULL DEFAULT NULL,
  `type_id` int NOT NULL,
  `owner_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  INDEX `owner_id`(`owner_id`) USING BTREE,
  CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `pets_ibfk_2` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of pets
-- ----------------------------
INSERT INTO `pets` VALUES (7, '依依', '2022-06-08', 2, 6);
INSERT INTO `pets` VALUES (9, '二二', '2022-06-30', 5, 8);
INSERT INTO `pets` VALUES (10, '三三', '2022-06-08', 3, 11);
INSERT INTO `pets` VALUES (20, '四四', '2022-06-08', 6, 8);
INSERT INTO `pets` VALUES (22, '五五', '2022-06-08', 1, 17);

-- ----------------------------
-- Table structure for specialties
-- ----------------------------
DROP TABLE IF EXISTS `specialties`;
CREATE TABLE `specialties`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of specialties
-- ----------------------------
INSERT INTO `specialties` VALUES (1, '看牙');
INSERT INTO `specialties` VALUES (2, '看皮肤');
INSERT INTO `specialties` VALUES (3, '治感冒');
INSERT INTO `specialties` VALUES (4, '治大病');
INSERT INTO `specialties` VALUES (5, '看眼');
INSERT INTO `specialties` VALUES (6, '疑难杂症');

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '泰迪');
INSERT INTO `types` VALUES (2, '柯基');
INSERT INTO `types` VALUES (3, '金毛');
INSERT INTO `types` VALUES (4, '哈士奇');
INSERT INTO `types` VALUES (5, '仓鼠');
INSERT INTO `types` VALUES (6, '龙马');
INSERT INTO `types` VALUES (7, '鹦鹉');
INSERT INTO `types` VALUES (8, '小鸟');

-- ----------------------------
-- Table structure for vet_specialties
-- ----------------------------
DROP TABLE IF EXISTS `vet_specialties`;
CREATE TABLE `vet_specialties`  (
  `vet_id` int NOT NULL,
  `specialty_id` int NOT NULL,
  INDEX `vet_id`(`vet_id`) USING BTREE,
  INDEX `specialty_id`(`specialty_id`) USING BTREE,
  CONSTRAINT `vet_specialties_ibfk_1` FOREIGN KEY (`vet_id`) REFERENCES `vets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vet_specialties_ibfk_2` FOREIGN KEY (`specialty_id`) REFERENCES `specialties` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of vet_specialties
-- ----------------------------
INSERT INTO `vet_specialties` VALUES (3, 5);
INSERT INTO `vet_specialties` VALUES (5, 6);
INSERT INTO `vet_specialties` VALUES (10, 1);

-- ----------------------------
-- Table structure for vets
-- ----------------------------
DROP TABLE IF EXISTS `vets`;
CREATE TABLE `vets`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of vets
-- ----------------------------
INSERT INTO `vets` VALUES (3, '张老师');
INSERT INTO `vets` VALUES (5, '王老师');
INSERT INTO `vets` VALUES (10, '赵老师');

-- ----------------------------
-- Table structure for visits
-- ----------------------------
DROP TABLE IF EXISTS `visits`;
CREATE TABLE `visits`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pet_id` int NOT NULL,
  `visit_date` date NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pet_id`(`pet_id`) USING BTREE,
  CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of visits
-- ----------------------------
INSERT INTO `visits` VALUES (1, 7, '2022-06-08', '腰痛');
INSERT INTO `visits` VALUES (9, 9, '2022-06-08', '背痛');
INSERT INTO `visits` VALUES (10, 9, '2022-06-29', '头痛');
INSERT INTO `visits` VALUES (15, 9, '2022-06-08', '不吃饭');
INSERT INTO `visits` VALUES (16, 9, '2022-06-29', '咬人');
INSERT INTO `visits` VALUES (17, 7, '2022-06-15', '吓人');
INSERT INTO `visits` VALUES (18, 7, '2022-06-09', '感染');

SET FOREIGN_KEY_CHECKS = 1;
