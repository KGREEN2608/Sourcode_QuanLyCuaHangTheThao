USE [master]
GO
CREATE DATABASE [QuanLyCuaHangTheThao]
GO
USE [QuanLyCuaHangTheThao]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoHanh](
	[MaBaoHanh] [int] IDENTITY(1,1) NOT NULL,
	[ThoiGianBaoHanh] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoHanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHoaDon] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSanXuat]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[MaHangSanXuat] [int] IDENTITY(1,1) NOT NULL,
	[TenHangSanXuat] [nvarchar](30) NULL,
	[MoTa] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[TongTien] [float] NULL,
	[KhuyenMai] [float] NULL,
	[MakhachHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[sdt] [varchar](13) NULL,
	[HoTen] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLoaiHang] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiHang] [nvarchar](30) NULL,
	[mota] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[TenNhanVien] [nvarchar](100) NULL,
	[GioiTinh] [bit] NULL,
	[CapBac] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[NamSinh] [datetime] NULL,
	[MatKhau] [varchar](30) NULL,
	[Luong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/22/2023 12:22:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NULL,
	[GiaTien] [float] NULL,
	[NgayNhap] [datetime] NULL,
	[TinhTrang] [bit] NULL,
	[ChatLieu] [nvarchar](50) NULL,
	[HinhAnh] [varchar](254) NULL,
	[Size] [nvarchar](20) NULL,
	[TenHang] [nvarchar](20) NULL,
	[DoiTuongSuDung] [nvarchar](30) NULL,
	[MaLoaiHang] [int] NULL,
	[MaBaoHanh] [int] NULL,
	[MaHangSanXuat] [int] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BaoHanh] ON 

INSERT [dbo].[BaoHanh] ([MaBaoHanh], [ThoiGianBaoHanh]) VALUES (1, 2)
INSERT [dbo].[BaoHanh] ([MaBaoHanh], [ThoiGianBaoHanh]) VALUES (2, 1)
INSERT [dbo].[BaoHanh] ([MaBaoHanh], [ThoiGianBaoHanh]) VALUES (3, 0.6)
INSERT [dbo].[BaoHanh] ([MaBaoHanh], [ThoiGianBaoHanh]) VALUES (4, 0.3)
SET IDENTITY_INSERT [dbo].[BaoHanh] OFF
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSanPham], [SoLuong], [DonGia]) VALUES (6, 7, 1, 399000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSanPham], [SoLuong], [DonGia]) VALUES (6, 11, 2, 399000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSanPham], [SoLuong], [DonGia]) VALUES (6, 15, 1, 125000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSanPham], [SoLuong], [DonGia]) VALUES (9, 9, 1, 245000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSanPham], [SoLuong], [DonGia]) VALUES (9, 14, 1, 399000)
INSERT [dbo].[ChiTietHoaDon] ([MaHoaDon], [MaSanPham], [SoLuong], [DonGia]) VALUES (9, 35, 1, 899000)
GO
SET IDENTITY_INSERT [dbo].[HangSanXuat] ON 

INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (1, N'PUMA', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (2, N'ADIDAS', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (3, N'SKETCHERS', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (4, N'REEBOK', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (5, N'MIZUNO', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (6, N'DESCENTE', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (7, N'NIKE', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (8, N'ASICS', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (9, N'DECATHLON', N'no')
INSERT [dbo].[HangSanXuat] ([MaHangSanXuat], [TenHangSanXuat], [MoTa]) VALUES (10, N'PEAK', N'no')
SET IDENTITY_INSERT [dbo].[HangSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [TongTien], [KhuyenMai], [MakhachHang]) VALUES (6, CAST(N'2023-04-21T00:00:00.000' AS DateTime), 925399.98424053192, 30, 1)
INSERT [dbo].[HoaDon] ([MaHoaDon], [NgayTao], [TongTien], [KhuyenMai], [MakhachHang]) VALUES (9, CAST(N'2023-04-21T00:00:00.000' AS DateTime), 1080099.9816060066, 30, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [sdt], [HoTen]) VALUES (1, N'08157682731', N'Lê Ngọc Quang')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiHang] ON 

INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (1, N'Giày Thể Thao', N'Giày là một phụ kiện dùng mang vào chân của con người giúp êm ái đồng thời bảo vệ đôi chân khỏi các tác động xấu của môi trường khi thực hiện mọi hoạt động, sinh hoạt trong cuộc sống hằng ngày.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (2, N'Dép', N'Bàn chân người mang sẽ được vận động linh hoạt, thoải mái tối đa với chi tiết hở gót, và cũng chắc chắn không bị ảnh hưởng bởi sự gò bó hay hầm nóng.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (3, N'Áo Thun', N'Áo được may từ chất liệu vải mềm mại, thoáng mát tạo cảm giác dễ chịu khi mặc.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (4, N'Áo Khoác', N'Có khả năng chống co rút tốt, không bị nhăn khi giặt. Form chuẩn, tôn dáng, phù hợp với mọi vóc dáng.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (5, N'Balo', N'Kiểu dáng vuông vức tạo hình ảnh năng động, trẻ trung với kích thước vừa phải gọn nhẹ có thể mang khi hoạt động ngoài trời.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (6, N'Nón', N'Nón đồng phục có thiết kế truyền thống nhưng không kém phần trẻ trung, thời trang với đường viền mảnh được phối ở viền nón, phù hợp team building công ty hoặc xuống phố cùng bạn bè.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (7, N'Quần Short', N'Thoải mái và mềm mại khi chạm vào. Có nhiều loại thêm dây rút ở eo dễ dàng điều chỉnh size.')
INSERT [dbo].[LoaiHang] ([MaLoaiHang], [TenLoaiHang], [mota]) VALUES (8, N'Dụng Cụ', N'Hỗ trợ cho việc luyện tập dễ dàng và tạo cảm hứng với nhiều mẫu mã đa dạng.')
SET IDENTITY_INSERT [dbo].[LoaiHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [CapBac], [Email], [NamSinh], [MatKhau], [Luong]) VALUES (1, N'Nguyễn Minh Khang', 1, N'Chủ Cửa Hàng', N'nguyenminhkhang123@gmail.com', CAST(N'2003-01-01T00:00:00.000' AS DateTime), N'2222', 0)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [CapBac], [Email], [NamSinh], [MatKhau], [Luong]) VALUES (2, N'Nguyễn Tấn Phát', 1, N'Nhân Viên Thu Ngân', N'nguyentanphat123@gmail.com', CAST(N'2003-12-07T00:00:00.000' AS DateTime), N'123456', 0)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [CapBac], [Email], [NamSinh], [MatKhau], [Luong]) VALUES (3, N'Nguyễn An', 1, N'Nhân Viên Kho', N'nguyenan123@gmail.com', CAST(N'2004-01-03T00:00:00.000' AS DateTime), N'4444', 0)
INSERT [dbo].[NhanVien] ([MaNhanVien], [TenNhanVien], [GioiTinh], [CapBac], [Email], [NamSinh], [MatKhau], [Luong]) VALUES (4, N'Nguyễn Minh', 1, N'Nhân Viên Tư Vấn', N'nguyenminh123@gmail.com', CAST(N'2003-01-02T00:00:00.000' AS DateTime), N'5555', 0)
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (1, N'Giày Lifestyle Nữ Nike Wmns Air Max Ap', 10000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'60% Synthetic', N'https://cdn.tgdd.vn/Products/Images/9980/299109/giay-lifestyle-nu-wmns-nike-air-max-ap-cu4870-003-1.jpg', N'full', N'NIKE', N'Nữ', 1, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (2, N'Giày Tập Luyện Nam Reebok Hiit Training 2.0 ', 2790000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Da tổng hợp', N'https://cdn.tgdd.vn/Products/Images/9980/276605/reebok-hiit-tr-20-gw8519-den-do-1.jpg', N'full', N'REEBOK', N'Nam', 1, 1, 4, 8)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (3, N'Giày Chạy Bộ Nữ Adidas Ultraboost 21 C.Rdy W ', 5000000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Vải dệt Primeknit', N'https://cdn.tgdd.vn/Products/Images/9980/279849/adidas-ultraboost-21-crdy-w-s23754-xanh-1.jpg', N'full', N'ADIDAS', N'Nữ', 1, 1, 2, 8)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (4, N'Giày Chạy Bộ Nữ Adidas Solar Glide 5 W', 3800000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Vải dệt kim tròn', N'https://cdn.tgdd.vn/Products/Images/9980/282591/giay-chay-bo-nu-adidas-solar-glide-5-w-gx6719-moi-1.jpg', N'full', N'ADIDAS', N'Nữ', 1, 1, 2, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (5, N'Giày Chạy Bộ Nữ Puma Velocity Nitro 2', 1949000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Mesh', N'https://cdn.tgdd.vn/Products/Images/9980/285851/puma-velocity-nitro-2-376262-01-1.jpg', N'full', N'PUMA', N'Nữ', 1, 1, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (6, N'Nón Lưỡi Trai Puma ', 699000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://cdn.tgdd.vn/Products/Images/10107/280412/puma-full-reflective-running-023713-01-1.jpg', N'NO', N'PUMA', N'UNISEX', 1, 2, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (7, N'Nón Lưỡi Trai Nike', 399000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Cotton', N'https://cdn.tgdd.vn/Products/Images/10107/278009/nike-cu9887-407-1.jpg', N'NO', N'NIKE', N'UNISEX', 1, 2, 7, 0)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (8, N'Nón Nửa Đầu Adidas', 450000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester tái chế', N'https://cdn.tgdd.vn/Products/Images/10107/279836/adidas-run-visor-ar-hb1306-1.jpg', N'NO', N'ADIDAS', N'UNISEX', 1, 2, 2, 5)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (9, N'Nón Lưỡi Trai Reebok', 245000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Nylon', N'https://cdn.tgdd.vn/Products/Images/10107/250904/non-chay-bo-unisex-reebok-active-foundation-badge-gp0137-1-1.jpg', N'NO', N'REEBOK', N'UNISEX', 1, 2, 4, 9)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (10, N'Nón Lưỡi Trai Puma ', 399000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://cdn.tgdd.vn/Products/Images/10107/292491/non-luoi-trai-puma-gold-metal-024158-03-1.jpg', N'NO', N'PUMA', N'UNISEX', 1, 2, 1, 8)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (11, N'Dép Puma', 399000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Eva, vải dệt', N'https://cdn.tgdd.vn/Products/Images/11719/290464/puma-38414003-1.jpg', N'full', N'PUMA', N'UNISEX', 1, 2, 1, 8)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (12, N'Dép Nữ Puma Leadcat 2.0', 499000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Da tổng hợp, eva', N'https://cdn.tgdd.vn/Products/Images/11719/285514/puma-leadcat-20-384152-02-1.jpg', N'full', N'PUMA', N'Nữ', 1, 2, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (13, N'Dép Nam Nike', 434000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'92% Sợi tổng hợp, 8% Sợi dệt', N'https://cdn.tgdd.vn/Products/Images/11719/259680/nike-ao3621-2.jpg', N'full', N'NIKE', N'Nam', 1, 2, 7, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (14, N'Dép Unisex Puma', 399000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Eva, vải dệt', N'https://cdn.tgdd.vn/Products/Images/11719/290462/puma-38414004-m-1.jpg', N'full', N'PUMA', N'UNISEX', 1, 2, 1, 6)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (15, N'Dép xỏ ngón 120 ', 125000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://contents.mediadecathlon.com/p2435994/76c446bc7a5e49e450df493e82588454/p2435994.jpg?f=650x650&format=auto', N'full', N'DECATHLON', N'Nam', 1, 2, 9, 6)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (16, N'Phông Sketchers', 450000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'100% Cotton', N'https://product.hstatic.net/1000284478/product/002k_sl21q3m035_1_0183a5671822477fa9f9590a1e415d90_large.jpg', N'full', N'SKETCHERS', N'Nam', 1, 4, 3, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (17, N'Áo thể thao', 65000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Cotton', N'https://product.hstatic.net/1000313927/product/ao_thun_xanh_mizuno_1_7ac2d06ea78046479c89f45f1e6e9bf0_master.png', N'full', N'MIZUNO', N'Nam', 1, 4, 5, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (18, N'Áo Phông Descente Muscle Fit', 359000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Cotton', N'https://cf.shopee.vn/file/4746385e54157205040efdf330ecece1', N'full', N'DESCENTE', N'Nam', 1, 4, 6, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (19, N'Áo Thun Tập Luyện Nam Adidas', 600000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester tái chế', N'https://cdn.tgdd.vn/Products/Images/10100/282620/ao-thun-tap-luyen-nam-adidas-m-d4t-hr-tee-hb6533-trang-1.jpg', N'full', N'ADIDAS', N'Nam', 1, 4, 2, 8)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (20, N'Round neck t-shirt', 599000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Cotton', N'https://www.peaksport.si/files/sl/cache-photos/961350be/large-961350be.jpg', N'full', N'PEAK', N'UNISEX', 1, 4, 10, 9)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (21, N'Áo Khoác Tập Luyện Nam Puma', 1399000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester tái chế', N'https://cdn.tgdd.vn/Products/Images/10100/292503/ao-khoac-di-bo-nam-puma-fuse-20-522317-18-1.jpg', N'full', N'PUMA', N'Nam', 1, 4, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (22, N'Áo Hoodie Lifestyle Nữ Adidas', 600000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'cotton/ polyester tái chế', N'https://cdn.tgdd.vn/Products/Images/10100/282685/adidas-w-3s-ft-fz-hd-gl0792-1.jpg', N'full', N'ADIDAS', N'Nữ', 1, 4, 2, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (23, N'Descent Cormac Insulated Ski Jacket ', 14299000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'cotton', N'https://cdn-amz.woka.io/images/I/41aCsyndx0S._SR476,476_.jpg', N'full', N'DESCENTE', N'UNISEX', 1, 4, 6, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (24, N'Team Train Full Zip Jacket', 1499000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'cotton, polyester tái chế', N'https://cdn-amz.woka.io/images/I/51XcmQNV2jL._SR476,476_.jpg', N'full', N'ASICS', N'Nam', 1, 4, 8, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (25, N'Áo Khoác Lifestyle', 899000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'60% cotton', N'https://cdn.tgdd.vn/Products/Images/10100/292430/ao-khoac-lifestyle-puma-nu-dare-to-mayze-535624-04-1.jpg', N'full', N'PUMA', N'Nữ', 1, 4, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (26, N'Balo Tập Luyện Puma Ferrari', 999000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://cdn.tgdd.vn/Products/Images/10142/280459/puma-ferrari-sptwr-race-078776-01-1.jpg', N'NO', N'PUMA', N'UNISEX', 1, 3, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (27, N'Balo Lifestyle Nike', 1209000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://cdn.tgdd.vn/Products/Images/10142/276782/nike-cw9335-010-1-1.jpg', N'NO', N'NIKE', N'UNISEX', 1, 3, 7, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (28, N'Balo Lifestyle Puma Classics', 649000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://cdn.tgdd.vn/Products/Images/10142/280447/puma-classics-078740-01-1.jpg', N'NO', N'PUMA', N'UNISEX', 1, 3, 1, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (29, N'Balo Yasehi 2018', 1474000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGkRto9biAZhbllq4tXfpfm5fm3dpNYe4dBw&usqp=CAU', N'NO', N'ASICS', N'UNISEX', 1, 3, 8, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (30, N'Balo Tập Luyện Adidas Power', 475000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Polyester', N'https://cdn.tgdd.vn/Products/Images/10142/282744/adidas-power-vi-hb1324-1.jpg', N'NO', N'ADIDAS', N'UNISEX', 1, 3, 2, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (31, N'quần short lifestyle', 849000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Nylon', N'https://cdn.tgdd.vn/Products/Images/10099/282459/nike-dm5227-407-1.jpg', N'full', N'NIKE', N'Nam', 1, 3, 7, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (32, N'Quần Short Bóng Rổ ', 564000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'100% Polyester', N'https://cdn.tgdd.vn/Products/Images/10099/299225/quan-short-bong-ro-nam-nike-dq4811-242-1.jpg', N'full', N'NIKE', N'Nam', 1, 3, 7, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (33, N'Quần Short tập luyện', 400000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Cotton', N'https://cdn.tgdd.vn/Products/Images/10099/271292/quan-short-tap-luyen-nam-adidas-3-bar-pack-h08755-141022-101247-600x600.jpg', N'full', N'ADIDAS', N'Nam', 1, 3, 2, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (34, N'Quần Short Chạy Bộ', 350000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Nylon', N'https://cdn.tgdd.vn/Products/Images/10099/271218/quan-short-chay-bo-nu-adidas-seasonal-colourway-h31065-cam-thumb-600x600.jpg', N'full', N'ADIDAS', N'Nữ', 1, 3, 2, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (35, N'Quần Short Lifestyle', 899000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Nylon', N'https://cdn.tgdd.vn/Products/Images/10099/290460/puma-67165932-1.jpg', N'full', N'PUMA', N'Nữ', 1, 3, 1, 9)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (36, N'Kính bơi', 175000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Nhựa nguyên chất', N'https://contents.mediadecathlon.com/p1938443/b69f31508cec59543307386e0f079bba/p1938443.jpg?f=650x650&format=auto', N'NO', N'DECATHLON', N'UNISEX', 1, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (37, N'Vợt cầu lông cơ bản ', 345000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Nhôm', N'https://contents.mediadecathlon.com/p1594215/7b42e58d762095614fb27bcbc153808a/p1594215.jpg?f=650x650&format=auto', N'NO', N'DECATHLON', N'UNISEX', 1, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (38, N'Vợt Tennis TR500 ', 1795000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Graphite', N'https://contents.mediadecathlon.com/p2486925/04b378f68d8cd9acbbfcb04eb3c399c6/p2486925.jpg?f=650x650&format=auto', N'NO', N'DECATHLON', N'UNISEX', 1, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (39, N'Bóng Tennis thi đấu', 145000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'cao su thiên nhiên', N'https://contents.mediadecathlon.com/p1127751/bc3eb1104fee264acc5efce8e1e7203f/p1127751.jpg?f=650x650&format=auto', N'NO', N'DECATHLON', N'UNISEX', 1, 3, 9, 10)
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [GiaTien], [NgayNhap], [TinhTrang], [ChatLieu], [HinhAnh], [Size], [TenHang], [DoiTuongSuDung], [MaLoaiHang], [MaBaoHanh], [MaHangSanXuat], [SoLuong]) VALUES (40, N'HỘP 12 QUẢ CẦU LÔNG BẰNG LÔNG VŨ', 225000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'Ethylen-vinyl acetat', N'https://contents.mediadecathlon.com/p1584995/3219314dc38a3693055d083ad14b0e1b/p1584995.jpg?f=650x650&format=auto', N'NO', N'DECATHLON', N'UNISEX', 1, 3, 9, 10)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MakhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaBaoHanh])
REFERENCES [dbo].[BaoHanh] ([MaBaoHanh])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaHangSanXuat])
REFERENCES [dbo].[HangSanXuat] ([MaHangSanXuat])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoaiHang])
REFERENCES [dbo].[LoaiHang] ([MaLoaiHang])
GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHangTheThao] SET  READ_WRITE 
GO
