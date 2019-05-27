/*
 Navicat Premium Data Transfer

 Source Server         : transport
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : 47.98.198.39:3306
 Source Schema         : logistic_bi

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 27/05/2019 09:10:43
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
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `area` VALUES (24, '16', '站街测试', NULL, NULL);
INSERT INTO `area` VALUES (25, '22', '冉启艳', NULL, NULL);
INSERT INTO `area` VALUES (26, '23', '丽姐', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (6, 3, 2, '湘 BV1959', 17, 1, '113.13169534,27.82743293');
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
INSERT INTO `car` VALUES (37, 0, 0, '请选择车辆', 0, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (68, 7, 3, '贵A88888', 37, 1, '');
INSERT INTO `car` VALUES (69, 8, 2, '贵A81234', 47, 1, '106.7091771,26.62990674');
INSERT INTO `car` VALUES (70, 8, 2, '贵A11111', 60, 1, '106.36234490135,26.672573571412');
INSERT INTO `car` VALUES (71, 5, 2, '湘A12345', 43, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (72, 3, 2, '贵FX5726（袋装）', 58, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (73, 9, 7, '贵A0R08N', 59, 1, '106.36210508508,26.669808376984');
INSERT INTO `car` VALUES (74, 10, 3, '贵FX5726（50吨）', 58, 1, '113.13169534,27.82743293');
INSERT INTO `car` VALUES (75, 3, 7, '贵A0R08N', 59, 1, '');
INSERT INTO `car` VALUES (76, 11, 8, '贵FX5726（40吨）', 58, 1, NULL);
INSERT INTO `car` VALUES (77, 5, 2, '湘B67890', 63, 1, '113.13169534,27.82743293');

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car_type
-- ----------------------------
INSERT INTO `car_type` VALUES (1, '30吨车型', 30, 180.00);
INSERT INTO `car_type` VALUES (2, '40吨车型', 40, 300.00);
INSERT INTO `car_type` VALUES (3, '50吨车型', 50, 560.00);
INSERT INTO `car_type` VALUES (4, '六桥车', 30, 160.00);
INSERT INTO `car_type` VALUES (5, '四桥车', 50, 250.00);
INSERT INTO `car_type` VALUES (6, '35吨袋装', 35, 50.00);
INSERT INTO `car_type` VALUES (7, '冉', 20, 20.00);
INSERT INTO `car_type` VALUES (8, '丽姐', 15, 15.00);

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `carry` VALUES (38, '重遵3标1#', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (39, '站街测试卸货点', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (40, '冉启艳私站', NULL, NULL, NULL, 2);
INSERT INTO `carry` VALUES (41, '王晓炜私站', 45, NULL, NULL, 2);
INSERT INTO `carry` VALUES (42, '都安10标1#', 45, NULL, NULL, 2);
INSERT INTO `carry` VALUES (43, '丽姐个人站', NULL, NULL, NULL, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cement
-- ----------------------------
INSERT INTO `cement` VALUES (1, '贵阳海螺', '贵州省贵阳市清镇市X004', '106.36231,26.670665', 2, NULL, NULL, 1.00);
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
INSERT INTO `cement` VALUES (18, '站街测试', '贵州省贵阳市清镇市X004', '106.361788,26.672437', 24, '冉', NULL, 0.30);
INSERT INTO `cement` VALUES (19, '冉启艳', '贵州省贵阳市清镇市X004', '106.36212,26.672205', 25, NULL, NULL, 0.30);
INSERT INTO `cement` VALUES (20, '丽姐', '贵州省贵阳市清镇市X004', '106.362062,26.672189', 26, NULL, NULL, 0.20);

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
  `stock_ask_time` datetime(0) NULL DEFAULT NULL COMMENT '库存实际询问时间',
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
) ENGINE = InnoDB AUTO_INCREMENT = 359 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily
-- ----------------------------
INSERT INTO `daily` VALUES (346, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 160, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (347, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (348, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (349, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 80, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (350, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 25, 2, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (351, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 2.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 50, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (352, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 240, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (353, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 400, 3, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (354, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 230, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (355, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (356, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (357, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 200, 2, NULL, 2, 'PO42.5');
INSERT INTO `daily` VALUES (358, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 100, 3, NULL, 2, 'PO42.5');

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
  `stock_ask_time` datetime(0) NULL DEFAULT NULL COMMENT '库存实际询问时间',
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
  `gen_date` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 836 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_history
-- ----------------------------
INSERT INTO `daily_history` VALUES (758, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 160, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (759, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 120, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (760, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 120, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (761, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 80, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (762, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 25, 2, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (763, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 10.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 50, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (764, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 240, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (765, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 400, 3, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (766, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 230, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (767, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 300, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (768, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 300, 1, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (769, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 200, 2, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (770, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 100, 3, '2019-05-26-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (771, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 160, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (772, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 120, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (773, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 120, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (774, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 80, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (775, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 25, 2, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (776, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 2.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 50, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (777, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 240, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (778, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 400, 3, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (779, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 230, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (780, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 300, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (781, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 300, 1, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (782, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 200, 2, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (783, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 100, 3, '2019-05-26-3', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (784, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 160, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (785, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 120, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (786, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 120, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (787, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 80, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (788, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 25, 2, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (789, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 40.00, 150.00, 2.00, 2, 40.00, 3, 3, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 90, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (790, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 240, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (791, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 400, 3, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (792, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 230, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (793, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 300, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (794, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 300, 1, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (795, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 200, 2, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (796, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-26', 0, 2, 100, 3, '2019-05-26-4', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (797, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 160, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (798, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (799, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (800, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 80, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (801, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 25, 2, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (802, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 2.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 50, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (803, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 240, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (804, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 400, 3, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (805, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 230, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (806, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (807, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (808, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 200, 2, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (809, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 100, 3, '2019-05-26-5', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (810, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 160, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (811, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (812, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (813, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 80, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (814, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 25, 2, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (815, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 2.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 50, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (816, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 240, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (817, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 400, 3, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (818, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 230, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (819, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (820, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (821, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 200, 2, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (822, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 100, 3, '2019-05-27-1', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (823, 'Daily-05261937520944337', 1, '都安19标1号站', 600.00, 160.00, 0, 0.27, 20, NULL, 0, 0.00, 100.00, 0.00, 420.00, 600.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 160, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (824, 'Daily-05261937846978931', 2, '都安19标2号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 60.00, 0.00, 420.00, 600.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (825, 'Daily-05261937997497587', 3, '都安19标3号站', 600.00, 120.00, 0, 0.2, 20, NULL, 0, 0.00, 50.00, 0.00, 410.00, 550.00, 5, 50.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 120, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (826, 'Daily-05261937993354476', 4, '镇雄转灰点', 600.00, 80.00, 0, 0.13, 50, NULL, 0, 0.00, 300.00, 0.00, 700.00, 600.00, 1, 30.00, 23, 23, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 80, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (827, 'Daily-05261937627951234', 5, '都安1标袋装', 100.00, 25.00, 0, 0.25, 10, NULL, 0, 0.00, 10.00, 0.00, 65.00, 540.00, 6, 35.00, 1, 1, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 25, 2, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (828, 'Daily-05261937776770790', 6, '测试标段', 200.00, 50.00, 0, 0.25, 20, NULL, 0, 0.00, 80.00, 0.00, 190.00, 2.00, 2, 40.00, 4, 4, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 50, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (829, 'Daily-05261937773403477', 7, '贵阳市政府', 600.00, 240.00, 0, 0.4, 20, NULL, 0, 0.00, 100.00, 0.00, 340.00, 10.00, 2, 40.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 240, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (830, 'Daily-05261937779282436', 8, '重遵3标1#', 600.00, 400.00, 0, 0.67, NULL, NULL, 0, 0.00, NULL, 0.00, 80.00, 150.00, 1, 30.00, 2, 2, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 400, 3, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (831, 'Daily-05261937935822653', 9, '站街测试卸货点', 600.00, 230.00, 0, 0.38, 120, NULL, 0, 0.00, 150.00, 0.00, 400.00, 30.00, 2, 40.00, 10, 10, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 230, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (832, 'Daily-05261937934700038', 10, '冉启艳私站', 500.00, 300.00, 0, 0.6, 120, NULL, 0, 0.00, 80.00, 0.00, 180.00, 30.00, 7, 20.00, 9, 9, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (833, 'Daily-05261937091208407', 11, '王晓炜私站', 600.00, 300.00, 0, 0.5, 200, NULL, 0, 0.00, 100.00, 0.00, 280.00, 20.00, 3, 50.00, 5, 5, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 300, 1, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (834, 'Daily-05261937099921805', 12, '丽姐个人站', 300.00, 200.00, 0, 0.67, 100, NULL, 0, 0.00, 80.00, 0.00, 120.00, 20.00, 8, 15.00, 8, 8, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 200, 2, '2019-05-27-2', 2, 'PO42.5', NULL);
INSERT INTO `daily_history` VALUES (835, 'Daily-05261937246707863', 13, '上麦', 600.00, 100.00, 0, 0.17, 50, NULL, 0, 0.00, 100.00, 0.00, 480.00, 20.00, 2, 40.00, 12, 12, 0, 0, 0, 0, '', '2019-05-27', 0, 2, 100, 3, '2019-05-27-2', 2, 'PO42.5', NULL);

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
  `in_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '插入时间',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1090 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_pre
-- ----------------------------
INSERT INTO `daily_pre` VALUES (1012, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1013, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1014, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1015, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1016, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1017, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 190, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1018, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1019, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1020, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1021, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1022, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1023, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1024, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26 19:37:50', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1025, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1026, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1027, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1028, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1029, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1030, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 190, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1031, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1032, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1033, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1034, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1035, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1036, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1037, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26 22:20:50', '2019-05-26-3', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1038, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1039, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1040, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1041, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1042, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1043, 351, '湖南工业大学', '测试标段', 150.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 150, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1044, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1045, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1046, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1047, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1048, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1049, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1050, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26 22:48:34', '2019-05-26-4', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1051, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-27', 0, 1, 420, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1052, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-27', 0, 1, 420, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1053, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-27', 0, 1, 410, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1054, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-27', 0, 1, 700, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1055, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-27', 0, 1, 65, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1056, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-27', 0, 1, 190, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1057, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-27', 0, 1, 340, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1058, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-27', 0, 1, 80, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1059, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-27', 0, 1, 400, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1060, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-27', 0, 1, 180, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1061, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-27', 0, 1, 280, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1062, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-27', 0, 1, 120, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1063, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-27', 0, 1, 480, '', '2019-05-27 08:46:23', '2019-05-26-5', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1064, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-27', 0, 1, 420, '', '2019-05-27 08:57:47', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1065, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-27', 0, 1, 420, '', '2019-05-27 08:57:47', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1066, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-27', 0, 1, 410, '', '2019-05-27 08:57:47', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1067, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-27', 0, 1, 700, '', '2019-05-27 08:57:47', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1068, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-27', 0, 1, 65, '', '2019-05-27 08:57:47', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1069, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-27', 0, 1, 190, '', '2019-05-27 08:57:47', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1070, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-27', 0, 1, 340, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1071, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-27', 0, 1, 80, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1072, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-27', 0, 1, 400, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1073, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-27', 0, 1, 180, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1074, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-27', 0, 1, 280, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1075, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-27', 0, 1, 120, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1076, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-27', 0, 1, 480, '', '2019-05-27 08:57:48', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1077, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-27', 0, 1, 420, '', '2019-05-27 08:58:27', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1078, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-27', 0, 1, 420, '', '2019-05-27 08:58:27', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1079, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-27', 0, 1, 410, '', '2019-05-27 08:58:27', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1080, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-27', 0, 1, 700, '', '2019-05-27 08:58:28', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1081, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-27', 0, 1, 65, '', '2019-05-27 08:58:28', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1082, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-27', 0, 1, 190, '', '2019-05-27 08:58:28', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1083, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-27', 0, 1, 340, '', '2019-05-27 08:58:28', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1084, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-27', 0, 1, 80, '', '2019-05-27 08:58:29', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1085, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-27', 0, 1, 400, '', '2019-05-27 08:58:29', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1086, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-27', 0, 1, 180, '', '2019-05-27 08:58:29', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1087, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-27', 0, 1, 280, '', '2019-05-27 08:58:29', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1088, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-27', 0, 1, 120, '', '2019-05-27 08:58:29', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_pre` VALUES (1089, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-27', 0, 1, 480, '', '2019-05-27 08:58:29', '2019-05-27-2', 2, 'PO42.5');

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
) ENGINE = InnoDB AUTO_INCREMENT = 350 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_state
-- ----------------------------
INSERT INTO `daily_state` VALUES (337, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-27', 0, 1, 420, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (338, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-27', 0, 1, 420, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (339, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-27', 0, 1, 410, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (340, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-27', 0, 1, 700, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (341, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-27', 0, 1, 65, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (342, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-27', 0, 1, 190, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (343, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-27', 0, 1, 340, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (344, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-27', 0, 1, 80, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (345, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-27', 0, 1, 400, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (346, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-27', 0, 1, 180, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (347, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-27', 0, 1, 280, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (348, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-27', 0, 1, 120, '', '2019-05-27-2', 2, 'PO42.5');
INSERT INTO `daily_state` VALUES (349, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-27', 0, 1, 480, '', '2019-05-27-2', 2, 'PO42.5');

-- ----------------------------
-- Table structure for daily_state_history
-- ----------------------------
DROP TABLE IF EXISTS `daily_state_history`;
CREATE TABLE `daily_state_history`  (
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
) ENGINE = InnoDB AUTO_INCREMENT = 428 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daily_state_history
-- ----------------------------
INSERT INTO `daily_state_history` VALUES (363, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (364, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (365, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (366, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (367, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (368, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 190, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (369, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (370, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (371, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (372, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (373, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (374, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (375, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (376, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (377, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (378, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (379, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (380, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (381, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 190, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (382, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (383, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (384, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (385, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (386, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (387, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (388, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (389, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (390, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (391, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (392, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (393, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (394, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 190, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (395, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (396, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (397, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (398, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (399, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (400, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (401, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (402, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (403, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-26', 0, 1, 420, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (404, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-26', 0, 1, 410, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (405, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-26', 0, 1, 700, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (406, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-26', 0, 1, 65, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (407, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-26', 0, 1, 190, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (408, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-26', 0, 1, 340, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (409, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-26', 0, 1, 80, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (410, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-26', 0, 1, 400, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (411, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-26', 0, 1, 180, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (412, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-26', 0, 1, 280, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (413, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-26', 0, 1, 120, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (414, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-26', 0, 1, 480, '', '2019-05-26-2', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (415, 346, '贵阳海螺', '都安19标1号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937520944337', '2019-05-27', 0, 1, 420, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (416, 347, '贵阳海螺', '都安19标2号站', 420.00, 0.00, 0.00, 0.00, 'Daily-05261937846978931', '2019-05-27', 0, 1, 420, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (417, 348, '贵阳海螺', '都安19标3号站', 410.00, 0.00, 0.00, 0.00, 'Daily-05261937997497587', '2019-05-27', 0, 1, 410, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (418, 349, '贵阳海螺', '镇雄转灰点', 700.00, 0.00, 0.00, 0.00, 'Daily-05261937993354476', '2019-05-27', 0, 1, 700, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (419, 350, '都匀豪龙', '都安1标袋装', 65.00, 0.00, 0.00, 0.00, 'Daily-05261937627951234', '2019-05-27', 0, 1, 65, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (420, 351, '湖南工业大学', '测试标段', 190.00, 0.00, 0.00, 0.00, 'Daily-05261937776770790', '2019-05-27', 0, 1, 190, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (421, 352, '富力中心', '贵阳市政府', 340.00, 0.00, 0.00, 0.00, 'Daily-05261937773403477', '2019-05-27', 0, 1, 340, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (422, 353, '遵义海螺', '重遵3标1#', 80.00, 0.00, 0.00, 0.00, 'Daily-05261937779282436', '2019-05-27', 0, 1, 80, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (423, 354, '站街测试', '站街测试卸货点', 400.00, 0.00, 0.00, 0.00, 'Daily-05261937935822653', '2019-05-27', 0, 1, 400, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (424, 355, '冉启艳', '冉启艳私站', 180.00, 0.00, 0.00, 0.00, 'Daily-05261937934700038', '2019-05-27', 0, 1, 180, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (425, 356, '贵阳海螺', '王晓炜私站', 280.00, 0.00, 0.00, 0.00, 'Daily-05261937091208407', '2019-05-27', 0, 1, 280, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (426, 357, '丽姐', '丽姐个人站', 120.00, 0.00, 0.00, 0.00, 'Daily-05261937099921805', '2019-05-27', 0, 1, 120, '', '2019-05-27-1', 2, 'PO42.5');
INSERT INTO `daily_state_history` VALUES (427, 358, '富力中心', '上麦', 480.00, 0.00, 0.00, 0.00, 'Daily-05261937246707863', '2019-05-27', 0, 1, 480, '', '2019-05-27-1', 2, 'PO42.5');

-- ----------------------------
-- Table structure for day_batch
-- ----------------------------
DROP TABLE IF EXISTS `day_batch`;
CREATE TABLE `day_batch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `current` int(10) NULL DEFAULT NULL COMMENT '当日批次',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of day_batch
-- ----------------------------
INSERT INTO `day_batch` VALUES (1, 2);

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
) ENGINE = InnoDB AUTO_INCREMENT = 273 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huowu
-- ----------------------------
INSERT INTO `huowu` VALUES (0, '请选择货物', 1, '', NULL);
INSERT INTO `huowu` VALUES (2, 'PO42.5', 1, NULL, NULL);
INSERT INTO `huowu` VALUES (4, 'PO52.5', 1, NULL, NULL);
INSERT INTO `huowu` VALUES (5, 'PC32.5', NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of materials
-- ----------------------------
INSERT INTO `materials` VALUES (1, '测试物资公司1', 'XX省XX市XX区XX路129号', '测试联系人1', '12345678911');
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
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of motorcade
-- ----------------------------
INSERT INTO `motorcade` VALUES (3, '站街车队', NULL, 2);
INSERT INTO `motorcade` VALUES (4, '贵定王龙车队', NULL, 3);
INSERT INTO `motorcade` VALUES (5, '陈星车队（站街）', NULL, 2);
INSERT INTO `motorcade` VALUES (6, '测试车队', NULL, 21);
INSERT INTO `motorcade` VALUES (7, '都匀袋装', 14, 6);
INSERT INTO `motorcade` VALUES (8, '贵阳测试', 47, 2);
INSERT INTO `motorcade` VALUES (9, '冉', 59, 25);
INSERT INTO `motorcade` VALUES (10, '炜', NULL, 2);
INSERT INTO `motorcade` VALUES (11, '丽姐', NULL, 26);

-- ----------------------------
-- Table structure for msg
-- ----------------------------
DROP TABLE IF EXISTS `msg`;
CREATE TABLE `msg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知内容',
  `type` int(1) NULL DEFAULT NULL COMMENT '通知类型',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知对象',
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `submit` datetime(0) NULL DEFAULT NULL COMMENT '提交时间',
  `finish` datetime(0) NULL DEFAULT NULL COMMENT '预期完成时间',
  `real_fin` datetime(0) NULL DEFAULT NULL COMMENT '实际完成时间',
  `state` int(1) NULL DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of route
-- ----------------------------
INSERT INTO `route` VALUES (1, '云站路、贵安新区、青岩、惠水', '云站路、贵安新区、青岩、惠水', 1, 3, 5, 275.00, 550.00, NULL, NULL, 150.00, 145.00, 0.00, 1, 1, 5);
INSERT INTO `route` VALUES (2, '云站路、贵安新区、青岩、惠水', '云站路、贵安新区、青岩、惠水', 1, 2, 2, 350.00, 600.00, NULL, NULL, 200.00, 145.00, 0.00, 1, 1, 5);
INSERT INTO `route` VALUES (3, '云站路、贵安新区、青岩、惠水', '云站路、贵安新区、青岩、惠水', 1, 1, 5, 360.00, 600.00, NULL, NULL, 120.00, 152.00, 0.00, 1, 1, 5);
INSERT INTO `route` VALUES (4, '卫城上高速、泼机下高速', '卫城上高速、泼机下高速', 1, 4, 1, 210.00, 600.00, NULL, NULL, 400.00, 180.00, 1500.00, 1, 1, 3);
INSERT INTO `route` VALUES (5, '都匀豪龙-都安1标袋装', '都匀豪龙-都安1标袋装', 6, 5, 6, 65.00, 540.00, NULL, NULL, 200.00, 100.00, 250.00, 2, 1, 4);
INSERT INTO `route` VALUES (6, '测试路线', '测试路线', 13, 6, 2, 50.00, 2.00, 10.00, 10.00, 100.00, 50.00, 250.00, 1, 1, 5);
INSERT INTO `route` VALUES (7, '贵阳测试线路', '贵阳测试线路', 14, 7, 2, 2.00, 10.00, 1.00, 1.00, 10.00, 1.00, 10.00, 1, 1, 8);
INSERT INTO `route` VALUES (8, '站街测试', '全程老路', 18, 9, 2, 20.00, 30.00, 2.00, 300.00, 120.00, 50.00, 0.00, 1, 1, 3);
INSERT INTO `route` VALUES (9, '全程老路', '全程老路', 19, 10, 7, 20.00, 30.00, 5.00, 50.00, 100.00, 130.00, 100.00, 1, 1, 3);
INSERT INTO `route` VALUES (10, '全程老路', '全程老路', 1, 11, 3, 10.00, 20.00, 10.00, 5.00, 80.00, 5.00, 0.00, 1, 1, 10);
INSERT INTO `route` VALUES (11, '老路', '老路', 20, 12, 8, 30.00, 20.00, 10.00, 10.00, 80.00, 60.00, NULL, 2, 1, 11);
INSERT INTO `route` VALUES (12, '重遵3标1#', '遵义北上高速，三元下高速', 3, 8, 1, 130.00, 150.00, 20.00, 20.00, 300.00, 100.00, NULL, 3, 1, 9);
INSERT INTO `route` VALUES (13, '上麦路线', '上麦路线', 14, 13, 2, 5.00, 20.00, 1.00, 5.00, 100.00, 10.00, 10.00, 3, 1, 6);

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, '都安19标1号站', 3, '106.713979,26.59574', 2, 600.00, 160.00, 100.00, 20.00, 35, 15);
INSERT INTO `section` VALUES (2, '都安19标2号站', 3, '105.120681,27.340591', 2, 600.00, 120.00, 60.00, 20.00, 18, 36);
INSERT INTO `section` VALUES (3, '都安19标3号站', 3, '105.251761,27.069161', 2, 600.00, 120.00, 50.00, 20.00, 18, 36);
INSERT INTO `section` VALUES (4, '镇雄转灰点', 29, '104.962004,27.4255', 2, 600.00, 80.00, 300.00, 50.00, 53, 55);
INSERT INTO `section` VALUES (5, '都安1标袋装', 30, '107.53237,26.382906', 6, 100.00, 25.00, 10.00, 10.00, 18, 15);
INSERT INTO `section` VALUES (6, '测试标段', 34, '113.084563,27.819511', 21, 200.00, 50.00, 80.00, 20.00, 35, 15);
INSERT INTO `section` VALUES (7, '贵阳市政府', 3, '106.634424,26.65242', 21, 600.00, 240.00, 100.00, 20.00, 18, 15);
INSERT INTO `section` VALUES (8, '重遵3标1#', 38, '106.845558,28.47717', 9, 600.00, 400.00, NULL, NULL, 53, 55);
INSERT INTO `section` VALUES (9, '站街测试卸货点', 39, '106.361447,26.683752', 24, 600.00, 230.00, 150.00, 120.00, 52, 54);
INSERT INTO `section` VALUES (10, '冉启艳私站', 40, '106.362848,26.66298', 25, 500.00, 300.00, 80.00, 120.00, 52, 54);
INSERT INTO `section` VALUES (11, '王晓炜私站', 41, '106.353456,26.647687', 2, 600.00, 300.00, 100.00, 200.00, 53, 55);
INSERT INTO `section` VALUES (12, '丽姐个人站', 43, '106.362385,26.686231', 26, 300.00, 200.00, 80.00, 100.00, 50, 54);
INSERT INTO `section` VALUES (13, '上麦', 3, '106.59109,26.639827', 2, 600.00, 100.00, 100.00, 50.00, 52, 54);

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
  `fin_time` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `pici` int(1) NULL DEFAULT NULL COMMENT '所属批次',
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `gen_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '任务单生成日期，自动生成',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  `voucher` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证路径',
  `accept_time` datetime(0) NULL DEFAULT NULL COMMENT '接单时间',
  `up_time` datetime(0) NULL DEFAULT NULL COMMENT '装货时间',
  `down_time` datetime(0) NULL DEFAULT NULL COMMENT '卸货时间',
  `up_submit_time` datetime(0) NULL DEFAULT NULL COMMENT '装货提交时间',
  `down_submit_time` datetime(0) NULL DEFAULT NULL COMMENT '卸货提交时间',
  `isUp` int(1) NULL DEFAULT 0 COMMENT '是否装货审核',
  `isDown` int(1) NULL DEFAULT 0 COMMENT '是否卸货审核',
  `remarkUp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '装货审核备注',
  `remarkDown` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卸货审核备注',
  `isChangeCar` int(1) NULL DEFAULT 0 COMMENT '是否车辆改派',
  `beforeCar` varchar(266) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '改派前车辆',
  `upOverTime` datetime(0) NULL DEFAULT NULL COMMENT '装货超时时间',
  `traverOverTime` datetime(0) NULL DEFAULT NULL COMMENT '运输超时时间',
  `errorMsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `errorFile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常附件',
  `isUpOver` int(1) NULL DEFAULT 0 COMMENT '是否装货超时',
  `isTraverOver` int(1) NULL DEFAULT 0 COMMENT '是否运输超时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7492 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES (7384, 'Task-052708581016016', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:29', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7385, 'Task-052708588111762', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:29', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7386, 'Task-052708585149518', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7387, 'Task-052708582343003', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7388, 'Task-052708589690942', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7389, 'Task-052708586602727', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7390, 'Task-052708583773295', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7391, 'Task-052708581136905', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7392, 'Task-052708580338990', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7393, 'Task-052708587516417', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7394, 'Task-052708584778269', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7395, 'Task-052708581941378', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7396, 'Task-052708589272041', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7397, 'Task-052708586675091', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:30', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7398, 'Task-052708583940865', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7399, 'Task-052708581345886', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7400, 'Task-052708588245149', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7401, 'Task-052708586810031', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7402, 'Task-052708586712056', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7403, 'Task-052708584215975', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7404, 'Task-052708581885420', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7405, 'Task-052708589222770', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7406, 'Task-052708586663636', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7407, 'Task-052708583943361', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7408, 'Task-052708581070586', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7409, 'Task-052708588178815', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:31', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7410, 'Task-052708589033669', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7411, 'Task-052708587236812', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7412, 'Task-052708584850277', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7413, 'Task-052708582913150', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7414, 'Task-052708580682247', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7415, 'Task-052708588242514', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7416, 'Task-052708585894104', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7417, 'Task-052708583811837', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7418, 'Task-052708581271428', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7419, 'Task-052708589016448', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7420, 'Task-052708588156767', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:32', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7421, 'Task-052708586214327', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7422, 'Task-052708583865723', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7423, 'Task-052708581572212', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7424, 'Task-052708588913058', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7425, 'Task-052708586401595', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7426, 'Task-052708585296370', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7427, 'Task-052708583164037', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7428, 'Task-052708581027355', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7429, 'Task-052708588259816', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7430, 'Task-052708586098497', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7431, 'Task-052708583209567', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7432, 'Task-052708581025504', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:33', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7433, 'Task-052708580676071', 350, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 2, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7434, 'Task-052708580679816', 351, 13, 6, 77, 6, 63, 40, 39.00, 'a100.jpg,', 39.00, 'a101.jpg', 1, 1, 50, 0.250, NULL, NULL, '', '2019-05-27 09:05:58', 1, '湘B67890', '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, '2019-05-27 09:04:03', '2019-05-27 09:05:07', '2019-05-27 09:05:38', NULL, NULL, 1, 0, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7435, 'Task-052708588298150', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7436, 'Task-052708587419552', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7437, 'Task-052708584893287', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7438, 'Task-052708585484625', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7439, 'Task-052708583017432', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7440, 'Task-052708580587341', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7441, 'Task-052708588381192', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7442, 'Task-052708586921146', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7443, 'Task-052708584788407', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7444, 'Task-052708582148094', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7445, 'Task-052708589737578', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7446, 'Task-052708580121147', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 62, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7447, 'Task-052708587317801', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 2, 63, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7448, 'Task-052708587041084', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 64, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7449, 'Task-052708584456191', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 65, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7450, 'Task-052708582057617', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 66, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7451, 'Task-052708589608395', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 67, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7452, 'Task-052708587199271', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 68, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7453, 'Task-052708585223419', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 69, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7454, 'Task-052708582538972', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 70, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7455, 'Task-052708589864031', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 71, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7456, 'Task-052708587373264', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 72, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7457, 'Task-052708584526285', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 73, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7458, 'Task-052708584145645', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 74, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7459, 'Task-052708581662588', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 75, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7460, 'Task-052708588903551', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 76, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7461, 'Task-052708586739237', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 77, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7462, 'Task-052708584667870', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 78, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:36', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7463, 'Task-052708582064060', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 79, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7464, 'Task-052708589047670', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 80, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7465, 'Task-052708586187301', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 81, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7466, 'Task-052708583852610', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 2, 82, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7467, 'Task-052708584162113', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 83, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7468, 'Task-052708581790708', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 84, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7469, 'Task-052708589296559', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 85, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7470, 'Task-052708587689151', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 86, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7471, 'Task-052708584984955', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 2, 87, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7472, 'Task-052708584450305', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 88, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:37', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7473, 'Task-052708581534496', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 89, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7474, 'Task-052708589008830', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 90, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7475, 'Task-052708586275764', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 91, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7476, 'Task-052708583051009', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 92, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7477, 'Task-052708580253808', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 93, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7478, 'Task-052708588872274', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 94, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7479, 'Task-052708586064213', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 2, 95, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7480, 'Task-052708586341174', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 96, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7481, 'Task-052708583693210', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 97, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7482, 'Task-052708580968299', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 98, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7483, 'Task-052708588146808', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 99, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7484, 'Task-052708585300215', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 100, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:38', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7485, 'Task-052708582784734', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 101, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7486, 'Task-052708580289271', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 102, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7487, 'Task-052708587621615', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 103, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7488, 'Task-052708584837361', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 104, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7489, 'Task-052708582308178', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 105, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7490, 'Task-052708589355925', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 106, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task` VALUES (7491, 'Task-052708586697796', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 2, 107, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-2', '2019-05-27 08:58:39', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);

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
  `fin_time` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `pici` int(1) NULL DEFAULT NULL COMMENT '所属批次',
  `license` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车辆',
  `riqi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日期',
  `batch` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当天生成批次',
  `gen_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '任务单生成日期，自动生成',
  `huowu_id` int(11) NULL DEFAULT NULL COMMENT '货物id',
  `huowu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物名称',
  `voucher` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凭证路径',
  `accept_time` datetime(0) NULL DEFAULT NULL COMMENT '接单时间',
  `up_time` datetime(0) NULL DEFAULT NULL COMMENT '装货时间',
  `down_time` datetime(0) NULL DEFAULT NULL COMMENT '卸货时间',
  `up_submit_time` datetime(0) NULL DEFAULT NULL COMMENT '装货提交时间',
  `down_submit_time` datetime(0) NULL DEFAULT NULL COMMENT '卸货提交时间',
  `isUp` int(1) NULL DEFAULT 0 COMMENT '是否装货审核',
  `isDown` int(1) NULL DEFAULT 0 COMMENT '是否卸货审核',
  `remarkUp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '装货审核备注',
  `remarkDown` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卸货审核备注',
  `isChangeCar` int(1) NULL DEFAULT 0 COMMENT '是否车辆改派',
  `beforeCar` varchar(266) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '改派前车辆',
  `upOverTime` datetime(0) NULL DEFAULT NULL COMMENT '装货超时时间',
  `traverOverTime` datetime(0) NULL DEFAULT NULL COMMENT '运输超时时间',
  `errorMsg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常信息',
  `errorFile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常文件',
  `isUpOver` int(1) NULL DEFAULT 0 COMMENT '是否装货超时',
  `isTraverOver` int(1) NULL DEFAULT 0 COMMENT '是否运输超时',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7384 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_history
-- ----------------------------
INSERT INTO `task_history` VALUES (6845, 'Task-05261937216069654', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6846, 'Task-05261937210557375', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6847, 'Task-05261937373527459', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6848, 'Task-05261937378324158', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6849, 'Task-05261937522326343', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6850, 'Task-05261937526502292', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6851, 'Task-05261937529752706', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6852, 'Task-05261937524333455', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6853, 'Task-05261937684156492', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6854, 'Task-05261937687635425', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6855, 'Task-05261937842351388', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6856, 'Task-05261937846216404', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6857, 'Task-05261937843107503', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6858, 'Task-05261937998067911', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6859, 'Task-05261937151243761', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6860, 'Task-05261937155528943', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6861, 'Task-05261937318973235', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6862, 'Task-05261937312231470', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6863, 'Task-05261937465091080', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6864, 'Task-05261937622128566', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6865, 'Task-05261937627306878', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6866, 'Task-05261937622136263', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6867, 'Task-05261937775854892', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6868, 'Task-05261937770918664', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6869, 'Task-05261937932166336', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6870, 'Task-05261937097466451', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6871, 'Task-05261937091500079', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6872, 'Task-05261937245118416', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6873, 'Task-05261937248515216', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6874, 'Task-05261937244201693', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6875, 'Task-05261937408551687', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6876, 'Task-05261937402427599', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6877, 'Task-05261937408138101', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6878, 'Task-05261937813247605', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6879, 'Task-05261937968244050', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6880, 'Task-05261937961647835', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6881, 'Task-05261937964890146', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6882, 'Task-05261937968893448', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6883, 'Task-05261937125344548', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6884, 'Task-05261937129783659', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6885, 'Task-05261937123404510', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6886, 'Task-05261937276832879', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6887, 'Task-05261937271222543', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6888, 'Task-05261937744137774', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6889, 'Task-05261937747731806', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6890, 'Task-05261937908451325', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6891, 'Task-05261937902474462', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6892, 'Task-05261937907216126', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6893, 'Task-05261937901076114', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6894, 'Task-05261937153903457', 350, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 0, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6895, 'Task-05261937316466226', 351, 13, 6, 71, 6, 43, 40, 12.00, 'a94.jpg', 11.00, 'a95.jpg', 1, 1, 50, 0.250, NULL, NULL, '', '2019-05-26 22:20:07', 1, '湘A12345', '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, '2019-05-26 19:39:43', '2019-05-26 19:57:44', '2019-05-26 22:19:40', NULL, NULL, 0, 0, NULL, NULL, 1, '湘B67890', '2019-05-26 19:55:00', '2019-05-26 20:00:00', '测试', 'a93.jpg', 1, 1);
INSERT INTO `task_history` VALUES (6896, 'Task-05261937311150341', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6897, 'Task-05261937464739066', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6898, 'Task-05261937468181403', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6899, 'Task-05261937623781709', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6900, 'Task-05261937627318472', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6901, 'Task-05261937620953012', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6902, 'Task-05261937624982016', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6903, 'Task-05261937770584124', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6904, 'Task-05261937779987833', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6905, 'Task-05261937934425827', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6906, 'Task-05261937938591441', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6907, 'Task-05261937098592712', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 62, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6908, 'Task-05261937244734149', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 63, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6909, 'Task-05261937404020119', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 64, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6910, 'Task-05261937874716074', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 65, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6911, 'Task-05261937878997344', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 66, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6912, 'Task-05261937872350284', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 67, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6913, 'Task-05261937875737307', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 68, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6914, 'Task-05261937879096393', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 69, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6915, 'Task-05261937022374743', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 70, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6916, 'Task-05261937026114324', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 71, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6917, 'Task-05261937020624395', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 72, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6918, 'Task-05261937023783455', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 73, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6919, 'Task-05261937183338860', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 74, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6920, 'Task-05261937187614543', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 75, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6921, 'Task-05261937342289159', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 76, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6922, 'Task-05261937347256271', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 77, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6923, 'Task-05261937340545795', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 78, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6924, 'Task-05261937343683345', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 79, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6925, 'Task-05261937493781556', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 80, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6926, 'Task-05261937497189810', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 81, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6927, 'Task-05261937490519563', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 82, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6928, 'Task-05261937650649342', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 83, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6929, 'Task-05261937654820542', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 84, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6930, 'Task-05261937810271515', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 85, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6931, 'Task-05261937813559363', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 86, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6932, 'Task-05261937817657649', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 87, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6933, 'Task-05261937968076850', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 88, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6934, 'Task-05261937961374476', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 89, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6935, 'Task-05261937964774629', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 90, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6936, 'Task-05261937123228776', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 91, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6937, 'Task-05261937120069589', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 92, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6938, 'Task-05261937124715431', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 93, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6939, 'Task-05261937278662302', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 94, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6940, 'Task-05261937273241096', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 95, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6941, 'Task-05261937432600665', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 96, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6942, 'Task-05261937435984056', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 97, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6943, 'Task-05261937439490368', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 98, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6944, 'Task-05261937432741898', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 99, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6945, 'Task-05261937436146801', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 100, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6946, 'Task-05261937590819182', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 101, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6947, 'Task-05261937594391983', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 102, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6948, 'Task-05261937597748554', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 103, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6949, 'Task-05261937591837901', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 104, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6950, 'Task-05261937745690346', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 105, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6951, 'Task-05261937742157089', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 106, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6952, 'Task-05261937746433890', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 107, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-2', '2019-05-26 19:37:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6953, 'Task-05262220311251611', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6954, 'Task-05262220468091740', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6955, 'Task-05262220622900173', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6956, 'Task-05262220773346067', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6957, 'Task-05262220935689815', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6958, 'Task-05262220931083797', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6959, 'Task-05262220099781550', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6960, 'Task-05262220094525728', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6961, 'Task-05262220563711309', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6962, 'Task-05262220567592529', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6963, 'Task-05262220713219780', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6964, 'Task-05262220718150854', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6965, 'Task-05262220875222703', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6966, 'Task-05262220873840278', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6967, 'Task-05262220020898159', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6968, 'Task-05262220028509182', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6969, 'Task-05262220189341438', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6970, 'Task-05262220650982205', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6971, 'Task-05262220964852837', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6972, 'Task-05262220966195619', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6973, 'Task-05262220121425893', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6974, 'Task-05262220126299417', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6975, 'Task-05262220120321437', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6976, 'Task-05262220274339140', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6977, 'Task-05262220279165732', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6978, 'Task-05262220433416425', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6979, 'Task-05262220842799783', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6980, 'Task-05262220992454921', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6981, 'Task-05262220998753766', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6982, 'Task-05262220992365677', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6983, 'Task-05262220156414516', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6984, 'Task-05262220319718036', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6985, 'Task-05262220460026330', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6986, 'Task-05262220464476337', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6987, 'Task-05262220468634966', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6988, 'Task-05262220622660617', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6989, 'Task-05262220622881469', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6990, 'Task-05262220777188162', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6991, 'Task-05262220774470093', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6992, 'Task-05262220778124468', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6993, 'Task-05262220934505167', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6994, 'Task-05262220938392533', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6995, 'Task-05262220931958908', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6996, 'Task-05262220090275048', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6997, 'Task-05262220094671417', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6998, 'Task-05262220098801272', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (6999, 'Task-05262220242294733', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7000, 'Task-05262220245580346', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7001, 'Task-05262220340187370', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7002, 'Task-05262220650542904', 350, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 0, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7003, 'Task-05262220964348164', 351, 13, 6, 77, 6, 63, 40, 35.00, 'a98.jpg', 34.00, 'a99.jpg', 1, 1, 50, 0.250, NULL, NULL, '', '2019-05-26 22:47:37', 1, '湘B67890', '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, '2019-05-26 22:21:53', '2019-05-26 22:46:07', '2019-05-26 22:47:14', NULL, NULL, 1, 0, '', NULL, 1, '湘A12345', '2019-05-26 22:45:00', NULL, '车坏了测试', 'a97.jpg', 1, 0);
INSERT INTO `task_history` VALUES (7004, 'Task-05262220968800965', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7005, 'Task-05262220968740496', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7006, 'Task-05262220122222223', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7007, 'Task-05262220275531890', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7008, 'Task-05262220434226291', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7009, 'Task-05262220437633987', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7010, 'Task-05262220432669263', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7011, 'Task-05262220436051816', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7012, 'Task-05262220590443995', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7013, 'Task-05262220594544795', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7014, 'Task-05262220597849405', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7015, 'Task-05262220742127197', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 62, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7016, 'Task-05262220746506525', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 63, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7017, 'Task-05262220906950031', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 64, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7018, 'Task-05262220900194577', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 65, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7019, 'Task-05262220063482146', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 66, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7020, 'Task-05262220066700712', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 67, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7021, 'Task-05262220069832395', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 68, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7022, 'Task-05262220063735963', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 69, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7023, 'Task-05262220066931621', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 70, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7024, 'Task-05262220211031304', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 71, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7025, 'Task-05262220214636790', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 72, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7026, 'Task-05262220218182213', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 73, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7027, 'Task-05262220378516208', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 74, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7028, 'Task-05262220371900716', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 75, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7029, 'Task-05262220376229758', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 76, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7030, 'Task-05262220379507828', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 77, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7031, 'Task-05262220522878089', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 78, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7032, 'Task-05262220526926648', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 79, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7033, 'Task-05262220520907042', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 80, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7034, 'Task-05262220524285963', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 81, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7035, 'Task-05262220687945367', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 82, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7036, 'Task-05262220843785090', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 83, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7037, 'Task-05262220840894094', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 84, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7038, 'Task-05262220844329446', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 85, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7039, 'Task-05262220999217219', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 86, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7040, 'Task-05262220993663594', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 87, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7041, 'Task-05262220154450873', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 88, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7042, 'Task-05262220318516194', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 89, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7043, 'Task-05262220311959089', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 90, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7044, 'Task-05262220310176056', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 91, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7045, 'Task-05262220465080310', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 92, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7046, 'Task-05262220468598355', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 93, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7047, 'Task-05262220463313479', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 94, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7048, 'Task-05262220467170673', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 95, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7049, 'Task-05262220628027919', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 96, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7050, 'Task-05262220621385050', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 97, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7051, 'Task-05262220776215832', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 98, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7052, 'Task-05262220771636912', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 99, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7053, 'Task-05262220932246081', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 100, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7054, 'Task-05262220935940685', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 101, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7055, 'Task-05262220930199327', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 102, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7056, 'Task-05262220933500584', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 103, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7057, 'Task-05262220097574007', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 104, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7058, 'Task-05262220091199328', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 105, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7059, 'Task-05262220096279024', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 106, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7060, 'Task-05262220243821044', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 107, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-3', '2019-05-26 22:20:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7061, 'Task-05262248342339585', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7062, 'Task-05262248345464283', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7063, 'Task-05262248348478074', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7064, 'Task-05262248342409580', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7065, 'Task-05262248345535117', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7066, 'Task-05262248498634393', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7067, 'Task-05262248494126152', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7068, 'Task-05262248497349188', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7069, 'Task-05262248653510460', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7070, 'Task-05262248656742994', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7071, 'Task-05262248810273610', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7072, 'Task-05262248814431959', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7073, 'Task-05262248817749979', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7074, 'Task-05262248810976087', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7075, 'Task-05262248965067110', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7076, 'Task-05262248969552596', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7077, 'Task-05262248965976039', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7078, 'Task-05262248121436509', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:34', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7079, 'Task-05262248848999020', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7080, 'Task-05262248842538576', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7081, 'Task-05262248846207758', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7082, 'Task-05262248999737815', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7083, 'Task-05262248993010019', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7084, 'Task-05262248561501392', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7085, 'Task-05262248565365011', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7086, 'Task-05262248568469316', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7087, 'Task-05262248710594321', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7088, 'Task-05262248713992239', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7089, 'Task-05262248877594093', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7090, 'Task-05262248023514552', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7091, 'Task-05262248027046566', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7092, 'Task-05262248020590871', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7093, 'Task-05262248023690147', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7094, 'Task-05262248188671227', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7095, 'Task-05262248181784193', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7096, 'Task-05262248184888777', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7097, 'Task-05262248187991965', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7098, 'Task-05262248343154074', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7099, 'Task-05262248346549198', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7100, 'Task-05262248491615917', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7101, 'Task-05262248814396341', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7102, 'Task-05262248819411503', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7103, 'Task-05262248812888202', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7104, 'Task-05262248966081624', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7105, 'Task-05262248969576203', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7106, 'Task-05262248963062959', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7107, 'Task-05262248121567671', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7108, 'Task-05262248435594342', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7109, 'Task-05262248439633961', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7110, 'Task-05262248590123563', 350, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 0, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7111, 'Task-05262248599820885', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 50, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7112, 'Task-05262248742950891', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7113, 'Task-05262248746240136', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7114, 'Task-05262248900081002', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 53, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7115, 'Task-05262248903578094', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7116, 'Task-05262248907320748', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7117, 'Task-05262248064773651', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7118, 'Task-05262248068125194', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7119, 'Task-05262248066660637', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7120, 'Task-05262248213924842', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7121, 'Task-05262248378333782', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7122, 'Task-05262248378004285', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 61, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7123, 'Task-05262248521084565', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 62, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7124, 'Task-05262248520788591', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 63, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7125, 'Task-05262248523848757', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 64, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7126, 'Task-05262248687493354', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 65, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7127, 'Task-05262248681280428', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 66, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7128, 'Task-05262248684312098', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 67, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7129, 'Task-05262248680152784', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 68, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7130, 'Task-05262248843298156', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 69, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7131, 'Task-05262248846631541', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 70, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7132, 'Task-05262248849981129', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 71, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7133, 'Task-05262248843068672', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 72, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7134, 'Task-05262248993041727', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 73, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7135, 'Task-05262248157270072', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 74, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7136, 'Task-05262248310876703', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 75, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7137, 'Task-05262248466332424', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 76, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7138, 'Task-05262248460088768', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 77, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7139, 'Task-05262248463623575', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 78, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7140, 'Task-05262248466631499', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 79, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7141, 'Task-05262248620117137', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 80, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7142, 'Task-05262248623449963', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 81, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7143, 'Task-05262248244709425', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 82, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7144, 'Task-05262248249236816', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 83, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7145, 'Task-05262248242260105', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 84, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7146, 'Task-05262248245332563', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 85, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7147, 'Task-05262248400703357', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 86, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7148, 'Task-05262248409639130', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 87, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7149, 'Task-05262248563547727', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 88, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7150, 'Task-05262248566771600', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 89, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7151, 'Task-05262248560032350', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 90, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7152, 'Task-05262248563297290', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 91, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7153, 'Task-05262248566827627', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 92, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7154, 'Task-05262248710210459', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 93, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7155, 'Task-05262248714131349', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 94, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7156, 'Task-05262248713942931', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 95, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7157, 'Task-05262248874580875', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 96, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7158, 'Task-05262248022695873', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 97, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7159, 'Task-05262248021325461', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 98, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7160, 'Task-05262248025486605', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 99, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7161, 'Task-05262248188821107', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 100, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7162, 'Task-05262248181849145', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 101, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7163, 'Task-05262248184955965', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 102, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7164, 'Task-05262248188697781', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 103, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7165, 'Task-05262248344289553', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 104, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7166, 'Task-05262248347781338', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 105, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7167, 'Task-05262248341870964', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 106, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-26', '2019-05-26-4', '2019-05-26 22:48:35', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7168, 'Task-05270846591684669', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7169, 'Task-05270846745336250', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7170, 'Task-05270846749348492', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7171, 'Task-05270846743671109', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7172, 'Task-05270846747336938', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7173, 'Task-05270846901624633', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7174, 'Task-05270846905341866', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7175, 'Task-05270846909521726', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:23', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7176, 'Task-05270846063391087', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7177, 'Task-05270846066944611', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7178, 'Task-05270846210625247', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7179, 'Task-05270846214198606', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7180, 'Task-05270846219909387', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7181, 'Task-05270846213956830', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7182, 'Task-05270846377728817', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7183, 'Task-05270846372618545', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7184, 'Task-05270846376635256', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7185, 'Task-05270846521294508', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7186, 'Task-05270846524179944', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7187, 'Task-05270846687984338', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7188, 'Task-05270846681912771', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7189, 'Task-05270846685848746', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7190, 'Task-05270846689887527', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7191, 'Task-05270846848441966', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7192, 'Task-05270846842286030', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7193, 'Task-05270846846963720', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7194, 'Task-05270846990222668', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7195, 'Task-05270846155130554', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7196, 'Task-05270846159993183', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7197, 'Task-05270846153832218', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7198, 'Task-05270846310954912', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7199, 'Task-05270846315431458', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7200, 'Task-05270846319038621', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7201, 'Task-05270846464263307', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7202, 'Task-05270846468185034', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7203, 'Task-05270846462190571', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7204, 'Task-05270846466172921', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7205, 'Task-05270846620409214', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7206, 'Task-05270846629424605', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7207, 'Task-05270846623436288', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7208, 'Task-05270846771694880', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7209, 'Task-05270846777123782', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7210, 'Task-05270846931808456', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7211, 'Task-05270846935741637', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7212, 'Task-05270846939744101', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7213, 'Task-05270846934513981', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7214, 'Task-05270846091852344', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7215, 'Task-05270846096417449', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7216, 'Task-05270846247896003', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7217, 'Task-05270846400594265', 350, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 0, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7218, 'Task-05270846564056032', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 50, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7219, 'Task-05270846568159626', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7220, 'Task-05270846563672897', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7221, 'Task-05270846567514167', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7222, 'Task-05270846714245623', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7223, 'Task-05270846025877702', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7224, 'Task-05270846020067061', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7225, 'Task-05270846023579240', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7226, 'Task-05270846181617971', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7227, 'Task-05270846185494720', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7228, 'Task-05270846685127844', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7229, 'Task-05270846844544557', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7230, 'Task-05270846154895468', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 62, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7231, 'Task-05270846158484472', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 63, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7232, 'Task-05270846311775546', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 64, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7233, 'Task-05270846316061566', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 65, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7234, 'Task-05270846319678506', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 66, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7235, 'Task-05270846463867307', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 67, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7236, 'Task-05270846467419155', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 68, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7237, 'Task-05270846461155384', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 69, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7238, 'Task-05270846465541696', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 70, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7239, 'Task-05270846629523207', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 71, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7240, 'Task-05270846624442548', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 72, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7241, 'Task-05270846621920034', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 73, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7242, 'Task-05270846777018322', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 74, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7243, 'Task-05270846933118818', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 75, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7244, 'Task-05270846937697612', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 76, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7245, 'Task-05270846932292610', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 77, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7246, 'Task-05270846936074654', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 78, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7247, 'Task-05270846099714782', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 79, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7248, 'Task-05270846093332281', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 80, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7249, 'Task-05270846097266021', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 81, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7250, 'Task-05270846242758059', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 82, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7251, 'Task-05270846246333249', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 83, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7252, 'Task-05270846400338786', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 84, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7253, 'Task-05270846404122507', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 85, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7254, 'Task-05270846407681618', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 86, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7255, 'Task-05270846401407232', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 87, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7256, 'Task-05270846564404414', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 88, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7257, 'Task-05270846568690434', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 89, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7258, 'Task-05270846712399006', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 90, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7259, 'Task-05270846716693965', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 91, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7260, 'Task-05270846710601445', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 92, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7261, 'Task-05270846714400810', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 93, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7262, 'Task-05270846871546132', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 94, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7263, 'Task-05270846875203580', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 95, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7264, 'Task-05270846020507760', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 96, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7265, 'Task-05270846024390655', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 97, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7266, 'Task-05270846188109564', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 98, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7267, 'Task-05270846182561526', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 99, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7268, 'Task-05270846492786597', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 100, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7269, 'Task-05270846497306725', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 101, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7270, 'Task-05270846490879804', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 102, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7271, 'Task-05270846655338471', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 103, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7272, 'Task-05270846650247754', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 104, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7273, 'Task-05270846653922523', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 105, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7274, 'Task-05270846658147082', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 106, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7275, 'Task-05270846812437293', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 107, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-26-5', '2019-05-27 08:46:24', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7276, 'Task-052708573490671', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 0, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7277, 'Task-052708570698939', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 1, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7278, 'Task-052708578285660', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 2, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7279, 'Task-052708575697057', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 3, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7280, 'Task-052708572640997', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 4, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7281, 'Task-052708570005051', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 5, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7282, 'Task-052708577245782', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 6, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7283, 'Task-052708574547112', 346, 1, 1, 0, 3, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 7, 0.270, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7284, 'Task-052708574135690', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 8, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7285, 'Task-052708571854236', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 9, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7286, 'Task-052708579296300', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 10, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:49', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7287, 'Task-052708576630151', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 11, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7288, 'Task-052708574034979', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 12, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7289, 'Task-052708574510251', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 13, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7290, 'Task-052708573075268', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 14, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7291, 'Task-052708570432907', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 15, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7292, 'Task-052708578397037', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 16, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7293, 'Task-052708575523044', 347, 1, 2, 0, 2, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 17, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7294, 'Task-052708575060491', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 18, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7295, 'Task-052708572292932', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 19, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7296, 'Task-052708579500311', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 20, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7297, 'Task-052708576975225', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 21, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:50', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7298, 'Task-052708573889947', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 22, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7299, 'Task-052708570983549', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 23, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7300, 'Task-052708578138869', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 24, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7301, 'Task-052708576641355', 348, 1, 3, 0, 1, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 25, 0.200, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7302, 'Task-052708576155594', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 26, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7303, 'Task-052708573831281', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 27, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7304, 'Task-052708571290350', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 28, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7305, 'Task-052708578410173', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 29, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7306, 'Task-052708575498634', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 30, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7307, 'Task-052708572734244', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 31, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7308, 'Task-052708579897083', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 32, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7309, 'Task-052708577238567', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 33, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:51', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7310, 'Task-052708574633095', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 34, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7311, 'Task-052708572101961', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 35, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7312, 'Task-052708579105803', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 36, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7313, 'Task-052708576694978', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 37, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7314, 'Task-052708573775594', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 38, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7315, 'Task-052708571375861', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 39, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7316, 'Task-052708578805924', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 40, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7317, 'Task-052708576023313', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 41, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7318, 'Task-052708573627405', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 42, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7319, 'Task-052708570865895', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 43, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7320, 'Task-052708578013544', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 44, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7321, 'Task-052708575602642', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 45, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7322, 'Task-052708572883547', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 46, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:52', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7323, 'Task-052708570002713', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 47, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7324, 'Task-052708577544622', 349, 1, 4, 0, 4, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 48, 0.130, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7325, 'Task-052708576983924', 350, 6, 5, 0, 5, NULL, 35, 0.00, NULL, 0.00, NULL, 1, 0, 49, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7326, 'Task-052708576221700', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 50, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7327, 'Task-052708573199786', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 51, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7328, 'Task-052708570130682', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 52, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7329, 'Task-052708577311220', 351, 13, 6, 0, 6, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 53, 0.250, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7330, 'Task-052708576790406', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 54, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7331, 'Task-052708574002229', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 55, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:53', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7332, 'Task-052708571007560', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 56, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7333, 'Task-052708578084872', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 57, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7334, 'Task-052708575152502', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 58, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7335, 'Task-052708572521039', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 59, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7336, 'Task-052708579633578', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 60, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7337, 'Task-052708577107738', 352, 14, 7, 0, 7, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 61, 0.400, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7338, 'Task-052708577284971', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 62, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7339, 'Task-052708574850570', 353, 3, 8, 0, 12, NULL, 30, 0.00, NULL, 0.00, NULL, 1, 0, 63, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7340, 'Task-052708575248787', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 64, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7341, 'Task-052708572881672', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 65, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:54', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7342, 'Task-052708570208625', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 66, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7343, 'Task-052708577785858', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 67, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7344, 'Task-052708574902106', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 68, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7345, 'Task-052708571821795', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 69, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7346, 'Task-052708578990875', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 70, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7347, 'Task-052708576340205', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 71, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7348, 'Task-052708573063913', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 72, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7349, 'Task-052708570291447', 354, 18, 9, 0, 8, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 73, 0.380, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7350, 'Task-052708571008058', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 74, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7351, 'Task-052708579851857', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 75, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7352, 'Task-052708577000396', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 76, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7353, 'Task-052708574452701', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 77, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:55', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7354, 'Task-052708571787345', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 78, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7355, 'Task-052708579076347', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 79, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7356, 'Task-052708576160596', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 80, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7357, 'Task-052708573155820', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 81, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7358, 'Task-052708570395604', 355, 19, 10, 0, 9, NULL, 20, 0.00, NULL, 0.00, NULL, 1, 0, 82, 0.600, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7359, 'Task-052708570815928', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 83, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7360, 'Task-052708578327267', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 84, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7361, 'Task-052708575466337', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 85, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7362, 'Task-052708572508923', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 86, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7363, 'Task-052708579610119', 356, 1, 11, 0, 10, NULL, 50, 0.00, NULL, 0.00, NULL, 1, 0, 87, 0.500, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7364, 'Task-052708578764186', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 88, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:56', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7365, 'Task-052708577691037', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 89, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7366, 'Task-052708575484752', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 90, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7367, 'Task-052708572839492', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 91, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7368, 'Task-052708570609556', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 92, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7369, 'Task-052708578049629', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 93, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7370, 'Task-052708575653973', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 94, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7371, 'Task-052708573301447', 357, 20, 12, 0, 11, NULL, 15, 0.00, NULL, 0.00, NULL, 1, 0, 95, 0.670, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7372, 'Task-052708573035975', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 96, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7373, 'Task-052708570404513', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 97, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7374, 'Task-052708577820953', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 98, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7375, 'Task-052708575850610', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 99, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:57', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7376, 'Task-052708573332152', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 100, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7377, 'Task-052708570625965', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 101, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7378, 'Task-052708578422791', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 102, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7379, 'Task-052708575615349', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 103, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7380, 'Task-052708572801239', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 104, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7381, 'Task-052708570309274', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 105, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7382, 'Task-052708577272809', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 106, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `task_history` VALUES (7383, 'Task-052708574842698', 358, 14, 13, 0, 13, NULL, 40, 0.00, NULL, 0.00, NULL, 1, 0, 107, 0.170, NULL, NULL, '', NULL, 1, NULL, '2019-05-27', '2019-05-27-1', '2019-05-27 08:57:58', 2, 'PO42.5', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (35, 22, 'test', '89BDF69372C2EF53EA409CDF020B5694', '施工方', 10, NULL);
INSERT INTO `users` VALUES (46, 39, '17716658141', '89BDF69372C2EF53EA409CDF020B5694', '薛真保', 6, NULL);
INSERT INTO `users` VALUES (47, 40, '18722774464', '89BDF69372C2EF53EA409CDF020B5694', '罗凯', 6, NULL);
INSERT INTO `users` VALUES (48, 41, '13885010617', '89BDF69372C2EF53EA409CDF020B5694', '付玉红', 6, NULL);
INSERT INTO `users` VALUES (55, 47, '13888888888', '61C09E3CA07DAA81C09D082F1C84DD30', '张虎', 6, NULL);
INSERT INTO `users` VALUES (57, 58, '15885852724', '61C09E3CA07DAA81C09D082F1C84DD30', '陈洋（驾驶员）', 6, NULL);
INSERT INTO `users` VALUES (58, 59, '18286168364', '61C09E3CA07DAA81C09D082F1C84DD30', '韩潇', 6, NULL);
INSERT INTO `users` VALUES (59, 60, '18275300820', '61C09E3CA07DAA81C09D082F1C84DD30', '陈', 6, NULL);
INSERT INTO `users` VALUES (60, 43, '13979325221', '89BDF69372C2EF53EA409CDF020B5694', 'tzy', 6, NULL);
INSERT INTO `users` VALUES (62, 1, 'eova', '89BDF69372C2EF53EA409CDF020B5694', '开发账号', 1, NULL);
INSERT INTO `users` VALUES (63, 63, '123456', '89BDF69372C2EF53EA409CDF020B5694', 'driver', 6, NULL);

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
  `uptime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `isOK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `passtime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `uptime` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `isOK` int(1) NULL DEFAULT 0 COMMENT '审核',
  `passtime` datetime(0) NULL DEFAULT NULL COMMENT '审核时间',
  `field_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
  `start` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `state` int(1) NULL DEFAULT 1 COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `car_info` AS select `car`.`id` AS `id`,`car`.`moto_id` AS `moto_id`,`car`.`type` AS `type`,`car`.`license` AS `license`,`car`.`driver` AS `driver`,`car`.`state` AS `state`,`car_type`.`transport` AS `transport`,`car_type`.`bulk` AS `bulk`,`car_type`.`name` AS `name`,`motorcade`.`name` AS `moto` from ((`car` join `car_type`) join `motorcade`) where ((`car`.`type` = `car_type`.`id`) and (`car`.`moto_id` = `motorcade`.`id`));

-- ----------------------------
-- View structure for car_state
-- ----------------------------
DROP VIEW IF EXISTS `car_state`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `car_state` AS select `car`.`id` AS `id`,`car`.`moto_id` AS `moto_id`,`car`.`driver` AS `driver`,`dicts`.`name` AS `name`,`car`.`state` AS `state`,`car`.`type` AS `type`,`car`.`license` AS `license` from (`car` join `dicts`) where ((`car`.`state` = `dicts`.`value`) and (`dicts`.`object` = 'car') and (`dicts`.`field` = 'state'));

-- ----------------------------
-- View structure for daily_info
-- ----------------------------
DROP VIEW IF EXISTS `daily_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `daily_info` AS select `daily`.`id` AS `id`,`daily`.`code` AS `code`,`daily_state`.`cement` AS `cement`,`daily_state`.`section` AS `section`,`daily`.`route_time` AS `route_time`,`daily`.`car_type_weight` AS `car_type_weight`,`daily_state`.`plan` AS `plan`,`daily_state`.`finish` AS `finish`,`daily`.`add_time` AS `add_time`,`daily`.`section_id` AS `section_id`,`daily`.`on_road` AS `on_road` from (`daily` join `daily_state`) where (`daily`.`id` = `daily_state`.`daily_id`);

-- ----------------------------
-- View structure for history
-- ----------------------------
DROP VIEW IF EXISTS `history`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `history` AS select `need`.`code` AS `need_code`,`need`.`area` AS `area`,`need`.`carry` AS `carry`,`need`.`section` AS `section`,`need`.`need` AS `need`,`need`.`bite` AS `bite`,`need`.`submit` AS `submit`,`need`.`finish` AS `finish`,`need`.`state` AS `need_state`,`need`.`remark` AS `remark`,`work`.`code` AS `work_code`,`work`.`speed` AS `speed`,`work`.`car_num` AS `car_num`,`work`.`start` AS `start`,`work`.`end` AS `end`,`task`.`cement_id` AS `cement_id`,`task`.`car_id` AS `car_id`,`task`.`real_up` AS `real_up`,`task`.`real_up_img` AS `real_up_img`,`task`.`real_down` AS `real_down`,`task`.`real_down_img` AS `real_down_img`,`task`.`state` AS `task_state`,`task`.`weight` AS `weight`,`task`.`pass1` AS `pass1`,`task`.`pass2` AS `pass2`,`task`.`id` AS `id`,`work`.`state` AS `state` from ((`need` join `task`) join `work`);

-- ----------------------------
-- View structure for task_info
-- ----------------------------
DROP VIEW IF EXISTS `task_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `task_info` AS select `task`.`id` AS `id`,`task`.`code` AS `code`,`task`.`daily_id` AS `daily_id`,`daily`.`code` AS `daily_code`,`task`.`cement_id` AS `cement_id`,`cement`.`name` AS `cement_name`,`section`.`name` AS `section_name`,`task`.`section_id` AS `section_id`,`task`.`tasks` AS `tasks`,`task`.`real_up` AS `real_up`,`task`.`real_down` AS `real_down`,`task`.`state` AS `state`,`task`.`remark` AS `remark`,`task`.`fin_time` AS `fin_time`,`task`.`pici` AS `pici`,`task`.`car_id` AS `car_id`,`task`.`isOK` AS `isOK`,`task`.`license` AS `license`,`task`.`riqi` AS `riqi`,`task`.`weight2` AS `weight2`,`task`.`real_up_img` AS `real_up_img`,`task`.`real_down_img` AS `real_down_img`,`materials`.`name` AS `mat_name`,`materials`.`phone` AS `m_phone`,`car`.`position` AS `car_position`,`car`.`type` AS `car_type`,`users`.`nickname` AS `driver_name`,`car`.`license` AS `car_license`,`users`.`login_id` AS `user_phone`,`section`.`location` AS `section_location`,`cement`.`location` AS `cement_location`,`task`.`route_id` AS `route_id`,`task`.`huowu_name` AS `huowu_name`,`car`.`driver` AS `driver`,`task`.`accept_time` AS `accept_time`,`task`.`up_time` AS `up_time`,`task`.`down_time` AS `down_time`,`task`.`batch` AS `batch`,`task`.`isUp` AS `isUp`,`task`.`isDown` AS `isDown`,`task`.`remarkUp` AS `remarkUp`,`task`.`remarkDown` AS `remarkDown`,`task`.`errorMsg` AS `errorMsg`,`task`.`errorFile` AS `errorFile`,`task`.`isUpOver` AS `isUpOver`,`task`.`isTraverOver` AS `isTraverOver`,`task`.`upOverTime` AS `upOverTime`,`task`.`traverOverTime` AS `traverOverTime`,`task`.`isChangeCar` AS `isChangeCar`,`task`.`beforeCar` AS `beforeCar` from ((((((`task` left join `daily` on((`task`.`daily_id` = `daily`.`id`))) left join `cement` on((`task`.`cement_id` = `cement`.`id`))) left join `section` on((`task`.`section_id` = `section`.`id`))) left join `materials` on((`daily`.`materia` = `materials`.`id`))) left join `car` on((`task`.`car_id` = `car`.`id`))) left join `users` on((`car`.`driver` = `users`.`eova_id`))) where ((`task`.`daily_id` = `daily`.`id`) and (`task`.`cement_id` = `cement`.`id`) and (`task`.`section_id` = `section`.`id`));

-- ----------------------------
-- View structure for task_state
-- ----------------------------
DROP VIEW IF EXISTS `task_state`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `task_state` AS select `task`.`code` AS `code`,`task`.`driver` AS `driver`,`task`.`state` AS `state`,`dicts`.`name` AS `name`,`task`.`id` AS `id` from (`task` join `dicts`) where ((`dicts`.`object` = 'task') and (`dicts`.`field` = 'state') and (`dicts`.`value` = `task`.`state`));

-- ----------------------------
-- View structure for v1_task_info
-- ----------------------------
DROP VIEW IF EXISTS `v1_task_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v1_task_info` AS select `task_info`.`id` AS `id`,`task_info`.`code` AS `code`,`task_info`.`daily_id` AS `daily_id`,`task_info`.`daily_code` AS `daily_code`,`task_info`.`cement_id` AS `cement_id`,`task_info`.`cement_name` AS `cement_name`,`task_info`.`section_name` AS `section_name`,`task_info`.`section_id` AS `section_id`,`task_info`.`tasks` AS `tasks`,`task_info`.`real_up` AS `real_up`,`task_info`.`real_down` AS `real_down`,`task_info`.`state` AS `state`,`task_info`.`remark` AS `remark`,`task_info`.`fin_time` AS `fin_time`,`task_info`.`pici` AS `pici`,`task_info`.`car_id` AS `car_id`,`task_info`.`isOK` AS `isOK`,`task_info`.`license` AS `license`,`task_info`.`riqi` AS `riqi`,`task_info`.`weight2` AS `weight2`,`task_info`.`real_up_img` AS `real_up_img`,`task_info`.`real_down_img` AS `real_down_img`,`task_info`.`mat_name` AS `mat_name`,`task_info`.`m_phone` AS `m_phone`,`task_info`.`car_position` AS `car_position`,`task_info`.`car_type` AS `car_type`,`task_info`.`driver_name` AS `driver_name`,`task_info`.`car_license` AS `car_license`,`task_info`.`user_phone` AS `user_phone`,`task_info`.`section_location` AS `section_location`,`task_info`.`cement_location` AS `cement_location`,`task_info`.`route_id` AS `route_id`,`task_info`.`huowu_name` AS `huowu_name`,`task_state`.`driver` AS `driver`,`task_state`.`name` AS `name`,`route`.`content` AS `route_content`,`task_info`.`accept_time` AS `accept_time`,`task_info`.`up_time` AS `up_time`,`task_info`.`down_time` AS `down_time`,`route`.`down_time` AS `r_down_time`,`route`.`up_time` AS `r_up_time`,`route`.`time` AS `route_time`,`task_info`.`beforeCar` AS `beforeCar`,`task_info`.`isChangeCar` AS `isChangeCar`,`task_info`.`upOverTime` AS `upOverTime`,`task_info`.`traverOverTime` AS `traverOverTime`,`task_info`.`isTraverOver` AS `isTraverOver`,`task_info`.`isUpOver` AS `isUpOver`,`task_info`.`errorFile` AS `errorFile`,`task_info`.`errorMsg` AS `errorMsg`,`task_info`.`remarkDown` AS `remarkDown`,`task_info`.`remarkUp` AS `remarkUp`,`task_info`.`isDown` AS `isDown`,`task_info`.`isUp` AS `isUp` from ((`task_info` join `task_state` on((`task_state`.`code` = `task_info`.`code`))) join `route` on((`route`.`id` = `task_info`.`route_id`)));

-- ----------------------------
-- View structure for wait_pass_info
-- ----------------------------
DROP VIEW IF EXISTS `wait_pass_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wait_pass_info` AS select `wait_pass`.`id` AS `id`,`wait_pass`.`daily_id` AS `daily_id`,`wait_pass`.`field` AS `field`,`wait_pass`.`ubefore` AS `ubefore`,`wait_pass`.`uafter` AS `uafter`,`wait_pass`.`contact` AS `contact`,`wait_pass`.`uptime` AS `uptime`,`wait_pass`.`isOK` AS `isOK`,`dicts`.`name` AS `field_name` from (`dicts` join `wait_pass`) where ((`dicts`.`object` = 'daily') and (`dicts`.`field` = 'field') and (`wait_pass`.`field` = `dicts`.`value`));

-- ----------------------------
-- View structure for wait_pass_task_info
-- ----------------------------
DROP VIEW IF EXISTS `wait_pass_task_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `wait_pass_task_info` AS select `wait_pass_task`.`id` AS `id`,`wait_pass_task`.`task_id` AS `task_id`,`wait_pass_task`.`field` AS `field`,`wait_pass_task`.`ubefore` AS `ubefore`,`wait_pass_task`.`uafter` AS `uafter`,`wait_pass_task`.`uptime` AS `uptime`,`wait_pass_task`.`isOK` AS `isOK`,`dicts`.`name` AS `field_name` from (`wait_pass_task` join `dicts`) where ((`wait_pass_task`.`field` = `dicts`.`value`) and (`dicts`.`object` = 'task') and (`dicts`.`field` = 'field'));

SET FOREIGN_KEY_CHECKS = 1;
