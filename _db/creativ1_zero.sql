-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 01, 2021 lúc 05:23 PM
-- Phiên bản máy phục vụ: 10.1.48-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `creativ1_zero`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `review_description` text NOT NULL,
  `photo` varchar(128) NOT NULL,
  `avatar` varchar(128) NOT NULL,
  `category` varchar(32) NOT NULL,
  `store_id` text NOT NULL,
  `field_custom_1` text NOT NULL,
  `field_custom_2` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `review_description`, `photo`, `avatar`, `category`, `store_id`, `field_custom_1`, `field_custom_2`, `status`) VALUES
(1, 'Hộp cơm', 'hop-com', '<p><span>Thay v&igrave; ăn ngo&agrave;i, tự chuẩn bị một bữa cơm sạch sẽ, đầy đủ dinh dưỡng, ngon miệng đang trở th&agrave;nh xu hướng. Khi chọn sống xanh, chiếc hộp cơm c&ograve;n l&agrave; vũ kh&iacute; gi&uacute;p bạn giảm liền sử dụng h&agrave;ng h&agrave;ng lớp lớp những t&uacute;i nylong v&agrave; hộp xốp đ&aacute;ng gh&eacute;t nữa. Bởi vậy, t&iacute;n đồ zerowaste dĩ nhi&ecirc;n cần đ&acirc;u tư ngay cho m&igrave;nh một hộp cơm thật cool ngầu (để c&ograve;n tạo cảm hứng cho những ng&agrave;y m&igrave;nh lười xuống bếp chứ bạn nhỉ?) </span></p>\r\n\r\n<p><span>D&ugrave; bạn th&iacute;ch thiết kế đơn giản tinh tế, hay xinh xắn cute lạc lối, tụi m&igrave;nh cũng đ&atilde; chọn ở đ&acirc;y một số mẫu hộp cơm rất đ&aacute;ng đầu tư ngay ở dưới n&egrave;. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><span>Hộp đựng cơm l&agrave; giải ph&aacute;p vừa tiết kiệm tiền m&agrave; vẫn c&oacute; đầy đủ những bữa ăn dinh dưỡng với khả năng giữ nhiệt, nhẹ gọn khi mang theo m&igrave;nh v&agrave; chất liệu an to&agrave;n, kh&ocirc;ng giải ph&oacute;ng c&aacute;c chất độc hại v&agrave;o thực phẩm như hộp xốp. </span></p>\r\n', '2020-08-20-16-37-55-sp1.jpg', '2021-05-19-15-11-22-ava_soi@2x.png', '1', '1,5,83', '{\"title_0\":\"Ch\\u1ea5t li\\u1ec7u\",\"description_0\":\"S\\u1ee3i tre<br\\/>\\r\\nNh\\u00f4m\",\"title_1\":\"Th\\u1eddi gian d\\u00f9ng\",\"description_1\":\"9 - 12<br\\/>\\r\\nth\\u00e1ng\",\"title_2\":\"T\\u00e1i s\\u1eed d\\u1ee5ng\",\"description_2\":\"\\u0111\\u1ebfn<br\\/>\\r\\n2000 l\\u1ea7n\",\"title_3\":\"M\\u00f4i tr\\u01b0\\u1eddng\",\"description_3\":\"Gi\\u1ea3m<br\\/>\\r\\nr\\u00e1c th\\u1ea3i\"}', '{\"title_0\":\"C\\u00f4ng d\\u1ee5ng\",\"description_0\":\"H\\u1ed9p \\u0111\\u1ef1ng c\\u01a1m l\\u00e0 gi\\u1ea3i ph\\u00e1p v\\u1eeba ti\\u1ebft ki\\u1ec7m ti\\u1ec1n m\\u00e0 v\\u1eabn c\\u00f3 \\u0111\\u1ea7y \\u0111\\u1ee7 nh\\u1eefng b\\u1eefa \\u0103n dinh d\\u01b0\\u1ee1ng v\\u1edbi kh\\u1ea3 n\\u0103ng gi\\u1eef nhi\\u1ec7t, nh\\u1eb9 g\\u1ecdn khi mang theo m\\u00ecnh v\\u00e0 ch\\u1ea5t li\\u1ec7u an to\\u00e0n, kh\\u00f4ng gi\\u1ea3i ph\\u00f3ng c\\u00e1c ch\\u1ea5t \\u0111\\u1ed9c h\\u1ea1i v\\u00e0o th\\u1ef1c ph\\u1ea9m nh\\u01b0 h\\u1ed9p x\\u1ed1p. \",\"title_1\":\"Ch\\u1ea5t li\\u1ec7u\",\"description_1\":\"Hi\\u1ec7n nay h\\u1ed9p c\\u01a1m b\\u1eb1ng nh\\u1ef1a v\\u00e0 x\\u1ed1p l\\u00e0 r\\u1ea5t ph\\u1ed5 bi\\u1ebfn. Tuy nhi\\u00ean n\\u00f3 l\\u1ea1i g\\u00e2y \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn m\\u00f4i tr\\u01b0\\u1eddng v\\u00e0 s\\u1ee9c kh\\u1ecfe ng\\u01b0\\u1eddi ti\\u00eau d\\u00f9ng. V\\u00ec th\\u1ebf ta n\\u00ean s\\u1eed d\\u1ee5ng h\\u1ed9p c\\u01a1m \\u0111\\u01b0\\u1ee3c l\\u00e0m t\\u1eeb ch\\u1ea5t li\\u1ec7u nh\\u01b0: g\\u1ed7, th\\u1ee7y tinh, nh\\u00f4m v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 s\\u1ee3i tre v\\u1edbi quy tr\\u00ecnh s\\u1ea3n xu\\u1ea5t kh\\u00f4ng d\\u00f9ng h\\u00f3a ch\\u1ea5t n\\u00ean th\\u00e2n thi\\u1ec7n v\\u1edbi m\\u00f4i tr\\u01b0\\u1eddng.\",\"title_2\":\"T\\u00e1c \\u0111\\u1ed9ng m\\u00f4i tr\\u01b0\\u1eddng\",\"description_2\":\"M\\u1ed9t v\\u1ea5n \\u0111\\u1ec1 kh\\u00e1 nh\\u1ee9c nh\\u1ed1i hi\\u1ec7n nay l\\u00e0 s\\u1ed1 l\\u01b0\\u1ee3ng r\\u00e1c th\\u1ea3i sinh ho\\u1ea1t \\u0111ang gia t\\u0103ng \\u0111\\u1ed9t bi\\u1ebfn. Trong s\\u1ed1 \\u0111\\u00f3 th\\u00ec nh\\u1eefng ch\\u1ea5t th\\u1ea3i \\u0111\\u1ebfn t\\u1eeb bao b\\u00ec nh\\u1ef1a, x\\u1ed1p d\\u00f9ng 1 l\\u1ea7n \\u0111ang chi\\u1ebfm m\\u1ed9t l\\u01b0\\u1ee3ng t\\u01b0\\u01a1ng \\u0111\\u1ed1i l\\u1edbn do g\\u1ea7n nh\\u01b0 nh\\u1eefng s\\u1ea3n ph\\u1ea9m n\\u00e0y kh\\u00f4ng th\\u1ec3 ph\\u00e2n h\\u1ee7y trong m\\u00f4i tr\\u01b0\\u1eddng t\\u1ef1 nhi\\u00ean.\\r\\nTrong khi \\u0111\\u00f3 h\\u1ed9p \\u0111\\u1ef1ng c\\u01a1m c\\u00f3 th\\u1ec3 t\\u00e1i s\\u1eed d\\u1ee5ng \\u0111\\u1ebfn 2000 l\\u1ea7n, th\\u1eddi gian s\\u1eed d\\u1ee5ng k\\u00e9o d\\u00e0i, g\\u00f3p ph\\u1ea7n l\\u00e0m gi\\u1ea3m l\\u01b0\\u1ee3ng r\\u00e1c sinh ho\\u1ea1t th\\u1ea3i ra m\\u00f4i tr\\u01b0\\u1eddng. \",\"title_3\":\"Th\\u1eddi gian d\\u00f9ng\",\"description_3\":\"V\\u1edbi m\\u1ed9t h\\u1ed9p c\\u01a1m \\u0111\\u01b0\\u1ee3c l\\u00e0m t\\u1eeb v\\u1eadt li\\u1ec7u c\\u00f3 th\\u1ec3 t\\u00e1i s\\u1eed d\\u1ee5ng, ta c\\u00f3 th\\u1ec3 d\\u00f9ng ch\\u00fang trung b\\u00ecnh trong kho\\u1ea3ng th\\u1eddi gian t\\u1eeb 9-12 th\\u00e1ng v\\u00e0 \\u0111\\u01b0\\u01a1ng nhi\\u00ean n\\u1ebfu s\\u1eed d\\u1ee5ng m\\u1ed9t c\\u00e1ch c\\u1ea9n th\\u1eadn v\\u1eadt d\\u1ee5ng s\\u1ebd c\\u00f3 tu\\u1ed5i th\\u1ecd l\\u00e2u h\\u01a1n c\\u1ea3 th\\u1ebf.\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(2, 'Bàn chải gỗ', 'ban-chai-go', '<p><span>Như t&ecirc;n gọi đ&oacute;, c&aacute;n b&agrave;n chải gỗ sẽ được l&agrave;m từ vật liệu thi&ecirc;n nhi&ecirc;n, khả năng ph&acirc;n hủy 100%. Thường th&igrave; l&agrave; l&agrave; tre v&igrave; tre mọc rất nhanh v&agrave; kh&ocirc;ng cần thuốc trừ s&acirc;u lu&ocirc;n đ&oacute;. C&ograve;n l&ocirc;ng b&agrave;n chải l&agrave;m bằng nylon, mềm cho men răng v&agrave; nướu m&agrave; vẫn đủ mạnh để l&agrave;m sạch răng. Khi cần thay b&agrave;n chải, bạn c&oacute; thể dễ d&agrave;ng r&uacute;t phần l&ocirc;ng ra khỏi c&aacute;n v&agrave; t&aacute;ch ri&ecirc;ng để bạn dễ d&agrave;ng ph&acirc;n loại r&aacute;c. </span></p>\r\n\r\n<p><span>Với b&agrave;n chải, bạn chỉ cần phần l&ocirc;ng l&agrave; ch&iacute;nh. Ch&uacute;ng ta đ&acirc;u cần đẩy th&ecirc;m cho m&ocirc;i trường phần c&aacute;n nhựa, phải kh&ocirc;ng n&agrave;o? H&atilde;y sắm ngay một chiếc b&agrave;n chải gỗ nh&eacute;, vừa dễ thương với m&ocirc;i trường, vừa tr&ocirc;ng dễ thương trong tổ ấm của bạn.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-08-20-16-38-30-sp2.jpg', '2021-05-19-15-14-17-ava_casau@2x.png', '1', '1,5,10,29,37,53,63,65,73,75,83', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(3, 'Bình nước', 'binh-nuoc', '<p><span>Một chiếc b&igrave;nh nước &quot;chất như nước cất&quot; chắc chắn nằm trong shopping list khi bạn sống theo khuynh hướng zerowaste. Th&oacute;i quen mang theo b&igrave;nh nước c&aacute; nh&acirc;n thay v&igrave; d&ugrave;ng chai nước nhựa d&ugrave;ng một lần l&agrave; một trong những th&oacute;i quen thiết thực nhất để giảm r&aacute;c thải nhựa.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-08-20-16-38-58-sp3.jpg', '2021-05-19-15-14-26-ava_khi@2x.png', '1', '1,4,5,10,53,58,62,63,75,76,82,83,89,98', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(4, 'Màng bọc thực phẩm', 'mang-boc-thuc-pham', '<p><span>Thay v&igrave; sử dụng m&agrave;ng bọc plastic, sao bạn kh&ocirc;ng thử sử dụng m&agrave;ng bọc bằng...vải s&aacute;p ong? Vải s&aacute;p ong l&agrave; một sản phẩm hữu cơ cực kỳ th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng thấm nước, lại c&oacute; thể t&aacute;i sử dụng nhiều lần. Để bọc, bạn chỉ cần d&ugrave;ng lực v&agrave; sức n&oacute;ng từ b&agrave;n tay để bọc chung quanh miệng b&aacute;t hoặc bất cứ thực phẩm n&agrave;o bạn cần, như chiếc b&aacute;nh mỳ hay nửa quả t&aacute;o. Nhưng lưu &yacute;, đừng sử dụng vải s&aacute;p ong để bọc thịt g&agrave; c&aacute; tươi sống v&agrave; c&aacute;c tr&aacute;i c&acirc;y c&oacute; t&iacute;nh axit cao như cam chanh bạn nh&eacute;.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-48-10-zww-ui-illustrations-mang-boc-thuc-pham.jpg', '2021-05-19-15-14-34-ava_nhim@2x.png', '1', '2,5,53,73', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(5, 'Tăm bông', 'tam-bong', '<p><span>C&oacute; thể bạn kh&ocirc;ng để &yacute; nhưng tăm b&ocirc;ng đ&iacute;ch thực l&agrave; hung thần với m&ocirc;i trường. Tốc độ thải rất nhanh v&agrave; số lượng rất lớn. Với b&ocirc;ng ngo&aacute;y tai zero-waste, phần th&acirc;n sẽ được l&agrave;m bằng giấy để c&oacute; thể ph&acirc;n hủy 100%. Bạn vẫn cảm thấy ph&ecirc; khi ngo&aacute;y tai v&agrave; bạn sẽ cảm thấy &quot;phẻ&quot; khi bỏ n&oacute; v&agrave;o r&aacute;c ph&acirc;n loại.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-22-36-zww-ui-illustrations-tam-bong.jpg', '2021-05-19-15-14-46-ava_tacke@2x.png', '1', '1,5,53,73,82', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(6, 'Cốc nguyệt san', 'coc-nguyet-san', '<p><span>L&agrave; bửu bối trong chu kỳ kinh nguyệt của con g&aacute;i, cốc nguyệt san l&agrave; một giải ph&aacute;p mới tinh v&agrave; ho&agrave;n hảo: bạn sẽ kh&ocirc;ng cảm thấy g&igrave; trong tận gần 12 tiếng. Chưa hết! Cốc nguyệt san gi&uacute;p bạn g&aacute;i tr&aacute;nh thải r&aacute;c ra m&ocirc;i trường, v&igrave; khả năng d&ugrave;ng đi d&ugrave;ng lại nhiều lần. </span></p>\r\n\r\n<p>Mỗi phụ nữ sẽ thải ra đến 28.189 kg chất thải từ băng vệ sinh. Trong khi đ&oacute;, bạn sẽ chỉ cần d&ugrave;ng 2-3 chiếc cốc nguyệt san trong suốt đời, qu&aacute; kinh tế v&agrave; th&acirc;n thiện với m&ocirc;i trường phải kh&ocirc;ng?</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-28-42-zww-ui-illustrations-coc-nguyet-san.jpg', '2021-05-19-15-14-55-ava_hac@2x.png', '1', '5,10,37,53', '{\"title_0\":\"C\\u00f4ng d\\u1ee5ng \",\"description_0\":\"Thay th\\u1ebf <br>\\r\\nb\\u0103ng v\\u1ec7 sinh\\/ tampon\",\"title_1\":\"Ch\\u1ea5t li\\u1ec7u \",\"description_1\":\"Silicone y t\\u1ebf<br>\\r\\nNh\\u1ef1a y t\\u1ebf\",\"title_2\":\"M\\u00f4i tr\\u01b0\\u1eddng \",\"description_2\":\"Gi\\u1ea3m <br>\\r\\nr\\u00e1c th\\u1ea3i \",\"title_3\":\"Tu\\u1ed5i th\\u1ecd \",\"description_3\":\"5 - 10 <br>\\r\\nn\\u0103m\"}', '{\"title_0\":\"C\\u00f4ng d\\u1ee5ng \",\"description_0\":\"C\\u1ed1c nguy\\u1ec7t san l\\u00e0 s\\u1ea3n ph\\u1ea9m ra \\u0111\\u1eddi nh\\u1eb1m thay th\\u1ebf cho c\\u00e1c lo\\u1ea1i b\\u0103ng v\\u1ec7 sinh v\\u00e0 tampon th\\u00f4ng d\\u1ee5ng m\\u00e0 ph\\u00e1i n\\u1eef v\\u1eabn hay d\\u00f9ng trong ng\\u00e0y \\\"\\u0111\\u00e8n \\u0111\\u1ecf\\\". N\\u00f3 \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf d\\u1ea1ng h\\u00ecnh ph\\u1ec5u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi nhi\\u1ec1u m\\u00e0u s\\u1eafc, nhi\\u1ec1u k\\u00edch c\\u1ee1 v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00f3 th\\u1ec3 t\\u00e1i s\\u1eed d\\u1ee5ng \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u l\\u1ea7n.\",\"title_1\":\"Ch\\u1ea5t li\\u1ec7u \",\"description_1\":\"C\\u1ed1c nguy\\u1ec7t san l\\u00e0 m\\u1ed9t chi\\u1ebfc c\\u1ed1c nh\\u1ecf, \\u0111\\u01b0\\u1ee3c l\\u00e0m b\\u1eb1ng silicone y t\\u1ebf (nh\\u01b0 van tim) ho\\u1eb7c b\\u1eb1ng nh\\u1ef1a y t\\u1ebf\",\"title_2\":\"M\\u00f4i tr\\u01b0\\u1eddng \",\"description_2\":\"Trung b\\u00ecnh 1 mi\\u1ebfng b\\u0103ng v\\u1ec7 sinh m\\u1ea5t 500 - 800 n\\u0103m \\u0111\\u1ec3 ph\\u00e2n hu\\u1ef7 v\\u00e0 m\\u1ed9t ph\\u1ee5 n\\u1eef s\\u1ebd s\\u1eed d\\u1ee5ng h\\u01a1n 11,000 mi\\u1ebfng b\\u0103ng v\\u1ec7 sinh ho\\u1eb7c tampon trong 1 \\u0111\\u1eddi ng\\u01b0\\u1eddi. Nh\\u01b0ng \\u0111\\u1ed1i v\\u1edbi c\\u1ed1c nguy\\u1ec7t san, ta c\\u00f3 th\\u1ec3 t\\u00e1i s\\u1eed d\\u1ee5ng nhi\\u1ec1u l\\u1ea7n, tu\\u1ed5i th\\u1ecd c\\u1ee7a ch\\u00fang l\\u00ean \\u0111\\u1ebfn 10 n\\u0103m, g\\u00f3p ph\\u1ea7n l\\u00e0m gi\\u1ea3m l\\u01b0\\u1ee3ng r\\u00e1c th\\u1ea3i ra m\\u00f4i tr\\u01b0\\u1eddng.\",\"title_3\":\"Tu\\u1ed5i th\\u1ecd \",\"description_3\":\"M\\u1ed9t chi\\u1ebfc c\\u1ed1c c\\u00f3 th\\u1ec3 d\\u00f9ng \\u0111\\u01b0\\u1ee3c \\u0111\\u1ebfn 10 n\\u0103m, c\\u00f9ng ZWW th\\u1ef1c hi\\u1ec7n m\\u1ed9t ph\\u00e9p t\\u00ednh r\\u1ea5t \\u0111\\u01a1n gi\\u1ea3n, ch\\u00fang s\\u1ebd gi\\u00fap ta ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c 7-8 tri\\u1ec7u l\\u00e0 t\\u1ed1i thi\\u1ec3u nh\\u1ea5t \\u0111\\u1ea5y.\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(7, 'Túi đi chợ', 'tui-di-cho', '<p><span>T&uacute;i đi chợ zero-waste hẳn l&agrave; đ&atilde; quen thuộc với nhiều người. Đơn giản l&agrave; v&igrave; n&oacute; c&oacute; độ bền cao, chịu sức nặng tốt 15-20kg, nhiều k&iacute;ch thước kh&aacute;c nhau v&agrave; dễ d&agrave;ng gấp gọn mang đi. Thường bạn sẽ thấy 2 loại l&agrave; t&uacute;i vải v&agrave; t&uacute;i d&ugrave;. D&ugrave; l&agrave; loại n&agrave;o th&igrave; cũng c&oacute; si&ecirc;u nhiều loại họa tiết &quot;ưng c&aacute;i bụng&quot; cho bạn chọn lu&ocirc;n nh&eacute;!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-32-27-zww-ui-illustrations-tui-di-cho.jpg', '2021-05-19-15-15-03-ava_tho@2x.png', '1', '1,4,5,10,11,20,29,33,37,47,53,58,63,65,73,74,75,76,82,83,84,89', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(8, 'Bông tẩy trang', 'bong-tay-trang', '<p><span>Thay v&igrave; sử dụng b&ocirc;ng tẩy trang b&igrave;nh thường d&ugrave;ng một lần, sao kh&ocirc;ng thử b&ocirc;ng tẩy trang bằng vải sợi tre c&oacute; thể giặt v&agrave; sử dụng đi sử dụng lại nhiều lần? Sản phẩm b&ocirc;ng tẩy trang th&acirc;n thiện với m&ocirc;i trường n&agrave;y vẫn thật dịu nhẹ cho mặt, v&agrave; khi sử dụng lu&acirc;n phi&ecirc;n 3-4 b&ocirc;ng tẩy trang, bạn c&oacute; thể d&ugrave;ng l&ecirc;n đến 9-12 th&aacute;ng. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-33-01-zww-ui-illustrations-khan-tay-trang.jpg', '2021-05-19-15-15-14-ava_huoucaoco@2x.png', '3', '5,53,73,76', '{\"title_0\":\"Ch\\u1ea5t li\\u1ec7u \",\"description_0\":\"V\\u1ea3i s\\u1ee3i tre \",\"title_1\":\"M\\u00f4i tr\\u01b0\\u1eddng \",\"description_1\":\"Th\\u00e2n thi\\u1ec7n<br> \\r\\nm\\u00f4i tr\\u01b0\\u1eddng \",\"title_2\":\"Tu\\u1ed5i th\\u1ecd \",\"description_2\":\"9 - 12<br>\\r\\nth\\u00e1ng \",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"C\\u00f4ng d\\u1ee5ng \",\"description_0\":\"\\u0110\\u00e2y l\\u00e0 m\\u1ed9t trong nh\\u1eefng v\\u1eadt d\\u1ee5ng t\\u1ed1i c\\u1ea7n thi\\u1ebft c\\u1ee7a phe con g\\u00e1i, ch\\u00fang gi\\u00fap da \\u0111\\u01b0\\u1ee3c th\\u1edf sau m\\u1ed9t ng\\u00e0y d\\u00e0i mang tr\\u00ean m\\u00ecnh l\\u1edbp trang \\u0111i\\u1ec3m v\\u00e0 r\\u1eeda s\\u1ea1ch b\\u1ee5i b\\u1ea9n g\\u1eb7p ph\\u1ea3i khi \\u0111i ra ngo\\u00e0i.\",\"title_1\":\"Ch\\u1ea5t li\\u1ec7u \",\"description_1\":\"V\\u1ea3i s\\u1ee3i tre l\\u00e0 m\\u1ed9t lo\\u1ea1i v\\u1ea3i t\\u1ed5ng h\\u1ee3p t\\u1eeb b\\u1ed9t cellulose chi\\u1ebft xu\\u1ea5t t\\u1eeb th\\u00e2n c\\u00e2y tre v\\u00e0 m\\u1ed9t s\\u1ed1 ph\\u1ee5 gia kh\\u00e1c, c\\u00f3 nhi\\u1ec1u \\u0111\\u1eb7c t\\u00ednh n\\u1ed5i b\\u1eadt nh\\u01b0: kh\\u1eed m\\u00f9i, kh\\u00e1ng khu\\u1ea9n, ch\\u1ed1ng tia UV,... v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 kh\\u1ea3 n\\u0103ng th\\u1ea5m h\\u00fat m\\u1ed3 h\\u00f4i cao g\\u1ea5p 3-4 l\\u1ea7n so v\\u1edbi v\\u1ea3i cotton th\\u00f4ng th\\u01b0\\u1eddng\",\"title_2\":\"M\\u00f4i tr\\u01b0\\u1eddng \",\"description_2\":\"Quy tr\\u00ecnh tr\\u1ed3ng v\\u00e0 s\\u1ea3n xu\\u1ea5t v\\u1ea3i tre kh\\u00f4ng s\\u1eed d\\u1ee5ng b\\u1ea5t k\\u1ef3 h\\u00f3a ch\\u1ea5t \\u0111\\u1ed9c h\\u1ea1i n\\u00e0o \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn m\\u00f4i tr\\u01b0\\u1eddng n\\u00ean r\\u1ea5t t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng. V\\u1ea3i s\\u1ee3i tre kh\\u00f4ng g\\u00e2y d\\u1ecb \\u1ee9ng cho da nh\\u1ea1y c\\u1ea3m, ph\\u00f9 h\\u1ee3p s\\u1eed d\\u1ee5ng cho m\\u1ecdi l\\u01b0a tu\\u1ed5i t\\u1eeb tr\\u1ebb em, ng\\u01b0\\u1eddi tr\\u01b0\\u1edfng th\\u00e0nh cho \\u0111\\u1ebfn ng\\u01b0\\u1eddi cao tu\\u1ed5i.\",\"title_3\":\"Tu\\u1ed5i th\\u1ecd \",\"description_3\":\"So v\\u1edbi b\\u00f4ng t\\u1ea9y trang b\\u00ecnh th\\u01b0\\u1eddng d\\u00f9ng m\\u1ed9t l\\u1ea7n, b\\u00f4ng t\\u1ea9y trang b\\u1eb1ng v\\u1ea3i s\\u1ee3i tre c\\u00f3 th\\u1ec3 gi\\u1eb7t v\\u00e0 s\\u1eed d\\u1ee5ng \\u0111i s\\u1eed d\\u1ee5ng l\\u1ea1i nhi\\u1ec1u l\\u1ea7n. V\\u00e0 khi s\\u1eed d\\u1ee5ng lu\\u00e2n phi\\u00ean 3-4 b\\u00f4ng t\\u1ea9y trang, b\\u1ea1n c\\u00f3 th\\u1ec3 d\\u00f9ng l\\u00ean \\u0111\\u1ebfn t\\u1eadn 9-12 th\\u00e1ng.\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(9, 'Kem đánh răng', 'kem-danh-rang', '<p><span>Kem đ&aacute;nh răng th&acirc;n thiện với m&ocirc;i trường c&oacute; th&agrave;nh phần hữu cơ như than hoạt t&iacute;nh, dầu dừa, tinh dầu bạc h&agrave;, v&agrave; kh&ocirc;ng chứa trong tu&yacute;p nhựa như kem đ&aacute;nh răng chứa h&oacute;a chất th&ocirc;ng thường. Bạn vẫn c&oacute; thể ho&agrave;n to&agrave;n an t&acirc;m l&agrave; sản phẩm kem đ&aacute;nh răng organic n&agrave;y vẫn c&oacute; thể bảo vệ sức khỏe răng miệng, l&agrave;m răng trắng s&aacute;ng, nướu chắc khỏe v&agrave; khử m&ugrave;i nh&eacute;!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-33-40-zww-ui-illustrations-kem-danh-rang.jpg', '2021-05-19-15-15-24-ava_cop@2x.png', '1', '1,5,10,53,63,65,73,82', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(10, 'Ống hút', 'ong-hut', '<p><span>Kh&ocirc;ng cần phải giới thiệu g&igrave; th&ecirc;m, ống h&uacute;t d&ugrave;ng được nhiều lần bằng chất liệu inox hay gỗ chắc chắn l&agrave; một trong những item đầu ti&ecirc;n bạn muốn sưu tầm khi theo đuổi lối sống xanh. C&ugrave;ng ch&uacute;ng m&igrave;nh &quot;sa thải&quot; ngay lập tức ống h&uacute;t nhựa v&agrave; sưu tầm ngay một chiếc ống h&uacute;t c&oacute; nguy&ecirc;n liệu th&acirc;n thiện với m&ocirc;i trường n&agrave;o!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-34-09-zww-ui-illustrations-ong-hut.jpg', '2021-05-19-15-17-58-ava_luoi@2x.png', '1', '1,5,10,20,37,53,63,65,74,75,82,83,89,98', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(11, 'Vải đa năng', 'vai-da-nang', '<p><span>Nếu c&oacute; ai n&oacute;i bạn chuyển đổi sang sống zero-waste bất tiện, h&atilde;y đưa họ xem khăn vải eco-friendly. Khăn vải eco-friendly thường được l&agrave;m bằng vải linen hoặc vải 100% cotton, cực kỳ mềm mại, lại c&ograve;n rất bền. Chất liệu n&agrave;y khi sử dụng rất tho&aacute;ng m&aacute;t, ph&ugrave; hợp với những quốc gia nhiệt đới nắng n&oacute;ng như Việt Nam. V&agrave; tuyệt vời hơn, khăn vải eco-friendly c&oacute; khả năng kh&aacute;ng nấm v&agrave; kh&aacute;ng khuẩn, bảo vệ sức khỏe cả gia đ&igrave;nh.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-35-02-zww-ui-illustrations-vai-da-nang.jpg', '2021-05-19-15-15-33-ava_gau3@2x.png', '1', '5,73', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(12, 'Hũ thủy tinh', 'hu-thuy-tinh', '<p><span>Đến với zero-waste, bạn sẽ thường xuy&ecirc;n thấy thủy tinh, bởi v&igrave; n&oacute; l&agrave; một trong những vật liệu dễ t&aacute;i chế nhất. Nếu bạn l&agrave; người ch&uacute; trọng mẫu m&atilde;, hũ thủy tinh c&oacute; rất nhiều k&iacute;ch thước, h&igrave;nh d&aacute;ng v&agrave; t&ocirc;n l&ecirc;n vẻ đẹp trong nh&agrave;. B&ecirc;n cạnh đ&oacute;, hũ thủy tinh kh&ocirc;ng hấp thụ m&ugrave;i v&agrave; vi khuẩn từ đồ ăn n&ecirc;n chỉ cần rửa qua l&agrave; bạn c&oacute; thể t&aacute;i sử dụng n&oacute; ho&agrave;i ho&agrave;i. Nếu nh&agrave; bạn d&ugrave;ng m&aacute;y rửa ch&eacute;n th&igrave; sao? Toẹt zời lu&ocirc;n, v&igrave; hũ thủy tinh chịu nhiệt tốt hơn hũ nhựa nhiều lắm đ&oacute;. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-35-35-zww-ui-illustrations-hu-thu-tinh.jpg', '2021-05-19-15-15-52-ava_voi@2x.png', '1', '5,63', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(13, 'Chỉ nha khoa', 'chi-nha-khoa', '<p><span>Chỉ nha khoa thi&ecirc;n nhi&ecirc;n nh&igrave;n b&ecirc;n ngo&agrave;i th&igrave; kh&ocirc;ng kh&aacute;c g&igrave; chỉ nha khoa b&igrave;nh thường. Thực tế, n&oacute; được l&agrave;m từ tinh bột bắp v&agrave; c&oacute; khả năng ph&acirc;n hủy sinh học đấy nh&eacute;. Ngo&agrave;i ra, c&ograve;n c&oacute; một lợi &iacute;ch kh&ocirc;ng thể bỏ qua của chỉ nha khoa thi&ecirc;n nhi&ecirc;n l&agrave; n&oacute; rất th&iacute;ch hợp với những ai c&oacute; nướu nhạy cảm, hay bị chảy m&aacute;u. Ho&agrave;n to&agrave;n sạch sẽ, ho&agrave;n to&agrave;n an t&acirc;m nh&eacute;!</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-37-36-zww-ui-illustrations-chi-nha-khoa.jpg', '2021-05-19-15-16-06-ava_gau2@2x.png', '1', '5,53', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(14, 'Mỹ phẩm', 'my-pham', '<p><span>Bạn c&oacute; biết một sự thật đau l&ograve;ng l&agrave; nền c&ocirc;ng nghiệp h&oacute;a mỹ phẩm thải ra h&agrave;ng chục ng&agrave;n tấn h&oacute;a chất g&acirc;y &ocirc; nhiễm nguồn nước v&agrave; tổn hại đến nhiều lo&agrave;i động vật biển? Nhận thức về điều n&agrave;y, người ti&ecirc;u d&ugrave;ng trong thời gian gần đ&acirc;y đặt &aacute;p lực ng&agrave;nh mỹ phẩm cũng cần phải thay đổi để tạo những sản phẩm organic, c&oacute; xuất xứ thi&ecirc;n nhi&ecirc;n v&agrave; hạn chế h&oacute;a chất &ocirc; nhiễm m&ocirc;i trường. </span></p>\r\n\r\n<p><span>Xuất xứ thi&ecirc;n nhi&ecirc;n c&ograve;n tuyệt vời v&igrave; rất l&agrave;nh t&iacute;nh cho l&agrave;n da bạn nữa. C&ugrave;ng chăm s&oacute;c v&agrave; n&acirc;ng niu l&agrave;n da với những sản phẩm l&agrave;m đẹp v&agrave; skincare thật &quot;đỉnh&quot; ch&uacute;ng m&igrave;nh đ&atilde; handpick ra ở dưới nhen.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-38-29-zww-ui-illustrations-my-pham.jpg', '2021-05-19-15-16-19-ava_bachtuot@2x.png', '3', '1,5,10,12,33,37,53,63,65,72,73,75,76,82', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(15, 'Áo quần', 'ao-quan', '<p><span>Bye bye ngay lập tức trang phục &quot;fast fashion&quot; đi bạn! Những quần &aacute;o chạy theo m&ugrave;a, theo mốt một thời gian ngắn sẽ nhanh ch&oacute;ng trở th&agrave;nh r&aacute;c thải ra m&ocirc;i trường đất v&agrave; biển. Thay v&agrave;o đ&oacute;, h&atilde;y c&acirc;n nhắc kỹ để chọn những trang phục vừa vặn, thoải m&aacute;i bạn sẽ c&oacute; thể mặc l&acirc;u d&agrave;i, v&agrave; được l&agrave;m từ những chất liệu th&acirc;n thiện m&ocirc;i trường, c&oacute; thể ph&acirc;n hủy hữu cơ 100% như linen, cotton, lụa tơ tằm, lụa sen, xơ tre..., vừa thoải m&aacute;i vừa v&ocirc; c&ugrave;ng thời trang đ&oacute;. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-38-55-zww-ui-illustrations-ao-quan.jpg', '2021-05-19-15-16-34-ava_huou@2x.png', '5', '46,47,75,82,88,90,91,92', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(16, 'Dụng cụ cọ rửa', 'dung-cu-co-rua', '<p><span>C&oacute; một sự thật l&agrave; những nhiệm vụ m&agrave; dụng cụ cọ rửa bằng nhựa kh&oacute; l&agrave;m được th&igrave; dụng cụ cọ rửa thi&ecirc;n nhi&ecirc;n sẵn s&agrave;ng &quot;c&acirc;n team&quot; đấy. Trước hết l&agrave; nhờ c&aacute;n chắc chắn l&agrave;m bằng vật liệu độ bền cao, v&iacute; dụ như gỗ sồi. Sau l&agrave; l&ocirc;ng cọ l&agrave;m bằng xơ dừa cứng c&aacute;p độ ngậm nước cao, hỗ trợ cọ rửa cực &quot;xịn x&ograve;&quot;. Nhờ đ&oacute; m&agrave; dễ d&agrave;ng xử l&yacute; c&aacute;c vết d&iacute;nh, bụi bẩn kh&oacute; nhằn trong gian bếp, nh&agrave; vệ sinh... </span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-39-21-zww-ui-illustrations-dung-cu-co-rua.jpg', '2021-05-19-15-16-47-ava_chimcanhcut@2x.png', '1', '5,10,53,63,65,73,75,82,83', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(17, 'Dao cạo', 'dao-cao', '<p><span>C&oacute; h&agrave;ng tỷ chiếc dao cạo bị bỏ đi mỗi năm, trong khi thứ duy nhất ch&uacute;ng ta cần thay chỉ l&agrave; lưỡi dao cạo. H&atilde;y thử chuyển sang d&ugrave;ng dao cạo c&aacute;n gỗ bạn nh&eacute;. Vừa nhẹ tay cầm cho đỡ mỏi, vừa đ&aacute;p ứng đ&uacute;ng v&agrave; đủ nhu cầu của ch&uacute;ng ta. Kh&ocirc;ng, ch&uacute;ng ta kh&ocirc;ng cần c&aacute;n c&oacute; chế độ rung, trang bị đ&egrave;n pin hay gắn vừa 5 lưỡi dao. &Ocirc;ng b&agrave; m&igrave;nh chỉ c&oacute; một c&aacute;i lưỡi lam v&agrave; 1 c&aacute;i k&iacute;nh mờ mờ. C&ugrave;ng g&oacute;p cạo sạch r&aacute;c nhựa ra khỏi m&ocirc;i trường nh&eacute;.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-39-45-zww-ui-illustrations-dao-cao.jpg', '2021-05-19-15-16-53-ava_heo@2x.png', '1', '5,10,53', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(18, 'Lăn khử mùi', 'lan-khu-mui', '<p><span>Chất khử m&ugrave;i v&agrave; hạn chế mồ h&ocirc;i thường được l&agrave;m từ nguồn gốc h&oacute;a chất. Một số lăn khử m&ugrave;i chứa th&agrave;nh phần nh&ocirc;m, được khai th&aacute;c từ quặng b&ocirc; x&iacute;t, rất ảnh hưởng đến m&ocirc;i trường. Những h&oacute;a chất từ lăn khử m&ugrave;i cũng được lo ngại c&oacute; thể ảnh hưởng đến sức khỏe của ch&uacute;ng ta. May mắn l&agrave; thi&ecirc;n nhi&ecirc;n đ&atilde; c&oacute; những lăn khử m&ugrave;i tuyệt vời d&agrave;nh cho ch&uacute;ng m&igrave;nh đ&oacute;, như l&agrave; c&aacute;c sản phẩm đ&aacute; khử m&ugrave;i độc đ&aacute;o m&agrave; ch&uacute;ng m&igrave;nh lựa chọn ở dưới đ&acirc;y n&egrave;.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-40-08-zww-ui-illustrations-lan-khu-mui.jpg', '2021-05-19-15-17-01-ava_raica@2x.png', '1', '5', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(19, 'Bộ muỗng đũa', 'bo-muong-dua', '<p><span>Bộ muỗng đũa gỗ l&agrave; một trong những on-the-go m&agrave; mọi fan của Zerowaste phải sưu tầm ngay. Kh&ocirc;ng chỉ tiện dụng c&ugrave;ng hộp cơm cho những bữa trưa văn ph&ograve;ng dinh dưỡng, ngon miệng, bộ muỗng đũa c&ograve;n rất l&agrave; hữu &iacute;ch những l&uacute;c bạn đi du lịch, để tr&aacute;nh phải buộc sử dụng muỗng đũa nhựa.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-40-39-zww-ui-illustrations-muong-dua.jpg', '2021-05-19-15-17-08-ava_ran@2x.png', '1', '1,4,5,10,37,53,63,65,73,75,83,89,98', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0),
(20, 'Xà bông', 'xa-bong', '<p><span>X&agrave; ph&ograve;ng thảo mộc hand-made giống như một giải ph&aacute;p win-win tuyệt đối cho ai hướng đến lối sống xanh: x&agrave; ph&ograve;ng hand-made l&agrave;m từ th&agrave;nh phần th&acirc;n thiện với thi&ecirc;n nhi&ecirc;n, v&agrave; ch&iacute;nh đặc điểm n&agrave;y khiến x&agrave; ph&ograve;ng thảo mộc trở th&agrave;nh si&ecirc;u mỹ phẩm nu&ocirc;i dưỡng v&agrave; t&aacute;i tạo l&agrave;n da bạn. </span></p>\r\n\r\n<p><span>Tr&aacute;i với x&agrave; ph&ograve;ng c&ocirc;ng nghiệp c&oacute; th&agrave;nh phần từ dầu hỏa v&agrave; chỉ l&agrave;m sạch bề mặt, x&agrave; ph&ograve;ng handmade giữ&nbsp;nguy&ecirc;n những g&igrave; tốt l&agrave;nh của thi&ecirc;n nhi&ecirc;n l&agrave;m m&oacute;n qu&agrave; cho l&agrave;n da bạn: tinh chất từ hoa hồng, dầu dừa, hay quế, tr&agrave; xanh, mật ong... Kho&aacute;ng chất, vitamin v&agrave; hương thơm ngọt ng&agrave;o kh&oacute; cưỡng của những chiếc b&aacute;nh x&agrave; ph&ograve;ng handmade xinh đẹp khiến bạn kh&ocirc;ng thể khiến bạn ngừng m&ecirc; mẩn khi lỡ bước ch&acirc;n v&agrave;o thế giới thơm tho n&agrave;y. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '2020-10-06-16-41-15-zww-ui-illustrations-xa-bong.jpg', '2021-05-19-15-17-14-ava_gau1@2x.png', '1', '1,5,7,10,12,20,33,63,65,72,73,75,76,82,85,94', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\"}', '{\"title_0\":\"\",\"description_0\":\"\",\"title_1\":\"\",\"description_1\":\"\",\"title_2\":\"\",\"description_2\":\"\",\"title_3\":\"\",\"description_3\":\"\",\"title_4\":\"\",\"description_4\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(256) NOT NULL,
  `short_content` text NOT NULL,
  `description` text NOT NULL,
  `cover_photo` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `rating` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(128) NOT NULL,
  `price` varchar(32) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `category_id`, `user_id`, `content`, `rating`, `date`, `title`, `price`, `store_id`) VALUES
(2, 1, 14, 'Test', 2, '2021-04-29 15:04:41', 'Đi đâu cũng được', 'Từ 50.000 - 100.000 VND', 1),
(4, 1, 15, 'Tốt', 5, '2021-04-29 16:04:12', 'Rẻ mà bền nữa', 'Dưới 50.000 VND', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_images`
--

CREATE TABLE `comment_images` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment_images`
--

INSERT INTO `comment_images` (`id`, `comment_id`, `name`) VALUES
(1, 2, '2021-04-29-15-41-15-172833120_10158293194933869_3181546200303061985_n.jpg'),
(3, 4, '2021-04-29-16-12-58-Screenshot_1.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_likes`
--

CREATE TABLE `comment_likes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment_likes`
--

INSERT INTO `comment_likes` (`id`, `comment_id`, `user_id`, `likes`) VALUES
(1, 2, 1, 1),
(2, 2, 15, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_list`
--

CREATE TABLE `comment_list` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `comment_list`
--

INSERT INTO `comment_list` (`id`, `name`, `status`) VALUES
(1, 'Chất lượng tốt', 0),
(2, 'Rẻ mà bền nữa', 0),
(3, 'Anh chủ dễ thương nha', 0),
(4, 'Thử là ghiền nha', 0),
(6, 'Tiền nào của í', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `who` varchar(128) NOT NULL,
  `invite` varchar(128) NOT NULL,
  `category` varchar(128) NOT NULL,
  `shop_name` varchar(128) NOT NULL,
  `facebook` varchar(128) NOT NULL,
  `instagram` varchar(128) NOT NULL,
  `website` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `shop_intro` text NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `who`, `invite`, `category`, `shop_name`, `facebook`, `instagram`, `website`, `address`, `shop_intro`, `added_date`) VALUES
(1, 'ĐÀO HỒNG CHÂU', 'Chaudaohong@gmail.com', 'Chủ doanh nghiệp', 'shop', '4', 'Humbl. Foods', '@humblfoods', '@humblfoods', 'http://humblefoodvn.com/', '47 đường số 66, phường Thảo Điền, Quận 2, TPHCM', 'Cửa hàng không dùng bao ni-lông mà chỉ dùng túi giấy cho khách. Không dùng ống hút nhựa, muỗng nhựa mà chỉ dùng ống hút giấy và muỗng gỗ.\n\nSữa và bơ hạt được đựng hoàn toàn trong lọ thủy tinh.\n\nKhách hàng được khuyến khích mang chai lọ theo để refill, reuse và được khuyến mãi. ', '2021-01-25 08:01:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `added_date`, `updated_date`, `updated_by`, `store_id`, `type`, `product_id`) VALUES
(1, 'Hộp cơm', NULL, '2020-10-07 15:19:28', '2020-10-07 15:19:28', 1, 0, '2', 1),
(2, 'A Little bit', NULL, '2020-10-19 16:08:11', '2020-10-19 16:08:11', 1, 1, '0', 0),
(3, 'Papa’s Dreamer - Xà bông của Ba', NULL, '2020-10-20 18:49:12', '2020-10-20 18:49:12', 1, 7, '0', 0),
(4, 'Cafe Luia', NULL, '2020-10-27 10:00:47', '2020-10-27 10:00:47', 1, 6, '0', 0),
(5, 'Côte Cafe', NULL, '2020-10-27 10:09:39', '2020-10-27 10:09:39', 1, 3, '0', 0),
(6, 'Dreamy Days Cafe', NULL, '2020-10-27 10:10:15', '2020-10-27 10:10:15', 1, 4, '0', 0),
(7, 'An Xanh 1958 - LearningHub', NULL, '2020-10-27 10:52:52', '2020-10-27 10:52:52', 1, 8, '0', 0),
(8, 'à cà phê', NULL, '2020-10-27 12:23:28', '2020-10-27 12:23:28', 1, 9, '0', 0),
(9, 'September Saigon', NULL, '2020-11-03 17:45:50', '2020-11-03 17:45:50', 1, 2, '0', 0),
(10, 'Laiday Refill Station', NULL, '2020-11-03 17:47:39', '2020-11-03 17:47:39', 1, 5, '0', 0),
(11, 'Tree House', NULL, '2020-11-03 17:48:30', '2020-11-03 17:48:30', 1, 10, '0', 0),
(12, 'Nhà Của Cá Cơm', NULL, '2020-11-03 17:48:54', '2020-11-03 17:48:54', 1, 11, '0', 0),
(13, 'Lekima coffee', NULL, '2020-11-03 17:49:19', '2020-11-03 17:49:19', 1, 12, '0', 0),
(14, 'Tiệm Cafe Saigon Retro', NULL, '2020-11-03 17:49:40', '2020-11-03 17:49:40', 1, 13, '0', 0),
(15, 'Tiệm Cô Hàng Xóm', NULL, '2020-11-03 17:50:03', '2020-11-03 17:50:03', 1, 14, '0', 0),
(16, 'Passengers', NULL, '2020-11-03 17:50:35', '2020-11-03 17:50:35', 1, 15, '0', 0),
(17, 'Là Việt Coffee ', NULL, '2020-11-03 17:51:10', '2020-11-03 17:51:10', 1, 16, '0', 0),
(18, 'Kiba Saigon', NULL, '2020-11-03 17:51:49', '2020-11-03 17:51:49', 1, 18, '0', 0),
(19, 'Kiba Saigon', NULL, '2020-11-03 17:51:52', '2020-11-03 17:51:52', 1, 18, '0', 0),
(20, 'Tiệm Rau của ba', NULL, '2020-11-03 17:52:27', '2020-11-03 17:52:27', 1, 19, '0', 0),
(21, 'Tạp hóa Lá Xanh', NULL, '2020-11-03 17:52:47', '2020-11-03 17:52:47', 1, 20, '0', 0),
(22, 'Phin Xanh', NULL, '2020-11-03 17:53:07', '2020-11-03 17:53:07', 1, 21, '0', 0),
(23, 'The Seat Cafe', NULL, '2020-11-03 17:53:28', '2020-11-03 17:53:28', 1, 22, '0', 0),
(24, 'Koo Kaffe', NULL, '2020-11-03 17:54:00', '2020-11-03 17:54:00', 1, 23, '0', 0),
(25, 'Thinker&Dreamer Coffee', NULL, '2020-11-03 17:54:17', '2020-11-03 17:54:17', 1, 24, '0', 0),
(26, 'The Hidden Elephant', NULL, '2020-11-03 17:54:41', '2020-11-03 17:54:41', 1, 25, '0', 0),
(27, 'Phin & Bean Roastery', NULL, '2020-11-03 17:55:28', '2020-11-03 17:55:28', 1, 27, '0', 0),
(28, 'Nấp Saigon', NULL, '2020-11-03 17:55:45', '2020-11-03 17:55:45', 1, 28, '0', 0),
(29, 'Haven Book cafe', NULL, '2020-11-03 17:56:20', '2020-11-03 17:56:20', 1, 29, '0', 0),
(30, 'ICS Hub', NULL, '2020-11-03 17:56:48', '2020-11-03 17:56:48', 1, 30, '0', 0),
(31, 'The Vintage Emporium', NULL, '2020-11-03 17:57:15', '2020-11-03 17:57:15', 1, 31, '0', 0),
(32, 'The Vagabond Pâtisserie', NULL, '2020-11-03 17:57:37', '2020-11-03 17:57:37', 1, 32, '0', 0),
(33, 'XanhShop', NULL, '2020-11-03 17:58:05', '2020-11-03 17:58:05', 1, 33, '0', 0),
(34, 'Cơm Phú Quý', NULL, '2020-11-03 17:58:22', '2020-11-03 17:58:22', 1, 34, '0', 0),
(35, 'Cơm tấm 135', NULL, '2020-11-03 17:58:40', '2020-11-03 17:58:40', 1, 35, '0', 0),
(36, 'Bơ By Butterman', NULL, '2020-11-03 17:59:01', '2020-11-03 17:59:01', 1, 36, '0', 0),
(37, 'Cỏ', NULL, '2020-11-03 17:59:22', '2020-11-03 17:59:22', 1, 37, '0', 0),
(38, 'Cheese Coffee', NULL, '2020-11-03 18:01:00', '2020-11-03 18:01:00', 1, 38, '0', 0),
(39, 'Caztus Blended', NULL, '2020-11-03 18:01:30', '2020-11-03 18:01:30', 1, 39, '0', 0),
(40, 'Grain Milk', NULL, '2020-11-03 18:02:03', '2020-11-03 18:02:03', 1, 40, '0', 0),
(41, 'Măng\'s Mania', NULL, '2020-11-03 18:09:57', '2020-11-03 18:09:57', 1, 41, '0', 0),
(42, 'PJ\'s Coffee Việt Nam', NULL, '2020-11-03 18:10:50', '2020-11-03 18:10:50', 1, 42, '0', 0),
(43, 'The Organik House', NULL, '2020-11-03 18:11:45', '2020-11-03 18:11:45', 1, 43, '0', 0),
(44, 'Union Jack\'s Fish & Chips', NULL, '2020-11-03 18:12:41', '2020-11-03 18:12:41', 1, 44, '0', 0),
(45, 'CHOI', NULL, '2020-11-03 18:13:08', '2020-11-03 18:13:08', 1, 45, '0', 0),
(46, 'Moriko', NULL, '2020-11-03 18:15:39', '2020-11-03 18:15:39', 1, 47, '0', 0),
(47, 'Soul Specialty Coffee', NULL, '2020-11-03 18:16:16', '2020-11-03 18:16:16', 1, 48, '0', 0),
(48, 'Cà Phê Mưa Rào', NULL, '2020-11-03 18:16:35', '2020-11-03 18:16:35', 1, 49, '0', 0),
(49, 'Hao Hao Sài Gòn', NULL, '2020-11-03 18:16:56', '2020-11-03 18:16:56', 1, 50, '0', 0),
(50, 'Xanh Mushrooms', NULL, '2020-11-03 18:17:18', '2020-11-03 18:17:18', 1, 51, '0', 0),
(51, 'Pacey Cupcakes', NULL, '2020-11-03 18:17:41', '2020-11-03 18:17:41', 1, 52, '0', 0),
(52, 'Limart', NULL, '2020-11-03 18:31:20', '2020-11-03 18:31:20', 1, 53, '0', 0),
(53, 'Bàn chải gỗ', NULL, '2020-11-04 17:35:03', '2020-11-04 17:35:03', 1, 0, '2', 2),
(54, 'Dụng cụ cọ rửa', NULL, '2020-11-04 17:36:31', '2020-11-04 17:36:31', 1, 0, '2', 16),
(55, 'Bình nước', NULL, '2020-11-04 17:37:15', '2020-11-04 17:37:15', 1, 0, '2', 3),
(56, 'Tăm bông', NULL, '2020-11-04 17:43:04', '2020-11-04 17:43:04', 1, 0, '2', 5),
(57, 'Bông tẩy trang', NULL, '2020-11-04 17:52:47', '2020-11-04 17:52:47', 1, 0, '2', 8),
(58, 'Kem đánh răng', NULL, '2020-11-04 17:57:43', '2020-11-04 17:57:43', 1, 0, '2', 9),
(59, 'Cốc nguyệt san', NULL, '2020-11-04 18:00:56', '2020-11-04 18:00:56', 1, 0, '2', 6),
(60, 'Màng bọc thực phẩm', NULL, '2020-11-04 18:05:36', '2020-11-04 18:05:36', 1, 0, '2', 4),
(61, 'Túi đi chợ', NULL, '2020-11-04 18:13:44', '2020-11-04 18:13:44', 1, 0, '2', 7),
(62, 'Chidori Coffee in Bed', NULL, '2020-11-11 14:20:49', '2020-11-11 14:20:49', 1, 54, '0', 0),
(63, 'Bộ muỗng đũa', NULL, '2020-11-13 10:19:02', '2020-11-13 10:19:02', 1, 0, '2', 19),
(64, 'Chỉ nha khoa', NULL, '2020-11-13 10:33:06', '2020-11-13 10:33:06', 1, 0, '2', 13),
(65, 'Mỹ phẩm', NULL, '2020-11-13 10:46:39', '2020-11-13 10:46:39', 1, 0, '2', 14),
(66, 'Lăn khử mùi', NULL, '2020-11-13 11:25:14', '2020-11-13 11:25:14', 1, 0, '2', 18),
(67, 'Dao cạo', NULL, '2020-11-13 11:32:43', '2020-11-13 11:32:43', 1, 0, '2', 17),
(68, 'Hũ thủy tinh', NULL, '2020-11-13 11:48:15', '2020-11-13 11:48:15', 1, 0, '2', 12),
(69, 'Ống hút', NULL, '2020-11-13 11:53:13', '2020-11-13 11:53:13', 1, 0, '2', 10),
(70, 'Vải đa năng', NULL, '2020-11-13 12:01:41', '2020-11-13 12:01:41', 1, 0, '2', 11),
(71, 'Xà bông', NULL, '2020-11-13 12:18:27', '2020-11-13 12:18:27', 1, 0, '2', 20),
(72, 'Áo quần', NULL, '2020-11-13 13:21:14', '2020-11-13 13:21:14', 1, 0, '2', 15),
(73, 'A\'dor Café', NULL, '2020-11-27 11:24:44', '2020-11-27 11:24:44', 1, 55, '0', 0),
(74, 'Oromia Coffee & Lounge', NULL, '2020-11-27 15:22:44', '2020-11-27 15:22:44', 1, 56, '0', 0),
(75, 'Coffee Hut', NULL, '2020-11-27 15:40:31', '2020-11-27 15:40:31', 1, 57, '0', 0),
(76, 'Danshari Coffe', NULL, '2020-11-27 15:54:22', '2020-11-27 15:54:22', 1, 58, '0', 0),
(77, 'Em ở đâu', NULL, '2020-11-27 16:42:39', '2020-11-27 16:42:39', 1, 59, '0', 0),
(78, '1985 Tea House', NULL, '2020-11-27 16:54:59', '2020-11-27 16:54:59', 1, 60, '0', 0),
(79, 'Partea', NULL, '2020-11-30 12:16:12', '2020-11-30 12:16:12', 1, 61, '0', 0),
(80, 'La Mia Cafe', NULL, '2020-11-30 12:31:29', '2020-11-30 12:31:29', 1, 62, '0', 0),
(81, 'Live it Simple', NULL, '2020-11-30 15:10:31', '2020-11-30 15:10:31', 1, 63, '0', 0),
(82, 'The Old Compass Cafe and Bar', NULL, '2020-11-30 15:53:56', '2020-11-30 15:53:56', 1, 64, '0', 0),
(83, 'One4One', NULL, '2020-11-30 16:02:56', '2020-11-30 16:02:56', 1, 65, '0', 0),
(84, 'Fingerprint Chay', NULL, '2020-11-30 16:31:13', '2020-11-30 16:31:13', 1, 66, '0', 0),
(85, 'Noir', NULL, '2020-11-30 16:46:41', '2020-11-30 16:46:41', 1, 67, '0', 0),
(86, 'The Running Bean', NULL, '2020-11-30 18:25:08', '2020-11-30 18:25:08', 1, 68, '0', 0),
(87, 'Mộc Little Farm', NULL, '2020-12-01 10:39:18', '2020-12-01 10:39:18', 1, 70, '0', 0),
(88, 'Haan', NULL, '2020-12-01 10:53:32', '2020-12-01 10:53:32', 1, 71, '0', 0),
(89, 'Lê Mai Soap', NULL, '2020-12-01 18:50:09', '2020-12-01 18:50:09', 1, 72, '0', 0),
(90, 'Green around the corner', NULL, '2020-12-01 19:30:57', '2020-12-01 19:30:57', 1, 73, '0', 0),
(91, 'Đậu Đỏ Vegan', NULL, '2020-12-08 20:50:48', '2020-12-08 20:50:48', 1, 74, '0', 0),
(92, 'Nắng Thảo Mộc', NULL, '2020-12-08 21:16:50', '2020-12-08 21:16:50', 1, 75, '0', 0),
(93, 'A Little Leaf', NULL, '2020-12-09 11:42:49', '2020-12-09 11:42:49', 1, 76, '0', 0),
(94, 'Cafe Mưa Rào', NULL, '2020-12-09 12:06:20', '2020-12-09 12:06:20', 1, 77, '0', 0),
(95, 'The Comma', NULL, '2020-12-10 11:10:19', '2020-12-10 11:10:19', 1, 78, '0', 0),
(96, 'Cú Trên Cây', NULL, '2020-12-10 11:34:18', '2020-12-10 11:34:18', 1, 79, '0', 0),
(97, 'Ngách 160', NULL, '2020-12-10 11:53:38', '2020-12-10 11:53:38', 1, 80, '0', 0),
(98, 'Vườn Nắng Outdoor', NULL, '2020-12-11 15:24:42', '2020-12-11 15:24:42', 1, 81, '0', 0),
(99, 'Trạm Xanh', NULL, '2020-12-11 18:14:03', '2020-12-11 18:14:03', 1, 82, '0', 0),
(100, 'Légumes', NULL, '2020-12-11 18:47:33', '2020-12-11 18:47:33', 1, 83, '0', 0),
(101, 'BỊ', NULL, '2020-12-11 19:01:12', '2020-12-11 19:01:12', 1, 84, '0', 0),
(102, 'Nattime', NULL, '2020-12-14 16:55:45', '2020-12-14 16:55:45', 1, 85, '0', 0),
(103, 'Okkio', NULL, '2020-12-17 18:57:06', '2020-12-17 18:57:06', 1, 69, '0', 0),
(104, 'Le Petit Bake&Cake', NULL, '2020-12-24 14:17:46', '2020-12-24 14:17:46', 1, 86, '0', 0),
(105, 'Be An', NULL, '2020-12-24 14:22:23', '2020-12-24 14:22:23', 1, 87, '0', 0),
(106, 'VN Tái chế', NULL, '2020-12-24 15:41:01', '2020-12-24 15:41:01', 1, 88, '0', 0),
(107, 'The Craft House', NULL, '2020-12-24 16:30:40', '2020-12-24 16:30:40', 1, 89, '0', 0),
(108, 'Give away BT', NULL, '2020-12-28 10:34:29', '2020-12-28 10:34:29', 1, 90, '0', 0),
(109, 'You&Me', NULL, '2020-12-28 10:49:27', '2020-12-28 10:49:27', 1, 91, '0', 0),
(110, 'LABB', NULL, '2020-12-28 11:00:11', '2020-12-28 11:00:11', 1, 92, '0', 0),
(111, 'Humble.Foods', NULL, '2021-02-17 17:52:06', '2021-02-17 17:52:06', 1, 93, '0', 0),
(112, 'The QUEEN Soap', NULL, '2021-03-03 10:46:37', '2021-03-03 10:46:37', 1, 94, '0', 0),
(113, 'Hummingbird Cafe', NULL, '2021-03-22 11:43:30', '2021-03-22 11:43:30', 1, 95, '0', 0),
(114, '103', NULL, '2021-03-22 11:51:50', '2021-03-22 11:51:50', 1, 96, '0', 0),
(115, 'Unihub', NULL, '2021-03-22 12:02:43', '2021-03-22 12:02:43', 1, 97, '0', 0),
(116, 'Ron Eco House', NULL, '2021-03-22 16:33:06', '2021-03-22 16:33:06', 1, 98, '0', 0),
(117, 'Goosewalk', NULL, '2021-03-26 19:55:15', '2021-03-26 19:55:15', 1, 46, '0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `hotel_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `cover_image` tinyint(4) DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `thumb_nails` tinyint(4) DEFAULT NULL,
  `active_status` tinyint(4) DEFAULT '0',
  `display_order` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `name`, `url`, `cover_image`, `file_ext`, `old_name`, `gallery_id`, `thumb_nails`, `active_status`, `display_order`, `description`, `title`) VALUES
(19, '2020-10-20-18-49-12-116645384_2729749500614368_5616008880287179083_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '116645384_2729749500614368_5616008880287179083_o.jpg', 3, 1, 0, 4, '', ''),
(20, '2020-10-20-18-49-12-118700430_2759098817679436_2849001821878681256_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118700430_2759098817679436_2849001821878681256_o.jpg', 3, 1, 0, 5, '', ''),
(29, '2020-10-27-10-09-39-59219936_395023141089155_8500772144676864000_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '59219936_395023141089155_8500772144676864000_o.jpg', 5, 1, 0, 1, '', ''),
(30, '2020-10-27-10-09-39-94460422_616503332274467_15813107511197696_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94460422_616503332274467_15813107511197696_o.jpg', 5, 0, 0, 2, '', ''),
(31, '2020-10-27-10-09-39-119042517_703906520200814_1681171032249055159_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119042517_703906520200814_1681171032249055159_o.jpg', 5, 0, 0, 3, '', ''),
(32, '2020-10-27-10-09-39-119444606_709886146269518_4669084112333756847_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119444606_709886146269518_4669084112333756847_o.jpg', 5, 0, 0, 4, '', ''),
(33, '2020-10-27-10-09-39-119731555_709885832936216_5887606677597588357_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119731555_709885832936216_5887606677597588357_o.jpg', 5, 0, 0, 5, '', ''),
(34, '2020-10-27-10-09-39-120632266_723444368247029_5409061642564972675_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120632266_723444368247029_5409061642564972675_o.jpg', 5, 0, 0, 6, '', ''),
(35, '2020-10-27-10-09-39-120972057_723444528247013_5447843624317233167_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120972057_723444528247013_5447843624317233167_o.jpg', 5, 0, 0, 7, '', ''),
(36, '2020-10-27-10-10-15-99118611_615527909053200_8468304223438635008_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '99118611_615527909053200_8468304223438635008_o.jpg', 6, 1, 0, 1, '', ''),
(37, '2020-10-27-10-10-15-99142046_615528352386489_4112668285294608384_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '99142046_615528352386489_4112668285294608384_o.jpg', 6, 0, 0, 2, '', ''),
(38, '2020-10-27-10-10-15-100045026_615527809053210_584839430339035136_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '100045026_615527809053210_584839430339035136_o.jpg', 6, 0, 0, 3, '', ''),
(39, '2020-10-27-10-10-16-100073601_615527662386558_7514756951843012608_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '100073601_615527662386558_7514756951843012608_o.jpg', 6, 0, 0, 4, '', ''),
(40, '2020-10-27-10-10-16-100480516_615527882386536_8687162360839798784_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '100480516_615527882386536_8687162360839798784_o.jpg', 6, 0, 0, 5, '', ''),
(41, '2020-10-27-10-10-16-100777828_615528095719848_4361464543772147712_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '100777828_615528095719848_4361464543772147712_o.jpg', 6, 0, 0, 6, '', ''),
(42, '2020-10-27-10-10-16-100830692_615528152386509_1528737125896290304_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '100830692_615528152386509_1528737125896290304_o.jpg', 6, 0, 0, 7, '', ''),
(43, '2020-10-27-10-10-16-100875845_615527995719858_6536128724801159168_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '100875845_615527995719858_6536128724801159168_o.jpg', 6, 0, 0, 8, '', ''),
(44, '2020-10-27-10-10-16-101094279_615528062386518_2496068403538690048_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '101094279_615528062386518_2496068403538690048_o.jpg', 6, 0, 0, 9, '', ''),
(52, '2020-10-27-11-10-52-108144259_703867050180335_3556047129191430200_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '108144259_703867050180335_3556047129191430200_o.jpg', 2, NULL, 0, 1, '', ''),
(53, '2020-10-27-11-10-52-117104331_721592455074461_2010348923783208143_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '117104331_721592455074461_2010348923783208143_o.jpg', 2, NULL, 0, 2, '', ''),
(54, '2020-10-27-11-10-52-117304900_721592531741120_323154058714589691_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '117304900_721592531741120_323154058714589691_o.jpg', 2, NULL, 0, 3, '', ''),
(56, '2020-10-27-11-10-52-117445316_721592421741131_5458224493949380396_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '117445316_721592421741131_5458224493949380396_o.jpg', 2, NULL, 0, 5, '', ''),
(57, '2020-10-27-11-10-52-119784833_753068741926832_1799593818577588740_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '119784833_753068741926832_1799593818577588740_o.jpg', 2, NULL, 0, 6, '', ''),
(58, '2020-10-27-11-10-52-120166886_758259404741099_5285817367943752568_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '120166886_758259404741099_5285817367943752568_o.jpg', 2, NULL, 0, 7, '', ''),
(60, '2020-10-27-12-10-02-105973929_2701582190097766_3800493749457983409_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '105973929_2701582190097766_3800493749457983409_o.jpg', 3, 1, 0, 3, '', ''),
(63, '2020-10-27-12-23-28-67572397_758030144616649_6412996221492789248_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '67572397_758030144616649_6412996221492789248_n.jpg', 8, 1, 0, 1, '', ''),
(64, '2020-10-27-12-23-28-71701889_803467566739573_2287787404787974144_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '71701889_803467566739573_2287787404787974144_o.jpg', 8, 0, 0, 2, '', ''),
(65, '2020-10-27-12-23-28-90075391_940360746383587_7395817015220371456_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '90075391_940360746383587_7395817015220371456_o.jpg', 8, 0, 0, 3, '', ''),
(66, '2020-10-27-12-23-28-92208262_951573305262331_4049820338089885696_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '92208262_951573305262331_4049820338089885696_n.jpg', 8, 0, 0, 4, '', ''),
(67, '2020-10-27-12-23-28-94645005_969504016802593_1308075076461002752_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94645005_969504016802593_1308075076461002752_o.jpg', 8, 0, 0, 5, '', ''),
(68, '2020-10-27-12-23-28-108006447_1029910620761932_4071586507755086002_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '108006447_1029910620761932_4071586507755086002_n.jpg', 8, 0, 0, 6, '', ''),
(69, '2020-10-27-12-23-28-109736024_1029910654095262_9069631397319021851_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109736024_1029910654095262_9069631397319021851_n.jpg', 8, 0, 0, 7, '', ''),
(70, '2020-10-27-12-23-28-118088250_1057033118049682_3075659855094587832_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118088250_1057033118049682_3075659855094587832_n.jpg', 8, 0, 0, 8, '', ''),
(71, '2020-10-27-12-23-28-118403913_1063921654027495_7702018542909343916_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118403913_1063921654027495_7702018542909343916_o.jpg', 8, 0, 0, 9, '', ''),
(72, '2020-11-03-17-11-46-105521218_958532344596748_735890861073042498_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '105521218_958532344596748_735890861073042498_n.jpg', 9, NULL, 0, 1, '', ''),
(73, '2020-11-03-17-11-46-106628960_686532465229330_1202460144533160773_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '106628960_686532465229330_1202460144533160773_n.jpg', 9, NULL, 0, 2, '', ''),
(74, '2020-11-03-17-11-46-121241278_3428201210548863_6348129932147643687_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '121241278_3428201210548863_6348129932147643687_n.jpg', 9, NULL, 0, 3, '', ''),
(75, '2020-11-03-17-11-46-121245689_945353785956873_6532677490735904555_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '121245689_945353785956873_6532677490735904555_n.jpg', 9, NULL, 0, 4, '', ''),
(76, '2020-11-03-17-11-46-121543588_3942815115774041_186060095417147945_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '121543588_3942815115774041_186060095417147945_n.jpg', 9, NULL, 0, 5, '', ''),
(77, '2020-11-03-17-11-46-121551436_650402265615291_6279170406787901191_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '121551436_650402265615291_6279170406787901191_n.jpg', 9, NULL, 0, 6, '', ''),
(78, '2020-11-03-17-11-46-121582311_677143116255440_3641563336521123141_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '121582311_677143116255440_3641563336521123141_n.jpg', 9, NULL, 0, 7, '', ''),
(79, '2020-11-03-17-11-46-121629193_640606816602275_8209924417536009135_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '121629193_640606816602275_8209924417536009135_n.jpg', 9, NULL, 0, 8, '', ''),
(80, '2020-11-03-17-47-39-118472462_740982076757557_3239648789266365479_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '118472462_740982076757557_3239648789266365479_o.jpg', 10, 1, 0, 1, '', ''),
(81, '2020-11-03-17-47-39-120008394_758060538383044_935984075299124079_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120008394_758060538383044_935984075299124079_o.jpg', 10, 0, 0, 2, '', ''),
(82, '2020-11-03-17-47-39-120075491_758006608388437_1304471501874872808_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120075491_758006608388437_1304471501874872808_o.jpg', 10, 0, 0, 3, '', ''),
(83, '2020-11-03-17-47-39-120090120_758872408301857_1570681017599278611_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120090120_758872408301857_1570681017599278611_o.jpg', 10, 0, 0, 4, '', ''),
(84, '2020-11-03-17-47-39-120091199_758030011719430_4521059935686868569_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120091199_758030011719430_4521059935686868569_o.jpg', 10, 0, 0, 5, '', ''),
(85, '2020-11-03-17-47-39-120095609_757856198403478_1641085579362862879_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120095609_757856198403478_1641085579362862879_o.jpg', 10, 0, 0, 6, '', ''),
(86, '2020-11-03-17-47-39-120221114_758030048386093_8836321116611069565_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120221114_758030048386093_8836321116611069565_o.jpg', 10, 0, 0, 7, '', ''),
(87, '2020-11-03-17-47-39-120707184_764416787747419_5740125877940216021_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120707184_764416787747419_5740125877940216021_o.jpg', 10, 0, 0, 8, '', ''),
(88, '2020-11-03-17-48-30-80192197_1243743465966549_6840647777470642267_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '80192197_1243743465966549_6840647777470642267_o.jpg', 11, 1, 0, 1, '', ''),
(89, '2020-11-03-17-48-30-103973525_1230485680625661_7091395729574409076_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '103973525_1230485680625661_7091395729574409076_o.jpg', 11, 0, 0, 2, '', ''),
(90, '2020-11-03-17-48-30-107488556_1257862121221350_2089153328529923459_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107488556_1257862121221350_2089153328529923459_o.jpg', 11, 0, 0, 3, '', ''),
(91, '2020-11-03-17-48-30-107581132_1257862087888020_7918764124335598772_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107581132_1257862087888020_7918764124335598772_o.jpg', 11, 0, 0, 4, '', ''),
(92, '2020-11-03-17-48-30-107584148_1260327177641511_3416574642466128815_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107584148_1260327177641511_3416574642466128815_o.jpg', 11, 0, 0, 5, '', ''),
(93, '2020-11-03-17-48-30-109350375_1260327197641509_8823392871482439539_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109350375_1260327197641509_8823392871482439539_n.jpg', 11, 0, 0, 6, '', ''),
(94, '2020-11-03-17-48-30-118198659_1293286407678921_3349267570659499553_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118198659_1293286407678921_3349267570659499553_o.jpg', 11, 0, 0, 7, '', ''),
(95, '2020-11-03-17-48-54-121680416_1069098500213577_1997589055631039372_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '121680416_1069098500213577_1997589055631039372_n.jpg', 12, 1, 0, 1, '', ''),
(96, '2020-11-03-17-48-54-121776442_2794603704103411_8186111312966820521_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121776442_2794603704103411_8186111312966820521_n.jpg', 12, 0, 0, 2, '', ''),
(97, '2020-11-03-17-48-54-121968490_2436485079809786_9012967767564821397_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121968490_2436485079809786_9012967767564821397_n.jpg', 12, 0, 0, 3, '', ''),
(98, '2020-11-03-17-48-54-122011105_651349405527221_2884764517198835095_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122011105_651349405527221_2884764517198835095_n.jpg', 12, 0, 0, 4, '', ''),
(99, '2020-11-03-17-48-54-122025087_681228249443250_2114235803020013876_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122025087_681228249443250_2114235803020013876_n.jpg', 12, 0, 0, 5, '', ''),
(100, '2020-11-03-17-48-54-122148024_738716750056087_760038294835552740_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122148024_738716750056087_760038294835552740_n.jpg', 12, 0, 0, 6, '', ''),
(101, '2020-11-03-17-49-19-78172058_529866270899956_2603881840833986560_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '78172058_529866270899956_2603881840833986560_o.jpg', 13, 1, 0, 1, '', ''),
(102, '2020-11-03-17-49-19-78495328_532201290666454_6536264634746273792_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '78495328_532201290666454_6536264634746273792_o.jpg', 13, 0, 0, 2, '', ''),
(103, '2020-11-03-17-49-19-78504506_532201200666463_6139875501633699840_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '78504506_532201200666463_6139875501633699840_o.jpg', 13, 0, 0, 3, '', ''),
(104, '2020-11-03-17-49-19-79267589_542600142959902_5493993311729352704_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '79267589_542600142959902_5493993311729352704_o.jpg', 13, 0, 0, 4, '', ''),
(105, '2020-11-03-17-49-19-80566933_548275165725733_3249016212507590656_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '80566933_548275165725733_3249016212507590656_o.jpg', 13, 0, 0, 5, '', ''),
(106, '2020-11-03-17-49-19-82607025_567315217155061_1743547806376787968_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '82607025_567315217155061_1743547806376787968_o.jpg', 13, 0, 0, 6, '', ''),
(107, '2020-11-03-17-49-19-86393392_587441698475746_254980457332998144_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '86393392_587441698475746_254980457332998144_o.jpg', 13, 0, 0, 7, '', ''),
(108, '2020-11-03-17-49-19-86757845_587441885142394_789114465848131584_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '86757845_587441885142394_789114465848131584_o.jpg', 13, 0, 0, 8, '', ''),
(109, '2020-11-03-17-49-19-87291972_587441788475737_3808609030511788032_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '87291972_587441788475737_3808609030511788032_o.jpg', 13, 0, 0, 9, '', ''),
(110, '2020-11-03-17-49-40-118915413_1393345907539230_5805735915208987458_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '118915413_1393345907539230_5805735915208987458_o.jpg', 14, 1, 0, 1, '', ''),
(111, '2020-11-03-17-49-40-119933035_1405321046341716_7810387328433673050_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119933035_1405321046341716_7810387328433673050_n.jpg', 14, 0, 0, 2, '', ''),
(112, '2020-11-03-17-49-40-119972227_1407167049490449_1580592393840993281_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119972227_1407167049490449_1580592393840993281_o.jpg', 14, 0, 0, 3, '', ''),
(113, '2020-11-03-17-49-40-120155598_1406408852899602_3964951947421085147_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120155598_1406408852899602_3964951947421085147_n.jpg', 14, 0, 0, 4, '', ''),
(114, '2020-11-03-17-49-40-120578786_1416198665253954_1746998132541571116_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120578786_1416198665253954_1746998132541571116_n.jpg', 14, 0, 0, 5, '', ''),
(115, '2020-11-03-17-49-40-120723148_1415531978653956_3963309816455588461_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120723148_1415531978653956_3963309816455588461_n.jpg', 14, 0, 0, 6, '', ''),
(116, '2020-11-03-17-49-40-120818019_1418045361735951_7714551047252532201_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120818019_1418045361735951_7714551047252532201_n.jpg', 14, 0, 0, 7, '', ''),
(117, '2020-11-03-17-49-40-120893338_1418869514986869_3111604229531891789_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120893338_1418869514986869_3111604229531891789_n.jpg', 14, 0, 0, 8, '', ''),
(118, '2020-11-03-17-49-40-121114946_1423307801209707_4036269872220405658_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121114946_1423307801209707_4036269872220405658_n.jpg', 14, 0, 0, 9, '', ''),
(119, '2020-11-03-17-50-03-87947320_614386489404256_4152451540860272640_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '87947320_614386489404256_4152451540860272640_o.jpg', 15, 1, 0, 1, '', ''),
(120, '2020-11-03-17-50-03-89300666_621491232027115_8353607190518431744_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '89300666_621491232027115_8353607190518431744_o.jpg', 15, 0, 0, 2, '', ''),
(121, '2020-11-03-17-50-03-96754704_668896447286593_3423160381692968960_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96754704_668896447286593_3423160381692968960_o.jpg', 15, 0, 0, 3, '', ''),
(122, '2020-11-03-17-50-03-97034866_672389050270666_2204191020332089344_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '97034866_672389050270666_2204191020332089344_n.jpg', 15, 0, 0, 4, '', ''),
(123, '2020-11-03-17-50-03-101198784_681161579393413_5222249176133271552_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '101198784_681161579393413_5222249176133271552_o.jpg', 15, 0, 0, 5, '', ''),
(124, '2020-11-03-17-50-03-103123147_689998475176390_3282672214601106224_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '103123147_689998475176390_3282672214601106224_n.jpg', 15, 0, 0, 6, '', ''),
(125, '2020-11-03-17-50-03-119517769_760441258132111_1881619622350294948_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119517769_760441258132111_1881619622350294948_n.jpg', 15, 0, 0, 7, '', ''),
(126, '2020-11-03-17-50-03-120559119_775151163327787_5866881497066716251_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120559119_775151163327787_5866881497066716251_o.jpg', 15, 0, 0, 8, '', ''),
(127, '2020-11-03-17-50-35-87524039_495600364438103_5062208622986002432_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '87524039_495600364438103_5062208622986002432_o.jpg', 16, 1, 0, 1, '', ''),
(128, '2020-11-03-17-50-35-89204184_496511691013637_6630991190726541312_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '89204184_496511691013637_6630991190726541312_o.jpg', 16, 0, 0, 2, '', ''),
(129, '2020-11-03-17-50-36-94022889_527277304603742_1840578260124041216_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94022889_527277304603742_1840578260124041216_o.jpg', 16, 0, 0, 3, '', ''),
(130, '2020-11-03-17-50-36-106200604_562500937748045_4729604699336435482_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106200604_562500937748045_4729604699336435482_o.jpg', 16, 0, 0, 4, '', ''),
(131, '2020-11-03-17-50-36-107931043_574971763167629_3739001460848362032_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107931043_574971763167629_3739001460848362032_o.jpg', 16, 0, 0, 5, '', ''),
(132, '2020-11-03-17-50-36-117445230_594756554522483_4684675068675876097_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117445230_594756554522483_4684675068675876097_o.jpg', 16, 0, 0, 6, '', ''),
(133, '2020-11-03-17-50-36-120576317_624989438165861_720312869921795845_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120576317_624989438165861_720312869921795845_o.jpg', 16, 0, 0, 7, '', ''),
(134, '2020-11-03-17-50-36-120809793_625736378091167_4387317052779824607_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120809793_625736378091167_4387317052779824607_o.jpg', 16, 0, 0, 8, '', ''),
(135, '2020-11-03-17-51-10-93711483_2533713226945478_1839023713891123200_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '93711483_2533713226945478_1839023713891123200_o.jpg', 17, 1, 0, 1, '', ''),
(136, '2020-11-03-17-51-10-94515722_2536258580024276_6640520211327877120_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94515722_2536258580024276_6640520211327877120_o.jpg', 17, 0, 0, 2, '', ''),
(137, '2020-11-03-17-51-10-106244161_2588016858181781_1152524778044520278_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106244161_2588016858181781_1152524778044520278_o.jpg', 17, 0, 0, 3, '', ''),
(138, '2020-11-03-17-51-10-Cafe-La-Viet.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', 'Cafe-La-Viet.jpg', 17, 0, 0, 4, '', ''),
(139, '2020-11-03-17-51-10-foody-upload-api-foody-mobile-77386695_27620657105-191129093235.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', 'foody-upload-api-foody-mobile-77386695_27620657105-191129093235.jpg', 17, 0, 0, 5, '', ''),
(140, '2020-11-03-17-51-10-laviet1_ufex.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', 'laviet1_ufex.jpg', 17, 0, 0, 6, '', ''),
(141, '2020-11-03-17-51-49-83653870_517862908723313_902065555907805184_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '83653870_517862908723313_902065555907805184_n.jpg', 18, 1, 0, 1, '', ''),
(142, '2020-11-03-17-51-49-95266046_570783290097941_539527443761856512_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '95266046_570783290097941_539527443761856512_o.jpg', 18, 0, 0, 2, '', ''),
(143, '2020-11-03-17-51-49-120078798_668832610293008_5015216712108914326_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120078798_668832610293008_5015216712108914326_o.jpg', 18, 0, 0, 3, '', ''),
(144, '2020-11-03-17-51-49-120081541_668832540293015_8190095637078055508_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120081541_668832540293015_8190095637078055508_o.jpg', 18, 0, 0, 4, '', ''),
(145, '2020-11-03-17-51-49-120197529_668832586959677_4064740701248325952_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120197529_668832586959677_4064740701248325952_o.jpg', 18, 0, 0, 5, '', ''),
(146, '2020-11-03-17-51-49-120650752_674477193061883_6581113916400328639_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120650752_674477193061883_6581113916400328639_o.jpg', 18, 0, 0, 6, '', ''),
(147, '2020-11-03-17-51-49-120660089_674476979728571_1805616402300854671_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120660089_674476979728571_1805616402300854671_o.jpg', 18, 0, 0, 7, '', ''),
(148, '2020-11-03-17-51-52-83653870_517862908723313_902065555907805184_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '83653870_517862908723313_902065555907805184_n.jpg', 19, 1, 0, 1, '', ''),
(149, '2020-11-03-17-51-52-95266046_570783290097941_539527443761856512_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '95266046_570783290097941_539527443761856512_o.jpg', 19, 0, 0, 2, '', ''),
(150, '2020-11-03-17-51-52-120078798_668832610293008_5015216712108914326_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120078798_668832610293008_5015216712108914326_o.jpg', 19, 0, 0, 3, '', ''),
(151, '2020-11-03-17-51-52-120081541_668832540293015_8190095637078055508_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120081541_668832540293015_8190095637078055508_o.jpg', 19, 0, 0, 4, '', ''),
(152, '2020-11-03-17-51-52-120197529_668832586959677_4064740701248325952_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120197529_668832586959677_4064740701248325952_o.jpg', 19, 0, 0, 5, '', ''),
(153, '2020-11-03-17-51-52-120650752_674477193061883_6581113916400328639_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120650752_674477193061883_6581113916400328639_o.jpg', 19, 0, 0, 6, '', ''),
(154, '2020-11-03-17-51-52-120660089_674476979728571_1805616402300854671_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120660089_674476979728571_1805616402300854671_o.jpg', 19, 0, 0, 7, '', ''),
(155, '2020-11-03-17-52-27-93441610_512287472777224_204650102118154240_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '93441610_512287472777224_204650102118154240_o.jpg', 20, 1, 0, 1, '', ''),
(156, '2020-11-03-17-52-27-93964402_513247552681216_2373413646622523392_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '93964402_513247552681216_2373413646622523392_n.jpg', 20, 0, 0, 2, '', ''),
(157, '2020-11-03-17-52-27-98185273_533208137351824_4487090584833490944_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '98185273_533208137351824_4487090584833490944_o.jpg', 20, 0, 0, 3, '', ''),
(158, '2020-11-03-17-52-27-104408078_551637752175529_5165046036046167007_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '104408078_551637752175529_5165046036046167007_o.jpg', 20, 0, 0, 4, '', ''),
(159, '2020-11-03-17-52-27-118974651_600941260578511_2927562892956366315_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118974651_600941260578511_2927562892956366315_o.jpg', 20, 0, 0, 5, '', ''),
(160, '2020-11-03-17-52-27-119287843_605000336839270_795121032390597295_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119287843_605000336839270_795121032390597295_o.jpg', 20, 0, 0, 6, '', ''),
(161, '2020-11-03-17-52-47-69274802_379361715984316_2127395304272560128_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '69274802_379361715984316_2127395304272560128_o.jpg', 21, 1, 0, 1, '', ''),
(162, '2020-11-03-17-52-47-69431253_382284769025344_2865251100674490368_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '69431253_382284769025344_2865251100674490368_o.jpg', 21, 0, 0, 2, '', ''),
(163, '2020-11-03-17-52-47-83057907_475209126399574_5349879983374336000_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '83057907_475209126399574_5349879983374336000_o.jpg', 21, 0, 0, 3, '', ''),
(164, '2020-11-03-17-52-47-118094078_596582037595615_4237642977358981632_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118094078_596582037595615_4237642977358981632_o.jpg', 21, 0, 0, 4, '', ''),
(165, '2020-11-03-17-52-47-118322202_603317683588717_4236213883210119985_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118322202_603317683588717_4236213883210119985_o.jpg', 21, 0, 0, 5, '', ''),
(166, '2020-11-03-17-52-47-118936824_607458136508005_420345065650026363_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118936824_607458136508005_420345065650026363_o.jpg', 21, 0, 0, 6, '', ''),
(167, '2020-11-03-17-52-47-119461064_614934502427035_2535087525512919479_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119461064_614934502427035_2535087525512919479_o.jpg', 21, 0, 0, 7, '', ''),
(168, '2020-11-03-17-53-07-72735828_102431477848848_3859874945567817728_n.png', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/png', '72735828_102431477848848_3859874945567817728_n.png', 22, 1, 0, 1, '', ''),
(169, '2020-11-03-17-53-07-73101609_111801630245166_1793451761533452288_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '73101609_111801630245166_1793451761533452288_o.jpg', 22, 0, 0, 2, '', ''),
(170, '2020-11-03-17-53-07-79152941_271593414265986_3579450989078187492_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '79152941_271593414265986_3579450989078187492_o.jpg', 22, 0, 0, 3, '', ''),
(171, '2020-11-03-17-53-07-106043422_271594347599226_464349249979260089_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106043422_271594347599226_464349249979260089_o.jpg', 22, 0, 0, 4, '', ''),
(172, '2020-11-03-17-53-07-106285800_271594457599215_9192060086618375111_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106285800_271594457599215_9192060086618375111_o.jpg', 22, 0, 0, 5, '', ''),
(173, '2020-11-03-17-53-07-106589047_271594977599163_820279299219656206_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106589047_271594977599163_820279299219656206_o.jpg', 22, 0, 0, 6, '', ''),
(174, '2020-11-03-17-53-07-107112432_271593320932662_1143626228947634967_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107112432_271593320932662_1143626228947634967_o.jpg', 22, 0, 0, 7, '', ''),
(175, '2020-11-03-17-53-28-122780942_372029314227991_3157738260497850188_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '122780942_372029314227991_3157738260497850188_n.jpg', 23, 1, 0, 1, '', ''),
(176, '2020-11-03-17-53-28-122806273_811194052972204_2654863170909842503_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122806273_811194052972204_2654863170909842503_n.jpg', 23, 0, 0, 2, '', ''),
(177, '2020-11-03-17-53-28-122825968_273379713987732_901910017381040624_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122825968_273379713987732_901910017381040624_n.jpg', 23, 0, 0, 3, '', ''),
(178, '2020-11-03-17-53-28-122827470_365678581204886_7944686380973303906_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122827470_365678581204886_7944686380973303906_n.jpg', 23, 0, 0, 4, '', ''),
(179, '2020-11-03-17-53-28-122848966_950292238712124_7718937737946550810_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122848966_950292238712124_7718937737946550810_n.jpg', 23, 0, 0, 5, '', ''),
(180, '2020-11-03-17-53-28-122851501_3708418315849285_4358386975021307996_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122851501_3708418315849285_4358386975021307996_n.jpg', 23, 0, 0, 6, '', ''),
(181, '2020-11-03-17-53-28-122947244_282239949636463_8158732228709506374_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122947244_282239949636463_8158732228709506374_n.jpg', 23, 0, 0, 7, '', ''),
(182, '2020-11-03-17-53-28-122969057_1093171457807257_4543412310720156662_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122969057_1093171457807257_4543412310720156662_n.jpg', 23, 0, 0, 8, '', ''),
(183, '2020-11-03-17-54-00-73349231_111196953657506_1474789970131550208_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '73349231_111196953657506_1474789970131550208_o.jpg', 24, 1, 0, 1, '', ''),
(184, '2020-11-03-17-54-00-74380702_111196850324183_8310232934271418368_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '74380702_111196850324183_8310232934271418368_o.jpg', 24, 0, 0, 2, '', ''),
(185, '2020-11-03-17-54-00-74384939_111196976990837_5105363780066344960_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '74384939_111196976990837_5105363780066344960_o.jpg', 24, 0, 0, 3, '', ''),
(186, '2020-11-03-17-54-00-102412994_265151541595379_1934247896464339939_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '102412994_265151541595379_1934247896464339939_o.jpg', 24, 0, 0, 4, '', ''),
(187, '2020-11-03-17-54-00-107765840_294044952039371_6586566814982864568_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107765840_294044952039371_6586566814982864568_o.jpg', 24, 0, 0, 5, '', ''),
(188, '2020-11-03-17-54-00-107829895_294045338705999_6908348759880782732_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107829895_294045338705999_6908348759880782732_o.jpg', 24, 0, 0, 6, '', ''),
(189, '2020-11-03-17-54-00-108172638_294045048706028_4071631781888116231_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '108172638_294045048706028_4071631781888116231_o.jpg', 24, 0, 0, 7, '', ''),
(190, '2020-11-03-17-54-17-119724955_2851655258270987_3090863089944342695_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '119724955_2851655258270987_3090863089944342695_o.jpg', 25, 1, 0, 1, '', ''),
(191, '2020-11-03-17-54-17-119776938_2845637392206107_5056206863562224705_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119776938_2845637392206107_5056206863562224705_o.jpg', 25, 0, 0, 2, '', ''),
(192, '2020-11-03-17-54-17-119793030_2856184331151413_1560759175661266895_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119793030_2856184331151413_1560759175661266895_o.jpg', 25, 0, 0, 3, '', ''),
(193, '2020-11-03-17-54-17-119836007_2856184324484747_723903461458070438_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119836007_2856184324484747_723903461458070438_o.jpg', 25, 0, 0, 4, '', ''),
(194, '2020-11-03-17-54-17-119865338_2850536365049543_2651858670217438759_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119865338_2850536365049543_2651858670217438759_o.jpg', 25, 0, 0, 5, '', ''),
(195, '2020-11-03-17-54-17-119964109_2857530851016761_6329025819226887050_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119964109_2857530851016761_6329025819226887050_o.jpg', 25, 0, 0, 6, '', ''),
(196, '2020-11-03-17-54-17-120095608_2863142967122216_910444499928040437_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120095608_2863142967122216_910444499928040437_o.jpg', 25, 0, 0, 7, '', ''),
(197, '2020-11-03-17-54-17-120175082_2863142970455549_7618833067337861690_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120175082_2863142970455549_7618833067337861690_o.jpg', 25, 0, 0, 8, '', ''),
(198, '2020-11-03-17-54-41-26219507_2352871021405273_9048659442312012671_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '26219507_2352871021405273_9048659442312012671_n.jpg', 26, 1, 0, 1, '', ''),
(199, '2020-11-03-17-54-41-26814675_2370679012957807_1385036026763230618_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '26814675_2370679012957807_1385036026763230618_n.jpg', 26, 0, 0, 2, '', ''),
(200, '2020-11-03-17-54-41-26904057_2364573550235020_4649081735491315506_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '26904057_2364573550235020_4649081735491315506_n.jpg', 26, 0, 0, 3, '', ''),
(201, '2020-11-03-17-54-41-26907872_2370679002957808_5218617443022580101_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '26907872_2370679002957808_5218617443022580101_n.jpg', 26, 0, 0, 4, '', ''),
(202, '2020-11-03-17-54-41-29749374_2485915504767490_4760614399251032036_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '29749374_2485915504767490_4760614399251032036_o.jpg', 26, 0, 0, 5, '', ''),
(203, '2020-11-03-17-54-41-30821071_2521259767899730_6469180709599623411_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '30821071_2521259767899730_6469180709599623411_o.jpg', 26, 0, 0, 6, '', ''),
(204, '2020-11-03-17-54-41-33689055_2568747679817605_2560663298626289664_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '33689055_2568747679817605_2560663298626289664_o.jpg', 26, 0, 0, 7, '', ''),
(205, '2020-11-03-17-54-41-40041104_2757180824307622_6227332962904440832_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '40041104_2757180824307622_6227332962904440832_o.jpg', 26, 0, 0, 8, '', ''),
(206, '2020-11-03-17-55-28-107836319_3232984886760568_4795319667507657885_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '107836319_3232984886760568_4795319667507657885_o.jpg', 27, 1, 0, 1, '', ''),
(207, '2020-11-03-17-55-28-108138244_3232984880093902_80171148288091770_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '108138244_3232984880093902_80171148288091770_o.jpg', 27, 0, 0, 2, '', ''),
(208, '2020-11-03-17-55-28-109581864_3232984946760562_7351536568949683986_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109581864_3232984946760562_7351536568949683986_o.jpg', 27, 0, 0, 3, '', ''),
(209, '2020-11-03-17-55-28-109778744_3232984893427234_4212193372873894455_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109778744_3232984893427234_4212193372873894455_o.jpg', 27, 0, 0, 4, '', ''),
(210, '2020-11-03-17-55-28-109947680_3232984903427233_3771140807870098961_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109947680_3232984903427233_3771140807870098961_o.jpg', 27, 0, 0, 5, '', ''),
(211, '2020-11-03-17-55-28-111284422_3232984910093899_8601872267235626672_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '111284422_3232984910093899_8601872267235626672_o.jpg', 27, 0, 0, 6, '', ''),
(212, '2020-11-03-17-55-28-115453505_3232984920093898_3320874992509237517_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '115453505_3232984920093898_3320874992509237517_o.jpg', 27, 0, 0, 7, '', ''),
(213, '2020-11-03-17-55-45-119125042_3231989720248565_1469931008067027934_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '119125042_3231989720248565_1469931008067027934_o.jpg', 28, 1, 0, 1, '', ''),
(214, '2020-11-03-17-55-45-119181745_3235955203185350_9145890941343560125_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119181745_3235955203185350_9145890941343560125_o.jpg', 28, 0, 0, 2, '', ''),
(215, '2020-11-03-17-55-45-119184939_3231989723581898_3949676606442433980_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119184939_3231989723581898_3949676606442433980_o.jpg', 28, 0, 0, 3, '', ''),
(216, '2020-11-03-17-55-45-119433049_3241306185983585_6516293326769927501_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119433049_3241306185983585_6516293326769927501_o.jpg', 28, 0, 0, 4, '', ''),
(217, '2020-11-03-17-55-45-119540151_3235955209852016_5468993197619631532_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119540151_3235955209852016_5468993197619631532_o.jpg', 28, 0, 0, 5, '', ''),
(218, '2020-11-03-17-55-45-119566801_3247493492031521_2911472393746119500_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119566801_3247493492031521_2911472393746119500_o.jpg', 28, 0, 0, 6, '', ''),
(219, '2020-11-03-17-55-45-119596755_3247493498698187_7743324917962185292_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119596755_3247493498698187_7743324917962185292_o.jpg', 28, 0, 0, 7, '', ''),
(220, '2020-11-03-17-55-45-119736319_3238071722973698_6041395320704750062_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119736319_3238071722973698_6041395320704750062_o.jpg', 28, 0, 0, 8, '', ''),
(221, '2020-11-03-17-56-20-72991785_1340488396126009_8435188797225828352_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '72991785_1340488396126009_8435188797225828352_o.jpg', 29, 1, 0, 1, '', ''),
(222, '2020-11-03-17-56-20-75594455_1371872446320937_5143995563489886208_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '75594455_1371872446320937_5143995563489886208_o.jpg', 29, 0, 0, 2, '', ''),
(223, '2020-11-03-17-56-20-79975559_1402095766631938_7489213703296909312_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '79975559_1402095766631938_7489213703296909312_n.jpg', 29, 0, 0, 3, '', ''),
(224, '2020-11-03-17-56-20-80212810_1389098521264996_5415791384722407424_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '80212810_1389098521264996_5415791384722407424_n.jpg', 29, 0, 0, 4, '', ''),
(225, '2020-11-03-17-56-20-84479672_1446419528866228_555823043604119552_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '84479672_1446419528866228_555823043604119552_o.jpg', 29, 0, 0, 5, '', ''),
(226, '2020-11-03-17-56-20-106126275_1567863206721859_5836618947780905813_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106126275_1567863206721859_5836618947780905813_o.jpg', 29, 0, 0, 6, '', ''),
(227, '2020-11-03-17-56-20-111069317_1595086903999489_8533310928740464084_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '111069317_1595086903999489_8533310928740464084_o.jpg', 29, 0, 0, 7, '', ''),
(228, '2020-11-03-17-56-20-118517319_1624878771020302_2589943663876665021_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118517319_1624878771020302_2589943663876665021_o.jpg', 29, 0, 0, 8, '', ''),
(229, '2020-11-03-17-56-48-71491570_555693228509031_1243711190484385792_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '71491570_555693228509031_1243711190484385792_o.jpg', 30, 1, 0, 2, '', ''),
(230, '2020-11-03-17-56-48-74585856_585238358887851_8172617440463683584_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '74585856_585238358887851_8172617440463683584_o.jpg', 30, 1, 0, 3, '', ''),
(231, '2020-11-03-17-56-48-80646441_630613047683715_7875748154207895552_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '80646441_630613047683715_7875748154207895552_o.jpg', 30, 1, 0, 1, '', ''),
(233, '2020-11-03-17-56-48-84481497_663436227734730_441352024747933696_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '84481497_663436227734730_441352024747933696_o.jpg', 30, 1, 0, 4, '', ''),
(236, '2020-11-03-17-57-15-70185472_1400892150062620_7491043282055593984_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '70185472_1400892150062620_7491043282055593984_o.jpg', 31, 1, 0, 1, '', ''),
(237, '2020-11-03-17-57-15-71897541_1414114608740374_8291842537144975360_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '71897541_1414114608740374_8291842537144975360_o.jpg', 31, 0, 0, 2, '', ''),
(238, '2020-11-03-17-57-15-72345346_1433155200169648_6692956079770304512_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '72345346_1433155200169648_6692956079770304512_o.jpg', 31, 0, 0, 3, '', ''),
(239, '2020-11-03-17-57-15-76759964_1463321033819731_2916770143923077120_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '76759964_1463321033819731_2916770143923077120_o.jpg', 31, 0, 0, 4, '', ''),
(240, '2020-11-03-17-57-15-78535306_1473919876093180_1726077305345802240_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '78535306_1473919876093180_1726077305345802240_o.jpg', 31, 0, 0, 5, '', ''),
(241, '2020-11-03-17-57-15-87887773_1565832053568628_3825081982438604800_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '87887773_1565832053568628_3825081982438604800_o.jpg', 31, 0, 0, 6, '', ''),
(242, '2020-11-03-17-57-15-96141080_1631630873655412_2999430259868172288_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96141080_1631630873655412_2999430259868172288_o.jpg', 31, 0, 0, 7, '', ''),
(243, '2020-11-03-17-57-15-99122244_1642052459279920_2612309094949715968_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '99122244_1642052459279920_2612309094949715968_o.jpg', 31, 0, 0, 8, '', ''),
(244, '2020-11-03-17-57-37-79089076_1054018981596196_1809012707219734528_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '79089076_1054018981596196_1809012707219734528_o.jpg', 32, 1, 0, 1, '', ''),
(245, '2020-11-03-17-57-37-96636396_1186785731652853_9187460161730510848_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96636396_1186785731652853_9187460161730510848_o.jpg', 32, 0, 0, 2, '', '');
INSERT INTO `items` (`id`, `name`, `url`, `cover_image`, `file_ext`, `old_name`, `gallery_id`, `thumb_nails`, `active_status`, `display_order`, `description`, `title`) VALUES
(246, '2020-11-03-17-57-37-96661274_1186785648319528_7505842317723435008_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96661274_1186785648319528_7505842317723435008_o.jpg', 32, 0, 0, 3, '', ''),
(247, '2020-11-03-17-57-37-96676319_1186785681652858_8054479971235659776_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96676319_1186785681652858_8054479971235659776_o.jpg', 32, 0, 0, 4, '', ''),
(248, '2020-11-03-17-57-37-96711726_1186785774986182_8005554542773010432_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96711726_1186785774986182_8005554542773010432_o.jpg', 32, 0, 0, 5, '', ''),
(249, '2020-11-03-17-57-37-96757319_1186785811652845_5229048414305517568_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96757319_1186785811652845_5229048414305517568_o.jpg', 32, 0, 0, 6, '', ''),
(250, '2020-11-03-17-57-37-97189829_1195047054160054_5787783140793647104_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '97189829_1195047054160054_5787783140793647104_o.jpg', 32, 0, 0, 7, '', ''),
(251, '2020-11-03-17-58-05-117580885_2986113771500082_400869944603702410_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '117580885_2986113771500082_400869944603702410_o.jpg', 33, 1, 0, 1, '', ''),
(252, '2020-11-03-17-58-05-118523929_3041847779260014_3958100424264716894_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118523929_3041847779260014_3958100424264716894_o.jpg', 33, 0, 0, 2, '', ''),
(253, '2020-11-03-17-58-05-120033768_3114310142013777_7451365737823772150_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120033768_3114310142013777_7451365737823772150_o.jpg', 33, 0, 0, 3, '', ''),
(254, '2020-11-03-17-58-05-120125343_3125919984186126_2179933780602349360_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120125343_3125919984186126_2179933780602349360_o.jpg', 33, 0, 0, 4, '', ''),
(255, '2020-11-03-17-58-05-120830797_3150433375068120_5553155924243050941_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120830797_3150433375068120_5553155924243050941_o.jpg', 33, 0, 0, 5, '', ''),
(256, '2020-11-03-17-58-05-120837051_3150411385070319_2714183602532153447_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120837051_3150411385070319_2714183602532153447_o.jpg', 33, 0, 0, 6, '', ''),
(257, '2020-11-03-17-58-05-120943767_3156968867747904_3355370825080974450_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120943767_3156968867747904_3355370825080974450_o.jpg', 33, 0, 0, 7, '', ''),
(258, '2020-11-03-17-58-22-64420634_2794269887312736_4068410434015723520_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '64420634_2794269887312736_4068410434015723520_n.jpg', 34, 1, 0, 1, '', ''),
(259, '2020-11-03-17-58-22-64825316_2805620419511016_7287258675977125888_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '64825316_2805620419511016_7287258675977125888_n.jpg', 34, 0, 0, 2, '', ''),
(260, '2020-11-03-17-58-22-94740003_3758934997512882_8475990458256850944_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94740003_3758934997512882_8475990458256850944_n.jpg', 34, 0, 0, 3, '', ''),
(261, '2020-11-03-17-58-22-96246930_3806202902786091_2742420069710561280_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96246930_3806202902786091_2742420069710561280_n.jpg', 34, 0, 0, 4, '', ''),
(262, '2020-11-03-17-58-22-96819361_3813145095425205_2195539779376906240_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '96819361_3813145095425205_2195539779376906240_n.jpg', 34, 0, 0, 5, '', ''),
(263, '2020-11-03-17-58-22-104106895_3961904967215883_6047024301814478249_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '104106895_3961904967215883_6047024301814478249_n.jpg', 34, 0, 0, 6, '', ''),
(264, '2020-11-03-17-58-40-43155481_752352841769072_4783939208001617920_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '43155481_752352841769072_4783939208001617920_n.jpg', 35, 1, 0, 1, '', ''),
(265, '2020-11-03-17-58-40-43180682_752352245102465_3343937966161526784_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '43180682_752352245102465_3343937966161526784_n.jpg', 35, 0, 0, 2, '', ''),
(266, '2020-11-03-17-58-40-43190320_752352328435790_6154025421714227200_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '43190320_752352328435790_6154025421714227200_n.jpg', 35, 0, 0, 3, '', ''),
(267, '2020-11-03-17-58-40-52598614_840174939653528_3020963348989607936_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '52598614_840174939653528_3020963348989607936_n.jpg', 35, 0, 0, 4, '', ''),
(268, '2020-11-03-17-59-01-72650237_2653269508070261_5633939233317060608_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '72650237_2653269508070261_5633939233317060608_n.jpg', 36, 1, 0, 1, '', ''),
(269, '2020-11-03-17-59-01-76717425_2753729511357593_4564533496629952512_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '76717425_2753729511357593_4564533496629952512_o.jpg', 36, 0, 0, 2, '', ''),
(270, '2020-11-03-17-59-01-76930061_2753729351357609_179389801722544128_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '76930061_2753729351357609_179389801722544128_o.jpg', 36, 0, 0, 3, '', ''),
(271, '2020-11-03-17-59-01-77353774_2753729441357600_95442823381254144_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '77353774_2753729441357600_95442823381254144_o.jpg', 36, 0, 0, 4, '', ''),
(272, '2020-11-03-17-59-01-92241961_3041253449271863_7992051221428961280_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '92241961_3041253449271863_7992051221428961280_o.jpg', 36, 0, 0, 5, '', ''),
(273, '2020-11-03-17-59-01-115851072_3324287150968490_871884042342748366_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '115851072_3324287150968490_871884042342748366_o.jpg', 36, 0, 0, 6, '', ''),
(274, '2020-11-03-17-59-01-121256709_3568431423220727_2427796052312981597_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121256709_3568431423220727_2427796052312981597_o.jpg', 36, 0, 0, 7, '', ''),
(275, '2020-11-03-17-59-22-71862904_399011730783448_6221289858019622912_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '71862904_399011730783448_6221289858019622912_n.jpg', 37, 1, 0, 1, '', ''),
(276, '2020-11-03-17-59-22-78957586_444574236227197_5723601125207179264_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '78957586_444574236227197_5723601125207179264_n.jpg', 37, 0, 0, 2, '', ''),
(277, '2020-11-03-17-59-22-87161973_501981627153124_1812426531910189056_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '87161973_501981627153124_1812426531910189056_o.jpg', 37, 0, 0, 3, '', ''),
(278, '2020-11-03-17-59-22-93859563_522189345132352_8305780706747875328_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '93859563_522189345132352_8305780706747875328_o.jpg', 37, 0, 0, 4, '', ''),
(279, '2020-11-03-17-59-22-98307196_543504326334187_3790775480190238720_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '98307196_543504326334187_3790775480190238720_o.jpg', 37, 0, 0, 5, '', ''),
(280, '2020-11-03-18-01-00-117445144_1169209126774323_6811991829706433052_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '117445144_1169209126774323_6811991829706433052_o.jpg', 38, 1, 0, 1, '', ''),
(281, '2020-11-03-18-01-00-119105698_1194463550915547_8898569915250365624_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119105698_1194463550915547_8898569915250365624_o.jpg', 38, 0, 0, 2, '', ''),
(282, '2020-11-03-18-01-00-120603298_1210044312690804_5404067045192165410_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120603298_1210044312690804_5404067045192165410_o.jpg', 38, 0, 0, 3, '', ''),
(283, '2020-11-03-18-01-00-120737314_1210044309357471_8307308059391666965_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120737314_1210044309357471_8307308059391666965_o.jpg', 38, 0, 0, 4, '', ''),
(284, '2020-11-03-18-01-00-120748814_1210044306024138_903036397361373981_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120748814_1210044306024138_903036397361373981_o.jpg', 38, 0, 0, 5, '', ''),
(285, '2020-11-03-18-01-00-120800074_1210044302690805_6500870205845706103_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120800074_1210044302690805_6500870205845706103_o.jpg', 38, 0, 0, 6, '', ''),
(286, '2020-11-03-18-01-00-121258362_1215573982137837_1151078038325731434_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121258362_1215573982137837_1151078038325731434_o.jpg', 38, 0, 0, 7, '', ''),
(287, '2020-11-03-18-01-30-120892233_2194686117330720_3079105304049386871_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '120892233_2194686117330720_3079105304049386871_o.jpg', 39, 1, 0, 1, '', ''),
(288, '2020-11-03-18-01-30-120903641_2194686253997373_3002330370271095244_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120903641_2194686253997373_3002330370271095244_o.jpg', 39, 0, 0, 2, '', ''),
(289, '2020-11-03-18-01-30-120917141_2194686163997382_1659608662034413025_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120917141_2194686163997382_1659608662034413025_o.jpg', 39, 0, 0, 3, '', ''),
(290, '2020-11-03-18-01-31-120937765_2194686343997364_7257990646096553367_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120937765_2194686343997364_7257990646096553367_o.jpg', 39, 0, 0, 4, '', ''),
(291, '2020-11-03-18-01-31-121070543_2195241463941852_9126103574863894653_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121070543_2195241463941852_9126103574863894653_o.jpg', 39, 0, 0, 5, '', ''),
(292, '2020-11-03-18-01-31-121144724_2195241597275172_7507859253329710359_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121144724_2195241597275172_7507859253329710359_o.jpg', 39, 0, 0, 6, '', ''),
(293, '2020-11-03-18-01-31-121225122_2200402436759088_5883587281360534883_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121225122_2200402436759088_5883587281360534883_o.jpg', 39, 0, 0, 7, '', ''),
(294, '2020-11-03-18-01-31-121334786_2200402396759092_6835893983663248929_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121334786_2200402396759092_6835893983663248929_o.jpg', 39, 0, 0, 8, '', ''),
(295, '2020-11-03-18-01-31-121449453_2199925353473463_2857282158402729575_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121449453_2199925353473463_2857282158402729575_o.jpg', 39, 0, 0, 9, '', ''),
(296, '2020-11-03-18-01-31-121553390_2200974356701896_7510495623008830429_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121553390_2200974356701896_7510495623008830429_o.jpg', 39, 0, 0, 10, '', ''),
(297, '2020-11-03-18-01-31-121614821_2200402520092413_5428063034328989589_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121614821_2200402520092413_5428063034328989589_o.jpg', 39, 0, 0, 11, '', ''),
(298, '2020-11-03-18-02-03-118626720_2674872602724432_7859587840067225298_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '118626720_2674872602724432_7859587840067225298_o.jpg', 40, 1, 0, 1, '', ''),
(299, '2020-11-03-18-02-03-120508604_2699244203620605_9193122197998760050_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120508604_2699244203620605_9193122197998760050_o.jpg', 40, 0, 0, 2, '', ''),
(300, '2020-11-03-18-02-03-120572688_2701792926699066_1922552162357087572_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120572688_2701792926699066_1922552162357087572_o.jpg', 40, 0, 0, 3, '', ''),
(301, '2020-11-03-18-02-03-121054519_2706089432936082_680262091183380432_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121054519_2706089432936082_680262091183380432_n.jpg', 40, 0, 0, 4, '', ''),
(302, '2020-11-03-18-02-03-121086572_2704414583103567_5481725026968680759_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121086572_2704414583103567_5481725026968680759_o.jpg', 40, 0, 0, 5, '', ''),
(303, '2020-11-03-18-09-57-117031875_2362435020728718_2794671817603401883_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '117031875_2362435020728718_2794671817603401883_o.jpg', 41, 1, 0, 1, '', ''),
(304, '2020-11-03-18-09-57-117358683_2370575936581293_8271475029863309655_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117358683_2370575936581293_8271475029863309655_o.jpg', 41, 0, 0, 2, '', ''),
(305, '2020-11-03-18-09-57-120201266_2408323919473161_6758908878826181147_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120201266_2408323919473161_6758908878826181147_o.jpg', 41, 0, 0, 3, '', ''),
(306, '2020-11-03-18-09-57-120571017_2414618388843714_722099618533309329_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120571017_2414618388843714_722099618533309329_o.jpg', 41, 0, 0, 4, '', ''),
(307, '2020-11-03-18-09-57-121630862_2422514428054110_6445322316400278907_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121630862_2422514428054110_6445322316400278907_o.jpg', 41, 0, 0, 5, '', ''),
(308, '2020-11-03-18-09-57-122791706_2431673643804855_9000329275714816534_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '122791706_2431673643804855_9000329275714816534_o.jpg', 41, 0, 0, 6, '', ''),
(309, '2020-11-03-18-09-57-123163317_2435305533441666_3304786116220988729_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '123163317_2435305533441666_3304786116220988729_o.jpg', 41, 0, 0, 7, '', ''),
(310, '2020-11-03-18-10-50-86842059_1077763002581310_8946551773900832768_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '86842059_1077763002581310_8946551773900832768_o.jpg', 42, 1, 0, 1, '', ''),
(311, '2020-11-03-18-10-50-91953200_1113578702333073_5051459470895349760_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '91953200_1113578702333073_5051459470895349760_o.jpg', 42, 0, 0, 2, '', ''),
(312, '2020-11-03-18-10-50-93101836_1119655208392089_992492106595434496_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '93101836_1119655208392089_992492106595434496_o.jpg', 42, 0, 0, 3, '', ''),
(313, '2020-11-03-18-10-50-94626633_1130410660649877_1684466524015820800_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94626633_1130410660649877_1684466524015820800_o.jpg', 42, 0, 0, 4, '', ''),
(314, '2020-11-03-18-10-50-95466243_1134269850263958_248023366227722240_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '95466243_1134269850263958_248023366227722240_o.jpg', 42, 0, 0, 5, '', ''),
(315, '2020-11-03-18-10-50-119984767_1255490341475241_4494496122523374731_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119984767_1255490341475241_4494496122523374731_n.jpg', 42, 0, 0, 6, '', ''),
(316, '2020-11-03-18-11-45-77256666_1038799356454803_4470708505824722944_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '77256666_1038799356454803_4470708505824722944_o.jpg', 43, 1, 0, 1, '', ''),
(317, '2020-11-03-18-11-45-78403454_1063122240689181_5880299205955682304_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '78403454_1063122240689181_5880299205955682304_n.jpg', 43, 0, 0, 2, '', ''),
(318, '2020-11-03-18-11-45-117300863_1295573687444034_7677705559428608866_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117300863_1295573687444034_7677705559428608866_n.jpg', 43, 0, 0, 3, '', ''),
(319, '2020-11-03-18-11-45-119147501_1320265771641492_6495482507190900353_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119147501_1320265771641492_6495482507190900353_o.jpg', 43, 0, 0, 4, '', ''),
(320, '2020-11-03-18-11-45-119714714_1325863054415097_9048955257608190270_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119714714_1325863054415097_9048955257608190270_n.jpg', 43, 0, 0, 5, '', ''),
(321, '2020-11-03-18-11-45-119729564_1325863121081757_6460159043144142322_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119729564_1325863121081757_6460159043144142322_n.jpg', 43, 0, 0, 6, '', ''),
(322, '2020-11-03-18-12-41-70910324_1147890778734687_9205145110478585856_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '70910324_1147890778734687_9205145110478585856_o.jpg', 44, 1, 0, 1, '', ''),
(323, '2020-11-03-18-12-41-79475760_1217040391819725_2420414706398265344_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '79475760_1217040391819725_2420414706398265344_o.jpg', 44, 0, 0, 2, '', ''),
(324, '2020-11-03-18-12-41-84634354_1269556286568135_4053843992301797376_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '84634354_1269556286568135_4053843992301797376_o.jpg', 44, 0, 0, 3, '', ''),
(325, '2020-11-03-18-12-41-90623724_1303368799853550_5240080102229803008_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '90623724_1303368799853550_5240080102229803008_o.jpg', 44, 0, 0, 4, '', ''),
(326, '2020-11-03-18-12-41-109972065_1397180233805739_6676303070086175870_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109972065_1397180233805739_6676303070086175870_o.jpg', 44, 0, 0, 5, '', ''),
(327, '2020-11-03-18-12-41-118849944_1441740759349686_1270659682416230406_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118849944_1441740759349686_1270659682416230406_o.jpg', 44, 0, 0, 6, '', ''),
(328, '2020-11-03-18-13-08-60142036_2226001027507437_3801166092705988608_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '60142036_2226001027507437_3801166092705988608_o.jpg', 45, 1, 0, 1, '', ''),
(329, '2020-11-03-18-13-08-95537162_2947341592040040_3769349073761468416_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '95537162_2947341592040040_3769349073761468416_o.jpg', 45, 0, 0, 2, '', ''),
(330, '2020-11-03-18-13-08-103250158_3056662501107948_5663864744242732470_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '103250158_3056662501107948_5663864744242732470_o.jpg', 45, 0, 0, 3, '', ''),
(331, '2020-11-03-18-15-39-79242439_919814445171697_1133053979497582424_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '79242439_919814445171697_1133053979497582424_o.jpg', 46, 1, 0, 1, '', ''),
(332, '2020-11-03-18-15-39-106120563_919814535171688_4155257796299611205_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106120563_919814535171688_4155257796299611205_o.jpg', 46, 0, 0, 2, '', ''),
(333, '2020-11-03-18-15-39-106720235_919814408505034_1892245540136283153_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106720235_919814408505034_1892245540136283153_o.jpg', 46, 0, 0, 3, '', ''),
(334, '2020-11-03-18-15-39-106720370_919814381838370_2599683757143619684_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106720370_919814381838370_2599683757143619684_o.jpg', 46, 0, 0, 4, '', ''),
(335, '2020-11-03-18-15-39-106985914_919814478505027_7590886650356138055_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106985914_919814478505027_7590886650356138055_o.jpg', 46, 0, 0, 5, '', ''),
(336, '2020-11-03-18-15-39-107480670_921114591708349_3753852519825402316_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107480670_921114591708349_3753852519825402316_o.jpg', 46, 0, 0, 6, '', ''),
(337, '2020-11-03-18-15-39-108305696_931841573968984_6628915335622765987_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '108305696_931841573968984_6628915335622765987_o.jpg', 46, 0, 0, 7, '', ''),
(338, '2020-11-03-18-15-39-109989097_931810110638797_5917125791194778205_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109989097_931810110638797_5917125791194778205_o.jpg', 46, 0, 0, 8, '', ''),
(339, '2020-11-03-18-16-16-53784573_632817023806280_7771323042382217216_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '53784573_632817023806280_7771323042382217216_n.jpg', 47, 1, 0, 1, '', ''),
(344, '2020-11-03-18-16-16-75462488_800586317029349_3171383939898015744_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '75462488_800586317029349_3171383939898015744_o.jpg', 47, 0, 0, 6, '', ''),
(345, '2020-11-03-18-16-16-79256311_827125034375477_6868038381482278912_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '79256311_827125034375477_6868038381482278912_o.jpg', 47, 0, 0, 7, '', ''),
(346, '2020-11-03-18-16-16-80065269_827125241042123_1363161614034927616_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '80065269_827125241042123_1363161614034927616_o.jpg', 47, 0, 0, 8, '', ''),
(347, '2020-11-03-18-16-36-82627190_486013608764337_731756247056908288_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '82627190_486013608764337_731756247056908288_o.jpg', 48, 1, 0, 1, '', ''),
(348, '2020-11-03-18-16-36-83521928_486434292055602_694562006367207424_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '83521928_486434292055602_694562006367207424_o.jpg', 48, 0, 0, 2, '', ''),
(349, '2020-11-03-18-16-36-89143728_510812379617793_2364020286858199040_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '89143728_510812379617793_2364020286858199040_o.jpg', 48, 0, 0, 3, '', ''),
(350, '2020-11-03-18-16-36-93653561_535305023835195_7406551126335553536_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '93653561_535305023835195_7406551126335553536_o.jpg', 48, 0, 0, 4, '', ''),
(351, '2020-11-03-18-16-36-103686395_572437670121930_7961959016501343056_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '103686395_572437670121930_7961959016501343056_o.jpg', 48, 0, 0, 5, '', ''),
(352, '2020-11-03-18-16-36-104180476_570682920297405_8954639032105538951_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '104180476_570682920297405_8954639032105538951_o.jpg', 48, 0, 0, 6, '', ''),
(353, '2020-11-03-18-16-36-118987581_628915337807496_1877014840794265503_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118987581_628915337807496_1877014840794265503_o.jpg', 48, 0, 0, 7, '', ''),
(354, '2020-11-03-18-16-36-120352595_644382376260792_5804424440971434146_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120352595_644382376260792_5804424440971434146_o.jpg', 48, 0, 0, 8, '', ''),
(355, '2020-11-03-18-16-56-119486090_203521894460935_3220036259365340973_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '119486090_203521894460935_3220036259365340973_o.jpg', 49, 1, 0, 1, '', ''),
(356, '2020-11-03-18-16-56-119724628_203003194512805_7994617224013057491_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119724628_203003194512805_7994617224013057491_o.jpg', 49, 0, 0, 2, '', ''),
(357, '2020-11-03-18-16-56-119777787_203521884460936_3960608957870297685_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119777787_203521884460936_3960608957870297685_o.jpg', 49, 0, 0, 3, '', ''),
(358, '2020-11-03-18-16-56-120199157_205345864278538_3171878332146741856_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120199157_205345864278538_3171878332146741856_o.jpg', 49, 0, 0, 4, '', ''),
(359, '2020-11-03-18-16-56-120273345_205345847611873_1793392506578211885_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120273345_205345847611873_1793392506578211885_o.jpg', 49, 0, 0, 5, '', ''),
(360, '2020-11-03-18-16-56-120432393_205345774278547_5840040729155424623_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120432393_205345774278547_5840040729155424623_o.jpg', 49, 0, 0, 6, '', ''),
(361, '2020-11-03-18-16-56-120913434_206756670804124_7320752234458673191_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120913434_206756670804124_7320752234458673191_o.jpg', 49, 0, 0, 7, '', ''),
(362, '2020-11-03-18-16-56-120937758_206759150803876_9220494656941490753_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120937758_206759150803876_9220494656941490753_o.jpg', 49, 0, 0, 8, '', ''),
(363, '2020-11-03-18-16-56-121070584_207915617354896_1816926784425227926_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121070584_207915617354896_1816926784425227926_o.jpg', 49, 0, 0, 9, '', ''),
(364, '2020-11-03-18-17-18-94517886_272662330790326_7120397276677144576_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '94517886_272662330790326_7120397276677144576_n.jpg', 50, 1, 0, 1, '', ''),
(365, '2020-11-03-18-17-18-99439974_293762905346935_4755653051606368256_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '99439974_293762905346935_4755653051606368256_o.jpg', 50, 0, 0, 2, '', ''),
(366, '2020-11-03-18-17-18-109478880_332603358129556_7957352911635691471_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '109478880_332603358129556_7957352911635691471_n.jpg', 50, 0, 0, 3, '', ''),
(367, '2020-11-03-18-17-18-118233452_364782954911596_7876967281052626771_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118233452_364782954911596_7876967281052626771_o.jpg', 50, 0, 0, 4, '', ''),
(368, '2020-11-03-18-17-18-120297333_397919738264584_8806948975939564864_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120297333_397919738264584_8806948975939564864_n.jpg', 50, 0, 0, 5, '', ''),
(369, '2020-11-03-18-17-18-120662188_397919748264583_1429348447185481564_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120662188_397919748264583_1429348447185481564_n.jpg', 50, 0, 0, 6, '', ''),
(370, '2020-11-03-18-17-41-57446459_2803912879648936_528210608663822336_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '57446459_2803912879648936_528210608663822336_o.jpg', 51, 1, 0, 1, '', ''),
(371, '2020-11-03-18-17-41-57486430_2803912756315615_5759652359135297536_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '57486430_2803912756315615_5759652359135297536_o.jpg', 51, 0, 0, 2, '', ''),
(372, '2020-11-03-18-17-41-57584289_2803912559648968_4685083448988139520_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '57584289_2803912559648968_4685083448988139520_o.jpg', 51, 0, 0, 3, '', ''),
(373, '2020-11-03-18-17-41-57614919_2808461089194115_1097271862460678144_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '57614919_2808461089194115_1097271862460678144_o.jpg', 51, 0, 0, 4, '', ''),
(374, '2020-11-03-18-17-41-64461195_2937928759580680_1628113473600749568_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '64461195_2937928759580680_1628113473600749568_o.jpg', 51, 0, 0, 5, '', ''),
(375, '2020-11-03-18-17-41-87016912_3712888205418061_7796696184453595136_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '87016912_3712888205418061_7796696184453595136_o.jpg', 51, 0, 0, 6, '', ''),
(376, '2020-11-03-18-17-41-93289201_3913824828657730_7190424334731575296_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '93289201_3913824828657730_7190424334731575296_o.jpg', 51, 0, 0, 7, '', ''),
(377, '2020-11-03-18-17-41-94222157_3943579132348966_7943925434272448512_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94222157_3943579132348966_7943925434272448512_o.jpg', 51, 0, 0, 8, '', ''),
(378, '2020-11-03-18-17-41-107931040_4294743353899207_8217789358485832337_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107931040_4294743353899207_8217789358485832337_o.jpg', 51, 0, 0, 9, '', ''),
(379, '2020-11-03-18-31-20-117317157_992830477816707_5108149156807473022_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '117317157_992830477816707_5108149156807473022_o.jpg', 52, 1, 0, 1, '', ''),
(380, '2020-11-03-18-31-20-117321437_992830577816697_3145710223303352073_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117321437_992830577816697_3145710223303352073_o.jpg', 52, 0, 0, 2, '', ''),
(381, '2020-11-03-18-31-20-117336855_992830667816688_2362292537666431011_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117336855_992830667816688_2362292537666431011_o.jpg', 52, 0, 0, 3, '', ''),
(382, '2020-11-03-18-31-20-117341589_992830491150039_3158838975052199966_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117341589_992830491150039_3158838975052199966_o.jpg', 52, 0, 0, 4, '', ''),
(383, '2020-11-03-18-31-20-117343877_992830494483372_6656635707910285738_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117343877_992830494483372_6656635707910285738_o.jpg', 52, 0, 0, 5, '', ''),
(384, '2020-11-03-18-31-20-117348732_992830554483366_3330386028035825984_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117348732_992830554483366_3330386028035825984_o.jpg', 52, 0, 0, 6, '', ''),
(385, '2020-11-03-18-31-20-117445501_992830594483362_1848173767821329493_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117445501_992830594483362_1848173767821329493_o.jpg', 52, 0, 0, 7, '', ''),
(386, '2020-11-03-18-31-20-118360391_1006204466479308_1869190354423559970_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118360391_1006204466479308_1869190354423559970_o.jpg', 52, 0, 0, 8, '', ''),
(387, '2020-11-03-18-31-20-118415222_1008497512916670_8975669731653735084_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118415222_1008497512916670_8975669731653735084_n.jpg', 52, 0, 0, 9, '', ''),
(425, '2020-11-11-14-20-49-107493172_3082650838485238_3254200834499626982_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '107493172_3082650838485238_3254200834499626982_o.jpg', 62, 1, 0, 1, '', ''),
(426, '2020-11-11-14-20-49-117595137_3186711528079168_2623135169078720408_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117595137_3186711528079168_2623135169078720408_o.jpg', 62, 0, 0, 2, '', ''),
(427, '2020-11-11-14-20-50-117947695_3195442513872736_7136948678028370326_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117947695_3195442513872736_7136948678028370326_o.jpg', 62, 0, 0, 3, '', ''),
(428, '2020-11-11-14-20-50-118213749_3216459178437736_4884133224102884714_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118213749_3216459178437736_4884133224102884714_o.jpg', 62, 0, 0, 4, '', ''),
(429, '2020-11-11-14-20-50-118477997_3234624906621163_684739307842066716_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118477997_3234624906621163_684739307842066716_o.jpg', 62, 0, 0, 5, '', ''),
(430, '2020-11-11-14-20-50-121175167_3361914613892191_1378762094503189621_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121175167_3361914613892191_1378762094503189621_o.jpg', 62, 0, 0, 6, '', ''),
(431, '2020-11-11-14-20-50-121336506_3361915057225480_2269257678593677247_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121336506_3361915057225480_2269257678593677247_o.jpg', 62, 0, 0, 7, '', ''),
(432, '2020-11-11-14-20-50-121340283_3361914793892173_8664209063878314248_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '121340283_3361914793892173_8664209063878314248_o.jpg', 62, 0, 0, 8, '', ''),
(555, '2020-11-18-16-11-06-shutterstock_109734503.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_109734503.jpg', 1, 1, 0, 2, '', ''),
(556, '2020-11-18-16-11-06-shutterstock_365866793.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_365866793.jpg', 1, 1, 0, 1, '', ''),
(557, '2020-11-18-16-11-06-shutterstock_590384582.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_590384582.jpg', 1, 1, 0, 5, '', ''),
(558, '2020-11-18-16-11-06-shutterstock_791066053.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_791066053.jpg', 1, 1, 0, 4, '', ''),
(559, '2020-11-18-16-11-06-shutterstock_1378364546.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1378364546.jpg', 1, 1, 0, 3, '', ''),
(560, '2020-11-18-16-11-07-shutterstock_1368038306.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1368038306.jpg', 53, 1, 0, 3, '', ''),
(561, '2020-11-18-16-11-07-shutterstock_1723175593.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1723175593.jpg', 53, 1, 0, 1, '', ''),
(562, '2020-11-18-16-11-07-shutterstock_1746632450.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1746632450.jpg', 53, 1, 0, 2, '', ''),
(563, '2020-11-18-16-11-08-shutterstock_1503037751.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1503037751.jpg', 54, 1, 0, 1, '', ''),
(564, '2020-11-18-16-11-08-shutterstock_1630855132.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1630855132.jpg', 54, 1, 0, 4, '', ''),
(565, '2020-11-18-16-11-08-shutterstock_1645606900.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1645606900.jpg', 54, 1, 0, 5, '', ''),
(566, '2020-11-18-16-11-08-shutterstock_1666875445.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1666875445.jpg', 54, 1, 0, 3, '', ''),
(567, '2020-11-18-16-11-08-shutterstock_1715551279.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1715551279.jpg', 54, 1, 0, 2, '', ''),
(568, '2020-11-18-16-11-09-shutterstock_1128352529.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1128352529.jpg', 55, 1, 0, 8, '', ''),
(569, '2020-11-18-16-11-09-shutterstock_1243925452.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1243925452.jpg', 55, 1, 0, 7, '', ''),
(570, '2020-11-18-16-11-09-shutterstock_1671229837.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1671229837.jpg', 55, 1, 0, 6, '', ''),
(571, '2020-11-18-16-11-09-shutterstock_1737150278.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1737150278.jpg', 55, 1, 0, 5, '', ''),
(572, '2020-11-18-16-11-10-shutterstock_1313302721.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1313302721.jpg', 56, NULL, 0, 4, '', ''),
(573, '2020-11-18-16-11-10-shutterstock_1549210304.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1549210304.jpg', 56, NULL, 0, 5, '', ''),
(574, '2020-11-18-16-11-10-shutterstock_1634148010.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1634148010.jpg', 56, NULL, 0, 6, '', ''),
(575, '2020-11-18-16-11-13-shutterstock_1361193530.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1361193530.jpg', 57, 1, 0, 4, '', ''),
(576, '2020-11-18-16-11-13-shutterstock_1434880283.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1434880283.jpg', 57, 1, 0, 6, '', ''),
(577, '2020-11-18-16-11-13-shutterstock_1809628258.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1809628258.jpg', 57, 1, 0, 5, '', ''),
(578, '2020-11-18-16-11-13-shutterstock_1474686647.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1474686647.jpg', 58, NULL, 0, 4, '', ''),
(579, '2020-11-18-16-11-13-shutterstock_1669389661.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1669389661.jpg', 58, NULL, 0, 5, '', ''),
(580, '2020-11-18-16-11-13-shutterstock_1715190184.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1715190184.jpg', 58, NULL, 0, 6, '', ''),
(581, '2020-11-18-16-11-15-shutterstock_284187263.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_284187263.jpg', 59, 1, 0, 4, '', ''),
(582, '2020-11-18-16-11-15-shutterstock_1062948902.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1062948902.jpg', 59, 1, 0, 6, '', ''),
(583, '2020-11-18-16-11-15-shutterstock_1429410827.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1429410827.jpg', 59, 1, 0, 5, '', ''),
(584, '2020-11-18-16-11-16-shutterstock_1522306064.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1522306064.jpg', 60, 1, 0, 5, '', ''),
(585, '2020-11-18-16-11-16-shutterstock_1570394038.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1570394038.jpg', 60, 1, 0, 6, '', ''),
(586, '2020-11-18-16-11-16-shutterstock_1607340493.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1607340493.jpg', 60, 1, 0, 8, '', ''),
(587, '2020-11-18-16-11-16-shutterstock_1690916911.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1690916911.jpg', 60, 1, 0, 7, '', ''),
(588, '2020-11-18-16-11-18-shutterstock_72094870.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_72094870.jpg', 61, 1, 0, 11, '', ''),
(589, '2020-11-18-16-11-18-shutterstock_1438787645.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1438787645.jpg', 61, 1, 0, 12, '', ''),
(590, '2020-11-18-16-11-18-shutterstock_1466337047.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1466337047.jpg', 61, 1, 0, 7, '', ''),
(591, '2020-11-18-16-11-18-shutterstock_1499488313.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1499488313.jpg', 61, 1, 0, 9, '', ''),
(592, '2020-11-18-16-11-18-shutterstock_1551132737.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1551132737.jpg', 61, 1, 0, 8, '', ''),
(593, '2020-11-18-16-11-18-shutterstock_1571537641.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1571537641.jpg', 61, 1, 0, 10, '', ''),
(594, '2020-11-18-16-11-19-shutterstock_149133392.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_149133392.jpg', 63, 1, 0, 8, '', ''),
(595, '2020-11-18-16-11-19-shutterstock_708745495.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_708745495.jpg', 63, 1, 0, 7, '', ''),
(596, '2020-11-18-16-11-19-shutterstock_1186995532.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1186995532.jpg', 63, 1, 0, 5, '', ''),
(597, '2020-11-18-16-11-19-shutterstock_1676903017.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1676903017.jpg', 63, 1, 0, 6, '', ''),
(598, '2020-11-18-16-11-20-shutterstock_1620799702.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1620799702.jpg', 64, 1, 0, 4, '', ''),
(599, '2020-11-18-16-11-20-shutterstock_1646024209.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1646024209.jpg', 64, 1, 0, 6, '', ''),
(600, '2020-11-18-16-11-20-shutterstock_1689997714.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1689997714.jpg', 64, 1, 0, 5, '', ''),
(601, '2020-11-18-16-11-23-shutterstock_1036494493.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1036494493.jpg', 65, 1, 0, 9, '', ''),
(602, '2020-11-18-16-11-23-shutterstock_1402941845.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1402941845.jpg', 65, 1, 0, 10, '', ''),
(603, '2020-11-18-16-11-23-shutterstock_1718208208.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1718208208.jpg', 65, 1, 0, 8, '', ''),
(604, '2020-11-18-16-11-23-shutterstock_1756201565.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1756201565.jpg', 65, 1, 0, 7, '', ''),
(605, '2020-11-18-16-11-23-shutterstock_1829795339.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1829795339.jpg', 65, 1, 0, 6, '', ''),
(606, '2020-11-18-16-11-24-shutterstock_1312753583.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1312753583.jpg', 66, 1, 0, 5, '', ''),
(607, '2020-11-18-16-11-24-shutterstock_1489837004.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1489837004.jpg', 66, 1, 0, 6, '', ''),
(608, '2020-11-18-16-11-24-shutterstock_1494085724.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1494085724.jpg', 66, 1, 0, 4, '', ''),
(609, '2020-11-18-16-11-25-shutterstock_1608178657.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1608178657.jpg', 67, 1, 0, 7, '', ''),
(610, '2020-11-18-16-11-25-shutterstock_1655984347.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1655984347.jpg', 67, 1, 0, 5, '', ''),
(611, '2020-11-18-16-11-25-shutterstock_1688847025.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1688847025.jpg', 67, 1, 0, 8, '', ''),
(612, '2020-11-18-16-11-25-shutterstock_1740401657.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1740401657.jpg', 67, 1, 0, 6, '', ''),
(613, '2020-11-18-16-11-26-shutterstock_287482976.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_287482976.jpg', 68, 1, 0, 7, '', ''),
(614, '2020-11-18-16-11-26-shutterstock_304851305.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_304851305.jpg', 68, 1, 0, 11, '', ''),
(615, '2020-11-18-16-11-26-shutterstock_439683766.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_439683766.jpg', 68, 1, 0, 8, '', ''),
(616, '2020-11-18-16-11-26-shutterstock_767432956.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_767432956.jpg', 68, 1, 0, 9, '', ''),
(617, '2020-11-18-16-11-26-shutterstock_1013596222.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1013596222.jpg', 68, 1, 0, 10, '', ''),
(618, '2020-11-18-16-11-26-shutterstock_1191284416.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1191284416.jpg', 68, 1, 0, 12, '', ''),
(619, '2020-11-18-16-11-28-shutterstock_1156370593.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1156370593.jpg', 69, 1, 0, 5, '', ''),
(620, '2020-11-18-16-11-28-shutterstock_1221067828.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1221067828.jpg', 69, 1, 0, 4, '', ''),
(621, '2020-11-18-16-11-28-shutterstock_1657021975.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1657021975.jpg', 69, 1, 0, 3, '', ''),
(622, '2020-11-18-16-11-28-shutterstock_1528866668.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1528866668.jpg', 70, 1, 0, 6, '', ''),
(623, '2020-11-18-16-11-28-shutterstock_1688912167.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1688912167.jpg', 70, 1, 0, 4, '', ''),
(624, '2020-11-18-16-11-28-shutterstock_1823516840.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1823516840.jpg', 70, 1, 0, 5, '', ''),
(625, '2020-11-18-16-11-29-shutterstock_167171018.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_167171018.jpg', 71, 1, 0, 5, '', ''),
(626, '2020-11-18-16-11-29-shutterstock_1012859941.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1012859941.jpg', 71, 1, 0, 8, '', '');
INSERT INTO `items` (`id`, `name`, `url`, `cover_image`, `file_ext`, `old_name`, `gallery_id`, `thumb_nails`, `active_status`, `display_order`, `description`, `title`) VALUES
(627, '2020-11-18-16-11-29-shutterstock_1653384784.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1653384784.jpg', 71, 1, 0, 6, '', ''),
(628, '2020-11-18-16-11-29-shutterstock_1680494422.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1680494422.jpg', 71, 1, 0, 7, '', ''),
(629, '2020-11-18-16-11-32-shutterstock_199628132.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_199628132.jpg', 72, 1, 0, 7, '', ''),
(630, '2020-11-18-16-11-32-shutterstock_326737745.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_326737745.jpg', 72, 1, 0, 10, '', ''),
(631, '2020-11-18-16-11-32-shutterstock_549849400.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_549849400.jpg', 72, 1, 0, 9, '', ''),
(632, '2020-11-18-16-11-32-shutterstock_730912606.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_730912606.jpg', 72, 1, 0, 11, '', ''),
(633, '2020-11-18-16-11-32-shutterstock_1213067338.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1213067338.jpg', 72, 1, 0, 12, '', ''),
(634, '2020-11-18-16-11-32-shutterstock_1603526800.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', 'shutterstock_1603526800.jpg', 72, 1, 0, 8, '', ''),
(635, '2020-11-27-11-24-44-82961304_2456746807975650_1408123371798921216_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '82961304_2456746807975650_1408123371798921216_o.jpg', 73, 1, 0, 4, '', ''),
(636, '2020-11-27-11-24-44-123916982_2717470061903322_1483530212735923781_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '123916982_2717470061903322_1483530212735923781_o.jpg', 73, 1, 0, 5, '', ''),
(637, '2020-11-27-11-24-44-123927021_2717470225236639_5221009225617118300_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '123927021_2717470225236639_5221009225617118300_o.jpg', 73, 1, 0, 2, '', ''),
(638, '2020-11-27-11-24-44-124311714_2717470281903300_812328590559851738_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '124311714_2717470281903300_812328590559851738_o.jpg', 73, 1, 0, 1, '', ''),
(639, '2020-11-27-11-24-44-126174190_2726213674362294_8627308992354561063_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '126174190_2726213674362294_8627308992354561063_o.jpg', 73, 1, 0, 3, '', ''),
(640, '2020-11-27-15-22-44-87464744_2206838379418482_1499836338206146560_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '87464744_2206838379418482_1499836338206146560_o.jpg', 74, 1, 0, 1, '', ''),
(641, '2020-11-27-15-22-44-118499618_2648442651924717_8533978202288971229_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118499618_2648442651924717_8533978202288971229_o.jpg', 74, 0, 0, 2, '', ''),
(642, '2020-11-27-15-22-44-119517151_2690949914340657_1610311050632231892_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119517151_2690949914340657_1610311050632231892_o.jpg', 74, 0, 0, 3, '', ''),
(643, '2020-11-27-15-22-44-119858225_2702949133140735_2161879211760091233_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119858225_2702949133140735_2161879211760091233_o.jpg', 74, 0, 0, 4, '', ''),
(644, '2020-11-27-15-40-31-82977442_3037386629686837_5326479323178426595_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '82977442_3037386629686837_5326479323178426595_o.jpg', 75, 1, 0, 1, '', ''),
(645, '2020-11-27-15-40-31-94233952_2926083140817187_6116068077005176832_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '94233952_2926083140817187_6116068077005176832_o.jpg', 75, 0, 0, 2, '', ''),
(646, '2020-11-27-15-40-31-98142530_2994114530680714_4330584656626843648_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '98142530_2994114530680714_4330584656626843648_o.jpg', 75, 0, 0, 3, '', ''),
(647, '2020-11-27-15-40-31-125215100_3493355004089995_6345034413468294660_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '125215100_3493355004089995_6345034413468294660_o.jpg', 75, 0, 0, 4, '', ''),
(648, '2020-11-27-15-54-22-119239829_2121248754685880_2871625661056701207_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '119239829_2121248754685880_2871625661056701207_o.jpg', 76, 1, 0, 3, '', ''),
(649, '2020-11-27-15-54-22-123205715_2170314106446011_6870894263592116226_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '123205715_2170314106446011_6870894263592116226_o.jpg', 76, 1, 0, 1, '', ''),
(650, '2020-11-27-15-54-22-123361424_2176675669143188_4240661297947956285_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '123361424_2176675669143188_4240661297947956285_o.jpg', 76, 1, 0, 4, '', ''),
(651, '2020-11-27-15-54-22-124388176_2181469495330472_142272805263479351_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '124388176_2181469495330472_142272805263479351_o.jpg', 76, 1, 0, 5, '', ''),
(652, '2020-11-27-15-54-22-125055358_2190258071118281_6393531111377630391_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '125055358_2190258071118281_6393531111377630391_o.jpg', 76, 1, 0, 6, '', ''),
(653, '2020-11-27-15-54-22-125194682_2184977388313016_3774293307731390527_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '125194682_2184977388313016_3774293307731390527_o.jpg', 76, 1, 0, 2, '', ''),
(654, '2020-11-27-16-42-39-65310938_351656642189471_3045392014867693568_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '65310938_351656642189471_3045392014867693568_o.jpg', 77, 1, 0, 1, '', ''),
(655, '2020-11-27-16-42-39-65461672_352331285455340_5665641306051837952_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '65461672_352331285455340_5665641306051837952_n.jpg', 77, 0, 0, 2, '', ''),
(656, '2020-11-27-16-42-39-65562399_352331202122015_1122139525536022528_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '65562399_352331202122015_1122139525536022528_n.jpg', 77, 0, 0, 3, '', ''),
(657, '2020-11-27-16-54-59-97998608_1282358135453412_4592139733932441600_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '97998608_1282358135453412_4592139733932441600_o.jpg', 78, 1, 0, 6, '', ''),
(658, '2020-11-27-16-54-59-103754623_1309632486059310_4355135897203822671_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '103754623_1309632486059310_4355135897203822671_o.jpg', 78, 1, 0, 4, '', ''),
(659, '2020-11-27-16-54-59-106528244_1326562757699616_9040174800462548628_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '106528244_1326562757699616_9040174800462548628_o.jpg', 78, 1, 0, 2, '', ''),
(660, '2020-11-27-16-54-59-116871175_1343813592641199_8966260589330673460_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '116871175_1343813592641199_8966260589330673460_o.jpg', 78, 1, 0, 5, '', ''),
(661, '2020-11-27-16-54-59-119458451_1388067664882458_4551677938664962578_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119458451_1388067664882458_4551677938664962578_o.jpg', 78, 1, 0, 1, '', ''),
(662, '2020-11-27-16-54-59-120194341_1395196610836230_2749067309805589063_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '120194341_1395196610836230_2749067309805589063_o.jpg', 78, 1, 0, 3, '', ''),
(663, '2020-11-30-12-16-12-45076649_2363838140296561_3551910564785553408_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '45076649_2363838140296561_3551910564785553408_o.jpg', 79, 1, 0, 1, '', ''),
(664, '2020-11-30-12-16-12-45155411_2363837930296582_8856829640799420416_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '45155411_2363837930296582_8856829640799420416_o.jpg', 79, 0, 0, 2, '', ''),
(665, '2020-11-30-12-16-12-107375359_3660048924008803_5063702667692747449_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107375359_3660048924008803_5063702667692747449_o.jpg', 79, 0, 0, 3, '', ''),
(666, '2020-11-30-12-16-12-107822461_3658475404166155_1886866020269675588_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107822461_3658475404166155_1886866020269675588_o.jpg', 79, 0, 0, 4, '', ''),
(667, '2020-11-30-12-16-12-117234213_3769462903067404_8162283622402751432_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117234213_3769462903067404_8162283622402751432_o.jpg', 79, 0, 0, 5, '', ''),
(668, '2020-11-30-12-31-29-27545071_161373724647682_7219812553549134481_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '27545071_161373724647682_7219812553549134481_n.jpg', 80, 1, 0, 2, '', ''),
(669, '2020-11-30-12-31-29-46473179_333499697435083_5155413661031858176_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '46473179_333499697435083_5155413661031858176_o.jpg', 80, 1, 0, 3, '', ''),
(670, '2020-11-30-12-31-29-46518740_336888347096218_435284056297439232_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '46518740_336888347096218_435284056297439232_o.jpg', 80, 1, 0, 5, '', ''),
(671, '2020-11-30-12-31-29-95462840_665543217564061_998795160080875520_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '95462840_665543217564061_998795160080875520_o.jpg', 80, 1, 0, 1, '', ''),
(672, '2020-11-30-12-31-29-116593995_732048350913547_95024179096880503_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '116593995_732048350913547_95024179096880503_o.jpg', 80, 1, 0, 4, '', ''),
(673, '2020-11-30-15-10-31-67401929_417451215528317_7381201963066589184_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '67401929_417451215528317_7381201963066589184_o.jpg', 81, 1, 0, 1, '', ''),
(674, '2020-11-30-15-10-31-67449450_417443842195721_1579245163908169728_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '67449450_417443842195721_1579245163908169728_o.jpg', 81, 0, 0, 2, '', ''),
(675, '2020-11-30-15-10-31-67468376_417544432185662_223240563116212224_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '67468376_417544432185662_223240563116212224_n.jpg', 81, 0, 0, 3, '', ''),
(676, '2020-11-30-15-10-31-67481145_417554855517953_1509165629943316480_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '67481145_417554855517953_1509165629943316480_n.jpg', 81, 0, 0, 4, '', ''),
(677, '2020-11-30-15-10-31-67615948_417552698851502_2530633505767948288_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '67615948_417552698851502_2530633505767948288_o.jpg', 81, 0, 0, 5, '', ''),
(678, '2020-11-30-15-10-31-67770180_417552085518230_3896910096373907456_o.png', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/png', '67770180_417552085518230_3896910096373907456_o.png', 81, 0, 0, 6, '', ''),
(679, '2020-11-30-15-10-31-107609210_634199967186773_1792110475573003750_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '107609210_634199967186773_1792110475573003750_o.jpg', 81, 0, 0, 7, '', ''),
(680, '2020-11-30-15-53-56-46982091_2258847287777886_7176627933409181696_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '46982091_2258847287777886_7176627933409181696_o.jpg', 82, 1, 0, 2, '', ''),
(681, '2020-11-30-15-53-56-118983282_2964892977173310_9066430740744530742_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118983282_2964892977173310_9066430740744530742_o.jpg', 82, 1, 0, 1, '', ''),
(682, '2020-11-30-15-53-56-119070374_2964892963839978_5125108322850232798_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119070374_2964892963839978_5125108322850232798_o.jpg', 82, 1, 0, 4, '', ''),
(683, '2020-11-30-15-53-56-126959034_3041797236149550_8184477679559827788_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '126959034_3041797236149550_8184477679559827788_o.jpg', 82, 1, 0, 3, '', ''),
(684, '2020-11-30-16-02-56-55853824_1636484649816360_4927535959165108224_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '55853824_1636484649816360_4927535959165108224_o.jpg', 83, 1, 0, 1, '', ''),
(686, '2020-11-30-16-02-56-73375595_1858039290994227_5663642127624568832_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '73375595_1858039290994227_5663642127624568832_o.jpg', 83, 0, 0, 3, '', ''),
(687, '2020-11-30-16-02-56-78306814_1858033417661481_3421011759878635520_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '78306814_1858033417661481_3421011759878635520_o.jpg', 83, 0, 0, 4, '', ''),
(688, '2020-11-30-16-02-56-79261606_1864371923694297_5476368556947931136_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '79261606_1864371923694297_5476368556947931136_o.jpg', 83, 0, 0, 5, '', ''),
(689, '2020-11-30-16-11-07-92575639_1995374707260684_394639754278207488_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '92575639_1995374707260684_394639754278207488_o.jpg', 83, NULL, 0, 6, '', ''),
(690, '2020-11-30-16-31-13-64280034_392518928030173_642311435698831360_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '64280034_392518928030173_642311435698831360_o.jpg', 84, 1, 0, 1, '', ''),
(691, '2020-11-30-16-31-13-64328668_392495331365866_4235229042556534784_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '64328668_392495331365866_4235229042556534784_o.jpg', 84, 1, 0, 4, '', ''),
(692, '2020-11-30-16-31-13-64361560_392511874697545_427300553907765248_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '64361560_392511874697545_427300553907765248_o.jpg', 84, 1, 0, 2, '', ''),
(693, '2020-11-30-16-31-13-64402320_392495528032513_3905765910916366336_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '64402320_392495528032513_3905765910916366336_o.jpg', 84, 1, 0, 3, '', ''),
(694, '2020-11-30-16-46-41-81238828_2332696140169854_9157645366345072640_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '81238828_2332696140169854_9157645366345072640_o.jpg', 85, 1, 0, 2, '', ''),
(695, '2020-11-30-16-46-41-82649009_2403741489731985_7622050457577324544_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '82649009_2403741489731985_7622050457577324544_o.jpg', 85, 1, 0, 3, '', ''),
(696, '2020-11-30-16-46-41-97337808_2638019306304201_4989176711322009600_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '97337808_2638019306304201_4989176711322009600_o.jpg', 85, 1, 0, 1, '', ''),
(697, '2020-11-30-16-11-48-48195696_1735450776561063_1471087403379720192_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '48195696_1735450776561063_1471087403379720192_o.jpg', 85, NULL, 0, 4, '', ''),
(698, '2020-11-30-18-25-08-109486452_1510319905806855_5144939963043306213_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '109486452_1510319905806855_5144939963043306213_o.jpg', 86, 1, 0, 7, '', ''),
(699, '2020-11-30-18-25-08-117342463_1527852304053615_9108618986107233494_n.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '117342463_1527852304053615_9108618986107233494_n.jpg', 86, 1, 0, 3, '', ''),
(700, '2020-11-30-18-25-08-118718014_1548773535294825_2149036658540470979_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '118718014_1548773535294825_2149036658540470979_o.jpg', 86, 1, 0, 2, '', ''),
(701, '2020-11-30-18-25-08-119701503_1564548693717309_6414361470319012061_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '119701503_1564548693717309_6414361470319012061_o.jpg', 86, 1, 0, 1, '', ''),
(702, '2020-11-30-18-25-08-123678887_1606728786165966_1257028998041668366_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '123678887_1606728786165966_1257028998041668366_o.jpg', 86, 1, 0, 4, '', ''),
(704, '2020-11-30-18-25-08-125883037_1617417415097103_808076826200225206_o.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', '125883037_1617417415097103_808076826200225206_o.jpg', 86, 1, 0, 6, '', ''),
(705, '2020-12-01-10-39-18-58444893_2402341669995058_1867055238855262208_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '58444893_2402341669995058_1867055238855262208_o.jpg', 87, 1, 0, 6, '', ''),
(706, '2020-12-01-10-39-18-58579448_2405216426374249_4238415195325595648_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '58579448_2405216426374249_4238415195325595648_o.jpg', 87, 1, 0, 2, '', ''),
(707, '2020-12-01-10-39-18-59079075_2406890612873497_7540813556355170304_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '59079075_2406890612873497_7540813556355170304_n.jpg', 87, 1, 0, 1, '', ''),
(708, '2020-12-01-10-39-18-59229914_2408306716065220_5966990294736961536_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '59229914_2408306716065220_5966990294736961536_o.jpg', 87, 1, 0, 3, '', ''),
(709, '2020-12-01-10-39-18-60716075_2421803908048834_8858306916275716096_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '60716075_2421803908048834_8858306916275716096_o.jpg', 87, 1, 0, 4, '', ''),
(710, '2020-12-01-10-39-18-68980625_2501982360030988_1478024501412233216_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '68980625_2501982360030988_1478024501412233216_o.jpg', 87, 1, 0, 5, '', ''),
(711, '2020-12-01-10-53-32-91777448_986757141721866_59655059926941696_o.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/png', '91777448_986757141721866_59655059926941696_o.png', 88, 1, 0, 2, '', ''),
(712, '2020-12-01-10-53-32-105288722_1050130945384485_1013307220567408012_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '105288722_1050130945384485_1013307220567408012_n.jpg', 88, 1, 0, 3, '', ''),
(713, '2020-12-01-10-53-32-107427360_1058087824588797_6179012642057226704_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '107427360_1058087824588797_6179012642057226704_o.jpg', 88, 1, 0, 4, '', ''),
(714, '2020-12-01-10-53-32-109444936_1063115077419405_8951413457228902544_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '109444936_1063115077419405_8951413457228902544_o.jpg', 88, 1, 0, 1, '', ''),
(715, '2020-12-01-18-50-09-27173821_966583980162163_6836273300034110639_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '27173821_966583980162163_6836273300034110639_o.jpg', 89, 1, 0, 3, '', ''),
(716, '2020-12-01-18-50-09-56396025_1305831406237417_1245958940143910912_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '56396025_1305831406237417_1245958940143910912_o.jpg', 89, 1, 0, 1, '', ''),
(717, '2020-12-01-18-50-09-96145799_1662661337221087_1655961032230699008_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '96145799_1662661337221087_1655961032230699008_o.jpg', 89, 1, 0, 2, '', ''),
(718, '2020-12-01-18-50-09-102390506_1692243220929565_4400392491379069232_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '102390506_1692243220929565_4400392491379069232_o.jpg', 89, 1, 0, 4, '', ''),
(719, '2020-12-01-19-30-57-87507845_633960273830961_8713376977198776320_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '87507845_633960273830961_8713376977198776320_o.jpg', 90, 1, 0, 1, '', ''),
(720, '2020-12-01-19-30-57-89656356_644396569453998_4034519353889128448_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '89656356_644396569453998_4034519353889128448_o.jpg', 90, 1, 0, 2, '', ''),
(721, '2020-12-01-19-30-57-122294234_796347234258930_3349845379762775924_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '122294234_796347234258930_3349845379762775924_o.jpg', 90, 1, 0, 3, '', ''),
(722, '2020-12-01-19-30-57-123232891_804491853444468_3076871267098773115_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '123232891_804491853444468_3076871267098773115_o.jpg', 90, 1, 0, 4, '', ''),
(723, '2020-12-01-19-30-57-123356538_802915306935456_5823065476488528233_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '123356538_802915306935456_5823065476488528233_o.jpg', 90, 1, 0, 6, '', ''),
(724, '2020-12-01-19-30-57-124468557_811464909413829_5505582907476193293_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '124468557_811464909413829_5505582907476193293_o.jpg', 90, 1, 0, 5, '', ''),
(725, '2020-12-07-19-12-20-126050705_105117731422818_8173843812135549781_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '126050705_105117731422818_8173843812135549781_o.jpg', 3, 1, 0, 1, '', ''),
(727, '2020-12-08-20-50-48-DauDo_homepage_01.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', 'DauDo_homepage_01.jpg', 91, 1, 0, 4, '', ''),
(728, '2020-12-08-20-50-48-DauDoCuisine_08.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'DauDoCuisine_08.jpg', 91, 1, 0, 2, '', ''),
(729, '2020-12-08-20-50-48-DauDoCuisine_40.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'DauDoCuisine_40.jpg', 91, 1, 0, 3, '', ''),
(730, '2020-12-08-20-50-48-daudo-nammoisalad.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'daudo-nammoisalad.jpg', 91, 1, 0, 1, '', ''),
(731, '2020-12-08-21-16-50-37512101_2248788522010875_2314123268073717760_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '37512101_2248788522010875_2314123268073717760_o.jpg', 92, 1, 0, 3, '', ''),
(732, '2020-12-08-21-16-50-65802350_2521732411383150_97224238376681472_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '65802350_2521732411383150_97224238376681472_n.jpg', 92, 1, 0, 2, '', ''),
(733, '2020-12-08-21-16-50-120926396_2943560312533689_986114622886546254_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '120926396_2943560312533689_986114622886546254_n.jpg', 92, 1, 0, 5, '', ''),
(734, '2020-12-08-21-16-50-121103324_2947245115498542_5902158743251828445_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '121103324_2947245115498542_5902158743251828445_n.jpg', 92, 1, 0, 4, '', ''),
(735, '2020-12-08-21-16-50-128557274_2992523470970706_7224380001350970934_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '128557274_2992523470970706_7224380001350970934_o.jpg', 92, 1, 0, 1, '', ''),
(736, '2020-12-09-11-42-49-0b91cff2-2514-4832-b341-49ddc90fc1bd_d73d8fb761da4129afe46a20eba6edce_1024x1024.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '0b91cff2-2514-4832-b341-49ddc90fc1bd_d73d8fb761da4129afe46a20eba6edce_1024x1024.jpg', 93, 1, 0, 1, '', ''),
(737, '2020-12-09-11-42-49-5e62e6bc-b3b8-41f8-9696-0965cd0c46b2_e3276bfdb1dc4da78b6db8f7a00ba7bd_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '5e62e6bc-b3b8-41f8-9696-0965cd0c46b2_e3276bfdb1dc4da78b6db8f7a00ba7bd_master.jpg', 93, 0, 0, 2, '', ''),
(738, '2020-12-09-11-42-49-28a533fa-90b5-4ca0-bfd6-9885f1a65600_5eeae02dfb5840df80154b654be252ae_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '28a533fa-90b5-4ca0-bfd6-9885f1a65600_5eeae02dfb5840df80154b654be252ae_master.jpg', 93, 0, 0, 3, '', ''),
(739, '2020-12-09-11-42-49-8841bdec-3df3-4528-8076-a7fa6e7b8653_529e5eaaf39d44d8b7e7b282bb5c7a04_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '8841bdec-3df3-4528-8076-a7fa6e7b8653_529e5eaaf39d44d8b7e7b282bb5c7a04_master.jpg', 93, 0, 0, 4, '', ''),
(740, '2020-12-09-11-42-49-acfa7161-ce2f-4a35-9d10-8bcebf4d1212_6c5cd4dc003b4daebb614d4298532eca_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'acfa7161-ce2f-4a35-9d10-8bcebf4d1212_6c5cd4dc003b4daebb614d4298532eca_master.jpg', 93, 0, 0, 5, '', ''),
(741, '2020-12-09-11-42-50-b20d029e-09e5-494d-98f8-1a9b6faba2e3_bc1240a59cb44e038f97b5e3377d010d_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'b20d029e-09e5-494d-98f8-1a9b6faba2e3_bc1240a59cb44e038f97b5e3377d010d_master.jpg', 93, 0, 0, 6, '', ''),
(742, '2020-12-09-11-42-50-z2189610617976_2a23fc955a9f0bec687795812e3962e4_c3113505f7424924a74f74354ca389ae_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'z2189610617976_2a23fc955a9f0bec687795812e3962e4_c3113505f7424924a74f74354ca389ae_master.jpg', 93, 0, 0, 7, '', ''),
(743, '2020-12-09-12-06-20-88301395_510812416284456_224271063209476096_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '88301395_510812416284456_224271063209476096_o.jpg', 94, 1, 0, 1, '', ''),
(744, '2020-12-09-12-06-20-119583501_633404527358577_700888591379283594_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '119583501_633404527358577_700888591379283594_o.jpg', 94, 1, 0, 3, '', ''),
(745, '2020-12-09-12-06-20-119936774_637903563575340_5894079530507491893_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '119936774_637903563575340_5894079530507491893_o.jpg', 94, 1, 0, 4, '', ''),
(746, '2020-12-09-12-06-20-120352595_644382376260792_5804424440971434146_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '120352595_644382376260792_5804424440971434146_o.jpg', 94, 1, 0, 2, '', ''),
(747, '2020-12-09-12-06-20-125159087_678183896213973_1693770013834148191_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '125159087_678183896213973_1693770013834148191_o.jpg', 94, 1, 0, 5, '', ''),
(748, '2020-12-10-11-10-19-73076846_592743274769479_3160569056416117653_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '73076846_592743274769479_3160569056416117653_o.jpg', 95, 1, 0, 3, '', ''),
(749, '2020-12-10-11-10-19-90167293_534409600602847_5519865327137062912_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '90167293_534409600602847_5519865327137062912_n.jpg', 95, 1, 0, 1, '', ''),
(750, '2020-12-10-11-10-20-95367664_555857441791396_8674834275691921408_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '95367664_555857441791396_8674834275691921408_o.jpg', 95, 1, 0, 5, '', ''),
(752, '2020-12-10-11-10-20-104397143_582605395783267_5691003852610074253_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '104397143_582605395783267_5691003852610074253_o.jpg', 95, 1, 0, 2, '', ''),
(753, '2020-12-10-11-10-20-107459803_597472740963199_1642162747894873397_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '107459803_597472740963199_1642162747894873397_o.jpg', 95, 1, 0, 4, '', ''),
(754, '2020-12-10-11-10-20-109919268_601698897207250_5974096325931885606_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '109919268_601698897207250_5974096325931885606_o.jpg', 95, 1, 0, 6, '', ''),
(755, '2020-12-10-11-34-18-84509811_1337892099748217_8610304067106766848_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '84509811_1337892099748217_8610304067106766848_o.jpg', 96, 1, 0, 1, '', ''),
(756, '2020-12-10-11-34-18-90467079_1379570418913718_2134785517059833856_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '90467079_1379570418913718_2134785517059833856_o.jpg', 96, 1, 0, 3, '', ''),
(757, '2020-12-10-11-34-18-93376262_1397405753796851_2921654071494443008_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '93376262_1397405753796851_2921654071494443008_o.jpg', 96, 1, 0, 5, '', ''),
(758, '2020-12-10-11-34-18-93763489_1397406063796820_8002736137988734976_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '93763489_1397406063796820_8002736137988734976_o.jpg', 96, 1, 0, 4, '', ''),
(759, '2020-12-10-11-34-18-130250237_1605615116309246_7574978355265877757_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '130250237_1605615116309246_7574978355265877757_o.jpg', 96, 1, 0, 2, '', ''),
(760, '2020-12-10-11-53-38-76710700_738312676580837_4053434686213455872_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '76710700_738312676580837_4053434686213455872_o.jpg', 97, 1, 0, 4, '', ''),
(761, '2020-12-10-11-53-38-78092429_737746176637487_6456885706311598080_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '78092429_737746176637487_6456885706311598080_o.jpg', 97, 1, 0, 2, '', ''),
(762, '2020-12-10-11-53-38-116209502_920495508362552_6956054290759506455_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '116209502_920495508362552_6956054290759506455_o.jpg', 97, 1, 0, 3, '', ''),
(763, '2020-12-10-11-53-38-128141140_1013739355704833_1532597816157795608_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '128141140_1013739355704833_1532597816157795608_o.jpg', 97, 1, 0, 1, '', ''),
(764, '2020-12-11-15-24-42-126510325_3455553024670603_8683843705640607831_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '126510325_3455553024670603_8683843705640607831_o.jpg', 98, 1, 0, 2, '', ''),
(765, '2020-12-11-15-24-42-127100230_3456611154564790_8321154770672495212_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '127100230_3456611154564790_8321154770672495212_o.jpg', 98, 1, 0, 1, '', ''),
(766, '2020-12-11-15-24-43-127225898_3460067807552458_3484270608855703436_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '127225898_3460067807552458_3484270608855703436_o.jpg', 98, 1, 0, 3, '', ''),
(767, '2020-12-11-15-24-43-129428145_3468086800083892_2697195114287597817_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '129428145_3468086800083892_2697195114287597817_n.jpg', 98, 1, 0, 4, '', ''),
(768, '2020-12-11-18-14-03-119054558_675177419785481_8155037370919037073_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '119054558_675177419785481_8155037370919037073_o.jpg', 99, 1, 0, 1, '', ''),
(769, '2020-12-11-18-14-03-119114847_675176683118888_5452902876372548398_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '119114847_675176683118888_5452902876372548398_o.jpg', 99, 0, 0, 2, '', ''),
(770, '2020-12-11-18-14-03-120711338_692308371405719_4712085724477675731_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '120711338_692308371405719_4712085724477675731_o.jpg', 99, 0, 0, 3, '', ''),
(771, '2020-12-11-18-14-03-121556732_696827350953821_5267879578076732159_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '121556732_696827350953821_5267879578076732159_n.jpg', 99, 0, 0, 4, '', ''),
(772, '2020-12-11-18-14-03-122753213_711084339528122_4863207095434924694_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '122753213_711084339528122_4863207095434924694_n.jpg', 99, 0, 0, 5, '', ''),
(773, '2020-12-11-18-14-03-129784423_741778503125372_1610227593329545925_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '129784423_741778503125372_1610227593329545925_o.jpg', 99, 0, 0, 6, '', ''),
(774, '2020-12-11-18-47-33-Legumes-(1).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/png', 'Legumes (1).png', 100, 1, 0, 3, '', ''),
(775, '2020-12-11-18-47-33-Legumes-(2).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (2).png', 100, 1, 0, 4, '', ''),
(776, '2020-12-11-18-47-33-Legumes-(3).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (3).png', 100, 1, 0, 5, '', ''),
(777, '2020-12-11-18-47-33-Legumes-(4).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (4).png', 100, 1, 0, 6, '', ''),
(778, '2020-12-11-18-47-33-Legumes-(5).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (5).png', 100, 1, 0, 7, '', ''),
(779, '2020-12-11-18-47-33-Legumes-(6).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (6).png', 100, 1, 0, 1, '', ''),
(780, '2020-12-11-18-47-33-Legumes-(7).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (7).png', 100, 1, 0, 2, '', ''),
(781, '2020-12-11-18-47-33-Legumes-(8).png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Legumes (8).png', 100, 1, 0, 8, '', ''),
(782, '2020-12-11-19-01-12-95758201_115768686786570_3159376147641270272_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '95758201_115768686786570_3159376147641270272_o.jpg', 101, 1, 0, 1, '', ''),
(783, '2020-12-11-19-01-12-113047603_182941013402670_4341334234463867311_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '113047603_182941013402670_4341334234463867311_o.jpg', 101, 0, 0, 2, '', ''),
(784, '2020-12-11-19-01-12-118566887_196433762053395_8374794857232614958_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '118566887_196433762053395_8374794857232614958_o.jpg', 101, 0, 0, 3, '', ''),
(785, '2020-12-11-19-01-12-120902386_207877614242343_7542311564823901335_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '120902386_207877614242343_7542311564823901335_o.jpg', 101, 0, 0, 4, '', ''),
(786, '2020-12-14-16-55-45-06f0cbad1eb1e2efbba0.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '06f0cbad1eb1e2efbba0.jpg', 102, 1, 0, 2, '', ''),
(787, '2020-12-14-16-55-45-125487908_2476692712455840_2286971166531846206_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '125487908_2476692712455840_2286971166531846206_o.jpg', 102, 1, 0, 1, '', ''),
(788, '2020-12-14-16-55-45-128269063_2503826406409137_516885724961759107_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '128269063_2503826406409137_516885724961759107_o.jpg', 102, 1, 0, 5, '', ''),
(789, '2020-12-14-16-55-45-z2040474355937_1fba015cf52d607c61d96e60787d3105-1024x767.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'z2040474355937_1fba015cf52d607c61d96e60787d3105-1024x767.jpg', 102, 1, 0, 4, '', ''),
(790, '2020-12-14-16-55-45-z2195409944036_0ca71da7822d5bbc85ed94d3a480fb1f-e1606283587974-1024x768.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'z2195409944036_0ca71da7822d5bbc85ed94d3a480fb1f-e1606283587974-1024x768.jpg', 102, 1, 0, 3, '', ''),
(791, '2020-12-17-18-57-06-69217250_376198409727732_6429775438947549184_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '69217250_376198409727732_6429775438947549184_o.jpg', 103, 1, 0, 1, '', ''),
(792, '2020-12-17-18-57-06-81688881_448822925798613_2056714698224566272_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '81688881_448822925798613_2056714698224566272_o.jpg', 103, 0, 0, 2, '', ''),
(793, '2020-12-17-18-57-06-82807776_462656761081896_6521456450798092288_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '82807776_462656761081896_6521456450798092288_o.jpg', 103, 0, 0, 3, '', ''),
(794, '2020-12-17-18-57-06-118854409_607751093239128_433816381753852936_o-(1).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '118854409_607751093239128_433816381753852936_o (1).jpg', 103, 0, 0, 4, '', ''),
(795, '2020-12-17-18-57-06-127223172_664263684254535_6780446813557180207_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '127223172_664263684254535_6780446813557180207_o.jpg', 103, 0, 0, 5, '', ''),
(796, '2020-12-17-18-57-07-131325005_677135192967384_7078858140553676389_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '131325005_677135192967384_7078858140553676389_o.jpg', 103, 0, 0, 6, '', ''),
(797, '2020-12-24-14-17-46-dbdf.PNG', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/png', 'dbdf.PNG', 104, 1, 0, 1, '', ''),
(798, '2020-12-24-14-17-46-dsf.PNG', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'dsf.PNG', 104, 1, 0, 6, '', ''),
(799, '2020-12-24-14-17-47-sdf.PNG', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'sdf.PNG', 104, 1, 0, 2, '', ''),
(800, '2020-12-24-14-17-47-sdffs.PNG', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'sdffs.PNG', 104, 1, 0, 4, '', ''),
(801, '2020-12-24-14-17-47-sdfsdf.PNG', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'sdfsdf.PNG', 104, 1, 0, 5, '', ''),
(803, '2020-12-24-14-22-23-3.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/png', '3.png', 105, 1, 0, 1, '', ''),
(804, '2020-12-24-14-22-23-5.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', '5.png', 105, 0, 0, 2, '', ''),
(805, '2020-12-24-14-22-23-7.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', '7.png', 105, 0, 0, 3, '', ''),
(806, '2020-12-24-14-22-23-2020-3-BeAn13995.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '2020-3 BeAn13995.jpg', 105, 0, 0, 4, '', ''),
(807, '2020-12-24-14-22-23-DSC00018.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'DSC00018.jpg', 105, 0, 0, 5, '', ''),
(808, '2020-12-24-15-41-01-5d3-4507.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '5d3-4507.jpg', 106, 1, 0, 1, '', ''),
(809, '2020-12-24-15-41-01-35.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '35.jpg', 106, 0, 0, 2, '', ''),
(811, '2020-12-24-15-41-01-vntc-page-gt-img-07-1024x776.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'vntc-page-gt-img-07-1024x776.jpg', 106, 0, 0, 4, '', ''),
(812, '2020-12-24-16-30-40-42adb87b79bb094e1103321012da3719_0679239c3a6e4725b0b884f96048d5ce_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '42adb87b79bb094e1103321012da3719_0679239c3a6e4725b0b884f96048d5ce_master.jpg', 107, 1, 0, 1, '', ''),
(813, '2020-12-24-16-30-40-26910728_1819518738090500_3186386940481463454_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '26910728_1819518738090500_3186386940481463454_o.jpg', 107, 0, 0, 2, '', ''),
(814, '2020-12-24-16-30-40-27628925_1842641342444906_4457342689825442966_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '27628925_1842641342444906_4457342689825442966_o.jpg', 107, 0, 0, 3, '', ''),
(816, '2020-12-24-16-30-40-35414994_2032237330151972_6352989798881296384_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '35414994_2032237330151972_6352989798881296384_o.jpg', 107, 0, 0, 5, '', ''),
(817, '2020-12-24-16-30-40-75653284_3241785595863800_4480761946227867648_o_8376a0df61c445e3ab00abbaf7f9315d_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '75653284_3241785595863800_4480761946227867648_o_8376a0df61c445e3ab00abbaf7f9315d_master.jpg', 107, 0, 0, 6, '', ''),
(818, '2020-12-24-16-30-40-78392207_580275199391640_4821402352298754048_o_228165ce13db4a97b753be72b0a71f26_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '78392207_580275199391640_4821402352298754048_o_228165ce13db4a97b753be72b0a71f26_master.jpg', 107, 0, 0, 7, '', ''),
(819, '2020-12-24-16-30-40-ong_hut_inox_nho_363df33be4344a79ab465963ee32a67d_master.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', 'ong_hut_inox_nho_363df33be4344a79ab465963ee32a67d_master.jpg', 107, 0, 0, 8, '', ''),
(820, '2020-12-28-10-34-29-37960186_2145626262346941_3899368200646688768_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '37960186_2145626262346941_3899368200646688768_o.jpg', 108, 1, 0, 1, '', ''),
(821, '2020-12-28-10-34-29-131594180_2818915661684661_8604757548291236511_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '131594180_2818915661684661_8604757548291236511_o.jpg', 108, 0, 0, 2, '', ''),
(822, '2020-12-28-10-34-30-132002047_2823248537918040_8068742321756295913_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '132002047_2823248537918040_8068742321756295913_o.jpg', 108, 0, 0, 3, '', ''),
(823, '2020-12-28-10-49-27-86370479_3036333979756848_502699357624074240_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '86370479_3036333979756848_502699357624074240_o.jpg', 109, 1, 0, 1, '', ''),
(824, '2020-12-28-10-49-27-86697343_3036334186423494_8831804176330653696_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '86697343_3036334186423494_8831804176330653696_o.jpg', 109, 0, 0, 2, '', ''),
(825, '2020-12-28-10-12-49-129759446_3823377761052462_8376639953767436173_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '129759446_3823377761052462_8376639953767436173_o.jpg', 109, NULL, 0, 3, '', ''),
(826, '2020-12-28-10-12-49-130190325_3823378377719067_2876273877321860657_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '130190325_3823378377719067_2876273877321860657_o.jpg', 109, NULL, 0, 4, '', ''),
(827, '2020-12-28-10-12-49-132368800_3869626443094260_9195406199796187010_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '132368800_3869626443094260_9195406199796187010_o.jpg', 109, NULL, 0, 5, '', ''),
(828, '2020-12-28-11-00-11-86984359_1520765154769169_4339403736314019840_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '86984359_1520765154769169_4339403736314019840_n.jpg', 110, 1, 0, 1, '', ''),
(829, '2020-12-28-11-00-11-87053622_1520765184769166_7883873437762977792_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '87053622_1520765184769166_7883873437762977792_n.jpg', 110, 0, 0, 2, '', ''),
(830, '2020-12-28-11-00-11-87816838_1520765341435817_6415621661986390016_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '87816838_1520765341435817_6415621661986390016_n.jpg', 110, 0, 0, 3, '', ''),
(831, '2020-12-28-11-00-11-88074106_1520765244769160_1107561337086541824_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '88074106_1520765244769160_1107561337086541824_n.jpg', 110, 0, 0, 4, '', ''),
(832, '2021-02-17-17-52-06-136967762_441604553915630_1718327007941026160_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '136967762_441604553915630_1718327007941026160_n.jpg', 111, 1, 0, 1, '', ''),
(833, '2021-02-17-17-52-06-139868635_446252366784182_7528447453775611879_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '139868635_446252366784182_7528447453775611879_n.jpg', 111, 0, 0, 2, '', ''),
(834, '2021-02-17-17-52-06-140070353_446252413450844_5528729957110164648_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '140070353_446252413450844_5528729957110164648_n.jpg', 111, 0, 0, 3, '', ''),
(835, '2021-02-17-17-52-06-140453018_446252390117513_4046671729259023249_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '140453018_446252390117513_4046671729259023249_n.jpg', 111, 0, 0, 4, '', ''),
(836, '2021-03-03-10-46-37-93679841_1096526530713385_3466001838656978944_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '93679841_1096526530713385_3466001838656978944_o.jpg', 112, 1, 0, 4, '', ''),
(837, '2021-03-03-10-46-37-109831466_1164893547210016_5330469757646153639_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '109831466_1164893547210016_5330469757646153639_o.jpg', 112, 1, 0, 2, '', ''),
(838, '2021-03-03-10-46-37-120160163_1217822921917078_2470013578285481392_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '120160163_1217822921917078_2470013578285481392_o.jpg', 112, 1, 0, 5, '', ''),
(839, '2021-03-03-10-46-37-133525596_1294923244207045_1076510563011776233_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '133525596_1294923244207045_1076510563011776233_o.jpg', 112, 1, 0, 3, '', ''),
(841, '2021-03-03-10-46-37-154368297_1333987026967333_3535458561493465981_n.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '154368297_1333987026967333_3535458561493465981_n.jpg', 112, 1, 0, 1, '', ''),
(842, '2021-03-22-11-43-30-131535371_844840486090207_3651813487803973675_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '131535371_844840486090207_3651813487803973675_o.jpg', 113, 1, 0, 1, '', ''),
(843, '2021-03-22-11-43-30-150590713_880621769178745_453779665739386636_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '150590713_880621769178745_453779665739386636_o.jpg', 113, 0, 0, 2, '', ''),
(844, '2021-03-22-11-43-30-Screenshot_3.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Screenshot_3.png', 113, 0, 0, 3, '', ''),
(845, '2021-03-22-11-43-30-Screenshot_5.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Screenshot_5.png', 113, 0, 0, 4, '', ''),
(846, '2021-03-22-11-43-30-Screenshot_6.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Screenshot_6.png', 113, 0, 0, 5, '', ''),
(847, '2021-03-22-11-43-30-Screenshot_7.png', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/png', 'Screenshot_7.png', 113, 0, 0, 6, '', ''),
(848, '2021-03-22-11-51-50-123307663_1533958393454582_7711845660982980134_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '123307663_1533958393454582_7711845660982980134_o.jpg', 114, 1, 0, 2, '', ''),
(849, '2021-03-22-11-51-50-128612341_1564862363697518_5986806981608876608_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '128612341_1564862363697518_5986806981608876608_o.jpg', 114, 1, 0, 3, '', ''),
(850, '2021-03-22-11-51-50-129619073_1564862430364178_6323392245057628085_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '129619073_1564862430364178_6323392245057628085_o.jpg', 114, 1, 0, 4, '', '');
INSERT INTO `items` (`id`, `name`, `url`, `cover_image`, `file_ext`, `old_name`, `gallery_id`, `thumb_nails`, `active_status`, `display_order`, `description`, `title`) VALUES
(851, '2021-03-22-11-51-50-133186419_1580118938838527_5271244847356328751_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '133186419_1580118938838527_5271244847356328751_o.jpg', 114, 1, 0, 5, '', ''),
(852, '2021-03-22-11-51-50-144700201_1609653805885040_4673246342454918075_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '144700201_1609653805885040_4673246342454918075_o.jpg', 114, 1, 0, 1, '', ''),
(853, '2021-03-22-11-51-50-150304652_1620458134804607_4606795476664909887_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '150304652_1620458134804607_4606795476664909887_o.jpg', 114, 1, 0, 6, '', ''),
(854, '2021-03-22-12-02-43-145462314_115569223821087_6805733192525695762_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '145462314_115569223821087_6805733192525695762_o.jpg', 115, 1, 0, 2, '', ''),
(855, '2021-03-22-12-02-43-150552662_118963603481649_1587220054413921631_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '150552662_118963603481649_1587220054413921631_o.jpg', 115, 1, 0, 3, '', ''),
(856, '2021-03-22-12-02-43-152339820_121129319931744_6011917918237529441_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '152339820_121129319931744_6011917918237529441_o.jpg', 115, 1, 0, 1, '', ''),
(857, '2021-03-22-12-02-43-156042233_126656792712330_3514516507961089245_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '156042233_126656792712330_3514516507961089245_o.jpg', 115, 1, 0, 4, '', ''),
(858, '2021-03-22-12-02-43-157543141_128621572515852_3646547329655390617_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '157543141_128621572515852_3646547329655390617_o.jpg', 115, 1, 0, 5, '', ''),
(859, '2021-03-22-16-33-06-119980746_2803223483246668_2353299492583632785_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '119980746_2803223483246668_2353299492583632785_o.jpg', 116, 1, 0, 1, '', ''),
(860, '2021-03-22-16-33-06-120132344_2803223309913352_5605365895420621389_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '120132344_2803223309913352_5605365895420621389_o.jpg', 116, 0, 0, 2, '', ''),
(861, '2021-03-22-16-33-06-121245875_2841070162795333_8471290393480148762_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '121245875_2841070162795333_8471290393480148762_o.jpg', 116, 0, 0, 3, '', ''),
(862, '2021-03-22-16-33-06-121568641_2833268670242149_145353345946156975_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '121568641_2833268670242149_145353345946156975_o.jpg', 116, 0, 0, 4, '', ''),
(863, '2021-03-22-16-33-06-123014364_2868751733360509_5080651140180847170_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '123014364_2868751733360509_5080651140180847170_o.jpg', 116, 0, 0, 5, '', ''),
(864, '2021-03-22-16-33-06-130551105_2905474736354875_2264807771325412123_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '130551105_2905474736354875_2264807771325412123_o.jpg', 116, 0, 0, 6, '', ''),
(865, '2021-03-26-18-03-57-6.-Cafe-Luia-(1).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '6. Cafe Luia (1).jpg', 4, NULL, 0, 1, '', ''),
(866, '2021-03-26-18-03-57-6.-Cafe-Luia-(2).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '6. Cafe Luia (2).jpg', 4, NULL, 0, 2, '', ''),
(867, '2021-03-26-18-03-57-6.-Cafe-Luia-(3).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '6. Cafe Luia (3).jpg', 4, NULL, 0, 3, '', ''),
(868, '2021-03-26-18-03-57-6.-Cafe-Luia-(4).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '6. Cafe Luia (4).jpg', 4, NULL, 0, 4, '', ''),
(869, '2021-03-26-18-03-57-6.-Cafe-Luia-(5).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '6. Cafe Luia (5).jpg', 4, NULL, 0, 5, '', ''),
(870, '2021-03-26-18-03-57-6.-Cafe-Luia-(6).jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', NULL, 'image/jpeg', '6. Cafe Luia (6).jpg', 4, NULL, 0, 6, '', ''),
(871, '2021-03-26-19-55-15-12032798_500601703422933_6222108780798232119_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 1, 'image/jpeg', '12032798_500601703422933_6222108780798232119_o.jpg', 117, 1, 0, 1, '', ''),
(872, '2021-03-26-19-55-15-56470373_1191949054288191_178912931503669248_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '56470373_1191949054288191_178912931503669248_o.jpg', 117, 0, 0, 2, '', ''),
(873, '2021-03-26-19-55-15-158073949_1796989127117511_4993253328469090293_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '158073949_1796989127117511_4993253328469090293_o.jpg', 117, 0, 0, 3, '', ''),
(874, '2021-03-26-19-55-15-162494665_1808023962680694_6310869659858285490_o.jpg', '/home/creativ1/gozerowaste.vn/protected/../uploads/gallery/', 0, 'image/jpeg', '162494665_1808023962680694_6310869659858285490_o.jpg', 117, 0, 0, 4, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `large_photo` varchar(128) NOT NULL,
  `organiser` varchar(64) NOT NULL,
  `date` varchar(128) NOT NULL,
  `link` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `news_category_id`, `name`, `photo`, `large_photo`, `organiser`, `date`, `link`, `short_description`, `description`, `address`, `status`, `added_date`) VALUES
(1, 1, 'Workshop Phòng Tắm Không Rác', '2020-11-19-18-03-38-126003587-1070851180014636-6793261856527099157-o.jpg', '2020-11-19-18-03-38-126003587-1070851180014636-6793261856527099157-o.jpg', 'Hali Campaign và Limart - Zero waste', '9-11h, 22/11/2020 ', 'https://www.facebook.com/events/406342850734203/', 'Buổi workshop xoay quanh chủ đề: \"Làm thế nào để bạn có một phòng tắm chuẩn xanh từ những vật dụng mà bạn không ngờ đến\"', '<p>Đ&acirc;y l&agrave; buổi workshop xoay quanh chủ đề: &quot;L&agrave;m thế n&agrave;o để bạn c&oacute; một ph&ograve;ng tắm chuẩn xanh từ những vật dụng m&agrave; bạn kh&ocirc;ng ngờ đến, hướng tới một lối sống sinh th&aacute;i c&ocirc;ng bằng hơn với m&ocirc;i trường v&agrave; sức khỏe ch&uacute;ng ta.&quot;<br />\r\n<br />\r\nC&aacute;c hoạt động sẽ diễn ra trong sự kiện:<br />\r\n<br />\r\n- T&igrave;m hiểu về lối sống xanh, l&agrave;m sao để chuyển dần sang lối sống kh&ocirc;ng t&aacute;c thải nhẹ nh&agrave;ng v&agrave; an nhi&ecirc;n hơn.<br />\r\n- V&ograve;ng quay may mắn (phần qu&agrave; l&agrave; c&aacute;c phần qu&agrave; l&agrave; c&aacute;c vật dụng trong nh&agrave; tắm kh&ocirc;ng r&aacute;c thải, th&acirc;n thiện với m&ocirc;i trường)<br />\r\n- Game trải nghiệm để cảm nhận được lợi &iacute;ch của một ph&ograve;ng tắm kh&ocirc;ng r&aacute;c thải<br />\r\n<br />\r\nĐẶC BIỆT<br />\r\n<br />\r\nC&aacute;c th&agrave;nh vi&ecirc;n tham dự nếu c&oacute; thể h&atilde;y mang theo hộp xốp đ&atilde; qua sử dụng để c&ugrave;ng nhau tham gia t&aacute;i chế th&agrave;nh những vật dụng cần thiết m&agrave; bạn kh&ocirc;ng ngờ đến (đừng mua mới m&agrave; c&oacute; thể xin người th&acirc;n bạn b&egrave; c&aacute;c bạn nhenn)<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m <a href=\"https://www.facebook.com/events/406342850734203/\">tại </a>đ&acirc;y.<br />\r\n<br />\r\nLink đăng k&yacute;:<br />\r\n<a href=\"https://forms.gle/JFxCmX19w7eMfSDa9?fbclid=IwAR3Ntkd1qvkKhFSzSQ_n24BOkjGn8mlcxGV3XG9mJfiXFCtX6Hkcb_uqySE\" target=\"_blank\">https://forms.gle/JFxCmX19w7eMfSDa9</a></p>\r\n', 'Cafe Monkey In Black, 698 Sư Vạn Hạnh, Quận 10, TPHCM', 0, '2020-12-04 19:12:16'),
(2, 2, 'Tetra Pak thu gom tái chế vỏ hộp sữa', '2020-10-28-21-44-18-3646-photo.jpg', '2020-10-27-12-15-16-f4d5962e-5be2-4f0d-9a7f-579ec00d8dec.jpg', 'Tetra Pak', '30/10/2019 - hiện tại', 'https://nguoidothi.net.vn/tai-che-rac-thai-bang-du-an-ngoi-nha-vo-hop-giay-21690.html', 'Tetra Pak mở rộng chương trình thu gom tái chế vỏ hộp sữa, với 4 ngôi nhà vỏ hộp giấy ở các siêu thị LOTTE Mart ở SG', '<p>C&ugrave;ng với c&ocirc;ng ty Cổ phần Trung t&acirc;m Thương mại LOTTE Việt Nam v&agrave; NHC &ndash; H&agrave;nh tr&igrave;nh giải cứu r&aacute;c chết, Tetra Pak sẽ đặt 4 ng&ocirc;i nh&agrave; vỏ hộp giấy tại c&aacute;c si&ecirc;u thị LOTTE Mart ở Nam S&agrave;i G&ograve;n, Ph&uacute; Thọ, T&acirc;n B&igrave;nh v&agrave; G&ograve; Vấp, để người ti&ecirc;u d&ugrave;ng c&oacute; thể mang c&aacute;c vỏ hộp giấy đựng đồ uống đ&atilde; qua sử dụng tới thu gom v&agrave; t&aacute;i chế.<br />\r\n<br />\r\nNg&ocirc;i nh&agrave; vỏ hộp giấy được sản xuất từ chất liệu t&aacute;i chế l&agrave; vỏ hộp giấy, th&acirc;n thiện với m&ocirc;i trường, l&agrave; nơi hướng dẫn người ti&ecirc;u d&ugrave;ng v&agrave; thu hồi vỏ hộp giấy đựng đồ uống đ&atilde; qua sử dụng để t&aacute;i chế th&agrave;nh những sản phẩm phục vụ trong cuộc sống hằng ng&agrave;y.<br />\r\n<br />\r\nXem th&ecirc;m tại <a href=\"https://nguoidothi.net.vn/tai-che-rac-thai-bang-du-an-ngoi-nha-vo-hop-giay-21690.html\" target=\"_blank\">đ&acirc;y</a>.</p>\r\n', 'LOTTE Mart Nam Sài Gòn, Phú Thọ, Tân Bình và Gò Vấp', 0, '0000-00-00 00:00:00'),
(5, 2, 'Sản phẩm Made by Google được làm từ vật liệu tái chế', '2020-10-27-11-33-47-acastro-191014-1777-google-pixel-0005-0-0.jpg', '2020-10-27-11-33-47-thiet-bi-google-tai-che-techtimes.jpg', 'Google', '', 'https://www.theverge.com/2020/10/26/21534337/made-by-google-recycle-sustainable-pixel-nest', 'Google đang thực hiện kế hoạch “xanh hóa” 100% xanh hóa hệ sinh thái thiết bị vào năm 2020 thông qua việc sử dụng các vật liệu tái chế, bắt đầu ở 2 dòng Pixel và Nest.', '<p>Google đang thực hiện kế hoạch &ldquo;xanh h&oacute;a&rdquo; 100% xanh h&oacute;a hệ sinh th&aacute;i thiết bị v&agrave;o năm 2020 th&ocirc;ng qua việc sử dụng c&aacute;c vật liệu t&aacute;i chế. Thế nhưng ngay trong năm nay, Google th&ocirc;ng b&aacute;o, h&atilde;ng đ&atilde; được một bước tiến nhất định trong dự định n&oacute;i tr&ecirc;n ở hai d&ograve;ng thiết bị: Pixel v&agrave; Nest.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cụ thể, phần mặt lưng của chiếc Pixel 5 được l&agrave;m 100% từ nh&ocirc;m t&aacute;i chế. Trong khi đ&oacute;, c&aacute;c bộ loa th&ocirc;ng minh Nest 70% l&agrave;m từ nhựa t&aacute;i chế với lớp phủ b&ecirc;n ngo&agrave;i l&agrave; từ vải. Thiết bị điều khiển nhiệt độ th&ocirc;ng minh &ndash; Nest Thermostat cũng được Google l&agrave;m phần gi&aacute; treo từ nhựa t&aacute;i chế.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.theverge.com/2020/10/26/21534337/made-by-google-recycle-sustainable-pixel-nest\" target=\"_blank\">đ&acirc;y</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, '0000-00-00 00:00:00'),
(6, 2, 'Dịch vụ subscription giày \"Cyclon\" giảm hao phí', '2020-10-27-11-43-33-2540x1693-single-image-1.jpg', '2020-10-27-11-43-33-2540x1693-single-image-6.jpg', 'On', '', 'https://www.on-running.com/en-us/cyclon', 'Hãng giày chạy bộ Thụy Sĩ ON quyết tuyên chiến với rác thải và hao phí tài nguyên với \"Cyclon\", dịch vụ thuê giày hàng tháng', '<p>Mỗi năm, h&agrave;ng triệu đ&ocirc;i gi&agrave;y hỏng bị bỏ đi một c&aacute;ch ph&iacute; phạm. H&atilde;ng gi&agrave;y chạy bộ Thụy Sĩ ON quyết tuy&ecirc;n chiến với điều đ&oacute; khi tung ra &quot;Cyclon&quot;. Với Cyclon, bạn sẽ kh&ocirc;ng thể sở hữu n&oacute; m&agrave; chỉ c&oacute; thể &quot;thu&ecirc;&quot; h&agrave;ng th&aacute;ng.<br />\r\n<br />\r\nKhi gi&agrave;y đ&atilde; m&ograve;n cũ, bạn trả gi&agrave;y lại ON v&agrave; nhận đ&ocirc;i mới. ON cam kết t&aacute;i chế n&oacute; th&agrave;nh gi&agrave;y mới v&agrave; đưa lại v&agrave;o hệ thống. Đ&acirc;y l&agrave; nỗ lực ki&ecirc;n quyết đầu ti&ecirc;n để giảm hao ph&iacute; t&agrave;i nguy&ecirc;n v&agrave; r&aacute;c thải ra m&ocirc;i trường.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.on-running.com/en-us/cyclon\" target=\"_blank\">đ&acirc;y</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 0, '0000-00-00 00:00:00'),
(7, 2, 'Starbucks thử nghiệm nắp mới giúp giảm thiểu ống hút', '2020-10-27-12-19-58-190321082534-20190321-starbucks-compostable-cups-super-tease.jpg', '2020-10-27-11-50-24-f6a85d3b36fa45e8a2e7034bbafba7b3.jpg', 'Starbucks', '', 'https://stories.starbucks.ca/en/stories/2019/greener-cups-and-fewer-straws-at-starbucks-canada/', 'Starbucks ở Canada đang thử nghiệm loại nắp mới chắc chắn hơn, giúp giảm thiểu việc sử dụng ống hút', '<p>Starbucks ở Canada đang thử nghiệm loại nắp mới chắc chắn hơn, gi&uacute;p giảm thiểu việc sử dụng ống h&uacute;t v&agrave; dự định sẽ &aacute;p dụng cho to&agrave;n bộ chi nh&aacute;nh tr&ecirc;n thế giới v&agrave;o năm 2022.<br />\r\n<br />\r\nXem th&ecirc;m tại <a href=\"https://stories.starbucks.ca/en/stories/2019/greener-cups-and-fewer-straws-at-starbucks-canada/\" target=\"_blank\">đ&acirc;y</a>.</p>\r\n', '', 0, '0000-00-00 00:00:00'),
(8, 2, 'NIVEA thử nghiệm trạm refill xà phòng ', '2020-10-27-14-44-10-refill-station-jpeg.jpg', '2020-10-27-14-44-10-nivea-launches-first-shower-gel-refill-station-5-5f33eed7bb658.jpg', 'NIVEA', '', 'https://www.designboom.com/design/nivea-launches-first-shower-gel-refill-station-08-13-2020/', 'NIVEA thử nghiệm trạm refill xà phòng, khách hàng có thể đem chai cũ của mình tới siêu thị, scan QR code để refill và trả tiền. Mô hình này sẽ giúp giảm lượng chai nhựa bị thải ra môi trường rất rất nhiều!', '<p>NIVEA thử nghiệm trạm refill x&agrave; ph&ograve;ng, kh&aacute;ch h&agrave;ng c&oacute; thể đem chai cũ của m&igrave;nh tới si&ecirc;u thị, scan QR code để refill v&agrave; trả tiền. M&ocirc; h&igrave;nh n&agrave;y sẽ gi&uacute;p giảm lượng chai nhựa bị thải ra m&ocirc;i trường rất rất nhiều!<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.designboom.com/design/nivea-launches-first-shower-gel-refill-station-08-13-2020/\" target=\"_blank\">đ&acirc;y</a>.</p>\r\n', '', 0, '0000-00-00 00:00:00'),
(9, 2, 'Bàn chải Ecolo Clean từ 100% nhựa tái chế', '2020-10-27-14-51-53-unilever-launches-recycled-plastic-toothbrush-in-france.jpg', '2020-10-27-14-51-53-unilever-launches-recycled-plastic-toothbrush-in-france.jpg', 'Unilever', '', 'https://www.unilever.com/news/news-and-features/Feature-article/2020/meet-unilevers-first-100-recycled-plastic-toothbrush.html', 'Unilever và Signal tung ra bàn chải Ecolo Clean làm từ 100% nhựa tái chế, với bao bì cũng bằng giấy tái chế luôn', '<p>Unilever v&agrave; Signal (P/S ở nước ngo&agrave;i) tung ra b&agrave;n chải Ecolo Clean l&agrave;m từ 100% nhựa t&aacute;i chế, với bao b&igrave; cũng bằng giấy t&aacute;i chế lu&ocirc;n.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; bước đầu trong chiến lược tạo ra nền kinh tế tuần ho&agrave;n giảm r&aacute;c nhựa của Unilever, với 3 mục ti&ecirc;u: no plastic (cho hộp đựng), less plastic (thiết kế gọn v&agrave; th&ocirc;ng minh), and better plastic (vật liệu nhựa t&aacute;i chế).<br />\r\n<br />\r\nXem th&ecirc;m tại <a href=\"https://www.unilever.com/news/news-and-features/Feature-article/2020/meet-unilevers-first-100-recycled-plastic-toothbrush.html\" target=\"_blank\">đ&acirc;y</a>.</p>\r\n', '', 0, '0000-00-00 00:00:00'),
(10, 2, '“Ngày hội Nhặt rác & Trồng cây” ở AEON Mall Hà Đông', '2020-11-27-12-07-45-dsc02801-1024x684.jpg', '2020-11-27-12-07-45-dsc02815-scaled-1-1024x684.jpg', 'AEON Mall', '', 'https://aeonmall-vietnam.com/vi/gin-giu-moi-truong-xanh-sach-dep-cung-aeon-mall-ha-dong/', 'AEON MALL Hà Đông, tiếp tục chung tay trồng thêm các cây mới, chăm sóc cây cũ, và dọn dẹp vệ sinh khu vực xung quanh TTTM.', '<p>Tham gia&ldquo;Ng&agrave;y hội Nhặt r&aacute;c &amp; Trồng c&acirc;y&rdquo; tại AEON MALL H&agrave; Đ&ocirc;ng, hơn 100 c&aacute;n bộ nh&acirc;n vi&ecirc;n văn ph&ograve;ng vận h&agrave;nh TTTM AEON MALL H&agrave; Đ&ocirc;ng, AEON H&agrave; Đ&ocirc;ng, AEON Delight, v&agrave; h&agrave;ng chục nh&acirc;n vi&ecirc;n c&aacute;c gian h&agrave;ng đ&atilde; chung tay trồng hơn 130 c&acirc;y xanh, b&oacute;n ph&acirc;n v&agrave; tưới nước cho 5000 c&acirc;y được trồng trước khi mở cửa TTTM.<br />\r\n\r\n<br />Kh&ocirc;ng chỉ vậy, kết hợp c&ugrave;ng ng&agrave;y nhặt r&aacute;c &ldquo;Cleaning Day&rdquo; v&agrave;o mỗi thứ 6 cuối c&ugrave;ng của th&aacute;ng tại TTTM AEON MALL H&agrave; Đ&ocirc;ng, c&aacute;c nh&acirc;n vi&ecirc;n đ&atilde; c&ugrave;ng nhau dọn dẹp, nhặt r&aacute;c khu vực xung quanh TTTM. Chỉ trong một buổi s&aacute;ng, lượng r&aacute;c được nhặt v&agrave; ph&acirc;n loại l&agrave; gần 62.5 kg.</p>\r\n', 'AEON Mall Hà Đông', 0, '2020-12-01 16:12:13'),
(11, 2, ' Sự kiện Tuần lễ Công trình Xanh Việt Nam năm 2020', '2020-11-27-12-13-59-tuan-le-cong-trinh-xanh-viet-nam-2020.jpg', '2020-11-27-12-13-59-tuan-le-cong-trinh-xanh-viet-nam-2020.jpg', 'Bộ Xây Dựng và UNDP', '9-11/12/2020', 'https://baoquocte.vn/sap-dien-ra-tuan-le-cong-trinh-xanh-viet-nam-2020-129803.html', 'Bộ Xây dựng phối hợp với Chương trình Phát triển Liên hợp quốc (UNDP) tổ chức Sự kiện Tuần lễ Công trình Xanh Việt Nam năm 2020.', '<p>Nằm trong chuỗi c&aacute;c hoạt động hưởng ứng Tuần lễ C&ocirc;ng tr&igrave;nh Xanh thế giới từ th&aacute;ng 9-12/2020, từ 9-11/12, tại H&agrave; Nội, Bộ X&acirc;y dựng sẽ phối hợp với Chương tr&igrave;nh Ph&aacute;t triển Li&ecirc;n hợp quốc (UNDP) tổ chức Sự kiện Tu&acirc;̀n l&ecirc;̃ C&ocirc;ng trình Xanh Vi&ecirc;̣t Nam năm 2020.<br />\r\n<br />Mục đích của Tu&acirc;̀n l&ecirc;̃ C&ocirc;ng trình Xanh Vi&ecirc;̣t Nam năm 2020 nhằm tạo ra m&ocirc;̣t diễn đ&agrave;n chia sẻ, trao đổi th&ocirc;ng tin, kinh nghiệm về x&acirc;y dựng cơ chế ch&iacute;nh s&aacute;ch; c&aacute;c c&ocirc;ng nghệ, sản phẩm, thiết bị, vật liệu mới nhằm ph&aacute;t triển c&ocirc;ng tr&igrave;nh xanh, c&ocirc;ng tr&igrave;nh hiệu quả năng lượng, th&uacute;c đẩy c&aacute;c dự &aacute;n ph&aacute;t triển đ&ocirc; thị theo hướng giảm t&aacute;c động đến m&ocirc;i trường, giảm ph&aacute;t thải kh&iacute; nh&agrave; k&iacute;nh, sử dụng tiết kiệm, hiệu quả t&agrave;i nguy&ecirc;n.<br />\r\n<br />Sự ki&ecirc;̣n cũng th&ecirc;̉ hi&ecirc;̣n nỗ lực v&agrave; h&agrave;nh động cụ thể của Việt Nam trong việc g&oacute;p phần thực hi&ecirc;̣n các cam k&ecirc;́t qu&ocirc;́c t&ecirc;́ v&ecirc;̀ ứng ph&oacute; với biển đổi kh&iacute; hậu v&agrave; ph&aacute;t triển bền vững. Đ&acirc;y l&agrave; bước khởi đầu đặt nền m&oacute;ng đ&ecirc;̉ Tu&acirc;̀n l&ecirc;̃ C&ocirc;ng trình Xanh Vi&ecirc;̣t Nam trở th&agrave;nh sự kiện thường ni&ecirc;n của ng&agrave;nh X&acirc;y dựng.</p>\r\n', '', 0, '2020-12-01 16:12:59'),
(12, 1, 'Phiên chợ LẠI ĐÂY mua đồ cũ Giáng Sinh', '2020-11-27-12-20-20-121259000-774281996760898-122620225707383464-o.jpg', '2020-11-27-12-20-20-121259000-774281996760898-122620225707383464-o.jpg', 'Lại Đây Refill Station và Toong (Phạm Ngọc Thạch)', '9-16h, 28/11/2020', 'https://www.facebook.com/events/825796614834171/?acontext=%7B%22event_action_history%22%3A[%7B%22mechanism%22%3A%22search_results%22%2C%22surface%22%3A%22search%22%7D]%7D', 'Chủ đề \"đồ cũ\" của phiên chợ này: \"GIÁNG SINH\" (Quần áo, phụ kiện, giày dép, quà tặng, nghệ thuật, trang trí...)', '<p>Phi&ecirc;n chợ LẠI Đ&Acirc;Y MUA ĐỒ CŨ GI&Aacute;NG SINH 28/11/2020<br />\r\n<br />\r\nChủ đề &quot;đồ cũ&quot; của phi&ecirc;n chợ n&agrave;y: &quot;GI&Aacute;NG SINH&quot; (Quần &aacute;o, phụ kiện, gi&agrave;y d&eacute;p, qu&agrave; tặng, nghệ thuật, trang tr&iacute;...)<br />\r\n<br />\r\nC&Oacute; G&Igrave; ĐỂ MUA Ở PHI&Ecirc;N CHỢ LẠI Đ&Acirc;Y MUA ĐỒ?<br />\r\nPhi&ecirc;n chợ Lại Đ&acirc;y Mua Đồ sẽ c&oacute; khoảng 20 - 40 gian h&agrave;ng, trong một kh&ocirc;ng gian rất đẹp, ngay trung t&acirc;m Tp.HCM tr&ecirc;n con đường trung t&acirc;m &quot;Phạm Ngọc Thạch&quot; nhiều c&acirc;y xanh, chắc sẽ đủ cho nhu cầu t&igrave;m kiếm một thứ g&igrave; đ&oacute; &ldquo;cũ người mới ta&rdquo; cho bạn. D&ugrave; l&agrave; &ldquo;cũ người mới ta&rdquo; nhưng Lại Đ&acirc;y cố gắng lựa chọn c&aacute;c m&oacute;n đồ, gian h&agrave;ng c&oacute; những n&eacute;t đặc sắc, đẹp, phong c&aacute;ch kh&aacute;c nhau, cho sự đa dạng v&agrave; c&oacute; gu nh&eacute;.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/825796614834171/?acontext=%7B%22event_action_history%22%3A[%7B%22mechanism%22%3A%22search_results%22%2C%22surface%22%3A%22search%22%7D]%7D\">đ&acirc;y</a> nha.</p>\r\n', 'Toong (1 bis Phạm Ngọc Thạch, P. Bến Nghé, Q1)', 0, '2020-12-04 19:12:46'),
(13, 2, 'Trường tiểu học VAS và dự án môi trường \"3Rs\"', '2020-11-27-12-30-59-screenshot-4.jpg', '2020-12-01-16-00-34-screenshot-3.jpg', 'VAS', '', 'https://www.vas.edu.vn/news/vasers-tiep-tuc-hanh-trinh-song-xanh-voi-du-an-moi-truong-3rs-nam-hoc-2020-2021', 'VASers tiếp tục hành trình sống xanh với dự án môi trường \"3Rs\" năm học 2020 – 2021', '<p>Năm học 2019 &ndash; 2020 đ&aacute;nh dấu năm đầu ti&ecirc;n VAS ch&iacute;nh thức triển khai dự &aacute;n m&ocirc;i trường 3Rs (Reduce &ndash; Reuse &ndash; Recycle) với những hiệu quả t&iacute;ch cực v&agrave; sự hưởng ứng, tham gia của đ&ocirc;ng đảo học sinh c&aacute;c cấp tr&ecirc;n to&agrave;n hệ thống. Năm nay, đi c&ugrave;ng với mục ti&ecirc;u &ldquo;Ph&aacute;t triển Bền vững&rdquo; v&agrave; tiếp nối những th&agrave;nh quả m&agrave; cộng đồng VAS đ&atilde; đạt được trong &ldquo;Năm học Xanh&rdquo; vừa qua, dự &aacute;n 3Rs sẽ tiếp tục được triển khai v&agrave; sẽ trở th&agrave;nh một hoạt động thường ni&ecirc;n của VAS trong những năm tới.<br />\r\n<br />Tham gia dự &aacute;n, c&aacute;c VASers sẽ tiếp tục thể hiện sự quan t&acirc;m v&agrave; tr&aacute;ch nhiệm của một người c&ocirc;ng d&acirc;n to&agrave;n cầu đối với m&ocirc;i trường, đồng thời thực hiện c&aacute;c giải ph&aacute;p s&aacute;ng tạo để giảm thiểu r&aacute;c thải v&agrave; hướng đến sự ph&aacute;t triển bền vững của Tr&aacute;i đất.</p>\r\n', '', 0, '2020-12-01 16:12:46'),
(14, 1, 'Workshop Chiếc Ví Đầu Tay', '2020-11-27-12-36-13-screenshot-6.jpg', '2020-11-27-12-35-24-screenshot-5.jpg', 'Vuông Shop', '13h30, 28-29/11/2020', 'https://www.facebook.com/events/124643175917324/', 'Workshop sẽ hướng dẫn các bạn làm chiếc ví da bằng tay, với chất liệu da bò thật, và form ví đơn giản, công năng sử dụng nhiều nhưng không quá khó thực hiện.', '<p>Workshop tiếp theo Vu&ocirc;ng sẽ hướng dẫn c&aacute;c bạn l&agrave;m chiếc v&iacute; da bằng tay, với chất liệu da b&ograve; thật, v&agrave; form v&iacute; đơn giản, c&ocirc;ng năng sử dụng nhiều nhưng kh&ocirc;ng qu&aacute; kh&oacute; thực hiện.<br />\r\n<br />\r\nBạn sẽ c&oacute; một kh&ocirc;ng gian đầy thư gi&atilde;n v&agrave; thảnh thơi, c&ugrave;ng nhau tr&ograve; chuyện về ngh&agrave;nh da v&agrave; l&agrave;m ra chiếc v&iacute; của ri&ecirc;ng m&igrave;nh.<br />\r\n<br />\r\nC&oacute; 2 khung giờ để bạn tham gia: Thứ 7, 28/11 chiều 1h30 | Chủ nhật, 29/11 chiều 1h30<br />\r\n<br />\r\nPh&iacute; tham gia: 248.000<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/124643175917324/\">đ&acirc;y</a> nha.</p>\r\n', '7A/33/58 Thành Thái, Phường 14, Quận 10, TPHCM', 0, '2020-12-04 19:12:28'),
(15, 1, '[Art workshop] Nghệ thuật biết ơn', '2020-11-27-12-40-25-screenshot-7.jpg', '2020-11-27-21-12-46-art.jpg', 'Smart Homeschool', '9-11h, 28/11/2020 ', 'https://www.facebook.com/events/372507874013135', 'Không gian sáng tạo cùng màu sắc và vật liệu tự nhiên dành cho trẻ em từ 5 - 10 tuổi', '<p>Chuỗi workshop &quot;Nghệ thuật biết ơn&quot; l&agrave;:<br />\r\n. Kh&ocirc;ng gian s&aacute;ng tạo c&ugrave;ng m&agrave;u sắc v&agrave; vật liệu tự nhi&ecirc;n d&agrave;nh cho trẻ em từ 5 - 10 tuổi.<br />\r\n. S&acirc;n chơi tuổi thơ, kh&ocirc;ng c&oacute; xấu - đẹp, kh&ocirc;ng c&oacute; sai - đ&uacute;ng, chỉ c&oacute; những t&igrave;nh cảm y&ecirc;u - thương - biết ơn được c&aacute;c em thể hiện qua c&aacute;c tặng phẩm nghệ thuật.<br />\r\n<br />\r\nTh&ocirc;ng tin chương tr&igrave;nh:</p>\r\n\r\n<p>9h -11h Thứ Bảy (28/11, 05/12 v&agrave; 12/12)<br />\r\n36/31 Nguyễn Gia Tr&iacute;, Phường 25, Quận B&igrave;nh Thạnh, TP. HCM<br />\r\n<br />\r\nNội dung:<br />\r\n. Tuần 1 - &quot;H&ograve;n sỏi biết ơn&quot;: B&eacute; trang tr&iacute; vi&ecirc;n sỏi nghệ thuật để gửi gắm lời c&aacute;m ơn đến người th&acirc;n, đến thi&ecirc;n nhi&ecirc;n...</p>\r\n\r\n<p>. Tuần 2 - &quot;Gia đ&igrave;nh th&acirc;n y&ecirc;u&quot;: B&eacute; vẽ h&igrave;nh ảnh những người th&acirc;n y&ecirc;u trong gia đ&igrave;nh m&igrave;nh tr&ecirc;n que/muỗng gỗ v&agrave; thiết kế t&oacute;c, trang phục bằng vải, sợi len. Đ&acirc;y cũng sẽ l&agrave; những rối gỗ dễ thương để cả nh&agrave; c&ugrave;ng kể chuyện với nhau v&agrave;o buổi tối đấy!</p>\r\n\r\n<p>. Tuần 3 - &quot;Chiếc lọ c&aacute;m ơn&quot;: B&eacute; vẽ v&agrave; tết d&acirc;y trang tr&iacute; một chiếc lọ xinh xắn đặt tr&ecirc;n b&agrave;n. Mỗi sớm thức dậy, h&atilde;y n&oacute;i những lời cảm ơn với chiếc lọ v&agrave; em sẽ thấy h&ocirc;m ấy l&agrave; một ng&agrave;y tr&agrave;n ngập niềm vui nh&eacute;!<br />\r\n<br />\r\nĐối tượng: Trẻ em từ 5 - 10 tuổi<br />\r\nPh&iacute; tham dự: 150.000đ/tuần hoặc 300.000đ/3 tuần<br />\r\n<br />\r\nĐể đảm bảo chất lượng workshop, SHS giới hạn số lượng c&aacute;c b&eacute; tham gia kh&ocirc;ng qu&aacute; 10 em/workshop.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/1435978746592674/\">đ&acirc;y</a> nha.</p>\r\n', '36/31 Nguyễn Gia Trí, Phường 25, Quận Bình Thạnh, TP. HCM', 0, '2020-12-04 19:12:56'),
(16, 1, 'Workshop \"Wooden Mosaic Puzzle Painting\"', '2020-11-27-12-47-02-screenshot-8.jpg', '2020-11-27-12-47-02-125214710-193987825676731-1262200692383427565-o.jpg', 'Woody Goody ', '9h30-17h30, 28/11/2020', 'https://www.facebook.com/events/722346751712044/', 'Tham gia lớp vẽ tranh gỗ ghép Mosaic Puzzle của Woody Goody và mang về 1 bức tranh Mosaic Puzzle xịn xò để làm quà tặng Noel', '<p>TỰ TAY VẼ TRANH GỖ L&Agrave;M QU&Agrave; GI&Aacute;NG SINH TẶNG NGƯỜI THƯƠNG QUA MOSAIC WORKSHOP ĐI N&Agrave;O&nbsp;<br />\r\nLink đăng k&yacute;:&nbsp;<a href=\"https://l.facebook.com/l.php?u=https%3A%2F%2Fbit.ly%2FWoody-goody-mosaic-workshop%3Ffbclid%3DIwAR1Dv5eQnpghFNstui2h_wfcnFJ7uQR4Qh7zrBEiHZgU5KScPs6hhqHy8cQ&amp;h=AT0Y2Y7IVeSOQ0cTLO6uFAfnzPpwHnvrLN3nbABX5I6SZEx_tEeUNgp1xxaHjgz1Kd9IZsM8K9my0hnfuqa0gO8Iz-U3BlGamQ4Y9pqAnOfjLFj9gjN1LzRf5Th5pB09tA&amp;__tn__=q&amp;c[0]=AT3VXiLMB81lyd_axUfsNCQutpT9WTkfBZqa_9HiDoC2K0JOa7-2baMbg5ZghGI7g1q_mXDyJRUCHqvu2ruiGjDOqq4tisT2l63f71hWLbyJmGPqSVmcjAf8-q6Qn3oneE3pp16vPBwIIxR1ZkeaTvyE\" target=\"_blank\">https://bit.ly/Woody-goody-mosaic-workshop</a><br />\r\n<br />\r\nLớp vẽ tranh gỗ gh&eacute;p Mosaic Puzzle của Woody Goody đ&atilde; sẵn s&agrave;ng ra mắt rồi đ&acirc;y. D&ugrave; cho bạn đ&atilde; biết qua vẽ vời hoặc chưa bao giờ cầm cọ th&igrave; vẫn c&oacute; thể đăng k&yacute; tham gia lớp workshop n&agrave;y nh&eacute;. Tham gia lớp workshop v&agrave; mang về 1 bức tranh Mosaic Puzzle xịn x&ograve; để l&agrave;m qu&agrave; tặng Noel th&igrave; c&ograve;n g&igrave; bằng. Bức tranh tuy c&oacute; vẻ đơn giản nhưng khi bắt đầu những n&eacute;t cọ đầu ti&ecirc;n v&agrave; pha m&agrave;u th&igrave; cũng l&agrave; một thử th&aacute;ch đ&oacute;&nbsp;<br />\r\n<br />\r\nĐăng k&yacute; ngay h&ocirc;m nay để l&agrave; một trong những bạn đầu ti&ecirc;n tham gia workshop v&agrave; sở hữu tranh gỗ gh&eacute;p chưa từng c&oacute;. Th&ocirc;ng tin lớp workshop c&oacute; đủ ở b&ecirc;n dưới để bạn tham khảo nh&eacute;.<br />\r\n<br />\r\nThời gian: 28.11.2020 - 9:30 - 13:00 v&agrave; 14:00 - 17:30 (Vui l&ograve;ng chọn thời gian trong link đăng k&yacute;)<br />\r\nĐịa điểm: BLOQ - 19 Trần Ngọc Diện, Thảo Điền, Quận 2, HCM<br />\r\nGi&aacute; v&eacute;: 450.000 vnd/pax<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/722346751712044/\">đ&acirc;y</a> nha.</p>\r\n', 'BLOQ - 19 Trần Ngọc Diện, Thảo Điền, Quận 2, TPHCM', 0, '2020-12-04 19:12:49'),
(17, 1, 'Ngày hội Đổi cũ trao yêu thương', '2020-11-29-23-05-40-124078722-166251508279998-6878499956379562606-o.jpg', '2020-11-29-23-05-40-124078722-166251508279998-6878499956379562606-o.jpg', 'Tiệm cà phê EM Ở ĐÂU và Blue Dragon', '9-21h, 06/12/2020', 'https://www.facebook.com/events/1435978746592674/', 'Ngày hội tạo ra không gian để trao đổi đồ cũ/vật phẩm không còn sử dụng', '<p>Nếu khốn khổ chưa từng l&agrave; mong muốn, h&atilde;y để y&ecirc;u thương l&agrave; một chọn lựa. Dự &aacute;n &ldquo;Đổi Cũ Trao Y&ecirc;u Thương&rdquo; những tấm l&ograve;ng chung tay đ&oacute;ng g&oacute;p cho Tổ chức Trẻ Em Rồng Xanh Việt Nam.<br />\r\n<br />\r\nXuất ph&aacute;t với &yacute; tưởng c&ugrave;ng chung tay tổ chức một chương tr&igrave;nh trao đổi đồ cũ kết hợp c&aacute;c hoạt động k&ecirc;u gọi thiện nguyện d&agrave;nh cho Tổ chức Trẻ em Rồng Xanh. Dự &aacute;n hướng tới hỗ trợ trẻ em gặp kh&oacute; khăn nghịch cảnh, tạo kh&ocirc;ng gian để trao đổi đồ cũ/vật phẩm kh&ocirc;ng c&ograve;n sử dụng, đồng thời truyền đi th&ocirc;ng điệp về lối sống hạn chế r&aacute;c thải, tiết kiệm, t&aacute;i sử dụng, y&ecirc;u thương v&agrave; tr&aacute;ch nhiệm cộng đồng.<br />\r\n<br />\r\nTrải qua chuỗi hoạt động của dự &aacute;n bắt đầu từ giữa th&aacute;ng 8, nhận được rất nhiều sự quan t&acirc;m từ c&aacute;c anh chị, đến nay, dự &aacute;n đ&atilde; đi đến những hoạt động cuối c&ugrave;ng.<br />\r\n<br />\r\nSự kiến ch&iacute;nh sẽ diễn ra v&agrave;o ng&agrave;y 06/12/2020 tới, tại Tiệm cafe Em ở đ&acirc;u, 54/2 Nguyễn Cư Trinh, Quận 1, HCMC gồm c&aacute;c hoạt động:</p>\r\n\r\n<p>- Trao đổi đồ cũ, đ&acirc;y l&agrave; những vật phẩm đ&atilde; được quy&ecirc;n g&oacute;p trong thời gian qua</p>\r\n\r\n<p>- C&aacute;c hoạt động b&ecirc;n lề sự kiện:<br />\r\n+ Giới thiệu dự &aacute;n<br />\r\n+ Giao lưu c&ugrave;ng đại diện Blue Dragon<br />\r\n+ Giao lưu &acirc;m nhạc<br />\r\n+ Tư vấn về chương tr&igrave;nh học pha chế của Học viện pha chế VMA + b&aacute;n voucher kh&oacute;a học<br />\r\n+ Minigame (bốc thăm tr&uacute;ng thưởng, đố vui)<br />\r\n+ Đấu gi&aacute;<br />\r\n+ Workshop &quot;Hiểu m&igrave;nh&quot;<br />\r\n+ C&aacute;c hoạt động kh&aacute;c sẽ tiếp tục được update<br />\r\n<br />\r\nĐội tổ chức dự &aacute;n rất mong c&aacute;c anh chị v&agrave; c&aacute;c bạn hảo t&acirc;m c&ugrave;ng tham gia sự kiện ch&iacute;nh, để chung tay c&ugrave;ng Tổ chức Trẻ em Rồng Xanh gi&uacute;p đỡ những trẻ em kh&oacute; khăn ở Việt Nam!<br />\r\n<br />\r\nThay mặt dự &aacute;n Đổi Cũ Trao Y&ecirc;u Thương, xin ch&acirc;n thành cảm ơn anh chị v&agrave; c&aacute;c bạn!</p>\r\n\r\n<p>-----<br />\r\nTh&ocirc;ng tin li&ecirc;n hệ:<br />\r\nEmail: sgn4bluedragon@gmail.com<br />\r\nFacebook:</p>\r\n\r\n<p>https://www.facebook.com/doicutraoyeuthuong/</p>\r\n\r\n<p>K&ecirc;nh ủng hộ hiện kim:<br />\r\n- Kindmate: <a href=\"https://kindmate.net/project/1393/doi-cu-trao-yeu-thuong?fbclid=IwAR2jag9rhvsn4d0FtcMENt9WOiDVzXVm26aCNHtNoy8v8nEmJRXqWAxDMgs\" target=\"_blank\">https://kindmate.net/project/1393/doi-cu-trao-yeu-thuong</a><br />\r\n- Givenow: <a href=\"https://tinyurl.com/yc4c3vax?fbclid=IwAR0si23xCrByunwIA3ZFOz9U5z4faTl5Gv-t4FvR7r-rzFViuRod2GvYir8\" target=\"_blank\">https://tinyurl.com/yc4c3vax</a><br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/1435978746592674/\">đ&acirc;y</a> nha.</p>\r\n', 'Tiệm cafe Em ở đâu, 54/2 Nguyễn Cư Trinh, Q1, TPHCM', 0, '2020-12-04 19:12:39'),
(18, 1, 'Tái chế đồ Jean cùng Mèo Tôm Handmade', '2020-12-04-19-29-16-taichedojean.jpg', '2020-12-04-19-29-16-taichedojean2.jpg', 'Mèo Tôm Handmade', '9h, 19-20/12/2020 ', 'https://www.facebook.com/events/838435980321912/', 'Đến với workshop để tự tay may những chiếc túi xinh xắn cho mình từ chính đồ cũ của bản thân.', '<p>M&egrave;o T&ocirc;m Handmade đ&atilde; đi được một h&agrave;nh tr&igrave;nh kh&aacute; d&agrave;i trong việc t&aacute;i chế đồ jean cũ th&agrave;nh những m&oacute;n đồ xinh xắn, hữu &iacute;ch, đưa việc sử dụng sản phẩm t&aacute;i chế đền gần hơn với cuộc sống thường ng&agrave;y của nhiều người hơn, giảm thiểu r&aacute;c thải thời trang.<br />\r\n<br />\r\nV&agrave; M&egrave;o mong muốn th&ocirc;ng qua chuỗi workshop h&agrave;nh động t&aacute;i chế n&agrave;y sẽ được lan toả nhiều hơn tới cộng đồng. Sau khi tham gia workshop bạn ho&agrave;n to&agrave;n c&oacute; thể tự tay may những chiếc t&uacute;i xinh xắn cho m&igrave;nh từ ch&iacute;nh đồ cũ của bản th&acirc;n<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/838435980321912/\">đ&acirc;y</a> nha.</p>\r\n', 'Nhà Của Thời Thơ Ấu - 280/10 CMT8, Phường 10, Quận 3, TPHCM', 0, '2020-12-04 19:12:57'),
(19, 2, 'La Vie ra mắt sản phẩm nước khoáng dùng chai nhựa tái chế', '2020-12-14-16-36-39-130992867-3889670924397806-9068592878340196983-o.jpg', '2020-12-14-16-36-39-0323-image004.jpg', 'Lavie', '', 'https://congthuong.vn/la-vie-ra-mat-san-pham-nuoc-khoang-dung-chai-nhua-tai-che-149117.html', 'La Vie ra mắt sản phẩm nước khoáng dùng chai nhựa tái chế', '<p>La Vie vừa ra mắt d&ograve;ng sản phẩm l&agrave;m từ nhựa t&aacute;i chế (rPET). Đ&acirc;y l&agrave; loại nhựa được tạo ra từ vỏ chai PET đ&atilde; qua sử dụng, với quy tr&igrave;nh t&aacute;i chế chặt chẽ để đ&aacute;p ứng ti&ecirc;u chuẩn an to&agrave;n vệ sinh của ng&agrave;nh thực phẩm &amp; đồ uống.<br />\r\n\r\n<br />Nỗ lực n&agrave;y kh&ocirc;ng chỉ g&oacute;p phần giảm thiểu việc sử dụng nguy&ecirc;n liệu nhựa mới m&agrave; c&ograve;n đem lại cơ hội t&aacute;i sinh cho mỗi vỏ chai được thu gom, g&oacute;p phần tạo động lực cho c&aacute;c dự &aacute;n ph&acirc;n loại, thu gom &amp; t&aacute;i chế tại Việt Nam nhằm biến r&aacute;c thải th&agrave;nh t&agrave;i nguy&ecirc;n thay v&igrave; thải ra m&ocirc;i trường.<br />\r\n\r\n<br />Th&ocirc;ng qua s&aacute;ng kiến n&agrave;y, La Vie đem đến t&iacute;n hiệu cho thấy nhu cầu ti&ecirc;u thụ nhựa t&aacute;i chế rất lớn từ c&aacute;c c&ocirc;ng ty nước giải kh&aacute;t như La Vie, từ đ&oacute; khuyến kh&iacute;ch doanh nghiệp trong nước đầu tư sản xuất rPET để đẩy nhanh hơn nữa m&ocirc; h&igrave;nh kinh tế tuần ho&agrave;n. Bởi lẽ hiện nay c&aacute;c c&ocirc;ng ty giải kh&aacute;t đối mặt với nhiều th&aacute;ch thức trong việc sử dụng nhựa t&aacute;i chế v&igrave; tại Việt Nam chưa c&oacute; c&aacute;c doanh nghiệp sản xuất loại nhựa t&aacute;i chế d&ugrave;ng cho thực phẩm (Food Grade Recyclable Plastic).<br />\r\n\r\n<br />Bạn t&igrave;m hiểu th&ecirc;m th&ecirc;m ở <a href=\"https://congthuong.vn/la-vie-ra-mat-san-pham-nuoc-khoang-dung-chai-nhua-tai-che-149117.html\">đ&acirc;y</a> nh&eacute;.</p>\r\n', '', 0, '2020-12-14 16:12:39'),
(21, 1, 'Xưởng Giáng Sinh Nhà Mình', '2020-12-23-16-49-35-128693077-165919185238985-1063616372520479115-o-1.jpg', '2020-12-24-10-09-17-128693077-165919185238985-1063616372520479115-o.jpg', 'Cộng đồng giáo dục Reggio Emilia (VIRES)', '16h, 24/12/2020', 'https://www.facebook.com/events/828471717992355/', 'Nhân dịp Giáng Sinh, Cộng đồng giáo dục Reggio Emilia (VIRES) mở xưởng mời cả nhà mình đến chơi, cùng nhau học cách làm đồ trang trí Giáng sinh!', '<p>Xưởng Gi&aacute;ng sinh của &ocirc;ng gi&agrave; Noel đang l&agrave;m việc hết tốc lực để chuẩn bị qu&agrave; cho c&aacute;c bạn nhỏ. C&aacute;c gia đ&igrave;nh cũng đang bắt đầu v&agrave;o cuộc trang tr&iacute; nh&agrave; cửa thật vui tươi để ch&agrave;o đ&oacute;n &ocirc;ng gi&agrave; Noel. Nh&acirc;n dịp n&agrave;y, Cộng đồng gi&aacute;o dục Reggio Emilia (VIRES) sẽ mở xưởng mời cả nh&agrave; m&igrave;nh đến chơi, c&ugrave;ng nhau học c&aacute;ch l&agrave;m đồ trang tr&iacute; Gi&aacute;ng sinh nha!<br />\r\n<br />\r\nWorkshop 5 -Thứ Năm 24/12 từ 16h - 18h: Quả Cầu Tuyết T&aacute;i chế<br />\r\n<br />\r\nHoạt động ph&ugrave; hợp với b&eacute; 4-6 tuổi. khuyến kh&iacute;ch phụ huynh ở lại c&ugrave;ng l&agrave;m với b&eacute;. Nếu nh&agrave; c&oacute; b&eacute; nhỏ hơn 4 tuổi đi c&ugrave;ng anh/chị tham gia, gi&aacute;o vi&ecirc;n cũng sẽ chuẩn bị vật liệu cho b&eacute; chơi c&ugrave;ng.<br />\r\n<br />\r\nTrước khi bắt đầu workshop, phụ huynh cũng sẽ được giới thiệu về Hướng tiếp cận Reggio Emilia, v&agrave; c&aacute;ch phối hợp để con thực sự s&aacute;ng tạo bằng ch&iacute;nh ng&ocirc;n ngữ của m&igrave;nh, kh&ocirc;ng theo một khu&ocirc;n mẫu n&agrave;o.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/828471717992355/\" >đ&acirc;y</a> nha.</p>\r\n', '21 Phạm Ngọc Thạch, Quận 3, TP.Hồ Chí Minh', 0, '2020-12-24 10:12:14'),
(23, 2, 'Tái chế thủy tinh khi đi shopping với O-I BJC và Annam Gourmet', '2021-01-13-16-11-35-abc.jpg', '2021-01-13-15-33-36-134383518-445548650188548-6100301215490498678-1.jpg', 'O-I BJC + Annam Gourmet', '', 'https://www.facebook.com/oibjcvietnam/posts/445559376854142', 'Để trở thành người tiêu dùng \"xanh\", bạn hãy mang theo bao bì thực phẩm & đồ uống bằng thủy tinh (đã rửa sạch) khi mua sắm tại các cửa hàng ANNAM GOURMET tại TP.HCM để đưa thủy tinh về nơi tái chế.', '<p>&quot;T&aacute;i chế thủy tinh khi đi shopping&quot; - Nghe thật lạ, nhưng thật dễ<br />\r\n<br />\r\nBao b&igrave; thủy tinh l&agrave; lựa chọn số 1 trong ng&agrave;nh Thực phẩm &amp; đồ uống kh&ocirc;ng chỉ v&igrave; khả năng giữ trọn hương vị thơm ngon m&agrave; c&ograve;n v&igrave; t&iacute;nh th&acirc;n thiện với m&ocirc;i trường. Bao b&igrave; thủy tinh đ&atilde; qua sử dụng c&oacute; thể được t&aacute;i chế 100%.<br />\r\n<br />\r\nĐể trở th&agrave;nh người ti&ecirc;u d&ugrave;ng &quot;xanh&quot;, bạn h&atilde;y mang theo bao b&igrave; thực phẩm &amp; đồ uống bằng thủy tinh (đ&atilde; rửa sạch) khi mua sắm tại c&aacute;c cửa h&agrave;ng ANNAM GOURMET tại TP.HCM để đưa thủy tinh về nơi t&aacute;i chế.<br />\r\n<br />\r\nNgo&agrave;i ra, bạn c&oacute; thể t&iacute;ch lũy điểm &quot;kh&aacute;ch h&agrave;ng th&acirc;n thiết&quot; của ANNAM khi đ&oacute;ng g&oacute;p c&aacute;c bao b&igrave; thủy tinh của c&aacute;c thương hiệu b&ecirc;n dưới.<br />\r\n<br />\r\nH&atilde;y chung tay c&ugrave;ng O-I BJC v&agrave; ANNAM GOURMET bảo vệ m&ocirc;i trường bạn nh&eacute;!<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/oibjcvietnam/posts/445559376854142\">đ&acirc;y</a> nha.<br />\r\n<br />\r\n#oibjc #glassambassador #glassrecycling</p>\r\n', 'Annam Gourmet', 0, '2021-01-13 16:01:12'),
(24, 1, 'Workshop vẽ chữa lành - vẽ áo thun cũ, tái chế', '2021-01-13-16-05-44-137262410-763189680984254-7084061778157627364-n.jpg', '2021-01-13-16-05-44-137262410-763189680984254-7084061778157627364-n.jpg', 'Trạm Xanh - GreenUp Living', '17/1/2021', 'https://www.facebook.com/events/205528041228331/?active_tab=about', 'Đến Workshop vẽ chữa lành, những cây cọ sẽ là bạn đồng hành, màu sắc sẽ lắng nghe tiếng lòng bạn, âm nhạc và thiền sẽ dẫn lối bạn, trà và bánh sẽ đi cùng bạn trong hành trình 3 giờ cho bạn tạo nên kiệt tác.', '<p>Workshop vẽ chữa l&agrave;nh - vẽ &aacute;o thun cũ, t&aacute;i chế: C&ocirc;ng việc - con c&aacute;i - nh&agrave; cửa; với bộn bề &acirc;u lo; cần lắm 1 chỗ thư giản, cần một nơi chia sẻ t&acirc;m tư; cần ai đ&oacute; lắng nghe nỗi l&ograve;ng; mong 1 gi&acirc;y ph&uacute;t thật sự b&igrave;nh y&ecirc;n, thả l&ograve;ng theo cảm x&uacute;c v&agrave; sống cho m&igrave;nh. Kh&ocirc;ng cần bạn biết vẽ, kh&ocirc;ng cần bạn biết g&igrave; về m&agrave;u sắc, cứ đến với ch&uacute;ng m&igrave;nh tự khắc bạn sẽ tạo ra một t&aacute;c phẩm nghệ thuật m&agrave; bạn kh&ocirc;ng nghĩ rằng: &quot;&Agrave;, m&igrave;nh cũng c&oacute; thể trở th&agrave;nh hoạ sĩ đấy&quot;.<br />\r\n<br />\r\nNghệ thuật l&agrave; sự s&aacute;ng tạo kh&ocirc;ng giới hạn, kh&ocirc;ng c&oacute; xấu v&agrave; đẹp. Bạn thả m&igrave;nh v&agrave;o tiếng nhạc kh&ocirc;ng lời theo c&acirc;u chuyện được dẫn dắt của bạn hướng dẫn, được uống tr&agrave;, ăn b&aacute;nh v&agrave; sau buổi workshop lại c&oacute; một chiếc &aacute;o thun vẽ t&aacute;i chế bởi t&aacute;c phẩm nghệ thuật của ch&iacute;nh bạn từ chiếc &aacute;o cũ m&agrave; m&igrave;nh đ&atilde; vứt bỏ n&oacute; ở g&oacute;c x&oacute; n&agrave;o; cũng như việc bạn đ&atilde; bỏ b&ecirc; cảm x&uacute;c bản th&acirc;n m&igrave;nh trong một giai đoạn d&agrave;i.<br />\r\n<br />\r\nĐến Workshop vẽ chữa l&agrave;nh, những c&acirc;y cọ sẽ l&agrave; bạn đồng h&agrave;nh c&ugrave;ng bạn, m&agrave;u sắc sẽ lắng nghe tiếng l&ograve;ng bạn, &acirc;m nhạc v&agrave; thiền sẽ dẫn lối bạn, tr&agrave; v&agrave; b&aacute;nh sẽ đi c&ugrave;ng bạn trong suốt h&agrave;nh tr&igrave;nh 3 giờ đồng hồ cho bạn tạo n&ecirc;n kiệt t&aacute;c. Bạn chỉ cần đến, mang theo chiếc &aacute;o thun bất kỳ bạn muốn vẽ t&aacute;i chế, c&ograve;n tất cả mọi thứ c&ograve;n lại để ch&uacute;ng m&igrave;nh lo nh&eacute;.<br />\r\n<br />\r\nHẹn nhau 15:00-18:00 ng&agrave;y Chủ Nhật 17/1/2021 tại Trạm Xanh- GreenUp Living<br />\r\n<br />\r\nChi ph&iacute; hướng dẫn + hoạ cụ (3 tiếng): 300k<br />\r\n<br />\r\nĐối tượng workshop l&agrave; trẻ em v&agrave; người lớn. Ri&ecirc;ng phụ huynh đi chung quan s&aacute;t v&agrave; muốn vẽ chung với b&eacute; tr&ecirc;n &aacute;o tụi m&igrave;nh sẽ phụ thu 150k<br />\r\n<br />\r\nLink đăng k&iacute;:&nbsp;<a href=\"https://forms.gle/fUmuphRyCFD6KU8XA\" target=\"_blank\">https://forms.gle/fUmuphRyCFD6KU8XA</a><br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/205528041228331/?active_tab=about\">đ&acirc;y</a> nha.</p>\r\n', '165/52 Nguyễn Thái Bình, phường Nguyễn Thái Bình, Quận 1', 0, '2021-04-02 09:04:17'),
(25, 1, 'WORKSHOP TRANG TRÍ TẾT XANH | Creative Green Tết Decoration', '2021-01-13-16-32-32-136709725-843596446496119-2322659005378200668-o.jpg', '2021-01-13-16-46-56-f.jpg', 'Lại Đây Refill Station', '21/1/2021', 'https://www.facebook.com/events/460909761577142/?active_tab=about', 'Đến với buổi workshop Trang Trí Tết Xanh lần này, bạn sẽ cùng Lại Đây làm những món đồ trang trí nhà cửa dịp Tết rất sáng tạo và gần gũi, tự nhiên, góp phần mang sắc màu và không khí Tết cho ngôi nhà.', '<p>Workshop Series Lại Đ&acirc;y Sống Xanh &amp; DIY<br />\r\nTRANG TR&Iacute; TẾT XANH<br />\r\nCreative Green Tết Decoration<br />\r\n<br />\r\nThứ 5 21/01/2021 17:30 - 19:30<br />\r\nToong 01bis Phạm Ngọc Thạch Q1, TP.HCM - Tầng thượng<br />\r\n<br />\r\nNội dung workshop bao gồm:<br />\r\n1. L&agrave;m bao l&igrave; x&igrave; từ giấy bản đồ<br />\r\n2. Trang tr&iacute; c&acirc;u đối Tết<br />\r\n3. L&agrave;m đầu l&acirc;n từ giấy<br />\r\n4. Trang tr&iacute; v&ograve;ng hoa Tết<br />\r\n<br />\r\nBạn c&oacute; đang nhức đầu với một loạt &yacute; tưởng trang tr&iacute; Tết năm nay ở nh&agrave;, căn ph&ograve;ng trọ, hay ở g&oacute;c văn ph&ograve;ng sao cho xanh, bớt nhựa, tinh tế, vẫn đẹp, v&agrave; tiết kiệm, kh&ocirc;ng cần mua tới những m&oacute;n đồ mới? V&igrave; ai cũng biết mỗi khi mua một thứ g&igrave; mới, sẽ l&agrave; một loạt c&aacute;c bao b&igrave; sẽ thải v&agrave;o m&ocirc;i trường v&agrave; v&ocirc; h&igrave;nh chung ch&uacute;ng ta tiếp sức ủng hộ cho những m&oacute;n đồ ấy c&oacute; &ldquo;đường sống khỏe&quot;. Bạn c&oacute; biết l&agrave; những m&oacute;n đồ trang tr&iacute; lễ hội cũng lại l&agrave; một h&igrave;nh thức kh&aacute;c của r&aacute;c single-use khi m&agrave; bạn chỉ mua v&agrave; d&ugrave;ng 1-2 lần rồi bỏ đi v&agrave; chưa chắc năm sau c&oacute; d&ugrave;ng tiếp.<br />\r\n<br />\r\nVậy sao kh&ocirc;ng tự tay trang tr&iacute; để năm nay Tết bớt r&aacute;c thải, m&agrave; vẫn vui!<br />\r\n<br />\r\nHẹn gặp bạn nh&eacute;! See ya!<br />\r\n<br />\r\nChương tr&igrave;nh miễn ph&iacute;.<br />\r\nSố lượng giới hạn.<br />\r\nĐăng k&yacute; tham gia:&nbsp;<a href=\"https://forms.gle/vno2NvTWioShcvYv6\" target=\"_blank\">https://forms.gle/vno2NvTWioShcvYv6</a><br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/460909761577142/?active_tab=about\">đ&acirc;y</a> nha.</p>\r\n', 'Toong 01bis Phạm Ngọc Thạch Q1, TP.HCM - Tầng thượng', 0, '2021-04-02 10:04:19'),
(26, 1, 'L\'Usine Sustainable Tet Market', '2021-01-13-18-37-10-134606354-10158111870453212-2687326620779148178-o.jpg', '2021-01-13-18-37-10-134606354-10158111870453212-2687326620779148178-o.jpg', 'L\'Usine', '30/1/2021', 'https://www.facebook.com/events/676449256368861/?active_tab=about', 'L’Usine giới thiệu, phiên chợ Tết 2021 với một phiên bản hoàn toàn mới: Sustainable.', '<p>L&rsquo;Usine muốn tạo một kh&ocirc;ng gian nơi c&aacute;c thương hiệu đầy cảm hứng c&oacute; thể khơi dậy những c&acirc;u chuyện xoay quanh chủ đề &lsquo;thương hiệu bền vững&rsquo; v&agrave; &lsquo;th&acirc;n thiện với m&ocirc;i trường&rsquo;. Đến với hội chợ Tết lần n&agrave;y, c&aacute;c bạn c&oacute; thể kh&aacute;m ph&aacute; những sản phẩm bền vững v&agrave; mua sắm cho một m&ugrave;a Tết c&oacute; &yacute; nghĩa!<br />\r\n<br />\r\nBạn c&oacute; thể mong chờ g&igrave; tại phi&ecirc;n chợ Tết 2021?<br />\r\n-Nhiều chương tr&igrave;nh ưu đ&atilde;i hấp dẫn<br />\r\n-Những hoạt động v&agrave; chuỗi workshop đầy th&uacute; vị xuy&ecirc;n suốt cuối tuần<br />\r\n-T&uacute;i qu&agrave; tặng độc quyền v&agrave; nhiều chương tr&igrave;nh ưu đ&atilde;i hấp dẫn<br />\r\n- C&aacute;c hoạt động xếp l&aacute; dừa<br />\r\nThời gian: 10am - 5pm, 30-31/01/2021<br />\r\nĐịa điểm: 24 Thảo Điền, Quận 2, Hồ Ch&iacute; Minh<br />\r\n<br />\r\nLịch cho workshop v&agrave; danh s&aacute;ch những nh&atilde;n h&agrave;ng tham dự sẽ sớm được h&eacute; lộ, h&atilde;y d&otilde;i theo để chờ xem c&oacute; thương hiệu y&ecirc;u th&iacute;ch của bạn kh&ocirc;ng nh&eacute;! C&ograve;n nếu bạn l&agrave; nh&atilde;n h&agrave;ng muốn tham gia v&agrave;o hội chợ Tết lần n&agrave;y, h&atilde;y đăng k&yacute; ngay tại:&nbsp;<a href=\"https://forms.gle/eKz4pxiUNHdKTqy2A\" target=\"_blank\">https://forms.gle/eKz4pxiUNHdKTqy2A</a><br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/events/676449256368861/?active_tab=about\">đ&acirc;y</a> nha.</p>\r\n', '24 Thảo Điền, Quận 2, HCMC', 0, '2021-04-02 10:04:16'),
(27, 2, 'Quang Hải và H’Hen Niê kêu gọi tái chế lon nhôm bảo vệ môi trường', '2021-01-20-18-18-48-hai-hhennie-edmk-thumb.jpg', '2021-01-20-18-18-48-taichelon.jpg', 'Trung tâm Truyền thông Tài nguyên và Môi Trường', '11/1 - 5/2/2021', 'http://tapchimoitruong.vn/chuyen-muc-3/keu-goi-cong-dong-su-dung-tai-che-lon-nhom-bao-ve-moi-truong-22946', 'Chiến dịch “Nối tiếp vòng lon nhôm, đáp tiếng lòng Trái đất” được khởi xướng bởi Trung tâm Truyền thông TN & MT cùng Công ty TNHH TBC-Ball VN, với hai đại sứ là cầu thủ Nguyễn Quang Hải và Hoa hậu H’Hen Niê nhằm khuyến khích sử dụng lon nhôm.', '<p>Theo Tổ chức Aluminum, 75% lượng nh&ocirc;m từng được sản xuất từ năm 1886 vẫn được sử dụng cho đến ng&agrave;y nay. Tr&ecirc;n thực tế, lon nh&ocirc;m l&agrave; bao b&igrave; đồ uống được t&aacute;i chế nhiều nhất tr&ecirc;n thế giới (69%). Với khả năng t&aacute;i chế kh&ocirc;ng giới hạn v&agrave; chỉ mất 60 ng&agrave;y để t&aacute;i chế một lon nh&ocirc;m đ&atilde; qua sử dụng th&agrave;nh một lon nh&ocirc;m mới th&igrave; việc lựa chọn, ti&ecirc;u thụ bao b&igrave; lon nh&ocirc;m đ&atilde; v&agrave; đang tạo n&ecirc;n một lối sống bền vững, th&uacute;c đẩy nền kinh tế tuần ho&agrave;n tại Việt Nam.<br />\r\n<br />\r\n&Ocirc;ng Vũ Minh L&yacute;, Ph&oacute; Gi&aacute;m đốc Trung t&acirc;m truyền th&ocirc;ng TN&amp;MT cho biết, thời gian qua, Bộ TN&amp;MT đ&atilde; triển khai nhiều chương tr&igrave;nh truyền th&ocirc;ng về chống r&aacute;c thải nhựa, hướng đến ph&aacute;t triển bền vững. Chiến dịch lần n&agrave;y c&ograve;n c&oacute; &yacute; nghĩa lớn trong việc phổ biến c&aacute;c điểm mạnh, t&iacute;nh th&acirc;n thiện với m&ocirc;i trường cũng như những gi&aacute; trị v&agrave; lợi &iacute;ch của lon nh&ocirc;m, từ đ&oacute; khuyến kh&iacute;ch người ti&ecirc;u d&ugrave;ng sử dụng, t&aacute;i chế lon nh&ocirc;m v&igrave; một Việt Nam Xanh - Sạch - Đẹp.<br />\r\n<br />\r\n&Ocirc;ng Ramon Arratia, Gi&aacute;m đốc Quan hệ C&ocirc;ng ch&uacute;ng To&agrave;n cầu của C&ocirc;ng ty Ball chia sẻ, ph&aacute;t triển bền vững lu&ocirc;n l&agrave; gi&aacute; trị cốt l&otilde;i trong mọi hoạt động kinh doanh của C&ocirc;ng ty. V&igrave; vậy, C&ocirc;ng ty rất vinh dự khi được hợp t&aacute;c c&ugrave;ng Bộ TN&amp;MT trong chiến dịch n&agrave;y, đ&aacute;nh dấu cột mốc quan trọng trong c&aacute;c nỗ lực n&acirc;ng cao nhận thức cộng đồng về t&iacute;nh th&acirc;n thiện với m&ocirc;i trường của bao b&igrave; nước giải kh&aacute;t l&agrave;m từ nh&ocirc;m tại Việt Nam của C&ocirc;ng ty, qua đ&oacute; khuyến kh&iacute;ch người ti&ecirc;u d&ugrave;ng sử dụng v&agrave; t&aacute;i chế lon nh&ocirc;m v&igrave; một Việt Nam Xanh - Sạch - Đẹp. Thời gian tới, C&ocirc;ng ty sẽ tiếp tục phối hợp c&ugrave;ng Bộ TN&amp;MT trong việc ph&aacute;t triển c&aacute;c giải ph&aacute;p thay thế bền vững cho sản phẩm nhựa d&ugrave;ng một lần, cũng như th&uacute;c đẩy nền kinh tế tuần ho&agrave;n th&ocirc;ng qua m&ocirc; h&igrave;nh &ldquo;T&aacute;i chế lon nh&ocirc;m đ&atilde; qua sử dụng th&agrave;nh lon nh&ocirc;m mới Can-to-Can&rdquo;.<br />\r\n<br />\r\nHoa hậu H&rsquo;Hen Ni&ecirc; khẳng định: &ldquo;Hen rất vinh dự trở th&agrave;nh đại sứ cho chiến dịch n&agrave;y để g&oacute;p phần lan tỏa s&acirc;u rộng hơn &yacute; nghĩa của chương tr&igrave;nh. Bởi BVMT kh&ocirc;ng chỉ l&agrave; tr&aacute;ch nhiệm của bất kỳ c&aacute; nh&acirc;n n&agrave;o m&agrave; tr&ecirc;n hết c&ograve;n mang lại nhiều lợi &iacute;ch cho cộng đồng&rdquo;. Tuyển thủ quốc gia Nguyễn Quang Hải đồng t&igrave;nh: &ldquo;Việc sử dụng lon nh&ocirc;m l&agrave; h&agrave;nh động rất thiết thực v&agrave; dễ d&agrave;ng, ai cũng c&oacute; thể l&agrave;m được để BVMT. Th&ocirc;ng qua chiến dịch n&agrave;y, Hải hy vọng mọi người sẽ hiểu hơn lợi &iacute;ch của lon nh&ocirc;m v&agrave; thay đổi th&oacute;i quen ti&ecirc;u d&ugrave;ng của m&igrave;nh.&rdquo;<br />\r\n<br />\r\nChiến dịch được ph&aacute;t động ch&iacute;nh thức v&agrave;o ng&agrave;y 11/1/2021 v&agrave; k&eacute;o d&agrave;i đến ng&agrave;y 5/2/2021 c&ugrave;ng với thử th&aacute;ch chuyền lon nh&ocirc;m. Để tham gia thử th&aacute;ch, người chơi sẽ thực hiện quay video v&agrave; đăng tải tr&ecirc;n trang Facebook c&aacute; nh&acirc;n c&ugrave;ng hashtag chương tr&igrave;nh để nhận được những giải thưởng tuần v&agrave; giải thưởng chung cuộc hấp dẫn.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"http://tapchimoitruong.vn/chuyen-muc-3/keu-goi-cong-dong-su-dung-tai-che-lon-nhom-bao-ve-moi-truong-22946\">đ&acirc;y</a> nha.</p>\r\n', '', 0, '2021-03-09 19:03:57'),
(28, 2, 'Điện thoại hết thời nay đổi đời với Galaxy Upcycling!', '2021-01-21-10-27-15-dims.jpg', '2021-01-21-10-27-15-galaxy-upcycling-at-home-12-1536x809.jpg', '', '', 'https://www.engadget.com/samsung-galaxy-upcycling-at-home-151023666.html', 'Tại CES 2021, Samsung đã thông báo về dự án Galaxy Upcycling at Home, và tiết lộ rằng họ sẽ cập nhật phần mềm điện thoại Galaxy cũ vào cuối năm nay để tận dụng lại nó thành những thiết bị IoT trong hệ sinh thái nhà thông minh.', '<p>Chương tr&igrave;nh Samsung Galaxy Upcycling được giới thiệu v&agrave;o năm 2017 với việc t&aacute;i chế c&aacute;c sản phẩm điện thoại &ndash; m&aacute;y t&iacute;nh bảng cũ kh&aacute;c nhau để sử dụng v&agrave;o c&aacute;c việc như &ldquo;đ&agrave;o coin&rdquo; &hellip; Tại CES 2021 (th&ocirc;ng qua sự kiện trực tuyến), Samsung đ&atilde; th&ocirc;ng b&aacute;o về dự &aacute;n&nbsp;Galaxy Upcycling at Home, v&agrave; tiết lộ rằng họ sẽ cập nhật phần mềm điện thoại Galaxy cũ v&agrave;o cuối năm nay để tận dụng lại n&oacute; th&agrave;nh những thiết bị IoT trong hệ sinh th&aacute;i nh&agrave; th&ocirc;ng minh.<br />\r\n<br />\r\nCụ thể, với bản cập nhật sắp tới v&agrave;o cuối năm n&agrave;y chiếc Galaxy cũ của bạn c&oacute; thể trở th&agrave;nh 1 thiết bị để gi&aacute;m s&aacute;t trẻ em bằng c&aacute;ch tận dụng cảm biến &acirc;m thanh để gửi th&ocirc;ng b&aacute;o đi khi trẻ em kh&oacute;c hoặc l&agrave; thiết bị theo d&otilde;i hoạt động của th&uacute; cưng tại nh&agrave; th&ocirc;ng qua cảm biến &aacute;nh s&aacute;ng.&nbsp;<br />\r\n<br />\r\nHầu hết c&aacute;c điện thoại Galaxy đều được bảo mật Knox v&igrave; thế c&aacute;c thiết bị gia đ&igrave;nh IoT n&agrave;y từ chương tr&igrave;nh Upcycling at Home sẽ được bảo mật cao nhất. Với dự &aacute;n Galaxy Upcycling at Home,&nbsp;Samsung&nbsp;sẽ trao quyền cho người ti&ecirc;u d&ugrave;ng nhiều hơn khi c&oacute; thể tận dụng lại c&aacute;c thiết bị cũ của m&igrave;nh để tuỳ biến cuộc sống th&ocirc;ng minh theo nhu cầu của m&igrave;nh. Song song đ&oacute;, người d&ugrave;ng cũng sẽ c&ugrave;ng Samsung g&oacute;p phần x&acirc;y dựng 1 tương lai xanh bền vững.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.engadget.com/samsung-galaxy-upcycling-at-home-151023666.html\">đ&acirc;y</a> nha.</p>\r\n', '', 0, '2021-01-21 15:01:47');
INSERT INTO `news` (`id`, `news_category_id`, `name`, `photo`, `large_photo`, `organiser`, `date`, `link`, `short_description`, `description`, `address`, `status`, `added_date`) VALUES
(29, 2, 'Lưới đánh cá sinh học bảo vệ môi trường biển', '2021-02-17-14-51-21-4510980-cover-1544424276-291821612.jpg', '2021-02-17-14-51-21-4510980-cover-1544424276-291821612.jpg', '', '', 'https://nhipcaudautu.vn/kinh-te-xanh/trach-nhiem-voi-cong-dong/luoi-xanh-giai-phong-dai-duong-3339309/', 'Sử dụng lưới đánh cá phân hủy sinh học là một giải pháp cấp bách nhằm bảo vệ môi trường biển.', '<p>Việc lưới c&aacute; ph&acirc;n hủy sinh học được nghi&ecirc;n cứu th&agrave;nh c&ocirc;ng v&agrave; đi v&agrave;o thương mại ở Việt Nam sẽ gi&uacute;p giảm thiểu nhiều t&aacute;c động ti&ecirc;u cực của c&aacute;c tấm lưới c&aacute; truyền thống.<br />\r\n<br />\r\nC&aacute;c số liệu gần đ&acirc;y của Tổ chức Quốc tế về Bảo tồn Thi&ecirc;n nhi&ecirc;n (WWF) cho thấy, mỗi năm c&oacute; khoảng 500.000 đến 1 triệu tấn thiết bị đ&aacute;nh bắt c&aacute; bị bỏ rơi tr&ecirc;n đại dương do cố t&igrave;nh hoặc v&ocirc; &yacute; của ng&agrave;nh đ&aacute;nh bắt c&aacute; thương mại. Những tấm lưới c&aacute; lưu lạc v&ocirc; chủ (hay c&ograve;n gọi l&agrave; lưới ma) n&agrave;y hiện đ&atilde; chiếm 46% diện t&iacute;ch Đảo r&aacute;c Th&aacute;i B&igrave;nh Dương (khoảng 1,6 triệu km2, gấp 5 lần diện t&iacute;ch Việt Nam).<br />\r\n<br />\r\nNhững loại lưới ma chủ yếu được l&agrave;m từ c&aacute;c sợi tổng hợp, nylon v&agrave; c&aacute;c hợp chất nhựa kh&aacute;c. Với t&iacute;nh năng bao phủ rộng, lưới ma kh&ocirc;ng chỉ bắt c&aacute; m&agrave; ch&uacute;ng cũng vướng v&agrave;o r&ugrave;a biển, c&aacute; heo, c&aacute; heo, chim, c&aacute; mập, hải cẩu&hellip; v&agrave; thường dẫn tới c&aacute;i chết bi thảm cho những sinh vật tội nghiệp v&igrave; ch&uacute;ng kh&ocirc;ng thể tự tho&aacute;t th&acirc;n.<br />\r\n<br />\r\nTheo Tổ chức Bảo vệ Động vật Thế giới (WAP), c&oacute; tr&ecirc;n 650.000 động vật biển bị giết bởi lưới ma mỗi năm. &ldquo;Phần kh&oacute; nhất l&agrave; nh&igrave;n thấy t&aacute;c hại đối với động vật hoang d&atilde; đại dương. Những c&aacute;i lưới đ&oacute; cắt v&agrave;o da thịt v&agrave; cơ bắp, n&oacute; c&oacute; thể cắt đứt động mạch, l&agrave;m hoại tử c&aacute;c chi, c&oacute; thể dẫn đến c&aacute;i chết từ từ&rdquo;, Elizabeth Hogan, Gi&aacute;m đốc chiến dịch động vật hoang d&atilde; v&agrave; đại dương của Mỹ cho WAP, chia sẻ.<br />\r\n<br />\r\nNếu lưới ma bị mắc kẹt dưới đ&aacute;y biển, c&aacute;c sinh vật đại dương nhỏ hơn bắt đầu ăn phần c&aacute; chết trong lưới, l&agrave;m giảm trọng lượng của n&oacute; v&agrave; cho ph&eacute;p lưới nổi l&ecirc;n mặt nước trở lại. Điều n&agrave;y lại tạo ra một chu kỳ hủy diệt mới v&agrave; tiếp tục lặp đi lặp lại trong h&agrave;ng trăm năm c&ugrave;ng với v&ograve;ng đời của tấm lưới đ&oacute;. V&igrave; vậy, b&ecirc;n cạnh việc thu gom, t&aacute;i chế lưới c&aacute; cũ, việc khuyến kh&iacute;ch s&aacute;ng tạo v&agrave; sử dụng lưới c&aacute; ph&acirc;n hủy sinh học l&agrave; một giải ph&aacute;p mang t&iacute;nh cấp b&aacute;ch kh&ocirc;ng k&eacute;m.<br />\r\n<br />\r\nNhận thấy tầm quan trọng của nh&oacute;m sản phẩm n&agrave;y trong việc bảo vệ m&ocirc;i trường biển, Tập đo&agrave;n An Ph&aacute;t Holdings đ&atilde; sớm tham gia học tập v&agrave; nghi&ecirc;n cứu tại H&agrave;n Quốc, nơi nghề đ&aacute;nh lưới đặc biệt phổ biến với tr&ecirc;n 40.000 tấn m&agrave;ng, lưới đ&aacute;nh c&aacute; bị bỏ rơi mỗi năm v&agrave; cũng l&agrave; nơi đ&atilde; bắt đầu ph&aacute;t triển v&agrave; cung cấp ngư cụ c&oacute; khả năng ph&acirc;n hủy sinh học h&agrave;ng đầu thế giới.<br />\r\n<br />\r\nSau gần 10 năm nghi&ecirc;n cứu v&agrave; thử nghiệm, ng&agrave;y 26.11 vừa qua, tại Hội nghị c&aacute;c giải ph&aacute;p về chất thải nhựa khu vực c&aacute;c biển Đ&ocirc;ng &Aacute; năm 2020 v&agrave; Lễ khởi động Dự &aacute;n giảm thiểu r&aacute;c thải nhựa đại dương Việt Nam, An Ph&aacute;t Holdings đ&atilde; ch&iacute;nh thức ra mắt c&aacute;c ngư cụ xanh như lưới đ&aacute;nh c&aacute;, dụng cụ nu&ocirc;i trồng thủy sản c&oacute; khả năng ph&acirc;n hủy sinh học ho&agrave;n to&agrave;n, tạo tiếng vang cho Việt Nam trong nỗ lực bảo vệ m&ocirc;i trường biển.<br />\r\n<br />\r\nVấn đề lưới ma g&acirc;y nguy hiểm cho động vật biển sẽ kh&ocirc;ng được giải quyết trong một sớm một chiều, nhưng sự thay đổi sẽ diễn ra. Một bước tiến lớn để biến điều n&agrave;y th&agrave;nh hiện thực l&agrave; th&ocirc;ng qua n&acirc;ng cao nhận thức của những người trong ng&agrave;nh đ&aacute;nh bắt c&aacute; về tầm quan trọng của ngư cụ th&acirc;n thiện m&ocirc;i trường nếu muốn bảo vệ sinh kế l&acirc;u d&agrave;i.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://gozerowaste.vn/events/luoi-danh-ca-sinh-hoc-bao-ve-moi-truong-bien-29.html\">đ&acirc;y</a> nh&eacute;.</p>\r\n', '', 0, '2021-02-17 17:02:57'),
(30, 2, 'Khay đựng thức ăn tái chế từ rác và thức ăn thừa', '2021-03-09-15-51-42-ubq-tray-768x432.jpg', '2021-03-09-15-51-42-csr127bandejas.jpg', '', '', 'https://corporate.mcdonalds.com/corpmcd/en-us/our-stories/article/OurStories.recycledtrays-brazil.html', 'Giải pháp bền vững của McDonald\'s: Khay đựng thức ăn được làm từ rác thải sinh hoạt nhằm tạo ra nền kinh tế tuần hoàn.', '<p>R&aacute;c thải sinh hoạt c&oacute; thể l&agrave; bất cứ thứ g&igrave; từ thức ăn thừa cho tới t&atilde; giấy, v&agrave; thường th&igrave; những r&aacute;c thải n&agrave;y kh&ocirc;ng thể t&aacute;i sử dụng v&agrave; c&oacute; hại với m&ocirc;i trường sống. Hơn nữa, khi thức ăn thừa khi ph&acirc;n hủy sẽ tạo ra kh&iacute; methane (CH4) g&acirc;y ra hiệu ứng nh&agrave; k&iacute;nh hơn cả kh&iacute; CO2. Tuy r&aacute;c thải sinh hoạt c&oacute; t&aacute;c hại đến vậy, nếu như ch&uacute;ng ta c&oacute; thể sử dụng một phần trong đ&oacute; l&agrave;m nguy&ecirc;n liệu th&igrave; sao?<br />\r\n<br />\r\nArcos Dorados, chuỗi nhượng quyền McDonald độc lập lớn nhất thế giới, đ&atilde; bắt đầu sử dụng số lượng lớn khay ăn được l&agrave;m từ chất liệu th&acirc;n thiện với m&ocirc;i trường, c&oacute; nguồn gốc từ thức ăn thừa v&agrave; nhiều loại r&aacute;c thải sinh hoạt, trong 30 cửa h&agrave;ng của họ ở khắp Brazil. Chất liệu được họ sử dụng trong loại khay mới n&agrave;y&nbsp;c&oacute; t&ecirc;n l&agrave; UBQ, một loại nhiệt nhựa&nbsp;với nguồn gốc sinh học được sản xuất từ r&aacute;c thải sinh hoạt t&aacute;i chế, c&oacute; thể l&agrave;m giảm đi rất nhiều khi thải ra m&ocirc;i trường.<br />\r\n<br />\r\nMột trong những điểm đặc biệt của UBQ l&agrave; d&acirc;y chuyền sản xuất của loại nhựa n&agrave;y kh&ocirc;ng đ&ograve;i hỏi kĩ thuật cao trong bước ph&acirc;n loại nguy&ecirc;n vật liệu. Với c&ocirc;ng nghệ của m&igrave;nh, UBQ c&oacute; thể tiếp nhận đa số c&aacute;c loại r&aacute;c thải sinh hoạt l&agrave;m nguy&ecirc;n liệu để xử l&yacute; cho ph&ugrave; hợp với m&aacute;y m&oacute;c của m&igrave;nh. &quot;Bằng việc đặt c&ocirc;ng nghệ của ch&uacute;ng t&ocirc;i v&agrave;o đoạn cuối c&ugrave;ng của h&agrave;nh tr&igrave;nh t&aacute;i chế r&aacute;c thải, ch&uacute;ng t&ocirc;i c&oacute; thể đ&oacute;ng lại v&ograve;ng lặp t&aacute;i chế v&agrave; đạt được nền kinh tế tuần ho&agrave;n thật sự.&quot; - CEO của UBQ chia sẻ.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://corporate.mcdonalds.com/corpmcd/en-us/our-stories/article/OurStories.recycledtrays-brazil.html\">đ&acirc;y</a> nha.</p>\r\n', '', 0, '2021-03-09 19:03:50'),
(32, 2, 'Pin xe đạp thông minh cũ được tái chế thành loa di động', '2021-03-09-17-56-21-dims.jpg', '2021-03-09-17-56-21-3-png.jpg', '', '', 'https://www.engadget.com/limes-old-e-bike-batteries-are-powering-sustainable-portable-speakers-113635924.html', 'Giải quyết gánh nặng từ những bộ pin cũ trong xe đạp thông minh bằng cách tái chế thành loa di động.', '<p>Xe đạp th&ocirc;ng minh lu&ocirc;n được xem l&agrave; một loại phương tiện &quot;xanh&quot;, tuy nhi&ecirc;n tuổi thọ của xe lại kh&aacute; ngắn so với những loại phương tiện kh&aacute;c. Khi những chiếc xe n&agrave;y cũ đi, ch&uacute;ng lại trở th&agrave;nh g&aacute;nh nặng l&ecirc;n m&ocirc;i trường, v&igrave; thế b&agrave;i to&aacute;n để t&aacute;i chế v&agrave; t&aacute;i sử dụng c&aacute;c bộ phận của xe trở n&ecirc;n rất cần thiết. V&agrave; Gomi, một c&ocirc;ng ty chuy&ecirc;n về sản xuất c&aacute;c thiết bị sạc bền vững, đ&atilde; c&oacute; một c&aacute;ch giải quyết những bộ pin xe đạp cũ bằng việc t&aacute;i sử dụng ch&uacute;ng trong sản phẩm loa di động mới của họ.<br />\r\n<br />\r\nNhững bộ pin cũ của xe đạp th&ocirc;ng minh tuy kh&ocirc;ng thể sử dụng được tr&ecirc;n c&aacute;c xe kh&aacute;c v&igrave; giới hạn sạc của đ&atilde; xuống thấp hơn mức tối thiểu, nhưng vẫn c&oacute; thể được d&ugrave;ng trong c&aacute;c thiết bị &iacute;t ti&ecirc;u hao điện hơn như loa di động hay c&aacute;c thiết bị c&aacute; nh&acirc;n kh&aacute;c. Ch&iacute;nh v&igrave; thế, việc t&aacute;i sử dụng th&ocirc;ng minh những bộ pin n&agrave;y trước khi đem ch&uacute;ng đi t&aacute;i chế th&agrave;nh một bộ pin mới l&agrave; một việc l&agrave;m rất tốt cho m&ocirc;i trường sống. &Yacute; tưởng n&agrave;y của Gomi cũng kh&ocirc;ng ho&agrave;n to&agrave;n mới khi c&aacute;c h&atilde;ng xe hơi như Renault hay Tesla cũng đang thực hiện biện ph&aacute;p n&agrave;y ở một mức độ cao hơn: d&ugrave;ng những bộ pin cho xe hơi v&agrave;o mạng lưới điện tại nh&agrave;.<br />\r\n<br />\r\nNhững bộ loa 100% t&aacute;i chế n&agrave;y vừa thời trang, vừa th&acirc;n thiện với m&ocirc;i trường, c&ograve;n g&igrave; tuyệt hơn phải kh&ocirc;ng c&aacute;c bạn?<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.engadget.com/limes-old-e-bike-batteries-are-powering-sustainable-portable-speakers-113635924.html\">đ&acirc;y</a> nha.</p>\r\n', '', 0, '2021-03-09 19:03:35'),
(33, 2, 'Nhật Bản bắt đầu thu phí túi nilon', '2021-03-16-11-12-42-photo-1-15729272756351946645363.jpg', '2021-03-16-11-12-42-tui-nylon-7282-1593658085.jpg', '', '', '', 'Đây là một trong những chính sách mà Chính phủ Nhật Bản đã đưa ra năm ngoái để giảm thiểu lượng rác thải nhựa và bảo vệ môi trường.', '<p>Từ ng&agrave;y 1/7/2020, c&aacute;c cửa h&agrave;ng b&aacute;n lẻ của Nhật Bản, bao gồm cả cửa h&agrave;ng tiện lợi v&agrave; si&ecirc;u thị, đ&atilde; bắt đầu thực hiện quy định thu ph&iacute; t&uacute;i nylon&nbsp;khi ph&aacute;t cho kh&aacute;ch mua h&agrave;ng. Đ&acirc;y l&agrave; một phần trong kế hoạch cắt giảm lượng r&aacute;c thải nhựa của Ch&iacute;nh phủ Nhật Bản.<br />\r\n<br />\r\nTheo kế hoạch n&agrave;y, Ch&iacute;nh phủ Nhật Bản sẽ cố tạo cho người ti&ecirc;u d&ugrave;ng nước n&agrave;y c&oacute; th&oacute;i quen mang t&uacute;i c&oacute; thể sử dụng nhiều lần khi đi chợ v&agrave; gi&uacute;p họ hiểu được biện ph&aacute;p n&agrave;y l&agrave; một bước tiến tới thay đổi lối sống của m&igrave;nh. Mỗi nh&agrave; b&aacute;n lẻ sẽ c&oacute; thể quyết định về mức t&iacute;nh cước ph&iacute; t&uacute;i nylon.<br />\r\n<br />\r\nCụ thể, trong ng&agrave;y đầu ti&ecirc;n thực hiện ch&iacute;nh s&aacute;ch mới, mức ph&iacute; t&uacute;i nil&ocirc;ng ph&aacute;t cho kh&aacute;ch h&agrave;ng ở c&aacute;c cửa h&agrave;ng b&aacute;n lẻ rất đa dạng, nhưng phổ biến ở mức 5 yen (gần 1.200 đồng)/t&uacute;i c&oacute; k&iacute;ch thước nhỏ v&agrave; 10 yen/t&uacute;i c&oacute; k&iacute;ch thước lớn.&nbsp;Ngo&agrave;i ra, c&aacute;c cửa h&agrave;ng b&aacute;n lẻ vẫn được ph&eacute;p ph&aacute;t miễn ph&iacute; cho kh&aacute;ch h&agrave;ng c&aacute;c t&uacute;i nhựa c&oacute; thể sử dụng nhiều lần với độ d&agrave;y &iacute;t nhất 0,05ml, c&aacute;c t&uacute;i nylon&nbsp;c&oacute; thể ph&acirc;n hủy sinh học, hay c&aacute;c t&uacute;i nil&ocirc;ng c&oacute; th&agrave;nh phần vật liệu sinh khối &iacute;t nhất 25% . C&aacute;c t&uacute;i nylon&nbsp;mỏng sử dụng để g&oacute;i thực phẩm tươi sống kh&ocirc;ng thuộc diện bị t&iacute;nh ph&iacute;.<br />\r\n<br />\r\nTheo Li&ecirc;n hợp quốc, c&aacute;c nh&agrave; hoạt động bảo vệ m&ocirc;i trường đ&atilde; chỉ tr&iacute;ch Nhật Bản qu&aacute; chậm chạp trong giảm lượng ti&ecirc;u thụ nhựa, bởi nước n&agrave;y thải ra lượng r&aacute;c thải nhựa t&iacute;nh theo đầu người lớn hơn bất kỳ nước n&agrave;o kh&aacute;c tr&ecirc;n thế giới, trừ nước Mỹ. B&ecirc;n cạnh đ&oacute;, t&uacute;i nylon&nbsp;m&agrave; c&aacute;c cửa h&agrave;ng b&aacute;n lẻ ph&aacute;t cho kh&aacute;ch h&agrave;ng chỉ chiếm khoảng 2% trong tổng lượng r&aacute;c thải nhựa ở Nhật Bản. V&igrave; vậy, việc l&agrave;m thế n&agrave;o để giảm lượng r&aacute;c thải nhựa vẫn l&agrave; b&agrave;i to&aacute;n nan giải&nbsp;đối với Ch&iacute;nh phủ Nhật Bản.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/ronecohouse/posts/2970774079824940\">đ&acirc;y</a> nha.</p>', '', 0, '2021-03-16 11:03:42'),
(34, 2, 'L\'Oreal khởi động chương trình tái chế ở Hong Kong', '2021-03-23-11-23-38-loreal-recycling-programme-hong-kong.jpg', '2021-03-23-11-23-38-loreal-recycling-programme-hong-kong.jpg', '', '', '', 'L\'Oreal khởi động chương trình tái chế ở 13 cửa hàng tại Hong Kong', '<p>V&agrave;o cuối th&aacute;ng n&agrave;y, L&#39;Oreal Hong Kong sẽ bắt đầu chương tr&igrave;nh t&aacute;i chế ở 13 cửa h&agrave;ng của m&igrave;nh. Theo đ&oacute;, kh&aacute;ch h&agrave;ng c&oacute; thể mang đến c&aacute;c cửa h&agrave;ng L&#39;Oreal ở khắp th&agrave;nh phố để được t&aacute;i chế, bao gồm chai nhựa, mascara, ch&igrave; kẻ m&agrave;y, son m&ocirc;i, v.v...<br />\r\n<br />\r\nChương tr&igrave;nh t&aacute;i chế n&agrave;y l&agrave; một hoạt động cộng t&aacute;c với V Cycle, một doanh nghiệp x&atilde; hội với định hướng tạo ra những giải ph&aacute;p sinh th&aacute;i v&agrave; con người cho vấn đề m&ocirc;i trường ở Hong Kong.<br />\r\n<br />\r\n&quot;Bằng việc đem đến cho kh&aacute;ch h&agrave;ng một m&ocirc; h&igrave;nh t&aacute;i chế v&agrave; t&aacute;i sử dụng t&agrave;i nguy&ecirc;n, ch&uacute;ng t&ocirc;i đang tạo ra một nền kinh tế tuần ho&agrave;n c&oacute; lợi cho cả m&ocirc;i trường v&agrave; x&atilde; hội, đồng thời thay đổi th&oacute;i quen sử dụng bằng việc ngăn chạn d&ograve;ng chảy nhựa. C&ugrave;ng với sự cộng t&aacute;c của L&#39;Oreal Hong Kong, ch&uacute;ng t&ocirc;i c&oacute; thể n&acirc;ng cao nhận thức của kh&aacute;ch h&agrave;ng về sự cấp thiết của việc t&aacute;i chế, v&agrave; tạo động lực cho họ h&agrave;nh động.&quot; - CEO của V Cycle chia sẻ.<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.marketing-interactive.com/loreal-green-recycling-programme-hong-kong\">đ&acirc;y</a> nha.</p>\r\n', '', 0, '2021-03-23 11:03:38'),
(35, 1, 'CÓ GÌ CHƠI NẤY - Workshop cho bé: THÀNH PHỐ TÁI CHẾ', '2021-04-02-09-45-01-12345.jpg', '2021-04-05-16-26-45-166124306-249420020222234-4005022102204075092-n.jpg', 'VIRES.Cộng đồng giáo dục Reggio Emilia tại Việt Nam', '15-17:30, 03/04/2021', 'https://www.facebook.com/events/549658066012490', 'Workshop dành cho phụ huynh muốn chơi với con, tận dụng những nguyên vật liệu đơn giản xung quanh mình - dễ làm, không tốn kém, và giúp khám phá khả năng sáng tạo từ những điều bình thường nhất.', '<p>&quot;C&Oacute; G&Igrave; CHƠI NẤY&quot; của VIRES chưa bao giờ hết hot!!! Workshop d&agrave;nh cho phụ huynh muốn d&agrave;nh thời gian chơi với con, tận dụng từ những nguy&ecirc;n vật liệu đơn giản xung quanh m&igrave;nh - dễ l&agrave;m, kh&ocirc;ng tốn k&eacute;m, quan trọng l&agrave; kh&aacute;m ph&aacute; khả năng s&aacute;ng tạo diệu kỳ từ những điều b&igrave;nh thường nhất.<br />\r\n<br />\r\nC&Oacute; G&Igrave; CHƠI NẤY lần n&agrave;y sẽ tận dụng nguy&ecirc;n liệu m&agrave; c&oacute; lẽ c&aacute;c gia đ&igrave;nh bỏ đi nhiều nhất h&agrave;ng ng&agrave;y: vỏ hộp sữa v&agrave; thực phẩm c&aacute;c loại!<br />\r\n<br />\r\nPhụ huynh sẽ:<br />\r\n️Học c&aacute;ch s&aacute;ng tạo những hoạt động an to&agrave;n, ph&ugrave; hợp để chơi với con từ nguy&ecirc;n liệu c&oacute; sẵn, với tinh thần của Hướng tiếp cận Reggio Emilia l&agrave; kh&ocirc;ng c&oacute; khu&ocirc;n mẫu. Sau workshop mỗi người sẽ l&agrave;m được những sản phẩm ho&agrave;n to&agrave;n theo sở th&iacute;ch v&agrave; hứng th&uacute; của m&igrave;nh v&agrave; con.<br />\r\nĐược chia sẻ về gi&aacute;o dục con theo Hướng tiếp cận Reggio Emilia<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại đ&acirc;y nha!</p>\r\n', '21 Phạm Ngọc Thạch, Quận 3, TPHCM', 0, '2021-04-05 16:04:45'),
(36, 1, 'Đổi pin lấy cây', '2021-04-12-16-09-42-171087474-166705808647912-1292892425503772006-n.jpg', '2021-04-12-16-09-42-171296661-166706981981128-6863306522080490893-n.jpg', 'Nhà Nhiều Lá', '17-18/4/2021', 'https://www.facebook.com/permalink.php?story_fbid=166707311981095&id=100686531916507', 'Với mong muốn khuyến khích mọi người phân loại rác tại nguồn, Nhà tổ chức sự kiện ĐỔI PIN LẤY CÂY.', '<p>Mỗi cục pin bị vứt ra m&ocirc;i trường hay kh&ocirc;ng xử l&yacute; triệt để sẽ l&agrave;m &ocirc; nhiễm 1 m&eacute;t khối đất v&agrave; 500 l&iacute;t nước trong v&ograve;ng 50 năm. Việc xử l&yacute; kh&ocirc;ng đ&uacute;ng c&aacute;ch l&agrave; mối họa lớn khi c&aacute;c chất độc hại như ch&igrave;, thủy ng&acirc;n,... r&ograve; rỉ. Thủy ng&acirc;n từ c&aacute;c nguồn &ocirc; nhiễm khi x&acirc;m nhập v&agrave;o cơ thể qua đường ăn uống hoặc h&iacute;t thở, ch&uacute;ng c&oacute; thể g&acirc;y hại n&atilde;o, thận, hệ thống sinh sản v&agrave; tim mạch&hellip; Một lượng nhỏ của ch&igrave; cũng c&oacute; thể g&acirc;y hại cho cơ thể.<br />\r\n<br />\r\nVới mong muốn khuyến kh&iacute;ch mọi người ph&acirc;n loại r&aacute;c tại nguồn, Nh&agrave; tổ chức sự kiện ĐỔI PIN LẤY C&Acirc;Y. Pin v&agrave; c&aacute;c thiết bị điện tử hỏng sau khi thu gom ch&uacute;ng m&igrave;nh sẽ gửi đến c&aacute;c điểm thu gom của Việt Nam t&aacute;i chế. H&atilde;y đem pin/TBĐT hỏng đến sự kiện lần n&agrave;y để cho ch&uacute;ng cơ hội được về đ&uacute;ng nơi xử l&yacute; v&agrave; nhận về những m&oacute;n qu&agrave; xinh xinh nh&eacute;.<br />\r\n<br />\r\nC&aacute;ch quy đổi: Từ 5 pin hay thiết bị điện tử hỏng trở l&ecirc;n cậu đổi được 1 sen đ&aacute; nhỏ.<br />\r\n<br />\r\nMỗi người tham gia nhận tối đa 1 c&acirc;y, đ&acirc;y l&agrave; hoạt động khuyến kh&iacute;ch người d&acirc;n ph&acirc;n loại v&agrave; xử l&yacute; đ&uacute;ng đắn nguồn r&aacute;c thải nguy hại nh&eacute; cậu!<br />\r\n<br />\r\nT&igrave;m hiểu th&ecirc;m tại <a href=\"https://www.facebook.com/permalink.php?story_fbid=166707311981095&id=100686531916507\" target=\"_blank\">đ&acirc;y</a> nh&eacute;!</p>\r\n', '419/17 CMT8, Quận 10, TPHCM', 0, '2021-04-12 16:04:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `status`) VALUES
(1, 'eco event', 0),
(2, 'Eco News', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_name` varchar(64) NOT NULL,
  `access_rights` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page` varchar(128) NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(128) NOT NULL,
  `thumnail_url` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `seo`
--

INSERT INTO `seo` (`id`, `page`, `meta_title`, `meta_description`, `thumnail_url`) VALUES
(1, 'store', 'Khám phá địa điểm zero waste', 'Khám phá các quán cafe, nhà hàng, shop bán sản phẩm zero waste, bền vững với môi trường, giúp giảm rác thải nhựa.', '2021-01-05-10-52-36376413497-screenshot_1-png'),
(2, 'products', 'Sản phẩm zero waste', 'Bắt đầu lối sống zero waste dễ dàng với bộ sưu tập hơn 20 sản phẩm bền vững với môi trường và nơi để bạn mua chúng.', '2021-01-05-10-54-54283048054-screenshot_4-png'),
(3, 'about', 'Về Zero Waste Wonderland', 'Một nhóm bạn làm agency quảng cáo muốn đem những ý tưởng và khả năng thiết kế để giúp thay đổi vấn đề rác thải nhựa.', '2021-01-05-10-59-40675245540-zww_fbcover-jpg'),
(4, 'events', 'Tin tức sự kiện zero waste', 'Tin tức zero waste, sự kiện, hội chợ, workshop làm đồ tái chế, chợ đổi đồ cũ, 2nd hand cho gia đình, trẻ em và nhóm bạn.', '2021-01-05-11-02-08436504886-screenshot_2-png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `store_category_id` varchar(128) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `logo` varchar(128) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `large_photo` varchar(128) NOT NULL,
  `website` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(256) NOT NULL,
  `shopee` varchar(256) NOT NULL,
  `lazada` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `stores`
--

INSERT INTO `stores` (`id`, `store_category_id`, `name`, `description`, `logo`, `photo`, `large_photo`, `website`, `facebook`, `instagram`, `youtube`, `shopee`, `lazada`, `email`) VALUES
(1, '1', 'A Little Bit', '<p>Little Bit rất mong c&ugrave;ng đồng h&agrave;nh với c&aacute;c bạn trong h&agrave;nh tr&igrave;nh giảm thải r&aacute;c nhựa v&agrave; bảo vệ m&ocirc;i trường bằng việc cung cấp những sản phẩm c&oacute; chất liệu dễ ph&acirc;n huỷ, thiết kế th&acirc;n thiện v&agrave; gần gũi với sở th&iacute;ch của c&aacute;c bạn kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Nguồn: Fanpage A Little Bit</p>\r\n', '2021-03-30-16-00-52-101206370-678319592735081-6414123869451321344-n.jpg', '2021-03-29-16-26-00-1-a-little-bit-[original-resolution].jpg', '2020-12-24-11-54-12-consumer-good-5.jpg', 'https://www.alittlebit.vn/', 'https://www.facebook.com/ALittleBitVn/', 'https://www.instagram.com/alittlebit.vn/', '', '', '', 'info@alittlebit.vn'),
(2, '2', 'September Saigon', '<p>Qu&aacute;n sử dụng ống h&uacute;t giấy v&agrave; ly thủy tinh, tuy nhi&ecirc;n khi takeaway vẫn d&ugrave;ng nắp nhựa v&agrave; quai nylon. Qu&aacute;n c&oacute; kh&ocirc;ng gian tho&aacute;ng m&aacute;t, xanh đẹp, &acirc;m nhạc nhẹ nh&agrave;ng v&agrave; c&aacute;c m&oacute;n nước, b&aacute;nh tuyệt vời.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;September Saigon</p>\r\n', '2021-03-30-16-04-13-145841757-503545501023586-3864001852309031544-n.jpg', '2021-03-29-16-26-08-2-september-saigon.jpg', '2020-12-24-11-59-53-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/septembersaigon', 'https://www.instagram.com/september.saigon/', '', '', '', 'september.saigon@gmail.com'),
(3, '2', 'Côte cafe', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox v&agrave; ly thủy tinh. C&ocirc;te l&agrave; một qu&aacute;n cafe nhỏ xinh phong c&aacute;ch Nhật với c&aacute;c m&oacute;n nước rất ngon.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;C&ocirc;te cafe</p>\r\n', '2021-04-02-10-46-38-cote.jpg', '2021-03-29-16-26-16-3-cote.jpg', '2020-12-24-12-01-44-restaurant-cafe-4.jpg', 'https://cotecafe-cafe.business.site/?m=true&fbclid=IwAR0LlXzyEkem-JnkrOKmWODiOX4SsR-jwwPhkiGgvnPWLkVPiS3BUUC7aBA', '', '', '', '', '', 'cote.cafe10419@gmail.com'),
(4, '2', 'Dreamy Days cafe', '<p>Qu&aacute;n sử dụng ống h&uacute;t thủy tinh v&agrave; ly gốm sứ. Qu&aacute;n cafe d&agrave;nh cho những người mộng mơ v&agrave; ủng hộ một tương lai kh&ocirc;ng c&ograve;n r&aacute;c thải nhựa, thi&ecirc;n nhi&ecirc;n tốt l&agrave;nh.</p>\r\n\r\n<p>Nguồn: Fanpage Dreamy Days cafe</p>\r\n', '2021-03-30-16-06-35-98287847-612883472650977-8778192478986567680-n.jpg', '2021-03-29-16-26-23-4-dreamy-days-[original-resolution].jpg', '2020-12-24-12-01-51-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/dreamyday.sg/', '', '', '', '', 'dreamyday.sg@gmail.com'),
(5, '1', 'Laiday Refill Station', '<p>Lại Đ&acirc;y Refill Station l&agrave; trạm dừng lại của những người bạn quan t&acirc;m đến lối sống xanh, bền vững v&agrave; th&acirc;n thiện với m&ocirc;i trường. Nơi mua sắm c&aacute;c m&oacute;n đồ zero waste như b&igrave;nh nước, ống h&uacute;t, t&uacute;i vải, b&agrave;n chải hay c&aacute;c thực phẩm v&agrave; mỹ phẩm nguồn gốc tự nhi&ecirc;n.</p>\r\n', '2021-03-30-16-08-48-37890771-215881829267587-3109784475261730816-n.jpg', '2021-03-29-16-26-31-5-laiday-refill-[original-resolution].jpg', '2020-12-24-12-02-01-consumer-good-5.jpg', 'https://www.laidayrefill.com', 'https://www.facebook.com/laidayrefillstation', 'https://www.instagram.com/laidayrefillstation/', '', '', '', 'info@laidayrefill.com'),
(6, '2', 'Cafe Luia', '<p>Qu&aacute;n sử dụng ống h&uacute;t thủy tinh v&agrave; ly gốm sứ, tuy nhi&ecirc;n takeaway vẫn d&ugrave;ng ly nhựa, ống h&uacute;t nhựa, bao nylon. Luia l&agrave; một qu&aacute;n cafe kha rộng r&atilde;i, xinh xắn v&agrave; thức uống ngon.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Cafe Luia</p>\r\n', '2021-04-02-10-18-08-luia.jpg', '2021-03-29-16-26-39-6-cafe-luia-1.jpg', '2020-12-24-12-02-08-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/cafeluia', '', '', '', '', 'cafeluia232@gmail.com'),
(7, '1', 'Papa’s Dreamer', '<p><span>Ch&uacute;ng t&ocirc;i l&agrave; một gia đ&igrave;nh nhỏ, chia sẻ những giải ph&aacute;p l&agrave;m sạch cơ thể ở lối sống đ&ocirc; thị; trong sự h&agrave;i h&ograve;a giữa t&igrave;nh y&ecirc;u thương cơ thể v&agrave; t&ocirc;n trọng m&ocirc;i trường thi&ecirc;n nhi&ecirc;n. N&Oacute;I KH&Ocirc;NG VỚI: Sử dụng dầu cọ - Thử nghiệm tr&ecirc;n động vật - Nilon &amp; Nhựa trong to&agrave;n bộ quy tr&igrave;nh v&agrave; bao b&igrave;.</span></p>\r\n\r\n<p><span>Nguồn: Fanpage&nbsp;Papa&rsquo;s Dreamer</span></p>\r\n', '2021-04-02-10-21-10-papa-s-dreamer.jpg', '2021-03-29-16-39-54-7-papa-s-dreamer.jpg', '2020-12-24-12-02-16-consumer-good-5.jpg', 'https://papadreamer.com/', 'https://www.facebook.com/papadreamer/', 'https://www.instagram.com/papadreamer.soap/', '', 'https://shopee.vn/papadreamer', '', 'contact@papadreamer.com'),
(9, '2', 'à cà phê', '<p>Ở đ&acirc;y c&oacute; t&aacute;ch c&agrave; ph&ecirc; thơm, mấy ổ b&aacute;nh m&igrave; gi&ograve;n v&agrave; v&agrave;i điều vui nho nhỏ.. mời bạn gh&eacute; chơi!</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;&agrave; c&agrave; ph&ecirc;</p>\r\n', '2021-04-02-10-22-24-a.jpg', '2021-03-29-16-40-06-9-a-cafe-[original-resolution].jpg', '2020-12-24-12-02-57-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/caphebanhmingon/', 'https://www.instagram.com/acaphebanhmi/?fbclid=IwAR2vaM9bjdPBkyRJaYq4jfOr9XNRZUFLxlV8x7FKRrIa8x3pdgtBQrZy2J0', '', '', '', ''),
(10, '3', 'Tree House', '<p>Tại Tree House bạn sẽ cảm nhận được thi&ecirc;n nhi&ecirc;n qua từng sản phẩm, thư gi&atilde;n với những hương thơm nhẹ nh&agrave;ng. Cho bạn cảm nhận n&eacute;t hồn qu&ecirc; ở thời hiện đại.</p>\r\n\r\n<p>Nguồn: Fanpage Tree House</p>\r\n', '2021-04-02-10-24-58-tree-house.jpg', '2021-03-29-16-40-19-10-tree-house-[original-resolution].jpg', '2020-12-24-12-03-11-beauty-4.jpg', '', 'https://www.facebook.com/treehouseq10/', '', '', 'https://shopee.vn/helentruong.ngocha', '', 'treehouseq10@gmail.com'),
(11, '1', 'Nhà Của Cá Cơm', '<p>Nh&agrave; Của C&aacute; Cơm l&agrave; một nơi chốn nho nhỏ xinh xinh ngụ tại đ&acirc;u đ&oacute; th&acirc;n quen của Saigon rộng lớn. Nơi m&agrave; c&aacute;c bạn c&oacute; thể t&igrave;m thấy nhiều thứ đ&aacute;ng y&ecirc;u, v&ocirc; v&agrave;n h&igrave;nh h&agrave;i được may từ thật nhiều loại vải.</p>\r\n\r\n<p>Nguồn: Fanpage Nh&agrave; Của C&aacute; Cơm</p>\r\n', '2021-04-02-10-33-52-ca-com.jpg', '2021-03-29-16-40-26-11-nha-cua-ca-com.jpg', '2020-12-24-12-03-19-consumer-good-5.jpg', '', 'https://www.facebook.com/nhacuacacom/', '', '', 'https://shopee.vn/cacom.totebags', '', ' nhacuacacom@gmail.com'),
(12, '2', 'Lekima coffee', '<p>LEKIMA c&oacute; một khoảnh vườn xanh m&aacute;t, y&ecirc;n ả để bạn thong dong tr&ograve; chuyện, đọc s&aacute;ch, ngắm nắng nhảy m&uacute;a tr&ecirc;n l&aacute; v&agrave; thưởng thức t&aacute;ch tr&agrave; Việt sạch l&agrave;nh.</p>\r\n\r\n<p>Nguồn: Fanpage LEKIMA</p>\r\n', '2021-04-02-10-48-27-lekima.jpg', '2021-03-29-16-40-31-12-lekima.jpg', '2020-12-24-12-03-33-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/Lekimavn-196737497546170/', '', '', '', '', 'lekima.bio@gmail.com'),
(13, '2', 'Tiệm Cafe Saigon Retro', '<p>Tiệm Cafe Saigon Retro Một S&agrave;i G&ograve;n rất kh&aacute;c v&agrave; t&aacute;ch biệt khỏi sự vội v&atilde; c&ocirc;ng việc, bộn bề cuộc sống. S&agrave;i G&ograve;n Retro, S&agrave;i G&ograve;n của những năm 65<br />\r\n- Tiệm sử dụng ống h&uacute;t inox, ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage Tiệm Cafe Saigon Retro</p>\r\n', '2021-04-02-10-51-16-saigon-retro.jpg', '2021-03-29-16-40-35-13-tiem-cafe-saigon-retro.jpg', '2020-12-24-12-03-39-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/saigon65/', '', '', '', '', 'saigonretro65@gmail.com'),
(15, '2', 'Passengers', '<p>Kh&ocirc;ng gian ấm &aacute;p, xinh xắn c&ugrave;ng với những thức uống tốt cho sức khoẻ, c&oacute; nguồn gốc từ thực vật.<br />\r\n- Qu&aacute;n sử dụng ống h&uacute;t tre, ống h&uacute;t inox, ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Passengers - fruity &amp; nutty drinks</p>\r\n', '2021-04-02-11-02-20-passengers.jpg', '2021-03-29-16-40-59-14-passengers.jpg', '2020-12-24-12-03-53-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/passengers.in.saigon/', '', '', '', '', ' passengers.in.saigon@gmail.com'),
(16, '2', 'Là Việt Coffee ', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox, ly thủy tinh<br />\r\nNguồn: Fanpage&nbsp;La Viet Coffee (S&agrave;i G&ograve;n Trần Quang Diệu)</p>\r\n', '2021-04-02-11-10-01-la-viet.jpg', '2021-03-29-16-41-06-15-la-viet.jpg', '2020-12-24-12-04-06-restaurant-cafe-4.jpg', ' http://www.laviet.coffee/', 'https://www.facebook.com/La-Viet-Coffee-284369845599580/', 'https://www.instagram.com/lavietcoffee/', '', '', '', 'coffee.laviet@gmail.com'),
(18, '2', 'Kiba Saigon', '<p>Kh&ocirc;ng sử dụng c&aacute;c sản phẩm nhựa trong nh&agrave; h&agrave;ng, bếp trưởng c&ograve;n tự tay đi chợ mua những thực phẩm tươi trực tiếp từ người nu&ocirc;i trồng, thay v&igrave; d&ugrave;ng những nguy&ecirc;n liệu bọc trong t&uacute;i ni l&ocirc;ng ở si&ecirc;u thị v&igrave; &ldquo;đồ g&oacute;i trong t&uacute;i nhựa ăn kh&ocirc;ng ngon&rdquo;.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Kiba Saigon</p>\r\n', '2021-04-02-11-22-06-kiba.jpg', '2021-03-29-16-41-12-16-kiba-saigon.jpg', '2020-12-24-12-04-19-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/kibasaigon/', 'https://www.instagram.com/kibasaigon/', '', '', '', 'admin@kibasaigon.com'),
(19, '4', 'Tiệm Rau của ba', '<p>N&ocirc;ng sản sạch cho mọi nh&agrave;, giảm thiểu sử dụng nylon v&agrave; thay bằng bọc l&aacute; chuối</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Tiệm Rau của Ba</p>\r\n', '2021-04-05-14-31-05-tiem-rau-cua-ba.jpg', '2021-03-29-16-41-18-17-tiem-rau-cua-ba.jpg', '2020-12-24-12-04-32-organic-food-4.jpg', '', 'https://www.facebook.com/tiemraucuaba/', 'https://www.instagram.com/tiemraucuaba/', '', '', '', ' tiemraucuaba@gmail.com'),
(20, '1', 'Tạp hóa Lá Xanh', '<p>Tiệm tạp ho&aacute; b&aacute;n đủ thứ ăn uống, sinh hoạt đời thường, c&ograve;n gọi l&agrave; hằm b&agrave; lằng. Với mong muốn quay lại thời xưa m&igrave;nh đi mua đồ ăn th&igrave; x&aacute;ch c&aacute;i giỏ, c&aacute;i hũ, c&aacute;i b&aacute;t đi m&agrave; mua, L&aacute; xanh đ&atilde; ra đời.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Tạp h&oacute;a L&aacute; Xanh</p>\r\n', '2021-04-05-14-31-25-tap-hoa-la-xanh.jpg', '2021-03-29-16-41-24-18-tap-hoa-la-xanh.jpg', '2020-12-24-12-04-44-consumer-good-5.jpg', 'https://taphoalaxanh.com/', 'https://www.facebook.com/taphoalaxanh.azerowasteshop/', '', '', '', '', 'taphoalaxanh@gmail.com'),
(21, '2', 'Phin Xanh ', '<p>Qu&aacute;n sử dụng ống h&uacute;t giấy, ly thủy tinh. Với ti&ecirc;u ch&iacute; FROM FARM TO CUP, tất cả những&nbsp;hạt c&agrave; ph&ecirc; sạch từ vườn đến ly c&agrave; ph&ecirc; thơm lừng đều được Phin Xanh tự tay chế biến th&agrave;nh&nbsp;những sản phẩm đặc biệt mang t&iacute;nh văn ho&aacute; Việt Nam.&nbsp;</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Phin Xanh Vietnamese Coffee &amp; Tea</p>\r\n', '2021-04-05-14-32-01-phin-xanh.jpg', '2021-03-29-16-41-30-19-phin-xanh.jpg', '2020-12-24-12-05-01-restaurant-cafe-4.jpg', 'https://phinxanh.com/', 'https://www.facebook.com/phinxanhvietnamesecoffeeandtea/', '', '', '', '', 'info@phinxanh.com'),
(22, '2', 'The Seat Cafe', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox, ly thủy tinh, tuy nhi&ecirc;n takeaway vẫn d&ugrave;ng ly nhựa, ống h&uacute;t nhựa v&agrave; bao nylon. Qu&aacute;n nhỏ xinh, kh&ocirc;ng gian y&ecirc;n tĩnh, menu rất phong ph&uacute;.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;The Seat Cafe</p>\r\n', '2021-04-05-14-32-14-the-seat.jpg', '2021-03-29-16-41-36-20-the-seat-cafe.jpg', '2020-12-24-12-05-09-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/theseatcafe/', 'https://www.instagram.com/koo.kaffe/?', '', '', '', 'theseatcoffee@gmail.com'),
(23, '2', 'Koo Kaffe', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox, ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Koo Kaffe</p>\r\n', '2021-04-05-14-32-23-koo-kaffe.jpg', '2021-03-29-16-41-43-21-koo-kaffe.jpg', '2020-12-24-12-07-13-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/koo.kaffe/', 'https://www.instagram.com/koo.kaffe/?fbclid=IwAR0PNNVWxSti5sWj44vChRsWjVqzbEO78i_-9qh1D503-4mlFtBsi5rz2tU', '', '', '', ' koo.kaffe@gmail.com'),
(24, '2', 'Thinker&Dreamer Coffee', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox, ống h&uacute;t tre v&agrave; ly thủy tinh, ly giấy v&agrave; t&uacute;i gi&acirc;y cho đồ uống takeaway. Some people says dreams will come true if we keep thinking about it.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Thinker&amp;Dreamer Coffee</p>\r\n', '2021-04-05-14-32-53-thinker-dreamer.jpg', '2021-03-29-16-41-49-22-thinker-dreamer-coffee.jpg', '2020-12-24-12-08-44-restaurant-cafe-4.jpg', 'https://thinkerdreamer.vn/midautumn/', 'https://www.facebook.com/thinker.dreamer.saigon', 'https://www.instagram.com/thinker.dreamer.coffee/', '', '', '', ''),
(25, '2', 'The Hidden Elephant', '<p>Qu&aacute;n sử dụng ống h&uacute;t cỏ, ống h&uacute;t b&atilde; m&iacute;a, ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;The Hidden Elephant Books &amp; Coffee</p>\r\n', '2021-04-05-14-33-06-hidden-elephant.jpg', '2021-03-29-16-41-56-23-the-hidden-elephant.jpg', '2020-12-24-12-08-52-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/pg/thehiddenelephantcafe', '', '', '', '', 'thehiddenelephantcafe@gmail.com'),
(27, '2', 'Phin&Bean', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox v&agrave; ly thủy tinh. Phin&amp;Bean would like to promote Vietnamese coffee to the world by directly sourcing beans from passionate and responsible Vietnamese coffee farmers.</p>\r\n\r\n<p>Nguồn: Fanpage Phin &amp; Bean</p>\r\n', '2021-04-05-14-33-23-phin-bean.jpg', '2021-03-29-16-45-51-24-phin-bean-[original-resolution].jpg', '2020-12-24-12-09-04-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/PhinandBean/', '', '', '', '', ''),
(28, '2,6', 'Nấp Saigon', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox v&agrave; ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Nấp Saigon</p>\r\n', '2021-04-05-14-33-35-nap-saigon.jpg', '2021-03-29-16-45-56-25-nap-saigon-[original-resolution].jpg', '2020-12-24-12-09-11-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/nap.saigon/', 'https://www.instagram.com/nap.saigon/', '', '', '', ' nap.project.saigon@gmail.com'),
(29, '2', 'Haven Book Cafe', '<p>Qu&aacute;n sử dụng ống h&uacute;t tre, ống h&uacute;t gạo, ly giấy, t&uacute;i vải, t&uacute;i giấy, ly thủy tinh. Haven is a book coffee shop in Thao Dien, covered by lots of plants, vintage items, a selected private collection of books, and a selective menu with quality drinks.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Haven Book cafe</p>\r\n', '2021-04-05-17-03-56-haven-book.jpg', '2021-03-29-16-46-01-26-haven-book-cafe-[original-resolution].jpg', '2020-12-24-12-09-26-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/havenbookcafe/?ref=page_internal', '', '', '', '', 'vietnamhaven@gmail.com'),
(30, '2', 'ICS Hub', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox v&agrave; ly thủy tinh. Một qu&aacute;n cafe nhỏ xinh v&agrave; cũng l&agrave; thư viện LGBT đầu ti&ecirc;n ở Việt Nam.&nbsp;</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;ICS Hub - Thư Viện LGBT</p>\r\n', '2021-04-05-17-04-06-ics-hub.jpg', '2021-03-29-16-42-28-27-ics-hub-[original-resolution].jpg', '2020-12-24-12-09-42-restaurant-cafe-4.jpg', 'http://ics.org.vn/ics-hub', 'https://www.facebook.com/icscommhub', '', '', '', '', 'icshub2019@gmail.com'),
(31, '2', 'The Vintage Emporium', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox v&agrave; ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;The Vintage Emporium&nbsp;Da Kao</p>\r\n', '2021-04-05-17-04-17-the-vintage-emporium.jpg', '2021-03-29-16-42-34-28-the-vintage-emporium-[original-resolution].jpg', '2020-12-24-12-09-50-restaurant-cafe-4.jpg', ' http://vintageemporium.net/', 'https://www.facebook.com/TheVintageEmporiumSGN/', 'https://www.instagram.com/thevintageemporium.dakao/?fbclid=IwAR0h5KeYnp_nChXWdCM5IBeG0VtyFQJYOOqLSDL7g1LfEB8hJIw_-dlFlss', '', '', '', 'kalen.nguyen@yahoo.com.vn'),
(32, '2', 'The Vagabond Pâtisserie', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox v&agrave; ly thủy tinh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;The Vagabond P&acirc;tisserie &amp; Caf&eacute;</p>\r\n', '2021-04-05-17-04-26-the-vagabond.jpg', '2021-03-29-16-42-43-29-vagabond-patisserie-[original-resolution].jpg', '2020-12-24-12-09-57-restaurant-cafe-4.jpg', 'http://www.thevagabondpatisserie.com/', 'https://www.facebook.com/thevagabond.saigon', 'https://www.instagram.com/thevagabond.saigon/', '', '', '', 'hello@thevagabondpatisserie.com'),
(33, '4', 'Xanh Shop', '<p>Xanh Shop cung cấp sản phẩm được nu&ocirc;i trồng, chế biến theo phương thức &lsquo;thuận tự nhi&ecirc;n&rsquo;, quy m&ocirc; nhỏ, tại địa phương, theo m&ugrave;a v&agrave; kh&ocirc;ng b&aacute;n thực phẩm nhập khẩu. Shop g&oacute;i rau bằng l&aacute; chuối, t&uacute;i giấy, giảm thiểu tối đa b&aacute;n thực phẩm sử dụng bao g&oacute;i nilon.&nbsp;</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;XanhShop</p>\r\n', '2021-04-05-17-04-37-xanhshop.jpg', '2021-03-29-16-42-51-30-xanh-shop-[original-resolution].jpg', '2020-12-24-12-10-08-organic-food-4.jpg', 'http://www.xanhshop.com/', 'https://www.facebook.com/XanhShopcom', '', '', '', '', 'order@xanhshop.com'),
(34, '2,4', 'Cơm Phú Quý', '<p>Thay v&igrave; d&ugrave;ng hộp nhựa kh&ocirc;ng th&acirc;n thiện với m&ocirc;i trường th&igrave; bữa nay bạn l&ecirc;n GrabFood đặt cơm g&agrave; ở đ&acirc;y sẽ được chuyển qua hộp b&atilde; m&iacute;a</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Cơm Ph&uacute; Qu&yacute;</p>\r\n', '2021-04-05-17-04-51-com-phu-quy.jpg', '2021-03-29-16-43-00-31-com-phu-quy.jpg', '2020-12-24-12-10-16-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/C%C6%A1m-Ph%C3%BA-Qu%C3%BD-2736450449761347/', '', '', '', '', ' comphuquy@gmail.com'),
(35, '2', 'Cơm tấm 135', '<p>Qu&aacute;n chuy&ecirc;n phục vụ c&aacute;c m&oacute;n ăn b&igrave;nh d&acirc;n, gi&aacute; hợp l&yacute; cho c&aacute;c thực kh&aacute;ch bận rộn v&agrave; c&aacute;c bạn sinh vi&ecirc;n xa nh&agrave;.&nbsp;Qu&aacute;n thay hộp nhựa bằng hộp b&atilde; m&iacute;a th&acirc;n thiện m&ocirc;i trường.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Cơm tấm 135</p>\r\n', '2021-04-05-17-05-06-restaurant-cafe3.jpg', '2021-03-29-16-43-09-32-com-tam-135.jpg', '2020-12-24-12-10-33-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/comtam135/', '', '', '', '', ''),
(36, '2', 'Bơ By Butterman', '<p>Hand-baked Goodness.&nbsp;Qu&aacute;n thay hộp nhựa bằng hộp b&atilde; m&iacute;a th&acirc;n thiện m&ocirc;i trường</p>\r\n\r\n<p>Nguồn: Fanpage Bơ By Butterman</p>\r\n', '2021-04-05-17-05-26-bo-by-butterman.jpg', '2021-03-29-16-43-20-33-bo-by-butterman.jpg', '2020-12-24-12-10-49-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/bobybutterman/', 'http://instagram.com/buttermanhouse', '', '', '', ''),
(37, '1,4', 'Cỏ', '<p>Cỏ l&agrave; nơi tập trung những mặt h&agrave;ng từ ăn uống đến vải v&oacute;c, dụng cụ theo hướng xanh, thuận tự nhi&ecirc;n.&nbsp;</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Cỏ</p>\r\n', '2021-04-05-17-05-38-co.jpg', '2021-03-29-16-43-28-34-co.jpg', '2020-12-24-12-11-24-consumer-good-5.jpg', 'http://www.coecohome.com/', 'https://www.facebook.com/co.eco.home', '', '', '', '', 'coecohome2891@gmail.com'),
(38, '2', 'Cheese Coffee', '<p>Qu&aacute;n sử dụng ống h&uacute;t giấy, ống h&uacute;t inox, ly thủy tinh. Cheese Coffee l&agrave; chuỗi cửa h&agrave;ng cafe lấy cảm hứng theo phong c&aacute;ch Ch&acirc;u &Acirc;u hiện đại chuy&ecirc;n phục vụ c&aacute;c thức uống bao gồm c&agrave; ph&ecirc;, tr&agrave;, đ&aacute; xay v&agrave; c&aacute;c loại b&aacute;nh ngọt, b&aacute;nh m&igrave; đ&uacute;ng gu người Việt.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Cheese Coffee</p>\r\n', '2021-04-05-17-05-48-cheese.jpg', '2021-03-29-16-43-35-35-cheese-coffee.jpg', '2020-12-24-12-11-40-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/cheesecoffee.vn', 'https://www.instagram.com/Cheese.coffee/?fbclid=IwAR2FPnH74eyZl4dbQRvQClT-qiURNlKG-e8cxEDJJD6v0UU9TvzTK7b8RsI', '', '', '', ' ccmarketing1912@gmail.com'),
(40, '4', 'Grain Milk', '<p>Grain Milk g&oacute;p phần trong việc giảm/ngưng sử dụng sữa b&ograve; v&agrave; bảo vệ m&ocirc;i trường qua những h&agrave;nh động cụ thể như: sữa nấu từ hạt c&oacute; xuất xứ r&otilde; r&agrave;ng, sử dụng chai thủy tinh t&aacute;i sử dụng qua h&igrave;nh thức đổi vỏ chai, sử dụng hạt ch&agrave; l&agrave; thay đường...</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Grain Milk</p>\r\n', '2021-04-05-17-06-12-restaurant-cafe3.jpg', '2021-03-29-16-43-42-36-grain-milk-[original-resolution].jpg', '2020-12-24-12-12-44-organic-food-4.jpg', ' http://grainmilk.vn/', 'https://www.facebook.com/Grainmilk/', '', '', '', '', 'grainmilkhandmade@gmail.com'),
(41, '2', 'Măng\'s Mania', '<p>Nh&agrave; h&agrave;ng chay sử dụng hộp mang đi được làm bằng lúa mạch, &aacute;p dụng ch&iacute;nh s&aacute;ch thu lại hộp đ&ecirc;̉ tái sử dụng.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Măng&#39;s Mania</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-04-05-17-06-27-mang-mania.jpg', '2021-03-29-16-45-35-37-mang-s-mania-[original-resolution].jpg', '2020-12-24-12-14-06-restaurant-cafe-4.jpg', ' http://mangsmania.myharavan.com/', 'https://www.facebook.com/mangsmania/', 'https://www.instagram.com/mangsmaniavn/?fbclid=IwAR2YFmT077W9m85jV7IDW5gPi0dCxtvJ1TEVqnD0KcPuSoQaZnoE6-snzDY', '', '', '', 'mangsmaniavn@gmail.com'),
(42, '2', 'PJ\'s Coffee', '<p>Qu&aacute;n sử dụng ly sứ, ly thủy tinh v&agrave; l&agrave; một trong những doanh nghiệp lu&ocirc;n đi đầu trong việc đấu tranh giảm sử dụng nhựa</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;PJ&#39;s Coffee Việt Nam</p>\r\n', '2021-04-05-17-06-36-pj-coffee.jpg', '2021-03-29-19-45-42-38-pj-s-coffee-[original-resolution].jpg', '2020-12-24-12-14-13-restaurant-cafe-4.jpg', ' http://pjscoffeevietnam.com/', 'https://www.facebook.com/Pjscoffeevietnam/', '', '', '', '', 'marketing@pjscoffeevietnam.com'),
(43, '2', 'The Organik House', '<p>Nh&agrave; h&agrave;ng thuần chay, sử dụng c&aacute;c nguy&ecirc;n liệu tự nhi&ecirc;n, thuần hữu cơ. Cung cấp c&aacute;c sản phẩm Zero Waste, d&ugrave;ng hộp đựng thức ăn làm từ b&atilde; m&iacute;a.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;The Organik House</p>\r\n', '2021-04-05-17-07-03-the-organik.jpg', '2021-03-29-19-45-50-39-organik-house-[original-resolution].jpg', '2020-12-24-12-14-24-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/VeganinSaigon/', '', '', '', '', ' home@theorganikhouse.com'),
(44, '2', 'Union Jack\'s Fish & Chips', '<p>At Union Jack&rsquo;s we like the simple things in life &ndash; calm seas and a piping hot plate of fish n chips. We are here to bring authentic British food to your belly.</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Union Jack&#39;s Fish &amp; Chips</p>\r\n', '2021-04-05-17-07-20-union-jack.jpg', '2021-03-29-19-45-57-40-union-jack-s-fish-chips-[original-resolution].jpg', '2020-12-24-12-14-33-restaurant-cafe-4.jpg', ' http://www.union-jacks.co/', 'https://www.facebook.com/UnionJackshcmc', 'https://www.instagram.com/unionjacksfishandchips/?fbclid=IwAR05VHoUFxpz5K4qAeWAfhZvqhSirSGqEsHOwQoiKWLz62dHxNM9MOow9B8', '', '', '', 'matt@union-jacks.co'),
(46, '5', 'Goosewalk', '<p>Goosewalk th&iacute;ch t&igrave;m những m&oacute;n đồ vintage chất lượng v&agrave; kh&ocirc;ng xưa cũ. Để bạn thực sự c&oacute; thể mặc ch&uacute;ng v&agrave; mặc đẹp.</p>\r\n\r\n<p>Cửa h&agrave;ng quần &aacute;o vintage, second-hand do ch&iacute;nh bạn chủ shop g&oacute;p nhặt, tuyển lựa từ khắp nơi, rồi về giặt ủi thơm tho. Shop sử dụng t&uacute;i giấy</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Goosewalk</p>\r\n', '2021-04-05-17-07-27-goosewalk.jpg', '2021-03-29-19-46-04-41-goosewalk.jpg', '2020-12-24-12-14-49-second-hand-store-4.jpg', '', 'https://www.facebook.com/allGoosewalk/', '', '', '', '', ''),
(47, '3,5', 'Moriko', '<p>Bạn c&oacute; thể t&igrave;m thấy ở Moriko những chiếc v&aacute;y, chiếc &aacute;o bằng linen được l&agrave;m thủ c&ocirc;ng, được th&ecirc;u tay những hoa, những l&aacute;. V&igrave; cũng y&ecirc;u bọn trẻ con, n&ecirc;n bạn dễ d&agrave;ng t&igrave;m được cả v&aacute;y linen được l&agrave;m cho c&aacute;c b&eacute;. Shop sử dụng t&uacute;i vải, t&uacute;i giấy.</p>\r\n\r\n<p>Nguồn: Fanpage Moriko</p>\r\n', '2021-04-05-17-07-39-restaurant-cafe3.jpg', '2021-03-29-19-46-11-42-moriko-[original-resolution].jpg', '2020-12-24-12-15-48-beauty-4.jpg', '', 'https://www.facebook.com/linenbymoriko/?ref=page_internal', 'https://www.instagram.com/linenbymoriko/?fbclid=IwAR2N58lPaC_zhCCSdXyD42pNWCPLh2L2otnWFdzPCsKgW4gqbUjd39ubczE', '', '', '', 'linenbymoriko@gmail.com'),
(48, '2', 'Soul Specialty Coffee', '<p>Qu&aacute;n d&ugrave;ng ly thủy tinh, khay gỗ, ống h&uacute;t inox</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Soul Specialty Coffee</p>\r\n', '2021-04-05-17-07-49-soul.jpg', '2021-03-29-19-46-22-43-soul-specialty-coffee-[original-resolution].jpg', '2020-12-24-12-16-58-restaurant-cafe-4.jpg', 'http://soulcoffee.vn/', 'https://www.facebook.com/SoulCoffeeVietnam', '', '', '', '', ' contact@soulcoffee.vn'),
(50, '2', 'Hao Hao Sài Gòn', '<p><span>Qu&aacute;n d&ugrave;ng ly thủy tinh, ống h&uacute;t giấy v&agrave; muỗng inox th&acirc;n thiện với m&ocirc;i trường. Tuy nhi&ecirc;n khi mua takeaway vẫn c&ograve;n d&ugrave;ng bao nylon v&agrave; nắp nhựa tr&ecirc;n ly giấy.</span></p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Hao Hao S&agrave;i G&ograve;n</p>\r\n', '2021-04-05-17-08-02-hao-hao.jpg', '2021-03-29-19-46-30-44-hao-hao-saigon-[original-resolution].jpg', '2020-12-24-12-18-10-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/haohaosaigon', '', '', '', '', 'saigon.haohao@gmail.com'),
(51, '4', 'Xanh Mushrooms', '<p>Nấm sạch từ n&ocirc;ng trại Việt Nam! Shop hạn chế tối thiểu bao b&igrave; bằng nilon/nhựa, v&agrave; đ&oacute;ng g&oacute;i bằng th&ugrave;ng giấy t&aacute;i sử dụng</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Xanh Mushrooms</p>\r\n', '2021-04-05-17-08-14-xanh-mushrooms.jpg', '2021-03-29-19-46-38-45-xanh-mushroom-[original-resolution].jpg', '2020-12-24-12-18-19-organic-food-4.jpg', 'https://xanhmushrooms.wordpress.com/', 'https://www.facebook.com/Xanhmushrooms/', '', '', '', '', 'xanhmushrooms@gmail.com'),
(52, '2', 'Pacey Cupcakes', '<p>Qu&aacute;n d&ugrave;ng li thủy tinh, kh&ocirc;ng sử dụng ống h&uacute;t để giảm r&aacute;c thải nhựa</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Pacey Cupcakes</p>\r\n', '2021-04-05-17-08-29-pacey.jpg', '2021-03-29-19-46-45-46-pacey-cupcakes-[original-resolution].jpg', '2020-12-24-12-18-26-restaurant-cafe-4.jpg', 'http://www.paceycupcakes.com/', 'https://www.facebook.com/paceycupcakes/', '', '', '', '', ' info@paceycupcakes.com'),
(53, '1', 'Limart', '<p>Limart ra đời với sứ mệnh săn l&ugrave;ng SP từ thi&ecirc;n nhi&ecirc;n CHẤT LƯỢNG THẬT SỰ với gi&aacute; th&agrave;nh THẤP NHẤT C&Oacute; THỂ để mọi người c&oacute; thể c&ugrave;ng chung tay bảo vệ tr&aacute;i đất. Limart trợ gi&aacute; 20% hầu hết sản phẩm xanh</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Limart - Zero waste</p>\r\n', '2021-04-05-17-08-43-limart.jpg', '2021-03-29-19-46-53-47-limart-[original-resolution].jpg', '2020-12-24-12-18-36-consumer-good-5.jpg', ' https://limartvn.com/', 'https://www.facebook.com/limart.0waste/', '', '', '', '', 'limart.info@gmail.com'),
(54, '2', 'Chidori Coffee', '<p>Chidori sử dụng ly v&agrave; ống h&uacute;t thủy tinh khi phục vụ tại qu&aacute;n. Với kh&aacute;ch h&agrave;ng mua Take-Away, Chidori sử dụng ly giấy, quai vải x&aacute;ch ly v&agrave; ống h&uacute;t giấy. Chỉ c&oacute; duy nhất ống h&uacute;t tr&agrave; sữa hiện tại ch&uacute;ng m&igrave;nh bắt buộc phải d&ugrave;ng ống h&uacute;t nhựa v&igrave; chưa t&igrave;m được sản phẩm thay thế</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;Chidori Coffee in Bed</p>\r\n', '2021-04-05-17-08-55-chidori.jpg', '2021-03-29-19-47-24-48-chidori-[original-resolution].jpg', '2020-12-24-12-18-45-restaurant-cafe-4.jpg', 'http://www.chidori.vn/', 'https://www.facebook.com/chidori.vn', 'https://www.instagram.com/chidori.vn/?fbclid=IwAR1f9s9PjzSSjilJ5Q4JgZBPfRWtvBbs5JxHrYoTjw229AKSE70s5mrzUNc', '', '', '', ' hello@chidori.vn'),
(55, '2', 'A\'dor Café', '<p>Qu&aacute;n sử dụng ống h&uacute;t inox, ly thủy tinh v&agrave; ly giấy. Một qu&aacute;n cafe dễ thương với cafe, b&aacute;nh v&agrave; c&aacute;c m&oacute;n ăn nhẹ rất ngon.</p>\r\n\r\n<p>Nguồn:&nbsp;A&#39;dor Caf&eacute;</p>\r\n', '2021-04-05-17-09-10-ador.jpg', '2021-03-29-19-47-31-49-a-dor-cafe.jpg', '2020-12-24-12-18-59-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/adorcafe.sg/', '', '', '', '', 'adorcafe.sg@gmail.com'),
(56, '2', 'Oromia Coffee & Lounge', '<p>Qu&aacute;n sử dụng ly thủy tinh v&agrave; ống h&uacute;t inox. Oromia với kh&ocirc;ng gian nhẹ nh&agrave;ng, tươi m&aacute;t của c&acirc;y xanh, mang trong m&igrave;nh một ch&uacute;t hiện đại pha lẫn ch&uacute;t cổ điển với sự kết hợp giữa gỗ v&agrave; k&iacute;nh.</p>\r\n\r\n<p>Nguồn: Oromia Coffee &amp; Lounge Fanpage</p>\r\n', '2021-04-05-17-09-37-oromia.jpg', '2021-03-29-19-47-37-50-oromia-[original-resolution].jpg', '2020-12-24-12-19-11-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/oromiacafe/', '', '', '', '', ''),
(57, '2', 'Coffee Hut', '<p>Qu&aacute;n sử dụng ly thủy tinh v&agrave; ống h&uacute;t inox, ống h&uacute;t giấy. Coffee Hut is a Vietnamese authentic coffeeshop that use 100% Arabica beans, traditional&amp; creative drinks.&nbsp;</p>\r\n\r\n<p>Nguồn: Coffee Hut Fanpage</p>\r\n', '2021-04-05-17-09-49-coffee-hut.jpg', '2021-03-29-19-47-45-51-coffee-hut-[original-resolution].jpg', '2020-12-24-12-19-25-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/coffeehutvietnam', '', '', '', '', 'coffeehutvietnam@gmail.com'),
(58, '2', 'Danshari Coffee', '<p>Qu&aacute;n sử dụng ly thủy tinh, ống h&uacute;t thủy tinh. Danshari Coffee l&agrave; một cửa h&agrave;ng nhỏ nhắn, dễ thương, phục vụ cafe v&agrave; c&aacute;c m&oacute;n ăn mang&nbsp;phong c&aacute;ch Nhật Bản.</p>\r\n\r\n<p>Nguồn: Danshari Coffee Fanpage</p>\r\n', '2021-04-05-17-31-31-danshari.jpg', '2021-03-29-19-47-52-52-danshari-[original-resolution].jpg', '2020-12-24-12-19-38-restaurant-cafe-4.jpg', 'http://www.dansharicoffee.com/', 'https://www.facebook.com/dansharicoffee', 'https://www.instagram.com/danshari_coffee', '', '', '', 'info@dansharicoffee.com'),
(59, '2', 'Tiệm cà phê EM Ở ĐÂU', '<p>Tiệm sử dụng ly thủy tinh, ống h&uacute;t inox. Tiệm c&agrave; ph&ecirc; EM Ở Đ&Acirc;U l&agrave; căn nh&agrave; nhỏ trong một con hẻm nhỏ trung t&acirc;m Quận 1. L&agrave; căn nh&agrave; giữa k&yacute; ức v&agrave; hiện tại, đang đợi để đ&oacute;n bạn trở về.</p>\r\n\r\n<p>Nguồn: EM Ở Đ&Acirc;U&nbsp;Fanpage</p>\r\n', '2021-04-05-17-32-03-em-o-dau.jpg', '2021-03-29-19-48-00-53-tiem-ca-phe-em-o-dau-[original-resolution].jpg', '2020-12-24-12-19-49-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/emodaucafe', '', '', '', '', 'emodaucafe@gmail.com'),
(60, '2', 'The 1985 Tea House', '<p>Qu&aacute;n cafe xinh xắn mang phong c&aacute;ch Nhật Bản, mọi nguy&ecirc;n liệu đều được nhập trực tiếp từ Nhật với chất lượng tốt nhất, tươi v&agrave; tự nhi&ecirc;n 100%.</p>\r\n\r\n<p>Nguồn: The 1985 Tea House Fanpage</p>\r\n', '2021-04-05-17-32-12-1985.jpg', '2021-03-29-19-48-07-54-the-1985-tea-house-[original-resolution].jpg', '2020-12-24-12-19-58-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/the1985teahouse', '', '', '', '', ''),
(61, '2', 'Partea - Tea Room', '<p>Qu&aacute;n sử dụng ly tr&agrave; kiểu Anh, ống h&uacute;t inox. Partea l&agrave; một tiệm tr&agrave; v&agrave; b&aacute;nh ngọt theo kiểu Anh, n&eacute;p trong khu chung cư cũ ở Nguyễn Huệ.</p>\r\n\r\n<p>Nguồn:&nbsp;Partea - Tea Room Fanpage</p>\r\n', '2021-04-05-17-32-29-partea.jpg', '2021-03-29-19-48-14-55-partea-[original-resolution].jpg', '2020-12-24-12-20-10-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/letspartea', 'https://www.instagram.com/partea.tearoom/', '', '', '', ''),
(62, '2', 'La Mia Cafe', '<p>La Mia Cafe l&agrave; một qu&aacute;n cafe nhỏ với đam m&ecirc; lớn d&agrave;nh cho cafe. Ngo&agrave;i ra qu&aacute;n c&ograve;n t&iacute;ch cực hỗ trợ zero waste khi b&aacute;n c&aacute;c m&oacute;n đồ như b&igrave;nh nước, ống h&uacute;t, sử dụng ly thủy tinh, ly sứ, ống h&uacute;t tre, ống h&uacute;t inox.</p>\r\n\r\n<p>Nguồn: La Mia Cafe</p>\r\n', '2021-04-05-17-32-43-la-mia.jpg', '2021-03-29-19-48-39-57-la-mia-cafe-[original-resolution].jpg', '2020-12-24-12-20-23-restaurant-cafe-4.jpg', 'http://www.lamiacafe.com/', 'https://www.facebook.com/Lamiacafebook', '', '', '', '', ''),
(63, '1,4', 'Live It Simple ', '<p>Nơi m&agrave; bạn c&oacute; thể t&igrave;m thấy tất tần tật c&aacute;c giải ph&aacute;p cho một cuộc sống:</p>\r\n\r\n<p>- Đơn giản nhưng đầy đủ<br />\r\n- Th&acirc;n thiện v&agrave; t&ocirc;n trọng m&ocirc;i trường<br />\r\n- Minh bạch v&agrave; đủ hiểu biết<br />\r\n- Nh&acirc;n văn v&agrave; bền vững</p>\r\n\r\n<p>Nguồn: Live it Simple - Refill Eco-Store Fanpage</p>\r\n', '2021-04-05-17-32-55-lis.jpg', '2021-03-29-19-48-46-56-live-it-simple-[original-resolution].jpg', '2020-12-24-12-20-37-consumer-good-5.jpg', '', 'https://www.facebook.com/thucphamsinhthai', '', '', '', '', 'liveitsimplestore@gmail.com'),
(64, '2', 'The Old Compass Cafe and Bar', '<p>Hidden cafe and bar in the heart of Saigon. We&#39;re open all day serving coffee and juices, Vietnamese banh mi and set family lunches. By night we&#39;re a cosy bar for a glass of wine and a chat.</p>\r\n\r\n<p>Nguồn:&nbsp;The Old Compass Cafe and Bar Fanpage</p>\r\n', '2021-04-05-17-33-09-the-old-compass.jpg', '2021-03-29-19-49-03-58-the-old-compass-[original-resolution].jpg', '2020-12-24-12-20-55-restaurant-cafe-4.jpg', 'https://www.oldcompasscafe.com/', 'https://www.facebook.com/oldcompasscafe', '', '', '', '', 'info@oldcompasscafe.com'),
(65, '1,3,4', 'One4One', '<p>Nhiệm vụ của One4One l&agrave; ph&aacute;t triển những sản phẩm cơ bản cho một cuộc sống đơn giản,&nbsp;một cộng đồng sống xanh, tối giản v&agrave; hạnh ph&uacute;c, từ b&agrave;n chải, t&uacute;i vải, ống h&uacute;t tre, tới tinh dầu v&agrave; x&agrave; b&ocirc;ng từ thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p>Nguồn: One4One Fanpage</p>\r\n', '2021-04-05-17-33-25-one4one.jpg', '2021-03-29-19-49-11-59-one4one-[original-resolution].jpg', '2020-12-24-12-22-22-consumer-good-5.jpg', 'http://one4one.vn/', 'https://www.facebook.com/one4onevietnam', '', '', 'https://shopee.vn/one4onevn', 'https://lazada.vn/one4one1', 'thanks@one4one.vn'),
(66, '2,4', 'Fingerprint Chay', '<p>Fingerprint Chay phục vụ b&aacute;nh m&igrave; chay, cơm trộn, m&igrave; trộn chay, kh&ocirc;ng d&ugrave;ng trứng v&agrave; c&aacute;c chế phẩm từ sữa. Thức ăn đựng trong t&uacute;i giấy v&agrave; g&oacute;i trong l&aacute; chuối th&acirc;n thiện m&ocirc;i trường.</p>\r\n\r\n<p>Nguồn:&nbsp;Fingerprint Chay Fanpage</p>\r\n', '2021-04-05-17-33-47-restaurant-cafe3.jpg', '2021-03-29-19-49-19-60-fingerprint-chay-[original-resolution].jpg', '2020-12-24-12-22-32-restaurant-cafe-4.jpg', 'http://fingerprintchay.com/', 'https://www.facebook.com/FingerprintVeg', '', '', '', '', ''),
(67, '2', 'Noir. Dining in the Dark ', '<p>Noir sử dụng ly thủy tinh, ống h&uacute;t inox v&agrave; lu&ocirc;n ủng hộ hết m&igrave;nh cho những sự kiện v&igrave; m&ocirc;i trường, thể hiện tr&aacute;ch nhiệm x&atilde; hội của m&igrave;nh. Ngo&agrave;i ra, Noir c&ograve;n&nbsp;l&agrave; một nh&agrave; h&agrave;ng c&oacute; những m&oacute;n ăn tuyệt vời, với trải nghiệm ăn trong b&oacute;ng tối c&oacute;-một-kh&ocirc;ng-hai.</p>\r\n\r\n<p>Nguồn: Noir Fanpage</p>\r\n', '2021-04-05-17-34-02-noir.jpg', '2021-03-29-19-49-28-61-noir-dining-[original-resolution].jpg', '2020-12-24-12-23-08-restaurant-cafe-4.jpg', 'http://www.noirdininginthedark.com/', 'https://www.facebook.com/noirdininginthedark', '', '', '', '', 'saigon@noirdininginthedark.com'),
(68, '2', 'The Running Bean', '<p>Qu&aacute;n sử dụng ly thủy tinh, ống h&uacute;t giấy, v&agrave; b&aacute;n cả t&uacute;i vải, ống h&uacute;t tre. Một qu&aacute;n cafe rất chill với những thức uống v&agrave; m&oacute;n ăn si&ecirc;u ngon.</p>\r\n\r\n<p>Nguồn:&nbsp;The Running Bean Fanpage</p>\r\n', '2021-04-05-17-34-15-the-running-bean.jpg', '2021-03-29-19-49-34-62-the-running-bean-[original-resolution].jpg', '2020-12-24-12-23-20-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/therunningbeansg', 'https://www.instagram.com/therunningbeansg', '', '', '', ''),
(69, '2', 'Okkio Caffe', '<p>Okkio Caffe sử dụng ly thủy tinh, ống h&uacute;t thủy tinh để giảm nhựa, họ l&agrave; chuỗi qu&aacute;n cafe với kh&ocirc;ng gian rất đẹp v&agrave;&nbsp;c&oacute; gu.</p>\r\n\r\n<p>Nguồn: Okkio Caffe Fanpage</p>\r\n', '2021-04-05-17-34-32-okkio.jpg', '2021-03-29-19-50-25-63-okkio-caffe-[original-resolution].jpg', '2020-12-24-12-23-47-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/okkiocaffe', '', '', '', '', ''),
(70, '2', 'Mộc Little Farm', '<p>Qu&aacute;n sử dụng muỗng nĩa gỗ, ly thủy tinh, ống h&uacute;t tre để bảo vệ m&ocirc;i trường. Mộc Little Farm l&agrave; một concept store theo dạng Home kitchen,&nbsp;được ph&aacute;t triển dựa tr&ecirc;n &yacute; tưởng&nbsp;[T&igrave;m về sự nguy&ecirc;n bản].</p>\r\n\r\n<p>Nguồn: Fanpage Mộc Little Farm</p>\r\n', '2021-04-05-17-34-49-moc.jpg', '2021-03-29-19-50-32-64-moc-little-farm-[original-resolution].jpg', '2020-12-24-12-24-03-restaurant-cafe-4.jpg', 'https://moclittlefarm.com/', 'https://www.facebook.com/WoodLittleFarm', 'https://www.instagram.com/moclittlefarm', '', '', '', ' hello@moclittlefarm.com'),
(71, '2', 'Haan - Drink & Eatery', '<p>HAAN serves globally-influenced seasonal cuisine, with a focus on natural and locally-grown products, and served with sustainable material (paper, bamboo box, inox straw).</p>\r\n\r\n<p>Nguồn: Fanpage Haan - Drink &amp; Eatery</p>\r\n', '2021-04-05-17-35-01-haan.jpg', '2021-03-29-19-50-39-65-haan-eatery-drink.jpg', '2020-12-24-12-24-11-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/haansaigon', '', '', '', '', 'customerconnect@innsaigon.com'),
(72, '1,3', 'Lê Mai Artisanal Soap', '<p>L&ecirc; Mai cung cấp c&aacute;c loại x&agrave; b&ocirc;ng thủ c&ocirc;ng, tinh dầu, sản phẩm chăm s&oacute;c da, chăm s&oacute;c nh&agrave; cửa được l&agrave;m từ nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n, dầu thay thế dầu cọ.Hầu hết bao b&igrave;, nh&atilde;n d&aacute;n v&agrave; t&uacute;i đựng l&agrave;&nbsp;giấy t&aacute;i chế thay nhựa v&agrave; nilon.</p>\r\n\r\n<p>Nguồn: Website&nbsp;L&ecirc; Mai&nbsp;</p>\r\n', '2021-04-05-17-35-16-le-mai.jpg', '2021-03-29-19-50-46-66-le-mai-artisanal-soap-[original-resolution].jpg', '2020-12-24-12-24-20-consumer-good-5.jpg', 'http://lemaistore.com.vn/', 'https://www.facebook.com/lemaivietnam', '', '', '', '', 'lemai@lemaistore.com.vn'),
(73, '1', 'Green Around the Corner', '<p>Một&nbsp;Eco-Concept shop với&nbsp;mong muốn giảm thiểu lượng r&aacute;c nhựa d&ugrave;ng một lần được thải ra mỗi ng&agrave;y, cũng như lan tỏa tinh thần sống xanh đến mọi người xung quanh. Shop cung cấp c&aacute;c sản phẩm ti&ecirc;u d&ugrave;ng, chăm s&oacute;c nh&agrave; cửa v&agrave; dịch vụ&nbsp;refill th&acirc;n thiện với m&ocirc;i trường.</p>\r\n\r\n<p>Nguồn: Fanpage Green Around the Corner</p>\r\n', '2021-04-05-17-35-45-green-corner.jpg', '2021-03-29-19-50-53-67-green-around-the-corner-[original-resolution].jpg', '2020-12-24-12-24-30-consumer-good-5.jpg', '', 'https://www.facebook.com/greenaroundthecorner', '', '', '', '', ' hi@greenaroundthecorner.com'),
(74, '1,2,4', 'Đậu Đỏ Vegan House', '<p>Đậu Đỏ l&agrave; nơi s&aacute;ng tạo ra những m&oacute;n ăn thực vật xinh đẹp, vui tươi, v&agrave; đầy khẩu vị từ những nguy&ecirc;n liệu sạch từ c&aacute;c trang trại. Họ c&ograve;n b&aacute;n thực phẩm hữu cơ, t&uacute;i, dầu gội bồ kết, sử dụng ống h&uacute;t tre, ống h&uacute;t thủy tinh để hạn chế nhựa.</p>\r\n\r\n<p>Nguồn: Website Đậu Đỏ Vegan House</p>\r\n', '2021-04-05-17-35-54-dau-do.jpg', '2021-03-29-19-50-59-68-dau-do-vegan-house-[original-resolution].jpg', '2020-12-24-12-24-46-restaurant-cafe-4.jpg', 'https://daudo.vn', 'https://www.facebook.com/DauDoVegan', '', '', '', '', 'info@daudo.vn'),
(75, '1,3,4,5', 'Nắng Thảo Mộc Spa-Store-Cafe', '<p>L&agrave; nơi mua sắm &amp; l&agrave;m đẹp thuận tự nhi&ecirc;n, hướng về lối sống tối giản. Shop c&oacute; c&aacute;c sản phẩm chăm s&oacute;c nh&agrave; cửa, l&agrave;m đẹp, thực phẩm hữu cơ v&agrave; l&agrave; nơi tiếp nhận đồ cũ, đổi đồ &amp; đổi s&aacute;ch.</p>\r\n\r\n<p>Nguồn: Website Nắng Thảo Mộc</p>\r\n', '2021-04-05-17-36-11-nang-thao-moc.jpg', '2021-03-29-19-51-06-69-nang-thao-moc-[original-resolution].jpg', '2020-12-24-12-25-14-second-hand-store-4.jpg', 'https://nangthaomoc.vn/', 'https://www.facebook.com/nangthaomoc.vn', '', '', '', '', 'https://nangthaomoc.vn/'),
(76, '1', 'A Little Leaf', '<p>Tiệm tạp h&oacute;a của T&igrave;nh y&ecirc;u: d&agrave;nh cho những g&oacute;c bạn y&ecirc;u ở nơi được gọi l&agrave; &ldquo;Nh&agrave;&rdquo;. Tiệm c&oacute;&nbsp;những m&oacute;n đồ gi&uacute;p giảm r&aacute;c nhựa như b&igrave;nh nước, t&uacute;i vải, mỹ phẩm, chăm s&oacute;c th&acirc;n thể&nbsp;v&agrave; dịch vụ refill.</p>\r\n\r\n<p>Nguồn: Website A Little Leaf</p>\r\n', '2021-04-05-17-36-20-a-little-leaf.jpg', '2021-03-29-19-51-13-70-a-little-leaf-[original-resolution].jpg', '2020-12-24-12-25-21-consumer-good-5.jpg', 'https://alittleleaf.com.vn/', 'https://www.facebook.com/ALittleLeafHomedecor/', '', '', '', '', ' alittleleaf.homedecor@gmail.com'),
(77, '2', 'Cà Phê Mưa Rào', '<p>Qu&aacute;n sử dụng ống h&uacute;t tre v&agrave; ly thủy tinh để giảm r&aacute;c nhựa. Một g&oacute;c nhỏ của k&yacute; ức với những tr&ograve; chơi, vật dụng từ thập ni&ecirc;n 90.</p>\r\n\r\n<p>Nguồn: Fan Page C&agrave; Ph&ecirc; Mưa R&agrave;o</p>\r\n', '2021-04-05-18-02-49-mua-rao.jpg', '2021-03-29-19-51-21-71-ca-phe-mua-rao-[original-resolution].jpg', '2020-12-24-12-25-35-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/Caphemuarao', '', '', '', '', ''),
(78, '2', 'The Comma', '<p>Qu&aacute;n sử dụng ly thủy tinh, ống h&uacute;t giấy để giảm r&aacute;c nhựa. &quot;from soil, to sip, to soul&quot; - Ch&uacute;ng m&igrave;nh chỉ đơn giản tạo n&ecirc;n một kh&ocirc;ng gian sống chậm thật thoải m&aacute;i mời bạn gh&eacute; chơi, với c&agrave; ph&ecirc; chọn lọc tỉ mỉ.</p>\r\n\r\n<p>Nguồn: Fanpage The Comma</p>\r\n', '2021-04-05-18-02-38-comma.jpg', '2021-03-29-19-51-27-72-the-comma-[original-resolution].jpg', '2020-12-24-12-26-10-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/thecommacoffee/', 'https://www.instagram.com/thecommacoffee/?fbclid=IwAR0hKqIzDZKLnTQcC9J_ZVqxrd0FZPRh_JtMjefCOFr-s5LialQoWpALOcg', '', '', '', 'hello@thecomma.coffee'),
(79, '2', 'Cú Trên Cây Coffee & Plants', '<p>Đ&agrave; Lạt thu nhỏ giữa l&ograve;ng th&agrave;nh phố, qu&aacute;n sử dụng ống h&uacute;t giấy th&acirc;n thiện m&ocirc;i trường.</p>\r\n\r\n<p>Nguồn: Fanpage C&uacute; Tr&ecirc;n C&acirc;y Coffee</p>\r\n', '2021-04-05-18-02-21-cu.jpg', '2021-03-29-19-51-33-73-cu-tren-cay-[original-resolution].jpg', '2020-12-24-12-26-19-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/cutrencaycoffee', '', '', '', '', 'cutrencaycoffee@gmail.com'),
(80, '2', 'Cafe Ngách 160', '<p>Qu&aacute;n sử dụng ly thủy tinh v&agrave; ống h&uacute;t giấy th&acirc;n thiện m&ocirc;i trường. Cửa h&agrave;ng mậu dịch Ng&aacute;ch 160 nằm trong khu d&acirc;n cư Ng&aacute;ch 160 chuy&ecirc;n kinh doanh c&aacute;c mặt h&agrave;ng giải kh&aacute;t &amp; ăn uống gi&uacute;p mọi người xoa dịu nỗi nhớ về H&agrave; Nội.</p>\r\n\r\n<p>Nguồn: Fanpage Ng&aacute;ch 160</p>\r\n', '2021-04-05-18-02-09-ngach-160.jpg', '2021-03-29-19-51-41-74-cafe-ngach-160-[original-resolution].jpg', '2020-12-24-12-26-34-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/ngach160/', '', '', '', '', 'cafengach160@gmail.com'),
(81, '2', 'Vườn Nắng Outdoor Cafe', '<p>Cafe Vườn Nắng l&agrave; nơi&nbsp;gặp gỡ bạn b&egrave;, họp mặt gia đ&igrave;nh, nơi đầy ắp tiếng cười của trẻ thơ v&agrave; hạnh ph&uacute;c b&igrave;nh y&ecirc;n của ba mẹ. Vườn Nắng lu&ocirc;n khuyến kh&iacute;ch hạn chế r&aacute;c nhựa qua chương tr&igrave;nh tặng 10% khi d&ugrave;ng b&igrave;nh c&aacute; nh&acirc;n, thu gom pin cũ, workshop t&aacute;i chế, đổi r&aacute;c lấy qu&agrave;...</p>\r\n\r\n<p>Nguồn: Fanpage Vườn Nắng outdoor coffee</p>\r\n', '2021-04-05-18-01-55-vuon-nang.jpg', '2021-03-29-19-51-48-75-vuon-nang-outdoor-cafe-[original-resolution].jpg', '2020-12-24-12-27-07-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/vuonnangoutdoor/', 'https://www.instagram.com/vuonnang.outdoorcafe/', '', '', '', 'uonnangoutdoor@gmail.com'),
(82, '1', 'Trạm Xanh - GreenUp Living', '<p>Trạm Xanh là không gian xanh dành cho các bạn quan tâm lối sống bền vững, với các dòng sản phẩm xanh, th&acirc;n thiện m&ocirc;i trường&nbsp;và hoạt động, sự kiện workshop/talkshow về môi trường và sức khỏe.</p>\r\n\r\n<p>Nguồn: Fanpage Trạm xanh</p>\r\n', '2021-04-05-18-01-44-tram-xanh.jpg', '2021-03-29-19-51-56-76-tram-xanh-green-up-living-[original-resolution].jpg', '2020-12-24-12-27-14-consumer-good-5.jpg', '', 'https://www.facebook.com/tramxanh.greenupliving/', '', '', '', '', 'tramxanh.greenupliving@gmail.com'),
(83, '1,4', 'Légumes the organic juice', '<p>L&eacute;gumes&nbsp;b&aacute;n nhiều loại thực phẩm ngon v&agrave; healthy, c&ugrave;ng với những sản phẩm ph&ugrave; hợp với lối sống Zero Waste như hộp cơm, muỗng gỗ, ống h&uacute;t tre, inox, thủy tinh, quai vải, b&igrave;nh nước...</p>\r\n\r\n<p>Nguồn: Fanpage&nbsp;L&eacute;gumes&nbsp;</p>\r\n', '2021-04-05-18-01-37-legumes.jpg', '2021-03-29-19-52-05-77-legume-organic-juice.jpg', '2020-12-24-12-27-23-organic-food-4.jpg', 'https://legumesvn.com/', 'https://www.facebook.com/legumesvietnam/', 'https://www.instagram.com/legumesvietnam', '', '', '', 'contact@legumesvn.com'),
(84, '1', 'BỊ - Mua hàng không mua rác', '<p>BỊ kh&ocirc;ng xuất hiện như l&agrave; một anh h&ugrave;ng m&agrave; chỉ mong s&aacute;t c&aacute;nh c&ugrave;ng c&aacute;c bạn giữ Qu&aacute; Đất m&atilde;i xanh bay giữa bầu trời xanh l&agrave; l&aacute; la!&nbsp;Kh&ocirc;ng với mục ti&ecirc;u to bự l&agrave; loại bỏ ho&agrave;n to&agrave;n t&uacute;i nylon, nhưng BỊ c&oacute; thể được xếp gọn c&ugrave;ng đồ c&aacute; nh&acirc;n hằng ng&agrave;y để c&oacute; thể từ chối được c&agrave;ng nhiều nylon c&agrave;ng tốt.</p>\r\n\r\n<p>Nguồn: Fanpage BỊ</p>\r\n', '2021-04-05-18-01-27-bi.jpg', '2021-03-29-19-52-13-78-bi-mua-hang-ko-rac-[original-resolution].jpg', '2020-12-24-12-27-32-consumer-good-5.jpg', '', 'https://www.facebook.com/bi.khongmuarac/', 'https://www.instagram.com/bi.khongmuarac/', '', '', '', 'biba.khongmuarac@gmail.com'),
(85, '1', 'Nattime ', '<p>Nattime cung cấp c&aacute;c loại b&aacute;nh x&agrave; ph&ograve;ng gội/tắm ho&agrave;n to&agrave;n từ thi&ecirc;n nhi&ecirc;n, thuần chay v&agrave; dịch vụ refill. Nattime lu&ocirc;n t&igrave;m giải ph&aacute;p chăm s&oacute;c cơ thể hạn chế tối đa t&aacute;c động đến tr&aacute;i đất, mong muốn được đồng h&agrave;nh c&ugrave;ng bạn y&ecirc;u thương bản th&acirc;n v&agrave; m&ocirc;i trường.</p>\r\n\r\n<p>Nguồn: Fanpage Nattime Care</p>\r\n', '2021-04-05-18-01-21-nattime.jpg', '2021-03-29-19-52-23-79-nattime-[original-resolution].jpg', '2020-12-24-12-28-50-consumer-good-5.jpg', 'http://nattime.com/', 'https://www.facebook.com/nattimevn/', '', '', '', '', 'info@nattime.com'),
(86, '2', 'Le Petit - Bake&Cake', '<p>&lsquo;Le Petit&rsquo;,&nbsp;trong tiếng Ph&aacute;p c&oacute; nghĩa l&agrave;&nbsp;&lsquo;điều nhỏ b&eacute;&rsquo;, l&agrave; một bếp b&aacute;nh tọa lạc ngay trung t&acirc;m S&agrave;i G&ograve;n. Nguồn cảm hứng của ch&uacute;ng t&ocirc;i l&agrave; đem đến những m&oacute;n tr&aacute;ng miệng nhỏ b&eacute;, ngọt ng&agrave;o, khiến ng&agrave;y mới của bạn đặc biệt hơn. Qu&aacute;n sử dụng hũ thủy tinh, hộp giấy.</p>\r\n\r\n<p>Nguồn: Fanpage Le Petit</p>\r\n', '2021-04-05-18-01-11-le-petit.jpg', '2021-03-29-19-53-06-80-le-petit-cake-png.jpg', '2020-12-24-14-16-13-restaurant-cafe-4.jpg', 'https://innsaigon.com/le-petit-bakecake/', 'https://www.facebook.com/lepetitsgn/', 'https://www.instagram.com/lepetitsgn/', '', '', '', 'customerconnect@innsaigon.com'),
(87, '2', 'Be An Vegetarian Bistro', '<p>Nh&agrave; h&agrave;ng chay Be An Vegetarian Bistro ch&uacute; trọng việc sống khỏe v&agrave; t&iacute;ch cực. Tọa lạc ngay trung t&acirc;m S&agrave;i G&ograve;n, Be An m&oacute;ng muốn được lan tỏa ẩm thực chay v&agrave; lối sống &quot;ăn Xanh - sống Xanh&quot;.</p>\r\n\r\n<p>Nguồn: Fanpage Be An</p>\r\n', '2021-04-05-18-01-01-be-an.jpg', '2021-03-29-19-53-14-81-be-an-vegetarian-bistro-[original-resolution].jpg', '2020-12-24-14-19-49-restaurant-cafe-4.jpg', 'https://innsaigon.com/be-an-vegetarian/', 'https://www.facebook.com/beanvegetarian/', 'https://www.instagram.com/beanvegetarian/', '', '', '', 'customerconnect@innsaigon.com'),
(88, '1', 'Việt Nam Tái Chế', '<p>Thu gom r&aacute;c thải điện tử miễn ph&iacute; ở c&aacute;c địa điểm v&agrave; c&oacute; nhận thu gom tại nh&agrave; th&ocirc;ng qua hotline 0933882205. Việt Nam T&aacute;i Chế l&agrave; chương tr&igrave;nh thu hồi &amp; xử l&yacute;, t&aacute;i chế r&aacute;c thải điện tử miễn ph&iacute; để&nbsp;xử l&yacute; an to&agrave;n nhằm đạt được tỉ lệ thu hồi tối đa nguồn t&agrave;i nguy&ecirc;n thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p>Nguồn: Website Việt Nam T&aacute;i Chế</p>\r\n', '2021-04-05-18-00-52-viet-nam-tai-che.jpg', '2021-03-29-19-53-22-82-viet-nam-tai-che-[original-resolution].jpg', '2020-12-24-15-34-36-consumer-good-5.jpg', 'https://www.vietnamrecycles.com/', '', '', '', '', '', '');
INSERT INTO `stores` (`id`, `store_category_id`, `name`, `description`, `logo`, `photo`, `large_photo`, `website`, `facebook`, `instagram`, `youtube`, `shopee`, `lazada`, `email`) VALUES
(89, '1', 'The Craft House', '<p>The Craft House, hay&nbsp;Nh&agrave; Thủ C&ocirc;ng l&agrave; ng&ocirc;i nh&agrave; của những thiết kế v&agrave; sản phẩm thủ c&ocirc;ng theo tinh thần hiện đại, s&aacute;ng tạo v&agrave; độc đ&aacute;o. Ở&nbsp;The Craft House c&oacute; c&aacute;c loại ống h&uacute;t, bộ muỗng đũa, b&igrave;nh nước, t&uacute;i vải, quai đựng b&igrave;nh nước thủ c&ocirc;ng với hoa văn độc đ&aacute;o,&nbsp;th&acirc;n thiện với m&ocirc;i trường.&nbsp;</p>\r\n\r\n<p>Nguồn: The Craft House website</p>\r\n', '2021-04-05-18-00-05-the-craft-house.jpg', '2021-03-29-19-53-29-83-the-craft-house-[original-resolution].jpg', '2020-12-24-16-18-37-consumer-good-5.jpg', 'https://thecrafthouse.vn/', 'https://www.facebook.com/thecrafthousevn/', '', '', '', '', 'hello@thecrafthouse.vn'),
(90, '5', 'Give Away Bình Thạnh', '<p>Nơi&nbsp;thanh l&yacute; v&agrave; mua những m&oacute;n đồ&nbsp;thời trang nữ second hand với gi&aacute; chỉ từ 30-250k.</p>\r\n\r\n<p>Nguồn: Fanpage Give Away B&igrave;nh Thạnh</p>\r\n', '2021-04-05-17-59-55-give-away.jpg', '2021-03-29-19-53-35-84-give-away-binh-thanh-[original-resolution].jpg', '2020-12-28-10-32-54-second-hand-store-4.jpg', '', 'https://www.facebook.com/giveawaybinhthanh', 'http://www.instagram.com/gabinhthanh', '', '', '', 'hoabichtuyen1910@gmail.com'),
(91, '5', 'You&Me Exchange', '<p>Tất tần tật những m&oacute;n đồ &quot;bỏ th&igrave; thương m&agrave; vương th&igrave; tội&quot; như quần &aacute;o cũ, gi&agrave;y d&eacute;p kh&ocirc;ng vừa, nh&agrave; kho You &amp; Me sẽ gi&uacute;p bạn t&igrave;m chủ nh&acirc;n mới cho ch&uacute;ng, v&agrave; bạn cũng được tiếp cận với v&ocirc; v&agrave;n những sản phẩm kh&aacute;c ph&ugrave; hợp, &quot;cũ người mới ta&quot; với gi&aacute; cả cực kỳ hấp dẫn.</p>\r\n\r\n<p>Nguồn: Fanpage You&amp;Me Exchange</p>\r\n', '2021-04-05-17-59-42-you-me.jpg', '2021-03-29-19-53-42-85-you-me-exchange-[original-resolution].jpg', '2020-12-28-10-38-05-second-hand-store-4.jpg', 'http://nhakhokyguihcm.com/', 'https://www.facebook.com/Nhakhokygui.YouAndMeExchange', '', '', '', '', ' exchange.nhakhokygui@gmail.com'),
(92, '5', 'LABB Thanh Lý Ký Gửi', '<p>Nh&agrave; kho k&yacute; gửi LABB l&agrave; nơi d&agrave;nh cho:&nbsp;C&aacute; nh&acirc;n muốn gửi b&aacute;n quần &aacute;o cũ kh&ocirc;ng sử dụng,&nbsp;c&aacute;c shop muốn thanh l&yacute; h&agrave;ng tồn v&agrave;&nbsp;C&aacute;c nh&agrave; thiết kế trẻ muốn trưng b&agrave;y, b&aacute;n sản phẩm của m&igrave;nh.</p>\r\n\r\n<p>Nguồn: Fanpage LABB</p>\r\n', '2021-04-05-17-59-34-labb.jpg', '2021-03-29-19-54-02-86-labb-[original-resolution].jpg', '2020-12-28-10-54-17-second-hand-store-4.jpg', '', 'https://www.facebook.com/LABBnhakhokygui/', 'https://www.instagram.com/labbstorehouse/', '', '', '', 'lastorehouse@gmail.com'),
(93, '4', 'Humbl. Foods', '<p>Cửa h&agrave;ng b&aacute;n ngũ cốc Granola, Sữa Hạt v&agrave; Bơ Hạt dinh dưỡng với nguy&ecirc;n liệu an to&agrave;n, kh&ocirc;ng đường, kh&ocirc;ng chất bảo quản hay phụ gia, đảm bảo sức khỏe. Chỉ d&ugrave;ng t&uacute;i giấy, ống h&uacute;t giấy v&agrave; muỗng gỗ. Sữa, bơ hạt được đựng ho&agrave;n to&agrave;n trong lọ thủy tinh. Kh&aacute;ch h&agrave;ng được khuyến kh&iacute;ch mang chai lọ theo để refill, reuse v&agrave; được khuyến m&atilde;i.</p>\r\n\r\n<p>Nguồn: Website Humbl.Foods</p>\r\n', '2021-04-05-17-59-22-humbl.jpg', '2021-03-29-19-54-10-87-humbl-[original-resolution].jpg', '2021-02-17-17-34-01-organic-food-4.jpg', 'http://humblefoodvn.com/', 'https://www.facebook.com/humblfoods', 'https://www.instagram.com/humblfoodsvn/?hl=en', 'https://www.youtube.com/channel/UCS3NaRvcZJV_aQluowa1VYQ', '', '', 'contact@humblebakingvn.com'),
(94, '1,3', 'The QUEEN', '<p><span>The QUEEN chuy&ecirc;n c&aacute;c d&ograve;ng sản phẩm l&agrave;m đẹp v&agrave; chăm s&oacute;c cơ thể như x&agrave; b&ocirc;ng, dầu tắm, son m&ocirc;i, được b&agrave;o chế với th&agrave;nh phần ho&agrave;n to&agrave;n tự nhi&ecirc;n, kh&ocirc;ng bao b&igrave; nhựa, th&acirc;n thiện với m&ocirc;i trường.</span></p>\r\n\r\n<p>Nguồn: The QUEEN Fan Page</p>\r\n', '2021-04-05-17-59-13-the-queen.jpg', '2021-03-29-19-54-23-88-the-queen-[original-resolution].jpg', '2021-03-03-10-44-13-consumer-good-5.jpg', 'https://thequeenbeauty1810.wixsite.com/thequeen', 'https://www.facebook.com/TheQueenSoap', '', '', '', '', 'thequeen.beauty1810@gmail.com'),
(95, '2', 'The Hummingbird Cafe', '<p><span>Qu&aacute;n c&oacute; sử dụng ly thủy tinh v&agrave; kh&ocirc;ng c&oacute; ống h&uacute;t nhựa. Ẩn m&igrave;nh trong một biệt thự kiểu Ph&aacute;p tr&ecirc;n con đường T&ocirc;n Đức Thắng nhộn nhịp, The Hummingbird Cafe l&agrave; một điểm đến y&ecirc;n b&igrave;nh, nơi m&agrave; hương thơm của c&agrave; ph&ecirc; v&agrave; tr&agrave; mới pha, đồ nướng tại nh&agrave; sẽ gi&uacute;p bạn thư th&aacute;i v&agrave; vui vẻ.</span></p>\r\n\r\n<p>Nguồn: Fanpage The Hummingbird Cafe</p>\r\n', '2021-04-05-17-58-59-hummingbird.jpg', '2021-03-29-19-54-31-89-the-hummingbird-cafe.jpg', '2021-03-22-11-39-23-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/thehummingbirdcafesaigon', 'https://www.instagram.com/thehummingbirdcafesaigon/', '', '', '', 'thehummingbirdcafesaigon@gmail.com'),
(96, '2', '103', '<p><span>Qu&aacute;n c&oacute; sử dụng ly thủy tinh v&agrave; kh&ocirc;ng c&oacute; ống h&uacute;t nhựa. Qu&aacute;n cafe 103 Đồng Khởi nằm ngay tr&ecirc;n lầu 2, xinh xắn, bạn c&oacute; thể ngồi thư gi&atilde;n đọc s&aacute;ch, n&oacute;i chuyện c&ugrave;ng nh&oacute;m bạn, hay ra ban c&ocirc;ng ngắm h&agrave;ng me xanh tr&ecirc;n con đường Đồng Khởi đong đầy kỷ niệm.</span></p>\r\n\r\n<p>Nguồn: Fanpage 103</p>\r\n', '2021-04-05-17-58-45-103.jpg', '2021-03-29-19-54-38-90-103-[original-resolution].jpg', '2021-03-22-11-50-24-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/103DongKhoiCafe/', 'https://www.instagram.com/103__cafe/', '', '', '', '103dongkhoicafe@gmail.com'),
(97, '2', 'Unihub', '<p><span>Qu&aacute;n sử dụng ly thủy tinh, muỗng gỗ, ống h&uacute;t giấy, tuy nhi&ecirc;n khi takeaway vẫn d&ugrave;ng nắp nhựa v&agrave; bao nylon. Qu&aacute;n c&oacute; kh&ocirc;ng gian kh&aacute; rộng v&agrave; y&ecirc;n tĩnh d&agrave;nh cho những học h&agrave;nh, gặp gỡ, l&agrave;m việc.</span></p>\r\n\r\n<p>Nguồn: Fanpage Unihub</p>\r\n', '2021-04-05-17-58-34-unihub.jpg', '2021-03-29-19-54-46-91-unihub-[original-resolution].jpg', '2021-03-22-11-58-37-restaurant-cafe-4.jpg', '', 'https://www.facebook.com/unihub.coffee/', 'https://www.instagram.com/unihub.coffee/', '', '', '', 'coffeeunihub@gmail.com'),
(98, '1', 'Ron Eco House', '<p><span>Ron Eco House - Nh&agrave; sinh th&aacute;i của Ron với c&aacute;c sản phẩm hữu &iacute;ch v&agrave; th&acirc;n thiện với m&ocirc;i trường như giỏ m&acirc;y, ống h&uacute;t tre v&agrave; b&igrave;nh giữ nhiệt vỏ tre.</span></p>\r\n\r\n<p>Nguồn: Fanpage Ron Eco House</p>\r\n', '2021-04-05-17-58-19-ron-eco.jpg', '2021-03-29-19-54-52-92-ron-eco-house-[original-resolution].jpg', '2021-03-22-16-30-26-consumer-good-5.jpg', '', 'https://www.facebook.com/ronecohouse/', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_brands`
--

CREATE TABLE `store_brands` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ward` varchar(32) NOT NULL,
  `district` varchar(32) NOT NULL,
  `city` varchar(128) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `address_photo` varchar(128) NOT NULL,
  `lat` decimal(10,0) NOT NULL,
  `lng` decimal(10,0) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `store_brands`
--

INSERT INTO `store_brands` (`id`, `store_id`, `address`, `ward`, `district`, `city`, `phone`, `address_photo`, `lat`, `lng`, `status`) VALUES
(1, 1, '118/118 Phan Huy Ích', '15', '13', 'TPHCM', '4564564', '', 0, 0, 0),
(2, 2, '118/1D Nguyễn Trãi', '3', '5', 'TPHCM', '090 299 77 95', '', 0, 0, 0),
(3, 3, '351/1 Lê Văn Sỹ', '13', '3', 'TPHCM', '090 998 79 72', '', 0, 0, 0),
(4, 4, '83 Thạch Thị Thanh', 'P.Tân Định', '1', 'TPHCM', '', '', 0, 0, 0),
(5, 5, '47/1 Quốc Hương', 'Thảo Điền', '2', 'TPHCM', '02862702141', '', 0, 0, 0),
(6, 6, '180C Hai Bà Trưng', 'ĐaKao', '1', 'TPHCM', '', '', 0, 0, 0),
(7, 7, '54/5 Nguyễn Bỉnh Khiêm', 'ĐaKao', '1', 'TPHCM', '02862753545', '', 0, 0, 0),
(10, 9, '2/15C Cao Thắng', '5', '3', 'TPHCM', '', '', 0, 0, 0),
(11, 10, '292/39 Bà Hạt', '9', '9', 'TPHCM', '', '', 0, 0, 0),
(12, 11, '489A/11 Huỳnh Văn Bánh', '13', '15', 'TPHCM', '', '', 0, 0, 0),
(13, 12, '6 Thi Sách', 'Bến Nghé', '1', 'TPHCM', '', '', 0, 0, 0),
(14, 13, ' 55 Trần Quốc Toản', '8', '3', 'TPHCM', '', '', 0, 0, 0),
(16, 15, '46/9 Trần Quang Diệu', '14', '3', 'TPHCM', '090 268 31 45', '', 0, 0, 0),
(17, 16, '6D Trần Quang Diệu', '13', '3', 'TPHCM', ' 088 920 99 77', '', 0, 0, 0),
(18, 18, ' 31 Phó Đức Chính', 'Nguyễn Thái Bình', '1', 'TPHCM', '', '', 0, 0, 0),
(20, 19, '180A Nguyễn Hữu Cảnh', '22', '16', 'TPHCM', ' 034 861 0591', '', 0, 0, 0),
(21, 20, 'Tầng 2, 55 Nguyễn Khắc Nhu', 'Cô Giang', '1', 'TPHCM', '', '', 0, 0, 0),
(22, 21, '47 Phan Chu Trinh', 'Bến Thành', '1', 'TPHCM', '', '', 0, 0, 0),
(23, 22, '491/2 Lê Văn Sỹ', '12', '3', 'TPHCM', ' 098 716 01 75', '', 0, 0, 0),
(24, 23, ' 36/12B Nguyễn Gia Trí', '25', '16', 'TPHCM', '', '', 0, 0, 0),
(25, 24, '26B Lê Lợi', 'Bến Nghé', '1', 'TPHCM', '', '', 0, 0, 0),
(26, 25, '35 Phan Chu Trinh', 'Bến Thành', '1', 'TPHCM', '', '', 0, 0, 0),
(27, 27, '20 Nguyễn Thị Minh Khai', 'ĐaKao', '1', 'TPHCM', '', '', 0, 0, 0),
(28, 27, '57 đường Nguyễn Du', 'Bến Nghé', '1', 'TPHCM', '', '', 0, 0, 0),
(29, 27, '39 Xuân Thủy', 'Thảo Điền', '2', 'TPHCM', '', '', 0, 0, 0),
(30, 28, '3/5 Nguyễn Văn Thủ', 'ĐaKao', '1', 'TPHCM', '093 388 26 64', '', 0, 0, 0),
(31, 29, '206 Nguyễn Văn Hưởng', 'Thảo Điền', '2', 'TPHCM', ' 028 6287 4826', '', 0, 0, 0),
(32, 30, '40/28 Phạm Viết Chánh', '19', '16', 'TPHCM', '028 2253 2084', '', 0, 0, 0),
(33, 31, '95B Nguyễn Văn Thủ', 'ĐaKao', '1', 'TPHCM', ' 090 441 31 48', '', 0, 0, 0),
(34, 32, '9 Trần Cao Vân', 'ĐaKao', '1', 'TPHCM', '0931224334', '', 0, 0, 0),
(35, 33, '3 Trần Khánh Dư', 'Tân Định', '1', 'TPHCM', '090 900 02 02', '', 0, 0, 0),
(36, 34, '132/62 Nguyễn Hữu Cảnh', '22', '16', 'TPHCM', ' 093 883 40 09', '', 0, 0, 0),
(37, 35, '135 Đoàn Văn Bơ', '12', '4', 'TPHCM', ' 0989931532', '', 0, 0, 0),
(38, 36, ' 218 Nguyễn Đình Chiểu', '6', '3', 'TPHCM', ' 093 401 88 05', '', 0, 0, 0),
(39, 37, '29/81 Đoàn Thị Điểm', '1', '15', 'TPHCM', '084 500 4608', '', 0, 0, 0),
(40, 38, '141 Xô Viết Nghệ Tĩnh', '17', '16', 'TPHCM', '02838408331', '', 0, 0, 0),
(41, 38, 'Số 6 Đường D2', '25', '16', 'TPHCM', '', '', 0, 0, 0),
(42, 39, '4A-4B Võ Thị Sáu', 'Tân Định', '1', 'TPHCM', '028 6271 7497', '', 0, 0, 0),
(43, 39, '153/11A Nguyễn Thị Minh Khai', 'Phạm Ngũ Lão', '1', 'TPHCM', '028 6271 7497', '', 0, 0, 0),
(44, 39, '270 Lê Văn Sỹ', '14', '3', 'TPHCM', '028 6271 7497', '', 0, 0, 0),
(45, 40, '152/59 Lý Chính Thắng', '7', '3', 'TPHCM', '096 114 92 68', '', 0, 0, 0),
(46, 41, 'Lầu 1 - 86 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', ' 091 579 97 33', '', 0, 0, 0),
(47, 42, '147 Nguyễn Cơ Thạch', 'An Lợi Đông', '2', 'TPHCM', '(028) 3822 9712', '', 0, 0, 0),
(48, 42, '101 Thảo Điền', 'Thảo Điền', '2', 'TPHCM', '(028) 3822 9712', '', 0, 0, 0),
(49, 42, ' 246 Nguyễn Văn Hưởng', 'Thảo Điền', '2', 'TPHCM', ' (028) 3822 9712', '', 0, 0, 0),
(50, 43, '43 Nguyễn Văn Giai', 'Đa Kao', '1', 'TPHCM', ' 090 215 05 16', '', 0, 0, 0),
(52, 44, '10 Nguyễn Bá Lân', 'Thảo Điền', '2', 'TPHCM', '+84 76 728 6183', '', 0, 0, 0),
(54, 46, '402/19 Lê Văn Sỹ', '14', '3', 'TPHCM', '', '', 0, 0, 0),
(55, 47, '26 Lý Tự Trọng', 'Bến Nghé', '1', 'TPHCM', ' 093 878 07 67', '', 0, 0, 0),
(56, 48, '386/11 Lê Văn Sỹ', '14', '3', 'TPHCM', ' 028 6653 9679', '', 0, 0, 0),
(57, 77, '115/174b Lê Văn Sỹ', '13', '15', 'TPHCM', ' 079 630 0009', '', 0, 0, 0),
(58, 50, '8 đường Hoàng Hoa Thám', '7', '16', 'TPHCM', ' 038 867 8077', '', 0, 0, 0),
(59, 51, '20 Đường số 13', '6', '12', 'TPHCM', ' 093 820 33 02', '', 0, 0, 0),
(60, 52, '14 Đặng Dung', 'Tân Định', '1', 'TPHCM', '028 3526 2696', '', 0, 0, 0),
(61, 53, '144 Đường số 1A', 'Bình Hưng Hoà', '17', 'TPHCM', '0933900360', '', 0, 0, 0),
(63, 5, '100 Hà Huy Tập', 'Tân Phong', '7', '', '', '', 0, 0, 0),
(64, 5, '59 Ngô Tất Tố', '21', '16', '', '', '', 0, 0, 0),
(65, 54, '6 Hoa Cau', '7', '15', 'TPHCM', '039 787 1356', '', 0, 0, 0),
(66, 54, '25A Lam Sơn', '2', '13', 'TPHCM', '039 787 1356', '', 0, 0, 0),
(67, 54, '191 Đinh Tiên Hoàng', 'ĐaKao', '1', 'TPHCM', '0397871356', '', 0, 0, 0),
(68, 16, '191 Hai Bà Trưng', '6', '3', 'TPHCM', '', '', 0, 0, 0),
(69, 16, '57A Tú Xương', '4', '3', 'TPHCM', '', '', 0, 0, 0),
(70, 16, '16 Bà Huyện Thanh Quan', '6', '3', 'TPHCM', '', '', 0, 0, 0),
(71, 55, '118 đường 3 tháng 2', '12', '9', 'TPHCM', '', '', 0, 0, 0),
(72, 56, '193/D3 Nam Kỳ Khởi Nghĩa', '7', '3', 'TPHCM', '0908861136', '', 0, 0, 0),
(73, 56, '63 Hồ Tùng Mậu', 'Bến Nghé', '1', 'TPHCM', '0933 791 891', '', 0, 0, 0),
(74, 57, '5 Trương Quyền', '6', '3', 'TPHCM', '02866525911', '', 0, 0, 0),
(75, 58, '156B Lý Tự Trọng', 'Bến Thành', '1', 'TPHCM', ' 0703931783', '', 0, 0, 0),
(76, 58, '133/3 Nguyễn Chí Thanh', '9', '5', 'TPHCM', '0703931783', '', 0, 0, 0),
(77, 59, '54/2 Nguyễn Cư Trinh', 'Nguyễn Cư Trinh', '1', 'TPHCM', ' 0909077371', '', 0, 0, 0),
(78, 60, '223/2K Phạm Viết Chánh', 'Nguyễn Cư Trinh', '1', 'TPHCM', '0902350180', '', 0, 0, 0),
(79, 60, '10C2 Nguyễn Thị Minh Khai', 'ĐaKao', '1', 'TPHCM', '0931480828', '', 0, 0, 0),
(80, 42, '70-72 Lê Thánh Tôn', 'Bến Nghé', '1', 'TPHCM', '', '', 0, 0, 0),
(81, 61, '42 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '0907633457', '', 0, 0, 0),
(82, 62, '5 nguyễn cừ', 'Thảo Điền', '2', 'TPHCM', '0935100999', '', 0, 0, 0),
(83, 63, '33 Xuân Hồng', '12', '13', 'TPHCM', '02866846682', '', 0, 0, 0),
(84, 64, '63/11 Pasteur', 'Bến Nghé', '1', 'TPHCM', '02838232969', '', 0, 0, 0),
(85, 65, '33 Xuân Hồng', '12', '13', 'TPHCM', '(028)  6682 7717', '', 0, 0, 0),
(86, 66, '303 Nam Kỳ Khởi Nghĩa', '7', '3', 'TPHCM', ' 0346242342', '', 0, 0, 0),
(87, 67, '180D Hai Bà Trưng', 'Đa Kao', '1', 'TPHCM', ' 02862632525', '', 0, 0, 0),
(88, 68, '115 Hồ Tùng Mậu', 'Bến Nghé', '1', 'TPHCM', '02839150055', '', 0, 0, 0),
(89, 69, '120-122 Lê Lợi', 'Bến Nghé', '1', 'TPHCM', '', '', 0, 0, 0),
(90, 69, '35 Nguyễn Văn Tráng', 'Tân Định', '1', 'TPHCM', '', '', 0, 0, 0),
(91, 69, '41/1 Phạm Ngọc Thạch', '6', '3', 'TPHCM', '', '', 0, 0, 0),
(92, 69, '110 Xuân Thủy', 'Thảo Điền', '2', 'TPHCM', '', '', 0, 0, 0),
(93, 70, '38/16a Trần Khắc Chân', 'Tân Định', '1', 'TPHCM', '0932037803', '', 0, 0, 0),
(94, 71, '99 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '02838270123', '', 0, 0, 0),
(95, 72, '43R/10 Hồ Văn Huê', '9', '15', 'TPHCM', '0938137468', '', 0, 0, 0),
(96, 73, '32 Trần Ngọc Diện', 'Thảo Điền', '2', 'TPHCM', '0987924285', '', 0, 0, 0),
(97, 7, '292/39 bà hạt', '9', '9', 'TPHCM', '0931489972', '', 0, 0, 0),
(98, 74, '7 Hồ Xuân Hương', '6', '3', 'TPHCM', '0931109093', '', 0, 0, 0),
(99, 74, 'Estella Place 88 Song Hành ', 'An Phú', '2', 'TPHCM', '0968109093', '', 0, 0, 0),
(100, 75, '133 Tân Sơn', 'P15', '13', 'TPHCM', '0849191080', '', 0, 0, 0),
(101, 76, '18BIS/16 Nguyễn Thị Minh Khai', 'ĐaKao', '1', 'TPHCM', '0988735500', '', 0, 0, 0),
(102, 77, '115/174b Lê Văn Sỹ', '13', '15', 'TPHCM', '0796300009', '', 0, 0, 0),
(103, 78, '21 Hoa Mai', '2', '15', 'TPHCM', '0904602424', '', 0, 0, 0),
(104, 79, '262 Ung Văn Khiêm', '25', '16', 'TPHCM', '02862714757', '', 0, 0, 0),
(105, 80, '160/29 Bùi Đình Tuý', '12', '16', 'TPHCM', '0976488594', '', 0, 0, 0),
(106, 81, '144 Đường số 1A', 'Bình Hưng Hòa B', '17', 'TPHCM', '0986790070', '', 0, 0, 0),
(107, 82, '165/52 Nguyễn Thái Bình', 'Nguyễn Thái Bình', '1', 'TPHCM', '0774929231', '', 0, 0, 0),
(108, 83, '40 Nguyễn Cừ', 'Thảo Điền', '2', 'TPHCM', '0888991331', '', 0, 0, 0),
(109, 84, '165/52 Nguyễn Thái Bình', 'Nguyễn Thái Bình', '1', 'TPHCM', '0774929231', '', 0, 0, 0),
(110, 84, '33 Xuân Hồng', '12', '13', 'TPHCM', '0908861136', '', 0, 0, 0),
(111, 85, '55 Nguyễn Khắc Nhu', 'Phường Cô Giang', '1', 'TPHCM', '0775109469', '', 0, 0, 0),
(112, 85, '165/52 Nguyễn Thái Bình', '096 545 7888', '1', 'TPHCM', '0965457888', '', 0, 0, 0),
(113, 85, '40 Nguyễn Cừ', 'Phường Thảo Điền', '2', 'TPHCM', '0888991331', '', 0, 0, 0),
(114, 85, '280/10 Cách Mạng Tháng Tám', '10', '3', 'TPHCM', '0937180689', '', 0, 0, 0),
(115, 85, '144 Đường số 1A, KDC Vĩnh Lộc', 'Bình Hưng Hòa B', '17', 'TPHCM', '0986790070', '', 0, 0, 0),
(116, 85, '280/10 Cách Mạng Tháng Tám', '10', '3', 'TPHCM', '0937180689', '', 0, 0, 0),
(117, 86, '33 Mạc Thị Bưởi', 'Bến Nghé', '1', 'TPHCM', '02873080099', '', 0, 0, 0),
(118, 86, '99 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '02839150098', '', 0, 0, 0),
(119, 87, '99 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '02839150098', '', 0, 0, 0),
(120, 88, '82 Bà Huyện Thanh Quan', '9', '3', 'TPHCM', '', '', 0, 0, 0),
(121, 88, '132 Tôn Thất Thuyết', '15', '4', 'TPHCM', '', '', 0, 0, 0),
(122, 88, '22 Nguyễn Văn Trỗi', '17', '15', 'TPHCM', '', '', 0, 0, 0),
(123, 88, '14 Phan Bội Châu', '2', '16', 'TPHCM', '', '', 0, 0, 0),
(124, 88, 'MM MEGA MARKET An Phú', '', '2', 'TPHCM', '', '', 0, 0, 0),
(125, 89, '28 Nguyễn Trãi', 'Bến Thành', '1', 'TPHCM', '0909991042', '', 0, 0, 0),
(126, 89, '107 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '0909991042', '', 0, 0, 0),
(127, 90, '36/34 Nguyễn Gia Trí', '25', '16', 'TPHCM', '0934353940', '', 0, 0, 0),
(128, 91, '117 Nguyên Hồng', '11', '16', 'TPHCM', '0932193869', '', 0, 0, 0),
(129, 92, '493/25 Cách Mạng Tháng 8', '13', '9', 'TPHCM', '0936510530', '', 0, 0, 0),
(130, 92, '386/54 Lê Văn Sỹ', '14', '3', 'TPHCM', '0936510530', '', 0, 0, 0),
(131, 92, '277/62 Xô Viết Nghệ Tĩnh', '25', '16', 'TPHCM', '0936510530', '', 0, 0, 0),
(132, 92, '379/50 Thống Nhất', '11', '12', 'TPHCM', '0936510530', '', 0, 0, 0),
(133, 93, 'Số 47, đường 66', 'Thảo Điền', '2', 'TPHCM', '0708288016', '', 0, 0, 0),
(134, 94, '2 đường số 39', 'Bình An', '2', 'TPHCM', '0384011435', '', 0, 0, 0),
(135, 95, '5H Tôn Đức Thắng', 'Bến Nghé', '1', 'TPHCM', '028 6287 4715', '', 0, 0, 0),
(136, 95, '103 Bis Võ Thị Sáu', '6', '3', 'TPHCM', '28 6287 4715', '', 0, 0, 0),
(137, 96, '103 Đồng Khởi', 'Bến Nghé', '1', 'TPHCM', '028 6277 7103', '', 0, 0, 0),
(138, 97, '36/32/2 Nguyễn Gia Trí', '25', '16', 'TPHCM', '0343090763', '', 0, 0, 0),
(139, 98, '165/52 Nguyễn Thái Bình', 'Nguyễn Thái Bình', '1', 'TPHCM', 'tel:0765521430', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_categries`
--

CREATE TABLE `store_categries` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `store_categries`
--

INSERT INTO `store_categries` (`id`, `name`, `icon`, `status`) VALUES
(1, 'Tiêu dùng', '2020-08-20-16-23-33-icon-fashion.jpg', 0),
(2, 'Nhà hàng/Cafe', '2020-08-20-16-24-10-icon-cafe.jpg', 0),
(3, 'Làm đẹp', '2020-08-20-16-24-35-icon-beauty.jpg', 0),
(4, 'Thực phẩm', '2020-08-20-16-24-53-icon-food.jpg', 0),
(5, 'Thời trang', '2020-08-20-16-25-28-icon-fashion.jpg', 0),
(6, 'Khách sạn', '2020-08-20-16-26-17-icon-consumer.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `s_value` text NOT NULL,
  `s_key` varchar(32) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `s_value`, `s_key`, `hotel_id`, `remarks`, `added_date`, `updated_date`, `updated_by`) VALUES
(1, '<p>Zero Waste Wonderland l&agrave; một <span>cổng th&ocirc;ng tin</span> gi&uacute;p bạn dễ d&agrave;ng t&igrave;m kiếm c&aacute;c <span>địa điểm, sản phẩm, sự kiện</span> li&ecirc;n quan đến zero-waste. Mong rằng với Zero Waste Wonderland, bạn sẽ thấy <span>zero-waste kh&ocirc;ng hề bất tiện m&agrave; c&ograve;n rất th&uacute; vị.</span></p>\r\n\r\n<p>Thay đổi th&oacute;i quen h&ocirc;m nay để thay đổi tương lai ng&agrave;y sau. H&atilde;y chung tay với Zero Waste Wonderland trả lại m&agrave;u xanh cho Tr&aacute;i Đất của ch&uacute;ng ta nh&eacute;!</p>\r\n', 'zw_intro', 0, 'Home Intro', '2020-08-20 10:45:29', '2021-01-05 10:38:00', 1),
(2, '<p>4</p>\r\n', 'custom_field_1', 0, 'Custom field for product page', '2021-04-28 17:12:02', '2021-04-28 17:12:02', 1),
(3, '<p>5</p>\r\n', 'custom_field_2', 0, 'Custom field for product page', '2021-04-28 17:12:20', '2021-04-28 17:12:20', 1),
(4, '<p>H&atilde;y chia sẻ review về một m&oacute;n đồ sống xanh m&agrave; bạn đ&atilde; mua v&agrave; thấy h&agrave;i l&ograve;ng, hoặc c&oacute; điểm n&agrave;o cần cải thiện nh&eacute;. Th&ocirc;ng tin của bạn sẽ gi&uacute;p được cho rất rất nhiều người lu&ocirc;n đ&oacute;, cảm ơn bạn trước &lt;3</p>\r\n', 'comment_content', 0, 'Comment Content', '2021-04-29 11:00:04', '2021-05-06 23:08:02', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trackings`
--

CREATE TABLE `trackings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL,
  `object_type` varchar(50) DEFAULT NULL,
  `object_id` varchar(50) NOT NULL,
  `object_name` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `status` enum('P','A','I') NOT NULL DEFAULT 'A',
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `last_login_date` datetime NOT NULL,
  `roles` varchar(255) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `cellphone` varchar(32) NOT NULL,
  `email` varchar(200) NOT NULL,
  `remarks` text NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `password_reset_token` varchar(728) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`, `added_date`, `updated_date`, `updated_by`, `last_login_date`, `roles`, `fullname`, `cellphone`, `email`, `remarks`, `is_admin`, `ip_address`, `hotel_id`, `password_reset_token`, `avatar`, `gender`) VALUES
(1, 'admin', 'adcd7048512e64b48da55b027577886ee5a36350', 'A', '0000-00-00 00:00:00', '2015-10-16 21:58:53', 1, '2021-06-09 22:06:33', 'supper admin', 'Tap Nguyen', '0982007996', 'nghuytap@gmail.com', '', 1, '171.227.77.78', 0, '', 'dikkCM5hIpiQQA_AOD9YrlRZ2H1QExdp', 'male'),
(14, 'tapnguyen', 'adcd7048512e64b48da55b027577886ee5a36350', 'A', '2021-04-28 17:08:09', '2021-05-19 21:32:05', 1, '2021-06-16 11:06:31', 'user', 'Tap Nguyen', '', '', '', 0, '45.118.136.247', 0, '', '2021-05-19-15-14-55-ava_hac@2x.png', 'male'),
(15, 'quanbattousai', '9ef68bb1e5990c24d68afb31a70ddc1bcc2f89b2', 'A', '2021-04-29 16:00:30', '2021-05-19 21:40:44', 1, '2021-06-17 10:06:32', 'user', 'Quan Tram', '', '', '', 0, '171.252.154.34', 0, '', '2021-05-19-15-14-17-ava_casau@2x.png', 'male'),
(16, 'Mỹ Đặng', 'accedaf861bd7e3d6b7697dae0fa65fedbec9cf0', 'A', '2021-05-11 10:48:37', '2021-05-19 21:40:56', 1, '2021-05-11 17:05:31', 'user', 'Đặng Kiều Mỹ', '', '', '', 0, '113.161.36.184', 0, '', '2021-05-19-15-15-52-ava_voi@2x.png', 'male');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_images`
--
ALTER TABLE `comment_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_likes`
--
ALTER TABLE `comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_list`
--
ALTER TABLE `comment_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_name`);

--
-- Chỉ mục cho bảng `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_brands`
--
ALTER TABLE `store_brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_categries`
--
ALTER TABLE `store_categries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trackings`
--
ALTER TABLE `trackings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `fullname` (`fullname`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comment_images`
--
ALTER TABLE `comment_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `comment_likes`
--
ALTER TABLE `comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comment_list`
--
ALTER TABLE `comment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=875;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `store_brands`
--
ALTER TABLE `store_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `store_categries`
--
ALTER TABLE `store_categries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `trackings`
--
ALTER TABLE `trackings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
