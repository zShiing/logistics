/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : bi

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 24/05/2019 17:16:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域编码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域名称',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域描述',
  `meters` int(11) NULL DEFAULT NULL COMMENT '接单范围（km）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES (2, '1', '贵阳海螺', NULL, NULL);
INSERT INTO `area` VALUES (3, '2', '贵定海螺', NULL, NULL);
INSERT INTO `area` VALUES (4, '3', '惠水西南', NULL, NULL);
INSERT INTO `area` VALUES (5, '4', '贵州豪龙', NULL, NULL);
INSERT INTO `area` VALUES (6, '5', '都匀豪龙', NULL, NULL);
INSERT INTO `area` VALUES (7, '6', '麻江明达', NULL, NULL);
INSERT INTO `area` VALUES (8, '7', '六矿瑞安', NULL, NULL);
INSERT INTO `area` VALUES (9, '8', '遵义海螺', NULL, NULL);
INSERT INTO `area` VALUES (10, '9', '遵义励峰', NULL, NULL);
INSERT INTO `area` VALUES (11, '10', '湄潭江葛', NULL, NULL);
INSERT INTO `area` VALUES (12, '11', '铜仁海螺', NULL, NULL);
INSERT INTO `area` VALUES (13, '12', '龙里红狮', NULL, NULL);
INSERT INTO `area` VALUES (14, '13', '镇雄转灰点', NULL, NULL);
INSERT INTO `area` VALUES (15, '14', '贵州麟山', NULL, NULL);
INSERT INTO `area` VALUES (16, '15', '紫云西南', NULL, NULL);
INSERT INTO `area` VALUES (17, '16', '贵州森垚', NULL, NULL);
INSERT INTO `area` VALUES (18, '17', '安龙海螺', NULL, NULL);
INSERT INTO `area` VALUES (19, '18', '水城海螺', NULL, NULL);
INSERT INTO `area` VALUES (20, '19', '册亨德隆', NULL, NULL);
INSERT INTO `area` VALUES (21, '20', '湖南测试区域', NULL, NULL);
INSERT INTO `area` VALUES (23, '21', '水城豪龙', NULL, NULL);

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `moto_id` int(11) NULL DEFAULT NULL COMMENT '所属车队',
  `type` int(11) NULL DEFAULT NULL COMMENT '车辆类型',
  `license` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车牌号',
  `driver` int(11) NULL DEFAULT NULL COMMENT '驾驶员',
  `state` int(1) NULL DEFAULT NULL COMMENT '车辆状态',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '位置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (6, 3, 2, '贵AA5612', 17, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (7, 3, 3, '湘 B256VS', 17, 2, '');
INSERT INTO `car` VALUES (9, 3, 3, '湘 A25Q6', 15, 2, '');
INSERT INTO `car` VALUES (10, 3, 1, '湘 A25Q7', NULL, 4, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (11, 3, 1, '湘 A25Q8', 15, 3, '');
INSERT INTO `car` VALUES (12, 3, 1, '湘 A25Q9', NULL, 1, '');
INSERT INTO `car` VALUES (13, 3, 1, '湘 A25Q1', NULL, 1, '');
INSERT INTO `car` VALUES (15, 3, 2, '湘 A25Q2', 15, 2, '');
INSERT INTO `car` VALUES (16, 3, 2, '湘 A25Q3', 15, 2, '');
INSERT INTO `car` VALUES (17, 3, 2, '湘 A25Q4', 15, 2, '');
INSERT INTO `car` VALUES (18, 3, 2, '湘 A25Q5', 15, 2, '');
INSERT INTO `car` VALUES (19, 3, 1, '湘 A26Q6', NULL, 1, '');
INSERT INTO `car` VALUES (20, 4, 1, '湘 A27Q6', NULL, 1, '');
INSERT INTO `car` VALUES (21, 4, 1, '湘 A28Q6', 17, 2, '');
INSERT INTO `car` VALUES (22, 4, 2, '湘 A29Q6', 19, 1, '');
INSERT INTO `car` VALUES (23, 4, 3, '湘 A15Q6', 17, 2, '');
INSERT INTO `car` VALUES (24, 4, 2, '湘 A35Q6', 17, 2, '');
INSERT INTO `car` VALUES (25, 4, 3, '湘 A65Q6', 17, 2, '');
INSERT INTO `car` VALUES (26, 4, 3, '湘 A45Q6', 19, 2, '');
INSERT INTO `car` VALUES (27, 4, 3, '湘 A75Q6', 20, 2, '');
INSERT INTO `car` VALUES (28, 4, 2, '湘 A85Q6', 20, 1, '');
INSERT INTO `car` VALUES (29, 4, 1, '贵A123312', 19, 1, '');
INSERT INTO `car` VALUES (30, 4, 2, '贵A781212', 20, 1, '');
INSERT INTO `car` VALUES (31, 3, 1, '贵AB7714', 39, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (32, 3, 1, '贵AC6752', 40, 1, '');
INSERT INTO `car` VALUES (34, 3, 1, '贵AB9496', 41, 1, '');
INSERT INTO `car` VALUES (36, 6, 3, '湘 BV1959', 17, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (37, 0, 0, '请选择车辆', 0, 2, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (68, 7, 3, '贵A88888', 37, 1, '');
INSERT INTO `car` VALUES (69, 8, 2, '贵A81234', 47, 1, '106.7091771,26.62990674');
INSERT INTO `car` VALUES (70, 8, 2, '贵A11111', 48, 1, '106.36234490135,26.672573571412');
INSERT INTO `car` VALUES (71, 5, 2, '湘A12345', 43, 1, '112.97935279,28.21347823');

-- ----------------------------
-- Table structure for car_type
-- ----------------------------
DROP TABLE IF EXISTS `car_type`;
CREATE TABLE `car_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `transport` int(11) NULL DEFAULT NULL COMMENT '载重（吨）',
  `bulk` float(11, 2) NULL DEFAULT NULL COMMENT '有效容积（m³）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car_type
-- ----------------------------
INSERT INTO `car_type` VALUES (1, '30吨车型', 30, 180.00);
INSERT INTO `car_type` VALUES (2, '40吨车型', 40, 300.00);
INSERT INTO `car_type` VALUES (3, '50吨车型', 50, 560.00);
INSERT INTO `car_type` VALUES (4, '六桥车', 30, 160.00);
INSERT INTO `car_type` VALUES (5, '四桥车', 50, 250.00);
INSERT INTO `car_type` VALUES (6, '35吨袋装', 35, 50.00);

-- ----------------------------
-- Table structure for carry
-- ----------------------------
DROP TABLE IF EXISTS `carry`;
CREATE TABLE `carry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '施工方名称',
  `contact` int(11) NULL DEFAULT NULL COMMENT '负责人',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属公司',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在地',
  `huowu_id` int(11) NULL DEFAULT 0 COMMENT '默认货物 id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of carry
-- ----------------------------
INSERT INTO `carry` VALUES (3, '都安1标1#', 45, '都安', '测试,测试,测试,测试', 2);
INSERT INTO `carry` VALUES (4, '都安1标2#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (5, '都安2标2#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (6, '都安2标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (7, '都安3标2#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (8, '都安3标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (9, '都安3标隧道1站', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (10, '都安3标隧道2站', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (11, '都安4标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (12, '都安5标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (13, '都安6标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (14, '都安7标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (15, '都安8标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (16, '都安7标2#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (17, '都安9标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (18, '都安10标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (19, '都安11标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (20, '都安12标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (21, '都安13标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (22, '都安14标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (23, '都安15标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (24, '都安16标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (25, '都安17标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (26, '都安18标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (27, '都安19标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (28, '都安20标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (29, '镇雄转灰点', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (30, '都安1标袋装', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (34, '湖南工业大学', NULL, '湖南湖南', '湖南,湖南', 2);
INSERT INTO `carry` VALUES (37, '贵阳测试', NULL, '贵阳测试公司', '贵阳', 2);

-- ----------------------------
-- Table structure for cement
-- ----------------------------
DROP TABLE IF EXISTS `cement`;
CREATE TABLE `cement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '厂家名称',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '具体位置',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地理坐标',
  `area` int(11) NULL DEFAULT NULL COMMENT '所属区域',
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `radio` double(11, 2) NULL DEFAULT NULL COMMENT '接单范围',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cement
-- ----------------------------
INSERT INTO `cement` VALUES (1, '贵阳海螺', '贵州省贵阳市清镇市X004', '106.36231,26.670665', 2, NULL, NULL, 5.20);
INSERT INTO `cement` VALUES (2, '贵定海螺', '贵州省黔南布依族苗族自治州贵定县X924(阳宝大道)', '107.248164,26.618528', 3, NULL, NULL, 3.00);
INSERT INTO `cement` VALUES (3, '遵义海螺', '贵州省遵义市汇川区X311', '106.963545,27.758944', 9, NULL, NULL, 3.00);
INSERT INTO `cement` VALUES (4, '惠水西南', '贵州省黔南布依族苗族自治州惠水县', '106.723284,26.247667', 4, NULL, NULL, 1.00);
INSERT INTO `cement` VALUES (5, '湄潭江葛', '贵州省遵义市湄潭县', '107.37964,27.704091', 11, NULL, NULL, 1.00);
INSERT INTO `cement` VALUES (6, '都匀豪龙', '贵州省黔南布依族苗族自治州都匀市X906', '107.459446,26.046149', 6, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (7, '贵州豪龙', '贵州省黔南布依族苗族自治州惠水县', '106.680597,26.232307', 5, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (8, '六矿瑞安', '贵州省六盘水市六枝特区', '105.675492,26.170552', 8, NULL, NULL, 3.00);
INSERT INTO `cement` VALUES (9, '紫云西南', '贵州省安顺市紫云苗族布依族自治县S209', '106.081481,26.026006', 16, NULL, NULL, 1.00);
INSERT INTO `cement` VALUES (10, '遵义励峰', '贵州省遵义市播州区X002', '106.907239,27.519032', 10, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (11, '麻江明达', '贵州省黔东南苗族侗族自治州麻江县', '107.536826,26.481999', 7, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (12, '镇雄转灰点', '云南省昭通市镇雄县镇坡线', '104.960629,27.427823', 14, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (13, '湖南工业大学', '湖南省株洲市天元区崇德路', '113.111495,27.82158', 21, NULL, NULL, 3.00);
INSERT INTO `cement` VALUES (14, '富力中心', '贵州省贵阳市观山湖区碧海南路', '106.626192,26.655246', 2, '张', NULL, 5.00);
INSERT INTO `cement` VALUES (15, '贵州森垚', '贵州省黔西南布依族苗族自治州望谟县', '106.114449,25.200468', 17, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (16, '水城豪龙', '贵州省六盘水市钟山区', '104.756498,26.668725', 23, NULL, NULL, 2.00);
INSERT INTO `cement` VALUES (17, '水城海螺', '贵州省六盘水市水城县', '105.023151,26.551698', 19, NULL, NULL, 2.00);

-- ----------------------------
-- Table structure for daily
-- ----------------------------
DROP TABLE IF EXISTS `daily`;
CREATE TABLE `daily`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '标段ID',
  `section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '站点',
  `capacity` double(11, 2) NULL DEFAULT 0.00 COMMENT '库容量',
  `stock` double(11, 2) NULL DEFAULT 0.00 COMMENT '库存量（吨）',
  `stock_source` int(11) NULL DEFAULT 0 COMMENT '库存数据来源',
  `bite` double NULL DEFAULT 0 COMMENT '库容库存比',
  `stock_line` int(11) NULL DEFAULT 0 COMMENT '库存红线（吨）',
  `stock_ask_time` datetime NULL DEFAULT NULL COMMENT '库存实际询问时间',
  `day_dosage_ask` int(11) NULL DEFAULT 0 COMMENT '日用量询问方式',
  `half_month` double(11, 2) NULL DEFAULT 0.00 COMMENT '半月日均用量（吨）',
  `day_dosage` double(11, 2) NULL DEFAULT 0.00 COMMENT '工地上报日用量（吨）',
  `on_road` double(11, 2) NULL DEFAULT 0.00 COMMENT '当前在途数量（吨）',
  `estimated_shipments` double(11, 2) NULL DEFAULT 0.00 COMMENT '预计发货量（吨）',
  `route_time` double(11, 2) NULL DEFAULT 0.00 COMMENT '单趟时长（分钟）',
  `car_type` int(11) NULL DEFAULT 0 COMMENT '优先车型',
  `car_type_weight` double(11, 2) NULL DEFAULT 0.00 COMMENT '优先车型（吨）',
  `task_nums` int(11) NULL DEFAULT 0 COMMENT '计划任务单数',
  `first_task` int(11) NULL DEFAULT 0 COMMENT '第一批次任务',
  `first_overplus` int(11) NULL DEFAULT 0 COMMENT '一批次剩余',
  `second_task` int(11) NULL DEFAULT 0 COMMENT '第二批次任务',
  `second_overplus` int(11) NULL DEFAULT 0 COMMENT '二批次剩余',
  `third_task` int(11) NULL DEFAULT 0 COMMENT '第三批次任务',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL DEFAULT '' COMMENT '备注',
  `add_time` date NULL DEFAULT NULL COMMENT '生成时间',
  `is_OK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `statue` int(1) NULL DEFAULT 0 COMMENT '状态',
  `planeStock` double NULL DEFAULT NULL COMMENT '计划库存',
  `materia` int(11) NULL DEFAULT NULL COMMENT '物资公司id',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物品名id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 340 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of daily
-- ----------------------------
INSERT INTO `daily` VALUES (333, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (334, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (335, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (336, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (337, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (338, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 50, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (339, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, NULL, 2, 'PO42.5');

-- ----------------------------
-- Table structure for daily_history
-- ----------------------------
DROP TABLE IF EXISTS `daily_history`;
CREATE TABLE `daily_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '标段ID',
  `section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '站点',
  `capacity` double(11, 2) NULL DEFAULT 0.00 COMMENT '库容量',
  `stock` double(11, 2) NULL DEFAULT 0.00 COMMENT '库存量（吨）',
  `stock_source` int(11) NULL DEFAULT 0 COMMENT '库存数据来源',
  `bite` double NULL DEFAULT 0 COMMENT '库容库存比',
  `stock_line` int(11) NULL DEFAULT 0 COMMENT '库存红线（吨）',
  `stock_ask_time` datetime NULL DEFAULT NULL COMMENT '库存实际询问时间',
  `day_dosage_ask` int(11) NULL DEFAULT 0 COMMENT '日用量询问方式',
  `half_month` double(11, 2) NULL DEFAULT 0.00 COMMENT '半月日均用量（吨）',
  `day_dosage` double(11, 2) NULL DEFAULT 0.00 COMMENT '工地上报日用量（吨）',
  `on_road` double(11, 2) NULL DEFAULT 0.00 COMMENT '当前在途数量（吨）',
  `estimated_shipments` double(11, 2) NULL DEFAULT 0.00 COMMENT '预计发货量（吨）',
  `route_time` double(11, 2) NULL DEFAULT 0.00 COMMENT '单趟时长（分钟）',
  `car_type` int(11) NULL DEFAULT 0 COMMENT '优先车型',
  `car_type_weight` double(11, 2) NULL DEFAULT 0.00 COMMENT '优先车型（吨）',
  `task_nums` int(11) NULL DEFAULT 0 COMMENT '计划任务单数',
  `first_task` int(11) NULL DEFAULT 0 COMMENT '第一批次任务',
  `first_overplus` int(11) NULL DEFAULT 0 COMMENT '一批次剩余',
  `second_task` int(11) NULL DEFAULT 0 COMMENT '第二批次任务',
  `second_overplus` int(11) NULL DEFAULT 0 COMMENT '二批次剩余',
  `third_task` int(11) NULL DEFAULT 0 COMMENT '第三批次任务',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_estonian_ci NULL DEFAULT '' COMMENT '备注',
  `add_time` date NULL DEFAULT NULL COMMENT '生成时间',
  `is_OK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `statue` int(1) NULL DEFAULT 0 COMMENT '状态',
  `planeStock` double NULL DEFAULT NULL COMMENT '计划库存',
  `materia` int(11) NULL DEFAULT NULL COMMENT '物资公司id',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物品名id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  `gen_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '生成时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 630 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of daily_history
-- ----------------------------
INSERT INTO `daily_history` VALUES (316, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 350.00, 0, 0.58, 0, NULL, 0, 0.00, 0.00, 0.00, 130.00, 600.00, 5, 50.00, 2, 2, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 350, 1, '2019-05-14-13', 2, 'PO42.5', '2019-05-14 14:23:29');
INSERT INTO `daily_history` VALUES (317, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 0.00, 260.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 220, 1, '2019-05-14-13', 2, 'PO42.5', '2019-05-14 14:23:29');
INSERT INTO `daily_history` VALUES (318, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 120, 1, '2019-05-14-13', 2, 'PO42.5', '2019-05-14 14:23:30');
INSERT INTO `daily_history` VALUES (319, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-13', 2, 'PO42.5', '2019-05-14 14:23:31');
INSERT INTO `daily_history` VALUES (320, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 20, NULL, '2019-05-14-13', 2, 'PO42.5', '2019-05-14 14:23:31');
INSERT INTO `daily_history` VALUES (321, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-13', 2, 'PO42.5', '2019-05-14 14:23:32');
INSERT INTO `daily_history` VALUES (322, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 350.00, 0, 0.58, 0, NULL, 0, 0.00, 0.00, 0.00, 130.00, 600.00, 5, 50.00, 2, 2, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 350, 1, '2019-05-14-15', 2, 'PO42.5', '2019-05-14 14:48:51');
INSERT INTO `daily_history` VALUES (323, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 0.00, 260.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 220, 1, '2019-05-14-15', 2, 'PO42.5', '2019-05-14 14:48:51');
INSERT INTO `daily_history` VALUES (324, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 120, 1, '2019-05-14-15', 2, 'PO42.5', '2019-05-14 14:48:52');
INSERT INTO `daily_history` VALUES (325, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-15', 2, 'PO42.5', '2019-05-14 14:48:53');
INSERT INTO `daily_history` VALUES (326, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 20, NULL, '2019-05-14-15', 2, 'PO42.5', '2019-05-14 14:48:53');
INSERT INTO `daily_history` VALUES (327, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-15', 2, 'PO42.5', '2019-05-14 14:48:54');
INSERT INTO `daily_history` VALUES (328, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 350.00, 0, 0.58, 0, NULL, 0, 0.00, 0.00, 0.00, 130.00, 600.00, 5, 50.00, 2, 2, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 350, 1, '2019-05-14-16', 2, 'PO42.5', '2019-05-14 15:25:13');
INSERT INTO `daily_history` VALUES (329, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 0.00, 260.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 220, 1, '2019-05-14-16', 2, 'PO42.5', '2019-05-14 15:25:13');
INSERT INTO `daily_history` VALUES (330, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 120, 1, '2019-05-14-16', 2, 'PO42.5', '2019-05-14 15:25:27');
INSERT INTO `daily_history` VALUES (331, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-16', 2, 'PO42.5', '2019-05-14 15:25:28');
INSERT INTO `daily_history` VALUES (332, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 20, NULL, '2019-05-14-16', 2, 'PO42.5', '2019-05-14 15:25:28');
INSERT INTO `daily_history` VALUES (333, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-16', 2, 'PO42.5', '2019-05-14 15:25:28');
INSERT INTO `daily_history` VALUES (334, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 350.00, 0, 0.58, 0, NULL, 0, 0.00, 0.00, 0.00, 130.00, 600.00, 5, 50.00, 2, 2, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 350, 1, '2019-05-14-17', 2, 'PO42.5', '2019-05-14 15:56:58');
INSERT INTO `daily_history` VALUES (335, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 0.00, 260.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 220, 1, '2019-05-14-17', 2, 'PO42.5', '2019-05-14 15:56:59');
INSERT INTO `daily_history` VALUES (336, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 120, 1, '2019-05-14-17', 2, 'PO42.5', '2019-05-14 15:57:00');
INSERT INTO `daily_history` VALUES (337, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-17', 2, 'PO42.5', '2019-05-14 15:57:01');
INSERT INTO `daily_history` VALUES (338, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 20, NULL, '2019-05-14-17', 2, 'PO42.5', '2019-05-14 15:57:01');
INSERT INTO `daily_history` VALUES (339, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-17', 2, 'PO42.5', '2019-05-14 15:57:01');
INSERT INTO `daily_history` VALUES (340, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 350.00, 0, 0.58, 0, NULL, 0, 0.00, 0.00, 0.00, 130.00, 600.00, 5, 50.00, 2, 2, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 350, 1, '2019-05-14-18', 2, 'PO42.5', '2019-05-14 16:03:14');
INSERT INTO `daily_history` VALUES (341, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 0.00, 260.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 220, 1, '2019-05-14-18', 2, 'PO42.5', '2019-05-14 16:03:15');
INSERT INTO `daily_history` VALUES (342, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 120, 1, '2019-05-14-18', 2, 'PO42.5', '2019-05-14 16:03:15');
INSERT INTO `daily_history` VALUES (343, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-18', 2, 'PO42.5', '2019-05-14 16:03:16');
INSERT INTO `daily_history` VALUES (344, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 20, NULL, '2019-05-14-18', 2, 'PO42.5', '2019-05-14 16:03:17');
INSERT INTO `daily_history` VALUES (345, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-18', 2, 'PO42.5', '2019-05-14 16:03:17');
INSERT INTO `daily_history` VALUES (346, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 57.00, 203.00, 600.00, 2, 40.00, 5, 5, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 277, 1, '2019-05-14-19', 2, 'PO42.5', '2019-05-14 20:14:46');
INSERT INTO `daily_history` VALUES (347, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 120, 1, '2019-05-14-19', 2, 'PO42.5', '2019-05-14 20:14:46');
INSERT INTO `daily_history` VALUES (348, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-19', 2, 'PO42.5', '2019-05-14 20:14:46');
INSERT INTO `daily_history` VALUES (349, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 20, NULL, '2019-05-14-19', 2, 'PO42.5', '2019-05-14 20:14:46');
INSERT INTO `daily_history` VALUES (350, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-14', 0, 2, 80, 1, '2019-05-14-19', 2, 'PO42.5', '2019-05-14 20:14:46');
INSERT INTO `daily_history` VALUES (351, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 350.00, 0, 0.58, 0, NULL, 0, 0.00, 0.00, 0.00, 130.00, 600.00, 5, 50.00, 2, 2, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 350, 1, '2019-05-14-19', 2, 'PO42.5', '2019-05-15 08:43:32');
INSERT INTO `daily_history` VALUES (352, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 0.00, 260.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 220, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 08:43:32');
INSERT INTO `daily_history` VALUES (353, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 08:43:32');
INSERT INTO `daily_history` VALUES (354, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 08:43:32');
INSERT INTO `daily_history` VALUES (355, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 08:43:32');
INSERT INTO `daily_history` VALUES (356, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 08:43:32');
INSERT INTO `daily_history` VALUES (357, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 17.00, 243.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 237, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 08:53:57');
INSERT INTO `daily_history` VALUES (358, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 08:53:57');
INSERT INTO `daily_history` VALUES (359, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 08:53:57');
INSERT INTO `daily_history` VALUES (360, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 08:53:57');
INSERT INTO `daily_history` VALUES (361, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 08:53:57');
INSERT INTO `daily_history` VALUES (362, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 150.00, 0, 0.25, 0, '2019-05-15 09:04:13', 0, 0.00, 0.00, 100.00, 230.00, 600.00, 5, 50.00, 4, 4, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 250, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 09:04:22');
INSERT INTO `daily_history` VALUES (363, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 17.00, 243.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 237, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 09:04:22');
INSERT INTO `daily_history` VALUES (364, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 09:04:22');
INSERT INTO `daily_history` VALUES (365, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 09:04:22');
INSERT INTO `daily_history` VALUES (366, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 09:04:22');
INSERT INTO `daily_history` VALUES (367, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 09:04:22');
INSERT INTO `daily_history` VALUES (368, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 17.00, 243.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 237, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 09:19:02');
INSERT INTO `daily_history` VALUES (369, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 09:19:02');
INSERT INTO `daily_history` VALUES (370, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 09:19:02');
INSERT INTO `daily_history` VALUES (371, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 09:19:02');
INSERT INTO `daily_history` VALUES (372, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 09:19:02');
INSERT INTO `daily_history` VALUES (373, 'Daily-05150906154742669', 7, '贵阳市政府', 600.00, 300.00, 0, 0.5, 0, NULL, 0, 0.00, 120.00, 0.00, 300.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 300, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 09:19:02');
INSERT INTO `daily_history` VALUES (374, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 220.00, 0, 0.37, 0, NULL, 0, 0.00, 0.00, 17.00, 243.00, 600.00, 2, 40.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 237, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 09:37:06');
INSERT INTO `daily_history` VALUES (375, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 09:37:06');
INSERT INTO `daily_history` VALUES (376, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 09:37:06');
INSERT INTO `daily_history` VALUES (377, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 09:37:06');
INSERT INTO `daily_history` VALUES (378, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 09:37:06');
INSERT INTO `daily_history` VALUES (379, 'Daily-05150906154742669', 7, '贵阳市政府', 600.00, 300.00, 0, 0.5, 0, NULL, 0, 0.00, 120.00, 0.00, 300.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 300, 1, '2019-05-15-1', 2, 'PO42.5', '2019-05-15 09:37:06');
INSERT INTO `daily_history` VALUES (380, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 0, '2019-05-15 10:26:14', 0, 0.00, 0.00, 200.00, 200.00, 600.00, 5, 50.00, 4, 4, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 280, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 10:27:10');
INSERT INTO `daily_history` VALUES (381, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 0, '2019-05-15 10:26:39', 0, 0.00, 0.00, 17.00, 343.00, 600.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 137, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 10:27:10');
INSERT INTO `daily_history` VALUES (382, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 10:27:10');
INSERT INTO `daily_history` VALUES (383, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 10:27:10');
INSERT INTO `daily_history` VALUES (384, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 10:27:10');
INSERT INTO `daily_history` VALUES (385, 'Daily-05150906154742669', 7, '贵阳市政府', 600.00, 300.00, 0, 0.5, 0, NULL, 0, 0.00, 120.00, 0.00, 300.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 300, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 10:27:11');
INSERT INTO `daily_history` VALUES (386, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 0, '2019-05-15 10:26:14', 0, 0.00, 0.00, 100.00, 300.00, 600.00, 5, 50.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 180, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 19:48:55');
INSERT INTO `daily_history` VALUES (387, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 0, '2019-05-15 10:26:39', 0, 0.00, 0.00, 17.00, 343.00, 600.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 137, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 19:48:55');
INSERT INTO `daily_history` VALUES (388, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 19:48:55');
INSERT INTO `daily_history` VALUES (389, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 19:48:56');
INSERT INTO `daily_history` VALUES (390, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 19:48:56');
INSERT INTO `daily_history` VALUES (391, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 3, 50.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-2', 2, 'PO42.5', '2019-05-15 19:48:56');
INSERT INTO `daily_history` VALUES (392, 'Daily-05150906154742669', 7, '贵阳市政府', 600.00, 300.00, 0, 0.5, 0, NULL, 0, 0.00, 120.00, 0.00, 300.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 300, 1, '2019-05-15-3', 2, 'PO42.5', '2019-05-15 19:48:56');
INSERT INTO `daily_history` VALUES (393, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 0, '2019-05-15 10:26:14', 0, 0.00, 0.00, 100.00, 300.00, 600.00, 5, 50.00, 6, 6, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 180, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (394, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 0, '2019-05-15 10:26:39', 0, 0.00, 0.00, 17.00, 343.00, 600.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 137, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (395, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 120, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (396, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (397, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 20, NULL, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (398, 'Daily-0510103795133289', 6, '测试标段', 200.00, 80.00, 0, 0.4, 0, '2019-05-12 21:47:54', 0, 0.00, 0.00, 0.00, 80.00, 60.00, 2, 40.00, 2, 2, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 80, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (399, 'Daily-05150906154742669', 7, '贵阳市政府', 600.00, 300.00, 0, 0.5, 0, NULL, 0, 0.00, 120.00, 0.00, 300.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-15', 0, 2, 300, 1, '2019-05-15-4', 2, 'PO42.5', '2019-05-15 20:21:07');
INSERT INTO `daily_history` VALUES (400, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 0, '2019-05-15 10:26:14', 0, 0.00, 0.00, 0.00, 400.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 80, 1, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (401, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 0, '2019-05-15 10:26:39', 0, 0.00, 0.00, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 120, 1, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (402, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 120, 1, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (403, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 80, 1, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (404, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 20, NULL, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (405, 'Daily-0510103795133289', 6, '测试标段', 200.00, 40.00, 0, 0.2, 0, '2019-05-16 11:46:08', 0, 0.00, 0.00, 0.00, 120.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 40, 1, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (406, 'Daily-05150906154742669', 7, '贵阳市政府', 600.00, 300.00, 0, 0.5, 0, NULL, 0, 0.00, 120.00, 0.00, 300.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 300, 1, '2019-05-16-1', 2, 'PO42.5', '2019-05-16 11:46:48');
INSERT INTO `daily_history` VALUES (407, 'Daily-0510103783671757', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 0, '2019-05-15 10:26:14', 0, 0.00, 0.00, 100.00, 300.00, 600.00, 5, 50.00, 6, 6, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 180, 1, '2019-05-16-3', 2, 'PO42.5', '2019-05-16 18:59:08');
INSERT INTO `daily_history` VALUES (408, 'Daily-0510103795133289', 6, '测试标段', 200.00, 40.00, 0, 0.2, 0, '2019-05-16 11:46:08', 0, 0.00, 0.00, 0.00, 120.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 40, 1, '2019-05-16-2', 2, 'PO42.5', '2019-05-16 18:59:10');
INSERT INTO `daily_history` VALUES (409, 'Daily-0510103731863338', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 0, '2019-05-15 10:26:39', 0, 0.00, 0.00, 17.00, 343.00, 600.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 137, 1, '2019-05-16-2', 2, 'PO42.5', '2019-05-16 19:52:19');
INSERT INTO `daily_history` VALUES (410, 'Daily-0510103780162051', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 120, 1, '2019-05-16-2', 2, 'PO42.5', '2019-05-16 19:52:20');
INSERT INTO `daily_history` VALUES (411, 'Daily-0510103723654728', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 0, NULL, 0, 0.00, 0.00, 0.00, 400.00, 600.00, 1, 30.00, 13, 13, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 80, 1, '2019-05-16-3', 2, 'PO42.5', '2019-05-16 19:52:23');
INSERT INTO `daily_history` VALUES (412, 'Daily-0510103762390241', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 0, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 20, NULL, '2019-05-16-2', 2, 'PO42.5', '2019-05-16 19:52:24');
INSERT INTO `daily_history` VALUES (413, 'Daily-051620326235583', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 10, NULL, 0, 0.00, 50.00, 0.00, 410.00, 600.00, 2, 40.00, 10, 8, 2, 2, 6, 0, '', '2019-05-16', 0, 2, 120, 1, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:55:39');
INSERT INTO `daily_history` VALUES (414, 'Daily-051620323972057', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 10, NULL, 0, 0.00, 60.00, 0.00, 420.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 120, 1, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:55:39');
INSERT INTO `daily_history` VALUES (415, 'Daily-051620324802250', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 80, 1, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:55:40');
INSERT INTO `daily_history` VALUES (416, 'Daily-051620325830900', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 20, NULL, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:55:40');
INSERT INTO `daily_history` VALUES (417, 'Daily-051620321563555', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, '2019-05-16 21:46:25', 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 260, 1, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:55:40');
INSERT INTO `daily_history` VALUES (418, 'Daily-051620329657686', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 80, 1, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:56:19');
INSERT INTO `daily_history` VALUES (419, 'Daily-051620326699005', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 5, 0, 0, 0, 0, '', '2019-05-16', 0, 2, 40, 1, '2019-05-16-6', 2, 'PO42.5', '2019-05-16 21:56:19');
INSERT INTO `daily_history` VALUES (420, 'Daily-051620323972057', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 10, NULL, 0, 0.00, 60.00, 0.00, 420.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 120, 1, '2019-05-17-1', 2, 'PO42.5', '2019-05-18 17:03:08');
INSERT INTO `daily_history` VALUES (421, 'Daily-051620326699005', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 5, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 40, 1, '2019-05-17-1', 2, 'PO42.5', '2019-05-18 17:03:18');
INSERT INTO `daily_history` VALUES (422, 'Daily-051620321563555', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 260, 1, '2019-05-17-1', 2, 'PO42.5', '2019-05-18 17:03:21');
INSERT INTO `daily_history` VALUES (423, 'Daily-051817050665483', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 80, 1, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:06:01');
INSERT INTO `daily_history` VALUES (424, 'Daily-051817056234447', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 120, 1, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:06:10');
INSERT INTO `daily_history` VALUES (425, 'Daily-051817050936066', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 120, 1, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:06:16');
INSERT INTO `daily_history` VALUES (426, 'Daily-051817050129184', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 80, 1, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:07:05');
INSERT INTO `daily_history` VALUES (427, 'Daily-051817050698925', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 20, 2, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:07:06');
INSERT INTO `daily_history` VALUES (428, 'Daily-051817057238366', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 5, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 40, 1, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:07:09');
INSERT INTO `daily_history` VALUES (429, 'Daily-051817055999637', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 260, 1, '2019-05-18-1', 2, 'PO42.5', '2019-05-18 17:07:14');
INSERT INTO `daily_history` VALUES (430, 'Daily-051817050665483', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 80, 1, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (431, 'Daily-051817056234447', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 120, 1, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (432, 'Daily-051817050936066', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 120, 1, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (433, 'Daily-051817050129184', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 80, 1, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (434, 'Daily-051817050698925', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 20, 2, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (435, 'Daily-051817057238366', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 3, 2, 1, 1, 1, '', '2019-05-18', 0, 2, 40, 1, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (436, 'Daily-051817055999637', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-18', 0, 2, 260, 1, '2019-05-18-2', 2, 'PO42.5', '2019-05-18 21:27:48');
INSERT INTO `daily_history` VALUES (437, 'Daily-051817050665483', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (438, 'Daily-051817056234447', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (439, 'Daily-051817050936066', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (440, 'Daily-051817050129184', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (441, 'Daily-051817050698925', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (442, 'Daily-051817057238366', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 5, 2, 1, 1, 1, '', '2019-05-19', 0, 2, 40, 1, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (443, 'Daily-051817055999637', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-18-3', 2, 'PO42.5', '2019-05-19 08:52:13');
INSERT INTO `daily_history` VALUES (444, 'Daily-051817050665483', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (445, 'Daily-051817056234447', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (446, 'Daily-051817050936066', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (447, 'Daily-051817050129184', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (448, 'Daily-051817050698925', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (449, 'Daily-051817057238366', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 5, 2, 1, 1, 1, '', '2019-05-19', 0, 2, 40, 1, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (450, 'Daily-051817055999637', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-1', 2, 'PO42.5', '2019-05-19 08:53:05');
INSERT INTO `daily_history` VALUES (451, 'Daily-051817050665483', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (452, 'Daily-051817056234447', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (453, 'Daily-051817050936066', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (454, 'Daily-051817050129184', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (455, 'Daily-051817050698925', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (456, 'Daily-051817057238366', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 5, 2, 1, 1, 1, '', '2019-05-19', 0, 2, 40, 1, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (457, 'Daily-051817055999637', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-2', 2, 'PO42.5', '2019-05-19 09:50:17');
INSERT INTO `daily_history` VALUES (458, 'Daily-0519154126578016', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 1, 9, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:53');
INSERT INTO `daily_history` VALUES (459, 'Daily-0519154151860621', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 1, 8, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:54');
INSERT INTO `daily_history` VALUES (460, 'Daily-0519154175361119', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 1, 6, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:54');
INSERT INTO `daily_history` VALUES (461, 'Daily-0519154120986764', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 1, 22, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:55');
INSERT INTO `daily_history` VALUES (462, 'Daily-0519154128571663', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:56');
INSERT INTO `daily_history` VALUES (463, 'Daily-0519154172417984', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 1, 4, 1, 3, 1, '', '2019-05-19', 0, 2, 40, 1, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:57');
INSERT INTO `daily_history` VALUES (464, 'Daily-0519154102453843', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 1, 7, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-4', 2, 'PO42.5', '2019-05-19 15:42:57');
INSERT INTO `daily_history` VALUES (465, 'Daily-0519154126578016', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 1, 9, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-6', 2, 'PO42.5', '2019-05-19 15:57:44');
INSERT INTO `daily_history` VALUES (466, 'Daily-0519154151860621', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 1, 8, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-5', 2, 'PO42.5', '2019-05-19 15:57:44');
INSERT INTO `daily_history` VALUES (467, 'Daily-0519154175361119', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 1, 6, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-5', 2, 'PO42.5', '2019-05-19 15:57:45');
INSERT INTO `daily_history` VALUES (468, 'Daily-0519154120986764', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 1, 22, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-5', 2, 'PO42.5', '2019-05-19 15:57:46');
INSERT INTO `daily_history` VALUES (469, 'Daily-0519154172417984', 6, '测试标段', 200.00, 40.00, 0, 0.2, NULL, NULL, 0, 0.00, 80.00, 0.00, 200.00, 60.00, 2, 40.00, 5, 1, 4, 0, 0, 0, '', '2019-05-19', 0, 2, 40, 1, '2019-05-19-5', 2, 'PO42.5', '2019-05-19 15:57:48');
INSERT INTO `daily_history` VALUES (470, 'Daily-0519154102453843', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 1, 7, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-5', 2, 'PO42.5', '2019-05-19 15:57:48');
INSERT INTO `daily_history` VALUES (471, 'Daily-0519154126578016', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 9, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-7', 2, 'PO42.5', '2019-05-19 16:45:59');
INSERT INTO `daily_history` VALUES (472, 'Daily-0519154151860621', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 8, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-7', 2, 'PO42.5', '2019-05-19 16:46:02');
INSERT INTO `daily_history` VALUES (473, 'Daily-0519154175361119', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 6, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-7', 2, 'PO42.5', '2019-05-19 16:46:05');
INSERT INTO `daily_history` VALUES (474, 'Daily-0519154120986764', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 22, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-7', 2, 'PO42.5', '2019-05-19 16:46:12');
INSERT INTO `daily_history` VALUES (475, 'Daily-0519154102453843', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 7, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-7', 2, 'PO42.5', '2019-05-19 16:46:18');
INSERT INTO `daily_history` VALUES (476, 'Daily-0519154126578016', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 9, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-8', 2, 'PO42.5', '2019-05-19 20:10:46');
INSERT INTO `daily_history` VALUES (477, 'Daily-0519154151860621', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 8, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-8', 2, 'PO42.5', '2019-05-19 20:10:46');
INSERT INTO `daily_history` VALUES (478, 'Daily-0519154175361119', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 6, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-8', 2, 'PO42.5', '2019-05-19 20:10:46');
INSERT INTO `daily_history` VALUES (479, 'Daily-0519154120986764', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 22, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-8', 2, 'PO42.5', '2019-05-19 20:10:46');
INSERT INTO `daily_history` VALUES (480, 'Daily-0519154128571663', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-5', 2, 'PO42.5', '2019-05-19 20:10:46');
INSERT INTO `daily_history` VALUES (481, 'Daily-0519154172417984', 6, '测试标段', 200.00, 60.00, 0, 0.3, NULL, '2019-05-19 20:10:37', 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 60, 1, '2019-05-19-7', 2, 'PO42.5', '2019-05-19 20:10:46');
INSERT INTO `daily_history` VALUES (482, 'Daily-0519154102453843', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 7, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-8', 2, 'PO42.5', '2019-05-19 20:10:47');
INSERT INTO `daily_history` VALUES (483, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:46');
INSERT INTO `daily_history` VALUES (484, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 600.00, 2, 40.00, 9, 9, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:46');
INSERT INTO `daily_history` VALUES (485, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, NULL, NULL, 0, 0.00, NULL, 0.00, 360.00, 550.00, 5, 50.00, 7, 7, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:46');
INSERT INTO `daily_history` VALUES (486, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, NULL, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:47');
INSERT INTO `daily_history` VALUES (487, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, NULL, NULL, 0, 0.00, 0.00, 0.00, 60.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:47');
INSERT INTO `daily_history` VALUES (488, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, NULL, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 60, 1, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:47');
INSERT INTO `daily_history` VALUES (489, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, NULL, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-9', 2, 'PO42.5', '2019-05-19 20:18:47');
INSERT INTO `daily_history` VALUES (490, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:09');
INSERT INTO `daily_history` VALUES (491, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:11');
INSERT INTO `daily_history` VALUES (492, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:12');
INSERT INTO `daily_history` VALUES (493, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:15');
INSERT INTO `daily_history` VALUES (494, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:15');
INSERT INTO `daily_history` VALUES (495, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 60, 1, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:15');
INSERT INTO `daily_history` VALUES (496, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-10', 2, 'PO42.5', '2019-05-19 21:13:17');
INSERT INTO `daily_history` VALUES (497, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (498, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (499, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (500, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (501, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (502, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 60, 1, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (503, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-11', 2, 'PO42.5', '2019-05-19 21:57:33');
INSERT INTO `daily_history` VALUES (504, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:21');
INSERT INTO `daily_history` VALUES (505, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:21');
INSERT INTO `daily_history` VALUES (506, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:21');
INSERT INTO `daily_history` VALUES (507, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:21');
INSERT INTO `daily_history` VALUES (508, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:21');
INSERT INTO `daily_history` VALUES (509, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:21');
INSERT INTO `daily_history` VALUES (510, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 60, 1, '2019-05-19-12', 2, 'PO42.5', '2019-05-19 22:06:47');
INSERT INTO `daily_history` VALUES (511, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (512, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (513, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 120, 1, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (514, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 80, 1, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (515, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 20, 2, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (516, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 60, 1, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (517, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-19', 0, 2, 260, 1, '2019-05-19-13', 2, 'PO42.5', '2019-05-19 22:44:11');
INSERT INTO `daily_history` VALUES (518, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 80, 1, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (519, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 120, 1, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (520, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 120, 1, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (521, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 80, 1, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (522, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 20, 2, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (523, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 60, 1, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (524, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-20', 0, 2, 260, 1, '2019-05-20-1', 2, 'PO42.5', '2019-05-20 09:47:54');
INSERT INTO `daily_history` VALUES (525, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (526, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (527, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (528, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (529, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (530, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (531, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 260, 1, '2019-05-21-1', 2, 'PO42.5', '2019-05-21 09:32:42');
INSERT INTO `daily_history` VALUES (532, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-2', 2, 'PO42.5', '2019-05-21 10:24:07');
INSERT INTO `daily_history` VALUES (533, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-3', 2, 'PO42.5', '2019-05-21 10:24:07');
INSERT INTO `daily_history` VALUES (534, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-3', 2, 'PO42.5', '2019-05-21 10:24:08');
INSERT INTO `daily_history` VALUES (535, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-3', 2, 'PO42.5', '2019-05-21 10:24:08');
INSERT INTO `daily_history` VALUES (536, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-3', 2, 'PO42.5', '2019-05-21 10:24:08');
INSERT INTO `daily_history` VALUES (537, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-3', 2, 'PO42.5', '2019-05-21 10:24:08');
INSERT INTO `daily_history` VALUES (538, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 40.00, 280.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 300, 1, '2019-05-21-3', 2, 'PO42.5', '2019-05-21 10:24:08');
INSERT INTO `daily_history` VALUES (539, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:52');
INSERT INTO `daily_history` VALUES (540, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:53');
INSERT INTO `daily_history` VALUES (541, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:53');
INSERT INTO `daily_history` VALUES (542, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:55');
INSERT INTO `daily_history` VALUES (543, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:55');
INSERT INTO `daily_history` VALUES (544, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:56');
INSERT INTO `daily_history` VALUES (545, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 40.00, 280.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 300, 1, '2019-05-21-4', 2, 'PO42.5', '2019-05-21 10:31:56');
INSERT INTO `daily_history` VALUES (546, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (547, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (548, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (549, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (550, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (551, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (552, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 40.00, 280.00, 10.00, 2, 40.00, 7, 7, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 300, 1, '2019-05-21-5', 2, 'PO42.5', '2019-05-21 13:39:59');
INSERT INTO `daily_history` VALUES (553, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:38');
INSERT INTO `daily_history` VALUES (554, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:39');
INSERT INTO `daily_history` VALUES (555, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:39');
INSERT INTO `daily_history` VALUES (556, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (557, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (558, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (559, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (560, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (561, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 260, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (562, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 260, 1, '2019-05-21-6', 2, 'PO42.5', '2019-05-21 13:47:40');
INSERT INTO `daily_history` VALUES (563, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 80.00, 0, 0.13, 20, NULL, 0, 0.00, 100.00, 0.00, 500.00, 600.00, 5, 50.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:30');
INSERT INTO `daily_history` VALUES (564, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:30');
INSERT INTO `daily_history` VALUES (565, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 120, 1, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:30');
INSERT INTO `daily_history` VALUES (566, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 80, 1, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:31');
INSERT INTO `daily_history` VALUES (567, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 20.00, 0, 0.2, 10, NULL, 0, 0.00, 10.00, 0.00, 70.00, 540.00, 6, 35.00, 2, 2, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 20, 2, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:31');
INSERT INTO `daily_history` VALUES (568, 'Daily-05192018772413686', 6, '测试标段', 200.00, 60.00, 0, 0.3, 20, NULL, 0, 0.00, 80.00, 0.00, 180.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 60, 1, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:31');
INSERT INTO `daily_history` VALUES (569, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 260.00, 0, 0.43, 20, NULL, 0, 0.00, 100.00, 0.00, 320.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-21', 0, 2, 260, 1, '2019-05-21-7', 2, 'PO42.5', '2019-05-21 21:01:31');
INSERT INTO `daily_history` VALUES (570, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 100.00, 0, 0.17, 20, '2019-05-22 17:49:59', 0, 0.00, 100.00, 0.00, 480.00, 600.00, 5, 50.00, 9, 5, 4, 4, 0, 0, '', '2019-05-22', 0, 2, 100, 1, '2019-05-22-1', 2, 'PO42.5', '2019-05-22 17:53:25');
INSERT INTO `daily_history` VALUES (571, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, '2019-05-22 17:50:12', 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-1', 2, 'PO42.5', '2019-05-22 17:53:25');
INSERT INTO `daily_history` VALUES (572, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, '2019-05-22 17:50:27', 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-1', 2, 'PO42.5', '2019-05-22 17:53:25');
INSERT INTO `daily_history` VALUES (573, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, '2019-05-22 17:50:32', 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-1', 2, 'PO42.5', '2019-05-22 17:53:25');
INSERT INTO `daily_history` VALUES (574, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (575, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (576, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (577, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (578, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (579, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (580, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-2', 2, 'PO42.5', '2019-05-22 18:40:52');
INSERT INTO `daily_history` VALUES (581, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (582, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (583, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (584, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (585, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (586, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (587, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-3', 2, 'PO42.5', '2019-05-22 19:03:10');
INSERT INTO `daily_history` VALUES (588, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:06');
INSERT INTO `daily_history` VALUES (589, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:06');
INSERT INTO `daily_history` VALUES (590, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:06');
INSERT INTO `daily_history` VALUES (591, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:06');
INSERT INTO `daily_history` VALUES (592, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:06');
INSERT INTO `daily_history` VALUES (593, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:07');
INSERT INTO `daily_history` VALUES (594, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-4', 2, 'PO42.5', '2019-05-22 19:07:07');
INSERT INTO `daily_history` VALUES (595, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (596, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (597, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (598, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (599, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (600, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (601, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-5', 2, 'PO42.5', '2019-05-22 19:10:06');
INSERT INTO `daily_history` VALUES (602, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (603, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (604, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (605, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (606, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (607, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (608, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-6', 2, 'PO42.5', '2019-05-22 19:13:51');
INSERT INTO `daily_history` VALUES (609, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:53');
INSERT INTO `daily_history` VALUES (610, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:53');
INSERT INTO `daily_history` VALUES (611, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:53');
INSERT INTO `daily_history` VALUES (612, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:54');
INSERT INTO `daily_history` VALUES (613, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:54');
INSERT INTO `daily_history` VALUES (614, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 60.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 90, 1, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:54');
INSERT INTO `daily_history` VALUES (615, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-7', 2, 'PO42.5', '2019-05-22 20:04:54');
INSERT INTO `daily_history` VALUES (616, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (617, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (618, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (619, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (620, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (621, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 50, 1, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (622, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-8', 2, 'PO42.5', '2019-05-22 21:17:40');
INSERT INTO `daily_history` VALUES (623, 'Daily-05192018992298630', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 160, 1, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');
INSERT INTO `daily_history` VALUES (624, 'Daily-05192018319485730', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');
INSERT INTO `daily_history` VALUES (625, 'Daily-05192018319229427', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 120, 1, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');
INSERT INTO `daily_history` VALUES (626, 'Daily-05192018466555218', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 80, 1, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');
INSERT INTO `daily_history` VALUES (627, 'Daily-05192018623488655', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 25, 2, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');
INSERT INTO `daily_history` VALUES (628, 'Daily-05192018772413686', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 60.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 50, 1, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');
INSERT INTO `daily_history` VALUES (629, 'Daily-05192018934821129', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-22', 0, 2, 240, 1, '2019-05-22-9', 2, 'PO42.5', '2019-05-22 23:38:08');

-- ----------------------------
-- Table structure for daily_pre
-- ----------------------------
DROP TABLE IF EXISTS `daily_pre`;
CREATE TABLE `daily_pre`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_id` int(11) NULL DEFAULT NULL,
  `cement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '水泥厂',
  `section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '站点',
  `plan` double(11, 2) NULL DEFAULT NULL COMMENT '计划',
  `on_road` double(11, 2) NULL DEFAULT 0.00 COMMENT '在途',
  `finish` double(11, 2) NULL DEFAULT 0.00 COMMENT '已完成',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日计划编号',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `e_task` int(11) NULL DEFAULT 0 COMMENT '异常单数',
  `statue` int(1) NULL DEFAULT 0 COMMENT '状态，0 预编任务 1 任务跟踪 2 完成',
  `edit_plan` double(11, 0) NULL DEFAULT NULL COMMENT '调整计划，初始值和计划吨吨数相同',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改备注',
  `in_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '插入时间',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 864 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of daily_pre
-- ----------------------------
INSERT INTO `daily_pre` VALUES (415, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-10', 0, 1, 130, '', '2019-05-10 10:37:59', '2019-05-10-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (416, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-10', 0, 1, 260, '', '2019-05-10 10:37:59', '2019-05-10-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (417, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-10', 0, 1, 360, '', '2019-05-10 10:37:59', '2019-05-10-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (418, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-10', 0, 1, 400, '', '2019-05-10 10:37:59', '2019-05-10-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (419, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-10', 0, 1, 60, '', '2019-05-10 10:37:59', '2019-05-10-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (420, 310, '湖南工业大学', '测试标段', 60.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-10', 0, 1, 60, '', '2019-05-10 10:37:59', '2019-05-10-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (421, 305, '贵阳海螺', '都安19标1号站', 140.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-11', 0, 1, 140, '', '2019-05-11 10:35:37', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (422, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-11', 0, 1, 260, '', '2019-05-11 10:35:38', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (423, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-11', 0, 1, 360, '', '2019-05-11 10:35:38', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (424, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-11', 0, 1, 400, '', '2019-05-11 10:35:38', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (425, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-11', 0, 1, 60, '', '2019-05-11 10:35:38', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (426, 310, '湖南工业大学', '测试标段', 60.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-11', 0, 1, 60, '', '2019-05-11 10:35:38', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (427, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-11', 0, 1, 130, '', '2019-05-11 10:36:25', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (428, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-11', 0, 1, 260, '', '2019-05-11 10:36:25', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (429, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-11', 0, 1, 360, '', '2019-05-11 10:36:25', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (430, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-11', 0, 1, 400, '', '2019-05-11 10:36:25', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (431, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-11', 0, 1, 60, '', '2019-05-11 10:36:25', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (432, 310, '湖南工业大学', '测试标段', 140.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-11', 0, 1, 140, '', '2019-05-11 10:36:25', '2019-05-10-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (433, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-12', 0, 1, 130, '', '2019-05-12 21:42:02', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (434, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-12', 0, 1, 260, '', '2019-05-12 21:42:02', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (435, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-12', 0, 1, 360, '', '2019-05-12 21:42:02', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (436, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-12', 0, 1, 400, '', '2019-05-12 21:42:02', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (437, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-12', 0, 1, 60, '', '2019-05-12 21:42:02', '2019-05-11-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (438, 310, '湖南工业大学', '测试标段', 140.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-12', 0, 1, 140, '', '2019-05-12 21:42:02', '2019-05-12-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (439, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-12', 0, 1, 130, '', '2019-05-12 21:43:27', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (440, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-12', 0, 1, 260, '', '2019-05-12 21:43:27', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (441, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-12', 0, 1, 360, '', '2019-05-12 21:43:27', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (442, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-12', 0, 1, 400, '', '2019-05-12 21:43:27', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (443, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-12', 0, 1, 60, '', '2019-05-12 21:43:27', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (444, 310, '湖南工业大学', '测试标段', 140.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-12', 0, 1, 140, '', '2019-05-12 21:43:27', '2019-05-12-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (445, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-12', 0, 1, 130, '', '2019-05-12 21:48:05', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (446, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-12', 0, 1, 260, '', '2019-05-12 21:48:05', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (447, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-12', 0, 1, 360, '', '2019-05-12 21:48:05', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (448, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-12', 0, 1, 400, '', '2019-05-12 21:48:05', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (449, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-12', 0, 1, 60, '', '2019-05-12 21:48:05', '2019-05-12-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (450, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-12', 0, 1, 80, '', '2019-05-12 21:48:05', '2019-05-12-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (451, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-13', 0, 1, 130, '', '2019-05-13 20:14:49', '2019-05-13-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (452, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-13', 0, 1, 260, '', '2019-05-13 20:14:49', '2019-05-13-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (453, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-13', 0, 1, 360, '', '2019-05-13 20:14:49', '2019-05-13-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (454, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-13', 0, 1, 400, '', '2019-05-13 20:14:49', '2019-05-13-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (455, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-13', 0, 1, 60, '', '2019-05-13 20:14:49', '2019-05-13-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (456, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-13', 0, 1, 80, '', '2019-05-13 20:14:49', '2019-05-13-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (457, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 10:10:13', '2019-05-14-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (458, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 10:10:13', '2019-05-14-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (459, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 10:10:13', '2019-05-14-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (460, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 10:10:13', '2019-05-14-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (461, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 10:10:13', '2019-05-14-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (462, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 10:10:13', '2019-05-14-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (463, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 10:58:25', '2019-05-14-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (464, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 10:58:25', '2019-05-14-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (465, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 10:58:25', '2019-05-14-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (466, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 10:58:25', '2019-05-14-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (467, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 10:58:25', '2019-05-14-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (468, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 10:58:25', '2019-05-14-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (469, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 12:05:16', '2019-05-14-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (470, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 12:05:16', '2019-05-14-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (471, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 12:05:16', '2019-05-14-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (472, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 12:05:16', '2019-05-14-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (473, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 12:05:16', '2019-05-14-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (474, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 12:05:16', '2019-05-14-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (475, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 14:19:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (476, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:19:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (477, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:19:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (478, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:19:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (479, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:19:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (480, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:19:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (481, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:20:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (482, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:20:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (483, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:20:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (484, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:20:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (485, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:20:47', '2019-05-14-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (486, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 14:23:19', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (487, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:23:19', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (488, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:23:19', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (489, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:23:19', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (490, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:23:19', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (491, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:23:20', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (492, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 14:23:28', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (493, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:23:28', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (494, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:23:28', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (495, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:23:28', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (496, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:23:29', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (497, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:23:29', '2019-05-14-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (498, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 14:46:22', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (499, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:46:22', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (500, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:46:22', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (501, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:46:22', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (502, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:46:22', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (503, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:46:22', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (504, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 14:46:42', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (505, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:46:42', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (506, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:46:42', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (507, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:46:42', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (508, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:46:43', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (509, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:46:43', '2019-05-14-14', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (510, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 14:48:50', '2019-05-14-15', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (511, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 14:48:50', '2019-05-14-15', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (512, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 14:48:50', '2019-05-14-15', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (513, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 14:48:50', '2019-05-14-15', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (514, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 14:48:51', '2019-05-14-15', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (515, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 14:48:51', '2019-05-14-15', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (516, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 15:25:12', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (517, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 15:25:12', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (518, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 15:25:12', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (519, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 15:25:12', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (520, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 15:25:12', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (521, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 15:25:12', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (522, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 15:25:26', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (523, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 15:25:26', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (524, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 15:25:26', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (525, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 15:25:26', '2019-05-14-16', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (526, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 15:56:57', '2019-05-14-17', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (527, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 15:56:58', '2019-05-14-17', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (528, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 15:56:58', '2019-05-14-17', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (529, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 15:56:58', '2019-05-14-17', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (530, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 15:56:58', '2019-05-14-17', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (531, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 15:56:58', '2019-05-14-17', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (532, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 130, '', '2019-05-14 16:03:13', '2019-05-14-18', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (533, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 260, '', '2019-05-14 16:03:13', '2019-05-14-18', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (534, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 16:03:13', '2019-05-14-18', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (535, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 16:03:14', '2019-05-14-18', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (536, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 16:03:14', '2019-05-14-18', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (537, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 16:03:14', '2019-05-14-18', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (538, 305, '贵阳海螺', '都安19标1号站', 30.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-14', 0, 1, 30, '', '2019-05-14 20:14:46', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (539, 306, '贵阳海螺', '都安19标2号站', 203.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-14', 0, 1, 203, '', '2019-05-14 20:14:46', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (540, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-14', 0, 1, 360, '', '2019-05-14 20:14:46', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (541, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-14', 0, 1, 400, '', '2019-05-14 20:14:46', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (542, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-14', 0, 1, 60, '', '2019-05-14 20:14:46', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (543, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-14', 0, 1, 80, '', '2019-05-14 20:14:46', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (544, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 130, '', '2019-05-15 08:43:32', '2019-05-14-19', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (545, 306, '贵阳海螺', '都安19标2号站', 260.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 260, '', '2019-05-15 08:43:32', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (546, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 08:43:32', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (547, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 08:43:32', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (548, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 08:43:32', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (549, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 08:43:32', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (550, 305, '贵阳海螺', '都安19标1号站', 30.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 30, '', '2019-05-15 08:53:57', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (551, 306, '贵阳海螺', '都安19标2号站', 243.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 243, '', '2019-05-15 08:53:57', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (552, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 08:53:57', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (553, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 08:53:57', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (554, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 08:53:57', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (555, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 08:53:57', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (556, 305, '贵阳海螺', '都安19标1号站', 230.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 230, '', '2019-05-15 09:04:22', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (557, 306, '贵阳海螺', '都安19标2号站', 243.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 243, '', '2019-05-15 09:04:22', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (558, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 09:04:22', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (559, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 09:04:22', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (560, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 09:04:22', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (561, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 09:04:22', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (562, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 130, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (563, 306, '贵阳海螺', '都安19标2号站', 243.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 243, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (564, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (565, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (566, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (567, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (568, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-15', 0, 1, 300, '', '2019-05-15 09:19:02', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (569, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 130, '', '2019-05-15 09:36:36', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (570, 306, '贵阳海螺', '都安19标2号站', 243.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 243, '', '2019-05-15 09:36:36', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (571, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 09:36:36', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (572, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 09:36:36', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (573, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 09:36:36', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (574, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 09:36:36', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (575, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-15', 0, 1, 300, '', '2019-05-15 09:36:36', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (576, 305, '贵阳海螺', '都安19标1号站', 130.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 130, '', '2019-05-15 09:37:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (577, 306, '贵阳海螺', '都安19标2号站', 243.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 243, '', '2019-05-15 09:37:06', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (578, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 09:37:06', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (579, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 09:37:06', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (580, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 09:37:06', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (581, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 09:37:06', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (582, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-15', 0, 1, 300, '', '2019-05-15 09:37:06', '2019-05-15-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (583, 305, '贵阳海螺', '都安19标1号站', 200.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 200, '', '2019-05-15 10:27:10', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (584, 306, '贵阳海螺', '都安19标2号站', 343.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 343, '', '2019-05-15 10:27:10', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (585, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 10:27:10', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (586, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 10:27:10', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (587, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 10:27:10', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (588, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 10:27:10', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (589, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-15', 0, 1, 300, '', '2019-05-15 10:27:10', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (590, 305, '贵阳海螺', '都安19标1号站', 300.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 300, '', '2019-05-15 19:48:55', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (591, 306, '贵阳海螺', '都安19标2号站', 343.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 343, '', '2019-05-15 19:48:55', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (592, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 19:48:55', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (593, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 19:48:55', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (594, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 19:48:55', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (595, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 19:48:55', '2019-05-15-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (596, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-15', 0, 1, 300, '', '2019-05-15 19:48:55', '2019-05-15-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (597, 305, '贵阳海螺', '都安19标1号站', 300.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-15', 0, 1, 300, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (598, 306, '贵阳海螺', '都安19标2号站', 343.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-15', 0, 1, 343, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (599, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-15', 0, 1, 360, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (600, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-15', 0, 1, 400, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (601, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-15', 0, 1, 60, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (602, 310, '湖南工业大学', '测试标段', 80.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-15', 0, 1, 80, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (603, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-15', 0, 1, 300, '', '2019-05-15 20:21:06', '2019-05-15-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (604, 305, '贵阳海螺', '都安19标1号站', 400.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-16', 0, 1, 400, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (605, 306, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-16', 0, 1, 360, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (606, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-16', 0, 1, 360, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (607, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-16', 0, 1, 400, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (608, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-16', 0, 1, 60, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (609, 310, '湖南工业大学', '测试标段', 120.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-16', 0, 1, 120, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (610, 311, '富力中心', '贵阳市政府', 300.00, 0.00, 0.00, 'Daily-05150906154742669', '2019-05-16', 0, 1, 300, '', '2019-05-16 11:46:48', '2019-05-16-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (611, 305, '贵阳海螺', '都安19标1号站', 300.00, 0.00, 0.00, 'Daily-0510103783671757', '2019-05-16', 0, 1, 300, '', '2019-05-16 18:59:01', '2019-05-16-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (612, 310, '湖南工业大学', '测试标段', 120.00, 0.00, 0.00, 'Daily-0510103795133289', '2019-05-16', 0, 1, 120, '', '2019-05-16 18:59:02', '2019-05-16-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (613, 306, '贵阳海螺', '都安19标2号站', 343.00, 0.00, 0.00, 'Daily-0510103731863338', '2019-05-16', 0, 1, 343, '', '2019-05-16 19:52:16', '2019-05-16-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (614, 307, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0510103780162051', '2019-05-16', 0, 1, 360, '', '2019-05-16 19:52:16', '2019-05-16-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (615, 308, '贵阳海螺', '镇雄转灰点', 400.00, 0.00, 0.00, 'Daily-0510103723654728', '2019-05-16', 0, 1, 400, '', '2019-05-16 19:52:16', '2019-05-16-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (616, 309, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0510103762390241', '2019-05-16', 0, 1, 60, '', '2019-05-16 19:52:17', '2019-05-16-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (617, 313, '贵阳海螺', '都安19标2号站', 410.00, 0.00, 0.00, 'Daily-051620326235583', '2019-05-16', 0, 1, 410, '', '2019-05-16 21:55:39', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (618, 314, '贵阳海螺', '都安19标3号站', 420.00, 0.00, 0.00, 'Daily-051620323972057', '2019-05-16', 0, 1, 420, '', '2019-05-16 21:55:39', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (619, 315, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051620324802250', '2019-05-16', 0, 1, 700, '', '2019-05-16 21:55:39', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (620, 316, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051620325830900', '2019-05-16', 0, 1, 60, '', '2019-05-16 21:55:39', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (621, 318, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051620321563555', '2019-05-16', 0, 1, 320, '', '2019-05-16 21:55:39', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (622, 312, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051620329657686', '2019-05-16', 0, 1, 500, '', '2019-05-16 21:56:19', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (623, 317, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051620326699005', '2019-05-16', 0, 1, 200, '', '2019-05-16 21:56:19', '2019-05-16-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (624, 312, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051620329657686', '2019-05-18', 0, 1, 500, '', '2019-05-18 17:02:59', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (625, 313, '贵阳海螺', '都安19标2号站', 410.00, 0.00, 0.00, 'Daily-051620326235583', '2019-05-18', 0, 1, 410, '', '2019-05-18 17:03:00', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (626, 314, '贵阳海螺', '都安19标3号站', 420.00, 0.00, 0.00, 'Daily-051620323972057', '2019-05-18', 0, 1, 420, '', '2019-05-18 17:03:00', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (627, 315, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051620324802250', '2019-05-18', 0, 1, 700, '', '2019-05-18 17:03:01', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (628, 316, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051620325830900', '2019-05-18', 0, 1, 60, '', '2019-05-18 17:03:02', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (629, 317, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051620326699005', '2019-05-18', 0, 1, 200, '', '2019-05-18 17:03:04', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (630, 318, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051620321563555', '2019-05-18', 0, 1, 320, '', '2019-05-18 17:03:04', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (631, 312, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051620329657686', '2019-05-18', 0, 1, 500, '', '2019-05-18 17:03:11', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (632, 313, '贵阳海螺', '都安19标2号站', 410.00, 0.00, 0.00, 'Daily-051620326235583', '2019-05-18', 0, 1, 410, '', '2019-05-18 17:03:18', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (633, 314, '贵阳海螺', '都安19标3号站', 420.00, 0.00, 0.00, 'Daily-051620323972057', '2019-05-18', 0, 1, 420, '', '2019-05-18 17:03:19', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (634, 315, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051620324802250', '2019-05-18', 0, 1, 700, '', '2019-05-18 17:03:19', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (635, 316, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051620325830900', '2019-05-18', 0, 1, 60, '', '2019-05-18 17:03:20', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (636, 317, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051620326699005', '2019-05-18', 0, 1, 200, '', '2019-05-18 17:03:20', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (637, 318, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051620321563555', '2019-05-18', 0, 1, 320, '', '2019-05-18 17:03:21', '2019-05-17-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (638, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-18', 0, 1, 500, '', '2019-05-18 17:05:52', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (639, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-18', 0, 1, 360, '', '2019-05-18 17:05:53', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (640, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-18', 0, 1, 360, '', '2019-05-18 17:05:53', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (641, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-18', 0, 1, 700, '', '2019-05-18 17:05:54', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (642, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-18', 0, 1, 60, '', '2019-05-18 17:05:54', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (643, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-18', 0, 1, 200, '', '2019-05-18 17:05:55', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (644, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-18', 0, 1, 320, '', '2019-05-18 17:05:55', '2019-05-18-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (645, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-18', 0, 1, 500, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (646, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-18', 0, 1, 360, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (647, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-18', 0, 1, 360, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (648, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-18', 0, 1, 700, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (649, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-18', 0, 1, 60, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (650, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-18', 0, 1, 200, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (651, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-18', 0, 1, 320, '', '2019-05-18 21:27:47', '2019-05-18-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (652, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-19', 0, 1, 500, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (653, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-19', 0, 1, 360, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (654, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-19', 0, 1, 360, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (655, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-19', 0, 1, 700, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (656, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-19', 0, 1, 60, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (657, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-19', 0, 1, 200, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (658, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-19', 0, 1, 320, '', '2019-05-19 08:52:12', '2019-05-18-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (659, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-19', 0, 1, 500, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (660, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-19', 0, 1, 360, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (661, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-19', 0, 1, 360, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (662, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-19', 0, 1, 700, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (663, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-19', 0, 1, 60, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (664, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-19', 0, 1, 200, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (665, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-19', 0, 1, 320, '', '2019-05-19 08:52:45', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (666, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-19', 0, 1, 500, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (667, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-19', 0, 1, 360, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (668, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-19', 0, 1, 360, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (669, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-19', 0, 1, 700, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (670, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-19', 0, 1, 60, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (671, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-19', 0, 1, 200, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (672, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-19', 0, 1, 320, '', '2019-05-19 08:53:05', '2019-05-19-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (673, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-19', 0, 1, 500, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (674, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-19', 0, 1, 360, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (675, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-19', 0, 1, 360, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (676, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-19', 0, 1, 700, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (677, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-19', 0, 1, 60, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (678, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-19', 0, 1, 200, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (679, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-19', 0, 1, 320, '', '2019-05-19 09:50:16', '2019-05-19-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (680, 319, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-051817050665483', '2019-05-19', 0, 1, 500, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (681, 320, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-051817056234447', '2019-05-19', 0, 1, 360, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (682, 321, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-051817050936066', '2019-05-19', 0, 1, 360, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (683, 322, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-051817050129184', '2019-05-19', 0, 1, 700, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (684, 323, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-051817050698925', '2019-05-19', 0, 1, 60, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (685, 324, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-051817057238366', '2019-05-19', 0, 1, 200, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (686, 325, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-051817055999637', '2019-05-19', 0, 1, 320, '', '2019-05-19 15:40:39', '2019-05-19-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (687, 326, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-0519154126578016', '2019-05-19', 0, 1, 500, '', '2019-05-19 15:42:51', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (688, 327, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-0519154151860621', '2019-05-19', 0, 1, 360, '', '2019-05-19 15:42:51', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (689, 328, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0519154175361119', '2019-05-19', 0, 1, 360, '', '2019-05-19 15:42:52', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (690, 329, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-0519154120986764', '2019-05-19', 0, 1, 700, '', '2019-05-19 15:42:52', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (691, 330, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0519154128571663', '2019-05-19', 0, 1, 60, '', '2019-05-19 15:42:52', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (692, 331, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-0519154172417984', '2019-05-19', 0, 1, 200, '', '2019-05-19 15:42:52', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (693, 332, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-0519154102453843', '2019-05-19', 0, 1, 320, '', '2019-05-19 15:42:53', '2019-05-19-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (694, 326, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-0519154126578016', '2019-05-19', 0, 1, 500, '', '2019-05-19 15:57:39', '2019-05-19-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (695, 327, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-0519154151860621', '2019-05-19', 0, 1, 360, '', '2019-05-19 15:57:39', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (696, 328, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0519154175361119', '2019-05-19', 0, 1, 360, '', '2019-05-19 15:57:41', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (697, 329, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-0519154120986764', '2019-05-19', 0, 1, 700, '', '2019-05-19 15:57:42', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (698, 330, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0519154128571663', '2019-05-19', 0, 1, 60, '', '2019-05-19 15:57:42', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (699, 331, '湖南工业大学', '测试标段', 200.00, 0.00, 0.00, 'Daily-0519154172417984', '2019-05-19', 0, 1, 200, '', '2019-05-19 15:57:42', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (700, 332, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-0519154102453843', '2019-05-19', 0, 1, 320, '', '2019-05-19 15:57:43', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (701, 326, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-0519154126578016', '2019-05-19', 0, 1, 500, '', '2019-05-19 16:45:50', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (702, 327, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-0519154151860621', '2019-05-19', 0, 1, 360, '', '2019-05-19 16:45:51', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (703, 328, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0519154175361119', '2019-05-19', 0, 1, 360, '', '2019-05-19 16:45:52', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (704, 329, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-0519154120986764', '2019-05-19', 0, 1, 700, '', '2019-05-19 16:45:53', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (705, 330, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0519154128571663', '2019-05-19', 0, 1, 60, '', '2019-05-19 16:45:53', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (706, 331, '湖南工业大学', '测试标段', 160.00, 0.00, 0.00, 'Daily-0519154172417984', '2019-05-19', 0, 1, 160, '', '2019-05-19 16:45:54', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (707, 332, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-0519154102453843', '2019-05-19', 0, 1, 320, '', '2019-05-19 16:45:55', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (708, 326, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-0519154126578016', '2019-05-19', 0, 1, 500, '', '2019-05-19 20:10:46', '2019-05-19-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (709, 327, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-0519154151860621', '2019-05-19', 0, 1, 360, '', '2019-05-19 20:10:46', '2019-05-19-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (710, 328, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-0519154175361119', '2019-05-19', 0, 1, 360, '', '2019-05-19 20:10:46', '2019-05-19-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (711, 329, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-0519154120986764', '2019-05-19', 0, 1, 700, '', '2019-05-19 20:10:46', '2019-05-19-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (712, 330, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-0519154128571663', '2019-05-19', 0, 1, 60, '', '2019-05-19 20:10:46', '2019-05-19-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (713, 331, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-0519154172417984', '2019-05-19', 0, 1, 180, '', '2019-05-19 20:10:46', '2019-05-19-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (714, 332, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-0519154102453843', '2019-05-19', 0, 1, 320, '', '2019-05-19 20:10:46', '2019-05-19-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (715, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-19', 0, 1, 500, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (716, 334, '贵阳海螺', '都安19标2号站', 360.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-19', 0, 1, 360, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (717, 335, '贵阳海螺', '都安19标3号站', 360.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-19', 0, 1, 360, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (718, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-19', 0, 1, 700, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (719, 337, '都匀豪龙', '都安1标袋装', 60.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-19', 0, 1, 60, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (720, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-19', 0, 1, 180, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (721, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-19', 0, 1, 320, '', '2019-05-19 20:18:46', '2019-05-19-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (722, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-19', 0, 1, 500, '', '2019-05-19 21:13:06', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (723, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-19', 0, 1, 420, '', '2019-05-19 21:13:07', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (724, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-19', 0, 1, 410, '', '2019-05-19 21:13:07', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (725, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-19', 0, 1, 700, '', '2019-05-19 21:13:07', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (726, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-19', 0, 1, 70, '', '2019-05-19 21:13:07', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (727, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-19', 0, 1, 180, '', '2019-05-19 21:13:08', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (728, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-19', 0, 1, 320, '', '2019-05-19 21:13:08', '2019-05-19-10', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (729, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-19', 0, 1, 500, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (730, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-19', 0, 1, 420, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (731, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-19', 0, 1, 410, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (732, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-19', 0, 1, 700, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (733, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-19', 0, 1, 70, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (734, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-19', 0, 1, 180, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (735, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-19', 0, 1, 320, '', '2019-05-19 21:57:33', '2019-05-19-11', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (736, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-19', 0, 1, 500, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (737, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-19', 0, 1, 420, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (738, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-19', 0, 1, 410, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (739, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-19', 0, 1, 700, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (740, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-19', 0, 1, 70, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (741, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-19', 0, 1, 180, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (742, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-19', 0, 1, 320, '', '2019-05-19 22:06:21', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (743, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-19', 0, 1, 180, '', '2019-05-19 22:06:47', '2019-05-19-12', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (744, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-19', 0, 1, 500, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (745, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-19', 0, 1, 420, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (746, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-19', 0, 1, 410, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (747, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-19', 0, 1, 700, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (748, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-19', 0, 1, 70, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (749, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-19', 0, 1, 180, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (750, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-19', 0, 1, 320, '', '2019-05-19 22:44:11', '2019-05-19-13', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (751, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-20', 0, 1, 500, '', '2019-05-20 09:47:53', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (752, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-20', 0, 1, 420, '', '2019-05-20 09:47:53', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (753, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-20', 0, 1, 410, '', '2019-05-20 09:47:53', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (754, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-20', 0, 1, 700, '', '2019-05-20 09:47:53', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (755, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-20', 0, 1, 70, '', '2019-05-20 09:47:54', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (756, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-20', 0, 1, 180, '', '2019-05-20 09:47:54', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (757, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-20', 0, 1, 320, '', '2019-05-20 09:47:54', '2019-05-20-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (758, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-21', 0, 1, 500, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (759, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-21', 0, 1, 420, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (760, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-21', 0, 1, 410, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (761, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (762, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (763, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (764, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 320, '', '2019-05-21 09:32:42', '2019-05-21-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (765, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-21', 0, 1, 500, '', '2019-05-21 10:24:07', '2019-05-21-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (766, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-21', 0, 1, 420, '', '2019-05-21 10:24:07', '2019-05-21-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (767, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-21', 0, 1, 410, '', '2019-05-21 10:24:07', '2019-05-21-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (768, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 10:24:07', '2019-05-21-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (769, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 10:24:07', '2019-05-21-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (770, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 10:24:07', '2019-05-21-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (771, 339, '富力中心', '贵阳市政府', 280.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 280, '', '2019-05-21 10:24:07', '2019-05-21-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (772, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-21', 0, 1, 500, '', '2019-05-21 10:31:50', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (773, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-21', 0, 1, 420, '', '2019-05-21 10:31:50', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (774, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-21', 0, 1, 410, '', '2019-05-21 10:31:50', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (775, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 10:31:50', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (776, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 10:31:51', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (777, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 10:31:51', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (778, 339, '富力中心', '贵阳市政府', 280.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 280, '', '2019-05-21 10:31:51', '2019-05-21-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (779, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-21', 0, 1, 500, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (780, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-21', 0, 1, 420, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (781, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-21', 0, 1, 410, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (782, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (783, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (784, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (785, 339, '富力中心', '贵阳市政府', 280.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 280, '', '2019-05-21 13:39:59', '2019-05-21-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (786, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-21', 0, 1, 500, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (787, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-21', 0, 1, 420, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (788, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-21', 0, 1, 410, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (789, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (790, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (791, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (792, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 320, '', '2019-05-21 13:47:38', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (793, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 13:47:39', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (794, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 13:47:39', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (795, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 13:47:40', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (796, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 320, '', '2019-05-21 13:47:40', '2019-05-21-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (797, 333, '贵阳海螺', '都安19标1号站', 500.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-21', 0, 1, 500, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (798, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-21', 0, 1, 420, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (799, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-21', 0, 1, 410, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (800, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-21', 0, 1, 700, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (801, 337, '都匀豪龙', '都安1标袋装', 70.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-21', 0, 1, 70, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (802, 338, '湖南工业大学', '测试标段', 180.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-21', 0, 1, 180, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (803, 339, '富力中心', '贵阳市政府', 320.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-21', 0, 1, 320, '', '2019-05-21 21:01:30', '2019-05-21-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (804, 333, '贵阳海螺', '都安19标1号站', 480.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 480, '', '2019-05-22 17:53:25', '2019-05-22-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (805, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 17:53:25', '2019-05-22-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (806, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 17:53:25', '2019-05-22-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (807, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 17:53:25', '2019-05-22-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (808, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (809, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (810, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (811, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (812, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (813, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (814, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 18:40:52', '2019-05-22-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (815, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (816, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (817, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (818, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (819, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (820, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (821, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 19:03:10', '2019-05-22-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (822, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (823, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (824, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (825, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (826, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (827, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (828, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 19:07:06', '2019-05-22-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (829, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:10:05', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (830, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:10:05', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (831, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 19:10:05', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (832, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 19:10:05', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (833, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 19:10:05', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (834, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 19:10:06', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (835, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 19:10:06', '2019-05-22-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (836, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (837, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (838, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (839, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (840, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (841, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (842, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 19:13:51', '2019-05-22-6', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (843, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (844, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (845, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (846, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (847, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (848, 338, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 150, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (849, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 20:04:53', '2019-05-22-7', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (850, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (851, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (852, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (853, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (854, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (855, 338, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 190, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (856, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 21:17:39', '2019-05-22-8', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (857, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (858, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (859, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (860, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (861, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (862, 338, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 190, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (863, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22 23:38:08', '2019-05-22-9', 2, 'PO42.5');

-- ----------------------------
-- Table structure for daily_state
-- ----------------------------
DROP TABLE IF EXISTS `daily_state`;
CREATE TABLE `daily_state`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_id` int(11) NULL DEFAULT NULL,
  `cement` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '水泥厂',
  `section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '站点',
  `plan` double(11, 2) NULL DEFAULT NULL COMMENT '计划',
  `not_is` double(11, 2) NULL DEFAULT 0.00 COMMENT '未下发',
  `on_road` double(11, 2) NULL DEFAULT 0.00 COMMENT '在途',
  `finish` double(11, 2) NULL DEFAULT 0.00 COMMENT '已完成',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日计划编号',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `e_task` int(11) NULL DEFAULT 0 COMMENT '异常单数',
  `statue` int(1) NULL DEFAULT 0 COMMENT '状态，0 预编任务 1 任务跟踪 2 完成',
  `edit_plan` double(11, 0) NULL DEFAULT NULL COMMENT '调整计划，初始值和计划吨吨数相同',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改备注',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 331 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of daily_state
-- ----------------------------
INSERT INTO `daily_state` VALUES (324, 333, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05192018992298630', '2019-05-22', 0, 1, 420, '', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (325, 334, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05192018319485730', '2019-05-22', 0, 1, 420, '', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (326, 335, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05192018319229427', '2019-05-22', 0, 1, 410, '', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (327, 336, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05192018466555218', '2019-05-22', 0, 1, 700, '', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (328, 337, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05192018623488655', '2019-05-22', 0, 1, 65, '', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (329, 338, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05192018772413686', '2019-05-22', 0, 1, 190, '', '2019-05-22-9', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (330, 339, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05192018934821129', '2019-05-22', 0, 1, 340, '', '2019-05-22-9', 2, 'PO42.5');

-- ----------------------------
-- Table structure for day_batch
-- ----------------------------
DROP TABLE IF EXISTS `day_batch`;
CREATE TABLE `day_batch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `current` int(10) NULL DEFAULT NULL COMMENT '当日批次',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of day_batch
-- ----------------------------
INSERT INTO `day_batch` VALUES (1, 0);

-- ----------------------------
-- Table structure for dicts
-- ----------------------------
DROP TABLE IF EXISTS `dicts`;
CREATE TABLE `dicts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典中文',
  `object` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名',
  `field` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字段名',
  `ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '扩展Json',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 273 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dicts
-- ----------------------------
INSERT INTO `dicts` VALUES (210, '1', '待接单', 'need', 'state', '');
INSERT INTO `dicts` VALUES (212, '2', '调配中', 'need', 'state', '');
INSERT INTO `dicts` VALUES (214, '3', '已完成', 'need', 'state', '');
INSERT INTO `dicts` VALUES (215, '4', '已拒绝', 'need', 'state', '');
INSERT INTO `dicts` VALUES (226, '0', '关闭', 'task', 'state', '');
INSERT INTO `dicts` VALUES (227, '1', '完成', 'task', 'state', '');
INSERT INTO `dicts` VALUES (228, '2', '未下发', 'task', 'state', '');
INSERT INTO `dicts` VALUES (229, '1', '空闲', 'car', 'state', '');
INSERT INTO `dicts` VALUES (230, '2', '待命', 'car', 'state', '');
INSERT INTO `dicts` VALUES (231, '3', '运输中', 'car', 'state', '');
INSERT INTO `dicts` VALUES (232, '4', '报修', 'car', 'state', '');
INSERT INTO `dicts` VALUES (233, '0', '未开始', 'work', 'state', '');
INSERT INTO `dicts` VALUES (234, '2', '进行中', 'work', 'state', '');
INSERT INTO `dicts` VALUES (235, '3', '结束', 'work', 'state', '');
INSERT INTO `dicts` VALUES (236, '4', '装载超时', 'task', 'state', '');
INSERT INTO `dicts` VALUES (237, '8', '卸货超时', 'task', 'state', '');
INSERT INTO `dicts` VALUES (238, '1', '系统通知', 'msg', 'type', '');
INSERT INTO `dicts` VALUES (239, '2', '司机任务', 'msg', 'type', '');
INSERT INTO `dicts` VALUES (240, '3', '已接单待装货', 'task', 'state', '');
INSERT INTO `dicts` VALUES (242, 'task_nums', '计划任务单数', 'daily', 'field', '');
INSERT INTO `dicts` VALUES (243, 'first_task', '第一批次任务', 'daily', 'field', '');
INSERT INTO `dicts` VALUES (244, 'second_task', '第二批次任务', 'daily', 'field', '');
INSERT INTO `dicts` VALUES (245, 'third_task', '第三批次任务', 'daily', 'field', '');
INSERT INTO `dicts` VALUES (246, 'tasks', '运输任务', 'task', 'field', '');
INSERT INTO `dicts` VALUES (247, 'real_up', '实装（吨）', 'task', 'field', '');
INSERT INTO `dicts` VALUES (248, 'real_down', '实卸（吨）', 'task', 'field', '');
INSERT INTO `dicts` VALUES (249, '1', '第一批次', 'task', 'pici', '');
INSERT INTO `dicts` VALUES (250, '2', '第二批次', 'task', 'pici', '');
INSERT INTO `dicts` VALUES (251, '3', '第三批次', 'task', 'pici', '');
INSERT INTO `dicts` VALUES (252, '0', '未审核', 'wait_pass_task', 'isOK', '');
INSERT INTO `dicts` VALUES (253, '1', '待审核', 'wait_pass_task', 'isOK', '');
INSERT INTO `dicts` VALUES (254, '2', '审核通过', 'wait_pass_task', 'isOK', '');
INSERT INTO `dicts` VALUES (255, '0', '未审核', 'daily', 'statue', '');
INSERT INTO `dicts` VALUES (256, '1', '待审核', 'daily', 'statue', '');
INSERT INTO `dicts` VALUES (257, '2', '执行中', 'daily', 'statue', '');
INSERT INTO `dicts` VALUES (258, '3', '已完成', 'daily', 'statue', '');
INSERT INTO `dicts` VALUES (259, '0', '整装', 'huowu', 'type', '');
INSERT INTO `dicts` VALUES (260, '1', '散装', 'huowu', 'type', '');
INSERT INTO `dicts` VALUES (261, '7', '已到达未卸货', 'task', 'state', '');
INSERT INTO `dicts` VALUES (262, '5', '已装货运输中', 'task', 'state', '');
INSERT INTO `dicts` VALUES (263, '6', '运输超时', 'task', 'state', '');
INSERT INTO `dicts` VALUES (264, '9', '已卸货待审核', 'task', 'state', '');
INSERT INTO `dicts` VALUES (265, '10', '人工上报异常', 'task', 'state', '');
INSERT INTO `dicts` VALUES (266, '-1', '手动新增', 'task', 'state', '');
INSERT INTO `dicts` VALUES (267, '0', '预编任务', 'daily_pre', 'statue', '');
INSERT INTO `dicts` VALUES (268, '1', '任务跟踪', 'daily_pre', 'statue', '');
INSERT INTO `dicts` VALUES (269, '2', '完成', 'daily_pre', 'statue', '');
INSERT INTO `dicts` VALUES (270, '0', '手动', 'daily_history', 'source', '');
INSERT INTO `dicts` VALUES (271, '1', 'APP', 'daily_history', 'source', '');
INSERT INTO `dicts` VALUES (272, '2', '系统', 'daily_history', 'source', '');

-- ----------------------------
-- Table structure for huowu
-- ----------------------------
DROP TABLE IF EXISTS `huowu`;
CREATE TABLE `huowu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品名',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型',
  `baozhuang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '包装',
  `guige` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of huowu
-- ----------------------------
INSERT INTO `huowu` VALUES (2, 'PO42.5', 1, NULL, NULL);
INSERT INTO `huowu` VALUES (4, 'PO52.5', 1, NULL, NULL);
INSERT INTO `huowu` VALUES (5, 'PC32.5', NULL, NULL, NULL);
INSERT INTO `huowu` VALUES (6, '请选择货物', 1, '', NULL);

-- ----------------------------
-- Table structure for materials
-- ----------------------------
DROP TABLE IF EXISTS `materials`;
CREATE TABLE `materials`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of materials
-- ----------------------------
INSERT INTO `materials` VALUES (1, '测试物资公司1', 'XX省XX市XX区XX路129号', '测试联系人1', '12345678911');
INSERT INTO `materials` VALUES (2, '测试物资公司2', 'XX省XX市XX区123号', '测试联系人2', '13988889999');
INSERT INTO `materials` VALUES (3, '贵州兴凯惠丰物资有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (4, '贵州汇川恒源物资有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (5, '贵州金德丰源物资有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (6, '贵州建安恒业物资有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (7, '贵州恒兴广达物资有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (8, '贵州黔鑫金源物资有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (9, '贵州三利正和建材有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (10, '陕西新大地贸易有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (11, '中铁物资集团云南有限公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (12, '中交路桥建设有限公司物资分公司', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (13, '纳雍县鬃岭粉磨站', NULL, NULL, NULL);
INSERT INTO `materials` VALUES (14, '织金志宏', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for motorcade
-- ----------------------------
DROP TABLE IF EXISTS `motorcade`;
CREATE TABLE `motorcade`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车队名称',
  `captain` int(11) NULL DEFAULT NULL COMMENT '队长',
  `area` int(11) NULL DEFAULT NULL COMMENT '区域',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of motorcade
-- ----------------------------
INSERT INTO `motorcade` VALUES (3, '站街车队', NULL, 2);
INSERT INTO `motorcade` VALUES (4, '贵定王龙车队', NULL, 3);
INSERT INTO `motorcade` VALUES (5, '陈星车队（站街）', NULL, 2);
INSERT INTO `motorcade` VALUES (6, '测试车队', NULL, 21);
INSERT INTO `motorcade` VALUES (7, '都匀袋装', 14, 6);
INSERT INTO `motorcade` VALUES (8, '贵阳测试', 47, 2);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知内容',
  `type` int(1) NULL DEFAULT NULL COMMENT '通知类型',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知对象',
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` VALUES (1, '【公告】贵州省物流管理办法新规定', 1, '14,17', '2019-03-18 17:46:42');
INSERT INTO `msg` VALUES (2, '【任务】请尽快回到出发点', 2, '14', '2019-03-18 17:46:45');
INSERT INTO `msg` VALUES (3, '测试系统通知', 1, '43', NULL);
INSERT INTO `msg` VALUES (4, '测试任务通知', 2, '43', NULL);
INSERT INTO `msg` VALUES (5, 'sulai', 1, '47', NULL);
INSERT INTO `msg` VALUES (6, '你快来公司·', 1, '48', NULL);

-- ----------------------------
-- Table structure for need
-- ----------------------------
DROP TABLE IF EXISTS `need`;
CREATE TABLE `need`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '需求单编号',
  `area` int(11) NULL DEFAULT NULL COMMENT '区域',
  `carry` int(11) NULL DEFAULT NULL COMMENT '施工方',
  `section` int(11) NULL DEFAULT NULL COMMENT '标段',
  `need` int(255) NULL DEFAULT NULL COMMENT '需求量',
  `bite` float(11, 2) NULL DEFAULT NULL COMMENT '库容比',
  `submit` datetime NULL DEFAULT NULL COMMENT '提交时间',
  `finish` datetime NULL DEFAULT NULL COMMENT '预期完成时间',
  `real_fin` datetime NULL DEFAULT NULL COMMENT '实际完成时间',
  `state` int(1) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of need
-- ----------------------------
INSERT INTO `need` VALUES (14, 'N1552964707853', 2, 3, 1, 200, 0.50, '2019-03-19 11:05:07', '2019-03-20 11:05:04', NULL, 2, NULL);
INSERT INTO `need` VALUES (15, 'N1552967124304', 2, 3, 1, 200, 0.50, '2019-03-19 11:45:24', '2019-03-21 11:45:20', NULL, 2, NULL);
INSERT INTO `need` VALUES (16, 'N1552971216095', 2, 3, 1, 200, 0.50, '2019-03-19 12:53:36', '2019-03-19 12:53:32', NULL, 2, NULL);
INSERT INTO `need` VALUES (17, 'N1552979462896', 2, 3, 1, 200, 0.50, '2019-03-19 15:11:02', '2019-03-20 15:10:58', NULL, 2, NULL);
INSERT INTO `need` VALUES (18, 'N1552982698740', 2, 3, 1, 300, 0.50, '2019-03-19 16:04:58', '2019-03-20 23:59:00', NULL, 2, NULL);
INSERT INTO `need` VALUES (19, 'N1552986101053', 2, 3, 1, 100, 0.50, '2019-03-19 17:01:41', '2019-03-20 17:00:21', NULL, 2, NULL);
INSERT INTO `need` VALUES (20, 'N1552986291459', 2, 3, 1, 400, 0.50, '2019-03-19 17:04:51', NULL, NULL, 2, NULL);
INSERT INTO `need` VALUES (21, 'N1553047164256', 2, 3, 1, 500, 0.50, '2019-03-20 09:59:24', '2019-03-25 18:58:53', NULL, 2, NULL);
INSERT INTO `need` VALUES (22, 'N1556089414444', 2, 3, 1, 200, 0.50, '2019-04-24 15:03:34', '2019-04-25 11:03:00', NULL, 1, NULL);

-- ----------------------------
-- Table structure for route
-- ----------------------------
DROP TABLE IF EXISTS `route`;
CREATE TABLE `route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路线名称',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路线描述',
  `cement` int(11) NULL DEFAULT NULL COMMENT '水泥厂',
  `section` int(11) NULL DEFAULT NULL COMMENT '标段',
  `car_type` int(11) NULL DEFAULT NULL COMMENT '车辆类型',
  `mile` float(11, 2) NULL DEFAULT NULL COMMENT '标准里程（km）',
  `time` float(11, 2) NULL DEFAULT NULL COMMENT '单趟承运时间（min）',
  `up_time` float(11, 2) NULL DEFAULT NULL COMMENT '装货超时（min）',
  `down_time` float(11, 2) NULL DEFAULT NULL COMMENT '卸货超时（min）',
  `wage` float(11, 2) NULL DEFAULT NULL COMMENT '单趟工资（元）',
  `oil` float(11, 2) NULL DEFAULT NULL COMMENT '单趟油耗（L）',
  `fee` float(11, 2) NULL DEFAULT 0.00 COMMENT '收费',
  `mat_id` int(11) NULL DEFAULT NULL COMMENT '物资公司',
  `fit` int(1) NULL DEFAULT 0 COMMENT '是否可用',
  `moto_id` int(11) NULL DEFAULT NULL COMMENT '负责车队',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES (1, '云站路、贵安新区、青岩、惠水', '云站路、贵安新区、青岩、惠水', 1, 3, 5, 275.00, 550.00, NULL, NULL, 150.00, 145.00, 0.00, 1, 1, 5);
INSERT INTO `route` VALUES (2, '云站路、贵安新区、青岩、惠水', '云站路、贵安新区、青岩、惠水', 1, 2, 2, 350.00, 600.00, NULL, NULL, 200.00, 145.00, 0.00, 1, 1, 5);
INSERT INTO `route` VALUES (3, '云站路、贵安新区、青岩、惠水', '云站路、贵安新区、青岩、惠水', 1, 1, 5, 360.00, 600.00, NULL, NULL, 120.00, 152.00, 0.00, 1, 1, 5);
INSERT INTO `route` VALUES (4, '卫城上高速、泼机下高速', '卫城上高速、泼机下高速', 1, 4, 1, 210.00, 600.00, NULL, NULL, 400.00, 180.00, 1500.00, 1, 1, 3);
INSERT INTO `route` VALUES (5, '都匀豪龙-都安1标袋装', '都匀豪龙-都安1标袋装', 6, 5, 6, 65.00, 540.00, NULL, NULL, 200.00, 100.00, 250.00, 2, 1, 4);
INSERT INTO `route` VALUES (6, '测试路线', '测试路线', 13, 6, 2, 50.00, 60.00, 10.00, 10.00, 100.00, 50.00, 250.00, 1, 1, 5);
INSERT INTO `route` VALUES (7, '贵阳测试线路', '贵阳测试线路', 14, 7, 2, 2.00, 10.00, NULL, NULL, 10.00, 1.00, 10.00, 1, 1, 8);

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标段名称',
  `carry_id` int(11) NULL DEFAULT NULL COMMENT '所属施工方',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地理坐标',
  `area` int(11) NULL DEFAULT NULL COMMENT '所属区域',
  `capacity` double(11, 2) NULL DEFAULT NULL COMMENT '库容量',
  `stock` double(11, 2) NULL DEFAULT NULL COMMENT '库存量',
  `daily` double(11, 2) NULL DEFAULT NULL COMMENT '日消耗量',
  `red_line` double(11, 2) NULL DEFAULT NULL COMMENT '库存红线',
  `contact` int(11) NULL DEFAULT NULL COMMENT '调度主管',
  `control` int(11) NULL DEFAULT NULL COMMENT '调度员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, '都安19标1号站', 3, '106.713979,26.59574', 2, 600.00, 160.00, 100.00, 20.00, 35, 15);
INSERT INTO `section` VALUES (2, '都安19标2号站', 3, '105.120681,27.340591', 2, 600.00, 120.00, 60.00, 20.00, 18, 36);
INSERT INTO `section` VALUES (3, '都安19标3号站', 3, '105.251761,27.069161', 2, 600.00, 120.00, 50.00, 20.00, 18, 36);
INSERT INTO `section` VALUES (4, '镇雄转灰点', 29, '104.962004,27.4255', 2, 600.00, 80.00, 300.00, 50.00, 18, NULL);
INSERT INTO `section` VALUES (5, '都安1标袋装', 30, '107.53237,26.382906', 6, 100.00, 25.00, 10.00, 10.00, 18, 15);
INSERT INTO `section` VALUES (6, '测试标段', 34, '113.084563,27.819511', 21, 200.00, 50.00, 80.00, 20.00, 35, 15);
INSERT INTO `section` VALUES (7, '贵阳市政府', 3, '106.634424,26.65242', 21, 600.00, 240.00, 100.00, 20.00, 18, 15);

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务单编码',
  `daily_id` int(11) NULL DEFAULT NULL COMMENT '所属计划',
  `cement_id` int(11) NULL DEFAULT NULL COMMENT '水泥厂',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '标段',
  `car_id` int(11) NULL DEFAULT 0 COMMENT '车辆',
  `route_id` int(11) NULL DEFAULT NULL COMMENT '路线ID',
  `driver` int(11) NULL DEFAULT NULL COMMENT '驾驶员',
  `tasks` int(11) NULL DEFAULT NULL COMMENT '运输任务',
  `real_up` double(11, 2) NULL DEFAULT 0.00 COMMENT '实装（吨）',
  `real_up_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实装凭据',
  `real_down` double(11, 2) NULL DEFAULT 0.00 COMMENT '实卸（吨）',
  `real_down_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实卸凭据',
  `isOK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `state` int(2) NULL DEFAULT 2 COMMENT '状态',
  `weight2` int(11) NULL DEFAULT 0 COMMENT '权重2',
  `weight` double(11, 3) NULL DEFAULT 0.000 COMMENT '权重',
  `pass1` int(11) NULL DEFAULT NULL COMMENT '一级审核',
  `pass2` int(11) NULL DEFAULT NULL COMMENT '二级审核',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `fin_time` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `pici` int(1) NULL DEFAULT NULL COMMENT '所属批次',
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `gen_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务单生成日期，自动生成',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  `voucher` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证路径',
  `accept_time` datetime NULL DEFAULT NULL COMMENT '接单时间',
  `up_time` datetime NULL DEFAULT NULL COMMENT '装货时间',
  `down_time` datetime NULL DEFAULT NULL COMMENT '卸货时间',
  `up_submit_time` datetime NULL DEFAULT NULL COMMENT '装货提交时间',
  `down_submit_time` datetime NULL DEFAULT NULL COMMENT '卸货提交时间',
  `isUp` int(1) NULL DEFAULT 0 COMMENT '是否装货审核',
  `isDown` int(1) NULL DEFAULT 0 COMMENT '是否卸货审核',
  `remarkUp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '装货审核备注',
  `remarkDown` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卸货审核备注',
  `isChangeCar` int(1) NULL DEFAULT 0 COMMENT '是否车辆改派',
  `beforeCar` varchar(266) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '改派前车辆',
  `upOverTime` datetime NULL DEFAULT NULL COMMENT '装货超时时间',
  `traverOverTime` datetime NULL DEFAULT NULL COMMENT '运输超时时间',
  `errorMsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `errorFile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常附件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5842 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (5780, 'Task-05222338842696697', 333, 1, 1, 6, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, '2019-05-22 05:18:24', '2019-05-22 22:09:21', NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5781, 'Task-05222338846827390', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5782, 'Task-05222338992340940', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5783, 'Task-05222338466939778', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5784, 'Task-05222338621666077', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5785, 'Task-05222338625635297', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5786, 'Task-05222338629058078', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5787, 'Task-05222338622287818', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5788, 'Task-05222338774477915', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5789, 'Task-05222338777984506', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5790, 'Task-05222338933153320', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5791, 'Task-05222338937563656', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5792, 'Task-05222338931527848', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5793, 'Task-05222338099812420', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5794, 'Task-05222338095166452', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5795, 'Task-05222338098569399', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5796, 'Task-05222338091906694', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5797, 'Task-05222338246592206', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5798, 'Task-05222338562441455', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5799, 'Task-05222338566335525', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5800, 'Task-05222338710841126', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5801, 'Task-05222338715265152', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5802, 'Task-05222338710651032', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5803, 'Task-05222338713883007', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5804, 'Task-05222338877961179', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5805, 'Task-05222338875328596', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5806, 'Task-05222338025051619', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5807, 'Task-05222338029539341', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5808, 'Task-05222338023137004', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5809, 'Task-05222338187243951', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5810, 'Task-05222338180774567', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5811, 'Task-05222338184724231', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5812, 'Task-05222338187979673', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5813, 'Task-05222338342374086', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5814, 'Task-05222338346959585', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5815, 'Task-05222338345670190', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5816, 'Task-05222338499258914', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5817, 'Task-05222338494357048', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5818, 'Task-05222338497883194', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5819, 'Task-05222338654421456', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5820, 'Task-05222338658139526', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5821, 'Task-05222338651352504', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5822, 'Task-05222338654604873', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5823, 'Task-05222338811630347', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5824, 'Task-05222338815513242', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5825, 'Task-05222338819384684', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5826, 'Task-05222338964129980', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5827, 'Task-05222338967251606', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5828, 'Task-05222338960537219', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5829, 'Task-05222338689066739', 337, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 2, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5830, 'Task-05222338991121371', 338, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 50, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5831, 'Task-05222338995070477', 338, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5832, 'Task-05222338998345753', 338, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5833, 'Task-05222338153380750', 338, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5834, 'Task-05222338153897730', 339, 14, 7, 69, 7, 47, 40, 25.00, 'a53.jpg,', 25.00, 'a54.jpg', 1, 1, 54, 0.400, NULL, NULL, '', '2019-05-23 09:08:35', 1, '贵A81234', '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, '2019-05-23 09:05:19', '2019-05-23 09:07:06', '2019-05-23 09:07:49', NULL, NULL, 1, 0, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5835, 'Task-05222338157595965', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5836, 'Task-05222338313553859', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5837, 'Task-05222338460795841', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5838, 'Task-05222338464719245', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5839, 'Task-05222338620822255', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5840, 'Task-05222338624570776', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task` VALUES (5841, 'Task-05222338623022688', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-9', '2019-05-22 23:38:08', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for task_history
-- ----------------------------
DROP TABLE IF EXISTS `task_history`;
CREATE TABLE `task_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务单编码',
  `daily_id` int(11) NULL DEFAULT NULL COMMENT '所属计划',
  `cement_id` int(11) NULL DEFAULT NULL COMMENT '水泥厂',
  `section_id` int(11) NULL DEFAULT NULL COMMENT '标段',
  `car_id` int(11) NULL DEFAULT 0 COMMENT '车辆',
  `route_id` int(11) NULL DEFAULT NULL COMMENT '路线ID',
  `driver` int(11) NULL DEFAULT NULL COMMENT '驾驶员',
  `tasks` int(11) NULL DEFAULT NULL COMMENT '运输任务',
  `real_up` double(11, 2) NULL DEFAULT 0.00 COMMENT '实装（吨）',
  `real_up_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实装凭据',
  `real_down` double(11, 2) NULL DEFAULT 0.00 COMMENT '实卸（吨）',
  `real_down_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '实卸凭据',
  `isOK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `state` int(2) NULL DEFAULT 2 COMMENT '状态',
  `weight2` int(11) NULL DEFAULT 0 COMMENT '权重2',
  `weight` double(11, 3) NULL DEFAULT 0.000 COMMENT '权重',
  `pass1` int(11) NULL DEFAULT NULL COMMENT '一级审核',
  `pass2` int(11) NULL DEFAULT NULL COMMENT '二级审核',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  `fin_time` datetime NULL DEFAULT NULL COMMENT '完成时间',
  `pici` int(1) NULL DEFAULT NULL COMMENT '所属批次',
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `gen_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '任务单生成日期，自动生成',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  `voucher` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证路径',
  `accept_time` datetime NULL DEFAULT NULL COMMENT '接单时间',
  `up_time` datetime NULL DEFAULT NULL COMMENT '装货时间',
  `down_time` datetime NULL DEFAULT NULL COMMENT '卸货时间',
  `up_submit_time` datetime NULL DEFAULT NULL COMMENT '装货提交时间',
  `down_submit_time` datetime NULL DEFAULT NULL COMMENT '卸货提交时间',
  `isUp` int(1) NULL DEFAULT 0 COMMENT '是否装货审核',
  `isDown` int(1) NULL DEFAULT 0 COMMENT '是否卸货审核',
  `remarkUp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '装货审核备注',
  `remarkDown` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卸货审核备注',
  `isChangeCar` int(1) NULL DEFAULT 0 COMMENT '是否车辆改派',
  `beforeCar` varchar(266) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '改派前车辆',
  `upOverTime` datetime NULL DEFAULT NULL COMMENT '装货超时时间',
  `traverOverTime` datetime NULL DEFAULT NULL COMMENT '运输超时时间',
  `errorMsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `errorFile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常文件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5780 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of task_history
-- ----------------------------
INSERT INTO `task_history` VALUES (5718, 'Task-05222117279002429', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5719, 'Task-05222117276103890', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5720, 'Task-05222117438466076', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5721, 'Task-05222117435842432', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5722, 'Task-05222117594495487', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5723, 'Task-05222117598629253', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5724, 'Task-05222117902636773', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5725, 'Task-05222117909899987', 333, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5726, 'Task-05222117210233018', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5727, 'Task-05222117216858441', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5728, 'Task-05222117212193197', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5729, 'Task-05222117377283789', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5730, 'Task-05222117372933669', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5731, 'Task-05222117377009047', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5732, 'Task-05222117523131333', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5733, 'Task-05222117527319854', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5734, 'Task-05222117686780275', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5735, 'Task-05222117683111526', 334, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5736, 'Task-05222117994977308', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5737, 'Task-05222117991428407', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5738, 'Task-05222117156186554', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5739, 'Task-05222117159931723', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5740, 'Task-05222117158027724', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5741, 'Task-05222117318388538', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5742, 'Task-05222117313505110', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5743, 'Task-05222117099352585', 335, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5744, 'Task-05222117245839191', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5745, 'Task-05222117401891916', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5746, 'Task-05222117406665428', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5747, 'Task-05222117402687981', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5748, 'Task-05222117563201608', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5749, 'Task-05222117874756023', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5750, 'Task-05222117874484075', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5751, 'Task-05222117024024673', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5752, 'Task-05222117029177283', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5753, 'Task-05222117023004306', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5754, 'Task-05222117186814567', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5755, 'Task-05222117185053882', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5756, 'Task-05222117348593871', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5757, 'Task-05222117346521415', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5758, 'Task-05222117492741759', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5759, 'Task-05222117655948186', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5760, 'Task-05222117651191869', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5761, 'Task-05222117655585444', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5762, 'Task-05222117811672405', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5763, 'Task-05222117129581385', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5764, 'Task-05222117124311875', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5765, 'Task-05222117275514974', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5766, 'Task-05222117435497123', 336, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5767, 'Task05222117593564782', 337, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 0, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5768, 'Task05222117068102440', 338, 13, 6, 66, 6, 43, 40, 39.00, 'a47.jpg', 12.00, 'a41.jpg', 1, 0, 50, 0.250, NULL, NULL, ' , JHH', '2019-05-22 23:17:51', 1, '湘 A 123456', '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', 'null', '2019-05-22 21:17:55', '2019-05-22 22:58:06', '2019-05-22 22:38:46', NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, 'sfh', 'a49.jpg');
INSERT INTO `task_history` VALUES (5769, 'Task-05222117213401158', 338, 13, 6, 71, 6, 43, 40, 39.00, 'a50.jpg,', 38.00, 'a51.jpg', 1, 1, 51, 0.250, NULL, NULL, '', '2019-05-22 23:32:33', 1, '湘A12345', '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, '2019-05-22 23:29:34', '2019-05-22 23:29:58', '2019-05-22 23:31:04', NULL, NULL, 1, 0, '', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5770, 'Task-05222117217600295', 338, 13, 6, 71, 6, 43, 40, 0.00, NULL, 0.00, NULL, 1, 0, 52, 0.250, NULL, NULL, ' , GUANBI', '2019-05-22 23:36:45', 1, '湘A12345', '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', 'null', '2019-05-22 23:35:20', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, '车坏了', 'a52.jpg');
INSERT INTO `task_history` VALUES (5771, 'Task-05222117373219319', 338, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5772, 'Task-05222117876641319', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5773, 'Task-05222117025237257', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5774, 'Task-05222117020664483', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5775, 'Task-05222117189614783', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5776, 'Task-05222117183832079', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5777, 'Task-05222117188395508', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5778, 'Task-05222117346413287', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `task_history` VALUES (5779, 'Task-05222117341923764', 339, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-22', '2019-05-22-8', '2019-05-22 21:17:40', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `eova_id` int(11) NULL DEFAULT NULL,
  `login_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账户',
  `login_pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '录登密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '昵称',
  `rid` int(1) NULL DEFAULT NULL COMMENT '角色id',
  `shenfenid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (30, 15, '13312344321', '89BDF69372C2EF53EA409CDF020B5694', '调配员1', 7, NULL);
INSERT INTO `users` VALUES (31, 17, '13256788765', '89BDF69372C2EF53EA409CDF020B5694', 'Driver02', 6, NULL);
INSERT INTO `users` VALUES (32, 19, 'z998234', '34C8C24C31F5001C0FA8D09EECE90216', '王小峰', 6, NULL);
INSERT INTO `users` VALUES (33, 20, 'ssadf ', '7698946764209BE8D1AE96CF1D7DF463', '李爱滴', 6, NULL);
INSERT INTO `users` VALUES (35, 22, 'test', '89BDF69372C2EF53EA409CDF020B5694', '施工方', 10, NULL);
INSERT INTO `users` VALUES (41, 28, '贵AB8398', '89BDF69372C2EF53EA409CDF020B5694', '贵AB8398', 6, NULL);
INSERT INTO `users` VALUES (46, 39, '17716658141', '89BDF69372C2EF53EA409CDF020B5694', '薛真保', 6, NULL);
INSERT INTO `users` VALUES (47, 40, '18722774464', '89BDF69372C2EF53EA409CDF020B5694', '罗凯', 6, NULL);
INSERT INTO `users` VALUES (48, 41, '13885010617', '89BDF69372C2EF53EA409CDF020B5694', '付玉红', 6, NULL);
INSERT INTO `users` VALUES (49, 42, '18570416981', '89BDF69372C2EF53EA409CDF020B5694', '测试司机', 6, NULL);
INSERT INTO `users` VALUES (51, 43, '13973925221', '89BDF69372C2EF53EA409CDF020B5694', 'tzy', 6, NULL);
INSERT INTO `users` VALUES (52, 44, '13973925231', '89BDF69372C2EF53EA409CDF020B5694', 'tzy1', 5, NULL);
INSERT INTO `users` VALUES (53, 45, '13973925211', '89BDF69372C2EF53EA409CDF020B5694', '标段管理', 5, NULL);
INSERT INTO `users` VALUES (55, 47, '13888888888', '61C09E3CA07DAA81C09D082F1C84DD30', '张虎', 6, NULL);
INSERT INTO `users` VALUES (56, 48, '18275300820', '61C09E3CA07DAA81C09D082F1C84DD30', '陈兴志', 6, NULL);

-- ----------------------------
-- Table structure for wait_pass
-- ----------------------------
DROP TABLE IF EXISTS `wait_pass`;
CREATE TABLE `wait_pass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_id` int(11) NULL DEFAULT NULL COMMENT '日计划编号',
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更改字段',
  `ubefore` int(11) NULL DEFAULT NULL COMMENT '修改前的值',
  `uafter` int(11) NULL DEFAULT NULL COMMENT '修改后的值',
  `contact` int(11) NULL DEFAULT NULL COMMENT '调度主管',
  `uptime` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `isOK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `passtime` datetime NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wait_pass
-- ----------------------------
INSERT INTO `wait_pass` VALUES (3, 1, 'second_task', 0, 1, 18, '2019-03-30 14:25:32', 0, NULL);
INSERT INTO `wait_pass` VALUES (4, 4, 'task_nums', 0, 4, 18, '2019-03-30 10:59:03', 1, NULL);
INSERT INTO `wait_pass` VALUES (5, 4, 'first_task', 0, 2, 18, '2019-03-30 14:26:38', 1, NULL);
INSERT INTO `wait_pass` VALUES (6, 4, 'third_task', 0, 1, 18, '2019-03-30 14:24:20', 1, '2019-03-30 14:24:59');
INSERT INTO `wait_pass` VALUES (7, 4, 'first_task', 3, 2, 18, '2019-03-30 14:29:06', 1, '2019-03-30 14:31:01');
INSERT INTO `wait_pass` VALUES (8, 4, 'second_task', 0, 0, 18, '2019-03-30 14:30:48', 1, '2019-03-30 14:31:01');
INSERT INTO `wait_pass` VALUES (9, 4, 'third_task', 1, 2, 18, '2019-03-30 14:30:51', 1, '2019-03-30 14:31:02');
INSERT INTO `wait_pass` VALUES (10, 7, 'second_task', 0, 5, 18, '2019-03-31 21:02:49', 1, '2019-03-31 21:03:11');
INSERT INTO `wait_pass` VALUES (11, 7, 'first_task', 10, 5, 18, '2019-03-31 21:04:04', 1, '2019-03-31 21:05:02');
INSERT INTO `wait_pass` VALUES (12, 7, 'second_task', 5, 3, 18, '2019-03-31 21:04:08', 1, '2019-03-31 21:05:02');
INSERT INTO `wait_pass` VALUES (13, 7, 'third_task', 0, 2, 18, '2019-03-31 21:04:17', 1, '2019-03-31 21:05:02');
INSERT INTO `wait_pass` VALUES (14, 7, 'first_task', 5, 4, 18, '2019-03-31 21:41:05', 0, NULL);

-- ----------------------------
-- Table structure for wait_pass_task
-- ----------------------------
DROP TABLE IF EXISTS `wait_pass_task`;
CREATE TABLE `wait_pass_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NULL DEFAULT NULL COMMENT '日计划编号',
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更改字段',
  `ubefore` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改前的值',
  `uafter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改后的值',
  `contact` int(11) NULL DEFAULT NULL COMMENT '调度主管',
  `uptime` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `isOK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `passtime` datetime NULL DEFAULT NULL COMMENT '审核时间',
  `field_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wait_pass_task
-- ----------------------------
INSERT INTO `wait_pass_task` VALUES (3, 151, 'car_id', '湘 A27Q6', '湘 A27Q6', NULL, '2019-04-02 20:50:43', 1, '2019-04-02 21:11:06', '车辆改派');
INSERT INTO `wait_pass_task` VALUES (4, 217, 'car_id', NULL, '湘 A27Q6', NULL, '2019-04-04 15:05:05', 1, '2019-04-04 15:08:21', '车辆改派');
INSERT INTO `wait_pass_task` VALUES (5, 5189, 'car_id', NULL, '湘 BV1959', NULL, '2019-05-21 11:27:27', 0, NULL, '车辆改派');

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作单编号',
  `need_id` int(11) NULL DEFAULT NULL COMMENT '所属需求',
  `speed` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '运输比例',
  `car_num` int(11) NULL DEFAULT NULL COMMENT '车辆数目',
  `real_fin` int(11) NULL DEFAULT NULL COMMENT '实际完成（吨）',
  `start` datetime NULL DEFAULT NULL COMMENT '开始时间',
  `end` datetime NULL DEFAULT NULL COMMENT '结束时间',
  `state` int(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES (21, 'W1552964842779', 14, '100%', 2, 200, '2019-03-19 11:39:29', NULL, 2);
INSERT INTO `work` VALUES (22, 'W1552967132904', 15, '100%', 1, 200, '2019-03-19 12:33:34', NULL, 2);
INSERT INTO `work` VALUES (23, 'W1552971229878', 16, '100%', 1, 100, '2019-03-19 13:01:11', NULL, 2);
INSERT INTO `work` VALUES (24, 'W1552979992318', 17, '0%', 0, NULL, NULL, NULL, 1);
INSERT INTO `work` VALUES (25, 'W1552982726365', 18, '25%', 3, 100, '2019-03-19 16:06:44', NULL, 2);
INSERT INTO `work` VALUES (26, 'W1552986219568', 19, '100%', 1, NULL, NULL, NULL, 1);
INSERT INTO `work` VALUES (27, 'W1552986298099', 20, '25.0%', 4, 0, '2019-03-19 17:06:18', NULL, 2);
INSERT INTO `work` VALUES (28, 'W1553047227037', 21, '40.0%', 5, 0, '2019-03-20 10:02:08', NULL, 2);

-- ----------------------------
-- View structure for car_info
-- ----------------------------
DROP VIEW IF EXISTS `car_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `car_info` AS select `car`.`id` AS `id`,`car`.`moto_id` AS `moto_id`,`car`.`type` AS `type`,`car`.`license` AS `license`,`car`.`driver` AS `driver`,`car`.`state` AS `state`,`car_type`.`transport` AS `transport`,`car_type`.`bulk` AS `bulk`,`car_type`.`name` AS `name`,`motorcade`.`name` AS `moto` from ((`car` join `car_type`) join `motorcade`) where ((`car`.`type` = `car_type`.`id`) and (`car`.`moto_id` = `motorcade`.`id`)) ;

-- ----------------------------
-- View structure for car_state
-- ----------------------------
DROP VIEW IF EXISTS `car_state`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `car_state` AS select `car`.`id` AS `id`,`car`.`moto_id` AS `moto_id`,`car`.`driver` AS `driver`,`dicts`.`name` AS `name`,`car`.`state` AS `state`,`car`.`type` AS `type`,`car`.`license` AS `license` from (`car` join `dicts`) where ((`car`.`state` = `dicts`.`value`) and (`dicts`.`object` = 'car') and (`dicts`.`field` = 'state')) ;

-- ----------------------------
-- View structure for daily_info
-- ----------------------------
DROP VIEW IF EXISTS `daily_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `daily_info` AS select `daily`.`id` AS `id`,`daily`.`code` AS `code`,`daily_state`.`cement` AS `cement`,`daily_state`.`section` AS `section`,`daily`.`route_time` AS `route_time`,`daily`.`car_type_weight` AS `car_type_weight`,`daily_state`.`plan` AS `plan`,`daily_state`.`finish` AS `finish`,`daily`.`add_time` AS `add_time`,`daily`.`section_id` AS `section_id`,`daily`.`on_road` AS `on_road` from (`daily` join `daily_state`) where (`daily`.`id` = `daily_state`.`daily_id`) ;

-- ----------------------------
-- View structure for history
-- ----------------------------
DROP VIEW IF EXISTS `history`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `history` AS select `need`.`code` AS `need_code`,`need`.`area` AS `area`,`need`.`carry` AS `carry`,`need`.`section` AS `section`,`need`.`need` AS `need`,`need`.`bite` AS `bite`,`need`.`submit` AS `submit`,`need`.`finish` AS `finish`,`need`.`state` AS `need_state`,`need`.`remark` AS `remark`,`work`.`code` AS `work_code`,`work`.`speed` AS `speed`,`work`.`car_num` AS `car_num`,`work`.`start` AS `start`,`work`.`end` AS `end`,`task`.`cement_id` AS `cement_id`,`task`.`car_id` AS `car_id`,`task`.`real_up` AS `real_up`,`task`.`real_up_img` AS `real_up_img`,`task`.`real_down` AS `real_down`,`task`.`real_down_img` AS `real_down_img`,`task`.`state` AS `task_state`,`task`.`weight` AS `weight`,`task`.`pass1` AS `pass1`,`task`.`pass2` AS `pass2`,`task`.`id` AS `id`,`work`.`state` AS `state` from ((`need` join `task`) join `work`) ;

-- ----------------------------
-- View structure for task_info
-- ----------------------------
DROP VIEW IF EXISTS `task_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `task_info` AS select `task`.`id` AS `id`,`task`.`code` AS `code`,`task`.`daily_id` AS `daily_id`,`daily`.`code` AS `daily_code`,`task`.`cement_id` AS `cement_id`,`cement`.`name` AS `cement_name`,`section`.`name` AS `section_name`,`task`.`section_id` AS `section_id`,`task`.`tasks` AS `tasks`,`task`.`real_up` AS `real_up`,`task`.`real_down` AS `real_down`,`task`.`state` AS `state`,`task`.`remark` AS `remark`,`task`.`fin_time` AS `fin_time`,`task`.`pici` AS `pici`,`task`.`car_id` AS `car_id`,`task`.`isOK` AS `isOK`,`task`.`license` AS `license`,`task`.`riqi` AS `riqi`,`task`.`weight2` AS `weight2`,`task`.`real_up_img` AS `real_up_img`,`task`.`real_down_img` AS `real_down_img`,`materials`.`name` AS `mat_name`,`materials`.`phone` AS `m_phone`,`car`.`position` AS `car_position`,`car`.`type` AS `car_type`,`users`.`nickname` AS `driver_name`,`car`.`license` AS `car_license`,`users`.`login_id` AS `user_phone`,`section`.`location` AS `section_location`,`cement`.`location` AS `cement_location`,`task`.`route_id` AS `route_id`,`task`.`huowu_name` AS `huowu_name`,`car`.`driver` AS `driver`,`task`.`accept_time` AS `accept_time`,`task`.`up_time` AS `up_time`,`task`.`down_time` AS `down_time`,`task`.`batch` AS `batch`,`task`.`isUp` AS `isUp`,`task`.`isDown` AS `isDown`,`task`.`remarkUp` AS `remarkUp`,`task`.`remarkDown` AS `remarkDown` from ((((((`task` left join `daily` on((`task`.`daily_id` = `daily`.`id`))) left join `cement` on((`task`.`cement_id` = `cement`.`id`))) left join `section` on((`task`.`section_id` = `section`.`id`))) left join `materials` on((`daily`.`materia` = `materials`.`id`))) left join `car` on((`task`.`car_id` = `car`.`id`))) left join `users` on((`car`.`driver` = `users`.`eova_id`))) where ((`task`.`daily_id` = `daily`.`id`) and (`task`.`cement_id` = `cement`.`id`) and (`task`.`section_id` = `section`.`id`)) ;

-- ----------------------------
-- View structure for task_state
-- ----------------------------
DROP VIEW IF EXISTS `task_state`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `task_state` AS select `task`.`code` AS `code`,`task`.`driver` AS `driver`,`task`.`state` AS `state`,`dicts`.`name` AS `name`,`task`.`id` AS `id` from (`task` join `dicts`) where ((`dicts`.`object` = 'task') and (`dicts`.`field` = 'state') and (`dicts`.`value` = `task`.`state`)) ;

-- ----------------------------
-- View structure for v1_task_info
-- ----------------------------
DROP VIEW IF EXISTS `v1_task_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v1_task_info` AS select `task_info`.`id` AS `id`,`task_info`.`code` AS `code`,`task_info`.`daily_id` AS `daily_id`,`task_info`.`daily_code` AS `daily_code`,`task_info`.`cement_id` AS `cement_id`,`task_info`.`cement_name` AS `cement_name`,`task_info`.`section_name` AS `section_name`,`task_info`.`section_id` AS `section_id`,`task_info`.`tasks` AS `tasks`,`task_info`.`real_up` AS `real_up`,`task_info`.`real_down` AS `real_down`,`task_info`.`state` AS `state`,`task_info`.`remark` AS `remark`,`task_info`.`fin_time` AS `fin_time`,`task_info`.`pici` AS `pici`,`task_info`.`car_id` AS `car_id`,`task_info`.`isOK` AS `isOK`,`task_info`.`license` AS `license`,`task_info`.`riqi` AS `riqi`,`task_info`.`weight2` AS `weight2`,`task_info`.`real_up_img` AS `real_up_img`,`task_info`.`real_down_img` AS `real_down_img`,`task_info`.`mat_name` AS `mat_name`,`task_info`.`m_phone` AS `m_phone`,`task_info`.`car_position` AS `car_position`,`task_info`.`car_type` AS `car_type`,`task_info`.`driver_name` AS `driver_name`,`task_info`.`car_license` AS `car_license`,`task_info`.`user_phone` AS `user_phone`,`task_info`.`section_location` AS `section_location`,`task_info`.`cement_location` AS `cement_location`,`task_info`.`route_id` AS `route_id`,`task_info`.`huowu_name` AS `huowu_name`,`task_state`.`driver` AS `driver`,`task_state`.`name` AS `name`,`route`.`content` AS `route_content`,`task_info`.`accept_time` AS `accept_time`,`task_info`.`up_time` AS `up_time`,`task_info`.`down_time` AS `down_time`,`route`.`down_time` AS `r_down_time`,`route`.`up_time` AS `r_up_time`,`route`.`time` AS `route_time` from ((`task_info` join `task_state` on((`task_state`.`code` = `task_info`.`code`))) join `route` on((`route`.`id` = `task_info`.`route_id`))) ;

-- ----------------------------
-- View structure for wait_pass_info
-- ----------------------------
DROP VIEW IF EXISTS `wait_pass_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wait_pass_info` AS select `wait_pass`.`id` AS `id`,`wait_pass`.`daily_id` AS `daily_id`,`wait_pass`.`field` AS `field`,`wait_pass`.`ubefore` AS `ubefore`,`wait_pass`.`uafter` AS `uafter`,`wait_pass`.`contact` AS `contact`,`wait_pass`.`uptime` AS `uptime`,`wait_pass`.`isOK` AS `isOK`,`dicts`.`name` AS `field_name` from (`dicts` join `wait_pass`) where ((`dicts`.`object` = 'daily') and (`dicts`.`field` = 'field') and (`wait_pass`.`field` = `dicts`.`value`)) ;

-- ----------------------------
-- View structure for wait_pass_task_info
-- ----------------------------
DROP VIEW IF EXISTS `wait_pass_task_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wait_pass_task_info` AS select `wait_pass_task`.`id` AS `id`,`wait_pass_task`.`task_id` AS `task_id`,`wait_pass_task`.`field` AS `field`,`wait_pass_task`.`ubefore` AS `ubefore`,`wait_pass_task`.`uafter` AS `uafter`,`wait_pass_task`.`uptime` AS `uptime`,`wait_pass_task`.`isOK` AS `isOK`,`dicts`.`name` AS `field_name` from (`wait_pass_task` join `dicts`) where ((`wait_pass_task`.`field` = `dicts`.`value`) and (`dicts`.`object` = 'task') and (`dicts`.`field` = 'field')) ;

SET FOREIGN_KEY_CHECKS = 1;
