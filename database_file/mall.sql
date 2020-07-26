-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2020-07-26 17:21:23
-- 服务器版本： 5.7.17-log
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mall`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin_user`
--

INSERT INTO `admin_user` (`id`, `password`, `username`) VALUES
(1, 'admin', 'admin'),
(2, 'admin2', 'admin2');

-- --------------------------------------------------------

--
-- 表的结构 `classification`
--

CREATE TABLE `classification` (
  `id` int(11) NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `classification`
--

INSERT INTO `classification` (`id`, `cname`, `parent_id`, `type`) VALUES
(1, '服装', 0, 1),
(2, '电脑', NULL, 1),
(3, '手机', NULL, 1),
(4, '食品', NULL, 1),
(5, '笔记本', 2, 2),
(6, '平板', 2, 2),
(7, '台式机', 2, 2),
(9, '家居', 0, 1),
(10, '饮料', 4, 2),
(11, '智能手机', 3, 2),
(12, '上衣', 1, 2),
(13, '柜子', 9, 2);

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_time` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`id`, `addr`, `name`, `order_time`, `phone`, `state`, `total`, `user_id`) VALUES
(1, 'fjsdakl', '小明', '2017-11-25 19:23:48', '12345654', 4, 8888, 1),
(2, 'kdls;ajfklafkasld', 'tom', '2017-11-25 22:10:39', '123456894', 3, 17998, 1),
(3, 'ffggghhhhfdfhjhff', 'Catalina', '2017-11-25 22:52:44', '1234322313', 3, 6077, 1),
(4, 'fdsakldfjasl;', 'tomcat', '2017-11-25 23:35:01', '1234567878', 4, 8999, 1),
(5, 'Gggggggg', 'Hfb', '2017-11-26 02:53:14', '18679658549', 2, 5999, 1),
(6, '广东省佛山市南海区华南师范大学南海校区', 'hfbb', '2020-07-26 12:41:32', '13312345678', 1, 17998, 1),
(7, '大大发', '小明', '2020-07-26 12:51:18', '13212345678', 1, 26925, 1),
(8, 'adafaf', 'hfb', '2020-07-26 15:47:07', '12114414', 1, 8999, 1),
(9, '1231313', 'xiaom', '2020-07-26 15:47:44', '131133141', 1, 8966, 1),
(10, '1313', 'xia', '2020-07-26 10:19:52', '1231313', 1, 8888, 1),
(11, '3131', '133213', '2020-07-26 10:23:21', '131313', 1, 8927, 1),
(12, '1231', 'sadcd', '2020-07-26 10:27:45', '13123411', 1, 26886, 1),
(13, '13131', '1331', '2020-07-26 12:07:07', '31313', 1, 8888, 1);

-- --------------------------------------------------------

--
-- 表的结构 `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `order_item`
--

INSERT INTO `order_item` (`id`, `count`, `order_id`, `product_id`, `sub_total`) VALUES
(1, 1, 1, 10, 8888),
(2, 2, 2, 9, 17998),
(3, 2, 3, 11, 78),
(4, 1, 3, 13, 5999),
(5, 1, 4, 9, 8999),
(6, 1, 5, 13, 5999),
(7, 2, 6, 9, 17998),
(8, 2, 7, 9, 17998),
(9, 1, 7, 10, 8888),
(10, 1, 7, 11, 39),
(11, 1, 8, 9, 8999),
(12, 1, 9, 10, 8888),
(13, 2, 9, 11, 78),
(14, 1, 10, 10, 8888),
(15, 1, 11, 10, 8888),
(16, 1, 11, 11, 39),
(17, 2, 12, 9, 17998),
(18, 1, 12, 10, 8888),
(19, 1, 13, 10, 8888);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `csid` int(11) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `market_price` double DEFAULT NULL,
  `pdate` datetime DEFAULT NULL,
  `shop_price` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `csid`, `desc`, `image`, `is_hot`, `market_price`, `pdate`, `shop_price`, `title`) VALUES
(9, 5, '新一代 Surface Pro 比以往更出色，它不仅仅是一台笔记本，还能在工作室模式和平板间灵活切换.\r\n\r\n随心所欲，百变菁英 震撼的 PixelSense™ 显示屏支持触控笔* 和触摸操作，设计方面也有所改进，与 Surface Pro 4 相比，速度和性能都得到了进一步提升，电池续航能力有较大提高。\r\n\r\n无风扇，更安静 灵感随意 随手拈来 \r\n\r\n快捷刷脸登陆 保护隐私 轻松唤醒刷脸登陆 充分保护您的私人数据**** 无论您喜欢摄影、绘画、音乐或创作\r\n\r\n精彩视频\r\nSurface Pro总能满足您诸多创作需求 Surface Pro 酷睿 m3 和 i5 型号配备全新无风扇冷却系统***，\r\ni7 型号改进了混合冷却系统，您可以更安静地工作或播放喜欢的节目。', '/mall/admin/product/img/0B1CDC0C82A79A25A4BA159D88D8AC.jpg', 1, 9999, '2017-11-25 00:37:57', 8999, '微软（Microsoft）新Surface Pro 二合一平板电脑 12.3英寸（Intel Core i5 8G内存 256G存储 ）'),
(10, 11, '一直以来，我们都心存一个设想，期待着能够打造出这样一部 iPhone：它有整面的屏幕，能让你在使用时完全沉浸其中，仿佛忘记了它的存在。它是如此智能，你的一触、一碰、一言、一语，哪怕是轻轻一瞥，都会得到它心有灵犀的回应。而这个设想，终于随着 iPhone X 的到来成为了现实。现在，就跟未来见个面吧。', '/mall/admin/product/img/E98ECEAC9E68BE31BB623419FD0C9E.png', 1, 9999, '2017-11-24 22:17:54', 8888, 'Apple iPhone X (A1865) 64GB 银色 移动联通电信4G手机'),
(11, 10, '京东价：京东价为商品的销售价，是您最终决定是否购买商品的依据。\r\n划线价：商品展示的划横线价格为参考价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在京东平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。\r\n折扣：如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。\r\n异常问题：商品促销信息以商品详情页“促销”栏中的信息为准；商品的具体售价以订单结算页价格为准；如您发现活动商品售价或促销信息有异常，建议购买前先联系销售商咨询。', '/mall/admin/product/img/EA03D40CEC55463A958B3629511493.jpg', 0, 40.9, '2017-11-25 22:37:23', 39, '可口可乐330ml*24听整箱装'),
(12, 7, '搭载NVIDIA GeForce GTX1060 3G独立显卡，强大的图像显示和处理功能，\r\n既可以高画质下流畅运行工作软件，也支持主流大型游戏，工作游戏，左右兼顾。\r\n并支持兼容主流VR眼镜设备，为你带来身临其境的沉浸体验。', '/mall/admin/product/img/3E1E590D6BD2ED1CF047045C83B313.jpg', 1, 4999, '2017-11-25 22:39:01', 3999, '惠普（HP）光影精灵580 吃鸡游戏主机（i5-7400 8G 128GSSD+1T GTX1060）'),
(13, 7, '原本就拥有强劲的基础性能，能够轻松通吃时下的主流电竞游戏；外观方面整机采用多面切割搭配碳纤铠甲风格，搭配“胜利之眼”游戏氛围灯，凸显电竞元素；最主要的是这是一款UIY电竞主机，机箱内部已经给升级留足了接口和空间，在官方配置的基础上我们还可以进行性能和外观方面的额升级，而且官方配件仍然能在保修范围内。品牌PC厂商参与到PC个性化定制和部件升级服务中来，同时提供品牌厂商一贯的服务优势，完全解决了DIY模式下遇到的种种痛点。不得不说联想拯救者刃 7000的出现，开启了PC UIY时代。', '/mall/admin/product/img/9F6B955F4C732FF96793FC8BB2F244.jpg', 1, 6499, '2017-11-25 22:41:06', 5999, '联想（Lenovo）拯救者刃7000 UIY主机( i7-7700 8G 128G SSD 1T硬盘 GTX1060 Win10)'),
(15, 5, '全新第十代智能英特尔酷睿i7-1065G7/i5-1035G1处理器，采用拥有更出色能效表现的10nm制程工艺，满足日常办公、影音娱乐、设计剪辑、网络游戏等多场景需求', '/mall/admin/product/img/DABB9A90C46CF15E2E3CE6DC0CEA97.jpg', 0, 15000, '2020-07-26 16:36:01', 16000, '联想(Lenovo)小新Air14性能版轻薄本 英特尔酷睿i5 全面屏学生独显笔记本电脑(i5 16G 512G MX350 高色域)银'),
(16, 12, '宽松版型，常规厚度，附带印花流行元素，让你在夏季穿着舒适，表现大方。', '/mall/admin/product/img/5C1FC1B445E7B85D6FAFB4A9070DD5.jpg', 0, 44, '2020-07-26 16:39:16', 80, '杰菈短袖t恤男夏季中袖潮牌体恤男上衣ins港风半袖男韩版宽松百搭潮牌打底衫 绿色 L'),
(17, 11, '搭载骁龙765G，双模5G，屏幕刷新率高达120hz，4800万前后六摄，30w极速闪充。双控全面屏，屏幕体验更流畅。', '/mall/admin/product/img/88212F39D51367A671B4580F824E9A.jpg', 0, 3000, '2020-07-26 16:48:45', 3500, 'Redmi K30i 5G双模 120Hz流速屏 骁龙765G 30W快充 6GB+128GB 深海微光 游戏智能手机 小米 红米'),
(18, 13, '轻轻奏一曲生活小调，简约黑白如琴键，余音悠扬，闲然自适乐在其中。8mm钢化玻璃台面，干净、平整、抗热、易清洁。', '/mall/admin/product/img/3A7169D267936AA695B4674348DEDB.jpg', 0, 750, '2020-07-26 16:50:07', 1000, '全友家居 现代时尚客厅地柜家具钢化玻璃简约方形储物茶几电视机柜子120361 茶几+电视柜'),
(19, 10, '真茶+真柠檬，精选优质红茶+真柠檬提炼，柠味清新，口感出涩。', '/mall/admin/product/img/E90D1245BB5B9C6356252B504CE09A.jpg', 0, 65, '2020-07-26 16:53:02', 75, '维他奶 维他柠檬茶饮料250ml*24盒 柠檬味红茶 网红茶 经典柠檬茶风味饮品 整箱装'),
(20, 12, '领口设计独具匠心，穿着舒适惬意。彰显了棉的原有质感。', '/mall/admin/product/img/7D023E13E1767DAB6080C8AA9684A6.jpg', 0, 50, '2020-07-26 17:02:54', 80, '无印良品 MUJI 男式 印度棉天竺编织 粗条纹短袖T恤 深海军蓝X横条 M'),
(21, 12, '领口设计独具匠心，穿着舒适惬意。彰显了棉的原有质感。', '/mall/admin/product/img/0F8DB020FC352BEA910DD391EE8CD6.jpg', 0, 50, '2020-07-26 17:03:40', 75, '无印良品 MUJI 男式 印度棉天竺编织 V领短袖T恤 卡其绿 L'),
(22, 12, '采用具有适度弹力的聚酯纤维面料制成。适合做勤运动穿着，触感柔软舒适，也可以日常穿着', '/mall/admin/product/img/28EA91A491474F5147D6CC3FC715D0.jpg', 0, 45, '2020-07-26 17:04:26', 90, '无印良品 MUJI 男式 吸汗速干 短袖T恤 运动短袖 浅蓝色 L'),
(23, 11, '选择Nova7 SE的6大理由：搭载麒麟820 5G SoC芯片，速度加持，为热爱加冕。双曲面玻璃机身，侧边指纹解锁，玩转工艺美学，解锁一触即发。6400万高清AI四摄像头，心仪大作，信手拈来', '/mall/admin/product/img/C131F370435ED2F0F73C74CBB94864.png', 1, 4000, '2020-07-26 17:06:48', 4320, '华为 HUAWEI nova 7 SE 5G 麒麟820 5G SoC芯片 6400万高清AI四摄 40W超级快充 8GB+128GB银月星辉全网通手机'),
(24, 11, '科技新物种，惊艳于世。全新折叠形态设计，带领未来科技革命。', '/mall/admin/product/img/24693A3C5C270903498B217ACCCF6A.png', 0, 17000, '2020-07-26 17:09:06', 18900, '华为Mate Xs 5G折叠屏matexs手机 星际蓝 5G全网通(8G+512G)'),
(25, 13, '大容量储物，7格储物，更多存放。环保无味，安全无味更健康。加厚板材，板材加厚更牢固。', '/mall/admin/product/img/904401BC1CA43704BCC38428B7E12A.png', 0, 600, '2020-07-26 17:10:08', 800, '家乐铭品 书柜书架 收纳架储物柜加固加高八格柜自由组合简易柜子省空间落地文件柜现代简约客厅置物柜 A3230'),
(26, 13, '能看透的书柜，钢化玻璃打造，大容量储物。不挑户型，大容量储物，耐用柜门，你值得拥有。', '/mall/admin/product/img/038ECB209B6B1AABEA546E540DCB76.png', 0, 1319, '2020-07-26 17:13:25', 1496, '木月 书柜 北欧书架书橱带玻璃门简约现代整体自由组合书柜储物柜子 雅致 【木纹灰】2门书柜+边柜');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `addr`, `email`, `name`, `password`, `phone`, `username`) VALUES
(1, '广东省佛山市南海区华南师范大学南海校区', 'user1@qq.com', 'user1', '123456', '13212345678', 'xiaomin'),
(2, '广东省佛山市高明区', 'user2@qq.com', 'user2', '123456', '13312345678', 'xiaohong'),
(3, '广东省东莞市松山湖', 'user3@qq.com', 'user3\r\n', '123456', '18912345678\r\n', 'jack'),
(4, '', 'xiaom@qq.com', '小明', '123456', '13312345678', 'xiaom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `classification`
--
ALTER TABLE `classification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
