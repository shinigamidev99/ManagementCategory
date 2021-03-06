CREATE DATABASE [Trading2019]
GO
USE [Trading2019]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/21/2020 9:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NULL,
	[email] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/21/2020 9:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [varchar](6) NOT NULL,
	[name] [nvarchar](30) NULL,
	[describe] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/21/2020 9:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[ID] [varchar](6) NOT NULL,
	[fullname] [nvarchar](30) NULL,
	[email] [varchar](30) NULL,
	[phone] [varchar](11) NULL,
	[codeAcount] [varchar](10) NULL,
	[Amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderdetails]    Script Date: 4/21/2020 9:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderdetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[order_ID] [int] NULL,
	[prod_ID] [varchar](8) NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/21/2020 9:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cus_ID] [varchar](6) NULL,
	[shipdate] [datetime] NULL,
	[totalmoney] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/21/2020 9:56:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ID] [varchar](8) NOT NULL,
	[name] [varchar](30) NULL,
	[cat_ID] [varchar](6) NULL,
	[image] [varchar](100) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[describe] [nvarchar](50) NULL,
	[status] [nvarchar](20) NULL,
	[adddate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Password], [email]) VALUES (N'123', N'123', N'')
INSERT [dbo].[Admin] ([Username], [Password], [email]) VALUES (N'456', N'456', N'')
INSERT [dbo].[Admin] ([Username], [Password], [email]) VALUES (N'admin', N'admin', N'')
INSERT [dbo].[Admin] ([Username], [Password], [email]) VALUES (N'sa', N'sa', N'vanh22@yahoo.com')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'asd', N'dsa', N'dsa')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'Ga', N'Galaxy', N'Hiện đại, chụp ảnh 10GPixel...')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'ghf', N'hfg', N'hgf')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'IP', N'Iphone', N'Hiện đại, chụp ảnh 20GPixel...')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'N', N'Nokia', N'gọn nhẹ, pin lâu')
INSERT [dbo].[Categories] ([ID], [name], [describe]) VALUES (N'S', N'Samsung', N'dáng đẹp, nhiều chức năng')
INSERT [dbo].[Customers] ([ID], [fullname], [email], [phone], [codeAcount], [Amount]) VALUES (N'K1', N'Nguyen Bao Anh', N'baoanh@gmail.com', N'098765432', N'HG876', 75000)
INSERT [dbo].[Customers] ([ID], [fullname], [email], [phone], [codeAcount], [Amount]) VALUES (N'K2', N'Vu Lan Anh', N'anh@gmail.com', N'8712674', N'JI985', 52000)
INSERT [dbo].[Customers] ([ID], [fullname], [email], [phone], [codeAcount], [Amount]) VALUES (N'K3', N'To Lan Huong', N'Huong@gmail.com', N'98764213', N'KO983', 10000)
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'E10', N'Samsung E1050', N'S', N'images/X300.jpg', 2100, 10, N'nồi đồng cối đá', N'còn hàng', CAST(N'2018-10-12T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'E1050', N'Samsung E1050', N'S', N'images/X300.jpg', 2100, 10, N'Pin lâu', N'còn hàng', CAST(N'2019-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'E19', N'Nokia E72', N'N', N'images/B2000.jpg', 3200, 12, N'chụp ảnh đẹp', N'còn hàng', CAST(N'2019-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'E72', N'Nokia E72', N'N', N'images/B2000.jpg', 3200, 12, N'Màu đồng cho nam', N'h?t hàng', CAST(N'2019-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'N8', N'Nokia N8', N'N', N'images/8800.jpg', 2300, 12, N'Màu hồng cho nữ ', N'còn hàng', CAST(N'2019-08-05T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'S2', N'Samsung Corby II', N'S', N'images/X500.jpg', 3400, 8, N'Lướt Web thoải gà mái', N'còn hàng', CAST(N'2019-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'S22', N'Samsung Corby II', N'S', N'images/X500.jpg', 3400, 8, N'lướt web đỉnh', N'còn hàng', CAST(N'2019-04-20T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'S23', N'Samsung E1050', N'S', N'images/X300.jpg', 2100, 10, N'Pin lâu', N'còn hàng', CAST(N'2019-05-19T00:00:00.000' AS DateTime))
INSERT [dbo].[products] ([ID], [name], [cat_ID], [image], [price], [quantity], [describe], [status], [adddate]) VALUES (N'S28', N'Samsung E1050', N'S', N'images/X300.jpg', 2100, 10, N'đập không vỡ', N'còn hàng', CAST(N'2018-10-12T00:00:00.000' AS DateTime))
ALTER TABLE [dbo].[Orderdetails]  WITH CHECK ADD FOREIGN KEY([order_ID])
REFERENCES [dbo].[Orders] ([ID])
GO
ALTER TABLE [dbo].[Orderdetails]  WITH CHECK ADD FOREIGN KEY([prod_ID])
REFERENCES [dbo].[products] ([ID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Cus_ID])
REFERENCES [dbo].[Customers] ([ID])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([cat_ID])
REFERENCES [dbo].[Categories] ([ID])
GO
