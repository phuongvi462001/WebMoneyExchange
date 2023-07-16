-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27 2021 lúc 10:04 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_stt` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_stt`, `username`, `pass`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

CREATE TABLE `tbl_truongphong` (
  `truongphong_stt` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_truongphong`
--

INSERT INTO `tbl_truongphong` (`truongphong_stt`, `username`, `pass`) VALUES
(1, 'truongphong', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'truongphong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');


CREATE TABLE `tbl_Nhanvientk` (
  `nhanvientk_stt` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_truongphong`
--

INSERT INTO `tbl_Nhanvientk` (`nhanvientk_stt`, `username`, `pass`) VALUES
(1, 'nhanvien', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'nhanvien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `ten_dangky` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `sotien` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`ten_dangky`, `email`, `matkhau`, `gioitinh`, `diachi`, `dienthoai`, `sotien`) VALUES
('Kim Tae Huyn', 'baby@gmail.com', '123456', 'Nữ', 'Hồ Chí Minh', '0704522130', 50000),
('Shin Ryujin', 'mybaby@gmail.com', '123456', 'Nữ', 'Korea', '0704522131', 0),
('phuongvi', 'phuongvi46@gmail.com', '123456', 'Nữ', 'Hồ Chí Minh', '0704522132', 0),
('phuongvi123', 'phuongvi@gmail.com', '123456', 'Nữ', 'Hồ Chí Minh', '0704522133', 40000),
('Choi Min Su', 'minsu@gmail.com', '123456', 'Nữ', 'Korea', '0704522134', 0),
('Song Minho', 'songminho@gmail.com', '123456', 'Nam', 'Korea', '0704522135', 0),
('minh phi', 'minhphi@gmail.com', '123456', 'Nam', 'Hồ Chí Minh', '0704522136', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `ten_danhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`ten_danhmuc`, `thutu`) VALUES
('USD ', 1),
('EUR - EURO', 2),
('CAD - CANADA', 3),
('JPY - Yên Nhật', 4),
('CND - Nhân Dân Tệ', 5),
('UAD - Australia', 6),
('CHF - Thụy Sĩ', 7),
('GBP - Bảng Anh', 8),
('THB - Thái Lan', 9),
('SGD - Singapore', 10),
('KRW - Won Korean', 11),
('RUB - Nga', 12),
('BYR - Belarus', 13),
('BOB - Bolivia', 14),
('BAM - Bosnia', 15),
('BWP - Botswana', 16),
('BRL - Brazil', 17),
('BND - Brunei', 18),
('MMK - Myanmar', 19),
('KHR - Campuchia', 20),
('XAF - Cameroon', 21),
('CVE - Cape Verde', 22),
('KYD - Cayman', 23),
('XAF - Cộng hòa Trung Phi', 24),
('CLP - Chile', 25),
('COP - Colombia', 26),
('KMF - Comoros', 27),
('CDF - Congo', 28),
('NZD - Quần đảo Cook', 29),
('CRC - Costa Rica', 30),
('HRK - Croatia', 31),
('CUP - Cuba', 32),
('ANG - Curacao', 33),
('CZK - Cộng hòa Séc', 34),
('DKK - Đan Mạch', 35),
('XCD - Dominica', 36),
('EGP - Ai Cập', 37),
('ERN - Eritrea', 38),
('SZL - Eswatini', 39),
('ETB - Ethiopia', 40),
('FKP - Quần đảo Falkland', 41),
('FJD - Fiji', 42),
('XAF - Gabon', 43),
('GMD - Gambia', 44),
('GEL - Gruzia', 45),
('GHS - Ghana', 46),
('GIP - Gibraltar', 47),
('XCD - Grenada', 48),
('GTQ - Guatemala', 49),
('GNF - Guinea', 50),
('GYD - Guyana', 51),
('HTG - Haiti', 52),
('HKD - Hồng Kông', 53),
('HUF - Hungary', 54),
('ISK - Iceland', 55),
('INR - Ấn độ', 56),
('IDR - Indonesia', 57),
('IRR - Iran', 58),
('IQD - Iraq', 59),
('IMP - Đảo Man', 60),
('ILS - Israel', 61),
('JMD - Jamaica', 62),
('JEP - Jersay', 63),
('JOD - Jordan', 64),
('KZT - Kazakhstan', 65),
('KES - Kenya', 66),
('KPW - Triều Tiên', 67),
('KWD - Kuwait', 68),
('KGS - Kyrgyzstan', 69),
('LAK - Lào', 70),
('LBP - Lebanon', 71),
('LSL - Lesotho', 72),
('LRD - Liberia', 73),
('LYD - Libya', 74),
('MOP - Macau', 75),
('MGA - Madagascar', 76),
('MWK - Malawi', 77),
('MYR- Malaysia', 78),
('XOF - Mali', 79),
('MAD - Maroc', 80),
('ZAR - Namibia', 81),
('NPR - Nepal', 82),
('NZD - New Zealand', 83),
('OMR - Oman', 84),
('PAB - Panama', 85);




-- --------------------------------------------------------

CREATE TABLE `tbl_tygia` (
  `thutu` int(11) NOT NULL,
  `ten_tygia` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_nhaphattrien`
--

INSERT INTO `tbl_tygia` (`thutu`, `ten_tygia`) VALUES
(1, '16,803'),
(2, '18,244'),
(3, '25,309'),
(4, ' 20,890'),
(5, '19,054'),
(6, '17,578'),
(7, '25,981'),
(8, '28,543'),
(9, '20,789'),
(10, '17,897'),
(11, '18,650'),
(12, '19,650'),
(13, '20,650'),
(14, '21,650'),
(15, '22,650'),
(16, '23,650'),
(17, '24,650'),
(18, '25,650'),
(19, '26,650'),
(20, '18,110'),
(21, '18,120'),
(22, '18,130'),
(23, '18,140'),
(24, '18,150'),
(25, '18,160'),
(26, '20,650'),
(27, '21,650'),
(28, '22,650'),
(29, '18,650'),
(30, '23,135'),
(31, '24,178'),
(32, '25,647'),
(33, '26,690'),
(34, '27,655'),
(35, '28,340'),
(36, '29,210'),
(37, '30,620'),
(38, '31,230'),
(39, '32,240'),
(40, '33,250'),
(41, '34,260'),
(42, '35,270'),
(43, '36,280');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phongban`
--

CREATE TABLE `tbl_phongban` (
  `thutu` int(11) NOT NULL,
  `ten_phongban` varchar(250) NOT NULL,
  `ma_phongban` varchar(100) NOT NULL,
  `vitri` varchar(50) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `thongtin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_phongban`
--

INSERT INTO `tbl_phongban` (`thutu`, `ten_phongban`, `ma_phongban`, `vitri`, `hinhanh`, `thongtin`) VALUES
(1, 'Kế toán', '001', 'Lầu 1', 'ketoan.jpg','Thu thập thông tin về các hoạt động kinh tế, tài chính phát sinh trong đơn vị và đưa vào chứng từ kế toán như phiếu thu, phiếu chi tiền, phiếu nhập, xuất kho, hóa đơn bán hàng.Tiếp nhận kiểm soát chứng từ kế toán.Ghi sổ kế toán.'),
(2, 'Tài chính', '002', 'Lầu 1', 'taichinh.jpg','Ghi nhận các giao dịch tài chính.Quản lý dòng tiền của doanh nghiệp.Lập ngân sách và đưa ra dự báo tài chính cho doanh nghiệp.Tư vấn và tìm kiếm nguồn tài chính dài hạn cho doanh nghiệp.Quản lý nghĩa vụ thuế.Quản lý hoạt động đầu tư của doanh nghiệp.Phân tích và lập báo cáo tài chính.'),
(3, 'Công nghệ thông tin 1', '003', 'Lầu 2', 'cntt.jpg','Lập trình viên chế tạo phần mềm. Chuyên viên kiểm thử, đảm bảo chất lượng phần mềm. - Chuyên viên pphân tích, thiết kế, cài đặt, quản trị, bảo trì và đảm bảo an ninh cho các hệ thống mạng máy tính'),
(4, 'Công nghệ thông tin 2', '004', 'Lầu 2', 'cntt.jpg','Lập trình viên chế tạo phần mềm. Chuyên viên kiểm thử, đảm bảo chất lượng phần mềm. - Chuyên viên pphân tích, thiết kế, cài đặt, quản trị, bảo trì và đảm bảo an ninh cho các hệ thống mạng máy tính'),
(5, 'Công nghệ thông tin 3', '005', 'Lầu 2', 'cntt.jpg','Lập trình viên chế tạo phần mềm. Chuyên viên kiểm thử, đảm bảo chất lượng phần mềm. - Chuyên viên pphân tích, thiết kế, cài đặt, quản trị, bảo trì và đảm bảo an ninh cho các hệ thống mạng máy tính'),
(6, 'Thu ngân', '006', 'Lầu 2', 'thungan.jpg','Nắm rõ quy trình thanh toán và các thao tác làm việc với công cụ tính tiền.Thực hiện công tác thu ngân: check bill, in bill, thanh toán tiền cho khách theo đúng quy trình thanh toán.Khi nhận tiền từ khách, Nhân viên thu ngân sẽ nói to, rõ ràng số tiền mình nhận, nhập vào máy và nói lại cho khách biết số tiền còn thừa. Thối tiền thừa cho khách bằng cách sắp xếp thứ tự từ tiền có mệnh giá lớn đến tiền có mệnh giá nhỏ và xòe theo hình nan quạt để khách hàng dễ kiểm tra. '),
(7, 'Lập kế hoạch', '007', 'Lầu 2', 'lapkehoach.jpg','Xác định mục tiêu. Xác định nội dung của công việc.Xác định công việc đó ai là người thực hiện, ở đâu và khi nào?.Các loại công việc khác nha.Ưu tiên sắp xếp thứ tự công việc.Tập trung thực hiện kế hoạch .Linh hoạt trong việc thực hiện kế hoạch .Kiểm tra việc thực hiện các kế hoạch'),
(8, 'Thiết kế web', '008', 'Lầu 3', 'web.jpg',' Tạo thiết kế giao diện web theo yêu cầu của khách hàng, trình bày và nhận phản hồi về các trang web dự thảo - Cập nhật với khách hàng về các yêu cầu hay tiến độ dự án - Cập nhật những bước phát triển công nghệ và phần mềm gần đây - Phát triển kỹ năng và chuyên môn về các ngôn ngữ lập trình hay phần mềm thích hợp như HTML, CSS và Javascript - Tạo ra các sản phẩm thân thiện với người dùng, hiệu quả và đẹp mắt - Tham gia làm việc với nhiều đội nhóm'),
(9, 'Thiết kế phòng ban', '009', 'Lầu 3', 'thietkephong.jpg','Đưa ra kiến nghị, đề xuất để thể hiện các ý tưởng thiết kế thành các hình ảnh trực quan.Điều hành, tổ chức việc thực hiện công tác thiết kế.Truyền đạt và cung cấp thông tin dự án thiết kế rõ ràng, đầy đủ Nghiên cứu, cập nhật xu hướng thị trường và các phần mềm, chương trình thiết kế mới.'),
(10, 'Chăm sóc khách hàng', '010', 'Lầu 4', 'chamsoc.jpg','Trực tiếp liên hệ với khách hàng, giải đáp những thắc mắc của khách hàng và xử lý các khiếu nại liên quan đến sản phẩm hoặc dịch vụ của công ty. Ngoài ra, chịu trách nhiệm tìm hiểu, điều tra, phân tích nhu cầu khách hàng, độ thỏa mãn với sản phẩm dịch vụ và đưa ra đề xuất cải thiện, nâng cao chất lượng công việc.'),
(11, 'Hỗ trợ kỹ thuật', '011', 'Lầu 5', 'hotro.jpg','Tiếp nhận yêu cầu tư vấn triển khai phần mềm cho khách hàng - Tư vấn, hỗ trợ cho khách hàng về kỹ thuật và chức năng của sản phẩm - Kiểm tra xác nhận lỗi, nhập thông thông tin trên hệ thông và file theo dõi nội bộ - Tiếp nhận và xử lý các trường hợp bảo hành liên quan đến phần mềm sản phẩm… - Giải quyết các khiếu nại, thắc mắc của khách hàng về dịch vụ kỹ thuật - Hỗ trợ bộ phận bán hàng trong công tác marketing, soạn thảo tài liệu kỹ thuật, brochure, - Tổng kết và báo cáo các số liệu liên quan đến công việc'),
(12, 'Thư ký', '012', 'Lầu 4', 'thuky.jpg','Hỗ trợ việc quản lý, điều hành trong văn phòng, thực hiện các công việc liên quan đến giấy tờ, các công việc tạp vụ hành chính, sắp xếp hồ sơ, soạn thảo văn bản, tiếp khách, lên lịch trình, tổ chức cuộc họp, hội nghị, lên kế hoạch cho giám đốc.'),
(13, 'Kiểm kê', '013', 'Lầu 3', 'kiemke.jpg','Kiểm tra tại chỗ các loại tài sản hiện có nhằm xác định chính thức số thực có tài sản trong thực tế, phát hiện các khoản chênh lệch giữa số thực tế so với số liệu trên sổ sách kế toán. '),
(14, 'Chạy quảng cáo', '014', 'Lầu 1', 'quangcao.png','Phụ trách các vấn đề liên quan đến truyền thông, quảng bá thương hiệu, truyền thông nội bộ.Biên tập, sáng tạo và đa dạng hóa nội dung quảng cáo, tiếp thị các dịch vụ của công ty trên Fanpage, Website, một số kênh Marketing, truyền thông khác.'),
(15, 'Trợ Lý giám đốc', '015', 'Lầu 5', 'troly.jpg','Chuẩn bị giấy tờ, tài liệu cần thiết cho các sự kiện thường xuyên của công ty.Lên lịch họp và các cuộc hẹn.Sắp xếp và lưu giữ hồ sơ nhân viên.Thực hiện các công tác hành chính để hỗ trợ nhân viên hàng ngày.Hợp tác với nhân viên ở nhiều phòng ban khác nhau.'),
(16, 'Giám sát', '016', 'Lầu 4', 'giamsat.png','Hỗ trợ công việc quản lý, giám sát. Nhiệm vụ chính của supervisor là theo dõi và điều phối những hoạt động của nhân viên cấp dưới trong phạm vi quản lý của mình.');

CREATE TABLE `tbl_nhanvien` (
  `thutu` int(11) NOT NULL,
  `ten_nhanvien` varchar(250) NOT NULL,
  `ma_nhanvien` varchar(100) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `phongban` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Đang đổ dữ liệu cho bảng `tbl_nhanvien`

INSERT INTO `tbl_nhanvien` (`thutu`, `ten_nhanvien`, `ma_nhanvien`, `hinhanh`, `phongban`) VALUES
(1, 'Nguyen Van Anh', '001',  'staff1.jpg','Kế toán'),
(2, 'Nguyen Lê Công Danh', '002',  'staff1.jpg','Chăm sóc khách hàng'),
(3, 'Lê Ngọc Phương Vi', '003',  'staff2.jpg','Tài chính'),
(4, 'Lê Ngọc Phương Uyên', '004',  'staff2.jpg','Tài chính'),
(5, 'Phạm Văn Chính', '005',  'staff1.jpg','Công nghệ thông tin'),
(6, 'Vũ Thành Long', '006',  'staff1.jpg','Hỗ trợ kỹ thuật'),
(7, 'Đinh Thị Mỹ Duyên', '007',  'staff2.jpg','Công nghệ thông tin'),
(8, 'Nguyễn Công An', '008',  'staff1.jpg','Thu ngân'),
(9, 'Nguyễn Hữu Cảnh', '009',  'staff1.jpg','Thiết kế'),
(10, 'Dương Thương Phương', '010',  'staff2.jpg','Kiểm kê'),
(11, 'Đồng Nguyễn Minh Khánh', '011',  'staff1.jpg','Chạy quảng cáo'),
(12, 'Phạm Quốc Tiến', '012',  'staff1.jpg','Trợ lý giám đốc'),
(13, 'Vương Kim Nguyên', '013',  'staff2.jpg','Trợ lý giám đốc'),
(14, 'Nguyễn Thị Nguyệt', '014',  'staff2.jpg','Chạy quảng cáo'),
(15, 'Trần Minh Phi', '015',  'staff1.jpg','Công nghệ thông tin'),
(16, 'Hà Văn Chương', '016',  'staff1.jpg','Công nghệ thông tin'),
(17, 'Lê Thái Duy', '017',  'staff1.jpg','Chăm sóc khách hàng'),
(18, 'Hồ Văn Thái', '018',  'staff1.jpg','Chăm sóc khách hàng'),
(19, 'Nguyễn Quốc Đại', '019',  'staff1.jpg','Thiết kế'),
(20, 'Phan Thanh Minh', '020',  'staff1.jpg','Giams sát'),
(21, 'Dương Văn Nguyện', '021',  'staff1.jpg','Giams sát'),
(22, 'Nguyễn Lê Trà', '022',  'staff2.jpg','Thiết kế'),
(23, 'Nguyễn Lê Chiêu Thanh', '023',  'staff2.jpg','Kế toán'),
(24, 'Nguyễn Thủy Tiên', '024',  'staff2.jpg','Kế toán'),
(25, 'Nguyễn Cao Minh Quân', '025',  'staff1.jpg','Tài chính'),
(26, 'Lê Thị Tuyết Nhung', '026',  'staff2.jpg','Tài chính'),
(27, 'Nguyễn Thị Diễm Quỳnh', '027',  'staff2.jpg','Hỗ trợ kỹ thuật'),
(28, 'Dương Minh Tâm', '028',  'staff2.jpg','Hỗ trợ kỹ thuật'),
(29, 'Lê Thị Thắm', '029',  'staff2.jpg','Thiết kế web'),
(30, 'Trần Nguyễn Thương Trường', '030',  'staff1.jpg','Thiết kế web');

--
CREATE TABLE `chitietnhanvien` (
  `id` int(11) NOT NULL,
  `ten` varchar(200) NOT NULL,
  `namsinh` date NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `cmnd` varchar(10) NOT NULL,
  `chucvu` varchar(20) NOT NULL,
  `luong` int(11) NOT NULL,
  `hinhanh` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `chitietnhanvien` (`id`, `ten`, `namsinh`, `diachi`, `cmnd`, `chucvu`, `luong`, `hinhanh`) VALUES
(1, 'Nguyen Van Anh', '1/1/2001',  'Hồ Chí Minh', '0704522130','Kế toán',10000000,'staff1.jpg'),
(2, 'Nguyen Lê Công Danh', '2/1/2001',  'Hồ Chí Minh', '0704522130','Chăm sóc khách hàng',10000000,'staff1.jpg'),
(3, 'Lê Ngọc Phương Vi', '5/1/2001',  'Hồ Chí Minh', '0704522130','Tài chính',10000000,'staff1.jpg'),
(4, 'Lê Ngọc Phương Uyên','1/9/2001',  'Hồ Chí Minh', '0704522130','Tài chính',10000000,'staff2.jpg'),
(5, 'Phạm Văn Chính', '1/9/2001',  'Hồ Chí Minh', '0704522130','Công nghệ thông tin',10000000,'staff1.jpg'),
(6, 'Vũ Thành Long', '1/2/2001',  'Hồ Chí Minh', '0704522130','Hỗ trợ kỹ thuật',10000000,'staff2.jpg'),
(7, 'Đinh Thị Mỹ Duyên', '10/1/2001',  'Hồ Chí Minh', '0704522130','Công nghệ thông tin',10000000,'staff1.jpg'),
(8, 'Nguyễn Công An', '5/2/2001',  'Hồ Chí Minh', '0704522130','Thu ngân',10000000,'staff2.jpg'),
(9, 'Nguyễn Hữu Cảnh', '3/9/2001',  'Hồ Chí Minh', '0704522130','Thiết kế',10000000,'staff1.jpg'),
(10, 'Dương Thương Phương', '5/8/2001',  'Hồ Chí Minh', '0704522130','Kiểm kê',10000000,'staff2.jpg'),
(11, 'Đồng Nguyễn Minh Khánh', '2/5/2001',  'Hồ Chí Minh', '0704522130','Chạy quảng cáo',10000000,'staff1.jpg'),
(12, 'Phạm Quốc Tiến', '9/3/2001',  'Hồ Chí Minh', '0704522130','Trợ lý giám đốc',10000000,'staff1.jpg'),
(13, 'Vương Kim Nguyên','2/4/2001',  'Hồ Chí Minh', '0704522130','Trợ lý giám đốc',10000000,'staff2.jpg'),
(14, 'Nguyễn Thị Nguyệt', '3/4/2001',  'Hồ Chí Minh', '0704522130','Chạy quảng cáo',10000000,'staff1.jpg'),
(15, 'Trần Minh Phi', '2/3/2001',  'Hồ Chí Minh', '0704522130','Công nghệ thông tin',10000000,'staff2.jpg'),
(16, 'Hà Văn Chương', '5/8/2001',  'Hồ Chí Minh', '0704522130','Công nghệ thông tin',10000000,'staff1.jpg'),
(17, 'Lê Thái Duy', '10/9/2001',  'Hồ Chí Minh', '0704522130','Chăm sóc khách hàng',10000000,'staff1.jpg'),
(18, 'Hồ Văn Thái', '9/2/2001',  'Hồ Chí Minh', '0704522130','Chăm sóc khách hàng',10000000,'staff1.jpg'),
(19, 'Nguyễn Quốc Đại', '3/4/2001',  'Hồ Chí Minh', '0704522130','Thiết kế',10000000,'staff2.jpg'),
(20, 'Phan Thanh Minh', '9/4/2001',  'Hồ Chí Minh', '0704522130','Giams sát',10000000,'staff1.jpg'),
(21, 'Dương Văn Nguyện', '9/8/2001',  'Hồ Chí Minh', '0704522130','Giams sát',10000000,'staff2.jpg'),
(22, 'Nguyễn Lê Trà', '9/10/2001',  'Hồ Chí Minh', '0704522130','Thiết kế',10000000,'staff1.jpg'),
(23, 'Nguyễn Lê Chiêu Thanh', '2/11/2001',  'Hồ Chí Minh', '0704522130','Kế toán',10000000,'staff2.jpg'),
(24, 'Nguyễn Thủy Tiên', '1/12/2001',  'Hồ Chí Minh', '0704522130','Kế toán',10000000,'staff1.jpg'),
(25, 'Nguyễn Cao Minh Quân', '12/1/2001',  'Hồ Chí Minh', '0704522130','Tài chính',10000000,'staff2.jpg'),
(26, 'Lê Thị Tuyết Nhung', '12/9/2001',  'Hồ Chí Minh', '0704522130','Tài chính',10000000,'staff1.jpg'),
(27, 'Nguyễn Thị Diễm Quỳnh', '11/11/2001',  'Hồ Chí Minh', '0704522130','Hỗ trợ kỹ thuật',10000000,'staff2.jpg'),
(28, 'Dương Minh Tâm','1/11/2001',  'Hồ Chí Minh', '0704522130','Hỗ trợ kỹ thuật',10000000,'staff1.jpg'),
(29, 'Lê Thị Thắm', '11/2/2001',  'Hồ Chí Minh', '0704522130','Thiết kế web',10000000,'staff2.jpg'),
(30, 'Trần Nguyễn Thương Trường', '12/6/2001',  'Hồ Chí Minh', '0704522130','Thiết kế web',10000000,'staff1.jpg');


CREATE TABLE `tbl_task` (
  `thutu` int(11) NOT NULL,
  `ten_task` varchar(250) NOT NULL,
  `ma_task` varchar(100) NOT NULL,
  `type_task` varchar(50) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `thongtin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_task`
--

INSERT INTO `tbl_task` (`thutu`, `ten_task`, `ma_task`, `type_task`, `hinhanh`, `thongtin`) VALUES
(1, 'Designer phòng ban', '001', 'fulltime', 'thietkephong.jpg','Công việc yêu cầu có khả năng về design, công nghệ, phải lập được kế hoạch và bản vẽ chi tiết cho phòng ban của công ty.Bố cục của thiết kế phải rõ ràng, thực tế, giá chi phí giảm hết mức có thể.'),
(2, 'Designer web', '002', 'fulltime', 'web.jpg','Công việc yêu cầu có khả năng thiết kế, kỹ thuật máy tính, yêu cầu về chuyên môn thiết kế web. Trang web phải phù hợp với phòng ban, công ty. Phải phù hợp với thực tế và có đầy đủ các thông tin cơ bản về thông tin và việc làm của công ty.'),
(3, 'Quản lý phòng ban', '003', 'part-time', 'quanly.jpg','Công việc yêu cầu về khả năng về công nghệ, có tư duy tốt về việc quản lý. Nếu apply phải nộp một bản kế hoạch về việc quản lý cho giám đốc.'),
(4, 'Tư vấn', '004', 'part-time', 'tuvan1.jpg','Công việc yêu cầu về khả năng luu loát, ứng xử tốt, đặc biệt cần có thái độ tốt để tư vấn cho khách hàng.'),
(5, 'Thu ngân', '005', 'fulltime', 'thungan.jpg','Công việc yêu cầu về chuyên nghành tài chính-ngân hàng. Nếu apply phải gửi xác minh bằng cấp về phòng ban quản lý'),
(6, 'Tài chính', '006', 'part-time', 'taichinh.jpg','Công việc yêu cầu về chuyên nghành tài chính-ngân hàng. Nếu apply phải gửi xác minh bằng cấp về phòng ban quản lý'),
(7, 'Lập kế hoạch', '007', 'fulltime', 'lapkehoach.jpg','Công việc yêu cầu về khả năng tư duy tốt,có chuyên về design'),
(8, 'Hỗ trợ kỹ thuật', '008', 'part-time', 'hotro.jpg','Công việc yêu cầu khả năng về công nghệ thông tin và kỹ thuật'),
(9, 'Kiểm toán', '009', 'fulltime', 'kiemtoan.jpg','Công việc yêu cầu khả năng về tài chính. Phải có minh chứng bằng cấp khi apply công việc'),
(10, 'Kiểm kê', '010', 'fulltime', 'kiemke.jpg','Công việc yêu cầu khả năng về tài chính. Phải có minh chứng bằng cấp khi apply công việc'),
(11, 'Kế toán', '011', 'part-time', 'kiemtoan.jpg','Công việc yêu cầu khả năng về tài chính. Phải có minh chứng bằng cấp khi apply công việc'),
(12, 'Hỗ trợ khách hàng', '012', 'fulltime', 'hotrokhach.jpg','Công việc yêu cầu linh hoạt,thái độ tốt,chăm chỉ trong công việc');


CREATE TABLE `tbl_donxinnghi` (
  `thutu` int(11) NOT NULL,
  `ten_don` varchar(250) NOT NULL,
  `ma_don` varchar(100) NOT NULL,
  `nguoigui` varchar(50) NOT NULL,
  `lidovasongay` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;


-- Đang đổ dữ liệu cho bảng `tbl_task`

INSERT INTO `tbl_donxinnghi` (`thutu`, `ten_don`, `ma_don`, `nguoigui`, `lidovasongay`) VALUES
(1, 'Đơn xin nghỉ phép', '001', 'Lê Ngọc Phương Vi','Gia đình có việc riêng'),
(2, 'Đơn xin nghỉ phép', '002', ' Trần Minh Phi','Gia đình có việc riêng'),
(3, 'Đơn xin nghỉ phép', '003', 'Dương Thương Phương','Gia đình có việc riêng'),
(4, 'Đơn xin nghỉ phép', '004', 'Vũ Thành Long','Gia đình có việc riêng'),
(5, 'Đơn xin nghỉ phép', '005', 'Phạm Quốc Tiến','Gia đình có việc riêng'),
(6, 'Đơn xin nghỉ phép', '006', 'Nguyễn Công An','Gia đình có việc riêng'),
(7, 'Đơn xin nghỉ phép', '007', 'Đinh Thị Mỹ Duyên','Gia đình có việc riêng'),
(8, 'Đơn xin nghỉ phép', '008', 'Dương Văn Nguyện','Gia đình có việc riêng'),
(9, 'Đơn xin nghỉ phép', '009', 'Dương Minh Tâm','Gia đình có việc riêng'),
(10, 'Đơn xin nghỉ phép', '010', 'Lê Ngọc Phương Uyên','Gia đình có việc riêng'),
(11, 'Đơn xin nghỉ phép', '011', 'Lê Thị Thắm','Gia đình có việc riêng'),
(12, 'Đơn xin nghỉ phép', '012', 'Nguyễn Thị Diễm Quỳnh','Gia đình có việc riêng'),
(13, 'Đơn xin nghỉ phép', '013', 'Lê Thị Tuyết Nhung','Gia đình có việc riêng'),
(14, 'Đơn xin nghỉ phép', '014', 'Nguyễn Cao Minh Quân','Gia đình có việc riêng'),
(15, 'Đơn xin nghỉ phép', '015', 'Nguyễn Thủy Tiên','Gia đình có việc riêng');


CREATE TABLE `chitietphongban` (
  `thutu` int(11) NOT NULL,
  `ten_phongban` varchar(250) NOT NULL,
  `ma_phongban` varchar(100) NOT NULL,
  `vitri` varchar(50) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `thongtin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO `chitietphongban` (`thutu`, `ten_phongban`, `ma_phongban`, `vitri`, `hinhanh`, `thongtin`) VALUES
(1, 'Kế toán', '001', 'Lau 1', 'ketoan.jpg','Thu thập thông tin về các hoạt động kinh tế, tài chính phát sinh trong đơn vị và đưa vào chứng từ kế toán như phiếu thu, phiếu chi tiền, phiếu nhập, xuất kho, hóa đơn bán hàng.Tiếp nhận kiểm soát chứng từ kế toán.Ghi sổ kế toán.'),
(2, 'Tài chính', '002', 'Lau 1', 'taichinh.jpg','Ghi nhận các giao dịch tài chính.Quản lý dòng tiền của doanh nghiệp.Lập ngân sách và đưa ra dự báo tài chính cho doanh nghiệp.Tư vấn và tìm kiếm nguồn tài chính dài hạn cho doanh nghiệp.Quản lý nghĩa vụ thuế.Quản lý hoạt động đầu tư của doanh nghiệp.Phân tích và lập báo cáo tài chính.'),
(3, 'Công nghệ thông tin 1', '003', 'Lau 2', 'cntt.jpg','Lập trình viên chế tạo phần mềm. Chuyên viên kiểm thử, đảm bảo chất lượng phần mềm. - Chuyên viên pphân tích, thiết kế, cài đặt, quản trị, bảo trì và đảm bảo an ninh cho các hệ thống mạng máy tính'),
(4, 'Công nghệ thông tin 2', '004', 'Lau 2', 'cntt.jpg','Lập trình viên chế tạo phần mềm. Chuyên viên kiểm thử, đảm bảo chất lượng phần mềm. - Chuyên viên pphân tích, thiết kế, cài đặt, quản trị, bảo trì và đảm bảo an ninh cho các hệ thống mạng máy tính'),
(5, 'Công nghệ thông tin 3', '005', 'Lau 2', 'cntt.jpg','Lập trình viên chế tạo phần mềm. Chuyên viên kiểm thử, đảm bảo chất lượng phần mềm. - Chuyên viên pphân tích, thiết kế, cài đặt, quản trị, bảo trì và đảm bảo an ninh cho các hệ thống mạng máy tính'),
(6, 'Thu ngân', '006', 'Lau 2', 'thungan.jpg','Nắm rõ quy trình thanh toán và các thao tác làm việc với công cụ tính tiền.Thực hiện công tác thu ngân: check bill, in bill, thanh toán tiền cho khách theo đúng quy trình thanh toán.Khi nhận tiền từ khách, Nhân viên thu ngân sẽ nói to, rõ ràng số tiền mình nhận, nhập vào máy và nói lại cho khách biết số tiền còn thừa. Thối tiền thừa cho khách bằng cách sắp xếp thứ tự từ tiền có mệnh giá lớn đến tiền có mệnh giá nhỏ và xòe theo hình nan quạt để khách hàng dễ kiểm tra. '),
(7, 'Lập kế hoạch', '007', 'Lau 2', 'lapkehoach.jpg','Xác định mục tiêu. Xác định nội dung của công việc.Xác định công việc đó ai là người thực hiện, ở đâu và khi nào?.Các loại công việc khác nha.Ưu tiên sắp xếp thứ tự công việc.Tập trung thực hiện kế hoạch .Linh hoạt trong việc thực hiện kế hoạch .Kiểm tra việc thực hiện các kế hoạch'),
(8, 'Thiết kế web', '008', 'Lau 3', 'web.jpg',' Tạo thiết kế giao diện web theo yêu cầu của khách hàng, trình bày và nhận phản hồi về các trang web dự thảo - Cập nhật với khách hàng về các yêu cầu hay tiến độ dự án - Cập nhật những bước phát triển công nghệ và phần mềm gần đây - Phát triển kỹ năng và chuyên môn về các ngôn ngữ lập trình hay phần mềm thích hợp như HTML, CSS và Javascript - Tạo ra các sản phẩm thân thiện với người dùng, hiệu quả và đẹp mắt - Tham gia làm việc với nhiều đội nhóm'),
(9, 'Thiết kế phòng ban', '009', 'Lau 3', 'thietkephong.jpg','Đưa ra kiến nghị, đề xuất để thể hiện các ý tưởng thiết kế thành các hình ảnh trực quan.Điều hành, tổ chức việc thực hiện công tác thiết kế.Truyền đạt và cung cấp thông tin dự án thiết kế rõ ràng, đầy đủ Nghiên cứu, cập nhật xu hướng thị trường và các phần mềm, chương trình thiết kế mới.'),
(10, 'Chăm sóc khách hàng', '010', 'Lau 4', 'chamsoc.jpg','Trực tiếp liên hệ với khách hàng, giải đáp những thắc mắc của khách hàng và xử lý các khiếu nại liên quan đến sản phẩm hoặc dịch vụ của công ty. Ngoài ra, chịu trách nhiệm tìm hiểu, điều tra, phân tích nhu cầu khách hàng, độ thỏa mãn với sản phẩm dịch vụ và đưa ra đề xuất cải thiện, nâng cao chất lượng công việc.'),
(11, 'Hỗ trợ kỹ thuật', '011', 'Lau 5', 'hotro.jpg','Tiếp nhận yêu cầu tư vấn triển khai phần mềm cho khách hàng - Tư vấn, hỗ trợ cho khách hàng về kỹ thuật và chức năng của sản phẩm - Kiểm tra xác nhận lỗi, nhập thông thông tin trên hệ thông và file theo dõi nội bộ - Tiếp nhận và xử lý các trường hợp bảo hành liên quan đến phần mềm sản phẩm… - Giải quyết các khiếu nại, thắc mắc của khách hàng về dịch vụ kỹ thuật - Hỗ trợ bộ phận bán hàng trong công tác marketing, soạn thảo tài liệu kỹ thuật, brochure, - Tổng kết và báo cáo các số liệu liên quan đến công việc'),
(12, 'Thư ký', '012', 'Lau 4', 'thuky.jpg','Hỗ trợ việc quản lý, điều hành trong văn phòng, thực hiện các công việc liên quan đến giấy tờ, các công việc tạp vụ hành chính, sắp xếp hồ sơ, soạn thảo văn bản, tiếp khách, lên lịch trình, tổ chức cuộc họp, hội nghị, lên kế hoạch cho giám đốc.'),
(13, 'Kiểm kê', '013', 'Lau 3', 'kiemke.jpg','Kiểm tra tại chỗ các loại tài sản hiện có nhằm xác định chính thức số thực có tài sản trong thực tế, phát hiện các khoản chênh lệch giữa số thực tế so với số liệu trên sổ sách kế toán. '),
(14, 'Chạy quảng cáo', '014', 'Lau 1', 'quangcao.png','Phụ trách các vấn đề liên quan đến truyền thông, quảng bá thương hiệu, truyền thông nội bộ.Biên tập, sáng tạo và đa dạng hóa nội dung quảng cáo, tiếp thị các dịch vụ của công ty trên Fanpage, Website, một số kênh Marketing, truyền thông khác.'),
(15, 'Trợ Lý giám đốc', '015', 'Lau 5', 'troly.jpg','Chuẩn bị giấy tờ, tài liệu cần thiết cho các sự kiện thường xuyên của công ty.Lên lịch họp và các cuộc hẹn.Sắp xếp và lưu giữ hồ sơ nhân viên.Thực hiện các công tác hành chính để hỗ trợ nhân viên hàng ngày.Hợp tác với nhân viên ở nhiều phòng ban khác nhau.'),
(16, 'Giám sát', '016', 'Lau 4', 'giamsat.png','Hỗ trợ công việc quản lý, giám sát. Nhiệm vụ chính của supervisor là theo dõi và điều phối những hoạt động của nhân viên cấp dưới trong phạm vi quản lý của mình.');




/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
