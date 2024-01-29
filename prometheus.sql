-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 04:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prometheus`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `au_name` text NOT NULL,
  `au_email` varchar(50) NOT NULL,
  `au_img` varchar(255) NOT NULL,
  `au_description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `au_name`, `au_email`, `au_img`, `au_description`, `creation_date`, `update_date`) VALUES
(1, 'Emily Brontë', 'contact@emilybronte.com', '', 'Emily Brontë là một tiểu thuyết gia và nhà thơ người Anh, người đã viết một cuốn tiểu thuyết duy nhất, Wuthering Heights (1847), một tác phẩm giàu trí tưởng tượng về niềm đam mê và sự căm ghét lấy bối cảnh ở vùng đồng hoang Yorkshire. Nó đã nhận được những đánh giá khủng khiếp khi xuất bản lần đầu nhưng được coi là một trong những cuốn tiểu thuyết hay nhất bằng tiếng Anh.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(2, 'Jane Austen', 'contact@janeausten.co.uk', '', 'Jane Austen (16 tháng 12 năm 1775 – 18 tháng 7 năm 1817) là một tiểu thuyết gia người Anh chủ yếu được biết đến với sáu cuốn tiểu thuyết, ngầm diễn giải, phê bình và bình luận về tầng lớp quý tộc người Anh đổ bộ vào cuối thế kỷ 18.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(3, 'J. K. Rowling', 'info@jkrowling.com', '', 'J.K. Rowling là tác giả người Anh, người đã tạo ra bộ truyện Harry Potter nổi tiếng và được giới phê bình đánh giá cao (bảy cuốn sách được xuất bản từ năm 1997 đến 2007), kể về một đứa trẻ mồ côi cô đơn phát hiện ra rằng mình thực sự là một phù thủy và đăng ký vào Trường Phù thủy và Pháp sư Hogwarts.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(4, 'Virginia Woolf', 'contact@virginiawwoolf.com', '', 'Adeline Virginia Woolf (25 tháng 1 năm 1882 – 28 tháng 3 năm 1941) là một nhà văn người Anh. Bà được coi là một trong những tác giả theo chủ nghĩa hiện đại quan trọng nhất của thế kỷ 20 và là người tiên phong trong việc sử dụng dòng ý thức như một công cụ tường thuật.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(5, 'Mary Shelley', 'contact@maryshelley.com', '', 'Mary Wollstonecraft Shelley (30 tháng 8 năm 1797 – 1 tháng 2 năm 1851) là một tiểu thuyết gia người Anh, người đã viết tiểu thuyết Gothic Frankenstein; hoặc, The Modern Prometheus (1818), được coi là ví dụ ban đầu của khoa học viễn tưởng.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(6, 'Ernest Hemingway', 'contact@ernesthemingway.com', '', 'Ernest Hemingway (21 tháng 7 năm 1899-02 tháng 7 năm 1961) được coi là một trong những nhà văn có ảnh hưởng nhất của thế kỷ 20. Nổi tiếng với tiểu thuyết và truyện ngắn, ông cũng là một nhà báo và phóng viên chiến trường tài ba. Phong cách văn xuôi đặc trưng của Hemingway—đơn giản và thoải mái—đã ảnh hưởng đến một thế hệ nhà văn.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(7, 'Lev Nikolayevich Tolstoy', 'contact@levtolstoy.com', '', 'Tác giả người Nga Leo Tolstoy được coi là bậc thầy về tiểu thuyết hiện thực và là một trong những tiểu thuyết gia vĩ đại nhất thế giới, đặc biệt được biết đến với Anna Karenina và Chiến tranh và Hòa bình. Dao động giữa chủ nghĩa hoài nghi và chủ nghĩa giáo điều, ông khám phá những cách tiếp cận đa dạng nhất đối với trải nghiệm của con người.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(8, 'Fyodor Dostoevsky', 'contact@fyodordostoevsky.com', '', 'Fyodor Dostoyevsky, (sinh ngày 11 tháng 11 [30 tháng 10, Kiểu Cũ], 1821, Moscow, Nga—mất ngày 9 tháng 2 [28 tháng 1, Kiểu Cũ], 1881, St. Petersburg), tiểu thuyết gia và nhà văn viết truyện ngắn người Nga có tâm lý thâm nhập vào những ngóc ngách đen tối nhất trong trái tim con người, cùng với những khoảnh khắc soi sáng vượt trội của ông, đã có ảnh hưởng to lớn đến tiểu thuyết thế kỷ 20.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(9, 'Mark Twain', 'contact@marktwain.com', '', 'Mark Twain là một nhà hài hước, tiểu thuyết gia và nhà văn du lịch người Mỹ. Ngày nay ông được nhớ đến nhiều nhất với tư cách là tác giả của Những cuộc phiêu lưu của Tom Sawyer (1876) và Những cuộc phiêu lưu của Huckleberry Finn (1885). Twain được nhiều người coi là một trong những nhà văn Mỹ vĩ đại nhất mọi thời đại.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(10, 'James Joyce', 'contact@jamesjoyce.com', '', 'James Joyce được biết đến với việc thử nghiệm sử dụng ngôn ngữ và khám phá các phương pháp văn học mới, bao gồm độc thoại nội tâm, sử dụng mạng lưới phức tạp của các biểu tượng song song và phát minh ra các từ, cách chơi chữ và ám chỉ trong tiểu thuyết của ông, đặc biệt là Ulysses (1922) và Finnegans Wake (1939).', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(11, 'Malcolm Gladwell', 'contact@malcolmgladwell.com', '', 'Nhà báo, tác giả và diễn giả người Canada gốc Anh Malcolm Timothy Gladwell được biết đến với những bài báo và cuốn sách xác định, tiếp cận và giải thích những tác động bất ngờ của nghiên cứu khoa học xã hội. Ngoài công việc viết lách, ông còn là người dẫn chương trình podcast của Lịch sử xét lại.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(12, 'Stephen Hawking', 'contact@stephenhawking.com', '', 'Stephen William Hawking (8 tháng 1 năm 1942 – 14 tháng 3 năm 2018) là một nhà vật lý lý thuyết, nhà vũ trụ học và tác giả người Anh, vào thời điểm ông qua đời, ông là giám đốc nghiên cứu tại Trung tâm Vũ trụ lý thuyết tại Đại học Cambridge.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(13, 'Jean-Paul Sartre', 'contact@jeanpaulsartre.com', '', 'Jean-Paul Sartre là một tiểu thuyết gia, nhà viết kịch và triết gia người Pháp. Là một nhân vật hàng đầu trong triết học Pháp thế kỷ 20, ông là người tiêu biểu cho triết lý tồn tại được gọi là chủ nghĩa hiện sinh. Các tác phẩm đáng chú ý nhất của ông bao gồm Buồn nôn (1938), Hữu thể và Hư vô (1943), và Chủ nghĩa hiện sinh và Chủ nghĩa nhân văn (1946).', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(14, 'Vaclav Smil', 'vsmil@cc.umanitoba.ca', '', 'Vaclav Smil là Giáo sư danh dự xuất sắc tại Đại học Manitoba. Ông là tác giả của 40 cuốn sách, trong đó có cuốn sách bán chạy nhất của New York Times Thế giới thực sự hoạt động như thế nào và Năng lượng và nền văn minh, do MIT Press xuất bản. Năm 2010, ông được tạp chí Chính sách đối ngoại vinh danh là một trong 100 nhà tư tưởng toàn cầu hàng đầu.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(15, 'Michio Kaku', 'contact@machiokaku.com', '', 'Michio Kaku là nhà vật lý lý thuyết tại City College of New York, tác giả có sách bán chạy nhất và là nhà phổ biến khoa học nổi tiếng. Ông là người đồng sáng lập lý thuyết trường dây (một nhánh của lý thuyết dây) và tiếp tục nghiên cứu của Einstein nhằm hợp nhất bốn lực cơ bản của tự nhiên thành một lý thuyết thống nhất.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(16, 'Karl Marx', 'contact@karlmarx.com', '', 'Karl Marx là một nhà tư tưởng nổi bật, viết về các chủ đề liên quan đến kinh tế, kinh tế chính trị và xã hội. Sinh ra ở Đức, Marx dành phần lớn thời gian ở London, nơi ông viết nhiều tác phẩm nổi tiếng, trong đó có Tuyên ngôn Cộng sản và Tư bản (Das Kapital).', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(17, 'Albert Camus', 'contact@albertcamus.com', '', 'Albert Camus (1913–1960) là một nhà báo, biên tập viên và biên tập viên, nhà viết kịch và đạo diễn, tiểu thuyết gia và tác giả truyện ngắn, nhà tiểu luận chính trị và nhà hoạt động – và, mặc dù ông đã nhiều lần phủ nhận điều đó, nhưng ông là một triết gia.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(18, 'Simone de Beauvoir', 'contact@simonedebeauvoir.com', '', 'Simone de Beauvoir là một nhà văn, nhà nữ quyền, nhà lý luận xã hội và triết gia hiện sinh người Pháp. Cô được biết đến nhiều nhất với những ý tưởng đột phá xung quanh chủ nghĩa nữ quyền; cuốn sách của cô, Giới tính thứ hai, được cho là đánh dấu sự khởi đầu của làn sóng nữ quyền thứ hai trên toàn cầu.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(19, 'Hannah Arendt', 'contact@hannaharendt.com', '', 'Hannah Arendt (1906–1975) là một trong những triết gia chính trị có ảnh hưởng nhất thế kỷ XX. Sinh ra trong một gia đình người Đức gốc Do Thái, bà buộc phải rời Đức vào năm 1933 và sống ở Paris trong 8 năm tiếp theo, làm việc cho một số tổ chức tị nạn Do Thái.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(20, 'Rachel Carson', 'contact@rachelcarson.com', '', 'Rachel Carson là một nhà sinh vật học người Mỹ nổi tiếng với các bài viết về ô nhiễm môi trường và lịch sử tự nhiên của biển. Cuốn sách của bà, Silent Spring (1962), đã trở thành một trong những cuốn sách có ảnh hưởng nhất trong phong trào môi trường hiện đại và tạo động lực cho việc kiểm soát chặt chẽ hơn các loại thuốc trừ sâu, trong đó có DDT.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(21, 'Nguyễn Nhật Ánh', 'nguyennhatanh@gmail.com', '', 'Nguyễn Nhật Ánh (sinh ngày 7 tháng 5 năm 1955)[1] là một nam nhà văn người Việt Nam. Được xem là một trong những nhà văn hiện đại xuất sắc nhất Việt Nam hiện nay, ông được biết đến qua nhiều tác phẩm văn học về đề tài tuổi trẻ.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(22, 'Nguyễn Ngọc Tư', 'ngngoctucm@hcm.vn', '', 'Nguyễn Ngọc Tư (sinh năm 1976 tại xã Tân Duyệt, huyện Đầm Dơi, tỉnh Cà Mau) là một nhà văn, thành viên Hội nhà văn Việt Nam. Cô được biết đến với tập truyện mang tên Cánh đồng bất tận. Tập truyện nhận giải thưởng của Hội nhà văn Việt Nam năm 2006 và truyện ngắn cùng tên đã được chuyển thể thành phim điện ảnh năm 2010.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(23, 'Thạch Lam', 'contact@thachlam.com', '', 'Nhà văn Thạch Lam – Một cây bút giàu xúc cảm, ông được biết đến là một trong những nhà văn nổi tiếng của nền văn học hiện đại Việt Nam vào giai đoạn những năm 1930 – 1945.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(24, 'Vũ Trọng Phụng', 'contact@vutrongphung.com', '', 'Vũ Trọng Phụng (1912-1939) là một nhà văn, nhà báo nổi tiếng của Việt Nam vào đầu thế kỷ 20. Tuy thời gian cầm bút rất ngắn ngủi, với tác phẩm đầu tay là truyện ngắn Chống nạng lên đường đăng trên Ngọ báo vào năm 1930, ông đã để lại một kho tác phẩm đáng kinh ngạc: hơn 30 truyện ngắn, 9 tập tiểu thuyết, 9 tập phóng sự, 7 vở kịch, cùng một bản dịch vở kịch từ tiếng Pháp, một số bài viết phê bình, tranh luận văn học và hàng trăm bài báo viết về các vấn đề chính trị, xã hội, văn hóa.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(25, 'Nam Cao', 'contact@namcao.com', '', 'Nam Cao (tên khai sinh là Trần Hữu Tri, 29 tháng 10, năm 1915 hoặc 1917 – 30 tháng 11 năm 1951[1]) là một nhà văn, nhà thơ, nhà báo và cũng là một chiến sĩ, liệt sỹ người Việt Nam. Ông là nhà văn hiện thực lớn (trước Cách mạng Tháng Tám), một nhà báo kháng chiến (sau Cách mạng), một trong những nhà văn tiêu biểu nhất thế kỷ 20. Nam Cao có nhiều đóng góp quan trọng đối với việc hoàn thiện phong cách truyện ngắn và tiểu thuyết Việt Nam ở nửa đầu thế kỷ 20.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(26, 'Đặng Hoàng Giang', 'contact@danghoanggiang.com', '', 'Đặng Hoàng Giang là một người ủng hộ, một nhà nghiên cứu về xã hội dân sự và là một nhà nghiên cứu quản trị. Ông đã thiết kế và tham gia nhiều dự án đổi mới về hiệu suất của chính quyền địa phương , tính minh bạch và trách nhiệm giải trình . Ông viết cho nhiều báo chí và thường xuyên xuất hiện trên truyền hình để bàn về các xu hướng xã hội, tư pháp và phát triển. Là một nhà hoạt động xã hội.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(27, 'Tô Hoài', 'contact@tohoai.com', '', 'Tô Hoài (tên khai sinh: Nguyễn Sen; 27 tháng 9 năm 1920 – 6 tháng 7 năm 2014) là một nhà văn Việt Nam. Một số tác phẩm đề tài thiếu nhi của ông được dịch ra ngoại ngữ. Ông được nhà nước Việt Nam trao tặng Giải thưởng Hồ Chí Minh về Văn học – Nghệ thuật Đợt 1 (1996) cho các tác phẩm: Xóm giếng, Nhà nghèo, O chuột, Dế mèn phiêu lưu ký, Núi Cứu quốc, Truyện Tây Bắc, Mười năm, Xuống làng, Vỡ tỉnh, Tào lường, Họ Giàng ở Phìn Sa, Miền Tây, Vợ chồng A Phủ, Tuổi trẻ Hoàng Văn Thụ.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(28, 'Ngô Tất Tố', 'contact@ngotatto.com', '', 'Ngô Tất Tố (1893[1] – 20 tháng 4 năm 1954) là một nhà văn, nhà báo, nhà Nho học, dịch giả và nhà nghiên cứu có ảnh hưởng lớn ở Việt Nam giai đoạn trước 1954.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(29, 'Nguyễn Du', 'contact@nguyendu.com', '', 'Nguyễn Du là một nhà thơ, nhà văn hóa lớn thời Lê mạt Nguyễn sơ ở Việt Nam. Ông được người Việt kính trọng tôn xưng là Đại thi hào dân tộc và được UNESCO vinh danh là Danh nhân văn hóa thế giới. Tác phẩm Truyện Kiều của ông được xem là một kiệt tác văn học, một trong những thành tựu tiêu biểu nhất trong nền văn học trung đại Việt Nam.', '2023-11-17 16:00:40', '2023-11-17 16:00:40'),
(30, 'Bùi Văn Nam Sơn', 'contact@buivannamson.com', '', 'Bùi Văn Nam Sơn là một triết gia, tác giả và dịch giả nổi tiếng và có uy tín tại Việt Nam. Ông đã dịch và hiệu đính một số tác phẩm triết học và khoa học xã hội đã được xuất bản tại Việt Nam.', '2023-11-17 16:00:40', '2023-11-17 16:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_title` text NOT NULL,
  `blog_img` varchar(100) NOT NULL,
  `blog_content` text NOT NULL,
  `blog_desc` text DEFAULT NULL,
  `admin_id` int(6) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_img`, `blog_content`, `blog_desc`, `admin_id`, `creation_date`, `update_date`) VALUES
(1, 'Một trong những sách tâm lý học tội phạm hay, cực ', 'blog2.jpg', 'Cuốn sách về tâm lý học tội phạm này đề cập một góc nhìn không mấy lạ lẫm về tâm trí của các tội phạm, chặn đứng hy vọng về việc trừng trị và cải tạo họ. Tác phẩm này nhấn mạnh sự thật rằng tội phạm thường không thể hiểu rõ và thay đổi. Cuốn sách giải thích cách môi trường sống và gia đình đã góp phần hình thành tính cách tội phạm.\n\nMột phần trong cuốn sách là dành cho việc xem xét tình dục và ma túy trong thế giới tội phạm. Tác giả khẳng định rằng bản chất của con người không dễ dàng thay đổi và rằng đói nghèo, thiếu thốn và bạo lực không thể giải thích hành vi phạm tội. Sách cho thấy cách tư duy của tội phạm phát triển khác biệt so với những người lương thiện.\n\nCuốn sách cũng tập trung vào vấn đề nghiêm trọng của ma túy và tác động tiêu cực của chúng đối với con người thông qua sản xuất và lạm dụng. Sách đánh giá việc sử dụng hình phạt hình sự và nói rõ rằng chúng chỉ hiệu quả khi hiểu được tâm lý cực đoan của tội phạm. Cuối cùng, tác giả rút ra những điểm quan trọng nhất từ cuốn sách.', 'Nhờ cốt truyện hay, nhân vật được xây dựng sâu sắc cùng plot twist bất ngờ, tâm lý tội phạm luôn là chủ đề..', 1, '2023-12-05 16:11:21', '2023-12-05 16:11:21'),
(2, 'Cuốn sách hay nhất mọi thời đại', 'blog3.jpg', 'Cuốn sách đầu tiên mà bạn nên đọc đó là cuốn Đắc Nhân Tâm của Dale Carnegie. Cuốn sách này được mệnh danh là cuốn sách có tầm ảnh hưởng nhất thời đại. Trong nhiều năm qua quyển sách Đắc Nhân Tâm luôn là quyển sách được nhiều người lựa chọn nhất bởi nó mang lại giá trị sâu sắc cho người độc giả.\r\n\r\nĐắc Nhân Tâm mang đến cho độc giả những nguyên tắc đối nhân xử thế trong cuộc sống. Phải đối xử tốt với bản thân mình trước rồi mới học được cách đối xử với mọi người xung quanh. Con người cần thành thật, nhẫn lại, làm việc một cách thẩu hiểu thì mới cảm nhận hết được giá trị của cuộc sống. Từ đó có cách nhìn nhận đánh giá mọi người xung quanh một cách tích cực mới hòa nhập được mọi người.\r\n\r\nMỗi người khi đọc quyển sách này đều có cái nhìn riêng về nguồn cảm hứng mà tác giả muốn truyền đến họ. Mỗi người một suy nghĩ, một hướng đi khác nhau nhưng cuối cùng cái mà tác giả muốn hướng đến cho mọi người là hi vọng và niềm tin vào cuộc sống.\r\n\r\n', 'Sách là kho tàng tri thức vô tận càng đọc kiến thức của chúng ta lại càng trở nên rộng lớn. Kho tàng tri thức...', 8, '2023-12-05 16:11:21', '2023-12-05 16:11:21'),
(3, 'Cuốn sách hay về lịch sử loài người', 'blog1.jpg', 'Với gần 700 trang, cuốn “Súng, vi trùng và thép” được chia làm 4 phần. Phần thứ nhất từ vườn địa đàng đến Cajamarca. Phần 2 viết về sự bành trướng của sản xuất lương thực, thực phẩm. Phần 3 từ lương thực đến súng, vi trùng, thép và phần kết. Mỗi phần đều có những thông tin về lịch sử phát triển của thế giới ở những góc độ khác nhau nhưng xuyên suốt là những lý giải về lịch sử loài người xuất hiện đầu tiên ở châu Phi, sau đó lan ra thế giới. Tác giả cũng đã đặt câu hỏi phải chăng sự khác nhau về phát triển của các quốc gia, cộng đồng các khu dân cư là do tính thông minh di truyền. Rồi qua từng trang sách, ông chứng minh điều đó là sai. Tác giả khẳng định nguyên nhân chính tạo ra sự khác biệt trình độ phát triển của con người xuất phát từ điều kiện địa lý, sinh học vùng đất đó chứ không phải do trí thông minh di truyền của từng tộc người. Ông cũng có những lý giải vì sao con người lại sợ vi trùng...', '\"Súng, vi trùng và thép\" (Guns, Germs and Steel) của Giáo sư Jared Diamond (nhà khoa học người Mỹ)...', 1, '2023-12-05 16:29:30', '2023-12-05 16:29:30'),
(4, 'Chuyện của người lính thời hậu chiến', 'blog4.jpg', 'Bản lĩnh của người lính từng vào sinh, ra tử nơi chiến trường có được tiếp nối khi trở về với cuộc sống đời thường không? Biết bao câu hỏi được đặt ra đối với chúng ta khi muốn tìm hiểu về cuộc sống của những người lính đã từng đi qua chiến tranh. Cuốn “Chúng tôi thời hậu chiến” của tác giả Vũ Công Chiến được lưu trữ tại Thư viện tỉnh sẽ giải đáp phần nào những thắc mắc này.\r\n\r\nVới giọng văn điềm đạm, tác giả đã kể cho bạn đọc nghe những câu chuyện vui buồn của người lính sau chiến tranh. Đó là những ngày trở về trong sự hân hoan, chào đón của người thân. Đó là những thách thức lớn khi người lính phải bắt tay vào xây dựng kinh tế, lo cuộc sống gia đình. Những câu chuyện đời thường, chuyện làm ăn của những người lính chân chất, mộc mạc được tác giả kể với giọng văn lúc vui, lúc buồn.', 'Cuộc chiến tranh chống Mỹ đã kết thúc 46 năm....', 8, '2023-12-05 16:29:30', '2023-12-05 16:29:30'),
(5, 'Cuốn sách chữa lành cho người trẻ có những vết thương tâm lý', 'blog5.jpg', 'Tác giả Minh Đào của cuốn sách Rồi cũng sẽ qua nhận định: “Giống như bao người lớn khác, cách chúng ta thường đối xử với những vết thương lòng là trốn tránh, phủ nhận, đè nén, nín lặng... để vấn đề ngừng phát ra tiếng kêu. Ta yên lặng nhưng không hề yên bình”.\r\n\r\nChính vì thế, tác phẩm của anh đi sâu vào việc bóc tách vấn đề và đưa ra các nút gỡ cho những vết thương tâm lý của người trẻ. Cuốn sách được chia làm 4 chương, theo trình tự của một khóa tham vấn tâm lý.', 'Cuốn sách \"Rồi cũng sẽ qua\" giúp bạn trẻ đối diện với những tiếng nói chỉ trích từ tâm trí...', 1, '2023-12-05 16:50:52', '2023-12-05 16:50:52'),
(6, 'Nguồn gốc các loài - Cuốn sách khoa học làm rung chuyển cả thế giới', 'blog6.jpg', 'SÁCH THEO CHỦ ĐỀ\r\nTop 9 cuốn sách khoa học hay bổ ích và đáng đọc nhất\r\nTrong sự phát triển của xã hội, khoa học đóng một vai trò vô cùng quan trọng được xem là nền tảng để thúc đẩy sự phát triển của nhân loại. Chúng ta tìm hiểu về khoa học không chỉ mang đến một kiến thức khổng lồ về nguồn gốc, sự ra đời mà còn dẫn lối đến những sự thật thú vị về cuộc sống xung quanh. Bởi vậy, các cuốn sách khoa học luôn hấp dẫn đối với bạn đọc và nếu bạn đang hiểu các cuốn sách về khoa học thì top 9 cuốn sách khoa học hay bổ ích và đáng đọc nhất được chúng tôi tổng hợp dưới đây chắc chắn sẽ vô cùng thú vị và hữu ích dành cho bạn.\r\n\r\nTop 9 cuốn sách khoa học hay bổ ích và đáng đọc nhất\r\n\r\n1. Nguồn gốc các loài - Cuốn sách khoa học làm rung chuyển cả thế giới\r\n“Nguồn gốc các loài” được tác giả Charles Darwin cho ra đời vào năm 1859, đây được xem là cuốn sách khoa học tạo nên địa chấn đối với toàn cầu, từ ngày đầu ra mắt, cuốn sách đã bán hết 1250 bản in. Cuốn sách là kết quả của sự quan sát của tác giả trong chuyến khảo sát gần 5 năm từ năm 1831 đến 1836 cùng với đó là kinh nghiệm thực tiễn của tác giả trong hai mươi năm sau đó, ông tập trung vào việc biến đổi luận hay sự tiến hóa của muôn loài. Sách của ông đã được xuất bản nhiều lần, liên tục sửa đổi và cập nhật cho đến khi ông mất. \r\n\r\nCuốn sách khoa học tạo nên địa chấn đối với toàn thế cầu\r\nCuốn sách khoa học tạo nên địa chấn đối với toàn thế cầu\r\nTrước khi cuốn sách “Nguồn gốc các loài” ra đời, con người tồn tại nhưng không hề ý thức được rằng mình từ đâu mà có, hay tổ tiên là ai; họ dành niềm tin quá vào Chúa trời và cho rằng mọi thứ đều là sự sắp đặt của Đấng Tôi Cao trên kia. Bởi vậy, khi cuốn sách của Charles Darwin sắp sửa ra đời đã gây nên một làn sóng phản đối mạnh mẽ, “một nửa dân số nước Anh có thể đứng nhìn ông chết cháy trên cột sắc không chút tiếc thương”. Nhưng ông vẫn quyết định xuất bản cuốn sách và nó đã bán hết trong ngày đầu tiên. Darwin đã kết luận rằng các loài không phải là những thực thể bất biến từ các sáng tạo riêng biệt mà biến đổi từ loài này sang loài sáng, toàn bộ sinh vật luôn có sự vận động và tiến hóa. Cơ sở cho việc tiến hóa là sự đấu tranh sinh tồn giữa các cá thể ở từng loại, loại bỏ nhiều cá thể trong đó và dẫn tới sự sống sót của dạng thích nghi nhất. Đây là sự chọn lọc diễn ra tự động trong tự nhiên (natural selection). Qua tích lũy, các biến đổi được chọn lọc tự nhiên được giữ lại, dần dần biến đổi loài, từ đó mà giới sinh vật dần dần có dạng như hiện nay. ', 'Nguồn gốc các loài” được tác giả Charles Darwin cho ra đời vào năm 1859, đây được xem...', 1, '2023-12-05 16:50:52', '2023-12-05 16:50:52'),
(9, 'Hiệu ứng chim mồi của tác giả Hạo Nhiên – Quốc Khánh.', 'blog9.jpg', 'Sẽ có rất nhiều bạn đọc sẽ thắc mắc rằng tại sao tác giả lại đặt tên sách là Hiệu ứng chim mồi? Nếu bạn đã từng chơi bẫy chim thì đều sẽ biết chim mồi là gì. Khi bắt chim, chúng ta thường đặt một con chim trước miệng chiếc bẫy để thu hút, khiêu khích cũng như tạo hiệu ứng để gây sự chú ý cho những con chim mà mình muốn bẫy. Trong kinh doanh, bán hàng cũng như vậy, chúng ta cũng sẽ tạo ra những hiệu ứng thu hút người mua. Hiệu ứng chim mồi hay còn gọi là hiệu ứng ưu thế bất cân xứng, một hiệu ứng rất thường được dân kinh doanh dùng trong định giá. Để đơn gian, bạn có thể hiểu như sau: khi bán hàng, người bán sẽ tạo ra những hiệu ứng để thu hút người mua một cách triệt để. Người mua lúc này chỉ có hai lựa chọn, một là mua hàng, hai là để mất nó mãi mãi, đều này sẽ giúp thôi thúc người mua nhanh chóng đưa ra quyết định và chốt được đơn hàng.\r\n\r\nTrái ngược với nội dung, về hình thức cuốn sách nhận được khá nhiều lời nhận xét không mấy tích cực.  một số ít người đọc nhận xét rằng họ không thích bìa của quyển sách bởi vì bìa màu xanh lá cây, logo nhà xuất bản cũng màu xanh lá cây luôn. Chất lượng giấy bình thường trong khi giá của quyển sách khá cao, và họ cũng rất khó khăn trong việc mua sách. Đây cũng được coi là một điểm trừ trong việc tạo ấn tượng đầu tiên cho các bạn đọc', 'Quyển sách này là một trong số ít những cuốn sách marketing...', 8, '2023-12-05 16:50:52', '2023-12-05 16:50:52'),
(10, 'Dám Thất Bại - Billi P.S. Lim', 'blog10.jpg', 'Trong cơn mưa nặng hạt đang kéo dài âm ỉ ngoài kia, còn gì thú vị hơn khi ta ngồi bên khung cửa sổ, nhâm nhi tách trà nóng và đọc quyển sách ta yêu thích. Giống như có ma lực, quyển sách đã cuốn hút tôi. Không chút đắn đo, suy nghĩ, tôi liền chọn nó. Tuy phần thiết kế bìa sách hơi đơn giản và màu sắc không được rực rỡ, nhưng bố cục lại vô cùng rõ ràng, tinh tế. Cuốn sách không dày, chỉ có 200 trang thôi, với bìa sách tông màu xanh nước biển khá hợp với sở thích của tôi. Dòng chữ \"\r\n<strong>DÁM THẤT BẠI</strong>\r\n” được làm nổi bật ngay giữa bìa, tựa tiếng Anh của cuốn sách này là “\r\n<strong>DARE TO FAIL</strong>', 'Ắt hẳn chúng ta thường nghe, thường đọc về những tấm gương thành công...', 8, '2023-12-05 16:56:34', '2023-12-05 16:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn_13` varchar(13) NOT NULL,
  `title` varchar(255) NOT NULL,
  `book_description` text NOT NULL,
  `price` decimal(11,3) NOT NULL,
  `sale_off` int(2) NOT NULL,
  `views` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL,
  `au_id` int(11) NOT NULL,
  `pub_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn_13`, `title`, `book_description`, `price`, `sale_off`, `views`, `fm_id`, `au_id`, `pub_id`, `creation_date`, `updation_date`) VALUES
(1, '9780141439556', 'Đồi gió hú', 'Giới thiệu về Đồi Gió Hú cuốn tiểu thuyết bắt nguồn từ trang viên Yorkshire trên cánh đồng hoang của câu chuyện. Câu chuyện tập trung vào tình yêu trọn vẹn, nồng nàn nhưng cuối cùng cũng phải chịu số phận giữa Catherine Earnshaw và Heathcliff, cũng như việc niềm đam mê không được giải quyết này cuối cùng đã hủy hoại họ và những người xung quanh như thế nào.', 200.000, 0, 36, 1, 1, 1, '2023-11-18 19:32:25', '2023-11-18 19:32:25'),
(2, '9780141439556', 'Wuthering Heights', 'Wuthering Heights is the first and only novel by the English author Emily Brontë, initially published in 1847 under her pen name Ellis Bell.', 300.000, 0, 0, 1, 1, 4, '2023-11-18 19:32:25', '2023-11-18 19:32:25'),
(3, '9780141439518', 'Kiêu hãnh và định kiến', 'Kiêu hãnh và định kiến là tác phẩm nổi tiếng nhất của nhà văn Anh Jane Austen. Tiểu thuyết được viết từ năm 1796 đến năm 1797 và xuất bản năm 1813. Câu chuyện nói về tình yêu và hôn nhân của tầng lớp quý tộc nhỏ tại Anh vào đầu thế kỷ 19.', 200.000, 0, 0, 1, 2, 1, '2023-11-18 19:33:03', '2023-11-18 19:33:03'),
(4, '9780141439518', 'Pride and Prejudice', 'Pride and Prejudice is an 1813 novel of manners by English author Jane Austen. The novel follows the character development of Elizabeth Bennet, the protagonist of the book, who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.', 300.000, 0, 0, 1, 2, 1, '2023-11-18 19:33:03', '2023-11-18 19:33:03'),
(5, '9780141439587', 'Emma', 'Jane Austen là một tiểu thuyết gia người Anh. Bà nổi tiếng với sáu cuốn tiểu thuyết lấy bối cảnh giới địa chủ trung lưu Anh vào cuối thế kỷ 18. Cốt truyện của Austen thường phản ánh tình cảnh phụ thuộc của người phụ nữ vào hôn nhân như là cứu cánh duy nhất để đảm bảo vị thế xã hội và lợi ích vật chất.', 200.000, 0, 0, 1, 2, 1, '2023-11-18 19:33:03', '2023-11-18 19:33:03'),
(6, '9780141439587', 'Emma', 'Emma is a novel written by English author Jane Austen. It is set in the fictional country village of Highbury and the surrounding estates of Hartfield, Randalls and Donwell Abbey, and involves the relationships among people from a small number of families.', 300.000, 0, 0, 1, 2, 1, '2023-11-18 19:33:53', '2023-11-18 19:33:53'),
(7, '9780141439662', 'Sense and Sensibility', 'Sense and Sensibility is the first novel by the English author Jane Austen, published in 1811. It was published anonymously; By A Lady appears on the title page where the author\'s name might have been. It tells the story of the Dashwood sisters, Elinor and Marianne as they come of age.', 300.000, 0, 0, 1, 2, 1, '2023-11-18 19:33:53', '2023-11-18 19:33:53'),
(8, '9798861522953', 'Thuyết phục', 'Thuyết phục là cuốn tiểu thuyết cuối cùng được hoàn thành bởi tác giả người Anh Jane Austen. Nó được xuất bản vào ngày 20 tháng 12 năm 1817, cùng với Tu viện Northanger, sáu tháng sau khi bà qua đời, mặc dù trang tiêu đề ghi ngày 1818.', 200.000, 0, 0, 1, 2, 1, '2023-11-18 19:33:53', '2023-11-18 19:33:53'),
(9, '9798861522953', 'Persuasion: Novel', 'Persuasion is the last novel completed by the English author Jane Austen. It was published on 20 December 1817, along with Northanger Abbey, six months after her death, although the title page is dated 1818.', 300.000, 0, 0, 1, 2, 1, '2023-11-18 19:35:05', '2023-11-18 19:35:05'),
(10, '9781408855652', 'Harry Potter và Hòn đá Phù thủy', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:35:05', '2023-11-18 19:35:05'),
(11, '9781338878936', 'Harry Potter và phòng chứa bí mật', 'Harry Potter và tên tù nhân ngục Azkaban là một quyển tiểu thuyết thuộc thể loại giả tưởng kỳ ảo được viết bởi văn sĩ người Anh J. K. Rowling, đây cũng là tập thứ 3 trong bộ truyện Harry Potter. Quyển sách theo chân Harry Potter, cậu phù thủy nhỏ, trong năm học thứ ba của mình tại Trường Phù thủy và Pháp sư Hogwarts.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:35:05', '2023-11-18 19:35:05'),
(12, '9781338815283', 'Harry Potter Và Tên Tù Nhân Ngục Azkaban', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:35:05', '2023-11-18 19:35:05'),
(13, '9780439139595', 'Harry Potter Và Chiếc Cốc Lửa', 'Harry Potter và chiếc cốc lửa là một quyển sách thuộc thể loại giả tưởng kỳ ảo được viết bởi tác giả người Anh J. K. Rowling và đây cũng là phần thứ tư trong bộ tiểu thuyết Harry Potter.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(14, '9780439358064', 'Harry Potter Và Hội Phượng Hoàng', 'Harry Potter và hội Phượng hoàng là quyển thứ 5 trong bộ sách Harry Potter của nhà văn J. K. Rowling. Quyển này được đồng loạt xuất bản vào ngày 21 tháng 6 năm 2003 tại Anh, Hoa Kỳ, Canada, Úc và một vài quốc gia khác. Trong ngày đầu tiên xuất bản, nó đã bán được gần 7 triệu cuốn riêng tại Hoa Kỳ và Anh.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(15, '9781408855652', 'Harry Potter Và Hoàng Tử Lai', 'Harry Potter và Hoàng tử lai là quyển sách thứ sáu trong bộ sách giả tưởng nổi tiếng Harry Potter của tác giả J.K. Rowling. Cũng như các quyển trước, nó cũng trở thành một trong những bestseller của năm nó xuất bản.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(16, '9780545010221', 'Harry Potter Và Bảo Bối Tử Thần', 'Harry Potter và Bảo bối Tử thần là cuốn sách thứ bảy và cũng là cuối cùng của bộ tiểu thuyết giả tưởng Harry Potter của nhà văn Anh J.K. Rowling. Nguyên bản tiếng Anh được phát hành đồng thời tại Anh, Hoa Kỳ, Canada và một số nước khác vào ngày 21 tháng 7 năm 2007.', 200.000, 0, 0, 1, 3, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(17, '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(18, '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(19, '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(20, '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(21, '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(22, '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(23, '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 300.000, 0, 0, 1, 3, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(24, '9780143136132', 'Bà Dalloway', 'Bà Dalloway là một cuốn tiểu thuyết của Virginia Woolf xuất bản vào ngày 14 tháng 5 năm 1925. Nó kể chi tiết một ngày trong cuộc đời của Clarissa Dalloway, một phụ nữ thuộc tầng lớp thượng lưu hư cấu ở Anh sau Thế chiến thứ nhất. Đây là một trong những tiểu thuyết nổi tiếng nhất của Woolf.', 200.000, 0, 0, 1, 4, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(25, '9780143136132', 'Mrs. Dalloway', 'Dalloway, novel by Virginia Woolf published in 1925. It examines one day in the life of Clarissa Dalloway, an upperclass Londoner married to a member of Parliament. Mrs. Dalloway is essentially plotless; what action there is takes place mainly in the characters consciousness.', 300.000, 0, 0, 1, 4, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(26, '9780143136132', 'Frankenstein', 'Frankenstein: or The Modern Prometheus is an 1818 novel written by English author Mary Shelley. Frankenstein tells the story of Victor Frankenstein, a young scientist who creates a sentient being in an unorthodox scientific experiment.', 300.000, 0, 0, 1, 4, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(27, '9780143131847', 'Frankenstein', 'Frankenstein: hay The Modern Prometheus là một cuốn tiểu thuyết năm 1818 được viết bởi tác giả người Anh Mary Shelley. Frankenstein kể câu chuyện về Victor Frankenstein, một nhà khoa học trẻ, người đã tạo ra một sinh vật có trí tuệ trong một thí nghiệm khoa học không chính thống.', 200.000, 0, 0, 1, 4, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(28, '9780143131847', 'Ông già và biển cả', 'Ông già và Biển cả là một tiểu thuyết ngắn được Ernest Hemingway viết ở Cuba năm 1951 và xuất bản năm 1952. Nó là truyện ngắn dạng viễn tưởng cuối cùng được Hemingway viết và được xuất bản khi ông còn sống. Đây cũng là tác phẩm nổi tiếng và là một trong những tác phẩm đỉnh cao trong sự nghiệp sáng tác của nhà văn.', 200.000, 0, 0, 1, 6, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(29, '9789384225483', 'The Old Man and the Sea', 'The Old Man and the Sea is a 1952 novella written by the American author Ernest Hemingway. Written between December 1950 and February 1951, it tells the story of Santiago, an aging fisherman who catches a giant marlin after a long struggle, but then loses his bounty to sharks.', 300.000, 0, 0, 1, 6, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(30, '9789384225483', 'Chuông nguyện hồn ai', 'Chuông nguyện hồn ai là tiểu thuyết được xuất bản năm 1940 của nhà văn Mỹ Ernest Miller Hemingway. Cuốn tiểu thuyết viết về Robert Jordan, một người Mỹ thuộc Lữ đoàn quốc tế, tham gia chống Phát xít trong cuộc nội chiến Tây Ban Nha.', 200.000, 0, 0, 1, 6, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(31, '9780684803357', 'For Whom the Bell Tolls', 'For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American volunteer attached to a Republican guerrilla unit during the Spanish Civil War. As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia.', 300.000, 0, 0, 1, 6, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(32, '9780684803357', 'Chiến tranh và hòa bình', 'Chiến tranh và hòa bình là một tiểu thuyết của Lev Nikolayevich Tolstoy, được xuất bản rải rác trong giai đoạn 1865–1869. Tác phẩm được xem là thành tựu văn học xuất sắc nhất của Tolstoy, cũng như một tác phẩm kinh điển của văn học thế giới.', 200.000, 0, 0, 1, 7, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(33, '9780140447934', 'War and Peace', 'War and Peace is a literary work by Russian author Leo Tolstoy. Set during the Napoleonic Wars, the work mixes fictional narrative with chapters discussing history and philosophy. First published serially beginning in 1865, the work was rewritten and published in its entirety in 1869.', 300.000, 0, 0, 1, 7, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(34, '9780140447934', 'Anna Karenina', 'Anna Karenina là một tiểu thuyết của nhà văn Nga Lev Nikolayevich Tolstoy, được đăng tải nhiều kỳ trên tờ báo Ruskii Vestnik từ năm 1873 đến năm 1877 trước khi xuất bản thành ấn phẩm hoàn chỉnh. Anna Karenina được xem như là một đỉnh cao của tiểu thuyết hiện thực.', 200.000, 0, 0, 1, 7, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(35, '9780684803357', 'Anna Karenina', 'Anna Karenina is a novel by the Russian author Leo Tolstoy, first published in book form in 1878. Considered to be one of the greatest works of literature ever written, Tolstoy himself called it his first true novel.', 300.000, 0, 0, 1, 7, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(36, '9780684803357', 'Cái chết của Ivan Ilyich', 'Cái chết của Ivan Ilyich, xuất bản lần đầu năm 1886, là một tiểu thuyết của Leo Tolstoy, được coi là một trong những kiệt tác của tiểu thuyết cuối cùng của ông, được viết ngay sau khi ông cải đạo vào cuối những năm 1870.Cái chết của Ivan Ilyich', 200.000, 0, 0, 1, 7, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(37, '9781548397531', 'A Confession', 'Leo Tolstoy\'s A Confession, published in 1882, is an autobiographical work that deals with the philosophical and religious aspects of the meaning of life. Tolstoy\'s struggle with how to live a meaningful life forms the core of the narrative.', 300.000, 0, 0, 1, 7, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(38, '9780553210354', 'The Death of Ivan Ilyich', 'The Death of Ivan Ilyich, first published in 1886, is a novella by Leo Tolstoy, considered one of the masterpieces of his late fiction, written shortly after his religious conversion of the late 1870s.', 300.000, 0, 0, 1, 7, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(39, '9780486415871', 'Tội ác và hình phạt', 'Tội ác và hình phạt là một tiểu thuyết của nhà văn Nga Fyodor Mikhailovich Dostoyevsky. Tiểu thuyết này cùng với Anh em nhà Karamazov là hai tác phẩm nổi tiếng nhất của Dostoevsky. Tạp chí Times đã bình chọn Tội ác và hình phạt là một trong số những cuốn sách vĩ đại nhất mọi thời đại.', 200.000, 0, 0, 1, 8, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(40, '9780486415871', 'Crime and Punishment', 'Crime and Punishment is a novel by the Russian author Fyodor Dostoevsky. It was first published in the literary journal The Russian Messenger in twelve monthly installments during 1866. It was later published in a single volume.', 300.000, 0, 0, 1, 8, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(41, '9780374528379', 'Anh em nhà Karamazov', 'Anh em nhà Karamazov là tác phẩm cuối cùng của Fyodor Dostoevsky. Fyodor Dostoevsky thuộc loại thiên tài hiếm hoi mà càng về cuối đời thì sự nghiệp sáng tác càng lên tới đỉnh cao hơn. Anh em nhà Karamazov là tác phẩm vĩ đại nhất của ông.', 200.000, 0, 0, 1, 8, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(42, '9780374528379', 'The Brothers Karamazov', 'The Brothers Karamazov, also translated as The Karamazov Brothers, is the last novel by Russian author Fyodor Dostoevsky. Dostoevsky spent nearly two years writing The Brothers Karamazov, which was published as a serial in The Russian Messenger from January 1879 to November 1880.', 300.000, 0, 0, 1, 8, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(43, '9780679734512', 'Ác quỷ', 'Ác quỷ là một cuốn tiểu thuyết của Fyodor Dostoevsky, được xuất bản lần đầu trên tạp chí The Russian Messenger vào năm 1871–72. Nó được coi là một trong bốn kiệt tác được Dostoevsky viết sau khi ông trở về từ cuộc lưu đày ở Siberia, cùng với Tội ác và Trừng phạt, Thằng ngốc và Anh em nhà Karamazov.', 200.000, 0, 0, 1, 8, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(44, '9780679734512', 'Demons (Dostoevsky novel)', 'Demons is a novel by Fyodor Dostoevsky, first published in the journal The Russian Messenger in 1871–72. It is considered one of the four masterworks written by Dostoevsky after his return from Siberian exile, along with Crime and Punishment, The Idiot, and The Brothers Karamazov.', 300.000, 0, 0, 1, 8, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(45, '9781503215672', 'Những cuộc phiêu lưu của Tom Sawyer', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 200.000, 0, 0, 1, 9, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(46, '9781503215672', 'The Adventures of Tom Sawyer', 'The Adventures of Tom Sawyer is an 1876 novel by Mark Twain about a boy growing up along the Mississippi River. It is set in the 1840s in the town of St. Petersburg, which is based on Hannibal, Missouri, where Twain lived as a boy.', 300.000, 0, 0, 1, 9, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(47, '9780143107323', 'Những cuộc phiêu lưu của Huckleberry Finn', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 200.000, 0, 0, 1, 9, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(48, '9780143107323', 'Adventures of Huckleberry Finn', 'Adventures of Huckleberry Finn is a novel by American author Mark Twain, which was first published in the United Kingdom in December 1884 and in the United States in February 1885.', 300.000, 0, 0, 1, 9, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(49, '9780679722762', 'Ulysses', 'Ulysses là tiểu thuyết gồm 3 phần của James Joyce xuất bản lần đầu năm 1922. Với ẩn dụ về sử thi Odysseus, thủ pháp dòng ý thức và nội dung được nén chặt bằng những sự kiện miên man trôi theo suy tưởng của các nhân vật diễn ra chỉ trong một ngày 16 tháng 6 năm 1904, tác phẩm được tạp chí Time đánh giá là một trong số những kiệt tác văn chương lớn nhất thế giới thế kỷ 20.', 200.000, 0, 0, 1, 10, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(50, '9780679722762', 'Ulysses', 'Ulysses is a modernist novel by Irish writer James Joyce. Parts of it were first serialized in the American journal The Little Review from March 1918 to December 1920, and the entire work was published in Paris by Sylvia Beach on 2 February 1922, Joyce\'s fortieth birthday.', 300.000, 0, 0, 1, 10, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(51, '9780140186475', 'Người Dublin', 'Dubliners là một tuyển tập gồm mười lăm truyện ngắn của James Joyce, được xuất bản lần đầu tiên vào năm 1914. Cuốn sách này mô tả một cách tự nhiên về cuộc sống của tầng lớp trung lưu Ireland trong và xung quanh Dublin trong những năm đầu của thế kỷ 20.', 200.000, 0, 0, 1, 10, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(52, '9780140186475', 'Dubliners', 'Dubliners is a collection of fifteen short stories by James Joyce, first published in 1914. It presents a naturalistic depiction of Irish middle class life in and around Dublin in the early years of the 20th century.', 300.000, 0, 0, 1, 10, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(53, '9780316024976', 'Những kẻ xuất chúng', 'Những kẻ ngoài lề: Câu chuyện thành công là cuốn sách phi hư cấu do Malcolm Gladwell viết và được Little, Brown and Company xuất bản vào ngày 18 tháng 11 năm 2008. Trong Outlier, Gladwell xem xét các yếu tố góp phần vào mức độ thành công cao.', 200.000, 0, 0, 1, 11, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(54, '9780141036250', 'Outliers: The Story of Success', 'Outliers: The Story of Success is the nonfiction book written by Malcolm Gladwell and published by Little, Brown and Company on November 18, 2008. In Outliers, Gladwell examines the factors that contribute to high levels of success.', 300.000, 0, 0, 1, 11, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(55, '9780316346627', 'Điểm bùng phát', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 200.000, 0, 0, 1, 11, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(56, '9780316346627', 'The Tipping Point: How Little Things Can Make a Big Difference', 'The Tipping Point: How Little Things Can Make a Big Difference is the debut book by Malcolm Gladwell, first published by Little, Brown in 2000. Gladwell defines a tipping point as the moment of critical mass, the threshold, the boiling point.', 300.000, 0, 0, 1, 11, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(57, '9788483468913', 'Lý thuyết về tất cả mọi thứ', 'Trong tác phẩm xuất sắc của nhà vật lý Stephen Hawking, Lược sử thời gian, ông đã trình bày cho chúng ta một cái nhìn mới táo bạo về vũ trụ của chúng ta, nó bắt đầu như thế nào và quan điểm cũ của chúng ta về vật lý cũng như các lý thuyết mệt mỏi về sự hình thành vũ trụ không còn phù hợp như thế nào nữa.', 200.000, 0, 0, 1, 12, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(58, '9788817079761', 'The illustrated theory of everything: The origin and fate of the universe', 'In physicist Stephen Hawking\'s brilliant opus, A Brief History of Time, he presented us with a bold new look at our universe, how it began, and how our old views of physics and tired theories about the creation of the universe were no longer relevant.', 300.000, 0, 0, 1, 12, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(59, '9780553380163', 'Lược sử thời gian', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 200.000, 0, 0, 1, 12, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(60, '9780553380163', 'A Brief History of Time', 'A Brief History of Time: From the Big Bang to Black Holes is a book on theoretical cosmology by English physicist Stephen Hawking. It was first published in 1988. Hawking wrote the book for readers who had no prior knowledge of physics.', 300.000, 0, 0, 1, 12, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(61, '9782070257539', 'Buồn nôn', 'Buồn nôn là một tiểu thuyết triết học của triết gia hiện sinh Jean-Paul Sartre, xuất bản năm 1938. Đây là tiểu thuyết đầu tay của Sartre. Cuốn tiểu thuyết diễn ra ở Bouville, một thị trấn tương tự như Le Havre.', 200.000, 0, 0, 1, 13, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(62, '9782070257539', 'Nausea', 'Nausea is a philosophical novel by the existentialist philosopher Jean-Paul Sartre, published in 1938. It is Sartre\'s first novel. The novel takes place in \'Bouville\' a town similar to Le Havre.', 300.000, 0, 0, 1, 13, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(63, '9788532666826', 'Tồn tại và hư vô', 'L\'Être et le Néant là một tác phẩm lớn, hơn 700 trang sách, của Jean-Paul Sartre, một trong những nhà triết học hàng đầu của Pháp thế kỷ 20, một trong những người sáng lập ra Chủ nghĩa hiện sinh. Lúc L\'Être et le Néant ra đời, chẳng mấy người hiểu nó.', 0.000, 0, 0, 1, 13, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(64, '9789754680096', 'Existentialism Is a Humanism', 'Existentialism Is a Humanism is a 1946 work by the philosopher Jean-Paul Sartre, based on a lecture by the same name he gave at Club Maintenant in Paris, on 29 October 1945.', 0.000, 0, 0, 1, 13, 5, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(65, '9780241989692', 'Những Con Số Biết Nói  71 Câu Chuyện Phơi Bày Sự Thật Về Thế Giới Chúng Ta Đang Sống', 'Chứa đựng những thông tin hấp dẫn và những ví dụ đáng nhớ, Numbers Don\'t Lie tiết lộ cách Hoa Kỳ đang dẫn đầu xu hướng tiêu thụ thịt gà ngày càng tăng trên toàn thế giới, việc tiêm chủng mang lại lợi tức đầu tư tốt nhất và tại sao ô tô điện không tuyệt vời như chúng ta nghĩ.', 0.000, 0, 0, 1, 14, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(66, '9780241989692', 'Numbers Don\'t Lie: 71 Stories to Help Us Understand the Modern World', 'An essential guide to understanding how numbers reveal the true state of our world–exploring a wide range of topics including energy, the environment, technology, transportation, and food production. Vaclav Smil\'s mission is to make facts matter.', 0.000, 0, 0, 1, 14, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(67, '9780593297063', 'How the World Really Works: The Science Behind How We Got Here and Where We\'re Going', 'In How the World Really Works: A Scientist\'s Guide to Our Past, Present and Future, Vaclav Smil explores seven fundamental areas that govern human survival and prosperity, covering topics such as food production, energy and globalisation.', 0.000, 0, 0, 1, 14, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(68, '9780307473332', 'Phương Trình Của Chúa - Cuộc Truy Tìm Lý Thuyết Của Vạn Vật', 'Một cuốn sách xuất sắc được viết bởi một nhà truyền thông khoa học bậc thầy. Nếu ai đó có thể làm sáng tỏ những điều thâm thúy của toán học và lý thuyết dây, thì đó chính là Michio Kaku. Trong cuốn sách nhỏ tuyệt vời này, tác giả giải thích bằng những thuật ngữ rõ ràng và đơn giản những đột phá về khái niệm và những câu hỏi chưa được giải đáp - trong việc tìm kiếm một lý thuyết thống nhất vĩ đại của vạn vật.', 0.000, 0, 0, 1, 15, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(69, '9780307473332', 'Tương Lai Nhân Loại', 'Địa cầu hóa Sao Hỏa, viếng thăm các vì sao, sự bất tử và định mệnh bên ngoài Trái Đất\n\n“Theo tôi, nếu không tiến ra không gian, nhân loại sẽ không có tương lai.” –Stephen Hawking\n\nVậy hành trình tiến ra không gian ấy sẽ thuận lợi hay khó khăn? Sẽ cần bao nhiêu thời gian và những công nghệ gì? Nhân loại đã chuẩn bị những gì cho định mệnh đó? Và cuộc sống con người khi ấy sẽ ra sao?', 0.000, 0, 0, 1, 15, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(70, '9780307473332', 'Physics of the Future', 'Based on interview material with more than 300 of the world\'s leading scientists - who are inventing the future in the laboratory - and taking into account the safety principles of technological development, the famous theoretical physicist Michio Kaku describes in detail the revolution in medicine, computers, quantum physics and space travel that is taking place. All this will forever change our lives and the entire course of human civilization.', 0.000, 0, 0, 1, 15, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(71, '9780307473332', 'The Communist Manifesto', 'The Communist Manifesto, originally the Manifesto of the Communist Party, is a political pamphlet written by Karl Marx and Friedrich Engels, commissioned by the Communist League and originally published in London in 1848.', 0.000, 0, 0, 1, 15, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(72, '9780717802418', 'Capital, Volume I', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 1, 16, 5, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(73, '9780486477480', 'Capital, Volume II', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 1, 16, 5, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(74, '9780853150275', 'Capital, Volume III', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 1, 16, 5, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(75, '9780679720201', 'Người xa lạ', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0.000, 0, 0, 1, 17, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(76, '9780679720201', 'The Stranger', 'The Stranger is a novel by Albert Camus written in 1942. It is an unusual work about an ordinary man, who is eventually imprisoned for murder, and waits to be executed. image.', 0.000, 0, 0, 1, 17, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(77, '9780525564454', 'Thần thoại Sisyphus', 'Huyền thoại về Sisyphus là một tiểu luận triết học năm 1942 của Albert Camus. Chịu ảnh hưởng của các triết gia như Søren Kierkegaard, Arthur Schopenhauer và Friedrich Nietzsche, Camus giới thiệu triết lý phi lý của mình.', 0.000, 0, 0, 1, 17, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(78, '9780679720218', 'Dịch hạch', 'Dịch hạch là một cuốn tiểu thuyết nổi tiếng của Albert Camus xuất bản năm 1947. Một vài nhân vật của Dịch hạch đã xuất hiện trong cuốn sổ tay của Camus viết ở Alger năm 1938. Nhưng hơn cả là ở Oran, Algérie từ cuối năm 1940 đến mùa xuân năm 1942, rồi ở Pháp, Camus đã soạn thảo lại cuốn tiểu thuyết của mình.', 0.000, 0, 0, 1, 17, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(79, '9780679720201', 'The Stranger', 'The Stranger, also published in English as The Outsider, is a 1942 novella written by French author Albert Camus. The first of Camus\' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother\'s funeral, kills an unnamed Arab man in Algiers.', 0.000, 0, 0, 1, 17, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(80, '9780525564454', 'The Myth of Sisyphus', 'The Myth of Sisyphus is a 1942 philosophical essay by Albert Camus. Influenced by philosophers such as Søren Kierkegaard, Arthur Schopenhauer, and Friedrich Nietzsche, Camus introduces his philosophy of the absurd.', 0.000, 0, 0, 1, 17, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(81, '9780679720218', 'The Plague', 'The Plague is a 1947 absurdist novel by Albert Camus. It tells the story from the point of view of a narrator in the midst of a plague sweeping the French Algerian city of Oran. The narrator remains unknown until the start of the last chapter.', 0.000, 0, 0, 1, 17, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(82, '9780307277787', 'Giới tính thứ hai', 'Giới tính hạng hai là cuốn sách của nhà triết học hiện sinh người Pháp Simone de Beauvoir, xuất bản năm 1949. Trong cuốn sách, tác giả thảo luận về cách thức phụ nữ bị đối xử trong suốt chiều dài lịch sử. Beauvoir nghiên cứu và viết cuốn sách trong khoảng 14 tháng, từ năm 1946 đến năm 1949.', 0.000, 0, 0, 1, 18, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(83, '9780307277787', 'The Second Sex', 'The Second Sex is a 1949 book by the French existentialist philosopher Simone de Beauvoir, in which the author discusses the treatment of women in the present society as well as throughout all of history. Beauvoir researched and wrote the book in about 14 months between 1946 and 1949.', 0.000, 0, 0, 1, 18, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(84, '9780143039884', 'Eichmann ở Jerusalem', 'Eichmann ở Jerusalem: Một phóng sự về Sự Tầm Thường của Cái Ác là cuốn sách xuất bản năm 1963 của nhà lý luận chính trị Hannah Arendt.', 0.000, 0, 0, 1, 19, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(85, '9780143039884', 'Eichmann in Jerusalem', 'Eichmann in Jerusalem: A Report on the Banality of Evil is a 1963 book by political thinker Hannah Arendt. Arendt, a Jew who fled Germany during Adolf Hitler\'s rise to power, reported on the trial of Adolf Eichmann, one of the major organizers of the Holocaust, for The New Yorker.', 0.000, 0, 0, 1, 19, 5, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(86, '9780156701532', 'The Origins of Totalitarianism', 'The Origins of Totalitarianism, published in 1951, was Hannah Arendt\'s first major work, wherein she describes and analyzes Nazism and Stalinism as the major totalitarian political movements of the first half of the 20th century.', 0.000, 0, 0, 1, 19, 5, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(87, '9788087888957', 'On Violence', 'An analysis of the nature, causes, and significance of violence in the second half of the twentieth century. Arendt also reexamines the relationship between war, politics, violence, and power.', 0.000, 0, 0, 1, 19, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(88, '9780618249060', 'Mùa xuân vắng lặng', 'Mùa xuân vắng lặng là một cuốn sách về đề tài khoa học môi trường của Rachel Carson. Tác phẩm được xuất bản vào ngày 27 tháng 9 năm 1962 và ghi lại những tác động xấu đến môi trường do sử dụng bừa bãi thuốc bảo vệ thực vật.', 0.000, 0, 0, 1, 20, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(89, '9780618249060', 'Silent Spring', 'Silent Spring is an environmental science book by Rachel Carson. Published on September 27, 1962, the book documented the environmental harm caused by the indiscriminate use of pesticides.', 0.000, 0, 0, 1, 20, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(90, '9780067575208', 'The Sense of Wonder', 'The Sense of Wonder relates Carson\'s intimate account of adventures with her young nephew, Roger, as they enjoy walks along the rocky coast of Maine and through dense forests and open fields, observing wildlife, strange plants, moonlight, and storm clouds and listening to the living music of insects in the underbrush.', 0.000, 0, 0, 1, 20, 4, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(91, '9786041004757', 'Cho tôi xin một vé đi tuổi thơ', 'Cho tôi xin một vé đi tuổi thơ là truyện ngắn của nhà văn Nguyễn Nhật Ánh. Tác phẩm là một trong những sáng tác thành công nhất của ông và nhận được Giải thưởng Văn học ASEAN của năm 2010. Nguyễn Nhật Ánh viết ở mặt sau cuốn sách. Tôi viết cuốn sách này không dành cho trẻ em. Tôi viết cho những ai từng là trẻ em.', 0.000, 0, 0, 1, 21, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(92, '9786041004757', 'Mắt biếc', 'Mắt biếc là tiểu thuyết của nhà văn Nguyễn Nhật Ánh trong loạt truyện viết về tình yêu thanh thiếu niên của tác giả này cùng với Thằng quỷ nhỏ, Cô gái đến từ hôm qua,... Đây được xem là một trong những tác phẩm tiêu biểu của Nguyễn Nhật Ánh.', 0.000, 0, 0, 1, 21, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(93, '9786041000698', 'Tôi thấy hoa vàng trên cỏ xanh', 'Tôi thấy hoa vàng trên cỏ xanh là một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh, xuất bản lần đầu tại Việt Nam vào ngày 9 tháng 12 năm 2010 bởi Nhà xuất bản Trẻ với phần tranh minh họa do Đỗ Hoàng Tường thực hiện.', 0.000, 0, 0, 1, 21, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(94, '9786041004689', 'Cánh đồng bất tận', 'Cánh đồng bất tận là tên một tập truyện ngắn phát hành năm 2005 của Nguyễn Ngọc Tư, đồng thời cũng là tên một truyện trong tập truyện ngắn đó được đăng báo lần đầu cùng năm.', 0.000, 0, 0, 3, 22, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(95, '9786041005167', 'Ngọn đèn không tắt', 'Cuốn sách “Ngọn Đèn Không Tắt” của tác giả Nguyễn Ngọc Tư là một tập truyện ngắn đầy hấp dẫn và thuyết phục về thanh niên hôm nay trên mọi mặt đời sống. Tác phẩm được viết với giọng văn mộc mạc, bình dị và ngôn ngữ đời thường, tạo nên một không khí tự nhiên về màu sắc và hương vị của mảnh đất cuối cùng của tổ quốc.', 0.000, 0, 0, 1, 22, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(96, '9786043943078', 'Hai Đứa Trẻ', 'Cuốn sách tập hợp những truyện ngắn đặc sắc của nhà văn Thạch Lam: Nắng trong vườn, Gió lạnh đầu mùa, Tiếng chim kêu, Đứa con đầu lòng, Bắt đầu, Nhà mẹ Lê, Một cơn giận, Hai đứa trẻ, Đứa con, Trong bóng tối buổi chiều, Cuốn sách bỏ quên, Dưới bóng hoàng lan,...', 0.000, 0, 0, 1, 23, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(97, '9786042198097', 'Hà Nội Băm Sáu Phố Phường', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0.000, 0, 0, 1, 23, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(98, '9780472068043', 'Số Đỏ', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0.000, 0, 0, 1, 24, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(99, '9786049638428', 'Làm Đĩ', 'Làm đĩ là một cuốn tiểu thuyết của nhà văn Việt Nam Vũ Trọng Phụng, tác phẩm được viết vào năm 1936 và xuất bản vào năm 1937. Đây được coi là cuốn tiểu thuyết đầu tiên của Việt Nam đề cập đến vấn đề mại dâm.', 0.000, 0, 0, 1, 24, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(100, '9786045326121', 'Chí Phèo', 'Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Chí Phèo cũng là tên nhân vật chính của truyện.', 0.000, 0, 0, 1, 25, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(101, '9786043724943', 'Lão Hạc', 'Lão Hạc là một truyện ngắn của nhà văn Nam Cao được viết năm 1943. Tác phẩm được đánh giá là một trong những truyện ngắn khá tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Tám.', 0.000, 0, 0, 1, 25, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(102, '9786045342411', 'Bức xúc không làm ta vô can', 'Bức xúc không làm ta vô can chính là cuốn sách đầu tiên về thể loại chính luận mà tác giả luôn theo đuổi, một tác phẩm mang tinh phần phản biện xã hội sâu sắc. Sách được xuất bản năm 2015, là tập hợp những bài bình về các vấn đề trong xã hội, các vấn đề về văn hóa, những hiện tượng xã hội đương thời.', 0.000, 0, 0, 1, 26, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(103, '9786045342411', 'Điểm đến của cuộc đời: đồng hành với người cận tử và những bài học cho cuộc sống', 'Điểm đến của cuộc đời kể lại một hành trình không thể nào quên cùng những người cận tử. Dấn thân vào một thế giới của những bi kịch và tổn thất khổng lồ, của phẩm giá và lòng tự trọng trong hoàn cảnh khắc nghiệt, của sự phản bội và sợ hãi, của tình yêu mãnh liệt và hy vọng khôn nguôi, tóm lại, của tất cả những gì thuộc về con người, ở mức độ dữ dội nhất, tác giả muốn đi tìm câu trả lời cho thôi thúc nội tâm: ta nên ứng xử thế nào trước cái chết, và sự chết có thể dạy ta điều gì cho cuộc sống?', 0.000, 0, 0, 1, 26, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(104, '9786042262279', 'Dế Mèn phiêu lưu ký', 'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của nhà văn Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là Con dế mèn do Nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941. Sau đó, được sự ủng hộ nhiệt tình của nhân dân, Tô Hoài viết thêm truyện Dế Mèn phiêu lưu ký.', 0.000, 0, 0, 1, 27, 1, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(105, '8935212327985', 'Tắt đèn', 'Tắt đèn là một trong những tác phẩm văn học tiêu biểu nhất của nhà văn Ngô Tất Tố. Đây là một tác phẩm văn học hiện thực phê phán với nội dung nói về cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỉ XX dưới ách đô hộ của thực dân Pháp.', 0.000, 0, 0, 1, 28, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(106, '9786043943283', 'Lều chõng', 'Lều chõng là một tiểu thuyết phóng sự của nhà văn Ngô Tất Tố, ra mắt độc giả lần đầu ngày 10 tháng 3 năm 1939 tại Hà Nội.', 0.000, 0, 0, 1, 28, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(107, '8936067604634', 'Truyện Kiều', 'Đoạn trường tân thanh, thường được biết đến với cái tên đơn giản là Truyện Kiều, là một truyện thơ của đại thi hào Nguyễn Du. Đây được xem là truyện thơ nổi tiếng nhất và xét vào hàng kinh điển trong văn học Việt Nam, tác phẩm được viết bằng chữ Nôm, theo thể lục bát, gồm 3.254 câu.', 0.000, 0, 0, 1, 29, 3, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(108, '8935081111609', 'Hiện Tượng Học Tinh Thần', 'Có thể khẳng định một cách chắc chắn rằng Hiện tượng học Tinh thần là một trong các tác phẩm khó nhất và tham vọng nhất trong kho tàng triết văn thế giới. Tuy thế, bất chấp nhận định của W. Winderlband hơn 100 năm trước “Giống người đã có thể hiểu được quyển Hiện tượng học Tinh thần của Hegel đang trên đà tuyệt chủng. Giờ đây, ngay số người đã chịu khó đọc tác phẩm ấy từ đầu đến cuối chắc cũng chỉ còn đếm được trên đầu ngón tay mà thôi” thì Hiện tượng học Tinh thần vẫn cứ tiếp tục có ma lực dị thường. Và muốn tìm hiểu về Hegel không còn cách nào khác chúng ta phải bắt đầu với Hiện tượng học Tinh thần – tác phẩm lớn đầu tiên và cũng là tác phẩm thiên tài nhất của ông.', 0.000, 0, 0, 1, 30, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(109, '8935081112804', 'Trò Chuyện Triết Học Tập 1', 'Ở nơi chợ búa ồn ã bán mua, nơi chợ đời bụi bặm, triết học héo lánh tới làm gì, có héo lánh tới nổi không? Hẳn nhiều người đã không khỏi ái ngại, đặt ra câu hỏi ấy khi thấy trên tờ Sài Gòn Tiếp Thị  mà như tên gọi của nó, là cầu nối giữa doanh nghiệp và người tiêu dùng, nơi tiếp cận thị trường của doanh nghiệp, nói cách khác là một thứ chợ - xuất hiện một chuyên mục gọi là Trò chuyện triết học. Với nhiều người, triết học là cái gì đó cao siêu, xa vời, chỉ có thể kính nhi viễn chi chứ chẳng ăn nhập gì với cuộc sống trần trụi, với thời buổi mà con người phải lặn hụp mệt nhoài trong cuộc mưu sinh, phải nhanh mắt nhanh tay chụp giựt cho mình những thứ có thể chụp giựt được, phải đối diện với bao nhiêu câu hỏi, bao nhiêu thách thức của cuộc sống trước mặt. Nói tóm lại, triết học là cái gì đó vô bổ, chỉ để dành cho những kẻ rỗi hơi.', 0.000, 0, 0, 1, 30, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(110, '8935081112491', 'Trò Chuyện Triết Học (Tập 2)', 'Triết học là một môn học không khó nhưng để nói chuyện về triết học cho mọi người nghe, mọi người cùng hiểu thì không phải dễ. Nhà nghiên cứu Bùi Văn Nam Sơn đã làm được điều ở vế thứ hai thông qua cuốn sách quý này. Đây không phải là cuốn sách nhập môn triết học và cũng không hẳn là cuốn sách về lịch sử triết học, tuy nhiên nó có đủ các yếu tố của 2 loại sách đó.', 0.000, 0, 0, 1, 30, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(111, '978604943352', 'Trò Chuyện Triết Học (Tập 3)', 'Trò Chuyện Triết Học tiếp tục tập hợp các bài viết từ nhiều thời điểm và cơ hội khác nhau. Có khi là lời giới thiệu hay lời bạt cho những quyển sách hay. Có khi là phần đóng góp nhỏ bé của tác giả cho các tập Kỷ yếu mừng các danh nhân văn hóa - khoa học trong nước và các sự kiện văn hóa lớn trên thế giới. Có khi là những bài báo, bài trả lời phỏng vấn... trong nhiều dịp khác nhau. Chúng được tập hợp và sắp xếp không theo trình tự thời gian hay một định hướng có trước nào cả. Để giữ được tính ngẫu hứng, đa dạng và... vui vẻ!', 0.000, 0, 0, 1, 30, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(112, '8935081112491', 'Trò chuyện triết học trọn bộ 9 tập', 'Những người đọc không chuyên có thể dễ dàng tìm hiểu về triết học, các khái niệm cơ bản của triết học, các trào lưu và các triết gia kinh điển thông qua những lời văn nhẹ nhàng, cô đọng và hóm hỉnh. Qua cuốn sách, bạn đọc có thể hiểu được triết học là gì và lợi ích của nó đối với cuộc sống thường nhật. Tuy nhiên, tác giả không định nghĩa nó rõ ràng như cách thông thường người ta hay làm, việc hiểu được khái niệm là sản phẩm của quá trình tư duy - biết - hiểu - cảm - ngộ mà tác giả là người thầy, người dẫn đường tin cậy và uyên thâm: cung cấp tư liệu, hướng dẫn phương pháp và giảng giải một cách dễ hiểu nhất. Không thể có triết học nếu không có sự tự giải phóng tâm hồn. Điều ấy đòi hỏi sự dũng cảm, kể cả sự dũng cảm dấn mình vào chỗ bấp bênh, nghi ngờ, thất vọng.', 0.000, 0, 0, 1, 30, 2, '2023-11-18 19:38:10', '2023-11-18 19:38:10'),
(113, '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(114, '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(115, '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(116, '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(117, '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(118, '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(119, '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0.000, 0, 0, 1, 3, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(120, '9780545010221', 'The God Equation', 'The God Equation: The Quest for a Theory of Everything is a popular science book by the futurist and physicist Michio Kaku. The book was initially published on April 6, 2021, by Doubleday. The book debuted at number six on The New York Times nonfiction best-seller list for the week ending April 10, 2021.', 0.000, 0, 0, 1, 15, 4, '2023-11-18 19:52:41', '2023-11-18 19:52:41'),
(121, '9780141439556', 'Đồi gió hú', 'Giới thiệu về Đồi Gió Hú cuốn tiểu thuyết bắt nguồn từ trang viên Yorkshire trên cánh đồng hoang của câu chuyện. Câu chuyện tập trung vào tình yêu trọn vẹn, nồng nàn nhưng cuối cùng cũng phải chịu số phận giữa Catherine Earnshaw và Heathcliff, cũng như việc niềm đam mê không được giải quyết này cuối cùng đã hủy hoại họ và những người xung quanh như thế nào.', 200.000, 0, 0, 2, 1, 1, '2023-11-18 12:32:25', '2023-11-18 12:32:25'),
(122, '9780141439556', 'Wuthering Heights', 'Wuthering Heights is the first and only novel by the English author Emily Brontë, initially published in 1847 under her pen name Ellis Bell.', 0.000, 0, 0, 2, 1, 4, '2023-11-18 12:32:25', '2023-11-18 12:32:25');
INSERT INTO `books` (`id`, `isbn_13`, `title`, `book_description`, `price`, `sale_off`, `views`, `fm_id`, `au_id`, `pub_id`, `creation_date`, `updation_date`) VALUES
(123, '9780141439518', 'Kiêu hãnh và định kiến', 'Kiêu hãnh và định kiến là tác phẩm nổi tiếng nhất của nhà văn Anh Jane Austen. Tiểu thuyết được viết từ năm 1796 đến năm 1797 và xuất bản năm 1813. Câu chuyện nói về tình yêu và hôn nhân của tầng lớp quý tộc nhỏ tại Anh vào đầu thế kỷ 19.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:33:03', '2023-11-18 12:33:03'),
(124, '9780141439518', 'Pride and Prejudice', 'Pride and Prejudice is an 1813 novel of manners by English author Jane Austen. The novel follows the character development of Elizabeth Bennet, the protagonist of the book, who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:33:03', '2023-11-18 12:33:03'),
(125, '9780141439587', 'Emma', 'Jane Austen là một tiểu thuyết gia người Anh. Bà nổi tiếng với sáu cuốn tiểu thuyết lấy bối cảnh giới địa chủ trung lưu Anh vào cuối thế kỷ 18. Cốt truyện của Austen thường phản ánh tình cảnh phụ thuộc của người phụ nữ vào hôn nhân như là cứu cánh duy nhất để đảm bảo vị thế xã hội và lợi ích vật chất.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:33:03', '2023-11-18 12:33:03'),
(126, '9780141439587', 'Emma', 'Emma is a novel written by English author Jane Austen. It is set in the fictional country village of Highbury and the surrounding estates of Hartfield, Randalls and Donwell Abbey, and involves the relationships among people from a small number of families.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:33:53', '2023-11-18 12:33:53'),
(127, '9780141439662', 'Sense and Sensibility', 'Sense and Sensibility is the first novel by the English author Jane Austen, published in 1811. It was published anonymously; By A Lady appears on the title page where the author\'s name might have been. It tells the story of the Dashwood sisters, Elinor and Marianne as they come of age.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:33:53', '2023-11-18 12:33:53'),
(128, '9798861522953', 'Thuyết phục', 'Thuyết phục là cuốn tiểu thuyết cuối cùng được hoàn thành bởi tác giả người Anh Jane Austen. Nó được xuất bản vào ngày 20 tháng 12 năm 1817, cùng với Tu viện Northanger, sáu tháng sau khi bà qua đời, mặc dù trang tiêu đề ghi ngày 1818.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:33:53', '2023-11-18 12:33:53'),
(129, '9798861522953', 'Persuasion: Novel', 'Persuasion is the last novel completed by the English author Jane Austen. It was published on 20 December 1817, along with Northanger Abbey, six months after her death, although the title page is dated 1818.', 0.000, 0, 0, 2, 2, 1, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(130, '9781408855652', 'Harry Potter và Hòn đá Phù thủy', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(131, '9781338878936', 'Harry Potter và phòng chứa bí mật', 'Harry Potter và tên tù nhân ngục Azkaban là một quyển tiểu thuyết thuộc thể loại giả tưởng kỳ ảo được viết bởi văn sĩ người Anh J. K. Rowling, đây cũng là tập thứ 3 trong bộ truyện Harry Potter. Quyển sách theo chân Harry Potter, cậu phù thủy nhỏ, trong năm học thứ ba của mình tại Trường Phù thủy và Pháp sư Hogwarts.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(132, '9781338815283', 'Harry Potter Và Tên Tù Nhân Ngục Azkaban', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(133, '9780439139595', 'Harry Potter Và Chiếc Cốc Lửa', 'Harry Potter và chiếc cốc lửa là một quyển sách thuộc thể loại giả tưởng kỳ ảo được viết bởi tác giả người Anh J. K. Rowling và đây cũng là phần thứ tư trong bộ tiểu thuyết Harry Potter.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(134, '9780439358064', 'Harry Potter Và Hội Phượng Hoàng', 'Harry Potter và hội Phượng hoàng là quyển thứ 5 trong bộ sách Harry Potter của nhà văn J. K. Rowling. Quyển này được đồng loạt xuất bản vào ngày 21 tháng 6 năm 2003 tại Anh, Hoa Kỳ, Canada, Úc và một vài quốc gia khác. Trong ngày đầu tiên xuất bản, nó đã bán được gần 7 triệu cuốn riêng tại Hoa Kỳ và Anh.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(135, '9781408855652', 'Harry Potter Và Hoàng Tử Lai', 'Harry Potter và Hoàng tử lai là quyển sách thứ sáu trong bộ sách giả tưởng nổi tiếng Harry Potter của tác giả J.K. Rowling. Cũng như các quyển trước, nó cũng trở thành một trong những bestseller của năm nó xuất bản.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(136, '9780545010221', 'Harry Potter Và Bảo Bối Tử Thần', 'Harry Potter và Bảo bối Tử thần là cuốn sách thứ bảy và cũng là cuối cùng của bộ tiểu thuyết giả tưởng Harry Potter của nhà văn Anh J.K. Rowling. Nguyên bản tiếng Anh được phát hành đồng thời tại Anh, Hoa Kỳ, Canada và một số nước khác vào ngày 21 tháng 7 năm 2007.', 0.000, 0, 0, 2, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(137, '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(138, '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(139, '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(140, '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(141, '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(142, '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(143, '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(144, '9780143136132', 'Bà Dalloway', 'Bà Dalloway là một cuốn tiểu thuyết của Virginia Woolf xuất bản vào ngày 14 tháng 5 năm 1925. Nó kể chi tiết một ngày trong cuộc đời của Clarissa Dalloway, một phụ nữ thuộc tầng lớp thượng lưu hư cấu ở Anh sau Thế chiến thứ nhất. Đây là một trong những tiểu thuyết nổi tiếng nhất của Woolf.', 0.000, 0, 0, 2, 4, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(145, '9780143136132', 'Mrs. Dalloway', 'Dalloway, novel by Virginia Woolf published in 1925. It examines one day in the life of Clarissa Dalloway, an upperclass Londoner married to a member of Parliament. Mrs. Dalloway is essentially plotless; what action there is takes place mainly in the characters consciousness.', 0.000, 0, 0, 2, 4, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(146, '9780143136132', 'Mrs. Dalloway', 'Dalloway, novel by Virginia Woolf published in 1925. It examines one day in the life of Clarissa Dalloway, an upperclass Londoner married to a member of Parliament. Mrs. Dalloway is essentially plotless; what action there is takes place mainly in the characters consciousness.', 0.000, 0, 0, 2, 4, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(147, '9780143131847', 'Frankenstein', 'Frankenstein: hay The Modern Prometheus là một cuốn tiểu thuyết năm 1818 được viết bởi tác giả người Anh Mary Shelley. Frankenstein kể câu chuyện về Victor Frankenstein, một nhà khoa học trẻ, người đã tạo ra một sinh vật có trí tuệ trong một thí nghiệm khoa học không chính thống.', 0.000, 0, 0, 2, 4, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(148, '9780143131847', 'Frankenstein', 'The book tells the story of Victor Frankenstein, a Swiss student of natural science who creates an artificial man from pieces of corpses and brings his creature to life. Though it initially seeks affection, the monster inspires loathing in everyone who meets it.', 0.000, 0, 0, 2, 4, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(149, '9789384225483', 'Ông già và biển cả', 'Ông già và Biển cả là một tiểu thuyết ngắn được Ernest Hemingway viết ở Cuba năm 1951 và xuất bản năm 1952. Nó là truyện ngắn dạng viễn tưởng cuối cùng được Hemingway viết và được xuất bản khi ông còn sống. Đây cũng là tác phẩm nổi tiếng và là một trong những tác phẩm đỉnh cao trong sự nghiệp sáng tác của nhà văn.', 0.000, 0, 0, 2, 6, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(150, '9789384225483', 'The Old Man and the Sea', 'The Old Man and the Sea is a 1952 novella written by the American author Ernest Hemingway. Written between December 1950 and February 1951, it tells the story of Santiago, an aging fisherman who catches a giant marlin after a long struggle, but then loses his bounty to sharks.', 0.000, 0, 0, 2, 6, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(151, '9780684803357', 'Chuông nguyện hồn ai', 'Chuông nguyện hồn ai là tiểu thuyết được xuất bản năm 1940 của nhà văn Mỹ Ernest Miller Hemingway. Cuốn tiểu thuyết viết về Robert Jordan, một người Mỹ thuộc Lữ đoàn quốc tế, tham gia chống Phát xít trong cuộc nội chiến Tây Ban Nha.', 0.000, 0, 0, 2, 6, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(152, '9780684803357', 'For Whom the Bell Tolls', 'For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American volunteer attached to a Republican guerrilla unit during the Spanish Civil War. As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia.', 0.000, 0, 0, 2, 6, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(153, '9780140447934', 'Chiến tranh và hòa bình', 'Chiến tranh và hòa bình là một tiểu thuyết của Lev Nikolayevich Tolstoy, được xuất bản rải rác trong giai đoạn 1865–1869. Tác phẩm được xem là thành tựu văn học xuất sắc nhất của Tolstoy, cũng như một tác phẩm kinh điển của văn học thế giới.', 0.000, 0, 0, 2, 7, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(154, '9780140447934', 'War and Peace', 'War and Peace is a literary work by Russian author Leo Tolstoy. Set during the Napoleonic Wars, the work mixes fictional narrative with chapters discussing history and philosophy. First published serially beginning in 1865, the work was rewritten and published in its entirety in 1869.', 0.000, 0, 0, 2, 6, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(155, '9780684803357', 'Anna Karenina', 'Anna Karenina là một tiểu thuyết của nhà văn Nga Lev Nikolayevich Tolstoy, được đăng tải nhiều kỳ trên tờ báo Ruskii Vestnik từ năm 1873 đến năm 1877 trước khi xuất bản thành ấn phẩm hoàn chỉnh. Anna Karenina được xem như là một đỉnh cao của tiểu thuyết hiện thực.', 0.000, 0, 0, 2, 7, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(156, '9780684803357', 'Anna Karenina', 'Anna Karenina is a novel by the Russian author Leo Tolstoy, first published in book form in 1878. Considered to be one of the greatest works of literature ever written, Tolstoy himself called it his first true novel.', 0.000, 0, 0, 2, 7, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(157, '9780553210354', 'Cái chết của Ivan Ilyich', 'Cái chết của Ivan Ilyich, xuất bản lần đầu năm 1886, là một tiểu thuyết của Leo Tolstoy, được coi là một trong những kiệt tác của tiểu thuyết cuối cùng của ông, được viết ngay sau khi ông cải đạo vào cuối những năm 1870.', 0.000, 0, 0, 2, 7, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(158, '9780553210354', 'The Death of Ivan Ilyich', 'The Death of Ivan Ilyich, first published in 1886, is a novella by Leo Tolstoy, considered one of the masterpieces of his late fiction, written shortly after his religious conversion of the late 1870s.', 0.000, 0, 0, 2, 7, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(159, '9780486415871', 'Tội ác và hình phạt', 'Tội ác và hình phạt là một tiểu thuyết của nhà văn Nga Fyodor Mikhailovich Dostoyevsky. Tiểu thuyết này cùng với Anh em nhà Karamazov là hai tác phẩm nổi tiếng nhất của Dostoevsky. Tạp chí Times đã bình chọn Tội ác và hình phạt là một trong số những cuốn sách vĩ đại nhất mọi thời đại.', 0.000, 0, 0, 2, 8, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(160, '9780486415871', 'Crime and Punishment', 'Crime and Punishment is a novel by the Russian author Fyodor Dostoevsky. It was first published in the literary journal The Russian Messenger in twelve monthly installments during 1866. It was later published in a single volume.', 0.000, 0, 0, 2, 8, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(161, '9780374528379', 'Anh em nhà Karamazov', 'Anh em nhà Karamazov là tác phẩm cuối cùng của Fyodor Dostoevsky. Fyodor Dostoevsky thuộc loại thiên tài hiếm hoi mà càng về cuối đời thì sự nghiệp sáng tác càng lên tới đỉnh cao hơn. Anh em nhà Karamazov là tác phẩm vĩ đại nhất của ông.', 0.000, 0, 0, 2, 8, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(162, '9780374528379', 'The Brothers Karamazov', 'The Brothers Karamazov, also translated as The Karamazov Brothers, is the last novel by Russian author Fyodor Dostoevsky. Dostoevsky spent nearly two years writing The Brothers Karamazov, which was published as a serial in The Russian Messenger from January 1879 to November 1880.', 0.000, 0, 0, 2, 8, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(163, '9780679734512', 'Ác quỷ', 'Ác quỷ là một cuốn tiểu thuyết của Fyodor Dostoevsky, được xuất bản lần đầu trên tạp chí The Russian Messenger vào năm 1871–72. Nó được coi là một trong bốn kiệt tác được Dostoevsky viết sau khi ông trở về từ cuộc lưu đày ở Siberia, cùng với Tội ác và Trừng phạt, Thằng ngốc và Anh em nhà Karamazov.', 0.000, 0, 0, 2, 8, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(164, '9780679734512', 'Demons (Dostoevsky novel)', 'Demons is a novel by Fyodor Dostoevsky, first published in the journal The Russian Messenger in 1871–72. It is considered one of the four masterworks written by Dostoevsky after his return from Siberian exile, along with Crime and Punishment, The Idiot, and The Brothers Karamazov.', 0.000, 0, 0, 2, 8, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(165, '9781503215672', 'Những cuộc phiêu lưu của Tom Sawyer', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 0.000, 0, 0, 2, 9, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(166, '9781503215672', 'The Adventures of Tom Sawyer', 'The Adventures of Tom Sawyer is an 1876 novel by Mark Twain about a boy growing up along the Mississippi River. It is set in the 1840s in the town of St. Petersburg, which is based on Hannibal, Missouri, where Twain lived as a boy.', 0.000, 0, 0, 2, 9, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(167, '9780143107323', 'Những cuộc phiêu lưu của Huckleberry Finn', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 0.000, 0, 0, 2, 9, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(168, '9780143107323', 'Adventures of Huckleberry Finn', 'Adventures of Huckleberry Finn is a novel by American author Mark Twain, which was first published in the United Kingdom in December 1884 and in the United States in February 1885.', 0.000, 0, 0, 2, 9, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(169, '9780679722762', 'Ulysses', 'Ulysses là tiểu thuyết gồm 3 phần của James Joyce xuất bản lần đầu năm 1922. Với ẩn dụ về sử thi Odysseus, thủ pháp dòng ý thức và nội dung được nén chặt bằng những sự kiện miên man trôi theo suy tưởng của các nhân vật diễn ra chỉ trong một ngày 16 tháng 6 năm 1904, tác phẩm được tạp chí Time đánh giá là một trong số những kiệt tác văn chương lớn nhất thế giới thế kỷ 20.', 0.000, 0, 0, 2, 10, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(170, '9780679722762', 'Ulysses', 'Ulysses is a modernist novel by Irish writer James Joyce. Parts of it were first serialized in the American journal The Little Review from March 1918 to December 1920, and the entire work was published in Paris by Sylvia Beach on 2 February 1922, Joyce\'s fortieth birthday.', 0.000, 0, 0, 2, 10, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(171, '9780140186475', 'Người Dublin', 'Dubliners là một tuyển tập gồm mười lăm truyện ngắn của James Joyce, được xuất bản lần đầu tiên vào năm 1914. Cuốn sách này mô tả một cách tự nhiên về cuộc sống của tầng lớp trung lưu Ireland trong và xung quanh Dublin trong những năm đầu của thế kỷ 20.', 0.000, 0, 0, 2, 10, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(172, '9780140186475', 'Dubliners', 'Dubliners is a collection of fifteen short stories by James Joyce, first published in 1914. It presents a naturalistic depiction of Irish middle class life in and around Dublin in the early years of the 20th century.', 0.000, 0, 0, 2, 10, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(173, '9780316024976', 'Những kẻ xuất chúng', 'Những kẻ ngoài lề: Câu chuyện thành công là cuốn sách phi hư cấu do Malcolm Gladwell viết và được Little, Brown and Company xuất bản vào ngày 18 tháng 11 năm 2008. Trong Outlier, Gladwell xem xét các yếu tố góp phần vào mức độ thành công cao.', 0.000, 0, 0, 2, 11, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(174, '9780141036250', 'Outliers: The Story of Success', 'Outliers: The Story of Success is the nonfiction book written by Malcolm Gladwell and published by Little, Brown and Company on November 18, 2008. In Outliers, Gladwell examines the factors that contribute to high levels of success.', 0.000, 0, 0, 2, 11, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(175, '9780316346627', 'Điểm bùng phát', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 0.000, 0, 0, 2, 11, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(176, '9780316346627', 'The Tipping Point: How Little Things Can Make a Big Difference', 'The Tipping Point: How Little Things Can Make a Big Difference is the debut book by Malcolm Gladwell, first published by Little, Brown in 2000. Gladwell defines a tipping point as the moment of critical mass, the threshold, the boiling point.', 0.000, 0, 0, 2, 11, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(177, '9788483468913', 'Lý thuyết về tất cả mọi thứ', 'Trong tác phẩm xuất sắc của nhà vật lý Stephen Hawking, Lược sử thời gian, ông đã trình bày cho chúng ta một cái nhìn mới táo bạo về vũ trụ của chúng ta, nó bắt đầu như thế nào và quan điểm cũ của chúng ta về vật lý cũng như các lý thuyết mệt mỏi về sự hình thành vũ trụ không còn phù hợp như thế nào nữa.', 0.000, 0, 0, 2, 12, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(178, '9788817079761', 'The illustrated theory of everything: The origin and fate of the universe', 'In physicist Stephen Hawking\'s brilliant opus, A Brief History of Time, he presented us with a bold new look at our universe, how it began, and how our old views of physics and tired theories about the creation of the universe were no longer relevant.', 0.000, 0, 0, 2, 12, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(179, '9780553380163', 'Lược sử thời gian', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 0.000, 0, 0, 2, 12, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(180, '9780553380163', 'A Brief History of Time', 'A Brief History of Time: From the Big Bang to Black Holes is a book on theoretical cosmology by English physicist Stephen Hawking. It was first published in 1988. Hawking wrote the book for readers who had no prior knowledge of physics.', 0.000, 0, 0, 2, 12, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(181, '9782070257539', 'Buồn nôn', 'Buồn nôn là một tiểu thuyết triết học của triết gia hiện sinh Jean-Paul Sartre, xuất bản năm 1938. Đây là tiểu thuyết đầu tay của Sartre. Cuốn tiểu thuyết diễn ra ở Bouville, một thị trấn tương tự như Le Havre.', 0.000, 0, 0, 2, 13, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(182, '9782070257539', 'Nausea', 'Nausea is a philosophical novel by the existentialist philosopher Jean-Paul Sartre, published in 1938. It is Sartre\'s first novel. The novel takes place in \'Bouville\' a town similar to Le Havre.', 0.000, 0, 0, 2, 13, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(183, '9788532666826', 'Tồn tại và hư vô', 'L\'Être et le Néant là một tác phẩm lớn, hơn 700 trang sách, của Jean-Paul Sartre, một trong những nhà triết học hàng đầu của Pháp thế kỷ 20, một trong những người sáng lập ra Chủ nghĩa hiện sinh. Lúc L\'Être et le Néant ra đời, chẳng mấy người hiểu nó.', 0.000, 0, 0, 2, 13, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(184, '9789754680096', 'Existentialism Is a Humanism', 'Existentialism Is a Humanism is a 1946 work by the philosopher Jean-Paul Sartre, based on a lecture by the same name he gave at Club Maintenant in Paris, on 29 October 1945.', 0.000, 0, 0, 2, 13, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(185, '9780241989692', 'Những Con Số Biết Nói  71 Câu Chuyện Phơi Bày Sự Thật Về Thế Giới Chúng Ta Đang Sống', 'Chứa đựng những thông tin hấp dẫn và những ví dụ đáng nhớ, Numbers Don\'t Lie tiết lộ cách Hoa Kỳ đang dẫn đầu xu hướng tiêu thụ thịt gà ngày càng tăng trên toàn thế giới, việc tiêm chủng mang lại lợi tức đầu tư tốt nhất và tại sao ô tô điện không tuyệt vời như chúng ta nghĩ.', 0.000, 0, 0, 2, 14, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(186, '9780241989692', 'Numbers Don\'t Lie: 71 Stories to Help Us Understand the Modern World', 'An essential guide to understanding how numbers reveal the true state of our world–exploring a wide range of topics including energy, the environment, technology, transportation, and food production. Vaclav Smil\'s mission is to make facts matter.', 0.000, 0, 0, 2, 14, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(187, '9780593297063', 'How the World Really Works: The Science Behind How We Got Here and Where We\'re Going', 'In How the World Really Works: A Scientist\'s Guide to Our Past, Present and Future, Vaclav Smil explores seven fundamental areas that govern human survival and prosperity, covering topics such as food production, energy and globalisation.', 0.000, 0, 0, 2, 14, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(188, '9780307473332', 'Phương Trình Của Chúa - Cuộc Truy Tìm Lý Thuyết Của Vạn Vật', 'Một cuốn sách xuất sắc được viết bởi một nhà truyền thông khoa học bậc thầy. Nếu ai đó có thể làm sáng tỏ những điều thâm thúy của toán học và lý thuyết dây, thì đó chính là Michio Kaku. Trong cuốn sách nhỏ tuyệt vời này, tác giả giải thích bằng những thuật ngữ rõ ràng và đơn giản những đột phá về khái niệm và những câu hỏi chưa được giải đáp - trong việc tìm kiếm một lý thuyết thống nhất vĩ đại của vạn vật.', 0.000, 0, 0, 2, 15, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(189, '9780307473332', 'Tương Lai Nhân Loại', 'Địa cầu hóa Sao Hỏa, viếng thăm các vì sao, sự bất tử và định mệnh bên ngoài Trái Đất\n\n“Theo tôi, nếu không tiến ra không gian, nhân loại sẽ không có tương lai.” –Stephen Hawking\n\nVậy hành trình tiến ra không gian ấy sẽ thuận lợi hay khó khăn? Sẽ cần bao nhiêu thời gian và những công nghệ gì? Nhân loại đã chuẩn bị những gì cho định mệnh đó? Và cuộc sống con người khi ấy sẽ ra sao?', 0.000, 0, 0, 2, 15, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(190, '9780307473332', 'Physics of the Future', 'Physics of the Future: How Science Will Shape Human Destiny and Our Daily Lives by the Year 2100 is a 2011 book by theoretical physicist Michio Kaku, author of Hyperspace and Physics of the Impossible. In it Kaku speculates about possible future technological development over the next 100 years.', 0.000, 0, 0, 2, 15, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(191, '9780307473332', 'The Communist Manifesto', 'The Communist Manifesto, originally the Manifesto of the Communist Party, is a political pamphlet written by Karl Marx and Friedrich Engels, commissioned by the Communist League and originally published in London in 1848.', 0.000, 0, 0, 2, 15, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(192, '9780717802418', 'Capital, Volume I', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 2, 16, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(193, '9780486477480', 'Capital, Volume II', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 2, 16, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(194, '9780853150275', 'Capital, Volume III', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 2, 16, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(195, '9780679720201', 'Người xa lạ', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0.000, 0, 0, 2, 17, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(196, '9780679720201', 'The Stranger', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0.000, 0, 0, 2, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(197, '9780525564454', 'Thần thoại Sisyphus', 'Huyền thoại về Sisyphus là một tiểu luận triết học năm 1942 của Albert Camus. Chịu ảnh hưởng của các triết gia như Søren Kierkegaard, Arthur Schopenhauer và Friedrich Nietzsche, Camus giới thiệu triết lý phi lý của mình.', 0.000, 0, 0, 2, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(198, '9780679720218', 'Dịch hạch', 'Dịch hạch là một cuốn tiểu thuyết nổi tiếng của Albert Camus xuất bản năm 1947. Một vài nhân vật của Dịch hạch đã xuất hiện trong cuốn sổ tay của Camus viết ở Alger năm 1938. Nhưng hơn cả là ở Oran, Algérie từ cuối năm 1940 đến mùa xuân năm 1942, rồi ở Pháp, Camus đã soạn thảo lại cuốn tiểu thuyết của mình.', 0.000, 0, 0, 2, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(199, '9780679720201', 'The Stranger', 'The Stranger, also published in English as The Outsider, is a 1942 novella written by French author Albert Camus. The first of Camus\' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother\'s funeral, kills an unnamed Arab man in Algiers.', 0.000, 0, 0, 2, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(200, '9780525564454', 'The Myth of Sisyphus', 'The Myth of Sisyphus is a 1942 philosophical essay by Albert Camus. Influenced by philosophers such as Søren Kierkegaard, Arthur Schopenhauer, and Friedrich Nietzsche, Camus introduces his philosophy of the absurd.', 0.000, 0, 0, 2, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(201, '9780679720218', 'The Plague', 'The Plague is a 1947 absurdist novel by Albert Camus. It tells the story from the point of view of a narrator in the midst of a plague sweeping the French Algerian city of Oran. The narrator remains unknown until the start of the last chapter.', 0.000, 0, 0, 2, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(202, '9780307277787', 'Giới tính thứ hai', 'Giới tính hạng hai là cuốn sách của nhà triết học hiện sinh người Pháp Simone de Beauvoir, xuất bản năm 1949. Trong cuốn sách, tác giả thảo luận về cách thức phụ nữ bị đối xử trong suốt chiều dài lịch sử. Beauvoir nghiên cứu và viết cuốn sách trong khoảng 14 tháng, từ năm 1946 đến năm 1949.', 0.000, 0, 0, 2, 18, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(203, '9780307277787', 'The Second Sex', 'The Second Sex is a 1949 book by the French existentialist philosopher Simone de Beauvoir, in which the author discusses the treatment of women in the present society as well as throughout all of history. Beauvoir researched and wrote the book in about 14 months between 1946 and 1949.', 0.000, 0, 0, 2, 18, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(204, '9780143039884', 'Eichmann ở Jerusalem', 'Eichmann ở Jerusalem: Một phóng sự về Sự Tầm Thường của Cái Ác là cuốn sách xuất bản năm 1963 của nhà lý luận chính trị Hannah Arendt.', 0.000, 0, 0, 2, 19, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(205, '9780143039884', 'Eichmann in Jerusalem', 'Eichmann in Jerusalem: A Report on the Banality of Evil is a 1963 book by political thinker Hannah Arendt. Arendt, a Jew who fled Germany during Adolf Hitler\'s rise to power, reported on the trial of Adolf Eichmann, one of the major organizers of the Holocaust, for The New Yorker.', 0.000, 0, 0, 2, 19, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(206, '9780156701532', 'The Origins of Totalitarianism', 'The Origins of Totalitarianism, published in 1951, was Hannah Arendt\'s first major work, wherein she describes and analyzes Nazism and Stalinism as the major totalitarian political movements of the first half of the 20th century.', 0.000, 0, 0, 2, 19, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(207, '9788087888957', 'On Violence', 'An analysis of the nature, causes, and significance of violence in the second half of the twentieth century. Arendt also reexamines the relationship between war, politics, violence, and power.', 0.000, 0, 0, 2, 19, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(208, '9780618249060', 'Mùa xuân vắng lặng', 'Mùa xuân vắng lặng là một cuốn sách về đề tài khoa học môi trường của Rachel Carson. Tác phẩm được xuất bản vào ngày 27 tháng 9 năm 1962 và ghi lại những tác động xấu đến môi trường do sử dụng bừa bãi thuốc bảo vệ thực vật.', 0.000, 0, 0, 2, 20, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(209, '9780618249060', 'Silent Spring', 'Silent Spring is an environmental science book by Rachel Carson. Published on September 27, 1962, the book documented the environmental harm caused by the indiscriminate use of pesticides.', 0.000, 0, 0, 2, 20, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(210, '9780067575208', 'The Sense of Wonder', 'The Sense of Wonder relates Carson\'s intimate account of adventures with her young nephew, Roger, as they enjoy walks along the rocky coast of Maine and through dense forests and open fields, observing wildlife, strange plants, moonlight, and storm clouds and listening to the living music of insects in the underbrush.', 0.000, 0, 0, 2, 20, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(211, '9786041004757', 'Cho tôi xin một vé đi tuổi thơ', 'Cho tôi xin một vé đi tuổi thơ là truyện ngắn của nhà văn Nguyễn Nhật Ánh. Tác phẩm là một trong những sáng tác thành công nhất của ông và nhận được Giải thưởng Văn học ASEAN của năm 2010. Nguyễn Nhật Ánh viết ở mặt sau cuốn sách. Tôi viết cuốn sách này không dành cho trẻ em. Tôi viết cho những ai từng là trẻ em.', 0.000, 0, 0, 2, 21, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(212, '9786041004757', 'Mắt biếc', 'Mắt biếc là tiểu thuyết của nhà văn Nguyễn Nhật Ánh trong loạt truyện viết về tình yêu thanh thiếu niên của tác giả này cùng với Thằng quỷ nhỏ, Cô gái đến từ hôm qua,... Đây được xem là một trong những tác phẩm tiêu biểu của Nguyễn Nhật Ánh.', 0.000, 0, 0, 2, 21, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(213, '9786041000698', 'Tôi thấy hoa vàng trên cỏ xanh', 'Tôi thấy hoa vàng trên cỏ xanh là một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh, xuất bản lần đầu tại Việt Nam vào ngày 9 tháng 12 năm 2010 bởi Nhà xuất bản Trẻ với phần tranh minh họa do Đỗ Hoàng Tường thực hiện.', 0.000, 0, 0, 2, 21, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(214, '9786041004689', 'Cánh đồng bất tận', 'Cánh đồng bất tận là tên một tập truyện ngắn phát hành năm 2005 của Nguyễn Ngọc Tư, đồng thời cũng là tên một truyện trong tập truyện ngắn đó được đăng báo lần đầu cùng năm.', 0.000, 0, 0, 2, 22, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(215, '9786041005167', 'Ngọn đèn không tắt', 'Cuốn sách “Ngọn Đèn Không Tắt” của tác giả Nguyễn Ngọc Tư là một tập truyện ngắn đầy hấp dẫn và thuyết phục về thanh niên hôm nay trên mọi mặt đời sống. Tác phẩm được viết với giọng văn mộc mạc, bình dị và ngôn ngữ đời thường, tạo nên một không khí tự nhiên về màu sắc và hương vị của mảnh đất cuối cùng của tổ quốc.', 0.000, 0, 0, 2, 22, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(216, '9786043943078', 'Hai Đứa Trẻ', 'Cuốn sách tập hợp những truyện ngắn đặc sắc của nhà văn Thạch Lam: Nắng trong vườn, Gió lạnh đầu mùa, Tiếng chim kêu, Đứa con đầu lòng, Bắt đầu, Nhà mẹ Lê, Một cơn giận, Hai đứa trẻ, Đứa con, Trong bóng tối buổi chiều, Cuốn sách bỏ quên, Dưới bóng hoàng lan,...', 0.000, 0, 0, 2, 23, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(217, '9786042198097', 'Hà Nội Băm Sáu Phố Phường', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0.000, 0, 0, 2, 23, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(218, '9780472068043', 'Số Đỏ', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0.000, 0, 0, 2, 24, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(219, '9786049638428', 'Làm Đĩ', 'Làm đĩ là một cuốn tiểu thuyết của nhà văn Việt Nam Vũ Trọng Phụng, tác phẩm được viết vào năm 1936 và xuất bản vào năm 1937. Đây được coi là cuốn tiểu thuyết đầu tiên của Việt Nam đề cập đến vấn đề mại dâm.', 0.000, 0, 0, 2, 24, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(220, '9786045326121', 'Chí Phèo', 'Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Chí Phèo cũng là tên nhân vật chính của truyện.', 0.000, 0, 0, 2, 25, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(221, '9786043724943', 'Lão Hạc', 'Lão Hạc là một truyện ngắn của nhà văn Nam Cao được viết năm 1943. Tác phẩm được đánh giá là một trong những truyện ngắn khá tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Tám.', 0.000, 0, 0, 2, 25, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(222, '9786045342411', 'Bức xúc không làm ta vô can', 'Bức xúc không làm ta vô can chính là cuốn sách đầu tiên về thể loại chính luận mà tác giả luôn theo đuổi, một tác phẩm mang tinh phần phản biện xã hội sâu sắc. Sách được xuất bản năm 2015, là tập hợp những bài bình về các vấn đề trong xã hội, các vấn đề về văn hóa, những hiện tượng xã hội đương thời.', 0.000, 0, 0, 2, 26, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(223, '9786045342411', 'Điểm đến của cuộc đời: đồng hành với người cận tử và những bài học cho cuộc sống', 'Điểm đến của cuộc đời kể lại một hành trình không thể nào quên cùng những người cận tử. Dấn thân vào một thế giới của những bi kịch và tổn thất khổng lồ, của phẩm giá và lòng tự trọng trong hoàn cảnh khắc nghiệt, của sự phản bội và sợ hãi, của tình yêu mãnh liệt và hy vọng khôn nguôi, tóm lại, của tất cả những gì thuộc về con người, ở mức độ dữ dội nhất, tác giả muốn đi tìm câu trả lời cho thôi thúc nội tâm: ta nên ứng xử thế nào trước cái chết, và sự chết có thể dạy ta điều gì cho cuộc sống?', 0.000, 0, 0, 2, 26, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(224, '9786042262279', 'Dế Mèn phiêu lưu ký', 'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của nhà văn Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là Con dế mèn do Nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941. Sau đó, được sự ủng hộ nhiệt tình của nhân dân, Tô Hoài viết thêm truyện Dế Mèn phiêu lưu ký.', 0.000, 0, 0, 2, 27, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(225, '8935212327985', 'Tắt đèn', 'Tắt đèn là một trong những tác phẩm văn học tiêu biểu nhất của nhà văn Ngô Tất Tố. Đây là một tác phẩm văn học hiện thực phê phán với nội dung nói về cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỉ XX dưới ách đô hộ của thực dân Pháp.', 0.000, 0, 0, 2, 28, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(226, '9786043943283', 'Lều chõng', 'Lều chõng là một tiểu thuyết phóng sự của nhà văn Ngô Tất Tố, ra mắt độc giả lần đầu ngày 10 tháng 3 năm 1939 tại Hà Nội.', 0.000, 0, 0, 2, 28, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(227, '8936067604634', 'Truyện Kiều', 'Đoạn trường tân thanh, thường được biết đến với cái tên đơn giản là Truyện Kiều, là một truyện thơ của đại thi hào Nguyễn Du. Đây được xem là truyện thơ nổi tiếng nhất và xét vào hàng kinh điển trong văn học Việt Nam, tác phẩm được viết bằng chữ Nôm, theo thể lục bát, gồm 3.254 câu.', 0.000, 0, 0, 2, 29, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(228, '8935081111609', 'Hiện Tượng Học Tinh Thần', 'Có thể khẳng định một cách chắc chắn rằng Hiện tượng học Tinh thần là một trong các tác phẩm khó nhất và tham vọng nhất trong kho tàng triết văn thế giới. Tuy thế, bất chấp nhận định của W. Winderlband hơn 100 năm trước “Giống người đã có thể hiểu được quyển Hiện tượng học Tinh thần của Hegel đang trên đà tuyệt chủng. Giờ đây, ngay số người đã chịu khó đọc tác phẩm ấy từ đầu đến cuối chắc cũng chỉ còn đếm được trên đầu ngón tay mà thôi” thì Hiện tượng học Tinh thần vẫn cứ tiếp tục có ma lực dị thường. Và muốn tìm hiểu về Hegel không còn cách nào khác chúng ta phải bắt đầu với Hiện tượng học Tinh thần – tác phẩm lớn đầu tiên và cũng là tác phẩm thiên tài nhất của ông.', 0.000, 0, 0, 2, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(229, '8935081112804', 'Trò Chuyện Triết Học Tập 1', 'Ở nơi chợ búa ồn ã bán mua, nơi chợ đời bụi bặm, triết học héo lánh tới làm gì, có héo lánh tới nổi không? Hẳn nhiều người đã không khỏi ái ngại, đặt ra câu hỏi ấy khi thấy trên tờ Sài Gòn Tiếp Thị  mà như tên gọi của nó, là cầu nối giữa doanh nghiệp và người tiêu dùng, nơi tiếp cận thị trường của doanh nghiệp, nói cách khác là một thứ chợ - xuất hiện một chuyên mục gọi là Trò chuyện triết học. Với nhiều người, triết học là cái gì đó cao siêu, xa vời, chỉ có thể kính nhi viễn chi chứ chẳng ăn nhập gì với cuộc sống trần trụi, với thời buổi mà con người phải lặn hụp mệt nhoài trong cuộc mưu sinh, phải nhanh mắt nhanh tay chụp giựt cho mình những thứ có thể chụp giựt được, phải đối diện với bao nhiêu câu hỏi, bao nhiêu thách thức của cuộc sống trước mặt. Nói tóm lại, triết học là cái gì đó vô bổ, chỉ để dành cho những kẻ rỗi hơi.', 0.000, 0, 0, 2, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(230, '8935081112491', 'Trò Chuyện Triết Học (Tập 2)', 'Triết học là một môn học không khó nhưng để nói chuyện về triết học cho mọi người nghe, mọi người cùng hiểu thì không phải dễ. Nhà nghiên cứu Bùi Văn Nam Sơn đã làm được điều ở vế thứ hai thông qua cuốn sách quý này. Đây không phải là cuốn sách nhập môn triết học và cũng không hẳn là cuốn sách về lịch sử triết học, tuy nhiên nó có đủ các yếu tố của 2 loại sách đó.', 0.000, 0, 0, 2, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(231, '978604943352', 'Trò Chuyện Triết Học (Tập 3)', 'Trò Chuyện Triết Học tiếp tục tập hợp các bài viết từ nhiều thời điểm và cơ hội khác nhau. Có khi là lời giới thiệu hay lời bạt cho những quyển sách hay. Có khi là phần đóng góp nhỏ bé của tác giả cho các tập Kỷ yếu mừng các danh nhân văn hóa - khoa học trong nước và các sự kiện văn hóa lớn trên thế giới. Có khi là những bài báo, bài trả lời phỏng vấn... trong nhiều dịp khác nhau. Chúng được tập hợp và sắp xếp không theo trình tự thời gian hay một định hướng có trước nào cả. Để giữ được tính ngẫu hứng, đa dạng và... vui vẻ!', 0.000, 0, 0, 2, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(232, '8935081112491', 'Trò chuyện triết học trọn bộ 9 tập', 'Những người đọc không chuyên có thể dễ dàng tìm hiểu về triết học, các khái niệm cơ bản của triết học, các trào lưu và các triết gia kinh điển thông qua những lời văn nhẹ nhàng, cô đọng và hóm hỉnh. Qua cuốn sách, bạn đọc có thể hiểu được triết học là gì và lợi ích của nó đối với cuộc sống thường nhật. Tuy nhiên, tác giả không định nghĩa nó rõ ràng như cách thông thường người ta hay làm, việc hiểu được khái niệm là sản phẩm của quá trình tư duy - biết - hiểu - cảm - ngộ mà tác giả là người thầy, người dẫn đường tin cậy và uyên thâm: cung cấp tư liệu, hướng dẫn phương pháp và giảng giải một cách dễ hiểu nhất. Không thể có triết học nếu không có sự tự giải phóng tâm hồn. Điều ấy đòi hỏi sự dũng cảm, kể cả sự dũng cảm dấn mình vào chỗ bấp bênh, nghi ngờ, thất vọng.', 0.000, 0, 0, 2, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(233, '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(234, '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(235, '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(236, '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(237, '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(238, '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(239, '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0.000, 0, 0, 2, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(240, '9780545010221', 'The God Equation', 'The God Equation: The Quest for a Theory of Everything is a popular science book by the futurist and physicist Michio Kaku. The book was initially published on April 6, 2021, by Doubleday. The book debuted at number six on The New York Times nonfiction best-seller list for the week ending April 10, 2021.', 0.000, 0, 0, 2, 15, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(241, '9780141439556', 'Đồi gió hú', 'Giới thiệu về Đồi Gió Hú cuốn tiểu thuyết bắt nguồn từ trang viên Yorkshire trên cánh đồng hoang của câu chuyện. Câu chuyện tập trung vào tình yêu trọn vẹn, nồng nàn nhưng cuối cùng cũng phải chịu số phận giữa Catherine Earnshaw và Heathcliff, cũng như việc niềm đam mê không được giải quyết này cuối cùng đã hủy hoại họ và những người xung quanh như thế nào.', 200.000, 0, 0, 3, 1, 1, '2023-11-18 12:32:25', '2023-11-18 12:32:25'),
(242, '9780141439556', 'Wuthering Heights', 'Wuthering Heights is the first and only novel by the English author Emily Brontë, initially published in 1847 under her pen name Ellis Bell.', 0.000, 0, 0, 3, 1, 4, '2023-11-18 12:32:25', '2023-11-18 12:32:25'),
(243, '9780141439518', 'Kiêu hãnh và định kiến', 'Kiêu hãnh và định kiến là tác phẩm nổi tiếng nhất của nhà văn Anh Jane Austen. Tiểu thuyết được viết từ năm 1796 đến năm 1797 và xuất bản năm 1813. Câu chuyện nói về tình yêu và hôn nhân của tầng lớp quý tộc nhỏ tại Anh vào đầu thế kỷ 19.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:33:03', '2023-11-18 12:33:03'),
(244, '9780141439518', 'Pride and Prejudice', 'Pride and Prejudice is an 1813 novel of manners by English author Jane Austen. The novel follows the character development of Elizabeth Bennet, the protagonist of the book, who learns about the repercussions of hasty judgments and comes to appreciate the difference between superficial goodness and actual goodness.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:33:03', '2023-11-18 12:33:03');
INSERT INTO `books` (`id`, `isbn_13`, `title`, `book_description`, `price`, `sale_off`, `views`, `fm_id`, `au_id`, `pub_id`, `creation_date`, `updation_date`) VALUES
(245, '9780141439587', 'Emma', 'Jane Austen là một tiểu thuyết gia người Anh. Bà nổi tiếng với sáu cuốn tiểu thuyết lấy bối cảnh giới địa chủ trung lưu Anh vào cuối thế kỷ 18. Cốt truyện của Austen thường phản ánh tình cảnh phụ thuộc của người phụ nữ vào hôn nhân như là cứu cánh duy nhất để đảm bảo vị thế xã hội và lợi ích vật chất.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:33:03', '2023-11-18 12:33:03'),
(246, '9780141439587', 'Emma', 'Emma is a novel written by English author Jane Austen. It is set in the fictional country village of Highbury and the surrounding estates of Hartfield, Randalls and Donwell Abbey, and involves the relationships among people from a small number of families.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:33:53', '2023-11-18 12:33:53'),
(247, '9780141439662', 'Sense and Sensibility', 'Sense and Sensibility is the first novel by the English author Jane Austen, published in 1811. It was published anonymously; By A Lady appears on the title page where the author\'s name might have been. It tells the story of the Dashwood sisters, Elinor and Marianne as they come of age.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:33:53', '2023-11-18 12:33:53'),
(248, '9798861522953', 'Thuyết phục', 'Thuyết phục là cuốn tiểu thuyết cuối cùng được hoàn thành bởi tác giả người Anh Jane Austen. Nó được xuất bản vào ngày 20 tháng 12 năm 1817, cùng với Tu viện Northanger, sáu tháng sau khi bà qua đời, mặc dù trang tiêu đề ghi ngày 1818.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:33:53', '2023-11-18 12:33:53'),
(249, '9798861522953', 'Persuasion: Novel', 'Persuasion is the last novel completed by the English author Jane Austen. It was published on 20 December 1817, along with Northanger Abbey, six months after her death, although the title page is dated 1818.', 0.000, 0, 0, 3, 2, 1, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(250, '9781408855652', 'Harry Potter và Hòn đá Phù thủy', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(251, '9781338878936', 'Harry Potter và phòng chứa bí mật', 'Harry Potter và tên tù nhân ngục Azkaban là một quyển tiểu thuyết thuộc thể loại giả tưởng kỳ ảo được viết bởi văn sĩ người Anh J. K. Rowling, đây cũng là tập thứ 3 trong bộ truyện Harry Potter. Quyển sách theo chân Harry Potter, cậu phù thủy nhỏ, trong năm học thứ ba của mình tại Trường Phù thủy và Pháp sư Hogwarts.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(252, '9781338815283', 'Harry Potter Và Tên Tù Nhân Ngục Azkaban', 'Harry Potter và Hòn đá Phù thủy là tiểu thuyết kỳ ảo của văn sĩ người Anh J. K. Rowling. Đây là cuốn đầu trong series tiểu thuyết Harry Potter và là tiểu thuyết đầu tay của J. K. Rowling.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:35:05', '2023-11-18 12:35:05'),
(253, '9780439139595', 'Harry Potter Và Chiếc Cốc Lửa', 'Harry Potter và chiếc cốc lửa là một quyển sách thuộc thể loại giả tưởng kỳ ảo được viết bởi tác giả người Anh J. K. Rowling và đây cũng là phần thứ tư trong bộ tiểu thuyết Harry Potter.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(254, '9780439358064', 'Harry Potter Và Hội Phượng Hoàng', 'Harry Potter và hội Phượng hoàng là quyển thứ 5 trong bộ sách Harry Potter của nhà văn J. K. Rowling. Quyển này được đồng loạt xuất bản vào ngày 21 tháng 6 năm 2003 tại Anh, Hoa Kỳ, Canada, Úc và một vài quốc gia khác. Trong ngày đầu tiên xuất bản, nó đã bán được gần 7 triệu cuốn riêng tại Hoa Kỳ và Anh.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(255, '9781408855652', 'Harry Potter Và Hoàng Tử Lai', 'Harry Potter và Hoàng tử lai là quyển sách thứ sáu trong bộ sách giả tưởng nổi tiếng Harry Potter của tác giả J.K. Rowling. Cũng như các quyển trước, nó cũng trở thành một trong những bestseller của năm nó xuất bản.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(256, '9780545010221', 'Harry Potter Và Bảo Bối Tử Thần', 'Harry Potter và Bảo bối Tử thần là cuốn sách thứ bảy và cũng là cuối cùng của bộ tiểu thuyết giả tưởng Harry Potter của nhà văn Anh J.K. Rowling. Nguyên bản tiếng Anh được phát hành đồng thời tại Anh, Hoa Kỳ, Canada và một số nước khác vào ngày 21 tháng 7 năm 2007.', 0.000, 0, 0, 3, 3, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(257, '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(258, '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(259, '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(260, '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(261, '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(262, '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(263, '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(264, '9780143136132', 'Bà Dalloway', 'Bà Dalloway là một cuốn tiểu thuyết của Virginia Woolf xuất bản vào ngày 14 tháng 5 năm 1925. Nó kể chi tiết một ngày trong cuộc đời của Clarissa Dalloway, một phụ nữ thuộc tầng lớp thượng lưu hư cấu ở Anh sau Thế chiến thứ nhất. Đây là một trong những tiểu thuyết nổi tiếng nhất của Woolf.', 0.000, 0, 0, 3, 4, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(265, '9780143136132', 'Mrs. Dalloway', 'Dalloway, novel by Virginia Woolf published in 1925. It examines one day in the life of Clarissa Dalloway, an upperclass Londoner married to a member of Parliament. Mrs. Dalloway is essentially plotless; what action there is takes place mainly in the characters consciousness.', 0.000, 0, 0, 3, 4, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(266, '9780143136132', 'Mrs. Dalloway', 'Dalloway, novel by Virginia Woolf published in 1925. It examines one day in the life of Clarissa Dalloway, an upperclass Londoner married to a member of Parliament. Mrs. Dalloway is essentially plotless; what action there is takes place mainly in the characters consciousness.', 0.000, 0, 0, 3, 4, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(267, '9780143131847', 'Frankenstein', 'Frankenstein: hay The Modern Prometheus là một cuốn tiểu thuyết năm 1818 được viết bởi tác giả người Anh Mary Shelley. Frankenstein kể câu chuyện về Victor Frankenstein, một nhà khoa học trẻ, người đã tạo ra một sinh vật có trí tuệ trong một thí nghiệm khoa học không chính thống.', 0.000, 0, 0, 3, 4, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(268, '9780143131847', 'Frankenstein', 'The book tells the story of Victor Frankenstein, a Swiss student of natural science who creates an artificial man from pieces of corpses and brings his creature to life. Though it initially seeks affection, the monster inspires loathing in everyone who meets it.', 0.000, 0, 0, 3, 4, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(269, '9789384225483', 'Ông già và biển cả', 'Ông già và Biển cả là một tiểu thuyết ngắn được Ernest Hemingway viết ở Cuba năm 1951 và xuất bản năm 1952. Nó là truyện ngắn dạng viễn tưởng cuối cùng được Hemingway viết và được xuất bản khi ông còn sống. Đây cũng là tác phẩm nổi tiếng và là một trong những tác phẩm đỉnh cao trong sự nghiệp sáng tác của nhà văn.', 0.000, 0, 0, 3, 6, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(270, '9789384225483', 'The Old Man and the Sea', 'The Old Man and the Sea is a 1952 novella written by the American author Ernest Hemingway. Written between December 1950 and February 1951, it tells the story of Santiago, an aging fisherman who catches a giant marlin after a long struggle, but then loses his bounty to sharks.', 0.000, 0, 0, 3, 6, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(271, '9780684803357', 'Chuông nguyện hồn ai', 'Chuông nguyện hồn ai là tiểu thuyết được xuất bản năm 1940 của nhà văn Mỹ Ernest Miller Hemingway. Cuốn tiểu thuyết viết về Robert Jordan, một người Mỹ thuộc Lữ đoàn quốc tế, tham gia chống Phát xít trong cuộc nội chiến Tây Ban Nha.', 0.000, 0, 0, 3, 6, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(272, '9780684803357', 'For Whom the Bell Tolls', 'For Whom the Bell Tolls is a novel by Ernest Hemingway published in 1940. It tells the story of Robert Jordan, a young American volunteer attached to a Republican guerrilla unit during the Spanish Civil War. As a dynamiter, he is assigned to blow up a bridge during an attack on the city of Segovia.', 0.000, 0, 0, 3, 6, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(273, '9780140447934', 'Chiến tranh và hòa bình', 'Chiến tranh và hòa bình là một tiểu thuyết của Lev Nikolayevich Tolstoy, được xuất bản rải rác trong giai đoạn 1865–1869. Tác phẩm được xem là thành tựu văn học xuất sắc nhất của Tolstoy, cũng như một tác phẩm kinh điển của văn học thế giới.', 0.000, 0, 0, 3, 7, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(274, '9780140447934', 'War and Peace', 'War and Peace is a literary work by Russian author Leo Tolstoy. Set during the Napoleonic Wars, the work mixes fictional narrative with chapters discussing history and philosophy. First published serially beginning in 1865, the work was rewritten and published in its entirety in 1869.', 0.000, 0, 0, 3, 6, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(275, '9780684803357', 'Anna Karenina', 'Anna Karenina là một tiểu thuyết của nhà văn Nga Lev Nikolayevich Tolstoy, được đăng tải nhiều kỳ trên tờ báo Ruskii Vestnik từ năm 1873 đến năm 1877 trước khi xuất bản thành ấn phẩm hoàn chỉnh. Anna Karenina được xem như là một đỉnh cao của tiểu thuyết hiện thực.', 0.000, 0, 0, 3, 7, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(276, '9780684803357', 'Anna Karenina', 'Anna Karenina is a novel by the Russian author Leo Tolstoy, first published in book form in 1878. Considered to be one of the greatest works of literature ever written, Tolstoy himself called it his first true novel.', 0.000, 0, 0, 3, 7, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(277, '9780553210354', 'Cái chết của Ivan Ilyich', 'Cái chết của Ivan Ilyich, xuất bản lần đầu năm 1886, là một tiểu thuyết của Leo Tolstoy, được coi là một trong những kiệt tác của tiểu thuyết cuối cùng của ông, được viết ngay sau khi ông cải đạo vào cuối những năm 1870.', 0.000, 0, 0, 3, 7, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(278, '9780553210354', 'The Death of Ivan Ilyich', 'The Death of Ivan Ilyich, first published in 1886, is a novella by Leo Tolstoy, considered one of the masterpieces of his late fiction, written shortly after his religious conversion of the late 1870s.', 0.000, 0, 0, 3, 7, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(279, '9780486415871', 'Tội ác và hình phạt', 'Tội ác và hình phạt là một tiểu thuyết của nhà văn Nga Fyodor Mikhailovich Dostoyevsky. Tiểu thuyết này cùng với Anh em nhà Karamazov là hai tác phẩm nổi tiếng nhất của Dostoevsky. Tạp chí Times đã bình chọn Tội ác và hình phạt là một trong số những cuốn sách vĩ đại nhất mọi thời đại.', 0.000, 0, 0, 3, 8, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(280, '9780486415871', 'Crime and Punishment', 'Crime and Punishment is a novel by the Russian author Fyodor Dostoevsky. It was first published in the literary journal The Russian Messenger in twelve monthly installments during 1866. It was later published in a single volume.', 0.000, 0, 0, 3, 8, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(281, '9780374528379', 'Anh em nhà Karamazov', 'Anh em nhà Karamazov là tác phẩm cuối cùng của Fyodor Dostoevsky. Fyodor Dostoevsky thuộc loại thiên tài hiếm hoi mà càng về cuối đời thì sự nghiệp sáng tác càng lên tới đỉnh cao hơn. Anh em nhà Karamazov là tác phẩm vĩ đại nhất của ông.', 0.000, 0, 0, 3, 8, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(282, '9780374528379', 'The Brothers Karamazov', 'The Brothers Karamazov, also translated as The Karamazov Brothers, is the last novel by Russian author Fyodor Dostoevsky. Dostoevsky spent nearly two years writing The Brothers Karamazov, which was published as a serial in The Russian Messenger from January 1879 to November 1880.', 0.000, 0, 0, 3, 8, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(283, '9780679734512', 'Ác quỷ', 'Ác quỷ là một cuốn tiểu thuyết của Fyodor Dostoevsky, được xuất bản lần đầu trên tạp chí The Russian Messenger vào năm 1871–72. Nó được coi là một trong bốn kiệt tác được Dostoevsky viết sau khi ông trở về từ cuộc lưu đày ở Siberia, cùng với Tội ác và Trừng phạt, Thằng ngốc và Anh em nhà Karamazov.', 0.000, 0, 0, 3, 8, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(284, '9780679734512', 'Demons (Dostoevsky novel)', 'Demons is a novel by Fyodor Dostoevsky, first published in the journal The Russian Messenger in 1871–72. It is considered one of the four masterworks written by Dostoevsky after his return from Siberian exile, along with Crime and Punishment, The Idiot, and The Brothers Karamazov.', 0.000, 0, 0, 3, 8, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(285, '9781503215672', 'Những cuộc phiêu lưu của Tom Sawyer', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 0.000, 0, 0, 3, 9, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(286, '9781503215672', 'The Adventures of Tom Sawyer', 'The Adventures of Tom Sawyer is an 1876 novel by Mark Twain about a boy growing up along the Mississippi River. It is set in the 1840s in the town of St. Petersburg, which is based on Hannibal, Missouri, where Twain lived as a boy.', 0.000, 0, 0, 3, 9, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(287, '9780143107323', 'Những cuộc phiêu lưu của Huckleberry Finn', 'Những cuộc phiêu lưu của Tom Sawyer là một cuốn tiểu thuyết năm 1876 của Mark Twain về một cậu bé lớn lên dọc theo sông Mississippi. Nó lấy bối cảnh vào những năm 1840 tại thị trấn St. Petersburg, dựa trên Hannibal, Missouri, nơi Twain sống khi còn là một cậu bé.', 0.000, 0, 0, 3, 9, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(288, '9780143107323', 'Adventures of Huckleberry Finn', 'Adventures of Huckleberry Finn is a novel by American author Mark Twain, which was first published in the United Kingdom in December 1884 and in the United States in February 1885.', 0.000, 0, 0, 3, 9, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(289, '9780679722762', 'Ulysses', 'Ulysses là tiểu thuyết gồm 3 phần của James Joyce xuất bản lần đầu năm 1922. Với ẩn dụ về sử thi Odysseus, thủ pháp dòng ý thức và nội dung được nén chặt bằng những sự kiện miên man trôi theo suy tưởng của các nhân vật diễn ra chỉ trong một ngày 16 tháng 6 năm 1904, tác phẩm được tạp chí Time đánh giá là một trong số những kiệt tác văn chương lớn nhất thế giới thế kỷ 20.', 0.000, 0, 0, 3, 10, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(290, '9780679722762', 'Ulysses', 'Ulysses is a modernist novel by Irish writer James Joyce. Parts of it were first serialized in the American journal The Little Review from March 1918 to December 1920, and the entire work was published in Paris by Sylvia Beach on 2 February 1922, Joyce\'s fortieth birthday.', 0.000, 0, 0, 3, 10, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(291, '9780140186475', 'Người Dublin', 'Dubliners là một tuyển tập gồm mười lăm truyện ngắn của James Joyce, được xuất bản lần đầu tiên vào năm 1914. Cuốn sách này mô tả một cách tự nhiên về cuộc sống của tầng lớp trung lưu Ireland trong và xung quanh Dublin trong những năm đầu của thế kỷ 20.', 0.000, 0, 0, 3, 10, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(292, '9780140186475', 'Dubliners', 'Dubliners is a collection of fifteen short stories by James Joyce, first published in 1914. It presents a naturalistic depiction of Irish middle class life in and around Dublin in the early years of the 20th century.', 0.000, 0, 0, 3, 10, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(293, '9780316024976', 'Những kẻ xuất chúng', 'Những kẻ ngoài lề: Câu chuyện thành công là cuốn sách phi hư cấu do Malcolm Gladwell viết và được Little, Brown and Company xuất bản vào ngày 18 tháng 11 năm 2008. Trong Outlier, Gladwell xem xét các yếu tố góp phần vào mức độ thành công cao.', 0.000, 0, 0, 3, 11, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(294, '9780141036250', 'Outliers: The Story of Success', 'Outliers: The Story of Success is the nonfiction book written by Malcolm Gladwell and published by Little, Brown and Company on November 18, 2008. In Outliers, Gladwell examines the factors that contribute to high levels of success.', 0.000, 0, 0, 3, 11, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(295, '9780316346627', 'Điểm bùng phát', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 0.000, 0, 0, 3, 11, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(296, '9780316346627', 'The Tipping Point: How Little Things Can Make a Big Difference', 'The Tipping Point: How Little Things Can Make a Big Difference is the debut book by Malcolm Gladwell, first published by Little, Brown in 2000. Gladwell defines a tipping point as the moment of critical mass, the threshold, the boiling point.', 0.000, 0, 0, 3, 11, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(297, '9788483468913', 'Lý thuyết về tất cả mọi thứ', 'Trong tác phẩm xuất sắc của nhà vật lý Stephen Hawking, Lược sử thời gian, ông đã trình bày cho chúng ta một cái nhìn mới táo bạo về vũ trụ của chúng ta, nó bắt đầu như thế nào và quan điểm cũ của chúng ta về vật lý cũng như các lý thuyết mệt mỏi về sự hình thành vũ trụ không còn phù hợp như thế nào nữa.', 0.000, 0, 0, 3, 12, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(298, '9788817079761', 'The illustrated theory of everything: The origin and fate of the universe', 'In physicist Stephen Hawking\'s brilliant opus, A Brief History of Time, he presented us with a bold new look at our universe, how it began, and how our old views of physics and tired theories about the creation of the universe were no longer relevant.', 0.000, 0, 0, 3, 12, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(299, '9780553380163', 'Lược sử thời gian', 'Điểm tới hạn: Những điều nhỏ bé có thể tạo nên sự khác biệt lớn như thế nào là cuốn sách đầu tay của Malcolm Gladwell, được Little, Brown xuất bản lần đầu vào năm 2000. Gladwell định nghĩa điểm tới hạn là thời điểm của khối lượng tới hạn, ngưỡng, điểm sôi.', 0.000, 0, 0, 3, 12, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(300, '9780553380163', 'A Brief History of Time', 'A Brief History of Time: From the Big Bang to Black Holes is a book on theoretical cosmology by English physicist Stephen Hawking. It was first published in 1988. Hawking wrote the book for readers who had no prior knowledge of physics.', 0.000, 0, 0, 3, 12, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(301, '9782070257539', 'Buồn nôn', 'Buồn nôn là một tiểu thuyết triết học của triết gia hiện sinh Jean-Paul Sartre, xuất bản năm 1938. Đây là tiểu thuyết đầu tay của Sartre. Cuốn tiểu thuyết diễn ra ở Bouville, một thị trấn tương tự như Le Havre.', 0.000, 0, 0, 3, 13, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(302, '9782070257539', 'Nausea', 'Nausea is a philosophical novel by the existentialist philosopher Jean-Paul Sartre, published in 1938. It is Sartre\'s first novel. The novel takes place in \'Bouville\' a town similar to Le Havre.', 0.000, 0, 0, 3, 13, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(303, '9788532666826', 'Tồn tại và hư vô', 'L\'Être et le Néant là một tác phẩm lớn, hơn 700 trang sách, của Jean-Paul Sartre, một trong những nhà triết học hàng đầu của Pháp thế kỷ 20, một trong những người sáng lập ra Chủ nghĩa hiện sinh. Lúc L\'Être et le Néant ra đời, chẳng mấy người hiểu nó.', 0.000, 0, 0, 3, 13, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(304, '9789754680096', 'Existentialism Is a Humanism', 'Existentialism Is a Humanism is a 1946 work by the philosopher Jean-Paul Sartre, based on a lecture by the same name he gave at Club Maintenant in Paris, on 29 October 1945.', 0.000, 0, 0, 3, 13, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(305, '9780241989692', 'Những Con Số Biết Nói  71 Câu Chuyện Phơi Bày Sự Thật Về Thế Giới Chúng Ta Đang Sống', 'Chứa đựng những thông tin hấp dẫn và những ví dụ đáng nhớ, Numbers Don\'t Lie tiết lộ cách Hoa Kỳ đang dẫn đầu xu hướng tiêu thụ thịt gà ngày càng tăng trên toàn thế giới, việc tiêm chủng mang lại lợi tức đầu tư tốt nhất và tại sao ô tô điện không tuyệt vời như chúng ta nghĩ.', 0.000, 0, 0, 3, 14, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(306, '9780241989692', 'Numbers Don\'t Lie: 71 Stories to Help Us Understand the Modern World', 'An essential guide to understanding how numbers reveal the true state of our world–exploring a wide range of topics including energy, the environment, technology, transportation, and food production. Vaclav Smil\'s mission is to make facts matter.', 0.000, 0, 0, 3, 14, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(307, '9780593297063', 'How the World Really Works: The Science Behind How We Got Here and Where We\'re Going', 'In How the World Really Works: A Scientist\'s Guide to Our Past, Present and Future, Vaclav Smil explores seven fundamental areas that govern human survival and prosperity, covering topics such as food production, energy and globalisation.', 0.000, 0, 0, 3, 14, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(308, '9780307473332', 'Vật lý của tương lai', 'Vật lý của tương lai: Khoa học sẽ định hình số phận con người và cuộc sống hàng ngày của chúng ta như thế nào vào năm 2100 là một cuốn sách năm 2011 của nhà vật lý lý thuyết Michio Kaku, tác giả của Hyperspace và Vật lý bất khả thi.', 0.000, 0, 0, 3, 15, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(309, '9780307473332', 'Vật lý của tương lai', 'Vật lý của tương lai: Khoa học sẽ định hình số phận con người và cuộc sống hàng ngày của chúng ta như thế nào vào năm 2100 là một cuốn sách năm 2011 của nhà vật lý lý thuyết Michio Kaku, tác giả của Hyperspace và Vật lý bất khả thi.', 0.000, 0, 0, 3, 15, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(310, '9780307473332', 'Physics of the Future', 'Physics of the Future: How Science Will Shape Human Destiny and Our Daily Lives by the Year 2100 is a 2011 book by theoretical physicist Michio Kaku, author of Hyperspace and Physics of the Impossible. In it Kaku speculates about possible future technological development over the next 100 years.', 0.000, 0, 0, 3, 15, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(311, '9780307473332', 'Physics of the Future', 'Physics of the Future: How Science Will Shape Human Destiny and Our Daily Lives by the Year 2100 is a 2011 book by theoretical physicist Michio Kaku, author of Hyperspace and Physics of the Impossible. In it Kaku speculates about possible future technological development over the next 100 years.', 0.000, 0, 0, 3, 15, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(312, '9780717802418', 'The Communist Manifesto', 'The Communist Manifesto, originally the Manifesto of the Communist Party, is a political pamphlet written by Karl Marx and Friedrich Engels, commissioned by the Communist League and originally published in London in 1848.', 0.000, 0, 0, 3, 16, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(313, '9780486477480', 'Capital, Volume I', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 3, 16, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(314, '9780853150275', 'Capital, Volume II', 'Capital. A Critique of Political Economy. Volume I: The Process of Production of Capital is the first of three treatises that make up Das Kapital, a critique of political economy by the German philosopher and economist Karl Marx.', 0.000, 0, 0, 3, 16, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(315, '9780679720201', 'Người xa lạ', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0.000, 0, 0, 3, 17, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(316, '9780679720201', 'The Stranger', 'Người xa lạ là một tiểu thuyết của Albert Camus được viết vào năm 1942. Đây là một tác phẩm lạ thường nói về một người đàn ông bình thường, người mà cuối cùng đã bị tống giam vì tội giết người, và ngồi chờ bị hành hình.', 0.000, 0, 0, 3, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(317, '9780525564454', 'Thần thoại Sisyphus', 'Huyền thoại về Sisyphus là một tiểu luận triết học năm 1942 của Albert Camus. Chịu ảnh hưởng của các triết gia như Søren Kierkegaard, Arthur Schopenhauer và Friedrich Nietzsche, Camus giới thiệu triết lý phi lý của mình.', 0.000, 0, 0, 3, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(318, '9780679720218', 'Dịch hạch', 'Dịch hạch là một cuốn tiểu thuyết nổi tiếng của Albert Camus xuất bản năm 1947. Một vài nhân vật của Dịch hạch đã xuất hiện trong cuốn sổ tay của Camus viết ở Alger năm 1938. Nhưng hơn cả là ở Oran, Algérie từ cuối năm 1940 đến mùa xuân năm 1942, rồi ở Pháp, Camus đã soạn thảo lại cuốn tiểu thuyết của mình.', 0.000, 0, 0, 3, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(319, '9780679720201', 'The Stranger', 'The Stranger, also published in English as The Outsider, is a 1942 novella written by French author Albert Camus. The first of Camus\' novels published in his lifetime, the story follows Meursault, an indifferent settler in French Algeria, who, weeks after his mother\'s funeral, kills an unnamed Arab man in Algiers.', 0.000, 0, 0, 3, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(320, '9780525564454', 'The Myth of Sisyphus', 'The Myth of Sisyphus is a 1942 philosophical essay by Albert Camus. Influenced by philosophers such as Søren Kierkegaard, Arthur Schopenhauer, and Friedrich Nietzsche, Camus introduces his philosophy of the absurd.', 0.000, 0, 0, 3, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(321, '9780679720218', 'The Plague', 'The Plague is a 1947 absurdist novel by Albert Camus. It tells the story from the point of view of a narrator in the midst of a plague sweeping the French Algerian city of Oran. The narrator remains unknown until the start of the last chapter.', 0.000, 0, 0, 3, 17, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(322, '9780307277787', 'Giới tính thứ hai', 'Giới tính hạng hai là cuốn sách của nhà triết học hiện sinh người Pháp Simone de Beauvoir, xuất bản năm 1949. Trong cuốn sách, tác giả thảo luận về cách thức phụ nữ bị đối xử trong suốt chiều dài lịch sử. Beauvoir nghiên cứu và viết cuốn sách trong khoảng 14 tháng, từ năm 1946 đến năm 1949.', 0.000, 0, 0, 3, 18, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(323, '9780307277787', 'The Second Sex', 'The Second Sex is a 1949 book by the French existentialist philosopher Simone de Beauvoir, in which the author discusses the treatment of women in the present society as well as throughout all of history. Beauvoir researched and wrote the book in about 14 months between 1946 and 1949.', 0.000, 0, 0, 3, 18, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(324, '9780143039884', 'Eichmann ở Jerusalem', 'Eichmann ở Jerusalem: Một phóng sự về Sự Tầm Thường của Cái Ác là cuốn sách xuất bản năm 1963 của nhà lý luận chính trị Hannah Arendt.', 0.000, 0, 0, 3, 19, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(325, '9780143039884', 'Eichmann in Jerusalem', 'Eichmann in Jerusalem: A Report on the Banality of Evil is a 1963 book by political thinker Hannah Arendt. Arendt, a Jew who fled Germany during Adolf Hitler\'s rise to power, reported on the trial of Adolf Eichmann, one of the major organizers of the Holocaust, for The New Yorker.', 0.000, 0, 0, 3, 19, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(326, '9780156701532', 'The Origins of Totalitarianism', 'The Origins of Totalitarianism, published in 1951, was Hannah Arendt\'s first major work, wherein she describes and analyzes Nazism and Stalinism as the major totalitarian political movements of the first half of the 20th century.', 0.000, 0, 0, 3, 19, 5, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(327, '9788087888957', 'On Violence', 'An analysis of the nature, causes, and significance of violence in the second half of the twentieth century. Arendt also reexamines the relationship between war, politics, violence, and power.', 0.000, 0, 0, 3, 19, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(328, '9780618249060', 'Mùa xuân vắng lặng', 'Mùa xuân vắng lặng là một cuốn sách về đề tài khoa học môi trường của Rachel Carson. Tác phẩm được xuất bản vào ngày 27 tháng 9 năm 1962 và ghi lại những tác động xấu đến môi trường do sử dụng bừa bãi thuốc bảo vệ thực vật.', 0.000, 0, 0, 3, 20, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(329, '9780618249060', 'Silent Spring', 'Silent Spring is an environmental science book by Rachel Carson. Published on September 27, 1962, the book documented the environmental harm caused by the indiscriminate use of pesticides.', 0.000, 0, 0, 3, 20, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(330, '9780067575208', 'The Sense of Wonder', 'The Sense of Wonder relates Carson\'s intimate account of adventures with her young nephew, Roger, as they enjoy walks along the rocky coast of Maine and through dense forests and open fields, observing wildlife, strange plants, moonlight, and storm clouds and listening to the living music of insects in the underbrush.', 0.000, 0, 0, 3, 20, 4, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(331, '9786041004757', 'Cho tôi xin một vé đi tuổi thơ', 'Cho tôi xin một vé đi tuổi thơ là truyện ngắn của nhà văn Nguyễn Nhật Ánh. Tác phẩm là một trong những sáng tác thành công nhất của ông và nhận được Giải thưởng Văn học ASEAN của năm 2010. Nguyễn Nhật Ánh viết ở mặt sau cuốn sách. Tôi viết cuốn sách này không dành cho trẻ em. Tôi viết cho những ai từng là trẻ em.', 0.000, 0, 0, 3, 21, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(332, '9786041004757', 'Mắt biếc', 'Mắt biếc là tiểu thuyết của nhà văn Nguyễn Nhật Ánh trong loạt truyện viết về tình yêu thanh thiếu niên của tác giả này cùng với Thằng quỷ nhỏ, Cô gái đến từ hôm qua,... Đây được xem là một trong những tác phẩm tiêu biểu của Nguyễn Nhật Ánh.', 0.000, 0, 0, 3, 21, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(333, '9786041000698', 'Tôi thấy hoa vàng trên cỏ xanh', 'Tôi thấy hoa vàng trên cỏ xanh là một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh, xuất bản lần đầu tại Việt Nam vào ngày 9 tháng 12 năm 2010 bởi Nhà xuất bản Trẻ với phần tranh minh họa do Đỗ Hoàng Tường thực hiện.', 0.000, 0, 0, 3, 21, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(334, '9786041004689', 'Cánh đồng bất tận', 'Cánh đồng bất tận là tên một tập truyện ngắn phát hành năm 2005 của Nguyễn Ngọc Tư, đồng thời cũng là tên một truyện trong tập truyện ngắn đó được đăng báo lần đầu cùng năm.', 0.000, 0, 0, 3, 22, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(335, '9786041005167', 'Ngọn đèn không tắt', 'Cuốn sách “Ngọn Đèn Không Tắt” của tác giả Nguyễn Ngọc Tư là một tập truyện ngắn đầy hấp dẫn và thuyết phục về thanh niên hôm nay trên mọi mặt đời sống. Tác phẩm được viết với giọng văn mộc mạc, bình dị và ngôn ngữ đời thường, tạo nên một không khí tự nhiên về màu sắc và hương vị của mảnh đất cuối cùng của tổ quốc.', 0.000, 0, 0, 3, 22, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(336, '9786043943078', 'Hai Đứa Trẻ', 'Cuốn sách tập hợp những truyện ngắn đặc sắc của nhà văn Thạch Lam: Nắng trong vườn, Gió lạnh đầu mùa, Tiếng chim kêu, Đứa con đầu lòng, Bắt đầu, Nhà mẹ Lê, Một cơn giận, Hai đứa trẻ, Đứa con, Trong bóng tối buổi chiều, Cuốn sách bỏ quên, Dưới bóng hoàng lan,...', 0.000, 0, 0, 3, 23, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(337, '9786042198097', 'Hà Nội Băm Sáu Phố Phường', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0.000, 0, 0, 3, 23, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(338, '9780472068043', 'Số Đỏ', 'Văn học Việt Nam thời xưa có nhiều tác phẩm có giá trị to lớn về mặt nhân văn và nghệ thuật, đã được công nhận và chứng thực qua thời gian. Bộ sách Việt Nam danh tác bao gồm loạt tác phẩm đi cùng năm tháng như: Số đỏ (Vũ Trọng Phụng), Việc làng (Ngô Tất Tố), Gió đầu mùa, Hà Nội băm sáu phố phường (Thạch Lam), Miếng ngon Hà Nội (Vũ Bằng), Vang bóng một thời (Nguyễn Tuân). Hy vọng bộ sách sau khi tái bản sẽ giúp đông đảo tầng lớp độc giả thêm hiểu, tự hào và nâng niu kho tàng văn học nước nhà.', 0.000, 0, 0, 3, 24, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(339, '9786049638428', 'Làm Đĩ', 'Làm đĩ là một cuốn tiểu thuyết của nhà văn Việt Nam Vũ Trọng Phụng, tác phẩm được viết vào năm 1936 và xuất bản vào năm 1937. Đây được coi là cuốn tiểu thuyết đầu tiên của Việt Nam đề cập đến vấn đề mại dâm.', 0.000, 0, 0, 3, 24, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(340, '9786045326121', 'Chí Phèo', 'Chí Phèo là một truyện ngắn nổi tiếng của nhà văn Nam Cao viết vào tháng 2 năm 1941. Chí Phèo là một tác phẩm xuất sắc, thể hiện nghệ thuật viết truyện độc đáo của Nam Cao, đồng thời là một tấn bi kịch của một người nông dân nghèo bị tha hóa trong xã hội. Chí Phèo cũng là tên nhân vật chính của truyện.', 0.000, 0, 0, 3, 25, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(341, '9786043724943', 'Lão Hạc', 'Lão Hạc là một truyện ngắn của nhà văn Nam Cao được viết năm 1943. Tác phẩm được đánh giá là một trong những truyện ngắn khá tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Tám.', 0.000, 0, 0, 3, 25, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(342, '9786045342411', 'Bức xúc không làm ta vô can', 'Bức xúc không làm ta vô can chính là cuốn sách đầu tiên về thể loại chính luận mà tác giả luôn theo đuổi, một tác phẩm mang tinh phần phản biện xã hội sâu sắc. Sách được xuất bản năm 2015, là tập hợp những bài bình về các vấn đề trong xã hội, các vấn đề về văn hóa, những hiện tượng xã hội đương thời.', 0.000, 0, 0, 3, 26, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(343, '9786045342411', 'Điểm đến của cuộc đời: đồng hành với người cận tử và những bài học cho cuộc sống', 'Điểm đến của cuộc đời kể lại một hành trình không thể nào quên cùng những người cận tử. Dấn thân vào một thế giới của những bi kịch và tổn thất khổng lồ, của phẩm giá và lòng tự trọng trong hoàn cảnh khắc nghiệt, của sự phản bội và sợ hãi, của tình yêu mãnh liệt và hy vọng khôn nguôi, tóm lại, của tất cả những gì thuộc về con người, ở mức độ dữ dội nhất, tác giả muốn đi tìm câu trả lời cho thôi thúc nội tâm: ta nên ứng xử thế nào trước cái chết, và sự chết có thể dạy ta điều gì cho cuộc sống?', 0.000, 0, 0, 3, 26, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(344, '9786042262279', 'Dế Mèn phiêu lưu ký', 'Dế Mèn phiêu lưu ký là tác phẩm văn xuôi đặc sắc và nổi tiếng nhất của nhà văn Tô Hoài viết về loài vật, dành cho lứa tuổi thiếu nhi. Ban đầu truyện có tên là Con dế mèn do Nhà xuất bản Tân Dân, Hà Nội phát hành năm 1941. Sau đó, được sự ủng hộ nhiệt tình của nhân dân, Tô Hoài viết thêm truyện Dế Mèn phiêu lưu ký.', 0.000, 0, 0, 3, 27, 1, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(345, '8935212327985', 'Tắt đèn', 'Tắt đèn là một trong những tác phẩm văn học tiêu biểu nhất của nhà văn Ngô Tất Tố. Đây là một tác phẩm văn học hiện thực phê phán với nội dung nói về cuộc sống khốn khổ của tầng lớp nông dân Việt Nam đầu thế kỉ XX dưới ách đô hộ của thực dân Pháp.', 0.000, 0, 0, 3, 28, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(346, '9786043943283', 'Lều chõng', 'Lều chõng là một tiểu thuyết phóng sự của nhà văn Ngô Tất Tố, ra mắt độc giả lần đầu ngày 10 tháng 3 năm 1939 tại Hà Nội.', 0.000, 0, 0, 3, 28, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(347, '8936067604634', 'Truyện Kiều', 'Đoạn trường tân thanh, thường được biết đến với cái tên đơn giản là Truyện Kiều, là một truyện thơ của đại thi hào Nguyễn Du. Đây được xem là truyện thơ nổi tiếng nhất và xét vào hàng kinh điển trong văn học Việt Nam, tác phẩm được viết bằng chữ Nôm, theo thể lục bát, gồm 3.254 câu.', 0.000, 0, 0, 3, 29, 3, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(348, '8935081111609', 'Hiện Tượng Học Tinh Thần', 'Có thể khẳng định một cách chắc chắn rằng Hiện tượng học Tinh thần là một trong các tác phẩm khó nhất và tham vọng nhất trong kho tàng triết văn thế giới. Tuy thế, bất chấp nhận định của W. Winderlband hơn 100 năm trước “Giống người đã có thể hiểu được quyển Hiện tượng học Tinh thần của Hegel đang trên đà tuyệt chủng. Giờ đây, ngay số người đã chịu khó đọc tác phẩm ấy từ đầu đến cuối chắc cũng chỉ còn đếm được trên đầu ngón tay mà thôi” thì Hiện tượng học Tinh thần vẫn cứ tiếp tục có ma lực dị thường. Và muốn tìm hiểu về Hegel không còn cách nào khác chúng ta phải bắt đầu với Hiện tượng học Tinh thần – tác phẩm lớn đầu tiên và cũng là tác phẩm thiên tài nhất của ông.', 0.000, 0, 0, 3, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(349, '8935081112804', 'Trò Chuyện Triết Học Tập 1', 'Ở nơi chợ búa ồn ã bán mua, nơi chợ đời bụi bặm, triết học héo lánh tới làm gì, có héo lánh tới nổi không? Hẳn nhiều người đã không khỏi ái ngại, đặt ra câu hỏi ấy khi thấy trên tờ Sài Gòn Tiếp Thị  mà như tên gọi của nó, là cầu nối giữa doanh nghiệp và người tiêu dùng, nơi tiếp cận thị trường của doanh nghiệp, nói cách khác là một thứ chợ - xuất hiện một chuyên mục gọi là Trò chuyện triết học. Với nhiều người, triết học là cái gì đó cao siêu, xa vời, chỉ có thể kính nhi viễn chi chứ chẳng ăn nhập gì với cuộc sống trần trụi, với thời buổi mà con người phải lặn hụp mệt nhoài trong cuộc mưu sinh, phải nhanh mắt nhanh tay chụp giựt cho mình những thứ có thể chụp giựt được, phải đối diện với bao nhiêu câu hỏi, bao nhiêu thách thức của cuộc sống trước mặt. Nói tóm lại, triết học là cái gì đó vô bổ, chỉ để dành cho những kẻ rỗi hơi.', 0.000, 0, 0, 3, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(350, '8935081112491', 'Trò Chuyện Triết Học (Tập 2)', 'Triết học là một môn học không khó nhưng để nói chuyện về triết học cho mọi người nghe, mọi người cùng hiểu thì không phải dễ. Nhà nghiên cứu Bùi Văn Nam Sơn đã làm được điều ở vế thứ hai thông qua cuốn sách quý này. Đây không phải là cuốn sách nhập môn triết học và cũng không hẳn là cuốn sách về lịch sử triết học, tuy nhiên nó có đủ các yếu tố của 2 loại sách đó.', 0.000, 0, 0, 3, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(351, '978604943352', 'Trò Chuyện Triết Học (Tập 3)', 'Trò Chuyện Triết Học tiếp tục tập hợp các bài viết từ nhiều thời điểm và cơ hội khác nhau. Có khi là lời giới thiệu hay lời bạt cho những quyển sách hay. Có khi là phần đóng góp nhỏ bé của tác giả cho các tập Kỷ yếu mừng các danh nhân văn hóa - khoa học trong nước và các sự kiện văn hóa lớn trên thế giới. Có khi là những bài báo, bài trả lời phỏng vấn... trong nhiều dịp khác nhau. Chúng được tập hợp và sắp xếp không theo trình tự thời gian hay một định hướng có trước nào cả. Để giữ được tính ngẫu hứng, đa dạng và... vui vẻ!', 0.000, 0, 0, 3, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(352, '8935081112491', 'Trò chuyện triết học trọn bộ 9 tập', 'Những người đọc không chuyên có thể dễ dàng tìm hiểu về triết học, các khái niệm cơ bản của triết học, các trào lưu và các triết gia kinh điển thông qua những lời văn nhẹ nhàng, cô đọng và hóm hỉnh. Qua cuốn sách, bạn đọc có thể hiểu được triết học là gì và lợi ích của nó đối với cuộc sống thường nhật. Tuy nhiên, tác giả không định nghĩa nó rõ ràng như cách thông thường người ta hay làm, việc hiểu được khái niệm là sản phẩm của quá trình tư duy - biết - hiểu - cảm - ngộ mà tác giả là người thầy, người dẫn đường tin cậy và uyên thâm: cung cấp tư liệu, hướng dẫn phương pháp và giảng giải một cách dễ hiểu nhất. Không thể có triết học nếu không có sự tự giải phóng tâm hồn. Điều ấy đòi hỏi sự dũng cảm, kể cả sự dũng cảm dấn mình vào chỗ bấp bênh, nghi ngờ, thất vọng.', 0.000, 0, 0, 3, 30, 2, '2023-11-18 12:38:10', '2023-11-18 12:38:10'),
(353, '9781408855652', 'Harry Potter and the Philosopher\'s Stone', 'Harry Potter and the Philosopher\'s Stone is a fantasy novel written by British author J. K. Rowling. The first novel in the Harry Potter series and Rowling\'s debut novel, it follows Harry Potter, a young wizard who discovers his magical heritage on his eleventh birthday, when he receives a letter of acceptance to Hogwarts School of Witchcraft and Wizardry. Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(354, '9781338878936', 'Harry Potter and the Chamber of Secrets', 'The Chamber is flanked with towering pillars entwined with carved wood, and a tall statue of Salazar Slytherin is at the far end. The basilisk rests within the mouth of the statue, possibly symbolising Salazar Slytherin\'s ability to speak Parseltongue. Sometime before 1992, the chamber flooded with water.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(355, '9781338815283', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Prisoner of Azkaban is a fantasy novel written by British author J. K. Rowling and is the third in the Harry Potter series. The book follows Harry Potter, a young wizard, in his third year at Hogwarts School of Witchcraft and Wizardry.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(356, '9780439139595', 'Harry Potter and the Goblet of Fire', 'The novels follow Harry Potter, an 11yearold boy who discovers he is the son of famous wizards and will attend Hogwarts School of Witchcraft and Wizardry. Harry learns of an entire society of wizards and witches. He befriends several Hogwarts students and teachers along his journey.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(357, '9780439358064', 'Harry Potter and the Order of the Phoenix', 'It follows Harry Potter\'s struggles through his fifth year at Hogwarts School of Witchcraft and Wizardry, including the surreptitious return of the antagonist Lord Voldemort, O.W.L. exams, and an obstructive Ministry of Magic.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(358, '9781408855652', 'Harry Potter and the HalfBlood Prince', 'owling, J. K. In this book, Harry Potter learns a lot about Lord Voldemort\'s past, and Harry Potter prepares for the final battle against his nemesis with the help of Headmaster Dumbledore. But in that time, Voldemort returns to power, and makes a plan to destroy Harry.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(359, '9780545010221', 'Harry Potter and the Deathly Hallows', 'The Deathly Hallows is about Harry Potter and his friends finding ways to destroy Voldemort. They learn that even good contains a bit of evil, and vise versa. Even though the trio faces many difficulties, they persevere.', 0.000, 0, 0, 3, 3, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41'),
(360, '9780545010221', 'The God Equation', 'The God Equation: The Quest for a Theory of Everything is a popular science book by the futurist and physicist Michio Kaku. The book was initially published on April 6, 2021, by Doubleday. The book debuted at number six on The New York Times nonfiction best-seller list for the week ending April 10, 2021.', 0.000, 0, 0, 3, 15, 4, '2023-11-18 12:52:41', '2023-11-18 12:52:41');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(11) NOT NULL,
  `bk_id` int(11) NOT NULL,
  `categ_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`id`, `bk_id`, `categ_id`, `creation_date`, `update_date`) VALUES
(1, 1, 1, '2023-11-18 20:05:49', '2023-11-18 20:05:49'),
(2, 1, 9, '2023-11-18 20:05:49', '2023-11-18 20:05:49'),
(3, 2, 1, '2023-11-18 20:06:34', '2023-11-18 20:06:34'),
(4, 2, 10, '2023-11-18 20:06:34', '2023-11-18 20:06:34'),
(5, 3, 1, '2023-11-18 20:08:09', '2023-11-18 20:08:09'),
(6, 3, 9, '2023-11-18 20:08:09', '2023-11-18 20:08:09'),
(7, 4, 1, '2023-11-18 20:08:09', '2023-11-18 20:08:09'),
(8, 4, 10, '2023-11-18 20:08:09', '2023-11-18 20:08:09'),
(9, 5, 1, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(10, 5, 9, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(11, 6, 1, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(12, 6, 10, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(13, 7, 1, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(14, 7, 10, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(15, 8, 1, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(16, 8, 9, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(17, 9, 1, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(18, 9, 10, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(19, 10, 1, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(20, 10, 9, '2023-11-18 20:13:04', '2023-11-18 20:13:04'),
(21, 11, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(22, 11, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(23, 12, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(24, 12, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(25, 13, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(26, 13, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(27, 14, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(28, 14, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(29, 15, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(30, 15, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(31, 16, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(32, 16, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(33, 17, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(34, 17, 10, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(35, 18, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(36, 18, 10, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(37, 19, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(38, 19, 9, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(39, 20, 1, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(40, 20, 10, '2023-11-18 20:18:21', '2023-11-18 20:18:21'),
(41, 21, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(42, 21, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(43, 22, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(44, 22, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(45, 23, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(46, 23, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(47, 24, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(48, 24, 9, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(49, 25, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(50, 25, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(51, 26, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(52, 26, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(53, 27, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(54, 27, 9, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(55, 28, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(56, 28, 9, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(57, 29, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(58, 29, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(59, 30, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(60, 30, 9, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(62, 31, 1, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(63, 31, 10, '2023-11-18 20:27:59', '2023-11-18 20:27:59'),
(64, 32, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(66, 32, 9, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(67, 33, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(68, 33, 10, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(69, 34, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(70, 34, 9, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(71, 35, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(72, 35, 10, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(73, 36, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(74, 36, 9, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(75, 37, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(76, 37, 10, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(77, 38, 1, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(78, 38, 10, '2023-11-18 20:33:52', '2023-11-18 20:33:52'),
(79, 39, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(80, 39, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(81, 40, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(82, 40, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(83, 41, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(84, 41, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(85, 42, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(86, 42, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(87, 43, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(88, 43, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(89, 44, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(90, 44, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(91, 45, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(92, 45, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(93, 46, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(94, 46, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(95, 47, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(96, 47, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(97, 48, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(98, 48, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(99, 49, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(100, 49, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(101, 50, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(102, 50, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(103, 51, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(104, 51, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(105, 52, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(106, 52, 10, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(107, 53, 1, '2023-12-01 20:09:15', '2023-12-01 20:09:15'),
(108, 53, 9, '2023-12-01 20:09:15', '2023-12-01 20:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `images` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_images`
--

INSERT INTO `book_images` (`id`, `book_id`, `images`, `creation_date`, `update_date`) VALUES
(1, 1, 'book_1_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(2, 1, 'book_1_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(3, 1, 'book_1_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(4, 2, 'book_2_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(5, 2, 'book_2_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(6, 2, 'book_2_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(7, 3, 'book_3_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(8, 3, 'book_3_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(9, 3, 'book_3_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(10, 4, 'book_4_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(11, 4, 'book_4_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(12, 4, 'book_4_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(13, 5, 'book_5_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(14, 5, 'book_5_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(15, 5, 'book_5_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(16, 6, 'book_6_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(17, 6, 'book_6_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(18, 6, 'book_6_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(19, 7, 'book_7_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(20, 7, 'book_7_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(21, 7, 'book_7_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(22, 8, 'book_8_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(23, 8, 'book_8_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(24, 8, 'book_8_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(25, 9, 'book_9_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(26, 9, 'book_9_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(27, 9, 'book_9_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(28, 10, 'book_10_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(29, 10, 'book_10_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(30, 10, 'book_10_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(31, 11, 'book_11_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(32, 11, 'book_11_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(33, 11, 'book_11_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(34, 12, 'book_12_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(35, 12, 'book_12_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(36, 12, 'book_12_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(37, 13, 'book_13_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(38, 13, 'book_13_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(39, 13, 'book_13_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(40, 14, 'book_14_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(41, 14, 'book_14_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(42, 14, 'book_14_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(43, 15, 'book_15_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(44, 15, 'book_15_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(45, 15, 'book_15_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(46, 16, 'book_16_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(47, 16, 'book_16_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(48, 16, 'book_16_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(49, 17, 'book_17_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(50, 17, 'book_17_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(51, 17, 'book_17_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(52, 18, 'book_18_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(53, 18, 'book_18_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(54, 18, 'book_18_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(55, 19, 'book_19_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(56, 19, 'book_19_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(57, 19, 'book_19_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(58, 20, 'book_20_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(59, 20, 'book_20_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(60, 20, 'book_20_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(61, 21, 'book_21_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(62, 21, 'book_21_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(63, 21, 'book_21_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(64, 22, 'book_22_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(65, 22, 'book_22_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(66, 22, 'book_22_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(67, 23, 'book_23_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(68, 23, 'book_23_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(69, 23, 'book_23_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(70, 24, 'book_24_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(71, 24, 'book_24_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(72, 24, 'book_24_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(73, 25, 'book_25_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(74, 25, 'book_25_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(75, 25, 'book_25_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(76, 26, 'book_26_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(77, 26, 'book_26_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(78, 26, 'book_26_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(79, 27, 'book_27_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(80, 27, 'book_27_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(81, 27, 'book_27_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(82, 28, 'book_28_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(83, 28, 'book_28_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(84, 28, 'book_28_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(85, 29, 'book_29_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(86, 29, 'book_29_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(87, 29, 'book_29_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(88, 30, 'book_30_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(89, 30, 'book_30_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(90, 30, 'book_30_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(91, 31, 'book_31_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(92, 31, 'book_31_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(93, 31, 'book_31_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(94, 32, 'book_32_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(95, 32, 'book_32_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(96, 32, 'book_32_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(97, 33, 'book_33_1.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(98, 33, 'book_33_2.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(99, 33, 'book_33_3.jpg', '2023-11-29 08:39:42', '2023-11-29 08:39:42'),
(100, 34, 'book_34_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(101, 34, 'book_34_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(102, 34, 'book_34_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(103, 35, 'book_35_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(104, 35, 'book_35_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(105, 35, 'book_35_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(106, 36, 'book_36_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(107, 36, 'book_36_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(108, 36, 'book_36_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(109, 37, 'book_37_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(110, 37, 'book_37_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(111, 37, 'book_37_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(112, 38, 'book_38_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(113, 38, 'book_38_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(114, 38, 'book_38_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(115, 39, 'book_39_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(116, 39, 'book_39_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(117, 39, 'book_39_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(118, 40, 'book_40_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(119, 40, 'book_40_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(120, 40, 'book_40_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(121, 41, 'book_41_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(122, 41, 'book_41_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(123, 41, 'book_41_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(124, 42, 'book_42_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(125, 42, 'book_42_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(126, 42, 'book_42_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(127, 43, 'book_43_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(128, 43, 'book_43_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(129, 43, 'book_43_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(130, 44, 'book_44_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(131, 44, 'book_44_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(132, 44, 'book_44_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(133, 45, 'book_45_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(134, 45, 'book_45_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(135, 45, 'book_45_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(136, 46, 'book_46_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(137, 46, 'book_46_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(138, 46, 'book_46_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(139, 47, 'book_47_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(140, 47, 'book_47_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(141, 47, 'book_47_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(142, 48, 'book_48_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(143, 48, 'book_48_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(144, 48, 'book_48_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(145, 49, 'book_49_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(146, 49, 'book_49_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(147, 49, 'book_49_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(148, 50, 'book_50_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(149, 50, 'book_50_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(150, 50, 'book_50_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(151, 51, 'book_51_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(152, 51, 'book_51_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(153, 51, 'book_51_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(154, 52, 'book_52_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(155, 52, 'book_52_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(156, 52, 'book_52_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(157, 53, 'book_53_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(158, 53, 'book_53_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(159, 53, 'book_53_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(160, 54, 'book_54_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(161, 54, 'book_54_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(162, 54, 'book_54_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(163, 55, 'book_55_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(164, 55, 'book_55_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(165, 55, 'book_55_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(166, 56, 'book_56_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(167, 56, 'book_56_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(168, 56, 'book_56_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(169, 57, 'book_57_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(170, 57, 'book_57_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(171, 57, 'book_57_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(172, 58, 'book_58_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(173, 58, 'book_58_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(174, 58, 'book_58_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(175, 59, 'book_59_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(176, 59, 'book_59_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(177, 59, 'book_59_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(178, 60, 'book_60_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(179, 60, 'book_60_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(180, 60, 'book_60_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(181, 61, 'book_61_1jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(182, 61, 'book_61_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(183, 61, 'book_61_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(184, 62, 'book_62_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(185, 62, 'book_62_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(186, 62, 'book_62_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(187, 63, 'book_63_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(188, 63, 'book_63_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(189, 63, 'book_63_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(190, 64, 'book_64_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(191, 64, 'book_64_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(192, 64, 'book_64_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(193, 65, 'book_65_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(194, 65, 'book_65_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(195, 65, 'book_65_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(196, 66, 'book_66_1.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(197, 66, 'book_66_2.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(198, 66, 'book_66_3.jpg', '2023-11-29 08:40:14', '2023-11-29 08:40:14'),
(199, 67, 'book_67_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(200, 67, 'book_67_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(201, 67, 'book_67_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(202, 68, 'book_68_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(203, 68, 'book_68_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(204, 68, 'book_68_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(205, 69, 'book_69_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(206, 69, 'book_69_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(207, 69, 'book_69_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(208, 70, 'book_70_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(209, 70, 'book_70_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(210, 70, 'book_70_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(211, 71, 'book_71_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(212, 71, 'book_71_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(213, 71, 'book_71_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(214, 72, 'book_72_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(215, 72, 'book_72_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(216, 72, 'book_72_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(217, 73, 'book_73_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(218, 73, 'book_73_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(219, 73, 'book_73_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(220, 74, 'book_74_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(221, 74, 'book_74_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(222, 74, 'book_74_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(223, 75, 'book_75_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(224, 75, 'book_75_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(225, 75, 'book_75_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(226, 76, 'book_76_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(227, 76, 'book_76_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(228, 76, 'book_76_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(229, 77, 'book_77_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(230, 77, 'book_77_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(231, 77, 'book_77_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(232, 78, 'book_78_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(233, 78, 'book_78_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(234, 78, 'book_78_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(235, 79, 'book_79_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(236, 79, 'book_79_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(237, 79, 'book_79_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(238, 80, 'book_80_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(239, 80, 'book_80_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(240, 80, 'book_80_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(241, 81, 'book_81_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(242, 81, 'book_81_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(243, 81, 'book_81_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(244, 82, 'book_82_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(245, 82, 'book_82_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(246, 82, 'book_82_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(247, 83, 'book_83_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(248, 83, 'book_83_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(249, 83, 'book_83_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(250, 84, 'book_84_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(251, 84, 'book_84_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(252, 84, 'book_84_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(253, 85, 'book_85_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(254, 85, 'book_85_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(255, 85, 'book_85_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(256, 86, 'book_86_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(257, 86, 'book_86_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(258, 86, 'book_86_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(259, 87, 'book_87_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(260, 87, 'book_87_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(261, 87, 'book_87_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(262, 88, 'book_88_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(263, 88, 'book_88_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(264, 88, 'book_88_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(265, 89, 'book_89_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(266, 89, 'book_89_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(267, 89, 'book_89_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(268, 90, 'book_90_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(269, 90, 'book_90_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(270, 90, 'book_90_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(271, 91, 'book_91_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(272, 91, 'book_91_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(273, 91, 'book_91_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(274, 92, 'book_92_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(275, 92, 'book_92_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(276, 92, 'book_92_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(277, 93, 'book_93_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(278, 93, 'book_93_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(279, 93, 'book_93_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(280, 94, 'book_94_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(281, 94, 'book_94_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(282, 94, 'book_94_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(283, 95, 'book_95_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(284, 95, 'book_95_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(285, 95, 'book_95_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(286, 96, 'book_96_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(287, 96, 'book_96_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(288, 96, 'book_96_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(289, 97, 'book_97_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(290, 97, 'book_97_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(291, 97, 'book_97_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(292, 98, 'book_98_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(293, 98, 'book_98_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(294, 98, 'book_98_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(295, 99, 'book_99_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(296, 99, 'book_99_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(297, 99, 'book_99_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(298, 100, 'book_100_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(299, 100, 'book_100_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(300, 100, 'book_100_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(301, 101, 'book_101_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(302, 101, 'book_101_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(303, 101, 'book_101_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(304, 102, 'book_102_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(305, 102, 'book_102_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(306, 102, 'book_102_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(307, 103, 'book_103_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(308, 103, 'book_103_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(309, 103, 'book_103_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(310, 104, 'book_104_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(311, 104, 'book_104_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(312, 104, 'book_104_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(313, 105, 'book_105_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(314, 105, 'book_105_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(315, 105, 'book_105_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(316, 106, 'book_106_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(317, 106, 'book_106_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(318, 106, 'book_106_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(319, 107, 'book_107_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(320, 107, 'book_107_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(321, 107, 'book_107_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(322, 108, 'book_108_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(323, 108, 'book_108_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(324, 108, 'book_108_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(325, 109, 'book_108_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(326, 109, 'book_108_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(327, 109, 'book_108_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(328, 110, 'book_110_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(329, 110, 'book_110_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(330, 110, 'book_110_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(331, 111, 'book_111_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(332, 111, 'book_111_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(333, 111, 'book_111_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(334, 112, 'book_112_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(335, 112, 'book_112_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(336, 112, 'book_112_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(337, 113, 'book_113_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(338, 113, 'book_113_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(339, 113, 'book_113_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(340, 114, 'book_114_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(341, 114, 'book_114_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(342, 114, 'book_114_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(343, 115, 'book_115_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(344, 115, 'book_115_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(345, 115, 'book_115_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(346, 116, 'book_116_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(347, 116, 'book_116_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(348, 116, 'book_116_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(349, 117, 'book_117_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(350, 117, 'book_117_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(351, 117, 'book_117_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(352, 118, 'book_118_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(353, 118, 'book_118_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(354, 118, 'book_118_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(355, 119, 'book_119_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(356, 119, 'book_119_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(357, 119, 'book_119_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(358, 120, 'book_120_1.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(359, 120, 'book_120_2.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51'),
(360, 120, 'book_120_3.jpg', '2023-11-29 08:40:51', '2023-11-29 08:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categ_name` varchar(50) NOT NULL,
  `categ_description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categ_name`, `categ_description`, `creation_date`, `update_date`) VALUES
(1, 'Văn học & Tiểu thuyết', 'Tiểu thuyết là một thể loại văn xuôi có hư cấu, thông qua nhân vật, hoàn cảnh, sự việc để phản ánh bức tranh xã hội rộng lớn và những vấn đề của cuộc sống con người, biểu hiện tính chất tường thuật, tính chất kể chuyện bằng ngôn ngữ văn xuôi theo những chủ đề xác định.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(2, 'Phi hư cấu', 'Phi hư cấu, phi viễn tưởng hay phi giả tưởng (tiếng Anh: Non-fiction hoặc Nonfiction) là những nội dung (content) có thật, thể hiện các sự kiện, sự vật,... trong thực tế. Người tạo ra nội dung phi hư cấu cần đảm bảo được độ chính xác của các sự kiện, con người, hay thông tin mình trình bày.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(3, 'Lịch sử', 'Lịch sử, sử học hay gọi tắt là sử là một môn khoa học xã hội nghiên cứu về quá khứ, đặc biệt là những sự kiện liên quan đến con người. Đây là thuật ngữ chung có liên quan đến các sự kiện trong quá khứ cũng như những ghi nhớ, phát hiện, thu thập, tổ chức, trình bày, giải thích và thông tin về những sự kiện này. Những học giả viết về lịch sử được gọi là nhà sử học. Các sự kiện xảy ra trước khi được ghi chép lại được coi là thời tiền sử.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(4, 'Triết học', 'Triết học là bộ môn nghiên cứu về những vấn đề chung và cơ bản của con người, thế giới quan và vị trí của con người trong thế giới quan, những vấn đề có kết nối với chân lý, sự tồn tại, kiến thức, giá trị, quy luật, ý thức, và ngôn ngữ. Triết học được phân biệt với những môn khoa học khác bằng cách thức mà nó giải quyết những vấn đề trên, đó là ở tính phê phán, phương pháp tiếp cận có hệ thống chung nhất và sự phụ thuộc của nó vào tính duy lý trong việc lập luận.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(5, 'Tâm lý học', 'Tâm lý học (tiếng Anh: psychology) là ngành khoa học nghiên cứu về tâm trí và hành vi, tìm hiểu về các hiện tượng ý thức và vô thức, cũng như cảm xúc và tư duy. Đây là một bộ môn học thuật với quy mô nghiên cứu rất sâu rộng.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(6, 'Chính trị', 'Chính trị (Tiếng Anh: politics) là hoạt động trong lĩnh vực quan hệ giữa các giai cấp, cũng như các dân tộc và các quốc gia với vấn đề giành, giữ, tổ chức và sử dụng quyền lực Nhà nước; là sự tham gia của nhân dân vào công việc của Nhà nước và xã hội, là hoạt động chính trị thực tiễn của giai cấp, các đảng phái chính trị, các nhà nước nhằm tìm kiếm những khả năng thực hiện đường lối và những mục tiêu đã đề ra nhằm thỏa mã	n lợi ích.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(7, 'Kinh tế & Tài chính', 'Kinh tế tài chính, còn được gọi là tài chính, là một nhánh của kinh tế học được đặc trưng bởi sự tập trung vào các hoạt động tiền tệ, trong đó tiền của loại này hay loại khác có khả năng xuất hiện ở cả hai phía của giao dịch.', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(8, 'Khoa học', 'Sách khoa học là một tác phẩm phi hư cấu, thường được viết bởi một nhà khoa học, nhà nghiên cứu hoặc giáo sư như Stephen Hawking (A Brief History of Time), hoặc đôi khi bởi một người không phải là nhà khoa học như Bill Bryson (A Short History of Near Everything).', '2023-11-18 06:15:01', '2023-11-18 06:15:01'),
(9, 'Tiếng Việt', 'Đắm chìm trong tấm thảm văn hóa phong phú của Việt Nam với cuốn sách hấp dẫn này. Thông qua cách kể chuyện sống động và văn xuôi giàu sức gợi, câu chuyện mở ra trong bối cảnh lịch sử, truyền thống và phong cảnh của Việt Nam. Từ những con phố nhộn nhịp của Hà Nội đến vẻ đẹp thanh bình của Vịnh Hạ Long, cuốn sách đưa người đọc vào hành trình khám phá sự phức tạp trong mối quan hệ giữa con người với nhau, sự kiên cường của tinh thần con người và sức hấp dẫn vượt thời gian của di sản đầy mê hoặc của Việt Nam. Cho dù bạn bị cuốn hút bởi những câu chuyện về tình yêu, gia đình hay việc theo đuổi ước mơ, cuốn sách tiếng Việt này sẽ dệt nên một câu chuyện hấp dẫn, cộng hưởng với tính xác thực và trái tim.', '2023-11-18 08:43:07', '2023-11-18 08:43:07'),
(10, 'Tiếng Anh', 'Dive into the diverse world of English literature with our captivating collection of books. From classic novels that have stood the test of time to contemporary bestsellers that explore the complexities of modern life, our English book category caters to all literary tastes. Immerse yourself in gripping narratives, explore imaginative worlds, and engage with compelling characters as you traverse the vast landscapes of fiction, non-fiction, and everything in between. Whether you seek thrilling mysteries, thought-provoking dramas, or insightful self-help, our curated selection ensures there\'s something for every reader to discover and enjoy within the rich and ever-expanding realm of English literature.', '2023-11-18 08:43:07', '2023-11-18 08:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `cmt_ratings` int(1) NOT NULL,
  `usr_message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `formats`
--

CREATE TABLE `formats` (
  `id` int(11) NOT NULL,
  `fm_name` text NOT NULL,
  `fm_description` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `formats`
--

INSERT INTO `formats` (`id`, `fm_name`, `fm_description`, `creation_date`, `update_date`) VALUES
(1, 'Sách giấy', 'Sách là một loạt các tờ giấy có chữ hoặc hình ảnh được viết tay hoặc in ấn, được buộc hoặc dán với nhau về cùng một phía. Mỗi mặt của một tờ trong các tờ này được gọi là một trang sách.', '2023-11-18 06:25:03', '2023-11-18 06:25:03'),
(2, 'eBooks', 'Sách điện tử là một cuốn sách ở định dạng kỹ thuật số. Trong suốt lịch sử, sách là những văn bản được viết nguệch ngoạc bằng tay, in hàng loạt với kiểu chữ có thể di chuyển được, đọc to dưới dạng sách nói, sao chụp, mua, mượn, chú thích và lập chỉ mục. Và giờ đây, sách có thể được đọc trực tuyến trên nhiều loại thiết bị ở mọi nơi, mọi lúc!', '2023-11-18 06:25:03', '2023-11-18 06:25:03'),
(3, 'Sách nói', 'Sách nói là một hình thức truyền tải thông tin nằm trong một cuốn sách. Giống như với sách in trên giấy hay sách điện tử, thông tin được giữ nguyên và thể hiện một cách chân thực. Người dùng sách nói sẽ nghe một người đọc sách thành tiếng thông qua các phương tiện truyền thông hay các ứng dụng thông minh.', '2023-11-18 06:25:03', '2023-11-18 06:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `book_id`, `quantity`, `order_code`, `creation_date`, `update_date`) VALUES
(26, 2, 7, 1, 'phancaoquy34697120231206123922', '2023-12-06 05:39:22', '2023-12-06 05:39:22'),
(27, 2, 9, 1, 'phancaoquy34697120231206123922', '2023-12-06 05:39:22', '2023-12-06 05:39:22'),
(28, 2, 11, 1, 'phancaoquy34697120231206123922', '2023-12-06 05:39:22', '2023-12-06 05:39:22'),
(29, 2, 1, 1, 'phancaoquy3742820231206133654', '2023-12-06 06:36:54', '2023-12-06 06:36:54'),
(30, 2, 12, 1, 'phancaoquy3742820231206133654', '2023-12-06 06:36:54', '2023-12-06 06:36:54'),
(31, 2, 6, 1, 'phancaoquy3742820231206133654', '2023-12-06 06:36:54', '2023-12-06 06:36:54'),
(32, 2, 1, 1, 'phancaoquy48836420231206192211', '2023-12-06 12:22:11', '2023-12-06 12:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `delivery_note` text NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT 0,
  `total_order` varchar(11) NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `delivery_note`, `payment_status`, `total_order`, `order_code`, `pm_id`, `creation_date`, `updation_date`) VALUES
(34, '1234', 1, '800.000đ', 'phancaoquy34697120231206123922', 1, '2023-12-06 05:39:22', '2023-12-06 05:39:22'),
(35, 'ngoai gio hanh chinh', 1, '700.000đ', 'phancaoquy3742820231206133654', 1, '2023-12-06 06:36:54', '2023-12-06 06:36:54'),
(36, 'ngoai gio hanh chinh', 1, '700.000đ', 'phancaoquy109020231206133712', 1, '2023-12-06 06:37:12', '2023-12-06 06:37:12'),
(37, 'giao gio hanh chinh', 1, '200.000đ', 'phancaoquy48836420231206192211', 1, '2023-12-06 12:22:11', '2023-12-06 12:22:11'),
(38, 'giao gio hanh chinh', 1, '200.000đ', 'phancaoquy70648020231206192511', 1, '2023-12-06 12:25:11', '2023-12-06 12:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `pm_name` varchar(50) NOT NULL,
  `pm_note` text NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `pm_name`, `pm_note`, `creation_date`, `update_date`) VALUES
(1, 'Thanh toán khi nhận hàng (COD)', 'Cod là viết tắt của từ Cash On Delivery có nghĩa là giao hàng thu tiền hộ. Thanh toán Cod hay ship Cod là dịch vụ chuyển phát hàng hoá, nhưng người nhận sẽ chỉ phải thanh toán tiền hàng khi nhận được hàng cho shipper.', '2023-12-03 12:00:24', '2023-12-03 12:00:24'),
(2, 'Thanh toán MoMo', 'MoMo là một nền tảng ví điện tử do Công ty Cổ phần Dịch vụ Di động Trực tuyến phát triển cho phép người dùng thực hiện các thanh toán, giao dịch trên các thiết bị di động.', '2023-12-03 12:00:24', '2023-12-03 12:00:24'),
(3, 'Ví điện tử VNPAY', 'Ví VNPAY là ví điện tử hàng đầu dành cho gia đình tại Việt Nam ứng dụng công nghệ hiện đại, đột phá trong lĩnh vực thanh toán điện tử.', '2023-12-03 12:00:24', '2023-12-03 12:00:24'),
(4, 'Chuyển khoản liên ngân hàng bằng QR Code', 'Chuyển tiền thông qua mã QR được hiểu là hình thức sử dụng mã QR code để chuyển tiền. QR code là từ viết tắt của chữ Quick response code, mã phản hồi nhanh. Đây là loại mã vạch ma trận có dạng chiều theo công nghệ 2D thế hệ mới. Để có thể đọc được mã QR Code người ta sẽ sử dụng một máy đọc mã vạch một chiếc điện thoại có camera có chức năng quét mã vạch.', '2023-12-03 12:00:24', '2023-12-03 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `pub_name` text NOT NULL,
  `pub_gmail` varchar(50) NOT NULL,
  `pub_logo` varchar(255) NOT NULL,
  `pub_description` text NOT NULL,
  `pub_address` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `pub_name`, `pub_gmail`, `pub_logo`, `pub_description`, `pub_address`, `creation_date`, `updation_date`) VALUES
(1, 'Nhà Xuất Bản Nhã Nam', 'bookstore@nhanam.vn', '', 'Công ty Cổ phần Văn hóa và Truyền thông Nhã Nam, thường gọi tắt là Nhã Nam là doanh nghiệp hoạt động trong lĩnh vực kinh doanh dịch vụ văn hóa và xuất bản phẩm tại Việt Nam. Công ty được thành lập vào năm 2005 với một nhóm nòng cốt say mê văn chương, sách vở, cuốn sách best-seller đầu tiên là Nhật ký Đặng Thùy Trâm, tiêu thụ 500.000 bản ngay trong năm đầu tiên. Cuốn sách đã tạo nên một cú huých cực mạnh đưa cái tên Nhã Nam đến với nhiều độc giả hơn, đánh dấu thời kỳ chuyển mình của thương hiệu này.', '59 Đỗ Quang, Trung Hòa, Cầu Giấy, Hà Nội', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(2, 'Nhà Xuất Bản Tri Thức', 'lienhe@nxbtrithuc.com.vn', '', 'Nhà xuất bản Tri thức là nhà xuất bản Việt Nam thành lập vào tháng 9 năm 2005 trực thuộc Liên hiệp các Hội Khoa học và Kỹ thuật Việt Nam.', 'Tầng 1 - Tòa nhà Liên hiệp các Hội Khoa học và Kỹ thuật Việt Nam - Lô D20 - ngõ 19 Duy Tân - quận Cầu Giấy - Hà Nội - Việt Nam', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(3, 'Nhà Xuất Bản Trẻ', 'chinhanhdongnambo@nxbtre.com.vn', '', 'Nhà xuất bản Trẻ là một đơn vị chuyên xuất bản và phát hành sách nhiều thể loại có trụ sở chính tại Thành phố Hồ Chí Minh.', '', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(4, 'Nhà Xuất Bản Penguin Books Ltd', 'global.penguinrandomhouse.com', '', '20 Vauxhall Bridge Rd, London, United Kingdoma', 'Penguin Group là nhà xuất bản sách thương mại của Anh và là một phần của Penguin Random House, thuộc sở hữu của tập đoàn truyền thông Đức Bertelsmann. Công ty mới được thành lập thông qua một vụ sáp nhập hoàn tất vào ngày 1 tháng 7 năm 2013, với Bertelsma', '2023-11-18 08:23:35', '2023-11-18 08:23:35'),
(5, 'Nhà Xuất Bản Delphi Classics', 'global.delphiclassics.com', '', 'Sách điện tử của Delphi Classics cũng được minh họa đẹp mắt bằng hình ảnh về các nhà văn, cuộc đời và tác phẩm của họ. Ví dụ, hình ảnh về nơi sinh, những bức ảnh về các giai đoạn khác nhau trong cuộc đời của họ và những bức ảnh về nơi an nghỉ cuối cùng của họ được pha trộn với những hình ảnh minh họa gốc đi kèm với tiểu thuyết của họ.', '122 Stonegate Dr, Landenberg, Pennsylvania, 19350, United States', '2023-11-18 08:23:35', '2023-11-18 08:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_details`
--

CREATE TABLE `rent_details` (
  `id` int(11) NOT NULL,
  `total_rent` float(11,3) NOT NULL,
  `rent_id` int(11) NOT NULL,
  `pm_id` int(11) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usr_email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `fullname` text NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `usr_address` varchar(255) DEFAULT NULL,
  `is_admin` int(1) NOT NULL DEFAULT 0,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usr_email`, `username`, `password`, `avatar`, `fullname`, `phone`, `usr_address`, `is_admin`, `register_date`, `updation_date`) VALUES
(1, 'prometheusAdmin@gmail.com', 'prometheus_admin', '4a7d1ed414474e4033ac29ccb8653d9b', '', 'Prometheus_Admin', '0123456789101', NULL, 1, '2023-11-13 11:09:26', '2023-11-13 11:09:26'),
(2, 'quypcps30162@fpt.edu.vn', 'phancaoquy', 'b59c67bf196a4758191e42f76670ceba', '', 'Phan Cao Quý', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(3, 'anhphtps30161@fpt.edu.vn', 'phtanh', '1111', '', 'Phạm Hoàng Tuấn Anh', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(4, 'binhntps30045@fpt.edu.vn', 'ngothanhbinh', '1111', '', 'Ngô Thanh Bình', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(5, 'thanhtvps30348@fpt.edu.vn', 'tranvanthanh', '1111', '', 'Trần Văn Thành', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(6, 'tudmps30280@fpt.edu.vn', 'duongminhtu', '1111', '', 'Dương Minh Tú', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53'),
(7, 'tanndps30344@fpt.edu.vn', 'nguyenductan', '1111', '', 'Nguyễn Đức Tấn', '0123456789111', 'Công viên phần mềm Quang QTSC Building 1, Trung, P Q.12, Thành phố Hồ Chí Minh', 0, '2023-11-19 03:03:53', '2023-11-19 03:03:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_user` (`admin_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_books_auid_authors_id` (`au_id`),
  ADD KEY `fk_books_pubid_publishersid` (`pub_id`),
  ADD KEY `fk_books_fmid_bookformats_id` (`fm_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookcategories_bkid_books_id` (`bk_id`),
  ADD KEY `fk_bookcategories_categid_categories_id` (`categ_id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bookimages_bookid_books_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_bookid_books_id` (`book_id`),
  ADD KEY `fk_comment_userid_users_id` (`user_id`);

--
-- Indexes for table `formats`
--
ALTER TABLE `formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_bookid_books_id` (`book_id`),
  ADD KEY `fk_orders_userid_users_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orderdetails_pmid_paymentmethods_id` (`pm_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rents_userid_users_id` (`user_id`),
  ADD KEY `fk_rents_bookid_books_id` (`book_id`);

--
-- Indexes for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rentdetails_rentid_rents_id` (`rent_id`),
  ADD KEY `fk_rentdetails_pmid_paymentmethods_id` (`pm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `formats`
--
ALTER TABLE `formats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_details`
--
ALTER TABLE `rent_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_auid_authors_id` FOREIGN KEY (`au_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `fk_books_fmid_bookformats_id` FOREIGN KEY (`fm_id`) REFERENCES `formats` (`id`),
  ADD CONSTRAINT `fk_books_pubid_publishersid` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD CONSTRAINT `fk_bookcategories_bkid_books_id` FOREIGN KEY (`bk_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_bookcategories_categid_categories_id` FOREIGN KEY (`categ_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `book_images`
--
ALTER TABLE `book_images`
  ADD CONSTRAINT `fk_bookimages_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comment_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_comment_userid_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_orders_userid_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_orderdetails_pmid_paymentmethods_id` FOREIGN KEY (`pm_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `fk_rents_bookid_books_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `fk_rents_userid_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD CONSTRAINT `fk_rentdetails_pmid_paymentmethods_id` FOREIGN KEY (`pm_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `fk_rentdetails_rentid_rents_id` FOREIGN KEY (`rent_id`) REFERENCES `rents` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
