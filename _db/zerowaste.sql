-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 15, 2021 lúc 05:55 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `zerowaste`
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
  `category` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `field_custom_1` text NOT NULL,
  `field_custom_2` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `review_description`, `photo`, `avatar`, `category`, `store_id`, `field_custom_1`, `field_custom_2`, `status`) VALUES
(1, 'Hộp cơm', 'hop-com', '<p><span>Thay v&igrave; ăn ngo&agrave;i, tự chuẩn bị một bữa cơm sạch sẽ, đầy đủ dinh dưỡng, ngon miệng đang trở th&agrave;nh xu hướng. Khi chọn sống xanh, chiếc hộp cơm c&ograve;n l&agrave; vũ kh&iacute; gi&uacute;p bạn giảm liền sử dụng h&agrave;ng h&agrave;ng lớp lớp những t&uacute;i nylong v&agrave; hộp xốp đ&aacute;ng gh&eacute;t nữa. Bởi vậy, t&iacute;n đồ zerowaste dĩ nhi&ecirc;n cần đ&acirc;u tư ngay cho m&igrave;nh một hộp cơm thật cool ngầu (để c&ograve;n tạo cảm hứng cho những ng&agrave;y m&igrave;nh lười xuống bếp chứ bạn nhỉ?) </span></p>\r\n\r\n<p><span>D&ugrave; bạn th&iacute;ch thiết kế đơn giản tinh tế, hay xinh xắn cute lạc lối, tụi m&igrave;nh cũng đ&atilde; chọn ở đ&acirc;y một số mẫu hộp cơm rất đ&aacute;ng đầu tư ngay ở dưới n&egrave;. </span></p>\r\n', '', '2020-08-20-16-37-55-sp1.jpg', '2021-06-25-22-09-23-7f16759ad3b227ec7ea39.jpg', 1, 1, '', '', 0),
(2, 'Bàn chải gỗ', '', '<p><span>Như t&ecirc;n gọi đ&oacute;, c&aacute;n b&agrave;n chải gỗ sẽ được l&agrave;m từ vật liệu thi&ecirc;n nhi&ecirc;n, khả năng ph&acirc;n hủy 100%. Thường th&igrave; l&agrave; l&agrave; tre v&igrave; tre mọc rất nhanh v&agrave; kh&ocirc;ng cần thuốc trừ s&acirc;u lu&ocirc;n đ&oacute;. C&ograve;n l&ocirc;ng b&agrave;n chải l&agrave;m bằng nylon, mềm cho men răng v&agrave; nướu m&agrave; vẫn đủ mạnh để l&agrave;m sạch răng. Khi cần thay b&agrave;n chải, bạn c&oacute; thể dễ d&agrave;ng r&uacute;t phần l&ocirc;ng ra khỏi c&aacute;n v&agrave; t&aacute;ch ri&ecirc;ng để bạn dễ d&agrave;ng ph&acirc;n loại r&aacute;c. </span></p>\r\n\r\n<p><span>Với b&agrave;n chải, bạn chỉ cần phần l&ocirc;ng l&agrave; ch&iacute;nh. Ch&uacute;ng ta đ&acirc;u cần đẩy th&ecirc;m cho m&ocirc;i trường phần c&aacute;n nhựa, phải kh&ocirc;ng n&agrave;o? H&atilde;y sắm ngay một chiếc b&agrave;n chải gỗ nh&eacute;, vừa dễ thương với m&ocirc;i trường, vừa tr&ocirc;ng dễ thương trong tổ ấm của bạn.</span></p>\r\n', '', '2020-08-20-16-38-30-sp2.jpg', '', 1, 1, '', '', 0),
(3, 'Bình nước', '', '<p><span>Một chiếc b&igrave;nh nước &quot;chất như nước cất&quot; chắc chắn nằm trong shopping list khi bạn sống theo khuynh hướng zerowaste. Th&oacute;i quen mang theo b&igrave;nh nước c&aacute; nh&acirc;n thay v&igrave; d&ugrave;ng chai nước nhựa d&ugrave;ng một lần l&agrave; một trong những th&oacute;i quen thiết thực nhất để giảm r&aacute;c thải nhựa.</span></p>\r\n', '', '2020-08-20-16-38-58-sp3.jpg', '', 4, 1, '', '', 0),
(4, 'Màng bọc thực phẩm', '', '<p><span>Thay v&igrave; sử dụng m&agrave;ng bọc plastic, sao bạn kh&ocirc;ng thử sử dụng m&agrave;ng bọc bằng...vải s&aacute;p ong? Vải s&aacute;p ong l&agrave; một sản phẩm hữu cơ cực kỳ th&acirc;n thiện với m&ocirc;i trường, kh&ocirc;ng thấm nước, lại c&oacute; thể t&aacute;i sử dụng nhiều lần. Để bọc, bạn chỉ cần d&ugrave;ng lực v&agrave; sức n&oacute;ng từ b&agrave;n tay để bọc chung quanh miệng b&aacute;t hoặc bất cứ thực phẩm n&agrave;o bạn cần, như chiếc b&aacute;nh mỳ hay nửa quả t&aacute;o. Nhưng lưu &yacute;, đừng sử dụng vải s&aacute;p ong để bọc thịt g&agrave; c&aacute; tươi sống v&agrave; c&aacute;c tr&aacute;i c&acirc;y c&oacute; t&iacute;nh axit cao như cam chanh bạn nh&eacute;.</span></p>\r\n', '', '2020-10-06-16-48-10-zww-ui-illustrations-mang-boc-thuc-pham.jpg', '', 4, 2, '', '', 0),
(5, 'Tăm bông', '', '<p><span>C&oacute; thể bạn kh&ocirc;ng để &yacute; nhưng tăm b&ocirc;ng đ&iacute;ch thực l&agrave; hung thần với m&ocirc;i trường. Tốc độ thải rất nhanh v&agrave; số lượng rất lớn. Với b&ocirc;ng ngo&aacute;y tai zero-waste, phần th&acirc;n sẽ được l&agrave;m bằng giấy để c&oacute; thể ph&acirc;n hủy 100%. Bạn vẫn cảm thấy ph&ecirc; khi ngo&aacute;y tai v&agrave; bạn sẽ cảm thấy &quot;phẻ&quot; khi bỏ n&oacute; v&agrave;o r&aacute;c ph&acirc;n loại.</span></p>\r\n', '', '2020-10-06-16-22-36-zww-ui-illustrations-tam-bong.jpg', '', 1, 5, '', '', 0),
(6, 'Cốc nguyệt san', '', '<p><span>L&agrave; bửu bối trong chu kỳ kinh nguyệt của con g&aacute;i, cốc nguyệt san l&agrave; một giải ph&aacute;p mới tinh v&agrave; ho&agrave;n hảo: bạn sẽ kh&ocirc;ng cảm thấy g&igrave; trong tận gần 12 tiếng. Chưa hết! Cốc nguyệt san gi&uacute;p bạn g&aacute;i tr&aacute;nh thải r&aacute;c ra m&ocirc;i trường, v&igrave; khả năng d&ugrave;ng đi d&ugrave;ng lại nhiều lần. </span></p>\r\n\r\n<p>Mỗi phụ nữ sẽ thải ra đến 28.189 kg chất thải từ băng vệ sinh. Trong khi đ&oacute;, bạn sẽ chỉ cần d&ugrave;ng 2-3 chiếc cốc nguyệt san trong suốt đời, qu&aacute; kinh tế v&agrave; th&acirc;n thiện với m&ocirc;i trường phải kh&ocirc;ng?</p>\r\n', '', '2020-10-06-16-28-42-zww-ui-illustrations-coc-nguyet-san.jpg', '', 1, 5, '', '', 0),
(7, 'Túi đi chợ', '', '<p><span>T&uacute;i đi chợ zero-waste hẳn l&agrave; đ&atilde; quen thuộc với nhiều người. Đơn giản l&agrave; v&igrave; n&oacute; c&oacute; độ bền cao, chịu sức nặng tốt 15-20kg, nhiều k&iacute;ch thước kh&aacute;c nhau v&agrave; dễ d&agrave;ng gấp gọn mang đi. Thường bạn sẽ thấy 2 loại l&agrave; t&uacute;i vải v&agrave; t&uacute;i d&ugrave;. D&ugrave; l&agrave; loại n&agrave;o th&igrave; cũng c&oacute; si&ecirc;u nhiều loại họa tiết &quot;ưng c&aacute;i bụng&quot; cho bạn chọn lu&ocirc;n nh&eacute;!</span></p>\r\n', '', '2020-10-06-16-32-27-zww-ui-illustrations-tui-di-cho.jpg', '', 4, 5, '', '', 0),
(8, 'Bông tẩy trang', '', '<p><span>Thay v&igrave; sử dụng b&ocirc;ng tẩy trang b&igrave;nh thường d&ugrave;ng một lần, sao kh&ocirc;ng thử b&ocirc;ng tẩy trang bằng vải sợi tre c&oacute; thể giặt v&agrave; sử dụng đi sử dụng lại nhiều lần? Sản phẩm b&ocirc;ng tẩy trang th&acirc;n thiện với m&ocirc;i trường n&agrave;y vẫn thật dịu nhẹ cho mặt, v&agrave; khi sử dụng lu&acirc;n phi&ecirc;n 3-4 b&ocirc;ng tẩy trang, bạn c&oacute; thể d&ugrave;ng l&ecirc;n đến 9-12 th&aacute;ng. </span></p>\r\n', '', '2020-10-06-16-33-01-zww-ui-illustrations-khan-tay-trang.jpg', '', 3, 5, '', '', 0),
(9, 'Kem đánh răng', '', '<p><span>Kem đ&aacute;nh răng th&acirc;n thiện với m&ocirc;i trường c&oacute; th&agrave;nh phần hữu cơ như than hoạt t&iacute;nh, dầu dừa, tinh dầu bạc h&agrave;, v&agrave; kh&ocirc;ng chứa trong tu&yacute;p nhựa như kem đ&aacute;nh răng chứa h&oacute;a chất th&ocirc;ng thường. Bạn vẫn c&oacute; thể ho&agrave;n to&agrave;n an t&acirc;m l&agrave; sản phẩm kem đ&aacute;nh răng organic n&agrave;y vẫn c&oacute; thể bảo vệ sức khỏe răng miệng, l&agrave;m răng trắng s&aacute;ng, nướu chắc khỏe v&agrave; khử m&ugrave;i nh&eacute;!</span></p>\r\n', '', '2020-10-06-16-33-40-zww-ui-illustrations-kem-danh-rang.jpg', '', 1, 5, '', '', 0),
(10, 'Ống hút', '', '<p><span>Kh&ocirc;ng cần phải giới thiệu g&igrave; th&ecirc;m, ống h&uacute;t d&ugrave;ng được nhiều lần bằng chất liệu inox hay gỗ chắc chắn l&agrave; một trong những item đầu ti&ecirc;n bạn muốn sưu tầm khi theo đuổi lối sống xanh. C&ugrave;ng ch&uacute;ng m&igrave;nh &quot;sa thải&quot; ngay lập tức ống h&uacute;t nhựa v&agrave; sưu tầm ngay một chiếc ống h&uacute;t c&oacute; nguy&ecirc;n liệu th&acirc;n thiện với m&ocirc;i trường n&agrave;o!</span></p>\r\n', '', '2020-10-06-16-34-09-zww-ui-illustrations-ong-hut.jpg', '', 1, 5, '', '', 0),
(11, 'Vải đa năng', '', '<p><span>Nếu c&oacute; ai n&oacute;i bạn chuyển đổi sang sống zero-waste bất tiện, h&atilde;y đưa họ xem khăn vải eco-friendly. Khăn vải eco-friendly thường được l&agrave;m bằng vải linen hoặc vải 100% cotton, cực kỳ mềm mại, lại c&ograve;n rất bền. Chất liệu n&agrave;y khi sử dụng rất tho&aacute;ng m&aacute;t, ph&ugrave; hợp với những quốc gia nhiệt đới nắng n&oacute;ng như Việt Nam. V&agrave; tuyệt vời hơn, khăn vải eco-friendly c&oacute; khả năng kh&aacute;ng nấm v&agrave; kh&aacute;ng khuẩn, bảo vệ sức khỏe cả gia đ&igrave;nh.</span></p>\r\n', '', '2020-10-06-16-35-02-zww-ui-illustrations-vai-da-nang.jpg', '', 1, 5, '', '', 0),
(12, 'Hũ thủy tinh', '', '<p><span>Đến với zero-waste, bạn sẽ thường xuy&ecirc;n thấy thủy tinh, bởi v&igrave; n&oacute; l&agrave; một trong những vật liệu dễ t&aacute;i chế nhất. Nếu bạn l&agrave; người ch&uacute; trọng mẫu m&atilde;, hũ thủy tinh c&oacute; rất nhiều k&iacute;ch thước, h&igrave;nh d&aacute;ng v&agrave; t&ocirc;n l&ecirc;n vẻ đẹp trong nh&agrave;. B&ecirc;n cạnh đ&oacute;, hũ thủy tinh kh&ocirc;ng hấp thụ m&ugrave;i v&agrave; vi khuẩn từ đồ ăn n&ecirc;n chỉ cần rửa qua l&agrave; bạn c&oacute; thể t&aacute;i sử dụng n&oacute; ho&agrave;i ho&agrave;i. Nếu nh&agrave; bạn d&ugrave;ng m&aacute;y rửa ch&eacute;n th&igrave; sao? Toẹt zời lu&ocirc;n, v&igrave; hũ thủy tinh chịu nhiệt tốt hơn hũ nhựa nhiều lắm đ&oacute;. </span></p>\r\n', '', '2020-10-06-16-35-35-zww-ui-illustrations-hu-thu-tinh.jpg', '', 4, 5, '', '', 0),
(13, 'Chỉ nha khoa', '', '<p><span>Chỉ nha khoa thi&ecirc;n nhi&ecirc;n nh&igrave;n b&ecirc;n ngo&agrave;i th&igrave; kh&ocirc;ng kh&aacute;c g&igrave; chỉ nha khoa b&igrave;nh thường. Thực tế, n&oacute; được l&agrave;m từ tinh bột bắp v&agrave; c&oacute; khả năng ph&acirc;n hủy sinh học đấy nh&eacute;. Ngo&agrave;i ra, c&ograve;n c&oacute; một lợi &iacute;ch kh&ocirc;ng thể bỏ qua của chỉ nha khoa thi&ecirc;n nhi&ecirc;n l&agrave; n&oacute; rất th&iacute;ch hợp với những ai c&oacute; nướu nhạy cảm, hay bị chảy m&aacute;u. Ho&agrave;n to&agrave;n sạch sẽ, ho&agrave;n to&agrave;n an t&acirc;m nh&eacute;!</span></p>\r\n', '', '2020-10-06-16-37-36-zww-ui-illustrations-chi-nha-khoa.jpg', '', 1, 5, '', '', 0),
(14, 'Mỹ phẩm', '', '<p><span>Bạn c&oacute; biết một sự thật đau l&ograve;ng l&agrave; nền c&ocirc;ng nghiệp h&oacute;a mỹ phẩm thải ra h&agrave;ng chục ng&agrave;n tấn h&oacute;a chất g&acirc;y &ocirc; nhiễm nguồn nước v&agrave; tổn hại đến nhiều lo&agrave;i động vật biển? Nhận thức về điều n&agrave;y, người ti&ecirc;u d&ugrave;ng trong thời gian gần đ&acirc;y đặt &aacute;p lực ng&agrave;nh mỹ phẩm cũng cần phải thay đổi để tạo những sản phẩm organic, c&oacute; xuất xứ thi&ecirc;n nhi&ecirc;n v&agrave; hạn chế h&oacute;a chất &ocirc; nhiễm m&ocirc;i trường. </span></p>\r\n\r\n<p><span>Xuất xứ thi&ecirc;n nhi&ecirc;n c&ograve;n tuyệt vời v&igrave; rất l&agrave;nh t&iacute;nh cho l&agrave;n da bạn nữa. C&ugrave;ng chăm s&oacute;c v&agrave; n&acirc;ng niu l&agrave;n da với những sản phẩm l&agrave;m đẹp v&agrave; skincare thật &quot;đỉnh&quot; ch&uacute;ng m&igrave;nh đ&atilde; handpick ra ở dưới nhen.</span></p>\r\n', '', '2020-10-06-16-38-29-zww-ui-illustrations-my-pham.jpg', '', 3, 5, '', '', 0),
(15, 'Áo quần', '', '<p><span>Bye bye ngay lập tức trang phục &quot;fast fashion&quot; đi bạn! Những quần &aacute;o chạy theo m&ugrave;a, theo mốt một thời gian ngắn sẽ nhanh ch&oacute;ng trở th&agrave;nh r&aacute;c thải ra m&ocirc;i trường đất v&agrave; biển. Thay v&agrave;o đ&oacute;, h&atilde;y c&acirc;n nhắc kỹ để chọn những trang phục vừa vặn, thoải m&aacute;i bạn sẽ c&oacute; thể mặc l&acirc;u d&agrave;i, v&agrave; được l&agrave;m từ những chất liệu th&acirc;n thiện m&ocirc;i trường, c&oacute; thể ph&acirc;n hủy hữu cơ 100% như linen, cotton, lụa tơ tằm, lụa sen, xơ tre..., vừa thoải m&aacute;i vừa v&ocirc; c&ugrave;ng thời trang đ&oacute;. </span></p>\r\n', '', '2020-10-06-16-38-55-zww-ui-illustrations-ao-quan.jpg', '', 5, 5, '', '', 0),
(16, 'Dụng cụ cọ rửa', '', '<p><span>C&oacute; một sự thật l&agrave; những nhiệm vụ m&agrave; dụng cụ cọ rửa bằng nhựa kh&oacute; l&agrave;m được th&igrave; dụng cụ cọ rửa thi&ecirc;n nhi&ecirc;n sẵn s&agrave;ng &quot;c&acirc;n team&quot; đấy. Trước hết l&agrave; nhờ c&aacute;n chắc chắn l&agrave;m bằng vật liệu độ bền cao, v&iacute; dụ như gỗ sồi. Sau l&agrave; l&ocirc;ng cọ l&agrave;m bằng xơ dừa cứng c&aacute;p độ ngậm nước cao, hỗ trợ cọ rửa cực &quot;xịn x&ograve;&quot;. Nhờ đ&oacute; m&agrave; dễ d&agrave;ng xử l&yacute; c&aacute;c vết d&iacute;nh, bụi bẩn kh&oacute; nhằn trong gian bếp, nh&agrave; vệ sinh... </span></p>\r\n', '', '2020-10-06-16-39-21-zww-ui-illustrations-dung-cu-co-rua.jpg', '', 1, 5, '', '', 0),
(17, 'Dao cạo', '', '<p><span>C&oacute; h&agrave;ng tỷ chiếc dao cạo bị bỏ đi mỗi năm, trong khi thứ duy nhất ch&uacute;ng ta cần thay chỉ l&agrave; lưỡi dao cạo. H&atilde;y thử chuyển sang d&ugrave;ng dao cạo c&aacute;n gỗ bạn nh&eacute;. Vừa nhẹ tay cầm cho đỡ mỏi, vừa đ&aacute;p ứng đ&uacute;ng v&agrave; đủ nhu cầu của ch&uacute;ng ta. Kh&ocirc;ng, ch&uacute;ng ta kh&ocirc;ng cần c&aacute;n c&oacute; chế độ rung, trang bị đ&egrave;n pin hay gắn vừa 5 lưỡi dao. &Ocirc;ng b&agrave; m&igrave;nh chỉ c&oacute; một c&aacute;i lưỡi lam v&agrave; 1 c&aacute;i k&iacute;nh mờ mờ. C&ugrave;ng g&oacute;p cạo sạch r&aacute;c nhựa ra khỏi m&ocirc;i trường nh&eacute;.</span></p>\r\n', '', '2020-10-06-16-39-45-zww-ui-illustrations-dao-cao.jpg', '', 1, 5, '', '', 0),
(18, 'Lăn khử mùi', '', '<p><span>Chất khử m&ugrave;i v&agrave; hạn chế mồ h&ocirc;i thường được l&agrave;m từ nguồn gốc h&oacute;a chất. Một số lăn khử m&ugrave;i chứa th&agrave;nh phần nh&ocirc;m, được khai th&aacute;c từ quặng b&ocirc; x&iacute;t, rất ảnh hưởng đến m&ocirc;i trường. Những h&oacute;a chất từ lăn khử m&ugrave;i cũng được lo ngại c&oacute; thể ảnh hưởng đến sức khỏe của ch&uacute;ng ta. May mắn l&agrave; thi&ecirc;n nhi&ecirc;n đ&atilde; c&oacute; những lăn khử m&ugrave;i tuyệt vời d&agrave;nh cho ch&uacute;ng m&igrave;nh đ&oacute;, như l&agrave; c&aacute;c sản phẩm đ&aacute; khử m&ugrave;i độc đ&aacute;o m&agrave; ch&uacute;ng m&igrave;nh lựa chọn ở dưới đ&acirc;y n&egrave;.</span></p>\r\n', '', '2020-10-06-16-40-08-zww-ui-illustrations-lan-khu-mui.jpg', '', 1, 5, '', '', 0),
(19, 'Bộ muỗng đũa', '', '<p><span>Bộ muỗng đũa gỗ l&agrave; một trong những on-the-go m&agrave; mọi fan của Zerowaste phải sưu tầm ngay. Kh&ocirc;ng chỉ tiện dụng c&ugrave;ng hộp cơm cho những bữa trưa văn ph&ograve;ng dinh dưỡng, ngon miệng, bộ muỗng đũa c&ograve;n rất l&agrave; hữu &iacute;ch những l&uacute;c bạn đi du lịch, để tr&aacute;nh phải buộc sử dụng muỗng đũa nhựa </span></p>\r\n', '', '2020-10-06-16-40-39-zww-ui-illustrations-muong-dua.jpg', '', 4, 5, '', '', 0),
(20, 'Xà bông', '', '<p><span>X&agrave; ph&ograve;ng thảo mộc hand-made giống như một giải ph&aacute;p win-win tuyệt đối cho ai hướng đến lối sống xanh: x&agrave; ph&ograve;ng hand-made l&agrave;m từ th&agrave;nh phần th&acirc;n thiện với thi&ecirc;n nhi&ecirc;n, v&agrave; ch&iacute;nh đặc điểm n&agrave;y khiến x&agrave; ph&ograve;ng thảo mộc trở th&agrave;nh si&ecirc;u mỹ phẩm nu&ocirc;i dưỡng v&agrave; t&aacute;i tạo l&agrave;n da bạn. </span></p>\r\n\r\n<p><span>Tr&aacute;i với x&agrave; ph&ograve;ng c&ocirc;ng nghiệp c&oacute; th&agrave;nh phần từ dầu hỏa v&agrave; chỉ l&agrave;m sạch bề mặt, x&agrave; ph&ograve;ng handmade giữa nguy&ecirc;n những g&igrave; tốt l&agrave;nh của thi&ecirc;n nhi&ecirc;n l&agrave;m m&oacute;n qu&agrave; cho l&agrave;n da bạn: tinh chất từ hoa hồng, dầu dừa, hay quế, tr&agrave; xanh, mật ong... Kho&aacute;ng chất, vitamin v&agrave; hương thơm ngọt ng&agrave;o kh&oacute; cưỡng của những chiếc b&aacute;nh x&agrave; ph&ograve;ng handmade xinh đẹp khiến bạn kh&ocirc;ng thể khiến bạn ngừng m&ecirc; mẩn khi lỡ bước ch&acirc;n v&agrave;o thế giới thơm tho n&agrave;y. </span></p>\r\n', '', '2020-10-06-16-41-15-zww-ui-illustrations-xa-bong.jpg', '', 1, 5, '', '', 0);

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
(1, 1, 14, 'Ổn lắm mọi người ơi', 5, '2021-06-25 22:06:10', 'Chất lượng tốt', 'Từ 50.000 - 100.000 VND', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_images`
--

CREATE TABLE `comment_images` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 1, 1, 1),
(2, 12, 1, 1);

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
(5, 'Đi đâu cũng được', 0),
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
(1, 's', 's', 'Khách mua hàng', 'shop', 'Thực phẩm', 'sfsf', '', '', '', 'sfsfs', 'fsaf', '2020-08-30 21:08:02'),
(2, 'fsdf', 'gds', 'Khách mua hàng', 'product', 'Thực phẩm', 'gds', '', '', '', 'w3rds', 'gdsgs', '2020-08-30 22:08:53'),
(3, 'gg', 'fdgdfg', 'Khách mua hàng', 'shop', 'Thực phẩm', 'dfg', '', '', '', 'dfg', 'gdf', '2020-08-30 22:08:34'),
(4, 'Meo', 'meo@gmail.com', 'Khách mua hàng', 'product', 'Thời trang', 'Meomeo', '', '', '', 'Hem bit', 'Meomeo', '2020-09-30 10:09:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
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
(2, 'tgrt', NULL, '2020-10-28 13:56:29', '2020-10-28 13:56:29', 1, 1, '0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
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
  `url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image` tinyint(4) DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `thumb_nails` tinyint(4) DEFAULT NULL,
  `active_status` tinyint(4) DEFAULT 0,
  `display_order` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `name`, `url`, `cover_image`, `file_ext`, `old_name`, `gallery_id`, `thumb_nails`, `active_status`, `display_order`, `description`, `title`) VALUES
(1, '2020-10-07-15-19-28-51aw05DjvVL._A.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 1, 'image/jpeg', '51aw05DjvVL._A.jpg', 1, 1, 0, 1, '', ''),
(3, '2020-10-07-15-19-28-best-lunch-container.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', 0, 'image/jpeg', 'best-lunch-container.jpg', 1, 1, 0, 3, '', ''),
(4, '2020-10-07-15-10-24-04e199acdb16492f5514fa1181d013f2.jpg', '/home/creativ1/public_html/zerowaste/protected/../uploads/gallery/', NULL, 'image/jpeg', '04e199acdb16492f5514fa1181d013f2.jpg', 1, 1, 0, 2, '', ''),
(5, '2020-10-28-13-56-29-st1.png', 'C:\\xampp\\htdocs\\zerowaste\\protected/../uploads/gallery/', 1, 'image/png', 'st1.png', 2, 1, 0, 1, '', ''),
(6, '2020-10-28-13-56-29-st2.png', 'C:\\xampp\\htdocs\\zerowaste\\protected/../uploads/gallery/', 0, 'image/png', 'st2.png', 2, 0, 0, 2, '', ''),
(7, '2020-10-28-13-56-29-st3.png', 'C:\\xampp\\htdocs\\zerowaste\\protected/../uploads/gallery/', 0, 'image/png', 'st3.png', 2, 0, 0, 3, '', ''),
(8, '2020-10-28-13-56-29-st4.png', 'C:\\xampp\\htdocs\\zerowaste\\protected/../uploads/gallery/', 0, 'image/png', 'st4.png', 2, 0, 0, 4, '', ''),
(9, '2020-10-28-13-56-29-st5.png', 'C:\\xampp\\htdocs\\zerowaste\\protected/../uploads/gallery/', 0, 'image/png', 'st5.png', 2, 0, 0, 5, '', ''),
(10, '2020-10-28-13-56-29-st6.png', 'C:\\xampp\\htdocs\\zerowaste\\protected/../uploads/gallery/', 0, 'image/png', 'st6.png', 2, 0, 0, 6, '', '');

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
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `news_category_id`, `name`, `photo`, `large_photo`, `organiser`, `date`, `link`, `short_description`, `description`, `address`, `status`) VALUES
(1, 1, 'Eco-green Tôi hành động, bạn cũng thế', '2020-08-27-14-40-59-event1.jpg', '', 'Lotte Mart', '22/4/2019 – 31/12/2019', 'http://lottemart.com.vn/tin-tuc/dong-hanh-cung-lotte-mart/lotte-mart-eco-green-toi-hanh-dong-ban-cung-the', 'Mục tiêu: giảm thiểu 20% lượng túi nilon sử dụng tại hệ thống, đồng thời định hướng phát triển tới 2025 LOTTE Mart sẽ trở thành siêu thị đầu tiên tại Việt Nam không sử dụng túi nilon', '<p>- Mục ti&ecirc;u: giảm thiểu 20% lượng t&uacute;i nilon sử dụng tại hệ thống, đồng thời định hướng ph&aacute;t triển tới 2025 LOTTE Mart sẽ trở th&agrave;nh si&ecirc;u thị đầu ti&ecirc;n tại Việt Nam kh&ocirc;ng sử dụng t&uacute;i nilon<br />\r\n- Triển khai thay thế c&aacute;c loại t&uacute;i đang sử dụng hiện tại sang những loại t&uacute;i c&oacute; thể tự ph&acirc;n hủy hoặc c&aacute;c sản phẩm thay thế với hiệu quả tương đương nhưng lại mang gi&aacute; trị bảo vệ m&ocirc;i trường cao hơn.<br />\r\n- Sử dụng l&aacute; chuối trong đ&oacute;ng g&oacute;i sản phẩm, b&agrave;y b&aacute;n c&aacute;c sản phẩm th&acirc;n thiện m&ocirc;i trường, thay thế hộp xốp đựng thức ăn tại quầy thực phẩm nấu ch&iacute;n của si&ecirc;u thị bằng hộp b&atilde; m&iacute;a tốt cho sức khỏe; tổ chức dọn r&aacute;c tại địa phương, thực hiện chiến dịch ra qu&acirc;n h&agrave;nh động k&ecirc;u gọi bảo vệ m&ocirc;i trường, triễn l&atilde;m tranh m&ocirc;i trường tại 14 trung t&acirc;m của LOTTE Mart</p>\r\n', 'The Factory Comtemporary Art Centre, 98 Xuân Thủy, Thảo Điền, Q.2, TP. HCM', 0),
(2, 1, 'Waste Zero - Be Hero | Người hùng không lãng phí', '2020-08-27-16-55-38-event2.jpg', '', 'Golden Gate & Cocacola', '30/10/2019', 'https://wastezerobehero.ggg.com.vn', 'Golden Gate cùng đối tác chiến lược Coca-Cola sẽ đồng hành cùng cộng đồng để đánh bay những khay thức ăn dang dở, uống sạch đồ uống ngon lành, xóa sổ ống hút nhựa, tái chế rác thải thực phẩm.', '<p>Golden Gate c&ugrave;ng đối t&aacute;c chiến lược Coca-Cola sẽ đồng h&agrave;nh c&ugrave;ng cộng đồng để đ&aacute;nh bay những khay thức ăn dang dở, uống sạch đồ uống ngon l&agrave;nh, x&oacute;a sổ ống h&uacute;t nhựa, t&aacute;i chế r&aacute;c thải thực phẩm.<br />\r\n- Tr&agrave;o lưu &ldquo;Ăn hết sạch - Kh&ocirc;ng ngại th&aacute;ch&rdquo;: Chụp ảnh b&aacute;t đĩa sạch trơn &uacute;p ngược sau khi ăn v&agrave; chia sẻ l&ecirc;n mạng x&atilde; hội với hashtag #wastezerobehero #goldengate để nhận coupon 100,000 VND của Golden Gate</p>\r\n', '', 0),
(3, 1, 'Dreaming of a Green Christmas: Save the Date!', '2020-08-27-17-01-07-event3.jpg', '', 'Eco7', '8/12/2019 (10AM - 4PM)', 'https://www.facebook.com/events/1482926998523545/', 'Các gian hàng tiên phong trong việc phục vụ sinh hoạt theo hướng phát triển bền vững vì môi trường', '<p>C&aacute;c gian h&agrave;ng ti&ecirc;n phong trong việc phục vụ sinh hoạt theo hướng ph&aacute;t triển bền vững v&igrave; m&ocirc;i trường<br />\r\nSản phẩm từ một số tổ chức từ thiện ngay tại cộng đồng Quận 7<br />\r\nWorkshop th&uacute; vị d&agrave;nh cho trẻ em<br />\r\nNếm thử thực phẩm, thức uống sạch v&agrave; ngon l&agrave;nh.</p>\r\n', '', 0),
(4, 2, 'Report: one billion single use plastic items to be eliminated by end of 2020', '2020-09-14-14-19-31-dell-plastics-bottles-river-estuary.jpg', '', 'Eco7', '8/12/2019 (10AM - 4PM)', '', 'Test', '<p>test</p>\r\n', '', 0);

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
(1, 1, '118/118 Phan Huy Ích', '15', '13', 'TPHCM', '4564564', '', '0', '0', 0),
(2, 2, '118/1D Nguyễn Trãi', '3', '5', 'TPHCM', '090 299 77 95', '', '0', '0', 0),
(3, 3, '351/1 Lê Văn Sỹ', '13', '3', 'TPHCM', '090 998 79 72', '', '0', '0', 0),
(4, 4, '83 Thạch Thị Thanh', 'P.Tân Định', '1', 'TPHCM', '', '', '0', '0', 0),
(5, 5, '47/1 Quốc Hương', 'Thảo Điền', '2', 'TPHCM', '02862702141', '', '0', '0', 0),
(6, 6, '180C Hai Bà Trưng', 'ĐaKao', '1', 'TPHCM', '', '', '0', '0', 0),
(7, 7, '54/5 Nguyễn Bỉnh Khiêm', 'ĐaKao', '1', 'TPHCM', '02862753545', '', '0', '0', 0),
(10, 9, '2/15C Cao Thắng', '5', '3', 'TPHCM', '', '', '0', '0', 0),
(11, 10, '292/39 Bà Hạt', '9', '9', 'TPHCM', '', '', '0', '0', 0),
(12, 11, '489A/11 Huỳnh Văn Bánh', '13', '15', 'TPHCM', '', '', '0', '0', 0),
(13, 12, '6 Thi Sách', 'Bến Nghé', '1', 'TPHCM', '', '', '0', '0', 0),
(14, 13, ' 55 Trần Quốc Toản', '8', '3', 'TPHCM', '', '', '0', '0', 0),
(16, 15, '46/9 Trần Quang Diệu', '14', '3', 'TPHCM', '090 268 31 45', '', '0', '0', 0),
(17, 16, '6D Trần Quang Diệu', '13', '3', 'TPHCM', ' 088 920 99 77', '', '0', '0', 0),
(18, 18, ' 31 Phó Đức Chính', 'Nguyễn Thái Bình', '1', 'TPHCM', '', '', '0', '0', 0),
(20, 19, '180A Nguyễn Hữu Cảnh', '22', '16', 'TPHCM', ' 034 861 0591', '', '0', '0', 0),
(21, 20, 'Tầng 2, 55 Nguyễn Khắc Nhu', 'Cô Giang', '1', 'TPHCM', '', '', '0', '0', 0),
(22, 21, '47 Phan Chu Trinh', 'Bến Thành', '1', 'TPHCM', '', '', '0', '0', 0),
(23, 22, '491/2 Lê Văn Sỹ', '12', '3', 'TPHCM', ' 098 716 01 75', '', '0', '0', 0),
(24, 23, ' 36/12B Nguyễn Gia Trí', '25', '16', 'TPHCM', '', '', '0', '0', 0),
(25, 24, '26B Lê Lợi', 'Bến Nghé', '1', 'TPHCM', '', '', '0', '0', 0),
(26, 25, '35 Phan Chu Trinh', 'Bến Thành', '1', 'TPHCM', '', '', '0', '0', 0),
(27, 27, '20 Nguyễn Thị Minh Khai', 'ĐaKao', '1', 'TPHCM', '', '', '0', '0', 0),
(28, 27, '57 đường Nguyễn Du', 'Bến Nghé', '1', 'TPHCM', '', '', '0', '0', 0),
(29, 27, '39 Xuân Thủy', 'Thảo Điền', '2', 'TPHCM', '', '', '0', '0', 0),
(30, 28, '3/5 Nguyễn Văn Thủ', 'ĐaKao', '1', 'TPHCM', '093 388 26 64', '', '0', '0', 0),
(31, 29, '206 Nguyễn Văn Hưởng', 'Thảo Điền', '2', 'TPHCM', ' 028 6287 4826', '', '0', '0', 0),
(32, 30, '40/28 Phạm Viết Chánh', '19', '16', 'TPHCM', '028 2253 2084', '', '0', '0', 0),
(33, 31, '95B Nguyễn Văn Thủ', 'ĐaKao', '1', 'TPHCM', ' 090 441 31 48', '', '0', '0', 0),
(34, 32, '9 Trần Cao Vân', 'ĐaKao', '1', 'TPHCM', '0931224334', '', '0', '0', 0),
(35, 33, '3 Trần Khánh Dư', 'Tân Định', '1', 'TPHCM', '090 900 02 02', '', '0', '0', 0),
(36, 34, '132/62 Nguyễn Hữu Cảnh', '22', '16', 'TPHCM', ' 093 883 40 09', '', '0', '0', 0),
(37, 35, '135 Đoàn Văn Bơ', '12', '4', 'TPHCM', ' 0989931532', '', '0', '0', 0),
(38, 36, ' 218 Nguyễn Đình Chiểu', '6', '3', 'TPHCM', ' 093 401 88 05', '', '0', '0', 0),
(39, 37, '29/81 Đoàn Thị Điểm', '1', '15', 'TPHCM', '084 500 4608', '', '0', '0', 0),
(40, 38, '141 Xô Viết Nghệ Tĩnh', '17', '16', 'TPHCM', '02838408331', '', '0', '0', 0),
(41, 38, 'Số 6 Đường D2', '25', '16', 'TPHCM', '', '', '0', '0', 0),
(42, 39, '4A-4B Võ Thị Sáu', 'Tân Định', '1', 'TPHCM', '028 6271 7497', '', '0', '0', 0),
(43, 39, '153/11A Nguyễn Thị Minh Khai', 'Phạm Ngũ Lão', '1', 'TPHCM', '028 6271 7497', '', '0', '0', 0),
(44, 39, '270 Lê Văn Sỹ', '14', '3', 'TPHCM', '028 6271 7497', '', '0', '0', 0),
(45, 40, '152/59 Lý Chính Thắng', '7', '3', 'TPHCM', '096 114 92 68', '', '0', '0', 0),
(46, 41, 'Lầu 1 - 86 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', ' 091 579 97 33', '', '0', '0', 0),
(47, 42, '147 Nguyễn Cơ Thạch', 'An Lợi Đông', '2', 'TPHCM', '(028) 3822 9712', '', '0', '0', 0),
(48, 42, '101 Thảo Điền', 'Thảo Điền', '2', 'TPHCM', '(028) 3822 9712', '', '0', '0', 0),
(49, 42, ' 246 Nguyễn Văn Hưởng', 'Thảo Điền', '2', 'TPHCM', ' (028) 3822 9712', '', '0', '0', 0),
(50, 43, '43 Nguyễn Văn Giai', 'Đa Kao', '1', 'TPHCM', ' 090 215 05 16', '', '0', '0', 0),
(52, 44, '10 Nguyễn Bá Lân', 'Thảo Điền', '2', 'TPHCM', '+84 76 728 6183', '', '0', '0', 0),
(54, 46, '402/19 Lê Văn Sỹ', '14', '3', 'TPHCM', '', '', '0', '0', 0),
(55, 47, '26 Lý Tự Trọng', 'Bến Nghé', '1', 'TPHCM', ' 093 878 07 67', '', '0', '0', 0),
(56, 48, '386/11 Lê Văn Sỹ', '14', '3', 'TPHCM', ' 028 6653 9679', '', '0', '0', 0),
(57, 77, '115/174b Lê Văn Sỹ', '13', '15', 'TPHCM', ' 079 630 0009', '', '0', '0', 0),
(58, 50, '8 đường Hoàng Hoa Thám', '7', '16', 'TPHCM', ' 038 867 8077', '', '0', '0', 0),
(59, 51, '20 Đường số 13', '6', '12', 'TPHCM', ' 093 820 33 02', '', '0', '0', 0),
(60, 52, '14 Đặng Dung', 'Tân Định', '1', 'TPHCM', '028 3526 2696', '', '0', '0', 0),
(61, 53, '144 Đường số 1A', 'Bình Hưng Hoà', '17', 'TPHCM', '0933900360', '', '0', '0', 0),
(63, 5, '100 Hà Huy Tập', 'Tân Phong', '7', '', '', '', '0', '0', 0),
(64, 5, '59 Ngô Tất Tố', '21', '16', '', '', '', '0', '0', 0),
(65, 54, '6 Hoa Cau', '7', '15', 'TPHCM', '039 787 1356', '', '0', '0', 0),
(66, 54, '25A Lam Sơn', '2', '13', 'TPHCM', '039 787 1356', '', '0', '0', 0),
(67, 54, '191 Đinh Tiên Hoàng', 'ĐaKao', '1', 'TPHCM', '0397871356', '', '0', '0', 0),
(68, 16, '191 Hai Bà Trưng', '6', '3', 'TPHCM', '', '', '0', '0', 0),
(69, 16, '57A Tú Xương', '4', '3', 'TPHCM', '', '', '0', '0', 0),
(70, 16, '16 Bà Huyện Thanh Quan', '6', '3', 'TPHCM', '', '', '0', '0', 0),
(71, 55, '118 đường 3 tháng 2', '12', '9', 'TPHCM', '', '', '0', '0', 0),
(72, 56, '193/D3 Nam Kỳ Khởi Nghĩa', '7', '3', 'TPHCM', '0908861136', '', '0', '0', 0),
(73, 56, '63 Hồ Tùng Mậu', 'Bến Nghé', '1', 'TPHCM', '0933 791 891', '', '0', '0', 0),
(74, 57, '5 Trương Quyền', '6', '3', 'TPHCM', '02866525911', '', '0', '0', 0),
(75, 58, '156B Lý Tự Trọng', 'Bến Thành', '1', 'TPHCM', ' 0703931783', '', '0', '0', 0),
(76, 58, '133/3 Nguyễn Chí Thanh', '9', '5', 'TPHCM', '0703931783', '', '0', '0', 0),
(77, 59, '54/2 Nguyễn Cư Trinh', 'Nguyễn Cư Trinh', '1', 'TPHCM', ' 0909077371', '', '0', '0', 0),
(78, 60, '223/2K Phạm Viết Chánh', 'Nguyễn Cư Trinh', '1', 'TPHCM', '0902350180', '', '0', '0', 0),
(79, 60, '10C2 Nguyễn Thị Minh Khai', 'ĐaKao', '1', 'TPHCM', '0931480828', '', '0', '0', 0),
(80, 42, '70-72 Lê Thánh Tôn', 'Bến Nghé', '1', 'TPHCM', '', '', '0', '0', 0),
(81, 61, '42 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '0907633457', '', '0', '0', 0),
(82, 62, '5 nguyễn cừ', 'Thảo Điền', '2', 'TPHCM', '0935100999', '', '0', '0', 0),
(83, 63, '33 Xuân Hồng', '12', '13', 'TPHCM', '02866846682', '', '0', '0', 0),
(84, 64, '63/11 Pasteur', 'Bến Nghé', '1', 'TPHCM', '02838232969', '', '0', '0', 0),
(85, 65, '33 Xuân Hồng', '12', '13', 'TPHCM', '(028)  6682 7717', '', '0', '0', 0),
(86, 66, '303 Nam Kỳ Khởi Nghĩa', '7', '3', 'TPHCM', ' 0346242342', '', '0', '0', 0),
(87, 67, '180D Hai Bà Trưng', 'Đa Kao', '1', 'TPHCM', ' 02862632525', '', '0', '0', 0),
(88, 68, '115 Hồ Tùng Mậu', 'Bến Nghé', '1', 'TPHCM', '02839150055', '', '0', '0', 0),
(89, 69, '120-122 Lê Lợi', 'Bến Nghé', '1', 'TPHCM', '', '', '0', '0', 0),
(90, 69, '35 Nguyễn Văn Tráng', 'Tân Định', '1', 'TPHCM', '', '', '0', '0', 0),
(91, 69, '41/1 Phạm Ngọc Thạch', '6', '3', 'TPHCM', '', '', '0', '0', 0),
(92, 69, '110 Xuân Thủy', 'Thảo Điền', '2', 'TPHCM', '', '', '0', '0', 0),
(93, 70, '38/16a Trần Khắc Chân', 'Tân Định', '1', 'TPHCM', '0932037803', '', '0', '0', 0),
(94, 71, '99 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '02838270123', '', '0', '0', 0),
(95, 72, '43R/10 Hồ Văn Huê', '9', '15', 'TPHCM', '0938137468', '', '0', '0', 0),
(96, 73, '32 Trần Ngọc Diện', 'Thảo Điền', '2', 'TPHCM', '0987924285', '', '0', '0', 0),
(97, 7, '292/39 bà hạt', '9', '9', 'TPHCM', '0931489972', '', '0', '0', 0),
(98, 74, '7 Hồ Xuân Hương', '6', '3', 'TPHCM', '0931109093', '', '0', '0', 0),
(99, 74, 'Estella Place 88 Song Hành ', 'An Phú', '2', 'TPHCM', '0968109093', '', '0', '0', 0),
(100, 75, '133 Tân Sơn', 'P15', '13', 'TPHCM', '0849191080', '', '0', '0', 0),
(101, 76, '18BIS/16 Nguyễn Thị Minh Khai', 'ĐaKao', '1', 'TPHCM', '0988735500', '', '0', '0', 0),
(102, 77, '115/174b Lê Văn Sỹ', '13', '15', 'TPHCM', '0796300009', '', '0', '0', 0),
(103, 78, '21 Hoa Mai', '2', '15', 'TPHCM', '0904602424', '', '0', '0', 0),
(104, 79, '262 Ung Văn Khiêm', '25', '16', 'TPHCM', '02862714757', '', '0', '0', 0),
(105, 80, '160/29 Bùi Đình Tuý', '12', '16', 'TPHCM', '0976488594', '', '0', '0', 0),
(106, 81, '144 Đường số 1A', 'Bình Hưng Hòa B', '17', 'TPHCM', '0986790070', '', '0', '0', 0),
(107, 82, '165/52 Nguyễn Thái Bình', 'Nguyễn Thái Bình', '1', 'TPHCM', '0774929231', '', '0', '0', 0),
(108, 83, '40 Nguyễn Cừ', 'Thảo Điền', '2', 'TPHCM', '0888991331', '', '0', '0', 0),
(109, 84, '165/52 Nguyễn Thái Bình', 'Nguyễn Thái Bình', '1', 'TPHCM', '0774929231', '', '0', '0', 0),
(110, 84, '33 Xuân Hồng', '12', '13', 'TPHCM', '0908861136', '', '0', '0', 0),
(111, 85, '55 Nguyễn Khắc Nhu', 'Phường Cô Giang', '1', 'TPHCM', '0775109469', '', '0', '0', 0),
(112, 85, '165/52 Nguyễn Thái Bình', '096 545 7888', '1', 'TPHCM', '0965457888', '', '0', '0', 0),
(113, 85, '40 Nguyễn Cừ', 'Phường Thảo Điền', '2', 'TPHCM', '0888991331', '', '0', '0', 0),
(114, 85, '280/10 Cách Mạng Tháng Tám', '10', '3', 'TPHCM', '0937180689', '', '0', '0', 0),
(115, 85, '144 Đường số 1A, KDC Vĩnh Lộc', 'Bình Hưng Hòa B', '17', 'TPHCM', '0986790070', '', '0', '0', 0),
(116, 85, '280/10 Cách Mạng Tháng Tám', '10', '3', 'TPHCM', '0937180689', '', '0', '0', 0),
(117, 86, '33 Mạc Thị Bưởi', 'Bến Nghé', '1', 'TPHCM', '02873080099', '', '0', '0', 0),
(118, 86, '99 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '02839150098', '', '0', '0', 0),
(119, 87, '99 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '02839150098', '', '0', '0', 0),
(120, 88, '82 Bà Huyện Thanh Quan', '9', '3', 'TPHCM', '', '', '0', '0', 0),
(121, 88, '132 Tôn Thất Thuyết', '15', '4', 'TPHCM', '', '', '0', '0', 0),
(122, 88, '22 Nguyễn Văn Trỗi', '17', '15', 'TPHCM', '', '', '0', '0', 0),
(123, 88, '14 Phan Bội Châu', '2', '16', 'TPHCM', '', '', '0', '0', 0),
(124, 88, 'MM MEGA MARKET An Phú', '', '2', 'TPHCM', '', '', '0', '0', 0),
(125, 89, '28 Nguyễn Trãi', 'Bến Thành', '1', 'TPHCM', '0909991042', '', '0', '0', 0),
(126, 89, '107 Nguyễn Huệ', 'Bến Nghé', '1', 'TPHCM', '0909991042', '', '0', '0', 0),
(127, 90, '36/34 Nguyễn Gia Trí', '25', '16', 'TPHCM', '0934353940', '', '0', '0', 0),
(128, 91, '117 Nguyên Hồng', '11', '16', 'TPHCM', '0932193869', '', '0', '0', 0),
(129, 92, '493/25 Cách Mạng Tháng 8', '13', '9', 'TPHCM', '0936510530', '', '0', '0', 0),
(130, 92, '386/54 Lê Văn Sỹ', '14', '3', 'TPHCM', '0936510530', '', '0', '0', 0),
(131, 92, '277/62 Xô Viết Nghệ Tĩnh', '25', '16', 'TPHCM', '0936510530', '', '0', '0', 0),
(132, 92, '379/50 Thống Nhất', '11', '12', 'TPHCM', '0936510530', '', '0', '0', 0),
(133, 93, 'Số 47, đường 66', 'Thảo Điền', '2', 'TPHCM', '0708288016', '', '0', '0', 0),
(134, 94, '2 đường số 39', 'Bình An', '2', 'TPHCM', '0384011435', '', '0', '0', 0),
(135, 95, '5H Tôn Đức Thắng', 'Bến Nghé', '1', 'TPHCM', '028 6287 4715', '', '0', '0', 0),
(136, 95, '103 Bis Võ Thị Sáu', '6', '3', 'TPHCM', '28 6287 4715', '', '0', '0', 0),
(137, 96, '103 Đồng Khởi', 'Bến Nghé', '1', 'TPHCM', '028 6277 7103', '', '0', '0', 0),
(138, 97, '36/32/2 Nguyễn Gia Trí', '25', '16', 'TPHCM', '0343090763', '', '0', '0', 0),
(139, 98, '165/52 Nguyễn Thái Bình', 'Nguyễn Thái Bình', '1', 'TPHCM', 'tel:0765521430', '', '0', '0', 0);

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
  `remarks` varchar(255) NOT NULL,
  `added_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `s_value`, `s_key`, `remarks`, `added_date`, `updated_date`, `updated_by`) VALUES
(1, '<p>Zero Waste Wonderland l&agrave; một <span>cổng th&ocirc;ng tin</span> gi&uacute;p bạn dễ d&agrave;ng t&igrave;m kiếm c&aacute;c <span>địa điểm, sản phẩm, sự kiện</span> li&ecirc;n quan đến zero-waste. Mong rằng với Zero Waste Wonderland, bạn sẽ thấy <span>zero-waste kh&ocirc;ng hề bất tiện m&agrave; c&ograve;n rất th&uacute; vị.</span></p>\r\n\r\n<p>Thay đổi th&oacute;i quen h&ocirc;m nay để thay đổi tương lai ng&agrave;y sau. H&atilde;y chung tay với Zero Waste Wonderland trả lại m&agrave;u xanh cho Tr&aacute;i Đất của ch&uacute;ng ta nh&eacute;!</p>\r\n', 'zw_intro', 'Home Intro', '2020-08-20 10:45:29', '2020-08-20 15:26:12', 1),
(2, '<p>Xin ch&agrave;o ~~fullname~~</p>\r\n\r\n<p>Bạn vừa y&ecirc;u cầu lấy mật khẩu, vui l&ograve;ng click v&agrave;o link b&ecirc;n dưới</p>\r\n\r\n<p><a href=\"~~link_active~~\">~~link_active~~</a></p>\r\n', 'email_forgotpassword', 'Không sửa từ khóa có dấu ~~', '2021-06-09 22:32:52', '2021-06-09 22:32:52', 1);

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
  `value` text DEFAULT NULL
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
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `roles` varchar(255) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `cellphone` varchar(32) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `remarks` text DEFAULT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(50) DEFAULT NULL,
  `password_reset_token` varchar(728) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`, `added_date`, `updated_date`, `updated_by`, `last_login_date`, `roles`, `fullname`, `cellphone`, `email`, `remarks`, `is_admin`, `ip_address`, `password_reset_token`, `avatar`, `gender`) VALUES
(1, 'admin', 'adcd7048512e64b48da55b027577886ee5a36350', 'A', '0000-00-00 00:00:00', '2015-10-16 21:58:53', 1, '2021-06-25 22:06:09', 'supper admin', 'Tap Nguyen', '0982007996', 'nghuytap@gmail.com', '', 1, '::1', '', 'dikkCM5hIpiQQA_AOD9YrlRZ2H1QExdp', 'male'),
(14, 'onlinesolutions.vnn', 'adcd7048512e64b48da55b027577886ee5a36350', 'A', '2021-06-09 22:27:43', '2021-06-09 22:27:43', 9999, '2021-07-10 08:07:48', 'user', 'Tap Nguyen', NULL, 'onlinesolutions.vnn@gmail.com', NULL, 0, '::1', '6s7ka23n4z66pyxixt8zcxelnbleqcvf', '31193133-f75286c120e9d4b78df88.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_store`
--

CREATE TABLE `user_store` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_store`
--

INSERT INTO `user_store` (`id`, `store_id`, `user_id`, `status`, `added_date`, `updated_date`) VALUES
(1, 1, 14, 1, '2021-06-17 20:55:35', '2021-06-17 20:55:35'),
(2, 2, 14, 1, '2021-06-17 21:23:29', '2021-06-17 21:23:29'),
(3, 4, 14, 1, '2021-06-17 21:23:29', '2021-06-17 21:23:29'),
(4, 3, 14, 1, '2021-06-17 21:23:29', '2021-06-17 21:23:29'),
(5, 6, 14, 1, '2021-06-17 21:23:29', '2021-06-17 21:23:29'),
(6, 5, 14, 1, '2021-06-17 21:23:29', '2021-06-17 21:23:29'),
(7, 9, 14, 1, '2021-07-06 20:36:09', '2021-07-06 20:36:09'),
(8, 54, 14, 1, '2021-07-09 19:51:50', '2021-07-09 19:51:50'),
(9, 58, 14, 1, '2021-07-09 20:00:30', '2021-07-09 20:00:30'),
(10, 7, 14, 1, '2021-07-10 09:01:48', '2021-07-10 09:01:48');

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
-- Chỉ mục cho bảng `user_store`
--
ALTER TABLE `user_store`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `trackings`
--
ALTER TABLE `trackings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `user_store`
--
ALTER TABLE `user_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
