USE [UdemyCarBookDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15.01.2024 16:41:35 ******/
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
/****** Object:  Table [dbo].[Abouts]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[BannerID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[VideoDescription] [nvarchar](max) NOT NULL,
	[VideoUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[BannerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[AuthorID] [int] NOT NULL,
	[CoverImageUrl] [nvarchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarDescriptions]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarDescriptions](
	[CarDescriptionID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[Details] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CarDescriptions] PRIMARY KEY CLUSTERED 
(
	[CarDescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarFeatures]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarFeatures](
	[CarFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
	[Available] [bit] NOT NULL,
 CONSTRAINT [PK_CarFeatures] PRIMARY KEY CLUSTERED 
(
	[CarFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarPricings]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarPricings](
	[CarPricingID] [int] IDENTITY(1,1) NOT NULL,
	[CarID] [int] NOT NULL,
	[PricingID] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_CarPricings] PRIMARY KEY CLUSTERED 
(
	[CarPricingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[BrandID] [int] NOT NULL,
	[Model] [nvarchar](max) NOT NULL,
	[CoverImageUrl] [nvarchar](max) NOT NULL,
	[Km] [int] NOT NULL,
	[Transmission] [nvarchar](max) NOT NULL,
	[Seat] [tinyint] NOT NULL,
	[Luggage] [tinyint] NOT NULL,
	[Fuel] [nvarchar](max) NOT NULL,
	[BigImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Subject] [nvarchar](max) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[SendDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterAdresses]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterAdresses](
	[FooterAdressID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FooterAdresses] PRIMARY KEY CLUSTERED 
(
	[FooterAdressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricings](
	[PricingID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Pricings] PRIMARY KEY CLUSTERED 
(
	[PricingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[IconUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMedias]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedias](
	[SocialMediaID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SocialMedias] PRIMARY KEY CLUSTERED 
(
	[SocialMediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 15.01.2024 16:41:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Comment] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231218122945_mig_first', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240111090402_migBlogAuthor', N'8.0.0')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240115111121_migBlogDesciription', N'8.0.0')
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([AboutID], [Title], [Description], [ImageUrl]) VALUES (3, N'CarBook Dünyasına Hoş Geldiniz', N'Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500''lerden beri endüstri standardı sahte metinler olarak kullanılmıştır. Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır. 1960''larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', N'/carbook-master/images/about.jpg')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([AuthorID], [Name], [ImageUrl], [Description]) VALUES (1, N'Mehmet', N'string', N'string')
INSERT [dbo].[Authors] ([AuthorID], [Name], [ImageUrl], [Description]) VALUES (2, N'Nevzat', N'string', N'string')
INSERT [dbo].[Authors] ([AuthorID], [Name], [ImageUrl], [Description]) VALUES (3, N'Ahmet', N'string', N'string')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([BannerID], [Title], [Description], [VideoDescription], [VideoUrl]) VALUES (1, N'a', N'b', N'c', N'd')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([BlogID], [Title], [AuthorID], [CoverImageUrl], [CreatedDate], [CategoryID], [Description]) VALUES (1, N'blog1', 1, N'/carbook-master/images/bg_3.jpg', CAST(N'2024-01-11T11:54:04.5280000' AS DateTime2), 1, N'orem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!')
INSERT [dbo].[Blogs] ([BlogID], [Title], [AuthorID], [CoverImageUrl], [CreatedDate], [CategoryID], [Description]) VALUES (2, N'blog2', 2, N'/carbook-master/images/bg_1.jpg', CAST(N'2024-01-11T11:54:04.5280000' AS DateTime2), 1, N'orem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!')
INSERT [dbo].[Blogs] ([BlogID], [Title], [AuthorID], [CoverImageUrl], [CreatedDate], [CategoryID], [Description]) VALUES (3, N'blog3', 3, N'/carbook-master/images/bg_2.jpg', CAST(N'2024-01-11T11:54:04.5280000' AS DateTime2), 1, N'orem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!')
INSERT [dbo].[Blogs] ([BlogID], [Title], [AuthorID], [CoverImageUrl], [CreatedDate], [CategoryID], [Description]) VALUES (4, N'blog4', 1, N'https://images5.alphacoders.com/121/1214059.png', CAST(N'2024-01-11T11:54:04.5280000' AS DateTime2), 1, N'orem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (1, N'Mercedes')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (2, N'BMW')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (3, N'Audi')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (4, N'Honda')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (5, N'Renault')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (6, N'Mazda')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (7, N'Wolksvagen')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (8, N'Tesla')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (9, N'Togg')
INSERT [dbo].[Brands] ([BrandID], [BrandName]) VALUES (10, N'Range Rover')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CarPricings] ON 

INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (1, 1, 1, CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (2, 1, 2, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (3, 1, 3, CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (4, 2, 1, CAST(350.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (5, 2, 2, CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (6, 2, 3, CAST(6000.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (7, 3, 1, CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (8, 3, 2, CAST(800.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (9, 3, 3, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (10, 4, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (11, 4, 2, CAST(600.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (12, 4, 3, CAST(2500.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (13, 5, 1, CAST(300.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (14, 5, 2, CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (15, 5, 3, CAST(5500.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (16, 6, 1, CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (17, 6, 2, CAST(1500.00 AS Decimal(18, 2)))
INSERT [dbo].[CarPricings] ([CarPricingID], [CarID], [PricingID], [Amount]) VALUES (18, 6, 3, CAST(6000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[CarPricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([CarID], [BrandID], [Model], [CoverImageUrl], [Km], [Transmission], [Seat], [Luggage], [Fuel], [BigImageUrl]) VALUES (1, 1, N'S350', N'/carbook-master/images/car-1.jpg', 0, N'string', 0, 0, N'string', N'string')
INSERT [dbo].[Cars] ([CarID], [BrandID], [Model], [CoverImageUrl], [Km], [Transmission], [Seat], [Luggage], [Fuel], [BigImageUrl]) VALUES (2, 10, N'Velar', N'/carbook-master/images/car-2.jpg', 0, N'string', 0, 0, N'string', N'string')
INSERT [dbo].[Cars] ([CarID], [BrandID], [Model], [CoverImageUrl], [Km], [Transmission], [Seat], [Luggage], [Fuel], [BigImageUrl]) VALUES (3, 3, N'TT', N'/carbook-master/images/car-3.jpg', 0, N'string', 0, 0, N'string', N'string')
INSERT [dbo].[Cars] ([CarID], [BrandID], [Model], [CoverImageUrl], [Km], [Transmission], [Seat], [Luggage], [Fuel], [BigImageUrl]) VALUES (4, 4, N'Civic', N'/carbook-master/images/car-4.jpg', 0, N'string', 0, 0, N'string', N'string')
INSERT [dbo].[Cars] ([CarID], [BrandID], [Model], [CoverImageUrl], [Km], [Transmission], [Seat], [Luggage], [Fuel], [BigImageUrl]) VALUES (5, 2, N'320i', N'/carbook-master/images/car-5.jpg', 0, N'string', 0, 0, N'string', N'string')
INSERT [dbo].[Cars] ([CarID], [BrandID], [Model], [CoverImageUrl], [Km], [Transmission], [Seat], [Luggage], [Fuel], [BigImageUrl]) VALUES (6, 6, N'323', N'/carbook-master/images/car-6.jpg', 0, N'string', 0, 0, N'string', N'string')
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [Name]) VALUES (1, N'Hibrit Araçlar')
INSERT [dbo].[Categories] ([CategoryID], [Name]) VALUES (2, N'Araç Bakımları')
INSERT [dbo].[Categories] ([CategoryID], [Name]) VALUES (3, N'Periyodik Muayeneler')
INSERT [dbo].[Categories] ([CategoryID], [Name]) VALUES (4, N'Elektirkli Araçlar')
INSERT [dbo].[Categories] ([CategoryID], [Name]) VALUES (5, N'Araç Temizliği')
INSERT [dbo].[Categories] ([CategoryID], [Name]) VALUES (6, N'Araç İncelemeleri')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([ContactID], [Name], [Email], [Subject], [Message], [SendDate]) VALUES (2, N'mehmet', N'web@iklimajans.com', N'test', N'test mesaj', CAST(N'2024-01-03T15:09:29.2113731' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([FeatureID], [Name]) VALUES (1, N'string')
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[FooterAdresses] ON 

INSERT [dbo].[FooterAdresses] ([FooterAdressID], [Description], [Address], [Phone], [Email]) VALUES (1, N'string', N'KONYA', N'+90 555 555 55 55', N'bilgi@carbook.com')
SET IDENTITY_INSERT [dbo].[FooterAdresses] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationID], [LocationName]) VALUES (1, N'string')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

INSERT [dbo].[Pricings] ([PricingID], [Name]) VALUES (1, N'Saatlik')
INSERT [dbo].[Pricings] ([PricingID], [Name]) VALUES (2, N'Günlük')
INSERT [dbo].[Pricings] ([PricingID], [Name]) VALUES (3, N'Haftalık')
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [IconUrl]) VALUES (2, N'VIP Servis', N'deneme', N'flaticon-suv')
INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [IconUrl]) VALUES (1002, N'Şehir İçi Kiralama', N'deneme', N'flaticon-route')
INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [IconUrl]) VALUES (1003, N'Düğün Organizasyonu', N'deneme', N'flaticon-car')
INSERT [dbo].[Services] ([ServiceID], [Title], [Description], [IconUrl]) VALUES (1004, N'Havalimanı Ulaşım', N'deneme', N'flaticon-rent')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[SocialMedias] ON 

INSERT [dbo].[SocialMedias] ([SocialMediaID], [Name], [Url], [Icon]) VALUES (1, N'string', N'string', N'string')
SET IDENTITY_INSERT [dbo].[SocialMedias] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([TestimonialID], [Name], [Title], [Comment], [ImageUrl]) VALUES (1, N'Mehmet KOÇAK', N'Yazılımcı', N'deneme', N'/carbook-master/images/person_1.jpg')
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (N'') FOR [Description]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Authors_AuthorID] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Authors] ([AuthorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Authors_AuthorID]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Categories_CategoryID]
GO
ALTER TABLE [dbo].[CarDescriptions]  WITH CHECK ADD  CONSTRAINT [FK_CarDescriptions_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarDescriptions] CHECK CONSTRAINT [FK_CarDescriptions_Cars_CarID]
GO
ALTER TABLE [dbo].[CarFeatures]  WITH CHECK ADD  CONSTRAINT [FK_CarFeatures_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarFeatures] CHECK CONSTRAINT [FK_CarFeatures_Cars_CarID]
GO
ALTER TABLE [dbo].[CarFeatures]  WITH CHECK ADD  CONSTRAINT [FK_CarFeatures_Features_FeatureID] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Features] ([FeatureID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarFeatures] CHECK CONSTRAINT [FK_CarFeatures_Features_FeatureID]
GO
ALTER TABLE [dbo].[CarPricings]  WITH CHECK ADD  CONSTRAINT [FK_CarPricings_Cars_CarID] FOREIGN KEY([CarID])
REFERENCES [dbo].[Cars] ([CarID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarPricings] CHECK CONSTRAINT [FK_CarPricings_Cars_CarID]
GO
ALTER TABLE [dbo].[CarPricings]  WITH CHECK ADD  CONSTRAINT [FK_CarPricings_Pricings_PricingID] FOREIGN KEY([PricingID])
REFERENCES [dbo].[Pricings] ([PricingID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CarPricings] CHECK CONSTRAINT [FK_CarPricings_Pricings_PricingID]
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Brands_BrandID] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([BrandID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Brands_BrandID]
GO
