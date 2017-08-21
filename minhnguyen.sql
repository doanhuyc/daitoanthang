-- phpMyAdmin SQL Dump
-- version 2.10.2
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Sep 19, 2012 at 10:23 AM
-- Server version: 5.0.45
-- PHP Version: 5.2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `minhnguyen`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `table_about`
-- 

CREATE TABLE `table_about` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ten` varchar(225) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `noidung` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(11) NOT NULL default '0',
  `ngaysua` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `table_about`
-- 

INSERT INTO `table_about` VALUES (1, 'Giới thiệu chung', 'gioi-thieu-chung', 'đang cập nhật', '<p>Nội dung giới thiệu</p>', '00310919.jpg', 'thums00310919.jpg', 0, 1, 1225497589, 1339728897);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_catalog`
-- 

CREATE TABLE `table_catalog` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_list` int(11) NOT NULL,
  `id_item` int(10) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `file` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `table_catalog`
-- 

INSERT INTO `table_catalog` VALUES (1, 0, 2, 1, '879291114217.jpg', '879291114217_185x100.jpg', 'catalog du lịch Hòn Mun - Nha Trang', 'catalog-du-lich-hon-mun-nha-trang', '', 1, 1, 1341824779, 1341825212, 2);
INSERT INTO `table_catalog` VALUES (2, 0, 2, 1, '852156490022.jpg', '852156490022_185x100.jpg', 'catalog đêm Nha Trang', 'catalog-dem-nha-trang', '', 1, 1, 1341825336, 0, 1);
INSERT INTO `table_catalog` VALUES (3, 0, 1, 1, '756725039847.jpg', '756725039847_185x100.jpg', 'catalog du lịch Hà Nội - Đà Lạt - Sài Gòn', 'catalog-du-lich-ha-noi-da-lat-sai-gon', '', 1, 1, 1341825420, 0, 1);
INSERT INTO `table_catalog` VALUES (4, 0, 2, 1, '373071679481.jpg', '373071679481_185x100.jpg', 'catalog du lịch Long Hải - Vũng Tàu', 'catalog-du-lich-long-hai-vung-tau', '', 1, 1, 1341825508, 0, 0);
INSERT INTO `table_catalog` VALUES (5, 0, 2, 1, '039682335109.jpg', '039682335109_185x100.jpg', 'catalog du lịch Mũi Né - Bàu Sen', 'catalog-du-lich-mui-ne-bau-sen', '', 1, 1, 1341825600, 0, 0);
INSERT INTO `table_catalog` VALUES (6, 0, 2, 1, '815492855632.jpg', '815492855632_185x100.jpg', 'catalog du lịch Nha Trang - Yang Bay', 'catalog-du-lich-nha-trang-yang-bay', '', 1, 1, 1341825669, 0, 0);
INSERT INTO `table_catalog` VALUES (7, 6, 4, 3, '939286345426.jpg', '939286345426_185x100.jpg', 'catalog du lịch Pháp - Ý - Thụy Sỹ', 'catalog-du-lich-phap-y-thuy-sy', '', 1, 1, 1341825753, 1344841795, 1);
INSERT INTO `table_catalog` VALUES (8, 7, 1, 2, '592710352190.jpg', '592710352190_185x100.jpg', 'catalog du lịch Pháp - Bỉ - Hà Lan - Đức - Ý', 'catalog-du-lich-phap-bi-ha-lan-duc-y', '', 1, 1, 1341825838, 1344841656, 6);
INSERT INTO `table_catalog` VALUES (9, 7, 3, 2, '791769280029.jpg', '791769280029_185x100.jpg', 'catalog du lịch Thẩm Quyến - Quảng Châu', 'catalog-du-lich-tham-quyen-quang-chau', '', 1, 1, 1341825959, 1344841626, 0);
INSERT INTO `table_catalog` VALUES (10, 5, 2, 4, '623711971583.jpg', '623711971583_120x80.jpg', 'catalog du lịch Hồng Kông - Disneyland', '623711971583.pdf', 'Mô tả catalogs', 1, 1, 1341826059, 1344916578, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_catalog_cat`
-- 

CREATE TABLE `table_catalog_cat` (
  `id` int(11) NOT NULL auto_increment,
  `id_list` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `table_catalog_cat`
-- 

INSERT INTO `table_catalog_cat` VALUES (1, 8, 'catalog nội địa', 'catalog-noi-dia', '', '', 1, 1, 1341821973, 1344827665);
INSERT INTO `table_catalog_cat` VALUES (2, 7, 'catalog nước ngoài', 'catalog-nuoc-ngoai', '', '', 2, 1, 1341821986, 1344827851);
INSERT INTO `table_catalog_cat` VALUES (3, 6, 'Team building', 'team-building', '', '', 3, 1, 1341822001, 1344827858);
INSERT INTO `table_catalog_cat` VALUES (4, 5, 'Event', 'event', '', '', 4, 1, 1341822008, 1344827916);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_catalog_item`
-- 

CREATE TABLE `table_catalog_item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_list` int(11) NOT NULL,
  `id_cat` int(10) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) collate latin1_general_ci NOT NULL,
  `photo` varchar(20) collate latin1_general_ci NOT NULL,
  `thumb` varchar(255) collate latin1_general_ci NOT NULL,
  `stt` int(2) NOT NULL,
  `hienthi` int(2) NOT NULL,
  `ngaysua` int(10) NOT NULL,
  `ngaytao` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `table_catalog_item`
-- 

INSERT INTO `table_catalog_item` VALUES (1, 7, 2, 'Miền bắc', 'mien-bac', '', '', 1, 1, 1344829698, 1341822235);
INSERT INTO `table_catalog_item` VALUES (2, 5, 4, 'Miền nam', 'mien-nam', '', '', 2, 1, 1344829756, 1341822247);
INSERT INTO `table_catalog_item` VALUES (3, 7, 2, 'Miền Trung', 'mien-trung', '', '', 3, 1, 1344829775, 1341822257);
INSERT INTO `table_catalog_item` VALUES (4, 6, 3, 'Châu Á', 'chau-a', '', '', 1, 1, 1344829704, 1341822308);
INSERT INTO `table_catalog_item` VALUES (5, 8, 1, 'Châu Âu', 'chau-au', '', '', 2, 1, 1344829764, 1341822315);
INSERT INTO `table_catalog_item` VALUES (6, 8, 1, 'Test', 'test', '', '', 1, 1, 0, 1344829690);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_catalog_list`
-- 

CREATE TABLE `table_catalog_list` (
  `id` int(11) NOT NULL auto_increment,
  `ten` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `table_catalog_list`
-- 

INSERT INTO `table_catalog_list` VALUES (5, 'Thiết bị đo lường', 'thiet-bi-do-luong', '', '', 1, 1, 1344827181, 0);
INSERT INTO `table_catalog_list` VALUES (6, 'TB Phân Tích Ngành Nước', 'tb-phan-tich-nganh-nuoc', '', '', 1, 1, 1344827191, 0);
INSERT INTO `table_catalog_list` VALUES (7, 'Mitsubishi', 'mitsubishi', '', '', 1, 1, 1344827203, 0);
INSERT INTO `table_catalog_list` VALUES (8, 'Schneider', 'schneider', '', '', 1, 1, 1344827212, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_company`
-- 

CREATE TABLE `table_company` (
  `id` int(10) NOT NULL auto_increment,
  `ten` varchar(100) NOT NULL,
  `mst` varchar(20) character set utf8 collate utf8_unicode_ci NOT NULL,
  `taikhoang` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `dienthoai` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `website` varchar(255) NOT NULL,
  `stt` int(3) NOT NULL,
  `hienthi` int(3) NOT NULL,
  `ngaytao` int(10) NOT NULL,
  `ngaysua` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `table_company`
-- 

INSERT INTO `table_company` VALUES (1, 'CanaryVkids', '', '', '42A Đường số 4, P. Bình Trị Đông B, Quận Bình Tân', '08.62602945 - 08.62715015', 'canaryVkids@gmail.com', 'hongnhung.net', 0, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_config`
-- 

CREATE TABLE `table_config` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ten` varchar(225) NOT NULL,
  `noidung` text NOT NULL,
  `com` varchar(225) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `table_config`
-- 

INSERT INTO `table_config` VALUES (1, '', '<div style="padding-left: 10px;"><span>\r\n<p align="justify" class="tieu_de_00">* Địa chỉ :</p>\r\n<p align="justify" class="tex_vbc_02">-Cầu 2 &ndash; Quốc Lộ I &ndash; Phường Ba Ng&ograve;i &ndash; Thị X&atilde; Cam Ranh &ndash; Kh&aacute;nh H&ograve;a</p>\r\n<p align="justify" class="tieu_de_00">* Mọi chi tiết xin vui l&ograve;ng li&ecirc;n hệ về  ph&ograve;ng kinh doanh :</p>\r\n<p align="justify" class="tex_vbc_02"><b class="tex_vbv">- Điện thọai :</b> 058. 854294</p>\r\n<p align="justify" class="tex_vbc_02"><b class="tex_vbv">- Fax :</b> 058. 955234</p>\r\n<p align="justify" class="tex_vbc_02"><b class="tex_vbv">- Email : </b><span><a class="tex_menu_aaaa" href="../../index.php?com=contact&phpMyAdmin=f69302e29504453289aefc9c60491201&phpMyAdmin=33b91999f740920f46c0e548dd527506&phpMyAdmin=4a2006a2c0a12032e29a15aec9987562#">spatable@gmail.com</a></span></p>\r\n<p align="justify" class="tex_vbc_02"><b class="tex_vbv">- Website :</b><a class="tex_menu_aaaa" href="../../index.php?com=contact&phpMyAdmin=f69302e29504453289aefc9c60491201&phpMyAdmin=33b91999f740920f46c0e548dd527506&phpMyAdmin=4a2006a2c0a12032e29a15aec9987562#"> www.spatable.com </a></p>\r\n</span></div>\r\n<p>&nbsp;</p>', 'contact');

-- --------------------------------------------------------

-- 
-- Table structure for table `table_contact`
-- 

CREATE TABLE `table_contact` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_sanpham` int(10) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `diachi` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `noidung` text NOT NULL,
  `tieude` varchar(50) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(10) unsigned NOT NULL default '0',
  `ngaysua` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `table_contact`
-- 

INSERT INTO `table_contact` VALUES (9, 99, 'Trần Quốc Thắng', '147/1 Khu phố 3,đường HT6 , Hiệp Thành,Q.12, TP.HCM', '38686082', 'tqthang08@gmail.com', 'Toi muon mua san pham nay', 'Mua san pham nay', '', 1, 1, 1311138163, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_footer`
-- 

CREATE TABLE `table_footer` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ten` varchar(225) NOT NULL,
  `mota` text NOT NULL,
  `noidung` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(11) NOT NULL default '0',
  `ngaysua` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `table_footer`
-- 

INSERT INTO `table_footer` VALUES (4, 'Welcome Spa Cam Ranh', '', '<p>C&Ocirc;NG TY TNHH TƯ VẤN - THƯƠNG MẠI - DỊCH VỤ -&nbsp; DU LỊCH CẢNH VIỆT<br />Địa chỉ: 216 Nguyễn Hồng Đ&agrave;o , P.14, Q.T&acirc;n B&igrave;nh, TP.HCM<br />Điện thoại: 086 25 90 999 - Email: dulichcanhviet@gmail.com</p>', '57083.jpg', 1, 1, 1225497589, 1225508616);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_lienhe`
-- 

CREATE TABLE `table_lienhe` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ten` varchar(225) NOT NULL,
  `mota` text NOT NULL,
  `noidung` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(11) NOT NULL default '0',
  `ngaysua` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `table_lienhe`
-- 

INSERT INTO `table_lienhe` VALUES (4, 'Welcome Spa Cam Ranh', '', '<p><strong><span style="font-size: 18px;">DU LỊCH CẢNH VIỆT</span></strong><br /> <strong>Địa chỉ:</strong> 216 Nguyễn Hồng Đ&agrave;o , P.14, Q.T&acirc;n B&igrave;nh, TP.HCM<br /> <strong>Điện thoại:</strong> 086 25 90 999<br /> <strong>Email:</strong> dulichcanhviet@gmail.com<br /> <strong>Website:</strong> dulichcanhviet.com</p>', '57083.jpg', 1, 1, 1225497589, 1225508616);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_member`
-- 

CREATE TABLE `table_member` (
  `id` int(10) NOT NULL auto_increment,
  `user` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `id_chuyenmon` int(10) NOT NULL,
  `stt` int(3) NOT NULL,
  `hienthi` int(3) NOT NULL,
  `ngaytao` int(10) NOT NULL,
  `ngaysua` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `table_member`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `table_meta`
-- 

CREATE TABLE `table_meta` (
  `id` int(10) NOT NULL auto_increment,
  `ten` varchar(200) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `table_meta`
-- 

INSERT INTO `table_meta` VALUES (1, 'Linh kiện, pc , máy in, máy photocopy');

-- --------------------------------------------------------

-- 
-- Table structure for table `table_news`
-- 

CREATE TABLE `table_news` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_item` int(11) NOT NULL,
  `tinnoibat` int(12) NOT NULL,
  `ten` varchar(225) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `noidung` text NOT NULL,
  `loaitin` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `thumb1` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(10) unsigned NOT NULL default '0',
  `ngaysua` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `table_news`
-- 

INSERT INTO `table_news` VALUES (1, 1, 0, 'Những điều bạn cần biết khi du lịch Phan Thiết ', 'nhung-dieu-ban-can-biet-khi-du-lich-phan-thiet', 'Phan Thiết không chỉ có cát, gió, biển mà còn hơn thế nữa. Thật không khó hiểu khi nhiều bạn trẻ đã chọn Phan Thiết làm điểm đến cho tuần trăng mật của mình. Và dưới đây là những kinh nghiệm nhỏ giúp cho bạn có một chuyến du lịch Phan Thiết giá rẻ tuyệt vời nhất.', '<h1 class="contentheading clearfix">&nbsp;</h1>\r\n<div class="article-content">\r\n<p><strong><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/0atruotcatBT-20120601161157.jpg" alt="" /></strong></p>\r\n<p>Phan Thiết kh&ocirc;ng chỉ c&oacute; c&aacute;t, gi&oacute;, biển m&agrave; c&ograve;n hơn thế nữa. Thật kh&ocirc;ng kh&oacute; hiểu khi nhiều bạn trẻ đ&atilde; chọn Phan Thiết l&agrave;m điểm đến cho tuần trăng mật của m&igrave;nh. V&agrave; dưới đ&acirc;y l&agrave; những kinh nghiệm nhỏ gi&uacute;p cho bạn c&oacute; một chuyến du lịch Phan Thiết gi&aacute; rẻ tuyệt vời nhất.</p>\r\n<p align="center">&nbsp;</p>\r\n<strong>Đến khi n&agrave;o? </strong>\r\n<p>Thời tiết Phan Thiết vốn kh&ocirc; n&oacute;ng quanh năm, với nhiệt độ trung b&igrave;nh khoảng 27 độ C. Bạn c&oacute; thể đến thăm Phan Thiết quanh năm nhưng thời điểm c&oacute; s&oacute;ng l&yacute; tưởng nhất l&agrave; từ th&aacute;ng 8 đến th&aacute;ng 12, c&ograve;n c&oacute; gi&oacute; dễ chịu nhất l&agrave; từ th&aacute;ng 11 đến th&aacute;ng 4.</p>\r\n<p><br /><strong>Chuẩn bị g&igrave;? </strong></p>\r\n<p><strong>- </strong>Chai nước kho&aacute;ng (v&igrave; thời tiết ở đ&acirc;y kh&aacute; nắng v&agrave; hanh kh&ocirc;)</p>\r\n<p>- M&aacute;y ảnh</p>\r\n<p>- K&iacute;nh m&aacute;t</p>\r\n<p>- Kem chống nắng</p>\r\n<p>- D&eacute;p l&agrave;o hoặc sandal</p>\r\n<p><br /><strong>Đến bằng g&igrave;? </strong></p>\r\n<p><em>&Ocirc;t&ocirc; hay bu&yacute;t</em></p>\r\n<p>Một c&aacute;ch tiện lợi nhất để đến Mũi N&eacute; l&agrave; bằng &ocirc;t&ocirc; từ th&agrave;nh phố Hồ Ch&iacute; Minh, tuyến đường n&agrave;y kh&aacute; tốt v&agrave; dễ đi với nhiều khu nghỉ v&agrave; nh&agrave; h&agrave;ng dọc hai b&ecirc;n đường. Ngo&agrave;i ra cũng c&oacute; nhiều xe du lịch chạy tuyến n&agrave;y. H&agrave;nh tr&igrave;nh mất khoảng 3 &ndash; 4 tiếng l&aacute;i xe.</p>\r\n<p><br /><em>T&agrave;u</em></p>\r\n<p>Ga gần Phan Thiết nhất l&agrave; ga Mường M&aacute;n, c&aacute;ch Phan Thiết 12km về ph&iacute;a T&acirc;y, t&agrave;u Thống Nhất chạy tuyến H&agrave; Nội&ndash; Hồ Ch&iacute; Minh cũng dừng ở đ&acirc;y. Từ Mường M&aacute;n, du kh&aacute;ch c&oacute; thể bắt xe &ocirc;t&ocirc;, xe m&aacute;y hay xe bu&yacute;t để đến Phan Thiết, Mũi N&eacute;.</p>\r\n<p><strong><br /><strong>Đi lại như thế n&agrave;o? </strong></strong></p>\r\n<p>Tốt nhất l&agrave; bạn thu&ecirc; xe m&aacute;y của c&aacute;c b&aacute;c xe &ocirc;m hay tại c&aacute;c kh&aacute;ch sạn nh&agrave; nghỉ trong v&ugrave;ng để được tự do kh&aacute;m ph&aacute; c&aacute;c cảnh đẹp của Phan Thiết. Gi&aacute; thu&ecirc; xe v&agrave;o khoảng hơn 100.000vnđ/ng&agrave;y.</p>\r\n<p><br />Ngo&agrave;i ra, bạn c&oacute; thể thu&ecirc; một chiếc xe Jeep (với gi&aacute; 500.000vnđ/ng&agrave;y) chạy ngược l&ecirc;n khoảng 30KM đến c&aacute;c đồi c&aacute;t trắng v&agrave; đồi c&aacute;t v&agrave;ng để hưởng thụ cảnh đẹp v&agrave; chụp ảnh.</p>\r\n<p><strong>Ở đ&acirc;u? </strong></p>\r\n<p>Mũi N&eacute; &ndash; Phan Thiết c&oacute; rất nhiều khu nghỉ dưỡng b&atilde;i biển, hầu hết l&agrave; bungalow m&aacute;i tranh tọa lạc ngay tr&ecirc;n b&atilde;i biển. Những kh&aacute;ch sạn sang trọng hơn c&oacute; bể bơi ngo&agrave;i trời, dịch vụ c&aacute;c m&ocirc;n thể thao biển, ghế tắm nắng, nh&agrave; h&agrave;ng, bar v&agrave; spa.</p>\r\n<p>Bạn cũng c&oacute; thể chọn cho m&igrave;nh ph&ograve;ng kh&aacute;ch sạn gần biển thay v&igrave; trong th&agrave;nh phố.</p>\r\n<p>- Ngo&agrave;i ra tr&ecirc;n đường Trần Hưng Đạo cũng c&oacute; rất nhiều kh&aacute;ch sạn, gi&aacute; cả phải chăng nhưng do ch&uacute;ng nằm tr&ecirc;n đường lớn, tối xe chạy ồn &agrave;o n&ecirc;n kh&ocirc;ng mấy y&ecirc;n tĩnh.</p>\r\n<p><strong><br /><strong>Chơi đ&acirc;u? </strong></strong></p>\r\n<p>Ngo&agrave;i những địa danh nổi tiếng như Mũi N&eacute;, H&ograve;n Rơm, Đồi Hồng, Th&aacute;p P&ocirc;sanư, bạn c&oacute; thể thử &ldquo;đổi m&oacute;n&rdquo; bằng c&aacute;ch tham quan những địa điểm kh&aacute;c cũng kh&ocirc;ng k&eacute;m phần th&uacute; vị như N&uacute;i T&agrave; K&uacute;, đảo Ph&uacute; Qu&yacute;, hải đăng K&ecirc; G&agrave;, B&agrave;u Trắng, b&atilde;i đ&aacute;o &Ocirc;ng Địa, suối Hồng, v&agrave;o thăm dinh vạn thủy t&uacute; c&oacute; bộ xương c&aacute; voi d&agrave;i 22m, thăm trường Dục Thanh c&oacute; c&acirc;y khế B&aacute;c Hồ trồng&hellip; Đến đ&acirc;y, bạn vừa c&oacute; thể kết hợp tham quan du lịch vừa c&oacute; thể nghỉ dưỡng, cắm trại. Kh&ocirc;ng những th&iacute;ch hợp cho những bạn th&iacute;ch phi&ecirc;u lưu m&agrave; c&ograve;n l&agrave; địa điểm nghỉ ngơi tuyệt vời, thanh tịnh đấy nh&eacute;.</p>\r\n<p><strong>Chơi g&igrave;? </strong></p>\r\n<p>- Ngắm v&agrave; chụp ảnh b&igrave;nh minh ở biển, tham quan cuộc sống ch&agrave;i lưới của ngư d&acirc;n địa phương.</p>\r\n<p>- Lặn biển</p>\r\n<p>- Thả diều</p>\r\n<p>- Đi thuyền Canoeing</p>\r\n<p>- Tắm biển Mũi N&eacute;</p>\r\n<p>- Trượt c&aacute;t</p>\r\n<p>- Ngắm biển đ&ecirc;m ở Đồi Dương</p>\r\n<p><br /><strong>Ăn g&igrave;? </strong></p>\r\n<p>Gi&ocirc;ng: đ&acirc;y l&agrave; đặc sản độc đ&aacute;o của Phan Thiết v&agrave;o m&ugrave;a mưa, ngon nhất l&agrave; gi&ocirc;ng Tuy Phong nướng chấm muối ớt hoặt gi&ocirc;ng cari, gi&ocirc;ng bằm x&uacute;c b&aacute;nh đa.</p>\r\n<p>C&aacute; &oacute; sao: l&agrave; d&ograve;ng đuối, bạn c&oacute; thể nếm thử c&aacute; &oacute; sao x&agrave;o lăn hay canh chua đều ngon. Nếu c&oacute; Hắc c&aacute;y th&igrave; ngon (hiếm cực kỳ), con n&agrave;y thịt xẻ ra rất đen n&ecirc;n được gọi đ&ugrave;a l&agrave; đuối Obama.</p>\r\n<p><br />S&ograve; quạt nướng</p>\r\n<p><br />Chả c&aacute; chi&ecirc;n: Bạn c&oacute; thể mua ngay trong chợ Phan Thiết, tối về nhấm nh&aacute;p c&ugrave;ng chai rượu tr&ecirc;n đồi c&aacute;t đ&ecirc;m trăng th&igrave; c&ograve;n g&igrave; tuyệt vời hơn.</p>\r\n<p>Mực ống tươi Magarita: nếu muốn nếm thử m&oacute;n n&agrave;y, bạn phải dậy thật sớm v&agrave; đ&oacute;n c&aacute;c thuyền đ&aacute;nh c&aacute; từ ngo&agrave;i khơi về.</p>\r\n<p>Gỏi c&aacute; suốt, c&aacute; đục: m&oacute;n n&agrave;y rất ngon với nước chấm sệt xay từ đậu phộng, gan, b&iacute; đỏ, nước mắm &amp; 1 tr&aacute;i chuối ch&iacute;n rục.</p>\r\n<p><br />B&aacute;nh canh c&aacute;</p>\r\n<p><br />B&aacute;nh căn: đ&acirc;y l&agrave; tiền th&acirc;n của b&aacute;nh khọt, chỉ l&agrave; bột gạo chi&ecirc;n n&oacute;ng bằng khu&ocirc;n đất kh&ocirc;ng nh&acirc;n ăn với nước chấm l&agrave; : nước mắm pha, mắm c&aacute; cơm, c&aacute; nục kho, tương đậu phộng, da heo kho, trứng luộc, xo&agrave;i băm...</p>\r\n<p><strong>Ăn ở đ&acirc;u? </strong></p>\r\n<p>Bạn c&oacute; thể v&agrave;o chợ ăn, rất nhiều m&oacute;n ăn ngon, rẻ, tối c&oacute; thể ăn b&aacute;nh canh chả c&aacute; tr&ecirc;n đường Trần Hưng Đạo, vừa qua khỏi cầu Trần Hưng Đạo l&agrave; sẽ thấy b&ecirc;n tay phải.</p>\r\n<p>Buổi tối tr&ecirc;n đường Đ&agrave;o Duy Từ c&oacute; một qu&aacute;n b&aacute;n m&igrave; Qu&atilde;ng, kh&aacute; ngon hoặc &oacute; thể ăn m&igrave; Qu&atilde;ng ở đường Trần Ph&uacute;.</p>\r\n<p>To&agrave;n Dương Qu&aacute;n b&ecirc;n bờ biển Đồi Dương- Vĩnh Thủy (từ cổng Novotel nh&igrave;n thẳng theo đường cặp s&aacute;t biển), gi&aacute; cả ở đ&acirc;y b&acirc;y giờ hơi đắt nhưng chất lượng rất đảm bảo. Ở đ&acirc;y nổi tiếng với m&oacute;n T&ocirc;m Vỗ (Mũ Ni), mực sữa hấp gừng cỏn nguy&ecirc;n t&uacute;i mực.</p>\r\n<p>Hợp t&aacute;c x&atilde; hải sản b&igrave;nh d&acirc;n cặp bờ k&egrave; s&ocirc;ng C&agrave;y: từ S&agrave;i G&ograve;n ra vừa qua khỏi cầu C&agrave;ty- Trần Hưng Đạo rẽ phải lu&ocirc;n l&agrave; gặp nguy&ecirc;n d&atilde;y qu&aacute;n nhậu hải sản b&igrave;nh d&acirc;n từ 3h chiều. Nếu may mắn bạn sẽ được ăn c&aacute; b&ograve; h&ograve;m v&agrave; một m&oacute;n ch&aacute;o nấu từ c&aacute;c loại nước luộc kh&aacute; đặc biệt.</p>\r\n<p><br />Qu&aacute;n cơm g&agrave; Hội An, nằm ngay sau lưng ph&ograve;ng quản l&yacute; xuất nhập cảnh của Phan Thiết. Qu&aacute;n n&agrave;y chỉ b&aacute;n buổi s&aacute;ng, buổi chiều b&aacute;n b&aacute;nh x&egrave;o.</p>\r\n<p>D&ecirc; 5 lửa: gần ng&atilde; 3 Thủ Khoa Hu&acirc;n</p>\r\n<p>Kim Sơn Lầu: ngay ở khu chợ Phan Thiết, c&oacute; m&oacute;n c&aacute; canh chua theo kiểu Trung Hoa.</p>\r\n<p>Qu&aacute;n Vịt đồng: Qu&aacute;n n&agrave;y cũng nằm ngay sau lưng ph&ograve;ng quản l&yacute; xuất nhập cảnh của Phan Thiết, đối diện qu&aacute;n cơm Mỹ Hương. Vịt ở đ&acirc;y rất ngon, gi&aacute; cả phải chăng với đầy đủ c&aacute;c m&oacute;n gỏi, x&ocirc;i, ch&aacute;o, luộc.</p>\r\n<p>Qu&aacute;n Y&ecirc;n Gia: nh&agrave; h&agrave;ng nấu ăn theo ti&ecirc;u chuẩn nh&agrave; h&agrave;ng S&agrave;i G&ograve;n , chủ qu&aacute;n l&agrave; d&acirc;n du lịch đặc biệt đ&agrave;n ch&oacute; ở qu&aacute;n cực k&igrave; dễ thương, đ&aacute;ng y&ecirc;u.</p>\r\n<p>Lan Cầu K&eacute;: ngay tr&ecirc;n đường bạn v&agrave;o Mũi N&eacute;, gần l&agrave;ng ch&agrave;i Ph&uacute; H&agrave;i, nằm b&ecirc;n tay tr&aacute;i.</p>\r\n<p><br />Qu&aacute;n hải sản Phong V&acirc;n Qu&aacute;n: Từ Thủ Khoa Hu&acirc;n đi theo hướng ra Mũi N&eacute;...qua c&aacute;i Cầu đầu ti&ecirc;n khoảng 300m th&igrave; qu&aacute;n b&ecirc;n tay phải.</p>\r\n<p>Qu&aacute;n g&agrave; Phước Hiền: đi đường Trần Hưng Đạo...tới ng&atilde; ba Tam Bi&ecirc;n, rẽ phải....đi đến cuối đường rẽ phải...gặp ng&atilde; tư đầu ti&ecirc;n rẽ tr&aacute;i...qu&aacute;n ngay b&ecirc;n tay phải.</p>\r\n<p>Qua Phan Thiết khoảng 7km tr&ecirc;n QL1 c&oacute; B&aacute;nh Hỏi -thịt quay tại Cầu Ph&uacute; Long vị rất kh&aacute;c biệt.</p>\r\n<p>Qu&aacute;n B&agrave; S&aacute;u: qu&aacute;n b&aacute;n cơm b&igrave;nh d&acirc;n v&agrave; hải sản rất ngon, nấu rất hợp khẩu vị tr&ecirc;n đường Mũi N&eacute; - Phan Thiết, đối diện resort Victoria Phan Thiết, gần tới s&acirc;n golf Sea Links.</p>\r\n<p><br />M&igrave; L&yacute; Quan K&yacute;: tr&ecirc;n đường v&agrave;o H&ograve;n Rơm, đối diện nh&agrave; thờ.</p>\r\n<p>Khu du lịch H&ograve;n Rơm: buổi chiều ở đ&acirc;y c&oacute; thể thưởng thức S&ograve; Điệp nướng, cua l&ocirc;ng, mực nướng, hấp, gi&ocirc;ng.</p>\r\n<p><strong><br /><strong>Mua qu&agrave; ở đ&acirc;u? </strong></strong></p>\r\n<p>Nơi mua mực ống v&agrave; mực trứng tươi về l&agrave;m qu&agrave;: từ Mũi N&eacute; về lại trung t&acirc;m Phan Thiết....qua trạm thu ph&iacute;...sắp tới ch&acirc;n cầu H&agrave;i ....c&oacute; một ng&atilde; rẽ b&ecirc;n phải....rẽ phải...đi thẳng khoảng 500m b&ecirc;n tay tr&aacute;i c&oacute; cơ sở chế biến mực (chưa tới c&agrave; ph&ecirc; Giọt Đắng)...mực ống tươi to 20-25cm: 80k/kg ăn rất ngon, mực trứng: 45k/kg.</p>\r\n<p>Nước mắm Con C&aacute; V&agrave;ng của c&ocirc;ng ty cổ phần nước mắm Phan Thiết. Loại chai thủy tinh nhỏ x&iacute;u 50ml/chai x 9 chai/th&ugrave;ng, 45 độ.</p>\r\n</div>', '', '88676292.jpg', '88676292_120x80.jpg', '88676292_175x135.jpg', 1, 1, 1341890318, 0);
INSERT INTO `table_news` VALUES (2, 1, 0, '“Nhẹ người” cùng tư trang du lịch ', 'nhe-nguoi-cung-tu-trang-du-lich', 'Bao giờ bạn tự hỏi có người đi du lịch mà khệ nệ mang vác hành lý trong khi có những gia đình lại cảm thấy rất ung dung, nhẹ nhàng, mặc dù họ cũng đưa con nhỏ đi theo.\r\n\r\nSau đây là 5 lời khuyên thiết thực để mang hành lý vừa đủ, lại có thời gian vui vẻ bên gia đình.', '<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/baiviet/hanhlykhidimaybay.jpg" alt="hanhlykhidimaybay" width="400" height="300" /></p>\r\n<p>Bao giờ bạn tự hỏi c&oacute; người đi du lịch m&agrave; khệ nệ mang v&aacute;c h&agrave;nh l&yacute; trong khi c&oacute; những gia đ&igrave;nh lại cảm thấy rất ung dung, nhẹ nh&agrave;ng, mặc d&ugrave; họ cũng đưa con nhỏ đi theo.</p>\r\n<p>Sau đ&acirc;y l&agrave; 5 lời khuy&ecirc;n thiết thực để mang h&agrave;nh l&yacute; vừa đủ, lại c&oacute; thời gian vui vẻ b&ecirc;n gia đ&igrave;nh.</p>\r\n<p><strong>Chọn đ&uacute;ng t&uacute;i, va ly</strong></p>\r\n<p>Quan trọng trước ti&ecirc;n l&agrave; chọn t&uacute;i x&aacute;ch, valy n&agrave;o vừa nhẹ, bền v&agrave; ph&ugrave; hợp với t&iacute;nh chất của chuyến đi. H&atilde;y c&acirc;n nhắc tới điểm đến. Nếu phải đi bộ d&agrave;i, valy cứng c&oacute; b&aacute;nh xe c&oacute; thể kh&ocirc;ng phải l&agrave; sự lựa chọn tốt nhất. C&ograve;n nếu tới c&aacute;c trung t&acirc;m đ&ocirc; thị th&igrave; n&oacute; sẽ gi&uacute;p đi lại tr&ecirc;n phố dễ d&agrave;ng hơn.</p>\r\n<p><strong>Lập danh s&aacute;ch</strong></p>\r\n<p>Trước khi sắp xếp đồ đạc, h&atilde;y đưa ra một danh s&aacute;ch cả gia đ&igrave;nh cần d&ugrave;ng trong chuyến đi. Quần &aacute;o thường chiếm kh&ocirc;ng gian nhiều nhất. Những người đi du lịch chuy&ecirc;n nghiệp cho rằng kh&ocirc;ng cần mang qu&aacute; 3 bộ đồ để thay đổi. C&oacute; thể mang theo x&agrave; ph&ograve;ng để nếu cần c&oacute; thể giặt đồ. Ngo&agrave;i ra, h&atilde;y t&iacute;nh đến đặc điểm chuyến đi: v&ugrave;ng đến l&agrave; rừng hay biển, dự b&aacute;o thời tiết để xếp từng nh&oacute;m đồ: Quần &aacute;o, gi&agrave;y d&eacute;p, tiền bạc, giấy tờ, thiết bị điện tử, thuốc dự ph&ograve;ng&hellip;</p>\r\n<p><strong>C&oacute; đồ đến nơi h&atilde;y mua</strong></p>\r\n<p>Đồ d&ugrave;ng vệ sinh c&oacute; thể cho&aacute;n hết h&agrave;nh l&yacute; nếu mang đi hết, v&igrave; thế, h&atilde;y t&iacute;nh đến việc mua một số mặt h&agrave;ng như dầu gội đầu, giấy vệ sinh khi đến nơi. H&agrave;ng h&oacute;a đủ ti&ecirc;u chuẩn vệ sinh giờ đ&atilde; phổ biến, biết đ&acirc;u khi đi nghỉ bạn sẽ c&oacute; cơ hội tuyệt vời để thử một số thương hiệu mới. Nếu đưa trẻ c&ograve;n nhỏ, thay v&igrave; đ&oacute;ng đầy h&agrave;nh l&yacute; chỉ mang t&atilde;, bỉm đủ cho một hoặc hai ng&agrave;y, sau đ&oacute; đến nơi sẽ mua.</p>\r\n<p><strong>Ai c&oacute; phần người nấy</strong></p>\r\n<p>Nếu cho trẻ lớn đi c&ugrave;ng, h&atilde;y để con tự b&agrave;y ra những g&igrave; ch&uacute;ng muốn mang theo, sau đ&oacute; c&ugrave;ng xem x&eacute;t mang theo g&igrave; l&agrave; cần thiết. Điều n&agrave;y sẽ khiến trẻ cảm thấy c&oacute; tr&aacute;ch nhiệm hơn khi được tham gia ngay từ đầu. Mỗi trẻ c&oacute; thể mang bal&ocirc; ri&ecirc;ng, nhỏ bền để đựng đồ chơi v&agrave; vật dụng thiết yếu. Mặc d&ugrave; vậy, chiếc ba l&ocirc; đ&oacute; chỉ bằng 10-15% trọng lượng cơ thể của trẻ.</p>\r\n<p><strong>Kiểm so&aacute;t số lượng</strong></p>\r\n<p>Trước khi đi, h&atilde;y xem x&eacute;t một lần nữa h&agrave;nh l&yacute; đ&atilde; đ&oacute;ng g&oacute;i. Nếu bạn c&ograve;n ph&acirc;n v&acirc;n vật dụng đ&oacute; c&oacute; cần thiết hay kh&ocirc;ng, c&oacute; nghĩa l&agrave; kh&ocirc;ng cần. Ri&ecirc;ng đi m&aacute;y bay cần c&acirc;n h&agrave;nh l&yacute; trước để tr&aacute;nh t&igrave;nh trạng qu&aacute; c&acirc;n. Cuối c&ugrave;ng, h&atilde;y thử mang h&agrave;nh l&yacute; tr&ecirc;n một qu&atilde;ng đường ngắn. Nếu thấy kh&oacute; khăn sau khi đi bộ 15 ph&uacute;t, c&oacute; lẽ n&ecirc;n đ&oacute;ng g&oacute;i lại!</p>', '', '91609869.jpg', '91609869_120x80.jpg', '91609869_175x135.jpg', 1, 1, 1341890399, 0);
INSERT INTO `table_news` VALUES (3, 1, 0, 'Bạn có biết cách chọn, mua mực khô ngon? ', 'ban-co-biet-cach-chon-mua-muc-kho-ngon', 'Mực khô là món ăn rất ngon và phổ biến, mỗi lần đi du lịch biển, bạn muốn mua làm quà nhưng lại không biết phải lựa chọn như thế nào để có loại mực khô ngon nhất? Để chọn mực khô chất lượng, cách bảo quản và nướng mực ngon không phải ai cũng biết.', '<h1 class="contentheading clearfix">&nbsp;</h1>\r\n<div class="article-content">\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/baiviet/muc-kho.jpg" alt="muc-kho" width="438" height="310" /></p>\r\n<p>Mực kh&ocirc; l&agrave; m&oacute;n ăn rất ngon v&agrave; phổ biến, mỗi lần đi du lịch biển, bạn muốn mua l&agrave;m qu&agrave; nhưng lại kh&ocirc;ng biết phải lựa chọn như thế n&agrave;o để c&oacute; loại mực kh&ocirc; ngon nhất? Để chọn mực kh&ocirc; chất lượng, c&aacute;ch bảo quản v&agrave; nướng mực ngon kh&ocirc;ng phải ai cũng biết.</p>\r\nMực c&ograve;n tươi trước khi được phơi kh&ocirc; sẽ ngon hơn mực ươn hay đ&atilde; để l&acirc;u. V&agrave;i mẹo nhỏ sau đ&acirc;y c&oacute; thể gi&uacute;p bạn tự tin khi chọn mua mực kh&ocirc;.\r\n<div>\r\n<p><strong>C&aacute;ch chọn, mua mực kh&ocirc; ngon:</strong></p>\r\n<p>1. Mực c&oacute; lớp phấn trắng: Mực khi phơi kh&ocirc; thường c&oacute; lớp phấn trắng phủ tr&ecirc;n th&acirc;n, mực c&agrave;ng tươi lớp phấn trắng n&agrave;y c&agrave;ng nhiều. V&igrave; thế bạn n&ecirc;n chọn những con mực nhiều phấn v&agrave; y&ecirc;n t&acirc;m l&agrave; ch&uacute;ng được phơi kh&ocirc; ngay khi vừa mới đ&aacute;nh bắt l&ecirc;n bờ. Những con mực c&oacute; th&acirc;n thẳng, m&igrave;nh d&agrave;y, khi nướng ăn sẽ rất ngọt.</p>\r\n<p>2. Th&acirc;n mực thẳng, m&igrave;nh d&agrave;y: Chọn những con mực c&oacute; th&acirc;n thẳng, m&igrave;nh d&agrave;y, khi nướng ăn sẽ rất ngọt. Nhiều người chưa ch&uacute; &yacute; lắm tới đặc điểm n&agrave;y, nhưng đ&acirc;y cũng l&agrave; một c&aacute;ch gi&uacute;p bạn chọn được những con mực kh&ocirc;ng chỉ tươi m&agrave; c&ograve;n ngon v&agrave; ngọt.</p>\r\n<p>3. Mực hồng m&agrave;u tự nhi&ecirc;n: Mực kh&ocirc; tươi l&agrave; con mực khi cầm l&ecirc;n phải thật kh&ocirc; r&aacute;o, th&acirc;n v&agrave; đầu mực d&iacute;nh liền nhau, c&oacute; m&agrave;u hồng tự nhi&ecirc;n, kh&ocirc;ng tanh hay d&iacute;nh ướt tay. Bởi mực tanh l&agrave; mực đ&atilde; ươn (để l&acirc;u) mới được sơ chế th&agrave;nh mực kh&ocirc;.</p>\r\n<p>4. Mực kh&ocirc; thượng hạng nguy&ecirc;n con m&igrave;nh chắc, b&oacute;ng sạch, thịt d&agrave;y, m&agrave;u hồng s&aacute;ng, to vừa phải, sờ c&ograve;n hơi ẩm, đượm m&ugrave;i mặn, tanh.</p>\r\n<p>5. Mực một nắng ngon, ngọt, chọn con vừa phải, m&igrave;nh d&agrave;y c&oacute; lớp c&aacute;m, m&agrave;u hồng tươi.</p>\r\n<p>6. Mực dễ mốc, mua về n&ecirc;n ăn ngay. Nướng mực bằng cồn 90 độ l&agrave; ngon nhất. Nướng lửa than kh&ocirc;ng để lửa to v&igrave; sẽ ch&iacute;n ngo&agrave;i, sống trong. Nếu để l&acirc;u cần bọc ni l&ocirc;ng k&iacute;n, để nơi tho&aacute;ng, hoặc cất tủ lạnh (nhưng sẽ bị kh&ocirc; dần).</p>\r\n<p>7. Kh&ocirc;ng để mực kh&ocirc; sống lẫn với mực kh&ocirc; đ&atilde; nướng.</p>\r\n<p>8. Mực k&eacute;m chất lượng hay c&oacute; đốm đỏ th&acirc;m ở th&acirc;n, lưng, hai mặt c&oacute; những nốt m&agrave;u đỏ nhạt.</p>\r\n<p><strong>C&aacute;ch bảo quản mực kh&ocirc;</strong></p>\r\n<p>Mực kh&ocirc; sau khi mua về, nếu kh&ocirc;ng chế biến ngay th&igrave; rất cần được bảo quản tốt. Nếu kh&ocirc;ng, mực kh&ocirc; sẽ bị giảm chất lượng.</p>\r\n<p>Khi mua mực kh&ocirc; bạn n&ecirc;n lựa chọn mực kh&ocirc; thật kĩ v&igrave; n&oacute; ảnh hưởng rất nhiều đến qu&aacute; tr&igrave;nh bảo quản của bạn, d&ugrave; bạn c&oacute; bảo quản tốt như thế n&agrave;o nhưng mua nhằm loại mực kh&ocirc; đ&atilde; hư hoặc c&oacute; vấn đề từ trước th&igrave; cũng kh&ocirc;ng thể mang lại hiệu quả.</p>\r\n<p>Mực kh&ocirc; khi mua về, c&aacute;ch tốt nhất l&agrave; bạn bọc ni l&ocirc;ng, bịt k&iacute;n lại cẩn thận v&agrave; để nơi tho&aacute;ng kh&iacute;, kh&ocirc; r&aacute;o.</p>\r\n<p>Bạn cũng c&oacute; thể bảo quản mực kh&ocirc; trong tủ lạnh, bằng c&aacute;ch cũng cho v&agrave;o bao ni l&ocirc;ng v&agrave; bịt k&iacute;n lại nhưng kh&ocirc;ng khuyến kh&iacute;ch v&igrave; n&oacute; sẽ l&agrave;m giảm dần độ kh&ocirc; của mực kh&ocirc;.</p>\r\n<p>N&ecirc;n để ri&ecirc;ng mực kh&ocirc; với c&aacute;c loại thủy sản kh&ocirc; kh&aacute;c, tr&aacute;nh để chồng l&ecirc;n nhau.</p>\r\n<p>Khi mua về n&ecirc;n sử dụng ngay trong v&ograve;ng 4 th&aacute;ng.</p>\r\n<p>Khoảng 3 hoặc 4 tuần bạn n&ecirc;n lấy ch&uacute;ng ra phơi nắng trong 10-15 ph&uacute;t.</p>\r\n<p>Tr&aacute;nh để mực kh&ocirc; sống v&agrave; đ&atilde; nướng ch&iacute;n, hoặc đ&atilde; chế biến chung với nhau.</p>\r\n<p><strong>C&aacute;ch nướng mực ngon</strong></p>\r\n<p>- T&aacute;ch rời th&acirc;n v&agrave; r&acirc;u mực.</p>\r\n<p>- Cho th&acirc;n mực v&agrave;o chảo inox (hoặc xoong) cũ.</p>\r\n<p>- Đổ lượng cồn vừa phải (t&ugrave;y theo con mực to hay nhỏ) l&ecirc;n m&igrave;nh mực, lật đi lật lại c&aacute;c con mực trong khoảng 1 - 2 ph&uacute;t để cho mực thấm đều cồn.</p>\r\n<p>- Ch&acirc;m lửa v&agrave;o chảo, d&ugrave;ng đũa nhanh tay lật đi lật lại c&aacute;c con mực cho đến khi mực cong lại v&agrave; lượng cồn ch&aacute;y hết l&agrave; mực đ&atilde; ch&iacute;n.</p>\r\n<p>- G&oacute;i mực v&agrave;o tờ b&aacute;o, d&ugrave;ng ch&agrave;y đập nhẹ để mực mềm v&agrave; thơm. X&eacute; mực th&agrave;nh từng miếng nhỏ, ăn với tương ớt.</p>\r\n<p>Lưu &yacute;:</p>\r\n<p>- Thời gian tẩm mực v&agrave; thời gian nướng chỉ từ 3 - 5 ph&uacute;t t&ugrave;y con mực to hay nhỏ.</p>\r\n<p>- Lượng cồn nướng mực n&ecirc;n vừa phải nếu kh&ocirc;ng con mực sẽ bị ch&aacute;y, ăn đắng.</p>\r\n<p>- Để nướng r&acirc;u mực ch&iacute;n đều v&agrave; kh&ocirc;ng bị ch&aacute;y, bạn n&ecirc;n nướng ri&ecirc;ng c&aacute;c r&acirc;u mực với nhau.</p>\r\n</div>\r\n</div>', '', '09255816.jpg', '09255816_120x80.jpg', '09255816_175x135.jpg', 1, 1, 1341890450, 0);
INSERT INTO `table_news` VALUES (4, 1, 0, 'Giữ tiền an toàn khi đi du lịch', 'giu-tien-an-toan-khi-di-du-lich', 'Tiền bạc đóng vai trò rất quan trọng trong những chuyến du lịch, vì vậy việc giữ tiền an toàn là vấn đề được mọi du khách quan tâm.\r\nDưới đây là một số kinh nghiệm giúp bạn giữ tiền an toàn trong chuyến đi. ', '<h1 class="contentheading clearfix">&nbsp;</h1>\r\n<div class="article-content">\r\n<p class="summary"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/baiviet/money1.jpg" alt="money1" width="430" height="332" /></p>\r\n<p class="summary">Tiền bạc đ&oacute;ng vai tr&ograve; rất quan trọng trong những chuyến du lịch, v&igrave; vậy việc giữ tiền an to&agrave;n l&agrave; vấn đề được mọi du kh&aacute;ch quan t&acirc;m.</p>\r\nDưới đ&acirc;y l&agrave; một số kinh nghiệm gi&uacute;p bạn giữ tiền an to&agrave;n trong chuyến đi.\r\n<p><strong><em>- Mua bảo hiểm du lịch</em></strong></p>\r\n<p>Mua bảo hiểm thực chất l&agrave; mua sự an t&acirc;m, việc mua bảo hiểm khi đi du lịch v&igrave; thế l&agrave; điều cần thiết, thậm ch&iacute; bắt buộc khi bạn đi du lịch nước ngo&agrave;i. Hiện chỉ c&oacute; bảo hiểm du lịch cho kh&aacute;ch VN đi nước ngo&agrave;i v&agrave; bảo hiểm du lịch cho kh&aacute;ch nước ngo&agrave;i đi du lịch tại VN l&agrave; c&oacute; bảo hiểm cho h&agrave;nh l&yacute; v&agrave; tư trang. Bảo hiểm du lịch cho kh&aacute;ch VN đi du lịch trong nước chưa c&oacute; dịch vụ n&agrave;y.</p>\r\n<p><strong><em>- Sử dụng ATM, thẻ thanh to&aacute;n quốc tế</em></strong></p>\r\n<p>Sự ra đời của c&aacute;c loại thẻ giữ v&agrave; thanh to&aacute;n như ATM, thẻ t&iacute;n dụng đ&atilde; mang đến sự an to&agrave;n v&agrave; tiện lợi cho người d&ugrave;ng. Khi sử dụng những loại thẻ n&agrave;y, du kh&aacute;ch rất dễ giữ tiền (thẻ), d&ugrave;ng để r&uacute;t tiền, thanh to&aacute;n tiền.</p>\r\n<p>Th&ocirc;ng thường với những chuyến đi trong nước, thẻ ATM được sử dụng nhiều, c&ograve;n những chuyến đi nước ngo&agrave;i, c&aacute;c loại thẻ thanh to&aacute;n quốc tế như Visa, Master Card, American Express... lu&ocirc;n l&agrave; sự lựa chọn phổ biến.</p>\r\n<p><strong><em>- S&eacute;c du lịch</em></strong></p>\r\n<p>S&eacute;c du lịch l&agrave; một loại s&eacute;c đ&iacute;ch danh, cho ph&eacute;p du kh&aacute;ch c&oacute; thể thanh to&aacute;n c&aacute;c dịch vụ v&agrave; h&agrave;ng h&oacute;a dịch vụ m&agrave; kh&ocirc;ng cần tiền mặt khi đi du lịch. S&eacute;c du lịch được du kh&aacute;ch chọn sử dụng bởi l&yacute; do an to&agrave;n, dễ sử dụng v&agrave; dễ d&agrave;ng bảo quản. Hiện nay một số ng&acirc;n h&agrave;ng VN chấp nhận s&eacute;c du lịch như một loại ngoại tệ.</p>\r\n<p><em><strong>- Tự giữ tiền</strong></em></p>\r\n<p>Trong một số t&igrave;nh huống, việc giữ tiền b&ecirc;n m&igrave;nh l&agrave; việc phải l&agrave;m. Trong những trường hợp n&agrave;y, du kh&aacute;ch c&oacute; thể sử dụng một số sản phẩm hỗ trợ việc giữ tiền như t&uacute;i đựng tiền đeo cổ, t&uacute;i đựng tiền đeo bụng... hoặc một số c&aacute;ch giữ tiền: cất ở thắt lưng, vớ (tất), &aacute;o... Tuy nhi&ecirc;n khi giữ tiền b&ecirc;n m&igrave;nh, d&ugrave; c&oacute; cất kỹ đến đ&acirc;u bạn cũng n&ecirc;n hạn chế để mọi người xung quanh biết m&igrave;nh... đang c&oacute; tiền. Điều n&agrave;y kh&ocirc;ng chỉ gi&uacute;p t&agrave;i sản m&agrave; ngay bản th&acirc;n bạn cũng an to&agrave;n hơn.</p>\r\n<p>- <strong><em>Một số c&aacute;ch kh&aacute;c: Bạn c&oacute; thể &aacute;p dụng một số c&aacute;ch kh&aacute;c như:</em></strong></p>\r\n<p>+ Giữ tiền trong hộp an to&agrave;n (safe box) trong kh&aacute;ch sạn. Th&ocirc;ng thường trong c&aacute;c kh&aacute;ch sạn lớn sẽ c&oacute; bố tr&iacute; c&aacute;c safe box để kh&aacute;ch lưu tr&uacute; c&oacute; thể để đồ c&oacute; gi&aacute; trị.</p>\r\n<p>+ Gửi lễ t&acirc;n kh&aacute;ch sạn.</p>\r\n<p>+ Nếu đi theo nh&oacute;m, bạn c&oacute; thể chia tiền ra để mỗi người giữ một &iacute;t.</p>\r\n<p align="right"><strong>T&ugrave;ng L&acirc;m</strong></p>\r\n<p align="right">Tuổi Trẻ</p>\r\n</div>', '', '01994023.jpg', '01994023_120x80.jpg', '01994023_175x135.jpg', 1, 1, 1341890507, 0);
INSERT INTO `table_news` VALUES (5, 1, 0, '6 món đồ giúp tiết kiệm cho chuyến đi ', '6-mon-do-giup-tiet-kiem-cho-chuyen-di', 'Đừng quên bỏ vào va li những món đồ sau, sẽ giúp bạn tiết kiệm khi đi du lịch.', '<p class="summary">Đừng qu&ecirc;n bỏ v&agrave;o va li những m&oacute;n đồ sau, sẽ gi&uacute;p bạn tiết kiệm khi đi du lịch.</p>\r\n<p><span><strong>1. C&acirc;n h&agrave;nh l&yacute; bỏ t&uacute;i</strong></span><br /> <br /> H&agrave;nh l&yacute; qu&aacute; c&acirc;n lu&ocirc;n l&agrave; nỗi lo của những người đi du lịch. Bạn c&oacute; thể mất tới 200 USD cho những va li qu&aacute; nặng. Để tr&aacute;nh được nỗi lo n&agrave;y, v&igrave; sao kh&ocirc;ng mang th&ecirc;m một chiếc c&acirc;n bỏ t&uacute;i v&agrave; thường xuy&ecirc;n c&acirc;n đồ sau mỗi lần bạn nh&eacute;t th&ecirc;m những m&oacute;n đồ mới v&agrave;o va li. Bạn sẽ biết m&igrave;nh n&ecirc;n hay kh&ocirc;ng n&ecirc;n mua th&ecirc;m đồ mới!</p>\r\n<div><span><strong><span class="storyInlinePhoto"><img src="http://camnang-dulich.com/images/stories/lug3-20120624010838.jpg" alt="" /></span></strong></span></div>\r\n<p><span><strong><br /> <span>2. Kem chống nắng</span></strong><br /> <br /> Nhiều người quan niệm kem chống nắng ở đ&acirc;u cũng c&oacute;. Điều n&agrave;y kh&ocirc;ng sai. Chỉ c&oacute; một điểm kh&aacute;c: gi&aacute; kem chống nắng kh&ocirc;ng phải ở đ&acirc;u cũng thế. H&atilde;y mua kem chống nắng ở những hiệu thuốc trước khi đi du lịch v&agrave; bạn sẽ tr&aacute;nh việc phải chạy khắp nơi t&igrave;m mua những lọ kem đắt tiền ở nơi bạn đến. <br /> <br /> </span></p>\r\n<div><span><span class="storyInlinePhoto"><img src="http://camnang-dulich.com/images/stories/lug4-20120624010838.jpg" alt="" /></span></span></div>\r\n<p><span><strong>3. Đồ ăn vặt</strong><br /> <br /> C&oacute; một thời c&aacute;c s&acirc;n bay cũng dễ t&iacute;nh y như người nh&agrave; của bạn. Giờ đ&acirc;y, thời thế đ&atilde; thay đổi. Ở một số h&atilde;ng bay như American Airlines, một t&uacute;i hạt dẻ c&oacute; gi&aacute; hơn 5USD, một t&uacute;i M&amp;M gi&aacute; 3USD. Vậy th&igrave; tại sao kh&ocirc;ng tự mang theo kẹo, hạt dẻ v&agrave; c&aacute;c m&oacute;n ăn vặt (kh&ocirc;ng phải chất lỏng) từ nh&agrave; bạn đi để tiết kiệm một &iacute;t tiền nhỉ?<br /> <br /> </span></p>\r\n<div><span><span class="storyInlinePhoto"><img src="http://camnang-dulich.com/images/stories/lug2-20120624010838.jpg" alt="" /></span></span></div>\r\n<p><span><br /> <strong>4. Băng d&iacute;nh</strong><br /> <br /> Băng d&iacute;nh v&ocirc; c&ugrave;ng hữu dụng. Bạn c&oacute; thể d&aacute;n lại t&uacute;i nilon cũ, d&aacute;n miệng của c&aacute;c lọ dầu gội hay nước hoa m&agrave; bạn mua về, b&oacute; quần &aacute;o chặt để nh&eacute;t th&ecirc;m nhiều đồ v&agrave;o h&agrave;nh l&yacute;. C&ograve;n g&igrave; thuận tiện hơn thế?<br /> </span></p>\r\n<div><span><span class="storyInlinePhoto"><img src="http://camnang-dulich.com/images/stories/lug1-20120624010838.jpg" alt="" /></span></span></div>\r\n<p><span><br /> <strong>5. Chai nước rỗng</strong><br /> <br /> Khi bạn qua khu vực kiểm tra an ninh s&acirc;n bay, bạn sẽ phải bỏ lại mọi thứ c&oacute; chứa chất lỏng, v&agrave; điều n&agrave;y c&oacute; nghĩa l&agrave; bạn sẽ phải mua nước với c&aacute;i gi&aacute; đắt hơn ở s&acirc;n bay trong khi đợi l&ecirc;n m&aacute;y bay. <br /> <br /> </span></p>\r\n<div><span><span class="storyInlinePhoto"><img src="http://camnang-dulich.com/images/stories/lug6-20120624010838.jpg" alt="" /></span></span></div>\r\n<p><span><br /> Tuy nhi&ecirc;n, c&oacute; một số s&acirc;n bay c&oacute; khu vực v&ograve;i nước (uống được) v&agrave; bạn c&oacute; thể mang chai kh&ocirc;ng tới, đổ đầy b&igrave;nh nước sau khi đ&atilde; qua khu kiểm tra an ninh. Bạn đ&atilde; tiết kiệm th&ecirc;m được một khoản chi ph&iacute; kha kh&aacute;!<br /> <br /> <strong>6. Bột giặt</strong><br /> <br /> Bột giặt l&agrave; m&oacute;n đồ v&ocirc; c&ugrave;ng c&oacute; &iacute;ch. Ch&uacute;ng chiếm diện t&iacute;ch &iacute;t nhưng lại sử dụng được nhiều lần v&agrave; kh&ocirc;ng thể thiếu trong h&agrave;nh trang du lịch. Hơn nữa, bạn c&oacute; thể mang bột giặt trong h&agrave;nh l&yacute; x&aacute;ch tay v&igrave; n&oacute; kh&ocirc;ng phải chất lỏng. <br /> <br /></span></p>\r\n<div><span><strong><span class="storyInlinePhoto"><img src="http://camnang-dulich.com/images/stories/lug5-20120624010838.jpg" alt="" /></span></strong></span></div>\r\n<div><span><strong>Hiền Trang (Theo <em>H</em>)</strong></span></div>', '', '42611175.jpg', '42611175_120x80.jpg', '42611175_175x135.jpg', 1, 1, 1341890575, 0);
INSERT INTO `table_news` VALUES (6, 1, 0, 'Leo Fan những điều cần biết ', 'leo-fan-nhung-dieu-can-biet', 'Chinh phục Fanxipan không cần dây hay kỹ năng leo núi kỹ thuật. Chủ yếu là đi bộ dọc theo các sống núi và các dòng suối, các con đường thoải theo sườn núi. Chinh phục Fanxipan có nhiều con đường khác nhau.', '<h1 class="contentheading clearfix">&nbsp;</h1>\r\n<div class="article-content">\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/img1636-20120626095115.jpg" alt="" /></p>\r\n<p>Chinh phục Fanxipan kh&ocirc;ng cần d&acirc;y hay kỹ năng leo n&uacute;i kỹ thuật. Chủ yếu l&agrave; đi bộ dọc theo c&aacute;c sống n&uacute;i v&agrave; c&aacute;c d&ograve;ng suối, c&aacute;c con đường thoải theo sườn n&uacute;i. Chinh phục Fanxipan c&oacute; nhiều con đường kh&aacute;c nhau.</p>\r\n<p><strong> KH&Aacute;I QU&Aacute;T</strong><br /> <br /> <em>Tỉnh L&agrave;o Cai l&agrave; tỉnh miền n&uacute;i, v&ugrave;ng cao. Ph&iacute;a Bắc gi&aacute;p tỉnh V&acirc;n Nam - Trung Quốc, ph&iacute;a Nam gi&aacute;p tỉnh Y&ecirc;n B&aacute;i, ph&iacute;a &ETH;&ocirc;ng gi&aacute;p tỉnh H&agrave; Giang, ph&iacute;a T&acirc;y gi&aacute;p tỉnh Sơn La, Lai Ch&acirc;u; c&aacute;ch thủ đ&ocirc; H&agrave; Nội 340 km. S 8.057,08 km2, chiếm 2,45% tổng diện t&iacute;ch tự nhi&ecirc;n cả nước. C&aacute;c đường giao th&ocirc;ng quan trọng như đường quốc lộ H&agrave; Nội - L&agrave;o Cai, L&agrave;o Cai - Lai Ch&acirc;u v&agrave; tuyến đường sắt H&agrave; Nội đi L&agrave;o Cai, L&agrave;o Cai đi V&acirc;n Nam (Trung Quốc). Hệ thống s&ocirc;ng ch&iacute;nh của tỉnh gồm s&ocirc;ng Hồng bắt nguồn từ tỉnh V&acirc;n Nam Trung Quốc chảy qua tỉnh Y&ecirc;n B&aacute;i d&agrave;i 120 km; s&ocirc;ng Chảy bắt nguồn từ v&ugrave;ng n&uacute;i T&acirc;y C&ocirc;n Lĩnh (Trung Quốc) d&agrave;i 124 km. C&oacute; 2 d&atilde;y n&uacute;i lớn l&agrave; d&atilde;y Ho&agrave;ng Li&ecirc;n Sơn v&agrave; d&atilde;y Con Voi. D&atilde;y Ho&agrave;ng Li&ecirc;n Sơn c&oacute; nhiều đỉnh cao (Phan Xi Păng cao 3.143 m, Tả Gi&agrave;ng Ph&igrave;nh cao 3.090 m so với mặt nước biển)<br /> <br /> M&ugrave;a kh&ocirc; bắt đầu từ th&aacute;ng 10 đến th&aacute;ng 3 năm sau; m&ugrave;a mưa bắt đầu từ th&aacute;ng 4 đến th&aacute;ng 9; mưa, b&atilde;o tập trung v&agrave;o c&aacute;c th&aacute;ng 4 v&agrave; th&aacute;ng 9. Nhiệt độ trung b&igrave;nh h&agrave;ng năm cao nhất 25 độ C, thấp nhất 12 độ C. H&agrave;ng năm c&oacute; 04 th&aacute;ng nhiệt độ trung b&igrave;nh 18 độ C; tần suất sương muối thường xảy ra v&agrave;o m&ugrave;a r&eacute;t.<br /> <br /> Tr&ecirc;n địa b&agrave;n tỉnh c&oacute; 27 d&acirc;n tộc, đ&ocirc;ng nhất l&agrave; d&acirc;n tộc Kinh c&oacute; 196.889 người, chiếm 33,12%; c&aacute;c d&acirc;n tộc thiểu số như d&acirc;n tộc T&agrave;y c&oacute; 81.666 người, chiếm 13,74%; d&acirc;n tộc Th&aacute;i c&oacute; 52.146 người, chiếm 8,77%; d&acirc;n tộc M&ocirc;ng c&oacute; 123.778 người, chiếm 20,82%; d&acirc;n tộc Dao c&oacute; 74.220 người, chiếm 12,48%; d&acirc;n tộc Gi&aacute;y c&oacute; 24.672 người, chiếm 4,15%; d&acirc;n tộc N&ugrave;ng c&oacute; 22.666 người, chiếm 3,81%; d&acirc;n tộc kh&aacute;c chiếm 3,11%.<br /> <br /> Fanxipan (3.143m), độ cao mơ ước của nhiều người y&ecirc;u th&iacute;ch kh&aacute;m ph&aacute; của thi&ecirc;n nhi&ecirc;n đa sắc m&agrave;u v&agrave; cảnh quan kỳ vĩ. Độ cao của những kỷ niệm kh&ocirc;ng bao giờ qu&ecirc;n trong c&aacute;c h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute;.<br /> <br /> N&uacute;i Phanxipan nằm trong d&atilde;y n&uacute;i Ho&agrave;ng Li&ecirc;n Sơn, về ph&iacute;a T&acirc;y Nam thị trấn Sapa. Được v&iacute; l&agrave; n&oacute;c nh&agrave; Việt Nam v&agrave; của Đ&ocirc;ng Dương. Phanxipan l&agrave; ngọn n&uacute;i cao nhất trong d&atilde;y Ho&agrave;ng Li&ecirc;n Sơn với độ cao 3.143m, chiều d&agrave;i 280km từ Phong Thổ tới H&ograve;a B&igrave;nh, chiều ngang ch&acirc;n n&uacute;i rộng nhất khoảng 75km, hẹp nhất la&agrave;45km. Gồm ba khối: Bạch Mộc Lương Tử, Phanxipan v&agrave; P&uacute; Lu&ocirc;ng. </em><br /> <br /> <strong>ĐI V&Agrave; ĐẾN</strong><br /> <br /> <strong>T&agrave;u</strong><br /> <br /> Phương tiện được chọn nhiều nhất để tiết kiệm chi ph&iacute; v&agrave; thời gian cho c&aacute;c h&agrave;nh tr&igrave;nh chinh phục Fanxipan l&agrave; đi t&agrave;u từ ga Trần Qu&yacute; C&aacute;p l&ecirc;n L&agrave;o Cai, bus l&ecirc;n sapa v&agrave; bắt đầu h&agrave;nh tr&igrave;nh chinh phục đỉnh cao.<br /> <br /> N&ecirc;n đặt v&eacute; t&agrave;u trước 1 &ndash; 2 tuần nếu chọn h&agrave;nh tr&igrave;nh v&agrave;o cuối tuần. Gi&aacute; v&eacute; c&oacute; thể thay đổi giữa việc mua trực tiếp tại ga v&agrave; h&atilde;nh lữ h&agrave;nh. V&eacute; về cũng n&ecirc;n mua trước, c&oacute; thể đặt tại c&aacute;c kh&aacute;ch sạn hoặc c&aacute;c đại l&yacute; du lịch tại Sapa hoặc L&agrave;o Cai.<br /> <br /> Fanxipan, tất cả c&aacute;c m&ugrave;a trong năm đều c&oacute; những vẻ đẹp kh&aacute;c nhau.<br /> <br /> <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/img0240-20120626095115.jpg" alt="" /> <br /> <strong>Bus</strong><br /> <br /> Từ L&agrave;o Cai, di chuyển l&ecirc;n Sapa bằng c&aacute;c chuyến Bus 16 chỗ. Rất nhiều xe v&agrave; phục vụ tốt đậu trước cửa ra của ga L&agrave;o Cai. <br /> <br /> Từ L&agrave;o Cai về bạn c&oacute; thể nhờ kh&aacute;ch sạn ''book xe'' trước, xe sẽ tới đ&oacute;n tại kh&aacute;ch sạn hoặc để tr&aacute;nh bị l&ograve;ng v&ograve;ng c&oacute; thể ra trực tiếp tại khu vực quảng trường, trước nh&agrave; thờ, b&ecirc;n cạnh vườn hoa tại Sapa.&nbsp;<br /> <br /> <br /> <strong>CHINH PHỤC FANSIPAN</strong><br /> <br /> <strong>Đăng k&iacute; leo n&uacute;i</strong><br /> <br /> Để được leo Fanxipan, bạn cần c&oacute; giấy ph&eacute;p v&agrave;o rừng quốc gia Ho&agrave;ng Li&ecirc;n Sơn, giấy do Ban Quản L&yacute; Vườn Quốc Gia Ho&agrave;ng Li&ecirc;n Sơn cấp. Giấy n&agrave;y c&oacute; thể lấy trong buổi s&aacute;ng khi bạn bắt đầu đi Fanxipan. Khi xin ph&eacute;p, khoản lệ ph&iacute; bạn phải thanh to&aacute;n bao gồm c&aacute;c khoản ph&iacute;: như ph&iacute; vệ sinh, ph&iacute; kiểm l&acirc;m, ph&iacute; leo n&uacute;i, bảo hiểm<br /> <br /> <strong>''Porter''</strong><br /> <br /> Porter l&agrave; những người khu&acirc;n v&aacute;c c&oacute; tr&aacute;ch nhiệm mang v&aacute;c đồ đạc, dựng lều trại v&agrave; lo ăn nghỉ cho bạn tr&ecirc;n n&uacute;i. Thường cứ 2 người th&igrave; cần 1 porter. Porter chủ yếu l&agrave; người M&ocirc;ng tại c&aacute;c bản như l&acirc;n cận Sapa. Porter hầu hết l&agrave; những người hiền l&agrave;nh, vui vẻ v&agrave; rất dễ gần. Họ cũng c&oacute; khả năng nấu ăn tốt. Trong qu&aacute; tr&igrave;nh tr&ecirc;n n&uacute;i, n&ecirc;n để 1 nửa porter tới điểm nghỉ trước để chuẩn bị trại (nếu d&ugrave;ng trại) v&agrave; l&aacute;n (nếu d&ugrave;ng l&aacute;n c&oacute; sẵn) v&agrave; nấu cơm. Trong qu&aacute; tr&igrave;nh đi, h&atilde;y hỏi họ tất cả những g&igrave; bạn nh&igrave;n thấy, thắc mắc. Họ c&oacute; thể chỉ cho bạn rất nhiều điều th&uacute; vị tr&ecirc;n Fanxipan. Lu&ocirc;n t&ocirc;n trọng v&agrave; quan t&acirc;m đến họ.<br /> <br /> <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/img0342-20120626095115.jpg" alt="" /> <br /> <br /> <strong>Hướng dẫn vi&ecirc;n</strong><br /> <br /> Việc thu&ecirc; hướng dẫn vi&ecirc;n kh&ocirc;ng phải l&agrave; điều bắt buộc. V&igrave; thực tế, porter ho&agrave;n to&agrave;n c&oacute; thể l&agrave; người hướng dẫn cho bạn tr&ecirc;n n&uacute;i. Tuy nhi&ecirc;n, trường hợp bạn đi d&agrave;i ng&agrave;y v&agrave; muốn t&igrave;m hiểu nhiều về thi&ecirc;n nhi&ecirc;n tại Ho&agrave;ng Li&ecirc;n Sơn th&igrave; n&ecirc;n thu&ecirc; 1 hướng dẫn vi&ecirc;n c&oacute; vốn kiến thức s&acirc;u. Gi&aacute; thu&ecirc; hướng dẫn vi&ecirc;n từ 150.000 vnđ &ndash; 250.000 vnđ/ng&agrave;y.<br /> <br /> Trường hợp bạn thu&ecirc; HDV th&igrave; to&agrave;n bộ thủ tục v&agrave;o rừng HDV c&oacute; thể thay bạn thực hiện. Hướng dẫn vi&ecirc;n bạn c&oacute; thể thu&ecirc; tại c&aacute;c văn ph&ograve;ng du lịch tr&ecirc;n Sapa hoặc li&ecirc;n hệ với Anh Ki&ecirc;n điện thoại 0912047565. Đ&acirc;y l&agrave; những hướng dẫn c&oacute; kinh nghiệm l&acirc;u năm, c&oacute; sức khỏe, vốn hiểu biết rộng v&agrave; rất dễ chịu. Chắc chắn sẽ mang tới cho bạn 1 h&agrave;nh tr&igrave;nh nhiều thi vị.<br /> <br /> Chinh phục Fanxipan kh&ocirc;ng cần d&acirc;y hay kỹ năng leo n&uacute;i kỹ thuật. Chủ yếu l&agrave; đi bộ dọc theo c&aacute;c sống n&uacute;i v&agrave; c&aacute;c d&ograve;ng suối, c&aacute;c con đường thoải theo sườn n&uacute;i. Chinh phục Fanxipan c&oacute; nhiều con đường kh&aacute;c nhau.&nbsp;Ch&uacute;ng t&ocirc;i&nbsp;chỉ giới thiệu 4 con đường ch&iacute;nh.<br /> <br /> <strong><em>Đi C&aacute;t C&aacute;t về S&iacute;n Chải</em></strong><br /> <br /> Đ&acirc;y l&agrave; con đường kh&oacute; nhất b&ecirc;n ph&iacute;a L&agrave;o Cai để chinh phục Fanxipan. Những người c&oacute; thể lực tốt hoặc d&agrave;i ng&agrave;y thường chọn đường n&agrave;y để kh&aacute;m ph&aacute; v&agrave; chinh phục N&oacute;c Nh&agrave; Đ&ocirc;ng Dương<br /> <br /> <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/img1543-20120626095115.jpg" alt="" /> <br /> <br /> <strong><em>Đi C&aacute;t C&aacute;t về Trạm T&ocirc;n</em></strong><br /> <br /> So với c&aacute;c đường kh&aacute;c th&igrave; con đường n&agrave;y được nhiều lựa chọn để c&oacute; thể thấy r&otilde; r&agrave;ng hơn về Fanxipan. Dĩ nhi&ecirc;n, qu&atilde;ng đường đi xa hơn v&agrave; cũng kh&oacute; khăn hơn với chặng từ C&aacute;t C&aacute;t.<br /> <br /> <strong><em>Đi Trạm T&ocirc;n về Trạm T&ocirc;n</em></strong><br /> <br /> Đ&acirc;y l&agrave; con đường ngắn nhất v&agrave; đơn giản nhất. Với những người c&oacute; sức khỏe b&igrave;nh thường, &iacute;t tập luyện vẫn c&oacute; thể chinh phục th&agrave;nh c&ocirc;ng. Để đi từ Sapa l&ecirc;n Trạm T&ocirc;n, c&oacute; thể thu&ecirc; loại xe chuy&ecirc;n dụng hoặc xe 16 chỗ tại c&aacute;c c&ocirc;ng ty du lịch với gi&aacute; từ 250 &ndash; 300.000/lượt. N&ecirc;n đặt lu&ocirc;n cả đi v&agrave; về. Từ trạm kiểm l&acirc;m Trạm T&ocirc;n, bạn sẽ bắt đầu v&agrave;o rừng v&agrave;o khoảng 10h s&aacute;ng, với những đoạn dốc ngắn, chủ yếu l&agrave; xuống v&agrave; thoải l&ecirc;n tr&ecirc;n. Sẽ đi qua nhiều con suối (số lượng suối phụ thuộc v&agrave;o thời tiết, nếu mưa suối sẽ nhiều v&agrave; nước to hơn), đi qua B&atilde;i Tr&acirc;u, qua 1 con suối lớn v&agrave; ăn trưa tại B&atilde;i Sỏi v&agrave; l&uacute;c 12h30 &ndash; 13h (t&ugrave;y sức khỏe v&agrave; thời gian ngắm cảnh tr&ecirc;n đường). Từ B&atilde;i Sỏi, con đường bắt đầu dốc hơn v&agrave; nghỉ tại trại 2.200m sau 2 tiếng (v&agrave;o khoảng 16h; ng&ograve;ai ra, nếu bạn xuất ph&aacute;t sớm th&igrave; c&oacute; thể đi thẳng l&ecirc;n điểm nghỉ 2800m)<br /> <br /> Ng&agrave;y tiếp theo, h&agrave;nh tr&igrave;nh tiếp tục với việc đi tr&ecirc;n c&aacute;c sườn n&uacute;i, sống n&uacute;i, vượt qua rừng ch&aacute;y, c&aacute;c cầu thang, qua điểm 2900 v&agrave; thẳng tiến l&ecirc;n đỉnh. Đ&acirc;y l&agrave; đoạn đường d&agrave;i v&agrave; dốc n&ecirc;n cần phải đi chậm để giữ sức. Bạn c&oacute; thể chinh phục đỉnh Fanxipan (3.143m) v&agrave;o l&uacute;c 11h (sau từ 3 &ndash; 4 tiếng). Ăn trưa tr&ecirc;n đỉnh v&agrave; trở lại điểm nghỉ 2.900 hoặc 2.200 (t&ugrave;y v&agrave;o sức khỏe). Trở về v&agrave;o s&aacute;ng ng&agrave;y thứ 3.</p>\r\n</div>', '', '12095921.jpg', '12095921_120x80.jpg', '12095921_175x135.jpg', 1, 1, 1341890625, 0);
INSERT INTO `table_news` VALUES (7, 1, 0, 'Tư vấn đi chơi ở Sapa ', 'tu-van-di-choi-o-sapa', 'Sapa cách Hà Nội 370 km, khách du lịch đi từ Hà Nội lên Sapa thường đi tàu tới Lào Cai rồi chuyển qua đi xe khách, khoảng rạng sáng là tới nơi. Khí hậu ở đây thường mát mẻ, vào mùa hè, trời không nắng gắt còn mùa đông, nhiệt độ xuống thấp, có năm có băng tuyết.', '<p align="center"><img src="http://camnang-dulich.com/images/stories/top2-20120628211358.jpg" alt="Những em b&eacute; ở th&agrave;nh phố trong sương." width="500" height="375" align="middle" border="1" /></p>\r\n<p>Những ng&agrave;y cuối th&aacute;ng 4 l&agrave; dịp th&agrave;nh phố trong sương tổ chức Lễ hội tr&ecirc;n m&acirc;y.</p>\r\n<p align="center"><img src="http://camnang-dulich.com/images/stories/top1-20120628211358.jpg" alt="Nh&agrave; thờ ở Sapa. Ảnh: Ban Mai." width="400" height="480" align="middle" border="1" /></p>\r\n<p align="center">Nh&agrave; thờ ở Sapa. Ảnh: Ban Mai.</p>\r\n<p>Trong dịp 30/4, mọi người được nghỉ lễ nhiều ng&agrave;y n&ecirc;n Sapa l&agrave; một trong những lựa chọn được nhiều bạn quan t&acirc;m.</p>\r\n<p><a href="http://tourdulich-sapa.com/">Sapa </a>c&aacute;ch H&agrave; Nội 370 km, kh&aacute;ch du lịch đi từ H&agrave; Nội l&ecirc;n Sapa thường đi t&agrave;u tới L&agrave;o Cai rồi chuyển qua đi xe kh&aacute;ch, khoảng rạng s&aacute;ng l&agrave; tới nơi. Kh&iacute; hậu ở đ&acirc;y thường m&aacute;t mẻ, v&agrave;o m&ugrave;a h&egrave;, trời kh&ocirc;ng nắng gắt c&ograve;n m&ugrave;a đ&ocirc;ng, nhiệt độ xuống thấp, c&oacute; năm c&oacute; băng tuyết.</p>\r\n<p>Nếu đ&atilde; c&oacute; dịp tới Sapa, mời bạn chia sẻ với c&aacute;c độc giả kh&aacute;c những điểm vui chơi, c&aacute;c m&oacute;n ăn ngon th&uacute; vị. C&aacute;c tư vấn của bạn sẽ được cập nhật th&ecirc;m v&agrave;o b&agrave;i:</p>\r\n<p>Điểm đi chơi th&uacute; vị:</p>\r\n<p>- Tr&egrave;o l&ecirc;n n&uacute;i H&agrave;m Rồng ngắm những thảm hoa tr&ecirc;n đường đi. Khi tới S&acirc;n M&acirc;y, bạn sẽ c&oacute; dịp ph&oacute;ng mắt để nh&igrave;n to&agrave;n cảnh th&agrave;nh phố từ tr&ecirc;n cao. N&uacute;i cao gần 2.000m so với mực nước biển, nằm ở khu trung t&acirc;m.</p>\r\n<p>- Xuống chơi ở bản C&aacute;t C&aacute;t, c&aacute;ch trung t&acirc;m khoảng 12 km.</p>\r\n<p>- Đi tới th&aacute;c Bạc, d&ograve;ng th&aacute;c đổ xuống từ tr&ecirc;n cao, bọt tung trắng x&oacute;a n&ecirc;n được gọi t&ecirc;n như vậy.</p>\r\n<p>- Cầu M&acirc;y c&aacute;ch Sapa khoảng 17 km.</p>\r\n<p>- Đi chơi ở khu phố Ch&acirc;n M&acirc;y, nơi tập trung nhiều qu&aacute;n c&agrave; ph&ecirc;, đồ ăn.</p>\r\n<p>- B&atilde;i đ&aacute; cổ Sapa bao gồm khoảng 200 khối đ&aacute; với c&aacute;c h&igrave;nh chạm khắc cổ xưa nằm trong thung lũng Mường Hoa. Đ&oacute; l&agrave; h&igrave;nh hoa văn trang tr&iacute;, h&igrave;nh người, nh&agrave; s&agrave;n...</p>\r\n<p>- Thu&ecirc; xe m&aacute;y ngay tại kh&aacute;ch sạn (chỉ 80.000 đồng mỗi ng&agrave;y) để đi xuống bản Tả Ph&igrave;n (c&aacute;ch trung t&acirc;m 17 km), T&agrave; C&uacute; chơi. Bạn đừng lo kh&ocirc;ng biết đường, tiếp t&acirc;n ở kh&aacute;ch sạn sẽ hướng dẫn v&agrave; cung cấp bản đồ. Tuy nhi&ecirc;n, đường đi kh&aacute; quanh co v&agrave; kh&uacute;c khuỷu, chỉ ph&ugrave; hợp với những ai ưa mạo hiểm.</p>\r\n<p>- Khi đ&ecirc;m xuống, th&agrave;nh phố b&eacute; x&iacute;u trở n&ecirc;n đẹp một c&aacute;ch huyền ảo. Đi trong sương m&ugrave; tr&ecirc;n những con dốc, ngồi sưởi b&ecirc;n bếp than hồng, ăn trứng g&agrave; nướng chấm với bột n&ecirc;m sẽ đem lại cho bạn những cảm gi&aacute;c thật tuyệt vời.</p>\r\n<p align="center"><img src="http://camnang-dulich.com/images/stories/top2-20120628211358.jpg" alt="Những em b&eacute; ở th&agrave;nh phố trong sương." width="500" height="375" align="middle" border="1" /></p>\r\n<p align="center">Những em b&eacute; ở th&agrave;nh phố trong sương. Ảnh: Ban Mai.</p>\r\n<p>C&aacute;c m&oacute;n ăn ngon:</p>\r\n<p>- C&aacute;c m&oacute;n nướng, khoai nướng, hạt dẻ, trứng g&agrave; nướng ở khu vực nh&agrave; thờ b&aacute;n v&agrave;o buổi tối.</p>\r\n<p>- Lẩu c&aacute; tầm hay rau cải m&egrave;o x&agrave;o nấm hương rừng.</p>\r\n<p>- V&agrave;o trong chợ c&oacute; thể thưởng thức c&aacute;c m&oacute;n lợn cắp n&aacute;ch, g&agrave;, chim nướng, thắng cố.</p>', '', '88883169.jpg', '88883169_120x80.jpg', '88883169_175x135.jpg', 1, 1, 1341890779, 0);
INSERT INTO `table_news` VALUES (8, 2, 0, 'Sẽ mở đường bay TPHCM - Kazakhstan ', 'se-mo-duong-bay-tphcm-kazakhstan', 'Hãng hàng không Air Astana của Kazakhstan sẽ mở đường bay nối TPHCM và Kazakhstan vào đầu năm 2013. Hãng này đã bắt đầu làm việc với ngành du lịch để bàn chuyện hợp tác phát triển lượng khách và chuẩn bị cho những hoạt động quảng bá hình ảnh tại TPHCM.', '<p><img src="http://camnang-dulich.com/images/stories/537c2_p1040274-20120528221152.jpg" alt="" /></p>\r\n<p>H&atilde;ng h&agrave;ng kh&ocirc;ng Air Astana của Kazakhstan sẽ mở đường bay nối TPHCM v&agrave; Kazakhstan v&agrave;o đầu năm 2013. H&atilde;ng n&agrave;y đ&atilde; bắt đầu l&agrave;m việc với ng&agrave;nh du lịch để b&agrave;n chuyện hợp t&aacute;c ph&aacute;t triển lượng kh&aacute;ch v&agrave; chuẩn bị cho những hoạt động quảng b&aacute; h&igrave;nh ảnh tại TPHCM.</p>\r\n<p>&Ocirc;ng Nguyễn Bảo Anh, Ph&oacute; ph&ograve;ng X&uacute;c tiến Du lịch, Lễ v&agrave; Sự kiện thuộc Sở Văn h&oacute;a Thể thao v&agrave; Du lịch TPHCM, cho biết đại diện của Air Astana vừa l&agrave;m việc với sở về việc hợp t&aacute;c.</p>\r\n<p>Theo kế hoạch, h&atilde;ng sẽ mở đường bay từ TPHCM đến Kazakhstan, qu&aacute; cảnh tại Bangkok (Th&aacute;i Lan) v&agrave;o đầu năm 2013 với tần suất 3 chuyến/tuần.</p>\r\n<p>"Air Astana đ&atilde; th&ocirc;ng b&aacute;o kế hoạch bay v&agrave; hoạt động quảng b&aacute; tại thị trường. Đầu ti&ecirc;n, h&atilde;ng sẽ c&oacute; gian h&agrave;ng giới thiệu h&igrave;nh ảnh tại Triển l&atilde;m Du lịch Quốc tế tại TPHCM v&agrave;o th&aacute;ng 9 tới v&agrave; tiếp đ&oacute; l&agrave; những hoạt động hợp t&aacute;c với doanh nghiệp du lịch trong nước", &ocirc;ng n&oacute;i.</p>\r\n<p>Theo th&ocirc;ng tin từ trang web của Air Astana, h&atilde;ng h&agrave;ng kh&ocirc;ng n&agrave;y đ&atilde; hoạt động được 10 năm v&agrave; hiện c&oacute; 50 đường bay quốc tế v&agrave; nội địa bằng c&aacute;c loại m&aacute;y bay như Airbus, Boeing... Air Astana đang chuẩn bị để mở đường bay đến Bắc Kinh (Trung Quốc), St Petersburg (Nga), Hồng K&ocirc;ng...</p>\r\n<p>Li&ecirc;n quan đến Triển l&atilde;m Du lịch Quốc tế tại TPHCM với chủ đề "Bốn quốc gia - một điểm đến" sẽ diễn ra từ ng&agrave;y 13 đến 15-9 tại Trung t&acirc;m Triển l&atilde;m v&agrave; Hội chợ S&agrave;i G&ograve;n, quận 7, &ocirc;ng Bảo Anh cho biết, đại diện của 150 doanh nghiệp lữ h&agrave;nh quốc tế từ 20 nước sẽ gặp gỡ doanh nghiệp trong ng&agrave;nh du lịch, kh&aacute;ch sạn tại sự kiện n&agrave;y. Dự kiến, 8 h&atilde;ng h&agrave;ng kh&ocirc;ng quốc tế sẽ tham gia triển l&atilde;m.</p>\r\n<p>Sự kiện thương mại du lịch thường ni&ecirc;n d&agrave;nh cho mảng du lịch quốc tế n&agrave;y bao gồm phần triển l&atilde;m, gặp gỡ trực tiếp giữa doanh nghiệp, hội nghị du lịch của 4 nước, hội thảo du lịch... Năm nay, ban tổ chức sẽ tập trung nhiều hơn cho phần giới thiệu c&aacute;c sản phẩm du lịch kết hợp t&igrave;m hiểu th&ocirc;ng tin du học, du lịch bằng du thuyền v&agrave; t&agrave;u du lịch cao cấp, du lịch kết hợp thi đấu golf.</p>\r\n<p><strong>Đ&agrave;o Loan</strong>(SaiGonTimes)</p>', '', '36982555.jpg', '36982555_120x80.jpg', '36982555_175x135.jpg', 1, 1, 1341891243, 0);
INSERT INTO `table_news` VALUES (9, 2, 0, 'Những anh chàng lữ hành đối mặt với khách gay gạ tình ', 'nhung-anh-chang-lu-hanh-doi-mat-voi-khach-gay-ga-tinh', 'Nhìn từ bên ngoài, không ít người trẻ thấy nghề hướng dẫn viên du lịch đầy hấp lực: được ngao du khắp nơi, có nhiều mối quan hệ và còn được cả… tiền! Thế nhưng, khuất lấp sau vẻ ngoài hào nhoáng ấy, cuộc sống của các hướng dẫn viên du lịch vẫn còn rất nhiều mặt tối, người ngoài cuộc khó có thể hiểu được', '<p>Nh&igrave;n từ b&ecirc;n ngo&agrave;i, kh&ocirc;ng &iacute;t người trẻ thấy nghề hướng dẫn vi&ecirc;n du lịch đầy hấp lực: được ngao du khắp nơi, c&oacute; nhiều mối quan hệ v&agrave; c&ograve;n được cả&hellip; tiền! Thế nhưng, khuất lấp sau vẻ ngo&agrave;i h&agrave;o nho&aacute;ng ấy, cuộc sống của c&aacute;c hướng dẫn vi&ecirc;n du lịch vẫn c&ograve;n rất nhiều mặt tối, người ngo&agrave;i cuộc kh&oacute; c&oacute; thể hiểu được. Đặc biệt, với những hướng dẫn vi&ecirc;n l&agrave; nam giới, từng ng&agrave;y từng giờ, họ lu&ocirc;n phải đối mặt với những lời gạ gẫm &ldquo;l&agrave;m t&igrave;nh&rdquo; kh&ocirc;ng thể thẳng thắn hơn của du kh&aacute;ch.</p>\r\n<p><strong>Mời &ldquo;qua đ&ecirc;m&rdquo; trắng trợn</strong><br /><br /> Kh&ocirc;ng chỉ được đi đ&oacute; đi đ&acirc;y, được chi&ecirc;m ngưỡng vẻ đẹp của mọi miền, được tiếp x&uacute;c với nhiều nền văn minh tr&ecirc;n thế giới, được ở kh&aacute;ch sạn &ldquo;nhiều sao&rdquo;, hướng dẫn vi&ecirc;n du lịch c&ograve;n thỏa sức thể hiện bản th&acirc;n khi lu&ocirc;n l&agrave; t&acirc;m điểm ch&uacute; &yacute; của cả đo&agrave;n&hellip; Thế nhưng, khi đ&atilde; v&agrave;o nghề, &aacute;nh h&agrave;o quang n&agrave;y sẽ nhanh ch&oacute;ng bị dập tắt bởi c&oacute; v&ocirc; số vất vả trực chờ.<br /><br /> Trong c&aacute;c tour, khi kh&aacute;ch du lịch được thư gi&atilde;n ngắm cảnh, thưởng thức kh&ocirc;ng gian th&igrave; người hướng dẫn phải căng m&igrave;nh ra, vận động li&ecirc;n tục, l&agrave;m sao để truyền đạt những hiểu biết của m&igrave;nh về từng địa danh một c&aacute;ch sống động, linh hoạt, l&agrave;m sao để vừa l&ograve;ng tất cả mọi du kh&aacute;ch, l&agrave;m sao để kh&ocirc;ng kh&iacute; chuyến đi lu&ocirc;n s&ocirc;i động, h&ograve;a đồng&hellip; Đ&oacute; l&agrave; c&ograve;n chưa kể tới việc dẫn những đo&agrave;n kh&aacute;ch kh&oacute; t&iacute;nh, l&agrave;m kh&ocirc;ng tốt l&agrave; dễ d&agrave;ng bị kh&aacute;ch gọi điện về c&ocirc;ng ty ph&agrave;n n&agrave;n n&agrave;y nọ dẫn đến việc bị trừ lương.<br /><br /> D&ugrave; mệt mỏi song thời gian nghỉ ngơi của c&aacute;c hướng dẫn vi&ecirc;n du lịch rất &iacute;t ỏi. Thời gian c&agrave;ng về cuối, h&agrave;nh kh&aacute;ch c&agrave;ng mệt mỏi th&igrave; hướng dẫn vi&ecirc;n du lịch lại c&agrave;ng phải l&agrave;m việc cật lực hơn để khuấy động kh&ocirc;ng kh&iacute;. Đi bộ li&ecirc;n tục v&agrave; n&oacute;i cũng&hellip; li&ecirc;n tục cả ng&agrave;y, tối về, hướng dẫn vi&ecirc;n lại phải sắp xếp nơi ăn, chốn ngủ cho cả đo&agrave;n, xong xu&ocirc;i hết mới được đi ngả lưng.<br /><br /> Thế nhưng, tất cả những kh&oacute; khăn n&oacute;i tr&ecirc;n mới chỉ l&agrave; bề nổi của nghề. Đằng sau những chuyến đi tour, nhiều hướng dẫn vi&ecirc;n du lịch l&agrave; nam giới c&ograve;n li&ecirc;n tục phải đối mặt với những lời mời mọc qua đ&ecirc;m hoặc cặp bồ của những du kh&aacute;ch đồng t&iacute;nh.<br /><br /> Gặp T&ugrave;ng - hướng dẫn vi&ecirc;n du lịch cho một c&ocirc;ng ty chuy&ecirc;n tổ chức c&aacute;c tour nội địa, t&ocirc;i c&oacute; cảm gi&aacute;c, anh ph&ugrave; hợp với nghề người mẫu hơn l&agrave; tour guide. Chiều cao khoảng 1m80, khu&ocirc;n mặt điển trai, th&acirc;n h&igrave;nh vừa vặn, cơ bắp, phong c&aacute;ch trẻ trung, T&ugrave;ng dễ tạo thiện cảm với người đối diện ngay lần đầu gặp mặt. C&oacute; lẽ cũng v&igrave; vậy m&agrave; T&ugrave;ng đ&atilde; trở th&agrave;nh điểm ngắm của kh&ocirc;ng &iacute;t du kh&aacute;ch vốn l&agrave; c&aacute;c qu&yacute; &ocirc;ng lắm tiền nhiều của, c&oacute; m&aacute;u &ldquo;d&ecirc;&rdquo; v&agrave; &ldquo;h&aacute;m của lạ&rdquo;.<br /><br /> T&ugrave;ng t&acirc;m sự: &ldquo;Ban đầu, cũng như bao đồng nghiệp kh&aacute;c, m&igrave;nh đến với nghề v&igrave; sở th&iacute;ch được đi đ&acirc;y đi đ&oacute;, kh&aacute;m ph&aacute; những điều mới mẻ. Dần dần, trong những chuyến đi tour d&agrave;i ng&agrave;y, m&igrave;nh gặp được đầy đủ c&aacute;c hạng người, từ những người gi&agrave;u c&oacute;, lịch l&atilde;m cho tới những kẻ phong lưu, đa t&igrave;nh, sẵn s&agrave;ng bỏ ra số tiền kh&ocirc;ng nhỏ để &ldquo;g&agrave;i bẫy&rdquo; nhằm mục đ&iacute;ch c&oacute; &ldquo;t&igrave;nh một đ&ecirc;m&rdquo; với những tour guide l&agrave; nam giới. Khổ nỗi, họ đều l&agrave; d&acirc;n gay, đ&aacute;ng tuổi bố m&igrave;nh, sự nghiệp th&agrave;nh đạt nhưng lại th&iacute;ch trải nghiệm t&igrave;nh dục với &ldquo;người mới&rdquo;.<br /><br /> T&ugrave;ng vẫn nhớ như in kỷ niệm đầu ti&ecirc;n khi dẫn đo&agrave;n tham quan của m&igrave;nh. Đ&oacute; l&agrave; một chuyến đi tour ở Vịnh Hạ Long. Buổi tối, sau khi ăn uống, đưa kh&aacute;ch đi thăm th&uacute; th&agrave;nh phố biển, T&ugrave;ng đang đi dạo ven bờ biển th&igrave; bị một tiếng gọi khiến cậu giật m&igrave;nh: &ldquo;Em đi dạo một m&igrave;nh kh&ocirc;ng thấy ch&aacute;n &agrave;?&rdquo;. Ngoảnh đầu nh&igrave;n lại, T&ugrave;ng thấy một người đ&agrave;n &ocirc;ng thấp l&ugrave;n, c&oacute; mặt trong đo&agrave;n kh&aacute;ch h&ocirc;m nay. Chưa để T&ugrave;ng n&oacute;i g&igrave;, vị kh&aacute;ch n&agrave;y đ&atilde; đề nghị muốn được đi dạo c&ugrave;ng ch&agrave;ng hướng dẫn vi&ecirc;n trẻ đẹp: &ldquo;Th&uacute; thực với em l&agrave; anh cũng rất th&iacute;ch đi thăm th&uacute; cảnh quan, th&iacute;ch đi mua sắm qu&agrave; c&aacute;p ở những điểm du lịch để về tặng cho mọi người l&agrave;m kỷ niệm. Nhưng v&igrave; anh mới về nước chưa l&acirc;u, đường x&aacute; lại kh&ocirc;ng thạo n&ecirc;n cũng ngại. Nếu được em đưa đến c&aacute;c điểm th&igrave; tốt qu&aacute;, kh&ocirc;ng biết em c&oacute; ngại kh&ocirc;ng?&rdquo;.<br /><br /> Mặc d&ugrave; l&uacute;c ấy trời đ&atilde; về đ&ecirc;m, sau một ng&agrave;y hướng dẫn, T&ugrave;ng cũng đ&atilde; thấm mệt nhưng kh&ocirc;ng muốn phật l&ograve;ng kh&aacute;ch trong chuyến đi tour đầu ti&ecirc;n n&ecirc;n T&ugrave;ng đồng &yacute;. Sau khi l&ecirc;n taxi để v&atilde;n cảnh, T&ugrave;ng giới thiệu cho vị kh&aacute;ch những điểm c&oacute; thể gh&eacute; v&agrave;o mua sắm trong ng&agrave;y mai, song vị kh&aacute;ch kh&ocirc;ng n&oacute;i g&igrave;, chỉ lẳng lặng nh&igrave;n T&ugrave;ng cười kh&oacute; hiểu.</p>\r\n<p><span class="storyInlinePhoto"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/images595231_1-20120612161948.jpg" alt="" /></span></p>\r\n<p style="text-align: center;">Ảnh minh họa</p>\r\n<p><br /> L&ograve;ng v&ograve;ng khắp c&aacute;c đường một hồi l&acirc;u, taxi trả hai người về chỗ cũ. L&uacute;c n&agrave;y, vị kh&aacute;ch kia mới chơi b&agrave;i ngửa: &ldquo;Thật ra, c&aacute;i th&agrave;nh phố n&agrave;y anh cũng chẳng th&iacute;ch lắm đ&acirc;u. Ở nước ngo&agrave;i, anh đi nhiều nơi c&ograve;n th&uacute; vị hơn nhiều, anh th&iacute;ch l&agrave; v&igrave; được đi với em. Nếu em đồng &yacute; qua đ&ecirc;m với anh đ&ecirc;m nay th&igrave; số tiền n&agrave;y l&agrave; của em&rdquo;. N&oacute;i rồi, vị kh&aacute;ch trắng trợn r&uacute;t v&iacute; đưa cho T&ugrave;ng 500USD v&agrave; c&ograve;n bồi th&ecirc;m c&acirc;u: &ldquo;Nếu phục vụ tốt th&igrave; anh kh&ocirc;ng bạc với em đ&acirc;u, sẽ c&oacute; những khoản tiền m&agrave; em kh&ocirc;ng ngờ tới&rdquo;.<br /> <br /> Khi nghe vị kh&aacute;ch n&oacute;i xong, T&ugrave;ng ho&agrave;n to&agrave;n sốc nặng. T&ugrave;ng đủ tỉnh t&aacute;o để hiểu rằng lời đề nghị kia c&oacute; &yacute; nghĩa g&igrave; v&agrave; nếu chấp nhận th&igrave; cuộc đời cậu sẽ đi về đ&acirc;u. V&igrave; thế, T&ugrave;ng lắc đầu từ chối trước &aacute;nh mắt hậm hực của vị kh&aacute;ch nọ.<br /> <br /> &ldquo;S&aacute;ng h&ocirc;m sau, chị quản l&yacute; ở c&ocirc;ng ty gọi điện nhắc nhở m&igrave;nh về th&aacute;i độ với kh&aacute;ch kh&ocirc;ng th&acirc;n thiện. M&igrave;nh cũng kh&ocirc;ng hiểu chuyện g&igrave; đang xảy ra v&igrave; trong suốt ng&agrave;y h&ocirc;m trước, m&igrave;nh kh&ocirc;ng c&oacute; h&agrave;nh động g&igrave; khiến kh&aacute;ch bắt lỗi. M&atilde;i cho đến khi nh&igrave;n điệu bộ vểnh r&acirc;u v&agrave; điệu cười nhếch m&ocirc;i của vị kh&aacute;ch &ldquo;gạ t&igrave;nh&rdquo; m&igrave;nh đ&ecirc;m qua th&igrave; m&igrave;nh đ&atilde; hiểu ra nguy&ecirc;n nh&acirc;n của những lời mắng mỏ ấy&rdquo; - T&ugrave;ng thật th&agrave; kể lại.<br /> <br /> <strong>Đại gia &ldquo;trồng si&rdquo; nhằm &ldquo;cưa đổ&rdquo; nam tour guide</strong><br /> <br /> Trong số những tour guide nam giới, kh&ocirc;ng nhiều người c&oacute; được bản lĩnh như T&ugrave;ng. Một lần đồng &yacute; &ldquo;l&agrave;m t&igrave;nh&rdquo; với kh&aacute;ch gay c&oacute; thu nhập gấp cả th&aacute;ng dẫn tour n&ecirc;n nhiều người v&igrave; h&aacute;m tiền t&agrave;i danh vọng m&agrave; vẫn quyết dấn th&acirc;n v&agrave;o con đường ng&agrave;y đi tour, tối &ldquo;đi kh&aacute;ch&rdquo;, đ&atilde; tr&oacute;t lỡ th&igrave; lại c&agrave;ng kh&ocirc;ng muốn dừng lại. Để kiếm được nhiều tiền, họ sẵn s&agrave;ng phục vụ du kh&aacute;ch nam. Ban đầu, họ thường l&agrave; &ldquo;hifi giả&rdquo; để chiều kh&aacute;ch với mục đ&iacute;ch kiếm tiền, nhưng nhiều lần như thế th&agrave;nh quen, rồi trở th&agrave;nh &ldquo;hifi thật&rdquo; l&uacute;c n&agrave;o chẳng biết. Nhiều nam tour guide kh&ocirc;ng chỉ quan hệ với kh&aacute;ch trong chuyến du lịch, m&agrave; sau chuyến tour vẫn giữ li&ecirc;n lạc. Mỗi khi kh&aacute;ch c&oacute; nhu cầu, họ lại &ldquo;hẹn h&ograve;&rdquo;, rồi chọn thời gian, địa điểm để &ldquo;h&agrave;nh sự&rdquo;.<br /> <br /> Những tin nhắn mời mọc, ng&atilde; gi&aacute; thẳng thắn như: &ldquo;Ngủ với anh một đ&ecirc;m, em lấy bao nhi&ecirc;u?&rdquo; đ&atilde; kh&ocirc;ng c&ograve;n qu&aacute; xa lạ với c&aacute;c nam hướng dẫn vi&ecirc;n du lịch. Nhiều kh&aacute;ch gay c&ograve;n &ldquo;si m&ecirc;&rdquo; c&aacute;c tour guide nam đến nỗi, sau khi d&ugrave;ng lời lẽ ngon ngọt để dụ dỗ kh&ocirc;ng được, họ c&ograve;n thực hiện hẳn một kế hoạch &ldquo;trồng c&acirc;y si&rdquo; khiến người trong cuộc sởn gai ốc.<br /> <br /> T&ugrave;ng nhớ lại trước đ&acirc;y, c&oacute; lần anh đ&atilde; từ chối việc &ldquo;l&ecirc;n giường&rdquo; với một đại gia bất động sản. Tưởng rằng kết th&uacute;c chuyến du lịch, cả hai cũng kh&ocirc;ng c&ograve;n mối li&ecirc;n hệ n&agrave;o nữa, thế nhưng đại gia n&agrave;y kh&ocirc;ng chịu bỏ cuộc sớm m&agrave; c&ograve;n l&agrave;m đủ mọi c&aacute;ch để c&oacute; cơ hội được tiếp x&uacute;c với T&ugrave;ng. Đại gia đặt hết tất cả những tour m&agrave; T&ugrave;ng dẫn kh&aacute;ch, chỉ với mục đ&iacute;ch được nh&igrave;n thấy ch&agrave;ng hướng dẫn vi&ecirc;n đẹp trai, thẳng t&iacute;nh, được mời T&ugrave;ng đi ăn tối, đi dạo, mua sắm&hellip; Những dịp lễ Tết đặc biệt, T&ugrave;ng đều nhận được điện hoa, qu&agrave; của vị đại gia n&agrave;y chỉ với c&ugrave;ng một lời tỏ t&igrave;nh ướt &aacute;t m&agrave; mỗi lần nhớ lại T&ugrave;ng vẫn c&ograve;n đỏ bừng mặt.<br /> <br /> Mọi hoạt động của T&ugrave;ng dường như cũng được vị đại gia n&agrave;y thu&ecirc; người theo d&otilde;i n&ecirc;n hễ khi tr&aacute;i nắng trở trời, T&ugrave;ng cảm c&uacute;m, hắt hơi cũng đều được đại gia biết r&otilde; ngọn ng&agrave;nh v&agrave; điện thoại hỏi thăm. Mặc d&ugrave; cũng c&oacute; đ&ocirc;i ch&uacute;t cảm động, song nhận thức r&otilde; được c&aacute;i được - mất trong chuyện t&igrave;nh cảm đồng giới kh&ocirc;ng tự nguyện v&agrave; đầy &eacute;o le n&agrave;y, T&ugrave;ng vẫn ki&ecirc;n quyết từ chối. Cũng sau tin nhắn phũ ph&agrave;ng cuối c&ugrave;ng của T&ugrave;ng, vị đại gia kia kh&ocirc;ng c&ograve;n xuất hiện trước mặt T&ugrave;ng nữa.<br /> <br /> Một nam hướng dẫn vi&ecirc;n du lịch kh&aacute;c cũng khẳng định rằng, nếu kh&ocirc;ng c&oacute; bản lĩnh đ&agrave;n &ocirc;ng th&igrave; chuyện bị đồng tiền c&aacute;m dỗ rồi tự biến m&igrave;nh th&agrave;nh &ldquo;xăng pha nhớt&rdquo; rất dễ xảy ra.<br /> <br /> Bản th&acirc;n anh ch&agrave;ng n&agrave;y cũng phải c&oacute; bản lĩnh vững v&agrave;ng lắm mới tr&aacute;nh được những chuyện m&agrave; theo anh th&igrave; xảy ra thường ng&agrave;y như thế. Nhiều đ&ecirc;m, sau khi chăm lo cho kh&aacute;ch ăn, ngủ, anh lại phải trắng đ&ecirc;m để trả lời điện thoại, đọc tin nhắn. M&agrave; tin nhắn th&igrave; chỉ quanh quẩn mấy c&acirc;u: &ldquo;Anh buồn qu&aacute; cưng ơi&rdquo;, &ldquo;Đ&ecirc;m nay trống vắng qu&aacute;...&rdquo;, &ldquo;Anh nằm m&atilde;i kh&ocirc;ng ngủ được. Nhớ em qu&aacute;!&rdquo;.<br /> <br /> Đọc những tin nhắn kiểu n&agrave;y, nhiều nam tour guide tức ph&aacute;t đi&ecirc;n, nhưng tắt điện thoại th&igrave; kh&ocirc;ng được, v&igrave; nhỡ kh&aacute;ch c&oacute; nhu cầu g&igrave; gọi m&agrave; kh&ocirc;ng li&ecirc;n lạc được th&igrave; chắc chắn hướng dẫn vi&ecirc;n sẽ bị ph&agrave;n n&agrave;n về th&aacute;i độ phục vụ rồi bị c&ocirc;ng ty khiển tr&aacute;ch, trừ lương&hellip;<br /> <br /> Kh&ocirc;ng chỉ bị kh&aacute;ch gay gạ t&igrave;nh, nhiều nam hướng dẫn vi&ecirc;n du lịch c&ograve;n thấy bất lực trước sự đ&aacute;nh gi&aacute; kh&aacute; bất c&ocirc;ng của mọi người về c&ocirc;ng việc n&agrave;y. Một anh ch&agrave;ng tour guide đ&atilde; từng phải đau khổ m&agrave; than rằng: &ldquo;Lắm l&uacute;c, đến nh&agrave; bạn b&egrave; chơi, khi giới thiệu l&agrave; l&agrave;m du lịch th&igrave; nhận được ngay những c&acirc;u quen thuộc: &ldquo;Trời, du lịch l&agrave; đi nhiều lắm đấy nhỉ, suớng nhỉ, th&iacute;ch nhỉ???&rdquo;.<br /> <br /> Khen thế, nhưng thực t&acirc;m, họ lại nghĩ c&aacute;i thằng hướng dẫn ấy, mồm miệng th&igrave; dẻo quẹo, l&uacute;c n&agrave;o cũng cười tươi hơn hớn, chắc l&agrave; đi đ&acirc;u cũng c&oacute; vợ b&eacute;, con rơi con v&atilde;i đầy đường&hellip; C&oacute; ai biết đ&acirc;u rằng những thằng hướng dẫn vi&ecirc;n du lịch như t&ocirc;i cũng thường xuy&ecirc;n cảm thấy c&ocirc; đơn v&agrave; trống trải. B&acirc;y giờ, đi đ&acirc;u chẳng dại m&agrave; khoe m&igrave;nh l&agrave;m du lịch&rdquo;.<br /> <br /> Nam hướng dẫn vi&ecirc;n du lịch c&oacute; cơ hội được dẫn tour nhiều hơn nữ giới v&igrave; sức khỏe tốt v&agrave; kh&ocirc;ng vướng qu&aacute; nhiều c&ocirc;ng việc kh&ocirc;ng t&ecirc;n. Do đ&oacute;, họ cũng l&agrave; người thấy r&otilde; nhất mặt tr&aacute;i của x&atilde; hội với h&agrave;ng loạt c&aacute;c cảnh chướng tai gai mắt: cảnh bồ bịch, nam nữ lăng nhăng, cảnh nh&acirc;n vi&ecirc;n nịnh nọt bợ đỡ, cảnh ti&ecirc;u tiền ch&ugrave;a như xả r&aacute;c&hellip;<br /> <br /> Tiếp x&uacute;c với nhiều thể loại người, nhiều cảnh o&aacute;i ăm như vậy, lại thường xuy&ecirc;n đối mặt với những lời gạ gẫm qua đ&ecirc;m n&ecirc;n c&aacute;i nh&igrave;n của nhiều nam hướng dẫn vi&ecirc;n về cuộc sống cũng trở n&ecirc;n &acirc;m u, tăm tối hơn. C&oacute; b&igrave;nh y&ecirc;n được với những lời dụ khị đầy chất tiền bạc v&agrave; vụ lợi đ&oacute; kh&ocirc;ng, rất cần tới niềm đam m&ecirc; nghề nghiệp!<br /> <br /> <strong>Phương Linh(Phunutoday)</strong></p>', '', '45940887.jpg', '45940887_120x80.jpg', '45940887_175x135.jpg', 1, 1, 1341891291, 0);
INSERT INTO `table_news` VALUES (10, 2, 0, 'Khai trương TT giải trí của Superbowl, nydc và KFC. ', 'khai-truong-tt-giai-tri-cua-superbowl-nydc-va-kfc', 'Thành phố Hồ Chí Minh, ngày 13 tháng 6 năm 2012 – Tập đoàn SUTL khai trương cụm vui chơi giải trí bao gồm Superbowl, nydc và KFC.', '<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339724238-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC--2--20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Th&agrave;nh phố Hồ Ch&iacute; Minh, ng&agrave;y 13 th&aacute;ng 6 năm 2012 &ndash; Tập đo&agrave;n SUTL khai trương cụm vui chơi giải tr&iacute; bao gồm Superbowl, nydc v&agrave; KFC.</p>\r\n<p>Ng&agrave;y 13 th&aacute;ng 06 năm 2012, tại tầng 5 trung t&acirc;m thương mại Diamond Plaza đ&aacute;nh dấu việc khai trương trung t&acirc;m giải tr&iacute; của Superbowl, nydc v&agrave; KFC. Đ&acirc;y l&agrave; dự &aacute;n được đầu tư hơn 1 triệu đ&ocirc;-la Mĩ bởi tập đo&agrave;n SUTL.</p>\r\n<p>SUTL l&agrave; tập đo&agrave;n kinh tế đến từ Singapore chuy&ecirc;n đầu tư v&agrave;o ng&agrave;nh c&ocirc;ng nghiệp hướng đến phong c&aacute;ch sống v&agrave; giải tr&iacute;, với thế mạnh kinh doanh c&aacute;c dịch vụ giải tr&iacute;, ẩm thực, b&aacute;n lẻ v&agrave; chăm s&oacute;c sức khỏe. Ngo&agrave;i thương hiệu Superbowl v&agrave; nydc đ&atilde; quen thuộc với người Việt Nam, SUTL cũng l&agrave; đối t&aacute;c b&aacute;n lẻ của Nike v&agrave; Footworks tại Singapore. Tầm nh&igrave;n mục ti&ecirc;u của c&ocirc;ng ty l&agrave; mang lại sự lựa chọn tốt nhất v&agrave; ti&ecirc;n phong trong lối sống cho người ti&ecirc;u d&ugrave;ng ở Việt Nam, một thị trường với nền kinh tế đang ph&aacute;t triển, với d&acirc;n số đ&ocirc;ng v&agrave; trẻ, v&agrave; hơn hết, l&agrave; nhu cầu giải tr&iacute; của người d&acirc;n nơi đ&acirc;y đang ng&agrave;y một tăng cao. Th&ocirc;ng qua việc khai trương cụm vui chơi giải tr&iacute; tại Diamond Plaza, SUTL mang đến cho người ti&ecirc;u d&ugrave;ng Việt Nam 3 sự lựa chọn trong một kh&ocirc;ng gian t&iacute;ch hợp v&agrave; đ&acirc;y sẽ l&agrave; điểm đến cho những người năng động.</p>\r\n<p><br /> <strong>Superbowl Việt Nam:</strong></p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339724238-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC--4--20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339730228-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC1.5-20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Superbowl Việt Nam, 100% thuộc sở hữu của tập đo&agrave;n SUTL với mục đ&iacute;ch tiếp tục ph&aacute;t triển v&agrave; mở rộng c&aacute;c địa điểm giải tr&iacute; t&iacute;ch hợp tại Việt Nam. Superbowl tại Diamond Plaza l&agrave; một v&iacute; dụ điển h&igrave;nh cho những g&igrave; m&agrave; tập đo&agrave;n SUTL đ&atilde; thực hiện tại Việt Nam v&agrave; SUTL sẽ tiếp tục với chiến lược n&agrave;y. Ch&uacute;ng t&ocirc;i đang nghi&ecirc;n cứu th&ecirc;m những hoạt động giải tr&iacute; kh&aacute;c ph&ugrave; hợp với thị trường Việt Nam để t&iacute;ch hợp v&agrave;o kế hoạch mở rộng c&aacute;c khu vui chơi giải tr&iacute; kh&aacute;c, để nhất qu&aacute;n với tầm nh&igrave;n chung của tập đo&agrave;n.</p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339724238-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC--6--20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339730228-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC1.4-20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p style="text-align: left;"><strong>nydc (New York Dessert Caf&eacute;)</strong></p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339724238-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC--3--20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Th&aacute;ng 11 năm 2009, New York Dessert Caf&eacute; (nydc) khai trương cửa h&agrave;ng đầu ti&ecirc;n tại tp HCM để mang lại kh&aacute;i niệm nh&agrave; h&agrave;ng kiểu New York cho người d&acirc;n Việt Nam. Sau hai năm rưỡi hoạt động, nydc đ&atilde; trở th&agrave;nh thương hiệu đi đầu trong lĩnh vực nh&agrave; h&agrave;ng &Acirc;u tại S&agrave;i G&ograve;n. Gi&aacute; trị cốt l&otilde;i của nydc l&agrave; &ldquo;tận hưởng cuộc sống theo phong c&aacute;ch của một th&agrave;nh phố lớn&rdquo;. Nh&agrave; h&agrave;ng được thiết kế th&agrave;nh những khu vực ri&ecirc;ng biệt, với khu vực ghế sofa cho họp mặt gia đ&igrave;nh; khu vực mở d&agrave;nh cho tiệc nh&oacute;m v&agrave; khu vực đặc biệt d&agrave;nh ri&ecirc;ng cho c&aacute;c cặp t&igrave;nh nh&acirc;n.</p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339724238-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC--1--20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Điều đặc biệt m&agrave; ch&uacute;ng t&ocirc;i muốn đem đến cho kh&aacute;ch h&agrave;ng l&agrave; m&oacute;n &Acirc;u v&agrave; c&aacute;c m&oacute;n tr&aacute;ng miệng độc đ&aacute;o chỉ c&oacute; tại nydc. Ngo&agrave;i m&oacute;n b&aacute;nh mudpie v&agrave; thức uống đ&atilde; đăng k&yacute; nh&atilde;n hiệu độc quyền Elephancino đ&atilde; trở n&ecirc;n quen thuộc với người Việt Nam, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; những m&oacute;n ăn độc đ&aacute;o kh&aacute;c, chẳng hạn như New York Strip v&agrave; Mushroom Madness. Chưa kể, thực kh&aacute;ch Việt Nam sẽ kh&ocirc;ng c&ograve;n cảm thấy xa lạ với những m&oacute;n ăn &Acirc;u ở đ&acirc;y v&igrave; bếp trưởng của nh&agrave; h&agrave;ng đ&atilde; rất kh&eacute;o l&eacute;o kết hợp c&ocirc;ng thức nấu ăn mang đậm phong c&aacute;ch T&acirc;y với gu ăn uống của người Việt Nam.</p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339724238-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC--5--20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>nydc ở Diamond Plaza l&agrave; nh&agrave; h&agrave;ng thứ 6 của ch&uacute;ng t&ocirc;i tại Th&agrave;nh phố Hồ Ch&iacute; Minh, v&agrave; con số n&agrave;y sẽ c&ograve;n tăng l&ecirc;n 15 trong v&ograve;ng 3 năm nữa. V&agrave; đặc biệt, trong năm sau 2013, ch&uacute;ng t&ocirc;i sẽ mang nydc ra thị trường H&agrave; Nội.<br /> <br /> <strong>KFC Việt Nam</strong></p>\r\n<p>KFC được biết đến tại Việt Nam với một t&ecirc;n gọi th&acirc;n quen kh&aacute;c đ&oacute; l&agrave; G&agrave; r&aacute;n Kentucky &ndash; chuỗi nh&agrave; h&agrave;ng thức ăn nhanh chuy&ecirc;n nghiệp, phục vụ c&aacute;c m&oacute;n ăn l&agrave;m từ g&agrave;, bơ-gơ v&agrave; m&oacute;n nổi tiếng nhất l&agrave; G&agrave; r&aacute;n Kentucky do &ocirc;ng đại t&aacute; thiện ch&iacute; Harland Sanders s&aacute;ng chế.</p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339730228-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC-1.2-20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Sau một loạt th&agrave;nh c&ocirc;ng của hệ thống chuỗi nh&agrave; h&agrave;ng thức ăn nhanh với thương hiệu KFC (tr&ecirc;n 10.000 nh&agrave; h&agrave;ng đ&atilde; được ph&aacute;t triển tr&ecirc;n to&agrave;n thế giới), tại Việt Nam KFC đ&atilde; tham gia v&agrave;o thị trường lần đầu ti&ecirc;n v&agrave;o th&aacute;ng 12/1997 tại trung t&acirc;m thương mại S&agrave;i G&ograve;n Super Bowl. Ngo&agrave;i m&oacute;n G&agrave; r&aacute;n nổi tiếng tr&ecirc;n to&agrave;n thế giới từ thập ni&ecirc;n 30 với phương thức tẩm ướp đặc biệt từ 11 loại hương vị thảo mộc, từ th&aacute;ng 12/2008, đến với c&aacute;c nh&agrave; h&agrave;ng thuộc hệ thống KFC qu&yacute; kh&aacute;ch h&agrave;ng sẽ c&oacute; cơ hội được thưởng thức m&oacute;n G&agrave; quay Flava Roast c&oacute; hương thơm đặc biệt chỉ c&oacute; tại KFC.</p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339730228-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC-1.3-20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Nhiều nghi&ecirc;n cứu chỉ ra rằng, hiện nay KFC được hiểu như l&agrave; một nh&atilde;n hiệu vui nhộn v&agrave; bao h&agrave;m nhiều &yacute; nghĩa: &ldquo;Trẻ trung trong t&acirc;m hồn, năng động trong cuộc sống&rdquo; l&agrave; ti&ecirc;u ch&iacute; &amp; chiến lược của nh&atilde;n hiệu KFC tại Việt Nam.</p>\r\n<p style="text-align: center;"><img class="news-image" src="http://camnang-dulich.com/images/stories/1339730228-khai-truong-tt-giai-tri-cua-Superbowl-nydc-va-KFC-1.1-20120615224640.jpg" alt="Khai trương TT giải tr&iacute; của Superbowl, nydc v&agrave; KFC, Ẩm thực, " /></p>\r\n<p>Hiện tại, hệ thống nh&agrave; h&agrave;ng thức ăn nhanh n&agrave;y đ&atilde; c&oacute; mặt ở hầu hết c&aacute;c đường phố của Việt Nam ở 19 tỉnh th&agrave;nh tr&ecirc;n cả nước với con số 118 nh&agrave; h&agrave;ng. Nh&acirc;n sự kiện quan trọng, nh&agrave; h&agrave;ng thứ 100 được khai trương ở Việt Nam, KFC đ&atilde; quyết định d&agrave;nh 100.000 đ&ocirc; la Mỹ trong thời gian từ 2011 đến 2012 tặng học bổng cho c&aacute;c học sinh, sinh vi&ecirc;n c&oacute; ho&agrave;n cảnh kh&oacute; khăn đ&atilde; vươn l&ecirc;n học tập tốt. Số học bổng n&agrave;y sẽ được đưa tới c&aacute;c em th&ocirc;ng qua quỹ Saigon Times Foundation. Đ&acirc;y l&agrave; một hoạt động thể hiện tr&aacute;ch nhiệm x&atilde; hội tr&agrave;n đầy &yacute; nghĩa trong qu&aacute; tr&igrave;nh ph&aacute;t triển thương hiệu KFC tại đất nước Việt Nam. Trong tương lai KFC Việt Nam sẽ tiếp tục đ&oacute;ng g&oacute;p v&agrave; ph&aacute;t huy những chương tr&igrave;nh n&agrave;y nhiều hơn nữa.<br /> <br /> <strong>Th&ocirc;ng tin chi tiết, li&ecirc;n hệ: Superbowl Việt Nam</strong><br /> <br /> <em> Email: <a href="mailto:thanhtan@superbowlvn.com.vn">thanhtan@superbowlvn.com.vn</a></em></p>\r\n<p><strong>KFC:</strong><br /> <br /> <em> Email: <a href="mailto:hanngn@kfcvietnam.com.vn">hanngn@kfcvietnam.com.vn</a></em></p>\r\n<div class="nguontin">Nguồn Superbowl Việt Nam</div>', '', '72765822.jpg', '72765822_120x80.jpg', '72765822_175x135.jpg', 1, 1, 1341891341, 0);
INSERT INTO `table_news` VALUES (11, 2, 0, 'Nâng cấp du lịch từ… nhà vệ sinh', 'nang-cap-du-lich-tu-nha-ve-sinh', 'Tổng cục Du lịch (Bộ VH-TT&DL) vừa ban hành quy định tạm thời về tiêu chuẩn nhà vệ sinh (WC). Các điểm tham quan du lịch, điểm dừng chân, điểm phục vụ khách du lịch có WC không đạt chuẩn thì phải lo nâng cấp.', '<p><em><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/11chot_2b53c-20120528125310.jpg" alt="" /></em></p>\r\n<p align="justify">Tổng cục Du lịch (Bộ VH-TT&amp;DL) vừa ban h&agrave;nh quy định tạm thời về ti&ecirc;u chuẩn nh&agrave; vệ sinh (WC). C&aacute;c điểm tham quan du lịch, điểm dừng ch&acirc;n, điểm phục vụ kh&aacute;ch du lịch c&oacute; WC kh&ocirc;ng đạt chuẩn th&igrave; phải lo n&acirc;ng cấp.</p>\r\n<p align="justify"><strong>Hầu hết WC dưới chuẩn</strong></p>\r\n<p align="justify">Thế nhưng so với ti&ecirc;u chuẩn th&igrave; rất nhiều điểm du lịch kh&ocirc;ng đạt về WC.</p>\r\n<p align="justify">Một ng&ocirc;i ch&ugrave;a ở quận 1 thu h&uacute;t rất nhiều kh&aacute;ch nước ngo&agrave;i đến tham quan. Tuy nhi&ecirc;n, WC khai nồng nặc, tối v&agrave; ẩm thấp, buồng vệ sinh được che chắn tạm bợ, kh&ocirc;ng c&oacute; bồn vệ sinh. WC nam kh&ocirc;ng c&oacute; cửa, chỉ c&oacute; một bức tường gạch ngăn lại.</p>\r\n<p align="justify">WC tại Bảo t&agrave;ng TP (quận 1), Bảo t&agrave;ng Chứng t&iacute;ch Chiến tranh (quận 3) kh&aacute; sạch sẽ, tương đối đầy đủ c&aacute;c hạng mục nhưng vẫn kh&ocirc;ng c&oacute; x&agrave; ph&ograve;ng rửa tay hoặc m&oacute;c treo đồ.</p>\r\n<p align="justify">Một địa chỉ hiếm hoi đảm bảo đủ c&aacute;c yếu tố theo ti&ecirc;u chuẩn tạm l&agrave; Bảo t&agrave;ng Hồ Ch&iacute; Minh - Chi nh&aacute;nh 2 (quận 4). Đ&aacute;ng tiếc l&agrave; vẫn kh&ocirc;ng c&oacute; WC d&agrave;nh ri&ecirc;ng cho người khuyết tật.</p>\r\n<p align="justify">Nhiều điểm du lịch ở c&aacute;c tỉnh, th&agrave;nh kh&aacute;c cũng bị ch&ecirc; v&igrave; WC dơ bẩn. &Ocirc;ng Trần Thế Dũng, Ph&oacute; Trưởng nh&oacute;m k&iacute;ch cầu du lịch nội địa TP.HCM, cho biết tại Khu du lịch Đền H&ugrave;ng, WC rất h&ocirc;i, kh&ocirc;ng c&oacute; giấy vệ sinh nhưng du kh&aacute;ch phải trả 2.000 đồng/lượt ra v&agrave;o. Tại bến thuyền ở vịnh Hạ Long, đừng n&oacute;i l&agrave; v&agrave;o b&ecirc;n trong, chỉ đứng gần WC đ&atilde; nghe m&ugrave;i h&ocirc;i.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p align="justify"><strong>Kh&aacute;ch phản ứng mới sửa</strong></p>\r\n<p align="justify">Ở Huế, từ l&acirc;u du kh&aacute;ch đ&atilde; ph&agrave;n n&agrave;n về t&igrave;nh trạng thiếu WC. Để khắc phục điều đ&oacute;, Trung t&acirc;m Bảo tồn di t&iacute;ch cố đ&ocirc; Huế đ&atilde; triển khai dự &aacute;n gần 6 tỉ đồng x&acirc;y dựng 10 khu WC tại di t&iacute;ch Đại Nội, Bảo t&agrave;ng Cổ vật cung đ&igrave;nh Huế, c&aacute;c lăng Tự Đức, Minh Mạng, Khải Định&hellip; C&aacute;c WC c&oacute; diện t&iacute;ch rộng r&atilde;i, thiết bị hiện đại, c&oacute; ph&ograve;ng ri&ecirc;ng cho người khuyết tật được đưa v&agrave;o hoạt động đầu th&aacute;ng 4-2012, trước Festival Huế 2012. Hệ thống WC c&ocirc;ng cộng dọc bờ s&ocirc;ng Hương cũng đ&atilde; được sửa sang tho&aacute;ng m&aacute;t, sạch sẽ phục vụ du kh&aacute;ch đi dạo ngắm cảnh.</p>\r\n<p align="justify">Một c&aacute;n bộ Hiệp hội Du lịch TP.HCM cho biết WC tại chợ Bến Th&agrave;nh từng bị du kh&aacute;ch phản ứng. Nhiều du kh&aacute;ch đ&atilde; viết thư đề nghị sửa gấp WC. Sau đ&oacute;, tại chợ đ&atilde; x&acirc;y một khu WC d&agrave;nh cho kh&aacute;ch T&acirc;y, một khu WC d&agrave;nh cho tiểu thương. &ldquo;Nhưng phải thừa nhận rằng vẫn chưa đảm bảo ti&ecirc;u ch&iacute; sạch sẽ! T&ocirc;i thấy sau khi kh&aacute;ch d&ugrave;ng WC, người dọn vệ sinh đứng ở ngo&agrave;i rồi hắt nước v&agrave;o trong. S&agrave;n l&ecirc;nh l&aacute;ng nước, m&ugrave;i thum thủm&rdquo; - vị c&aacute;n bộ tr&ecirc;n cho biết.</p>\r\n<p align="justify">Theo kế hoạch của Bộ VH-TT&amp;DL, đến hết năm 2012, mỗi địa phương c&oacute; &iacute;t nhất 50% điểm du lịch c&oacute; WC đạt chuẩn v&agrave; đạt 100% v&agrave;o năm 2014.</p>\r\n<p><em><strong>Tuần sau sẽ họp về WC</strong></em></p>\r\n<p align="justify"><em>T&ocirc;i cho rằng WC ở c&aacute;c điểm tham quan tại TP.HCM đều đ&atilde; l&agrave;m được ti&ecirc;u chuẩn Tổng cục đưa ra. Tuy nhi&ecirc;n, điều quan trọng nhất l&agrave; &yacute; thức vệ sinh, &yacute; thức phục vụ của nh&acirc;n vi&ecirc;n th&igrave; vẫn chưa l&agrave;m được. Nhiều WC kh&ocirc;ng c&oacute; người t&uacute;c trực qu&eacute;t dọn thường xuy&ecirc;n n&ecirc;n rất nhanh bẩn.</em></p>\r\n<p align="justify"><em>Trong tuần tới, Sở sẽ thảo luận với c&aacute;c kh&aacute;ch sạn, điểm tham quan du lịch về ti&ecirc;u chuẩn WC du lịch. Ch&uacute;ng t&ocirc;i sẽ đặt vấn đề về &yacute; thức giữ vệ sinh, lau dọn thường xuy&ecirc;n của c&aacute;c điểm du lịch.</em></p>\r\n<p align="right"><em>&Ocirc;ng<strong> L&Atilde; QUỐC KH&Aacute;NH</strong>, Ph&oacute; Gi&aacute;m đốc Sở VH-TT&amp;DL TP. HCM </em></p>\r\n<p align="left"><em><strong>V&agrave;o WC, ra bỏ tour</strong></em></p>\r\n<p align="justify"><em>Ti&ecirc;u chuẩn m&agrave; Tổng cục mới ban h&agrave;nh chỉ l&agrave; những điều cơ bản nhất về WC nhưng thực tế nhiều địa phương kh&ocirc;ng l&agrave;m được điều đ&oacute; cho c&aacute;c điểm du lịch. C&oacute; du kh&aacute;ch sau khi &ldquo;thăm&rdquo; WC xong đ&atilde; đ&ograve;i về kh&aacute;ch sạn ngay v&igrave; chẳng c&ograve;n t&acirc;m tr&iacute; đ&acirc;u m&agrave; ăn uống, thưởng ngoạn cảnh đẹp nữa.</em></p>\r\n<p align="right"><em>&Ocirc;ng<strong> TRẦN THẾ DŨNG</strong>, </em><br /><em>Ph&oacute; Trưởng nh&oacute;m k&iacute;ch cầu du lịch nội địa TP.HCM</em></p>\r\n<p><em><strong>Quan trọng nhất l&agrave; nh&acirc;n vi&ecirc;n</strong></em></p>\r\n<p align="justify"><em>Khu du lịch rừng Madagui (L&acirc;m Đồng) l&agrave; một trong những điểm tham quan c&oacute; hệ thống WC được du kh&aacute;ch h&agrave;i l&ograve;ng.</em></p>\r\n<p align="justify"><em>WC ở đ&acirc;y c&oacute; hệ thống tự động, s&agrave;n kh&ocirc; r&aacute;o, sạch sẽ, rộng r&atilde;i. Quan trọng l&agrave; lu&ocirc;n c&oacute; người t&uacute;c trực để dọn dẹp, chăm s&oacute;c.</em></p>\r\n<p align="justify"><em>WC hiện đại đến mấy m&agrave; kh&ocirc;ng c&oacute; người thường xuy&ecirc;n chăm s&oacute;c th&igrave; cũng nhanh dơ bẩn. V&igrave; vậy, Tổng cục đưa ra ti&ecirc;u chuẩn cho WC du lịch l&agrave; điều cần thiết. Nhưng c&aacute;c điểm du lịch cần bố tr&iacute; nh&acirc;n vi&ecirc;n vệ sinh trực thường xuy&ecirc;n.</em></p>\r\n<p align="right"><em>&Ocirc;ng<strong> NGUYỄN NH&Acirc;N NHẬT PH&Uacute;</strong>, Gi&aacute;m đốc Trung t&acirc;m Lữ h&agrave;nh của C&ocirc;ng ty Cổ phần Dịch vụ Du lịch Chợ Lớn</em></p>\r\n<p><em><strong>Ti&ecirc;u chuẩn WC</strong></em></p>\r\n<p align="justify"><em>WC phải c&oacute; số ph&ograve;ng vệ sinh ph&ugrave; hợp với số lượng kh&aacute;ch; c&oacute; chia nam, nữ; tường cao tr&ecirc;n 2,5 m, ốp gạch men, s&agrave;n l&aacute;t chống trơn, diện t&iacute;ch tối thiểu 2,5 m 2 /ph&ograve;ng.</em></p>\r\n<p align="justify"><em>Ph&ograve;ng vệ sinh phải c&oacute; cửa, c&oacute; chốt c&agrave;i, m&oacute;c treo t&uacute;i hoặc gi&aacute; để đồ, giấy vệ sinh, th&ugrave;ng r&aacute;c c&oacute; nắp... WC phải cung cấp nước sạch 24/24 giờ, c&oacute; hệ thống xử l&yacute; nước thải, kh&ocirc;ng c&oacute; m&ugrave;i h&ocirc;i, kh&ocirc;ng ứ đọng nước.</em></p>\r\n<p align="justify"><em>C&oacute; nh&acirc;n vi&ecirc;n phục vụ lau dọn, cung cấp đồ d&ugrave;ng khi thiếu hoặc hết.</em></p>\r\n<p align="right"><em>(Tr&iacute;ch ti&ecirc;u chuẩn của Tổng cục Du lịch)</em></p>\r\n<p><strong><em>&Aacute;m ảnh từ nh&agrave; vệ sinh</em></strong></p>\r\n<p align="justify"><em>Cuối năm 2011, t&ocirc;i theo c&ocirc;ng ty của người bạn đi nghỉ m&aacute;t ở Phan Thiết. 6 giờ s&aacute;ng, xe lăn b&aacute;nh từ TP.HCM v&agrave; đến 9 giờ th&igrave; đo&agrave;n dừng lại d&ugrave;ng bữa ăn s&aacute;ng ở một trạm b&ecirc;n đường. Vừa xuống xe, t&ocirc;i vội chạy v&agrave;o nh&agrave; vệ sinh để giải quyết nhu cầu. Tại đ&acirc;y c&oacute; h&agrave;ng chục người đứng xếp h&agrave;ng v&agrave; t&ocirc;i phải đợi hơn 10 ph&uacute;t mới v&agrave;o được. Điều khiến t&ocirc;i kinh h&atilde;i l&agrave; m&ugrave;i h&ocirc;i thối bốc l&ecirc;n nồng nặc do toilet kh&ocirc;ng x&agrave;i v&ograve;i tự động. Mọi người phải d&ugrave;ng nước dội nhưng nước lại chảy từng giọt rất &iacute;t... Ra khỏi nh&agrave; vệ sinh, t&ocirc;i kh&ocirc;ng thể ăn uống g&igrave; được n&ecirc;n phải mua ổ b&aacute;nh m&igrave; để l&ecirc;n xe chống đ&oacute;i. </em></p>\r\n<p align="justify"><em>Khoảng 3 giờ sau, đo&agrave;n ch&uacute;ng t&ocirc;i đến Phan Thiết. Động t&aacute;c đầu ti&ecirc;n của t&ocirc;i khi nhận ph&ograve;ng kh&aacute;ch sạn l&agrave; bước v&agrave;o toilet để xem x&eacute;t t&igrave;nh h&igrave;nh. Thấy c&aacute;c dụng cụ trong đ&oacute; tương đối tốt, t&ocirc;i mới y&ecirc;n t&acirc;m ra ngo&agrave;i tắm biển&hellip; </em></p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/7chot_86111-20120528125827.jpg" alt="" /></p>\r\n<p align="center"><em>Tại TP.HCM, c&aacute;c nh&agrave; vệ sinh c&ocirc;ng cộng c&ograve;n thưa thớt, chưa đ&aacute;p ứng đủ nhu cầu. Ảnh minh họa</em></p>\r\n<p align="justify"><em>Đi vệ sinh l&agrave; một nhu cầu quan trọng của mọi người n&ecirc;n nếu c&aacute;c trạm dừng ch&acirc;n, kh&aacute;ch sạn&hellip; kh&ocirc;ng quan t&acirc;m, tổ chức đ&agrave;ng ho&agrave;ng th&igrave; d&ugrave; c&aacute;c dịch vụ kh&aacute;c được l&agrave;m tốt cỡ n&agrave;o, kh&aacute;ch cũng kh&ocirc;ng mặn m&agrave; quay lại. </em></p>\r\n<p align="right"><strong>PHAN THI&Ecirc;N HƯƠNG</strong> (Quận B&igrave;nh T&acirc;n, TP.HCM)</p>\r\n<p align="justify"><em>Năm rồi t&ocirc;i c&oacute; dịp đi tham quan khu Tuần Ch&acirc;u của tỉnh Quảng Ninh. T&ocirc;i c&ograve;n nhớ rất r&otilde; l&agrave; sau khi ăn chiều th&igrave; ch&uacute;ng t&ocirc;i phải ngồi xe khoảng 40 ph&uacute;t theo con đường độc đạo xuy&ecirc;n qua mặt biển &ecirc;m ả mới tới nơi.</em></p>\r\n<p align="justify"><em>Sau khi mua v&eacute; đi tham quan l&ograve;ng v&ograve;ng một hồi, t&ocirc;i v&agrave; người bạn muốn đi vệ sinh. Kh&ocirc;ng thấy bảng hướng dẫn n&ecirc;n ch&uacute;ng t&ocirc;i phải đi hỏi nh&acirc;n vi&ecirc;n bảo vệ v&agrave; được chỉ ra ngo&agrave;i cổng c&aacute;ch đ&oacute; cả c&acirc;y số. Khu nh&agrave; vệ sinh tại đ&acirc;y rất rộng, ph&acirc;n chia nam, nữ ri&ecirc;ng biệt v&agrave; mặc d&ugrave; thu 2.000 đồng/người nhưng m&ugrave;i h&ocirc;i h&aacute;m xộc ngay v&agrave;o mũi du kh&aacute;ch. T&ocirc;i chỉ d&aacute;m bước đi nh&egrave; nhẹ v&igrave; s&agrave;n nh&agrave; vệ sinh tuy c&oacute; l&oacute;t gạch nhưng bị ứ nước v&agrave; bẩn thỉu. Đ&acirc;u chỉ c&oacute; thế, ph&ograve;ng vệ sinh rất dơ v&agrave; t&ocirc;i phải nhắm mắt đi cho xong việc rồi nhanh ch&acirc;n chạy ra.</em></p>\r\n<p align="justify"><em>Đến giờ t&ocirc;i vẫn kh&ocirc;ng hiểu tại sao một khu du lịch sang trọng như vậy lại c&oacute; thể để nh&agrave; vệ sinh qu&aacute; bẩn thỉu khiến nhiều du kh&aacute;ch kh&ocirc;ng c&ograve;n muốn quay trở lại. </em></p>\r\n<p align="right"><strong>TUYẾT NHƯ</strong> (Phường 12, quận 10, TP.HCM)</p>\r\n<p><strong><em>Thiếu v&agrave; nhếch nh&aacute;c</em></strong></p>\r\n<p align="justify"><em>Năm nay cơ quan t&ocirc;i c&oacute; tổ chức chuyến du lịch tới một địa điểm c&oacute; phong cảnh hữu t&igrave;nh kh&aacute; hấp dẫn. Rất nhiều người muốn đăng k&yacute; nhưng sau đ&oacute; đ&atilde; luyến tiếc bỏ tour v&igrave; nghe n&oacute;i c&oacute; thể phải sống như Robinson ở đảo hoang, ăn &ldquo;bụi&rdquo; v&agrave; đi vệ sinh cũng &ldquo;bụi&rdquo;. Tuy cho rằng mỗi kiểu chơi đều c&oacute; c&aacute;i th&uacute; của n&oacute; nhưng t&ocirc;i cũng đồng cảm đi du lịch m&agrave; phải thắc thỏm lo chuyện vệ sinh th&igrave; &iacute;t nhiều th&uacute; vui cũng bị ảnh hưởng. </em></p>\r\n<p align="justify"><em>C&oacute; dịp đi nhiều nơi n&ecirc;n t&ocirc;i thấy nhiều nh&agrave; vệ sinh rất tệ hại. Từ TP.HCM đến c&aacute;c tỉnh, nếu phải gh&eacute; c&aacute;c trạm đổ xăng, nhiều du kh&aacute;ch c&oacute; nhu cầu cũng rất ngại đi v&agrave;o. Ở c&aacute;c nh&agrave; h&agrave;ng m&agrave; xe du lịch thường dừng lại cho du kh&aacute;ch ăn uống, nghỉ ngơi, nh&agrave; vệ sinh lu&ocirc;n bị qu&aacute; tải, qu&aacute; dơ, kh&ocirc;ng c&oacute; giấy, x&agrave; ph&ograve;ng, nước lại chảy yếu&hellip;</em></p>\r\n<p align="justify"><em>Tại TP.HCM, nhiều du kh&aacute;ch c&oacute; sở th&iacute;ch đi bộ dạo quanh TP cũng đau đầu với chuyện vệ sinh c&aacute; nh&acirc;n do c&aacute;c nh&agrave; vệ sinh c&ocirc;ng cộng c&ograve;n thưa thớt, chưa đ&aacute;p ứng đủ nhu cầu. Đ&atilde; vậy, ch&uacute;ng cũng kh&ocirc;ng được sạch, bước v&agrave;o l&agrave; c&oacute; m&ugrave;i h&ocirc;i, diện t&iacute;ch lại qu&aacute; nhỏ, c&oacute; thể g&acirc;y kh&oacute; khăn cho những du kh&aacute;ch nước ngo&agrave;i to con. </em></p>\r\n<p align="justify"><em>Trong một lần dạo chơi ở Khu du lịch Văn Th&aacute;nh, t&ocirc;i đ&atilde; rất ấn tượng bởi sự sạch sẽ, m&ugrave;i thơm dễ chịu, c&aacute;ch b&agrave;y biện những đồ d&ugrave;ng, những bức tranh treo tường xinh xắn trong nh&agrave; vệ sinh tại đ&acirc;y. Dĩ nhi&ecirc;n l&agrave; t&ocirc;i h&agrave;i l&ograve;ng v&agrave; sẽ an t&acirc;m giới thiệu địa điểm n&agrave;y cho nhiều bạn b&egrave;.</em></p>\r\n<p align="right"><strong>ĐẶNG CẢNH</strong> (Quận B&igrave;nh Thạnh)</p>\r\n<p align="justify"><em>T&ocirc;i đ&atilde; c&oacute; dịp đi C&ocirc;n Đảo v&agrave; giờ nghe ai hỏi về địa danh n&agrave;y t&ocirc;i đều mạnh dạn khẳng định: &ldquo;Đẹp, hay!&rdquo;. Tuy nhi&ecirc;n, c&oacute; một chuyện tế nhị m&agrave; t&ocirc;i vẫn thấy thẹn khi kể lại. </em></p>\r\n<p align="justify"><em>Trong l&uacute;c tham quan khu nh&agrave; t&ugrave; kh&aacute; rộng của Ph&aacute;p th&igrave; t&ocirc;i v&agrave; chị bạn c&oacute; nhu cầu đi vệ sinh. Nh&igrave;n xung quanh kh&ocirc;ng c&oacute; bảng hướng dẫn, ch&uacute;ng t&ocirc;i quay sang t&igrave;m hướng dẫn vi&ecirc;n nhưng anh n&agrave;y đ&atilde; mất h&uacute;t trong d&ograve;ng người đang thẳng tiến. Nhờ mấy người trong đo&agrave;n từng đến đ&acirc;y chỉ chỗ nhưng họ đều lắc đầu &ldquo;kh&ocirc;ng biết&rdquo;. Chợt nh&igrave;n thấy gần đ&oacute; c&oacute; miếng đất trống đầy cỏ c&oacute; bức tường bao b&ecirc;n ngo&agrave;i, mọi người đ&atilde; đẩy hai ch&uacute;ng t&ocirc;i v&agrave;o. Cả hai chạy lẹ như ma đuổi&hellip; Nhưng như vậy vẫn chưa y&ecirc;n, v&agrave;i người nam do kh&ocirc;ng biết chuyện đ&atilde; toan đi v&agrave;o b&ecirc;n trong tham quan. Nghe mấy chị đang đứng canh chừng la to &ldquo;kh&ocirc;ng được, cấm v&agrave;o&rdquo; rồi sau đ&oacute; l&agrave; tiếng cười của mấy người nam, tụi tui run bần bật.</em></p>\r\n<p align="justify"><em>Sau đ&oacute;, để tr&aacute;nh chuyện kh&ocirc;ng hay xảy ra lần nữa, t&ocirc;i đ&atilde; quan s&aacute;t rất kỹ khi bước ch&acirc;n v&agrave;o khu nh&agrave; t&ugrave; của Mỹ. Thế nhưng t&ocirc;i vẫn kh&ocirc;ng t&igrave;m thấy k&yacute; hiệu WC n&agrave;o cả&hellip;</em></p>\r\n<p align="justify"><em>Nh&acirc;n đ&acirc;y cho t&ocirc;i đề nghị: C&aacute;c khu du lịch n&ecirc;n đặt ở cổng ra v&agrave;o bảng chỉ dẫn c&aacute;c vị tr&iacute; của khu, trong đ&oacute; c&oacute; nh&agrave; vệ sinh. Đồng thời, hướng dẫn vi&ecirc;n n&ecirc;n chủ động giới thiệu điều n&agrave;y để mọi người đều r&otilde;. Tất nhi&ecirc;n, nh&agrave; vệ sinh phải hội đủ y&ecirc;u cầu theo quy định của Tổng cục Du lịch để du kh&aacute;ch lu&ocirc;n cảm thấy dễ chịu, h&agrave;i l&ograve;ng. </em></p>\r\n<p align="right"><strong>MINH CH&Acirc;U</strong></p>\r\n<p align="right"><strong>NH&Oacute;M PV(Ph&aacute;p luật HCM)</strong></p>', '', '05903349.jpg', '05903349_120x80.jpg', '05903349_175x135.jpg', 1, 1, 1341891395, 0);
INSERT INTO `table_news` VALUES (12, 2, 0, 'Ba phố đi bộ đầu tiên ở Hà Nội ', 'ba-pho-di-bo-dau-tien-o-ha-noi', 'Sáng nay, phố Chùa Một Cột, Ông Ích Khiêm và đoạn phố Hùng Vương bắt đầu cấm phương tiện hoạt động 24/7. Nhiều du khách thảnh thơi chụp ảnh, đi dạo trên 3 phố đi bộ đầu tiên ở thủ đô.', '<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_6-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>S&aacute;ng nay, phố Ch&ugrave;a Một Cột, &Ocirc;ng &Iacute;ch Khi&ecirc;m v&agrave; đoạn phố H&ugrave;ng Vương bắt đầu cấm phương tiện hoạt động 24/7. Nhiều du kh&aacute;ch thảnh thơi chụp ảnh, đi dạo tr&ecirc;n 3 phố đi bộ đầu ti&ecirc;n ở thủ đ&ocirc;.</p>\r\n<p><br /><img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_1-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Biển b&aacute;o cấm tất cả c&aacute;c phương tiện, chỉ d&agrave;nh cho người đi bộ được dựng l&ecirc;n đoạn ng&atilde; 4 phố Ch&ugrave;a Một Cột - B&agrave; Huyện Thanh Quan. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_2-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>C&aacute;c phương tiện tới đ&acirc;y đều phải quay đầu rẽ hướng kh&aacute;c. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_4-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Người đi bộ ở tuyến phố n&agrave;y chủ yếu l&agrave; du kh&aacute;ch thăm lăng B&aacute;c. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_5-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Một đoạn đường H&ugrave;ng Vương cũng trở th&agrave;nh phố đi bộ bắt đầu từ s&aacute;ng nay. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_5a-20120519171627.jpg" alt="" width="495" height="330" /></p>\r\n<p>H&agrave;ng r&agrave;o dựng l&ecirc;n ở đầu phố cấm phục vụ người d&acirc;n v&agrave;o thăm lăng B&aacute;c. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_6-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Du kh&aacute;ch thảnh thơi chụp ảnh tr&ecirc;n đường H&ugrave;ng Vương. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_7-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Phố &Ocirc;ng &Iacute;ch Khi&ecirc;m đoạn từ ng&atilde; tư Ngọc H&agrave; tới phố Ch&ugrave;a Một Cột cũng l&agrave; một trong ba tuyến đi bộ đầu ti&ecirc;n ở H&agrave; Nội. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_8-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Do c&oacute; đơn vị qu&acirc;n đội đ&oacute;ng tại đ&acirc;y n&ecirc;n vẫn c&oacute; &ocirc;t&ocirc; ra v&agrave;o ở đoạn đầu của phố đi bộ. <img style="display: block; margin-left: auto; margin-right: auto;" src="http://camnang-dulich.com/images/stories/pho_di_bo_9-20120519171627.jpg" alt="" width="495" height="329" /></p>\r\n<p>Phố &Ocirc;ng &Iacute;ch Khi&ecirc;m m&aacute;t mẻ với nhiều c&acirc;y xanh. Con phố n&agrave;y c&oacute; Bảo t&agrave;ng Hồ Ch&iacute; Minh v&agrave; kh&ocirc;ng c&oacute; nh&agrave; d&acirc;n.</p>\r\n<p align="right"><strong>Kh&aacute;nh Huyền(vnexpress)</strong></p>', '', '10344925.jpg', '10344925_120x80.jpg', '10344925_175x135.jpg', 1, 1, 1341891449, 0);
INSERT INTO `table_news` VALUES (13, 2, 0, 'Du lịch hè đua giảm giá sốc ', 'du-lich-he-dua-giam-gia-soc', 'Để tránh tình trạng ảm đảm của thị trường du lịch nội địa do lượng khách du lịch nội giảm sút mạnh trong thời gian qua, hè này các công ty du lịch, lữ hành đang chạy đua nhau trong chương trình khuyến mãi giảm giá sốc nhằm kích cầu du lịch trong mùa du lịch chào hè năm nay.', '<h1 class="contentheading clearfix">&nbsp;</h1>\r\n<div class="article-content">\r\n<p style="text-align: justify;"><img class="center" src="http://camnang-dulich.com/images/stories/du-lch-h_1337163816-20120517085634.jpg" alt="" /></p>\r\n<p>Để tr&aacute;nh t&igrave;nh trạng ảm đảm của thị trường du lịch nội địa do lượng kh&aacute;ch du lịch nội giảm s&uacute;t mạnh trong thời gian qua, h&egrave; n&agrave;y c&aacute;c c&ocirc;ng ty du lịch, lữ h&agrave;nh đang chạy đua nhau trong chương tr&igrave;nh khuyến m&atilde;i giảm gi&aacute; sốc nhằm k&iacute;ch cầu du lịch trong m&ugrave;a du lịch ch&agrave;o h&egrave; năm nay.</p>\r\n<div id="VietAd">\r\n<p style="text-align: justify;">Ghi nhận tại thị trường du lịch h&egrave; năm nay thấy rằng, để h&uacute;t kh&aacute;ch c&aacute;c h&atilde;ng lữ h&agrave;nh đ&atilde; đồng loạt giảm gi&aacute; c&aacute;c tour nội địa. Đặc biệt, trong đợt n&agrave;y c&oacute; những c&ocirc;ng ty du lịch c&ograve;n giảm gi&aacute; s&acirc;u cho c&aacute;c tour nội địa l&ecirc;n đến 30-40%.</p>\r\n<p style="text-align: justify;">Ch&agrave;o h&egrave;, C&ocirc;ng ty du lịch Biển &Aacute; đưa ra chương tr&igrave;nh khuyến m&atilde;i hấp dẫn cho tour TP Hồ Ch&iacute; Minh - Vũng T&agrave;u. Kh&aacute;ch đặt tour sẽ được giảm ngay 530.000 đồng/kh&aacute;ch từ 1.480.000 đồng xuống c&ograve;n 950.000 đồng/kh&aacute;ch.</p>\r\n<p style="text-align: justify;">Hanoi Redtours cũng khởi động m&ugrave;a h&egrave; 2012 với ba tuor du lịch biển miền Trung với mức giảm gi&aacute; l&ecirc;n đến 3 triệu đồng/tour/kh&aacute;ch. Theo đ&oacute;, kh&aacute;ch đăng k&yacute; tour Đ&agrave; Nẵng - Quảng Nam được giảm 2 triệu đồng xuống c&ograve;n 5,5 triệu đồng/kh&aacute;ch, tour Quy Nhơn - B&igrave;nh Định v&agrave; Nha Trang - Ph&uacute; Y&ecirc;n giảm 3 triệu đồng xuống c&ograve;n 6,7 triệu đồng/kh&aacute;ch.</p>\r\n<p style="text-align: justify;">C&ocirc;ng ty lữ h&agrave;nh Hanoitourist cũng c&oacute; chương tr&igrave;nh "khuyến m&atilde;i ch&agrave;o h&egrave;" giảm gi&aacute; sốc. Theo đ&oacute;, kh&aacute;ch đăng k&yacute; đi hai tour Nha Trang -Dốc Lết, Nha Trang - Đ&agrave; Lạt lần n&agrave;y sẽ được giảm gi&aacute; 2 triệu đồng/tour/kh&aacute;ch.</p>\r\n<p style="text-align: justify;">Kh&ocirc;ng chịu k&eacute;m cạnh trong chương tr&igrave;nh chạy đua giảm gi&aacute; sốc du lịch ch&agrave;o h&egrave; năm nay, Vietrantour cũng tr&igrave;nh l&agrave;ng du lịch với chương tr&igrave;nh khuyến m&atilde;i giả gi&aacute; s&acirc;u cho h&agrave;ng loạt c&aacute;c tour nội địa.</p>\r\nVietrantour cũng c&oacute; chương tr&igrave;nh tour đường bay giảm gi&aacute; tới 40% d&agrave;nh cho gần 20 tour du lịch nội địa như: tour H&agrave; Nội -Cần Thơ - Bạc Li&ecirc;u - S&oacute;c Trăng - C&agrave; Mau gi&aacute; 6.890.000 đồng/kh&aacute;ch, H&agrave; Nội - Quy Nhơn gi&aacute; 6.190.000 đồng/kh&aacute;ch, S&agrave;i G&ograve;n - Vũng T&agrave;u gi&aacute; 7.290.000 đồng/kh&aacute;ch, Sapa - H&agrave; Khẩu gi&aacute; 4.290.000 đồng/kh&aacute;ch... Ngo&agrave;i ra, Vietrantour cũng đang ch&agrave;o tour H&agrave; Nội - Hạ Long ngủ t&agrave;u 5 sao giảm gi&aacute; 20% chỉ c&ograve;n 2.499.000 đồng/kh&aacute;ch.\r\n<p style="text-align: justify;">"So với gi&aacute;&nbsp; ng&agrave;y thường cũng như dịp lễ 30/4 vừa qua, gi&aacute; cho c&aacute;c tour du lịch h&egrave; đợt n&agrave;y đ&atilde; giảm đi gần một nửa", một l&atilde;nh đạo c&ocirc;ng ty du lịch cho biết.</p>\r\n<p style="text-align: justify;">L&yacute; giải về vấn đề giảm gi&aacute; đồng loạt c&aacute;c tour nội địa trong dịp n&agrave;y, Gi&aacute;m đốc Vietrantour cho biết, "Tour trong nước trọn g&oacute;i đồng loạt giảm gi&aacute; l&agrave; do H&agrave;ng kh&ocirc;ng Việt Nam giảm gi&aacute; v&eacute; m&aacute;y bay tới 40% đối với kh&aacute;ch đo&agrave;n tr&ecirc;n 10 người. Đ&acirc;y được coi l&agrave; chương tr&igrave;nh k&iacute;ch cầu du lịch lớn nhất trong năm nay v&agrave; sẽ k&eacute;o d&agrave;i suốt m&ugrave;a h&egrave;".</p>\r\n<p style="text-align: justify;">Đại diện của Hanoitourist cũng đồng t&igrave;nh với quan điểm tr&ecirc;n, hầu hết c&aacute;c c&ocirc;ng ty du lịch, lữ h&agrave;nh giảm gi&aacute; c&aacute;c tour trong m&ugrave;a du lịch h&egrave; l&agrave; do c&oacute; sự hỗ trợ giảm gi&aacute; v&eacute; m&aacute;y bay của c&aacute;c h&atilde;ng H&agrave;ng kh&ocirc;ng Việt Nam. Hiện Hanoitourist cũng đang kết hợp với VietjetAir để giảm gi&aacute; cho một số tour trong dịp n&agrave;y.</p>\r\n<p style="text-align: justify;">Tuy nhi&ecirc;n, nhiều c&ocirc;ng ty du lịch cũng nhận định rằng, c&aacute;c tour được khuyến m&atilde;i giảm gi&aacute; s&acirc;u trong đợt n&agrave;y thường l&agrave; c&aacute;c tour nội địa, tour ngoại hầu như kh&ocirc;ng c&oacute; bởi theo chương tr&igrave;nh giảm gi&aacute; của c&aacute;c h&atilde;ng h&agrave;ng kh&ocirc;ng d&agrave;nh cho c&aacute;c c&ocirc;ng ty du lịch trong h&egrave; mục đ&iacute;ch ch&iacute;nh để k&iacute;ch cầu du lịch nội địa.</p>\r\n<p style="text-align: justify;">Ngo&agrave;i ra, c&aacute;c h&atilde;ng lữ h&agrave;nh cũng khuyến c&aacute;o kh&aacute;ch n&ecirc;n đặt tour sớm, kh&ocirc;ng thay đổi t&ecirc;n, lịch tr&igrave;nh để c&aacute;c c&ocirc;ng ty du lịch c&ograve;n đăng k&yacute; v&eacute; m&aacute;y bay khuyến m&atilde;i, x&aacute;c nhận v&eacute; sớm với h&atilde;ng h&agrave;ng kh&ocirc;ng. Nếu đăng k&yacute; muộn kh&aacute;ch sẽ phải mua tour với gi&aacute; m&aacute;y bay lẻ, theo đ&oacute; gi&aacute; tour sẽ cao hơn</p>\r\n<p style="text-align: justify;"><strong>VEF.VN</strong></p>\r\n</div>\r\n</div>', '', '76663447.jpg', '76663447_120x80.jpg', '76663447_175x135.jpg', 1, 1, 1341891492, 0);
INSERT INTO `table_news` VALUES (14, 3, 0, 'Tuyển dụng tháng 8/2012', 'tuyen-dung-thang-82012', 'Công ty cần tuyển 5 nhân viên kinh doanh', '<p>Nội dung chi tiết tin tuyển dụng th&aacute;ng 8/2012</p>\r\n<p>&nbsp;</p>', '', '73304182.jpg', '73304182_120x80.jpg', '73304182_175x135.jpg', 1, 1, 1344851507, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_news_item`
-- 

CREATE TABLE `table_news_item` (
  `id` int(11) NOT NULL auto_increment,
  `ten` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `table_news_item`
-- 

INSERT INTO `table_news_item` VALUES (1, 'Dự án', 'du-an', 2, 1, 1341883303, 1344843929);
INSERT INTO `table_news_item` VALUES (2, 'Tin tức', 'tin-tuc', 1, 1, 1341883317, 0);
INSERT INTO `table_news_item` VALUES (3, 'Tuyển dụng', 'tuyen-dung', 1, 1, 1344843954, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_online`
-- 

CREATE TABLE `table_online` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `session_id` varchar(255) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53509 ;

-- 
-- Dumping data for table `table_online`
-- 

INSERT INTO `table_online` VALUES (53508, '80b522e7d25615afb4bcec6522c56888', 1345192912);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_photo`
-- 

CREATE TABLE `table_photo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `mota` text NOT NULL,
  `id_cat` int(10) unsigned NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `com` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- Dumping data for table `table_photo`
-- 

INSERT INTO `table_photo` VALUES (1, '357975219773594.jpg', '', 'Tran quoc thang', '<p>ADASD</p>', 0, 1, 1, '');
INSERT INTO `table_photo` VALUES (2, '271279251341664.jpg', '', '', '<p>ASAS</p>', 0, 1, 1, '');
INSERT INTO `table_photo` VALUES (4, '189.swf', '', '', '', 0, 1, 1, 'banner_top');
INSERT INTO `table_photo` VALUES (7, 'slider.jpg', '', '', '', 0, 1, 1, 'banner_giua');
INSERT INTO `table_photo` VALUES (13, '6407029.jpg', '', 'hình 1', '', 0, 1, 1, 'banner_phai');
INSERT INTO `table_photo` VALUES (14, '479560953958828.png', '', 'hình 2', '', 0, 1, 1, 'doitac');
INSERT INTO `table_photo` VALUES (15, '547171280500750.jpg', '', 'hình 3', '', 0, 1, 1, 'doitac');
INSERT INTO `table_photo` VALUES (18, '142759445620373.png', '', 'hình 4', '', 0, 1, 1, 'doitac');
INSERT INTO `table_photo` VALUES (19, '000216218941617.jpg', '', 'hình 5', '', 0, 1, 1, 'doitac');

-- --------------------------------------------------------

-- 
-- Table structure for table `table_product`
-- 

CREATE TABLE `table_product` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_list` int(11) NOT NULL,
  `id_item` int(10) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `noibat` int(11) NOT NULL,
  `hot` int(11) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `maso` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `noidung` text NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `table_product`
-- 

INSERT INTO `table_product` VALUES (1, 8, 0, 8, 1341886036, 1344909004, '516419722686.jpg', '516419722686_155x140.jpg', 'product du lịch Hòn Mun - Nha Trang', 'product-du-lich-hon-mun-nha-trang', 'honmun', 470000, '', 1, 1, 1341824779, 1344909189, 2);
INSERT INTO `table_product` VALUES (2, 9, 0, 0, 1341886035, 1344909005, '318737761161.jpg', '318737761161_155x140.jpg', 'product đêm Nha Trang', 'product-dem-nha-trang', 'IN-NTD', 200000, '', 1, 1, 1341825336, 1344907729, 31);
INSERT INTO `table_product` VALUES (3, 8, 5, 9, 1341886035, 0, '863107382133.jpg', '863107382133_155x140.jpg', 'product du lịch Hà Nội - Đà Lạt - Sài Gòn', 'product-du-lich-ha-noi-da-lat-sai-gon', 'ĐL - 0010', 7500000, '', 1, 1, 1341825420, 1344907716, 4);
INSERT INTO `table_product` VALUES (4, 7, 4, 6, 1341886034, 0, '118996790826.jpg', '118996790826_155x140.jpg', 'product du lịch Long Hải - Vũng Tàu', 'product-du-lich-long-hai-vung-tau', 'LH - VT', 590000, '', 1, 1, 1341825508, 1344907701, 0);
INSERT INTO `table_product` VALUES (5, 5, 0, 3, 1341886033, 0, '611894723560.jpg', '611894723560_155x140.jpg', 'product du lịch Mũi Né - Bàu Sen', 'product-du-lich-mui-ne-bau-sen', 'MN-BS', 895000, '', 1, 1, 1341825600, 1344907528, 0);
INSERT INTO `table_product` VALUES (6, 5, 0, 2, 1341886033, 1341902890, '536986256128.jpg', '536986256128_155x140.jpg', 'product du lịch Nha Trang - Yang Bay', 'product-du-lich-nha-trang-yang-bay', 'NT-YB', 1119000, '', 1, 1, 1341825669, 1344907512, 0);
INSERT INTO `table_product` VALUES (7, 6, 0, 0, 1341886032, 0, '668694184444.jpg', '668694184444_155x140.jpg', 'product du lịch Pháp - Ý - Thụy Sỹ', 'product-du-lich-phap-y-thuy-sy', 'IN-PYTS', 72000000, '', 1, 1, 1341825753, 1344907498, 1);
INSERT INTO `table_product` VALUES (8, 7, 1, 7, 1341886032, 1341902889, '815956759607.jpg', '815956759607_155x140.jpg', 'product du lịch Pháp - Bỉ - Hà Lan - Đức - Ý', 'product-du-lich-phap-bi-ha-lan-duc-y', 'IN-PBHLDY', 840000000, '', 1, 1, 1341825838, 1344907486, 6);
INSERT INTO `table_product` VALUES (9, 7, 4, 6, 1341886031, 1341902887, '860292965543.jpg', '860292965543_155x140.jpg', 'product du lịch Thẩm Quyến - Quảng Châu', 'product-du-lich-tham-quyen-quang-chau', 'IN-TQTQQC', 8900000, '', 1, 1, 1341825959, 1344907471, 0);
INSERT INTO `table_product` VALUES (10, 5, 0, 4, 1341886030, 1341902888, '722671965241.jpg', '722671965241_155x140.jpg', 'product du lịch Hồng Kông - Disneyland', 'product-du-lich-hong-kong-disneyland', 'IN-HK', 19000000, '', 1, 1, 1341826059, 1344907443, 6);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_product_cat`
-- 

CREATE TABLE `table_product_cat` (
  `id` int(11) NOT NULL auto_increment,
  `id_list` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `table_product_cat`
-- 

INSERT INTO `table_product_cat` VALUES (1, 5, 'Bộ Điều Khiển Vị Trí Van PS2', 'bo-dieu-khien-vi-tri-van-ps2', '', '', 1, 1, 1341821973, 1344843000);
INSERT INTO `table_product_cat` VALUES (2, 5, 'Thiết Bị Đo Mức( Level)', 'thiet-bi-do-muc-level', '', '', 2, 1, 1341821986, 1344843019);
INSERT INTO `table_product_cat` VALUES (3, 5, 'Thiết Bị Đo Nhiệt Độ', 'thiet-bi-do-nhiet-do', '', '', 3, 1, 1341822001, 1344843030);
INSERT INTO `table_product_cat` VALUES (4, 5, 'Thiết Bị Đo Áp Suất', 'thiet-bi-do-ap-suat', '', '', 4, 1, 1341822008, 1344843040);
INSERT INTO `table_product_cat` VALUES (5, 5, 'Thiết Bị Đo Lưu Lượng', 'thiet-bi-do-luu-luong', '', '', 1, 1, 1344843056, 0);
INSERT INTO `table_product_cat` VALUES (6, 7, 'Thiết bị tự động hóa', 'thiet-bi-tu-dong-hoa', '', '', 1, 1, 1344843310, 0);
INSERT INTO `table_product_cat` VALUES (7, 7, 'Phân Phối Điện Hạ Thế', 'phan-phoi-dien-ha-the', '', '', 1, 1, 1344843316, 0);
INSERT INTO `table_product_cat` VALUES (8, 8, 'Phân Phối Điện Hạ Thế', 'phan-phoi-dien-ha-the', '', '', 1, 1, 1344843333, 0);
INSERT INTO `table_product_cat` VALUES (9, 8, 'Thiết bị tự động hóa', 'thiet-bi-tu-dong-hoa', '', '', 1, 1, 1344843342, 0);
INSERT INTO `table_product_cat` VALUES (10, 8, 'Dân dụng', 'dan-dung', '', '', 1, 1, 1344843356, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_product_item`
-- 

CREATE TABLE `table_product_item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_list` int(11) NOT NULL,
  `id_cat` int(10) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) collate latin1_general_ci NOT NULL,
  `photo` varchar(20) collate latin1_general_ci NOT NULL,
  `thumb` varchar(255) collate latin1_general_ci NOT NULL,
  `stt` int(2) NOT NULL,
  `hienthi` int(2) NOT NULL,
  `ngaysua` int(10) NOT NULL,
  `ngaytao` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `table_product_item`
-- 

INSERT INTO `table_product_item` VALUES (1, 7, 7, 'Miền bắc', 'mien-bac', '', '', 1, 1, 1344847220, 1341822235);
INSERT INTO `table_product_item` VALUES (2, 8, 10, 'Miền nam', 'mien-nam', '', '', 2, 1, 1344847246, 1341822247);
INSERT INTO `table_product_item` VALUES (3, 7, 6, 'Miền Trung', 'mien-trung', '', '', 3, 1, 1344847259, 1341822257);
INSERT INTO `table_product_item` VALUES (4, 7, 6, 'Châu Á', 'chau-a', '', '', 1, 1, 1344847229, 1341822308);
INSERT INTO `table_product_item` VALUES (5, 8, 9, 'Châu Âu', 'chau-au', '', '', 2, 1, 1344847252, 1341822315);
INSERT INTO `table_product_item` VALUES (6, 7, 6, 'Test', 'test', '', '', 1, 1, 1344847239, 1344829690);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_product_list`
-- 

CREATE TABLE `table_product_list` (
  `id` int(11) NOT NULL auto_increment,
  `ten` varchar(255) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `hienthi` int(11) NOT NULL,
  `ngaytao` int(11) NOT NULL,
  `ngaysua` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

-- 
-- Dumping data for table `table_product_list`
-- 

INSERT INTO `table_product_list` VALUES (5, 'Thiết bị đo lường', 'thiet-bi-do-luong', '', '', 1, 1, 1344827181, 0);
INSERT INTO `table_product_list` VALUES (6, 'TB Phân Tích Ngành Nước', 'tb-phan-tich-nganh-nuoc', '', '', 1, 1, 1344827191, 0);
INSERT INTO `table_product_list` VALUES (7, 'Mitsubishi', 'mitsubishi', '', '', 1, 1, 1344827203, 0);
INSERT INTO `table_product_list` VALUES (8, 'Schneider', 'schneider', '', '', 1, 1, 1344827212, 0);
INSERT INTO `table_product_list` VALUES (9, 'Gia công cơ khí', 'gia-cong-co-khi', '', '', 2, 1, 1344842944, 1344842967);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_quangcao`
-- 

CREATE TABLE `table_quangcao` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `id_photo` int(10) NOT NULL,
  `height` int(10) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `vitri` int(5) NOT NULL,
  `thumb` varchar(225) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `mota` text NOT NULL,
  `id_cat` int(10) unsigned NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `com` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `table_quangcao`
-- 

INSERT INTO `table_quangcao` VALUES (5, 0, 0, '455033.jpg', 0, '3684112_220x164.906303237.jpg', '', 'http://www.hongnhung.net', 0, 1, 1, 'quangcao');

-- --------------------------------------------------------

-- 
-- Table structure for table `table_slider`
-- 

CREATE TABLE `table_slider` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `photo` varchar(225) NOT NULL,
  `ten` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `mota` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `table_slider`
-- 

INSERT INTO `table_slider` VALUES (1, '536422353153982.jpg', 'Hồng Nhung Mizilko', '', 'http://www.hongnhung.net', 1, 1);
INSERT INTO `table_slider` VALUES (2, '496884442164729.jpg', 'Hồng Nhung Mizilko', '', 'http://www.hongnhung.net', 1, 1);
INSERT INTO `table_slider` VALUES (3, '885807200009372.jpg', 'Hồng Nhung Mizilko', '', 'hhttp://www.hongnhung.net', 1, 1);
INSERT INTO `table_slider` VALUES (4, '484481389093113.jpeg', 'Hồng Nhung Mizilko', '', 'http://www.hongnhung.net', 1, 1);
INSERT INTO `table_slider` VALUES (5, '933147241259729.jpg', 'Hồng Nhung Mizilko', '', 'http://www.hongnhung.net', 1, 1);
INSERT INTO `table_slider` VALUES (6, '0840337351767640.jpg', 'Hồng Nhung Mizilko', '', 'http://www.hongnhung.net', 1, 1);
INSERT INTO `table_slider` VALUES (7, '0840337351767641.jpg', 'Hồng Nhung Mizilko', '', 'http://www.hongnhung.net', 1, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_title`
-- 

CREATE TABLE `table_title` (
  `id` int(10) NOT NULL auto_increment,
  `ten` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `table_title`
-- 

INSERT INTO `table_title` VALUES (1, 'Du lịch Cảnh Việt');

-- --------------------------------------------------------

-- 
-- Table structure for table `table_tlkt`
-- 

CREATE TABLE `table_tlkt` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ten` varchar(225) NOT NULL,
  `tenkhongdau` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `noidung` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(10) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `ngaytao` int(11) NOT NULL default '0',
  `ngaysua` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `table_tlkt`
-- 

INSERT INTO `table_tlkt` VALUES (1, 'Giới thiệu chung', 'gioi-thieu-chung', '', '<p>Nội dung t&agrave;i liệu kỹ thuật</p>', '00310919.jpg', 'thums00310919.jpg', 0, 1, 1225497589, 1339728897);

-- --------------------------------------------------------

-- 
-- Table structure for table `table_user`
-- 

CREATE TABLE `table_user` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `ten` varchar(225) NOT NULL,
  `dienthoai` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `diachi` varchar(225) NOT NULL,
  `sex` tinyint(1) NOT NULL default '0',
  `nick_yahoo` varchar(225) NOT NULL,
  `nick_skype` varchar(225) NOT NULL,
  `congty` varchar(225) NOT NULL,
  `country` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `role` tinyint(3) unsigned NOT NULL default '1',
  `hienthi` tinyint(1) NOT NULL default '1',
  `com` varchar(225) NOT NULL default 'user',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `table_user`
-- 

INSERT INTO `table_user` VALUES (1, 'phuongnhi', '096c4edad00d17cdce23e61e03a13783', '', '', '', '', 0, '', '', '', '', '', 3, 1, 'user');
INSERT INTO `table_user` VALUES (3, 'admin', '46f94c8de14fb36680850768ff1b7f2a', '', '', '', '', 0, '', '', '', '', '', 3, 1, 'user');

-- --------------------------------------------------------

-- 
-- Table structure for table `table_yahoo`
-- 

CREATE TABLE `table_yahoo` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `ten` varchar(30) character set utf8 collate utf8_unicode_ci NOT NULL,
  `linhvuc` int(3) NOT NULL,
  `loai` int(11) NOT NULL,
  `yahoo` varchar(30) character set utf8 collate utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(30) character set utf8 collate utf8_unicode_ci NOT NULL,
  `stt` int(3) NOT NULL,
  `hienthi` int(2) NOT NULL,
  `ngaytao` int(10) NOT NULL,
  `ngaysua` int(10) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `table_yahoo`
-- 

INSERT INTO `table_yahoo` VALUES (9, 'Gà con', 0, 1, 'gacon.cntt', '093.7060821', 1, 1, 1312357162, 1344928424);
INSERT INTO `table_yahoo` VALUES (10, 'Hoàng Huy', 0, 3, 'hoangtumuoi1986', '0909090909', 1, 1, 1344927544, 0);
