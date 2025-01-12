/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : shopthoitrang

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 08/11/2024 12:34:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for anh
-- ----------------------------
DROP TABLE IF EXISTS `anh`;
CREATE TABLE `anh`  (
  `MaAnh` int NOT NULL AUTO_INCREMENT,
  `HinhAnh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TenHinhAnh` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaAnh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of anh
-- ----------------------------
INSERT INTO `anh` VALUES (1, NULL, 'TRANG PHỤC NAM', NULL);
INSERT INTO `anh` VALUES (2, NULL, 'TRANG PHỤC NỮ', NULL);
INSERT INTO `anh` VALUES (3, NULL, 'PIERRE CARDING', NULL);
INSERT INTO `anh` VALUES (4, NULL, 'PHIẾU QUÀ TẶNG', NULL);

-- ----------------------------
-- Table structure for chitietdonhang
-- ----------------------------
DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE `chitietdonhang`  (
  `MaChiTiet` int NOT NULL AUTO_INCREMENT,
  `MaDonHang` int NULL DEFAULT NULL,
  `MaSanPham` int NULL DEFAULT NULL,
  `SoLuong` int NULL DEFAULT NULL,
  `GiaTien` int NULL DEFAULT NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaChiTiet`) USING BTREE,
  INDEX `MaDonHang`(`MaDonHang` ASC) USING BTREE,
  INDEX `MaSanPham`(`MaSanPham` ASC) USING BTREE,
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chitietdonhang
-- ----------------------------
INSERT INTO `chitietdonhang` VALUES (1, 1, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (2, 1, 1, 1, 105000, NULL);
INSERT INTO `chitietdonhang` VALUES (3, 1, 27, 1, 195000, NULL);
INSERT INTO `chitietdonhang` VALUES (12, 2, 40, 1, 195000, NULL);
INSERT INTO `chitietdonhang` VALUES (13, 2, 3, 1, 57000, NULL);
INSERT INTO `chitietdonhang` VALUES (14, 7, 3, 1, 57000, NULL);
INSERT INTO `chitietdonhang` VALUES (15, 8, 11, 6, 188000, NULL);
INSERT INTO `chitietdonhang` VALUES (16, 8, 13, 10, 143000, NULL);
INSERT INTO `chitietdonhang` VALUES (17, 9, 14, 6, 147000, NULL);
INSERT INTO `chitietdonhang` VALUES (18, 9, 1, 5, 133000, NULL);
INSERT INTO `chitietdonhang` VALUES (19, 10, 3, 6, 183000, NULL);
INSERT INTO `chitietdonhang` VALUES (20, 10, 4, 5, 113000, NULL);
INSERT INTO `chitietdonhang` VALUES (21, 11, 11, 3, 188000, NULL);
INSERT INTO `chitietdonhang` VALUES (22, 12, 13, 5, 143000, NULL);
INSERT INTO `chitietdonhang` VALUES (23, 13, 14, 6, 147000, NULL);
INSERT INTO `chitietdonhang` VALUES (24, 14, 1, 4, 133000, NULL);
INSERT INTO `chitietdonhang` VALUES (25, 14, 3, 7, 183000, NULL);
INSERT INTO `chitietdonhang` VALUES (26, 13, 4, 5, 113000, NULL);
INSERT INTO `chitietdonhang` VALUES (29, 15, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (30, 18, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (31, 19, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (32, 20, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (55, 27, 12, 1, 107300, NULL);
INSERT INTO `chitietdonhang` VALUES (197, 86, 1, 4, 105000, NULL);
INSERT INTO `chitietdonhang` VALUES (198, 86, 2, 6, 90000, NULL);
INSERT INTO `chitietdonhang` VALUES (204, 89, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (205, 89, 12, 1, 107300, NULL);
INSERT INTO `chitietdonhang` VALUES (206, 90, 7, 1, 127170, NULL);
INSERT INTO `chitietdonhang` VALUES (207, 90, 3, 1, 57000, NULL);
INSERT INTO `chitietdonhang` VALUES (208, 91, 12, 1, 107300, NULL);
INSERT INTO `chitietdonhang` VALUES (209, 92, 12, 1, 107300, NULL);
INSERT INTO `chitietdonhang` VALUES (211, 93, 8, 10, 121660, NULL);
INSERT INTO `chitietdonhang` VALUES (212, 94, 12, 1, 107300, NULL);
INSERT INTO `chitietdonhang` VALUES (213, 94, 3, 1, 57000, NULL);

-- ----------------------------
-- Table structure for chitiethoadonnhap
-- ----------------------------
DROP TABLE IF EXISTS `chitiethoadonnhap`;
CREATE TABLE `chitiethoadonnhap`  (
  `MaChiTiet` int NOT NULL AUTO_INCREMENT,
  `MaHDN` int NULL DEFAULT NULL,
  `MaSanPham` int NULL DEFAULT NULL,
  `SoLuong` int NULL DEFAULT NULL,
  `GiaTien` int NULL DEFAULT NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaChiTiet`) USING BTREE,
  INDEX `MaHDN`(`MaHDN` ASC) USING BTREE,
  INDEX `MaSanPham`(`MaSanPham` ASC) USING BTREE,
  CONSTRAINT `chitiethoadonnhap_ibfk_1` FOREIGN KEY (`MaHDN`) REFERENCES `hoadonnhap` (`MaHDN`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `chitiethoadonnhap_ibfk_2` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chitiethoadonnhap
-- ----------------------------
INSERT INTO `chitiethoadonnhap` VALUES (1, 1, 42, 10, 100000, NULL);
INSERT INTO `chitiethoadonnhap` VALUES (2, 1, 29, 18, 1800000, NULL);
INSERT INTO `chitiethoadonnhap` VALUES (3, 2, 42, 1, 150000, NULL);
INSERT INTO `chitiethoadonnhap` VALUES (4, 2, 36, 10, 2000000, NULL);
INSERT INTO `chitiethoadonnhap` VALUES (5, 3, 27, 1, 150000, NULL);
INSERT INTO `chitiethoadonnhap` VALUES (6, 1, 3, 20, 150000, NULL);

-- ----------------------------
-- Table structure for chitiettintuc
-- ----------------------------
DROP TABLE IF EXISTS `chitiettintuc`;
CREATE TABLE `chitiettintuc`  (
  `MaChiTiet` int NOT NULL AUTO_INCREMENT,
  `MaTinTuc` int NULL DEFAULT NULL,
  `NoiDungChiTiet` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaChiTiet`) USING BTREE,
  INDEX `MaTinTuc`(`MaTinTuc` ASC) USING BTREE,
  CONSTRAINT `chitiettintuc_ibfk_1` FOREIGN KEY (`MaTinTuc`) REFERENCES `tintuc` (`MaTinTuc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chitiettintuc
-- ----------------------------
INSERT INTO `chitiettintuc` VALUES (1, 1, 'Chất liệu vải cao cấp được sử dụng cho chiếc áo sơ mi này, không chỉ mang lại sự thoải mái khi mặc mà còn tạo nên đường may chắc chắn và bền bỉ. Sự kết hợp linh hoạt giữa cotton và polyester giúp áo có độ co giãn, phục vụ tốt cho các hoạt động hàng ngày và tạo nên hình dáng vô cùng thời trang.', NULL);
INSERT INTO `chitiettintuc` VALUES (2, 1, 'Điểm nổi bật của sản phẩm chính là tay áo bồng, làm tăng thêm vẻ nữ tính và duyên dáng. Được thiết kế với sự tinh tế, tay áo bồng giúp che đi nhược điểm cần được giấu kín, đồng thời tạo điểm nhấn độc đáo cho bộ trang phục.', NULL);
INSERT INTO `chitiettintuc` VALUES (3, 1, 'Mẫu mã của áo sơ mi trắng tay bồng Kimi AK190082 cũng là một điểm đáng chú ý. Với các đường nét tinh xảo, hài hòa, áo sơ mi này phản ánh phong cách hiện đại và đầy cá tính. Điểm nhấn màu sắc và họa tiết tinh tế giúp làm nổi bật vẻ đẹp của người mặc.', NULL);
INSERT INTO `chitiettintuc` VALUES (4, 1, 'Không chỉ là một chiếc áo sơ mi, Kimi AK190082 là biểu tượng cho sự phối hợp giữa chất lượng, thiết kế và xu hướng thời trang. Cho dù bạn đi làm, dự tiệc hay gặp gỡ bạn bè, chiếc áo sơ mi này sẽ là lựa chọn hoàn hảo để bạn luôn tự tin và quyến rũ.', NULL);
INSERT INTO `chitiettintuc` VALUES (5, 2, 'Chất liệu áo được chọn lựa cẩn thận để đảm bảo sự thoải mái và đồng thời giữ cho chiếc áo giữ được hình dáng và form dáng. Cổ vest được thêm vào tinh tế, tạo điểm nhấn độc đáo và làm nổi bật vẻ sang trọng của bộ trang phục.', NULL);
INSERT INTO `chitiettintuc` VALUES (6, 2, 'Kiểu dáng cổ vest thường mang lại sự chắc chắn và chuyên nghiệp, giúp bạn tỏa sáng trong mọi tình huống, từ công sở đến những sự kiện quan trọng. Áo blouse kết hợp với cổ vest không chỉ phản ánh phong cách thời trang mà còn là sự tự tin và tinh tế.', NULL);
INSERT INTO `chitiettintuc` VALUES (7, 2, 'Những chiếc áo như vậy thường dễ dàng kết hợp với nhiều phụ kiện khác nhau, từ chiếc quần âu, chân váy đến quần jeans, giúp bạn linh hoạt trong việc tạo nên những bộ trang phục độc đáo và phong cách.', NULL);
INSERT INTO `chitiettintuc` VALUES (8, 2, 'Khám phá sự hoàn hảo của áo blouse với cổ vest, nơi sự thoải mái gặp gỡ với phá cách thời trang, tạo nên một diện mạo đẳng cấp và lôi cuốn. Đừng chỉ là người mặc áo, hãy trở thành biểu tượng thời trang với chiếc áo blouse với cổ vest độc đáo này.', NULL);

-- ----------------------------
-- Table structure for donhang
-- ----------------------------
DROP TABLE IF EXISTS `donhang`;
CREATE TABLE `donhang`  (
  `MaDonHang` int NOT NULL AUTO_INCREMENT,
  `NgayDat` datetime NULL DEFAULT NULL,
  `NgayGiao` datetime NULL DEFAULT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SoDienThoai` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `PhuongThucThanhToan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MaNguoiDung` int NULL DEFAULT NULL,
  `TinhTrang` int NULL DEFAULT NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaDonHang`) USING BTREE,
  INDEX `MaNguoiDung`(`MaNguoiDung` ASC) USING BTREE,
  CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of donhang
-- ----------------------------
INSERT INTO `donhang` VALUES (1, '2024-04-27 11:05:37', '2024-05-09 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);
INSERT INTO `donhang` VALUES (2, '2024-05-19 18:02:26', '2024-05-31 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);
INSERT INTO `donhang` VALUES (7, '2024-05-21 23:53:32', '2024-05-31 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Chuyển khoản', 1, 6, NULL);
INSERT INTO `donhang` VALUES (8, '2021-09-05 00:00:00', '2021-11-11 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (9, '2021-10-05 00:00:00', '2021-11-11 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (10, '2021-11-05 00:00:00', '2021-11-11 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (11, '2021-10-05 00:00:00', '2021-11-11 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (12, '2022-09-05 00:00:00', '2022-11-20 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (13, '2022-10-05 00:00:00', '2022-11-18 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (14, '2022-11-05 00:00:00', '2022-11-15 00:00:00', 'Nguyễn Cường', 'Thái bình', '0978147520', 'Thanh toán khi giao hàng', 2, 6, NULL);
INSERT INTO `donhang` VALUES (15, '2024-05-26 17:55:15', '2024-06-08 00:00:00', 'Nguyễn Cường147', 'Thái Bình ', '0989231673', 'Thanh toán khi giao hàng', 4, 6, NULL);
INSERT INTO `donhang` VALUES (16, '2024-05-26 17:55:15', '2024-06-08 00:00:00', 'Nguyễn Cường147', 'Thái Bình ', '0989231673', 'Thanh toán khi giao hàng', 4, 4, NULL);
INSERT INTO `donhang` VALUES (17, '2024-05-26 17:55:15', '2024-06-08 00:00:00', 'Nguyễn Cường147', 'Thái Bình ', '0989231673', 'Thanh toán khi giao hàng', 4, 4, NULL);
INSERT INTO `donhang` VALUES (18, '2024-05-26 17:55:47', '2024-06-08 00:00:00', 'Nguyễn Cường147', 'Thái Bình ', '0989231673', 'Thanh toán khi giao hàng', 4, 4, NULL);
INSERT INTO `donhang` VALUES (19, '2024-05-26 17:55:47', '2024-06-08 00:00:00', 'Nguyễn Cường147', 'Thái Bình ', '0989231673', 'Thanh toán khi giao hàng', 4, 4, NULL);
INSERT INTO `donhang` VALUES (20, '2024-05-26 17:56:09', '2024-06-08 00:00:00', 'Nguyễn Cường147', 'Thái Bình ', '0989231673', 'Thanh toán khi giao hàng', 4, 4, NULL);
INSERT INTO `donhang` VALUES (27, '2024-05-27 21:44:03', '2024-06-01 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Chuyển khoản', 1, 6, NULL);
INSERT INTO `donhang` VALUES (86, '2024-06-02 10:06:34', '2024-07-03 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);
INSERT INTO `donhang` VALUES (89, '2024-06-03 00:35:35', '2024-07-05 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);
INSERT INTO `donhang` VALUES (90, '2024-06-03 17:49:50', '2024-07-01 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Chuyển khoản', 1, 6, NULL);
INSERT INTO `donhang` VALUES (91, '2024-06-06 09:21:10', '2024-07-04 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Chuyển khoản', 1, 6, NULL);
INSERT INTO `donhang` VALUES (92, '2024-06-11 13:21:37', '2024-07-05 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);
INSERT INTO `donhang` VALUES (93, '2024-06-12 18:26:06', '2024-06-28 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);
INSERT INTO `donhang` VALUES (94, '2024-06-12 18:32:12', '2024-07-06 00:00:00', 'Nguyễn Cường', 'Thái bình ', '0818147402', 'Thanh toán khi giao hàng', 1, 6, NULL);

-- ----------------------------
-- Table structure for gia
-- ----------------------------
DROP TABLE IF EXISTS `gia`;
CREATE TABLE `gia`  (
  `MaGia` int NOT NULL AUTO_INCREMENT,
  `MaSanPham` int NULL DEFAULT NULL,
  `NgayBD` datetime NULL DEFAULT NULL,
  `NgayKT` datetime NULL DEFAULT NULL,
  `DonGia` int NULL DEFAULT NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaGia`) USING BTREE,
  INDEX `MaSanPham`(`MaSanPham` ASC) USING BTREE,
  CONSTRAINT `gia_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gia
-- ----------------------------
INSERT INTO `gia` VALUES (1, 1, '2020-05-05 00:00:00', '2025-07-07 00:00:00', 150000, NULL);
INSERT INTO `gia` VALUES (2, 2, '2019-01-01 00:00:00', '2025-01-01 00:00:00', 180000, NULL);
INSERT INTO `gia` VALUES (3, 3, '2017-01-02 00:00:00', '2025-05-20 00:00:00', 190000, NULL);
INSERT INTO `gia` VALUES (4, 4, '2014-05-05 00:00:00', '2025-07-07 00:00:00', 145000, NULL);
INSERT INTO `gia` VALUES (5, 5, '2012-05-20 00:00:00', '2025-07-30 00:00:00', 147000, NULL);
INSERT INTO `gia` VALUES (6, 6, '2011-04-20 00:00:00', '2025-04-18 00:00:00', 160000, NULL);
INSERT INTO `gia` VALUES (7, 7, '2020-01-01 00:00:00', '2025-12-12 00:00:00', 157000, NULL);
INSERT INTO `gia` VALUES (8, 8, '2014-01-01 00:00:00', '2025-01-01 00:00:00', 158000, NULL);
INSERT INTO `gia` VALUES (9, 9, '2020-02-02 00:00:00', '2025-07-07 00:00:00', 185000, NULL);
INSERT INTO `gia` VALUES (10, 10, '2010-02-05 00:00:00', '2025-10-30 00:00:00', 1250000, NULL);
INSERT INTO `gia` VALUES (11, 11, '2009-01-05 00:00:00', '2027-01-31 00:00:00', 140000, NULL);
INSERT INTO `gia` VALUES (12, 12, '2008-03-20 00:00:00', '2027-08-05 00:00:00', 145000, NULL);
INSERT INTO `gia` VALUES (13, 13, '2009-03-20 00:00:00', '2027-08-05 00:00:00', 175000, NULL);
INSERT INTO `gia` VALUES (14, 14, '2015-03-20 00:00:00', '2027-08-05 00:00:00', 177000, NULL);
INSERT INTO `gia` VALUES (15, 15, '2016-03-20 00:00:00', '2027-08-05 00:00:00', 185000, NULL);
INSERT INTO `gia` VALUES (16, 16, '2017-03-20 00:00:00', '2025-03-05 00:00:00', 199000, NULL);
INSERT INTO `gia` VALUES (17, 17, '2014-03-20 00:00:00', '2025-08-05 00:00:00', 197000, NULL);
INSERT INTO `gia` VALUES (18, 18, '2013-03-20 00:00:00', '2027-08-05 00:00:00', 191000, NULL);
INSERT INTO `gia` VALUES (19, 19, '2012-03-20 00:00:00', '2025-08-05 00:00:00', 115000, NULL);
INSERT INTO `gia` VALUES (20, 20, '2011-03-20 00:00:00', '2025-08-05 00:00:00', 125000, NULL);
INSERT INTO `gia` VALUES (21, 21, '2020-03-20 00:00:00', '2025-08-05 00:00:00', 135000, NULL);
INSERT INTO `gia` VALUES (22, 22, '2020-03-20 00:00:00', '2025-08-05 00:00:00', 185000, NULL);
INSERT INTO `gia` VALUES (23, 23, '2016-03-20 00:00:00', '2025-08-05 00:00:00', 196000, NULL);
INSERT INTO `gia` VALUES (24, 24, '2018-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (25, 25, '2017-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (26, 26, '2015-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (27, 27, '2014-03-20 00:00:00', '2038-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (28, 28, '2013-03-20 00:00:00', '2039-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (29, 29, '2012-03-20 00:00:00', '2035-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (30, 30, '2011-03-20 00:00:00', '2033-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (31, 31, '2018-03-20 00:00:00', '2039-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (32, 32, '2019-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (33, 33, '2020-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (34, 34, '2020-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (35, 35, '2018-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (36, 36, '2017-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (37, 37, '2016-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (38, 38, '2015-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (39, 39, '2015-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (40, 40, '2014-03-20 00:00:00', '2026-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (41, 41, '2013-03-20 00:00:00', '2025-08-05 00:00:00', 195000, NULL);
INSERT INTO `gia` VALUES (42, 42, '2011-03-20 00:00:00', '2034-08-05 00:00:00', 195200, NULL);

-- ----------------------------
-- Table structure for giamgia
-- ----------------------------
DROP TABLE IF EXISTS `giamgia`;
CREATE TABLE `giamgia`  (
  `MaGiamGia` int NOT NULL AUTO_INCREMENT,
  `MaSanPham` int NULL DEFAULT NULL,
  `PhanTram` int NULL DEFAULT NULL,
  `NgayBD` datetime NULL DEFAULT NULL,
  `NgayKT` datetime NULL DEFAULT NULL,
  `deletedAt` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`MaGiamGia`) USING BTREE,
  INDEX `MaSanPham`(`MaSanPham` ASC) USING BTREE,
  CONSTRAINT `giamgia_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of giamgia
-- ----------------------------
INSERT INTO `giamgia` VALUES (1, 1, 30, '2020-05-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (2, 2, 50, '2011-11-07 00:00:00', '2026-01-30 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (3, 3, 70, '2014-08-10 00:00:00', '2025-11-11 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (4, 4, 40, '2015-12-12 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (5, 5, 80, '2020-05-07 00:00:00', '2025-12-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (6, 6, 45, '2020-04-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (7, 8, 23, '2019-05-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (8, 12, 26, '2018-08-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (9, 19, 21, '2009-12-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (10, 7, 19, '2011-01-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (11, 25, 18, '2015-04-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (12, 30, 14, '2014-07-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (13, 42, 35, '2016-08-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (14, 39, 27, '2018-08-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (15, 34, 11, '2018-10-07 00:00:00', '2025-10-10 00:00:00', NULL);
INSERT INTO `giamgia` VALUES (16, 31, 10, '2020-10-07 00:00:00', '2025-10-10 00:00:00', NULL);

-- ----------------------------
-- Table structure for gioithieu
-- ----------------------------
DROP TABLE IF EXISTS `gioithieu`;
CREATE TABLE `gioithieu`  (
  `MaGioiThieu` int NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `NoiDung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HinhAnh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaGioiThieu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gioithieu
-- ----------------------------
INSERT INTO `gioithieu` VALUES (1, 'TỔNG QUAN VỀ CÔNG TY', '“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\n Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.”', NULL, NULL);
INSERT INTO `gioithieu` VALUES (2, '', 'Sed ut perspiciatis unde omnis iste natus error sit\r\n voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis\r\n et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit\r\n aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', NULL, NULL);
INSERT INTO `gioithieu` VALUES (3, '', 'Sections 1.10.32 and 1.10.33 from “de Finibus Bonorum et Malorum” by Cicero are also reproduced in their exact original form, \naccompanied by English versions from the 1914 translation by H. Rackham', NULL, NULL);

-- ----------------------------
-- Table structure for hoadonnhap
-- ----------------------------
DROP TABLE IF EXISTS `hoadonnhap`;
CREATE TABLE `hoadonnhap`  (
  `MaHDN` int NOT NULL AUTO_INCREMENT,
  `NgayNhap` datetime NULL DEFAULT NULL,
  `MaNhaCungCap` int NULL DEFAULT NULL,
  `MaNguoiDung` int NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaHDN`) USING BTREE,
  INDEX `MaNhaCungCap`(`MaNhaCungCap` ASC) USING BTREE,
  INDEX `MaNguoiDung`(`MaNguoiDung` ASC) USING BTREE,
  CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `nhacungcap` (`MaNhaCungCap`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of hoadonnhap
-- ----------------------------
INSERT INTO `hoadonnhap` VALUES (1, '2024-05-27 21:20:18', 1, 1, NULL);
INSERT INTO `hoadonnhap` VALUES (2, '2024-05-30 18:14:14', 1, 1, NULL);
INSERT INTO `hoadonnhap` VALUES (3, '2024-06-03 17:28:05', 1, 1, NULL);

-- ----------------------------
-- Table structure for lienhe
-- ----------------------------
DROP TABLE IF EXISTS `lienhe`;
CREATE TABLE `lienhe`  (
  `MaLienHe` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DiaChi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `SoDienThoai` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaLienHe`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lienhe
-- ----------------------------
INSERT INTO `lienhe` VALUES (1, 'Mark@gmail.com', '139 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú', '01293012390', NULL);

-- ----------------------------
-- Table structure for loaisanpham
-- ----------------------------
DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE `loaisanpham`  (
  `MaLoaiSanPham` int NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `GioiThieu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaLoaiSanPham`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loaisanpham
-- ----------------------------
INSERT INTO `loaisanpham` VALUES (1, 'Áo thun nam', 'Áo thun nam không chỉ thoải mái mà còn là biểu tượng thời trang nam giới. Với chất liệu như \n<br>-cotton và polyester, áo thun mang lại sự dễ chịu và thoáng khí. Đa dạng về kiểu dáng, màu \n<br>-sắc, và in hình, nó phản ánh cá tính và phong cách cá nhân. Linh hoạt trong mix đồ, áo thun là \n<br>-lựa chọn đa năng cho nhiều dịp khác nhau. Từ casual đến cá tính, áo thun nam là sự kết hợp \n<br>-hoàn hảo của thoải mái và phong cách.', NULL);
INSERT INTO `loaisanpham` VALUES (2, 'Áo thun nữ', 'Áo thun nữ là một trang phục không thể thiếu trong tủ đồ hàng ngày của phụ nữ. Với chất \n<br>-liệu nhẹ nhàng như cotton và polyester, áo thun mang đến sự thoải mái và linh hoạt cho \n<br>-người mặc. Kiểu dáng đa dạng từ cổ tròn, cổ V đến áo thun suông, áo thun nữ không chỉ giúp \n<br>-phản ánh phong cách cá nhân mà còn dễ dàng kết hợp với nhiều loại quần và váy. Màu sắc và \n<br>-họa tiết đa dạng tạo nên sự phong phú trong lựa chọn. Áo thun nữ không chỉ là biểu tượng \n<br>-của sự thoải mái mà còn là một phần quan trọng của thế giới thời trang đương đại.', NULL);
INSERT INTO `loaisanpham` VALUES (3, 'Áo sơ mi nam', '\nÁo sơ mi nam là biểu tượng của sự lịch lãm và tinh tế trong thế giới thời trang. Với chất liệu \n<br>-như cotton, linen, hoặc polyester, áo sơ mi mang lại cảm giác thoáng khí và thoải mái. Kiểu \n<br>-dáng đa dạng từ cổ tròn, cổ bẻ, đến cổ điển, áo sơ mi nam không chỉ phù hợp cho các dịp \n<br>-formal mà còn dễ dàng kết hợp với nhiều loại quần, từ quần tây đến jeans. Màu sắc và họa \n<br>-tiết trên áo sơ mi tạo nên sự đa dạng và phong cách cá nhân. Áo sơ mi nam không chỉ là một \n<br>-trang phục, mà còn là biểu tượng của sự sang trọng và quý phái.', NULL);
INSERT INTO `loaisanpham` VALUES (4, 'Áo sơ mi nữ', 'Áo sơ mi nữ là biểu tượng của sự nữ tính và lịch lãm trong thế giới thời trang. Chế tác từ chất \n<br>-liệu như cotton, silk, hoặc chiffon, áo sơ mi mang lại cảm giác mềm mại và thoải mái. Với \n<br>-nhiều kiểu dáng từ sơ mi trơn đến áo sơ mi hoa, chúng là lựa chọn hoàn hảo cho cả những \n<br>-dịp chính thức và cá nhân. Áo sơ mi nữ kết hợp tuyệt vời với quần tây, chân váy, hoặc jeans, \n<br>-tạo nên phong cách linh hoạt và sang trọng. Màu sắc và họa tiết trên áo sơ mi thường phản \n<br>-ánh sự tinh tế và cái đẹp riêng của phái đẹp. Từ văn phòng đến dạo phố, áo sơ mi nữ là biểu \n<br>-tượng của sự thanh lịch và quyến rũ.', NULL);
INSERT INTO `loaisanpham` VALUES (5, 'Đầm nữ', 'Đầm nữ là biểu tượng của sự nữ tính và quyến rũ trong thế giới thời trang. Với chất liệu đa \n<br>-dạng như cotton, \nchiffon, hoặc satin, đầm mang lại cảm giác thoải mái và sang trọng. Kiểu dáng phong phú từ đầm maxi dài đến đầm xòe ngắn, phản ánh sự đa dạng của phong cách và sự linh hoạt trong lựa chọn. Màu sắc và họa tiết trên đầm thường là điểm nhấn tạo nên vẻ đẹp riêng biệt. Đầm nữ không chỉ là sự chọn lựa tuyệt vời cho các dịp đặc biệt mà còn là người bạn đồng hành hoàn hảo cho những buổi gặp gỡ hay dạo chơi. Từ vintage đến hiện đại, đầm nữ thể hiện sự thanh lịch và phong cách cá nhân một cách xuất sắc.', NULL);
INSERT INTO `loaisanpham` VALUES (6, 'Chân váy', 'Chân váy là một phần quan trọng của tủ đồ phụ nữ, tạo nên sự nữ tính và quyến rũ. Với đa dạng về chất liệu như cotton, chiffon, hoặc denim, chân váy mang lại cảm giác thoải mái và phong cách.', NULL);
INSERT INTO `loaisanpham` VALUES (7, 'Quần short nữ', 'Quần short nữ là một phụ kiện thời trang đa dạng và phổ biến, thích hợp cho nhiều hoạt động từ dạo phố đến hoạt động thể thao. Chúng được làm từ các chất liệu như cotton, denim, hoặc linen, mang lại sự thoải mái và linh hoạt cho người mặc.', NULL);
INSERT INTO `loaisanpham` VALUES (8, 'Quần jean nữ', 'Quần jean nữ là một item cơ bản và không thể thiếu trong tủ đồ hàng ngày của phụ nữ. Với chất liệu jean chất lượng, quần jean mang lại sự thoải mái và độ bền cao, phản ánh phong cách cá nhân và sự ổn định trong lựa chọn trang phục.', NULL);
INSERT INTO `loaisanpham` VALUES (9, 'Quần thun nữ', 'Quần thun nữ là một lựa chọn thoải mái và phổ biến trong tủ đồ hàng ngày. Chế tác từ chất liệu như cotton và spandex, quần thun mang lại sự co dãn và thoải mái, phản ánh phong cách năng động và hiện đại.', NULL);
INSERT INTO `loaisanpham` VALUES (10, 'Quần jogger nữ', 'Quần jogger nữ là sự kết hợp hoàn hảo giữa thoải mái và phong cách. Chế tác từ chất liệu như cotton và polyester, quần jogger mang lại cảm giác mềm mại và sự co dãn, phản ánh phong cách năng động và thời trang đương đại.', NULL);
INSERT INTO `loaisanpham` VALUES (11, 'Quần short nam', 'Quần short nam là một item không thể thiếu trong tủ đồ của nam giới, mang lại sự thoải mái và phong cách. Chế tác từ chất liệu như cotton và denim, quần short nam phản ánh sự năng động và phóng khoáng.', NULL);
INSERT INTO `loaisanpham` VALUES (12, 'Quần kaki nam', 'Quần kaki nam là một lựa chọn đẳng cấp và lịch lãm, phản ánh sự lịch thiệp trong trang phục nam. Chế tác từ chất liệu chất lượng như cotton và twill, quần kaki nam mang lại cảm giác thoải mái và đồng thời tạo nên vẻ đẹp sang trọng.', NULL);
INSERT INTO `loaisanpham` VALUES (13, 'Quần jean nam', 'Quần jean nam là một trang phục cơ bản và không thể thiếu trong tủ đồ của nam giới, thể hiện sự cá tính và phong cách. Chế tác từ chất liệu jean chất lượng như cotton và spandex, quần jean mang lại sự thoải mái và phản ánh phong cách đa dạng.', NULL);
INSERT INTO `loaisanpham` VALUES (14, 'Quần tây nam', 'Quần tây nam là biểu tượng của sự lịch lãm và quý phái trong thế giới thời trang. Chế tác từ chất liệu chất lượng như wool, cotton, hoặc blend, quần tây nam mang lại cảm giác thoải mái và phong cách đẳng cấp.', NULL);
INSERT INTO `loaisanpham` VALUES (15, 'Quần jogger nam', 'Quần jogger nam là sự kết hợp hoàn hảo giữa phong cách thể thao và sự thoải mái. Chế tác từ chất liệu như cotton và polyester, quần jogger mang lại cảm giác mềm mại và sự co dãn, phản ánh phong cách năng động và hiện đại.', NULL);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `MaMenu` int NOT NULL AUTO_INCREMENT,
  `TenMenu` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Link` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaMenu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'TRANG CHỦ', '/', NULL);
INSERT INTO `menu` VALUES (2, 'SẢN PHẨM', '/sanpham', NULL);
INSERT INTO `menu` VALUES (3, 'THƯƠNG HIỆU', '/thuonghieu/1', NULL);
INSERT INTO `menu` VALUES (4, 'GIỚI THIỆU', '/gioithieu', NULL);
INSERT INTO `menu` VALUES (5, 'TIN TỨC', '/tintuc', NULL);
INSERT INTO `menu` VALUES (6, 'LIÊN HỆ', '/lienhe', NULL);

-- ----------------------------
-- Table structure for nguoidung
-- ----------------------------
DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE `nguoidung`  (
  `MaNguoiDung` int NOT NULL AUTO_INCREMENT,
  `TaiKhoan` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MatKhau` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `HoTen` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgaySinh` datetime NULL DEFAULT NULL,
  `GioiTinh` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SoDienThoai` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `AnhDaiDien` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `VaiTro` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `EmailConfirmed` bit(1) NULL DEFAULT NULL,
  `Token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaNguoiDung`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nguoidung
-- ----------------------------
INSERT INTO `nguoidung` VALUES (1, 'Admin', '25f9e794323b453885f5181f1b624d0b', 'cuong31139@gmail.com', 'Nguyễn Cường', '2002-07-14 00:00:00', 'Nam', 'Thái bình ', '0818147402', NULL, 'Admin', NULL, NULL, NULL);
INSERT INTO `nguoidung` VALUES (2, 'cuongtt2002', 'cuongtt2002', 'cuong31139@gmail.com', 'Nguyễn Thu hương', '2002-07-14 00:00:00', 'Nam', 'Thái bình ', '0818147402', NULL, 'Admin', NULL, NULL, NULL);
INSERT INTO `nguoidung` VALUES (3, 'cuongtt2007', '25f9e794323b453885f5181f1b624d0b', 'cuongtt1408@gmail.com', 'Nguyễn Cường', '2024-06-06 00:00:00', 'Nam', 'Thái Bình ', '0123456789', NULL, 'Khách hàng', b'0', 'duWWXcnpJVabDEOWFduzvcTHTQLcBkysnGNSmijYyTJQgVkSvBZTpeYuWWkYllfu', NULL);
INSERT INTO `nguoidung` VALUES (4, 'cuongtt2005', '25f9e794323b453885f5181f1b624d0b', 'cuongtt1400@gmail.com', 'Nguyễn Cường147', '2024-05-05 00:00:00', 'Nam', 'Thái Bình ', '0989231673', NULL, 'Khách hàng', b'1', 'RKYwCGxfVbrzDQRYuahYSvGigXUYNWlDohRNRCmOQAXskOVkMOcJOyIzRHjPNlLx', NULL);
INSERT INTO `nguoidung` VALUES (12, 'cuongtt2009', '25f9e794323b453885f5181f1b624d0b', 'cuongtt1406@gmail.com', 'Nguyễn Cường', '2024-04-28 00:00:00', 'Nam', 'Thái Bình ', '0123456789', NULL, 'Khách hàng', b'1', 'VOyediVugFDFTtZQhaqrsigisBatLRNiIYdAnFYuOwzuvHDpeskvJxWcHhSYNWRs', NULL);
INSERT INTO `nguoidung` VALUES (15, 'cuongtt2008', '25f9e794323b453885f5181f1b624d0b', 'cuongtt1417@gmail.com', 'Nguyễn Cường', '2024-04-28 00:00:00', 'Nam', 'tb', '0989231673', NULL, 'Khách hàng', b'0', 'dovVHeCXgzrBbzMyIDhOxogQvpSfuYKHRMEGEXTFWhbHKEiWTEsGTNbkBYupiiBP', NULL);
INSERT INTO `nguoidung` VALUES (16, 'cuongtt2004', '25f9e794323b453885f5181f1b624d0b', 'cuongtt1490@gmail.com', 'Nguyễn Cường', '2024-04-28 00:00:00', 'Nam', 'tb', '0989231673', NULL, 'Khách hàng', b'1', 'csEriEBymKgepKiKhCDBpYrFjoxJOtSZatlBpmmUdcRnRkvTIRfQxKWNXQvKcxWr', NULL);

-- ----------------------------
-- Table structure for nhacungcap
-- ----------------------------
DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE `nhacungcap`  (
  `MaNhaCungCap` int NOT NULL AUTO_INCREMENT,
  `TenNhaCungCap` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DiaChi` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `SoDienThoai` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaNhaCungCap`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of nhacungcap
-- ----------------------------
INSERT INTO `nhacungcap` VALUES (1, 'Công ty may mặc', '114Lê Trọng Tấn', '01234567890', 'trongtan@gmail.com', NULL);

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `MaSanPham` int NOT NULL AUTO_INCREMENT,
  `TenSP` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `MoTa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `NgayTao` datetime NULL DEFAULT NULL,
  `MaLoaiSanPham` int NULL DEFAULT NULL,
  `MaThuongHieu` int NULL DEFAULT NULL,
  `MaSize` int NULL DEFAULT NULL,
  `AnhDaiDien` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SoLuong` int NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`) USING BTREE,
  INDEX `MaSize`(`MaSize` ASC) USING BTREE,
  INDEX `MaLoaiSanPham`(`MaLoaiSanPham` ASC) USING BTREE,
  INDEX `MaThuongHieu`(`MaThuongHieu` ASC) USING BTREE,
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaSize`) REFERENCES `size` (`MaSize`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaThuongHieu`) REFERENCES `thuonghieu` (`MaThuongHieu`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 'ÁO THUN NAM NGẮN TAY CỔ TRỤ', 'ÁO THUN NAM NGẮN TAY CỔ TRỤ THUN COTTON SỌC NGANG PHỐI 2 MÀU ĐẸP MẮT<br>Chất liệu: Vải 100% thun cotton mềm mịn, \r\nthấm hút mồ hôi tốt', '2020-12-01 00:00:00', 1, 1, 2, NULL, 36, NULL);
INSERT INTO `sanpham` VALUES (2, 'ÁO THUN NAM NGẮN TAY CỔ TRỤ', 'ÁO THUN NAM CỔ TRỤ NGẮN\r\n TAY VIỀN CỔ IN LOGO MẪU MỚI<br>Chất liệu: Vải 100% thun cotton mềm mịn,\r\n thấm hút mồ hôi tốt', '2019-01-05 00:00:00', 1, 1, 3, NULL, 34, NULL);
INSERT INTO `sanpham` VALUES (3, 'ÁO THUN NAM HÌNH HỔ 3D', 'ÁO THUN NAM HÌNH HỔ 3D: Chất vải thun 3D mịn lạnh, thấm hút mồ hôi nhanh giúp các chàng luôn thoải mái khi vận động, \r\nchơi các trò chơi thể thao, thể chất. Bên cạnh đó là thiết kế mạnh mẽ với hình hổ ấn tượng mang đến cho các chàng sự \r\nsang trọng, trẻ trung  để các chàng luôn sẵn sàng xuất hiện trước các nàng mà không lo thiếu sự thu hút.\r\n<br>Chất liệu: VẢI THUN 3D CO GIÃN CAO CẤP', '2021-05-06 00:00:00', 1, 1, 5, NULL, 58, NULL);
INSERT INTO `sanpham` VALUES (4, 'SƠ MI NAM HÀN QUỐC TRẺ TRUNG', 'SƠ MI NAM \r\nHÀN QUỐC TRẺ TRUNG: Chất vải dày dặn cao cấp, đặc biệt với những sọc nhỏ tinh tế cùng dáng áo chuẩn để các chàng \r\ntự tin khoe dáng. Bên cạnh đó là chất màu lên tông chuẩn để các chàng lựa chọn phong cách cho mình thật thoải \r\nmái. Ngoài ra, với thiết kế tay dài thanh lịch, chiếc áo sẽ là bạn đồng hành cùng các chàng trai trong những ngày \r\nlên công tay hay trong những buổi gặp khách hàng.<br>Chất liệu: VẢI KAKI MỀM', '2018-05-05 00:00:00', 3, 3, 3, NULL, 38, NULL);
INSERT INTO `sanpham` VALUES (5, 'SƠ MI NAM CARO Ô LỚN', 'SƠ MI NAM CARO Ô LỚN: Chất vải kate \r\ndày dặn cao cấp, dáng áo chuẩn để các chàng tự tin khoe dáng. Bên cạnh đó là họa tiết caro ôn lớn đối xứng sang trọng \r\nnhưng không kém phần tươi trẻ kết hợp với thiết kế tay dài thanh lịch, chiếc áo sẽ là bạn đồng hành cùng các chàng trai \r\ntrong những ngày lên công ty hay trong những buổi gặp khách hàng.\r\n<br>Chất liệu: VẢI KATE DÀY MỊN', '2017-04-09 00:00:00', 3, 3, 3, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (6, 'ÁO SƠ MI NAM LOANG MÀU THỜI THƯỢNG', 'ÁO SƠ MI NAM LOANG MÀU THỜI THƯỢNG: Chất vải\r\n dày dặn cao cấp, dáng áo chuẩn để các chàng tự tin khoe dáng. Bên cạnh đó là chất màu lên tông chuẩn để các chàng lựa chọn \r\n phong cách cho mình thật thoải mái. Ngoài ra, với thiết kế tay dài thanh lịch nhưng không mất đi sự trẻ trung pha chút nổi \r\n loạn với việc kết hợp màu loang mới mẻ.<br>Chất liệu: KATE BÓNG CAO CẤP', '2015-08-08 00:00:00', 3, 3, 2, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (7, 'QUẦN SHORT JEANS CÓ KHUY ĐỘC ĐÁO', 'QUẦN SHORT JEANS CÓ KHUY ĐỘC ĐÁO: Chất vải jeans cao cấp xuất khẩu vừa dày dặn, nhẹ\r\n mịn vừa co giãn vừa phải giúp người mang dế chịu, tự tin. Bên cạnh đó còn là thiết kế trẻ trung, năng động và đầy độc đáo với \r\n khuy sản phẩm lạ mắt.<br>Chất liệu: VẢI JEANS CAO CẤP XUẤT KHẨU', '2023-01-04 00:00:00', 11, 11, 6, NULL, 24, NULL);
INSERT INTO `sanpham` VALUES (8, 'QUẦN ĐÙI NAM SỐ 69 CAO CẤP', 'QUẦN ĐÙI NAM SỐ 69 CAO CẤP: Thiết kế trẻ trung, năng động với thiết kế săn\r\n lai ống giúp các trai trông năng động hơn. Bên cạnh đó chất vải jenas dày dặn mang đến sự tự tin cho các chàng trong việc hoạt động vui \r\n chơi mà không lo các sự cố khó xửa xảy ra.\r\n <br>Chất liệu: VẢI JEANS CAO CẤP XUẤT KHẨU', '2023-02-01 00:00:00', 11, 11, 7, NULL, 29, NULL);
INSERT INTO `sanpham` VALUES (9, 'QUẦN SHORT JEANS NAM KẾT HỢP HỌA TIẾT CHIBI', 'QUẦN SHORT JEANS NAM KẾT HỢP HỌA TIẾT CHIBI ĐÁNG YÊU: Chất vải \r\njeans cao cấp nhập khẩu Thái Lan mang đến cho người mặc sự thoải mái và tin tưởng bởi chất vải dày dặn, mịn nhẹ. bên cạnh đó ngoài \r\nnhững nét cắt rách táo bạo là họa tiết chibi mang đến sự trẻ trung, nắng động cho người mang.<br>Chất liệu: VẢI JEANS NHẬP \r\nKHẨU THÁI LAN', '2013-05-09 00:00:00', 11, 11, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (10, 'QUẦN JEANS NAM CAO CẤP THIẾT KẾ KẾT HỢP VẢI MẪU', 'QUẦN JEANS NAM CAO CẤP THIẾT KẾ KẾT HỢP VẢI \r\nMẪU: Chất vải cao cấp xuất khẩu dày dặn, lên form chuẩn dáng để các chàng thoải mái khoe body. Bên cạnh đó là thiết kế phong cách\r\n đường phố mạnh mẽ, phá cách với những nét cắt, xước táo bạo, độc đáo mà chỉ riêng sản phẩm có.\r\n <br>Chất liệu: VẢI JEANS NAM CAO CẤP NHẬP KHẨU', '2014-07-09 00:00:00', 13, 13, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (11, 'QUẦN JEANS NAM NHẤN GỐI TRÁI TINH TẾ', 'QUẦN JEANS NAM NHẤN GỐI TRÁI TINH TẾ: Chất vải cao cấp xuất \r\nkhẩu dày dặn, lên form chuẩn dáng để các chàng thoải mái khoe body. Bên cạnh đó là thiết kế phong cách đường phố \r\nmạnh mẽ, phá cách với những nét cắt, xước táo bạo, độc đáo mà chỉ riêng sản phẩm có.\r\n<br>Chất liệu: VẢI JEANS NHẬP KHẨU HÀN QUỐC', '2012-10-10 00:00:00', 13, 13, 9, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (12, 'QUẦN JEAN NAM PHONG CÁC ĐƯỜNG PHỐ MỚI', 'QUẦN JEAN NAM PHONG CÁC ĐƯỜNG PHỐ MỚI: Thiết kế phá cách, theo xu hướng đường phố \r\nđem đến cho các chàng trai sự năng động, pha chút nổi loạn làm các chàng trai trông thật sự nổi bật cũng như tự tin thể hiện phong \r\ncách của bản thân trong mọi cuộc vui.\r\n<br>Chất liệu: VẢI JEANS CAO CẤP XUẤT KHẨU', '2023-01-01 00:00:00', 13, 13, 9, NULL, 21, NULL);
INSERT INTO `sanpham` VALUES (13, 'QUẦN KAKI LƯNG PHỐI DÂY SỌC QK005 MÀU XANH ĐEN', 'Sớ vải dệt xéo nổi lên khá lạ mắt tạo nên một sản phẩm dày dặn, bền bỉ và ít nhăn, chất liệu cao cấp mang đến sự thoáng mát, thấm hút mồ hôi cao.\r\n<br>- Quần co giãn nhẹ  nhờ có thành phần spandex giúp người mặc cảm thấy thoải mái, dễ chịu hơn.\r\n<br>- Sản phẩm được xử lý wash mềm, đốt lông nên đảm bảo hạn chế co rút, xù lông và bền màu.\r\n<br>- Phần phối dây dệt sọc ở lưng quần làm điểm nhấn mới lạ đầy ấn tượng nhưng vẫn giữ được nét thanh lịch, thời thượng cho phái mạnh.\r\n<br>Chất liệu: Khaki 98% cotton 2% spandex twill stretch.', '2005-02-09 00:00:00', 12, 12, 7, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (14, 'QUẦN KAKI LƯNG PHỐI DÂY SỌC QK005 MÀU CÀ PHÊ', 'Sớ vải dệt xéo nổi lên khá lạ mắt tạo nên một sản phẩm dày dặn, bền bỉ và ít nhăn, chất liệu cao cấp mang đến sự thoáng mát, thấm hút mồ hôi cao.\r\n<br>- Quần co giãn nhẹ  nhờ có thành phần spandex giúp người mặc cảm thấy thoải mái, dễ chịu hơn.\r\n<br>- Sản phẩm được xử lý wash mềm, đốt lông nên đảm bảo hạn chế co rút, xù lông và bền màu.\r\n<br>- Phần phối dây dệt sọc ở lưng quần làm điểm nhấn mới lạ đầy ấn tượng nhưng vẫn giữ được\r\n nét thanh lịch, thời thượng cho phái mạnh.<br>Chất liệu: Khaki 98% cotton 2% spandex twill stretch.', '2010-06-08 00:00:00', 12, 12, 7, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (15, 'QUẦN KAKI CÓ NẮP TÚI SAU QK003 MÀU XÁM', 'Mềm mại, độ bền cao, hút ẩm \r\nvà thấm hút mồ hôi tốt. Thiết kế căn bản dễ mix&match nhiều dạng quần áo và phong cách.\r\n<br>Chất liệu: 98% cotton, 2% spandex.', '2011-10-25 00:00:00', 12, 12, 7, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (16, 'QUẦN TÂY NAZAFU QT006 MÀU XANH ĐEN', 'Chất vải mềm mại, độ bền cao,\r\n hút ẩm và thấm hút mồ hôi tốt. Họa tiết kẻ caro Glen plaid rất \"đa dụng\", thanh nhã. \r\n <br>Chất liệu: 73% polyester, 26% rayon, 1% spandex.', '2012-01-02 00:00:00', 14, 14, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (17, 'QUẦN TÂY CĂN BẢN FORM SLIMFIT QT015', 'Quần\r\n slimfit tôn dáng thon gọn trong thiết kế trơn căn bản. Chất liệu thấm hút tốt, độ bền cao tạo cảm giác thoải mái cho người mặc.\r\n <br>Chất liệu: 68% polyester,rayon 29%, 3% spandex.', '2009-08-11 00:00:00', 14, 14, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (18, 'QUẦN TÂY XẾP LY FORM SLIMFIT QT007 MÀU XÁM CHUỘT ĐẬM', 'Chống nhăn,\r\n co dãn nhẹ. Thiết kế trên chất vải bóng mịn, sở hữu độ bền màu cao tạo phong thái lịch thiệp và tinh tế cho người mặc.\r\n <br>Chất liệu: 83% polyester, 15% rayon, 2% spandex.', '2015-01-05 00:00:00', 14, 14, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (19, 'QUẦN JOGGER LƯNG THUN CÀI NÚT J004 MÀU XÁM XANH', 'Mềm mịn, có độ rũ nhẹ. Độ bền màu cao, \r\nthấm hút mồ hôi tốt. Co giãn nhẹ, hạn chế nhăn tạo cảm giác thoải mái tối đa trong mọi hoạt động<br>Chất liệu: 83% polyester,\r\n 15% rayon, 2% spandex.', '2009-01-01 00:00:00', 15, 15, 10, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (20, 'QUẦN JOGGER JEAN J13 MÀU XANH ĐEN', 'Đậm chất jeans nhưng là jogger \r\nnăng động & cá tính. Jogger đơn giản với thiết kế bo lưng & bo lai mới tạo điểm nhấn cho quần luôn thoải mái, trẻ trung, \r\njogger thực sự thuộc về các chàng trai ưu thích sự di chuyển.<br>Chất liệu: 98% cotton, \r\n2% spandex', '2002-12-12 00:00:00', 15, 15, 10, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (21, 'QUẦN JOGGER TÚI ĐẮP J001 MÀU ĐEN', 'Co giãn vừa phải, bền màu, ít nhăn. Form \r\ndáng thoải mái, năng động với 2 túi đắp bên hông quần tạo phong thái trẻ trung và phóng khoáng.\r\n<br>Chất liệu: 65% polyester, 32% rayon, 3% spandex.', '2007-12-12 00:00:00', 15, 15, 10, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (22, 'ÁO THUN NỮ TRẺ TRUNG MỚI', 'ÁO THUN NỮ TRẺ TRUNG MỚI: Với thiết kế \r\ntrẻ trung với viền màu nổi bật cùng hình ảnh bắt mắt bên cạnh đó là chất vải cao cấp, lên màu, lên dáng chuẩn như các cô gái muốn \r\ngiúp các nàng luôn tự tin tỏa sáng và thoải mái khi mang dù cho là cả ngày dài hoạt động.\r\n<br>Chất liệu: VẢI DA CÁ CAO CẤP', '2012-10-04 00:00:00', 2, 2, 2, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (23, 'ÁO THUN NỮ HIỆN ĐẠI CAO CẤP', 'ÁO THUN NỮ HIỆN ĐẠI CAO CẤP: \r\nThiết kế hiện đại với kiểu tay phồng nhún viền tinh tế, bắt mắt bên cạnh đó là chất vải thun dày dặn cao cấp không chỉ lên màu \r\nchuẩn mà còn lên dáng chuẩn như các nàng muốn giúp các nàng luôn tự tin tỏa sáng và thoải mái khi mang dù cho là cả ngày \r\ndài hoạt động.<br>Chất liệu: VẢI THUN CAO CẤP DÀY DẶN', '2016-12-10 00:00:00', 2, 2, 2, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (24, 'ÁO THUN NỮ SỌC MÀU NĂNG ĐỘNG', 'ÁO THUN NỮ SỌC MÀU NĂNG ĐỘNG: Thiết kế \r\nhiện đại với những sọc màu bắt mắt, sự kết hợp những màu sắc nổi bật đi cùng nhau tạo nên sự khác biệt mang phong cách Hàn Quốc bên cạnh\r\n đó là chất vải cao cấp, lên màu, lên dáng chuẩn như ming muốn giúp các nàng luôn tự tin tỏa sáng và thoải mái khi \r\n mang dù cho là cả ngày dài hoạt động.\r\n <br>Chất liệu: VẢI NHŨ NHẬP KHẨU', '2016-12-12 00:00:00', 2, 2, 2, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (25, 'SƠ MI NỮ KIỂU CỔ VUÔNG HIỆN ĐẠI', 'SƠ MI NỮ KIỂU CỔ VUÔNG HIỆN ĐẠI: Chất vải voan mềm mịn cùng với \r\nchất len gân co giãn mang đến vẻ đẹp dịu dàng nữ tính cùng sự thoải mái, dễ chịu khi hoạt động cả ngày dài. Đặc biệt là thiết \r\nkế hiện đại, mang nét gợi cảm giúp người mang nổi bật với nét đẹp hiện đại thời thượng.\r\n<br>Chất liệu: VẢI VOAN \r\nMỀM KẾT HỢP LEN GÂN MỎNG', '2010-05-05 00:00:00', 4, 4, 4, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (26, 'ÁO SƠ MI NỮ SỌC TAY LỬNG THIẾT KẾ ĐỘC ĐÁO', 'ÁO SƠ MI NỮ SỌC TAY LỬNG\r\n THIẾT KẾ ĐỘC ĐÁO: Chất liệu kate mềm mịn cao cấp thướt tha, nhẹ nhàng, dễ chịu. Kiểu dáng áo cổ bẻ, tay lửng thời trang, \r\n mang nền vải sọc vân nhỏ đậm chất lịch sự cho bạn gái thêm phần trang nhã, lịch sự và đầy nữ tính. \r\n Chiếc áo không chỉ thích hợp cho những ngày đến cơ quan, công sở mà còn là một sự lựa chọn \r\n khá hoàn hảo cho những buổi đầu hẹn hò khi muôn xuất hiện với hình ảnh trang nhã.\r\n <br>Chất liệu: VẢI KATE MỀM NHẸ CAO CẤP', '2010-02-27 00:00:00', 4, 4, 4, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (27, 'ÁO SƠ MI NỮ TRƠN FROM ÁO ĐỘC ĐÁO', 'ÁO SƠ MI NỮ TRƠN FROM ÁO ĐỘC ĐÁO: Với \r\nchất vải kate cao cấp mềm mịn và thoáng khí giúp người mang thoải mái khi hoạt động cả ngày dù trong thời tiết nắng nóng. Bên cạnh đó là \r\nfrom áo độc đáo mang tới vẻ đẹp cá tính, hiện đại giúp các nàng trông thật nổi \r\nbật trong mọi cuộc vui.<br>Chất liệu: VẢI KATE CAO CẤP', '2019-03-07 00:00:00', 4, 4, 2, NULL, 38, NULL);
INSERT INTO `sanpham` VALUES (28, 'ĐẦM NỮ CỔ CHỮ U XẺ TÀ SÀNH ĐIỆU', 'ĐẦM NỮ CỔ CHỮ U XẺ TÀ \r\nSÀNH ĐIỆU: Với chất vải cao cấp nhập khẩu từ Thái Lan, vải dày dặn, thấm hút mồ hôi tốt. Bên cạnh đó thiết kế sang trọng với \r\ncổ chữ U và xẻ tà quyến rũ giúp người mặc trông thật trẻ trung năng động và đầy tự tin. \r\n<br>Chất liệu: VẢI KATE CO GIÃN NHẬP KHẨU THÁI LAN', '2018-08-12 00:00:00', 5, 5, 5, NULL, 39, NULL);
INSERT INTO `sanpham` VALUES (29, 'ĐẦM HOA 2 LỚP XẾP EO MS 48B8245', 'Đầm 2 lớp dáng\r\nchữ A, cổ tròn. Xếp nếp ở mặt trước phần eo. Tay lỡ. Cài bằng khóa kéo ẩn sau lưng. Vải họa tiết hoa thu hút. Kiểu dáng chữ A,\r\n ôm nhẹ với độ dài trên gối cùng phần tay lỡ giúp che đi hầu hết các khuyết điểm cơ thể. \r\n Bên cạnh đó chất liệu thô co giãn nhẹ, bền màu, ít nhăn mang lại cảm giác thoải mái khi mặc. \r\n <br>Chất liệu: Thô', '2006-11-12 00:00:00', 5, 5, 5, NULL, 58, NULL);
INSERT INTO `sanpham` VALUES (30, 'ĐẦM LỤA CHẤM BI 2 LỚP MS 48M4844', 'Đầm lụa chấm bi, cổ \r\nchữ V vạt trước đáp chéo được xếp nếp tinh tế, tay ngắn. Dáng ôm. Eo chiết kèm đai cùng màu. Gấu sau xẻ. Cài bằng khóa kéo ẩn \r\nsau lưng. Những đường xếp ly ở phần chân váy giúp che được hết những khuyết điểm của cô nàng mảnh khảnh và mang đến sự tinh\r\n nghịch, trẻ trung, phá cách mà không kém phần quyến rũ cho phái đẹp. \r\n <br>Chất liệu: Lụa', '2008-04-01 00:00:00', 5, 5, 5, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (31, 'Chân Váy Jean Rách', 'Màu sắc: Đen - Trắng. Kiểu dáng: Chất kaki jeans \r\nCo giãn, dày dặn, không xù lông và có thể giặt máy. Size : Size: S (dưới 45kg), M(46-50kg), L(51-55kg). Mục đích sử dụng: dạo phố. \r\nđi chơi, đi học hoặc đi làm', '2011-10-12 00:00:00', 6, 6, 2, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (32, 'Chân Váy Jean Ngắn', 'Màu sắc: Đen - Trắng. \r\nKiểu dáng: Chất kaki jeans Co giãn, dày dặn, không xù lông và \r\ncó thể giặt máy. Size : Size: S (dưới 45kg), M(46-50kg), L(51-55kg). \r\nMục đích sử dụng: dạo phố. đi chơi, đi học hoặc đi làm', '2001-12-12 00:00:00', 6, 6, 4, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (33, 'Chân Váy Xếp Ly', 'Những chiếc Chân Váy \r\nXếp Ly mềm mại với chiều dài trên gối là lựa chọn dành riêng cho các quý cô yêu thích phong cách lãng mạn. Vì sao ư? vì chúng \r\nđơn giản nhưng không hề nhàm chán, kín đáo nhưng lại quyến rũ một cách lạ thường. Sự bắt cặp quá đỗi hoàn hảo này là bởi những \r\nđường ly thanh mảnh mềm mại đến tinh tế sẽ khiến cho các quý cô trông thật duyên dáng và chiều dài chỉ đến ngang \r\nbắp chân sẽ khiến cho mỗi bước đi trông thật uyển chuyển và gợi cảm. Chiếc váy chính là món đồ có thể kết hợp ăn\r\n ý cùng áo len chui đầu, áo phông, sơ mi dáng rộng và một đôi giày/sandals cao gót thanh mảnh.', '2016-07-17 00:00:00', 6, 6, 1, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (34, 'SHORT LƯNG THUN VIỀN SỌC', 'Mix- Max phối cùng các kiểu áo thun thời \r\ntrang, croptop phá cách, áo ba lỗ mát mẻ. Lưng thun dây rút tạo cảm giác thoải mái và tự tin cho người mặc. Short \r\nviền sọc là style đầy mới mẻ dành cho tủ đồ ngày hè của bạn gái.', '2007-04-03 00:00:00', 7, 7, 7, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (35, 'Quần Short Jean Nhung', 'Quần Short Jean Rách Nhung cách điệu với \r\nthiết kế chuẩn form co giãn, đẹp mắt, dễ thương, kiểu \r\ndáng đơn giản. Dáng quần vừa vặn nhiều vóc người. Có thể kết hợp cùng nhiều \r\nthiết kế áo kiểu khác nhau.', '2016-11-12 00:00:00', 7, 7, 7, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (36, 'Quần Short 2 Túi Lai V', 'Mix- Max phối cùng các kiểu áo thun \r\nthời trang, croptop phá cách, áo ba lỗ mát mẻ. Lưng thun dây rút tạo cảm giác thoải mái và tự tin cho người mặc. Short viền\r\n sọc là style đầy mới mẻ dành cho tủ đồ ngày hè của bạn gái.', '2012-03-03 00:00:00', 7, 7, 7, NULL, 50, NULL);
INSERT INTO `sanpham` VALUES (37, 'QUẦN JEANS NỮ ỐNG SUÔNG CÁCH ĐIỆU CÁ TÍNH', 'QUẦN JEANS NỮ ỐNG SUÔNG \r\nCÁCH ĐIỆU CÁ TÍNH: Với những cô nàng đã cực kỳ đam mê với mẫu quần ống suông nhưng thấy nhàm chán với mẫu basic ban đầu thì chắc \r\nchắn sản phẩm sẽ làm các nàng hài lòng với sự nhấn nhá, cách điệu với đường cắt dứt khoác, mạnh mẽ lần lượt tại hông và \r\nbắp chân. Đặc biệt là ống quần với thiết kế cắt thuần túy tại nên những tua rua tự nhiên mang đến sự năng động \r\ncho các nàng.<br>Chất liệu: VẢI JEANS DÀY MỊN', '2013-12-12 00:00:00', 8, 8, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (38, 'QUẦN JEANS NỮ NHẤN CHỮ ĐÙI CÁ TÍNH', 'QUẦN JEANS NỮ NHẤN \r\nCHỮ ĐÙI CÁ TÍNH : Chất vải jeans cao cấp, tuyển chọn đảm bảo được form quần và màu lên chuẩn cùng với thiết kế hiện đại kèm \r\ntheo sự trẻ trung thanh lịch để các cô gái luôn có thể tự tin diện ở mọi nơi mà không lo \r\nrằng sẽ không phù hợp và chắc chắn là các cô gái sẽ thật tỏa sáng, nổi bật \r\nvới phong cách nhẹ nhàng.<br>Chất liệu: VẢI \r\nJEANS DÀY DẶN XUẤT KHẨU', '2014-12-12 00:00:00', 8, 8, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (39, 'QUẦN JEANS NỮ WASH ỐNG ĐỘC ĐÁO', 'QUẦN JEANS NỮ\r\n WASH ỐNG ĐỘC ĐÁO: Chất liệu vải jeans dày dặn cao cấp, chắc chắn cho bạn yên tâm khi hoạt động mạnh, có khả năng thấm hút\r\n các giọt mồ hôi và co giãn tốt. Kiểu dáng thiết kế ống ôm sang trọng, khoe dáng, luôn luôn được những \r\n bạn gái yêu mến trong mọi phong cách thời trang.<br>Chất liệu: VẢI JEANS\r\n CHẤT LIỆU CAO CẤP', '2015-12-27 00:00:00', 8, 8, 8, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (40, 'QUẦN JOGGER DÂY KÉO NỮ XANH BIỂN', 'Phối quần jogger nữ \r\nvới Áo crop top là item thời trang không thể thiếu trong tủ đồ hè của bạn gái. Chiếc áo cá tính này cũng là “người bạn thân” với\r\n quần jogger nữ. Cách phối đồ với quần jogger nữ và áo crop top không chỉ mang đến vẻ đẹp khoẻ khoắn, trẻ trung mà còn \r\n giúp các nàng khoe khéo vòng eo “con kiến” của mình.', '2019-02-11 00:00:00', 9, 9, 9, NULL, 31, NULL);
INSERT INTO `sanpham` VALUES (41, 'QUẦN JOGGER KAKI NỮ XÁM TRẮNG', 'Phối quần jogger nữ \r\nvới Áo crop top là item thời trang không thể thiếu trong tủ đồ hè của bạn gái. Chiếc áo cá tính này cũng là “người bạn thân” với quần \r\njogger nữ. Cách phối đồ với quần jogger nữ và áo crop top không chỉ mang đến vẻ đẹp khoẻ khoắn, trẻ trung mà còn giúp \r\ncác nàng khoe khéo vòng eo “con kiến” của mình.', '2014-07-02 00:00:00', 9, 9, 9, NULL, 40, NULL);
INSERT INTO `sanpham` VALUES (42, 'QUẦN JOGGER NỮ CÓ KHÓA GỐI KAKI ĐEN', 'Phối quần jogger nữ \r\nvới Áo crop top là item thời trang không thể thiếu trong tủ đồ hè của bạn gái. Chiếc áo cá tính này cũng là\r\n “người bạn thân” với quần jogger nữ. Cách phối đồ với quần jogger nữ và áo crop top không \r\n chỉ mang đến vẻ đẹp khoẻ khoắn, trẻ trung mà còn giúp các nàng khoe\r\n khéo vòng eo “con kiến” của mình.', '2018-02-14 00:00:00', 9, 9, 9, NULL, 40, NULL);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `MaSize` int NOT NULL AUTO_INCREMENT,
  `TenSize` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaSize`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 'XS', 'Extra Small shirt', NULL);
INSERT INTO `size` VALUES (2, 'S', 'Small shirt', NULL);
INSERT INTO `size` VALUES (3, 'M', 'Medium shirt', NULL);
INSERT INTO `size` VALUES (4, 'L', 'Large shirt', NULL);
INSERT INTO `size` VALUES (5, 'XL', 'Extra Large shirt', NULL);
INSERT INTO `size` VALUES (6, '28', 'Size 28 pants', NULL);
INSERT INTO `size` VALUES (7, '30', 'Size 30 pants', NULL);
INSERT INTO `size` VALUES (8, '32', 'Size 32 pants', NULL);
INSERT INTO `size` VALUES (9, '34', 'Size 34 pants', NULL);
INSERT INTO `size` VALUES (10, '36', 'Size 36 pants', NULL);

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide`  (
  `MaSlide` int NOT NULL AUTO_INCREMENT,
  `Anh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaSlide`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES (1, NULL, NULL);
INSERT INTO `slide` VALUES (2, NULL, NULL);
INSERT INTO `slide` VALUES (3, NULL, NULL);
INSERT INTO `slide` VALUES (4, NULL, NULL);

-- ----------------------------
-- Table structure for thamso
-- ----------------------------
DROP TABLE IF EXISTS `thamso`;
CREATE TABLE `thamso`  (
  `MaThamSo` int NOT NULL AUTO_INCREMENT,
  `TenThamSo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `KyHieu` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `NoiDung` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `Anh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaThamSo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thamso
-- ----------------------------
INSERT INTO `thamso` VALUES (1, 'Tên website', 'NAME', 'MarkShop', NULL, NULL);
INSERT INTO `thamso` VALUES (2, 'Logo của website', 'LOGO', '', NULL, NULL);
INSERT INTO `thamso` VALUES (3, 'Email liên hệ website', 'Email', 'Mark@gmail.com', NULL, NULL);
INSERT INTO `thamso` VALUES (4, 'Số điện thoại liên hệ website', 'NUMBER', ' 01293012390', NULL, NULL);
INSERT INTO `thamso` VALUES (5, 'Đường dẫn backend', 'LINK_SERVER', 'https://localhost:44377', NULL, NULL);
INSERT INTO `thamso` VALUES (6, 'Địa chỉ liên hệ', 'ADRESS', '140 Lê Trọng Tấn, Phường Tây Thạnh, Quận Tân Phú', NULL, NULL);
INSERT INTO `thamso` VALUES (8, 'ICON WebSite', 'ICON', NULL, NULL, NULL);
INSERT INTO `thamso` VALUES (11, 'Mật khẩu mặc định WebSite', 'PassWord', '123456789', NULL, NULL);

-- ----------------------------
-- Table structure for thongso
-- ----------------------------
DROP TABLE IF EXISTS `thongso`;
CREATE TABLE `thongso`  (
  `MaThongSo` int NOT NULL AUTO_INCREMENT,
  `TenThongSo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `MoTa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `MaSanPham` int NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaThongSo`) USING BTREE,
  INDEX `MaSanPham`(`MaSanPham` ASC) USING BTREE,
  CONSTRAINT `thongso_ibfk_1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thongso
-- ----------------------------
INSERT INTO `thongso` VALUES (1, 'Chất liệu', 'Thường là cotton, polyester hoặc sự kết hợp giữa chúng để tạo ra chất liệu thoáng khí và thoải mái.', 1, NULL);
INSERT INTO `thongso` VALUES (2, 'Kiểu dáng', 'Ngắn tay: Với độ dài tay ngắn, thích hợp cho mùa hè hoặc khi bạn muốn thoải mái.', 1, NULL);
INSERT INTO `thongso` VALUES (3, 'Cổ trụ', 'Cổ thường được thiết kế dạng trụ, tạo sự thoải mái và đơn giản.', 1, NULL);
INSERT INTO `thongso` VALUES (4, 'Size', 'Có nhiều size khác nhau để phù hợp với người mặc từ những người có kích thước nhỏ đến lớn', 1, NULL);

-- ----------------------------
-- Table structure for thuonghieu
-- ----------------------------
DROP TABLE IF EXISTS `thuonghieu`;
CREATE TABLE `thuonghieu`  (
  `MaThuongHieu` int NOT NULL AUTO_INCREMENT,
  `TenThuongHieu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `GioiThieu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaThuongHieu`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of thuonghieu
-- ----------------------------
INSERT INTO `thuonghieu` VALUES (1, 'CHANEL', 'Chanel chắc hẳn là cái tên không còn xa lạ gì dù chàng có là \"\"tín đồ thời trang hay không .Bởi thương hiệu đến từ Pháp này vô cùng nổi tiếng với nhiều sản phẩm khác nhau từ nước hoa , quần áo ,túi xanh hay một số loại mỹ phẩm \n<br>- Hướng đén phong cách thời trang thời thượng và đẳng cấp do đó các mẫu quần áo của Chanel được làm hoàn toàn từ chất liệu cao cấp cùng công nghệ may tinh xảo nhất .Bởi đó khó có ai có thể cưỡng lại sức hút toát ra từ các sản phẩm thời trang của thương hiệu này \n<br>-Đăc biệt , Chanel thường xuyên tổ chức các show diễn thời trang đỉnh cao thu hút rất nhiều nhà thiết kế trẻ ,tài năng để ra mắt bộ sưu tập mới của họ .Nhờ đó ,thương hiệu này ngày càng được nhiều người biết đén và trở thành số 1 trong làng thời trang thế giới', NULL);
INSERT INTO `thuonghieu` VALUES (2, 'GUCCI', 'Là một trong những biểu tượng thời trang co cấp của ý và pháp với những sản phẩm thời trang xa xỉ bậc nhất.Trong đó hai dòng sản phẩm thời trang nam và nữ chủ đạo là The House of Gucci với các mẫu thiết kế độc nhất và thời thượng \n<br>-Ngoài ra .Gucci cũng vô cùng nổi tiếng với các dòng túi sách , đồng hồ , kính mắt , phụ kiện thời trang hàng hiệu bậc nhất hiện nay ', NULL);
INSERT INTO `thuonghieu` VALUES (3, 'LOUIS VUITTON', 'là một trong những cái tên vàng trong làng thời trang của pháp ,LOUIS VUITTON không chỉ đơn giản là một thương hiệu thời trang xa xỉ mà nó còn là tượng đài của thời trang thế giới \n<br>-Được thành lập từ năm 1854 cho đến nay LOUIS VUITTON đã trở nên vô cùng nổi tiếng trên toàn thế giới và là một trong những thương hiệu thời trang cao cấp giá trị nhất .Không chỉ có những sản phẩm thời trang của nữ mà LOUIS VUITTON cũng có cho mình những bộ sưu tập thời trang nam chất nhất , được nhiều ngôi sao đón nhận \n<br>- Đặc biệt điều tạo nên sức hút khó cưỡng của thương hiệu thời trang nổi tiếng này là trang phục đều mang phong cách thời thượng , mới lạ và tinh xảo đến từng chi tiết nhỏ \n<br>- Cũng như nhiều thương hiệu thời trang hàng hiệu , cao cấp khác thì LOUIS VUITTON cũng đang ngày càng mở rộng ra các lĩnh vực khác như túi xách , nước hoa ,.....', NULL);
INSERT INTO `thuonghieu` VALUES (4, 'DIOR', 'Được thành lập bởi nhà thiết kế tài ba Christian vào năm 1946 và cho đến nay nó đã trở thành thương hiệu thời trang nổi tiếng cao cấp bậc nhất tại pháp và được toàn thế giới công nhận .\n<br>- Đối với các dòng sản phẩm thời trang của Dior , khó cí ai cưỡng lại sức hút của nó bởi phong cách Haute Couture đặc trưng đậm tính kiến trúc và sự quyến rũ \n<br>- Nếu Dior Womanswear là một trong những sản phẩm cao cấp dành cho phái nữ đầy quý phái , sang trọng thì Dior Homme là dòng sản phẩm dành cho nam mang thiết kế tối giản ,tinh xảo và vô cùng thanh lịch ', NULL);
INSERT INTO `thuonghieu` VALUES (5, 'HERMES', 'HERMES cũng được biết đến là một trong những thương hiệu thời trang xa xỉ do người pháp thành lập từ năm 1837 khởi nguồn từ một cửa hàng bán vật dụng dành cho ngựa .Chính điều này đã tạo nên logo hình chiếc xe ngựa kéo quen thuộc của thương hiệu này \n<br>-Ngày nay , hermes đã trở thành đế chế thời trang khổng lồ của thế giới với những mẫu thời trang đẳng cấp và trang trọng nhất .Điểm độc đáo tạo nên sự nổi tiếng của thương hiệu thời trang nổi tiếng này là tất cả các sản phẩm đều được quan tâm đầu tư kỹ lưỡng trong quá trình sản xuất \n<br>-Đăc biệt với nhiều sản phẩm thời trang được làm hoàn toàn thủ công từ một người thợ duy nhất đẻ đảm bảo tính thống nhất và riêng biệt của sản phẩm .Nhờ đó , hermes là một trong những thương hiệu thời trang được nhiều ngôi sao nổi tiếng thế giới lựa chọn và sử dụng nhất tính đến 2021', NULL);
INSERT INTO `thuonghieu` VALUES (6, 'DOLCE & GABBANA', 'Là một thương hiệu thời trang nổi tiếng về hàng cao cấp của ý được thành lập bởi chính hai nhà thiết kế này vào năm 1985 \n<br>-cũng nhờ được thành lập bởi hai nhà thiết kế tài hoa và có tầm ảnh hưởng lớn đến xu hướng thời trang bấy giờ nên thương hiệu này thực sự đem đến những mẫu thiết kế đẳng cấp , tinh tế mà hiếm thương hiệu nào làm được \n<br>-Do đó ,DOLCE & GABBANA được rất nhiều ngôi sao Hollywood tin dùng và ưa chuộng mỗi khi có dịp dự các sự kiện lớn như : Madonna , Monica Bellucci ,...', NULL);
INSERT INTO `thuonghieu` VALUES (7, 'VERSACE', 'Là một biểu tượng thời trang cao cấp bậc nhất của ý , Thương hiệu đã khiến cả thế giới phải ngưỡng mộ và trầm trồ nhờ đem đến những sản phẩm thời trang chất lượng , xa xỉ nhất theo phong cách độc đáo , sang trọng và vô cùng ấn tượng \n<br>-Đối với ai yêu thích và là tín đồ của thời trang xa xỉ thế giới chắc hẳn đều nhận thấy họa tiết của các trang phục mang thương hiệu Versace của nghệ thuật Hy lạp cổ đại với màu sắc , chất liệu , nét cổ điển và tính nghệ thuật điển hình , hình khố mới lạ ', NULL);
INSERT INTO `thuonghieu` VALUES (8, 'PRADA', 'Là hãng thời trang danh giá nhất của nước ý đặc trưng với phong cách sang trọng , quý phái và thời thượng nên Prada đang ngày càng phát triển và định hướng trở thành thượng hiệu đỉnh cao của làng thời trang \n<br>-Cũng giống như nhiều thương hiệu thời trang nổi tiếng khác prada chia sản phẩm thành 2 dòng thời trng nam và nữ đẻ đáp ứng nhu cầu của khách hàng trên toàn thế giới .Đặc trưng của dòng sản phẩm này mang tính nghệ thuật cao có sự kết hợp nét cổ điển và hiện đại \n<br>- Do đó ,Prada cũng vẫn luôn tạo ra nét khác biệt mạnh mẽ giữa các thương hiệu thời trang khác ', NULL);
INSERT INTO `thuonghieu` VALUES (9, 'BURBERRY', 'Được coi là niềm tự hào của thời trang cao cấp Anh Quốc với lịch sử hình thành lâu đời nhất trên thế giới \n<br>- Mặc dù ngày nay thương hiệu này đã cho ra mắt nhiều bộ sưu tập với những thiết kế ấn tượng và thời thượng nhất nhưng một đặc trưng và độc quyền trong phong cách thời trang của thương hiệu này , khiến người ta nhớ mãi là họa tiết sọc caro đơn giản nhưng vô cùng tinh tế trang nhã \n<br>- Và chính họa tiết này cũng là cảm hứng thiết kế cho những sản phẩm thời trang khác như đông hồ , mũ , ... của Burberry cho đến tận ngày nay  ', NULL);
INSERT INTO `thuonghieu` VALUES (10, 'ARMANI', 'Là một trong những thương hiệu thời trang nổi tiếng của ý có tốc độ phát triển nhanh nhất ,Armani đang ngày càng khẳng định được tiếng tăm của mình trên thị trường thời trang cao cấp của thế giới \n<br>- Với những mẫu thời trang nam nữ hướng đến sự tối giản , tinh tế và có tính ứng dụng cao ,Armani đã chinh phục được nhiều nhà thiết kế nổi tiếng khác và nhiều ngôi sao nổi tiếng trên thế giới \n<br>-Không chỉ nổi tiếng về các sản phẩm thời trang mà đồng hồ , mỹ phẩm , đồ nội thất cũng là một trong những mặt hàng làm nên tên tuổi của thương hiệu này ', NULL);
INSERT INTO `thuonghieu` VALUES (11, 'RALPH LAUREN', 'Thương hiệu thời trang nổi tiếng Ralph Lauren được thành lập 1967 bởi nhà thiết kế người mỹ \n<br>- Do đó các mẫu thời trang của thương hiệu này mang phong cách vừa sang trọng , vừa phóng khoáng và cổ điển đúng theo gu của người Mỹ \n<br>-Đặc biệt RALPH LAUREN còn được biết đến giống như cha` đẻ của biểu tượng Polo ngày nay nhờ bộ sưu tập thời trang giành cho nữ giới mang phong cách trang phục cổ điển của nam giới vào năm 1969 ', NULL);
INSERT INTO `thuonghieu` VALUES (12, 'GIVENCHY', 'Là thương hiệu thời trang do chính nhà thiết kế trẻ tài năng người pháp gốc ý cùng tên sáng lập năm 1952\n<br>-Tồn tại giữa kinh đô thời trang Paris với nhiều thương hiệu thời trang nổi tiếng và xa xỉ bậc nhất trên thế giớI nhưng GIVENCHY vẫn không hề kém cạnh mà đã tạo dựng cho mình được phong cách thời trang cao cấp khác biệt \n<br>-Các sản phẩm thời trang của GIVENCHY đều hướng tới tôn vinh nét đẹp hiện đại và đầy cá tính , sang trọng nhưng năng động của cả phái nam lẫn phái nữ .Nhờ đó , thương hiệu này đã nhanh chóng gia nhập đế chế thời trang hùng mạnh của thế giới một cách nhanh chóng ', NULL);
INSERT INTO `thuonghieu` VALUES (13, 'FENDI', 'Là thương hiệu thời trang nổi tiếng của ý do Edoardo và Adele Fendi sáng lập chuyên về các sản phẩm thời trang cao cấp , nước hoa , giày dép và các phụ kiện thời trang khác \n<br>-Trong đó ấn tượng nhất của các mẫu thời trang của thương hiệu này đều được làm từ da và lông thú - hai chất liệu cao cấp và xa xỉ hàng đầu .Bởi thế , mỗi khi các bộ sưu tập của thương hiệu này được tung ra thị trường luôn tạo ra cơn sốt thời trang đối với nhiều ngôi sao hàng đầu trên thế giới \n<br>- Cũng chính chất liệu này đem đến cho các dòng thời trang của FENDI phong cách sang trọng , quý phái mà thanh lịch hiếm có ', NULL);
INSERT INTO `thuonghieu` VALUES (14, 'Yves Saint Laurent', 'Yves Saint Laurent là một trong những thương hiệu thời trang cao cấp nhất của kinh độ thời trang Paris được nhà thiết kế huyền thoại Yves Saint Laurent và đối tác của ông là Piere Berge sáng lập năm 1962\n<br>-Ngay từ những ngày đầu tiên ra mắt thời trang thế giới Yves Saint Laurent đã khiến cả thế giới thời trang phải sửng sốt và ngạc nhiên vì những mẫu thời trang nam nữ được thiết kế vô cùng tỉ mỉ , tinh xảo và nghệ thuật \n<br>-Không chỉ dừng lại thương hiệu thời trang nổi tiếng mà ngày nay Yves Saint Laurent cũng được biến đén là thương hiệu của các dòng mỹ phẩm cao cấp , xa xỉ được nhiều ngôi sao và giới thượng lưu trên thế giới ưa chuộng ', NULL);
INSERT INTO `thuonghieu` VALUES (15, 'Bottega Veneta', 'Một cái tên đình đám khác của những thương hiệu thời trang nổi tiếng thế giới được ưa chuộng không kém là bottega Veneta - thương hiệu cao cấp của ý \n<br>-Với những kỹ thuật tác chế thủ công lâu đời và tinh xảo giúp cho các mẫu thiết kế của thương hiệu này chứa đựng một phong cách rất riêng biệt , mang đậm đặc trưng nước ý :đơn giản ,tinh tế và thời thượng  ', NULL);

-- ----------------------------
-- Table structure for tintuc
-- ----------------------------
DROP TABLE IF EXISTS `tintuc`;
CREATE TABLE `tintuc`  (
  `MaTinTuc` int NOT NULL AUTO_INCREMENT,
  `TieuDe` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NoiDung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `NgayDang` datetime NULL DEFAULT NULL,
  `AnhTinTuc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MaNguoiDung` int NULL DEFAULT NULL,
  `deletedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`MaTinTuc`) USING BTREE,
  INDEX `MaNguoiDung`(`MaNguoiDung` ASC) USING BTREE,
  CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`MaNguoiDung`) REFERENCES `nguoidung` (`MaNguoiDung`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tintuc
-- ----------------------------
INSERT INTO `tintuc` VALUES (1, 'Tin Tức về áo sơ mi trắng tay bồng Kimi AK190082', 'là một sản phẩm thời trang xuất sắc, chắc chắn sẽ làm hài lòng những người yêu thời trang và quan tâm đến phong cách. Với thiết kế tinh tế, chiếc áo sơ mi này mang đến sự thanh lịch và sang trọng, phản ánh đẳng cấp của người mặc.', '2017-07-28 00:00:00', NULL, 1, NULL);
INSERT INTO `tintuc` VALUES (2, 'Tin tức về Áo blouse với cổ vest', 'Áo blouse với cổ vest là một trong những kiểu áo phù hợp với nhiều phong cách thời trang khác nhau. Các chi tiết tinh tế và độc đáo của áo blouse cùng cổ vest đã tạo ra một sự phá cách đầy tinh tế trong thời trang nữ.', '2020-09-15 00:00:00', NULL, 1, NULL);

-- ----------------------------
-- Procedure structure for sp_capnhat_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_capnhat_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_capnhat_DonHang`(IN p_MaDonHang INT,
    IN p_TinhTrang INT)
BEGIN
    -- Kiểm tra xem đơn hàng có tồn tại không
    IF EXISTS (SELECT * FROM DonHang WHERE MaDonHang = p_MaDonHang) THEN
        -- Cập nhật tình trạng của đơn hàng
        UPDATE DonHang dh 
        SET dh.TinhTrang = p_TinhTrang
        WHERE dh.MaDonHang = p_MaDonHang;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_confirm_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_confirm_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_confirm_NguoiDung`(IN p_ToKen text)
BEGIN
    UPDATE nguoidung 
    SET 
		EmailConfirmed = true
    WHERE ToKen = p_ToKen;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_Anh
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_Anh`;
delimiter ;;
CREATE PROCEDURE `sp_create_Anh`(IN p_HinhAnh LONGBLOB ,IN p_TenHinhAnh VARCHAR(20))
BEGIN
    INSERT INTO Anh
        (
            HinhAnh,TenHinhAnh
						
				)
    VALUES
        (
            p_HinhAnh,p_TenHinhAnh
        );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_CTHDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_CTHDN`;
delimiter ;;
CREATE PROCEDURE `sp_create_CTHDN`(IN p_MaHDN int,IN p_MaSanPham int,IN p_SoLuong int,IN p_GiaTien int)
BEGIN
    INSERT INTO chitiethoadonnhap
    (
        MaHDN,MaSanPham,SoLuong,GiaTien
    )
    VALUES
    (
        p_MaHDN,p_MaSanPham,p_SoLuong,p_GiaTien
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_CTTinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_CTTinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_create_CTTinTuc`(IN p_MaTinTuc int,
    IN p_NoiDung varchar(200))
BEGIN
    INSERT INTO chitiettintuc
    (
        MaTinTuc,NoiDungChiTiet
    )
    VALUES
    (
        p_MaTinTuc,p_NoiDung
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_donhang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_donhang`;
delimiter ;;
CREATE PROCEDURE `sp_create_donhang`(IN p_HoTen varchar(50),
    IN p_DiaChi varchar(50),
    IN p_SoDienThoai varchar(15),
    IN p_MaNguoiDung INT,
    IN p_TinhTrang int,
    IN p_PhuongThucThanhToan varchar(50),
    IN p_NgayGiao DATETIME,
    IN p_list_json_chitiet_hoadon JSON)
BEGIN
    DECLARE p_hoadon_id INT;
    -- Chèn thông tin đơn hàng
    INSERT INTO DonHang(NgayDat, NgayGiao, HoTen, DiaChi, SoDienThoai, PhuongThucThanhToan, MaNguoiDung, TinhTrang)
    VALUES (NOW(), p_NgayGiao, p_HoTen, p_DiaChi, p_SoDienThoai, p_PhuongThucThanhToan, p_MaNguoiDung, p_TinhTrang);
    SET p_hoadon_id = LAST_INSERT_ID();
    -- Chèn chi tiết đơn hàng 
    IF p_list_json_chitiet_hoadon IS NOT NULL THEN
        DROP TABLE IF EXISTS Results;
        CREATE TEMPORARY TABLE Results AS
        SELECT
            JSON_VALUE(p.value, '$.maSanPham') AS maSanPham,
            JSON_VALUE(p.value, '$.soLuong') AS soLuong,
            JSON_VALUE(p.value, '$.giaTien') AS giaTien
        FROM JSON_TABLE(p_list_json_chitiet_hoadon, '$[*]' COLUMNS (value JSON PATH '$')) AS p;
        -- Bắt đầu giao dịch
        START TRANSACTION;
        INSERT INTO ChiTietDonHang(MaDonHang, MaSanPham, SoLuong, GiaTien)
        SELECT
            p_hoadon_id,
            p.maSanPham,
            p.soLuong,
            p.giaTien
        FROM Results p;
       -- Cập nhật số lượng trong bảng sản phẩm
						UPDATE SanPham sp
						INNER JOIN Results r ON sp.MaSanPham = r.maSanPham
						SET sp.SoLuong = sp.SoLuong - r.soLuong
						WHERE sp.SoLuong >= r.soLuong; -- Ensure there's enough quantity available
        DROP TABLE IF EXISTS Results;
        COMMIT;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_Gia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_Gia`;
delimiter ;;
CREATE PROCEDURE `sp_create_Gia`(IN p_MaSanPham int ,IN p_NgayBD datetime , IN p_NgayKT datetime ,
    IN p_DonGia int)
BEGIN
    INSERT INTO gia
        (
            MaSanPham,NgayBD,NgayKT,DonGia
        )
    VALUES
        (
            p_MaSanPham,p_NgayBD ,p_NgayKT , p_DonGia
        );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_GiamGia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_GiamGia`;
delimiter ;;
CREATE PROCEDURE `sp_create_GiamGia`(IN p_MaSanPham int ,IN p_PhanTram int , IN p_NgayBD date ,IN  p_NgayKT date)
BEGIN
    INSERT INTO giamgia
        (
            MaSanPham,PhanTram,NgayBD ,NgayKT
        )
    VALUES
        (
            p_MaSanPham,p_PhanTram,p_NgayBD,p_NgayKT
        );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_GioiThieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_GioiThieu`;
delimiter ;;
CREATE PROCEDURE `sp_create_GioiThieu`(IN p_TieuDe VARCHAR(50),
  IN p_NoiDung longtext,
  IN p_HinhAnh longblob)
BEGIN
  INSERT INTO GioiThieu
  (
    TieuDe,
    NoiDung,
    HinhAnh
  )
  VALUES
  (
    p_TieuDe,
    p_NoiDung,
    p_HinhAnh
  );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_HoaDonNhap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_HoaDonNhap`;
delimiter ;;
CREATE PROCEDURE `sp_create_HoaDonNhap`(IN p_MaNhaCungCap int ,IN p_MaNguoiDung int)
BEGIN
    INSERT INTO hoadonnhap
    (
        NgayNhap,MaNhaCungCap,MaNguoiDung
    )
    VALUES
    (
        now(),p_MaNhaCungCap,p_MaNguoiDung
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_LienHe
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_LienHe`;
delimiter ;;
CREATE PROCEDURE `sp_create_LienHe`(IN p_Email VARCHAR(25),
    IN p_DiaChi varchar(30),
    IN p_SoDienThoai VARCHAR(15))
BEGIN
    INSERT INTO LienHe
    (
        Email,DiaChi,SoDienThoai
    )
    VALUES
    (
        p_Email,p_DiaChi,p_SoDienThoai
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_LoaiSanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_LoaiSanPham`;
delimiter ;;
CREATE PROCEDURE `sp_create_LoaiSanPham`(IN p_TenLoaiSanPham VARCHAR(50),p_GioiThieu varchar(100))
BEGIN
    INSERT INTO LoaiSanPham
    (
        TenLoaiSanPham,GioiThieu
    )
    VALUES
    (
        p_TenLoaiSanPham,p_GioiThieu
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_Menu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_Menu`;
delimiter ;;
CREATE PROCEDURE `sp_create_Menu`(IN p_TenMenu varchar(40),IN p_Link varchar(20))
BEGIN
  INSERT INTO menu
  (
    TenMenu,Link
  )
  VALUES
  (
    p_TenMenu,p_Link
  );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_create_NguoiDung`(IN p_TaiKhoan VARCHAR(55),IN p_MatKhau VARCHAR(500),IN p_Email VARCHAR(25),IN p_HoTen VARCHAR(50),IN p_NgaySinh DATETIME,IN p_GioiTinh VARCHAR(10)
  ,IN p_DiaChi VARCHAR(35),IN p_SoDienThoai VARCHAR(15),IN p_AnhDaiDien longblob,IN p_VaiTro varchar(50),IN p_ToKen text)
BEGIN
  INSERT INTO NguoiDung
  (
    TaiKhoan,MatKhau,Email,HoTen,NgaySinh,GioiTinh,DiaChi,SoDienThoai,AnhDaiDien,VaiTro,EmailConfirmed,ToKen
  )
  VALUES
  (
    p_TaiKhoan,p_MatKhau,p_Email,p_HoTen,p_NgaySinh,p_GioiTinh,p_DiaChi,p_SoDienThoai,p_AnhDaiDien,p_VaiTro,0,p_ToKen
  );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_NhaCungCap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_NhaCungCap`;
delimiter ;;
CREATE PROCEDURE `sp_create_NhaCungCap`(IN p_TenNhaCungCap varchar(20),
    IN p_DiaChi varchar(30),
    IN p_SoDienThoai VARCHAR(15),
	IN p_Email VARCHAR(25))
BEGIN
    INSERT INTO nhacungcap
    (
        TenNhaCungCap,DiaChi,SoDienThoai,Email
    )
    VALUES
    (
        p_TenNhaCungCap,p_DiaChi,p_SoDienThoai,p_Email
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_create_SanPham`(IN p_TenSP varchar(20),
    IN p_MoTa longtext,
    IN p_MaLoaiSanPham int,
    IN p_MaThuongHieu int,
    IN p_MaSize int,
	IN p_AnhDaiDien longblob)
BEGIN
    INSERT INTO SanPham
    (
        TenSP,MoTa,NgayTao,MaLoaiSanPham,MaThuongHieu,MaSize,AnhDaiDien,SoLuong 
    )
    VALUES
    (
        p_TenSP,p_MoTa,now(),p_MaLoaiSanPham,p_MaThuongHieu,p_MaSize,p_AnhDaiDien,0
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_Size
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_Size`;
delimiter ;;
CREATE PROCEDURE `sp_create_Size`(IN p_TenSize VARCHAR(50),IN p_MoTa TEXT)
BEGIN
    INSERT INTO Size
        (
            TenSize,MoTa
        )
    VALUES
        (
            p_TenSize,p_MoTa
        );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_Slide
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_Slide`;
delimiter ;;
CREATE PROCEDURE `sp_create_Slide`(IN p_Anh longblob)
begin
	insert into Slide(Anh)values(p_Anh);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_ThamSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_ThamSo`;
delimiter ;;
CREATE PROCEDURE `sp_create_ThamSo`(IN p_TenThamSo VARCHAR(50),p_KyHieu varchar(100),
    IN p_NoiDung text , IN p_Anh longblob)
BEGIN
    INSERT INTO thamso
    (
        TenThamSo,KyHieu,NoiDung,Anh
    )
    VALUES
    (
        p_TenThamSo,p_KyHieu,p_NoiDung,p_Anh
    );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_ThongSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_ThongSo`;
delimiter ;;
CREATE PROCEDURE `sp_create_ThongSo`(IN p_TenThongSo varchar(20),IN p_MoTa varchar(100),IN p_MaSanPham int)
BEGIN
  INSERT INTO thongso
  (
    TenThongSo,MoTa,MaSanPham
  )
  VALUES
  (
    p_TenThongSo,p_MoTa,p_MaSanPham
  );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_ThuongHieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_ThuongHieu`;
delimiter ;;
CREATE PROCEDURE `sp_create_ThuongHieu`(IN p_TenThuongHieu VARCHAR(50),IN p_GioiThieu TEXT)
BEGIN
    INSERT INTO ThuongHieu
        (
            TenThuongHieu,GioiThieu
        )
    VALUES
        (
            p_TenThuongHieu,p_GioiThieu
        );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_create_TinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_create_TinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_create_TinTuc`(IN p_TieuDe VARCHAR(50),
  IN p_NoiDung TEXT,
  IN p_AnhTinTuc longblob,
  IN p_MaNguoiDung int)
BEGIN
  INSERT INTO  tintuc
  (
    TieuDe,NoiDung,NgayDang,AnhTinTuc,MaNguoiDung
  )
  VALUES
  (
    p_TieuDe,p_NoiDung,now(),p_AnhTinTuc,p_MaNguoiDung
  );
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_dangnhap_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_dangnhap_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_dangnhap_NguoiDung`(IN p_TaiKhoan VARCHAR(100), IN p_MatKhau VARCHAR(255))
BEGIN
    SELECT * FROM NguoiDung WHERE TaiKhoan = p_TaiKhoan AND MatKhau = p_MatKhau;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_Anh
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_Anh`;
delimiter ;;
CREATE PROCEDURE `sp_delete_Anh`(IN p_MaAnh int)
BEGIN
    DELETE FROM anh
    WHERE MaAnh = p_MaAnh;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_CTHDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_CTHDN`;
delimiter ;;
CREATE PROCEDURE `sp_delete_CTHDN`(IN p_MaChiTiet INT)
BEGIN
    DELETE FROM chitiethoadonnhap
    WHERE MaChiTiet = p_MaChiTiet;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_CTTinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_CTTinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_delete_CTTinTuc`(IN p_MaChiTiet INT)
BEGIN
    DELETE FROM chitiettintuc
    WHERE MaChiTiet = p_MaChiTiet;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_Gia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_Gia`;
delimiter ;;
CREATE PROCEDURE `sp_delete_Gia`(IN p_MaGia INT)
BEGIN
    DELETE FROM gia
    WHERE MaGia = p_MaGia;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_GiamGia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_GiamGia`;
delimiter ;;
CREATE PROCEDURE `sp_delete_GiamGia`(IN p_MaGiamGia INT)
BEGIN
    DELETE FROM giamgia
    WHERE MaGiamGia = p_MaGiamGia;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_GioiThieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_GioiThieu`;
delimiter ;;
CREATE PROCEDURE `sp_delete_GioiThieu`(IN p_MaGioiThieu INT)
BEGIN
    DELETE FROM GioiThieu
    WHERE MaGioiThieu = p_MaGioiThieu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_HoaDonNhap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_HoaDonNhap`;
delimiter ;;
CREATE PROCEDURE `sp_delete_HoaDonNhap`(IN p_MaHDN INT)
BEGIN
    DELETE FROM hoadonnhap
    WHERE MaHDN = p_MaHDN;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_LienHe
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_LienHe`;
delimiter ;;
CREATE PROCEDURE `sp_delete_LienHe`(IN p_MaLienHe INT)
BEGIN
    DELETE FROM LienHe
    WHERE MaLienHe = p_MaLienHe;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_LoaiSanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_LoaiSanPham`;
delimiter ;;
CREATE PROCEDURE `sp_delete_LoaiSanPham`(IN p_MaLoaiSanPham INT)
BEGIN
    DELETE FROM LoaiSanPham
    WHERE MaLoaiSanPham = p_MaLoaiSanPham;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_Menu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_Menu`;
delimiter ;;
CREATE PROCEDURE `sp_delete_Menu`(IN p_MaMenu INT)
BEGIN
    DELETE FROM  menu
    WHERE MaMenu = p_MaMenu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_delete_NguoiDung`(IN p_MaNguoiDung int)
BEGIN
    DELETE FROM nguoidung nd 
    WHERE nd.MaNguoiDung = p_MaNguoiDung;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_NhaCungCap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_NhaCungCap`;
delimiter ;;
CREATE PROCEDURE `sp_delete_NhaCungCap`(IN p_MaNhaCungCap INT)
BEGIN
    DELETE FROM nhacungcap
     WHERE MaNhaCungCap = p_MaNhaCungCap;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_delete_SanPham`(IN p_MaSanPham INT)
BEGIN
    DELETE FROM SanPham
     WHERE MaSanPham = p_MaSanPham;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_Size
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_Size`;
delimiter ;;
CREATE PROCEDURE `sp_delete_Size`(IN p_MaSize INT)
BEGIN
    DELETE FROM Size
    WHERE MaSize = p_MaSize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_Slide
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_Slide`;
delimiter ;;
CREATE PROCEDURE `sp_delete_Slide`(IN p_MaSlide INT)
BEGIN
    DELETE FROM Slide
    WHERE MaSlide = p_MaSlide;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_ThamSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_ThamSo`;
delimiter ;;
CREATE PROCEDURE `sp_delete_ThamSo`(IN p_MaThamSo INT)
BEGIN
    DELETE FROM thamso
    WHERE MaThamSo = p_MaThamSo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_ThongSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_ThongSo`;
delimiter ;;
CREATE PROCEDURE `sp_delete_ThongSo`(IN p_MaThongSo INT)
BEGIN
    DELETE FROM  thongso
    WHERE MaThongSo = p_MaThongSo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_ThuongHieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_ThuongHieu`;
delimiter ;;
CREATE PROCEDURE `sp_delete_ThuongHieu`(IN p_MaThuongHieu INT)
BEGIN
    DELETE FROM ThuongHieu
    WHERE MaThuongHieu = p_MaThuongHieu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_delete_TinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_TinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_delete_TinTuc`(IN p_MaTỉnTuc INT)
BEGIN
    DELETE FROM tintuc
    WHERE MaTinTuc = p_MaTinTuc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_duyetdon_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_duyetdon_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_duyetdon_DonHang`(IN p_MaDonHang INT)
BEGIN
    -- Kiểm tra xem đơn hàng có tồn tại không
    IF EXISTS (SELECT * FROM DonHang WHERE MaDonHang = p_MaDonHang) THEN
        -- Cập nhật trạng thái của đơn hàng thành "Đã duyệt"
        UPDATE DonHang 
        SET TinhTrang = 1 
        WHERE MaDonHang = p_MaDonHang;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_Anh
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_Anh`;
delimiter ;;
CREATE PROCEDURE `sp_getall_Anh`()
BEGIN
  SELECT * from anh;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_CTHDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_CTHDN`;
delimiter ;;
CREATE PROCEDURE `sp_getall_CTHDN`()
BEGIN
  SELECT ct.*,hdn.NgayNhap,nd.HoTen from chitiethoadonnhap ct
  inner join hoadonnhap hdn on ct.MaHDN = hdn.MaHDN
  inner join nguoidung nd on hdn.MaNguoiDung = nd.MaNguoiDung;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_CTTinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_CTTinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_getall_CTTinTuc`()
BEGIN
  SELECT cttt.*,tt.TieuDe from chitiettintuc cttt
  inner join tintuc tt on cttt.MaTinTuc = tt.MaTinTuc;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_getall_DonHang`()
BEGIN
    SELECT
        d.MaDonHang, d.NgayDat, d.NgayGiao,
        d.TinhTrang, d.HoTen, d.SoDienThoai,
        d.DiaChi, nd.Email, CAST(SUM(ct.GiaTien * ct.SoLuong) AS SIGNED) AS TongTien
    FROM DonHang d 
    INNER JOIN nguoidung nd ON nd.MaNguoiDung = d.MaNguoiDung
    INNER JOIN chitietdonhang ct ON ct.MaDonHang = d.MaDonHang
    GROUP BY d.MaDonHang, d.NgayDat, d.NgayGiao,
             d.TinhTrang, d.HoTen, d.SoDienThoai,
             d.DiaChi, nd.Email;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_Gia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_Gia`;
delimiter ;;
CREATE PROCEDURE `sp_getall_Gia`(IN p_pageindex INT,
    IN p_pagesize INT)
BEGIN
    DECLARE start_index INT;DECLARE total_count INT;
    SET start_index = (p_pageindex - 1) * p_pagesize;
    SELECT COUNT(*) INTO total_count FROM gia; -- Added semicolon here
    SELECT total_count AS TotalCount, gg.*,sp.TenSP
    FROM gia g inner join sanpham sp on g.MaSanPham = sp.MaSanPham 
	LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_GiamGia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_GiamGia`;
delimiter ;;
CREATE PROCEDURE `sp_getall_GiamGia`(IN p_pageindex INT,
    IN p_pagesize INT)
BEGIN
    DECLARE start_index INT;DECLARE total_count INT;
    SET start_index = (p_pageindex - 1) * p_pagesize;
    SELECT COUNT(*) INTO total_count FROM giamgia; -- Added semicolon here
    SELECT total_count AS TotalCount, gg.*,sp.TenSP
    FROM giamgia gg inner join sanpham sp on gg.MaSanPham = sp.MaSanPham 
	LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_GioiThieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_GioiThieu`;
delimiter ;;
CREATE PROCEDURE `sp_getall_GioiThieu`()
BEGIN
  SELECT * from gioithieu;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_HoaDonNhap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_HoaDonNhap`;
delimiter ;;
CREATE PROCEDURE `sp_getall_HoaDonNhap`(IN p_pageindex INT,
    IN p_pagesize INT)
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    
    SET start_index = (p_pageindex - 1) * p_pagesize;
    
    SELECT COUNT(*) INTO total_count FROM hoadonnhap;
    
    SELECT hdn.*,nd.HoTen,ncc.TenNhaCungCap, total_count AS TotalCount
    FROM hoadonnhap hdn
    inner join nhacungcap ncc on ncc.MaNhaCungCap = hdn.MaNhaCungCap
    inner join nguoidung nd on nd.MaNguoiDung = hdn.MaNguoiDung
    ORDER BY MaHDN DESC
    LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_LienHe
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_LienHe`;
delimiter ;;
CREATE PROCEDURE `sp_getall_LienHe`(IN p_pageindex INT,
	IN p_pagesize INT,
    IN p_Email varchar(50),
    IN p_SoDienThoai varchar(15))
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    
    SET start_index = (p_pageindex - 1) * p_pagesize;
    
    SELECT COUNT(*) INTO total_count FROM lienhe lh
    WHERE    (p_Email = '' OR lh.Email LIKE CONCAT('%', p_Email, '%')) AND
            (p_SoDienThoai = '' OR lh.SoDienThoai LIKE CONCAT('%', p_SoDienThoai, '%')) ;
    SELECT *, total_count AS TotalCount
    FROM lienhe lh
    WHERE    (p_Email = '' OR lh.Email LIKE CONCAT('%', p_Email, '%')) AND
            (p_SoDienThoai = '' OR lh.SoDienThoai LIKE CONCAT('%', p_SoDienThoai, '%')) 
    ORDER BY lh.MaLienHe ASC 
    LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_LoaiSanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_LoaiSanPham`;
delimiter ;;
CREATE PROCEDURE `sp_getall_LoaiSanPham`(IN p_pageindex INT,
	IN p_pagesize INT,
    IN p_TenLoaiSanPham varchar(50))
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    
    SET start_index = (p_pageindex - 1) * p_pagesize;
    
    SELECT COUNT(*) INTO total_count FROM loaisanpham lsp
    WHERE    (p_TenLoaiSanPham = '' OR lsp.TenLoaiSanPham LIKE CONCAT('%', p_TenLoaiSanPham, '%')) ;
    SELECT *, total_count AS TotalCount
    FROM loaisanpham lsp
    WHERE    (p_TenLoaiSanPham = '' OR lsp.TenLoaiSanPham LIKE CONCAT('%', p_TenLoaiSanPham, '%'))
    ORDER BY lsp.MaLoaiSanPham desc
    LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_Menu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_Menu`;
delimiter ;;
CREATE PROCEDURE `sp_getall_Menu`(IN p_pageindex INT,
	IN p_pagesize INT,
    IN p_ten VARCHAR(255))
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    
    SET start_index = (p_pageindex - 1) * p_pagesize;
    
    SELECT COUNT(*) INTO total_count FROM Menu mn WHERE mn.TenMenu LIKE CONCAT('%', p_ten, '%');
    
    SELECT mn.*, total_count AS TotalCount
    FROM Menu mn
    WHERE mn.TenMenu LIKE CONCAT('%', p_ten, '%')
    ORDER BY MaMenu ASC 
    LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_getall_NguoiDung`(IN p_pageindex INT,
    IN p_pagesize INT)
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    
    SET start_index = (p_pageindex - 1) * p_pagesize;
    
    SELECT COUNT(*) INTO total_count FROM NguoiDung ;
    
    SELECT *, total_count AS TotalCount
    FROM NguoiDung
    ORDER BY MaNguoiDung DESC
    LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_NhaCungCap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_NhaCungCap`;
delimiter ;;
CREATE PROCEDURE `sp_getall_NhaCungCap`()
BEGIN
  SELECT * from nhacungcap;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_getall_SanPham`(IN p_pageindex INT,
    IN p_pagesize INT,
    IN p_TenSP text)
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    
    SET start_index = (p_pageindex - 1) * p_pagesize;
    
    SELECT COUNT(*) INTO total_count FROM sanpham WHERE TenSP LIKE CONCAT('%', p_TenSP, '%');
    
    SELECT total_count AS TotalCount,
            s.MaSanPham,s.TenSP,s.MoTa,s.AnhDaiDien,t.TenThuongHieu,l.TenLoaiSanPham,g.DonGia AS DonGia,
            gg.PhanTram AS PhanTram,sz.MaSize,sz.TenSize,s.MaThuongHieu,s.MaLoaiSanPham,
            CAST((g.DonGia - (g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam
        FROM SanPham AS s
        INNER JOIN Gia g ON s.MaSanPham = g.MaSanPham
        INNER JOIN ThuongHieu t ON s.MaThuongHieu = t.MaThuongHieu
        INNER JOIN LoaiSanPham l ON s.MaLoaiSanPham = l.MaLoaiSanPham
        inner join Size sz on sz.MaSize = s.MaSize
        LEFT JOIN GiamGia gg ON s.MaSanPham = gg.MaSanPham
        WHERE s.TenSP LIKE CONCAT('%', p_TenSP, '%')
        ORDER BY s.MaSanPham DESC 
        LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_Size
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_Size`;
delimiter ;;
CREATE PROCEDURE `sp_getall_Size`()
BEGIN
  SELECT * from size;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_Slide
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_Slide`;
delimiter ;;
CREATE PROCEDURE `sp_getall_Slide`()
begin 
	select * from slide ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_ThamSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_ThamSo`;
delimiter ;;
CREATE PROCEDURE `sp_getall_ThamSo`()
BEGIN
  SELECT * from thamso;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_ThongSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_ThongSo`;
delimiter ;;
CREATE PROCEDURE `sp_getall_ThongSo`()
BEGIN
  SELECT ts.* ,sp.TenSP from thongso ts inner join sanpham sp
  on ts.MaSanPham = sp.MaSanPham ;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_ThuongHieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_ThuongHieu`;
delimiter ;;
CREATE PROCEDURE `sp_getall_ThuongHieu`()
BEGIN
  SELECT * from thuonghieu;  
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getall_TinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getall_TinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_getall_TinTuc`(IN p_pageindex INT,
    IN p_pagesize INT)
BEGIN
    DECLARE start_index INT;DECLARE total_count INT;
    SET start_index = (p_pageindex - 1) * p_pagesize;
    SELECT COUNT(*) INTO total_count FROM tintuc; -- Added semicolon here
    SELECT total_count AS TotalCount,   tt.*,nd.HoTen from tintuc as tt 
    inner join nguoidung as nd 
          on tt.MaNguoiDung = nd.MaNguoiDung
	LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_CTHDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_CTHDN`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_CTHDN`(IN p_MaChiTiet INT)
BEGIN
    SELECT ct.*,hdn.NgayNhap,nd.HoTen from chitiethoadonnhap ct
    inner join hoadonnhap hdn on ct.MaHDN = hdn.MaHDN
	inner join nguoidung nd on hdn.MaNguoiDung = nd.MaNguoiDung
    WHERE ct.MaChiTiet = p_MaChiTiet;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_CTTinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_CTTinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_CTTinTuc`(IN p_MaChiTiet INT)
BEGIN
    SELECT cttt.*,tt.TieuDe from chitiettintuc cttt
    inner join tintuc tt on cttt.MaTinTuc = tt.MaTinTuc
    WHERE cttt.MaChiTiet = p_MaChiTiet;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_DonHang`(IN p_MaDonHang INT)
BEGIN
    SELECT d.*, nd.TaiKhoan,CAST(SUM(c.GiaTien * c.SoLuong) AS SIGNED) AS TongTien
		FROM donhang d
		INNER JOIN chitietdonhang c ON d.MaDonHang = c.MaDonHang
		INNER JOIN nguoidung nd ON d.MaNguoiDung = nd.MaNguoiDung
		WHERE d.MaDonHang = p_MaDonHang
    GROUP BY d.MaDonHang, nd.TaiKhoan;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_GioiThieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_GioiThieu`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_GioiThieu`(IN p_MaGioiThieu INT)
BEGIN
    SELECT *
    FROM GioiThieu gt
    WHERE gt.MaGioiThieu = p_MaGioiThieu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_HoaDonNhap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_HoaDonNhap`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_HoaDonNhap`(IN p_MaHDN INT)
BEGIN
    SELECT hdn.*,nd.HoTen ,ncc.TenNhaCungCap ,CAST(SUM(ct.GiaTien * ct.SoLuong) AS SIGNED) AS TongTien,
    sum(ct.SoLuong) AS TongSoLuong 
    FROM hoadonnhap hdn
    INNER JOIN nhacungcap ncc ON ncc.MaNhaCungCap = hdn.MaNhaCungCap 
    INNER JOIN nguoidung nd ON nd.MaNguoiDung = hdn.MaNguoiDung 
    INNER JOIN chitiethoadonnhap ct ON ct.MaHDN = hdn.MaHDN  
    WHERE hdn.MaHDN = p_MaHDN
    GROUP BY hdn.MaHDN;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_NguoiDung`(IN p_MaNguoiDung INT)
BEGIN
    SELECT * from nguoidung nd 
    WHERE nd.MaNguoiDung = p_MaNguoiDung;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_SanPham`(IN p_MaSanPham INT)
BEGIN
    SELECT s.*, l.TenLoaiSanPham, t.TenThuongHieu,sz.TenSize,
    g.DonGia AS DonGia,
	gg.PhanTram AS PhanTram,
	CAST((g.DonGia - (g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam,
	(SELECT JSON_ARRAYAGG(JSON_OBJECT('TenThongSo', TSo.TenThongSo, 'MoTa', TSo.MoTa)) FROM ThongSo TSo WHERE TSo.MaSanPham = s.MaSanPham) AS listjson_thongso
    FROM SanPham s
    INNER JOIN LoaiSanPham l ON s.MaLoaiSanPham = l.MaLoaiSanPham
    INNER JOIN ThuongHieu t ON t.MaThuongHieu = s.MaThuongHieu
    LEFT JOIN Gia g ON g.MaSanPham = s.MaSanPham
    inner join Size sz on sz.MaSize = s.MaSize 
    LEFT JOIN GiamGia gg ON gg.MaSanPham = s.MaSanPham
    WHERE s.MaSanPham = p_MaSanPham
    GROUP BY
    s.MaSanPham,
    s.TenSP,
    s.AnhDaiDien,
    s.MoTa,
    G.DonGia,
    gg.PhanTram;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_Slide
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_Slide`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_Slide`(IN p_MaSlide INT)
BEGIN
    SELECT *
    FROM Slide
    WHERE MaSlide = p_MaSlide;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_ThamSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_ThamSo`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_ThamSo`(IN p_MaThamSo INT)
BEGIN
    SELECT *
    FROM ThamSo 
    WHERE MaThamSo = p_MaThamSo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbyid_TinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbyid_TinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_getbyid_TinTuc`(IN p_MaTinTuc INT)
BEGIN
  SELECT
    t.*,
    nd.HoTen,
    (
      SELECT JSON_ARRAYAGG(JSON_OBJECT('NoiDungChiTiet', ct.NoiDungChiTiet))
      FROM ChiTietTinTuc ct
      WHERE ct.MaTinTuc = t.MaTinTuc
    ) AS listjson_NoiDungCT
  FROM
    TinTuc t
    INNER JOIN NguoiDung nd ON nd.MaNguoiDung = t.MaNguoiDung
  WHERE
    t.MaTinTuc = p_MaTinTuc
  GROUP BY
    t.MaTinTuc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getbykyhieu_ThamSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getbykyhieu_ThamSo`;
delimiter ;;
CREATE PROCEDURE `sp_getbykyhieu_ThamSo`(IN p_KyHieu varchar(50))
BEGIN
    SELECT * 
		FROM thamso 
		WHERE KyHieu = p_KyHieu COLLATE utf8mb4_unicode_ci;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getnew_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getnew_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_getnew_DonHang`()
begin 
	select dh.MaDonHang from donhang dh order by dh.MaDonHang desc
    limit 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getnew_HoaDonNhap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getnew_HoaDonNhap`;
delimiter ;;
CREATE PROCEDURE `sp_getnew_HoaDonNhap`()
begin 
	select hdn.MaHDN from hoadonnhap hdn order by hdn.MaHDN desc
    limit 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_getnew_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_getnew_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_getnew_SanPham`()
begin 
	select sp.MaSanPham from sanpham sp order by sp.MaSanPham desc
    limit 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_CTDonHang_by_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_CTDonHang_by_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_get_CTDonHang_by_DonHang`(IN p_MaDonHang INT)
BEGIN
    SELECT ctdh.*, sp.TenSP, dh.*, SUM(ctdh.SoLuong * ctdh.GiaTien) AS TongTien
    FROM chitietdonhang ctdh
    INNER JOIN sanpham sp ON sp.MaSanPham = ctdh.MaSanPham
    INNER JOIN donhang dh ON dh.MaDonHang = ctdh.MaDonHang
    WHERE ctdh.MaDonHang = p_MaDonHang
    GROUP BY ctdh.MaChiTiet, sp.TenSP, dh.MaDonHang;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_CTHDN_by_HDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_CTHDN_by_HDN`;
delimiter ;;
CREATE PROCEDURE `sp_get_CTHDN_by_HDN`(IN p_MaHDN INT)
BEGIN
    SELECT hdn.MaHDN, hdn.NgayNhap,sp.MaSanPham,sp.TenSP,ct.SoLuong,ct.GiaTien ,ct.MaChiTiet
    FROM chitiethoadonnhap ct
    INNER JOIN hoadonnhap hdn ON hdn.MaHDN = ct.MaHDN
    INNER JOIN sanpham sp ON ct.MaSanPham = sp.MaSanPham
    WHERE hdn.MaHDN = p_MaHDN;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_CTTinTuc_by_TinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_CTTinTuc_by_TinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_get_CTTinTuc_by_TinTuc`(IN p_MaTinTuc INT)
BEGIN
    select cttt.* ,tt.TieuDe ,nd.HoTen
    From chitiettintuc cttt
    INNER join tintuc tt on cttt.MaTinTuc = tt.MaTinTuc 
    inner join nguoidung nd on nd.MaNguoiDung = tt.MaNguoiDung
    where cttt.MaTinTuc =p_MaTinTuc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_GiamGia_by_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_GiamGia_by_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_get_GiamGia_by_SanPham`(IN p_MaSanPham int)
begin 
	select gg.* ,sp.TenSP from giamgia gg
    inner join sanpham sp on sp.MaSanPham = gg.MaSanPham 
    where gg.MaSanPham = p_MaSanPham ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_Gia_by_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_Gia_by_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_get_Gia_by_SanPham`(IN p_MaSanPham int)
begin 
	select g.* ,sp.TenSP from gia g
    inner join sanpham sp on sp.MaSanPham = g.MaSanPham 
    where g.MaSanPham = p_MaSanPham ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_lichsumuahang_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_lichsumuahang_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_get_lichsumuahang_DonHang`(IN p_MaNguoiDung INT)
BEGIN
    -- Lấy thông tin chi tiết hóa đơn cho khách hàng đã đặt hàng
    SELECT
        HD.MaDonHang,HD.NgayDat,HD.TinhTrang,HD.NgayGiao,
        HD.HoTen,HD.DiaChi,HD.SoDienThoai
    FROM
        donhang HD
    WHERE
        HD.MaNguoiDung = p_MaNguoiDung
    GROUP BY
       HD.MaDonHang
    ORDER BY
        HD.MaDonHang DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_SanPham_cungloai
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_SanPham_cungloai`;
delimiter ;;
CREATE PROCEDURE `sp_get_SanPham_cungloai`(IN p_MaSanPham int ,
    IN p_MaLoaiSanPham int)
BEGIN
	 SELECT s.*, l.TenLoaiSanPham, t.TenThuongHieu,sz.TenSize ,
   g.DonGia AS DonGia,
   gg.PhanTram AS PhanTram,
   CAST((g.DonGia - (g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam
   FROM SanPham s
   INNER JOIN LoaiSanPham l ON s.MaLoaiSanPham = l.MaLoaiSanPham
   INNER JOIN ThuongHieu t ON t.MaThuongHieu = s.MaThuongHieu
   LEFT JOIN Gia g ON g.MaSanPham = s.MaSanPham
   inner join Size sz on sz.MaSize = s.MaSize
   LEFT JOIN GiamGia gg ON gg.MaSanPham = s.MaSanPham
   WHERE 
       s.MaSanPham != p_MaSanPham  And l.MaLoaiSanPham = p_MaLoaiSanPham And 
     (
        (gg.PhanTram IS NOT NULL AND NOW() BETWEEN gg.NgayBD AND gg.NgayKT)
        OR
        (gg.PhanTram IS NULL AND NOW() BETWEEN g.NgayBD AND g.NgayKT)
        OR
        (NOW() BETWEEN g.NgayBD AND g.NgayKT AND gg.PhanTram IS NULL)
     )
   GROUP BY
     s.MaSanPham,s.TenSP,s.MaSize,s.AnhDaiDien,s.SoLuong,s.MoTa,G.DonGia,gg.PhanTram;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_ThongSo_by_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_ThongSo_by_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_get_ThongSo_by_SanPham`(IN p_MaSanPham INT)
BEGIN
    select ts.*  from thongso ts 
    where ts.MaSanPham = p_MaSanPham;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_thongtinlienhe_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_thongtinlienhe_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_get_thongtinlienhe_DonHang`()
BEGIN
    SELECT lh.*
    FROM lienhe lh;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_get_TinTucKhac
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_get_TinTucKhac`;
delimiter ;;
CREATE PROCEDURE `sp_get_TinTucKhac`(IN p_MaTinTuc INT)
BEGIN
  SELECT
    t.*
  FROM
    TinTuc t
  WHERE
    t.MaTinTuc != p_MaTinTuc
  GROUP BY
    t.MaTinTuc
  LIMIT 5;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_huydonhang_DonHang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_huydonhang_DonHang`;
delimiter ;;
CREATE PROCEDURE `sp_huydonhang_DonHang`(IN p_MaDonHang INT,
    IN p_MaSanPham INT)
BEGIN
    DECLARE SoLuongHuy INT;
    -- Lấy số lượng của sản phẩm cần hủy từ ChiTietDonHang
    SELECT SoLuong INTO SoLuongHuy
    FROM chitietdonhang
    WHERE MaSanPham = p_MaSanPham AND MaDonHang = p_MaDonHang;
    -- Xóa ChiTietDonHang
    DELETE FROM chitietdonhang
    WHERE MaSanPham = p_MaSanPham AND MaDonHang = p_MaDonHang;
    UPDATE sanpham
    SET SoLuong = SoLuong + SoLuongHuy
    WHERE MaSanPham = p_MaSanPham;
    SELECT COUNT(*) INTO SoLuongHuy
    FROM chitietdonhang
    WHERE MaDonHang = p_MaDonHang;
    -- Nếu không còn ChiTietDonHang nào, thì xóa DonHang
    IF SoLuongHuy = 0 THEN
        DELETE FROM donhang
        WHERE MaDonHang = p_MaDonHang;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_kiemtrataikhoan_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_kiemtrataikhoan_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_kiemtrataikhoan_NguoiDung`(IN p_TaiKhoan varchar(50),IN p_Email varchar(30))
begin 
	select * from nguoidung where TaiKhoan = p_TaiKhoan or Email = p_Email;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lay_san_pham_ban_chay
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lay_san_pham_ban_chay`;
delimiter ;;
CREATE PROCEDURE `sp_lay_san_pham_ban_chay`(IN p_SoLuong INT)
BEGIN
  SELECT
    s.MaSanPham,s.TenSP,s.MaSize,s.AnhDaiDien,s.MoTa,g.DonGia AS DonGia,gg.PhanTram AS PhanTram,SUM(CT.soluong) AS SoLuong,
	CAST((g.DonGia - (g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam
    FROM SanPham s
	INNER JOIN Gia G ON G.MaSanPham = s.MaSanPham
    LEFT JOIN GiamGia GG ON GG.MaSanPham = s.MaSanPham
    INNER JOIN ChiTietDonHang CT ON CT.MaSanPham = s.MaSanPham
    INNER JOIN donhang dh on dh.MaDonHang = CT.MaDonHang
    WHERE 
    dh.NgayDat >= NOW() - INTERVAL 30 DAY AND  dh.TinhTrang = 6 AND 
     (
        (gg.PhanTram IS NOT NULL AND NOW() BETWEEN gg.NgayBD AND gg.NgayKT)
        OR
        (gg.PhanTram IS NULL AND NOW() BETWEEN G.NgayBD AND G.NgayKT)
        OR
        (NOW() BETWEEN G.NgayBD AND G.NgayKT AND gg.PhanTram IS NULL)
     )
  GROUP BY
    s.MaSanPham,s.TenSP,s.MaSize,s.AnhDaiDien,s.MoTa,G.DonGia,gg.PhanTram
  ORDER BY
    SoLuong DESC
  LIMIT
    p_SoLuong;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lay_san_pham_giam_gia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lay_san_pham_giam_gia`;
delimiter ;;
CREATE PROCEDURE `sp_lay_san_pham_giam_gia`(IN p_SoLuong INT)
BEGIN
  SELECT
    s.MaSanPham,
    s.TenSP,
    s.AnhDaiDien,
    g.DonGia AS DonGia,
    sz.TenSize,
    l.TenLoaiSanPham, t.TenThuongHieu,
	gg.PhanTram AS PhanTram,
	s.SoLuong,
	CAST((g.DonGia - (g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam
  FROM
    SanPham s
    INNER JOIN Gia G ON G.MaSanPham = s.MaSanPham
    inner JOIN GiamGia GG ON GG.MaSanPham = s.MaSanPham
    inner join Size sz on sz.MaSize = s.MaSize 
    INNER JOIN LoaiSanPham l ON s.MaLoaiSanPham = l.MaLoaiSanPham
   INNER JOIN ThuongHieu t ON t.MaThuongHieu = s.MaThuongHieu
  WHERE
    s.SoLuong != 0 AND 
    NOW() BETWEEN gg.NgayBD AND gg.NgayKT
  GROUP BY
    s.MaSanPham,s.TenSP,S.MaSize,s.AnhDaiDien,G.DonGia,gg.PhanTram,s.SoLuong
  ORDER BY
    gg.PhanTram DESC
  LIMIT
    p_SoLuong;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_lay_san_pham_moi
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_lay_san_pham_moi`;
delimiter ;;
CREATE PROCEDURE `sp_lay_san_pham_moi`(IN p_SoLuong INT)
BEGIN
   SELECT s.*, l.TenLoaiSanPham, t.TenThuongHieu,sz.TenSize ,
   g.DonGia AS DonGia,
   gg.PhanTram AS PhanTram,
   CAST((g.DonGia - (g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam
   FROM SanPham s
   INNER JOIN LoaiSanPham l ON s.MaLoaiSanPham = l.MaLoaiSanPham
   INNER JOIN ThuongHieu t ON t.MaThuongHieu = s.MaThuongHieu
   LEFT JOIN Gia g ON g.MaSanPham = s.MaSanPham
   inner join Size sz on sz.MaSize = s.MaSize
   LEFT JOIN GiamGia gg ON gg.MaSanPham = s.MaSanPham
   WHERE 
    s.SoLuong != 0 and 
     (
        (gg.PhanTram IS NOT NULL AND NOW() BETWEEN gg.NgayBD AND gg.NgayKT)
        OR
        (gg.PhanTram IS NULL AND NOW() BETWEEN g.NgayBD AND g.NgayKT)
        OR
        (NOW() BETWEEN g.NgayBD AND g.NgayKT AND gg.PhanTram IS NULL)
     )
   GROUP BY
     s.MaSanPham,s.TenSP,s.MaSize,s.AnhDaiDien,s.MoTa,G.DonGia,gg.PhanTram
   ORDER BY
     s.NgayTao DESC
   LIMIT p_SoLuong;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_resetpassword_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_resetpassword_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_resetpassword_NguoiDung`(IN p_TaiKhoan VARCHAR(255), IN p_MatKhau VARCHAR(255))
BEGIN
    DECLARE user_count INT;
    -- Kiểm tra xem người dùng có tồn tại không
    SELECT COUNT(*) INTO user_count FROM nguoidung WHERE TaiKhoan = p_TaiKhoan;
    -- Nếu người dùng tồn tại, cập nhật mật khẩu của họ
    IF user_count > 0 THEN
        UPDATE nguoidung SET  MatKhau = p_MatKhau WHERE  TaiKhoan = p_TaiKhoan;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_search_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_search_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_search_SanPham`(IN p_pageindex INT,
     IN p_pagesize INT,
    IN p_MaSanPham INT,
    IN p_TenSP VARCHAR(255),
    IN p_TenThuongHieu VARCHAR(255),
    IN p_TenLoaiSanPham VARCHAR(255),
    IN p_MinGia INT,
    IN p_MaxGia INT,
    IN p_MaThuongHieu INT,
    IN p_MaLoaiSanPham INT)
BEGIN
    DECLARE start_index INT;
    DECLARE total_count INT;
    SET start_index = (p_pageindex - 1) * p_pagesize;

    SELECT COUNT(DISTINCT s.MaSanPham) INTO total_count  
    FROM SanPham AS s
    INNER JOIN Gia AS g ON s.MaSanPham = g.MaSanPham
    INNER JOIN ThuongHieu AS t ON s.MaThuongHieu = t.MaThuongHieu
    INNER JOIN LoaiSanPham AS l ON s.MaLoaiSanPham = l.MaLoaiSanPham
    LEFT JOIN GiamGia AS gg ON s.MaSanPham = gg.MaSanPham 
    WHERE 
    (
        (p_MaSanPham IS NULL OR s.MaSanPham = p_MaSanPham) AND
        (p_MaLoaiSanPham IS NULL OR s.MaLoaiSanPham = p_MaLoaiSanPham) AND
        (p_MaThuongHieu IS NULL OR s.MaThuongHieu = p_MaThuongHieu) AND
        (p_TenSP = '' OR s.TenSP LIKE CONCAT('%', p_TenSP, '%')) AND
        (p_TenThuongHieu = '' OR t.TenThuongHieu LIKE CONCAT('%', p_TenThuongHieu, '%')) AND
        (p_TenLoaiSanPham = '' OR l.TenLoaiSanPham LIKE CONCAT('%', p_TenLoaiSanPham, '%')) AND
        (
            (p_MinGia IS NULL AND p_MaxGia IS NULL)
            OR 
            (
                p_MinGia IS NOT NULL 
                AND p_MaxGia IS NULL 
                AND IF(gg.PhanTram IS NULL, g.DonGia, CAST(( g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED)) >= p_MinGia
            )
            OR (
                p_MinGia IS NULL 
                AND p_MaxGia IS NOT NULL 
                AND IF(gg.PhanTram IS NULL, g.DonGia, CAST(( g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED))  <= p_MaxGia
            )
            OR (
                p_MinGia IS NOT NULL 
                AND p_MaxGia IS NOT NULL 
                AND IF(gg.PhanTram IS NULL, g.DonGia, CAST(( g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED))  BETWEEN p_MinGia AND p_MaxGia
            )
        ) AND 
        (
            (gg.PhanTram IS NOT NULL AND NOW() BETWEEN gg.NgayBD AND gg.NgayKT)
            OR
            (gg.PhanTram IS NULL AND NOW() BETWEEN g.NgayBD AND g.NgayKT)
			OR
            (NOW() BETWEEN g.NgayBD AND g.NgayKT AND gg.PhanTram IS NULL)
        )
    );

    SELECT total_count AS TotalCount,
            s.MaSanPham,
        s.TenSP,
        s.AnhDaiDien,
        t.TenThuongHieu,
        l.TenLoaiSanPham,
        g.DonGia AS DonGia, 
        gg.PhanTram AS PhanTram,
        s.SoLuong, 
        CAST(( g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED) AS GiaMoiKhiGiam
    FROM SanPham AS s
    INNER JOIN Gia AS g ON s.MaSanPham = g.MaSanPham
    INNER JOIN ThuongHieu AS t ON s.MaThuongHieu = t.MaThuongHieu
    INNER JOIN LoaiSanPham AS l ON s.MaLoaiSanPham = l.MaLoaiSanPham
    LEFT JOIN GiamGia AS gg ON s.MaSanPham = gg.MaSanPham
    WHERE
    (
        (p_MaSanPham IS NULL OR s.MaSanPham = p_MaSanPham) AND
        (p_MaLoaiSanPham IS NULL OR s.MaLoaiSanPham = p_MaLoaiSanPham) AND
        (p_MaThuongHieu IS NULL OR s.MaThuongHieu = p_MaThuongHieu) AND
        (p_TenSP = '' OR s.TenSP LIKE CONCAT('%', p_TenSP, '%')) AND
        (p_TenThuongHieu = '' OR t.TenThuongHieu LIKE CONCAT('%', p_TenThuongHieu, '%')) AND
        (p_TenLoaiSanPham = '' OR l.TenLoaiSanPham LIKE CONCAT('%', p_TenLoaiSanPham, '%')) AND
        (
            (p_MinGia IS NULL AND p_MaxGia IS NULL)
            OR 
            (
                p_MinGia IS NOT NULL 
                AND p_MaxGia IS NULL 
                AND IF(gg.PhanTram IS NULL, g.DonGia, CAST(( g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED)) >= p_MinGia
            )
            OR (
                p_MinGia IS NULL 
                AND p_MaxGia IS NOT NULL 
                AND IF(gg.PhanTram IS NULL, g.DonGia, CAST(( g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED))  <= p_MaxGia
            )
            OR (
                p_MinGia IS NOT NULL 
                AND p_MaxGia IS NOT NULL 
                AND IF(gg.PhanTram IS NULL, g.DonGia, CAST((g.DonGia - ( g.DonGia / 100 * gg.PhanTram)) AS SIGNED))  BETWEEN p_MinGia AND p_MaxGia
            )
        ) AND 
        (
            (gg.PhanTram IS NOT NULL AND NOW() BETWEEN gg.NgayBD AND gg.NgayKT)
            OR
            (gg.PhanTram IS NULL AND NOW() BETWEEN g.NgayBD AND g.NgayKT)
            OR
            (NOW() BETWEEN g.NgayBD AND g.NgayKT AND gg.PhanTram IS NULL)
        )
    )
    GROUP BY s.MaSanPham, s.TenSP, s.AnhDaiDien, t.TenThuongHieu, l.TenLoaiSanPham, g.DonGia, gg.PhanTram, s.SoLuong
    LIMIT start_index, p_pagesize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ThongKe_doanhthutheonam
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ThongKe_doanhthutheonam`;
delimiter ;;
CREATE PROCEDURE `sp_ThongKe_doanhthutheonam`()
BEGIN
    SELECT
        YEAR(dh.NgayDat) AS Nam,
        SUM(ctdh.soluong * ctdh.giatien) AS DoanhThuTheoNam
    FROM
        donhang dh
        JOIN chitietdonhang ctdh ON dh.MaDonHang = ctdh.MaDonHang 
    WHERE
        dh.TinhTrang = 6
        AND YEAR(dh.NgayDat) >= YEAR(DATE_SUB(CURDATE(), INTERVAL 5 YEAR))
    GROUP BY
        YEAR(dh.NgayDat)
    ORDER BY
        Nam ASC
    LIMIT 5;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ThongKe_doanhthutheothang
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ThongKe_doanhthutheothang`;
delimiter ;;
CREATE PROCEDURE `sp_ThongKe_doanhthutheothang`()
BEGIN
    SELECT ROW_NUMBER() OVER(ORDER BY YEAR(d.ngaydat) DESC, MONTH(d.ngaydat) DESC) AS STT, 
           CONCAT(MONTH(d.ngaydat), '/', YEAR(d.ngaydat)) AS ThoiGian, 
           SUM(c.soluong * c.giatien) AS DoanhThuTheoThang
    FROM donhang d 
    INNER JOIN chitietdonhang c ON d.MaDonHang = c.MaDonHang
    WHERE d.TinhTrang = 6
      AND d.NgayDat >= DATE_SUB(NOW(), INTERVAL 5 MONTH)
    GROUP BY YEAR(d.ngaydat), MONTH(d.ngaydat),ThoiGian
    ORDER BY YEAR(d.ngaydat) ASC, MONTH(d.ngaydat) ASC
    LIMIT 5;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ThongKe_nguoidungmuanhieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ThongKe_nguoidungmuanhieu`;
delimiter ;;
CREATE PROCEDURE `sp_ThongKe_nguoidungmuanhieu`()
BEGIN
    WITH Last5Years AS (
        SELECT DISTINCT YEAR(NgayDat) AS Nam
        FROM donhang
        WHERE YEAR(NgayDat) >= YEAR(DATE_SUB(CURDATE(), INTERVAL 5 YEAR))
        ORDER BY Nam DESC
    ),
    DoanhThuTheoNam AS (
        SELECT
            nd.HoTen,
            YEAR(dh.NgayDat) AS Nam,
            SUM(ctdh.soluong * ctdh.giatien) AS DoanhThu,
            RANK() OVER (PARTITION BY YEAR(dh.NgayDat) ORDER BY SUM(ctdh.soluong * ctdh.giatien) DESC) AS Ranking
        FROM
            donhang dh
            JOIN chitietdonhang ctdh ON dh.MaDonHang = ctdh.MaDonHang 
            JOIN NguoiDung nd ON dh.MaNguoiDung = nd.MaNguoiDung
            JOIN Last5Years ON YEAR(dh.NgayDat) = Last5Years.Nam
        WHERE
            dh.TinhTrang = 6
        GROUP BY
            YEAR(dh.NgayDat), nd.HoTen
    )
    SELECT *
    FROM DoanhThuTheoNam
    WHERE Ranking <= 5
    ORDER BY Nam ASC, DoanhThu DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ThongKe_sanphambanchay
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ThongKe_sanphambanchay`;
delimiter ;;
CREATE PROCEDURE `sp_ThongKe_sanphambanchay`()
BEGIN
    SELECT
        ctdh.MaSanPham AS MaSanPham,
        sp.TenSP AS TenSanPham,
        SUM(ctdh.soluong) AS SoLuongBan
    FROM
        chitietdonhang ctdh
        INNER JOIN donhang dh ON dh.MaDonHang = ctdh.MaDonHang
        JOIN sanpham sp ON ctdh.MaSanPham = sp.MaSanPham
    WHERE 
        dh.TinhTrang = 6
        AND dh.NgayDat >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH) 
    GROUP BY
        MaSanPham, TenSanPham
    ORDER BY
        SoLuongBan DESC
    LIMIT 5;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_ThongKe_tongsoluong
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_ThongKe_tongsoluong`;
delimiter ;;
CREATE PROCEDURE `sp_ThongKe_tongsoluong`()
BEGIN
    DECLARE TongSanPham INT;
    DECLARE TongNguoiDung INT;
    DECLARE TongDoanhThu INT;
    -- Tính tổng số sản phẩm
    SELECT COUNT(*) INTO TongSanPham FROM sanpham;
    -- Tính tổng số người dùng
    SELECT COUNT(*) INTO TongNguoiDung FROM nguoidung;
    -- Tính tổng doanh thu
    SELECT SUM(ctdh.SoLuong * ctdh.GiaTien) INTO TongDoanhThu
    FROM   donhang dh
    INNER JOIN chitietdonhang ctdh ON dh.MaDonHang = ctdh.MaDonHang
    WHERE  dh.TinhTrang = 6;
    -- Hiển thị kết quả
    SELECT TongSanPham, TongNguoiDung, TongDoanhThu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_Anh
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_Anh`;
delimiter ;;
CREATE PROCEDURE `sp_update_Anh`(IN p_MaAnh int ,IN p_HinhAnh LONGBLOB ,IN p_TenHinhAnh VARCHAR(20))
BEGIN
    UPDATE anh
    SET
        HinhAnh = IFNULL(p_HinhAnh,HinhAnh),
       TenHinhAnh = IFNULL(p_TenHinhAnh, TenHinhAnh)
    WHERE MaAnh = p_MaAnh;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_CTHDN
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_CTHDN`;
delimiter ;;
CREATE PROCEDURE `sp_update_CTHDN`(IN p_MaChiTiet INT,
    IN p_MaHDN int,IN p_MaSanPham int,IN p_SoLuong int,IN p_GiaTien int)
BEGIN
    UPDATE chitiethoadonnhap
    SET
        MaHDN = IFNULL(p_MaHDN,MaHDN),
		MaSanPham = IFNULL(p_MaSanPham,MaSanPham),
        SoLuong = IFNULL(p_SoLuong,SoLuong),
        GiaTien = IFNULL(p_GiaTien,GiaTien)
    WHERE MaChiTiet = p_MaChiTiet;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_CTTinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_CTTinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_update_CTTinTuc`(IN p_MaChiTiet INT,
	IN p_MaTinTuc int,
    IN p_NoiDung varchar(200))
BEGIN
    UPDATE chitiettintuc
    SET
        MaTinTuc = IFNULL(p_MaTinTuc,MaTinTuc),
		NoiDungChiTiet = IFNULL(p_NoiDung,NoiDungChiTiet)
    WHERE MaChiTiet = p_MaChiTiet;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_Gia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_Gia`;
delimiter ;;
CREATE PROCEDURE `sp_update_Gia`(IN p_MaGia int ,
     IN p_MaSanPham int ,IN p_NgayBD datetime ,
     IN p_NgayKT datetime ,IN p_DonGia int)
BEGIN
    UPDATE gia
    SET
        MaSanPham = IFNULL(p_MaSanPham,MaSanPham),
        NgayBD = IFNULL(p_NgayBD,NgayBD),
		NgayKT = IFNULL( p_NgayKT,NgayKT),
        DonGia = IFNULL(p_DonGia,DonGia)
    WHERE MaGia = p_MaGia;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_GiamGia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_GiamGia`;
delimiter ;;
CREATE PROCEDURE `sp_update_GiamGia`(IN p_MaGiamGia int ,IN p_MaSanPham int ,IN p_PhanTram int , IN p_NgayBD date ,IN  p_NgayKT date)
BEGIN
    UPDATE giamgia
    SET
        MaSanPham = IFNULL(p_MaSanPham, MaSanPham),
        PhanTram = IFNULL(p_PhanTram, PhanTram),
        NgayBD =IFNULL(p_NgayBD,NgayBD),
        NgayKT =IFNULL(p_NgayKT,NgayKT)
    WHERE MaGiamGia = p_MaGiamGia;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_GioiThieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_GioiThieu`;
delimiter ;;
CREATE PROCEDURE `sp_update_GioiThieu`(IN p_MaGioiThieu INT,
  IN p_TieuDe VARCHAR(50),
  IN p_NoiDung longtext,
  IN p_HinhAnh longblob)
BEGIN
  UPDATE gioithieu
  SET
    TieuDe = IFNULL(p_TieuDe, TieuDe),
    NoiDung = IFNULL(p_NoiDung, NoiDung),
    HinhAnh = IFNULL(p_HinhAnh,HinhAnh)
  WHERE MaGioiThieu = p_MaGioiThieu;
  
  SELECT '';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_HoaDonNhap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_HoaDonNhap`;
delimiter ;;
CREATE PROCEDURE `sp_update_HoaDonNhap`(IN p_MaHDN INT,
    IN p_MaNhaCungCap int ,
    IN p_MaNguoiDung int)
BEGIN
    UPDATE hoadonnhap
    SET
        MaNhaCungCap = IFNULL(p_MaNhaCungCap,MaNhaCungCap),
		MaNguoiDung = IFNULL(p_MaNguoiDung,MaNguoiDung)
    WHERE MaHDN = p_MaHDN;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_LienHe
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_LienHe`;
delimiter ;;
CREATE PROCEDURE `sp_update_LienHe`(IN p_MaLienHe INT,
    IN p_Email VARCHAR(25),
    IN p_DiaChi longtext,
    IN p_SoDienThoai VARCHAR(15))
BEGIN
    UPDATE LienHe
    SET
        Email = IFNULL(p_Email, Email),
		DiaChi = IFNULL(p_DiaChi,DiaChi),
        SoDienThoai = IFNULL(p_SoDienThoai, SoDienThoai)
    WHERE MaLienHe = p_MaLienHe;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_LoaiSanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_LoaiSanPham`;
delimiter ;;
CREATE PROCEDURE `sp_update_LoaiSanPham`(IN p_MaLoaiSanPham INT,
    IN p_TenLoaiSanPham VARCHAR(50),
    IN p_GioiThieu varchar(100))
BEGIN
    UPDATE LoaiSanPham
    SET
        TenLoaiSanPham = IFNULL(p_TenLoaiSanPham, TenLoaiSanPham),
        GioiThieu = IFNULL(p_GioiThieu,GioiThieu)
    WHERE MaLoaiSanPham = p_MaLoaiSanPham;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_Menu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_Menu`;
delimiter ;;
CREATE PROCEDURE `sp_update_Menu`(IN p_MaMenu int,IN p_TenMenu varchar(40),IN p_Link varchar(20))
BEGIN
  UPDATE menu
  SET
    TenMenu = IFNULL(p_TenMenu,TenMenu),
    Link = IFNULL(p_Link,Link)
  WHERE MaMenu = p_MaMenu;
  
  SELECT '';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_NguoiDung
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_NguoiDung`;
delimiter ;;
CREATE PROCEDURE `sp_update_NguoiDung`(IN p_MaNguoiDung int,IN p_MatKhau longtext,
   IN p_Email VARCHAR(50),IN p_HoTen VARCHAR(50),IN p_NgaySinh DATE,
   IN p_GioiTinh VARCHAR(10),IN p_DiaChi VARCHAR(35),IN p_SoDienThoai VARCHAR(15),IN p_AnhDaiDien longblob,IN p_VaiTro VARCHAR(25))
BEGIN
    UPDATE nguoidung nd
    SET
		MatKhau = IFNULL(p_MatKhau,MatKhau),
		Email = IFNULL(p_Email,Email),
		HoTen = IFNULL(p_HoTen,HoTen),
		NgaySinh = IFNULL(p_NgaySinh,NgaySinh),
        GioiTinh = IFNULL(p_GioiTinh,GioiTinh),
		DiaChi = IFNULL(p_DiaChi,DiaChi),
		SoDienThoai = IFNULL(p_SoDienThoai,SoDienThoai),
		AnhDaiDien = IFNULL(p_AnhDaiDien,AnhDaiDien),
		VaiTro = IFNULL(p_VaiTro,VaiTro)
    WHERE nd.MaNguoiDung = p_MaNguoiDung;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_NhaCungCap
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_NhaCungCap`;
delimiter ;;
CREATE PROCEDURE `sp_update_NhaCungCap`(IN p_MaNhaCungCap int ,
    IN p_TenNhaCungCap varchar(20),
    IN p_DiaChi varchar(30),
    IN p_SoDienThoai VARCHAR(15),
	IN p_Email VARCHAR(25))
BEGIN
    UPDATE nhacungcap
    SET
		TenNhaCungCap = IFNULL(p_TenNhaCungCap,TenNhaCungCap),
		DiaChi = IFNULL(p_DiaChi,DiaChi),
        SoDienThoai = IFNULL(p_SoDienThoai, SoDienThoai),
         Email = IFNULL(p_Email, Email)
     WHERE MaNhaCungCap = p_MaNhaCungCap;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_SanPham
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_SanPham`;
delimiter ;;
CREATE PROCEDURE `sp_update_SanPham`(IN p_MaSanPham int ,
    IN p_TenSP text,
	IN p_MoTa longtext,
    IN p_MaLoaiSanPham int,
    IN p_MaThuongHieu int,
	IN p_MaSize int,
	IN p_AnhDaiDien longblob,
    IN p_SoLuong int)
BEGIN
    UPDATE SanPham
    SET
		TenSP = ifnull(p_TenSP,TenSP),
		MoTa = IFNULL(p_MoTa,MoTa),
        MaLoaiSanPham = IFNULL(p_MaLoaiSanPham,MaLoaiSanPham),
		MaThuongHieu = IFNULL(p_MaThuongHieu,MaThuongHieu),
        MaSize = IFNULL(p_MaSize,MaSize),
        AnhDaiDien = IFNULL(p_AnhDaiDien,AnhDaiDien),
        SoLuong = IFNULL(p_SoLuong,SoLuong)
     WHERE MaSanPham = p_MaSanPham;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_Size
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_Size`;
delimiter ;;
CREATE PROCEDURE `sp_update_Size`(IN p_MaSize INT,IN p_TenSize VARCHAR(100),IN p_MoTa TEXT)
BEGIN
    UPDATE Size
    SET
        TenSize = p_TenSize,
        MoTa = IFNULL(p_MoTa, MoTa)
    WHERE MaSize = p_MaSize;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_Slide
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_Slide`;
delimiter ;;
CREATE PROCEDURE `sp_update_Slide`(IN p_MaSlide int ,IN p_Anh longblob)
BEGIN
    UPDATE slide 
    SET
        Anh = IFNULL(p_Anh,Anh)
    WHERE MaSlide = p_MaSlide;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_ThamSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_ThamSo`;
delimiter ;;
CREATE PROCEDURE `sp_update_ThamSo`(IN p_MaThamSo int ,IN p_TenThamSo VARCHAR(50),p_KyHieu varchar(100),
    IN p_NoiDung text , IN p_Anh longblob)
BEGIN
    UPDATE thamso
    SET
        TenThamSo = IFNULL(p_TenThamSo, TenThamSo),
        KyHieu = IFNULL(p_KyHieu,KyHieu),
        NoiDung = IFNULL(p_NoiDung,NoiDung),
        Anh = ifnull(p_Anh,Anh)
    WHERE MaThamSo = p_MaThamSo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_ThongSo
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_ThongSo`;
delimiter ;;
CREATE PROCEDURE `sp_update_ThongSo`(IN p_MaThongSo int,IN p_TenThongSo varchar(20),IN p_MoTa varchar(100),IN p_MaSanPham int)
BEGIN
  UPDATE thongso
  SET
    TenThongSo = IFNULL(p_TenThongSo,TenThongSo),
    MoTa = IFNULL(p_MoTa,MoTa),
    MaSanPham = IFNULL(p_MaSanPham, MaSanPham)
  WHERE MaThongSo = p_MaThongSo;
  
  SELECT '';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_ThuongHieu
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_ThuongHieu`;
delimiter ;;
CREATE PROCEDURE `sp_update_ThuongHieu`(IN p_MaThuongHieu INT,
    IN p_TenThuongHieu VARCHAR(50),
    IN p_GioiThieu TEXT)
BEGIN
    UPDATE ThuongHieu
    SET
        TenThuongHieu = p_TenThuongHieu,
        GioiThieu = IFNULL(p_GioiThieu, GioiThieu)
    WHERE MaThuongHieu = p_MaThuongHieu;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_update_TinTuc
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_TinTuc`;
delimiter ;;
CREATE PROCEDURE `sp_update_TinTuc`(IN p_MaTinTuc INT, 
                                   IN p_TieuDe VARCHAR(255), 
                                   IN p_NoiDung TEXT,
                                   IN p_AnhTinTuc longblob, 
                                   IN p_MaNguoiDung INT)
BEGIN
    UPDATE TinTuc
    SET 
        TieuDe = IFNULL(p_TieuDe, TieuDe),
        NoiDung = IFNULL(p_NoiDung, NoiDung),
        AnhTinTuc = IFNULL(p_AnhTinTuc, AnhTinTuc),
        MaNguoiDung = IFNULL(p_MaNguoiDung, MaNguoiDung)
    WHERE MaTinTuc = p_MaTinTuc;

    SELECT '';
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
