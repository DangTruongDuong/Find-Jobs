USE [master]
GO
/****** Object:  Database [WebSiteTimViec1]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE DATABASE [WebSiteTimViec1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebSiteTimViec1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DUOZENG\MSSQL\DATA\WebSiteTimViec1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebSiteTimViec1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.DUOZENG\MSSQL\DATA\WebSiteTimViec1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [WebSiteTimViec1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebSiteTimViec1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebSiteTimViec1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebSiteTimViec1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebSiteTimViec1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebSiteTimViec1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebSiteTimViec1] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebSiteTimViec1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET RECOVERY FULL 
GO
ALTER DATABASE [WebSiteTimViec1] SET  MULTI_USER 
GO
ALTER DATABASE [WebSiteTimViec1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebSiteTimViec1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebSiteTimViec1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebSiteTimViec1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebSiteTimViec1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebSiteTimViec1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebSiteTimViec1', N'ON'
GO
ALTER DATABASE [WebSiteTimViec1] SET QUERY_STORE = ON
GO
ALTER DATABASE [WebSiteTimViec1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [WebSiteTimViec1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[JobId] [int] NOT NULL,
	[JobImage] [nvarchar](max) NOT NULL,
	[JobName] [nvarchar](50) NOT NULL,
	[Quanlity] [int] NOT NULL,
	[JobPosition] [nvarchar](50) NOT NULL,
	[JobSalary] [nvarchar](50) NOT NULL,
	[CvPath] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[JobCode] [nvarchar](max) NULL,
	[Industry] [nvarchar](max) NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[Position] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Experience] [nvarchar](max) NULL,
	[Require] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobsUser]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobsUser](
	[JobsId] [int] NOT NULL,
	[UsersId] [int] NOT NULL,
 CONSTRAINT [PK_JobsUser] PRIMARY KEY CLUSTERED 
(
	[JobsId] ASC,
	[UsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginViewModel]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginViewModel](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Total] [float] NULL,
	[JobId] [int] NULL,
	[OrderId] [int] NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phonenumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Orderdate] [datetime2](7) NULL,
	[Status] [int] NULL,
	[Total] [float] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profiles]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[Phone] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Profiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/10/2024 11:55:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240607213909_InitWebSiteTimViec1', N'5.0.10')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'1', N'1')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (47, N'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/X_logo.jpg/1200px-X_logo.jpg', N'X (TWITTER).', N'01', N'Công nghệ', CAST(1000000.00 AS Decimal(18, 2)), N'Quản lý Database', N'X, trước đây là Twitter, là một phương tiện truyền thông mạng xã hội và dịch vụ mạng xã hội trực tuyến được điều hành bởi X Corp., công ty kế thừa của Twitter, Inc.

X cho phép người sử dụng đọc, nhắn và cập nhật các mẩu tin nhỏ gọi là tweets, một dạng tiểu blog. Những mẩu tweet được giới hạn tối đa 280 ký tự được lan truyền nhanh chóng trong phạm vi nhóm bạn của người nhắn hoặc có thể được trưng rộng rãi cho mọi người. Thành lập từ năm 2006, X đã trở thành một hiện tượng phố biến toàn cầu. Những tweet có thể chỉ là dòng tin vặt cá nhân cho đến những cập nhật thời sự tại chỗ kịp thời và nhanh chóng hơn cả truyền thông chính thống. Trụ sở của X được đặt ở San Francisco và có hơn 35 văn phòng khắp thế giới.[11]

Giới hạn về độ dài của tin nhắn, 280 ký tự, có tính tương thích với tin SMS (Short Message Service), mang đến cho cộng đồng mạng một hình thức tốc ký đáng chú ý, đã được sử dụng rộng rãi đối với SMS. Giới hạn về ký tự cũng giúp thúc đẩy các dịch vụ thu gọn địa chỉ website như tinyurl, bit.ly và tr.im, hoặc các dịch vụ nội dung tên miền như là Twitpic và NotePub nhằm thu thập các thông tin đa phương tiện và những đoạn dài hơn 280 ký tự. Hiện nay Twitter đã hỗ trợ người dùng đăng các Tweet dưới dạng đoạn hội thoại, đăng ảnh, video, ảnh động, và tính năng cập nhật khoảnh khắc.

Vào ngày 25 tháng 4 năm 2022, hội đồng quản trị X đã đồng ý để Elon Musk, Giám đốc điều hành của SpaceX và Tesla mua X với giá 44 tỷ đô la Mỹ, có khả năng biến thương vụ mua lại này thành một trong những thương vụ lớn nhất để chuyển một công ty cổ phần thành sở hữu tư nhân.[12][13] Vào tháng 4 năm 2023, một hồ sơ tòa án tiết lộ rằng Twitter, Inc. đã được sáp nhập vào X Corp.[14] Cuối tháng 7 năm 2023, mạng xã hội này chính thức được đổi tên thành X. Vào ngày 31 tháng 07 năm 2023, App Store, Google Play đã được cập nhật logo và tên gọi mới cho ứng dụng mạng xã hội X.', N'3 năm thực tập', N'bằng cử nhân', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (50, N'https://freepnglogo.com/images/all_img/1713419166FB_Logo_PNG.png', N'FACEBOOK', N'02', N'Công nghệ', CAST(100000.00 AS Decimal(18, 2)), N'Tester', N'Facebook là phương tiện truyền thông xã hội và dịch vụ mạng xã hội trực tuyến thành lập vào năm 2004 của Mỹ thuộc sở hữu của Meta Platforms có trụ sở tại Menlo Park, California. Nó được Mark Zuckerberg, cùng với các sinh viên Đại học Harvard và bạn cùng phòng là Eduardo Saverin, Andrew McCollum, Dustin Moskovitz, Chris Hughes sáng lập. Đây được coi là một trong những công ty công nghệ Big Four cùng với Amazon, Apple và Google.[7][8]

Những người sáng lập ban đầu giới hạn tư cách thành viên của Facebook cho sinh viên Harvard và sau đó là sinh viên Columbia, Stanford và Yale. Tư cách thành viên cuối cùng đã được mở rộng sang các trường Ivy League, MIT và các tổ chức giáo dục đại học còn lại trong khu vực Boston, sau đó là các trường đại học khác và cuối cùng là học sinh trung học. Kể từ năm 2006, bất cứ ai tuyên bố ít nhất 13 tuổi đã được phép đăng ký tài khoản Facebook, mặc dù điều này có thể khác nhau tùy thuộc vào luật pháp địa phương. Tính đến năm 2020, Facebook đã có 2,8 tỷ người dùng hoạt động hàng tháng, và xếp thứ bảy về mức sử dụng Internet toàn cầu. Đây là ứng dụng di động được tải xuống nhiều nhất trong những năm 2010. Tên đến từ các thư mục facebook thường được trao cho sinh viên đại học Mỹ. Facebook đã tổ chức đợt chào bán công khai lần đầu (IPO) vào tháng 2 năm 2012, định giá công ty ở mức 104 tỷ USD, mức định giá lớn nhất cho đến nay đối với một công ty đại chúng mới niêm yết. Facebook kiếm phần lớn doanh thu từ các quảng cáo xuất hiện trên màn hình và trong News Feed của người dùng.', N'3 năm thực tập', N'bằng cử nhân', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (51, N'data:image/png;base64,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', N'SENTINELS', N'011', N'Giải trí', CAST(20000000000.00 AS Decimal(18, 2)), N'Thi đấu chính', N'Nếu chơi những đặc vụ hộ vệ bạn không nên có lối chơi hổ báo để tránh bị lên bảng đếm số quá sớm. Hãy bình tĩnh lùi về phía sau vì sức mạnh của bạn ở việc hỗ trợ đồng đội nên càng hỗ trợ nhiều thì đội của bạn sẽ càng mạnh giúp tăng tỉ lệ chiến thắng. Các vị trí thích hợp cho Class hộ vệ gồm:

Vị trí giữa đội hình: Đây là vị trí gần đồng đội nhất, khi có sự cố xảy ra bạn sẽ kịp thời hỗ trợ đồng đội một cách nhanh nhất. Bên cạnh đó, vị trí chính giữa cũng là vị trí an toàn nhất, bạn sẽ được đồng đội bảo vệ để yên tâm sử dụng các kỹ năng hỗ trợ của mình.
Vị trí phía sau đội hình: Đây là vị trí giúp bạn có thể bao quát đội hình nhất, từ đó dễ dàng phát hiện đồng đội nào cần hỗ trợ mà ứng cứu kịp thời. Bên cạnh đó, vị trí phía sau cũng giúp bạn không bị bất ngờ khi đội bị địch phục kích giúp kịp thời sử dụng kỹ năng cần thiết để đồng đội không bị động. ', N'không có', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (52, N'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAY1BMVEX/////uQB/ugAApO/yUCL/+/T/tAD5wbfxRADyShT2j3vO47R4twCpz3S02/gAoO50wPT4+/R0tQD0+f4Ane771M3xPQD1iXT/rgD95uLL4a5tsgD4s6ejzGj6/f+u2PgAmO3ics+kAAABEElEQVR4nO3biQ2CUBREUVfAXVEBd/qv0sRvBy8/MXhuAZOcAmY0kiRJkiRJkiRJkiRJkiRJv9qljHVOM9dVqGtGYdlUkZr2s3K4rUPdcgqrWaTFMgnrSaiakJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQ8J+EzSJS9fvftXO7jNTek/CxCfXIKJSk/D2PsZ5pZh4so/DVnyL1+wTsilBdRuF2N420+wqLcaiCkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkJCQkHBAwuG/8yRJkiRJkiRJkiRJkiRJUqw3TWrkMTMBDxwAAAAASUVORK5CYII=', N'Microsoft', N'10', N'Công nghệ', CAST(10000000.00 AS Decimal(18, 2)), N'Lập trình viên', N'Microsoft là một tập đoàn đa quốc gia của Hoa Kỳ đặt trụ sở chính tại Redmond, Washington; chuyên phát triển, sản xuất, kinh doanh bản quyền phần mềm và hỗ trợ trên diện rộng các sản phẩm và dịch vụ liên quan đến máy tính. Công ty được sáng lập bởi Bill Gates và Paul Allen vào ngày 4 tháng 4 năm 1975. Nếu tính theo doanh thu thì Microsoft là hãng sản xuất phần mềm lớn nhất thế giới.[1] Nó cũng được gọi là "một trong những công ty có giá trị nhất trên thế giới".[2]

Được thành lập để phát triển phần mềm trình thông dịch BASIC cho máy Altair 8800, Microsoft vươn lên thống trị thị trường hệ điều hành cho máy tính gia đình với MS-DOS giữa những năm 1980. Cổ phiếu của công ty sau khi được phát hành lần đầu ra thị trường đã tăng giá nhanh chóng và tạo ra 4 tỷ phú và 12.000 triệu phú trong công ty. Kể từ thập niên 1990, công ty đã đa dạng hóa sản phẩm hệ điều hành và tiến hành nhiều thương vụ thâu tóm công ty mà điển hình là sáp nhập LinkedIn với giá 26,2 tỉ đô la vào tháng 12 năm 2016,[3] và Skype Technologies với 8,5 tỉ đô la vào tháng 5 năm 2011.[4] Công ty cũng cung cấp nhiều phần mềm máy tính và máy chủ cho người dùng cá nhân và doanh nghiệp, trong đó có công cụ tìm kiếm Internet (với Bing), thị trường dịch vụ số (với MSN), thực tế hỗn hợp (HoloLens), điện toán đám mây (Azure) và môi trường phát triển phần mềm (Visual Studio).', N'5 năm thực tập', N'Bằng tiến sĩ', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (55, N'https://images.unsplash.com/photo-1662947995689-ec5165848ad0?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHNhbXN1bmclMjBsb2dvfGVufDB8fDB8fHww', N'SAMSUNG', N'03', N'Công nghệ', CAST(10000000.00 AS Decimal(18, 2)), N'Công nhân lắp ráp', N'Samsung là một tập đoàn đa ngành hàng đầu thế giới. Tập đoàn Samsung được sáng lập bởi ông Lee Byung-chul vào năm 1938. Ban đầu, quy mô tập đoàn chỉ là một công ty buôn bán nhỏ lẻ, tuy nhiên chỉ sau 3 thập kỉ, tập đoàn đã nhanh chóng phát triển đa dạng hóa các ngành nghề như: chế biến thực phẩm, bảo hiểm, chứng khoán,...

Năm 1990, Samsung đã nhanh chóng trở thành một trong những tập đoàn đa ngành lớn nhất thế giới và mục tiêu của công ty lúc này là đầu tư vào nghiên cứu và phát triển công nghệ. Và không ngoài mong đợi, thành công phần lớn đến từ việc sản xuất và cung cấp nhiều sản phẩm và dịch vụ khác nhau, bao gồm điện thoại di động, tivi, máy giặt, tủ lạnh, chip điện tử, và nhiều sản phẩm công nghệ khác.

Cùng năm 1990, Samsung chính thức có mặt tại Việt Nam. Samsung Việt Nam chủ yếu hoạt động trong lĩnh vực sản xuất và phân phối các sản phẩm điện tử tiêu dùng, bao gồm điện thoại di động, tivi, tủ lạnh, máy giặt, máy tính bảng và nhiều sản phẩm khác.

Theo tờ báo uy tín của Việt Nam, Samsung Việt Nam đã xuất khẩu sản phẩm tới hơn 128 quốc gia và vùng lãnh thổ với sản lượng hàng năm đạt 160 triệu thiết bị, chiếm 50% tổng sản lượng sản xuất trên toàn cầu; kim ngạch xuất khẩu năm 2022 đạt 65 tỷ USD, chiếm 17,4% kim ngạch xuất khẩu của Việt Nam; tạo việc làm cho hơn 96.000 lao động; đóng góp vào ngân sách nhà nước hàng năm hơn 10.000 tỷ đồng. Hiện nay, đã có 51 doanh nghiệp Việt Nam trở thành nhà cung ứng cấp 1 của Samsung.

Các hoạt động của Samsung tại Việt Nam không chỉ mang lại lợi ích kinh tế cho đất nước mà còn tạo ra hàng ngàn việc làm cho người lao động địa phương. Ngoài ra, Samsung Việt Nam cũng thường xuyên thực hiện các chương trình xã hội và hoạt động cộng đồng để đóng góp vào sự phát triển bền vững của đất nước.', N'3 năm thực tập', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (56, N'https://inkythuatso.com/uploads/thumbnails/800/2021/10/logo-lg-vector-inkythuatso-01-30-13-54-57.jpg', N'LG ', N'04', N'Công nghệ điện tử', CAST(10000.00 AS Decimal(18, 2)), N'Nhân viên bán hàng', N'Tập đoàn LG (viết tắt của Lucky Goldstar) là một tập đoàn công nghiệp nặng lớn của Hàn Quốc. Năm 1947, tập đoàn LG chính thức được thành lập bởi ông Koo In-Hwoi tại Seoul, Hàn Quốc. 

Tập đoàn LG ban đầu hoạt động trong lĩnh vực sản xuất hóa chất và là một công ty sản xuất gạch. Tuy nhiên, sau đó, LG đã mở rộng và đầu tư vào nhiều ngành công nghiệp khác nhau, bao gồm điện tử tiêu dùng, viễn thông, đồ gia dụng, và năng lượng. Điều này đã giúp LG trở thành một trong những tập đoàn đa ngành lớn và đa quốc gia mà chúng ta biết ngày nay.

Năm 1995, LG gia nhập thị trường Việt Nam và nhanh chóng trở thành một thương hiệu quen thuộc với các gia đình Việt Nam. Đồ điện tử của LG có thể nói là chiếm đa số trong các thiết bị điện tử của gia đình Việt bởi chất lượng và giá tiền phù hợp của nó.

Trong suốt năm tháng hoạt động ở thị trường Việt Nam, LG cũng thu về cho mình những giải thưởng nhất định. Năm 2023, LG Electronics Việt Nam vinh dự đoạt Giải Vàng Chất lượng Quốc gia và Giải thưởng Chất lượng Quốc tế Châu Á - Thái Bình Dương.

LG Việt Nam không chỉ xem tình nguyện là một nhiệm vụ, mà còn là một giá trị cốt lõi để xây dựng cả doanh nghiệp và văn hóa công ty. Bởi vì sức mạnh của một tổ chức không chỉ đo lường bằng thành công kinh doanh mà còn bằng cách đóng góp như thế nào vào xã hội.

Chính vì vậy nên LG Việt Nam đã tài trợ rất nhiều chương trình như: Chương trình giúp đỡ nạn nhân lũ lụt Quảng Ninh; Hoạt động tài trợ chiến dịch mổ mắt miễn phí cho người nghèo tại Sóc Sơn; Chương trình thường niên sửa chữa, bảo dưỡng sản phẩm LG miễn phí… Trong đó, liên tiếp 23 năm liền, LG Việt Nam luôn đồng hành và sát cánh với chương trình "Đường lên đỉnh Olympia" nhằm góp phần phát triển tài năng trẻ Việt Nam.', N'khô', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (57, N'https://studentjob.vn/uploads/2023/12/19/logo-cu-cua-vietteljpg638385786160757935.jpg', N'VIETTEL', N'06', N'Công nghệ viễn thông', CAST(10000.00 AS Decimal(18, 2)), N'Nhân viên', N'Tổng Công ty Viễn thông Quân đội (Viettel) là một trong những nhà cung cấp dịch vụ viễn thông hàng đầu tại Việt Nam và cũng là một trong những tập đoàn viễn thông lớn nhất khu vực Đông Nam Á.

Năm 2009, Tập đoàn Viễn thông Quân đội được thành lập với số vốn hoàn toàn từ nhà nước và là một đơn vị trực thuộc Quân đội Việt Nam. Trải qua nhiều giai đoạn phát triển, Viettel đã trở thành một trong những tập đoàn viễn thông hàng đầu tại Việt Nam và quốc tế.

Bởi vì là một công ty công nghệ trực thuộc Quân đội Việt Nam nên logo trước đây của Viettel luôn gắn liền với màu xanh cùng với slogan “Hãy nói theo cách của bạn”. Thông điệp mà Viettel muốn gửi gắm đến khách hàng đó là hãy bày tỏ nguyên vọng, nhu cầu, quan điểm theo cách của riêng họ để Viettel hiểu và đáp ứng. Ngay từ slogan, Viettel đã khẳng định mục tiêu của doanh nghiệp mình là luôn hướng tới trải nghiệm khách hàng, luôn ưu tiên đặt khách hàng của mình lên hàng đầu.', N'Không yêu cầu', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (58, N'https://studentjob.vn/uploads/2023/12/19/logo-cua-fpt-softwarejpg638385786953064168.jpg', N'FPT SOFTWARE', N'07', N'Công nghệ', CAST(1000000.00 AS Decimal(18, 2)), N'Nhân viên bán hàng', N'FPT Software là công ty công nghệ trực thuộc Tập đoàn FPT. Năm 1999, FPT Software chính thức được thành lập. Trải qua nhiều năm hoạt động và phát triển, FPT Software có quy mô lớn với hàng ngàn nhân viên và các văn phòng, trung tâm nghiên cứu phát triển tại nhiều quốc gia trên thế giới. Công ty có mặt tại các thị trường khó tính như Hoa Kỳ, Nhật Bản, Châu u, Úc,...

FPT Software chuyên cung cấp các giải pháp và dịch vụ trong nhiều lĩnh vực, bao gồm phần mềm doanh nghiệp, trí tuệ nhân tạo, giải pháp IoT, blockchain, quản lý chuỗi cung ứng, và nhiều hơn nữa.

Năm 2018, sau khi đáp ứng một loạt các tiêu chi khắt khe được đề ra bởi Amazon Web Services (AWS), FPT Software chính thức trở thành đối tác tư vấn Premier cao nhất của AWS. Việc FPT Software trở thành đối tác Premier là bước tiến quan trọng, đồng thời cũng là cột mốc lịch sử đáng nhớ khi trở thành đối tác duy nhất và đầu tiên tại Đông Nam Á đạt tới đẳng cấp này.

Sự kiện này không chỉ chứng minh sự chuyên nghiệp và uy tín của FPT Software mà còn đặt công ty này vào hàng ngang với những đối tác hàng đầu thế giới như Accenture, Hitachi, Fujitsu, NEC, Tata, Cognizant,... Chính nhờ vậy nên danh tiếng và địa vị FPT Software trên thị trường công nghiệp công nghệ quốc tế.', N'Không có', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (59, N'https://mentori.vn/upload/recruitment/ddl1658302112.png', N'Bosch Việt Nam', N'32', N'Công nghệ', CAST(1000.00 AS Decimal(18, 2)), N'Lập trình viên', N'Tập đoàn Bosch có tên đầy đủ là Robert Bosch GmbH, là một tập đoàn công nghệ đa quốc gia, được thành lập vào năm 1886 bởi Robert Bosch ở Stuttgart, Đức. Từ một công ty nhỏ sản xuất bu-lông và bộ kích thủy lực, Bosch đã phát triển trở thành một tập đoàn đa quốc gia với hơn 400.000 nhân viên trên khắp thế giới.

Bosch chuyên cung cấp các thiết bị về công nghệ và thiết bị dùng cho ô tô. Bosch nổi tiếng với việc chú trọng đến an toàn và chất lượng trong tất cả các sản phẩm và dịch vụ của mình, đảm bảo an toàn cho người tiêu dùng và người lao động.

Năm 2003, Bosch đã đăng ký 2,750 bằng sáng chế cho những phát minh mới, hầu hết là về kỹ thuật máy móc tự động. Đây là một con số lớn đối với một doanh nghiệp, chính điều này đã khẳng định rằng Bosch là tập đoàn tiên phong trong lĩnh vực này cùng với đội ngũ nhân viên vô cùng chuyên nghiệp.

Bosch có mặt tại Việt Nam vào năm 1990 và bắt đầu hoạt động trong lĩnh vực năng lượng và công nghệ ô tô là chủ yếu. Sau những năm tháng hoạt động, Bosch Việt Nam tiếp tục phát triển, thử thách bản thân ở nhiều lĩnh vực khác nhau như: điện tử tiêu dùng, thiết bị gia dụng, năng lượng xanh,...

Bosch nổi tiếng với việc chú trọng đến sự an toàn và chất lượng trong tất cả các sản phẩm. Ngoài ra, Bosch cũng nổi tiếng và nhận nhiều sự ưu ái bởi dịch vụ chăm sóc khách hàng, đảm bảo an toàn cho người tiêu dùng và người lao động của mình. Khi mua các thiết bị gia dụng lớn của Bosch từ các nhà phân phối chính hãng, khách hàng sẽ được hưởng chính sách bảo hành lên tới 3 năm.

Sau khi tham gia vào thị trường Việt Nam khá lâu, Bosch cũng đã đem về cho mình những thành tựu nhất định và cũng đóng góp rất nhiều cho kinh tế Việt Nam. Cụ thể, trong năm 2021, Bosch đã ghi nhận doanh thu hợp nhất khoảng 192 triệu euro tại Việt Nam.', N'3 năm thực tập', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (60, N'https://studentjob.vn/uploads/2023/12/19/logo-cua-intel-2jpg638385790443906452.jpg', N'Intel', N'05', N'Công nghệ', CAST(1000000.00 AS Decimal(18, 2)), N'Nhân viên lắp ráp', N'Tập đoàn Intel được thành lập vào năm 1968 bởi Robert Noyce và Gordon Moore - hai nhà khoa học và doanh nhân nổi tiếng. Trụ sở chính của Intel được đặt tại Santa Clara, California, Hoa Kỳ.

Tập đoàn Intel (viết tắt của Integrated Electronics) là một trong những công ty công nghệ hàng đầu thế giới, chuyên sản xuất và cung cấp các sản phẩm và dịch vụ trong lĩnh vực công nghiệp điện tử và máy tính.

Intel nổi tiếng với việc sản xuất vi xử lý (CPU) cho máy tính cá nhân và máy chủ. Các dòng sản phẩm nổi tiếng bao gồm dòng vi xử lý Intel Core, Intel Xeon, và Intel Atom. Ngoài ra, Intel cũng sản xuất chipsets, bộ nhớ flash, vi xử lý đồ họa, và nhiều sản phẩm khác. Không chỉ hoạt động trong lĩnh vực máy tính cá nhân và máy chủ, Intel còn mở rộng vào nhiều lĩnh vực khác như trí tuệ nhân tạo (AI), xe tự lái, Internet of Things (IoT), và năng lượng.

Trải qua nhiều năm thành lập và phát triển, tập đoàn Intel nhanh chóng mở rộng quy mô và hiện diện mạnh mẽ bằng nhiều văn phòng và các nhà máy sản xuất ở nhiều quốc gia trên thế giới.', N'Không có', N'Tốt nghiệp trung học phổ thông', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (61, N'https://static.tnex.com.vn/uploads/2023/06/word-image-15111-1.jpeg', N'Gà Rán KFC', N'054', N'Thực Phẩm', CAST(10000.00 AS Decimal(18, 2)), N'Nh', N'Kentucky Fried Chicken, thường được biết đến với tên gọi tắt là KFC, là một chuỗi cửa hàng đồ ăn nhanh của Mỹ chuyên về các sản phẩm gà rán có trụ sở đặt tại Louisville, Kentucky. Đây là chuỗi nhà hàng lớn thứ hai thế giới (xếp theo doanh thu) và chỉ đứng sau McDonald''s với tổng cộng gần 20.000 nhà hàng tại 123 quốc gia và vùng lãnh thổ (tính đến tháng 12 năm 2015). Đây là một trong những thương hiệu trực thuộc Yum! Brands, một tập đoàn cũng sở hữu chuỗi nhà hàng Pizza Hut và Taco Bell.

KFC ban đầu được thành lập bởi doanh nhân Colonel Harland Sanders. Ông bắt đầu công việc bán gà rán từ một nhà hàng nhỏ tại Corbin, Kentucky trong thời kỳ Đại khủng hoảng. Sanders đã sớm nhận thấy tiềm năng từ tổ chức nhượng quyền nhà hàng này, và thương vụ nhượng quyền "Kentucky Fried Chicken" đầu tiên được xuất hiện ở Utah vào năm 1952. KFC sau đó đã nhanh chóng phổ biến hóa các thực phẩm chế biến từ gà trong ngành công nghiệp thực phẩm thành đồ ăn nhanh và cạnh tranh với sự thống trị của hamburger trong thị trường lúc bấy giờ. Bằng việc tự xây dựng thương hiệu cho bản thân dưới cái tên "Colonel Sanders", Harland đã trở thành một hình tượng nổi bật trong lịch sử văn hóa Mỹ, và hình ảnh của ông vẫn còn được sử dụng rộng rãi trong các quảng cáo của KFC cho tới ngày nay. Tuy nhiên, việc mở rộng nhanh chóng của hệ thống cộng với những căn bệnh tuổi già đã khiến ông không thể kiểm soát nổi chuỗi nhà hàng và phải bán công ty lại cho một nhóm nhà đầu tư được dẫn đầu bởi John Y. Brown Jr. và Jack C. Massey vào năm 1964.', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (62, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmcd-M-TVA24E17ivTfGSwFfrhqlrcsOGQIg&s', N'Jollibe', N'032', N'Thực Phẩm', CAST(10000.00 AS Decimal(18, 2)), N'nhâ', N'In 1975, Tony Tan Caktiong and his family opened a Magnolia ice cream parlor in Cubao, Quezon City.[5][6] The outlet later began offering hot meals and sandwiches. When the food items became more popular than ice cream, the family decided to convert the ice cream parlor into a fast food restaurant, which became the first Jollibee outlet in 1978.[7] Management consultant Manuel C. Lumba advised the family on the change in strategy.[5] Jollibee was initially named "Jolibe", but changed its name to "Jollibee".[8]

Jollibee Foods Corporation (JFC) was incorporated in January 1978.[note 1] By the end of that year, there were seven Jollibee branches in Metro Manila. The first franchised outlet of Jollibee opened in Santa Cruz, Manila in 1979.[11]

Jollibee experienced rapid growth.[12] The chain was able to withstand the entry of McDonald''s into the Philippines in 1981 by focusing on the specific tastes of the Filipino market.[13][example needed] The first provincial Jollibee outlet opened in Mabalacat.[14] The first overseas Jollibee opened in Taiwan in 1986; that location eventually closed.[15] Jollibee continued to expand and set up outlets both within the country and abroad.[16] On June 13, 1998, Jollibee opened its first United States location in Daly City, California, with franchises soon following in Singapore, Italy, Qatar, and China.[17][18][19] Jollibee launched its first branch in Dubai in 1995, which closed, and reentered the market in 2015;[15][20] it currently operates 16 franchises across the United Arab Emirates. As a result of the 1997 Asian financial crisis, the chain was forced to withdraw its operations in Malaysia and Indonesia.[21][22] Jollibee returned to Malaysia in December 2018, opening a location in Kota Kinabalu; the chain has since expanded to seven locations in the country.[23][24][25]', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (63, N'https://tascomall.com/_next/image?url=https%3A%2F%2Fadmin.tascomall.com%2Fwp-content%2Fuploads%2F2023%2F10%2Fmixue.png&w=1920&q=100', N'MIXUE', N'0321225', N'Thực phẩm', CAST(10000.00 AS Decimal(18, 2)), N'Nhân viên bán hàng', N'Mixue Ice Cream & Tea (tiếng Trung: 蜜雪冰城; Hán-Việt: Mật Tuyết Băng thành; bính âm: Mìxuě Bīngchéng) là một công ty nhượng quyền chuyên bán kem mềm và đồ uống trà từ Trịnh Châu, Hà Nam, Trung Quốc và được thành lập vào tháng 6 năm 1997.[1] Đến năm 2023, có ít nhất 21.581 cửa hàng Mixue đã hoạt động ở Trung Quốc và ở ít nhất 12 quốc gia khác ở khu vực Châu Á - Thái Bình Dương.[2] Công ty này hoàn toàn thuộc sở hữu của hai anh em nhà họ Trương sáng lập.

Mixue có mặt tại Indonesia từ năm 2020 với cửa hàng đầu tiên tại Cihampelas Walk, thành phố Bandung và hiện có hơn một nghìn cửa hàng trên khắp Indonesia.[2] Sản phẩm này đã nhận được chứng nhận halal của Hội đồng Ulama Indonesia từ đầu năm 2023.[3][4]', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (64, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnN-nkSGt6Zkm_6ls8EpJRRKwK3f3Z4ef_4w&s', N'PHUC LONG', N'0123', N'Thực phẩm', CAST(10000.00 AS Decimal(18, 2)), N'Nhân viên bán hàng', N'Được thành lập từ năm 1968, Phúc Long là thương hiệu trà và café được giới trẻ ưa chuộng, nổi bật bởi các thức uống kết hợp giữa vị đậm và đặc trưng của trà, café, kết hợp với phương pháp pha chế dẫn đầu xu hướng.

Tháng 5-2021 là bước ngoặt với Phúc Long khi "ông lớn" tiêu dùng - bán lẻ Masan Group chi 15 triệu USD để sở hữu 20% cổ phần chuỗi F&B này. Sau hai lần mua thêm cổ phần vào năm 2022, Masan đã sở hữu kiểm soát chuỗi Phúc Long với tỉ lệ 85%.

Từ một thức uống được xem là "đặc sản" TP. HCM, chỉ sau hơn 1 năm "về một nhà" với Masan, chuỗi F&B này đã có mặt tại 27 tỉnh thành.

Qua điều hành của Masan, Phúc Long đã mở rộng hệ thống điểm bán từ 72 cửa hàng vào tháng 1-2022 lên 860 điểm bán tính đến cuối tháng 9-2022 với các mô hình đa dạng như cửa hàng flagship, mini và kiosk bên trong cửa hàng WIN và WinMart+. ', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (65, N'https://upload.wikimedia.org/wikipedia/commons/9/94/AEON_MALL_corporate_logo.png', N'Aeon Mall', N'034', N'Công Nghiệp', CAST(10000.00 AS Decimal(18, 2)), N'Nhân viên bán hàng', N'AEON hiện là một trong những tập đoàn thương mại bán lẻ lớn nhất trên thế giới với 179 liên doanh trong và ngoài nước Nhật Bản. Được thành lập từ năm 1758, với lịch sử trải dài trên 250 năm, Tập đoàn AEON là một trong những nhà bán lẻ lâu đời nhất tại Nhật Bản.

Trong suốt quá trình hoạt động của mình, Tập đoàn AEON duy trì một cam kết không hề thay đổi đó là luôn đặt ra tiêu chí “Khách hàng là trên hết”. Nguyên tắc cơ bản của Tập đoàn AEON chính là hướng tới một xã hội thịnh vượng, ổn định và hòa bình thông qua hoạt động bán lẻ. Với trách nhiệm đó, Tập đoàn AEON đã có được lòng tin của khách hàng cũng như mở rộng hoạt động kinh doanh không chỉ tại Nhật Bản mà còn tại các quốc gia khác trong khu vực Châu Á trong một khoảng thời gian dài.', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (66, N'https://images.autofun.vn/file1/ec3fc34061ea4670a1cf2d0caa68034f_132x132.webp', N'Honda', N'0231234', N'Công nghiệp', CAST(100000.00 AS Decimal(18, 2)), N'Lắp ráp linh kiện', N'Honda là nhà sản xuất xe máy lớn nhất thế giới kể từ năm 1959,[4][5] đạt sản lượng 400 triệu vào cuối năm 2019,[6] cũng như là nhà sản xuất động cơ đốt trong lớn nhất thế giới tính theo khối lượng, sản xuất hơn 14 triệu động cơ đốt trong mỗi năm.[7] Honda trở thành nhà sản xuất ô tô lớn thứ hai của Nhật Bản vào năm 2001.[8][9] Năm 2015, Honda là nhà sản xuất ô tô lớn thứ tám trên thế giới.[10]

Năm 1986, Honda là nhà sản xuất ô tô đầu tiên của Nhật Bản tung ra nhãn hiệu xe sang chuyên dụng Acura. Ngoài mảng kinh doanh cốt lõi là ô tô và xe máy, Honda còn sản xuất thiết bị làm vườn, động cơ hàng hải, tàu thủy cá nhân, máy phát điện và các sản phẩm khác. Từ năm 1986, Honda tham gia nghiên cứu trí tuệ nhân tạo/người máy và cho ra mắt người máy ASIMO vào năm 2000. Họ cũng mạo hiểm đầu tư vào lĩnh vực hàng không vũ trụ với việc thành lập GE Honda Aero Engines vào năm 2004 và Honda HA-420 HondaJet, bắt đầu sản xuất từ năm 2012. Honda có hai liên doanh tại Trung Quốc: Dongfeng Honda và Guangqi Honda.

Trong năm 2013, Honda đã đầu tư khoảng 5,7% (6,8 tỷ USD) doanh thu vào việc nghiên cứu và phát triển.[11] Cũng trong năm 2013, Honda trở thành nhà sản xuất ô tô Nhật Bản đầu tiên trở thành nhà xuất khẩu ròng từ Hoa Kỳ, xuất khẩu 108.705 mẫu xe Honda và Acura, trong khi chỉ nhập khẩu 88.357.[12]', N'3', N'bằng cử nhân', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (67, N'https://www.tacticalmindz.com/cdn/shop/products/Kawasaki_Logo.jpg?v=1571264736', N'Kwasaki', N'03435', N'Công nghiệ', CAST(100000.00 AS Decimal(18, 2)), N'Lắp', N'Kawasaki Heavy Industries Ltd. (KHI) (川崎重工業株式会社 (Xuyên Khi Trùng Công nghiệp Châu thức Hội xã) Kawasaki Jūkōgyō Kabushiki-gaisha?) (gọi tắt Kawasaki) là một tập đoàn đại chúng đa quốc gia Nhật Bản sản xuất xe máy, động cơ, máy xây dựng, hàng không vũ trụ và quốc phòng, đầu máy toa xe và tàu thủy, có trụ sở chính đặt tại Chūō, Kobe và Minato thuộc Tokyo, Nhật Bản. Tập đoàn cũng hoạt động trong sản xuất robot công nghiệp, tuốc bin khí, máy bơm, lò hơi và nhiều sản phẩm công nghiệp khác. Tên tập đoàn được đặt theo tên của nhà sáng lập, Kawasaki Shōzō. KHI được biết đến là một trong ba nhà sản xuất công nghiệp nặng lớn nhất nước Nhật, cùng với Mitsubishi Heavy Industries và IHI. Trước Chiến tranh thế giới thứ hai, KHI là một phần của zaibatsu Kobe Kawasaki, gồm cả Kawasaki Steel và Kawasaki Kisen. Sau cuộc xung đột, KHI trở thành một phần của Tập đoàn DKB (keiretsu).', N'3 năm thực tập', N'Bằng cử nhân', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (68, N'https://upload.wikimedia.org/wikipedia/vi/thumb/d/df/Lamborghini_Logo.svg/1200px-Lamborghini_Logo.svg.png', N'Lamborghini', N'056', N'Công nghiệp', CAST(1000000.00 AS Decimal(18, 2)), N'Nhân', N'Automobili Lamborghini S.p.A., thường gọi tắt là Lamborghini, là nhà sản xuất siêu xe thể thao cao cấp (siêu xe) của Italy, có trụ sở chính và xưởng sản xuất đặt tại Sant'' Agata Bolognese, gần Bologna, Italy. Hiện tại Lamborghini là công ty con của công ty Audi AG thuộc tập đoàn ô tô Volkswagen của Đức. Lamborghini cũng cạnh tranh với Ferrari và hàng loạt tên tuổi lớn khác trong ngành công nghiệp xe hơi thể thao. Công ty được doanh nhân Ý Ferruccio Lamborghini thành lập năm 1963, ông đã từng sở hữu công ty máy kéo rất thành công, Lamborghini Trattori S.p.A.

Bước ngoặt đến với Lamborghini khi ông phát hiện bộ ly hợp trên chiếc Ferrari của mình bị hỏng, ông thấy nó giống với bộ ly hợp mà ông thường sử dụng trên những chiếc máy kéo, ông đến công ty Ferrari và yêu cầu họ thay thế bộ ly hợp tốt hơn. Tuy nhiên, Enzo Ferrari nói rằng: "Ông chỉ là người sản xuất máy kéo và không biết gì về những chiếc xe thể thao". Ngay lập tức Lamborghini quyết định thành lập một hãng sản xuất ô tô với mục tiêu mang đến những chiếc xe thể thao hoàn hảo hơn. Ngày 30 tháng 10 năm 1963, Automobili Lamborghini S.p.A. chính thức được thành lập ở Sant''Agata Bolognese, một ngôi làng nhỏ nẳm giữa Bologna và Modena. Chiếc xe đầu tiên của công ty, Lamborghini 350 GT, đã được ra mắt tại Torino Motors Show vào tháng 10 cùng năm. Tiếp theo vào năm 1966, huyền thoại Lamborghini Miura, thiết kế bởi Marcello Gandini, đã xuất hiện lần đầu tiên trong cuộc triển lãm xe hơi Geneva Motor Show. Chiếc Miura là chiếc xe đầu tiên có động cơ V12 nằm giữa trên thế giới', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (69, N'https://bsas.com.vn/wp-content/uploads/2021/03/Vietfoods.jpg', N'VietFood', N'0123', N'Công nghiệp thực phẩm', CAST(100000.00 AS Decimal(18, 2)), N'Nhân viên', N'Công ty Cổ phần Thực phẩm Việt Nam chuyên sản xuất, kinh doanh các sản phẩm thực phẩm do Công ty tự sản xuất và nhập khẩu. Với các thương hiệu sản phẩm chính: Vietfoods, ABC, Newjoy, Panda, Bravita, Hachi, Coolteen …

Mục tiêu kinh doanh:

Đưa ra các sản phẩm tốt, đảm bảo an toàn VSTP và sức khỏe người tiêu dung;
Quy trình sản xuất được quản lí nghiêm ngặt từ khâu sản xuất đến đóng gói, lưu thông…
 Luôn thay đổi để sản phẩm mới mẻ về hương vị, độc đáo, thơm ngon và hướng tới nguồn nguyên liệu tự nhiên;
Đảm bảo nguồn gốc và tính pháp lí trong suốt quá trình sản xuất, kinh doanh đối với mọi hàng hóa đầu vào và đầu ra;
 Luôn tiếp thu mọi ý kiến đóng góp để nâng cao chất lượng, cải tiến quy trình, đáp ứng đầy đủ các tiêu chí của một nhà máy an toàn, hiện đại, quản lí theo tiêu chuẩn ISO 22000 – 2018', N'Không yêu cầu', N'Không yêu cầu', 1)
INSERT [dbo].[Jobs] ([Id], [ImageUrl], [Name], [JobCode], [Industry], [Salary], [Position], [Description], [Experience], [Require], [CategoryId]) VALUES (70, N'data:image/png;base64,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', N'Nasa', N'01', N'Công nghệ Vũ trụ', CAST(100000000000000.00 AS Decimal(18, 2)), N'Phi hành gia', N'Cơ quan Hàng không và Vũ trụ Hoa Kỳ hay Cơ quan Hàng không và Không gian Hoa Kỳ,[5] tên đầy đủ tiếng Anh là National Aeronautics and Space Administration (Cục Quản trị Không Gian và Hàng Không Quốc gia), viết tắt là NASA, cũng được gọi là Cơ quan Không gian Hoa Kỳ[6] là cơ quan chính phủ liên bang Hoa Kỳ có trách nhiệm thực thi chương trình thám hiểm không gian và nghiên cứu ngành hàng không.[Ct 1]

Tổng thống Dwight D. Eisenhower thành lập NASA vào năm 1958[9] với mục đích dân sự hướng tới những ứng dụng hòa bình trong khoa học không gian. Đạo luật Hàng không và Vũ trụ Quốc gia được thông qua ngày 29 tháng 7 năm 1958, theo đó giải thể cơ quan tiền thân của NASA là NACA (National Advisory Committee for Aeronautics - Ủy ban Cố vấn Hàng không Quốc gia). Cơ quan mới chính thức hoạt động vào ngày 1 tháng 10 năm 1958.[10][11]

Kể từ đó, hầu hết các phi vụ thám hiểm không gian đều do NASA đảm nhiệm, bao gồm nhiệm vụ đổ bộ lên Mặt Trăng của chương trình Apollo, trạm không gian Skylab, và chương trình tàu con thoi. Hiện tại, NASA đang tham gia xây dựng và vận hành Trạm vũ trụ quốc tế ISS và đang giám sát quá trình phát triển tàu vũ trụ Orion, Hệ thống phóng không gian SLS và các lần phóng tàu vũ trụ với sự tham gia của các công ty cổ phần. Cơ quan cũng chịu trách nhiệm cho Chương trình dịch vụ phóng tên lửa (Launch Services Program-LSP) thực thi giám sát và quản lý các hoạt động phóng tàu vũ trụ không người lái của NASA.

Mục tiêu khoa học của NASA tập trung vào tìm hiểu Trái Đất thông qua chương trình Hệ thống quan sát Trái Đất,[12] nghiên cứu vật lý của Mặt Trời,[13] thám hiểm các thiên thể trong hệ Mặt Trời với các tàu không gian robot tiên tiến như New Horizons,[14] và nghiên cứu các chủ đề của vật lý thiên văn, chẳng hạn liên quan tới Big Bang, thông qua phát triển các thiết bị lớn nghiên cứu trong không gian và các chương trình liên kết khác.[15] NASA chia sẻ thông tin với nhiều viện và tổ chức quốc gia, quốc tế, như trong Chương trình Vệ tinh quan sát khí nhà kính GOSAT.', N'10 năm thực tập', N'Bằng t', 1)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
INSERT [dbo].[LoginViewModel] ([Username], [Password]) VALUES (N'1', N'1')
GO
/****** Object:  Index [IX_Jobs_CategoryId]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_CategoryId] ON [dbo].[Jobs]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobsUser_UsersId]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobsUser_UsersId] ON [dbo].[JobsUser]
(
	[UsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_JobId]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_JobId] ON [dbo].[OrderDetails]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_UserId]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_UserId] ON [dbo].[Orders]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Profiles_UserId]    Script Date: 6/10/2024 11:55:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Profiles_UserId] ON [dbo].[Profiles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[JobsUser]  WITH CHECK ADD  CONSTRAINT [FK_JobsUser_Jobs_JobsId] FOREIGN KEY([JobsId])
REFERENCES [dbo].[Jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobsUser] CHECK CONSTRAINT [FK_JobsUser_Jobs_JobsId]
GO
ALTER TABLE [dbo].[JobsUser]  WITH CHECK ADD  CONSTRAINT [FK_JobsUser_Users_UsersId] FOREIGN KEY([UsersId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobsUser] CHECK CONSTRAINT [FK_JobsUser_Users_UsersId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Jobs_JobId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users_UserId]
GO
ALTER TABLE [dbo].[Profiles]  WITH CHECK ADD  CONSTRAINT [FK_Profiles_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Profiles] CHECK CONSTRAINT [FK_Profiles_Users_UserId]
GO
USE [master]
GO
ALTER DATABASE [WebSiteTimViec1] SET  READ_WRITE 
GO
