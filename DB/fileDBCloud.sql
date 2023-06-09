USE [master]
GO
/****** Object:  Database [DBDL]    Script Date: 5/7/2023 3:20:02 AM ******/
CREATE DATABASE [DBDL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBDL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DBDL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBDL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DBDL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )

GO
ALTER DATABASE [DBDL] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBDL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBDL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBDL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBDL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBDL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBDL] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBDL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBDL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBDL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBDL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBDL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBDL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBDL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBDL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBDL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBDL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBDL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBDL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBDL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBDL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBDL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBDL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBDL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBDL] SET RECOVERY FULL 
GO
ALTER DATABASE [DBDL] SET  MULTI_USER 
GO
ALTER DATABASE [DBDL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBDL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBDL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBDL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBDL] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBDL', N'ON'
GO
ALTER DATABASE [DBDL] SET QUERY_STORE = OFF
GO
USE [DBDL]
GO
/****** Object:  Table [dbo].[CONG_TY]    Script Date: 5/7/2023 3:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONG_TY](
	[ID_CT] [nvarchar](50) NOT NULL,
	[Ten_CT] [nvarchar](150) NOT NULL,
	[Ten_NQL] [nvarchar](150) NOT NULL,
	[SĐT_NQL] [nvarchar](100) NOT NULL,
	[Email_NQL] [nvarchar](150) NOT NULL,
	[MK] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CONG_TY] PRIMARY KEY CLUSTERED 
(
	[ID_CT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAN_VIEN]    Script Date: 5/7/2023 3:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAN_VIEN](
	[ID_NV] [nvarchar](50) NOT NULL,
	[Ten_NV] [nvarchar](150) NOT NULL,
	[SĐT_NV] [nvarchar](100) NOT NULL,
	[EMAIL_NV] [nvarchar](150) NOT NULL,
	[ID_CT] [nvarchar](50) NOT NULL,
	[MK] [nvarchar](max) NOT NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_NHAN_VIEN] PRIMARY KEY CLUSTERED 
(
	[ID_NV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SAN_PHAM]    Script Date: 5/7/2023 3:20:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SAN_PHAM](
	[ID_SP] [nvarchar](50) NOT NULL,
	[ID_CT] [nvarchar](50) NOT NULL,
	[Ten_SP] [nvarchar](150) NOT NULL,
	[SL_HT] [nchar](20) NOT NULL,
	[GIOI_HAN] [nchar](20) NOT NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_SAN_PHAM] PRIMARY KEY CLUSTERED 
(
	[ID_SP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CONG_TY] ([ID_CT], [Ten_CT], [Ten_NQL], [SĐT_NQL], [Email_NQL], [MK]) VALUES (N'CT01', N'Công ty Điện lực Ninh Thuận', N'Văn Tuấn Kiệt', N'0374652126', N'phannhuquynh08112002@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
INSERT [dbo].[CONG_TY] ([ID_CT], [Ten_CT], [Ten_NQL], [SĐT_NQL], [Email_NQL], [MK]) VALUES (N'CT02', N'Nhà Thầu Cơ Điện TEDCO', N'Phạm Lê Phương Trinh', N'0374652126', N'phanquynh08112002@gmail.com', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92')
GO
INSERT [dbo].[NHAN_VIEN] ([ID_NV], [Ten_NV], [SĐT_NV], [EMAIL_NV], [ID_CT], [MK], [trangthai]) VALUES (N'NVCT0101', N'Phan Như Quỳnh', N'0374652126', N'phannhuquynh08112002@gmail.com', N'CT01', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1)
INSERT [dbo].[NHAN_VIEN] ([ID_NV], [Ten_NV], [SĐT_NV], [EMAIL_NV], [ID_CT], [MK], [trangthai]) VALUES (N'NVCT0102', N'Đỗ Thị Phương Anh', N'0374652126', N'phannhuquynh08112002@gmail.com', N'CT01', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1)
INSERT [dbo].[NHAN_VIEN] ([ID_NV], [Ten_NV], [SĐT_NV], [EMAIL_NV], [ID_CT], [MK], [trangthai]) VALUES (N'NVCT0103', N'Lâm Quốc Nhân', N'0906889483', N'vtk@gmail.com', N'CT01', N'123456', 1)
INSERT [dbo].[NHAN_VIEN] ([ID_NV], [Ten_NV], [SĐT_NV], [EMAIL_NV], [ID_CT], [MK], [trangthai]) VALUES (N'NVCT0104', N'Nguyễn Hoàng Nguyên', N'0906889483', N'nhn@gmail.com', N'CT01', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0)
INSERT [dbo].[NHAN_VIEN] ([ID_NV], [Ten_NV], [SĐT_NV], [EMAIL_NV], [ID_CT], [MK], [trangthai]) VALUES (N'NVCT0201', N'Trần Quốc Trung', N'0374652126', N'phannhuquynh08112002@gmail.com', N'CT02', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1)
INSERT [dbo].[NHAN_VIEN] ([ID_NV], [Ten_NV], [SĐT_NV], [EMAIL_NV], [ID_CT], [MK], [trangthai]) VALUES (N'NVCT0202', N'Đàm Văn Minh', N'0374652126', N'phannhuquynh08112002@gmail.com', N'CT02', N'8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 1)
GO
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0101', N'CT01', N'Đồng hồ đo điện áp', N'3                   ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0102', N'CT01', N'Đồng hồ đo dòng điện', N'3                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0103', N'CT01', N'Voltmeter', N'5                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0104', N'CT01', N'Cầu dao đa năng', N'5                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0105', N'CT01', N'Cầu dao', N'5                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0106', N'CT01', N'Máy ngắt', N'5                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0107', N'CT01', N' MCB (Miniature Circuit Breaker)', N'4                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0108', N'CT01', N'RCD (Residual Current Device)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0109', N'CT01', N'Kìm cắt', N'4                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0110', N'CT01', N'Kìm bấm dây', N'5                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0111', N'CT01', N'Kìm tuốt dây', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0112', N'CT01', N'Máy cắt sắt', N'5                   ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0113', N'CT01', N'Máy đo độ dẫn điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0114', N'CT01', N'Máy đo độ cách điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0115', N'CT01', N'Máy đo điện trở đất', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0116', N'CT01', N'Máy đo lưu lượng điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0117', N'CT01', N'Cuộn dây điện (50m)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0118', N'CT01', N' Ống luồn dây điện( 50M)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0119', N'CT01', N'Băng keo điện', N'10                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0120', N'CT01', N'Bộ đèn pin-Bộ sạc pin', N'10                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0121', N'CT01', N'Bộ cờ lê đa năng', N'30                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0122', N'CT01', N'Bộ đồ nghề sửa chữa', N'20                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0123', N'CT01', N'Bộ đồ nghề lắp đặt điện', N'10                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0124', N'CT01', N'Găng tay điện', N'20                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0125', N'CT01', N'Giày điện', N'20                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0126', N'CT01', N'Mũ bảo hiểm', N'20                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0127', N'CT01', N'Kính bảo hộ', N'20                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0128', N'CT01', N'Dây đai an toàn', N'15                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0129', N'CT01', N'Bảo hộ lao động', N'38                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0130', N'CT01', N'Con Bò', N'12                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0201', N'CT02', N'Đồng hồ đo điện áp', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0202', N'CT02', N'Đồng hồ đo dòng điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0203', N'CT02', N'Ampe kế', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0204', N'CT02', N'Voltmeter', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0205', N'CT02', N'Cầu dao đa năng', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0206', N'CT02', N'Cầu dao', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0207', N'CT02', N'Máy ngắt', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0208', N'CT02', N' MCB (Miniature Circuit Breaker)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0209', N'CT02', N'RCD (Residual Current Device)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0210', N'CT02', N'Kìm cắt', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0211', N'CT02', N'Kìm bấm dây', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0212', N'CT02', N'Kìm tuốt dây', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0213', N'CT02', N'Máy cắt sắt', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0214', N'CT02', N'Máy đo độ dẫn điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0215', N'CT02', N'Máy đo độ cách điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0216', N'CT02', N'Máy đo điện trở đất', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0217', N'CT02', N'Máy đo lưu lượng điện', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0218', N'CT02', N'Cuộn dây điện (50m)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0219', N'CT02', N' Ống luồn dây điện( 50M)', N'15                  ', N'5                   ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0220', N'CT02', N'Băng keo điện', N'30                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0221', N'CT02', N'Bộ đèn pin-Bộ sạc pin', N'30                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0222', N'CT02', N'Bộ cờ lê đa năng', N'30                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0223', N'CT02', N'Bộ đồ nghề sửa chữa', N'30                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0224', N'CT02', N'Bộ đồ nghề lắp đặt điện', N'30                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0225', N'CT02', N'Găng tay điện', N'40                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0226', N'CT02', N'Giày điện', N'40                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0227', N'CT02', N'Mũ bảo hiểm', N'40                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0228', N'CT02', N'Kính bảo hộ', N'40                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0229', N'CT02', N'Dây đai an toàn', N'40                  ', N'10                  ', 1)
INSERT [dbo].[SAN_PHAM] ([ID_SP], [ID_CT], [Ten_SP], [SL_HT], [GIOI_HAN], [trangthai]) VALUES (N'NVCT0230', N'CT02', N'Bảo hộ lao động', N'40                  ', N'10                  ', 1)
GO
USE [master]
GO
ALTER DATABASE [DBDL] SET  READ_WRITE 
GO
